
/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant/oceanM.s47_SELQUANT_best_20260810.bak:     file format elf64-x86-64


Disassembly of section text.unlikely:

0000000000667770 <gls_corstep_mod_mp_gls_corstep_tile_>:
  667770:	53                   	push   rbx
  667771:	48 89 e3             	mov    rbx,rsp
  667774:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
  667778:	55                   	push   rbp
  667779:	55                   	push   rbp
  66777a:	48 8b 6b 08          	mov    rbp,QWORD PTR [rbx+0x8]
  66777e:	48 89 6c 24 08       	mov    QWORD PTR [rsp+0x8],rbp
  667783:	48 89 e5             	mov    rbp,rsp
  667786:	48 81 ec 10 1f 00 00 	sub    rsp,0x1f10
  66778d:	4d 89 c2             	mov    r10,r8
  667790:	4c 89 bd b8 ea ff ff 	mov    QWORD PTR [rbp-0x1548],r15
  667797:	4c 89 8d f8 eb ff ff 	mov    QWORD PTR [rbp-0x1408],r9
  66779e:	4c 8b 7b 18          	mov    r15,QWORD PTR [rbx+0x18]
  6677a2:	4c 8b 4b 28          	mov    r9,QWORD PTR [rbx+0x28]
  6677a6:	48 8b 43 58          	mov    rax,QWORD PTR [rbx+0x58]
  6677aa:	48 89 85 a8 e9 ff ff 	mov    QWORD PTR [rbp-0x1658],rax
  6677b1:	48 8b 83 98 00 00 00 	mov    rax,QWORD PTR [rbx+0x98]
  6677b8:	4c 89 b5 c0 ea ff ff 	mov    QWORD PTR [rbp-0x1540],r14
  6677bf:	4c 8b 43 48          	mov    r8,QWORD PTR [rbx+0x48]
  6677c3:	4c 8b 73 10          	mov    r14,QWORD PTR [rbx+0x10]
  6677c7:	48 89 85 80 e9 ff ff 	mov    QWORD PTR [rbp-0x1680],rax
  6677ce:	4c 89 bd f0 ea ff ff 	mov    QWORD PTR [rbp-0x1510],r15
  6677d5:	49 63 07             	movsxd rax,DWORD PTR [r15]
  6677d8:	4c 89 8d e0 ea ff ff 	mov    QWORD PTR [rbp-0x1520],r9
  6677df:	4c 89 85 b8 e9 ff ff 	mov    QWORD PTR [rbp-0x1648],r8
  6677e6:	4d 63 39             	movsxd r15,DWORD PTR [r9]
  6677e9:	4c 63 07             	movsxd r8,DWORD PTR [rdi]
  6677ec:	4c 8b 0d cd 2e 45 00 	mov    r9,QWORD PTR [rip+0x452ecd]        # aba6c0 <mod_param_mp_n_>
  6677f3:	48 89 95 e0 eb ff ff 	mov    QWORD PTR [rbp-0x1420],rdx
  6677fa:	4c 89 b5 f8 ea ff ff 	mov    QWORD PTR [rbp-0x1508],r14
  667801:	48 63 12             	movsxd rdx,DWORD PTR [rdx]
  667804:	4d 63 36             	movsxd r14,DWORD PTR [r14]
  667807:	89 85 88 eb ff ff    	mov    DWORD PTR [rbp-0x1478],eax
  66780d:	49 2b c6             	sub    rax,r14
  667810:	4c 89 85 f0 ec ff ff 	mov    QWORD PTR [rbp-0x1310],r8
  667817:	48 89 95 a0 e9 ff ff 	mov    QWORD PTR [rbp-0x1660],rdx
  66781e:	89 95 7c eb ff ff    	mov    DWORD PTR [rbp-0x1484],edx
  667824:	33 d2                	xor    edx,edx
  667826:	4f 63 44 81 fc       	movsxd r8,DWORD PTR [r9+r8*4-0x4]
  66782b:	48 89 85 90 e9 ff ff 	mov    QWORD PTR [rbp-0x1670],rax
  667832:	48 ff c0             	inc    rax
  667835:	4c 89 a5 d0 ea ff ff 	mov    QWORD PTR [rbp-0x1530],r12
  66783c:	4c 8b 63 20          	mov    r12,QWORD PTR [rbx+0x20]
  667840:	4c 89 85 58 ec ff ff 	mov    QWORD PTR [rbp-0x13a8],r8
  667847:	44 89 85 94 eb ff ff 	mov    DWORD PTR [rbp-0x146c],r8d
  66784e:	44 89 85 98 eb ff ff 	mov    DWORD PTR [rbp-0x1468],r8d
  667855:	44 89 85 9c eb ff ff 	mov    DWORD PTR [rbp-0x1464],r8d
  66785c:	44 89 85 a0 eb ff ff 	mov    DWORD PTR [rbp-0x1460],r8d
  667863:	44 89 85 a4 eb ff ff 	mov    DWORD PTR [rbp-0x145c],r8d
  66786a:	44 89 85 a8 eb ff ff 	mov    DWORD PTR [rbp-0x1458],r8d
  667871:	44 89 85 ac eb ff ff 	mov    DWORD PTR [rbp-0x1454],r8d
  667878:	49 89 d0             	mov    r8,rdx
  66787b:	4c 0f 4f c0          	cmovg  r8,rax
  66787f:	4c 89 a5 e8 ea ff ff 	mov    QWORD PTR [rbp-0x1518],r12
  667886:	4d 63 24 24          	movsxd r12,DWORD PTR [r12]
  66788a:	44 89 bd 90 eb ff ff 	mov    DWORD PTR [rbp-0x1470],r15d
  667891:	4d 2b fc             	sub    r15,r12
  667894:	48 89 8d e8 eb ff ff 	mov    QWORD PTR [rbp-0x1418],rcx
  66789b:	49 ff c7             	inc    r15
  66789e:	48 8b 4b 78          	mov    rcx,QWORD PTR [rbx+0x78]
  6678a2:	48 89 8d c8 e2 ff ff 	mov    QWORD PTR [rbp-0x1d38],rcx
  6678a9:	49 0f 4f d7          	cmovg  rdx,r15
  6678ad:	48 89 bd d0 eb ff ff 	mov    QWORD PTR [rbp-0x1430],rdi
  6678b4:	4a 8d 3c c5 00 00 00 	lea    rdi,[r8*8+0x0]
  6678bb:	00 
  6678bc:	48 8b 8b d8 00 00 00 	mov    rcx,QWORD PTR [rbx+0xd8]
  6678c3:	48 89 8d b0 e2 ff ff 	mov    QWORD PTR [rbp-0x1d50],rcx
  6678ca:	48 89 f9             	mov    rcx,rdi
  6678cd:	48 0f af ca          	imul   rcx,rdx
  6678d1:	4c 8b 5b 40          	mov    r11,QWORD PTR [rbx+0x40]
  6678d5:	4c 89 ad c8 ea ff ff 	mov    QWORD PTR [rbp-0x1538],r13
  6678dc:	4c 89 95 f0 eb ff ff 	mov    QWORD PTR [rbp-0x1410],r10
  6678e3:	48 89 b5 d8 eb ff ff 	mov    QWORD PTR [rbp-0x1428],rsi
  6678ea:	4c 89 9d c0 e9 ff ff 	mov    QWORD PTR [rbp-0x1640],r11
  6678f1:	4c 8b 5b 50          	mov    r11,QWORD PTR [rbx+0x50]
  6678f5:	48 8b b3 88 00 00 00 	mov    rsi,QWORD PTR [rbx+0x88]
  6678fc:	4c 8b ab 90 00 00 00 	mov    r13,QWORD PTR [rbx+0x90]
  667903:	4d 63 12             	movsxd r10,DWORD PTR [r10]
  667906:	48 89 85 88 e9 ff ff 	mov    QWORD PTR [rbp-0x1678],rax
  66790d:	48 89 c8             	mov    rax,rcx
  667910:	4c 89 9d b0 e9 ff ff 	mov    QWORD PTR [rbp-0x1650],r11
  667917:	48 89 b5 b8 e2 ff ff 	mov    QWORD PTR [rbp-0x1d48],rsi
  66791e:	4c 89 ad c0 e2 ff ff 	mov    QWORD PTR [rbp-0x1d40],r13
  667925:	4c 89 95 98 e9 ff ff 	mov    QWORD PTR [rbp-0x1668],r10
  66792c:	44 89 95 80 eb ff ff 	mov    DWORD PTR [rbp-0x1480],r10d
  667933:	44 89 b5 84 eb ff ff 	mov    DWORD PTR [rbp-0x147c],r14d
  66793a:	44 89 a5 8c eb ff ff 	mov    DWORD PTR [rbp-0x1474],r12d
  667941:	4c 89 8d c8 e9 ff ff 	mov    QWORD PTR [rbp-0x1638],r9
  667948:	48 89 a5 d8 ea ff ff 	mov    QWORD PTR [rbp-0x1528],rsp
  66794f:	48 83 c0 1f          	add    rax,0x1f
  667953:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  667957:	48 2b e0             	sub    rsp,rax
  66795a:	48 89 e0             	mov    rax,rsp
  66795d:	4c 8b 95 90 e9 ff ff 	mov    r10,QWORD PTR [rbp-0x1670]
  667964:	be 08 00 00 00       	mov    esi,0x8
  667969:	48 89 85 50 e2 ff ff 	mov    QWORD PTR [rbp-0x1db0],rax
  667970:	48 89 c8             	mov    rax,rcx
  667973:	48 c7 85 60 e2 ff ff 	mov    QWORD PTR [rbp-0x1da0],0x0
  66797a:	00 00 00 00 
  66797e:	4c 89 b5 90 e2 ff ff 	mov    QWORD PTR [rbp-0x1d70],r14
  667985:	4e 8d 0c d5 00 00 00 	lea    r9,[r10*8+0x0]
  66798c:	00 
  66798d:	4c 89 85 80 e2 ff ff 	mov    QWORD PTR [rbp-0x1d80],r8
  667994:	4e 8d 2c d5 08 00 00 	lea    r13,[r10*8+0x8]
  66799b:	00 
  66799c:	4c 89 a5 a8 e2 ff ff 	mov    QWORD PTR [rbp-0x1d58],r12
  6679a3:	48 89 95 98 e2 ff ff 	mov    QWORD PTR [rbp-0x1d68],rdx
  6679aa:	48 89 b5 58 e2 ff ff 	mov    QWORD PTR [rbp-0x1da8],rsi
  6679b1:	48 89 b5 88 e2 ff ff 	mov    QWORD PTR [rbp-0x1d78],rsi
  6679b8:	48 c7 85 70 e2 ff ff 	mov    QWORD PTR [rbp-0x1d90],0x2
  6679bf:	02 00 00 00 
  6679c3:	4c 89 8d f8 e9 ff ff 	mov    QWORD PTR [rbp-0x1608],r9
  6679ca:	4c 89 ad a0 e2 ff ff 	mov    QWORD PTR [rbp-0x1d60],r13
  6679d1:	48 c7 85 68 e2 ff ff 	mov    QWORD PTR [rbp-0x1d98],0x1
  6679d8:	01 00 00 00 
  6679dc:	48 83 c0 1f          	add    rax,0x1f
  6679e0:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  6679e4:	48 2b e0             	sub    rsp,rax
  6679e7:	48 89 e0             	mov    rax,rsp
  6679ea:	48 89 85 70 e5 ff ff 	mov    QWORD PTR [rbp-0x1a90],rax
  6679f1:	48 89 c8             	mov    rax,rcx
  6679f4:	48 89 b5 78 e5 ff ff 	mov    QWORD PTR [rbp-0x1a88],rsi
  6679fb:	48 c7 85 90 e5 ff ff 	mov    QWORD PTR [rbp-0x1a70],0x2
  667a02:	02 00 00 00 
  667a06:	48 c7 85 80 e5 ff ff 	mov    QWORD PTR [rbp-0x1a80],0x0
  667a0d:	00 00 00 00 
  667a11:	48 89 b5 a8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a58],rsi
  667a18:	4c 89 b5 b0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a50],r14
  667a1f:	4c 89 85 a0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a60],r8
  667a26:	4c 89 ad c0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a40],r13
  667a2d:	4c 89 a5 c8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a38],r12
  667a34:	48 89 95 b8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a48],rdx
  667a3b:	48 c7 85 88 e5 ff ff 	mov    QWORD PTR [rbp-0x1a78],0x1
  667a42:	01 00 00 00 
  667a46:	48 83 c0 1f          	add    rax,0x1f
  667a4a:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  667a4e:	48 2b e0             	sub    rsp,rax
  667a51:	48 89 e0             	mov    rax,rsp
  667a54:	48 89 85 d0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a30],rax
  667a5b:	48 89 c8             	mov    rax,rcx
  667a5e:	48 89 b5 d8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a28],rsi
  667a65:	48 c7 85 f0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a10],0x2
  667a6c:	02 00 00 00 
  667a70:	48 c7 85 e0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a20],0x0
  667a77:	00 00 00 00 
  667a7b:	48 89 b5 08 e6 ff ff 	mov    QWORD PTR [rbp-0x19f8],rsi
  667a82:	4c 89 b5 10 e6 ff ff 	mov    QWORD PTR [rbp-0x19f0],r14
  667a89:	4c 89 85 00 e6 ff ff 	mov    QWORD PTR [rbp-0x1a00],r8
  667a90:	4c 89 ad 20 e6 ff ff 	mov    QWORD PTR [rbp-0x19e0],r13
  667a97:	4c 89 a5 28 e6 ff ff 	mov    QWORD PTR [rbp-0x19d8],r12
  667a9e:	48 89 95 18 e6 ff ff 	mov    QWORD PTR [rbp-0x19e8],rdx
  667aa5:	48 c7 85 e8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a18],0x1
  667aac:	01 00 00 00 
  667ab0:	48 83 c0 1f          	add    rax,0x1f
  667ab4:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  667ab8:	48 2b e0             	sub    rsp,rax
  667abb:	48 89 e0             	mov    rax,rsp
  667abe:	48 89 85 30 e6 ff ff 	mov    QWORD PTR [rbp-0x19d0],rax
  667ac5:	48 89 c8             	mov    rax,rcx
  667ac8:	48 89 b5 38 e6 ff ff 	mov    QWORD PTR [rbp-0x19c8],rsi
  667acf:	48 c7 85 50 e6 ff ff 	mov    QWORD PTR [rbp-0x19b0],0x2
  667ad6:	02 00 00 00 
  667ada:	48 c7 85 40 e6 ff ff 	mov    QWORD PTR [rbp-0x19c0],0x0
  667ae1:	00 00 00 00 
  667ae5:	48 89 b5 68 e6 ff ff 	mov    QWORD PTR [rbp-0x1998],rsi
  667aec:	4c 89 b5 70 e6 ff ff 	mov    QWORD PTR [rbp-0x1990],r14
  667af3:	4c 89 85 60 e6 ff ff 	mov    QWORD PTR [rbp-0x19a0],r8
  667afa:	4c 89 ad 80 e6 ff ff 	mov    QWORD PTR [rbp-0x1980],r13
  667b01:	4c 89 a5 88 e6 ff ff 	mov    QWORD PTR [rbp-0x1978],r12
  667b08:	48 89 95 78 e6 ff ff 	mov    QWORD PTR [rbp-0x1988],rdx
  667b0f:	48 c7 85 48 e6 ff ff 	mov    QWORD PTR [rbp-0x19b8],0x1
  667b16:	01 00 00 00 
  667b1a:	48 83 c0 1f          	add    rax,0x1f
  667b1e:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  667b22:	48 2b e0             	sub    rsp,rax
  667b25:	48 89 e0             	mov    rax,rsp
  667b28:	48 89 85 f0 e1 ff ff 	mov    QWORD PTR [rbp-0x1e10],rax
  667b2f:	48 89 c8             	mov    rax,rcx
  667b32:	48 89 b5 f8 e1 ff ff 	mov    QWORD PTR [rbp-0x1e08],rsi
  667b39:	48 c7 85 10 e2 ff ff 	mov    QWORD PTR [rbp-0x1df0],0x2
  667b40:	02 00 00 00 
  667b44:	48 c7 85 00 e2 ff ff 	mov    QWORD PTR [rbp-0x1e00],0x0
  667b4b:	00 00 00 00 
  667b4f:	48 89 b5 28 e2 ff ff 	mov    QWORD PTR [rbp-0x1dd8],rsi
  667b56:	4c 89 b5 30 e2 ff ff 	mov    QWORD PTR [rbp-0x1dd0],r14
  667b5d:	4c 89 85 20 e2 ff ff 	mov    QWORD PTR [rbp-0x1de0],r8
  667b64:	4c 89 ad 40 e2 ff ff 	mov    QWORD PTR [rbp-0x1dc0],r13
  667b6b:	4c 89 a5 48 e2 ff ff 	mov    QWORD PTR [rbp-0x1db8],r12
  667b72:	48 89 95 38 e2 ff ff 	mov    QWORD PTR [rbp-0x1dc8],rdx
  667b79:	48 c7 85 08 e2 ff ff 	mov    QWORD PTR [rbp-0x1df8],0x1
  667b80:	01 00 00 00 
  667b84:	48 83 c0 1f          	add    rax,0x1f
  667b88:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  667b8c:	48 2b e0             	sub    rsp,rax
  667b8f:	48 89 e0             	mov    rax,rsp
  667b92:	48 89 85 90 e6 ff ff 	mov    QWORD PTR [rbp-0x1970],rax
  667b99:	48 89 c8             	mov    rax,rcx
  667b9c:	48 89 b5 98 e6 ff ff 	mov    QWORD PTR [rbp-0x1968],rsi
  667ba3:	48 c7 85 b0 e6 ff ff 	mov    QWORD PTR [rbp-0x1950],0x2
  667baa:	02 00 00 00 
  667bae:	48 c7 85 a0 e6 ff ff 	mov    QWORD PTR [rbp-0x1960],0x0
  667bb5:	00 00 00 00 
  667bb9:	48 89 b5 c8 e6 ff ff 	mov    QWORD PTR [rbp-0x1938],rsi
  667bc0:	4c 89 b5 d0 e6 ff ff 	mov    QWORD PTR [rbp-0x1930],r14
  667bc7:	4c 89 85 c0 e6 ff ff 	mov    QWORD PTR [rbp-0x1940],r8
  667bce:	4c 89 ad e0 e6 ff ff 	mov    QWORD PTR [rbp-0x1920],r13
  667bd5:	4c 89 a5 e8 e6 ff ff 	mov    QWORD PTR [rbp-0x1918],r12
  667bdc:	48 89 95 d8 e6 ff ff 	mov    QWORD PTR [rbp-0x1928],rdx
  667be3:	48 c7 85 a8 e6 ff ff 	mov    QWORD PTR [rbp-0x1958],0x1
  667bea:	01 00 00 00 
  667bee:	48 83 c0 1f          	add    rax,0x1f
  667bf2:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  667bf6:	48 2b e0             	sub    rsp,rax
  667bf9:	48 89 e0             	mov    rax,rsp
  667bfc:	48 89 85 f0 e6 ff ff 	mov    QWORD PTR [rbp-0x1910],rax
  667c03:	48 89 c8             	mov    rax,rcx
  667c06:	48 89 b5 f8 e6 ff ff 	mov    QWORD PTR [rbp-0x1908],rsi
  667c0d:	48 c7 85 10 e7 ff ff 	mov    QWORD PTR [rbp-0x18f0],0x2
  667c14:	02 00 00 00 
  667c18:	48 c7 85 00 e7 ff ff 	mov    QWORD PTR [rbp-0x1900],0x0
  667c1f:	00 00 00 00 
  667c23:	48 89 b5 28 e7 ff ff 	mov    QWORD PTR [rbp-0x18d8],rsi
  667c2a:	4c 89 b5 30 e7 ff ff 	mov    QWORD PTR [rbp-0x18d0],r14
  667c31:	4c 89 85 20 e7 ff ff 	mov    QWORD PTR [rbp-0x18e0],r8
  667c38:	4c 89 ad 40 e7 ff ff 	mov    QWORD PTR [rbp-0x18c0],r13
  667c3f:	4c 89 a5 48 e7 ff ff 	mov    QWORD PTR [rbp-0x18b8],r12
  667c46:	48 89 95 38 e7 ff ff 	mov    QWORD PTR [rbp-0x18c8],rdx
  667c4d:	48 c7 85 08 e7 ff ff 	mov    QWORD PTR [rbp-0x18f8],0x1
  667c54:	01 00 00 00 
  667c58:	48 83 c0 1f          	add    rax,0x1f
  667c5c:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  667c60:	48 2b e0             	sub    rsp,rax
  667c63:	48 89 e0             	mov    rax,rsp
  667c66:	48 89 85 50 e7 ff ff 	mov    QWORD PTR [rbp-0x18b0],rax
  667c6d:	48 89 c8             	mov    rax,rcx
  667c70:	48 89 b5 58 e7 ff ff 	mov    QWORD PTR [rbp-0x18a8],rsi
  667c77:	48 c7 85 70 e7 ff ff 	mov    QWORD PTR [rbp-0x1890],0x2
  667c7e:	02 00 00 00 
  667c82:	48 c7 85 60 e7 ff ff 	mov    QWORD PTR [rbp-0x18a0],0x0
  667c89:	00 00 00 00 
  667c8d:	48 89 b5 88 e7 ff ff 	mov    QWORD PTR [rbp-0x1878],rsi
  667c94:	4c 89 b5 90 e7 ff ff 	mov    QWORD PTR [rbp-0x1870],r14
  667c9b:	4c 89 85 80 e7 ff ff 	mov    QWORD PTR [rbp-0x1880],r8
  667ca2:	4c 89 ad a0 e7 ff ff 	mov    QWORD PTR [rbp-0x1860],r13
  667ca9:	4c 89 a5 a8 e7 ff ff 	mov    QWORD PTR [rbp-0x1858],r12
  667cb0:	48 89 95 98 e7 ff ff 	mov    QWORD PTR [rbp-0x1868],rdx
  667cb7:	48 c7 85 68 e7 ff ff 	mov    QWORD PTR [rbp-0x1898],0x1
  667cbe:	01 00 00 00 
  667cc2:	48 83 c0 1f          	add    rax,0x1f
  667cc6:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  667cca:	48 2b e0             	sub    rsp,rax
  667ccd:	48 89 e0             	mov    rax,rsp
  667cd0:	4d 89 c1             	mov    r9,r8
  667cd3:	4c 0f af ca          	imul   r9,rdx
  667cd7:	48 89 b5 b8 e7 ff ff 	mov    QWORD PTR [rbp-0x1848],rsi
  667cde:	33 c9                	xor    ecx,ecx
  667ce0:	48 89 b5 e8 e7 ff ff 	mov    QWORD PTR [rbp-0x1818],rsi
  667ce7:	48 8b b5 58 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x13a8]
  667cee:	48 ff c6             	inc    rsi
  667cf1:	48 89 8d c0 e7 ff ff 	mov    QWORD PTR [rbp-0x1840],rcx
  667cf8:	48 0f 4e f1          	cmovle rsi,rcx
  667cfc:	48 89 85 b0 e7 ff ff 	mov    QWORD PTR [rbp-0x1850],rax
  667d03:	48 c7 85 d0 e7 ff ff 	mov    QWORD PTR [rbp-0x1830],0x2
  667d0a:	02 00 00 00 
  667d0e:	4c 89 b5 f0 e7 ff ff 	mov    QWORD PTR [rbp-0x1810],r14
  667d15:	4c 89 85 e0 e7 ff ff 	mov    QWORD PTR [rbp-0x1820],r8
  667d1c:	48 8d 0c f5 00 00 00 	lea    rcx,[rsi*8+0x0]
  667d23:	00 
  667d24:	4c 0f af c9          	imul   r9,rcx
  667d28:	4c 89 c8             	mov    rax,r9
  667d2b:	4c 89 ad 00 e8 ff ff 	mov    QWORD PTR [rbp-0x1800],r13
  667d32:	4c 89 a5 08 e8 ff ff 	mov    QWORD PTR [rbp-0x17f8],r12
  667d39:	48 89 95 f8 e7 ff ff 	mov    QWORD PTR [rbp-0x1808],rdx
  667d40:	48 c7 85 c8 e7 ff ff 	mov    QWORD PTR [rbp-0x1838],0x1
  667d47:	01 00 00 00 
  667d4b:	48 83 c0 1f          	add    rax,0x1f
  667d4f:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  667d53:	48 2b e0             	sub    rsp,rax
  667d56:	48 89 e0             	mov    rax,rsp
  667d59:	4d 0f af fd          	imul   r15,r13
  667d5d:	41 ba 08 00 00 00    	mov    r10d,0x8
  667d63:	45 33 db             	xor    r11d,r11d
  667d66:	4c 89 95 08 e1 ff ff 	mov    QWORD PTR [rbp-0x1ef8],r10
  667d6d:	4c 89 95 38 e1 ff ff 	mov    QWORD PTR [rbp-0x1ec8],r10
  667d74:	4d 89 fa             	mov    r10,r15
  667d77:	48 89 85 00 e1 ff ff 	mov    QWORD PTR [rbp-0x1f00],rax
  667d7e:	4c 89 c8             	mov    rax,r9
  667d81:	49 f7 da             	neg    r10
  667d84:	4c 89 9d 10 e1 ff ff 	mov    QWORD PTR [rbp-0x1ef0],r11
  667d8b:	4c 89 b5 40 e1 ff ff 	mov    QWORD PTR [rbp-0x1ec0],r14
  667d92:	4c 89 85 30 e1 ff ff 	mov    QWORD PTR [rbp-0x1ed0],r8
  667d99:	4c 89 ad 50 e1 ff ff 	mov    QWORD PTR [rbp-0x1eb0],r13
  667da0:	4c 89 a5 58 e1 ff ff 	mov    QWORD PTR [rbp-0x1ea8],r12
  667da7:	48 89 95 48 e1 ff ff 	mov    QWORD PTR [rbp-0x1eb8],rdx
  667dae:	4c 89 bd 68 e1 ff ff 	mov    QWORD PTR [rbp-0x1e98],r15
  667db5:	4c 89 9d 70 e1 ff ff 	mov    QWORD PTR [rbp-0x1e90],r11
  667dbc:	48 89 b5 60 e1 ff ff 	mov    QWORD PTR [rbp-0x1ea0],rsi
  667dc3:	48 c7 85 18 e1 ff ff 	mov    QWORD PTR [rbp-0x1ee8],0x1
  667dca:	01 00 00 00 
  667dce:	48 c7 85 20 e1 ff ff 	mov    QWORD PTR [rbp-0x1ee0],0x3
  667dd5:	03 00 00 00 
  667dd9:	4c 89 95 50 ec ff ff 	mov    QWORD PTR [rbp-0x13b0],r10
  667de0:	48 83 c0 1f          	add    rax,0x1f
  667de4:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  667de8:	48 2b e0             	sub    rsp,rax
  667deb:	48 89 e0             	mov    rax,rsp
  667dee:	48 89 95 c0 e1 ff ff 	mov    QWORD PTR [rbp-0x1e40],rdx
  667df5:	ba 08 00 00 00       	mov    edx,0x8
  667dfa:	48 89 95 80 e1 ff ff 	mov    QWORD PTR [rbp-0x1e80],rdx
  667e01:	45 33 c9             	xor    r9d,r9d
  667e04:	48 89 95 b0 e1 ff ff 	mov    QWORD PTR [rbp-0x1e50],rdx
  667e0b:	48 89 fa             	mov    rdx,rdi
  667e0e:	48 0f af d6          	imul   rdx,rsi
  667e12:	48 89 85 78 e1 ff ff 	mov    QWORD PTR [rbp-0x1e88],rax
  667e19:	48 89 d0             	mov    rax,rdx
  667e1c:	48 c7 85 98 e1 ff ff 	mov    QWORD PTR [rbp-0x1e68],0x3
  667e23:	03 00 00 00 
  667e27:	4c 89 8d 88 e1 ff ff 	mov    QWORD PTR [rbp-0x1e78],r9
  667e2e:	4c 89 b5 b8 e1 ff ff 	mov    QWORD PTR [rbp-0x1e48],r14
  667e35:	4c 89 85 a8 e1 ff ff 	mov    QWORD PTR [rbp-0x1e58],r8
  667e3c:	4c 89 ad c8 e1 ff ff 	mov    QWORD PTR [rbp-0x1e38],r13
  667e43:	4c 89 a5 d0 e1 ff ff 	mov    QWORD PTR [rbp-0x1e30],r12
  667e4a:	4c 89 bd e0 e1 ff ff 	mov    QWORD PTR [rbp-0x1e20],r15
  667e51:	4c 89 8d e8 e1 ff ff 	mov    QWORD PTR [rbp-0x1e18],r9
  667e58:	48 89 b5 d8 e1 ff ff 	mov    QWORD PTR [rbp-0x1e28],rsi
  667e5f:	48 c7 85 90 e1 ff ff 	mov    QWORD PTR [rbp-0x1e70],0x1
  667e66:	01 00 00 00 
  667e6a:	48 83 c0 1f          	add    rax,0x1f
  667e6e:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  667e72:	48 2b e0             	sub    rsp,rax
  667e75:	48 89 e0             	mov    rax,rsp
  667e78:	48 89 85 d0 e2 ff ff 	mov    QWORD PTR [rbp-0x1d30],rax
  667e7f:	48 89 d0             	mov    rax,rdx
  667e82:	41 b9 08 00 00 00    	mov    r9d,0x8
  667e88:	45 33 d2             	xor    r10d,r10d
  667e8b:	4c 89 8d d8 e2 ff ff 	mov    QWORD PTR [rbp-0x1d28],r9
  667e92:	48 c7 85 f0 e2 ff ff 	mov    QWORD PTR [rbp-0x1d10],0x2
  667e99:	02 00 00 00 
  667e9d:	4c 89 95 e0 e2 ff ff 	mov    QWORD PTR [rbp-0x1d20],r10
  667ea4:	4c 89 8d 08 e3 ff ff 	mov    QWORD PTR [rbp-0x1cf8],r9
  667eab:	4c 89 b5 10 e3 ff ff 	mov    QWORD PTR [rbp-0x1cf0],r14
  667eb2:	4c 89 85 00 e3 ff ff 	mov    QWORD PTR [rbp-0x1d00],r8
  667eb9:	4c 89 ad 20 e3 ff ff 	mov    QWORD PTR [rbp-0x1ce0],r13
  667ec0:	4c 89 95 28 e3 ff ff 	mov    QWORD PTR [rbp-0x1cd8],r10
  667ec7:	48 89 b5 18 e3 ff ff 	mov    QWORD PTR [rbp-0x1ce8],rsi
  667ece:	48 c7 85 e8 e2 ff ff 	mov    QWORD PTR [rbp-0x1d18],0x1
  667ed5:	01 00 00 00 
  667ed9:	48 83 c0 1f          	add    rax,0x1f
  667edd:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  667ee1:	48 2b e0             	sub    rsp,rax
  667ee4:	48 89 e0             	mov    rax,rsp
  667ee7:	49 0f af c8          	imul   rcx,r8
  667eeb:	48 89 85 30 e3 ff ff 	mov    QWORD PTR [rbp-0x1cd0],rax
  667ef2:	48 89 c8             	mov    rax,rcx
  667ef5:	ba 08 00 00 00       	mov    edx,0x8
  667efa:	45 33 c9             	xor    r9d,r9d
  667efd:	48 89 95 38 e3 ff ff 	mov    QWORD PTR [rbp-0x1cc8],rdx
  667f04:	48 c7 85 50 e3 ff ff 	mov    QWORD PTR [rbp-0x1cb0],0x2
  667f0b:	02 00 00 00 
  667f0f:	4c 89 8d 40 e3 ff ff 	mov    QWORD PTR [rbp-0x1cc0],r9
  667f16:	48 89 95 68 e3 ff ff 	mov    QWORD PTR [rbp-0x1c98],rdx
  667f1d:	4c 89 b5 70 e3 ff ff 	mov    QWORD PTR [rbp-0x1c90],r14
  667f24:	4c 89 85 60 e3 ff ff 	mov    QWORD PTR [rbp-0x1ca0],r8
  667f2b:	4c 89 ad 80 e3 ff ff 	mov    QWORD PTR [rbp-0x1c80],r13
  667f32:	4c 89 8d 88 e3 ff ff 	mov    QWORD PTR [rbp-0x1c78],r9
  667f39:	48 89 b5 78 e3 ff ff 	mov    QWORD PTR [rbp-0x1c88],rsi
  667f40:	48 c7 85 48 e3 ff ff 	mov    QWORD PTR [rbp-0x1cb8],0x1
  667f47:	01 00 00 00 
  667f4b:	48 83 c0 1f          	add    rax,0x1f
  667f4f:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  667f53:	48 2b e0             	sub    rsp,rax
  667f56:	48 89 e0             	mov    rax,rsp
  667f59:	48 89 85 90 e3 ff ff 	mov    QWORD PTR [rbp-0x1c70],rax
  667f60:	48 89 c8             	mov    rax,rcx
  667f63:	48 89 95 98 e3 ff ff 	mov    QWORD PTR [rbp-0x1c68],rdx
  667f6a:	48 c7 85 b0 e3 ff ff 	mov    QWORD PTR [rbp-0x1c50],0x2
  667f71:	02 00 00 00 
  667f75:	4c 89 8d a0 e3 ff ff 	mov    QWORD PTR [rbp-0x1c60],r9
  667f7c:	48 89 95 c8 e3 ff ff 	mov    QWORD PTR [rbp-0x1c38],rdx
  667f83:	4c 89 b5 d0 e3 ff ff 	mov    QWORD PTR [rbp-0x1c30],r14
  667f8a:	4c 89 85 c0 e3 ff ff 	mov    QWORD PTR [rbp-0x1c40],r8
  667f91:	4c 89 ad e0 e3 ff ff 	mov    QWORD PTR [rbp-0x1c20],r13
  667f98:	4c 89 8d e8 e3 ff ff 	mov    QWORD PTR [rbp-0x1c18],r9
  667f9f:	48 89 b5 d8 e3 ff ff 	mov    QWORD PTR [rbp-0x1c28],rsi
  667fa6:	48 c7 85 a8 e3 ff ff 	mov    QWORD PTR [rbp-0x1c58],0x1
  667fad:	01 00 00 00 
  667fb1:	48 83 c0 1f          	add    rax,0x1f
  667fb5:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  667fb9:	48 2b e0             	sub    rsp,rax
  667fbc:	48 89 e0             	mov    rax,rsp
  667fbf:	48 89 85 f0 e3 ff ff 	mov    QWORD PTR [rbp-0x1c10],rax
  667fc6:	48 89 c8             	mov    rax,rcx
  667fc9:	48 89 95 f8 e3 ff ff 	mov    QWORD PTR [rbp-0x1c08],rdx
  667fd0:	48 c7 85 10 e4 ff ff 	mov    QWORD PTR [rbp-0x1bf0],0x2
  667fd7:	02 00 00 00 
  667fdb:	4c 89 8d 00 e4 ff ff 	mov    QWORD PTR [rbp-0x1c00],r9
  667fe2:	48 89 95 28 e4 ff ff 	mov    QWORD PTR [rbp-0x1bd8],rdx
  667fe9:	4c 89 b5 30 e4 ff ff 	mov    QWORD PTR [rbp-0x1bd0],r14
  667ff0:	4c 89 85 20 e4 ff ff 	mov    QWORD PTR [rbp-0x1be0],r8
  667ff7:	4c 89 ad 40 e4 ff ff 	mov    QWORD PTR [rbp-0x1bc0],r13
  667ffe:	4c 89 8d 48 e4 ff ff 	mov    QWORD PTR [rbp-0x1bb8],r9
  668005:	48 89 b5 38 e4 ff ff 	mov    QWORD PTR [rbp-0x1bc8],rsi
  66800c:	48 c7 85 08 e4 ff ff 	mov    QWORD PTR [rbp-0x1bf8],0x1
  668013:	01 00 00 00 
  668017:	48 83 c0 1f          	add    rax,0x1f
  66801b:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66801f:	48 2b e0             	sub    rsp,rax
  668022:	48 89 e0             	mov    rax,rsp
  668025:	48 89 85 50 e4 ff ff 	mov    QWORD PTR [rbp-0x1bb0],rax
  66802c:	48 89 c8             	mov    rax,rcx
  66802f:	48 89 95 58 e4 ff ff 	mov    QWORD PTR [rbp-0x1ba8],rdx
  668036:	48 c7 85 70 e4 ff ff 	mov    QWORD PTR [rbp-0x1b90],0x2
  66803d:	02 00 00 00 
  668041:	4c 89 8d 60 e4 ff ff 	mov    QWORD PTR [rbp-0x1ba0],r9
  668048:	48 89 95 88 e4 ff ff 	mov    QWORD PTR [rbp-0x1b78],rdx
  66804f:	4c 89 b5 90 e4 ff ff 	mov    QWORD PTR [rbp-0x1b70],r14
  668056:	4c 89 85 80 e4 ff ff 	mov    QWORD PTR [rbp-0x1b80],r8
  66805d:	4c 89 ad a0 e4 ff ff 	mov    QWORD PTR [rbp-0x1b60],r13
  668064:	4c 89 8d a8 e4 ff ff 	mov    QWORD PTR [rbp-0x1b58],r9
  66806b:	48 89 b5 98 e4 ff ff 	mov    QWORD PTR [rbp-0x1b68],rsi
  668072:	48 c7 85 68 e4 ff ff 	mov    QWORD PTR [rbp-0x1b98],0x1
  668079:	01 00 00 00 
  66807d:	48 83 c0 1f          	add    rax,0x1f
  668081:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  668085:	48 2b e0             	sub    rsp,rax
  668088:	48 89 e0             	mov    rax,rsp
  66808b:	48 89 85 b0 e4 ff ff 	mov    QWORD PTR [rbp-0x1b50],rax
  668092:	48 89 c8             	mov    rax,rcx
  668095:	48 89 95 b8 e4 ff ff 	mov    QWORD PTR [rbp-0x1b48],rdx
  66809c:	48 c7 85 d0 e4 ff ff 	mov    QWORD PTR [rbp-0x1b30],0x2
  6680a3:	02 00 00 00 
  6680a7:	4c 89 8d c0 e4 ff ff 	mov    QWORD PTR [rbp-0x1b40],r9
  6680ae:	48 89 95 e8 e4 ff ff 	mov    QWORD PTR [rbp-0x1b18],rdx
  6680b5:	4c 89 b5 f0 e4 ff ff 	mov    QWORD PTR [rbp-0x1b10],r14
  6680bc:	4c 89 85 e0 e4 ff ff 	mov    QWORD PTR [rbp-0x1b20],r8
  6680c3:	4c 89 ad 00 e5 ff ff 	mov    QWORD PTR [rbp-0x1b00],r13
  6680ca:	4c 89 8d 08 e5 ff ff 	mov    QWORD PTR [rbp-0x1af8],r9
  6680d1:	48 89 b5 f8 e4 ff ff 	mov    QWORD PTR [rbp-0x1b08],rsi
  6680d8:	48 c7 85 c8 e4 ff ff 	mov    QWORD PTR [rbp-0x1b38],0x1
  6680df:	01 00 00 00 
  6680e3:	48 83 c0 1f          	add    rax,0x1f
  6680e7:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  6680eb:	48 2b e0             	sub    rsp,rax
  6680ee:	48 89 e0             	mov    rax,rsp
  6680f1:	48 89 85 10 e5 ff ff 	mov    QWORD PTR [rbp-0x1af0],rax
  6680f8:	48 89 f8             	mov    rax,rdi
  6680fb:	48 89 b5 58 e5 ff ff 	mov    QWORD PTR [rbp-0x1aa8],rsi
  668102:	48 89 95 18 e5 ff ff 	mov    QWORD PTR [rbp-0x1ae8],rdx
  668109:	48 c7 85 30 e5 ff ff 	mov    QWORD PTR [rbp-0x1ad0],0x2
  668110:	02 00 00 00 
  668114:	4c 89 8d 20 e5 ff ff 	mov    QWORD PTR [rbp-0x1ae0],r9
  66811b:	48 89 95 48 e5 ff ff 	mov    QWORD PTR [rbp-0x1ab8],rdx
  668122:	4c 89 b5 50 e5 ff ff 	mov    QWORD PTR [rbp-0x1ab0],r14
  668129:	4c 89 85 40 e5 ff ff 	mov    QWORD PTR [rbp-0x1ac0],r8
  668130:	4c 89 ad 60 e5 ff ff 	mov    QWORD PTR [rbp-0x1aa0],r13
  668137:	4c 89 8d 68 e5 ff ff 	mov    QWORD PTR [rbp-0x1a98],r9
  66813e:	48 c7 85 28 e5 ff ff 	mov    QWORD PTR [rbp-0x1ad8],0x1
  668145:	01 00 00 00 
  668149:	48 83 c0 1f          	add    rax,0x1f
  66814d:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  668151:	48 2b e0             	sub    rsp,rax
  668154:	48 89 e0             	mov    rax,rsp
  668157:	48 89 85 10 e8 ff ff 	mov    QWORD PTR [rbp-0x17f0],rax
  66815e:	48 89 f8             	mov    rax,rdi
  668161:	b9 01 00 00 00       	mov    ecx,0x1
  668166:	48 89 95 18 e8 ff ff 	mov    QWORD PTR [rbp-0x17e8],rdx
  66816d:	48 89 8d 30 e8 ff ff 	mov    QWORD PTR [rbp-0x17d0],rcx
  668174:	48 c7 85 20 e8 ff ff 	mov    QWORD PTR [rbp-0x17e0],0x0
  66817b:	00 00 00 00 
  66817f:	48 89 95 48 e8 ff ff 	mov    QWORD PTR [rbp-0x17b8],rdx
  668186:	4c 89 b5 50 e8 ff ff 	mov    QWORD PTR [rbp-0x17b0],r14
  66818d:	4c 89 85 40 e8 ff ff 	mov    QWORD PTR [rbp-0x17c0],r8
  668194:	48 89 8d 28 e8 ff ff 	mov    QWORD PTR [rbp-0x17d8],rcx
  66819b:	48 83 c0 1f          	add    rax,0x1f
  66819f:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  6681a3:	48 2b e0             	sub    rsp,rax
  6681a6:	48 89 e0             	mov    rax,rsp
  6681a9:	48 89 85 58 e8 ff ff 	mov    QWORD PTR [rbp-0x17a8],rax
  6681b0:	48 89 f8             	mov    rax,rdi
  6681b3:	48 89 95 60 e8 ff ff 	mov    QWORD PTR [rbp-0x17a0],rdx
  6681ba:	48 89 8d 78 e8 ff ff 	mov    QWORD PTR [rbp-0x1788],rcx
  6681c1:	48 c7 85 68 e8 ff ff 	mov    QWORD PTR [rbp-0x1798],0x0
  6681c8:	00 00 00 00 
  6681cc:	48 89 95 90 e8 ff ff 	mov    QWORD PTR [rbp-0x1770],rdx
  6681d3:	4c 89 b5 98 e8 ff ff 	mov    QWORD PTR [rbp-0x1768],r14
  6681da:	4c 89 85 88 e8 ff ff 	mov    QWORD PTR [rbp-0x1778],r8
  6681e1:	48 89 8d 70 e8 ff ff 	mov    QWORD PTR [rbp-0x1790],rcx
  6681e8:	48 83 c0 1f          	add    rax,0x1f
  6681ec:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  6681f0:	48 2b e0             	sub    rsp,rax
  6681f3:	48 89 e0             	mov    rax,rsp
  6681f6:	48 89 85 a0 e8 ff ff 	mov    QWORD PTR [rbp-0x1760],rax
  6681fd:	48 89 f8             	mov    rax,rdi
  668200:	48 89 95 a8 e8 ff ff 	mov    QWORD PTR [rbp-0x1758],rdx
  668207:	48 89 8d c0 e8 ff ff 	mov    QWORD PTR [rbp-0x1740],rcx
  66820e:	48 c7 85 b0 e8 ff ff 	mov    QWORD PTR [rbp-0x1750],0x0
  668215:	00 00 00 00 
  668219:	48 89 95 d8 e8 ff ff 	mov    QWORD PTR [rbp-0x1728],rdx
  668220:	4c 89 b5 e0 e8 ff ff 	mov    QWORD PTR [rbp-0x1720],r14
  668227:	4c 89 85 d0 e8 ff ff 	mov    QWORD PTR [rbp-0x1730],r8
  66822e:	48 89 8d b8 e8 ff ff 	mov    QWORD PTR [rbp-0x1748],rcx
  668235:	48 83 c0 1f          	add    rax,0x1f
  668239:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66823d:	48 2b e0             	sub    rsp,rax
  668240:	48 89 e0             	mov    rax,rsp
  668243:	48 89 85 e8 e8 ff ff 	mov    QWORD PTR [rbp-0x1718],rax
  66824a:	48 89 f8             	mov    rax,rdi
  66824d:	48 89 95 f0 e8 ff ff 	mov    QWORD PTR [rbp-0x1710],rdx
  668254:	48 89 8d 08 e9 ff ff 	mov    QWORD PTR [rbp-0x16f8],rcx
  66825b:	48 c7 85 f8 e8 ff ff 	mov    QWORD PTR [rbp-0x1708],0x0
  668262:	00 00 00 00 
  668266:	48 89 95 20 e9 ff ff 	mov    QWORD PTR [rbp-0x16e0],rdx
  66826d:	4c 89 b5 28 e9 ff ff 	mov    QWORD PTR [rbp-0x16d8],r14
  668274:	4c 89 85 18 e9 ff ff 	mov    QWORD PTR [rbp-0x16e8],r8
  66827b:	48 89 8d 00 e9 ff ff 	mov    QWORD PTR [rbp-0x1700],rcx
  668282:	48 83 c0 1f          	add    rax,0x1f
  668286:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66828a:	48 2b e0             	sub    rsp,rax
  66828d:	48 89 e0             	mov    rax,rsp
  668290:	48 8b b5 f0 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x1310]
  668297:	41 b9 08 00 00 00    	mov    r9d,0x8
  66829d:	48 69 d6 60 0f 00 00 	imul   rdx,rsi,0xf60
  6682a4:	48 8b 3d 95 2e 45 00 	mov    rdi,QWORD PTR [rip+0x452e95]        # abb140 <mod_param_mp_bounds_>
  6682ab:	41 ba 01 00 00 00    	mov    r10d,0x1
  6682b1:	4c 8b 9d d8 eb ff ff 	mov    r11,QWORD PTR [rbp-0x1428]
  6682b8:	4c 89 85 60 e9 ff ff 	mov    QWORD PTR [rbp-0x16a0],r8
  6682bf:	4c 8b 84 3a 90 f2 ff 	mov    r8,QWORD PTR [rdx+rdi*1-0xd70]
  6682c6:	ff 
  6682c7:	49 f7 d8             	neg    r8
  6682ca:	49 63 0b             	movsxd rcx,DWORD PTR [r11]
  6682cd:	4c 03 c1             	add    r8,rcx
  6682d0:	4c 0f af 84 3a 88 f2 	imul   r8,QWORD PTR [rdx+rdi*1-0xd78]
  6682d7:	ff ff 
  6682d9:	48 89 85 30 e9 ff ff 	mov    QWORD PTR [rbp-0x16d0],rax
  6682e0:	48 8b 84 3a 50 f2 ff 	mov    rax,QWORD PTR [rdx+rdi*1-0xdb0]
  6682e7:	ff 
  6682e8:	4c 89 8d 38 e9 ff ff 	mov    QWORD PTR [rbp-0x16c8],r9
  6682ef:	4c 89 8d 68 e9 ff ff 	mov    QWORD PTR [rbp-0x1698],r9
  6682f6:	46 8b 0c 00          	mov    r9d,DWORD PTR [rax+r8*1]
  6682fa:	48 8b 84 3a d8 f2 ff 	mov    rax,QWORD PTR [rdx+rdi*1-0xd28]
  668301:	ff 
  668302:	48 f7 d8             	neg    rax
  668305:	48 03 c1             	add    rax,rcx
  668308:	48 0f af 84 3a d0 f2 	imul   rax,QWORD PTR [rdx+rdi*1-0xd30]
  66830f:	ff ff 
  668311:	4c 8b 84 3a 20 f3 ff 	mov    r8,QWORD PTR [rdx+rdi*1-0xce0]
  668318:	ff 
  668319:	49 f7 d8             	neg    r8
  66831c:	4c 03 c1             	add    r8,rcx
  66831f:	4c 0f af 84 3a 18 f3 	imul   r8,QWORD PTR [rdx+rdi*1-0xce8]
  668326:	ff ff 
  668328:	4c 89 95 50 e9 ff ff 	mov    QWORD PTR [rbp-0x16b0],r10
  66832f:	4c 89 95 48 e9 ff ff 	mov    QWORD PTR [rbp-0x16b8],r10
  668336:	4c 8b 94 3a 98 f2 ff 	mov    r10,QWORD PTR [rdx+rdi*1-0xd68]
  66833d:	ff 
  66833e:	44 89 8d c8 ee ff ff 	mov    DWORD PTR [rbp-0x1138],r9d
  668345:	44 89 8d b0 eb ff ff 	mov    DWORD PTR [rbp-0x1450],r9d
  66834c:	45 8b 1c 02          	mov    r11d,DWORD PTR [r10+rax*1]
  668350:	48 8b 84 3a e0 f2 ff 	mov    rax,QWORD PTR [rdx+rdi*1-0xd20]
  668357:	ff 
  668358:	44 89 9d c0 ee ff ff 	mov    DWORD PTR [rbp-0x1140],r11d
  66835f:	44 89 9d b4 eb ff ff 	mov    DWORD PTR [rbp-0x144c],r11d
  668366:	42 8b 04 00          	mov    eax,DWORD PTR [rax+r8*1]
  66836a:	4c 8b 84 3a 68 f3 ff 	mov    r8,QWORD PTR [rdx+rdi*1-0xc98]
  668371:	ff 
  668372:	4c 8b 9c 3a e0 f9 ff 	mov    r11,QWORD PTR [rdx+rdi*1-0x620]
  668379:	ff 
  66837a:	49 f7 d8             	neg    r8
  66837d:	49 f7 db             	neg    r11
  668380:	4c 03 c1             	add    r8,rcx
  668383:	4c 03 d9             	add    r11,rcx
  668386:	4c 0f af 84 3a 60 f3 	imul   r8,QWORD PTR [rdx+rdi*1-0xca0]
  66838d:	ff ff 
  66838f:	4c 0f af 9c 3a d8 f9 	imul   r11,QWORD PTR [rdx+rdi*1-0x628]
  668396:	ff ff 
  668398:	4c 8b 8c 3a 28 f3 ff 	mov    r9,QWORD PTR [rdx+rdi*1-0xcd8]
  66839f:	ff 
  6683a0:	4c 8b 94 3a a0 f9 ff 	mov    r10,QWORD PTR [rdx+rdi*1-0x660]
  6683a7:	ff 
  6683a8:	c5 fb 10 05 28 41 1e 	vmovsd xmm0,QWORD PTR [rip+0x1e4128]        # 84c4d8 <__STRLITPACK_0.112+0x3c8>
  6683af:	00 
  6683b0:	47 8b 04 01          	mov    r8d,DWORD PTR [r9+r8*1]
  6683b4:	4f 63 0c 1a          	movsxd r9,DWORD PTR [r10+r11*1]
  6683b8:	4c 89 8d b8 ee ff ff 	mov    QWORD PTR [rbp-0x1148],r9
  6683bf:	4c 8b 8c 3a b8 fa ff 	mov    r9,QWORD PTR [rdx+rdi*1-0x548]
  6683c6:	ff 
  6683c7:	49 f7 d9             	neg    r9
  6683ca:	4c 03 c9             	add    r9,rcx
  6683cd:	4c 0f af 8c 3a b0 fa 	imul   r9,QWORD PTR [rdx+rdi*1-0x550]
  6683d4:	ff ff 
  6683d6:	4c 8b 94 3a 78 fa ff 	mov    r10,QWORD PTR [rdx+rdi*1-0x588]
  6683dd:	ff 
  6683de:	48 89 8d c8 ec ff ff 	mov    QWORD PTR [rbp-0x1338],rcx
  6683e5:	48 c7 85 40 e9 ff ff 	mov    QWORD PTR [rbp-0x16c0],0x0
  6683ec:	00 00 00 00 
  6683f0:	4f 63 1c 0a          	movsxd r11,DWORD PTR [r10+r9*1]
  6683f4:	4c 8b 94 3a 00 fb ff 	mov    r10,QWORD PTR [rdx+rdi*1-0x500]
  6683fb:	ff 
  6683fc:	49 f7 da             	neg    r10
  6683ff:	4c 03 d1             	add    r10,rcx
  668402:	4c 0f af 94 3a f8 fa 	imul   r10,QWORD PTR [rdx+rdi*1-0x508]
  668409:	ff ff 
  66840b:	4c 8b 8c 3a c0 fa ff 	mov    r9,QWORD PTR [rdx+rdi*1-0x540]
  668412:	ff 
  668413:	4c 89 9d 10 ec ff ff 	mov    QWORD PTR [rbp-0x13f0],r11
  66841a:	4c 89 b5 70 e9 ff ff 	mov    QWORD PTR [rbp-0x1690],r14
  668421:	4f 63 1c 11          	movsxd r11,DWORD PTR [r9+r10*1]
  668425:	4c 8b 94 3a 68 fc ff 	mov    r10,QWORD PTR [rdx+rdi*1-0x398]
  66842c:	ff 
  66842d:	49 f7 da             	neg    r10
  668430:	4c 03 d1             	add    r10,rcx
  668433:	4c 0f af 94 3a 60 fc 	imul   r10,QWORD PTR [rdx+rdi*1-0x3a0]
  66843a:	ff ff 
  66843c:	4c 8b 8c 3a 28 fc ff 	mov    r9,QWORD PTR [rdx+rdi*1-0x3d8]
  668443:	ff 
  668444:	4c 89 9d b0 ee ff ff 	mov    QWORD PTR [rbp-0x1150],r11
  66844b:	89 85 c0 ec ff ff    	mov    DWORD PTR [rbp-0x1340],eax
  668451:	4f 63 1c 11          	movsxd r11,DWORD PTR [r9+r10*1]
  668455:	4c 8b 94 3a 40 fd ff 	mov    r10,QWORD PTR [rdx+rdi*1-0x2c0]
  66845c:	ff 
  66845d:	49 f7 da             	neg    r10
  668460:	4c 03 d1             	add    r10,rcx
  668463:	4c 0f af 94 3a 38 fd 	imul   r10,QWORD PTR [rdx+rdi*1-0x2c8]
  66846a:	ff ff 
  66846c:	4c 8b 8c 3a 00 fd ff 	mov    r9,QWORD PTR [rdx+rdi*1-0x300]
  668473:	ff 
  668474:	4c 89 9d b0 ec ff ff 	mov    QWORD PTR [rbp-0x1350],r11
  66847b:	89 85 b8 eb ff ff    	mov    DWORD PTR [rbp-0x1448],eax
  668481:	4f 63 1c 11          	movsxd r11,DWORD PTR [r9+r10*1]
  668485:	4c 8b 8c 3a 88 fd ff 	mov    r9,QWORD PTR [rdx+rdi*1-0x278]
  66848c:	ff 
  66848d:	49 f7 d9             	neg    r9
  668490:	4c 03 c9             	add    r9,rcx
  668493:	4c 0f af 8c 3a 80 fd 	imul   r9,QWORD PTR [rdx+rdi*1-0x280]
  66849a:	ff ff 
  66849c:	48 8b 94 3a 48 fd ff 	mov    rdx,QWORD PTR [rdx+rdi*1-0x2b8]
  6684a3:	ff 
  6684a4:	48 8b 3d 95 88 45 00 	mov    rdi,QWORD PTR [rip+0x458895]        # ac0d40 <mod_scalars_mp_zos_>
  6684ab:	44 89 85 b8 ec ff ff 	mov    DWORD PTR [rbp-0x1348],r8d
  6684b2:	4a 63 0c 0a          	movsxd rcx,DWORD PTR [rdx+r9*1]
  6684b6:	c5 fb 10 4c f7 f8    	vmovsd xmm1,QWORD PTR [rdi+rsi*8-0x8]
  6684bc:	44 89 85 bc eb ff ff 	mov    DWORD PTR [rbp-0x1444],r8d
  6684c3:	c5 f3 5f c8          	vmaxsd xmm1,xmm1,xmm0
  6684c7:	4c 89 9d 50 ea ff ff 	mov    QWORD PTR [rbp-0x15b0],r11
  6684ce:	48 89 8d a8 ec ff ff 	mov    QWORD PTR [rbp-0x1358],rcx
  6684d5:	c5 fb 11 8d 78 e9 ff 	vmovsd QWORD PTR [rbp-0x1688],xmm1
  6684dc:	ff 
  6684dd:	44 3b c0             	cmp    r8d,eax
  6684e0:	0f 8c 45 03 00 00    	jl     66882b <gls_corstep_mod_mp_gls_corstep_tile_+0x10bb>
  6684e6:	48 8b 95 b8 e2 ff ff 	mov    rdx,QWORD PTR [rbp-0x1d48]
  6684ed:	4c 63 8d c0 ec ff ff 	movsxd r9,DWORD PTR [rbp-0x1340]
  6684f4:	48 63 8d b8 ec ff ff 	movsxd rcx,DWORD PTR [rbp-0x1348]
  6684fb:	49 2b c9             	sub    rcx,r9
  6684fe:	48 ff c1             	inc    rcx
  668501:	48 89 8d 00 ea ff ff 	mov    QWORD PTR [rbp-0x1600],rcx
  668508:	4c 89 e9             	mov    rcx,r13
  66850b:	4c 8b 5a 50          	mov    r11,QWORD PTR [rdx+0x50]
  66850f:	49 0f af c9          	imul   rcx,r9
  668513:	4d 0f af cb          	imul   r9,r11
  668517:	48 8b 42 38          	mov    rax,QWORD PTR [rdx+0x38]
  66851b:	4c 8b 02             	mov    r8,QWORD PTR [rdx]
  66851e:	4c 89 ea             	mov    rdx,r13
  668521:	49 0f af d4          	imul   rdx,r12
  668525:	48 63 b5 c8 ee ff ff 	movsxd rsi,DWORD PTR [rbp-0x1138]
  66852c:	48 63 bd c0 ee ff ff 	movsxd rdi,DWORD PTR [rbp-0x1140]
  668533:	4c 89 8d f0 e0 ff ff 	mov    QWORD PTR [rbp-0x1f10],r9
  66853a:	48 2b fe             	sub    rdi,rsi
  66853d:	48 ff c7             	inc    rdi
  668540:	4c 8d 0c f5 00 00 00 	lea    r9,[rsi*8+0x0]
  668547:	00 
  668548:	48 89 bd e0 e9 ff ff 	mov    QWORD PTR [rbp-0x1620],rdi
  66854f:	4a 8d 34 f5 00 00 00 	lea    rsi,[r14*8+0x0]
  668556:	00 
  668557:	48 f7 de             	neg    rsi
  66855a:	49 03 f1             	add    rsi,r9
  66855d:	83 e7 fc             	and    edi,0xfffffffc
  668560:	48 63 ff             	movsxd rdi,edi
  668563:	48 89 bd d0 e9 ff ff 	mov    QWORD PTR [rbp-0x1630],rdi
  66856a:	48 8b bd f0 e1 ff ff 	mov    rdi,QWORD PTR [rbp-0x1e10]
  668571:	48 89 85 f8 e0 ff ff 	mov    QWORD PTR [rbp-0x1f08],rax
  668578:	4c 8d 14 0e          	lea    r10,[rsi+rcx*1]
  66857c:	4c 2b d2             	sub    r10,rdx
  66857f:	4c 03 d7             	add    r10,rdi
  668582:	4c 89 95 d8 e9 ff ff 	mov    QWORD PTR [rbp-0x1628],r10
  668589:	4c 8b 95 98 e9 ff ff 	mov    r10,QWORD PTR [rbp-0x1668]
  668590:	4d 0f af d3          	imul   r10,r11
  668594:	4c 89 9d f0 e9 ff ff 	mov    QWORD PTR [rbp-0x1610],r11
  66859b:	48 83 f8 08          	cmp    rax,0x8
  66859f:	48 63 85 c8 ee ff ff 	movsxd rax,DWORD PTR [rbp-0x1138]
  6685a6:	0f 84 a8 01 00 00    	je     668754 <gls_corstep_mod_mp_gls_corstep_tile_+0xfe4>
  6685ac:	4d 2b c2             	sub    r8,r10
  6685af:	48 2b ca             	sub    rcx,rdx
  6685b2:	4c 8b 95 f8 e0 ff ff 	mov    r10,QWORD PTR [rbp-0x1f08]
  6685b9:	48 03 f1             	add    rsi,rcx
  6685bc:	4c 8b 8d a0 e9 ff ff 	mov    r9,QWORD PTR [rbp-0x1660]
  6685c3:	48 03 fe             	add    rdi,rsi
  6685c6:	4d 0f af ca          	imul   r9,r10
  6685ca:	49 0f af c2          	imul   rax,r10
  6685ce:	48 8b 95 f0 e0 ff ff 	mov    rdx,QWORD PTR [rbp-0x1f10]
  6685d5:	33 c9                	xor    ecx,ecx
  6685d7:	4c 89 bd 60 ec ff ff 	mov    QWORD PTR [rbp-0x13a0],r15
  6685de:	4d 89 d3             	mov    r11,r10
  6685e1:	c5 f9 10 0d 47 34 1e 	vmovupd xmm1,XMMWORD PTR [rip+0x1e3447]        # 84ba30 <__STRLITPACK_19.34+0x50>
  6685e8:	00 
  6685e9:	4c 89 a5 f8 ec ff ff 	mov    QWORD PTR [rbp-0x1308],r12
  6685f0:	4a 8d 34 02          	lea    rsi,[rdx+r8*1]
  6685f4:	49 2b d1             	sub    rdx,r9
  6685f7:	4c 2b c8             	sub    r9,rax
  6685fa:	4c 03 c2             	add    r8,rdx
  6685fd:	4a 8d 04 50          	lea    rax,[rax+r10*2]
  668601:	4c 03 c0             	add    r8,rax
  668604:	33 d2                	xor    edx,edx
  668606:	4c 89 85 b8 e2 ff ff 	mov    QWORD PTR [rbp-0x1d48],r8
  66860d:	49 2b f1             	sub    rsi,r9
  668610:	48 89 bd e8 e9 ff ff 	mov    QWORD PTR [rbp-0x1618],rdi
  668617:	33 c0                	xor    eax,eax
  668619:	4c 89 ad d0 ee ff ff 	mov    QWORD PTR [rbp-0x1130],r13
  668620:	4c 89 b5 00 ed ff ff 	mov    QWORD PTR [rbp-0x1300],r14
  668627:	4c 8b bd e0 e9 ff ff 	mov    r15,QWORD PTR [rbp-0x1620]
  66862e:	8b bd c0 ee ff ff    	mov    edi,DWORD PTR [rbp-0x1140]
  668634:	3b bd c8 ee ff ff    	cmp    edi,DWORD PTR [rbp-0x1138]
  66863a:	0f 8c d5 00 00 00    	jl     668715 <gls_corstep_mod_mp_gls_corstep_tile_+0xfa5>
  668640:	49 83 ff 04          	cmp    r15,0x4
  668644:	0f 8c 1e c4 00 00    	jl     674a68 <gls_corstep_mod_mp_gls_corstep_tile_+0xd2f8>
  66864a:	4c 8b 8d d8 e9 ff ff 	mov    r9,QWORD PTR [rbp-0x1628]
  668651:	45 33 d2             	xor    r10d,r10d
  668654:	48 8b bd e8 e9 ff ff 	mov    rdi,QWORD PTR [rbp-0x1618]
  66865b:	4c 8b a5 b8 e2 ff ff 	mov    r12,QWORD PTR [rbp-0x1d48]
  668662:	4c 8b b5 d0 e9 ff ff 	mov    r14,QWORD PTR [rbp-0x1630]
  668669:	4c 03 ca             	add    r9,rdx
  66866c:	48 89 8d f0 e0 ff ff 	mov    QWORD PTR [rbp-0x1f10],rcx
  668673:	4c 8d 04 17          	lea    r8,[rdi+rdx*1]
  668677:	4c 89 f1             	mov    rcx,r14
  66867a:	48 8d 3c 06          	lea    rdi,[rsi+rax*1]
  66867e:	4d 8d 2c 04          	lea    r13,[r12+rax*1]
  668682:	45 33 e4             	xor    r12d,r12d
  668685:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  668689:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  668690:	4e 8d 3c 27          	lea    r15,[rdi+r12*1]
  668694:	c4 c1 7b 10 17       	vmovsd xmm2,QWORD PTR [r15]
  668699:	c4 81 69 16 1c 1f    	vmovhpd xmm3,xmm2,QWORD PTR [r15+r11*1]
  66869f:	4f 8d 7c 25 00       	lea    r15,[r13+r12*1+0x0]
  6686a4:	c4 c1 7b 10 2f       	vmovsd xmm5,QWORD PTR [r15]
  6686a9:	4f 8d 24 9c          	lea    r12,[r12+r11*4]
  6686ad:	c4 81 51 16 34 1f    	vmovhpd xmm6,xmm5,QWORD PTR [r15+r11*1]
  6686b3:	c5 e1 5f e1          	vmaxpd xmm4,xmm3,xmm1
  6686b7:	c5 c9 5f f9          	vmaxpd xmm7,xmm6,xmm1
  6686bb:	c4 81 79 11 24 d1    	vmovupd XMMWORD PTR [r9+r10*8],xmm4
  6686c1:	c4 81 79 11 7c d0 10 	vmovupd XMMWORD PTR [r8+r10*8+0x10],xmm7
  6686c8:	49 83 c2 04          	add    r10,0x4
  6686cc:	4c 3b d1             	cmp    r10,rcx
  6686cf:	72 bf                	jb     668690 <gls_corstep_mod_mp_gls_corstep_tile_+0xf20>
  6686d1:	48 8b 8d f0 e0 ff ff 	mov    rcx,QWORD PTR [rbp-0x1f10]
  6686d8:	4c 8b bd e0 e9 ff ff 	mov    r15,QWORD PTR [rbp-0x1620]
  6686df:	4d 89 d9             	mov    r9,r11
  6686e2:	4d 0f af ce          	imul   r9,r14
  6686e6:	4d 3b f7             	cmp    r14,r15
  6686e9:	73 2a                	jae    668715 <gls_corstep_mod_mp_gls_corstep_tile_+0xfa5>
  6686eb:	48 8b bd d8 e9 ff ff 	mov    rdi,QWORD PTR [rbp-0x1628]
  6686f2:	4c 8d 04 17          	lea    r8,[rdi+rdx*1]
  6686f6:	48 8d 3c 06          	lea    rdi,[rsi+rax*1]
  6686fa:	c4 c1 7b 10 14 39    	vmovsd xmm2,QWORD PTR [r9+rdi*1]
  668700:	4d 03 cb             	add    r9,r11
  668703:	c5 eb 5f d0          	vmaxsd xmm2,xmm2,xmm0
  668707:	c4 81 7b 11 14 f0    	vmovsd QWORD PTR [r8+r14*8],xmm2
  66870d:	49 ff c6             	inc    r14
  668710:	4d 3b f7             	cmp    r14,r15
  668713:	72 e5                	jb     6686fa <gls_corstep_mod_mp_gls_corstep_tile_+0xf8a>
  668715:	48 ff c1             	inc    rcx
  668718:	48 03 95 d0 ee ff ff 	add    rdx,QWORD PTR [rbp-0x1130]
  66871f:	48 03 85 f0 e9 ff ff 	add    rax,QWORD PTR [rbp-0x1610]
  668726:	48 3b 8d 00 ea ff ff 	cmp    rcx,QWORD PTR [rbp-0x1600]
  66872d:	0f 82 fb fe ff ff    	jb     66862e <gls_corstep_mod_mp_gls_corstep_tile_+0xebe>
  668733:	4c 8b a5 f8 ec ff ff 	mov    r12,QWORD PTR [rbp-0x1308]
  66873a:	4c 8b bd 60 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13a0]
  668741:	4c 8b ad d0 ee ff ff 	mov    r13,QWORD PTR [rbp-0x1130]
  668748:	4c 8b b5 00 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1300]
  66874f:	e9 d7 00 00 00       	jmp    66882b <gls_corstep_mod_mp_gls_corstep_tile_+0x10bb>
  668754:	48 8b 95 a0 e9 ff ff 	mov    rdx,QWORD PTR [rbp-0x1660]
  66875b:	33 c0                	xor    eax,eax
  66875d:	4c 2b 95 f0 e0 ff ff 	sub    r10,QWORD PTR [rbp-0x1f10]
  668764:	4c 89 a5 f8 ec ff ff 	mov    QWORD PTR [rbp-0x1308],r12
  66876b:	4c 89 b5 00 ed ff ff 	mov    QWORD PTR [rbp-0x1300],r14
  668772:	48 8d 0c d5 00 00 00 	lea    rcx,[rdx*8+0x0]
  668779:	00 
  66877a:	4c 2b c9             	sub    r9,rcx
  66877d:	4d 03 c8             	add    r9,r8
  668780:	c5 fd 10 0d 78 1b 1e 	vmovupd ymm1,YMMWORD PTR [rip+0x1e1b78]        # 84a300 <var$630.126.450+0x360>
  668787:	00 
  668788:	4d 2b ca             	sub    r9,r10
  66878b:	4c 89 bd 60 ec ff ff 	mov    QWORD PTR [rbp-0x13a0],r15
  668792:	45 33 ff             	xor    r15d,r15d
  668795:	48 8b b5 d8 e9 ff ff 	mov    rsi,QWORD PTR [rbp-0x1628]
  66879c:	48 8b bd d0 e9 ff ff 	mov    rdi,QWORD PTR [rbp-0x1630]
  6687a3:	4c 8b 85 e0 e9 ff ff 	mov    r8,QWORD PTR [rbp-0x1620]
  6687aa:	4c 8b 95 00 ea ff ff 	mov    r10,QWORD PTR [rbp-0x1600]
  6687b1:	44 8b a5 c0 ee ff ff 	mov    r12d,DWORD PTR [rbp-0x1140]
  6687b8:	44 8b b5 c8 ee ff ff 	mov    r14d,DWORD PTR [rbp-0x1138]
  6687bf:	45 3b e6             	cmp    r12d,r14d
  6687c2:	7c 44                	jl     668808 <gls_corstep_mod_mp_gls_corstep_tile_+0x1098>
  6687c4:	49 83 f8 04          	cmp    r8,0x4
  6687c8:	0f 8c 11 f2 00 00    	jl     6779df <gls_corstep_mod_mp_gls_corstep_tile_+0x1026f>
  6687ce:	48 89 f9             	mov    rcx,rdi
  6687d1:	4c 89 fa             	mov    rdx,r15
  6687d4:	c4 c1 7d 10 14 d1    	vmovupd ymm2,YMMWORD PTR [r9+rdx*8]
  6687da:	c5 ed 5f d9          	vmaxpd ymm3,ymm2,ymm1
  6687de:	c5 fd 11 1c d6       	vmovupd YMMWORD PTR [rsi+rdx*8],ymm3
  6687e3:	48 83 c2 04          	add    rdx,0x4
  6687e7:	48 3b d7             	cmp    rdx,rdi
  6687ea:	72 e8                	jb     6687d4 <gls_corstep_mod_mp_gls_corstep_tile_+0x1064>
  6687ec:	49 3b c8             	cmp    rcx,r8
  6687ef:	73 17                	jae    668808 <gls_corstep_mod_mp_gls_corstep_tile_+0x1098>
  6687f1:	c4 c1 7b 10 14 c9    	vmovsd xmm2,QWORD PTR [r9+rcx*8]
  6687f7:	c5 eb 5f d0          	vmaxsd xmm2,xmm2,xmm0
  6687fb:	c5 fb 11 14 ce       	vmovsd QWORD PTR [rsi+rcx*8],xmm2
  668800:	48 ff c1             	inc    rcx
  668803:	49 3b c8             	cmp    rcx,r8
  668806:	72 e9                	jb     6687f1 <gls_corstep_mod_mp_gls_corstep_tile_+0x1081>
  668808:	48 ff c0             	inc    rax
  66880b:	49 03 f5             	add    rsi,r13
  66880e:	4d 03 cb             	add    r9,r11
  668811:	49 3b c2             	cmp    rax,r10
  668814:	72 a9                	jb     6687bf <gls_corstep_mod_mp_gls_corstep_tile_+0x104f>
  668816:	4c 8b a5 f8 ec ff ff 	mov    r12,QWORD PTR [rbp-0x1308]
  66881d:	4c 8b bd 60 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13a0]
  668824:	4c 8b b5 00 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1300]
  66882b:	48 8b 05 ee 7d 45 00 	mov    rax,QWORD PTR [rip+0x457dee]        # ac0620 <mod_scalars_mp_gls_p_>
  668832:	48 8b 95 f0 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1310]
  668839:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  66883d:	48 8d 14 d0          	lea    rdx,[rax+rdx*8]
  668841:	48 8b 05 98 7e 45 00 	mov    rax,QWORD PTR [rip+0x457e98]        # ac06e0 <mod_scalars_mp_gls_n_>
  668848:	c5 fb 10 42 f8       	vmovsd xmm0,QWORD PTR [rdx-0x8]
  66884d:	c5 f9 2e c1          	vucomisd xmm0,xmm1
  668851:	7a 06                	jp     668859 <gls_corstep_mod_mp_gls_corstep_tile_+0x10e9>
  668853:	0f 84 06 f1 00 00    	je     67795f <gls_corstep_mod_mp_gls_corstep_tile_+0x101ef>
  668859:	48 8b b5 f0 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x1310]
  668860:	48 8b 0d 19 7e 45 00 	mov    rcx,QWORD PTR [rip+0x457e19]        # ac0680 <mod_scalars_mp_gls_m_>
  668867:	c7 85 78 eb ff ff 00 	mov    DWORD PTR [rbp-0x1488],0x0
  66886e:	00 00 00 
  668871:	48 8d 04 f0          	lea    rax,[rax+rsi*8]
  668875:	c5 fb 10 40 f8       	vmovsd xmm0,QWORD PTR [rax-0x8]
  66887a:	c5 fb 10 4c f1 f8    	vmovsd xmm1,QWORD PTR [rcx+rsi*8-0x8]
  668880:	c5 fb 11 85 f8 e0 ff 	vmovsd QWORD PTR [rbp-0x1f08],xmm0
  668887:	ff 
  668888:	c5 fb 11 8d f0 e0 ff 	vmovsd QWORD PTR [rbp-0x1f10],xmm1
  66888f:	ff 
  668890:	4c 8b 1d c9 7d 45 00 	mov    r11,QWORD PTR [rip+0x457dc9]        # ac0660 <mod_scalars_mp_gls_p_+0x40>
  668897:	48 be cd 3b 7f 66 9e 	movabs rsi,0x3ff6a09e667f3bcd
  66889e:	a0 f6 3f 
  6688a1:	49 c1 e3 03          	shl    r11,0x3
  6688a5:	49 f7 db             	neg    r11
  6688a8:	48 8b 0d 91 81 45 00 	mov    rcx,QWORD PTR [rip+0x458191]        # ac0a40 <mod_scalars_mp_gls_sigp_>
  6688af:	4c 8b 85 f0 ec ff ff 	mov    r8,QWORD PTR [rbp-0x1310]
  6688b6:	c5 fb 10 15 c2 38 1e 	vmovsd xmm2,QWORD PTR [rip+0x1e38c2]        # 84c180 <__STRLITPACK_0.112+0x70>
  6688bd:	00 
  6688be:	c4 c1 7b 10 24 13    	vmovsd xmm4,QWORD PTR [r11+rdx*1]
  6688c4:	48 8b 15 55 7e 45 00 	mov    rdx,QWORD PTR [rip+0x457e55]        # ac0720 <mod_scalars_mp_gls_n_+0x40>
  6688cb:	48 c1 e2 03          	shl    rdx,0x3
  6688cf:	48 f7 da             	neg    rdx
  6688d2:	c4 a1 6b 5e 5c c1 f8 	vdivsd xmm3,xmm2,QWORD PTR [rcx+r8*8-0x8]
  6688d9:	c5 fb 10 2c 02       	vmovsd xmm5,QWORD PTR [rdx+rax*1]
  6688de:	c5 db 5e f5          	vdivsd xmm6,xmm4,xmm5
  6688e2:	4c 8b 0d 57 7f 45 00 	mov    r9,QWORD PTR [rip+0x457f57]        # ac0840 <mod_scalars_mp_gls_cmu0_+0x40>
  6688e9:	49 c1 e1 03          	shl    r9,0x3
  6688ed:	48 8b 3d 0c 7f 45 00 	mov    rdi,QWORD PTR [rip+0x457f0c]        # ac0800 <mod_scalars_mp_gls_cmu0_>
  6688f4:	49 f7 d9             	neg    r9
  6688f7:	c5 fb 10 0d b9 d0 45 	vmovsd xmm1,QWORD PTR [rip+0x45d0b9]        # ac59b8 <mod_scalars_mp_vonkar_>
  6688fe:	00 
  6688ff:	c5 fb 11 8d e0 e9 ff 	vmovsd QWORD PTR [rbp-0x1620],xmm1
  668906:	ff 
  668907:	c5 fb 11 8d 00 eb ff 	vmovsd QWORD PTR [rbp-0x1500],xmm1
  66890e:	ff 
  66890f:	4e 8d 14 c7          	lea    r10,[rdi+r8*8]
  668913:	c4 81 7b 10 04 11    	vmovsd xmm0,QWORD PTR [r9+r10*1]
  668919:	c5 c9 57 0d 9f 2f 1e 	vxorpd xmm1,xmm6,XMMWORD PTR [rip+0x1e2f9f]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  668920:	00 
  668921:	c5 fb 11 9d 08 eb ff 	vmovsd QWORD PTR [rbp-0x14f8],xmm3
  668928:	ff 
  668929:	c5 fb 11 85 b8 e2 ff 	vmovsd QWORD PTR [rbp-0x1d48],xmm0
  668930:	ff 
  668931:	c5 fb 11 a5 d8 e9 ff 	vmovsd QWORD PTR [rbp-0x1628],xmm4
  668938:	ff 
  668939:	c5 fb 11 ad d0 e9 ff 	vmovsd QWORD PTR [rbp-0x1630],xmm5
  668940:	ff 
  668941:	c5 fb 11 b5 f0 e9 ff 	vmovsd QWORD PTR [rbp-0x1610],xmm6
  668948:	ff 
  668949:	48 89 b5 10 eb ff ff 	mov    QWORD PTR [rbp-0x14f0],rsi
  668950:	4c 89 95 e8 e9 ff ff 	mov    QWORD PTR [rbp-0x1618],r10
  668957:	c5 f8 77             	vzeroupper 
  66895a:	e8 e1 6f e5 ff       	call   4bf940 <pow>
  66895f:	c5 fb 10 8d f0 e9 ff 	vmovsd xmm1,QWORD PTR [rbp-0x1610]
  668966:	ff 
  668967:	c5 fb 11 85 18 eb ff 	vmovsd QWORD PTR [rbp-0x14e8],xmm0
  66896e:	ff 
  66896f:	c5 f3 58 0d c1 3a 1e 	vaddsd xmm1,xmm1,QWORD PTR [rip+0x1e3ac1]        # 84c438 <__STRLITPACK_0.112+0x328>
  668976:	00 
  668977:	c5 fb 10 85 b8 e2 ff 	vmovsd xmm0,QWORD PTR [rbp-0x1d48]
  66897e:	ff 
  66897f:	e8 bc 6f e5 ff       	call   4bf940 <pow>
  668984:	48 8b 85 e8 e9 ff ff 	mov    rax,QWORD PTR [rbp-0x1618]
  66898b:	c5 fb 10 15 ed 37 1e 	vmovsd xmm2,QWORD PTR [rip+0x1e37ed]        # 84c180 <__STRLITPACK_0.112+0x70>
  668992:	00 
  668993:	c5 fb 11 85 20 eb ff 	vmovsd QWORD PTR [rbp-0x14e0],xmm0
  66899a:	ff 
  66899b:	c5 fb 10 48 f8       	vmovsd xmm1,QWORD PTR [rax-0x8]
  6689a0:	c5 f3 59 d9          	vmulsd xmm3,xmm1,xmm1
  6689a4:	c5 eb 5e e3          	vdivsd xmm4,xmm2,xmm3
  6689a8:	c5 fb 11 a5 28 eb ff 	vmovsd QWORD PTR [rbp-0x14d8],xmm4
  6689af:	ff 
  6689b0:	c5 fb 10 85 b8 e2 ff 	vmovsd xmm0,QWORD PTR [rbp-0x1d48]
  6689b7:	ff 
  6689b8:	c5 fb 10 8d d8 e9 ff 	vmovsd xmm1,QWORD PTR [rbp-0x1628]
  6689bf:	ff 
  6689c0:	e8 7b 6f e5 ff       	call   4bf940 <pow>
  6689c5:	c5 fb 11 85 d8 e9 ff 	vmovsd QWORD PTR [rbp-0x1628],xmm0
  6689cc:	ff 
  6689cd:	c5 fb 10 85 e0 e9 ff 	vmovsd xmm0,QWORD PTR [rbp-0x1620]
  6689d4:	ff 
  6689d5:	c5 fb 10 8d d0 e9 ff 	vmovsd xmm1,QWORD PTR [rbp-0x1630]
  6689dc:	ff 
  6689dd:	e8 5e 6f e5 ff       	call   4bf940 <pow>
  6689e2:	c5 fb 10 ad d8 e9 ff 	vmovsd xmm5,QWORD PTR [rbp-0x1628]
  6689e9:	ff 
  6689ea:	c5 fb 10 9d f8 e0 ff 	vmovsd xmm3,QWORD PTR [rbp-0x1f08]
  6689f1:	ff 
  6689f2:	c5 e3 59 cd          	vmulsd xmm1,xmm3,xmm5
  6689f6:	c5 d3 59 e3          	vmulsd xmm4,xmm5,xmm3
  6689fa:	c5 f3 59 d0          	vmulsd xmm2,xmm1,xmm0
  6689fe:	c5 fb 10 b5 d0 e9 ff 	vmovsd xmm6,QWORD PTR [rbp-0x1630]
  668a05:	ff 
  668a06:	c5 cb 59 0d 8a 37 1e 	vmulsd xmm1,xmm6,QWORD PTR [rip+0x1e378a]        # 84c198 <__STRLITPACK_0.112+0x88>
  668a0d:	00 
  668a0e:	c5 fb 11 95 30 eb ff 	vmovsd QWORD PTR [rbp-0x14d0],xmm2
  668a15:	ff 
  668a16:	c5 fb 11 a5 38 eb ff 	vmovsd QWORD PTR [rbp-0x14c8],xmm4
  668a1d:	ff 
  668a1e:	c5 fb 11 ad 40 eb ff 	vmovsd QWORD PTR [rbp-0x14c0],xmm5
  668a25:	ff 
  668a26:	c5 fb 10 05 ba 3a 1e 	vmovsd xmm0,QWORD PTR [rip+0x1e3aba]        # 84c4e8 <__STRLITPACK_0.112+0x3d8>
  668a2d:	00 
  668a2e:	e8 0d 6f e5 ff       	call   4bf940 <pow>
  668a33:	c5 fb 59 8d d8 e9 ff 	vmulsd xmm1,xmm0,QWORD PTR [rbp-0x1628]
  668a3a:	ff 
  668a3b:	bf 06 00 00 00       	mov    edi,0x6
  668a40:	c5 fb 11 8d 48 eb ff 	vmovsd QWORD PTR [rbp-0x14b8],xmm1
  668a47:	ff 
  668a48:	c5 fb 10 85 b8 e2 ff 	vmovsd xmm0,QWORD PTR [rbp-0x1d48]
  668a4f:	ff 
  668a50:	e8 fb 6f e5 ff       	call   4bfa50 <__powr8i4>
  668a55:	c5 fb 10 bd f8 e0 ff 	vmovsd xmm7,QWORD PTR [rbp-0x1f08]
  668a5c:	ff 
  668a5d:	c5 f9 28 c8          	vmovapd xmm1,xmm0
  668a61:	c5 7b 10 8d f0 e0 ff 	vmovsd xmm9,QWORD PTR [rbp-0x1f10]
  668a68:	ff 
  668a69:	33 c0                	xor    eax,eax
  668a6b:	c5 b3 5e ef          	vdivsd xmm5,xmm9,xmm7
  668a6f:	c5 fb 10 05 79 3a 1e 	vmovsd xmm0,QWORD PTR [rip+0x1e3a79]        # 84c4f0 <__STRLITPACK_0.112+0x3e0>
  668a76:	00 
  668a77:	c5 fb 10 1d 01 37 1e 	vmovsd xmm3,QWORD PTR [rip+0x1e3701]        # 84c180 <__STRLITPACK_0.112+0x70>
  668a7e:	00 
  668a7f:	c5 fb 5e d1          	vdivsd xmm2,xmm0,xmm1
  668a83:	c5 e3 5e e7          	vdivsd xmm4,xmm3,xmm7
  668a87:	c5 7b 10 05 09 37 1e 	vmovsd xmm8,QWORD PTR [rip+0x1e3709]        # 84c198 <__STRLITPACK_0.112+0x88>
  668a8e:	00 
  668a8f:	c4 41 43 59 d0       	vmulsd xmm10,xmm7,xmm8
  668a94:	c4 c1 53 58 f0       	vaddsd xmm6,xmm5,xmm8
  668a99:	c5 fb 11 95 50 eb ff 	vmovsd QWORD PTR [rbp-0x14b0],xmm2
  668aa0:	ff 
  668aa1:	c4 41 33 58 da       	vaddsd xmm11,xmm9,xmm10
  668aa6:	c5 fb 11 a5 58 eb ff 	vmovsd QWORD PTR [rbp-0x14a8],xmm4
  668aad:	ff 
  668aae:	c5 fb 11 ad 60 eb ff 	vmovsd QWORD PTR [rbp-0x14a0],xmm5
  668ab5:	ff 
  668ab6:	c5 fb 11 b5 68 eb ff 	vmovsd QWORD PTR [rbp-0x1498],xmm6
  668abd:	ff 
  668abe:	c5 7b 11 9d 70 eb ff 	vmovsd QWORD PTR [rbp-0x1490],xmm11
  668ac5:	ff 
  668ac6:	48 89 85 d0 e9 ff ff 	mov    QWORD PTR [rbp-0x1630],rax
  668acd:	48 89 85 b8 e2 ff ff 	mov    QWORD PTR [rbp-0x1d48],rax
  668ad4:	48 ff 8d 58 ec ff ff 	dec    QWORD PTR [rbp-0x13a8]
  668adb:	0f 8e 75 1b 00 00    	jle    66a656 <gls_corstep_mod_mp_gls_corstep_tile_+0x2ee6>
  668ae1:	48 8b 43 30          	mov    rax,QWORD PTR [rbx+0x30]
  668ae5:	45 33 db             	xor    r11d,r11d
  668ae8:	48 8b b5 c0 e2 ff ff 	mov    rsi,QWORD PTR [rbp-0x1d40]
  668aef:	4c 89 ad d0 ee ff ff 	mov    QWORD PTR [rbp-0x1130],r13
  668af6:	48 63 08             	movsxd rcx,DWORD PTR [rax]
  668af9:	48 8b 16             	mov    rdx,QWORD PTR [rsi]
  668afc:	4c 8b 96 80 00 00 00 	mov    r10,QWORD PTR [rsi+0x80]
  668b03:	49 2b d2             	sub    rdx,r10
  668b06:	4c 0f af d1          	imul   r10,rcx
  668b0a:	4d 0f af ec          	imul   r13,r12
  668b0e:	48 89 95 f0 e0 ff ff 	mov    QWORD PTR [rbp-0x1f10],rdx
  668b15:	49 f7 dd             	neg    r13
  668b18:	48 8b 56 68          	mov    rdx,QWORD PTR [rsi+0x68]
  668b1c:	4d 03 ef             	add    r13,r15
  668b1f:	48 89 95 68 ea ff ff 	mov    QWORD PTR [rbp-0x1598],rdx
  668b26:	48 8b 95 80 e9 ff ff 	mov    rdx,QWORD PTR [rbp-0x1680]
  668b2d:	4c 89 95 30 ea ff ff 	mov    QWORD PTR [rbp-0x15d0],r10
  668b34:	4c 8b 56 50          	mov    r10,QWORD PTR [rsi+0x50]
  668b38:	48 8b 76 38          	mov    rsi,QWORD PTR [rsi+0x38]
  668b3c:	48 89 b5 80 ec ff ff 	mov    QWORD PTR [rbp-0x1380],rsi
  668b43:	48 8b b2 80 00 00 00 	mov    rsi,QWORD PTR [rdx+0x80]
  668b4a:	48 0f af ce          	imul   rcx,rsi
  668b4e:	48 89 8d 18 ea ff ff 	mov    QWORD PTR [rbp-0x15e8],rcx
  668b55:	48 8b 4a 50          	mov    rcx,QWORD PTR [rdx+0x50]
  668b59:	4c 89 95 20 ec ff ff 	mov    QWORD PTR [rbp-0x13e0],r10
  668b60:	4c 8b 12             	mov    r10,QWORD PTR [rdx]
  668b63:	48 89 8d 30 ec ff ff 	mov    QWORD PTR [rbp-0x13d0],rcx
  668b6a:	4c 2b d6             	sub    r10,rsi
  668b6d:	48 8b 8d b0 ec ff ff 	mov    rcx,QWORD PTR [rbp-0x1350]
  668b74:	4c 89 95 f8 e0 ff ff 	mov    QWORD PTR [rbp-0x1f08],r10
  668b7b:	49 89 ca             	mov    r10,rcx
  668b7e:	4c 0f af 95 88 e9 ff 	imul   r10,QWORD PTR [rbp-0x1678]
  668b85:	ff 
  668b86:	4c 89 9d 00 ea ff ff 	mov    QWORD PTR [rbp-0x1600],r11
  668b8d:	4c 89 9d f0 e9 ff ff 	mov    QWORD PTR [rbp-0x1610],r11
  668b94:	4c 89 9d d8 e9 ff ff 	mov    QWORD PTR [rbp-0x1628],r11
  668b9b:	48 8b 72 68          	mov    rsi,QWORD PTR [rdx+0x68]
  668b9f:	4c 8b 5a 38          	mov    r11,QWORD PTR [rdx+0x38]
  668ba3:	48 8b 95 b8 ee ff ff 	mov    rdx,QWORD PTR [rbp-0x1148]
  668baa:	4c 03 d2             	add    r10,rdx
  668bad:	4d 2b d6             	sub    r10,r14
  668bb0:	4c 03 ad 78 e1 ff ff 	add    r13,QWORD PTR [rbp-0x1e88]
  668bb7:	4c 8b 8d c8 e2 ff ff 	mov    r9,QWORD PTR [rbp-0x1d38]
  668bbe:	4c 89 bd 60 ec ff ff 	mov    QWORD PTR [rbp-0x13a0],r15
  668bc5:	4c 8b bd 50 ea ff ff 	mov    r15,QWORD PTR [rbp-0x15b0]
  668bcc:	4c 89 a5 f8 ec ff ff 	mov    QWORD PTR [rbp-0x1308],r12
  668bd3:	4f 8d 64 d5 00       	lea    r12,[r13+r10*8+0x0]
  668bd8:	4c 2b f9             	sub    r15,rcx
  668bdb:	49 89 ca             	mov    r10,rcx
  668bde:	4c 89 a5 e0 e9 ff ff 	mov    QWORD PTR [rbp-0x1620],r12
  668be5:	49 ff c7             	inc    r15
  668be8:	4c 8b a5 98 e9 ff ff 	mov    r12,QWORD PTR [rbp-0x1668]
  668bef:	4c 89 b5 00 ed ff ff 	mov    QWORD PTR [rbp-0x1300],r14
  668bf6:	4d 89 e6             	mov    r14,r12
  668bf9:	49 8b 41 50          	mov    rax,QWORD PTR [r9+0x50]
  668bfd:	4c 89 bd 18 ec ff ff 	mov    QWORD PTR [rbp-0x13e8],r15
  668c04:	4c 8b bd a0 e9 ff ff 	mov    r15,QWORD PTR [rbp-0x1660]
  668c0b:	48 89 85 28 ec ff ff 	mov    QWORD PTR [rbp-0x13d8],rax
  668c12:	4c 0f af f0          	imul   r14,rax
  668c16:	4c 0f af d0          	imul   r10,rax
  668c1a:	4c 89 f8             	mov    rax,r15
  668c1d:	49 8b 39             	mov    rdi,QWORD PTR [r9]
  668c20:	4d 8b 41 68          	mov    r8,QWORD PTR [r9+0x68]
  668c24:	4d 8b 49 38          	mov    r9,QWORD PTR [r9+0x38]
  668c28:	49 2b f8             	sub    rdi,r8
  668c2b:	49 0f af c1          	imul   rax,r9
  668c2f:	4c 89 9d 70 ec ff ff 	mov    QWORD PTR [rbp-0x1390],r11
  668c36:	49 89 d3             	mov    r11,rdx
  668c39:	4d 0f af d9          	imul   r11,r9
  668c3d:	4c 8b ad 10 ec ff ff 	mov    r13,QWORD PTR [rbp-0x13f0]
  668c44:	4c 2b d0             	sub    r10,rax
  668c47:	4c 89 85 58 ea ff ff 	mov    QWORD PTR [rbp-0x15a8],r8
  668c4e:	44 2b ea             	sub    r13d,edx
  668c51:	4d 63 ed             	movsxd r13,r13d
  668c54:	49 ff c5             	inc    r13
  668c57:	4c 89 ad 48 ec ff ff 	mov    QWORD PTR [rbp-0x13b8],r13
  668c5e:	41 83 e5 fe          	and    r13d,0xfffffffe
  668c62:	4d 63 ed             	movsxd r13,r13d
  668c65:	4c 89 ad 68 ec ff ff 	mov    QWORD PTR [rbp-0x1398],r13
  668c6c:	4d 89 c5             	mov    r13,r8
  668c6f:	4d 2b ee             	sub    r13,r14
  668c72:	4d 03 c0             	add    r8,r8
  668c75:	4d 2b c6             	sub    r8,r14
  668c78:	4c 03 ef             	add    r13,rdi
  668c7b:	49 03 f8             	add    rdi,r8
  668c7e:	4d 03 ea             	add    r13,r10
  668c81:	4c 03 d7             	add    r10,rdi
  668c84:	4d 03 eb             	add    r13,r11
  668c87:	48 8b bd 20 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x13e0]
  668c8e:	4d 03 d3             	add    r10,r11
  668c91:	4c 89 95 48 ea ff ff 	mov    QWORD PTR [rbp-0x15b8],r10
  668c98:	4d 89 e2             	mov    r10,r12
  668c9b:	48 0f af cf          	imul   rcx,rdi
  668c9f:	4c 0f af d7          	imul   r10,rdi
  668ca3:	48 8b bd 80 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x1380]
  668caa:	49 89 c8             	mov    r8,rcx
  668cad:	4c 0f af ff          	imul   r15,rdi
  668cb1:	48 0f af d7          	imul   rdx,rdi
  668cb5:	4c 89 ad e8 e9 ff ff 	mov    QWORD PTR [rbp-0x1618],r13
  668cbc:	48 f7 d9             	neg    rcx
  668cbf:	4c 8b ad 68 ea ff ff 	mov    r13,QWORD PTR [rbp-0x1598]
  668cc6:	49 03 ca             	add    rcx,r10
  668cc9:	4c 89 8d 78 ec ff ff 	mov    QWORD PTR [rbp-0x1388],r9
  668cd0:	4d 89 e9             	mov    r9,r13
  668cd3:	4d 2b ca             	sub    r9,r10
  668cd6:	49 f7 da             	neg    r10
  668cd9:	4d 2b c7             	sub    r8,r15
  668cdc:	4b 8d 44 2d 00       	lea    rax,[r13+r13*1+0x0]
  668ce1:	4c 03 d0             	add    r10,rax
  668ce4:	48 f7 d8             	neg    rax
  668ce7:	49 03 c5             	add    rax,r13
  668cea:	4c 2b fa             	sub    r15,rdx
  668ced:	48 f7 d8             	neg    rax
  668cf0:	49 03 cf             	add    rcx,r15
  668cf3:	4c 8b b5 f0 e0 ff ff 	mov    r14,QWORD PTR [rbp-0x1f10]
  668cfa:	49 03 c6             	add    rax,r14
  668cfd:	4d 89 f3             	mov    r11,r14
  668d00:	48 2b c1             	sub    rax,rcx
  668d03:	4c 2b f1             	sub    r14,rcx
  668d06:	4d 2b dd             	sub    r11,r13
  668d09:	48 8b 8d 30 ec ff ff 	mov    rcx,QWORD PTR [rbp-0x13d0]
  668d10:	4d 03 c8             	add    r9,r8
  668d13:	4c 8b ad b0 ec ff ff 	mov    r13,QWORD PTR [rbp-0x1350]
  668d1a:	4d 03 c2             	add    r8,r10
  668d1d:	4c 0f af e9          	imul   r13,rcx
  668d21:	4c 0f af e1          	imul   r12,rcx
  668d25:	48 03 d7             	add    rdx,rdi
  668d28:	4d 03 cb             	add    r9,r11
  668d2b:	4d 03 d8             	add    r11,r8
  668d2e:	4c 03 ca             	add    r9,rdx
  668d31:	49 03 d3             	add    rdx,r11
  668d34:	49 89 f2             	mov    r10,rsi
  668d37:	4c 8b 9d a0 e9 ff ff 	mov    r11,QWORD PTR [rbp-0x1660]
  668d3e:	4c 8d 04 36          	lea    r8,[rsi+rsi*1]
  668d42:	4c 2b 9d b8 ee ff ff 	sub    r11,QWORD PTR [rbp-0x1148]
  668d49:	4d 2b d4             	sub    r10,r12
  668d4c:	4c 0f af 9d 70 ec ff 	imul   r11,QWORD PTR [rbp-0x1390]
  668d53:	ff 
  668d54:	48 8b bd 30 ea ff ff 	mov    rdi,QWORD PTR [rbp-0x15d0]
  668d5b:	4c 03 cf             	add    r9,rdi
  668d5e:	48 03 d7             	add    rdx,rdi
  668d61:	48 03 c7             	add    rax,rdi
  668d64:	49 03 fe             	add    rdi,r14
  668d67:	4e 8d 34 29          	lea    r14,[rcx+r13*1]
  668d6b:	49 f7 dd             	neg    r13
  668d6e:	4d 03 d6             	add    r10,r14
  668d71:	4d 03 ec             	add    r13,r12
  668d74:	49 f7 dc             	neg    r12
  668d77:	4d 03 e0             	add    r12,r8
  668d7a:	49 f7 d8             	neg    r8
  668d7d:	4c 03 c6             	add    r8,rsi
  668d80:	4d 03 f4             	add    r14,r12
  668d83:	4c 89 8d 08 ea ff ff 	mov    QWORD PTR [rbp-0x15f8],r9
  668d8a:	49 f7 d8             	neg    r8
  668d8d:	4c 8b 8d f8 e0 ff ff 	mov    r9,QWORD PTR [rbp-0x1f08]
  668d94:	4d 03 eb             	add    r13,r11
  668d97:	4c 2b ce             	sub    r9,rsi
  668d9a:	48 89 b5 60 ea ff ff 	mov    QWORD PTR [rbp-0x15a0],rsi
  668da1:	4d 03 d1             	add    r10,r9
  668da4:	48 8b b5 f8 e0 ff ff 	mov    rsi,QWORD PTR [rbp-0x1f08]
  668dab:	4d 03 ce             	add    r9,r14
  668dae:	4c 03 c6             	add    r8,rsi
  668db1:	4d 2b d3             	sub    r10,r11
  668db4:	4d 2b cb             	sub    r9,r11
  668db7:	4d 2b c5             	sub    r8,r13
  668dba:	49 2b f5             	sub    rsi,r13
  668dbd:	48 8b 8d 18 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x15e8]
  668dc4:	4c 03 d1             	add    r10,rcx
  668dc7:	4c 03 c9             	add    r9,rcx
  668dca:	4c 03 c1             	add    r8,rcx
  668dcd:	48 03 ce             	add    rcx,rsi
  668dd0:	4c 89 95 10 ea ff ff 	mov    QWORD PTR [rbp-0x15f0],r10
  668dd7:	c5 f9 10 15 11 2c 1e 	vmovupd xmm2,XMMWORD PTR [rip+0x1e2c11]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  668dde:	00 
  668ddf:	4c 8b bd 60 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13a0]
  668de6:	48 8b b5 48 ea ff ff 	mov    rsi,QWORD PTR [rbp-0x15b8]
  668ded:	4c 8b b5 d8 e9 ff ff 	mov    r14,QWORD PTR [rbp-0x1628]
  668df4:	4c 8b 95 f0 e9 ff ff 	mov    r10,QWORD PTR [rbp-0x1610]
  668dfb:	4c 8b 9d 00 ea ff ff 	mov    r11,QWORD PTR [rbp-0x1600]
  668e02:	4c 8b a5 b8 e2 ff ff 	mov    r12,QWORD PTR [rbp-0x1d48]
  668e09:	4c 8b ad d0 e9 ff ff 	mov    r13,QWORD PTR [rbp-0x1630]
  668e10:	48 89 8d 18 ea ff ff 	mov    QWORD PTR [rbp-0x15e8],rcx
  668e17:	4c 89 85 20 ea ff ff 	mov    QWORD PTR [rbp-0x15e0],r8
  668e1e:	4c 89 8d 28 ea ff ff 	mov    QWORD PTR [rbp-0x15d8],r9
  668e25:	48 89 bd 30 ea ff ff 	mov    QWORD PTR [rbp-0x15d0],rdi
  668e2c:	48 89 85 38 ea ff ff 	mov    QWORD PTR [rbp-0x15c8],rax
  668e33:	48 89 95 40 ea ff ff 	mov    QWORD PTR [rbp-0x15c0],rdx
  668e3a:	c5 fb 10 1d 56 33 1e 	vmovsd xmm3,QWORD PTR [rip+0x1e3356]        # 84c198 <__STRLITPACK_0.112+0x88>
  668e41:	00 
  668e42:	45 33 c9             	xor    r9d,r9d
  668e45:	33 c9                	xor    ecx,ecx
  668e47:	48 8b 85 50 ea ff ff 	mov    rax,QWORD PTR [rbp-0x15b0]
  668e4e:	33 d2                	xor    edx,edx
  668e50:	48 3b 85 b0 ec ff ff 	cmp    rax,QWORD PTR [rbp-0x1350]
  668e57:	48 89 d0             	mov    rax,rdx
  668e5a:	0f 8c 10 05 00 00    	jl     669370 <gls_corstep_mod_mp_gls_corstep_tile_+0x1c00>
  668e60:	4c 8b bd 08 ea ff ff 	mov    r15,QWORD PTR [rbp-0x15f8]
  668e67:	4c 8b 85 e0 e9 ff ff 	mov    r8,QWORD PTR [rbp-0x1620]
  668e6e:	48 8b bd e8 e9 ff ff 	mov    rdi,QWORD PTR [rbp-0x1618]
  668e75:	48 8b b5 48 ea ff ff 	mov    rsi,QWORD PTR [rbp-0x15b8]
  668e7c:	4d 03 fa             	add    r15,r10
  668e7f:	4c 89 bd 80 ea ff ff 	mov    QWORD PTR [rbp-0x1580],r15
  668e86:	4d 03 c4             	add    r8,r12
  668e89:	4c 8b bd 40 ea ff ff 	mov    r15,QWORD PTR [rbp-0x15c0]
  668e90:	49 03 fb             	add    rdi,r11
  668e93:	48 89 bd 90 ea ff ff 	mov    QWORD PTR [rbp-0x1570],rdi
  668e9a:	49 03 f3             	add    rsi,r11
  668e9d:	48 89 b5 88 ea ff ff 	mov    QWORD PTR [rbp-0x1578],rsi
  668ea4:	4c 89 85 88 ec ff ff 	mov    QWORD PTR [rbp-0x1378],r8
  668eab:	4d 03 fa             	add    r15,r10
  668eae:	4c 89 bd 78 ea ff ff 	mov    QWORD PTR [rbp-0x1588],r15
  668eb5:	4c 8b bd 38 ea ff ff 	mov    r15,QWORD PTR [rbp-0x15c8]
  668ebc:	4c 89 8d 40 ec ff ff 	mov    QWORD PTR [rbp-0x13c0],r9
  668ec3:	4c 89 b5 d8 e9 ff ff 	mov    QWORD PTR [rbp-0x1628],r14
  668eca:	4c 89 95 f0 e9 ff ff 	mov    QWORD PTR [rbp-0x1610],r10
  668ed1:	4d 03 fa             	add    r15,r10
  668ed4:	4c 89 bd 70 ea ff ff 	mov    QWORD PTR [rbp-0x1590],r15
  668edb:	4c 8b bd 30 ea ff ff 	mov    r15,QWORD PTR [rbp-0x15d0]
  668ee2:	4c 89 9d 00 ea ff ff 	mov    QWORD PTR [rbp-0x1600],r11
  668ee9:	4c 89 a5 b8 e2 ff ff 	mov    QWORD PTR [rbp-0x1d48],r12
  668ef0:	4c 89 ad d0 e9 ff ff 	mov    QWORD PTR [rbp-0x1630],r13
  668ef7:	4d 03 fa             	add    r15,r10
  668efa:	4c 89 bd 80 e9 ff ff 	mov    QWORD PTR [rbp-0x1680],r15
  668f01:	4c 8b bd 10 ea ff ff 	mov    r15,QWORD PTR [rbp-0x15f0]
  668f08:	4d 03 fe             	add    r15,r14
  668f0b:	4c 89 bd c8 e2 ff ff 	mov    QWORD PTR [rbp-0x1d38],r15
  668f12:	4c 8b bd 28 ea ff ff 	mov    r15,QWORD PTR [rbp-0x15d8]
  668f19:	4d 03 fe             	add    r15,r14
  668f1c:	4c 89 bd c0 e2 ff ff 	mov    QWORD PTR [rbp-0x1d40],r15
  668f23:	4c 8b bd 20 ea ff ff 	mov    r15,QWORD PTR [rbp-0x15e0]
  668f2a:	4d 03 fe             	add    r15,r14
  668f2d:	4c 89 bd f8 e0 ff ff 	mov    QWORD PTR [rbp-0x1f08],r15
  668f34:	4c 8b bd 18 ea ff ff 	mov    r15,QWORD PTR [rbp-0x15e8]
  668f3b:	4d 03 fe             	add    r15,r14
  668f3e:	4c 89 bd f0 e0 ff ff 	mov    QWORD PTR [rbp-0x1f10],r15
  668f45:	48 8b b5 10 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x13f0]
  668f4c:	48 3b b5 b8 ee ff ff 	cmp    rsi,QWORD PTR [rbp-0x1148]
  668f53:	0f 8c ac 03 00 00    	jl     669305 <gls_corstep_mod_mp_gls_corstep_tile_+0x1b95>
  668f59:	48 83 bd 48 ec ff ff 	cmp    QWORD PTR [rbp-0x13b8],0x2
  668f60:	02 
  668f61:	0f 8c e8 e9 00 00    	jl     67794f <gls_corstep_mod_mp_gls_corstep_tile_+0x101df>
  668f67:	48 8b b5 c0 e2 ff ff 	mov    rsi,QWORD PTR [rbp-0x1d40]
  668f6e:	4c 8b 9d 68 ec ff ff 	mov    r11,QWORD PTR [rbp-0x1398]
  668f75:	4c 8b bd 80 ea ff ff 	mov    r15,QWORD PTR [rbp-0x1580]
  668f7c:	4c 8b b5 78 ea ff ff 	mov    r14,QWORD PTR [rbp-0x1588]
  668f83:	4c 8d 2c 06          	lea    r13,[rsi+rax*1]
  668f87:	48 8b b5 f8 e0 ff ff 	mov    rsi,QWORD PTR [rbp-0x1f08]
  668f8e:	4c 89 ad a8 ea ff ff 	mov    QWORD PTR [rbp-0x1558],r13
  668f95:	4c 03 fa             	add    r15,rdx
  668f98:	4c 89 9d 38 ec ff ff 	mov    QWORD PTR [rbp-0x13c8],r11
  668f9f:	45 33 db             	xor    r11d,r11d
  668fa2:	4c 8b 95 90 ea ff ff 	mov    r10,QWORD PTR [rbp-0x1570]
  668fa9:	4c 8d 2c 06          	lea    r13,[rsi+rax*1]
  668fad:	48 8b b5 f0 e0 ff ff 	mov    rsi,QWORD PTR [rbp-0x1f10]
  668fb4:	4c 03 f2             	add    r14,rdx
  668fb7:	4c 8b 8d 88 ea ff ff 	mov    r9,QWORD PTR [rbp-0x1578]
  668fbe:	4c 8b 85 70 ea ff ff 	mov    r8,QWORD PTR [rbp-0x1590]
  668fc5:	4c 03 d1             	add    r10,rcx
  668fc8:	48 8b bd 80 e9 ff ff 	mov    rdi,QWORD PTR [rbp-0x1680]
  668fcf:	4c 8b a5 c8 e2 ff ff 	mov    r12,QWORD PTR [rbp-0x1d38]
  668fd6:	4c 03 c9             	add    r9,rcx
  668fd9:	4c 89 ad d8 ec ff ff 	mov    QWORD PTR [rbp-0x1328],r13
  668fe0:	4c 8d 2c 06          	lea    r13,[rsi+rax*1]
  668fe4:	4c 89 ad 98 ea ff ff 	mov    QWORD PTR [rbp-0x1568],r13
  668feb:	45 33 ed             	xor    r13d,r13d
  668fee:	33 f6                	xor    esi,esi
  668ff0:	4c 03 c2             	add    r8,rdx
  668ff3:	48 03 fa             	add    rdi,rdx
  668ff6:	48 89 85 c8 eb ff ff 	mov    QWORD PTR [rbp-0x1438],rax
  668ffd:	4c 03 e0             	add    r12,rax
  669000:	48 89 95 00 ec ff ff 	mov    QWORD PTR [rbp-0x1400],rdx
  669007:	48 89 8d 08 ec ff ff 	mov    QWORD PTR [rbp-0x13f8],rcx
  66900e:	4c 89 b5 98 ec ff ff 	mov    QWORD PTR [rbp-0x1368],r14
  669015:	4c 89 bd 90 ec ff ff 	mov    QWORD PTR [rbp-0x1370],r15
  66901c:	48 89 f0             	mov    rax,rsi
  66901f:	48 8b 95 98 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1568]
  669026:	48 8b 8d a8 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x1558]
  66902d:	4c 8b b5 78 ec ff ff 	mov    r14,QWORD PTR [rbp-0x1388]
  669034:	4f 8d 3c 29          	lea    r15,[r9+r13*1]
  669038:	c4 c1 7b 10 27       	vmovsd xmm4,QWORD PTR [r15]
  66903d:	c4 81 59 16 34 37    	vmovhpd xmm6,xmm4,QWORD PTR [r15+r14*1]
  669043:	4f 8d 3c 2a          	lea    r15,[r10+r13*1]
  669047:	c4 c1 7b 10 2f       	vmovsd xmm5,QWORD PTR [r15]
  66904c:	4f 8d 6c 75 00       	lea    r13,[r13+r14*2+0x0]
  669051:	c4 81 51 16 3c 37    	vmovhpd xmm7,xmm5,QWORD PTR [r15+r14*1]
  669057:	4d 8d 34 30          	lea    r14,[r8+rsi*1]
  66905b:	c5 49 5c c7          	vsubpd xmm8,xmm6,xmm7
  66905f:	c4 c1 69 5e c8       	vdivpd xmm1,xmm2,xmm8
  669064:	4c 8b bd 80 ec ff ff 	mov    r15,QWORD PTR [rbp-0x1380]
  66906b:	c4 41 7b 10 0e       	vmovsd xmm9,QWORD PTR [r14]
  669070:	c4 01 31 16 1c 3e    	vmovhpd xmm11,xmm9,QWORD PTR [r14+r15*1]
  669076:	4c 8d 34 37          	lea    r14,[rdi+rsi*1]
  66907a:	c4 41 7b 10 16       	vmovsd xmm10,QWORD PTR [r14]
  66907f:	c4 01 29 16 24 3e    	vmovhpd xmm12,xmm10,QWORD PTR [r14+r15*1]
  669085:	4c 8b b5 98 ec ff ff 	mov    r14,QWORD PTR [rbp-0x1368]
  66908c:	c4 41 21 5c f4       	vsubpd xmm14,xmm11,xmm12
  669091:	4c 03 f6             	add    r14,rsi
  669094:	c4 41 7b 10 2e       	vmovsd xmm13,QWORD PTR [r14]
  669099:	c4 01 11 16 3c 3e    	vmovhpd xmm15,xmm13,QWORD PTR [r14+r15*1]
  66909f:	4c 8b b5 90 ec ff ff 	mov    r14,QWORD PTR [rbp-0x1370]
  6690a6:	c4 c1 09 58 e7       	vaddpd xmm4,xmm14,xmm15
  6690ab:	4c 03 f6             	add    r14,rsi
  6690ae:	c4 c1 7b 10 06       	vmovsd xmm0,QWORD PTR [r14]
  6690b3:	4a 8d 34 7e          	lea    rsi,[rsi+r15*2]
  6690b7:	c4 81 79 16 2c 3e    	vmovhpd xmm5,xmm0,QWORD PTR [r14+r15*1]
  6690bd:	4c 8b bd d8 ec ff ff 	mov    r15,QWORD PTR [rbp-0x1328]
  6690c4:	4c 8b b5 70 ec ff ff 	mov    r14,QWORD PTR [rbp-0x1390]
  6690cb:	c5 d9 5c f5          	vsubpd xmm6,xmm4,xmm5
  6690cf:	c5 f1 59 fe          	vmulpd xmm7,xmm1,xmm6
  6690d3:	c5 c1 59 c7          	vmulpd xmm0,xmm7,xmm7
  6690d7:	4c 03 f8             	add    r15,rax
  6690da:	c4 41 7b 10 07       	vmovsd xmm8,QWORD PTR [r15]
  6690df:	c4 01 39 16 14 37    	vmovhpd xmm10,xmm8,QWORD PTR [r15+r14*1]
  6690e5:	4c 8d 3c 02          	lea    r15,[rdx+rax*1]
  6690e9:	c4 41 7b 10 0f       	vmovsd xmm9,QWORD PTR [r15]
  6690ee:	c4 01 31 16 1c 37    	vmovhpd xmm11,xmm9,QWORD PTR [r15+r14*1]
  6690f4:	4c 8d 3c 01          	lea    r15,[rcx+rax*1]
  6690f8:	c4 41 29 5c eb       	vsubpd xmm13,xmm10,xmm11
  6690fd:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  669102:	c4 01 19 16 34 37    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r14*1]
  669108:	4d 8d 3c 04          	lea    r15,[r12+rax*1]
  66910c:	c4 c1 11 58 e6       	vaddpd xmm4,xmm13,xmm14
  669111:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  669116:	4a 8d 04 70          	lea    rax,[rax+r14*2]
  66911a:	c4 81 01 16 2c 37    	vmovhpd xmm5,xmm15,QWORD PTR [r15+r14*1]
  669120:	c5 d9 5c f5          	vsubpd xmm6,xmm4,xmm5
  669124:	c5 f1 59 ce          	vmulpd xmm1,xmm1,xmm6
  669128:	c5 f1 59 c9          	vmulpd xmm1,xmm1,xmm1
  66912c:	c5 f9 58 c1          	vaddpd xmm0,xmm0,xmm1
  669130:	4c 8b bd 88 ec ff ff 	mov    r15,QWORD PTR [rbp-0x1378]
  669137:	c4 81 79 11 04 df    	vmovupd XMMWORD PTR [r15+r11*8],xmm0
  66913d:	49 83 c3 02          	add    r11,0x2
  669141:	4c 3b 9d 68 ec ff ff 	cmp    r11,QWORD PTR [rbp-0x1398]
  669148:	0f 82 df fe ff ff    	jb     66902d <gls_corstep_mod_mp_gls_corstep_tile_+0x18bd>
  66914e:	48 8b 85 c8 eb ff ff 	mov    rax,QWORD PTR [rbp-0x1438]
  669155:	48 8b 95 00 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1400]
  66915c:	48 8b 8d 08 ec ff ff 	mov    rcx,QWORD PTR [rbp-0x13f8]
  669163:	48 8b b5 38 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x13c8]
  66916a:	4c 8b a5 70 ec ff ff 	mov    r12,QWORD PTR [rbp-0x1390]
  669171:	4c 8b 9d 80 ec ff ff 	mov    r11,QWORD PTR [rbp-0x1380]
  669178:	4c 8b 95 78 ec ff ff 	mov    r10,QWORD PTR [rbp-0x1388]
  66917f:	4c 0f af e6          	imul   r12,rsi
  669183:	4c 0f af de          	imul   r11,rsi
  669187:	4c 0f af d6          	imul   r10,rsi
  66918b:	48 3b b5 48 ec ff ff 	cmp    rsi,QWORD PTR [rbp-0x13b8]
  669192:	0f 83 6d 01 00 00    	jae    669305 <gls_corstep_mod_mp_gls_corstep_tile_+0x1b95>
  669198:	4c 8b 8d 90 ea ff ff 	mov    r9,QWORD PTR [rbp-0x1570]
  66919f:	4c 8b b5 88 ea ff ff 	mov    r14,QWORD PTR [rbp-0x1578]
  6691a6:	4c 8b bd 70 ea ff ff 	mov    r15,QWORD PTR [rbp-0x1590]
  6691ad:	4c 8b ad 80 ea ff ff 	mov    r13,QWORD PTR [rbp-0x1580]
  6691b4:	4d 8d 04 09          	lea    r8,[r9+rcx*1]
  6691b8:	48 8b bd 78 ea ff ff 	mov    rdi,QWORD PTR [rbp-0x1588]
  6691bf:	4d 8d 0c 0e          	lea    r9,[r14+rcx*1]
  6691c3:	4c 89 85 b0 ea ff ff 	mov    QWORD PTR [rbp-0x1550],r8
  6691ca:	4d 8d 34 17          	lea    r14,[r15+rdx*1]
  6691ce:	4c 8b bd f8 e0 ff ff 	mov    r15,QWORD PTR [rbp-0x1f08]
  6691d5:	4d 8d 44 15 00       	lea    r8,[r13+rdx*1+0x0]
  6691da:	4c 8b ad 80 e9 ff ff 	mov    r13,QWORD PTR [rbp-0x1680]
  6691e1:	48 8d 34 17          	lea    rsi,[rdi+rdx*1]
  6691e5:	48 89 b5 c0 eb ff ff 	mov    QWORD PTR [rbp-0x1440],rsi
  6691ec:	48 8b bd c8 e2 ff ff 	mov    rdi,QWORD PTR [rbp-0x1d38]
  6691f3:	4c 03 f8             	add    r15,rax
  6691f6:	4c 89 bd a0 ea ff ff 	mov    QWORD PTR [rbp-0x1560],r15
  6691fd:	4c 03 ea             	add    r13,rdx
  669200:	4c 8b bd f0 e0 ff ff 	mov    r15,QWORD PTR [rbp-0x1f10]
  669207:	48 8b b5 c0 e2 ff ff 	mov    rsi,QWORD PTR [rbp-0x1d40]
  66920e:	48 03 f8             	add    rdi,rax
  669211:	4c 89 ad d0 ec ff ff 	mov    QWORD PTR [rbp-0x1330],r13
  669218:	4c 89 b5 a0 ec ff ff 	mov    QWORD PTR [rbp-0x1360],r14
  66921f:	4c 03 f8             	add    r15,rax
  669222:	48 03 f0             	add    rsi,rax
  669225:	48 89 85 c8 eb ff ff 	mov    QWORD PTR [rbp-0x1438],rax
  66922c:	48 89 95 00 ec ff ff 	mov    QWORD PTR [rbp-0x1400],rdx
  669233:	48 89 8d 08 ec ff ff 	mov    QWORD PTR [rbp-0x13f8],rcx
  66923a:	4d 89 fd             	mov    r13,r15
  66923d:	48 8b 85 a0 ea ff ff 	mov    rax,QWORD PTR [rbp-0x1560]
  669244:	48 8b 95 c0 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x1440]
  66924b:	48 8b 8d b0 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x1550]
  669252:	4c 8b b5 38 ec ff ff 	mov    r14,QWORD PTR [rbp-0x13c8]
  669259:	c4 81 7b 10 04 0a    	vmovsd xmm0,QWORD PTR [r10+r9*1]
  66925f:	4c 8b bd a0 ec ff ff 	mov    r15,QWORD PTR [rbp-0x1360]
  669266:	c4 41 7b 10 04 04    	vmovsd xmm8,QWORD PTR [r12+rax*1]
  66926c:	c4 c1 7b 5c 0c 0a    	vsubsd xmm1,xmm0,QWORD PTR [r10+rcx*1]
  669272:	c4 01 3b 5c 0c 2c    	vsubsd xmm9,xmm8,QWORD PTR [r12+r13*1]
  669278:	c5 63 5e d9          	vdivsd xmm11,xmm3,xmm1
  66927c:	c4 81 7b 10 24 3b    	vmovsd xmm4,QWORD PTR [r11+r15*1]
  669282:	4c 8b bd d0 ec ff ff 	mov    r15,QWORD PTR [rbp-0x1330]
  669289:	4c 03 95 78 ec ff ff 	add    r10,QWORD PTR [rbp-0x1388]
  669290:	c4 41 33 58 14 34    	vaddsd xmm10,xmm9,QWORD PTR [r12+rsi*1]
  669296:	c4 81 5b 5c 2c 3b    	vsubsd xmm5,xmm4,QWORD PTR [r11+r15*1]
  66929c:	c4 41 2b 5c 24 3c    	vsubsd xmm12,xmm10,QWORD PTR [r12+rdi*1]
  6692a2:	c4 c1 53 58 34 13    	vaddsd xmm6,xmm5,QWORD PTR [r11+rdx*1]
  6692a8:	c4 41 23 59 f4       	vmulsd xmm14,xmm11,xmm12
  6692ad:	c4 81 4b 5c 3c 03    	vsubsd xmm7,xmm6,QWORD PTR [r11+r8*1]
  6692b3:	c4 c1 0b 59 c6       	vmulsd xmm0,xmm14,xmm14
  6692b8:	c5 23 59 ef          	vmulsd xmm13,xmm11,xmm7
  6692bc:	c4 41 13 59 fd       	vmulsd xmm15,xmm13,xmm13
  6692c1:	4c 8b bd 88 ec ff ff 	mov    r15,QWORD PTR [rbp-0x1378]
  6692c8:	c5 83 58 c8          	vaddsd xmm1,xmm15,xmm0
  6692cc:	c4 81 7b 11 0c f7    	vmovsd QWORD PTR [r15+r14*8],xmm1
  6692d2:	49 ff c6             	inc    r14
  6692d5:	4c 03 9d 80 ec ff ff 	add    r11,QWORD PTR [rbp-0x1380]
  6692dc:	4c 03 a5 70 ec ff ff 	add    r12,QWORD PTR [rbp-0x1390]
  6692e3:	4c 3b b5 48 ec ff ff 	cmp    r14,QWORD PTR [rbp-0x13b8]
  6692ea:	0f 82 69 ff ff ff    	jb     669259 <gls_corstep_mod_mp_gls_corstep_tile_+0x1ae9>
  6692f0:	48 8b 85 c8 eb ff ff 	mov    rax,QWORD PTR [rbp-0x1438]
  6692f7:	48 8b 95 00 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1400]
  6692fe:	48 8b 8d 08 ec ff ff 	mov    rcx,QWORD PTR [rbp-0x13f8]
  669305:	48 8b b5 88 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x1378]
  66930c:	48 8b bd 40 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x13c0]
  669313:	48 ff c7             	inc    rdi
  669316:	48 03 b5 d0 ee ff ff 	add    rsi,QWORD PTR [rbp-0x1130]
  66931d:	48 03 8d 28 ec ff ff 	add    rcx,QWORD PTR [rbp-0x13d8]
  669324:	48 03 95 20 ec ff ff 	add    rdx,QWORD PTR [rbp-0x13e0]
  66932b:	48 03 85 30 ec ff ff 	add    rax,QWORD PTR [rbp-0x13d0]
  669332:	48 89 b5 88 ec ff ff 	mov    QWORD PTR [rbp-0x1378],rsi
  669339:	48 89 bd 40 ec ff ff 	mov    QWORD PTR [rbp-0x13c0],rdi
  669340:	48 3b bd 18 ec ff ff 	cmp    rdi,QWORD PTR [rbp-0x13e8]
  669347:	0f 82 f8 fb ff ff    	jb     668f45 <gls_corstep_mod_mp_gls_corstep_tile_+0x17d5>
  66934d:	4c 8b b5 d8 e9 ff ff 	mov    r14,QWORD PTR [rbp-0x1628]
  669354:	4c 8b 95 f0 e9 ff ff 	mov    r10,QWORD PTR [rbp-0x1610]
  66935b:	4c 8b 9d 00 ea ff ff 	mov    r11,QWORD PTR [rbp-0x1600]
  669362:	4c 8b a5 b8 e2 ff ff 	mov    r12,QWORD PTR [rbp-0x1d48]
  669369:	4c 8b ad d0 e9 ff ff 	mov    r13,QWORD PTR [rbp-0x1630]
  669370:	49 ff c5             	inc    r13
  669373:	4c 03 a5 60 ec ff ff 	add    r12,QWORD PTR [rbp-0x13a0]
  66937a:	4c 03 9d 58 ea ff ff 	add    r11,QWORD PTR [rbp-0x15a8]
  669381:	4c 03 95 68 ea ff ff 	add    r10,QWORD PTR [rbp-0x1598]
  669388:	4c 03 b5 60 ea ff ff 	add    r14,QWORD PTR [rbp-0x15a0]
  66938f:	4c 3b ad 58 ec ff ff 	cmp    r13,QWORD PTR [rbp-0x13a8]
  669396:	0f 82 a6 fa ff ff    	jb     668e42 <gls_corstep_mod_mp_gls_corstep_tile_+0x16d2>
  66939c:	48 8b bd b0 e2 ff ff 	mov    rdi,QWORD PTR [rbp-0x1d50]
  6693a3:	33 d2                	xor    edx,edx
  6693a5:	44 8b 85 b8 ec ff ff 	mov    r8d,DWORD PTR [rbp-0x1348]
  6693ac:	48 89 95 d8 e9 ff ff 	mov    QWORD PTR [rbp-0x1628],rdx
  6693b3:	48 89 95 e0 e9 ff ff 	mov    QWORD PTR [rbp-0x1620],rdx
  6693ba:	4c 8b 0f             	mov    r9,QWORD PTR [rdi]
  6693bd:	48 8b 57 38          	mov    rdx,QWORD PTR [rdi+0x38]
  6693c1:	48 8b 4f 68          	mov    rcx,QWORD PTR [rdi+0x68]
  6693c5:	48 8b 47 50          	mov    rax,QWORD PTR [rdi+0x50]
  6693c9:	41 8d 78 01          	lea    edi,[r8+0x1]
  6693cd:	89 bd f8 e0 ff ff    	mov    DWORD PTR [rbp-0x1f08],edi
  6693d3:	8b bd c0 ec ff ff    	mov    edi,DWORD PTR [rbp-0x1340]
  6693d9:	4d 63 c0             	movsxd r8,r8d
  6693dc:	4c 89 85 38 ed ff ff 	mov    QWORD PTR [rbp-0x12c8],r8
  6693e3:	44 8d 7f ff          	lea    r15d,[rdi-0x1]
  6693e7:	48 63 ff             	movsxd rdi,edi
  6693ea:	4c 2b c7             	sub    r8,rdi
  6693ed:	49 83 c0 03          	add    r8,0x3
  6693f1:	4c 89 85 48 ea ff ff 	mov    QWORD PTR [rbp-0x15b8],r8
  6693f8:	44 8b 85 c0 ee ff ff 	mov    r8d,DWORD PTR [rbp-0x1140]
  6693ff:	4d 63 c0             	movsxd r8,r8d
  669402:	8b b5 c8 ee ff ff    	mov    esi,DWORD PTR [rbp-0x1138]
  669408:	4d 89 c2             	mov    r10,r8
  66940b:	48 63 f6             	movsxd rsi,esi
  66940e:	45 8d 58 01          	lea    r11d,[r8+0x1]
  669412:	4c 2b d6             	sub    r10,rsi
  669415:	49 83 c2 03          	add    r10,0x3
  669419:	4c 89 95 08 ea ff ff 	mov    QWORD PTR [rbp-0x15f8],r10
  669420:	41 83 e2 fc          	and    r10d,0xfffffffc
  669424:	4d 63 d2             	movsxd r10,r10d
  669427:	4c 89 95 30 ea ff ff 	mov    QWORD PTR [rbp-0x15d0],r10
  66942e:	4c 8b 95 98 e9 ff ff 	mov    r10,QWORD PTR [rbp-0x1668]
  669435:	49 89 c5             	mov    r13,rax
  669438:	4c 0f af d0          	imul   r10,rax
  66943c:	4c 0f af ef          	imul   r13,rdi
  669440:	4c 89 85 b8 e2 ff ff 	mov    QWORD PTR [rbp-0x1d48],r8
  669447:	44 2b c6             	sub    r8d,esi
  66944a:	41 83 c0 03          	add    r8d,0x3
  66944e:	49 89 d6             	mov    r14,rdx
  669451:	44 89 bd f0 e0 ff ff 	mov    DWORD PTR [rbp-0x1f10],r15d
  669458:	4c 8d 3c f5 00 00 00 	lea    r15,[rsi*8+0x0]
  66945f:	00 
  669460:	48 89 b5 c0 e2 ff ff 	mov    QWORD PTR [rbp-0x1d40],rsi
  669467:	4c 0f af f6          	imul   r14,rsi
  66946b:	44 89 9d 18 ea ff ff 	mov    DWORD PTR [rbp-0x15e8],r11d
  669472:	44 8d 5e ff          	lea    r11d,[rsi-0x1]
  669476:	4c 89 d6             	mov    rsi,r10
  669479:	44 89 85 50 ea ff ff 	mov    DWORD PTR [rbp-0x15b0],r8d
  669480:	49 2b f5             	sub    rsi,r13
  669483:	41 d1 e8             	shr    r8d,1
  669486:	48 f7 de             	neg    rsi
  669489:	44 89 85 20 ea ff ff 	mov    DWORD PTR [rbp-0x15e0],r8d
  669490:	4c 89 85 28 ea ff ff 	mov    QWORD PTR [rbp-0x15d8],r8
  669497:	4d 8d 04 09          	lea    r8,[r9+rcx*1]
  66949b:	44 89 9d 40 ea ff ff 	mov    DWORD PTR [rbp-0x15c0],r11d
  6694a2:	49 03 f0             	add    rsi,r8
  6694a5:	4c 8b 9d a0 e9 ff ff 	mov    r11,QWORD PTR [rbp-0x1660]
  6694ac:	4d 2b c2             	sub    r8,r10
  6694af:	49 f7 da             	neg    r10
  6694b2:	48 89 8d c8 e2 ff ff 	mov    QWORD PTR [rbp-0x1d38],rcx
  6694b9:	4c 03 d1             	add    r10,rcx
  6694bc:	4c 89 d9             	mov    rcx,r11
  6694bf:	48 0f af ca          	imul   rcx,rdx
  6694c3:	48 89 85 58 ea ff ff 	mov    QWORD PTR [rbp-0x15a8],rax
  6694ca:	48 f7 d8             	neg    rax
  6694cd:	4c 03 e8             	add    r13,rax
  6694d0:	48 2b c1             	sub    rax,rcx
  6694d3:	49 2b ce             	sub    rcx,r14
  6694d6:	4d 03 d5             	add    r10,r13
  6694d9:	4c 2b e9             	sub    r13,rcx
  6694dc:	48 89 d1             	mov    rcx,rdx
  6694df:	4d 03 c5             	add    r8,r13
  6694e2:	48 f7 d9             	neg    rcx
  6694e5:	4c 8b a5 f8 ec ff ff 	mov    r12,QWORD PTR [rbp-0x1308]
  6694ec:	4c 8d 2c 06          	lea    r13,[rsi+rax*1]
  6694f0:	4d 03 ee             	add    r13,r14
  6694f3:	4c 03 f1             	add    r14,rcx
  6694f6:	49 03 c6             	add    rax,r14
  6694f9:	4c 03 c1             	add    r8,rcx
  6694fc:	48 03 f0             	add    rsi,rax
  6694ff:	48 89 f8             	mov    rax,rdi
  669502:	4c 8b b5 90 e9 ff ff 	mov    r14,QWORD PTR [rbp-0x1670]
  669509:	49 2b c4             	sub    rax,r12
  66950c:	4c 89 ad e8 e9 ff ff 	mov    QWORD PTR [rbp-0x1618],r13
  669513:	48 03 f1             	add    rsi,rcx
  669516:	4c 8b ad d0 ee ff ff 	mov    r13,QWORD PTR [rbp-0x1130]
  66951d:	4a 8d 0c dd 00 00 00 	lea    rcx,[r11*8+0x0]
  669524:	00 
  669525:	49 0f af c5          	imul   rax,r13
  669529:	48 89 b5 f0 e9 ff ff 	mov    QWORD PTR [rbp-0x1610],rsi
  669530:	4a 8d 34 f5 00 00 00 	lea    rsi,[r14*8+0x0]
  669537:	00 
  669538:	4c 8b b5 00 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1300]
  66953f:	48 f7 d9             	neg    rcx
  669542:	49 03 cf             	add    rcx,r15
  669545:	48 f7 de             	neg    rsi
  669548:	49 03 c9             	add    rcx,r9
  66954b:	49 03 ca             	add    rcx,r10
  66954e:	4e 8d 0c f5 00 00 00 	lea    r9,[r14*8+0x0]
  669555:	00 
  669556:	4d 2b f9             	sub    r15,r9
  669559:	49 03 f7             	add    rsi,r15
  66955c:	4c 8b bd 60 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13a0]
  669563:	49 03 f7             	add    rsi,r15
  669566:	48 03 b5 00 e1 ff ff 	add    rsi,QWORD PTR [rbp-0x1f00]
  66956d:	48 89 bd 00 ea ff ff 	mov    QWORD PTR [rbp-0x1600],rdi
  669574:	48 03 c6             	add    rax,rsi
  669577:	48 89 8d 80 e9 ff ff 	mov    QWORD PTR [rbp-0x1680],rcx
  66957e:	48 8b 8d e0 e9 ff ff 	mov    rcx,QWORD PTR [rbp-0x1620]
  669585:	48 8b b5 c8 e2 ff ff 	mov    rsi,QWORD PTR [rbp-0x1d38]
  66958c:	48 8b bd d8 e9 ff ff 	mov    rdi,QWORD PTR [rbp-0x1628]
  669593:	4c 89 85 d0 e9 ff ff 	mov    QWORD PTR [rbp-0x1630],r8
  66959a:	45 33 c0             	xor    r8d,r8d
  66959d:	48 83 fa 08          	cmp    rdx,0x8
  6695a1:	0f 85 19 01 00 00    	jne    6696c0 <gls_corstep_mod_mp_gls_corstep_tile_+0x1f50>
  6695a7:	44 8b 8d f8 e0 ff ff 	mov    r9d,DWORD PTR [rbp-0x1f08]
  6695ae:	4d 89 c3             	mov    r11,r8
  6695b1:	44 3b 8d f0 e0 ff ff 	cmp    r9d,DWORD PTR [rbp-0x1f10]
  6695b8:	0f 8c 32 02 00 00    	jl     6697f0 <gls_corstep_mod_mp_gls_corstep_tile_+0x2080>
  6695be:	4c 8b 8d 80 e9 ff ff 	mov    r9,QWORD PTR [rbp-0x1680]
  6695c5:	49 89 c2             	mov    r10,rax
  6695c8:	48 89 85 b0 e2 ff ff 	mov    QWORD PTR [rbp-0x1d50],rax
  6695cf:	48 89 95 10 ea ff ff 	mov    QWORD PTR [rbp-0x15f0],rdx
  6695d6:	48 89 8d e0 e9 ff ff 	mov    QWORD PTR [rbp-0x1620],rcx
  6695dd:	4c 03 c9             	add    r9,rcx
  6695e0:	48 89 bd d8 e9 ff ff 	mov    QWORD PTR [rbp-0x1628],rdi
  6695e7:	4c 89 bd 60 ec ff ff 	mov    QWORD PTR [rbp-0x13a0],r15
  6695ee:	8b bd 40 ea ff ff    	mov    edi,DWORD PTR [rbp-0x15c0]
  6695f4:	8b b5 18 ea ff ff    	mov    esi,DWORD PTR [rbp-0x15e8]
  6695fa:	48 8b 8d 08 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x15f8]
  669601:	48 8b 95 48 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x15b8]
  669608:	4c 8b a5 58 ea ff ff 	mov    r12,QWORD PTR [rbp-0x15a8]
  66960f:	48 8b 85 d0 ee ff ff 	mov    rax,QWORD PTR [rbp-0x1130]
  669616:	3b f7                	cmp    esi,edi
  669618:	7c 66                	jl     669680 <gls_corstep_mod_mp_gls_corstep_tile_+0x1f10>
  66961a:	48 83 f9 04          	cmp    rcx,0x4
  66961e:	0f 8c 4c b4 00 00    	jl     674a70 <gls_corstep_mod_mp_gls_corstep_tile_+0xd300>
  669624:	4c 8b bd 30 ea ff ff 	mov    r15,QWORD PTR [rbp-0x15d0]
  66962b:	45 33 ed             	xor    r13d,r13d
  66962e:	4d 89 d6             	mov    r14,r10
  669631:	4d 89 c8             	mov    r8,r9
  669634:	4c 89 f8             	mov    rax,r15
  669637:	c4 c1 7d 10 40 f8    	vmovupd ymm0,YMMWORD PTR [r8-0x8]
  66963d:	49 83 c5 04          	add    r13,0x4
  669641:	c4 c1 7d 11 46 f0    	vmovupd YMMWORD PTR [r14-0x10],ymm0
  669647:	49 83 c6 20          	add    r14,0x20
  66964b:	49 83 c0 20          	add    r8,0x20
  66964f:	4c 3b e8             	cmp    r13,rax
  669652:	72 e3                	jb     669637 <gls_corstep_mod_mp_gls_corstep_tile_+0x1ec7>
  669654:	48 8b 85 d0 ee ff ff 	mov    rax,QWORD PTR [rbp-0x1130]
  66965b:	4c 3b f9             	cmp    r15,rcx
  66965e:	73 20                	jae    669680 <gls_corstep_mod_mp_gls_corstep_tile_+0x1f10>
  669660:	4f 8d 2c fa          	lea    r13,[r10+r15*8]
  669664:	4f 8d 04 f9          	lea    r8,[r9+r15*8]
  669668:	4d 8b 70 f8          	mov    r14,QWORD PTR [r8-0x8]
  66966c:	49 ff c7             	inc    r15
  66966f:	4d 89 75 f0          	mov    QWORD PTR [r13-0x10],r14
  669673:	49 83 c5 08          	add    r13,0x8
  669677:	49 83 c0 08          	add    r8,0x8
  66967b:	4c 3b f9             	cmp    r15,rcx
  66967e:	72 e8                	jb     669668 <gls_corstep_mod_mp_gls_corstep_tile_+0x1ef8>
  669680:	49 ff c3             	inc    r11
  669683:	4c 03 d0             	add    r10,rax
  669686:	4d 03 cc             	add    r9,r12
  669689:	4c 3b da             	cmp    r11,rdx
  66968c:	72 88                	jb     669616 <gls_corstep_mod_mp_gls_corstep_tile_+0x1ea6>
  66968e:	48 8b 85 b0 e2 ff ff 	mov    rax,QWORD PTR [rbp-0x1d50]
  669695:	45 33 c0             	xor    r8d,r8d
  669698:	48 8b 95 10 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x15f0]
  66969f:	48 8b 8d e0 e9 ff ff 	mov    rcx,QWORD PTR [rbp-0x1620]
  6696a6:	48 8b b5 c8 e2 ff ff 	mov    rsi,QWORD PTR [rbp-0x1d38]
  6696ad:	48 8b bd d8 e9 ff ff 	mov    rdi,QWORD PTR [rbp-0x1628]
  6696b4:	4c 8b bd 60 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13a0]
  6696bb:	e9 30 01 00 00       	jmp    6697f0 <gls_corstep_mod_mp_gls_corstep_tile_+0x2080>
  6696c0:	44 8b 8d f8 e0 ff ff 	mov    r9d,DWORD PTR [rbp-0x1f08]
  6696c7:	4d 89 c3             	mov    r11,r8
  6696ca:	4d 89 da             	mov    r10,r11
  6696cd:	44 3b 8d f0 e0 ff ff 	cmp    r9d,DWORD PTR [rbp-0x1f10]
  6696d4:	0f 8c 16 01 00 00    	jl     6697f0 <gls_corstep_mod_mp_gls_corstep_tile_+0x2080>
  6696da:	4c 8b b5 f0 e9 ff ff 	mov    r14,QWORD PTR [rbp-0x1610]
  6696e1:	49 89 c1             	mov    r9,rax
  6696e4:	4c 8b ad e8 e9 ff ff 	mov    r13,QWORD PTR [rbp-0x1618]
  6696eb:	4c 8b a5 d0 e9 ff ff 	mov    r12,QWORD PTR [rbp-0x1630]
  6696f2:	4c 89 bd 60 ec ff ff 	mov    QWORD PTR [rbp-0x13a0],r15
  6696f9:	4c 03 f1             	add    r14,rcx
  6696fc:	4c 89 b5 38 ea ff ff 	mov    QWORD PTR [rbp-0x15c8],r14
  669703:	4c 03 e9             	add    r13,rcx
  669706:	48 89 85 b0 e2 ff ff 	mov    QWORD PTR [rbp-0x1d50],rax
  66970d:	4c 03 e1             	add    r12,rcx
  669710:	48 89 8d e0 e9 ff ff 	mov    QWORD PTR [rbp-0x1620],rcx
  669717:	48 89 bd d8 e9 ff ff 	mov    QWORD PTR [rbp-0x1628],rdi
  66971e:	44 8b b5 20 ea ff ff 	mov    r14d,DWORD PTR [rbp-0x15e0]
  669725:	44 8b bd 18 ea ff ff 	mov    r15d,DWORD PTR [rbp-0x15e8]
  66972c:	44 3b bd 40 ea ff ff 	cmp    r15d,DWORD PTR [rbp-0x15c0]
  669733:	7c 77                	jl     6697ac <gls_corstep_mod_mp_gls_corstep_tile_+0x203c>
  669735:	b8 01 00 00 00       	mov    eax,0x1
  66973a:	33 ff                	xor    edi,edi
  66973c:	33 c9                	xor    ecx,ecx
  66973e:	45 85 f6             	test   r14d,r14d
  669741:	74 44                	je     669787 <gls_corstep_mod_mp_gls_corstep_tile_+0x2017>
  669743:	4c 8b b5 28 ea ff ff 	mov    r14,QWORD PTR [rbp-0x15d8]
  66974a:	4b 8d 44 15 00       	lea    rax,[r13+r10*1+0x0]
  66974f:	4c 89 ce             	mov    rsi,r9
  669752:	4f 8d 04 14          	lea    r8,[r12+r10*1]
  669756:	4d 8b 3c 48          	mov    r15,QWORD PTR [r8+rcx*2]
  66975a:	48 ff c7             	inc    rdi
  66975d:	4c 89 7e f0          	mov    QWORD PTR [rsi-0x10],r15
  669761:	4c 8b 3c 48          	mov    r15,QWORD PTR [rax+rcx*2]
  669765:	48 03 ca             	add    rcx,rdx
  669768:	4c 89 7e f8          	mov    QWORD PTR [rsi-0x8],r15
  66976c:	48 83 c6 10          	add    rsi,0x10
  669770:	49 3b fe             	cmp    rdi,r14
  669773:	72 e1                	jb     669756 <gls_corstep_mod_mp_gls_corstep_tile_+0x1fe6>
  669775:	44 8b b5 20 ea ff ff 	mov    r14d,DWORD PTR [rbp-0x15e0]
  66977c:	8d 44 3f 01          	lea    eax,[rdi+rdi*1+0x1]
  669780:	44 8b bd 18 ea ff ff 	mov    r15d,DWORD PTR [rbp-0x15e8]
  669787:	8d 48 ff             	lea    ecx,[rax-0x1]
  66978a:	3b 8d 50 ea ff ff    	cmp    ecx,DWORD PTR [rbp-0x15b0]
  669790:	73 1a                	jae    6697ac <gls_corstep_mod_mp_gls_corstep_tile_+0x203c>
  669792:	48 63 c0             	movsxd rax,eax
  669795:	48 89 d1             	mov    rcx,rdx
  669798:	48 0f af c8          	imul   rcx,rax
  66979c:	48 03 8d 38 ea ff ff 	add    rcx,QWORD PTR [rbp-0x15c8]
  6697a3:	4a 8b 34 11          	mov    rsi,QWORD PTR [rcx+r10*1]
  6697a7:	49 89 74 c1 e8       	mov    QWORD PTR [r9+rax*8-0x18],rsi
  6697ac:	49 ff c3             	inc    r11
  6697af:	4c 03 8d d0 ee ff ff 	add    r9,QWORD PTR [rbp-0x1130]
  6697b6:	4c 03 95 58 ea ff ff 	add    r10,QWORD PTR [rbp-0x15a8]
  6697bd:	4c 3b 9d 48 ea ff ff 	cmp    r11,QWORD PTR [rbp-0x15b8]
  6697c4:	0f 82 62 ff ff ff    	jb     66972c <gls_corstep_mod_mp_gls_corstep_tile_+0x1fbc>
  6697ca:	48 8b 85 b0 e2 ff ff 	mov    rax,QWORD PTR [rbp-0x1d50]
  6697d1:	45 33 c0             	xor    r8d,r8d
  6697d4:	48 8b 8d e0 e9 ff ff 	mov    rcx,QWORD PTR [rbp-0x1620]
  6697db:	48 8b b5 c8 e2 ff ff 	mov    rsi,QWORD PTR [rbp-0x1d38]
  6697e2:	48 8b bd d8 e9 ff ff 	mov    rdi,QWORD PTR [rbp-0x1628]
  6697e9:	4c 8b bd 60 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13a0]
  6697f0:	48 ff c7             	inc    rdi
  6697f3:	49 03 c7             	add    rax,r15
  6697f6:	48 03 ce             	add    rcx,rsi
  6697f9:	48 3b bd 58 ec ff ff 	cmp    rdi,QWORD PTR [rbp-0x13a8]
  669800:	0f 82 97 fd ff ff    	jb     66959d <gls_corstep_mod_mp_gls_corstep_tile_+0x1e2d>
  669806:	8b 85 c0 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1340]
  66980c:	4c 8b 05 2d 1c 45 00 	mov    r8,QWORD PTR [rip+0x451c2d]        # abb440 <mod_param_mp_domain_>
  669813:	44 8b 95 c8 ee ff ff 	mov    r10d,DWORD PTR [rbp-0x1138]
  66981a:	4c 89 85 10 ec ff ff 	mov    QWORD PTR [rbp-0x13f0],r8
  669821:	8d 48 ff             	lea    ecx,[rax-0x1]
  669824:	4c 8b 05 95 1a 45 00 	mov    r8,QWORD PTR [rip+0x451a95]        # abb2c0 <mod_param_mp_lm_>
  66982b:	83 f9 01             	cmp    ecx,0x1
  66982e:	4c 89 85 18 ea ff ff 	mov    QWORD PTR [rbp-0x15e8],r8
  669835:	41 b8 01 00 00 00    	mov    r8d,0x1
  66983b:	48 8b 15 de 1a 45 00 	mov    rdx,QWORD PTR [rip+0x451ade]        # abb320 <mod_param_mp_mm_>
  669842:	45 89 c3             	mov    r11d,r8d
  669845:	48 89 95 10 ea ff ff 	mov    QWORD PTR [rbp-0x15f0],rdx
  66984c:	41 8d 52 ff          	lea    edx,[r10-0x1]
  669850:	44 0f 4f d9          	cmovg  r11d,ecx
  669854:	83 fa 01             	cmp    edx,0x1
  669857:	4c 8b ad d0 ee ff ff 	mov    r13,QWORD PTR [rbp-0x1130]
  66985e:	89 95 48 ed ff ff    	mov    DWORD PTR [rbp-0x12b8],edx
  669864:	44 0f 4f c2          	cmovg  r8d,edx
  669868:	4c 89 ea             	mov    rdx,r13
  66986b:	4c 8b a5 f8 ec ff ff 	mov    r12,QWORD PTR [rbp-0x1308]
  669872:	49 0f af d4          	imul   rdx,r12
  669876:	c5 fd 10 0d e2 0a 1e 	vmovupd ymm1,YMMWORD PTR [rip+0x1e0ae2]        # 84a360 <var$630.126.450+0x3c0>
  66987d:	00 
  66987e:	c5 fb 10 05 22 2c 1e 	vmovsd xmm0,QWORD PTR [rip+0x1e2c22]        # 84c4a8 <__STRLITPACK_0.112+0x398>
  669885:	00 
  669886:	89 8d 68 ec ff ff    	mov    DWORD PTR [rbp-0x1398],ecx
  66988c:	48 8b 8d 90 e9 ff ff 	mov    rcx,QWORD PTR [rbp-0x1670]
  669893:	48 89 c8             	mov    rax,rcx
  669896:	48 c1 e0 04          	shl    rax,0x4
  66989a:	48 89 85 c8 e2 ff ff 	mov    QWORD PTR [rbp-0x1d38],rax
  6698a1:	48 c1 e1 03          	shl    rcx,0x3
  6698a5:	8b 85 b8 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1348]
  6698ab:	48 f7 d9             	neg    rcx
  6698ae:	44 89 9d 90 ea ff ff 	mov    DWORD PTR [rbp-0x1570],r11d
  6698b5:	49 89 cc             	mov    r12,rcx
  6698b8:	44 89 85 88 ea ff ff 	mov    DWORD PTR [rbp-0x1578],r8d
  6698bf:	49 89 d0             	mov    r8,rdx
  6698c2:	48 8b bd 00 ea ff ff 	mov    rdi,QWORD PTR [rbp-0x1600]
  6698c9:	44 8d 58 01          	lea    r11d,[rax+0x1]
  6698cd:	44 89 9d 08 ea ff ff 	mov    DWORD PTR [rbp-0x15f8],r11d
  6698d4:	4c 2b e2             	sub    r12,rdx
  6698d7:	4c 8b 9d 38 ed ff ff 	mov    r11,QWORD PTR [rbp-0x12c8]
  6698de:	4d 2b c7             	sub    r8,r15
  6698e1:	4c 89 a5 f0 e0 ff ff 	mov    QWORD PTR [rbp-0x1f10],r12
  6698e8:	4c 8d 67 ff          	lea    r12,[rdi-0x1]
  6698ec:	4c 89 85 f0 e9 ff ff 	mov    QWORD PTR [rbp-0x1610],r8
  6698f3:	4d 89 e8             	mov    r8,r13
  6698f6:	4d 0f af c3          	imul   r8,r11
  6698fa:	4d 0f af e5          	imul   r12,r13
  6698fe:	48 8b b5 b8 e2 ff ff 	mov    rsi,QWORD PTR [rbp-0x1d48]
  669905:	49 8d 43 01          	lea    rax,[r11+0x1]
  669909:	49 0f af c5          	imul   rax,r13
  66990d:	4c 2b df             	sub    r11,rdi
  669910:	49 89 c2             	mov    r10,rax
  669913:	49 0f af fd          	imul   rdi,r13
  669917:	4c 2b d2             	sub    r10,rdx
  66991a:	4d 89 e5             	mov    r13,r12
  66991d:	4c 89 95 98 ea ff ff 	mov    QWORD PTR [rbp-0x1568],r10
  669924:	4d 8d 53 02          	lea    r10,[r11+0x2]
  669928:	4c 89 95 40 ed ff ff 	mov    QWORD PTR [rbp-0x12c0],r10
  66992f:	49 89 fa             	mov    r10,rdi
  669932:	48 89 95 e8 e9 ff ff 	mov    QWORD PTR [rbp-0x1618],rdx
  669939:	4c 2b ea             	sub    r13,rdx
  66993c:	48 29 95 f8 e9 ff ff 	sub    QWORD PTR [rbp-0x1608],rdx
  669943:	4c 2b d2             	sub    r10,rdx
  669946:	48 89 f2             	mov    rdx,rsi
  669949:	49 ff c3             	inc    r11
  66994c:	4c 8b 8d c0 e2 ff ff 	mov    r9,QWORD PTR [rbp-0x1d40]
  669953:	49 2b d1             	sub    rdx,r9
  669956:	4c 89 9d 38 ed ff ff 	mov    QWORD PTR [rbp-0x12c8],r11
  66995d:	4c 8b b5 00 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1300]
  669964:	48 c1 e6 03          	shl    rsi,0x3
  669968:	49 c1 e6 03          	shl    r14,0x3
  66996c:	49 c1 e1 03          	shl    r9,0x3
  669970:	4c 8d 5a 02          	lea    r11,[rdx+0x2]
  669974:	48 ff c2             	inc    rdx
  669977:	49 2b f6             	sub    rsi,r14
  66997a:	48 89 95 28 ed ff ff 	mov    QWORD PTR [rbp-0x12d8],rdx
  669981:	4d 2b ce             	sub    r9,r14
  669984:	83 e2 fc             	and    edx,0xfffffffc
  669987:	49 f7 de             	neg    r14
  66998a:	48 63 d2             	movsxd rdx,edx
  66998d:	49 03 c9             	add    rcx,r9
  669990:	48 89 95 98 ec ff ff 	mov    QWORD PTR [rbp-0x1368],rdx
  669997:	49 03 ca             	add    rcx,r10
  66999a:	48 8b 95 78 e1 ff ff 	mov    rdx,QWORD PTR [rbp-0x1e88]
  6699a1:	4d 03 d1             	add    r10,r9
  6699a4:	4c 03 f2             	add    r14,rdx
  6699a7:	4c 89 a5 b0 e2 ff ff 	mov    QWORD PTR [rbp-0x1d50],r12
  6699ae:	48 89 85 f8 e0 ff ff 	mov    QWORD PTR [rbp-0x1f08],rax
  6699b5:	48 89 b5 b8 e2 ff ff 	mov    QWORD PTR [rbp-0x1d48],rsi
  6699bc:	4c 89 9d 30 ed ff ff 	mov    QWORD PTR [rbp-0x12d0],r11
  6699c3:	4d 03 e6             	add    r12,r14
  6699c6:	4c 89 a5 00 ec ff ff 	mov    QWORD PTR [rbp-0x1400],r12
  6699cd:	4d 8d 24 3e          	lea    r12,[r14+rdi*1]
  6699d1:	48 c7 85 70 ec ff ff 	mov    QWORD PTR [rbp-0x1390],0x0
  6699d8:	00 00 00 00 
  6699dc:	49 03 c6             	add    rax,r14
  6699df:	4d 03 f0             	add    r14,r8
  6699e2:	41 83 e3 fc          	and    r11d,0xfffffffc
  6699e6:	4c 89 b5 08 ec ff ff 	mov    QWORD PTR [rbp-0x13f8],r14
  6699ed:	4e 8d 34 2e          	lea    r14,[rsi+r13*1]
  6699f1:	4d 03 e9             	add    r13,r9
  6699f4:	4d 03 f7             	add    r14,r15
  6699f7:	4d 03 ef             	add    r13,r15
  6699fa:	4c 03 f2             	add    r14,rdx
  6699fd:	4c 03 ea             	add    r13,rdx
  669a00:	4c 89 ad a0 ea ff ff 	mov    QWORD PTR [rbp-0x1560],r13
  669a07:	4e 8d 2c 06          	lea    r13,[rsi+r8*1]
  669a0b:	48 89 85 c0 eb ff ff 	mov    QWORD PTR [rbp-0x1440],rax
  669a12:	48 8b 85 f0 e9 ff ff 	mov    rax,QWORD PTR [rbp-0x1610]
  669a19:	4c 2b e8             	sub    r13,rax
  669a1c:	4c 03 ea             	add    r13,rdx
  669a1f:	4c 89 ad 38 ea ff ff 	mov    QWORD PTR [rbp-0x15c8],r13
  669a26:	4c 8b ad 98 ea ff ff 	mov    r13,QWORD PTR [rbp-0x1568]
  669a2d:	4c 89 b5 40 ea ff ff 	mov    QWORD PTR [rbp-0x15c0],r14
  669a34:	4d 63 db             	movsxd r11,r11d
  669a37:	4c 89 9d d0 ec ff ff 	mov    QWORD PTR [rbp-0x1330],r11
  669a3e:	4e 8d 34 2e          	lea    r14,[rsi+r13*1]
  669a42:	4d 03 e9             	add    r13,r9
  669a45:	48 03 f7             	add    rsi,rdi
  669a48:	4d 03 ef             	add    r13,r15
  669a4b:	48 2b f0             	sub    rsi,rax
  669a4e:	4c 03 ea             	add    r13,rdx
  669a51:	48 03 f2             	add    rsi,rdx
  669a54:	4c 89 ad 98 ea ff ff 	mov    QWORD PTR [rbp-0x1568],r13
  669a5b:	4f 8d 2c 01          	lea    r13,[r9+r8*1]
  669a5f:	48 89 b5 28 ea ff ff 	mov    QWORD PTR [rbp-0x15d8],rsi
  669a66:	4c 2b e8             	sub    r13,rax
  669a69:	48 8b b5 00 e1 ff ff 	mov    rsi,QWORD PTR [rbp-0x1f00]
  669a70:	4d 03 f7             	add    r14,r15
  669a73:	4c 03 ea             	add    r13,rdx
  669a76:	4c 03 f2             	add    r14,rdx
  669a79:	4c 89 ad 20 ea ff ff 	mov    QWORD PTR [rbp-0x15e0],r13
  669a80:	4d 8d 2c 0f          	lea    r13,[r15+rcx*1]
  669a84:	4c 89 b5 30 ea ff ff 	mov    QWORD PTR [rbp-0x15d0],r14
  669a8b:	4e 8d 34 2e          	lea    r14,[rsi+r13*1]
  669a8f:	4c 89 b5 28 ec ff ff 	mov    QWORD PTR [rbp-0x13d8],r14
  669a96:	4c 8d 34 0a          	lea    r14,[rdx+rcx*1]
  669a9a:	48 03 ce             	add    rcx,rsi
  669a9d:	4c 03 ea             	add    r13,rdx
  669aa0:	48 89 8d d8 ec ff ff 	mov    QWORD PTR [rbp-0x1328],rcx
  669aa7:	49 8d 0c 39          	lea    rcx,[r9+rdi*1]
  669aab:	4c 89 b5 90 ec ff ff 	mov    QWORD PTR [rbp-0x1370],r14
  669ab2:	49 89 ce             	mov    r14,rcx
  669ab5:	4c 2b f0             	sub    r14,rax
  669ab8:	48 8b 85 e8 e9 ff ff 	mov    rax,QWORD PTR [rbp-0x1618]
  669abf:	48 2b c8             	sub    rcx,rax
  669ac2:	4c 89 ad 30 ec ff ff 	mov    QWORD PTR [rbp-0x13d0],r13
  669ac9:	4c 89 bd 60 ec ff ff 	mov    QWORD PTR [rbp-0x13a0],r15
  669ad0:	4e 8d 2c 32          	lea    r13,[rdx+r14*1]
  669ad4:	4c 03 f6             	add    r14,rsi
  669ad7:	4c 89 b5 38 ec ff ff 	mov    QWORD PTR [rbp-0x13c8],r14
  669ade:	4c 8d 34 0a          	lea    r14,[rdx+rcx*1]
  669ae2:	48 03 ce             	add    rcx,rsi
  669ae5:	4c 89 ad 20 ec ff ff 	mov    QWORD PTR [rbp-0x13e0],r13
  669aec:	4e 8d 2c 12          	lea    r13,[rdx+r10*1]
  669af0:	48 89 8d a0 ec ff ff 	mov    QWORD PTR [rbp-0x1360],rcx
  669af7:	4a 8d 0c 16          	lea    rcx,[rsi+r10*1]
  669afb:	4d 03 d7             	add    r10,r15
  669afe:	49 03 f2             	add    rsi,r10
  669b01:	4c 03 d2             	add    r10,rdx
  669b04:	48 89 b5 40 ec ff ff 	mov    QWORD PTR [rbp-0x13c0],rsi
  669b0b:	48 8b b5 f0 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x1310]
  669b12:	4c 89 95 48 ec ff ff 	mov    QWORD PTR [rbp-0x13b8],r10
  669b19:	49 89 f2             	mov    r10,rsi
  669b1c:	49 c1 e2 05          	shl    r10,0x5
  669b20:	48 c1 e6 0b          	shl    rsi,0xb
  669b24:	49 2b f2             	sub    rsi,r10
  669b27:	4c 89 ad 78 ec ff ff 	mov    QWORD PTR [rbp-0x1388],r13
  669b2e:	48 89 b5 18 ec ff ff 	mov    QWORD PTR [rbp-0x13e8],rsi
  669b35:	44 8b ad c0 ee ff ff 	mov    r13d,DWORD PTR [rbp-0x1140]
  669b3c:	48 63 b5 88 ea ff ff 	movsxd rsi,DWORD PTR [rbp-0x1578]
  669b43:	4c 8b 95 00 ec ff ff 	mov    r10,QWORD PTR [rbp-0x1400]
  669b4a:	48 89 8d 80 ec ff ff 	mov    QWORD PTR [rbp-0x1380],rcx
  669b51:	41 8d 4d 01          	lea    ecx,[r13+0x1]
  669b55:	89 8d 48 ea ff ff    	mov    DWORD PTR [rbp-0x15b8],ecx
  669b5b:	4c 8d 2c f5 00 00 00 	lea    r13,[rsi*8+0x0]
  669b62:	00 
  669b63:	4c 89 ad 50 ea ff ff 	mov    QWORD PTR [rbp-0x15b0],r13
  669b6a:	4c 89 d1             	mov    rcx,r10
  669b6d:	4d 89 e5             	mov    r13,r12
  669b70:	48 2b c8             	sub    rcx,rax
  669b73:	4c 2b e8             	sub    r13,rax
  669b76:	49 03 cf             	add    rcx,r15
  669b79:	4d 03 ef             	add    r13,r15
  669b7c:	4c 89 b5 88 ec ff ff 	mov    QWORD PTR [rbp-0x1378],r14
  669b83:	48 89 b5 b0 ea ff ff 	mov    QWORD PTR [rbp-0x1550],rsi
  669b8a:	4c 8d 34 f1          	lea    r14,[rcx+rsi*8]
  669b8e:	4c 89 b5 58 ea ff ff 	mov    QWORD PTR [rbp-0x15a8],r14
  669b95:	4c 8b b5 b0 e2 ff ff 	mov    r14,QWORD PTR [rbp-0x1d50]
  669b9c:	49 8d 4c f5 00       	lea    rcx,[r13+rsi*8+0x0]
  669ba1:	48 89 8d 60 ea ff ff 	mov    QWORD PTR [rbp-0x15a0],rcx
  669ba8:	48 8b 8d f8 e0 ff ff 	mov    rcx,QWORD PTR [rbp-0x1f08]
  669baf:	4e 8d 1c 32          	lea    r11,[rdx+r14*1]
  669bb3:	4c 2b df             	sub    r11,rdi
  669bb6:	48 03 fa             	add    rdi,rdx
  669bb9:	4c 2b da             	sub    r11,rdx
  669bbc:	4c 8d 2c 0a          	lea    r13,[rdx+rcx*1]
  669bc0:	4d 2b e8             	sub    r13,r8
  669bc3:	4c 03 c2             	add    r8,rdx
  669bc6:	4c 2b ea             	sub    r13,rdx
  669bc9:	4c 2b c1             	sub    r8,rcx
  669bcc:	4c 89 ad 70 ea ff ff 	mov    QWORD PTR [rbp-0x1590],r13
  669bd3:	49 2b fe             	sub    rdi,r14
  669bd6:	4c 8b ad c0 eb ff ff 	mov    r13,QWORD PTR [rbp-0x1440]
  669bdd:	48 2b fa             	sub    rdi,rdx
  669be0:	4c 89 9d 68 ea ff ff 	mov    QWORD PTR [rbp-0x1598],r11
  669be7:	4d 89 eb             	mov    r11,r13
  669bea:	4c 2b d8             	sub    r11,rax
  669bed:	4c 2b c2             	sub    r8,rdx
  669bf0:	4d 03 df             	add    r11,r15
  669bf3:	48 8b 8d 08 ec ff ff 	mov    rcx,QWORD PTR [rbp-0x13f8]
  669bfa:	4c 89 85 a8 ea ff ff 	mov    QWORD PTR [rbp-0x1558],r8
  669c01:	48 89 bd 00 ea ff ff 	mov    QWORD PTR [rbp-0x1600],rdi
  669c08:	4d 8d 34 f3          	lea    r14,[r11+rsi*8]
  669c0c:	49 89 cb             	mov    r11,rcx
  669c0f:	4c 2b d8             	sub    r11,rax
  669c12:	4d 03 df             	add    r11,r15
  669c15:	4c 89 b5 78 ea ff ff 	mov    QWORD PTR [rbp-0x1588],r14
  669c1c:	4d 8d 34 f3          	lea    r14,[r11+rsi*8]
  669c20:	4c 63 9d 90 ea ff ff 	movsxd r11,DWORD PTR [rbp-0x1570]
  669c27:	4c 89 b5 80 ea ff ff 	mov    QWORD PTR [rbp-0x1580],r14
  669c2e:	49 8d 34 f7          	lea    rsi,[r15+rsi*8]
  669c32:	48 f7 de             	neg    rsi
  669c35:	48 03 f0             	add    rsi,rax
  669c38:	4c 2b ee             	sub    r13,rsi
  669c3b:	4c 2b e6             	sub    r12,rsi
  669c3e:	4c 89 ad c0 eb ff ff 	mov    QWORD PTR [rbp-0x1440],r13
  669c45:	4c 2b d6             	sub    r10,rsi
  669c48:	4c 8b ad d0 ee ff ff 	mov    r13,QWORD PTR [rbp-0x1130]
  669c4f:	48 2b ce             	sub    rcx,rsi
  669c52:	4d 0f af dd          	imul   r11,r13
  669c56:	48 8b b5 f8 e9 ff ff 	mov    rsi,QWORD PTR [rbp-0x1608]
  669c5d:	4c 89 a5 c8 eb ff ff 	mov    QWORD PTR [rbp-0x1438],r12
  669c64:	4d 89 cc             	mov    r12,r9
  669c67:	4c 2b e0             	sub    r12,rax
  669c6a:	48 f7 d8             	neg    rax
  669c6d:	4d 03 e7             	add    r12,r15
  669c70:	4c 89 95 00 ec ff ff 	mov    QWORD PTR [rbp-0x1400],r10
  669c77:	4e 8d 14 0e          	lea    r10,[rsi+r9*1]
  669c7b:	4d 03 e3             	add    r12,r11
  669c7e:	4d 03 d7             	add    r10,r15
  669c81:	4c 03 e2             	add    r12,rdx
  669c84:	4d 03 d3             	add    r10,r11
  669c87:	4c 89 a5 d8 e9 ff ff 	mov    QWORD PTR [rbp-0x1628],r12
  669c8e:	4c 03 d2             	add    r10,rdx
  669c91:	4c 8b a5 b8 e2 ff ff 	mov    r12,QWORD PTR [rbp-0x1d48]
  669c98:	49 03 f4             	add    rsi,r12
  669c9b:	4c 89 95 d0 e9 ff ff 	mov    QWORD PTR [rbp-0x1630],r10
  669ca2:	49 03 f7             	add    rsi,r15
  669ca5:	4c 8b 95 f0 e0 ff ff 	mov    r10,QWORD PTR [rbp-0x1f10]
  669cac:	49 03 f3             	add    rsi,r11
  669caf:	48 03 f2             	add    rsi,rdx
  669cb2:	49 03 c4             	add    rax,r12
  669cb5:	48 89 b5 f8 e9 ff ff 	mov    QWORD PTR [rbp-0x1608],rsi
  669cbc:	49 03 c7             	add    rax,r15
  669cbf:	48 8b b5 f0 e9 ff ff 	mov    rsi,QWORD PTR [rbp-0x1610]
  669cc6:	4f 8d 34 0a          	lea    r14,[r10+r9*1]
  669cca:	4c 2b ce             	sub    r9,rsi
  669ccd:	48 f7 de             	neg    rsi
  669cd0:	49 03 f4             	add    rsi,r12
  669cd3:	4d 03 e2             	add    r12,r10
  669cd6:	4d 03 f7             	add    r14,r15
  669cd9:	4d 03 e7             	add    r12,r15
  669cdc:	49 03 c3             	add    rax,r11
  669cdf:	4d 03 f3             	add    r14,r11
  669ce2:	4d 03 e3             	add    r12,r11
  669ce5:	4c 03 da             	add    r11,rdx
  669ce8:	49 03 f3             	add    rsi,r11
  669ceb:	4d 03 cb             	add    r9,r11
  669cee:	4c 8b 9d 70 ec ff ff 	mov    r11,QWORD PTR [rbp-0x1390]
  669cf5:	48 03 c2             	add    rax,rdx
  669cf8:	4c 03 f2             	add    r14,rdx
  669cfb:	49 03 d4             	add    rdx,r12
  669cfe:	4d 89 da             	mov    r10,r11
  669d01:	4c 89 b5 80 e9 ff ff 	mov    QWORD PTR [rbp-0x1680],r14
  669d08:	4d 89 d4             	mov    r12,r10
  669d0b:	4c 8b bd 18 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13e8]
  669d12:	4d 89 de             	mov    r14,r11
  669d15:	4c 8b ad 10 ec ff ff 	mov    r13,QWORD PTR [rbp-0x13f0]
  669d1c:	48 89 95 e0 e9 ff ff 	mov    QWORD PTR [rbp-0x1620],rdx
  669d23:	48 89 85 e8 e9 ff ff 	mov    QWORD PTR [rbp-0x1618],rax
  669d2a:	4c 89 8d c0 e2 ff ff 	mov    QWORD PTR [rbp-0x1d40],r9
  669d31:	48 89 b5 f0 e9 ff ff 	mov    QWORD PTR [rbp-0x1610],rsi
  669d38:	48 89 8d 08 ec ff ff 	mov    QWORD PTR [rbp-0x13f8],rcx
  669d3f:	4b 8b 94 3d a8 f8 ff 	mov    rdx,QWORD PTR [r13+r15*1-0x758]
  669d46:	ff 
  669d47:	48 f7 da             	neg    rdx
  669d4a:	48 03 95 c8 ec ff ff 	add    rdx,QWORD PTR [rbp-0x1338]
  669d51:	4b 0f af 94 3d a0 f8 	imul   rdx,QWORD PTR [r13+r15*1-0x760]
  669d58:	ff ff 
  669d5a:	4b 8b 84 3d 68 f8 ff 	mov    rax,QWORD PTR [r13+r15*1-0x798]
  669d61:	ff 
  669d62:	f6 04 10 01          	test   BYTE PTR [rax+rdx*1],0x1
  669d66:	0f 84 ae 00 00 00    	je     669e1a <gls_corstep_mod_mp_gls_corstep_tile_+0x26aa>
  669d6c:	48 8b 8d 10 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x15f0]
  669d73:	48 8b 85 f0 ec ff ff 	mov    rax,QWORD PTR [rbp-0x1310]
  669d7a:	8b 95 08 ea ff ff    	mov    edx,DWORD PTR [rbp-0x15f8]
  669d80:	8b 4c 81 fc          	mov    ecx,DWORD PTR [rcx+rax*4-0x4]
  669d84:	3b ca                	cmp    ecx,edx
  669d86:	0f 4d ca             	cmovge ecx,edx
  669d89:	3b 8d 90 ea ff ff    	cmp    ecx,DWORD PTR [rbp-0x1570]
  669d8f:	0f 8c 85 00 00 00    	jl     669e1a <gls_corstep_mod_mp_gls_corstep_tile_+0x26aa>
  669d95:	2b 8d 90 ea ff ff    	sub    ecx,DWORD PTR [rbp-0x1570]
  669d9b:	b8 01 00 00 00       	mov    eax,0x1
  669da0:	ff c1                	inc    ecx
  669da2:	89 c6                	mov    esi,eax
  669da4:	89 c8                	mov    eax,ecx
  669da6:	33 d2                	xor    edx,edx
  669da8:	45 33 c9             	xor    r9d,r9d
  669dab:	d1 e8                	shr    eax,1
  669dad:	74 48                	je     669df7 <gls_corstep_mod_mp_gls_corstep_tile_+0x2687>
  669daf:	4c 8b 85 d8 e9 ff ff 	mov    r8,QWORD PTR [rbp-0x1628]
  669db6:	48 8b bd d0 e9 ff ff 	mov    rdi,QWORD PTR [rbp-0x1630]
  669dbd:	48 8b b5 c0 e2 ff ff 	mov    rsi,QWORD PTR [rbp-0x1d40]
  669dc4:	4c 8b 95 c8 e2 ff ff 	mov    r10,QWORD PTR [rbp-0x1d38]
  669dcb:	4d 03 c6             	add    r8,r14
  669dce:	49 03 fe             	add    rdi,r14
  669dd1:	49 03 f6             	add    rsi,r14
  669dd4:	4d 8b 1c 31          	mov    r11,QWORD PTR [r9+rsi*1]
  669dd8:	48 ff c2             	inc    rdx
  669ddb:	4f 89 5c 01 f8       	mov    QWORD PTR [r9+r8*1-0x8],r11
  669de0:	4d 8b 5c 39 08       	mov    r11,QWORD PTR [r9+rdi*1+0x8]
  669de5:	4d 89 1c 39          	mov    QWORD PTR [r9+rdi*1],r11
  669de9:	4f 8d 4c 11 10       	lea    r9,[r9+r10*1+0x10]
  669dee:	48 3b d0             	cmp    rdx,rax
  669df1:	72 e1                	jb     669dd4 <gls_corstep_mod_mp_gls_corstep_tile_+0x2664>
  669df3:	8d 74 12 01          	lea    esi,[rdx+rdx*1+0x1]
  669df7:	8d 56 ff             	lea    edx,[rsi-0x1]
  669dfa:	3b d1                	cmp    edx,ecx
  669dfc:	73 1c                	jae    669e1a <gls_corstep_mod_mp_gls_corstep_tile_+0x26aa>
  669dfe:	48 63 f6             	movsxd rsi,esi
  669e01:	48 0f af b5 d0 ee ff 	imul   rsi,QWORD PTR [rbp-0x1130]
  669e08:	ff 
  669e09:	48 03 b5 80 e9 ff ff 	add    rsi,QWORD PTR [rbp-0x1680]
  669e10:	4a 8b 54 36 f8       	mov    rdx,QWORD PTR [rsi+r14*1-0x8]
  669e15:	4a 89 54 36 f0       	mov    QWORD PTR [rsi+r14*1-0x10],rdx
  669e1a:	4b 8b 94 3d 60 f8 ff 	mov    rdx,QWORD PTR [r13+r15*1-0x7a0]
  669e21:	ff 
  669e22:	48 f7 da             	neg    rdx
  669e25:	48 03 95 c8 ec ff ff 	add    rdx,QWORD PTR [rbp-0x1338]
  669e2c:	4b 0f af 94 3d 58 f8 	imul   rdx,QWORD PTR [r13+r15*1-0x7a8]
  669e33:	ff ff 
  669e35:	4b 8b 84 3d 20 f8 ff 	mov    rax,QWORD PTR [r13+r15*1-0x7e0]
  669e3c:	ff 
  669e3d:	f6 04 10 01          	test   BYTE PTR [rax+rdx*1],0x1
  669e41:	0f 84 b3 00 00 00    	je     669efa <gls_corstep_mod_mp_gls_corstep_tile_+0x278a>
  669e47:	48 8b 85 10 ea ff ff 	mov    rax,QWORD PTR [rbp-0x15f0]
  669e4e:	48 8b 95 f0 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1310]
  669e55:	8b 8d 08 ea ff ff    	mov    ecx,DWORD PTR [rbp-0x15f8]
  669e5b:	44 8b 54 90 fc       	mov    r10d,DWORD PTR [rax+rdx*4-0x4]
  669e60:	44 3b d1             	cmp    r10d,ecx
  669e63:	44 0f 4d d1          	cmovge r10d,ecx
  669e67:	44 3b 95 90 ea ff ff 	cmp    r10d,DWORD PTR [rbp-0x1570]
  669e6e:	0f 8c 86 00 00 00    	jl     669efa <gls_corstep_mod_mp_gls_corstep_tile_+0x278a>
  669e74:	44 2b 95 90 ea ff ff 	sub    r10d,DWORD PTR [rbp-0x1570]
  669e7b:	ba 01 00 00 00       	mov    edx,0x1
  669e80:	41 ff c2             	inc    r10d
  669e83:	33 c0                	xor    eax,eax
  669e85:	44 89 d6             	mov    esi,r10d
  669e88:	33 ff                	xor    edi,edi
  669e8a:	d1 ee                	shr    esi,1
  669e8c:	74 49                	je     669ed7 <gls_corstep_mod_mp_gls_corstep_tile_+0x2767>
  669e8e:	48 8b 8d f0 e9 ff ff 	mov    rcx,QWORD PTR [rbp-0x1610]
  669e95:	48 8b 95 e8 e9 ff ff 	mov    rdx,QWORD PTR [rbp-0x1618]
  669e9c:	4c 8b 85 f8 e9 ff ff 	mov    r8,QWORD PTR [rbp-0x1608]
  669ea3:	4c 8b 8d c8 e2 ff ff 	mov    r9,QWORD PTR [rbp-0x1d38]
  669eaa:	49 03 ce             	add    rcx,r14
  669ead:	49 03 d6             	add    rdx,r14
  669eb0:	4d 03 c6             	add    r8,r14
  669eb3:	4c 8b 1c 0f          	mov    r11,QWORD PTR [rdi+rcx*1]
  669eb7:	48 ff c0             	inc    rax
  669eba:	4c 89 5c 17 08       	mov    QWORD PTR [rdi+rdx*1+0x8],r11
  669ebf:	4e 8b 5c 07 08       	mov    r11,QWORD PTR [rdi+r8*1+0x8]
  669ec4:	4e 89 5c 07 10       	mov    QWORD PTR [rdi+r8*1+0x10],r11
  669ec9:	4a 8d 7c 0f 10       	lea    rdi,[rdi+r9*1+0x10]
  669ece:	48 3b c6             	cmp    rax,rsi
  669ed1:	72 e0                	jb     669eb3 <gls_corstep_mod_mp_gls_corstep_tile_+0x2743>
  669ed3:	8d 54 00 01          	lea    edx,[rax+rax*1+0x1]
  669ed7:	8d 42 ff             	lea    eax,[rdx-0x1]
  669eda:	41 3b c2             	cmp    eax,r10d
  669edd:	73 1b                	jae    669efa <gls_corstep_mod_mp_gls_corstep_tile_+0x278a>
  669edf:	48 63 d2             	movsxd rdx,edx
  669ee2:	48 0f af 95 d0 ee ff 	imul   rdx,QWORD PTR [rbp-0x1130]
  669ee9:	ff 
  669eea:	48 03 95 e0 e9 ff ff 	add    rdx,QWORD PTR [rbp-0x1620]
  669ef1:	4a 8b 44 32 f8       	mov    rax,QWORD PTR [rdx+r14*1-0x8]
  669ef6:	4a 89 04 32          	mov    QWORD PTR [rdx+r14*1],rax
  669efa:	4b 8b 94 3d 38 f9 ff 	mov    rdx,QWORD PTR [r13+r15*1-0x6c8]
  669f01:	ff 
  669f02:	48 f7 da             	neg    rdx
  669f05:	48 03 95 c8 ec ff ff 	add    rdx,QWORD PTR [rbp-0x1338]
  669f0c:	4b 0f af 94 3d 30 f9 	imul   rdx,QWORD PTR [r13+r15*1-0x6d0]
  669f13:	ff ff 
  669f15:	4b 8b 84 3d f8 f8 ff 	mov    rax,QWORD PTR [r13+r15*1-0x708]
  669f1c:	ff 
  669f1d:	f6 04 10 01          	test   BYTE PTR [rax+rdx*1],0x1
  669f21:	0f 84 9d 00 00 00    	je     669fc4 <gls_corstep_mod_mp_gls_corstep_tile_+0x2854>
  669f27:	48 8b 85 18 ea ff ff 	mov    rax,QWORD PTR [rbp-0x15e8]
  669f2e:	48 8b 95 f0 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1310]
  669f35:	8b 8d 48 ea ff ff    	mov    ecx,DWORD PTR [rbp-0x15b8]
  669f3b:	8b 44 90 fc          	mov    eax,DWORD PTR [rax+rdx*4-0x4]
  669f3f:	3b c1                	cmp    eax,ecx
  669f41:	0f 4d c1             	cmovge eax,ecx
  669f44:	3b 85 88 ea ff ff    	cmp    eax,DWORD PTR [rbp-0x1578]
  669f4a:	7c 78                	jl     669fc4 <gls_corstep_mod_mp_gls_corstep_tile_+0x2854>
  669f4c:	48 63 c8             	movsxd rcx,eax
  669f4f:	2b 85 88 ea ff ff    	sub    eax,DWORD PTR [rbp-0x1578]
  669f55:	ff c0                	inc    eax
  669f57:	83 f8 0c             	cmp    eax,0xc
  669f5a:	0f 8e 78 d9 00 00    	jle    6778d8 <gls_corstep_mod_mp_gls_corstep_tile_+0x10168>
  669f60:	48 8b 85 68 ea ff ff 	mov    rax,QWORD PTR [rbp-0x1598]
  669f67:	48 8d 14 cd 00 00 00 	lea    rdx,[rcx*8+0x0]
  669f6e:	00 
  669f6f:	48 2b 95 50 ea ff ff 	sub    rdx,QWORD PTR [rbp-0x15b0]
  669f76:	4b 8d 3c 26          	lea    rdi,[r14+r12*1]
  669f7a:	48 83 c2 08          	add    rdx,0x8
  669f7e:	45 33 c9             	xor    r9d,r9d
  669f81:	45 33 c0             	xor    r8d,r8d
  669f84:	48 8d 34 38          	lea    rsi,[rax+rdi*1]
  669f88:	48 3b f2             	cmp    rsi,rdx
  669f8b:	41 0f 9f c1          	setg   r9b
  669f8f:	48 03 bd 00 ea ff ff 	add    rdi,QWORD PTR [rbp-0x1600]
  669f96:	48 3b fa             	cmp    rdi,rdx
  669f99:	41 0f 9f c0          	setg   r8b
  669f9d:	45 0b c8             	or     r9d,r8d
  669fa0:	0f 84 32 d9 00 00    	je     6778d8 <gls_corstep_mod_mp_gls_corstep_tile_+0x10168>
  669fa6:	48 8b 85 58 ea ff ff 	mov    rax,QWORD PTR [rbp-0x15a8]
  669fad:	48 8b 8d 60 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x15a0]
  669fb4:	c5 f8 77             	vzeroupper 
  669fb7:	4a 8d 3c 30          	lea    rdi,[rax+r14*1]
  669fbb:	4a 8d 34 31          	lea    rsi,[rcx+r14*1]
  669fbf:	e8 cc 72 e6 ff       	call   4d1290 <_intel_fast_memcpy>
  669fc4:	4b 8b 94 3d f0 f8 ff 	mov    rdx,QWORD PTR [r13+r15*1-0x710]
  669fcb:	ff 
  669fcc:	48 f7 da             	neg    rdx
  669fcf:	48 03 95 c8 ec ff ff 	add    rdx,QWORD PTR [rbp-0x1338]
  669fd6:	4b 0f af 94 3d e8 f8 	imul   rdx,QWORD PTR [r13+r15*1-0x718]
  669fdd:	ff ff 
  669fdf:	4b 8b 84 3d b0 f8 ff 	mov    rax,QWORD PTR [r13+r15*1-0x750]
  669fe6:	ff 
  669fe7:	f6 04 10 01          	test   BYTE PTR [rax+rdx*1],0x1
  669feb:	0f 84 9d 00 00 00    	je     66a08e <gls_corstep_mod_mp_gls_corstep_tile_+0x291e>
  669ff1:	48 8b 85 18 ea ff ff 	mov    rax,QWORD PTR [rbp-0x15e8]
  669ff8:	48 8b 95 f0 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1310]
  669fff:	8b 8d 48 ea ff ff    	mov    ecx,DWORD PTR [rbp-0x15b8]
  66a005:	8b 44 90 fc          	mov    eax,DWORD PTR [rax+rdx*4-0x4]
  66a009:	3b c1                	cmp    eax,ecx
  66a00b:	0f 4d c1             	cmovge eax,ecx
  66a00e:	3b 85 88 ea ff ff    	cmp    eax,DWORD PTR [rbp-0x1578]
  66a014:	7c 78                	jl     66a08e <gls_corstep_mod_mp_gls_corstep_tile_+0x291e>
  66a016:	48 63 c8             	movsxd rcx,eax
  66a019:	2b 85 88 ea ff ff    	sub    eax,DWORD PTR [rbp-0x1578]
  66a01f:	ff c0                	inc    eax
  66a021:	83 f8 0c             	cmp    eax,0xc
  66a024:	0f 8e 37 d8 00 00    	jle    677861 <gls_corstep_mod_mp_gls_corstep_tile_+0x100f1>
  66a02a:	48 8b 85 70 ea ff ff 	mov    rax,QWORD PTR [rbp-0x1590]
  66a031:	48 8d 14 cd 00 00 00 	lea    rdx,[rcx*8+0x0]
  66a038:	00 
  66a039:	48 2b 95 50 ea ff ff 	sub    rdx,QWORD PTR [rbp-0x15b0]
  66a040:	4b 8d 3c 26          	lea    rdi,[r14+r12*1]
  66a044:	48 83 c2 08          	add    rdx,0x8
  66a048:	45 33 c9             	xor    r9d,r9d
  66a04b:	45 33 c0             	xor    r8d,r8d
  66a04e:	48 8d 34 38          	lea    rsi,[rax+rdi*1]
  66a052:	48 3b f2             	cmp    rsi,rdx
  66a055:	41 0f 9f c1          	setg   r9b
  66a059:	48 03 bd a8 ea ff ff 	add    rdi,QWORD PTR [rbp-0x1558]
  66a060:	48 3b fa             	cmp    rdi,rdx
  66a063:	41 0f 9f c0          	setg   r8b
  66a067:	45 0b c8             	or     r9d,r8d
  66a06a:	0f 84 f1 d7 00 00    	je     677861 <gls_corstep_mod_mp_gls_corstep_tile_+0x100f1>
  66a070:	48 8b 85 78 ea ff ff 	mov    rax,QWORD PTR [rbp-0x1588]
  66a077:	48 8b 8d 80 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x1580]
  66a07e:	c5 f8 77             	vzeroupper 
  66a081:	4a 8d 3c 30          	lea    rdi,[rax+r14*1]
  66a085:	4a 8d 34 31          	lea    rsi,[rcx+r14*1]
  66a089:	e8 02 72 e6 ff       	call   4d1290 <_intel_fast_memcpy>
  66a08e:	4b 8b 94 3d 58 fa ff 	mov    rdx,QWORD PTR [r13+r15*1-0x5a8]
  66a095:	ff 
  66a096:	48 f7 da             	neg    rdx
  66a099:	48 03 95 c8 ec ff ff 	add    rdx,QWORD PTR [rbp-0x1338]
  66a0a0:	4b 0f af 94 3d 50 fa 	imul   rdx,QWORD PTR [r13+r15*1-0x5b0]
  66a0a7:	ff ff 
  66a0a9:	4b 8b 84 3d 18 fa ff 	mov    rax,QWORD PTR [r13+r15*1-0x5e8]
  66a0b0:	ff 
  66a0b1:	f6 04 10 01          	test   BYTE PTR [rax+rdx*1],0x1
  66a0b5:	74 17                	je     66a0ce <gls_corstep_mod_mp_gls_corstep_tile_+0x295e>
  66a0b7:	48 8b 85 20 ec ff ff 	mov    rax,QWORD PTR [rbp-0x13e0]
  66a0be:	48 8b 8d a0 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x1560]
  66a0c5:	49 8b 14 06          	mov    rdx,QWORD PTR [r14+rax*1]
  66a0c9:	49 89 54 0e f8       	mov    QWORD PTR [r14+rcx*1-0x8],rdx
  66a0ce:	4b 8b 94 3d c8 f9 ff 	mov    rdx,QWORD PTR [r13+r15*1-0x638]
  66a0d5:	ff 
  66a0d6:	48 f7 da             	neg    rdx
  66a0d9:	48 03 95 c8 ec ff ff 	add    rdx,QWORD PTR [rbp-0x1338]
  66a0e0:	4b 0f af 94 3d c0 f9 	imul   rdx,QWORD PTR [r13+r15*1-0x640]
  66a0e7:	ff ff 
  66a0e9:	4b 8b 84 3d 88 f9 ff 	mov    rax,QWORD PTR [r13+r15*1-0x678]
  66a0f0:	ff 
  66a0f1:	f6 04 10 01          	test   BYTE PTR [rax+rdx*1],0x1
  66a0f5:	74 17                	je     66a10e <gls_corstep_mod_mp_gls_corstep_tile_+0x299e>
  66a0f7:	48 8b 85 20 ea ff ff 	mov    rax,QWORD PTR [rbp-0x15e0]
  66a0fe:	48 8b 8d 98 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x1568]
  66a105:	49 8b 14 06          	mov    rdx,QWORD PTR [r14+rax*1]
  66a109:	49 89 54 0e f8       	mov    QWORD PTR [r14+rcx*1-0x8],rdx
  66a10e:	4b 8b 94 3d 10 fa ff 	mov    rdx,QWORD PTR [r13+r15*1-0x5f0]
  66a115:	ff 
  66a116:	48 f7 da             	neg    rdx
  66a119:	48 03 95 c8 ec ff ff 	add    rdx,QWORD PTR [rbp-0x1338]
  66a120:	4b 0f af 94 3d 08 fa 	imul   rdx,QWORD PTR [r13+r15*1-0x5f8]
  66a127:	ff ff 
  66a129:	4b 8b 84 3d d0 f9 ff 	mov    rax,QWORD PTR [r13+r15*1-0x630]
  66a130:	ff 
  66a131:	f6 04 10 01          	test   BYTE PTR [rax+rdx*1],0x1
  66a135:	74 17                	je     66a14e <gls_corstep_mod_mp_gls_corstep_tile_+0x29de>
  66a137:	48 8b 85 28 ea ff ff 	mov    rax,QWORD PTR [rbp-0x15d8]
  66a13e:	48 8b 8d 40 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x15c0]
  66a145:	49 8b 14 06          	mov    rdx,QWORD PTR [r14+rax*1]
  66a149:	49 89 54 0e 08       	mov    QWORD PTR [r14+rcx*1+0x8],rdx
  66a14e:	4b 8b 94 3d 80 f9 ff 	mov    rdx,QWORD PTR [r13+r15*1-0x680]
  66a155:	ff 
  66a156:	48 f7 da             	neg    rdx
  66a159:	48 03 95 c8 ec ff ff 	add    rdx,QWORD PTR [rbp-0x1338]
  66a160:	4b 0f af 94 3d 78 f9 	imul   rdx,QWORD PTR [r13+r15*1-0x688]
  66a167:	ff ff 
  66a169:	4b 8b 84 3d 40 f9 ff 	mov    rax,QWORD PTR [r13+r15*1-0x6c0]
  66a170:	ff 
  66a171:	f6 04 10 01          	test   BYTE PTR [rax+rdx*1],0x1
  66a175:	74 17                	je     66a18e <gls_corstep_mod_mp_gls_corstep_tile_+0x2a1e>
  66a177:	48 8b 85 38 ea ff ff 	mov    rax,QWORD PTR [rbp-0x15c8]
  66a17e:	48 8b 8d 30 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x15d0]
  66a185:	49 8b 14 06          	mov    rdx,QWORD PTR [r14+rax*1]
  66a189:	49 89 54 0e 08       	mov    QWORD PTR [r14+rcx*1+0x8],rdx
  66a18e:	8b 85 b8 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1348]
  66a194:	33 f6                	xor    esi,esi
  66a196:	33 c9                	xor    ecx,ecx
  66a198:	3b 85 68 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x1398]
  66a19e:	0f 8c 53 02 00 00    	jl     66a3f7 <gls_corstep_mod_mp_gls_corstep_tile_+0x2c87>
  66a1a4:	4c 8b 8d 48 ec ff ff 	mov    r9,QWORD PTR [rbp-0x13b8]
  66a1ab:	48 8b 95 20 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x13e0]
  66a1b2:	4c 8b 85 28 ec ff ff 	mov    r8,QWORD PTR [rbp-0x13d8]
  66a1b9:	48 8b bd 30 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x13d0]
  66a1c0:	4f 8d 14 31          	lea    r10,[r9+r14*1]
  66a1c4:	48 8b 85 38 ec ff ff 	mov    rax,QWORD PTR [rbp-0x13c8]
  66a1cb:	49 03 d6             	add    rdx,r14
  66a1ce:	4c 8b 8d 40 ec ff ff 	mov    r9,QWORD PTR [rbp-0x13c0]
  66a1d5:	4d 03 c6             	add    r8,r14
  66a1d8:	48 89 95 10 ed ff ff 	mov    QWORD PTR [rbp-0x12f0],rdx
  66a1df:	49 03 fe             	add    rdi,r14
  66a1e2:	4c 89 95 e8 ec ff ff 	mov    QWORD PTR [rbp-0x1318],r10
  66a1e9:	49 03 c6             	add    rax,r14
  66a1ec:	48 89 85 08 ed ff ff 	mov    QWORD PTR [rbp-0x12f8],rax
  66a1f3:	4d 03 ce             	add    r9,r14
  66a1f6:	4c 89 8d e0 ec ff ff 	mov    QWORD PTR [rbp-0x1320],r9
  66a1fd:	48 89 bd 18 ed ff ff 	mov    QWORD PTR [rbp-0x12e8],rdi
  66a204:	4c 89 85 20 ed ff ff 	mov    QWORD PTR [rbp-0x12e0],r8
  66a20b:	4c 89 a5 f0 e0 ff ff 	mov    QWORD PTR [rbp-0x1f10],r12
  66a212:	4c 89 b5 f8 e0 ff ff 	mov    QWORD PTR [rbp-0x1f08],r14
  66a219:	c5 fb 10 0d 87 22 1e 	vmovsd xmm1,QWORD PTR [rip+0x1e2287]        # 84c4a8 <__STRLITPACK_0.112+0x398>
  66a220:	00 
  66a221:	c5 fd 10 05 37 01 1e 	vmovupd ymm0,YMMWORD PTR [rip+0x1e0137]        # 84a360 <var$630.126.450+0x3c0>
  66a228:	00 
  66a229:	48 8b 95 30 ed ff ff 	mov    rdx,QWORD PTR [rbp-0x12d0]
  66a230:	8b 85 c0 ee ff ff    	mov    eax,DWORD PTR [rbp-0x1140]
  66a236:	3b 85 48 ed ff ff    	cmp    eax,DWORD PTR [rbp-0x12b8]
  66a23c:	0f 8c 82 01 00 00    	jl     66a3c4 <gls_corstep_mod_mp_gls_corstep_tile_+0x2c54>
  66a242:	48 83 fa 04          	cmp    rdx,0x4
  66a246:	0f 8c 0e d6 00 00    	jl     67785a <gls_corstep_mod_mp_gls_corstep_tile_+0x100ea>
  66a24c:	4c 8b ad 20 ed ff ff 	mov    r13,QWORD PTR [rbp-0x12e0]
  66a253:	45 33 f6             	xor    r14d,r14d
  66a256:	4c 8b a5 18 ed ff ff 	mov    r12,QWORD PTR [rbp-0x12e8]
  66a25d:	4c 8b 9d 90 ec ff ff 	mov    r11,QWORD PTR [rbp-0x1370]
  66a264:	4c 8b 95 d8 ec ff ff 	mov    r10,QWORD PTR [rbp-0x1328]
  66a26b:	4c 03 e9             	add    r13,rcx
  66a26e:	4c 8b 8d 10 ed ff ff 	mov    r9,QWORD PTR [rbp-0x12f0]
  66a275:	4c 03 e1             	add    r12,rcx
  66a278:	4c 8b 85 08 ed ff ff 	mov    r8,QWORD PTR [rbp-0x12f8]
  66a27f:	4c 03 d9             	add    r11,rcx
  66a282:	48 8b bd e8 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x1318]
  66a289:	4c 03 d1             	add    r10,rcx
  66a28c:	4c 8b bd e0 ec ff ff 	mov    r15,QWORD PTR [rbp-0x1320]
  66a293:	4c 03 c9             	add    r9,rcx
  66a296:	48 8b 85 d0 ec ff ff 	mov    rax,QWORD PTR [rbp-0x1330]
  66a29d:	4c 03 c1             	add    r8,rcx
  66a2a0:	48 89 c2             	mov    rdx,rax
  66a2a3:	48 03 f9             	add    rdi,rcx
  66a2a6:	4c 03 f9             	add    r15,rcx
  66a2a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  66a2b0:	c4 81 7d 10 54 f5 f0 	vmovupd ymm2,YMMWORD PTR [r13+r14*8-0x10]
  66a2b7:	c4 81 7d 10 7c f4 f0 	vmovupd ymm7,YMMWORD PTR [r12+r14*8-0x10]
  66a2be:	c4 81 6d 58 5c f5 f8 	vaddpd ymm3,ymm2,YMMWORD PTR [r13+r14*8-0x8]
  66a2c5:	c4 01 45 58 44 f4 f8 	vaddpd ymm8,ymm7,YMMWORD PTR [r12+r14*8-0x8]
  66a2cc:	c4 81 65 58 64 f7 f8 	vaddpd ymm4,ymm3,YMMWORD PTR [r15+r14*8-0x8]
  66a2d3:	c4 21 3d 58 4c f7 f8 	vaddpd ymm9,ymm8,YMMWORD PTR [rdi+r14*8-0x8]
  66a2da:	c4 81 5d 58 2c f0    	vaddpd ymm5,ymm4,YMMWORD PTR [r8+r14*8]
  66a2e0:	c4 01 35 58 14 f1    	vaddpd ymm10,ymm9,YMMWORD PTR [r9+r14*8]
  66a2e6:	c5 fd 59 f5          	vmulpd ymm6,ymm0,ymm5
  66a2ea:	c4 41 7d 59 da       	vmulpd ymm11,ymm0,ymm10
  66a2ef:	c4 81 7d 11 74 f2 f0 	vmovupd YMMWORD PTR [r10+r14*8-0x10],ymm6
  66a2f6:	c4 01 7d 11 5c f3 f0 	vmovupd YMMWORD PTR [r11+r14*8-0x10],ymm11
  66a2fd:	49 83 c6 04          	add    r14,0x4
  66a301:	4c 3b f2             	cmp    r14,rdx
  66a304:	72 aa                	jb     66a2b0 <gls_corstep_mod_mp_gls_corstep_tile_+0x2b40>
  66a306:	48 8b 95 30 ed ff ff 	mov    rdx,QWORD PTR [rbp-0x12d0]
  66a30d:	48 3b c2             	cmp    rax,rdx
  66a310:	0f 83 ae 00 00 00    	jae    66a3c4 <gls_corstep_mod_mp_gls_corstep_tile_+0x2c54>
  66a316:	4c 8b a5 20 ed ff ff 	mov    r12,QWORD PTR [rbp-0x12e0]
  66a31d:	4c 8b 9d 18 ed ff ff 	mov    r11,QWORD PTR [rbp-0x12e8]
  66a324:	4c 8b 95 90 ec ff ff 	mov    r10,QWORD PTR [rbp-0x1370]
  66a32b:	4c 8b 8d d8 ec ff ff 	mov    r9,QWORD PTR [rbp-0x1328]
  66a332:	4c 03 e1             	add    r12,rcx
  66a335:	4c 8b 85 10 ed ff ff 	mov    r8,QWORD PTR [rbp-0x12f0]
  66a33c:	4c 03 d9             	add    r11,rcx
  66a33f:	48 8b bd 08 ed ff ff 	mov    rdi,QWORD PTR [rbp-0x12f8]
  66a346:	4c 03 d1             	add    r10,rcx
  66a349:	4c 8b b5 e8 ec ff ff 	mov    r14,QWORD PTR [rbp-0x1318]
  66a350:	4c 03 c9             	add    r9,rcx
  66a353:	4c 8b ad e0 ec ff ff 	mov    r13,QWORD PTR [rbp-0x1320]
  66a35a:	4c 03 c1             	add    r8,rcx
  66a35d:	48 03 f9             	add    rdi,rcx
  66a360:	4c 03 f1             	add    r14,rcx
  66a363:	4c 03 e9             	add    r13,rcx
  66a366:	0f 1f 00             	nop    DWORD PTR [rax]
  66a369:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  66a370:	c4 c1 7b 10 54 c4 f0 	vmovsd xmm2,QWORD PTR [r12+rax*8-0x10]
  66a377:	c4 c1 7b 10 7c c3 f0 	vmovsd xmm7,QWORD PTR [r11+rax*8-0x10]
  66a37e:	c4 41 43 58 44 c3 f8 	vaddsd xmm8,xmm7,QWORD PTR [r11+rax*8-0x8]
  66a385:	c4 c1 6b 58 5c c4 f8 	vaddsd xmm3,xmm2,QWORD PTR [r12+rax*8-0x8]
  66a38c:	c4 41 3b 58 4c c6 f8 	vaddsd xmm9,xmm8,QWORD PTR [r14+rax*8-0x8]
  66a393:	c4 c1 63 58 64 c5 f8 	vaddsd xmm4,xmm3,QWORD PTR [r13+rax*8-0x8]
  66a39a:	c4 41 33 58 14 c0    	vaddsd xmm10,xmm9,QWORD PTR [r8+rax*8]
  66a3a0:	c5 db 58 2c c7       	vaddsd xmm5,xmm4,QWORD PTR [rdi+rax*8]
  66a3a5:	c4 41 73 59 da       	vmulsd xmm11,xmm1,xmm10
  66a3aa:	c5 f3 59 f5          	vmulsd xmm6,xmm1,xmm5
  66a3ae:	c4 c1 7b 11 74 c1 f0 	vmovsd QWORD PTR [r9+rax*8-0x10],xmm6
  66a3b5:	c4 41 7b 11 5c c2 f0 	vmovsd QWORD PTR [r10+rax*8-0x10],xmm11
  66a3bc:	48 ff c0             	inc    rax
  66a3bf:	48 3b c2             	cmp    rax,rdx
  66a3c2:	72 ac                	jb     66a370 <gls_corstep_mod_mp_gls_corstep_tile_+0x2c00>
  66a3c4:	48 ff c6             	inc    rsi
  66a3c7:	48 03 8d d0 ee ff ff 	add    rcx,QWORD PTR [rbp-0x1130]
  66a3ce:	48 3b b5 40 ed ff ff 	cmp    rsi,QWORD PTR [rbp-0x12c0]
  66a3d5:	0f 82 55 fe ff ff    	jb     66a230 <gls_corstep_mod_mp_gls_corstep_tile_+0x2ac0>
  66a3db:	4c 8b a5 f0 e0 ff ff 	mov    r12,QWORD PTR [rbp-0x1f10]
  66a3e2:	4c 8b b5 f8 e0 ff ff 	mov    r14,QWORD PTR [rbp-0x1f08]
  66a3e9:	4c 8b bd 18 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13e8]
  66a3f0:	4c 8b ad 10 ec ff ff 	mov    r13,QWORD PTR [rbp-0x13f0]
  66a3f7:	8b 85 b8 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1348]
  66a3fd:	33 f6                	xor    esi,esi
  66a3ff:	33 c9                	xor    ecx,ecx
  66a401:	3b 85 c0 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x1340]
  66a407:	0f 8c 08 02 00 00    	jl     66a615 <gls_corstep_mod_mp_gls_corstep_tile_+0x2ea5>
  66a40d:	48 8b 85 20 ec ff ff 	mov    rax,QWORD PTR [rbp-0x13e0]
  66a414:	48 8b 95 38 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x13c8]
  66a41b:	4c 89 a5 f0 e0 ff ff 	mov    QWORD PTR [rbp-0x1f10],r12
  66a422:	4c 89 b5 f8 e0 ff ff 	mov    QWORD PTR [rbp-0x1f08],r14
  66a429:	4a 8d 3c 30          	lea    rdi,[rax+r14*1]
  66a42d:	48 89 bd b8 e2 ff ff 	mov    QWORD PTR [rbp-0x1d48],rdi
  66a434:	4a 8d 04 32          	lea    rax,[rdx+r14*1]
  66a438:	48 89 85 b0 e2 ff ff 	mov    QWORD PTR [rbp-0x1d50],rax
  66a43f:	c5 fb 10 0d 61 20 1e 	vmovsd xmm1,QWORD PTR [rip+0x1e2061]        # 84c4a8 <__STRLITPACK_0.112+0x398>
  66a446:	00 
  66a447:	c5 fd 10 05 11 ff 1d 	vmovupd ymm0,YMMWORD PTR [rip+0x1dff11]        # 84a360 <var$630.126.450+0x3c0>
  66a44e:	00 
  66a44f:	48 8b 95 28 ed ff ff 	mov    rdx,QWORD PTR [rbp-0x12d8]
  66a456:	8b 85 c0 ee ff ff    	mov    eax,DWORD PTR [rbp-0x1140]
  66a45c:	3b 85 c8 ee ff ff    	cmp    eax,DWORD PTR [rbp-0x1138]
  66a462:	0f 8c 7a 01 00 00    	jl     66a5e2 <gls_corstep_mod_mp_gls_corstep_tile_+0x2e72>
  66a468:	48 83 fa 04          	cmp    rdx,0x4
  66a46c:	0f 8c e1 d3 00 00    	jl     677853 <gls_corstep_mod_mp_gls_corstep_tile_+0x100e3>
  66a472:	4c 8b ad 90 ec ff ff 	mov    r13,QWORD PTR [rbp-0x1370]
  66a479:	45 33 f6             	xor    r14d,r14d
  66a47c:	4c 8b a5 d8 ec ff ff 	mov    r12,QWORD PTR [rbp-0x1328]
  66a483:	4c 8b 9d b8 e2 ff ff 	mov    r11,QWORD PTR [rbp-0x1d48]
  66a48a:	4c 8b 95 b0 e2 ff ff 	mov    r10,QWORD PTR [rbp-0x1d50]
  66a491:	4c 03 e9             	add    r13,rcx
  66a494:	4c 8b 8d 88 ec ff ff 	mov    r9,QWORD PTR [rbp-0x1378]
  66a49b:	4c 03 e1             	add    r12,rcx
  66a49e:	4c 8b 85 a0 ec ff ff 	mov    r8,QWORD PTR [rbp-0x1360]
  66a4a5:	4c 03 d9             	add    r11,rcx
  66a4a8:	48 8b bd 80 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x1380]
  66a4af:	4c 03 d1             	add    r10,rcx
  66a4b2:	4c 8b bd 78 ec ff ff 	mov    r15,QWORD PTR [rbp-0x1388]
  66a4b9:	4c 03 c9             	add    r9,rcx
  66a4bc:	48 8b 85 98 ec ff ff 	mov    rax,QWORD PTR [rbp-0x1368]
  66a4c3:	4c 03 c1             	add    r8,rcx
  66a4c6:	48 89 c2             	mov    rdx,rax
  66a4c9:	48 03 f9             	add    rdi,rcx
  66a4cc:	4c 03 f9             	add    r15,rcx
  66a4cf:	90                   	nop
  66a4d0:	c4 81 7d 10 14 f0    	vmovupd ymm2,YMMWORD PTR [r8+r14*8]
  66a4d6:	c4 81 7d 10 3c f1    	vmovupd ymm7,YMMWORD PTR [r9+r14*8]
  66a4dc:	c4 a1 6d 58 5c f7 f8 	vaddpd ymm3,ymm2,YMMWORD PTR [rdi+r14*8-0x8]
  66a4e3:	c4 01 45 58 44 f7 f8 	vaddpd ymm8,ymm7,YMMWORD PTR [r15+r14*8-0x8]
  66a4ea:	c4 81 65 58 64 f4 f8 	vaddpd ymm4,ymm3,YMMWORD PTR [r12+r14*8-0x8]
  66a4f1:	c4 01 3d 58 4c f5 f8 	vaddpd ymm9,ymm8,YMMWORD PTR [r13+r14*8-0x8]
  66a4f8:	c4 81 5d 58 6c f4 f0 	vaddpd ymm5,ymm4,YMMWORD PTR [r12+r14*8-0x10]
  66a4ff:	c4 01 35 58 54 f5 f0 	vaddpd ymm10,ymm9,YMMWORD PTR [r13+r14*8-0x10]
  66a506:	c5 fd 59 f5          	vmulpd ymm6,ymm0,ymm5
  66a50a:	c4 41 7d 59 da       	vmulpd ymm11,ymm0,ymm10
  66a50f:	c4 81 7d 11 34 f2    	vmovupd YMMWORD PTR [r10+r14*8],ymm6
  66a515:	c4 01 7d 11 1c f3    	vmovupd YMMWORD PTR [r11+r14*8],ymm11
  66a51b:	49 83 c6 04          	add    r14,0x4
  66a51f:	4c 3b f2             	cmp    r14,rdx
  66a522:	72 ac                	jb     66a4d0 <gls_corstep_mod_mp_gls_corstep_tile_+0x2d60>
  66a524:	48 8b 95 28 ed ff ff 	mov    rdx,QWORD PTR [rbp-0x12d8]
  66a52b:	48 3b c2             	cmp    rax,rdx
  66a52e:	0f 83 ae 00 00 00    	jae    66a5e2 <gls_corstep_mod_mp_gls_corstep_tile_+0x2e72>
  66a534:	4c 8b a5 90 ec ff ff 	mov    r12,QWORD PTR [rbp-0x1370]
  66a53b:	4c 8b 9d d8 ec ff ff 	mov    r11,QWORD PTR [rbp-0x1328]
  66a542:	4c 8b 95 b8 e2 ff ff 	mov    r10,QWORD PTR [rbp-0x1d48]
  66a549:	4c 8b 8d b0 e2 ff ff 	mov    r9,QWORD PTR [rbp-0x1d50]
  66a550:	4c 03 e1             	add    r12,rcx
  66a553:	4c 8b 85 88 ec ff ff 	mov    r8,QWORD PTR [rbp-0x1378]
  66a55a:	4c 03 d9             	add    r11,rcx
  66a55d:	48 8b bd a0 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x1360]
  66a564:	4c 03 d1             	add    r10,rcx
  66a567:	4c 8b b5 80 ec ff ff 	mov    r14,QWORD PTR [rbp-0x1380]
  66a56e:	4c 03 c9             	add    r9,rcx
  66a571:	4c 8b ad 78 ec ff ff 	mov    r13,QWORD PTR [rbp-0x1388]
  66a578:	4c 03 c1             	add    r8,rcx
  66a57b:	48 03 f9             	add    rdi,rcx
  66a57e:	4c 03 f1             	add    r14,rcx
  66a581:	4c 03 e9             	add    r13,rcx
  66a584:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  66a589:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  66a590:	c5 fb 10 14 c7       	vmovsd xmm2,QWORD PTR [rdi+rax*8]
  66a595:	c4 c1 7b 10 3c c0    	vmovsd xmm7,QWORD PTR [r8+rax*8]
  66a59b:	c4 c1 6b 58 5c c6 f8 	vaddsd xmm3,xmm2,QWORD PTR [r14+rax*8-0x8]
  66a5a2:	c4 41 43 58 44 c5 f8 	vaddsd xmm8,xmm7,QWORD PTR [r13+rax*8-0x8]
  66a5a9:	c4 c1 63 58 64 c3 f8 	vaddsd xmm4,xmm3,QWORD PTR [r11+rax*8-0x8]
  66a5b0:	c4 41 3b 58 4c c4 f8 	vaddsd xmm9,xmm8,QWORD PTR [r12+rax*8-0x8]
  66a5b7:	c4 c1 5b 58 6c c3 f0 	vaddsd xmm5,xmm4,QWORD PTR [r11+rax*8-0x10]
  66a5be:	c4 41 33 58 54 c4 f0 	vaddsd xmm10,xmm9,QWORD PTR [r12+rax*8-0x10]
  66a5c5:	c5 f3 59 f5          	vmulsd xmm6,xmm1,xmm5
  66a5c9:	c4 41 73 59 da       	vmulsd xmm11,xmm1,xmm10
  66a5ce:	c4 c1 7b 11 34 c1    	vmovsd QWORD PTR [r9+rax*8],xmm6
  66a5d4:	c4 41 7b 11 1c c2    	vmovsd QWORD PTR [r10+rax*8],xmm11
  66a5da:	48 ff c0             	inc    rax
  66a5dd:	48 3b c2             	cmp    rax,rdx
  66a5e0:	72 ae                	jb     66a590 <gls_corstep_mod_mp_gls_corstep_tile_+0x2e20>
  66a5e2:	48 ff c6             	inc    rsi
  66a5e5:	48 03 8d d0 ee ff ff 	add    rcx,QWORD PTR [rbp-0x1130]
  66a5ec:	48 3b b5 38 ed ff ff 	cmp    rsi,QWORD PTR [rbp-0x12c8]
  66a5f3:	0f 82 5d fe ff ff    	jb     66a456 <gls_corstep_mod_mp_gls_corstep_tile_+0x2ce6>
  66a5f9:	4c 8b a5 f0 e0 ff ff 	mov    r12,QWORD PTR [rbp-0x1f10]
  66a600:	4c 8b b5 f8 e0 ff ff 	mov    r14,QWORD PTR [rbp-0x1f08]
  66a607:	4c 8b bd 18 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13e8]
  66a60e:	4c 8b ad 10 ec ff ff 	mov    r13,QWORD PTR [rbp-0x13f0]
  66a615:	48 8b 85 70 ec ff ff 	mov    rax,QWORD PTR [rbp-0x1390]
  66a61c:	48 ff c0             	inc    rax
  66a61f:	4c 03 a5 50 ec ff ff 	add    r12,QWORD PTR [rbp-0x13b0]
  66a626:	4c 03 b5 60 ec ff ff 	add    r14,QWORD PTR [rbp-0x13a0]
  66a62d:	48 89 85 70 ec ff ff 	mov    QWORD PTR [rbp-0x1390],rax
  66a634:	48 3b 85 58 ec ff ff 	cmp    rax,QWORD PTR [rbp-0x13a8]
  66a63b:	0f 82 fe f6 ff ff    	jb     669d3f <gls_corstep_mod_mp_gls_corstep_tile_+0x25cf>
  66a641:	4c 8b a5 f8 ec ff ff 	mov    r12,QWORD PTR [rbp-0x1308]
  66a648:	4c 8b ad d0 ee ff ff 	mov    r13,QWORD PTR [rbp-0x1130]
  66a64f:	4c 8b b5 00 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1300]
  66a656:	48 8b 85 c8 e9 ff ff 	mov    rax,QWORD PTR [rbp-0x1638]
  66a65d:	48 8b 95 f0 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1310]
  66a664:	48 c7 85 d8 ee ff ff 	mov    QWORD PTR [rbp-0x1128],0x0
  66a66b:	00 00 00 00 
  66a66f:	48 63 4c 90 fc       	movsxd rcx,DWORD PTR [rax+rdx*4-0x4]
  66a674:	48 ff c9             	dec    rcx
  66a677:	48 89 8d 20 ec ff ff 	mov    QWORD PTR [rbp-0x13e0],rcx
  66a67e:	0f 8e 26 c2 00 00    	jle    6768aa <gls_corstep_mod_mp_gls_corstep_tile_+0xf13a>
  66a684:	48 8b 85 f0 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x1910]
  66a68b:	48 89 85 c0 ed ff ff 	mov    QWORD PTR [rbp-0x1240],rax
  66a692:	c4 41 31 57 c9       	vxorpd xmm9,xmm9,xmm9
  66a697:	48 8b 7b 38          	mov    rdi,QWORD PTR [rbx+0x38]
  66a69b:	48 8b b3 f8 00 00 00 	mov    rsi,QWORD PTR [rbx+0xf8]
  66a6a2:	48 8b 83 00 01 00 00 	mov    rax,QWORD PTR [rbx+0x100]
  66a6a9:	4c 89 b5 00 ed ff ff 	mov    QWORD PTR [rbp-0x1300],r14
  66a6b0:	4c 8b 85 90 e6 ff ff 	mov    r8,QWORD PTR [rbp-0x1970]
  66a6b7:	48 63 0f             	movsxd rcx,DWORD PTR [rdi]
  66a6ba:	48 8b 96 80 00 00 00 	mov    rdx,QWORD PTR [rsi+0x80]
  66a6c1:	4c 8b 70 68          	mov    r14,QWORD PTR [rax+0x68]
  66a6c5:	4c 8b 56 38          	mov    r10,QWORD PTR [rsi+0x38]
  66a6c9:	4c 8b 1e             	mov    r11,QWORD PTR [rsi]
  66a6cc:	4c 89 85 c8 ed ff ff 	mov    QWORD PTR [rbp-0x1238],r8
  66a6d3:	4c 2b da             	sub    r11,rdx
  66a6d6:	48 89 8d 30 ea ff ff 	mov    QWORD PTR [rbp-0x15d0],rcx
  66a6dd:	48 89 95 38 ea ff ff 	mov    QWORD PTR [rbp-0x15c8],rdx
  66a6e4:	4c 89 b5 38 ef ff ff 	mov    QWORD PTR [rbp-0x10c8],r14
  66a6eb:	4c 89 95 f0 ef ff ff 	mov    QWORD PTR [rbp-0x1010],r10
  66a6f2:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  66a6f5:	48 8b 48 38          	mov    rcx,QWORD PTR [rax+0x38]
  66a6f9:	4c 8b 70 50          	mov    r14,QWORD PTR [rax+0x50]
  66a6fd:	4c 8b 80 80 00 00 00 	mov    r8,QWORD PTR [rax+0x80]
  66a704:	4d 2b f8             	sub    r15,r8
  66a707:	48 8b 15 12 12 45 00 	mov    rdx,QWORD PTR [rip+0x451212]        # abb920 <mod_scalars_mp_ewperiodic_>
  66a70e:	4c 8b 53 68          	mov    r10,QWORD PTR [rbx+0x68]
  66a712:	48 8b 43 70          	mov    rax,QWORD PTR [rbx+0x70]
  66a716:	48 89 95 08 ec ff ff 	mov    QWORD PTR [rbp-0x13f8],rdx
  66a71d:	48 8b 15 1c 60 45 00 	mov    rdx,QWORD PTR [rip+0x45601c]        # ac0740 <mod_scalars_mp_gls_kmin_>
  66a724:	48 89 95 10 ed ff ff 	mov    QWORD PTR [rbp-0x12f0],rdx
  66a72b:	48 8b 95 b8 e9 ff ff 	mov    rdx,QWORD PTR [rbp-0x1648]
  66a732:	4c 89 85 40 ea ff ff 	mov    QWORD PTR [rbp-0x15c0],r8
  66a739:	4c 89 bd 78 ef ff ff 	mov    QWORD PTR [rbp-0x1088],r15
  66a740:	4d 8b 42 38          	mov    r8,QWORD PTR [r10+0x38]
  66a744:	4c 8b 78 50          	mov    r15,QWORD PTR [rax+0x50]
  66a748:	48 89 8d f8 ef ff ff 	mov    QWORD PTR [rbp-0x1008],rcx
  66a74f:	4c 89 85 a8 ef ff ff 	mov    QWORD PTR [rbp-0x1058],r8
  66a756:	4c 89 bd a8 ed ff ff 	mov    QWORD PTR [rbp-0x1258],r15
  66a75d:	48 8b 48 38          	mov    rcx,QWORD PTR [rax+0x38]
  66a761:	4c 8b 85 a8 e9 ff ff 	mov    r8,QWORD PTR [rbp-0x1658]
  66a768:	4c 8b 3d d1 0c 45 00 	mov    r15,QWORD PTR [rip+0x450cd1]        # abb440 <mod_param_mp_domain_>
  66a76f:	48 89 8d a0 ef ff ff 	mov    QWORD PTR [rbp-0x1060],rcx
  66a776:	4c 89 bd c0 eb ff ff 	mov    QWORD PTR [rbp-0x1440],r15
  66a77d:	48 8b 4a 50          	mov    rcx,QWORD PTR [rdx+0x50]
  66a781:	4c 8b bd b0 e9 ff ff 	mov    r15,QWORD PTR [rbp-0x1650]
  66a788:	4c 8b 4e 68          	mov    r9,QWORD PTR [rsi+0x68]
  66a78c:	48 89 8d 20 ef ff ff 	mov    QWORD PTR [rbp-0x10e0],rcx
  66a793:	48 8b 7e 50          	mov    rdi,QWORD PTR [rsi+0x50]
  66a797:	48 8b 8d c0 e9 ff ff 	mov    rcx,QWORD PTR [rbp-0x1640]
  66a79e:	49 8b 72 50          	mov    rsi,QWORD PTR [r10+0x50]
  66a7a2:	4d 8b 50 50          	mov    r10,QWORD PTR [r8+0x50]
  66a7a6:	4c 89 8d 30 ef ff ff 	mov    QWORD PTR [rbp-0x10d0],r9
  66a7ad:	4c 89 9d 80 ef ff ff 	mov    QWORD PTR [rbp-0x1080],r11
  66a7b4:	4c 8b 0d 85 f3 44 00 	mov    r9,QWORD PTR [rip+0x44f385]        # ab9b40 <mod_scalars_mp_dt_>
  66a7bb:	4c 8b 1d be 14 45 00 	mov    r11,QWORD PTR [rip+0x4514be]        # abbc80 <mod_scalars_mp_nsperiodic_>
  66a7c2:	4c 89 95 d8 ed ff ff 	mov    QWORD PTR [rbp-0x1228],r10
  66a7c9:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  66a7cc:	4d 8b 57 50          	mov    r10,QWORD PTR [r15+0x50]
  66a7d0:	4c 89 8d 18 ed ff ff 	mov    QWORD PTR [rbp-0x12e8],r9
  66a7d7:	4c 89 9d 00 ec ff ff 	mov    QWORD PTR [rbp-0x1400],r11
  66a7de:	4d 8b 48 68          	mov    r9,QWORD PTR [r8+0x68]
  66a7e2:	4c 8b 1d b7 5f 45 00 	mov    r11,QWORD PTR [rip+0x455fb7]        # ac07a0 <mod_scalars_mp_gls_pmin_>
  66a7e9:	48 89 b5 b0 ed ff ff 	mov    QWORD PTR [rbp-0x1250],rsi
  66a7f0:	48 89 85 88 ee ff ff 	mov    QWORD PTR [rbp-0x1178],rax
  66a7f7:	49 8b 30             	mov    rsi,QWORD PTR [r8]
  66a7fa:	4c 89 95 18 ef ff ff 	mov    QWORD PTR [rbp-0x10e8],r10
  66a801:	49 2b f1             	sub    rsi,r9
  66a804:	48 8b 01             	mov    rax,QWORD PTR [rcx]
  66a807:	4c 8b 95 f0 ec ff ff 	mov    r10,QWORD PTR [rbp-0x1310]
  66a80e:	4c 89 8d e0 ed ff ff 	mov    QWORD PTR [rbp-0x1220],r9
  66a815:	48 89 b5 48 ea ff ff 	mov    QWORD PTR [rbp-0x15b8],rsi
  66a81c:	49 c1 e2 04          	shl    r10,0x4
  66a820:	4c 89 9d 08 ed ff ff 	mov    QWORD PTR [rbp-0x12f8],r11
  66a827:	49 8b 37             	mov    rsi,QWORD PTR [r15]
  66a82a:	4d 8b 4f 68          	mov    r9,QWORD PTR [r15+0x68]
  66a82e:	49 2b f1             	sub    rsi,r9
  66a831:	4d 8b 58 38          	mov    r11,QWORD PTR [r8+0x38]
  66a835:	4c 8b 42 38          	mov    r8,QWORD PTR [rdx+0x38]
  66a839:	48 89 b5 50 ea ff ff 	mov    QWORD PTR [rbp-0x15b0],rsi
  66a840:	48 89 85 90 ee ff ff 	mov    QWORD PTR [rbp-0x1170],rax
  66a847:	48 8b 41 50          	mov    rax,QWORD PTR [rcx+0x50]
  66a84b:	48 8b 51 38          	mov    rdx,QWORD PTR [rcx+0x38]
  66a84f:	48 8b 35 4a 03 45 00 	mov    rsi,QWORD PTR [rip+0x45034a]        # ababa0 <mod_scalars_mp_compositegrid_>
  66a856:	48 8b 8d 90 e9 ff ff 	mov    rcx,QWORD PTR [rbp-0x1670]
  66a85d:	4c 89 8d 48 ec ff ff 	mov    QWORD PTR [rbp-0x13b8],r9
  66a864:	49 89 c9             	mov    r9,rcx
  66a867:	49 c1 e1 04          	shl    r9,0x4
  66a86b:	4c 89 8d f0 e0 ff ff 	mov    QWORD PTR [rbp-0x1f10],r9
  66a872:	46 8b 4c 16 fc       	mov    r9d,DWORD PTR [rsi+r10*1-0x4]
  66a877:	41 83 e1 01          	and    r9d,0x1
  66a87b:	44 89 8d 98 ec ff ff 	mov    DWORD PTR [rbp-0x1368],r9d
  66a882:	46 8b 4c 16 f4       	mov    r9d,DWORD PTR [rsi+r10*1-0xc]
  66a887:	41 83 e1 01          	and    r9d,0x1
  66a88b:	44 89 8d d0 ec ff ff 	mov    DWORD PTR [rbp-0x1330],r9d
  66a892:	46 8b 4c 16 f8       	mov    r9d,DWORD PTR [rsi+r10*1-0x8]
  66a897:	42 8b 74 16 f0       	mov    esi,DWORD PTR [rsi+r10*1-0x10]
  66a89c:	41 83 e1 01          	and    r9d,0x1
  66a8a0:	83 e6 01             	and    esi,0x1
  66a8a3:	89 b5 d8 ec ff ff    	mov    DWORD PTR [rbp-0x1328],esi
  66a8a9:	8b b5 b8 ec ff ff    	mov    esi,DWORD PTR [rbp-0x1348]
  66a8af:	44 89 8d 18 ec ff ff 	mov    DWORD PTR [rbp-0x13e8],r9d
  66a8b6:	48 89 bd 40 ef ff ff 	mov    QWORD PTR [rbp-0x10c0],rdi
  66a8bd:	4c 89 ad d0 ee ff ff 	mov    QWORD PTR [rbp-0x1130],r13
  66a8c4:	44 8d 56 01          	lea    r10d,[rsi+0x1]
  66a8c8:	44 89 95 a0 ec ff ff 	mov    DWORD PTR [rbp-0x1360],r10d
  66a8cf:	44 8b 95 c0 ec ff ff 	mov    r10d,DWORD PTR [rbp-0x1340]
  66a8d6:	4d 0f af e5          	imul   r12,r13
  66a8da:	c5 7d 10 15 3e fa 1d 	vmovupd ymm10,YMMWORD PTR [rip+0x1dfa3e]        # 84a320 <var$630.126.450+0x380>
  66a8e1:	00 
  66a8e2:	c5 fb 10 3d 0e 1c 1e 	vmovsd xmm7,QWORD PTR [rip+0x1e1c0e]        # 84c4f8 <__STRLITPACK_0.112+0x3e8>
  66a8e9:	00 
  66a8ea:	c5 7b 10 1d a6 18 1e 	vmovsd xmm11,QWORD PTR [rip+0x1e18a6]        # 84c198 <__STRLITPACK_0.112+0x88>
  66a8f1:	00 
  66a8f2:	c5 7d 10 05 46 fa 1d 	vmovupd ymm8,YMMWORD PTR [rip+0x1dfa46]        # 84a340 <var$630.126.450+0x3a0>
  66a8f9:	00 
  66a8fa:	48 63 f6             	movsxd rsi,esi
  66a8fd:	45 8d 4a ff          	lea    r9d,[r10-0x1]
  66a901:	4d 63 d2             	movsxd r10,r10d
  66a904:	44 89 8d 10 ec ff ff 	mov    DWORD PTR [rbp-0x13f0],r9d
  66a90b:	4d 89 d1             	mov    r9,r10
  66a90e:	4c 0f af cf          	imul   r9,rdi
  66a912:	4d 0f af ea          	imul   r13,r10
  66a916:	4c 89 d7             	mov    rdi,r10
  66a919:	48 0f af f8          	imul   rdi,rax
  66a91d:	48 89 95 d8 ef ff ff 	mov    QWORD PTR [rbp-0x1028],rdx
  66a924:	48 8d 14 cd 00 00 00 	lea    rdx,[rcx*8+0x0]
  66a92b:	00 
  66a92c:	48 89 b5 10 ea ff ff 	mov    QWORD PTR [rbp-0x15f0],rsi
  66a933:	49 2b f2             	sub    rsi,r10
  66a936:	48 f7 da             	neg    rdx
  66a939:	48 89 85 10 ef ff ff 	mov    QWORD PTR [rbp-0x10f0],rax
  66a940:	48 89 bd 60 ea ff ff 	mov    QWORD PTR [rbp-0x15a0],rdi
  66a947:	4c 89 9d c0 ef ff ff 	mov    QWORD PTR [rbp-0x1040],r11
  66a94e:	48 8d 46 03          	lea    rax,[rsi+0x3]
  66a952:	48 89 85 e0 ec ff ff 	mov    QWORD PTR [rbp-0x1320],rax
  66a959:	48 8d 7e 02          	lea    rdi,[rsi+0x2]
  66a95d:	48 ff c6             	inc    rsi
  66a960:	49 8d 44 cd 00       	lea    rax,[r13+rcx*8+0x0]
  66a965:	48 89 b5 e0 ee ff ff 	mov    QWORD PTR [rbp-0x1120],rsi
  66a96c:	48 89 bd a8 ee ff ff 	mov    QWORD PTR [rbp-0x1158],rdi
  66a973:	4a 8d 3c 2a          	lea    rdi,[rdx+r13*1]
  66a977:	48 63 b5 c8 ee ff ff 	movsxd rsi,DWORD PTR [rbp-0x1138]
  66a97e:	48 89 f1             	mov    rcx,rsi
  66a981:	48 89 bd 20 ea ff ff 	mov    QWORD PTR [rbp-0x15e0],rdi
  66a988:	48 89 f7             	mov    rdi,rsi
  66a98b:	49 0f af fb          	imul   rdi,r11
  66a98f:	49 0f af c8          	imul   rcx,r8
  66a993:	49 89 f3             	mov    r11,rsi
  66a996:	4c 0f af 9d f0 ef ff 	imul   r11,QWORD PTR [rbp-0x1010]
  66a99d:	ff 
  66a99e:	4c 89 a5 f8 ec ff ff 	mov    QWORD PTR [rbp-0x1308],r12
  66a9a5:	4c 89 ad f8 ed ff ff 	mov    QWORD PTR [rbp-0x1208],r13
  66a9ac:	4d 2b ec             	sub    r13,r12
  66a9af:	4c 63 a5 c0 ee ff ff 	movsxd r12,DWORD PTR [rbp-0x1140]
  66a9b6:	48 89 bd 38 ee ff ff 	mov    QWORD PTR [rbp-0x11c8],rdi
  66a9bd:	4c 89 e7             	mov    rdi,r12
  66a9c0:	48 2b fe             	sub    rdi,rsi
  66a9c3:	4d 8b 7f 38          	mov    r15,QWORD PTR [r15+0x38]
  66a9c7:	48 89 95 98 ee ff ff 	mov    QWORD PTR [rbp-0x1168],rdx
  66a9ce:	48 89 f2             	mov    rdx,rsi
  66a9d1:	4c 89 85 e0 ef ff ff 	mov    QWORD PTR [rbp-0x1020],r8
  66a9d8:	4c 89 bd b8 ef ff ff 	mov    QWORD PTR [rbp-0x1048],r15
  66a9df:	4c 8d 47 03          	lea    r8,[rdi+0x3]
  66a9e3:	49 0f af d7          	imul   rdx,r15
  66a9e7:	48 89 8d 68 ea ff ff 	mov    QWORD PTR [rbp-0x1598],rcx
  66a9ee:	4c 8d 7f 02          	lea    r15,[rdi+0x2]
  66a9f2:	48 ff c7             	inc    rdi
  66a9f5:	48 89 bd 88 ef ff ff 	mov    QWORD PTR [rbp-0x1078],rdi
  66a9fc:	89 f9                	mov    ecx,edi
  66a9fe:	89 bd f8 ee ff ff    	mov    DWORD PTR [rbp-0x1108],edi
  66aa04:	83 e1 fe             	and    ecx,0xfffffffe
  66aa07:	83 e7 fc             	and    edi,0xfffffffc
  66aa0a:	48 63 ff             	movsxd rdi,edi
  66aa0d:	48 89 bd 98 ef ff ff 	mov    QWORD PTR [rbp-0x1068],rdi
  66aa14:	48 8b bd 98 e9 ff ff 	mov    rdi,QWORD PTR [rbp-0x1668]
  66aa1b:	4c 89 9d 70 ec ff ff 	mov    QWORD PTR [rbp-0x1390],r11
  66aa22:	49 89 fb             	mov    r11,rdi
  66aa25:	49 f7 db             	neg    r11
  66aa28:	4c 89 85 a0 ee ff ff 	mov    QWORD PTR [rbp-0x1160],r8
  66aa2f:	4d 03 da             	add    r11,r10
  66aa32:	4c 8b 85 a0 e9 ff ff 	mov    r8,QWORD PTR [rbp-0x1660]
  66aa39:	4c 89 95 58 ea ff ff 	mov    QWORD PTR [rbp-0x15a8],r10
  66aa40:	4c 89 8d 48 ee ff ff 	mov    QWORD PTR [rbp-0x11b8],r9
  66aa47:	4d 89 d1             	mov    r9,r10
  66aa4a:	4d 89 c2             	mov    r10,r8
  66aa4d:	49 f7 da             	neg    r10
  66aa50:	4c 03 d6             	add    r10,rsi
  66aa53:	4c 89 bd c8 ef ff ff 	mov    QWORD PTR [rbp-0x1038],r15
  66aa5a:	4d 89 d7             	mov    r15,r10
  66aa5d:	48 63 c9             	movsxd rcx,ecx
  66aa60:	48 89 8d 90 ef ff ff 	mov    QWORD PTR [rbp-0x1070],rcx
  66aa67:	4c 89 d9             	mov    rcx,r11
  66aa6a:	4c 0f af bd a8 ef ff 	imul   r15,QWORD PTR [rbp-0x1058]
  66aa71:	ff 
  66aa72:	48 0f af 8d b0 ed ff 	imul   rcx,QWORD PTR [rbp-0x1250]
  66aa79:	ff 
  66aa7a:	4c 0f af 95 a0 ef ff 	imul   r10,QWORD PTR [rbp-0x1060]
  66aa81:	ff 
  66aa82:	4c 0f af 9d a8 ed ff 	imul   r11,QWORD PTR [rbp-0x1258]
  66aa89:	ff 
  66aa8a:	4d 0f af ce          	imul   r9,r14
  66aa8e:	48 89 b5 d0 ef ff ff 	mov    QWORD PTR [rbp-0x1030],rsi
  66aa95:	4c 89 ad 60 ee ff ff 	mov    QWORD PTR [rbp-0x11a0],r13
  66aa9c:	49 89 f5             	mov    r13,rsi
  66aa9f:	48 8b 73 68          	mov    rsi,QWORD PTR [rbx+0x68]
  66aaa3:	48 89 95 50 ec ff ff 	mov    QWORD PTR [rbp-0x13b0],rdx
  66aaaa:	4c 89 b5 48 ef ff ff 	mov    QWORD PTR [rbp-0x10b8],r14
  66aab1:	4c 03 3e             	add    r15,QWORD PTR [rsi]
  66aab4:	49 03 cf             	add    rcx,r15
  66aab7:	48 89 8d 20 ee ff ff 	mov    QWORD PTR [rbp-0x11e0],rcx
  66aabe:	48 8b 4b 70          	mov    rcx,QWORD PTR [rbx+0x70]
  66aac2:	48 8b 95 f8 ef ff ff 	mov    rdx,QWORD PTR [rbp-0x1008]
  66aac9:	4c 0f af ea          	imul   r13,rdx
  66aacd:	4c 03 11             	add    r10,QWORD PTR [rcx]
  66aad0:	4c 89 c1             	mov    rcx,r8
  66aad3:	4d 03 da             	add    r11,r10
  66aad6:	49 89 fa             	mov    r10,rdi
  66aad9:	4d 0f af d6          	imul   r10,r14
  66aadd:	48 0f af ca          	imul   rcx,rdx
  66aae1:	4c 89 9d 28 ee ff ff 	mov    QWORD PTR [rbp-0x11d8],r11
  66aae8:	4c 8b 9d 38 ef ff ff 	mov    r11,QWORD PTR [rbp-0x10c8]
  66aaef:	4d 89 de             	mov    r14,r11
  66aaf2:	4c 89 8d 40 ee ff ff 	mov    QWORD PTR [rbp-0x11c0],r9
  66aaf9:	4d 2b f2             	sub    r14,r10
  66aafc:	4c 89 95 78 ec ff ff 	mov    QWORD PTR [rbp-0x1388],r10
  66ab03:	4d 2b d1             	sub    r10,r9
  66ab06:	4c 8b 8d 78 ef ff ff 	mov    r9,QWORD PTR [rbp-0x1088]
  66ab0d:	48 8b b5 30 ea ff ff 	mov    rsi,QWORD PTR [rbp-0x15d0]
  66ab14:	4c 8b bd 38 ea ff ff 	mov    r15,QWORD PTR [rbp-0x15c8]
  66ab1b:	4c 89 b5 70 ea ff ff 	mov    QWORD PTR [rbp-0x1590],r14
  66ab22:	4d 03 d9             	add    r11,r9
  66ab25:	4c 8b 8d 40 ea ff ff 	mov    r9,QWORD PTR [rbp-0x15c0]
  66ab2c:	4c 89 ca             	mov    rdx,r9
  66ab2f:	48 0f af d6          	imul   rdx,rsi
  66ab33:	49 0f af f7          	imul   rsi,r15
  66ab37:	4c 8b b5 00 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1300]
  66ab3e:	48 89 8d 80 ea ff ff 	mov    QWORD PTR [rbp-0x1580],rcx
  66ab45:	49 2b cd             	sub    rcx,r13
  66ab48:	4c 89 ad 68 ec ff ff 	mov    QWORD PTR [rbp-0x1398],r13
  66ab4f:	4f 8d 2c 7f          	lea    r13,[r15+r15*2]
  66ab53:	49 c1 e4 03          	shl    r12,0x3
  66ab57:	4e 8d 3c f5 00 00 00 	lea    r15,[r14*8+0x0]
  66ab5e:	00 
  66ab5f:	4d 2b e7             	sub    r12,r15
  66ab62:	48 89 8d 58 ec ff ff 	mov    QWORD PTR [rbp-0x13a8],rcx
  66ab69:	49 03 ca             	add    rcx,r10
  66ab6c:	4c 2b d9             	sub    r11,rcx
  66ab6f:	4c 03 da             	add    r11,rdx
  66ab72:	4c 89 ad 90 ea ff ff 	mov    QWORD PTR [rbp-0x1570],r13
  66ab79:	49 8d 14 04          	lea    rdx,[r12+rax*1]
  66ab7d:	4c 8b ad f8 ec ff ff 	mov    r13,QWORD PTR [rbp-0x1308]
  66ab84:	49 2b d5             	sub    rdx,r13
  66ab87:	48 89 b5 30 ea ff ff 	mov    QWORD PTR [rbp-0x15d0],rsi
  66ab8e:	48 8b b5 50 e2 ff ff 	mov    rsi,QWORD PTR [rbp-0x1db0]
  66ab95:	48 89 8d 30 ee ff ff 	mov    QWORD PTR [rbp-0x11d0],rcx
  66ab9c:	4c 89 95 78 ea ff ff 	mov    QWORD PTR [rbp-0x1588],r10
  66aba3:	4f 8d 14 49          	lea    r10,[r9+r9*2]
  66aba7:	4c 8b 8d 20 ea ff ff 	mov    r9,QWORD PTR [rbp-0x15e0]
  66abae:	48 8d 0c 32          	lea    rcx,[rdx+rsi*1]
  66abb2:	48 89 8d b8 e2 ff ff 	mov    QWORD PTR [rbp-0x1d48],rcx
  66abb9:	48 8b 8d 70 e5 ff ff 	mov    rcx,QWORD PTR [rbp-0x1a90]
  66abc0:	48 03 d1             	add    rdx,rcx
  66abc3:	48 89 95 c0 e2 ff ff 	mov    QWORD PTR [rbp-0x1d40],rdx
  66abca:	48 8b 95 f8 ed ff ff 	mov    rdx,QWORD PTR [rbp-0x1208]
  66abd1:	4c 89 95 88 ea ff ff 	mov    QWORD PTR [rbp-0x1578],r10
  66abd8:	4c 89 9d 20 ed ff ff 	mov    QWORD PTR [rbp-0x12e0],r11
  66abdf:	4c 89 bd 98 ea ff ff 	mov    QWORD PTR [rbp-0x1568],r15
  66abe6:	4d 8d 14 14          	lea    r10,[r12+rdx*1]
  66abea:	4d 03 e1             	add    r12,r9
  66abed:	4d 2b d5             	sub    r10,r13
  66abf0:	4d 2b e5             	sub    r12,r13
  66abf3:	c4 41 1d 57 e4       	vxorpd ymm12,ymm12,ymm12
  66abf8:	4e 8d 1c 16          	lea    r11,[rsi+r10*1]
  66abfc:	4c 89 9d b0 e2 ff ff 	mov    QWORD PTR [rbp-0x1d50],r11
  66ac03:	4c 03 d1             	add    r10,rcx
  66ac06:	4e 8d 34 26          	lea    r14,[rsi+r12*1]
  66ac0a:	4c 03 e1             	add    r12,rcx
  66ac0d:	4c 89 a5 18 ea ff ff 	mov    QWORD PTR [rbp-0x15e8],r12
  66ac14:	4c 8b a5 d0 ef ff ff 	mov    r12,QWORD PTR [rbp-0x1030]
  66ac1b:	4c 89 b5 f8 e0 ff ff 	mov    QWORD PTR [rbp-0x1f08],r14
  66ac22:	4c 89 95 c8 e2 ff ff 	mov    QWORD PTR [rbp-0x1d38],r10
  66ac29:	4c 8b 95 98 ee ff ff 	mov    r10,QWORD PTR [rbp-0x1168]
  66ac30:	4e 8d 1c e5 00 00 00 	lea    r11,[r12*8+0x0]
  66ac37:	00 
  66ac38:	4d 2b df             	sub    r11,r15
  66ac3b:	49 03 c3             	add    rax,r11
  66ac3e:	4d 03 cb             	add    r9,r11
  66ac41:	49 2b c5             	sub    rax,r13
  66ac44:	4d 2b cd             	sub    r9,r13
  66ac47:	4c 8b bd 60 ee ff ff 	mov    r15,QWORD PTR [rbp-0x11a0]
  66ac4e:	4d 03 d3             	add    r10,r11
  66ac51:	4d 03 d7             	add    r10,r15
  66ac54:	4c 8b a5 90 e9 ff ff 	mov    r12,QWORD PTR [rbp-0x1670]
  66ac5b:	4c 89 9d 58 ee ff ff 	mov    QWORD PTR [rbp-0x11a8],r11
  66ac62:	4c 8d 34 06          	lea    r14,[rsi+rax*1]
  66ac66:	48 03 c1             	add    rax,rcx
  66ac69:	48 89 85 28 ea ff ff 	mov    QWORD PTR [rbp-0x15d8],rax
  66ac70:	4a 8d 04 0e          	lea    rax,[rsi+r9*1]
  66ac74:	48 89 85 d8 e9 ff ff 	mov    QWORD PTR [rbp-0x1628],rax
  66ac7b:	4c 03 c9             	add    r9,rcx
  66ac7e:	48 8b 85 58 ea ff ff 	mov    rax,QWORD PTR [rbp-0x15a8]
  66ac85:	4f 8d 24 e3          	lea    r12,[r11+r12*8]
  66ac89:	4c 89 8d 20 ea ff ff 	mov    QWORD PTR [rbp-0x15e0],r9
  66ac90:	4d 03 e7             	add    r12,r15
  66ac93:	4c 8b 8d d0 ee ff ff 	mov    r9,QWORD PTR [rbp-0x1130]
  66ac9a:	4c 89 b5 e0 e9 ff ff 	mov    QWORD PTR [rbp-0x1620],r14
  66aca1:	48 8d 40 ff          	lea    rax,[rax-0x1]
  66aca5:	49 0f af c1          	imul   rax,r9
  66aca9:	49 2b c5             	sub    rax,r13
  66acac:	49 03 c3             	add    rax,r11
  66acaf:	4c 8d 34 01          	lea    r14,[rcx+rax*1]
  66acb3:	4c 89 b5 d0 e9 ff ff 	mov    QWORD PTR [rbp-0x1630],r14
  66acba:	48 03 c6             	add    rax,rsi
  66acbd:	4c 8b b5 10 ea ff ff 	mov    r14,QWORD PTR [rbp-0x15f0]
  66acc4:	48 89 85 e8 e9 ff ff 	mov    QWORD PTR [rbp-0x1618],rax
  66accb:	49 8d 46 02          	lea    rax,[r14+0x2]
  66accf:	49 ff c6             	inc    r14
  66acd2:	49 0f af c1          	imul   rax,r9
  66acd6:	4d 0f af f1          	imul   r14,r9
  66acda:	49 2b c5             	sub    rax,r13
  66acdd:	4d 2b f5             	sub    r14,r13
  66ace0:	49 03 c3             	add    rax,r11
  66ace3:	4d 03 f3             	add    r14,r11
  66ace6:	4c 8d 0c 01          	lea    r9,[rcx+rax*1]
  66acea:	48 03 c6             	add    rax,rsi
  66aced:	48 89 85 f0 e9 ff ff 	mov    QWORD PTR [rbp-0x1610],rax
  66acf4:	4a 8d 04 31          	lea    rax,[rcx+r14*1]
  66acf8:	4c 03 f6             	add    r14,rsi
  66acfb:	4c 89 b5 10 ea ff ff 	mov    QWORD PTR [rbp-0x15f0],r14
  66ad02:	4e 8d 34 11          	lea    r14,[rcx+r10*1]
  66ad06:	4c 89 b5 70 ed ff ff 	mov    QWORD PTR [rbp-0x1290],r14
  66ad0d:	4c 8b b5 d0 e5 ff ff 	mov    r14,QWORD PTR [rbp-0x1a30]
  66ad14:	48 89 85 80 e9 ff ff 	mov    QWORD PTR [rbp-0x1680],rax
  66ad1b:	4c 89 8d c8 e9 ff ff 	mov    QWORD PTR [rbp-0x1638],r9
  66ad22:	4e 8d 0c 16          	lea    r9,[rsi+r10*1]
  66ad26:	4c 89 8d e8 ec ff ff 	mov    QWORD PTR [rbp-0x1318],r9
  66ad2d:	4b 8d 04 32          	lea    rax,[r10+r14*1]
  66ad31:	48 89 85 68 ed ff ff 	mov    QWORD PTR [rbp-0x1298],rax
  66ad38:	48 8b 85 30 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x19d0]
  66ad3f:	4c 03 d0             	add    r10,rax
  66ad42:	4c 89 95 98 ee ff ff 	mov    QWORD PTR [rbp-0x1168],r10
  66ad49:	4c 8b 95 50 e7 ff ff 	mov    r10,QWORD PTR [rbp-0x18b0]
  66ad50:	4f 8d 0c 14          	lea    r9,[r12+r10*1]
  66ad54:	4c 89 8d 60 ed ff ff 	mov    QWORD PTR [rbp-0x12a0],r9
  66ad5b:	4c 8b 8d b0 e7 ff ff 	mov    r9,QWORD PTR [rbp-0x1850]
  66ad62:	4d 03 e1             	add    r12,r9
  66ad65:	4c 89 a5 90 ed ff ff 	mov    QWORD PTR [rbp-0x1270],r12
  66ad6c:	4d 8d 24 13          	lea    r12,[r11+rdx*1]
  66ad70:	4d 2b e5             	sub    r12,r13
  66ad73:	4d 03 cc             	add    r9,r12
  66ad76:	4d 03 d4             	add    r10,r12
  66ad79:	4c 89 8d 00 ee ff ff 	mov    QWORD PTR [rbp-0x1200],r9
  66ad80:	4c 89 95 08 ee ff ff 	mov    QWORD PTR [rbp-0x11f8],r10
  66ad87:	4f 8d 0c 26          	lea    r9,[r14+r12*1]
  66ad8b:	4c 89 8d 48 ed ff ff 	mov    QWORD PTR [rbp-0x12b8],r9
  66ad92:	4c 8b 8d 90 e6 ff ff 	mov    r9,QWORD PTR [rbp-0x1970]
  66ad99:	4a 8d 14 21          	lea    rdx,[rcx+r12*1]
  66ad9d:	48 89 95 50 ed ff ff 	mov    QWORD PTR [rbp-0x12b0],rdx
  66ada4:	4e 8d 2c 26          	lea    r13,[rsi+r12*1]
  66ada8:	48 8b 95 f0 e6 ff ff 	mov    rdx,QWORD PTR [rbp-0x1910]
  66adaf:	4e 8d 14 20          	lea    r10,[rax+r12*1]
  66adb3:	4c 89 ad 58 ed ff ff 	mov    QWORD PTR [rbp-0x12a8],r13
  66adba:	4f 8d 2c 0c          	lea    r13,[r12+r9*1]
  66adbe:	4c 03 e2             	add    r12,rdx
  66adc1:	4c 89 a5 88 ed ff ff 	mov    QWORD PTR [rbp-0x1278],r12
  66adc8:	4f 8d 24 3b          	lea    r12,[r11+r15*1]
  66adcc:	49 03 c4             	add    rax,r12
  66adcf:	4d 03 f4             	add    r14,r12
  66add2:	48 89 85 10 ee ff ff 	mov    QWORD PTR [rbp-0x11f0],rax
  66add9:	4e 8d 1c 22          	lea    r11,[rdx+r12*1]
  66addd:	48 89 f8             	mov    rax,rdi
  66ade0:	4f 8d 3c 21          	lea    r15,[r9+r12*1]
  66ade4:	4c 8b 8d 40 ef ff ff 	mov    r9,QWORD PTR [rbp-0x10c0]
  66adeb:	49 03 cc             	add    rcx,r12
  66adee:	4c 03 e6             	add    r12,rsi
  66adf1:	4c 89 c6             	mov    rsi,r8
  66adf4:	48 0f af b5 f0 ef ff 	imul   rsi,QWORD PTR [rbp-0x1010]
  66adfb:	ff 
  66adfc:	49 0f af c1          	imul   rax,r9
  66ae00:	4c 0f af 85 c0 ef ff 	imul   r8,QWORD PTR [rbp-0x1040]
  66ae07:	ff 
  66ae08:	4c 89 bd 28 ed ff ff 	mov    QWORD PTR [rbp-0x12d8],r15
  66ae0f:	48 89 f2             	mov    rdx,rsi
  66ae12:	4c 8b bd 30 ef ff ff 	mov    r15,QWORD PTR [rbp-0x10d0]
  66ae19:	4c 89 95 40 ed ff ff 	mov    QWORD PTR [rbp-0x12c0],r10
  66ae20:	4d 89 fa             	mov    r10,r15
  66ae23:	4c 89 b5 18 ee ff ff 	mov    QWORD PTR [rbp-0x11e8],r14
  66ae2a:	4c 2b d0             	sub    r10,rax
  66ae2d:	4c 8b b5 48 ee ff ff 	mov    r14,QWORD PTR [rbp-0x11b8]
  66ae34:	48 89 85 88 ec ff ff 	mov    QWORD PTR [rbp-0x1378],rax
  66ae3b:	49 2b c6             	sub    rax,r14
  66ae3e:	48 89 8d 28 ec ff ff 	mov    QWORD PTR [rbp-0x13d8],rcx
  66ae45:	48 2b 95 70 ec ff ff 	sub    rdx,QWORD PTR [rbp-0x1390]
  66ae4c:	48 8b 8d 80 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x1080]
  66ae53:	4c 89 ad 38 ed ff ff 	mov    QWORD PTR [rbp-0x12c8],r13
  66ae5a:	4c 89 a5 80 ed ff ff 	mov    QWORD PTR [rbp-0x1280],r12
  66ae61:	4c 8d 24 10          	lea    r12,[rax+rdx*1]
  66ae65:	48 89 85 a0 ea ff ff 	mov    QWORD PTR [rbp-0x1560],rax
  66ae6c:	4e 8d 2c 39          	lea    r13,[rcx+r15*1]
  66ae70:	4d 2b ec             	sub    r13,r12
  66ae73:	49 f7 dc             	neg    r12
  66ae76:	4c 03 ad 30 ea ff ff 	add    r13,QWORD PTR [rbp-0x15d0]
  66ae7d:	48 8b 85 58 ea ff ff 	mov    rax,QWORD PTR [rbp-0x15a8]
  66ae84:	4c 89 ad 78 ed ff ff 	mov    QWORD PTR [rbp-0x1288],r13
  66ae8b:	49 89 c5             	mov    r13,rax
  66ae8e:	4c 89 9d 30 ed ff ff 	mov    QWORD PTR [rbp-0x12d0],r11
  66ae95:	4c 8b 9d d8 ed ff ff 	mov    r11,QWORD PTR [rbp-0x1228]
  66ae9c:	4d 0f af eb          	imul   r13,r11
  66aea0:	49 0f af fb          	imul   rdi,r11
  66aea4:	48 0f af 85 18 ef ff 	imul   rax,QWORD PTR [rbp-0x10e8]
  66aeab:	ff 
  66aeac:	4d 2b e8             	sub    r13,r8
  66aeaf:	4c 8b 85 e0 ed ff ff 	mov    r8,QWORD PTR [rbp-0x1220]
  66aeb6:	4d 89 c3             	mov    r11,r8
  66aeb9:	4c 2b df             	sub    r11,rdi
  66aebc:	48 89 85 58 ea ff ff 	mov    QWORD PTR [rbp-0x15a8],rax
  66aec3:	48 8b 85 48 ea ff ff 	mov    rax,QWORD PTR [rbp-0x15b8]
  66aeca:	4c 03 d8             	add    r11,rax
  66aecd:	4d 03 dd             	add    r11,r13
  66aed0:	48 89 95 60 ec ff ff 	mov    QWORD PTR [rbp-0x13a0],rdx
  66aed7:	48 8b 95 38 ee ff ff 	mov    rdx,QWORD PTR [rbp-0x11c8]
  66aede:	4c 03 da             	add    r11,rdx
  66aee1:	4c 89 9d 98 ed ff ff 	mov    QWORD PTR [rbp-0x1268],r11
  66aee8:	4f 8d 1c 00          	lea    r11,[r8+r8*1]
  66aeec:	4c 2b df             	sub    r11,rdi
  66aeef:	49 03 c3             	add    rax,r11
  66aef2:	48 8b bd 88 ea ff ff 	mov    rdi,QWORD PTR [rbp-0x1578]
  66aef9:	4c 03 e8             	add    r13,rax
  66aefc:	48 8b 85 78 ef ff ff 	mov    rax,QWORD PTR [rbp-0x1088]
  66af03:	49 03 d5             	add    rdx,r13
  66af06:	48 89 95 38 ee ff ff 	mov    QWORD PTR [rbp-0x11c8],rdx
  66af0d:	48 8b 95 30 ee ff ff 	mov    rdx,QWORD PTR [rbp-0x11d0]
  66af14:	48 f7 da             	neg    rdx
  66af17:	4c 8d 04 38          	lea    r8,[rax+rdi*1]
  66af1b:	48 03 bd 38 ef ff ff 	add    rdi,QWORD PTR [rbp-0x10c8]
  66af22:	48 03 c7             	add    rax,rdi
  66af25:	48 89 85 78 ef ff ff 	mov    QWORD PTR [rbp-0x1088],rax
  66af2c:	48 03 d0             	add    rdx,rax
  66af2f:	48 8b 85 40 ee ff ff 	mov    rax,QWORD PTR [rbp-0x11c0]
  66af36:	49 89 c3             	mov    r11,rax
  66af39:	4c 2b 9d 80 ea ff ff 	sub    r11,QWORD PTR [rbp-0x1580]
  66af40:	48 8b bd 70 ea ff ff 	mov    rdi,QWORD PTR [rbp-0x1590]
  66af47:	4c 03 df             	add    r11,rdi
  66af4a:	4d 03 d8             	add    r11,r8
  66af4d:	4c 89 9d 80 ee ff ff 	mov    QWORD PTR [rbp-0x1180],r11
  66af54:	4c 8b 9d 48 ef ff ff 	mov    r11,QWORD PTR [rbp-0x10b8]
  66af5b:	4d 89 dd             	mov    r13,r11
  66af5e:	49 f7 dd             	neg    r13
  66af61:	49 03 c5             	add    rax,r13
  66af64:	48 03 c7             	add    rax,rdi
  66af67:	4c 89 85 80 ec ff ff 	mov    QWORD PTR [rbp-0x1380],r8
  66af6e:	49 03 c0             	add    rax,r8
  66af71:	4c 8b 85 90 ea ff ff 	mov    r8,QWORD PTR [rbp-0x1570]
  66af78:	48 8b bd b0 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x1350]
  66af7f:	4c 89 ad b0 ea ff ff 	mov    QWORD PTR [rbp-0x1550],r13
  66af86:	48 89 95 30 ee ff ff 	mov    QWORD PTR [rbp-0x11d0],rdx
  66af8d:	4e 8d 2c 01          	lea    r13,[rcx+r8*1]
  66af91:	4d 03 c7             	add    r8,r15
  66af94:	4c 89 ca             	mov    rdx,r9
  66af97:	49 03 c8             	add    rcx,r8
  66af9a:	4c 8d 04 fd 00 00 00 	lea    r8,[rdi*8+0x0]
  66afa1:	00 
  66afa2:	4c 0f af 85 88 e9 ff 	imul   r8,QWORD PTR [rbp-0x1678]
  66afa9:	ff 
  66afaa:	48 f7 da             	neg    rdx
  66afad:	4c 03 e1             	add    r12,rcx
  66afb0:	4c 89 a5 50 ee ff ff 	mov    QWORD PTR [rbp-0x11b0],r12
  66afb7:	4d 89 f4             	mov    r12,r14
  66afba:	4c 03 f2             	add    r14,rdx
  66afbd:	4c 2b e6             	sub    r12,rsi
  66afc0:	4d 03 f2             	add    r14,r10
  66afc3:	4d 03 e2             	add    r12,r10
  66afc6:	48 2b 85 58 ec ff ff 	sub    rax,QWORD PTR [rbp-0x13a8]
  66afcd:	4d 03 f5             	add    r14,r13
  66afd0:	48 89 85 40 ee ff ff 	mov    QWORD PTR [rbp-0x11c0],rax
  66afd7:	4d 03 e5             	add    r12,r13
  66afda:	48 8b 85 60 ec ff ff 	mov    rax,QWORD PTR [rbp-0x13a0]
  66afe1:	4c 2b f0             	sub    r14,rax
  66afe4:	4c 8b bd f0 ec ff ff 	mov    r15,QWORD PTR [rbp-0x1310]
  66afeb:	4c 89 a5 70 ee ff ff 	mov    QWORD PTR [rbp-0x1190],r12
  66aff2:	4c 89 b5 48 ee ff ff 	mov    QWORD PTR [rbp-0x11b8],r14
  66aff9:	4d 89 fe             	mov    r14,r15
  66affc:	4c 8b a5 a8 ec ff ff 	mov    r12,QWORD PTR [rbp-0x1358]
  66b003:	4c 2b e7             	sub    r12,rdi
  66b006:	49 c1 e6 05          	shl    r14,0x5
  66b00a:	49 ff c4             	inc    r12
  66b00d:	49 c1 e7 0b          	shl    r15,0xb
  66b011:	4c 89 a5 e8 ee ff ff 	mov    QWORD PTR [rbp-0x1118],r12
  66b018:	4d 89 c4             	mov    r12,r8
  66b01b:	4d 2b fe             	sub    r15,r14
  66b01e:	4c 89 bd c8 eb ff ff 	mov    QWORD PTR [rbp-0x1438],r15
  66b025:	4c 8b bd f8 ec ff ff 	mov    r15,QWORD PTR [rbp-0x1308]
  66b02c:	4d 2b e7             	sub    r12,r15
  66b02f:	4c 8b b5 58 ee ff ff 	mov    r14,QWORD PTR [rbp-0x11a8]
  66b036:	4d 03 e6             	add    r12,r14
  66b039:	4d 03 f0             	add    r14,r8
  66b03c:	4c 8b 85 70 e5 ff ff 	mov    r8,QWORD PTR [rbp-0x1a90]
  66b043:	4d 2b f7             	sub    r14,r15
  66b046:	48 89 8d 80 ef ff ff 	mov    QWORD PTR [rbp-0x1080],rcx
  66b04d:	48 89 b5 a8 ea ff ff 	mov    QWORD PTR [rbp-0x1558],rsi
  66b054:	4f 8d 3c 20          	lea    r15,[r8+r12*1]
  66b058:	4c 89 bd a0 ed ff ff 	mov    QWORD PTR [rbp-0x1260],r15
  66b05f:	4c 8b bd 50 e2 ff ff 	mov    r15,QWORD PTR [rbp-0x1db0]
  66b066:	4d 03 e7             	add    r12,r15
  66b069:	4c 89 a5 68 ee ff ff 	mov    QWORD PTR [rbp-0x1198],r12
  66b070:	4f 8d 24 37          	lea    r12,[r15+r14*1]
  66b074:	4c 89 a5 f0 ee ff ff 	mov    QWORD PTR [rbp-0x1110],r12
  66b07b:	49 89 fc             	mov    r12,rdi
  66b07e:	4d 03 f0             	add    r14,r8
  66b081:	4d 0f af e1          	imul   r12,r9
  66b085:	4c 89 b5 58 ee ff ff 	mov    QWORD PTR [rbp-0x11a8],r14
  66b08c:	4e 8d 0c 22          	lea    r9,[rdx+r12*1]
  66b090:	4d 03 ca             	add    r9,r10
  66b093:	48 2b d6             	sub    rdx,rsi
  66b096:	4c 8b b5 88 ec ff ff 	mov    r14,QWORD PTR [rbp-0x1378]
  66b09d:	4d 03 cd             	add    r9,r13
  66b0a0:	4d 2b f4             	sub    r14,r12
  66b0a3:	4c 2b c8             	sub    r9,rax
  66b0a6:	49 03 c6             	add    rax,r14
  66b0a9:	4c 2b f2             	sub    r14,rdx
  66b0ac:	48 f7 d8             	neg    rax
  66b0af:	49 f7 de             	neg    r14
  66b0b2:	48 03 c1             	add    rax,rcx
  66b0b5:	4c 03 f1             	add    r14,rcx
  66b0b8:	48 89 f9             	mov    rcx,rdi
  66b0bb:	4c 2b e6             	sub    r12,rsi
  66b0be:	49 0f af cb          	imul   rcx,r11
  66b0c2:	48 89 85 60 ec ff ff 	mov    QWORD PTR [rbp-0x13a0],rax
  66b0c9:	4d 03 d4             	add    r10,r12
  66b0cc:	48 8b 85 b0 ea ff ff 	mov    rax,QWORD PTR [rbp-0x1550]
  66b0d3:	4d 03 ea             	add    r13,r10
  66b0d6:	48 8b b5 70 ea ff ff 	mov    rsi,QWORD PTR [rbp-0x1590]
  66b0dd:	4c 89 8d 30 ec ff ff 	mov    QWORD PTR [rbp-0x13d0],r9
  66b0e4:	4c 8b 95 78 ec ff ff 	mov    r10,QWORD PTR [rbp-0x1388]
  66b0eb:	48 8d 14 08          	lea    rdx,[rax+rcx*1]
  66b0ef:	48 03 d6             	add    rdx,rsi
  66b0f2:	4c 2b d1             	sub    r10,rcx
  66b0f5:	4c 8b 8d 80 ec ff ff 	mov    r9,QWORD PTR [rbp-0x1380]
  66b0fc:	49 03 d1             	add    rdx,r9
  66b0ff:	4c 8b 9d 58 ec ff ff 	mov    r11,QWORD PTR [rbp-0x13a8]
  66b106:	49 2b d3             	sub    rdx,r11
  66b109:	4d 03 da             	add    r11,r10
  66b10c:	49 f7 db             	neg    r11
  66b10f:	48 89 95 38 ec ff ff 	mov    QWORD PTR [rbp-0x13c8],rdx
  66b116:	48 8b 95 80 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1580]
  66b11d:	48 2b ca             	sub    rcx,rdx
  66b120:	4c 8b a5 78 ef ff ff 	mov    r12,QWORD PTR [rbp-0x1088]
  66b127:	4d 03 dc             	add    r11,r12
  66b12a:	4c 89 9d 58 ec ff ff 	mov    QWORD PTR [rbp-0x13a8],r11
  66b131:	48 2b c2             	sub    rax,rdx
  66b134:	4c 8b 9d 98 e9 ff ff 	mov    r11,QWORD PTR [rbp-0x1668]
  66b13b:	48 03 f1             	add    rsi,rcx
  66b13e:	4c 89 d9             	mov    rcx,r11
  66b141:	4c 2b d0             	sub    r10,rax
  66b144:	48 8b 85 20 ef ff ff 	mov    rax,QWORD PTR [rbp-0x10e0]
  66b14b:	49 f7 da             	neg    r10
  66b14e:	48 0f af c8          	imul   rcx,rax
  66b152:	48 0f af f8          	imul   rdi,rax
  66b156:	4c 03 ce             	add    r9,rsi
  66b159:	4d 03 d4             	add    r10,r12
  66b15c:	48 8b b5 88 ee ff ff 	mov    rsi,QWORD PTR [rbp-0x1178]
  66b163:	48 2b f1             	sub    rsi,rcx
  66b166:	48 8b 8d a0 e9 ff ff 	mov    rcx,QWORD PTR [rbp-0x1660]
  66b16d:	48 89 c8             	mov    rax,rcx
  66b170:	4c 8b a5 e0 ef ff ff 	mov    r12,QWORD PTR [rbp-0x1020]
  66b177:	49 0f af c4          	imul   rax,r12
  66b17b:	48 8d 14 3e          	lea    rdx,[rsi+rdi*1]
  66b17f:	48 2b f8             	sub    rdi,rax
  66b182:	48 03 f7             	add    rsi,rdi
  66b185:	48 8b bd 68 ea ff ff 	mov    rdi,QWORD PTR [rbp-0x1598]
  66b18c:	48 2b c7             	sub    rax,rdi
  66b18f:	48 2b d0             	sub    rdx,rax
  66b192:	48 89 95 50 ef ff ff 	mov    QWORD PTR [rbp-0x10b0],rdx
  66b199:	4a 8d 04 67          	lea    rax,[rdi+r12*2]
  66b19d:	48 03 f0             	add    rsi,rax
  66b1a0:	48 89 b5 88 ee ff ff 	mov    QWORD PTR [rbp-0x1178],rsi
  66b1a7:	48 8b b5 f0 ef ff ff 	mov    rsi,QWORD PTR [rbp-0x1010]
  66b1ae:	48 8b bd 70 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x1390]
  66b1b5:	4c 8b a5 f8 ef ff ff 	mov    r12,QWORD PTR [rbp-0x1008]
  66b1bc:	48 8d 14 77          	lea    rdx,[rdi+rsi*2]
  66b1c0:	4c 03 ea             	add    r13,rdx
  66b1c3:	4c 03 f2             	add    r14,rdx
  66b1c6:	4c 89 ad 90 ec ff ff 	mov    QWORD PTR [rbp-0x1370],r13
  66b1cd:	4c 8b ad 68 ec ff ff 	mov    r13,QWORD PTR [rbp-0x1398]
  66b1d4:	4c 89 b5 88 ec ff ff 	mov    QWORD PTR [rbp-0x1378],r14
  66b1db:	8b 95 c8 ee ff ff    	mov    edx,DWORD PTR [rbp-0x1138]
  66b1e1:	4f 8d 74 65 00       	lea    r14,[r13+r12*2+0x0]
  66b1e6:	4d 03 d6             	add    r10,r14
  66b1e9:	4d 03 ce             	add    r9,r14
  66b1ec:	4c 89 95 78 ec ff ff 	mov    QWORD PTR [rbp-0x1388],r10
  66b1f3:	44 8b 95 c0 ee ff ff 	mov    r10d,DWORD PTR [rbp-0x1140]
  66b1fa:	4c 89 8d 80 ec ff ff 	mov    QWORD PTR [rbp-0x1380],r9
  66b201:	44 8d 4a ff          	lea    r9d,[rdx-0x1]
  66b205:	44 89 8d 00 ef ff ff 	mov    DWORD PTR [rbp-0x1100],r9d
  66b20c:	48 8b 95 58 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x15a8]
  66b213:	41 8d 42 01          	lea    eax,[r10+0x1]
  66b217:	4c 8b 95 c8 ef ff ff 	mov    r10,QWORD PTR [rbp-0x1038]
  66b21e:	89 85 08 ef ff ff    	mov    DWORD PTR [rbp-0x10f8],eax
  66b224:	41 83 e2 fc          	and    r10d,0xfffffffc
  66b228:	4d 63 d2             	movsxd r10,r10d
  66b22b:	4c 89 95 b0 ef ff ff 	mov    QWORD PTR [rbp-0x1050],r10
  66b232:	4d 89 da             	mov    r10,r11
  66b235:	4c 0f af 9d 10 ef ff 	imul   r11,QWORD PTR [rbp-0x10f0]
  66b23c:	ff 
  66b23d:	4c 0f af 95 18 ef ff 	imul   r10,QWORD PTR [rbp-0x10e8]
  66b244:	ff 
  66b245:	4c 29 9d 90 ee ff ff 	sub    QWORD PTR [rbp-0x1170],r11
  66b24c:	49 89 cb             	mov    r11,rcx
  66b24f:	48 0f af 8d d8 ef ff 	imul   rcx,QWORD PTR [rbp-0x1028]
  66b256:	ff 
  66b257:	4c 0f af 9d b8 ef ff 	imul   r11,QWORD PTR [rbp-0x1048]
  66b25e:	ff 
  66b25f:	48 8b 85 48 ec ff ff 	mov    rax,QWORD PTR [rbp-0x13b8]
  66b266:	49 2b d3             	sub    rdx,r11
  66b269:	48 89 8d a0 e9 ff ff 	mov    QWORD PTR [rbp-0x1660],rcx
  66b270:	48 89 c1             	mov    rcx,rax
  66b273:	49 2b ca             	sub    rcx,r10
  66b276:	4c 8b 8d 50 ea ff ff 	mov    r9,QWORD PTR [rbp-0x15b0]
  66b27d:	49 03 c9             	add    rcx,r9
  66b280:	48 03 ca             	add    rcx,rdx
  66b283:	4c 8d 1c 00          	lea    r11,[rax+rax*1]
  66b287:	4d 2b da             	sub    r11,r10
  66b28a:	49 89 f2             	mov    r10,rsi
  66b28d:	4c 8b b5 50 ec ff ff 	mov    r14,QWORD PTR [rbp-0x13b0]
  66b294:	49 03 ce             	add    rcx,r14
  66b297:	49 f7 da             	neg    r10
  66b29a:	4d 03 cb             	add    r9,r11
  66b29d:	48 89 8d 40 ec ff ff 	mov    QWORD PTR [rbp-0x13c0],rcx
  66b2a4:	4c 89 e1             	mov    rcx,r12
  66b2a7:	49 03 fa             	add    rdi,r10
  66b2aa:	48 f7 d9             	neg    rcx
  66b2ad:	49 03 d1             	add    rdx,r9
  66b2b0:	4c 03 e9             	add    r13,rcx
  66b2b3:	4c 8b 8d 70 ee ff ff 	mov    r9,QWORD PTR [rbp-0x1190]
  66b2ba:	49 03 f9             	add    rdi,r9
  66b2bd:	48 89 bd 70 ec ff ff 	mov    QWORD PTR [rbp-0x1390],rdi
  66b2c4:	4c 03 f2             	add    r14,rdx
  66b2c7:	8b bd b8 ec ff ff    	mov    edi,DWORD PTR [rbp-0x1348]
  66b2cd:	48 8b 85 80 ee ff ff 	mov    rax,QWORD PTR [rbp-0x1180]
  66b2d4:	4c 03 e8             	add    r13,rax
  66b2d7:	2b bd c0 ec ff ff    	sub    edi,DWORD PTR [rbp-0x1340]
  66b2dd:	4c 89 ad 68 ec ff ff 	mov    QWORD PTR [rbp-0x1398],r13
  66b2e4:	ff c7                	inc    edi
  66b2e6:	4c 8b ad a0 ee ff ff 	mov    r13,QWORD PTR [rbp-0x1160]
  66b2ed:	4c 8b 9d b8 ee ff ff 	mov    r11,QWORD PTR [rbp-0x1148]
  66b2f4:	41 83 e5 fc          	and    r13d,0xfffffffc
  66b2f8:	4d 63 ed             	movsxd r13,r13d
  66b2fb:	4c 89 ad b8 ed ff ff 	mov    QWORD PTR [rbp-0x1248],r13
  66b302:	4e 8d 2c dd 00 00 00 	lea    r13,[r11*8+0x0]
  66b309:	00 
  66b30a:	89 bd 08 ea ff ff    	mov    DWORD PTR [rbp-0x15f8],edi
  66b310:	d1 ef                	shr    edi,1
  66b312:	4c 2b ad 98 ea ff ff 	sub    r13,QWORD PTR [rbp-0x1568]
  66b319:	89 bd 00 ea ff ff    	mov    DWORD PTR [rbp-0x1600],edi
  66b31f:	48 89 bd f8 e9 ff ff 	mov    QWORD PTR [rbp-0x1608],rdi
  66b326:	48 8b bd 60 ee ff ff 	mov    rdi,QWORD PTR [rbp-0x11a0]
  66b32d:	49 03 fd             	add    rdi,r13
  66b330:	4c 03 ad f8 ed ff ff 	add    r13,QWORD PTR [rbp-0x1208]
  66b337:	4c 2b ad f8 ec ff ff 	sub    r13,QWORD PTR [rbp-0x1308]
  66b33e:	4c 89 b5 50 ec ff ff 	mov    QWORD PTR [rbp-0x13b0],r14
  66b345:	48 8b 95 b0 ee ff ff 	mov    rdx,QWORD PTR [rbp-0x1150]
  66b34c:	4d 8d 34 3f          	lea    r14,[r15+rdi*1]
  66b350:	49 03 f8             	add    rdi,r8
  66b353:	4d 03 fd             	add    r15,r13
  66b356:	4d 03 c5             	add    r8,r13
  66b359:	4d 89 dd             	mov    r13,r11
  66b35c:	4c 0f af ee          	imul   r13,rsi
  66b360:	41 2b d3             	sub    edx,r11d
  66b363:	4d 03 d5             	add    r10,r13
  66b366:	48 63 d2             	movsxd rdx,edx
  66b369:	4d 03 d1             	add    r10,r9
  66b36c:	48 ff c2             	inc    rdx
  66b36f:	48 89 95 e8 ef ff ff 	mov    QWORD PTR [rbp-0x1018],rdx
  66b376:	89 95 28 ef ff ff    	mov    DWORD PTR [rbp-0x10d8],edx
  66b37c:	4a 8d 14 2e          	lea    rdx,[rsi+r13*1]
  66b380:	49 03 d1             	add    rdx,r9
  66b383:	49 8d 74 75 00       	lea    rsi,[r13+rsi*2+0x0]
  66b388:	4c 03 ce             	add    r9,rsi
  66b38b:	4c 89 8d 70 ee ff ff 	mov    QWORD PTR [rbp-0x1190],r9
  66b392:	4d 89 d9             	mov    r9,r11
  66b395:	4d 0f af cc          	imul   r9,r12
  66b399:	4c 89 85 78 ee ff ff 	mov    QWORD PTR [rbp-0x1188],r8
  66b3a0:	49 03 c9             	add    rcx,r9
  66b3a3:	4c 8b 85 a8 ea ff ff 	mov    r8,QWORD PTR [rbp-0x1558]
  66b3aa:	48 03 c8             	add    rcx,rax
  66b3ad:	4d 2b c5             	sub    r8,r13
  66b3b0:	4b 8d 34 61          	lea    rsi,[r9+r12*2]
  66b3b4:	4c 8b ad d8 ef ff ff 	mov    r13,QWORD PTR [rbp-0x1028]
  66b3bb:	4d 0f af dd          	imul   r11,r13
  66b3bf:	48 89 8d 58 ef ff ff 	mov    QWORD PTR [rbp-0x10a8],rcx
  66b3c6:	48 8b 8d 80 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x1580]
  66b3cd:	49 2b c9             	sub    rcx,r9
  66b3d0:	48 89 95 e8 ed ff ff 	mov    QWORD PTR [rbp-0x1218],rdx
  66b3d7:	48 8b 95 78 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1588]
  66b3de:	48 03 d1             	add    rdx,rcx
  66b3e1:	48 8b 8d 78 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x1088]
  66b3e8:	4c 89 95 60 ef ff ff 	mov    QWORD PTR [rbp-0x10a0],r10
  66b3ef:	48 2b ca             	sub    rcx,rdx
  66b3f2:	4c 8b 95 60 ea ff ff 	mov    r10,QWORD PTR [rbp-0x15a0]
  66b3f9:	48 8b 95 90 ee ff ff 	mov    rdx,QWORD PTR [rbp-0x1170]
  66b400:	4c 89 bd 68 ef ff ff 	mov    QWORD PTR [rbp-0x1098],r15
  66b407:	4c 8b bd a0 ea ff ff 	mov    r15,QWORD PTR [rbp-0x1560]
  66b40e:	4d 03 f8             	add    r15,r8
  66b411:	4f 8d 04 0c          	lea    r8,[r12+r9*1]
  66b415:	4c 8b a5 a0 e9 ff ff 	mov    r12,QWORD PTR [rbp-0x1660]
  66b41c:	4c 03 c0             	add    r8,rax
  66b41f:	48 03 c6             	add    rax,rsi
  66b422:	48 89 85 80 ee ff ff 	mov    QWORD PTR [rbp-0x1180],rax
  66b429:	4a 8d 04 12          	lea    rax,[rdx+r10*1]
  66b42d:	4d 2b d4             	sub    r10,r12
  66b430:	4d 2b e3             	sub    r12,r11
  66b433:	4c 89 b5 d0 ed ff ff 	mov    QWORD PTR [rbp-0x1230],r14
  66b43a:	49 03 d2             	add    rdx,r10
  66b43d:	48 89 bd 60 ee ff ff 	mov    QWORD PTR [rbp-0x11a0],rdi
  66b444:	4f 8d 34 6b          	lea    r14,[r11+r13*2]
  66b448:	48 8b bd 80 ef ff ff 	mov    rdi,QWORD PTR [rbp-0x1080]
  66b44f:	49 03 d6             	add    rdx,r14
  66b452:	49 2b ff             	sub    rdi,r15
  66b455:	49 2b c4             	sub    rax,r12
  66b458:	4c 89 85 f0 ed ff ff 	mov    QWORD PTR [rbp-0x1210],r8
  66b45f:	41 bb 02 00 00 00    	mov    r11d,0x2
  66b465:	41 ba 01 00 00 00    	mov    r10d,0x1
  66b46b:	48 89 95 90 ee ff ff 	mov    QWORD PTR [rbp-0x1170],rdx
  66b472:	45 33 e4             	xor    r12d,r12d
  66b475:	48 89 8d 78 ef ff ff 	mov    QWORD PTR [rbp-0x1088],rcx
  66b47c:	48 89 bd 80 ef ff ff 	mov    QWORD PTR [rbp-0x1080],rdi
  66b483:	4c 8b b5 00 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1300]
  66b48a:	4c 8b ad d0 ee ff ff 	mov    r13,QWORD PTR [rbp-0x1130]
  66b491:	48 8b 95 d8 ee ff ff 	mov    rdx,QWORD PTR [rbp-0x1128]
  66b498:	48 8b b5 e0 ee ff ff 	mov    rsi,QWORD PTR [rbp-0x1120]
  66b49f:	48 8b 8d f0 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x1010]
  66b4a6:	48 8b bd 20 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x13e0]
  66b4ad:	44 8b 85 b8 ec ff ff 	mov    r8d,DWORD PTR [rbp-0x1348]
  66b4b4:	44 8b 8d c0 ec ff ff 	mov    r9d,DWORD PTR [rbp-0x1340]
  66b4bb:	48 89 85 70 ef ff ff 	mov    QWORD PTR [rbp-0x1090],rax
  66b4c2:	4c 89 e0             	mov    rax,r12
  66b4c5:	45 3b c1             	cmp    r8d,r9d
  66b4c8:	0f 8c 79 c3 00 00    	jl     677847 <gls_corstep_mod_mp_gls_corstep_tile_+0x100d7>
  66b4ce:	48 89 95 d8 ee ff ff 	mov    QWORD PTR [rbp-0x1128],rdx
  66b4d5:	48 8b 95 b0 ee ff ff 	mov    rdx,QWORD PTR [rbp-0x1150]
  66b4dc:	48 3b 95 b8 ee ff ff 	cmp    rdx,QWORD PTR [rbp-0x1148]
  66b4e3:	0f 8c 39 05 00 00    	jl     66ba22 <gls_corstep_mod_mp_gls_corstep_tile_+0x42b2>
  66b4e9:	48 83 bd e8 ef ff ff 	cmp    QWORD PTR [rbp-0x1018],0x4
  66b4f0:	04 
  66b4f1:	0f 8c 49 c3 00 00    	jl     677840 <gls_corstep_mod_mp_gls_corstep_tile_+0x100d0>
  66b4f7:	49 89 c1             	mov    r9,rax
  66b4fa:	4c 0f af 8d d0 ee ff 	imul   r9,QWORD PTR [rbp-0x1130]
  66b501:	ff 
  66b502:	48 8b 95 78 ee ff ff 	mov    rdx,QWORD PTR [rbp-0x1188]
  66b509:	4a 8d 3c 0a          	lea    rdi,[rdx+r9*1]
  66b50d:	48 89 bd a0 e7 ff ff 	mov    QWORD PTR [rbp-0x1860],rdi
  66b514:	48 83 e7 0f          	and    rdi,0xf
  66b518:	85 ff                	test   edi,edi
  66b51a:	74 11                	je     66b52d <gls_corstep_mod_mp_gls_corstep_tile_+0x3dbd>
  66b51c:	f7 c7 07 00 00 00    	test   edi,0x7
  66b522:	0f 85 18 c3 00 00    	jne    677840 <gls_corstep_mod_mp_gls_corstep_tile_+0x100d0>
  66b528:	bf 01 00 00 00       	mov    edi,0x1
  66b52d:	41 89 fb             	mov    r11d,edi
  66b530:	49 8d 53 04          	lea    rdx,[r11+0x4]
  66b534:	48 3b 95 e8 ef ff ff 	cmp    rdx,QWORD PTR [rbp-0x1018]
  66b53b:	0f 8f ff c2 00 00    	jg     677840 <gls_corstep_mod_mp_gls_corstep_tile_+0x100d0>
  66b541:	8b b5 28 ef ff ff    	mov    esi,DWORD PTR [rbp-0x10d8]
  66b547:	89 f2                	mov    edx,esi
  66b549:	2b d7                	sub    edx,edi
  66b54b:	45 33 c0             	xor    r8d,r8d
  66b54e:	83 e2 03             	and    edx,0x3
  66b551:	f7 da                	neg    edx
  66b553:	4c 8b ad d8 ee ff ff 	mov    r13,QWORD PTR [rbp-0x1128]
  66b55a:	03 d6                	add    edx,esi
  66b55c:	48 8b b5 30 ef ff ff 	mov    rsi,QWORD PTR [rbp-0x10d0]
  66b563:	49 0f af f5          	imul   rsi,r13
  66b567:	4c 8b a5 38 ef ff ff 	mov    r12,QWORD PTR [rbp-0x10c8]
  66b56e:	4d 0f af e5          	imul   r12,r13
  66b572:	4c 8b ad 40 ef ff ff 	mov    r13,QWORD PTR [rbp-0x10c0]
  66b579:	4c 0f af e8          	imul   r13,rax
  66b57d:	4c 8b b5 68 ef ff ff 	mov    r14,QWORD PTR [rbp-0x1098]
  66b584:	4c 8b bd 60 ef ff ff 	mov    r15,QWORD PTR [rbp-0x10a0]
  66b58b:	48 63 d2             	movsxd rdx,edx
  66b58e:	4c 89 85 98 e6 ff ff 	mov    QWORD PTR [rbp-0x1968],r8
  66b595:	4f 8d 14 31          	lea    r10,[r9+r14*1]
  66b599:	4c 89 95 a8 e7 ff ff 	mov    QWORD PTR [rbp-0x1858],r10
  66b5a0:	4d 8d 34 37          	lea    r14,[r15+rsi*1]
  66b5a4:	4c 8b 95 80 ef ff ff 	mov    r10,QWORD PTR [rbp-0x1080]
  66b5ab:	4d 03 f5             	add    r14,r13
  66b5ae:	4c 89 b5 b8 e7 ff ff 	mov    QWORD PTR [rbp-0x1848],r14
  66b5b5:	4c 8b bd 58 ef ff ff 	mov    r15,QWORD PTR [rbp-0x10a8]
  66b5bc:	4c 89 85 a0 e6 ff ff 	mov    QWORD PTR [rbp-0x1960],r8
  66b5c3:	4d 8d 34 32          	lea    r14,[r10+rsi*1]
  66b5c7:	4d 03 f5             	add    r14,r13
  66b5ca:	4c 89 b5 90 e6 ff ff 	mov    QWORD PTR [rbp-0x1970],r14
  66b5d1:	4f 8d 14 27          	lea    r10,[r15+r12*1]
  66b5d5:	4c 8b b5 48 ef ff ff 	mov    r14,QWORD PTR [rbp-0x10b8]
  66b5dc:	4c 0f af f0          	imul   r14,rax
  66b5e0:	4c 8b bd 78 ef ff ff 	mov    r15,QWORD PTR [rbp-0x1088]
  66b5e7:	4d 03 d6             	add    r10,r14
  66b5ea:	4c 89 95 c0 e7 ff ff 	mov    QWORD PTR [rbp-0x1840],r10
  66b5f1:	4f 8d 14 27          	lea    r10,[r15+r12*1]
  66b5f5:	4c 8b bd 70 ef ff ff 	mov    r15,QWORD PTR [rbp-0x1090]
  66b5fc:	4d 03 d6             	add    r10,r14
  66b5ff:	4c 89 95 c8 e7 ff ff 	mov    QWORD PTR [rbp-0x1838],r10
  66b606:	49 89 c2             	mov    r10,rax
  66b609:	4c 0f af 95 10 ef ff 	imul   r10,QWORD PTR [rbp-0x10f0]
  66b610:	ff 
  66b611:	4d 03 fa             	add    r15,r10
  66b614:	4c 89 bd b0 e7 ff ff 	mov    QWORD PTR [rbp-0x1850],r15
  66b61b:	85 ff                	test   edi,edi
  66b61d:	0f 86 ff 00 00 00    	jbe    66b722 <gls_corstep_mod_mp_gls_corstep_tile_+0x3fb2>
  66b623:	48 89 95 90 e7 ff ff 	mov    QWORD PTR [rbp-0x1870],rdx
  66b62a:	4c 89 95 10 e6 ff ff 	mov    QWORD PTR [rbp-0x19f0],r10
  66b631:	4c 89 b5 18 e6 ff ff 	mov    QWORD PTR [rbp-0x19e8],r14
  66b638:	4c 89 ad 20 e6 ff ff 	mov    QWORD PTR [rbp-0x19e0],r13
  66b63f:	4c 89 8d 98 e7 ff ff 	mov    QWORD PTR [rbp-0x1868],r9
  66b646:	48 89 b5 28 e6 ff ff 	mov    QWORD PTR [rbp-0x19d8],rsi
  66b64d:	4c 89 a5 30 e6 ff ff 	mov    QWORD PTR [rbp-0x19d0],r12
  66b654:	48 89 85 38 e6 ff ff 	mov    QWORD PTR [rbp-0x19c8],rax
  66b65b:	48 8b 85 a0 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x1960]
  66b662:	4c 89 c2             	mov    rdx,r8
  66b665:	48 8b b5 98 e6 ff ff 	mov    rsi,QWORD PTR [rbp-0x1968]
  66b66c:	4c 89 ff             	mov    rdi,r15
  66b66f:	4c 8b 8d c8 e7 ff ff 	mov    r9,QWORD PTR [rbp-0x1838]
  66b676:	4c 8b 95 c0 e7 ff ff 	mov    r10,QWORD PTR [rbp-0x1840]
  66b67d:	4c 8b a5 90 e6 ff ff 	mov    r12,QWORD PTR [rbp-0x1970]
  66b684:	4c 8b ad b8 e7 ff ff 	mov    r13,QWORD PTR [rbp-0x1848]
  66b68b:	4c 8b b5 a8 e7 ff ff 	mov    r14,QWORD PTR [rbp-0x1858]
  66b692:	4c 8b bd a0 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1860]
  66b699:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  66b6a0:	c4 a1 7b 10 04 20    	vmovsd xmm0,QWORD PTR [rax+r12*1]
  66b6a6:	c4 81 7b 10 0c 08    	vmovsd xmm1,QWORD PTR [r8+r9*1]
  66b6ac:	c5 fb 10 2c 3a       	vmovsd xmm5,QWORD PTR [rdx+rdi*1]
  66b6b1:	48 03 95 d8 ef ff ff 	add    rdx,QWORD PTR [rbp-0x1028]
  66b6b8:	c4 a1 7b 5c 14 28    	vsubsd xmm2,xmm0,QWORD PTR [rax+r13*1]
  66b6be:	48 03 c1             	add    rax,rcx
  66b6c1:	c4 81 73 5c 24 10    	vsubsd xmm4,xmm1,QWORD PTR [r8+r10*1]
  66b6c7:	c5 eb 59 dd          	vmulsd xmm3,xmm2,xmm5
  66b6cb:	c5 db 59 f5          	vmulsd xmm6,xmm4,xmm5
  66b6cf:	c4 c1 7b 11 1c f6    	vmovsd QWORD PTR [r14+rsi*8],xmm3
  66b6d5:	c4 c1 7b 11 34 f7    	vmovsd QWORD PTR [r15+rsi*8],xmm6
  66b6db:	48 ff c6             	inc    rsi
  66b6de:	4c 03 85 f8 ef ff ff 	add    r8,QWORD PTR [rbp-0x1008]
  66b6e5:	49 3b f3             	cmp    rsi,r11
  66b6e8:	72 b6                	jb     66b6a0 <gls_corstep_mod_mp_gls_corstep_tile_+0x3f30>
  66b6ea:	48 8b 95 90 e7 ff ff 	mov    rdx,QWORD PTR [rbp-0x1870]
  66b6f1:	4c 8b 95 10 e6 ff ff 	mov    r10,QWORD PTR [rbp-0x19f0]
  66b6f8:	4c 8b b5 18 e6 ff ff 	mov    r14,QWORD PTR [rbp-0x19e8]
  66b6ff:	4c 8b ad 20 e6 ff ff 	mov    r13,QWORD PTR [rbp-0x19e0]
  66b706:	4c 8b 8d 98 e7 ff ff 	mov    r9,QWORD PTR [rbp-0x1868]
  66b70d:	48 8b b5 28 e6 ff ff 	mov    rsi,QWORD PTR [rbp-0x19d8]
  66b714:	4c 8b a5 30 e6 ff ff 	mov    r12,QWORD PTR [rbp-0x19d0]
  66b71b:	48 8b 85 38 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x19c8]
  66b722:	4c 8b bd d0 ed ff ff 	mov    r15,QWORD PTR [rbp-0x1230]
  66b729:	48 8b bd d8 ef ff ff 	mov    rdi,QWORD PTR [rbp-0x1028]
  66b730:	49 0f af fb          	imul   rdi,r11
  66b734:	48 89 bd 80 e2 ff ff 	mov    QWORD PTR [rbp-0x1d80],rdi
  66b73b:	4d 03 f9             	add    r15,r9
  66b73e:	4c 89 bd d0 e7 ff ff 	mov    QWORD PTR [rbp-0x1830],r15
  66b745:	48 89 cf             	mov    rdi,rcx
  66b748:	4c 8b bd e8 ed ff ff 	mov    r15,QWORD PTR [rbp-0x1218]
  66b74f:	4c 03 8d 60 ee ff ff 	add    r9,QWORD PTR [rbp-0x11a0]
  66b756:	4c 8b 85 f8 ef ff ff 	mov    r8,QWORD PTR [rbp-0x1008]
  66b75d:	48 89 95 90 e7 ff ff 	mov    QWORD PTR [rbp-0x1870],rdx
  66b764:	4c 03 fe             	add    r15,rsi
  66b767:	48 03 b5 70 ee ff ff 	add    rsi,QWORD PTR [rbp-0x1190]
  66b76e:	4d 03 fd             	add    r15,r13
  66b771:	4c 03 ee             	add    r13,rsi
  66b774:	48 8b b5 f0 ed ff ff 	mov    rsi,QWORD PTR [rbp-0x1210]
  66b77b:	4c 89 8d 98 e7 ff ff 	mov    QWORD PTR [rbp-0x1868],r9
  66b782:	48 89 85 38 e6 ff ff 	mov    QWORD PTR [rbp-0x19c8],rax
  66b789:	4c 03 95 90 ee ff ff 	add    r10,QWORD PTR [rbp-0x1170]
  66b790:	49 03 f4             	add    rsi,r12
  66b793:	4c 03 a5 80 ee ff ff 	add    r12,QWORD PTR [rbp-0x1180]
  66b79a:	49 03 f6             	add    rsi,r14
  66b79d:	48 8b 85 80 e2 ff ff 	mov    rax,QWORD PTR [rbp-0x1d80]
  66b7a4:	4d 03 f4             	add    r14,r12
  66b7a7:	48 8b 95 90 e6 ff ff 	mov    rdx,QWORD PTR [rbp-0x1970]
  66b7ae:	4c 8b 8d d8 ef ff ff 	mov    r9,QWORD PTR [rbp-0x1028]
  66b7b5:	4d 89 c4             	mov    r12,r8
  66b7b8:	4d 0f af c3          	imul   r8,r11
  66b7bc:	49 0f af fb          	imul   rdi,r11
  66b7c0:	4c 89 bd d8 e7 ff ff 	mov    QWORD PTR [rbp-0x1828],r15
  66b7c7:	4c 8d 3c 3a          	lea    r15,[rdx+rdi*1]
  66b7cb:	c4 c1 7b 10 07       	vmovsd xmm0,QWORD PTR [r15]
  66b7d0:	c4 c1 79 16 14 0f    	vmovhpd xmm2,xmm0,QWORD PTR [r15+rcx*1]
  66b7d6:	4c 8b bd b8 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1848]
  66b7dd:	4c 03 ff             	add    r15,rdi
  66b7e0:	c4 c1 7b 10 0f       	vmovsd xmm1,QWORD PTR [r15]
  66b7e5:	c4 c1 71 16 1c 0f    	vmovhpd xmm3,xmm1,QWORD PTR [r15+rcx*1]
  66b7eb:	4c 8b bd c8 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1838]
  66b7f2:	c5 69 5c fb          	vsubpd xmm15,xmm2,xmm3
  66b7f6:	4d 03 f8             	add    r15,r8
  66b7f9:	c4 c1 7b 10 27       	vmovsd xmm4,QWORD PTR [r15]
  66b7fe:	c4 81 59 16 34 27    	vmovhpd xmm6,xmm4,QWORD PTR [r15+r12*1]
  66b804:	4c 8b bd c0 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1840]
  66b80b:	4d 03 f8             	add    r15,r8
  66b80e:	c4 c1 7b 10 2f       	vmovsd xmm5,QWORD PTR [r15]
  66b813:	c4 01 51 16 2c 27    	vmovhpd xmm13,xmm5,QWORD PTR [r15+r12*1]
  66b819:	4c 8b bd b0 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1850]
  66b820:	c4 c1 49 5c c5       	vsubpd xmm0,xmm6,xmm13
  66b825:	4c 03 f8             	add    r15,rax
  66b828:	c4 41 7b 10 37       	vmovsd xmm14,QWORD PTR [r15]
  66b82d:	c4 01 09 16 34 0f    	vmovhpd xmm14,xmm14,QWORD PTR [r15+r9*1]
  66b833:	c4 41 09 59 ff       	vmulpd xmm15,xmm14,xmm15
  66b838:	c5 89 59 c8          	vmulpd xmm1,xmm14,xmm0
  66b83c:	4c 8b bd a8 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1858]
  66b843:	c4 01 79 11 3c df    	vmovupd XMMWORD PTR [r15+r11*8],xmm15
  66b849:	4c 8b bd a0 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1860]
  66b850:	c4 81 79 11 0c df    	vmovupd XMMWORD PTR [r15+r11*8],xmm1
  66b856:	4d 8d 7c 3d 00       	lea    r15,[r13+rdi*1+0x0]
  66b85b:	c4 c1 7b 10 17       	vmovsd xmm2,QWORD PTR [r15]
  66b860:	c4 c1 69 16 24 0f    	vmovhpd xmm4,xmm2,QWORD PTR [r15+rcx*1]
  66b866:	4c 8b bd d8 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1828]
  66b86d:	4c 03 ff             	add    r15,rdi
  66b870:	c4 c1 7b 10 1f       	vmovsd xmm3,QWORD PTR [r15]
  66b875:	48 8d 3c 8f          	lea    rdi,[rdi+rcx*4]
  66b879:	c4 c1 61 16 2c 0f    	vmovhpd xmm5,xmm3,QWORD PTR [r15+rcx*1]
  66b87f:	4f 8d 3c 06          	lea    r15,[r14+r8*1]
  66b883:	c4 c1 7b 10 37       	vmovsd xmm6,QWORD PTR [r15]
  66b888:	c5 d9 5c cd          	vsubpd xmm1,xmm4,xmm5
  66b88c:	c4 81 49 16 34 27    	vmovhpd xmm6,xmm6,QWORD PTR [r15+r12*1]
  66b892:	4e 8d 3c 06          	lea    r15,[rsi+r8*1]
  66b896:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  66b89b:	4f 8d 04 a0          	lea    r8,[r8+r12*4]
  66b89f:	c4 01 11 16 2c 27    	vmovhpd xmm13,xmm13,QWORD PTR [r15+r12*1]
  66b8a5:	4d 8d 3c 02          	lea    r15,[r10+rax*1]
  66b8a9:	c4 c1 7b 10 07       	vmovsd xmm0,QWORD PTR [r15]
  66b8ae:	4a 8d 04 88          	lea    rax,[rax+r9*4]
  66b8b2:	c4 c1 49 5c e5       	vsubpd xmm4,xmm6,xmm13
  66b8b7:	c4 81 79 16 1c 0f    	vmovhpd xmm3,xmm0,QWORD PTR [r15+r9*1]
  66b8bd:	c5 e1 59 d1          	vmulpd xmm2,xmm3,xmm1
  66b8c1:	c5 e1 59 ec          	vmulpd xmm5,xmm3,xmm4
  66b8c5:	4c 8b bd d0 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1830]
  66b8cc:	c4 81 79 11 54 df 10 	vmovupd XMMWORD PTR [r15+r11*8+0x10],xmm2
  66b8d3:	4c 8b bd 98 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1868]
  66b8da:	c4 81 79 11 6c df 10 	vmovupd XMMWORD PTR [r15+r11*8+0x10],xmm5
  66b8e1:	49 83 c3 04          	add    r11,0x4
  66b8e5:	90                   	nop
  66b8e6:	4c 3b 9d 90 e7 ff ff 	cmp    r11,QWORD PTR [rbp-0x1870]
  66b8ed:	0f 82 d4 fe ff ff    	jb     66b7c7 <gls_corstep_mod_mp_gls_corstep_tile_+0x4057>
  66b8f3:	48 8b 95 90 e7 ff ff 	mov    rdx,QWORD PTR [rbp-0x1870]
  66b8fa:	48 8b 85 38 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x19c8]
  66b901:	49 89 ca             	mov    r10,rcx
  66b904:	4c 8b a5 d8 ef ff ff 	mov    r12,QWORD PTR [rbp-0x1028]
  66b90b:	4c 8b 9d f8 ef ff ff 	mov    r11,QWORD PTR [rbp-0x1008]
  66b912:	4c 0f af e2          	imul   r12,rdx
  66b916:	4c 0f af da          	imul   r11,rdx
  66b91a:	4c 0f af d2          	imul   r10,rdx
  66b91e:	48 3b 95 e8 ef ff ff 	cmp    rdx,QWORD PTR [rbp-0x1018]
  66b925:	0f 83 f7 00 00 00    	jae    66ba22 <gls_corstep_mod_mp_gls_corstep_tile_+0x42b2>
  66b92b:	49 89 c0             	mov    r8,rax
  66b92e:	4c 8b 8d d8 ee ff ff 	mov    r9,QWORD PTR [rbp-0x1128]
  66b935:	48 8b b5 30 ef ff ff 	mov    rsi,QWORD PTR [rbp-0x10d0]
  66b93c:	4c 0f af 85 d0 ee ff 	imul   r8,QWORD PTR [rbp-0x1130]
  66b943:	ff 
  66b944:	49 0f af f1          	imul   rsi,r9
  66b948:	4c 8b bd 40 ef ff ff 	mov    r15,QWORD PTR [rbp-0x10c0]
  66b94f:	4c 0f af f8          	imul   r15,rax
  66b953:	48 8b bd 68 ef ff ff 	mov    rdi,QWORD PTR [rbp-0x1098]
  66b95a:	4c 8b ad 60 ef ff ff 	mov    r13,QWORD PTR [rbp-0x10a0]
  66b961:	4c 8b b5 38 ef ff ff 	mov    r14,QWORD PTR [rbp-0x10c8]
  66b968:	4d 0f af f1          	imul   r14,r9
  66b96c:	48 89 85 38 e6 ff ff 	mov    QWORD PTR [rbp-0x19c8],rax
  66b973:	4e 8d 0c 07          	lea    r9,[rdi+r8*1]
  66b977:	4c 03 85 78 ee ff ff 	add    r8,QWORD PTR [rbp-0x1188]
  66b97e:	49 8d 7c 35 00       	lea    rdi,[r13+rsi*1+0x0]
  66b983:	48 03 b5 80 ef ff ff 	add    rsi,QWORD PTR [rbp-0x1080]
  66b98a:	49 03 ff             	add    rdi,r15
  66b98d:	49 03 f7             	add    rsi,r15
  66b990:	4c 8b bd 48 ef ff ff 	mov    r15,QWORD PTR [rbp-0x10b8]
  66b997:	4c 0f af f8          	imul   r15,rax
  66b99b:	4c 8b ad 58 ef ff ff 	mov    r13,QWORD PTR [rbp-0x10a8]
  66b9a2:	4d 03 ee             	add    r13,r14
  66b9a5:	4c 03 b5 78 ef ff ff 	add    r14,QWORD PTR [rbp-0x1088]
  66b9ac:	4d 03 ef             	add    r13,r15
  66b9af:	4d 03 f7             	add    r14,r15
  66b9b2:	49 89 c7             	mov    r15,rax
  66b9b5:	4c 0f af bd 10 ef ff 	imul   r15,QWORD PTR [rbp-0x10f0]
  66b9bc:	ff 
  66b9bd:	4c 03 bd 70 ef ff ff 	add    r15,QWORD PTR [rbp-0x1090]
  66b9c4:	48 8b 85 f8 ef ff ff 	mov    rax,QWORD PTR [rbp-0x1008]
  66b9cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  66b9d0:	c4 c1 7b 10 04 32    	vmovsd xmm0,QWORD PTR [r10+rsi*1]
  66b9d6:	c4 81 7b 10 0c 33    	vmovsd xmm1,QWORD PTR [r11+r14*1]
  66b9dc:	c4 81 7b 10 2c 3c    	vmovsd xmm5,QWORD PTR [r12+r15*1]
  66b9e2:	4c 03 a5 d8 ef ff ff 	add    r12,QWORD PTR [rbp-0x1028]
  66b9e9:	c4 c1 7b 5c 14 3a    	vsubsd xmm2,xmm0,QWORD PTR [r10+rdi*1]
  66b9ef:	4c 03 d1             	add    r10,rcx
  66b9f2:	c4 81 73 5c 24 2b    	vsubsd xmm4,xmm1,QWORD PTR [r11+r13*1]
  66b9f8:	c5 eb 59 dd          	vmulsd xmm3,xmm2,xmm5
  66b9fc:	c5 db 59 f5          	vmulsd xmm6,xmm4,xmm5
  66ba00:	c4 c1 7b 11 1c d1    	vmovsd QWORD PTR [r9+rdx*8],xmm3
  66ba06:	4c 03 d8             	add    r11,rax
  66ba09:	c4 c1 7b 11 34 d0    	vmovsd QWORD PTR [r8+rdx*8],xmm6
  66ba0f:	48 ff c2             	inc    rdx
  66ba12:	48 3b 95 e8 ef ff ff 	cmp    rdx,QWORD PTR [rbp-0x1018]
  66ba19:	72 b5                	jb     66b9d0 <gls_corstep_mod_mp_gls_corstep_tile_+0x4260>
  66ba1b:	48 8b 85 38 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x19c8]
  66ba22:	48 ff c0             	inc    rax
  66ba25:	48 3b 85 e0 ee ff ff 	cmp    rax,QWORD PTR [rbp-0x1120]
  66ba2c:	0f 83 46 90 00 00    	jae    674a78 <gls_corstep_mod_mp_gls_corstep_tile_+0xd308>
  66ba32:	e9 9e fa ff ff       	jmp    66b4d5 <gls_corstep_mod_mp_gls_corstep_tile_+0x3d65>
  66ba37:	53                   	push   rbx
  66ba38:	48 89 e3             	mov    rbx,rsp
  66ba3b:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
  66ba3f:	55                   	push   rbp
  66ba40:	55                   	push   rbp
  66ba41:	48 8b 6b 08          	mov    rbp,QWORD PTR [rbx+0x8]
  66ba45:	48 89 6c 24 08       	mov    QWORD PTR [rsp+0x8],rbp
  66ba4a:	48 89 e5             	mov    rbp,rsp
  66ba4d:	48 81 ec 10 1f 00 00 	sub    rsp,0x1f10
  66ba54:	4c 89 bd b8 ea ff ff 	mov    QWORD PTR [rbp-0x1548],r15
  66ba5b:	4c 8b 7b 40          	mov    r15,QWORD PTR [rbx+0x40]
  66ba5f:	48 8b 73 10          	mov    rsi,QWORD PTR [rbx+0x10]
  66ba63:	4c 89 b5 c0 ea ff ff 	mov    QWORD PTR [rbp-0x1540],r14
  66ba6a:	4c 8b 73 48          	mov    r14,QWORD PTR [rbx+0x48]
  66ba6e:	4d 8b 3f             	mov    r15,QWORD PTR [r15]
  66ba71:	4c 89 bd c0 e7 ff ff 	mov    QWORD PTR [rbp-0x1840],r15
  66ba78:	48 8b 43 18          	mov    rax,QWORD PTR [rbx+0x18]
  66ba7c:	44 8b 3e             	mov    r15d,DWORD PTR [rsi]
  66ba7f:	44 89 bd 80 fa ff ff 	mov    DWORD PTR [rbp-0x580],r15d
  66ba86:	44 8b 3a             	mov    r15d,DWORD PTR [rdx]
  66ba89:	4d 8b 36             	mov    r14,QWORD PTR [r14]
  66ba8c:	48 8b 53 50          	mov    rdx,QWORD PTR [rbx+0x50]
  66ba90:	4c 89 b5 90 e7 ff ff 	mov    QWORD PTR [rbp-0x1870],r14
  66ba97:	4c 8b 30             	mov    r14,QWORD PTR [rax]
  66ba9a:	4c 89 ad c8 ea ff ff 	mov    QWORD PTR [rbp-0x1538],r13
  66baa1:	4c 8b 6b 38          	mov    r13,QWORD PTR [rbx+0x38]
  66baa5:	4c 89 b5 e8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a18],r14
  66baac:	44 8b 31             	mov    r14d,DWORD PTR [rcx]
  66baaf:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  66bab2:	8b 3f                	mov    edi,DWORD PTR [rdi]
  66bab4:	48 89 8d 60 e7 ff ff 	mov    QWORD PTR [rbp-0x18a0],rcx
  66babb:	48 8d 53 70          	lea    rdx,[rbx+0x70]
  66babf:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  66bac2:	4d 8b 6d 00          	mov    r13,QWORD PTR [r13+0x0]
  66bac6:	4c 8b 52 b8          	mov    r10,QWORD PTR [rdx-0x48]
  66baca:	89 bd 88 ec ff ff    	mov    DWORD PTR [rbp-0x1378],edi
  66bad0:	48 8b 7a 08          	mov    rdi,QWORD PTR [rdx+0x8]
  66bad4:	4c 8b 5a b0          	mov    r11,QWORD PTR [rdx-0x50]
  66bad8:	4c 89 ad 58 e6 ff ff 	mov    QWORD PTR [rbp-0x19a8],r13
  66badf:	45 8b 29             	mov    r13d,DWORD PTR [r9]
  66bae2:	4c 8b 4a 10          	mov    r9,QWORD PTR [rdx+0x10]
  66bae6:	4d 8b 00             	mov    r8,QWORD PTR [r8]
  66bae9:	48 8b 42 f0          	mov    rax,QWORD PTR [rdx-0x10]
  66baed:	48 8b 31             	mov    rsi,QWORD PTR [rcx]
  66baf0:	48 8b 4a 38          	mov    rcx,QWORD PTR [rdx+0x38]
  66baf4:	4d 8b 12             	mov    r10,QWORD PTR [r10]
  66baf7:	4c 89 85 c8 e7 ff ff 	mov    QWORD PTR [rbp-0x1838],r8
  66bafe:	4c 89 a5 d0 ea ff ff 	mov    QWORD PTR [rbp-0x1530],r12
  66bb05:	48 89 85 d0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a30],rax
  66bb0c:	4c 8b 07             	mov    r8,QWORD PTR [rdi]
  66bb0f:	4c 8b 62 c0          	mov    r12,QWORD PTR [rdx-0x40]
  66bb13:	48 8b 42 28          	mov    rax,QWORD PTR [rdx+0x28]
  66bb17:	4d 8b 1b             	mov    r11,QWORD PTR [r11]
  66bb1a:	4c 89 95 78 e7 ff ff 	mov    QWORD PTR [rbp-0x1888],r10
  66bb21:	4d 8b 11             	mov    r10,QWORD PTR [r9]
  66bb24:	4c 89 85 80 e7 ff ff 	mov    QWORD PTR [rbp-0x1880],r8
  66bb2b:	44 89 ad 78 fa ff ff 	mov    DWORD PTR [rbp-0x588],r13d
  66bb32:	4c 8d 8b b8 00 00 00 	lea    r9,[rbx+0xb8]
  66bb39:	4d 8b 01             	mov    r8,QWORD PTR [r9]
  66bb3c:	4c 89 9d a0 e7 ff ff 	mov    QWORD PTR [rbp-0x1860],r11
  66bb43:	4d 8b 69 a0          	mov    r13,QWORD PTR [r9-0x60]
  66bb47:	49 8b 51 b0          	mov    rdx,QWORD PTR [r9-0x50]
  66bb4b:	4d 8b 59 d0          	mov    r11,QWORD PTR [r9-0x30]
  66bb4f:	48 89 b5 98 e7 ff ff 	mov    QWORD PTR [rbp-0x1868],rsi
  66bb56:	4c 89 95 b8 e7 ff ff 	mov    QWORD PTR [rbp-0x1848],r10
  66bb5d:	48 8b 31             	mov    rsi,QWORD PTR [rcx]
  66bb60:	4d 8b 51 10          	mov    r10,QWORD PTR [r9+0x10]
  66bb64:	49 8b 49 28          	mov    rcx,QWORD PTR [r9+0x28]
  66bb68:	48 89 95 d8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a28],rdx
  66bb6f:	4d 8b 24 24          	mov    r12,QWORD PTR [r12]
  66bb73:	c5 fb 10 08          	vmovsd xmm1,QWORD PTR [rax]
  66bb77:	48 8d 83 a0 00 00 00 	lea    rax,[rbx+0xa0]
  66bb7e:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  66bb81:	48 8b 78 10          	mov    rdi,QWORD PTR [rax+0x10]
  66bb85:	48 8b 40 38          	mov    rax,QWORD PTR [rax+0x38]
  66bb89:	4d 8b 49 08          	mov    r9,QWORD PTR [r9+0x8]
  66bb8d:	4c 89 a5 60 e6 ff ff 	mov    QWORD PTR [rbp-0x19a0],r12
  66bb94:	c4 c1 7b 10 20       	vmovsd xmm4,QWORD PTR [r8]
  66bb99:	4d 8b 65 00          	mov    r12,QWORD PTR [r13+0x0]
  66bb9d:	4c 8b 83 f0 00 00 00 	mov    r8,QWORD PTR [rbx+0xf0]
  66bba4:	45 8b 2b             	mov    r13d,DWORD PTR [r11]
  66bba7:	48 89 b5 68 e6 ff ff 	mov    QWORD PTR [rbp-0x1998],rsi
  66bbae:	4d 8b 1a             	mov    r11,QWORD PTR [r10]
  66bbb1:	48 8b 31             	mov    rsi,QWORD PTR [rcx]
  66bbb4:	4c 89 a5 88 e7 ff ff 	mov    QWORD PTR [rbp-0x1878],r12
  66bbbb:	44 89 ad b8 fc ff ff 	mov    DWORD PTR [rbp-0x348],r13d
  66bbc2:	4c 8b a3 90 00 00 00 	mov    r12,QWORD PTR [rbx+0x90]
  66bbc9:	4c 8b ab d0 00 00 00 	mov    r13,QWORD PTR [rbx+0xd0]
  66bbd0:	c5 fb 10 12          	vmovsd xmm2,QWORD PTR [rdx]
  66bbd4:	c5 fb 10 1f          	vmovsd xmm3,QWORD PTR [rdi]
  66bbd8:	4c 89 9d 70 e6 ff ff 	mov    QWORD PTR [rbp-0x1990],r11
  66bbdf:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  66bbe2:	48 89 b5 88 e6 ff ff 	mov    QWORD PTR [rbp-0x1978],rsi
  66bbe9:	48 8d b3 e8 00 00 00 	lea    rsi,[rbx+0xe8]
  66bbf0:	48 8b 3e             	mov    rdi,QWORD PTR [rsi]
  66bbf3:	4c 8b 5e 20          	mov    r11,QWORD PTR [rsi+0x20]
  66bbf7:	48 8b 76 50          	mov    rsi,QWORD PTR [rsi+0x50]
  66bbfb:	c4 c1 7b 10 29       	vmovsd xmm5,QWORD PTR [r9]
  66bc00:	48 89 95 80 e6 ff ff 	mov    QWORD PTR [rbp-0x1980],rdx
  66bc07:	c4 c1 7b 10 38       	vmovsd xmm7,QWORD PTR [r8]
  66bc0c:	4c 8d 83 f8 00 00 00 	lea    r8,[rbx+0xf8]
  66bc13:	4d 8b 08             	mov    r9,QWORD PTR [r8]
  66bc16:	49 8b 50 30          	mov    rdx,QWORD PTR [r8+0x30]
  66bc1a:	4d 8b 40 48          	mov    r8,QWORD PTR [r8+0x48]
  66bc1e:	c4 c1 7b 10 04 24    	vmovsd xmm0,QWORD PTR [r12]
  66bc24:	4d 8b 65 00          	mov    r12,QWORD PTR [r13+0x0]
  66bc28:	c5 fb 10 37          	vmovsd xmm6,QWORD PTR [rdi]
  66bc2c:	4c 8d ab 00 01 00 00 	lea    r13,[rbx+0x100]
  66bc33:	4d 8b 55 00          	mov    r10,QWORD PTR [r13+0x0]
  66bc37:	49 8b 45 20          	mov    rax,QWORD PTR [r13+0x20]
  66bc3b:	c4 41 7b 10 0b       	vmovsd xmm9,QWORD PTR [r11]
  66bc40:	48 8b 3e             	mov    rdi,QWORD PTR [rsi]
  66bc43:	4d 8b 5d 58          	mov    r11,QWORD PTR [r13+0x58]
  66bc47:	48 8b b3 80 01 00 00 	mov    rsi,QWORD PTR [rbx+0x180]
  66bc4e:	4c 89 a5 78 e6 ff ff 	mov    QWORD PTR [rbp-0x1988],r12
  66bc55:	c4 41 7b 10 01       	vmovsd xmm8,QWORD PTR [r9]
  66bc5a:	4c 89 95 e0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a20],r10
  66bc61:	4c 8d 93 10 01 00 00 	lea    r10,[rbx+0x110]
  66bc68:	4d 8b 2a             	mov    r13,QWORD PTR [r10]
  66bc6b:	4d 8b 62 08          	mov    r12,QWORD PTR [r10+0x8]
  66bc6f:	49 8b 4a 20          	mov    rcx,QWORD PTR [r10+0x20]
  66bc73:	4d 8b 4a 38          	mov    r9,QWORD PTR [r10+0x38]
  66bc77:	4d 8b 52 40          	mov    r10,QWORD PTR [r10+0x40]
  66bc7b:	c5 7b 10 2a          	vmovsd xmm13,QWORD PTR [rdx]
  66bc7f:	c4 41 7b 10 38       	vmovsd xmm15,QWORD PTR [r8]
  66bc84:	48 8b 93 60 01 00 00 	mov    rdx,QWORD PTR [rbx+0x160]
  66bc8b:	4c 8b 83 88 01 00 00 	mov    r8,QWORD PTR [rbx+0x188]
  66bc92:	c5 7b 10 20          	vmovsd xmm12,QWORD PTR [rax]
  66bc96:	48 89 bd 70 e7 ff ff 	mov    QWORD PTR [rbp-0x1890],rdi
  66bc9d:	49 63 03             	movsxd rax,DWORD PTR [r11]
  66bca0:	48 63 3e             	movsxd rdi,DWORD PTR [rsi]
  66bca3:	c4 41 7b 10 55 00    	vmovsd xmm10,QWORD PTR [r13+0x0]
  66bca9:	c4 41 7b 10 1c 24    	vmovsd xmm11,QWORD PTR [r12]
  66bcaf:	c5 7b 10 31          	vmovsd xmm14,QWORD PTR [rcx]
  66bcb3:	4d 63 29             	movsxd r13,DWORD PTR [r9]
  66bcb6:	4d 63 22             	movsxd r12,DWORD PTR [r10]
  66bcb9:	48 89 85 88 e8 ff ff 	mov    QWORD PTR [rbp-0x1778],rax
  66bcc0:	48 63 0a             	movsxd rcx,DWORD PTR [rdx]
  66bcc3:	48 89 bd 68 e7 ff ff 	mov    QWORD PTR [rbp-0x1898],rdi
  66bcca:	4d 63 08             	movsxd r9,DWORD PTR [r8]
  66bccd:	4c 8d 83 b0 01 00 00 	lea    r8,[rbx+0x1b0]
  66bcd4:	4d 8b 10             	mov    r10,QWORD PTR [r8]
  66bcd7:	4d 8b 58 08          	mov    r11,QWORD PTR [r8+0x8]
  66bcdb:	49 8b 40 10          	mov    rax,QWORD PTR [r8+0x10]
  66bcdf:	49 8b 78 30          	mov    rdi,QWORD PTR [r8+0x30]
  66bce3:	49 8b 70 28          	mov    rsi,QWORD PTR [r8+0x28]
  66bce7:	48 89 8d 58 f0 ff ff 	mov    QWORD PTR [rbp-0xfa8],rcx
  66bcee:	4c 89 8d c0 fc ff ff 	mov    QWORD PTR [rbp-0x340],r9
  66bcf5:	4c 89 95 f0 e0 ff ff 	mov    QWORD PTR [rbp-0x1f10],r10
  66bcfc:	4c 89 9d f8 e0 ff ff 	mov    QWORD PTR [rbp-0x1f08],r11
  66bd03:	48 89 85 00 e1 ff ff 	mov    QWORD PTR [rbp-0x1f00],rax
  66bd0a:	33 c0                	xor    eax,eax
  66bd0c:	4c 8d 9b c8 01 00 00 	lea    r11,[rbx+0x1c8]
  66bd13:	49 8b 13             	mov    rdx,QWORD PTR [r11]
  66bd16:	49 8b 4b 08          	mov    rcx,QWORD PTR [r11+0x8]
  66bd1a:	4d 8b 43 20          	mov    r8,QWORD PTR [r11+0x20]
  66bd1e:	4d 8b 4b 28          	mov    r9,QWORD PTR [r11+0x28]
  66bd22:	4d 8b 53 30          	mov    r10,QWORD PTR [r11+0x30]
  66bd26:	4d 8b 5b 38          	mov    r11,QWORD PTR [r11+0x38]
  66bd2a:	48 89 bd e0 e1 ff ff 	mov    QWORD PTR [rbp-0x1e20],rdi
  66bd31:	48 8d bd 08 e1 ff ff 	lea    rdi,[rbp-0x1ef8]
  66bd38:	48 89 b5 d8 e1 ff ff 	mov    QWORD PTR [rbp-0x1e28],rsi
  66bd3f:	c5 fb 11 85 d0 e7 ff 	vmovsd QWORD PTR [rbp-0x1830],xmm0
  66bd46:	ff 
  66bd47:	c5 fb 11 8d 98 fc ff 	vmovsd QWORD PTR [rbp-0x368],xmm1
  66bd4e:	ff 
  66bd4f:	c5 fb 11 95 b0 e7 ff 	vmovsd QWORD PTR [rbp-0x1850],xmm2
  66bd56:	ff 
  66bd57:	c5 fb 11 9d a0 fc ff 	vmovsd QWORD PTR [rbp-0x360],xmm3
  66bd5e:	ff 
  66bd5f:	c5 fb 11 a5 c8 fc ff 	vmovsd QWORD PTR [rbp-0x338],xmm4
  66bd66:	ff 
  66bd67:	c5 fb 11 ad a8 e7 ff 	vmovsd QWORD PTR [rbp-0x1858],xmm5
  66bd6e:	ff 
  66bd6f:	c5 fb 11 b5 80 e8 ff 	vmovsd QWORD PTR [rbp-0x1780],xmm6
  66bd76:	ff 
  66bd77:	c5 fb 11 bd d8 f4 ff 	vmovsd QWORD PTR [rbp-0xb28],xmm7
  66bd7e:	ff 
  66bd7f:	c5 7b 11 85 e0 f4 ff 	vmovsd QWORD PTR [rbp-0xb20],xmm8
  66bd86:	ff 
  66bd87:	c5 7b 11 8d 70 e8 ff 	vmovsd QWORD PTR [rbp-0x1790],xmm9
  66bd8e:	ff 
  66bd8f:	c5 7b 11 95 78 e8 ff 	vmovsd QWORD PTR [rbp-0x1788],xmm10
  66bd96:	ff 
  66bd97:	c5 7b 11 9d b0 fc ff 	vmovsd QWORD PTR [rbp-0x350],xmm11
  66bd9e:	ff 
  66bd9f:	c5 7b 11 a5 d0 fc ff 	vmovsd QWORD PTR [rbp-0x330],xmm12
  66bda6:	ff 
  66bda7:	c5 7b 11 ad 90 e6 ff 	vmovsd QWORD PTR [rbp-0x1970],xmm13
  66bdae:	ff 
  66bdaf:	c5 7b 11 b5 f0 e5 ff 	vmovsd QWORD PTR [rbp-0x1a10],xmm14
  66bdb6:	ff 
  66bdb7:	c5 7b 11 bd a8 fc ff 	vmovsd QWORD PTR [rbp-0x358],xmm15
  66bdbe:	ff 
  66bdbf:	48 8b b3 08 02 00 00 	mov    rsi,QWORD PTR [rbx+0x208]
  66bdc6:	48 89 95 c8 e1 ff ff 	mov    QWORD PTR [rbp-0x1e38],rdx
  66bdcd:	48 89 8d d0 e1 ff ff 	mov    QWORD PTR [rbp-0x1e30],rcx
  66bdd4:	4c 89 85 e8 e1 ff ff 	mov    QWORD PTR [rbp-0x1e18],r8
  66bddb:	4c 89 8d f0 e1 ff ff 	mov    QWORD PTR [rbp-0x1e10],r9
  66bde2:	4c 89 95 f8 e1 ff ff 	mov    QWORD PTR [rbp-0x1e08],r10
  66bde9:	4c 89 9d 00 e2 ff ff 	mov    QWORD PTR [rbp-0x1e00],r11
  66bdf0:	e8 0b ae e0 ff       	call   476c00 <_f90_dope_vector_init>
  66bdf5:	48 89 85 c8 e2 ff ff 	mov    QWORD PTR [rbp-0x1d38],rax
  66bdfc:	48 83 c0 1f          	add    rax,0x1f
  66be00:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66be04:	48 2b e0             	sub    rsp,rax
  66be07:	48 89 e0             	mov    rax,rsp
  66be0a:	48 89 85 c0 e2 ff ff 	mov    QWORD PTR [rbp-0x1d40],rax
  66be11:	48 89 c2             	mov    rdx,rax
  66be14:	48 8d bd 68 e1 ff ff 	lea    rdi,[rbp-0x1e98]
  66be1b:	33 c0                	xor    eax,eax
  66be1d:	48 8b b5 00 e2 ff ff 	mov    rsi,QWORD PTR [rbp-0x1e00]
  66be24:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  66be28:	e8 d3 ad e0 ff       	call   476c00 <_f90_dope_vector_init>
  66be2d:	48 89 85 40 e4 ff ff 	mov    QWORD PTR [rbp-0x1bc0],rax
  66be34:	48 83 c0 1f          	add    rax,0x1f
  66be38:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66be3c:	48 2b e0             	sub    rsp,rax
  66be3f:	48 89 e0             	mov    rax,rsp
  66be42:	48 89 85 38 e4 ff ff 	mov    QWORD PTR [rbp-0x1bc8],rax
  66be49:	48 89 c2             	mov    rdx,rax
  66be4c:	48 8d bd 00 e2 ff ff 	lea    rdi,[rbp-0x1e00]
  66be53:	33 c0                	xor    eax,eax
  66be55:	48 8b 77 f8          	mov    rsi,QWORD PTR [rdi-0x8]
  66be59:	48 89 95 68 e1 ff ff 	mov    QWORD PTR [rbp-0x1e98],rdx
  66be60:	e8 9b ad e0 ff       	call   476c00 <_f90_dope_vector_init>
  66be65:	48 89 85 48 e4 ff ff 	mov    QWORD PTR [rbp-0x1bb8],rax
  66be6c:	48 83 c0 1f          	add    rax,0x1f
  66be70:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66be74:	48 2b e0             	sub    rsp,rax
  66be77:	48 89 e0             	mov    rax,rsp
  66be7a:	48 89 85 f8 e1 ff ff 	mov    QWORD PTR [rbp-0x1e08],rax
  66be81:	48 89 c2             	mov    rdx,rax
  66be84:	48 8d bd 60 e2 ff ff 	lea    rdi,[rbp-0x1da0]
  66be8b:	33 c0                	xor    eax,eax
  66be8d:	48 8b 77 90          	mov    rsi,QWORD PTR [rdi-0x70]
  66be91:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  66be95:	e8 66 ad e0 ff       	call   476c00 <_f90_dope_vector_init>
  66be9a:	48 89 85 98 e4 ff ff 	mov    QWORD PTR [rbp-0x1b68],rax
  66bea1:	48 83 c0 1f          	add    rax,0x1f
  66bea5:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66bea9:	48 2b e0             	sub    rsp,rax
  66beac:	48 89 e0             	mov    rax,rsp
  66beaf:	48 89 85 f0 e1 ff ff 	mov    QWORD PTR [rbp-0x1e10],rax
  66beb6:	48 89 c2             	mov    rdx,rax
  66beb9:	48 8d bd d0 e2 ff ff 	lea    rdi,[rbp-0x1d30]
  66bec0:	33 c0                	xor    eax,eax
  66bec2:	48 8b b5 e8 e1 ff ff 	mov    rsi,QWORD PTR [rbp-0x1e18]
  66bec9:	48 89 57 90          	mov    QWORD PTR [rdi-0x70],rdx
  66becd:	e8 2e ad e0 ff       	call   476c00 <_f90_dope_vector_init>
  66bed2:	48 89 85 a0 e4 ff ff 	mov    QWORD PTR [rbp-0x1b60],rax
  66bed9:	48 83 c0 1f          	add    rax,0x1f
  66bedd:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66bee1:	48 2b e0             	sub    rsp,rax
  66bee4:	48 89 e0             	mov    rax,rsp
  66bee7:	48 89 85 e8 e1 ff ff 	mov    QWORD PTR [rbp-0x1e18],rax
  66beee:	48 89 c2             	mov    rdx,rax
  66bef1:	48 8d bd 30 e3 ff ff 	lea    rdi,[rbp-0x1cd0]
  66bef8:	33 c0                	xor    eax,eax
  66befa:	48 8b b5 e0 e1 ff ff 	mov    rsi,QWORD PTR [rbp-0x1e20]
  66bf01:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  66bf05:	e8 f6 ac e0 ff       	call   476c00 <_f90_dope_vector_init>
  66bf0a:	48 89 85 a8 e4 ff ff 	mov    QWORD PTR [rbp-0x1b58],rax
  66bf11:	48 83 c0 1f          	add    rax,0x1f
  66bf15:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66bf19:	48 2b e0             	sub    rsp,rax
  66bf1c:	48 89 e0             	mov    rax,rsp
  66bf1f:	48 89 85 e0 e1 ff ff 	mov    QWORD PTR [rbp-0x1e20],rax
  66bf26:	48 89 c2             	mov    rdx,rax
  66bf29:	48 8d bd 90 e3 ff ff 	lea    rdi,[rbp-0x1c70]
  66bf30:	33 c0                	xor    eax,eax
  66bf32:	48 8b b5 d8 e1 ff ff 	mov    rsi,QWORD PTR [rbp-0x1e28]
  66bf39:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  66bf3d:	e8 be ac e0 ff       	call   476c00 <_f90_dope_vector_init>
  66bf42:	48 89 85 f8 e4 ff ff 	mov    QWORD PTR [rbp-0x1b08],rax
  66bf49:	48 83 c0 1f          	add    rax,0x1f
  66bf4d:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66bf51:	48 2b e0             	sub    rsp,rax
  66bf54:	48 89 e0             	mov    rax,rsp
  66bf57:	48 89 85 d8 e1 ff ff 	mov    QWORD PTR [rbp-0x1e28],rax
  66bf5e:	48 89 c2             	mov    rdx,rax
  66bf61:	48 8d bd f0 e3 ff ff 	lea    rdi,[rbp-0x1c10]
  66bf68:	33 c0                	xor    eax,eax
  66bf6a:	48 8b b5 d0 e1 ff ff 	mov    rsi,QWORD PTR [rbp-0x1e30]
  66bf71:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  66bf75:	e8 86 ac e0 ff       	call   476c00 <_f90_dope_vector_init>
  66bf7a:	48 89 85 00 e5 ff ff 	mov    QWORD PTR [rbp-0x1b00],rax
  66bf81:	48 83 c0 1f          	add    rax,0x1f
  66bf85:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66bf89:	48 2b e0             	sub    rsp,rax
  66bf8c:	48 89 e0             	mov    rax,rsp
  66bf8f:	48 89 85 d0 e1 ff ff 	mov    QWORD PTR [rbp-0x1e30],rax
  66bf96:	48 89 c2             	mov    rdx,rax
  66bf99:	48 8d bd 50 e4 ff ff 	lea    rdi,[rbp-0x1bb0]
  66bfa0:	33 c0                	xor    eax,eax
  66bfa2:	48 8b b5 c8 e1 ff ff 	mov    rsi,QWORD PTR [rbp-0x1e38]
  66bfa9:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  66bfad:	e8 4e ac e0 ff       	call   476c00 <_f90_dope_vector_init>
  66bfb2:	48 89 85 08 e5 ff ff 	mov    QWORD PTR [rbp-0x1af8],rax
  66bfb9:	48 83 c0 1f          	add    rax,0x1f
  66bfbd:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66bfc1:	48 2b e0             	sub    rsp,rax
  66bfc4:	48 89 e0             	mov    rax,rsp
  66bfc7:	48 89 85 c8 e1 ff ff 	mov    QWORD PTR [rbp-0x1e38],rax
  66bfce:	48 89 c2             	mov    rdx,rax
  66bfd1:	48 8d bd b0 e4 ff ff 	lea    rdi,[rbp-0x1b50]
  66bfd8:	33 c0                	xor    eax,eax
  66bfda:	48 8b b5 00 e1 ff ff 	mov    rsi,QWORD PTR [rbp-0x1f00]
  66bfe1:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  66bfe5:	e8 16 ac e0 ff       	call   476c00 <_f90_dope_vector_init>
  66bfea:	48 89 85 60 e5 ff ff 	mov    QWORD PTR [rbp-0x1aa0],rax
  66bff1:	48 83 c0 1f          	add    rax,0x1f
  66bff5:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66bff9:	48 2b e0             	sub    rsp,rax
  66bffc:	48 89 e0             	mov    rax,rsp
  66bfff:	48 89 85 58 e5 ff ff 	mov    QWORD PTR [rbp-0x1aa8],rax
  66c006:	48 89 c2             	mov    rdx,rax
  66c009:	48 8d bd 10 e5 ff ff 	lea    rdi,[rbp-0x1af0]
  66c010:	33 c0                	xor    eax,eax
  66c012:	48 8b b5 f8 e0 ff ff 	mov    rsi,QWORD PTR [rbp-0x1f08]
  66c019:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  66c01d:	e8 de ab e0 ff       	call   476c00 <_f90_dope_vector_init>
  66c022:	48 89 85 b8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a48],rax
  66c029:	48 83 c0 1f          	add    rax,0x1f
  66c02d:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66c031:	48 2b e0             	sub    rsp,rax
  66c034:	48 89 e0             	mov    rax,rsp
  66c037:	48 89 85 68 e5 ff ff 	mov    QWORD PTR [rbp-0x1a98],rax
  66c03e:	48 89 c2             	mov    rdx,rax
  66c041:	48 8d bd 70 e5 ff ff 	lea    rdi,[rbp-0x1a90]
  66c048:	33 c0                	xor    eax,eax
  66c04a:	48 8b b5 f0 e0 ff ff 	mov    rsi,QWORD PTR [rbp-0x1f10]
  66c051:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  66c055:	e8 a6 ab e0 ff       	call   476c00 <_f90_dope_vector_init>
  66c05a:	48 89 85 c0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a40],rax
  66c061:	48 83 c0 1f          	add    rax,0x1f
  66c065:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66c069:	48 2b e0             	sub    rsp,rax
  66c06c:	48 89 e0             	mov    rax,rsp
  66c06f:	48 89 85 c8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a38],rax
  66c076:	48 89 85 70 e5 ff ff 	mov    QWORD PTR [rbp-0x1a90],rax
  66c07d:	45 3b f7             	cmp    r14d,r15d
  66c080:	0f 8c 88 00 00 00    	jl     66c10e <gls_corstep_mod_mp_gls_corstep_tile_+0x499e>
  66c086:	48 83 c4 e0          	add    rsp,0xffffffffffffffe0
  66c08a:	48 8d 85 cc ec ff ff 	lea    rax,[rbp-0x1334]
  66c091:	41 ba 01 00 00 00    	mov    r10d,0x1
  66c097:	bf 08 56 ab 00       	mov    edi,0xab5608
  66c09c:	ba 22 00 00 00       	mov    edx,0x22
  66c0a1:	48 8d 8d c8 ec ff ff 	lea    rcx,[rbp-0x1338]
  66c0a8:	44 89 78 f4          	mov    DWORD PTR [rax-0xc],r15d
  66c0ac:	4c 8d 85 c0 ec ff ff 	lea    r8,[rbp-0x1340]
  66c0b3:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  66c0b7:	4c 8d 8d c4 ec ff ff 	lea    r9,[rbp-0x133c]
  66c0be:	44 89 54 24 08       	mov    DWORD PTR [rsp+0x8],r10d
  66c0c3:	44 89 54 24 10       	mov    DWORD PTR [rsp+0x10],r10d
  66c0c8:	8b 70 bc             	mov    esi,DWORD PTR [rax-0x44]
  66c0cb:	44 89 70 f8          	mov    DWORD PTR [rax-0x8],r14d
  66c0cf:	c7 40 fc 00 00 00 00 	mov    DWORD PTR [rax-0x4],0x0
  66c0d6:	44 89 10             	mov    DWORD PTR [rax],r10d
  66c0d9:	e8 02 19 da ff       	call   40d9e0 <__kmpc_for_static_init_4@plt>
  66c0de:	48 83 c4 20          	add    rsp,0x20
  66c0e2:	4d 63 f6             	movsxd r14,r14d
  66c0e5:	48 63 95 c0 ec ff ff 	movsxd rdx,DWORD PTR [rbp-0x1340]
  66c0ec:	8b 85 c4 ec ff ff    	mov    eax,DWORD PTR [rbp-0x133c]
  66c0f2:	49 3b d6             	cmp    rdx,r14
  66c0f5:	0f 8e 61 01 00 00    	jle    66c25c <gls_corstep_mod_mp_gls_corstep_tile_+0x4aec>
  66c0fb:	bf 08 56 ab 00       	mov    edi,0xab5608
  66c100:	8b b5 88 ec ff ff    	mov    esi,DWORD PTR [rbp-0x1378]
  66c106:	c5 f8 77             	vzeroupper 
  66c109:	e8 92 1b da ff       	call   40dca0 <__kmpc_for_static_fini@plt>
  66c10e:	48 8b 95 c8 e5 ff ff 	mov    rdx,QWORD PTR [rbp-0x1a38]
  66c115:	48 8b 85 c0 e5 ff ff 	mov    rax,QWORD PTR [rbp-0x1a40]
  66c11c:	48 83 c0 1f          	add    rax,0x1f
  66c120:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66c124:	48 03 e0             	add    rsp,rax
  66c127:	48 8b 95 68 e5 ff ff 	mov    rdx,QWORD PTR [rbp-0x1a98]
  66c12e:	48 8b 85 b8 e5 ff ff 	mov    rax,QWORD PTR [rbp-0x1a48]
  66c135:	48 83 c0 1f          	add    rax,0x1f
  66c139:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66c13d:	48 03 e0             	add    rsp,rax
  66c140:	48 8b 95 58 e5 ff ff 	mov    rdx,QWORD PTR [rbp-0x1aa8]
  66c147:	48 8b 85 60 e5 ff ff 	mov    rax,QWORD PTR [rbp-0x1aa0]
  66c14e:	48 83 c0 1f          	add    rax,0x1f
  66c152:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66c156:	48 03 e0             	add    rsp,rax
  66c159:	48 8b 95 c8 e1 ff ff 	mov    rdx,QWORD PTR [rbp-0x1e38]
  66c160:	48 8b 85 08 e5 ff ff 	mov    rax,QWORD PTR [rbp-0x1af8]
  66c167:	48 83 c0 1f          	add    rax,0x1f
  66c16b:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66c16f:	48 03 e0             	add    rsp,rax
  66c172:	48 8b 95 d0 e1 ff ff 	mov    rdx,QWORD PTR [rbp-0x1e30]
  66c179:	48 8b 85 00 e5 ff ff 	mov    rax,QWORD PTR [rbp-0x1b00]
  66c180:	48 83 c0 1f          	add    rax,0x1f
  66c184:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66c188:	48 03 e0             	add    rsp,rax
  66c18b:	48 8b 95 d8 e1 ff ff 	mov    rdx,QWORD PTR [rbp-0x1e28]
  66c192:	48 8b 85 f8 e4 ff ff 	mov    rax,QWORD PTR [rbp-0x1b08]
  66c199:	48 83 c0 1f          	add    rax,0x1f
  66c19d:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66c1a1:	48 03 e0             	add    rsp,rax
  66c1a4:	48 8b 95 e0 e1 ff ff 	mov    rdx,QWORD PTR [rbp-0x1e20]
  66c1ab:	48 8b 85 a8 e4 ff ff 	mov    rax,QWORD PTR [rbp-0x1b58]
  66c1b2:	48 83 c0 1f          	add    rax,0x1f
  66c1b6:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66c1ba:	48 03 e0             	add    rsp,rax
  66c1bd:	48 8b 95 e8 e1 ff ff 	mov    rdx,QWORD PTR [rbp-0x1e18]
  66c1c4:	48 8b 85 a0 e4 ff ff 	mov    rax,QWORD PTR [rbp-0x1b60]
  66c1cb:	48 83 c0 1f          	add    rax,0x1f
  66c1cf:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66c1d3:	48 03 e0             	add    rsp,rax
  66c1d6:	48 8b 95 f0 e1 ff ff 	mov    rdx,QWORD PTR [rbp-0x1e10]
  66c1dd:	48 8b 85 98 e4 ff ff 	mov    rax,QWORD PTR [rbp-0x1b68]
  66c1e4:	48 83 c0 1f          	add    rax,0x1f
  66c1e8:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66c1ec:	48 03 e0             	add    rsp,rax
  66c1ef:	48 8b 95 f8 e1 ff ff 	mov    rdx,QWORD PTR [rbp-0x1e08]
  66c1f6:	48 8b 85 48 e4 ff ff 	mov    rax,QWORD PTR [rbp-0x1bb8]
  66c1fd:	48 83 c0 1f          	add    rax,0x1f
  66c201:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66c205:	48 03 e0             	add    rsp,rax
  66c208:	48 8b 95 38 e4 ff ff 	mov    rdx,QWORD PTR [rbp-0x1bc8]
  66c20f:	48 8b 85 40 e4 ff ff 	mov    rax,QWORD PTR [rbp-0x1bc0]
  66c216:	48 83 c0 1f          	add    rax,0x1f
  66c21a:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66c21e:	48 03 e0             	add    rsp,rax
  66c221:	48 8b 95 c0 e2 ff ff 	mov    rdx,QWORD PTR [rbp-0x1d40]
  66c228:	48 8b 85 c8 e2 ff ff 	mov    rax,QWORD PTR [rbp-0x1d38]
  66c22f:	48 83 c0 1f          	add    rax,0x1f
  66c233:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  66c237:	48 03 e0             	add    rsp,rax
  66c23a:	4c 8b bd b8 ea ff ff 	mov    r15,QWORD PTR [rbp-0x1548]
  66c241:	4c 8b b5 c0 ea ff ff 	mov    r14,QWORD PTR [rbp-0x1540]
  66c248:	4c 8b ad c8 ea ff ff 	mov    r13,QWORD PTR [rbp-0x1538]
  66c24f:	4c 8b a5 d0 ea ff ff 	mov    r12,QWORD PTR [rbp-0x1530]
  66c256:	c9                   	leave  
  66c257:	48 89 dc             	mov    rsp,rbx
  66c25a:	5b                   	pop    rbx
  66c25b:	c3                   	ret    
  66c25c:	4c 8b 85 c0 e7 ff ff 	mov    r8,QWORD PTR [rbp-0x1840]
  66c263:	41 3b c6             	cmp    eax,r14d
  66c266:	4c 8b 0d d3 45 45 00 	mov    r9,QWORD PTR [rip+0x4545d3]        # ac0840 <mod_scalars_mp_gls_cmu0_+0x40>
  66c26d:	48 8b b5 c0 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x340]
  66c274:	44 0f 4c f0          	cmovl  r14d,eax
  66c278:	4d 63 18             	movsxd r11,DWORD PTR [r8]
  66c27b:	4c 89 9d 40 eb ff ff 	mov    QWORD PTR [rbp-0x14c0],r11
  66c282:	4c 8b 1d d7 43 45 00 	mov    r11,QWORD PTR [rip+0x4543d7]        # ac0660 <mod_scalars_mp_gls_p_+0x40>
  66c289:	49 c1 e3 03          	shl    r11,0x3
  66c28d:	49 f7 db             	neg    r11
  66c290:	4c 03 1d 89 43 45 00 	add    r11,QWORD PTR [rip+0x454389]        # ac0620 <mod_scalars_mp_gls_p_>
  66c297:	4c 89 9d 38 f2 ff ff 	mov    QWORD PTR [rbp-0xdc8],r11
  66c29e:	49 c1 e1 03          	shl    r9,0x3
  66c2a2:	4c 8b 9d d0 e2 ff ff 	mov    r11,QWORD PTR [rbp-0x1d30]
  66c2a9:	49 f7 d9             	neg    r9
  66c2ac:	4c 89 9d c8 e9 ff ff 	mov    QWORD PTR [rbp-0x1638],r11
  66c2b3:	48 2b b5 68 e7 ff ff 	sub    rsi,QWORD PTR [rbp-0x1898]
  66c2ba:	4c 8b 9d a0 e7 ff ff 	mov    r11,QWORD PTR [rbp-0x1860]
  66c2c1:	48 ff c6             	inc    rsi
  66c2c4:	4c 8b 05 35 45 45 00 	mov    r8,QWORD PTR [rip+0x454535]        # ac0800 <mod_scalars_mp_gls_cmu0_>
  66c2cb:	4d 03 c8             	add    r9,r8
  66c2ce:	4c 89 8d 28 f2 ff ff 	mov    QWORD PTR [rbp-0xdd8],r9
  66c2d5:	48 89 b5 c0 fc ff ff 	mov    QWORD PTR [rbp-0x340],rsi
  66c2dc:	4c 8b 8d 60 e2 ff ff 	mov    r9,QWORD PTR [rbp-0x1da0]
  66c2e3:	48 8b 05 56 47 45 00 	mov    rax,QWORD PTR [rip+0x454756]        # ac0a40 <mod_scalars_mp_gls_sigp_>
  66c2ea:	48 8b 35 4f d8 44 00 	mov    rsi,QWORD PTR [rip+0x44d84f]        # ab9b40 <mod_scalars_mp_dt_>
  66c2f1:	4c 89 8d d8 e9 ff ff 	mov    QWORD PTR [rbp-0x1628],r9
  66c2f8:	48 89 85 a8 e8 ff ff 	mov    QWORD PTR [rbp-0x1758],rax
  66c2ff:	48 89 b5 90 f2 ff ff 	mov    QWORD PTR [rbp-0xd70],rsi
  66c306:	4c 8b 8d 98 e7 ff ff 	mov    r9,QWORD PTR [rbp-0x1868]
  66c30d:	48 8b 05 2c 44 45 00 	mov    rax,QWORD PTR [rip+0x45442c]        # ac0740 <mod_scalars_mp_gls_kmin_>
  66c314:	49 8b 73 68          	mov    rsi,QWORD PTR [r11+0x68]
  66c318:	48 89 85 d0 f1 ff ff 	mov    QWORD PTR [rbp-0xe30],rax
  66c31f:	48 89 f0             	mov    rax,rsi
  66c322:	48 f7 d8             	neg    rax
  66c325:	48 89 85 10 f2 ff ff 	mov    QWORD PTR [rbp-0xdf0],rax
  66c32c:	49 8b 01             	mov    rax,QWORD PTR [r9]
  66c32f:	48 89 85 28 e7 ff ff 	mov    QWORD PTR [rbp-0x18d8],rax
  66c336:	49 8b 41 68          	mov    rax,QWORD PTR [r9+0x68]
  66c33a:	48 89 85 f8 fc ff ff 	mov    QWORD PTR [rbp-0x308],rax
  66c341:	49 8b 41 50          	mov    rax,QWORD PTR [r9+0x50]
  66c345:	48 89 85 a0 e9 ff ff 	mov    QWORD PTR [rbp-0x1660],rax
  66c34c:	48 8b 05 8d 40 45 00 	mov    rax,QWORD PTR [rip+0x45408d]        # ac03e0 <mod_scalars_mp_akv_bak_>
  66c353:	48 89 85 e0 f1 ff ff 	mov    QWORD PTR [rbp-0xe20],rax
  66c35a:	48 8b 85 90 e7 ff ff 	mov    rax,QWORD PTR [rbp-0x1870]
  66c361:	4d 8b 49 38          	mov    r9,QWORD PTR [r9+0x38]
  66c365:	4c 89 8d 68 f2 ff ff 	mov    QWORD PTR [rbp-0xd98],r9
  66c36c:	4c 8b 08             	mov    r9,QWORD PTR [rax]
  66c36f:	4c 89 8d f8 e6 ff ff 	mov    QWORD PTR [rbp-0x1908],r9
  66c376:	4c 8b 48 68          	mov    r9,QWORD PTR [rax+0x68]
  66c37a:	4c 89 8d 30 fd ff ff 	mov    QWORD PTR [rbp-0x2d0],r9
  66c381:	4c 8b 48 50          	mov    r9,QWORD PTR [rax+0x50]
  66c385:	4c 89 8d a8 e9 ff ff 	mov    QWORD PTR [rbp-0x1658],r9
  66c38c:	4c 8b 0d 4d 46 45 00 	mov    r9,QWORD PTR [rip+0x45464d]        # ac09e0 <mod_scalars_mp_gls_sigk_>
  66c393:	4c 89 8d 98 e8 ff ff 	mov    QWORD PTR [rbp-0x1768],r9
  66c39a:	4c 8b 8d 88 e7 ff ff 	mov    r9,QWORD PTR [rbp-0x1878]
  66c3a1:	48 8b 40 38          	mov    rax,QWORD PTR [rax+0x38]
  66c3a5:	48 89 85 70 f2 ff ff 	mov    QWORD PTR [rbp-0xd90],rax
  66c3ac:	48 8b 05 4d 41 45 00 	mov    rax,QWORD PTR [rip+0x45414d]        # ac0500 <mod_scalars_mp_akk_bak_>
  66c3b3:	48 89 85 90 e8 ff ff 	mov    QWORD PTR [rbp-0x1770],rax
  66c3ba:	49 8b 01             	mov    rax,QWORD PTR [r9]
  66c3bd:	48 89 85 e8 e6 ff ff 	mov    QWORD PTR [rbp-0x1918],rax
  66c3c4:	49 8b 41 68          	mov    rax,QWORD PTR [r9+0x68]
  66c3c8:	48 89 85 38 fd ff ff 	mov    QWORD PTR [rbp-0x2c8],rax
  66c3cf:	49 8b 41 50          	mov    rax,QWORD PTR [r9+0x50]
  66c3d3:	48 89 85 b0 e9 ff ff 	mov    QWORD PTR [rbp-0x1650],rax
  66c3da:	48 8b 05 7f 41 45 00 	mov    rax,QWORD PTR [rip+0x45417f]        # ac0560 <mod_scalars_mp_akp_bak_>
  66c3e1:	48 89 85 a0 e8 ff ff 	mov    QWORD PTR [rbp-0x1760],rax
  66c3e8:	48 8b 85 80 e7 ff ff 	mov    rax,QWORD PTR [rbp-0x1880]
  66c3ef:	4d 8b 49 38          	mov    r9,QWORD PTR [r9+0x38]
  66c3f3:	4c 89 8d 10 f5 ff ff 	mov    QWORD PTR [rbp-0xaf0],r9
  66c3fa:	4c 8b 08             	mov    r9,QWORD PTR [rax]
  66c3fd:	4c 89 8d 50 ea ff ff 	mov    QWORD PTR [rbp-0x15b0],r9
  66c404:	4c 8b 88 80 00 00 00 	mov    r9,QWORD PTR [rax+0x80]
  66c40b:	4c 8b bd c8 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1838]
  66c412:	4c 89 8d 18 fb ff ff 	mov    QWORD PTR [rbp-0x4e8],r9
  66c419:	4c 8b 48 68          	mov    r9,QWORD PTR [rax+0x68]
  66c41d:	4c 89 8d 20 fd ff ff 	mov    QWORD PTR [rbp-0x2e0],r9
  66c424:	4c 8b 48 50          	mov    r9,QWORD PTR [rax+0x50]
  66c428:	48 8b 40 38          	mov    rax,QWORD PTR [rax+0x38]
  66c42c:	4d 63 17             	movsxd r10,DWORD PTR [r15]
  66c42f:	4c 89 8d 98 e9 ff ff 	mov    QWORD PTR [rbp-0x1668],r9
  66c436:	48 89 85 78 f2 ff ff 	mov    QWORD PTR [rbp-0xd88],rax
  66c43d:	48 8b 05 dc 23 45 00 	mov    rax,QWORD PTR [rip+0x4523dc]        # abe820 <mod_scalars_mp_akt_bak_>
  66c444:	4c 8b 0d 25 24 45 00 	mov    r9,QWORD PTR [rip+0x452425]        # abe870 <mod_scalars_mp_akt_bak_+0x50>
  66c44b:	49 2b c1             	sub    rax,r9
  66c44e:	4d 0f af ca          	imul   r9,r10
  66c452:	c4 62 7d 19 b5 b0 fc 	vbroadcastsd ymm14,QWORD PTR [rbp-0x350]
  66c459:	ff ff 
  66c45b:	c5 7b 10 bd 90 e6 ff 	vmovsd xmm15,QWORD PTR [rbp-0x1970]
  66c462:	ff 
  66c463:	c5 7b 10 25 85 4b 57 	vmovsd xmm12,QWORD PTR [rip+0x574b85]        # be0ff0 <mod_scalars_mp_gls_b0_>
  66c46a:	00 
  66c46b:	c5 fb 10 05 95 4b 57 	vmovsd xmm0,QWORD PTR [rip+0x574b95]        # be1008 <mod_scalars_mp_gls_b3_>
  66c472:	00 
  66c473:	49 03 c1             	add    rax,r9
  66c476:	4c 8b 8d 78 e7 ff ff 	mov    r9,QWORD PTR [rbp-0x1888]
  66c47d:	48 89 85 88 fa ff ff 	mov    QWORD PTR [rbp-0x578],rax
  66c484:	4c 8b bd b8 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1848]
  66c48b:	49 8b 01             	mov    rax,QWORD PTR [r9]
  66c48e:	48 89 85 48 e8 ff ff 	mov    QWORD PTR [rbp-0x17b8],rax
  66c495:	49 8b 81 80 00 00 00 	mov    rax,QWORD PTR [r9+0x80]
  66c49c:	48 89 85 38 e7 ff ff 	mov    QWORD PTR [rbp-0x18c8],rax
  66c4a3:	49 8b 41 68          	mov    rax,QWORD PTR [r9+0x68]
  66c4a7:	48 89 85 48 fd ff ff 	mov    QWORD PTR [rbp-0x2b8],rax
  66c4ae:	48 f7 d8             	neg    rax
  66c4b1:	48 89 85 18 f2 ff ff 	mov    QWORD PTR [rbp-0xde8],rax
  66c4b8:	49 8b 41 50          	mov    rax,QWORD PTR [r9+0x50]
  66c4bc:	48 89 85 50 ec ff ff 	mov    QWORD PTR [rbp-0x13b0],rax
  66c4c3:	48 8b 05 f6 41 45 00 	mov    rax,QWORD PTR [rip+0x4541f6]        # ac06c0 <mod_scalars_mp_gls_m_+0x40>
  66c4ca:	48 c1 e0 03          	shl    rax,0x3
  66c4ce:	48 f7 d8             	neg    rax
  66c4d1:	48 03 05 a8 41 45 00 	add    rax,QWORD PTR [rip+0x4541a8]        # ac0680 <mod_scalars_mp_gls_m_>
  66c4d8:	48 89 85 40 f2 ff ff 	mov    QWORD PTR [rbp-0xdc0],rax
  66c4df:	48 8b 85 70 e7 ff ff 	mov    rax,QWORD PTR [rbp-0x1890]
  66c4e6:	4d 8b 49 38          	mov    r9,QWORD PTR [r9+0x38]
  66c4ea:	4c 89 8d b0 fb ff ff 	mov    QWORD PTR [rbp-0x450],r9
  66c4f1:	4c 8b 08             	mov    r9,QWORD PTR [rax]
  66c4f4:	4c 89 8d d8 e7 ff ff 	mov    QWORD PTR [rbp-0x1828],r9
  66c4fb:	4c 8b 48 68          	mov    r9,QWORD PTR [rax+0x68]
  66c4ff:	4c 89 8d 50 e6 ff ff 	mov    QWORD PTR [rbp-0x19b0],r9
  66c506:	4c 8b 48 50          	mov    r9,QWORD PTR [rax+0x50]
  66c50a:	4c 89 8d 80 e9 ff ff 	mov    QWORD PTR [rbp-0x1680],r9
  66c511:	4c 8b 8d 60 e7 ff ff 	mov    r9,QWORD PTR [rbp-0x18a0]
  66c518:	48 8b 40 38          	mov    rax,QWORD PTR [rax+0x38]
  66c51c:	48 89 85 58 f2 ff ff 	mov    QWORD PTR [rbp-0xda8],rax
  66c523:	49 8b 01             	mov    rax,QWORD PTR [r9]
  66c526:	48 89 85 70 eb ff ff 	mov    QWORD PTR [rbp-0x1490],rax
  66c52d:	48 8b 05 cc e1 44 00 	mov    rax,QWORD PTR [rip+0x44e1cc]        # aba700 <mod_param_mp_n_+0x40>
  66c534:	48 89 85 58 ea ff ff 	mov    QWORD PTR [rbp-0x15a8],rax
  66c53b:	49 8b 41 68          	mov    rax,QWORD PTR [r9+0x68]
  66c53f:	48 89 85 40 fd ff ff 	mov    QWORD PTR [rbp-0x2c0],rax
  66c546:	49 8b 41 50          	mov    rax,QWORD PTR [r9+0x50]
  66c54a:	48 89 85 c0 e9 ff ff 	mov    QWORD PTR [rbp-0x1640],rax
  66c551:	48 8b 85 70 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x1990]
  66c558:	4d 8b 49 38          	mov    r9,QWORD PTR [r9+0x38]
  66c55c:	4c 89 8d 18 f5 ff ff 	mov    QWORD PTR [rbp-0xae8],r9
  66c563:	4c 8b 08             	mov    r9,QWORD PTR [rax]
  66c566:	4c 89 8d 68 ea ff ff 	mov    QWORD PTR [rbp-0x1598],r9
  66c56d:	4c 8b 48 50          	mov    r9,QWORD PTR [rax+0x50]
  66c571:	4c 89 8d 88 e9 ff ff 	mov    QWORD PTR [rbp-0x1678],r9
  66c578:	4c 8b 8d 78 e6 ff ff 	mov    r9,QWORD PTR [rbp-0x1988]
  66c57f:	48 8b 40 38          	mov    rax,QWORD PTR [rax+0x38]
  66c583:	48 89 85 28 f5 ff ff 	mov    QWORD PTR [rbp-0xad8],rax
  66c58a:	49 8b 01             	mov    rax,QWORD PTR [r9]
  66c58d:	48 89 85 78 ea ff ff 	mov    QWORD PTR [rbp-0x1588],rax
  66c594:	49 8b 41 50          	mov    rax,QWORD PTR [r9+0x50]
  66c598:	48 89 85 18 ea ff ff 	mov    QWORD PTR [rbp-0x15e8],rax
  66c59f:	48 8b 85 80 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x1980]
  66c5a6:	4d 8b 49 38          	mov    r9,QWORD PTR [r9+0x38]
  66c5aa:	4c 89 8d 00 f5 ff ff 	mov    QWORD PTR [rbp-0xb00],r9
  66c5b1:	4c 8b 08             	mov    r9,QWORD PTR [rax]
  66c5b4:	4c 89 8d 70 ea ff ff 	mov    QWORD PTR [rbp-0x1590],r9
  66c5bb:	4c 8b 48 50          	mov    r9,QWORD PTR [rax+0x50]
  66c5bf:	4c 89 8d 90 e9 ff ff 	mov    QWORD PTR [rbp-0x1670],r9
  66c5c6:	4c 8b 8d 88 e6 ff ff 	mov    r9,QWORD PTR [rbp-0x1978]
  66c5cd:	48 8b 40 38          	mov    rax,QWORD PTR [rax+0x38]
  66c5d1:	48 89 85 30 f5 ff ff 	mov    QWORD PTR [rbp-0xad0],rax
  66c5d8:	49 8b 01             	mov    rax,QWORD PTR [r9]
  66c5db:	48 89 85 60 ea ff ff 	mov    QWORD PTR [rbp-0x15a0],rax
  66c5e2:	49 8b 41 50          	mov    rax,QWORD PTR [r9+0x50]
  66c5e6:	48 89 85 10 ea ff ff 	mov    QWORD PTR [rbp-0x15f0],rax
  66c5ed:	48 8b 05 8c 43 45 00 	mov    rax,QWORD PTR [rip+0x45438c]        # ac0980 <mod_scalars_mp_gls_c3p_>
  66c5f4:	4d 8b 49 38          	mov    r9,QWORD PTR [r9+0x38]
  66c5f8:	4c 89 8d 08 f5 ff ff 	mov    QWORD PTR [rbp-0xaf8],r9
  66c5ff:	49 63 0f             	movsxd rcx,DWORD PTR [r15]
  66c602:	4e 8d 0c d0          	lea    r9,[rax+r10*8]
  66c606:	48 63 05 a3 43 57 00 	movsxd rax,DWORD PTR [rip+0x5743a3]        # be09b0 <mod_scalars_mp_itemp_>
  66c60d:	48 89 85 60 f2 ff ff 	mov    QWORD PTR [rbp-0xda0],rax
  66c614:	48 8b 05 a5 42 45 00 	mov    rax,QWORD PTR [rip+0x4542a5]        # ac08c0 <mod_scalars_mp_gls_c2_>
  66c61b:	48 89 85 f0 f1 ff ff 	mov    QWORD PTR [rbp-0xe10],rax
  66c622:	48 8b 85 68 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x1998]
  66c629:	4c 89 8d e0 fc ff ff 	mov    QWORD PTR [rbp-0x320],r9
  66c630:	4c 8b 0d 29 42 45 00 	mov    r9,QWORD PTR [rip+0x454229]        # ac0860 <mod_scalars_mp_gls_c1_>
  66c637:	4c 89 8d e8 f1 ff ff 	mov    QWORD PTR [rbp-0xe18],r9
  66c63e:	4c 8b 08             	mov    r9,QWORD PTR [rax]
  66c641:	4c 89 8d 38 eb ff ff 	mov    QWORD PTR [rbp-0x14c8],r9
  66c648:	4c 8b 48 68          	mov    r9,QWORD PTR [rax+0x68]
  66c64c:	4c 89 8d 00 fd ff ff 	mov    QWORD PTR [rbp-0x300],r9
  66c653:	4c 8b 48 50          	mov    r9,QWORD PTR [rax+0x50]
  66c657:	48 8b 40 38          	mov    rax,QWORD PTR [rax+0x38]
  66c65b:	48 89 85 80 f2 ff ff 	mov    QWORD PTR [rbp-0xd80],rax
  66c662:	48 8b 05 b7 42 45 00 	mov    rax,QWORD PTR [rip+0x4542b7]        # ac0920 <mod_scalars_mp_gls_c3m_>
  66c669:	4d 63 f6             	movsxd r14,r14d
  66c66c:	48 89 8d 20 e7 ff ff 	mov    QWORD PTR [rbp-0x18e0],rcx
  66c673:	4c 2b f2             	sub    r14,rdx
  66c676:	4c 89 8d b8 e9 ff ff 	mov    QWORD PTR [rbp-0x1648],r9
  66c67d:	4e 8d 0c d0          	lea    r9,[rax+r10*8]
  66c681:	48 8b 0d 98 40 45 00 	mov    rcx,QWORD PTR [rip+0x454098]        # ac0720 <mod_scalars_mp_gls_n_+0x40>
  66c688:	49 ff c6             	inc    r14
  66c68b:	4c 89 8d e8 fc ff ff 	mov    QWORD PTR [rbp-0x318],r9
  66c692:	48 c1 e1 03          	shl    rcx,0x3
  66c696:	4c 8b 8d 60 e6 ff ff 	mov    r9,QWORD PTR [rbp-0x19a0]
  66c69d:	48 f7 d9             	neg    rcx
  66c6a0:	48 8b bd 88 e8 ff ff 	mov    rdi,QWORD PTR [rbp-0x1778]
  66c6a7:	4c 89 b5 58 e8 ff ff 	mov    QWORD PTR [rbp-0x17a8],r14
  66c6ae:	4c 8b 3d 2b 40 45 00 	mov    r15,QWORD PTR [rip+0x45402b]        # ac06e0 <mod_scalars_mp_gls_n_>
  66c6b5:	49 03 cf             	add    rcx,r15
  66c6b8:	4c 8b 35 01 e0 44 00 	mov    r14,QWORD PTR [rip+0x44e001]        # aba6c0 <mod_param_mp_n_>
  66c6bf:	48 29 bd 58 f0 ff ff 	sub    QWORD PTR [rbp-0xfa8],rdi
  66c6c6:	48 c1 e7 03          	shl    rdi,0x3
  66c6ca:	48 89 bd 88 e8 ff ff 	mov    QWORD PTR [rbp-0x1778],rdi
  66c6d1:	4c 89 85 38 e9 ff ff 	mov    QWORD PTR [rbp-0x16c8],r8
  66c6d8:	4c 89 bd 48 f2 ff ff 	mov    QWORD PTR [rbp-0xdb8],r15
  66c6df:	8b 3d fb 43 57 00    	mov    edi,DWORD PTR [rip+0x5743fb]        # be0ae0 <mod_param_mp_nat_>
  66c6e5:	4c 8b 05 b4 40 45 00 	mov    r8,QWORD PTR [rip+0x4540b4]        # ac07a0 <mod_scalars_mp_gls_pmin_>
  66c6ec:	4c 8b bd 90 e3 ff ff 	mov    r15,QWORD PTR [rbp-0x1c70]
  66c6f3:	49 8b 01             	mov    rax,QWORD PTR [r9]
  66c6f6:	48 89 8d 30 f2 ff ff 	mov    QWORD PTR [rbp-0xdd0],rcx
  66c6fd:	89 bd 20 f5 ff ff    	mov    DWORD PTR [rbp-0xae0],edi
  66c703:	4c 89 85 d8 f1 ff ff 	mov    QWORD PTR [rbp-0xe28],r8
  66c70a:	4c 89 bd d0 e9 ff ff 	mov    QWORD PTR [rbp-0x1630],r15
  66c711:	49 8b 0b             	mov    rcx,QWORD PTR [r11]
  66c714:	4d 8b 43 38          	mov    r8,QWORD PTR [r11+0x38]
  66c718:	4d 8b 7b 50          	mov    r15,QWORD PTR [r11+0x50]
  66c71c:	49 8b bb 80 00 00 00 	mov    rdi,QWORD PTR [r11+0x80]
  66c723:	45 33 db             	xor    r11d,r11d
  66c726:	4c 89 9d 60 e8 ff ff 	mov    QWORD PTR [rbp-0x17a0],r11
  66c72d:	4c 89 9d 68 e8 ff ff 	mov    QWORD PTR [rbp-0x1798],r11
  66c734:	4c 89 9d 70 ec ff ff 	mov    QWORD PTR [rbp-0x1390],r11
  66c73b:	48 89 85 f8 e0 ff ff 	mov    QWORD PTR [rbp-0x1f08],rax
  66c742:	47 8b 5c 96 fc       	mov    r11d,DWORD PTR [r14+r10*4-0x4]
  66c747:	49 8b 41 50          	mov    rax,QWORD PTR [r9+0x50]
  66c74b:	48 89 85 68 ec ff ff 	mov    QWORD PTR [rbp-0x1398],rax
  66c752:	48 8b 85 58 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x19a8]
  66c759:	4c 89 a5 48 e7 ff ff 	mov    QWORD PTR [rbp-0x18b8],r12
  66c760:	4d 0f af e7          	imul   r12,r15
  66c764:	c5 7d 11 b5 90 fa ff 	vmovupd YMMWORD PTR [rbp-0x570],ymm14
  66c76b:	ff 
  66c76c:	c5 fb 10 0d a4 48 57 	vmovsd xmm1,QWORD PTR [rip+0x5748a4]        # be1018 <mod_scalars_mp_gls_b4_>
  66c773:	00 
  66c774:	c5 7b 10 95 b0 e7 ff 	vmovsd xmm10,QWORD PTR [rbp-0x1850]
  66c77b:	ff 
  66c77c:	c5 29 57 1d 3c f1 1d 	vxorpd xmm11,xmm10,XMMWORD PTR [rip+0x1df13c]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  66c783:	00 
  66c784:	c5 7b 11 9d f0 fc ff 	vmovsd QWORD PTR [rbp-0x310],xmm11
  66c78b:	ff 
  66c78c:	4c 89 95 78 f4 ff ff 	mov    QWORD PTR [rbp-0xb88],r10
  66c793:	45 8d 53 ff          	lea    r10d,[r11-0x1]
  66c797:	4d 63 db             	movsxd r11,r11d
  66c79a:	4d 8b 49 38          	mov    r9,QWORD PTR [r9+0x38]
  66c79e:	4c 89 8d 08 fd ff ff 	mov    QWORD PTR [rbp-0x2f8],r9
  66c7a5:	4c 8b 08             	mov    r9,QWORD PTR [rax]
  66c7a8:	4c 89 8d f0 e0 ff ff 	mov    QWORD PTR [rbp-0x1f10],r9
  66c7af:	4c 8b 48 50          	mov    r9,QWORD PTR [rax+0x50]
  66c7b3:	48 8b 40 38          	mov    rax,QWORD PTR [rax+0x38]
  66c7b7:	4d 63 d2             	movsxd r10,r10d
  66c7ba:	4c 89 95 80 eb ff ff 	mov    QWORD PTR [rbp-0x1480],r10
  66c7c1:	4c 89 9d 78 eb ff ff 	mov    QWORD PTR [rbp-0x1488],r11
  66c7c8:	4c 89 b5 08 ea ff ff 	mov    QWORD PTR [rbp-0x15f8],r14
  66c7cf:	4d 8d 73 ff          	lea    r14,[r11-0x1]
  66c7d3:	44 8b 9d 80 fa ff ff 	mov    r11d,DWORD PTR [rbp-0x580]
  66c7da:	44 8b 95 78 fa ff ff 	mov    r10d,DWORD PTR [rbp-0x588]
  66c7e1:	45 2b da             	sub    r11d,r10d
  66c7e4:	48 89 95 60 eb ff ff 	mov    QWORD PTR [rbp-0x14a0],rdx
  66c7eb:	41 ff c3             	inc    r11d
  66c7ee:	48 89 85 10 fd ff ff 	mov    QWORD PTR [rbp-0x2f0],rax
  66c7f5:	49 0f af d7          	imul   rdx,r15
  66c7f9:	c4 41 1b 5e f7       	vdivsd xmm14,xmm12,xmm15
  66c7fe:	48 8b 85 e8 e5 ff ff 	mov    rax,QWORD PTR [rbp-0x1a18]
  66c805:	44 89 9d 08 ef ff ff 	mov    DWORD PTR [rbp-0x10f8],r11d
  66c80c:	41 d1 eb             	shr    r11d,1
  66c80f:	4c 89 8d 48 ec ff ff 	mov    QWORD PTR [rbp-0x13b8],r9
  66c816:	4c 8b 08             	mov    r9,QWORD PTR [rax]
  66c819:	44 89 9d f8 ee ff ff 	mov    DWORD PTR [rbp-0x1108],r11d
  66c820:	4c 89 9d 90 ee ff ff 	mov    QWORD PTR [rbp-0x1170],r11
  66c827:	4c 8d 1c 36          	lea    r11,[rsi+rsi*1]
  66c82b:	4c 89 8d 98 e6 ff ff 	mov    QWORD PTR [rbp-0x1968],r9
  66c832:	4c 8b 48 68          	mov    r9,QWORD PTR [rax+0x68]
  66c836:	48 89 8d f0 e7 ff ff 	mov    QWORD PTR [rbp-0x1810],rcx
  66c83d:	48 2b cf             	sub    rcx,rdi
  66c840:	4c 89 9d e8 e7 ff ff 	mov    QWORD PTR [rbp-0x1818],r11
  66c847:	4d 2b dc             	sub    r11,r12
  66c84a:	4c 89 8d 00 ef ff ff 	mov    QWORD PTR [rbp-0x1100],r9
  66c851:	4c 8b 48 50          	mov    r9,QWORD PTR [rax+0x50]
  66c855:	4c 89 8d e0 e9 ff ff 	mov    QWORD PTR [rbp-0x1620],r9
  66c85c:	4c 8b 48 38          	mov    r9,QWORD PTR [rax+0x38]
  66c860:	48 89 c8             	mov    rax,rcx
  66c863:	4d 63 d2             	movsxd r10,r10d
  66c866:	49 2b c4             	sub    rax,r12
  66c869:	4c 89 9d 68 eb ff ff 	mov    QWORD PTR [rbp-0x1498],r11
  66c870:	48 89 85 e8 e9 ff ff 	mov    QWORD PTR [rbp-0x1618],rax
  66c877:	4a 8d 04 19          	lea    rax,[rcx+r11*1]
  66c87b:	4c 8b 9d e0 e5 ff ff 	mov    r11,QWORD PTR [rbp-0x1a20]
  66c882:	4c 89 b5 d8 fc ff ff 	mov    QWORD PTR [rbp-0x328],r14
  66c889:	49 89 f6             	mov    r14,rsi
  66c88c:	4c 89 bd 58 ec ff ff 	mov    QWORD PTR [rbp-0x13a8],r15
  66c893:	4d 2b f4             	sub    r14,r12
  66c896:	4c 89 a5 a8 e6 ff ff 	mov    QWORD PTR [rbp-0x1958],r12
  66c89d:	4c 2b e2             	sub    r12,rdx
  66c8a0:	49 89 cf             	mov    r15,rcx
  66c8a3:	4d 2b fc             	sub    r15,r12
  66c8a6:	4c 89 bd e0 e8 ff ff 	mov    QWORD PTR [rbp-0x1720],r15
  66c8ad:	4f 8d 3c d3          	lea    r15,[r11+r10*8]
  66c8b1:	4c 8b 9d 88 e8 ff ff 	mov    r11,QWORD PTR [rbp-0x1778]
  66c8b8:	4d 2b fb             	sub    r15,r11
  66c8bb:	4c 89 bd 50 eb ff ff 	mov    QWORD PTR [rbp-0x14b0],r15
  66c8c2:	4c 8b bd d8 e5 ff ff 	mov    r15,QWORD PTR [rbp-0x1a28]
  66c8c9:	4c 89 8d 28 fb ff ff 	mov    QWORD PTR [rbp-0x4d8],r9
  66c8d0:	4c 89 ad 40 e7 ff ff 	mov    QWORD PTR [rbp-0x18c0],r13
  66c8d7:	4d 0f af e8          	imul   r13,r8
  66c8db:	4c 89 95 58 e7 ff ff 	mov    QWORD PTR [rbp-0x18a8],r10
  66c8e2:	4f 8d 3c d7          	lea    r15,[r15+r10*8]
  66c8e6:	4d 2b fb             	sub    r15,r11
  66c8e9:	4c 89 bd 48 eb ff ff 	mov    QWORD PTR [rbp-0x14b8],r15
  66c8f0:	4c 8b bd d0 e5 ff ff 	mov    r15,QWORD PTR [rbp-0x1a30]
  66c8f7:	48 89 bd 50 e7 ff ff 	mov    QWORD PTR [rbp-0x18b0],rdi
  66c8fe:	4c 89 b5 f0 e6 ff ff 	mov    QWORD PTR [rbp-0x1910],r14
  66c905:	4c 03 f1             	add    r14,rcx
  66c908:	4c 89 b5 88 ea ff ff 	mov    QWORD PTR [rbp-0x1578],r14
  66c90f:	4f 8d 3c d7          	lea    r15,[r15+r10*8]
  66c913:	4d 2b fb             	sub    r15,r11
  66c916:	49 f7 db             	neg    r11
  66c919:	4c 89 bd e0 e7 ff ff 	mov    QWORD PTR [rbp-0x1820],r15
  66c920:	4d 89 d7             	mov    r15,r10
  66c923:	4c 0f af bd 28 f5 ff 	imul   r15,QWORD PTR [rbp-0xad8]
  66c92a:	ff 
  66c92b:	4c 89 bd d0 e6 ff ff 	mov    QWORD PTR [rbp-0x1930],r15
  66c932:	4d 89 d7             	mov    r15,r10
  66c935:	4c 0f af bd 30 f5 ff 	imul   r15,QWORD PTR [rbp-0xad0]
  66c93c:	ff 
  66c93d:	4c 89 bd b0 e6 ff ff 	mov    QWORD PTR [rbp-0x1950],r15
  66c944:	49 89 d6             	mov    r14,rdx
  66c947:	4c 8b bd 68 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd98]
  66c94e:	4d 2b f5             	sub    r14,r13
  66c951:	4d 0f af fa          	imul   r15,r10
  66c955:	4c 89 bd f8 e9 ff ff 	mov    QWORD PTR [rbp-0x1608],r15
  66c95c:	4d 89 d7             	mov    r15,r10
  66c95f:	4c 0f af bd 80 f2 ff 	imul   r15,QWORD PTR [rbp-0xd80]
  66c966:	ff 
  66c967:	4c 89 bd f0 e9 ff ff 	mov    QWORD PTR [rbp-0x1610],r15
  66c96e:	4c 8b bd 78 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd88]
  66c975:	4d 0f af fa          	imul   r15,r10
  66c979:	4c 89 bd 00 eb ff ff 	mov    QWORD PTR [rbp-0x1500],r15
  66c980:	4c 8b bd 70 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd90]
  66c987:	4d 0f af fa          	imul   r15,r10
  66c98b:	4c 89 bd 40 ea ff ff 	mov    QWORD PTR [rbp-0x15c0],r15
  66c992:	4c 8b bd 10 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xaf0]
  66c999:	4d 0f af fa          	imul   r15,r10
  66c99d:	4c 89 bd 38 ea ff ff 	mov    QWORD PTR [rbp-0x15c8],r15
  66c9a4:	4d 89 d7             	mov    r15,r10
  66c9a7:	4c 0f af bd 18 f5 ff 	imul   r15,QWORD PTR [rbp-0xae8]
  66c9ae:	ff 
  66c9af:	4c 89 bd 30 ea ff ff 	mov    QWORD PTR [rbp-0x15d0],r15
  66c9b6:	4d 89 d7             	mov    r15,r10
  66c9b9:	4d 0f af f9          	imul   r15,r9
  66c9bd:	4c 89 bd 28 ea ff ff 	mov    QWORD PTR [rbp-0x15d8],r15
  66c9c4:	4e 8d 3c d5 00 00 00 	lea    r15,[r10*8+0x0]
  66c9cb:	00 
  66c9cc:	4d 03 df             	add    r11,r15
  66c9cf:	4d 89 c1             	mov    r9,r8
  66c9d2:	4c 89 bd 90 ea ff ff 	mov    QWORD PTR [rbp-0x1570],r15
  66c9d9:	4c 8b bd 10 e5 ff ff 	mov    r15,QWORD PTR [rbp-0x1af0]
  66c9e0:	4d 03 fb             	add    r15,r11
  66c9e3:	4c 89 bd 70 f4 ff ff 	mov    QWORD PTR [rbp-0xb90],r15
  66c9ea:	4c 8b bd 70 e5 ff ff 	mov    r15,QWORD PTR [rbp-0x1a90]
  66c9f1:	4d 03 fb             	add    r15,r11
  66c9f4:	4c 89 bd 48 ea ff ff 	mov    QWORD PTR [rbp-0x15b8],r15
  66c9fb:	4c 8b bd b0 e4 ff ff 	mov    r15,QWORD PTR [rbp-0x1b50]
  66ca02:	4d 03 fb             	add    r15,r11
  66ca05:	4c 89 bd 40 f5 ff ff 	mov    QWORD PTR [rbp-0xac0],r15
  66ca0c:	4c 8b bd 50 e4 ff ff 	mov    r15,QWORD PTR [rbp-0x1bb0]
  66ca13:	4d 03 fb             	add    r15,r11
  66ca16:	4c 89 bd 38 f5 ff ff 	mov    QWORD PTR [rbp-0xac8],r15
  66ca1d:	4c 8b bd f0 e3 ff ff 	mov    r15,QWORD PTR [rbp-0x1c10]
  66ca24:	4d 03 fb             	add    r15,r11
  66ca27:	4c 89 bd 48 f5 ff ff 	mov    QWORD PTR [rbp-0xab8],r15
  66ca2e:	4c 8b bd b0 fb ff ff 	mov    r15,QWORD PTR [rbp-0x450]
  66ca35:	4d 0f af fa          	imul   r15,r10
  66ca39:	4d 0f af ca          	imul   r9,r10
  66ca3d:	4c 89 bd 08 eb ff ff 	mov    QWORD PTR [rbp-0x14f8],r15
  66ca44:	49 03 d1             	add    rdx,r9
  66ca47:	4c 8b 95 40 eb ff ff 	mov    r10,QWORD PTR [rbp-0x14c0]
  66ca4e:	4c 8b bd 38 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x18c8]
  66ca55:	49 0f af fa          	imul   rdi,r10
  66ca59:	4d 0f af d7          	imul   r10,r15
  66ca5d:	4c 89 85 28 fd ff ff 	mov    QWORD PTR [rbp-0x2d8],r8
  66ca64:	48 89 95 a8 ea ff ff 	mov    QWORD PTR [rbp-0x1558],rdx
  66ca6b:	4b 8d 14 08          	lea    rdx,[r8+r9*1]
  66ca6f:	49 f7 d8             	neg    r8
  66ca72:	49 03 d6             	add    rdx,r14
  66ca75:	4d 03 c1             	add    r8,r9
  66ca78:	4d 03 c6             	add    r8,r14
  66ca7b:	4c 89 ad 00 ea ff ff 	mov    QWORD PTR [rbp-0x1600],r13
  66ca82:	4d 2b e9             	sub    r13,r9
  66ca85:	4c 89 95 40 eb ff ff 	mov    QWORD PTR [rbp-0x14c0],r10
  66ca8c:	4c 89 a5 18 e7 ff ff 	mov    QWORD PTR [rbp-0x18e8],r12
  66ca93:	4c 89 ad 10 e9 ff ff 	mov    QWORD PTR [rbp-0x16f0],r13
  66ca9a:	4e 8d 14 00          	lea    r10,[rax+r8*1]
  66ca9e:	4c 03 d7             	add    r10,rdi
  66caa1:	48 03 c2             	add    rax,rdx
  66caa4:	4c 89 95 00 e8 ff ff 	mov    QWORD PTR [rbp-0x1800],r10
  66caab:	4d 03 e5             	add    r12,r13
  66caae:	4c 8b 95 88 ea ff ff 	mov    r10,QWORD PTR [rbp-0x1578]
  66cab5:	49 03 d2             	add    rdx,r10
  66cab8:	48 03 d7             	add    rdx,rdi
  66cabb:	4c 8d 2c 0e          	lea    r13,[rsi+rcx*1]
  66cabf:	48 89 95 38 e8 ff ff 	mov    QWORD PTR [rbp-0x17c8],rdx
  66cac6:	48 8d 14 71          	lea    rdx,[rcx+rsi*2]
  66caca:	49 2b d4             	sub    rdx,r12
  66cacd:	4d 2b ec             	sub    r13,r12
  66cad0:	48 03 d7             	add    rdx,rdi
  66cad3:	4d 03 c2             	add    r8,r10
  66cad6:	48 89 95 08 e8 ff ff 	mov    QWORD PTR [rbp-0x17f8],rdx
  66cadd:	4c 03 c7             	add    r8,rdi
  66cae0:	48 8b 95 90 e3 ff ff 	mov    rdx,QWORD PTR [rbp-0x1c70]
  66cae7:	48 03 c7             	add    rax,rdi
  66caea:	48 89 b5 58 fd ff ff 	mov    QWORD PTR [rbp-0x2a8],rsi
  66caf1:	48 89 8d 00 e7 ff ff 	mov    QWORD PTR [rbp-0x1900],rcx
  66caf8:	49 8d 0c 39          	lea    rcx,[r9+rdi*1]
  66cafc:	48 89 bd 20 ea ff ff 	mov    QWORD PTR [rbp-0x15e0],rdi
  66cb03:	49 8d 34 13          	lea    rsi,[r11+rdx*1]
  66cb07:	48 89 b5 b0 e8 ff ff 	mov    QWORD PTR [rbp-0x1750],rsi
  66cb0e:	49 03 fd             	add    rdi,r13
  66cb11:	48 8b b5 d0 e2 ff ff 	mov    rsi,QWORD PTR [rbp-0x1d30]
  66cb18:	49 03 ce             	add    rcx,r14
  66cb1b:	48 89 bd 40 ec ff ff 	mov    QWORD PTR [rbp-0x13c0],rdi
  66cb22:	4c 03 d1             	add    r10,rcx
  66cb25:	48 8b bd 58 f0 ff ff 	mov    rdi,QWORD PTR [rbp-0xfa8]
  66cb2c:	4c 89 85 28 e8 ff ff 	mov    QWORD PTR [rbp-0x17d8],r8
  66cb33:	4d 8d 04 33          	lea    r8,[r11+rsi*1]
  66cb37:	4c 89 85 c0 e8 ff ff 	mov    QWORD PTR [rbp-0x1740],r8
  66cb3e:	49 89 f8             	mov    r8,rdi
  66cb41:	49 c1 e0 05          	shl    r8,0x5
  66cb45:	48 03 8d e8 e9 ff ff 	add    rcx,QWORD PTR [rbp-0x1618]
  66cb4c:	4d 03 c3             	add    r8,r11
  66cb4f:	4c 89 b5 28 eb ff ff 	mov    QWORD PTR [rbp-0x14d8],r14
  66cb56:	48 89 8d 28 e9 ff ff 	mov    QWORD PTR [rbp-0x16d8],rcx
  66cb5d:	4c 8b b5 60 e2 ff ff 	mov    r14,QWORD PTR [rbp-0x1da0]
  66cb64:	48 8b 8d 00 e2 ff ff 	mov    rcx,QWORD PTR [rbp-0x1e00]
  66cb6b:	48 89 85 40 e8 ff ff 	mov    QWORD PTR [rbp-0x17c0],rax
  66cb72:	4c 89 95 88 ea ff ff 	mov    QWORD PTR [rbp-0x1578],r10
  66cb79:	4b 8d 04 33          	lea    rax,[r11+r14*1]
  66cb7d:	48 89 85 b8 e8 ff ff 	mov    QWORD PTR [rbp-0x1748],rax
  66cb84:	4a 8d 04 01          	lea    rax,[rcx+r8*1]
  66cb88:	48 89 85 60 f0 ff ff 	mov    QWORD PTR [rbp-0xfa0],rax
  66cb8f:	48 89 f8             	mov    rax,rdi
  66cb92:	48 c1 e0 04          	shl    rax,0x4
  66cb96:	49 03 c3             	add    rax,r11
  66cb99:	4c 8b 95 30 e3 ff ff 	mov    r10,QWORD PTR [rbp-0x1cd0]
  66cba0:	4c 89 8d b0 ea ff ff 	mov    QWORD PTR [rbp-0x1550],r9
  66cba7:	4d 8d 0c 0b          	lea    r9,[r11+rcx*1]
  66cbab:	4c 89 a5 10 eb ff ff 	mov    QWORD PTR [rbp-0x14f0],r12
  66cbb2:	4c 89 8d c8 e8 ff ff 	mov    QWORD PTR [rbp-0x1738],r9
  66cbb9:	4f 8d 24 13          	lea    r12,[r11+r10*1]
  66cbbd:	4c 89 a5 d0 e8 ff ff 	mov    QWORD PTR [rbp-0x1730],r12
  66cbc4:	4c 8d 0c 06          	lea    r9,[rsi+rax*1]
  66cbc8:	4c 89 9d 88 e8 ff ff 	mov    QWORD PTR [rbp-0x1778],r11
  66cbcf:	4d 8d 24 06          	lea    r12,[r14+rax*1]
  66cbd3:	48 03 c1             	add    rax,rcx
  66cbd6:	48 89 85 50 f2 ff ff 	mov    QWORD PTR [rbp-0xdb0],rax
  66cbdd:	49 8d 04 fb          	lea    rax,[r11+rdi*8]
  66cbe1:	4c 03 d0             	add    r10,rax
  66cbe4:	4c 8d 1c 06          	lea    r11,[rsi+rax*1]
  66cbe8:	4c 89 95 88 f2 ff ff 	mov    QWORD PTR [rbp-0xd78],r10
  66cbef:	4c 8d 14 02          	lea    r10,[rdx+rax*1]
  66cbf3:	4c 89 9d d8 e8 ff ff 	mov    QWORD PTR [rbp-0x1728],r11
  66cbfa:	48 8d 14 fd 08 00 00 	lea    rdx,[rdi*8+0x8]
  66cc01:	00 
  66cc02:	4c 89 95 00 f2 ff ff 	mov    QWORD PTR [rbp-0xe00],r10
  66cc09:	4d 8d 1c 06          	lea    r11,[r14+rax*1]
  66cc0d:	4c 89 9d e8 f4 ff ff 	mov    QWORD PTR [rbp-0xb18],r11
  66cc14:	4c 8d 14 01          	lea    r10,[rcx+rax*1]
  66cc18:	48 8b bd 68 e7 ff ff 	mov    rdi,QWORD PTR [rbp-0x1898]
  66cc1f:	4c 8d 5c 01 08       	lea    r11,[rcx+rax*1+0x8]
  66cc24:	48 8b 8d c0 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x340]
  66cc2b:	48 0f af fa          	imul   rdi,rdx
  66cc2f:	48 0f af ca          	imul   rcx,rdx
  66cc33:	4c 89 ad 80 ea ff ff 	mov    QWORD PTR [rbp-0x1580],r13
  66cc3a:	4f 8d 2c 06          	lea    r13,[r14+r8*1]
  66cc3e:	4c 89 ad 68 f0 ff ff 	mov    QWORD PTR [rbp-0xf98],r13
  66cc45:	4d 8d 74 06 08       	lea    r14,[r14+rax*1+0x8]
  66cc4a:	4c 89 b5 90 ec ff ff 	mov    QWORD PTR [rbp-0x1370],r14
  66cc51:	4c 03 c6             	add    r8,rsi
  66cc54:	4c 8b b5 60 eb ff ff 	mov    r14,QWORD PTR [rbp-0x14a0]
  66cc5b:	4d 89 f5             	mov    r13,r14
  66cc5e:	4c 0f af ea          	imul   r13,rdx
  66cc62:	4c 89 85 70 f0 ff ff 	mov    QWORD PTR [rbp-0xf90],r8
  66cc69:	48 89 d6             	mov    rsi,rdx
  66cc6c:	4c 8b 85 50 eb ff ff 	mov    r8,QWORD PTR [rbp-0x14b0]
  66cc73:	48 f7 de             	neg    rsi
  66cc76:	4c 2b c7             	sub    r8,rdi
  66cc79:	48 2b f9             	sub    rdi,rcx
  66cc7c:	4c 89 8d 78 f0 ff ff 	mov    QWORD PTR [rbp-0xf88],r9
  66cc83:	4d 03 c5             	add    r8,r13
  66cc86:	4c 8b 8d 48 eb ff ff 	mov    r9,QWORD PTR [rbp-0x14b8]
  66cc8d:	4c 2b cf             	sub    r9,rdi
  66cc90:	4d 03 cd             	add    r9,r13
  66cc93:	4c 89 9d 98 ec ff ff 	mov    QWORD PTR [rbp-0x1368],r11
  66cc9a:	4c 89 8d 48 eb ff ff 	mov    QWORD PTR [rbp-0x14b8],r9
  66cca1:	4c 8b 8d 48 e7 ff ff 	mov    r9,QWORD PTR [rbp-0x18b8]
  66cca8:	4c 8b 9d 50 ec ff ff 	mov    r11,QWORD PTR [rbp-0x13b0]
  66ccaf:	4d 0f af cb          	imul   r9,r11
  66ccb3:	4d 0f af f3          	imul   r14,r11
  66ccb7:	4c 89 a5 f8 f1 ff ff 	mov    QWORD PTR [rbp-0xe08],r12
  66ccbe:	4c 8b a5 e0 e7 ff ff 	mov    r12,QWORD PTR [rbp-0x1820]
  66ccc5:	4c 2b e7             	sub    r12,rdi
  66ccc8:	48 8b bd 48 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2b8]
  66cccf:	4d 03 ec             	add    r13,r12
  66ccd2:	4c 89 95 f0 f4 ff ff 	mov    QWORD PTR [rbp-0xb10],r10
  66ccd9:	4d 89 cc             	mov    r12,r9
  66ccdc:	48 89 8d c0 fc ff ff 	mov    QWORD PTR [rbp-0x340],rcx
  66cce3:	4d 2b e6             	sub    r12,r14
  66cce6:	48 8b 8d 48 e8 ff ff 	mov    rcx,QWORD PTR [rbp-0x17b8]
  66cced:	4c 8d 14 3f          	lea    r10,[rdi+rdi*1]
  66ccf1:	4c 89 95 50 e8 ff ff 	mov    QWORD PTR [rbp-0x17b0],r10
  66ccf8:	49 2b cf             	sub    rcx,r15
  66ccfb:	4d 2b d1             	sub    r10,r9
  66ccfe:	49 89 ff             	mov    r15,rdi
  66cd01:	4c 89 95 58 eb ff ff 	mov    QWORD PTR [rbp-0x14a8],r10
  66cd08:	4d 2b f9             	sub    r15,r9
  66cd0b:	48 89 95 60 fd ff ff 	mov    QWORD PTR [rbp-0x2a0],rdx
  66cd12:	4c 89 ad 40 e9 ff ff 	mov    QWORD PTR [rbp-0x16c0],r13
  66cd19:	4c 8d 1c 0f          	lea    r11,[rdi+rcx*1]
  66cd1d:	4c 8b ad 40 e7 ff ff 	mov    r13,QWORD PTR [rbp-0x18c0]
  66cd24:	4a 8d 14 11          	lea    rdx,[rcx+r10*1]
  66cd28:	4c 8b 95 b0 fb ff ff 	mov    r10,QWORD PTR [rbp-0x450]
  66cd2f:	4d 0f af ea          	imul   r13,r10
  66cd33:	48 8b 85 08 eb ff ff 	mov    rax,QWORD PTR [rbp-0x14f8]
  66cd3a:	4d 2b f5             	sub    r14,r13
  66cd3d:	4c 2b e8             	sub    r13,rax
  66cd40:	48 89 b5 20 f2 ff ff 	mov    QWORD PTR [rbp-0xde0],rsi
  66cd47:	48 89 ce             	mov    rsi,rcx
  66cd4a:	4c 89 85 50 eb ff ff 	mov    QWORD PTR [rbp-0x14b0],r8
  66cd51:	4e 8d 04 39          	lea    r8,[rcx+r15*1]
  66cd55:	4c 89 bd 10 e7 ff ff 	mov    QWORD PTR [rbp-0x18f0],r15
  66cd5c:	49 2b f4             	sub    rsi,r12
  66cd5f:	4c 89 ad 48 e9 ff ff 	mov    QWORD PTR [rbp-0x16b8],r13
  66cd66:	4f 8d 3c 2c          	lea    r15,[r12+r13*1]
  66cd6a:	4d 89 d5             	mov    r13,r10
  66cd6d:	4d 2b df             	sub    r11,r15
  66cd70:	48 89 b5 f8 e8 ff ff 	mov    QWORD PTR [rbp-0x1708],rsi
  66cd77:	49 8d 34 02          	lea    rsi,[r10+rax*1]
  66cd7b:	4c 8b 95 40 eb ff ff 	mov    r10,QWORD PTR [rbp-0x14c0]
  66cd82:	49 f7 dd             	neg    r13
  66cd85:	4c 03 e8             	add    r13,rax
  66cd88:	49 03 f6             	add    rsi,r14
  66cd8b:	4d 03 ee             	add    r13,r14
  66cd8e:	4c 89 b5 f8 ea ff ff 	mov    QWORD PTR [rbp-0x1508],r14
  66cd95:	49 03 c2             	add    rax,r10
  66cd98:	49 03 c6             	add    rax,r14
  66cd9b:	49 89 ce             	mov    r14,rcx
  66cd9e:	4d 2b f1             	sub    r14,r9
  66cda1:	4c 03 f0             	add    r14,rax
  66cda4:	4c 89 a5 08 e7 ff ff 	mov    QWORD PTR [rbp-0x18f8],r12
  66cdab:	4e 8d 24 2a          	lea    r12,[rdx+r13*1]
  66cdaf:	4c 89 b5 20 e9 ff ff 	mov    QWORD PTR [rbp-0x16e0],r14
  66cdb6:	48 03 d6             	add    rdx,rsi
  66cdb9:	4c 8b b5 48 e7 ff ff 	mov    r14,QWORD PTR [rbp-0x18b8]
  66cdc0:	4d 03 e8             	add    r13,r8
  66cdc3:	49 03 f0             	add    rsi,r8
  66cdc6:	4c 03 c0             	add    r8,rax
  66cdc9:	4c 89 85 78 e9 ff ff 	mov    QWORD PTR [rbp-0x1688],r8
  66cdd0:	4d 89 f0             	mov    r8,r14
  66cdd3:	4c 89 8d d8 e6 ff ff 	mov    QWORD PTR [rbp-0x1928],r9
  66cdda:	49 03 d2             	add    rdx,r10
  66cddd:	48 89 95 30 e8 ff ff 	mov    QWORD PTR [rbp-0x17d0],rdx
  66cde4:	48 8d 14 79          	lea    rdx,[rcx+rdi*2]
  66cde8:	4c 8b 8d a0 e9 ff ff 	mov    r9,QWORD PTR [rbp-0x1660]
  66cdef:	49 2b d7             	sub    rdx,r15
  66cdf2:	4d 0f af c1          	imul   r8,r9
  66cdf6:	49 03 f2             	add    rsi,r10
  66cdf9:	49 03 d2             	add    rdx,r10
  66cdfc:	48 89 b5 20 e8 ff ff 	mov    QWORD PTR [rbp-0x17e0],rsi
  66ce03:	4d 03 e2             	add    r12,r10
  66ce06:	48 89 95 10 e8 ff ff 	mov    QWORD PTR [rbp-0x17f0],rdx
  66ce0d:	4d 03 ea             	add    r13,r10
  66ce10:	48 8b 95 60 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x14a0]
  66ce17:	4d 03 d3             	add    r10,r11
  66ce1a:	48 8b b5 40 e7 ff ff 	mov    rsi,QWORD PTR [rbp-0x18c0]
  66ce21:	48 89 d0             	mov    rax,rdx
  66ce24:	4c 89 95 60 ec ff ff 	mov    QWORD PTR [rbp-0x13a0],r10
  66ce2b:	49 89 f2             	mov    r10,rsi
  66ce2e:	49 0f af c1          	imul   rax,r9
  66ce32:	4c 0f af 95 68 f2 ff 	imul   r10,QWORD PTR [rbp-0xd98]
  66ce39:	ff 
  66ce3a:	4c 89 a5 f8 e7 ff ff 	mov    QWORD PTR [rbp-0x1808],r12
  66ce41:	49 89 d1             	mov    r9,rdx
  66ce44:	4c 8b a5 28 e7 ff ff 	mov    r12,QWORD PTR [rbp-0x18d8]
  66ce4b:	4d 2b e0             	sub    r12,r8
  66ce4e:	4c 89 9d f0 ea ff ff 	mov    QWORD PTR [rbp-0x1510],r11
  66ce55:	4c 89 ad 18 e8 ff ff 	mov    QWORD PTR [rbp-0x17e8],r13
  66ce5c:	4d 89 f5             	mov    r13,r14
  66ce5f:	4c 89 85 e0 e6 ff ff 	mov    QWORD PTR [rbp-0x1920],r8
  66ce66:	4c 8b 85 a8 e9 ff ff 	mov    r8,QWORD PTR [rbp-0x1658]
  66ce6d:	4d 8d 1c 04          	lea    r11,[r12+rax*1]
  66ce71:	49 2b c2             	sub    rax,r10
  66ce74:	48 89 85 d8 ea ff ff 	mov    QWORD PTR [rbp-0x1528],rax
  66ce7b:	4c 03 e0             	add    r12,rax
  66ce7e:	4d 0f af e8          	imul   r13,r8
  66ce82:	4d 0f af c8          	imul   r9,r8
  66ce86:	48 89 f0             	mov    rax,rsi
  66ce89:	4d 89 f0             	mov    r8,r14
  66ce8c:	48 0f af 85 70 f2 ff 	imul   rax,QWORD PTR [rbp-0xd90]
  66ce93:	ff 
  66ce94:	4c 2b 95 f8 e9 ff ff 	sub    r10,QWORD PTR [rbp-0x1608]
  66ce9b:	4d 2b da             	sub    r11,r10
  66ce9e:	4d 89 ca             	mov    r10,r9
  66cea1:	4c 89 9d 30 e9 ff ff 	mov    QWORD PTR [rbp-0x16d0],r11
  66cea8:	4c 2b d0             	sub    r10,rax
  66ceab:	4c 8b 9d f8 e6 ff ff 	mov    r11,QWORD PTR [rbp-0x1908]
  66ceb2:	4d 2b dd             	sub    r11,r13
  66ceb5:	48 2b 85 40 ea ff ff 	sub    rax,QWORD PTR [rbp-0x15c0]
  66cebc:	4c 89 ad c8 e6 ff ff 	mov    QWORD PTR [rbp-0x1938],r13
  66cec3:	4d 2b e9             	sub    r13,r9
  66cec6:	4d 03 cb             	add    r9,r11
  66cec9:	4d 03 da             	add    r11,r10
  66cecc:	48 89 85 a0 e6 ff ff 	mov    QWORD PTR [rbp-0x1960],rax
  66ced3:	4c 2b c8             	sub    r9,rax
  66ced6:	48 89 d0             	mov    rax,rdx
  66ced9:	4c 89 95 18 eb ff ff 	mov    QWORD PTR [rbp-0x14e8],r10
  66cee0:	4c 8b 95 b0 e9 ff ff 	mov    r10,QWORD PTR [rbp-0x1650]
  66cee7:	4d 0f af c2          	imul   r8,r10
  66ceeb:	49 0f af c2          	imul   rax,r10
  66ceef:	49 89 f2             	mov    r10,rsi
  66cef2:	4c 0f af 95 10 f5 ff 	imul   r10,QWORD PTR [rbp-0xaf0]
  66cef9:	ff 
  66cefa:	48 0f af b5 78 f2 ff 	imul   rsi,QWORD PTR [rbp-0xd88]
  66cf01:	ff 
  66cf02:	4c 89 a5 98 ea ff ff 	mov    QWORD PTR [rbp-0x1568],r12
  66cf09:	49 89 c4             	mov    r12,rax
  66cf0c:	4c 89 9d 68 e9 ff ff 	mov    QWORD PTR [rbp-0x1698],r11
  66cf13:	4d 2b e2             	sub    r12,r10
  66cf16:	4c 8b 9d e8 e6 ff ff 	mov    r11,QWORD PTR [rbp-0x1918]
  66cf1d:	4d 2b d8             	sub    r11,r8
  66cf20:	4c 89 85 b8 e6 ff ff 	mov    QWORD PTR [rbp-0x1948],r8
  66cf27:	4c 2b c0             	sub    r8,rax
  66cf2a:	49 03 c3             	add    rax,r11
  66cf2d:	4d 03 dc             	add    r11,r12
  66cf30:	4c 89 9d 60 e9 ff ff 	mov    QWORD PTR [rbp-0x16a0],r11
  66cf37:	4c 8b 9d 98 e9 ff ff 	mov    r11,QWORD PTR [rbp-0x1668]
  66cf3e:	4d 0f af f3          	imul   r14,r11
  66cf42:	49 0f af d3          	imul   rdx,r11
  66cf46:	4c 89 85 e8 ea ff ff 	mov    QWORD PTR [rbp-0x1518],r8
  66cf4d:	4d 89 f3             	mov    r11,r14
  66cf50:	4c 63 85 80 fa ff ff 	movsxd r8,DWORD PTR [rbp-0x580]
  66cf57:	4c 2b da             	sub    r11,rdx
  66cf5a:	4c 2b 85 58 e7 ff ff 	sub    r8,QWORD PTR [rbp-0x18a8]
  66cf61:	48 2b d6             	sub    rdx,rsi
  66cf64:	c5 7b 11 b5 30 e6 ff 	vmovsd QWORD PTR [rbp-0x19d0],xmm14
  66cf6b:	ff 
  66cf6c:	c4 41 7b 59 f7       	vmulsd xmm14,xmm0,xmm15
  66cf71:	4c 2b 95 38 ea ff ff 	sub    r10,QWORD PTR [rbp-0x15c8]
  66cf78:	4c 89 ad e0 ea ff ff 	mov    QWORD PTR [rbp-0x1520],r13
  66cf7f:	49 2b c2             	sub    rax,r10
  66cf82:	44 8b 2d 57 3b 57 00 	mov    r13d,DWORD PTR [rip+0x573b57]        # be0ae0 <mod_param_mp_nat_>
  66cf89:	41 d1 ed             	shr    r13d,1
  66cf8c:	48 89 85 58 e9 ff ff 	mov    QWORD PTR [rbp-0x16a8],rax
  66cf93:	48 8b 85 18 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4e8]
  66cf9a:	44 89 ad f8 f4 ff ff 	mov    DWORD PTR [rbp-0xb08],r13d
  66cfa1:	4c 89 ad 08 f2 ff ff 	mov    QWORD PTR [rbp-0xdf8],r13
  66cfa8:	4c 89 8d 50 e9 ff ff 	mov    QWORD PTR [rbp-0x16b0],r9
  66cfaf:	4e 8d 0c c5 08 00 00 	lea    r9,[r8*8+0x8]
  66cfb6:	00 
  66cfb7:	4c 8b ad 50 ea ff ff 	mov    r13,QWORD PTR [rbp-0x15b0]
  66cfbe:	49 ff c0             	inc    r8
  66cfc1:	4c 89 95 00 e1 ff ff 	mov    QWORD PTR [rbp-0x1f00],r10
  66cfc8:	4d 89 ea             	mov    r10,r13
  66cfcb:	4c 89 8d a0 ec ff ff 	mov    QWORD PTR [rbp-0x1360],r9
  66cfd2:	49 89 c1             	mov    r9,rax
  66cfd5:	c5 7b 11 b5 28 e6 ff 	vmovsd QWORD PTR [rbp-0x19d8],xmm14
  66cfdc:	ff 
  66cfdd:	4c 2b d0             	sub    r10,rax
  66cfe0:	c5 03 59 f1          	vmulsd xmm14,xmm15,xmm1
  66cfe4:	4d 2b ce             	sub    r9,r14
  66cfe7:	4c 89 85 50 fd ff ff 	mov    QWORD PTR [rbp-0x2b0],r8
  66cfee:	4c 8b 85 00 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1500]
  66cff5:	49 2b f0             	sub    rsi,r8
  66cff8:	4c 89 a5 20 eb ff ff 	mov    QWORD PTR [rbp-0x14e0],r12
  66cfff:	49 89 c4             	mov    r12,rax
  66d002:	c5 7b 10 1d ee 3f 57 	vmovsd xmm11,QWORD PTR [rip+0x573fee]        # be0ff8 <mod_scalars_mp_gls_b1_>
  66d009:	00 
  66d00a:	49 03 f3             	add    rsi,r11
  66d00d:	49 f7 dc             	neg    r12
  66d010:	4c 2b ee             	sub    r13,rsi
  66d013:	c5 7b 11 b5 20 e6 ff 	vmovsd QWORD PTR [rbp-0x19e0],xmm14
  66d01a:	ff 
  66d01b:	4d 03 e2             	add    r12,r10
  66d01e:	c4 41 23 59 f7       	vmulsd xmm14,xmm11,xmm15
  66d023:	4c 89 ad 50 ea ff ff 	mov    QWORD PTR [rbp-0x15b0],r13
  66d02a:	4f 8d 2c 0a          	lea    r13,[r10+r9*1]
  66d02e:	4c 03 ca             	add    r9,rdx
  66d031:	4c 03 ea             	add    r13,rdx
  66d034:	4d 03 e1             	add    r12,r9
  66d037:	4d 03 e8             	add    r13,r8
  66d03a:	c5 7b 10 15 be 3f 57 	vmovsd xmm10,QWORD PTR [rip+0x573fbe]        # be1000 <mod_scalars_mp_gls_b2_>
  66d041:	00 
  66d042:	4d 03 e0             	add    r12,r8
  66d045:	4c 89 a5 70 e9 ff ff 	mov    QWORD PTR [rbp-0x1690],r12
  66d04c:	4c 8d 24 00          	lea    r12,[rax+rax*1]
  66d050:	c5 7b 11 b5 18 e6 ff 	vmovsd QWORD PTR [rbp-0x19e8],xmm14
  66d057:	ff 
  66d058:	4d 2b e6             	sub    r12,r14
  66d05b:	c4 41 03 59 f2       	vmulsd xmm14,xmm15,xmm10
  66d060:	4d 03 e2             	add    r12,r10
  66d063:	c5 7b 10 0d 2d f1 1d 	vmovsd xmm9,QWORD PTR [rip+0x1df12d]        # 84c198 <__STRLITPACK_0.112+0x88>
  66d06a:	00 
  66d06b:	49 03 d4             	add    rdx,r12
  66d06e:	c5 33 59 85 a8 e7 ff 	vmulsd xmm8,xmm9,QWORD PTR [rbp-0x1858]
  66d075:	ff 
  66d076:	4d 89 d1             	mov    r9,r10
  66d079:	c5 b3 59 bd f0 e5 ff 	vmulsd xmm7,xmm9,QWORD PTR [rbp-0x1a10]
  66d080:	ff 
  66d081:	4c 03 c2             	add    r8,rdx
  66d084:	49 8d 14 42          	lea    rdx,[r10+rax*2]
  66d088:	c5 7b 11 b5 10 e6 ff 	vmovsd QWORD PTR [rbp-0x19f0],xmm14
  66d08f:	ff 
  66d090:	4c 2b ce             	sub    r9,rsi
  66d093:	c4 41 03 59 f7       	vmulsd xmm14,xmm15,xmm15
  66d098:	48 2b d6             	sub    rdx,rsi
  66d09b:	48 89 b5 30 e7 ff ff 	mov    QWORD PTR [rbp-0x18d0],rsi
  66d0a2:	48 8d 34 7f          	lea    rsi,[rdi+rdi*2]
  66d0a6:	48 8b bd 58 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2a8]
  66d0ad:	4c 8b b5 00 e7 ff ff 	mov    r14,QWORD PTR [rbp-0x1900]
  66d0b4:	48 89 8d 30 eb ff ff 	mov    QWORD PTR [rbp-0x14d0],rcx
  66d0bb:	48 03 ce             	add    rcx,rsi
  66d0be:	4c 89 bd c0 e6 ff ff 	mov    QWORD PTR [rbp-0x1940],r15
  66d0c5:	49 2b cf             	sub    rcx,r15
  66d0c8:	c5 fb 11 bd 38 e6 ff 	vmovsd QWORD PTR [rbp-0x19c8],xmm7
  66d0cf:	ff 
  66d0d0:	4c 8d 3c 7f          	lea    r15,[rdi+rdi*2]
  66d0d4:	c4 c2 7d 19 f8       	vbroadcastsd ymm7,xmm8
  66d0d9:	4b 8d 04 3e          	lea    rax,[r14+r15*1]
  66d0dd:	c5 fb 10 b5 d0 fc ff 	vmovsd xmm6,QWORD PTR [rbp-0x330]
  66d0e4:	ff 
  66d0e5:	c5 fb 10 15 d3 3e 57 	vmovsd xmm2,QWORD PTR [rip+0x573ed3]        # be0fc0 <mod_scalars_mp_gls_s0_>
  66d0ec:	00 
  66d0ed:	c5 fb 10 25 e3 3e 57 	vmovsd xmm4,QWORD PTR [rip+0x573ee3]        # be0fd8 <mod_scalars_mp_gls_s4_>
  66d0f4:	00 
  66d0f5:	c4 c1 7b 59 c6       	vmulsd xmm0,xmm0,xmm14
  66d0fa:	c5 fd 11 bd d0 ec ff 	vmovupd YMMWORD PTR [rbp-0x1330],ymm7
  66d101:	ff 
  66d102:	c4 c1 73 59 ce       	vmulsd xmm1,xmm1,xmm14
  66d107:	c4 e2 7d 19 f6       	vbroadcastsd ymm6,xmm6
  66d10c:	c5 0b 59 3d fc 3e 57 	vmulsd xmm15,xmm14,QWORD PTR [rip+0x573efc]        # be1010 <mod_scalars_mp_gls_b5_>
  66d113:	00 
  66d114:	48 2b 85 10 eb ff ff 	sub    rax,QWORD PTR [rbp-0x14f0]
  66d11b:	48 03 8d 40 eb ff ff 	add    rcx,QWORD PTR [rbp-0x14c0]
  66d122:	48 03 85 20 ea ff ff 	add    rax,QWORD PTR [rbp-0x15e0]
  66d129:	c5 fb 11 95 48 e6 ff 	vmovsd QWORD PTR [rbp-0x19b8],xmm2
  66d130:	ff 
  66d131:	c5 fb 11 a5 40 e6 ff 	vmovsd QWORD PTR [rbp-0x19c0],xmm4
  66d138:	ff 
  66d139:	4c 89 ad 00 e9 ff ff 	mov    QWORD PTR [rbp-0x1700],r13
  66d140:	4c 89 8d e8 e8 ff ff 	mov    QWORD PTR [rbp-0x1718],r9
  66d147:	4c 89 85 00 eb ff ff 	mov    QWORD PTR [rbp-0x1500],r8
  66d14e:	48 89 95 f0 e8 ff ff 	mov    QWORD PTR [rbp-0x1710],rdx
  66d155:	48 89 b5 18 fd ff ff 	mov    QWORD PTR [rbp-0x2e8],rsi
  66d15c:	48 89 8d 18 e9 ff ff 	mov    QWORD PTR [rbp-0x16e8],rcx
  66d163:	48 89 85 08 e9 ff ff 	mov    QWORD PTR [rbp-0x16f8],rax
  66d16a:	c5 7b 10 2d 46 88 45 	vmovsd xmm13,QWORD PTR [rip+0x458846]        # ac59b8 <mod_scalars_mp_vonkar_>
  66d171:	00 
  66d172:	c5 fb 10 15 4e 3e 57 	vmovsd xmm2,QWORD PTR [rip+0x573e4e]        # be0fc8 <mod_scalars_mp_gls_s1_>
  66d179:	00 
  66d17a:	c5 fb 10 1d 4e 3e 57 	vmovsd xmm3,QWORD PTR [rip+0x573e4e]        # be0fd0 <mod_scalars_mp_gls_s2_>
  66d181:	00 
  66d182:	c5 fb 10 25 56 3e 57 	vmovsd xmm4,QWORD PTR [rip+0x573e56]        # be0fe0 <mod_scalars_mp_gls_s5_>
  66d189:	00 
  66d18a:	c5 fb 10 2d 56 3e 57 	vmovsd xmm5,QWORD PTR [rip+0x573e56]        # be0fe8 <mod_scalars_mp_gls_s6_>
  66d191:	00 
  66d192:	4c 89 bd a0 ea ff ff 	mov    QWORD PTR [rbp-0x1560],r15
  66d199:	c5 fb 10 bd d0 e7 ff 	vmovsd xmm7,QWORD PTR [rbp-0x1830]
  66d1a0:	ff 
  66d1a1:	48 8b bd d8 e7 ff ff 	mov    rdi,QWORD PTR [rbp-0x1828]
  66d1a8:	48 8b b5 70 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x1490]
  66d1af:	48 8b 85 f0 e7 ff ff 	mov    rax,QWORD PTR [rbp-0x1810]
  66d1b6:	48 8b 8d 68 eb ff ff 	mov    rcx,QWORD PTR [rbp-0x1498]
  66d1bd:	4c 8b 85 50 e7 ff ff 	mov    r8,QWORD PTR [rbp-0x18b0]
  66d1c4:	4c 8b 8d 58 e7 ff ff 	mov    r9,QWORD PTR [rbp-0x18a8]
  66d1cb:	4c 8b a5 48 e7 ff ff 	mov    r12,QWORD PTR [rbp-0x18b8]
  66d1d2:	48 8b 95 60 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x14a0]
  66d1d9:	4c 8b ad 40 e7 ff ff 	mov    r13,QWORD PTR [rbp-0x18c0]
  66d1e0:	c5 fb 11 85 08 e6 ff 	vmovsd QWORD PTR [rbp-0x19f8],xmm0
  66d1e7:	ff 
  66d1e8:	c5 fb 11 8d 00 e6 ff 	vmovsd QWORD PTR [rbp-0x1a00],xmm1
  66d1ef:	ff 
  66d1f0:	c5 7b 11 bd f8 e5 ff 	vmovsd QWORD PTR [rbp-0x1a08],xmm15
  66d1f7:	ff 
  66d1f8:	48 2b b5 40 fd ff ff 	sub    rsi,QWORD PTR [rbp-0x2c0]
  66d1ff:	48 89 b5 70 eb ff ff 	mov    QWORD PTR [rbp-0x1490],rsi
  66d206:	48 8b b5 58 ea ff ff 	mov    rsi,QWORD PTR [rbp-0x15a8]
  66d20d:	48 c1 e6 02          	shl    rsi,0x2
  66d211:	48 f7 de             	neg    rsi
  66d214:	48 89 85 f0 e7 ff ff 	mov    QWORD PTR [rbp-0x1810],rax
  66d21b:	48 8b 85 28 e7 ff ff 	mov    rax,QWORD PTR [rbp-0x18d8]
  66d222:	48 03 b5 08 ea ff ff 	add    rsi,QWORD PTR [rbp-0x15f8]
  66d229:	48 03 85 f8 fc ff ff 	add    rax,QWORD PTR [rbp-0x308]
  66d230:	4c 8b b5 e8 e7 ff ff 	mov    r14,QWORD PTR [rbp-0x1818]
  66d237:	48 89 b5 58 ea ff ff 	mov    QWORD PTR [rbp-0x15a8],rsi
  66d23e:	49 f7 de             	neg    r14
  66d241:	48 8b b5 28 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x14d8]
  66d248:	48 03 ce             	add    rcx,rsi
  66d24b:	48 89 8d 68 eb ff ff 	mov    QWORD PTR [rbp-0x1498],rcx
  66d252:	4d 03 f0             	add    r14,r8
  66d255:	48 2b 85 e0 e6 ff ff 	sub    rax,QWORD PTR [rbp-0x1920]
  66d25c:	48 8b 8d 20 e7 ff ff 	mov    rcx,QWORD PTR [rbp-0x18e0]
  66d263:	4c 89 85 50 e7 ff ff 	mov    QWORD PTR [rbp-0x18b0],r8
  66d26a:	4c 0f af c1          	imul   r8,rcx
  66d26e:	4c 8b bd d8 ea ff ff 	mov    r15,QWORD PTR [rbp-0x1528]
  66d275:	4c 03 f8             	add    r15,rax
  66d278:	4c 03 bd f8 e9 ff ff 	add    r15,QWORD PTR [rbp-0x1608]
  66d27f:	4c 89 bd d8 ea ff ff 	mov    QWORD PTR [rbp-0x1528],r15
  66d286:	4d 89 e7             	mov    r15,r12
  66d289:	49 f7 df             	neg    r15
  66d28c:	48 89 95 60 eb ff ff 	mov    QWORD PTR [rbp-0x14a0],rdx
  66d293:	4c 03 fa             	add    r15,rdx
  66d296:	4c 89 ea             	mov    rdx,r13
  66d299:	48 f7 da             	neg    rdx
  66d29c:	49 03 d1             	add    rdx,r9
  66d29f:	49 f7 d9             	neg    r9
  66d2a2:	4d 03 cd             	add    r9,r13
  66d2a5:	4c 89 8d 58 e7 ff ff 	mov    QWORD PTR [rbp-0x18a8],r9
  66d2ac:	48 8b 85 38 e7 ff ff 	mov    rax,QWORD PTR [rbp-0x18c8]
  66d2b3:	4c 8b 8d 58 f2 ff ff 	mov    r9,QWORD PTR [rbp-0xda8]
  66d2ba:	4c 0f af ca          	imul   r9,rdx
  66d2be:	48 0f af c8          	imul   rcx,rax
  66d2c2:	4c 01 85 80 ea ff ff 	add    QWORD PTR [rbp-0x1580],r8
  66d2c9:	4c 8b 85 80 e9 ff ff 	mov    r8,QWORD PTR [rbp-0x1680]
  66d2d0:	4d 0f af c7          	imul   r8,r15
  66d2d4:	48 03 bd 50 e6 ff ff 	add    rdi,QWORD PTR [rbp-0x19b0]
  66d2db:	4c 03 cf             	add    r9,rdi
  66d2de:	48 01 8d f0 ea ff ff 	add    QWORD PTR [rbp-0x1510],rcx
  66d2e5:	4d 03 c1             	add    r8,r9
  66d2e8:	48 8b 8d 20 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2e0]
  66d2ef:	4c 8b 8d 18 fb ff ff 	mov    r9,QWORD PTR [rbp-0x4e8]
  66d2f6:	8b bd 20 f5 ff ff    	mov    edi,DWORD PTR [rbp-0xae0]
  66d2fc:	48 63 ff             	movsxd rdi,edi
  66d2ff:	48 89 95 60 e7 ff ff 	mov    QWORD PTR [rbp-0x18a0],rdx
  66d306:	49 8d 14 09          	lea    rdx,[r9+rcx*1]
  66d30a:	48 89 bd 20 fb ff ff 	mov    QWORD PTR [rbp-0x4e0],rdi
  66d311:	83 e7 fc             	and    edi,0xfffffffc
  66d314:	4c 89 85 e8 eb ff ff 	mov    QWORD PTR [rbp-0x1418],r8
  66d31b:	4d 8d 04 12          	lea    r8,[r10+rdx*1]
  66d31f:	4c 89 bd 78 ec ff ff 	mov    QWORD PTR [rbp-0x1388],r15
  66d326:	49 2b d3             	sub    rdx,r11
  66d329:	48 63 ff             	movsxd rdi,edi
  66d32c:	49 f7 db             	neg    r11
  66d32f:	4c 8b bd 30 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x18d0]
  66d336:	4d 2b c7             	sub    r8,r15
  66d339:	48 89 bd f0 fa ff ff 	mov    QWORD PTR [rbp-0x510],rdi
  66d340:	4c 89 85 b0 e7 ff ff 	mov    QWORD PTR [rbp-0x1850],r8
  66d347:	4f 8d 04 49          	lea    r8,[r9+r9*2]
  66d34b:	4c 8b 8d 30 fd ff ff 	mov    r9,QWORD PTR [rbp-0x2d0]
  66d352:	4c 03 c1             	add    r8,rcx
  66d355:	48 8b bd f8 e6 ff ff 	mov    rdi,QWORD PTR [rbp-0x1908]
  66d35c:	4d 03 d8             	add    r11,r8
  66d35f:	4d 03 c2             	add    r8,r10
  66d362:	4d 2b c7             	sub    r8,r15
  66d365:	4c 89 85 c0 eb ff ff 	mov    QWORD PTR [rbp-0x1440],r8
  66d36c:	49 03 f9             	add    rdi,r9
  66d36f:	49 89 f8             	mov    r8,rdi
  66d372:	4c 2b 85 c8 e6 ff ff 	sub    r8,QWORD PTR [rbp-0x1938]
  66d379:	4c 03 85 18 eb ff ff 	add    r8,QWORD PTR [rbp-0x14e8]
  66d380:	4c 03 85 40 ea ff ff 	add    r8,QWORD PTR [rbp-0x15c0]
  66d387:	4c 89 85 d0 e7 ff ff 	mov    QWORD PTR [rbp-0x1830],r8
  66d38e:	4c 8b 85 38 fd ff ff 	mov    r8,QWORD PTR [rbp-0x2c8]
  66d395:	4c 8b 8d e8 e6 ff ff 	mov    r9,QWORD PTR [rbp-0x1918]
  66d39c:	48 2b bd e0 ea ff ff 	sub    rdi,QWORD PTR [rbp-0x1520]
  66d3a3:	48 2b bd a0 e6 ff ff 	sub    rdi,QWORD PTR [rbp-0x1960]
  66d3aa:	48 89 bd c8 eb ff ff 	mov    QWORD PTR [rbp-0x1438],rdi
  66d3b1:	4d 03 c1             	add    r8,r9
  66d3b4:	4c 89 c7             	mov    rdi,r8
  66d3b7:	4e 8d 0c ed 00 00 00 	lea    r9,[r13*8+0x0]
  66d3be:	00 
  66d3bf:	48 2b bd b8 e6 ff ff 	sub    rdi,QWORD PTR [rbp-0x1948]
  66d3c6:	4c 2b 85 e8 ea ff ff 	sub    r8,QWORD PTR [rbp-0x1518]
  66d3cd:	48 03 bd 20 eb ff ff 	add    rdi,QWORD PTR [rbp-0x14e0]
  66d3d4:	4c 2b 85 00 e1 ff ff 	sub    r8,QWORD PTR [rbp-0x1f00]
  66d3db:	4c 03 b5 18 e7 ff ff 	add    r14,QWORD PTR [rbp-0x18e8]
  66d3e2:	48 03 bd 38 ea ff ff 	add    rdi,QWORD PTR [rbp-0x15c8]
  66d3e9:	4c 89 85 d0 eb ff ff 	mov    QWORD PTR [rbp-0x1430],r8
  66d3f0:	4c 89 b5 e8 e7 ff ff 	mov    QWORD PTR [rbp-0x1818],r14
  66d3f7:	4c 8b 85 90 ea ff ff 	mov    r8,QWORD PTR [rbp-0x1570]
  66d3fe:	4d 2b c1             	sub    r8,r9
  66d401:	48 89 bd d8 e7 ff ff 	mov    QWORD PTR [rbp-0x1828],rdi
  66d408:	48 8b bd f0 e7 ff ff 	mov    rdi,QWORD PTR [rbp-0x1810]
  66d40f:	4d 89 f1             	mov    r9,r14
  66d412:	49 03 f8             	add    rdi,r8
  66d415:	49 f7 d9             	neg    r9
  66d418:	4c 03 cf             	add    r9,rdi
  66d41b:	4c 03 8d 20 ea ff ff 	add    r9,QWORD PTR [rbp-0x15e0]
  66d422:	4c 8b b5 50 e8 ff ff 	mov    r14,QWORD PTR [rbp-0x17b0]
  66d429:	49 f7 de             	neg    r14
  66d42c:	4c 89 8d e8 e7 ff ff 	mov    QWORD PTR [rbp-0x1818],r9
  66d433:	4c 03 f0             	add    r14,rax
  66d436:	4c 8b 8d 48 e8 ff ff 	mov    r9,QWORD PTR [rbp-0x17b8]
  66d43d:	4d 03 c8             	add    r9,r8
  66d440:	4d 03 c2             	add    r8,r10
  66d443:	4c 03 d1             	add    r10,rcx
  66d446:	48 89 c1             	mov    rcx,rax
  66d449:	4c 03 b5 08 e7 ff ff 	add    r14,QWORD PTR [rbp-0x18f8]
  66d450:	4d 2b d7             	sub    r10,r15
  66d453:	48 2b 8d 48 fd ff ff 	sub    rcx,QWORD PTR [rbp-0x2b8]
  66d45a:	49 f7 de             	neg    r14
  66d45d:	4c 8b bd 08 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x18f8]
  66d464:	4d 03 d8             	add    r11,r8
  66d467:	4c 03 f9             	add    r15,rcx
  66d46a:	4d 03 f1             	add    r14,r9
  66d46d:	4c 89 9d 38 ec ff ff 	mov    QWORD PTR [rbp-0x13c8],r11
  66d474:	4d 2b cf             	sub    r9,r15
  66d477:	4c 8b 9d 50 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2b0]
  66d47e:	4c 03 c2             	add    r8,rdx
  66d481:	44 89 da             	mov    edx,r11d
  66d484:	48 89 bd f0 e7 ff ff 	mov    QWORD PTR [rbp-0x1810],rdi
  66d48b:	83 e2 fc             	and    edx,0xfffffffc
  66d48e:	48 8b bd 40 eb ff ff 	mov    rdi,QWORD PTR [rbp-0x14c0]
  66d495:	4c 03 f7             	add    r14,rdi
  66d498:	4c 03 cf             	add    r9,rdi
  66d49b:	48 8d 3c 40          	lea    rdi,[rax+rax*2]
  66d49f:	48 8b 85 d8 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x1928]
  66d4a6:	4c 89 85 90 ea ff ff 	mov    QWORD PTR [rbp-0x1570],r8
  66d4ad:	45 89 d8             	mov    r8d,r11d
  66d4b0:	48 f7 d8             	neg    rax
  66d4b3:	41 83 e0 f8          	and    r8d,0xfffffff8
  66d4b7:	48 63 d2             	movsxd rdx,edx
  66d4ba:	48 03 c7             	add    rax,rdi
  66d4bd:	48 89 bd 68 e7 ff ff 	mov    QWORD PTR [rbp-0x1898],rdi
  66d4c4:	4c 89 e7             	mov    rdi,r12
  66d4c7:	48 8b 8d 60 eb ff ff 	mov    rcx,QWORD PTR [rbp-0x14a0]
  66d4ce:	41 83 e3 fe          	and    r11d,0xfffffffe
  66d4d2:	48 89 95 50 f5 ff ff 	mov    QWORD PTR [rbp-0xab0],rdx
  66d4d9:	48 89 ca             	mov    rdx,rcx
  66d4dc:	4c 89 b5 50 e8 ff ff 	mov    QWORD PTR [rbp-0x17b0],r14
  66d4e3:	4c 8b b5 c0 e9 ff ff 	mov    r14,QWORD PTR [rbp-0x1640]
  66d4ea:	4d 63 c0             	movsxd r8,r8d
  66d4ed:	49 0f af fe          	imul   rdi,r14
  66d4f1:	49 0f af d6          	imul   rdx,r14
  66d4f5:	4c 89 85 a8 ec ff ff 	mov    QWORD PTR [rbp-0x1358],r8
  66d4fc:	4d 89 e8             	mov    r8,r13
  66d4ff:	4c 0f af 85 18 f5 ff 	imul   r8,QWORD PTR [rbp-0xae8]
  66d506:	ff 
  66d507:	48 01 b5 f0 e6 ff ff 	add    QWORD PTR [rbp-0x1910],rsi
  66d50e:	48 8b b5 f8 ea ff ff 	mov    rsi,QWORD PTR [rbp-0x1508]
  66d515:	48 03 85 30 eb ff ff 	add    rax,QWORD PTR [rbp-0x14d0]
  66d51c:	48 01 b5 58 eb ff ff 	add    QWORD PTR [rbp-0x14a8],rsi
  66d523:	48 01 b5 10 e7 ff ff 	add    QWORD PTR [rbp-0x18f0],rsi
  66d52a:	48 03 f0             	add    rsi,rax
  66d52d:	48 03 b5 08 eb ff ff 	add    rsi,QWORD PTR [rbp-0x14f8]
  66d534:	4d 63 db             	movsxd r11,r11d
  66d537:	4c 89 9d 70 fd ff ff 	mov    QWORD PTR [rbp-0x290],r11
  66d53e:	4c 8b 9d 40 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2c0]
  66d545:	48 89 b5 f8 ea ff ff 	mov    QWORD PTR [rbp-0x1508],rsi
  66d54c:	4d 89 df             	mov    r15,r11
  66d54f:	48 8b b5 70 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x1490]
  66d556:	4c 2b ff             	sub    r15,rdi
  66d559:	4c 89 8d 48 e8 ff ff 	mov    QWORD PTR [rbp-0x17b8],r9
  66d560:	49 89 f1             	mov    r9,rsi
  66d563:	4c 2b cf             	sub    r9,rdi
  66d566:	4c 03 fe             	add    r15,rsi
  66d569:	4c 89 8d a8 e7 ff ff 	mov    QWORD PTR [rbp-0x1858],r9
  66d570:	49 89 d1             	mov    r9,rdx
  66d573:	4c 8b b5 50 e7 ff ff 	mov    r14,QWORD PTR [rbp-0x18b0]
  66d57a:	4d 2b c8             	sub    r9,r8
  66d57d:	48 f7 da             	neg    rdx
  66d580:	4c 89 f6             	mov    rsi,r14
  66d583:	48 8b 85 30 ea ff ff 	mov    rax,QWORD PTR [rbp-0x15d0]
  66d58a:	48 03 d7             	add    rdx,rdi
  66d58d:	4c 2b c0             	sub    r8,rax
  66d590:	4d 03 f9             	add    r15,r9
  66d593:	48 2b b5 58 fd ff ff 	sub    rsi,QWORD PTR [rbp-0x2a8]
  66d59a:	49 03 d0             	add    rdx,r8
  66d59d:	4c 8b 85 18 e7 ff ff 	mov    r8,QWORD PTR [rbp-0x18e8]
  66d5a4:	4c 03 f8             	add    r15,rax
  66d5a7:	48 8b 85 a8 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x1958]
  66d5ae:	4c 03 c6             	add    r8,rsi
  66d5b1:	48 f7 d8             	neg    rax
  66d5b4:	4b 8d 34 76          	lea    rsi,[r14+r14*2]
  66d5b8:	48 03 c6             	add    rax,rsi
  66d5bb:	48 89 95 70 e7 ff ff 	mov    QWORD PTR [rbp-0x1890],rdx
  66d5c2:	48 8b 95 f0 e7 ff ff 	mov    rdx,QWORD PTR [rbp-0x1810]
  66d5c9:	49 2b d0             	sub    rdx,r8
  66d5cc:	4c 8b 85 00 e7 ff ff 	mov    r8,QWORD PTR [rbp-0x1900]
  66d5d3:	49 03 c0             	add    rax,r8
  66d5d6:	4c 89 bd b8 eb ff ff 	mov    QWORD PTR [rbp-0x1448],r15
  66d5dd:	4c 8b bd 28 eb ff ff 	mov    r15,QWORD PTR [rbp-0x14d8]
  66d5e4:	4c 03 f8             	add    r15,rax
  66d5e7:	4c 89 e0             	mov    rax,r12
  66d5ea:	4c 8b b5 88 e9 ff ff 	mov    r14,QWORD PTR [rbp-0x1678]
  66d5f1:	49 0f af c6          	imul   rax,r14
  66d5f5:	48 03 95 20 ea ff ff 	add    rdx,QWORD PTR [rbp-0x15e0]
  66d5fc:	48 89 95 f0 e7 ff ff 	mov    QWORD PTR [rbp-0x1810],rdx
  66d603:	48 8b 95 a0 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1560]
  66d60a:	48 03 d6             	add    rdx,rsi
  66d60d:	49 03 d0             	add    rdx,r8
  66d610:	4d 89 e8             	mov    r8,r13
  66d613:	48 89 b5 78 e7 ff ff 	mov    QWORD PTR [rbp-0x1888],rsi
  66d61a:	48 89 ce             	mov    rsi,rcx
  66d61d:	48 2b 95 10 eb ff ff 	sub    rdx,QWORD PTR [rbp-0x14f0]
  66d624:	49 0f af f6          	imul   rsi,r14
  66d628:	48 89 95 a0 ea ff ff 	mov    QWORD PTR [rbp-0x1560],rdx
  66d62f:	49 89 f6             	mov    r14,rsi
  66d632:	48 8b 95 68 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1598]
  66d639:	48 2b d0             	sub    rdx,rax
  66d63c:	48 8b 85 28 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xad8]
  66d643:	4c 0f af c0          	imul   r8,rax
  66d647:	4c 03 bd b0 ea ff ff 	add    r15,QWORD PTR [rbp-0x1550]
  66d64e:	4d 2b f0             	sub    r14,r8
  66d651:	4c 89 bd 28 eb ff ff 	mov    QWORD PTR [rbp-0x14d8],r15
  66d658:	4c 03 f2             	add    r14,rdx
  66d65b:	4c 8b bd d0 e6 ff ff 	mov    r15,QWORD PTR [rbp-0x1930]
  66d662:	48 03 d6             	add    rdx,rsi
  66d665:	4d 2b c7             	sub    r8,r15
  66d668:	4c 03 f8             	add    r15,rax
  66d66b:	49 2b d0             	sub    rdx,r8
  66d66e:	4d 03 f7             	add    r14,r15
  66d671:	48 89 95 68 ea ff ff 	mov    QWORD PTR [rbp-0x1598],rdx
  66d678:	4c 89 e2             	mov    rdx,r12
  66d67b:	48 8b b5 18 ea ff ff 	mov    rsi,QWORD PTR [rbp-0x15e8]
  66d682:	49 89 cf             	mov    r15,rcx
  66d685:	48 0f af d6          	imul   rdx,rsi
  66d689:	4c 0f af fe          	imul   r15,rsi
  66d68d:	4c 8b 85 78 ea ff ff 	mov    r8,QWORD PTR [rbp-0x1588]
  66d694:	4c 89 b5 f0 eb ff ff 	mov    QWORD PTR [rbp-0x1410],r14
  66d69b:	4c 2b c2             	sub    r8,rdx
  66d69e:	4c 8b b5 00 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xb00]
  66d6a5:	48 8b 95 58 e7 ff ff 	mov    rdx,QWORD PTR [rbp-0x18a8]
  66d6ac:	4c 0f af f2          	imul   r14,rdx
  66d6b0:	48 0f af 95 08 f5 ff 	imul   rdx,QWORD PTR [rbp-0xaf8]
  66d6b7:	ff 
  66d6b8:	c5 fb 10 8d 90 e6 ff 	vmovsd xmm1,QWORD PTR [rbp-0x1970]
  66d6bf:	ff 
  66d6c0:	4b 8d 04 38          	lea    rax,[r8+r15*1]
  66d6c4:	4c 03 fe             	add    r15,rsi
  66d6c7:	4c 89 e6             	mov    rsi,r12
  66d6ca:	4d 03 c7             	add    r8,r15
  66d6cd:	49 89 cf             	mov    r15,rcx
  66d6d0:	4d 2b c6             	sub    r8,r14
  66d6d3:	49 2b c6             	sub    rax,r14
  66d6d6:	4c 89 85 78 ea ff ff 	mov    QWORD PTR [rbp-0x1588],r8
  66d6dd:	4c 8b 85 90 e9 ff ff 	mov    r8,QWORD PTR [rbp-0x1670]
  66d6e4:	49 0f af f0          	imul   rsi,r8
  66d6e8:	4d 0f af f8          	imul   r15,r8
  66d6ec:	c5 73 59 f2          	vmulsd xmm14,xmm1,xmm2
  66d6f0:	c5 f3 59 d5          	vmulsd xmm2,xmm1,xmm5
  66d6f4:	c4 c1 13 59 ed       	vmulsd xmm5,xmm13,xmm13
  66d6f9:	c5 f3 59 db          	vmulsd xmm3,xmm1,xmm3
  66d6fd:	c5 f3 59 e4          	vmulsd xmm4,xmm1,xmm4
  66d701:	c4 e2 7d 19 8d 80 e8 	vbroadcastsd ymm1,QWORD PTR [rbp-0x1780]
  66d708:	ff ff 
  66d70a:	4d 89 e8             	mov    r8,r13
  66d70d:	4c 8b b5 70 ea ff ff 	mov    r14,QWORD PTR [rbp-0x1590]
  66d714:	4c 2b f6             	sub    r14,rsi
  66d717:	48 8b b5 30 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xad0]
  66d71e:	4c 0f af c6          	imul   r8,rsi
  66d722:	c5 fd 11 8d d0 e5 ff 	vmovupd YMMWORD PTR [rbp-0x1a30],ymm1
  66d729:	ff 
  66d72a:	c5 7b 10 3d 76 ed 1d 	vmovsd xmm15,QWORD PTR [rip+0x1ded76]        # 84c4a8 <__STRLITPACK_0.112+0x398>
  66d731:	00 
  66d732:	c5 fb 11 9d 68 e6 ff 	vmovsd QWORD PTR [rbp-0x1998],xmm3
  66d739:	ff 
  66d73a:	c5 fb 11 a5 60 e6 ff 	vmovsd QWORD PTR [rbp-0x19a0],xmm4
  66d741:	ff 
  66d742:	c5 7b 11 b5 70 e6 ff 	vmovsd QWORD PTR [rbp-0x1990],xmm14
  66d749:	ff 
  66d74a:	48 89 85 a0 e7 ff ff 	mov    QWORD PTR [rbp-0x1860],rax
  66d751:	4c 89 f8             	mov    rax,r15
  66d754:	49 2b c0             	sub    rax,r8
  66d757:	49 03 c6             	add    rax,r14
  66d75a:	4d 03 f7             	add    r14,r15
  66d75d:	4c 8b bd b0 e6 ff ff 	mov    r15,QWORD PTR [rbp-0x1950]
  66d764:	4d 2b c7             	sub    r8,r15
  66d767:	4c 03 fe             	add    r15,rsi
  66d76a:	4c 89 e6             	mov    rsi,r12
  66d76d:	4d 2b f0             	sub    r14,r8
  66d770:	49 03 c7             	add    rax,r15
  66d773:	4c 8b 85 10 ea ff ff 	mov    r8,QWORD PTR [rbp-0x15f0]
  66d77a:	49 0f af f0          	imul   rsi,r8
  66d77e:	c5 03 5e fd          	vdivsd xmm15,xmm15,xmm5
  66d782:	4c 89 b5 70 ea ff ff 	mov    QWORD PTR [rbp-0x1590],r14
  66d789:	49 89 ce             	mov    r14,rcx
  66d78c:	4d 0f af f0          	imul   r14,r8
  66d790:	4c 8b bd 60 ea ff ff 	mov    r15,QWORD PTR [rbp-0x15a0]
  66d797:	4c 2b fe             	sub    r15,rsi
  66d79a:	48 89 85 f8 eb ff ff 	mov    QWORD PTR [rbp-0x1408],rax
  66d7a1:	4c 89 8d e0 eb ff ff 	mov    QWORD PTR [rbp-0x1420],r9
  66d7a8:	c5 f9 28 c7          	vmovapd xmm0,xmm7
  66d7ac:	c5 7b 11 bd 28 f0 ff 	vmovsd QWORD PTR [rbp-0xfd8],xmm15
  66d7b3:	ff 
  66d7b4:	4b 8d 04 37          	lea    rax,[r15+r14*1]
  66d7b8:	4d 03 f0             	add    r14,r8
  66d7bb:	48 2b c2             	sub    rax,rdx
  66d7be:	4d 03 fe             	add    r15,r14
  66d7c1:	4f 8d 34 1b          	lea    r14,[r11+r11*1]
  66d7c5:	4c 2b fa             	sub    r15,rdx
  66d7c8:	4c 2b f7             	sub    r14,rdi
  66d7cb:	48 8b 95 28 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x2d8]
  66d7d2:	4c 89 bd 60 ea ff ff 	mov    QWORD PTR [rbp-0x15a0],r15
  66d7d9:	4c 8b bd 18 fb ff ff 	mov    r15,QWORD PTR [rbp-0x4e8]
  66d7e0:	4c 0f af bd 60 f2 ff 	imul   r15,QWORD PTR [rbp-0xda0]
  66d7e7:	ff 
  66d7e8:	c4 62 7d 19 bd d8 f4 	vbroadcastsd ymm15,QWORD PTR [rbp-0xb28]
  66d7ef:	ff ff 
  66d7f1:	c5 79 57 35 c7 e0 1d 	vxorpd xmm14,xmm0,XMMWORD PTR [rip+0x1de0c7]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  66d7f8:	00 
  66d7f9:	c5 fb 11 95 58 e6 ff 	vmovsd QWORD PTR [rbp-0x19a8],xmm2
  66d800:	ff 
  66d801:	c5 7b 11 b5 80 fd ff 	vmovsd QWORD PTR [rbp-0x280],xmm14
  66d808:	ff 
  66d809:	48 89 85 98 e7 ff ff 	mov    QWORD PTR [rbp-0x1868],rax
  66d810:	48 8d 34 12          	lea    rsi,[rdx+rdx*1]
  66d814:	48 2b b5 00 ea ff ff 	sub    rsi,QWORD PTR [rbp-0x1600]
  66d81b:	4d 03 d7             	add    r10,r15
  66d81e:	48 03 b5 a8 ea ff ff 	add    rsi,QWORD PTR [rbp-0x1558]
  66d825:	48 03 b5 e8 e9 ff ff 	add    rsi,QWORD PTR [rbp-0x1618]
  66d82c:	48 89 b5 90 eb ff ff 	mov    QWORD PTR [rbp-0x1470],rsi
  66d833:	48 8b b5 70 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x1490]
  66d83a:	8b 85 08 ef ff ff    	mov    eax,DWORD PTR [rbp-0x10f8]
  66d840:	41 89 c0             	mov    r8d,eax
  66d843:	41 83 e0 fc          	and    r8d,0xfffffffc
  66d847:	4c 03 f6             	add    r14,rsi
  66d84a:	44 89 85 d8 eb ff ff 	mov    DWORD PTR [rbp-0x1428],r8d
  66d851:	4d 03 f1             	add    r14,r9
  66d854:	4d 63 c0             	movsxd r8,r8d
  66d857:	4c 89 85 88 e7 ff ff 	mov    QWORD PTR [rbp-0x1878],r8
  66d85e:	4e 8d 04 5e          	lea    r8,[rsi+r11*2]
  66d862:	4c 2b 85 70 e7 ff ff 	sub    r8,QWORD PTR [rbp-0x1890]
  66d869:	4c 8b bd e0 e9 ff ff 	mov    r15,QWORD PTR [rbp-0x1620]
  66d870:	4c 89 85 90 e7 ff ff 	mov    QWORD PTR [rbp-0x1870],r8
  66d877:	49 89 c8             	mov    r8,rcx
  66d87a:	49 0f af cf          	imul   rcx,r15
  66d87e:	c4 c2 7d 19 c5       	vbroadcastsd ymm0,xmm13
  66d883:	c5 fb 11 bd 78 fd ff 	vmovsd QWORD PTR [rbp-0x288],xmm7
  66d88a:	ff 
  66d88b:	c5 7b 11 85 60 f5 ff 	vmovsd QWORD PTR [rbp-0xaa0],xmm8
  66d892:	ff 
  66d893:	c5 7b 11 95 88 e6 ff 	vmovsd QWORD PTR [rbp-0x1978],xmm10
  66d89a:	ff 
  66d89b:	4c 89 95 30 ec ff ff 	mov    QWORD PTR [rbp-0x13d0],r10
  66d8a2:	4c 8b 95 30 ea ff ff 	mov    r10,QWORD PTR [rbp-0x15d0]
  66d8a9:	4d 03 f2             	add    r14,r10
  66d8ac:	4c 89 b5 b0 eb ff ff 	mov    QWORD PTR [rbp-0x1450],r14
  66d8b3:	4d 89 e6             	mov    r14,r12
  66d8b6:	48 63 c0             	movsxd rax,eax
  66d8b9:	4d 0f af e7          	imul   r12,r15
  66d8bd:	c5 fd 11 85 10 ed ff 	vmovupd YMMWORD PTR [rbp-0x12f0],ymm0
  66d8c4:	ff 
  66d8c5:	c5 7b 11 9d 80 e6 ff 	vmovsd QWORD PTR [rbp-0x1980],xmm11
  66d8cc:	ff 
  66d8cd:	c5 7b 11 a5 78 e6 ff 	vmovsd QWORD PTR [rbp-0x1988],xmm12
  66d8d4:	ff 
  66d8d5:	c5 7b 11 ad 58 f5 ff 	vmovsd QWORD PTR [rbp-0xaa8],xmm13
  66d8dc:	ff 
  66d8dd:	c5 7d 11 bd f0 ec ff 	vmovupd YMMWORD PTR [rbp-0x1310],ymm15
  66d8e4:	ff 
  66d8e5:	48 89 85 80 e7 ff ff 	mov    QWORD PTR [rbp-0x1880],rax
  66d8ec:	48 8b 85 b8 e9 ff ff 	mov    rax,QWORD PTR [rbp-0x1648]
  66d8f3:	4c 0f af f0          	imul   r14,rax
  66d8f7:	4c 0f af c0          	imul   r8,rax
  66d8fb:	48 89 8d 60 eb ff ff 	mov    QWORD PTR [rbp-0x14a0],rcx
  66d902:	4c 89 e9             	mov    rcx,r13
  66d905:	48 0f af 8d 80 f2 ff 	imul   rcx,QWORD PTR [rbp-0xd80]
  66d90c:	ff 
  66d90d:	4c 0f af ad 28 fb ff 	imul   r13,QWORD PTR [rbp-0x4d8]
  66d914:	ff 
  66d915:	4c 89 a5 48 e7 ff ff 	mov    QWORD PTR [rbp-0x18b8],r12
  66d91c:	4c 8b a5 38 eb ff ff 	mov    r12,QWORD PTR [rbp-0x14c8]
  66d923:	4c 89 e2             	mov    rdx,r12
  66d926:	49 2b d6             	sub    rdx,r14
  66d929:	4c 03 a5 00 fd ff ff 	add    r12,QWORD PTR [rbp-0x300]
  66d930:	4c 8b bd 30 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2d0]
  66d937:	4d 2b e6             	sub    r12,r14
  66d93a:	4c 8b b5 f8 e6 ff ff 	mov    r14,QWORD PTR [rbp-0x1908]
  66d941:	4c 89 ad 40 e7 ff ff 	mov    QWORD PTR [rbp-0x18c0],r13
  66d948:	4e 8d 2c 02          	lea    r13,[rdx+r8*1]
  66d94c:	4c 2b c1             	sub    r8,rcx
  66d94f:	4d 03 e0             	add    r12,r8
  66d952:	49 03 d0             	add    rdx,r8
  66d955:	48 8b 85 f0 e9 ff ff 	mov    rax,QWORD PTR [rbp-0x1610]
  66d95c:	4c 03 e0             	add    r12,rax
  66d95f:	4c 8b 85 e0 ea ff ff 	mov    r8,QWORD PTR [rbp-0x1520]
  66d966:	48 2b c8             	sub    rcx,rax
  66d969:	4c 89 a5 38 eb ff ff 	mov    QWORD PTR [rbp-0x14c8],r12
  66d970:	4f 8d 24 7e          	lea    r12,[r14+r15*2]
  66d974:	49 f7 d8             	neg    r8
  66d977:	4c 2b e9             	sub    r13,rcx
  66d97a:	48 89 95 28 ec ff ff 	mov    QWORD PTR [rbp-0x13d8],rdx
  66d981:	4d 03 c4             	add    r8,r12
  66d984:	48 8b 95 c8 e6 ff ff 	mov    rdx,QWORD PTR [rbp-0x1938]
  66d98b:	4c 2b e2             	sub    r12,rdx
  66d98e:	48 8b 8d 18 eb ff ff 	mov    rcx,QWORD PTR [rbp-0x14e8]
  66d995:	4c 03 e1             	add    r12,rcx
  66d998:	48 8b 85 40 ea ff ff 	mov    rax,QWORD PTR [rbp-0x15c0]
  66d99f:	4c 03 e0             	add    r12,rax
  66d9a2:	4c 89 ad e0 e7 ff ff 	mov    QWORD PTR [rbp-0x1820],r13
  66d9a9:	4c 89 a5 20 ec ff ff 	mov    QWORD PTR [rbp-0x13e0],r12
  66d9b0:	4c 8b a5 e8 e6 ff ff 	mov    r12,QWORD PTR [rbp-0x1918]
  66d9b7:	4c 8b ad 38 fd ff ff 	mov    r13,QWORD PTR [rbp-0x2c8]
  66d9be:	4c 2b 85 a0 e6 ff ff 	sub    r8,QWORD PTR [rbp-0x1960]
  66d9c5:	4c 89 85 e0 ea ff ff 	mov    QWORD PTR [rbp-0x1520],r8
  66d9cc:	4c 8b 85 e8 ea ff ff 	mov    r8,QWORD PTR [rbp-0x1518]
  66d9d3:	4f 8d 2c 6c          	lea    r13,[r12+r13*2]
  66d9d7:	49 f7 d8             	neg    r8
  66d9da:	4d 03 c5             	add    r8,r13
  66d9dd:	4c 2b ad b8 e6 ff ff 	sub    r13,QWORD PTR [rbp-0x1948]
  66d9e4:	4c 2b 85 00 e1 ff ff 	sub    r8,QWORD PTR [rbp-0x1f00]
  66d9eb:	4c 03 ad 20 eb ff ff 	add    r13,QWORD PTR [rbp-0x14e0]
  66d9f2:	4c 89 85 e8 ea ff ff 	mov    QWORD PTR [rbp-0x1518],r8
  66d9f9:	4c 8b 85 38 ea ff ff 	mov    r8,QWORD PTR [rbp-0x15c8]
  66da00:	4d 03 e8             	add    r13,r8
  66da03:	4c 89 ad 00 ec ff ff 	mov    QWORD PTR [rbp-0x1400],r13
  66da0a:	4f 8d 2c be          	lea    r13,[r14+r15*4]
  66da0e:	4c 2b ea             	sub    r13,rdx
  66da11:	4f 8d 3c 7f          	lea    r15,[r15+r15*2]
  66da15:	4d 03 f7             	add    r14,r15
  66da18:	4c 03 e9             	add    r13,rcx
  66da1b:	4c 2b f2             	sub    r14,rdx
  66da1e:	4a 8d 14 9d 00 00 00 	lea    rdx,[r11*4+0x0]
  66da25:	00 
  66da26:	48 2b d7             	sub    rdx,rdi
  66da29:	4c 03 e8             	add    r13,rax
  66da2c:	48 8b bd 38 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2c8]
  66da33:	48 03 f2             	add    rsi,rdx
  66da36:	49 03 f1             	add    rsi,r9
  66da39:	49 03 ce             	add    rcx,r14
  66da3c:	49 03 f2             	add    rsi,r10
  66da3f:	48 03 c8             	add    rcx,rax
  66da42:	4c 89 ad 88 eb ff ff 	mov    QWORD PTR [rbp-0x1478],r13
  66da49:	48 8d 14 7f          	lea    rdx,[rdi+rdi*2]
  66da4d:	4c 8b ad b8 e6 ff ff 	mov    r13,QWORD PTR [rbp-0x1948]
  66da54:	4d 8d 14 bc          	lea    r10,[r12+rdi*4]
  66da58:	4c 03 e2             	add    r12,rdx
  66da5b:	4d 2b d5             	sub    r10,r13
  66da5e:	4d 2b e5             	sub    r12,r13
  66da61:	48 89 8d 18 eb ff ff 	mov    QWORD PTR [rbp-0x14e8],rcx
  66da68:	48 8b 8d 20 eb ff ff 	mov    rcx,QWORD PTR [rbp-0x14e0]
  66da6f:	4c 03 d1             	add    r10,rcx
  66da72:	48 8b 85 60 e7 ff ff 	mov    rax,QWORD PTR [rbp-0x18a0]
  66da79:	49 03 cc             	add    rcx,r12
  66da7c:	4c 8b a5 08 fd ff ff 	mov    r12,QWORD PTR [rbp-0x2f8]
  66da83:	4d 03 d0             	add    r10,r8
  66da86:	4c 0f af e0          	imul   r12,rax
  66da8a:	48 0f af 85 10 fd ff 	imul   rax,QWORD PTR [rbp-0x2f0]
  66da91:	ff 
  66da92:	48 8b bd 78 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x1388]
  66da99:	49 03 c8             	add    rcx,r8
  66da9c:	4c 8b 85 68 ec ff ff 	mov    r8,QWORD PTR [rbp-0x1398]
  66daa3:	4c 0f af c7          	imul   r8,rdi
  66daa7:	48 0f af bd 48 ec ff 	imul   rdi,QWORD PTR [rbp-0x13b8]
  66daae:	ff 
  66daaf:	4c 89 95 a0 eb ff ff 	mov    QWORD PTR [rbp-0x1460],r10
  66dab6:	4c 8b 95 98 e6 ff ff 	mov    r10,QWORD PTR [rbp-0x1968]
  66dabd:	4c 03 a5 f8 e0 ff ff 	add    r12,QWORD PTR [rbp-0x1f08]
  66dac4:	4d 89 d5             	mov    r13,r10
  66dac7:	4d 03 c4             	add    r8,r12
  66daca:	4c 8b a5 48 e7 ff ff 	mov    r12,QWORD PTR [rbp-0x18b8]
  66dad1:	4d 2b ec             	sub    r13,r12
  66dad4:	48 8b 95 60 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x14a0]
  66dadb:	48 03 85 f0 e0 ff ff 	add    rax,QWORD PTR [rbp-0x1f10]
  66dae2:	4c 8b b5 00 ef ff ff 	mov    r14,QWORD PTR [rbp-0x1100]
  66dae9:	48 03 f8             	add    rdi,rax
  66daec:	4c 8b 9d 40 e7 ff ff 	mov    r11,QWORD PTR [rbp-0x18c0]
  66daf3:	4d 8d 4c 15 00       	lea    r9,[r13+rdx*1+0x0]
  66daf8:	48 8b 85 28 ea ff ff 	mov    rax,QWORD PTR [rbp-0x15d8]
  66daff:	49 2b d3             	sub    rdx,r11
  66db02:	4c 2b d8             	sub    r11,rax
  66db05:	4f 8d 3c 32          	lea    r15,[r10+r14*1]
  66db09:	4d 2b cb             	sub    r9,r11
  66db0c:	4d 2b fc             	sub    r15,r12
  66db0f:	4c 89 8d a8 eb ff ff 	mov    QWORD PTR [rbp-0x1458],r9
  66db16:	4c 03 ea             	add    r13,rdx
  66db19:	4c 8b 9d 58 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2a8]
  66db20:	4c 03 fa             	add    r15,rdx
  66db23:	4c 8b 8d 78 e7 ff ff 	mov    r9,QWORD PTR [rbp-0x1888]
  66db2a:	4c 03 f8             	add    r15,rax
  66db2d:	48 89 8d 20 eb ff ff 	mov    QWORD PTR [rbp-0x14e0],rcx
  66db34:	4b 8d 0c 72          	lea    rcx,[r10+r14*2]
  66db38:	49 2b cc             	sub    rcx,r12
  66db3b:	48 03 d1             	add    rdx,rcx
  66db3e:	4f 8d 14 0b          	lea    r10,[r11+r9*1]
  66db42:	48 03 d0             	add    rdx,rax
  66db45:	4f 8d 24 59          	lea    r12,[r9+r11*2]
  66db49:	48 8b 85 00 e7 ff ff 	mov    rax,QWORD PTR [rbp-0x1900]
  66db50:	4c 03 d0             	add    r10,rax
  66db53:	4c 03 e0             	add    r12,rax
  66db56:	49 03 c1             	add    rax,r9
  66db59:	4c 89 bd 98 eb ff ff 	mov    QWORD PTR [rbp-0x1468],r15
  66db60:	4c 8b bd 10 eb ff ff 	mov    r15,QWORD PTR [rbp-0x14f0]
  66db67:	4d 2b d7             	sub    r10,r15
  66db6a:	4d 2b e7             	sub    r12,r15
  66db6d:	49 f7 df             	neg    r15
  66db70:	48 8b 8d 68 eb ff ff 	mov    rcx,QWORD PTR [rbp-0x1498]
  66db77:	4c 03 f8             	add    r15,rax
  66db7a:	48 03 c8             	add    rcx,rax
  66db7d:	48 03 85 f0 e6 ff ff 	add    rax,QWORD PTR [rbp-0x1910]
  66db84:	4c 89 95 c8 e7 ff ff 	mov    QWORD PTR [rbp-0x1838],r10
  66db8b:	4c 8b 95 b0 ea ff ff 	mov    r10,QWORD PTR [rbp-0x1550]
  66db92:	49 03 ca             	add    rcx,r10
  66db95:	4c 03 d0             	add    r10,rax
  66db98:	4c 89 95 b0 ea ff ff 	mov    QWORD PTR [rbp-0x1550],r10
  66db9f:	4c 8b b5 48 fd ff ff 	mov    r14,QWORD PTR [rbp-0x2b8]
  66dba6:	4c 8b 95 68 e7 ff ff 	mov    r10,QWORD PTR [rbp-0x1898]
  66dbad:	4c 8b 9d 30 eb ff ff 	mov    r11,QWORD PTR [rbp-0x14d0]
  66dbb4:	48 8b 85 c0 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x1940]
  66dbbb:	4c 89 bd 10 eb ff ff 	mov    QWORD PTR [rbp-0x14f0],r15
  66dbc2:	4f 8d 0c 16          	lea    r9,[r14+r10*1]
  66dbc6:	4d 03 cb             	add    r9,r11
  66dbc9:	4c 2b c8             	sub    r9,rax
  66dbcc:	4c 89 8d c0 e7 ff ff 	mov    QWORD PTR [rbp-0x1840],r9
  66dbd3:	4f 8d 0c 72          	lea    r9,[r10+r14*2]
  66dbd7:	4d 03 cb             	add    r9,r11
  66dbda:	4c 2b c8             	sub    r9,rax
  66dbdd:	4c 89 8d b8 e7 ff ff 	mov    QWORD PTR [rbp-0x1848],r9
  66dbe4:	4f 8d 0c 13          	lea    r9,[r11+r10*1]
  66dbe8:	4c 8b b5 58 eb ff ff 	mov    r14,QWORD PTR [rbp-0x14a8]
  66dbef:	4d 03 f1             	add    r14,r9
  66dbf2:	4c 03 95 18 fd ff ff 	add    r10,QWORD PTR [rbp-0x2e8]
  66dbf9:	4c 8b bd 08 eb ff ff 	mov    r15,QWORD PTR [rbp-0x14f8]
  66dc00:	4d 03 f7             	add    r14,r15
  66dc03:	4c 89 b5 58 eb ff ff 	mov    QWORD PTR [rbp-0x14a8],r14
  66dc0a:	4d 03 da             	add    r11,r10
  66dc0d:	4c 8b b5 10 e7 ff ff 	mov    r14,QWORD PTR [rbp-0x18f0]
  66dc14:	4c 2b d8             	sub    r11,rax
  66dc17:	4d 03 f1             	add    r14,r9
  66dc1a:	4c 2b c8             	sub    r9,rax
  66dc1d:	4d 03 fe             	add    r15,r14
  66dc20:	4c 89 bd 08 eb ff ff 	mov    QWORD PTR [rbp-0x14f8],r15
  66dc27:	4c 89 9d 30 eb ff ff 	mov    QWORD PTR [rbp-0x14d0],r11
  66dc2e:	4c 89 a5 10 ec ff ff 	mov    QWORD PTR [rbp-0x13f0],r12
  66dc35:	48 89 b5 70 eb ff ff 	mov    QWORD PTR [rbp-0x1490],rsi
  66dc3c:	83 a5 b8 fc ff ff 01 	and    DWORD PTR [rbp-0x348],0x1
  66dc43:	48 8b b5 70 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x1390]
  66dc4a:	4c 8b a5 78 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb88]
  66dc51:	48 89 95 60 eb ff ff 	mov    QWORD PTR [rbp-0x14a0],rdx
  66dc58:	4c 89 8d 08 ec ff ff 	mov    QWORD PTR [rbp-0x13f8],r9
  66dc5f:	48 89 8d 68 eb ff ff 	mov    QWORD PTR [rbp-0x1498],rcx
  66dc66:	4c 89 ad 18 ec ff ff 	mov    QWORD PTR [rbp-0x13e8],r13
  66dc6d:	48 89 bd 78 ec ff ff 	mov    QWORD PTR [rbp-0x1388],rdi
  66dc74:	4c 89 85 80 ec ff ff 	mov    QWORD PTR [rbp-0x1380],r8
  66dc7b:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  66dc81:	c5 fb 11 b5 68 fd ff 	vmovsd QWORD PTR [rbp-0x298],xmm6
  66dc88:	ff 
  66dc89:	c5 f9 70 e6 0e       	vpshufd xmm4,xmm6,0xe
  66dc8e:	c5 fb 10 35 a2 e8 1d 	vmovsd xmm6,QWORD PTR [rip+0x1de8a2]        # 84c538 <__STRLITPACK_0.112+0x428>
  66dc95:	00 
  66dc96:	c5 cb 5e ed          	vdivsd xmm5,xmm6,xmm5
  66dc9a:	c4 e2 7d 19 b5 e0 f4 	vbroadcastsd ymm6,QWORD PTR [rbp-0xb20]
  66dca1:	ff ff 
  66dca3:	c5 f9 70 d3 0e       	vpshufd xmm2,xmm3,0xe
  66dca8:	c5 fb 11 ad 30 f0 ff 	vmovsd QWORD PTR [rbp-0xfd0],xmm5
  66dcaf:	ff 
  66dcb0:	c5 fb 11 95 88 fd ff 	vmovsd QWORD PTR [rbp-0x278],xmm2
  66dcb7:	ff 
  66dcb8:	c5 fd 11 b5 30 ed ff 	vmovupd YMMWORD PTR [rbp-0x12d0],ymm6
  66dcbf:	ff 
  66dcc0:	c5 fb 11 9d 98 fd ff 	vmovsd QWORD PTR [rbp-0x268],xmm3
  66dcc7:	ff 
  66dcc8:	c5 fb 11 a5 90 fd ff 	vmovsd QWORD PTR [rbp-0x270],xmm4
  66dccf:	ff 
  66dcd0:	48 83 bd 80 eb ff ff 	cmp    QWORD PTR [rbp-0x1480],0x2
  66dcd7:	02 
  66dcd8:	0f 8c 19 9d 00 00    	jl     6779f7 <gls_corstep_mod_mp_gls_corstep_tile_+0x10287>
  66dcde:	48 89 b5 70 ec ff ff 	mov    QWORD PTR [rbp-0x1390],rsi
  66dce5:	c5 7b 10 15 6b e8 1d 	vmovsd xmm10,QWORD PTR [rip+0x1de86b]        # 84c558 <__STRLITPACK_0.112+0x448>
  66dcec:	00 
  66dced:	c5 7b 10 1d 5b e8 1d 	vmovsd xmm11,QWORD PTR [rip+0x1de85b]        # 84c550 <__STRLITPACK_0.112+0x440>
  66dcf4:	00 
  66dcf5:	c5 79 10 0d 83 dd 1d 	vmovupd xmm9,XMMWORD PTR [rip+0x1ddd83]        # 84ba80 <__STRLITPACK_19.34+0xa0>
  66dcfc:	00 
  66dcfd:	c5 79 10 25 6b dd 1d 	vmovupd xmm12,XMMWORD PTR [rip+0x1ddd6b]        # 84ba70 <__STRLITPACK_19.34+0x90>
  66dd04:	00 
  66dd05:	c5 fb 10 0d 3b e8 1d 	vmovsd xmm1,QWORD PTR [rip+0x1de83b]        # 84c548 <__STRLITPACK_0.112+0x438>
  66dd0c:	00 
  66dd0d:	c5 fb 10 35 2b e8 1d 	vmovsd xmm6,QWORD PTR [rip+0x1de82b]        # 84c540 <__STRLITPACK_0.112+0x430>
  66dd14:	00 
  66dd15:	c5 f9 10 25 43 dd 1d 	vmovupd xmm4,XMMWORD PTR [rip+0x1ddd43]        # 84ba60 <__STRLITPACK_19.34+0x80>
  66dd1c:	00 
  66dd1d:	c5 f9 10 2d 2b dd 1d 	vmovupd xmm5,XMMWORD PTR [rip+0x1ddd2b]        # 84ba50 <__STRLITPACK_19.34+0x70>
  66dd24:	00 
  66dd25:	c5 f9 10 15 13 dd 1d 	vmovupd xmm2,XMMWORD PTR [rip+0x1ddd13]        # 84ba40 <__STRLITPACK_19.34+0x60>
  66dd2c:	00 
  66dd2d:	c5 79 10 05 bb dc 1d 	vmovupd xmm8,XMMWORD PTR [rip+0x1ddcbb]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  66dd34:	00 
  66dd35:	c5 fb 10 1d cb e7 1d 	vmovsd xmm3,QWORD PTR [rip+0x1de7cb]        # 84c508 <__STRLITPACK_0.112+0x3f8>
  66dd3c:	00 
  66dd3d:	c5 fb 10 05 53 e4 1d 	vmovsd xmm0,QWORD PTR [rip+0x1de453]        # 84c198 <__STRLITPACK_0.112+0x88>
  66dd44:	00 
  66dd45:	4c 8b a5 58 ec ff ff 	mov    r12,QWORD PTR [rbp-0x13a8]
  66dd4c:	45 33 ed             	xor    r13d,r13d
  66dd4f:	4c 8b 95 70 ec ff ff 	mov    r10,QWORD PTR [rbp-0x1390]
  66dd56:	33 f6                	xor    esi,esi
  66dd58:	4c 8b b5 e0 e9 ff ff 	mov    r14,QWORD PTR [rbp-0x1620]
  66dd5f:	33 c9                	xor    ecx,ecx
  66dd61:	4d 0f af e2          	imul   r12,r10
  66dd65:	4d 0f af f2          	imul   r14,r10
  66dd69:	4c 8b 9d 50 ec ff ff 	mov    r11,QWORD PTR [rbp-0x13b0]
  66dd70:	33 d2                	xor    edx,edx
  66dd72:	4d 0f af da          	imul   r11,r10
  66dd76:	4c 8b 8d 98 eb ff ff 	mov    r9,QWORD PTR [rbp-0x1468]
  66dd7d:	33 c0                	xor    eax,eax
  66dd7f:	4c 8b bd 10 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13f0]
  66dd86:	48 8b bd c8 e7 ff ff 	mov    rdi,QWORD PTR [rbp-0x1838]
  66dd8d:	4c 89 ad 18 ef ff ff 	mov    QWORD PTR [rbp-0x10e8],r13
  66dd94:	4f 8d 04 31          	lea    r8,[r9+r14*1]
  66dd98:	4c 89 85 90 f0 ff ff 	mov    QWORD PTR [rbp-0xf70],r8
  66dd9f:	4f 8d 0c 27          	lea    r9,[r15+r12*1]
  66dda3:	4c 8b bd b8 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1848]
  66ddaa:	4e 8d 14 27          	lea    r10,[rdi+r12*1]
  66ddae:	4c 8b 85 10 eb ff ff 	mov    r8,QWORD PTR [rbp-0x14f0]
  66ddb5:	48 8b bd c0 e7 ff ff 	mov    rdi,QWORD PTR [rbp-0x1840]
  66ddbc:	4c 03 b5 60 eb ff ff 	add    r14,QWORD PTR [rbp-0x14a0]
  66ddc3:	4d 03 fb             	add    r15,r11
  66ddc6:	4c 89 bd 88 f0 ff ff 	mov    QWORD PTR [rbp-0xf78],r15
  66ddcd:	4d 03 c4             	add    r8,r12
  66ddd0:	4c 8b bd 08 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13f8]
  66ddd7:	49 03 fb             	add    rdi,r11
  66ddda:	4c 03 a5 a0 ea ff ff 	add    r12,QWORD PTR [rbp-0x1560]
  66dde1:	4c 89 b5 b8 f0 ff ff 	mov    QWORD PTR [rbp-0xf48],r14
  66dde8:	48 89 bd c8 f0 ff ff 	mov    QWORD PTR [rbp-0xf38],rdi
  66ddef:	4d 03 fb             	add    r15,r11
  66ddf2:	4c 89 bd 80 f0 ff ff 	mov    QWORD PTR [rbp-0xf80],r15
  66ddf9:	4c 8b bd 80 eb ff ff 	mov    r15,QWORD PTR [rbp-0x1480]
  66de00:	4c 03 9d 30 eb ff ff 	add    r11,QWORD PTR [rbp-0x14d0]
  66de07:	4c 89 9d c0 f0 ff ff 	mov    QWORD PTR [rbp-0xf40],r11
  66de0e:	4c 89 a5 d0 f0 ff ff 	mov    QWORD PTR [rbp-0xf30],r12
  66de15:	4d 8d 7f ff          	lea    r15,[r15-0x1]
  66de19:	4c 89 bd 10 ef ff ff 	mov    QWORD PTR [rbp-0x10f0],r15
  66de20:	4c 89 85 d8 f0 ff ff 	mov    QWORD PTR [rbp-0xf28],r8
  66de27:	4c 89 8d e0 f0 ff ff 	mov    QWORD PTR [rbp-0xf20],r9
  66de2e:	4c 89 95 e8 f0 ff ff 	mov    QWORD PTR [rbp-0xf18],r10
  66de35:	8b bd 80 fa ff ff    	mov    edi,DWORD PTR [rbp-0x580]
  66de3b:	3b bd 78 fa ff ff    	cmp    edi,DWORD PTR [rbp-0x588]
  66de41:	0f 8c a1 04 00 00    	jl     66e2e8 <gls_corstep_mod_mp_gls_corstep_tile_+0x6b78>
  66de47:	48 83 bd 50 fd ff ff 	cmp    QWORD PTR [rbp-0x2b0],0x2
  66de4e:	02 
  66de4f:	0f 8c 92 9b 00 00    	jl     6779e7 <gls_corstep_mod_mp_gls_corstep_tile_+0x10277>
  66de55:	4c 8b 95 50 f2 ff ff 	mov    r10,QWORD PTR [rbp-0xdb0]
  66de5c:	4c 8b 8d f8 f1 ff ff 	mov    r9,QWORD PTR [rbp-0xe08]
  66de63:	4c 8b a5 b8 f0 ff ff 	mov    r12,QWORD PTR [rbp-0xf48]
  66de6a:	48 8b bd e0 f0 ff ff 	mov    rdi,QWORD PTR [rbp-0xf20]
  66de71:	4d 8d 3c 02          	lea    r15,[r10+rax*1]
  66de75:	4c 8b 85 90 f0 ff ff 	mov    r8,QWORD PTR [rbp-0xf70]
  66de7c:	4d 8d 14 01          	lea    r10,[r9+rax*1]
  66de80:	4c 8b b5 e8 f0 ff ff 	mov    r14,QWORD PTR [rbp-0xf18]
  66de87:	4d 8d 0c 14          	lea    r9,[r12+rdx*1]
  66de8b:	4c 8b ad d8 f0 ff ff 	mov    r13,QWORD PTR [rbp-0xf28]
  66de92:	4c 8d 24 0f          	lea    r12,[rdi+rcx*1]
  66de96:	48 8b bd d0 f0 ff ff 	mov    rdi,QWORD PTR [rbp-0xf30]
  66de9d:	4c 89 bd 10 f1 ff ff 	mov    QWORD PTR [rbp-0xef0],r15
  66dea4:	4d 8d 3c 10          	lea    r15,[r8+rdx*1]
  66dea8:	4c 8b 9d 70 fd ff ff 	mov    r11,QWORD PTR [rbp-0x290]
  66deaf:	4d 8d 04 0e          	lea    r8,[r14+rcx*1]
  66deb3:	4c 89 9d e8 f5 ff ff 	mov    QWORD PTR [rbp-0xa18],r11
  66deba:	4d 8d 74 0d 00       	lea    r14,[r13+rcx*1+0x0]
  66debf:	45 33 db             	xor    r11d,r11d
  66dec2:	4c 8d 2c 0f          	lea    r13,[rdi+rcx*1]
  66dec6:	48 8b bd c8 f0 ff ff 	mov    rdi,QWORD PTR [rbp-0xf38]
  66decd:	4c 89 ad f8 fb ff ff 	mov    QWORD PTR [rbp-0x408],r13
  66ded4:	48 89 85 98 f0 ff ff 	mov    QWORD PTR [rbp-0xf68],rax
  66dedb:	48 89 95 a0 f0 ff ff 	mov    QWORD PTR [rbp-0xf60],rdx
  66dee2:	4c 8d 2c 37          	lea    r13,[rdi+rsi*1]
  66dee6:	48 8b bd 88 f0 ff ff 	mov    rdi,QWORD PTR [rbp-0xf78]
  66deed:	4c 89 ad e8 fb ff ff 	mov    QWORD PTR [rbp-0x418],r13
  66def4:	48 89 8d a8 f0 ff ff 	mov    QWORD PTR [rbp-0xf58],rcx
  66defb:	48 89 b5 b0 f0 ff ff 	mov    QWORD PTR [rbp-0xf50],rsi
  66df02:	4c 8d 2c 37          	lea    r13,[rdi+rsi*1]
  66df06:	48 8b bd 80 f0 ff ff 	mov    rdi,QWORD PTR [rbp-0xf80]
  66df0d:	4c 89 ad f8 f0 ff ff 	mov    QWORD PTR [rbp-0xf08],r13
  66df14:	4c 89 b5 c0 fb ff ff 	mov    QWORD PTR [rbp-0x440],r14
  66df1b:	4c 89 bd b8 fb ff ff 	mov    QWORD PTR [rbp-0x448],r15
  66df22:	4c 8d 2c 37          	lea    r13,[rdi+rsi*1]
  66df26:	48 8b bd c0 f0 ff ff 	mov    rdi,QWORD PTR [rbp-0xf40]
  66df2d:	4c 89 ea             	mov    rdx,r13
  66df30:	48 8b 8d f8 f0 ff ff 	mov    rcx,QWORD PTR [rbp-0xf08]
  66df37:	4c 8d 2c 37          	lea    r13,[rdi+rsi*1]
  66df3b:	4c 89 ad d8 fb ff ff 	mov    QWORD PTR [rbp-0x428],r13
  66df42:	45 33 ed             	xor    r13d,r13d
  66df45:	33 ff                	xor    edi,edi
  66df47:	48 89 f8             	mov    rax,rdi
  66df4a:	48 8b b5 10 f1 ff ff 	mov    rsi,QWORD PTR [rbp-0xef0]
  66df51:	4c 8b b5 28 fb ff ff 	mov    r14,QWORD PTR [rbp-0x4d8]
  66df58:	4f 8d 3c 29          	lea    r15,[r9+r13*1]
  66df5c:	c4 c1 7b 10 3f       	vmovsd xmm7,QWORD PTR [r15]
  66df61:	c4 01 41 16 3c 37    	vmovhpd xmm15,xmm7,QWORD PTR [r15+r14*1]
  66df67:	4c 8b bd b8 fb ff ff 	mov    r15,QWORD PTR [rbp-0x448]
  66df6e:	4d 03 fd             	add    r15,r13
  66df71:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  66df76:	4f 8d 6c 75 00       	lea    r13,[r13+r14*2+0x0]
  66df7b:	c4 81 11 16 3c 37    	vmovhpd xmm7,xmm13,QWORD PTR [r15+r14*1]
  66df81:	4d 8d 34 38          	lea    r14,[r8+rdi*1]
  66df85:	c5 01 58 f7          	vaddpd xmm14,xmm15,xmm7
  66df89:	4c 8b bd 28 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2d8]
  66df90:	c4 41 7b 10 2e       	vmovsd xmm13,QWORD PTR [r14]
  66df95:	c4 c1 39 59 fe       	vmulpd xmm7,xmm8,xmm14
  66df9a:	c4 01 11 16 34 3e    	vmovhpd xmm14,xmm13,QWORD PTR [r14+r15*1]
  66dfa0:	4d 8d 34 3c          	lea    r14,[r12+rdi*1]
  66dfa4:	c4 41 7b 10 3e       	vmovsd xmm15,QWORD PTR [r14]
  66dfa9:	c4 01 01 16 2c 3e    	vmovhpd xmm13,xmm15,QWORD PTR [r14+r15*1]
  66dfaf:	4c 8b b5 c0 fb ff ff 	mov    r14,QWORD PTR [rbp-0x440]
  66dfb6:	c4 41 09 58 f5       	vaddpd xmm14,xmm14,xmm13
  66dfbb:	c4 41 19 59 f6       	vmulpd xmm14,xmm12,xmm14
  66dfc0:	4c 03 f7             	add    r14,rdi
  66dfc3:	c4 41 7b 10 3e       	vmovsd xmm15,QWORD PTR [r14]
  66dfc8:	c4 01 01 16 3c 3e    	vmovhpd xmm15,xmm15,QWORD PTR [r14+r15*1]
  66dfce:	4c 8b b5 f8 fb ff ff 	mov    r14,QWORD PTR [rbp-0x408]
  66dfd5:	4c 03 f7             	add    r14,rdi
  66dfd8:	c4 41 7b 10 2e       	vmovsd xmm13,QWORD PTR [r14]
  66dfdd:	4a 8d 3c 7f          	lea    rdi,[rdi+r15*2]
  66dfe1:	c4 01 11 16 2c 3e    	vmovhpd xmm13,xmm13,QWORD PTR [r14+r15*1]
  66dfe7:	c4 41 01 58 fd       	vaddpd xmm15,xmm15,xmm13
  66dfec:	c4 41 31 59 ef       	vmulpd xmm13,xmm9,xmm15
  66dff1:	c4 41 09 5c f5       	vsubpd xmm14,xmm14,xmm13
  66dff6:	c4 41 41 59 f6       	vmulpd xmm14,xmm7,xmm14
  66dffb:	4c 8b bd e8 fb ff ff 	mov    r15,QWORD PTR [rbp-0x418]
  66e002:	4c 8b b5 b0 fb ff ff 	mov    r14,QWORD PTR [rbp-0x450]
  66e009:	c4 01 79 11 74 da 10 	vmovupd XMMWORD PTR [r10+r11*8+0x10],xmm14
  66e010:	4c 03 f8             	add    r15,rax
  66e013:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  66e018:	c4 01 11 16 34 37    	vmovhpd xmm14,xmm13,QWORD PTR [r15+r14*1]
  66e01e:	4c 8d 3c 01          	lea    r15,[rcx+rax*1]
  66e022:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  66e027:	c4 01 01 16 2c 37    	vmovhpd xmm13,xmm15,QWORD PTR [r15+r14*1]
  66e02d:	4c 8d 3c 02          	lea    r15,[rdx+rax*1]
  66e031:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  66e036:	c4 41 09 58 f5       	vaddpd xmm14,xmm14,xmm13
  66e03b:	c4 01 01 16 2c 37    	vmovhpd xmm13,xmm15,QWORD PTR [r15+r14*1]
  66e041:	4c 8b bd d8 fb ff ff 	mov    r15,QWORD PTR [rbp-0x428]
  66e048:	c4 41 19 59 f6       	vmulpd xmm14,xmm12,xmm14
  66e04d:	4c 03 f8             	add    r15,rax
  66e050:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  66e055:	4a 8d 04 70          	lea    rax,[rax+r14*2]
  66e059:	c4 01 01 16 3c 37    	vmovhpd xmm15,xmm15,QWORD PTR [r15+r14*1]
  66e05f:	c4 41 11 58 ef       	vaddpd xmm13,xmm13,xmm15
  66e064:	c4 41 31 59 ed       	vmulpd xmm13,xmm9,xmm13
  66e069:	c4 41 09 5c f5       	vsubpd xmm14,xmm14,xmm13
  66e06e:	c4 c1 41 59 fe       	vmulpd xmm7,xmm7,xmm14
  66e073:	c4 a1 79 11 7c de 10 	vmovupd XMMWORD PTR [rsi+r11*8+0x10],xmm7
  66e07a:	49 83 c3 02          	add    r11,0x2
  66e07e:	4c 3b 9d 70 fd ff ff 	cmp    r11,QWORD PTR [rbp-0x290]
  66e085:	0f 82 c6 fe ff ff    	jb     66df51 <gls_corstep_mod_mp_gls_corstep_tile_+0x67e1>
  66e08b:	48 8b 85 98 f0 ff ff 	mov    rax,QWORD PTR [rbp-0xf68]
  66e092:	48 8b 95 a0 f0 ff ff 	mov    rdx,QWORD PTR [rbp-0xf60]
  66e099:	48 8b 8d a8 f0 ff ff 	mov    rcx,QWORD PTR [rbp-0xf58]
  66e0a0:	48 8b b5 b0 f0 ff ff 	mov    rsi,QWORD PTR [rbp-0xf50]
  66e0a7:	48 8b bd e8 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xa18]
  66e0ae:	4c 8b a5 b0 fb ff ff 	mov    r12,QWORD PTR [rbp-0x450]
  66e0b5:	4c 8b 9d 28 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2d8]
  66e0bc:	4c 8b 95 28 fb ff ff 	mov    r10,QWORD PTR [rbp-0x4d8]
  66e0c3:	4c 0f af e7          	imul   r12,rdi
  66e0c7:	4c 0f af df          	imul   r11,rdi
  66e0cb:	4c 0f af d7          	imul   r10,rdi
  66e0cf:	48 3b bd 50 fd ff ff 	cmp    rdi,QWORD PTR [rbp-0x2b0]
  66e0d6:	0f 83 cd 01 00 00    	jae    66e2a9 <gls_corstep_mod_mp_gls_corstep_tile_+0x6b39>
  66e0dc:	4c 8b 85 f8 f1 ff ff 	mov    r8,QWORD PTR [rbp-0xe08]
  66e0e3:	48 8b bd 90 f0 ff ff 	mov    rdi,QWORD PTR [rbp-0xf70]
  66e0ea:	4c 8b b5 50 f2 ff ff 	mov    r14,QWORD PTR [rbp-0xdb0]
  66e0f1:	48 89 85 98 f0 ff ff 	mov    QWORD PTR [rbp-0xf68],rax
  66e0f8:	4d 8d 2c 00          	lea    r13,[r8+rax*1]
  66e0fc:	4c 89 ad 00 f1 ff ff 	mov    QWORD PTR [rbp-0xf00],r13
  66e103:	4c 8d 3c 17          	lea    r15,[rdi+rdx*1]
  66e107:	4c 89 bd 08 f1 ff ff 	mov    QWORD PTR [rbp-0xef8],r15
  66e10e:	4d 8d 0c 06          	lea    r9,[r14+rax*1]
  66e112:	4c 8b b5 b8 f0 ff ff 	mov    r14,QWORD PTR [rbp-0xf48]
  66e119:	4c 8b ad e0 f0 ff ff 	mov    r13,QWORD PTR [rbp-0xf20]
  66e120:	4c 8b bd d0 f0 ff ff 	mov    r15,QWORD PTR [rbp-0xf30]
  66e127:	4c 89 8d f0 fb ff ff 	mov    QWORD PTR [rbp-0x410],r9
  66e12e:	4d 8d 0c 16          	lea    r9,[r14+rdx*1]
  66e132:	4c 89 8d 18 f1 ff ff 	mov    QWORD PTR [rbp-0xee8],r9
  66e139:	4d 8d 4c 0d 00       	lea    r9,[r13+rcx*1+0x0]
  66e13e:	4c 8b 85 e8 f0 ff ff 	mov    r8,QWORD PTR [rbp-0xf18]
  66e145:	4d 8d 2c 0f          	lea    r13,[r15+rcx*1]
  66e149:	4c 8b bd 88 f0 ff ff 	mov    r15,QWORD PTR [rbp-0xf78]
  66e150:	48 8b bd d8 f0 ff ff 	mov    rdi,QWORD PTR [rbp-0xf28]
  66e157:	4c 89 ad c8 fb ff ff 	mov    QWORD PTR [rbp-0x438],r13
  66e15e:	4d 8d 34 08          	lea    r14,[r8+rcx*1]
  66e162:	4c 89 b5 d0 fb ff ff 	mov    QWORD PTR [rbp-0x430],r14
  66e169:	4c 03 fe             	add    r15,rsi
  66e16c:	4c 89 bd e0 fb ff ff 	mov    QWORD PTR [rbp-0x420],r15
  66e173:	4c 8d 04 0f          	lea    r8,[rdi+rcx*1]
  66e177:	4c 8b bd 80 f0 ff ff 	mov    r15,QWORD PTR [rbp-0xf80]
  66e17e:	48 8b bd c8 f0 ff ff 	mov    rdi,QWORD PTR [rbp-0xf38]
  66e185:	48 89 95 a0 f0 ff ff 	mov    QWORD PTR [rbp-0xf60],rdx
  66e18c:	48 89 8d a8 f0 ff ff 	mov    QWORD PTR [rbp-0xf58],rcx
  66e193:	4c 03 fe             	add    r15,rsi
  66e196:	4c 89 bd f0 f0 ff ff 	mov    QWORD PTR [rbp-0xf10],r15
  66e19d:	48 03 fe             	add    rdi,rsi
  66e1a0:	4c 8b bd c0 f0 ff ff 	mov    r15,QWORD PTR [rbp-0xf40]
  66e1a7:	48 89 b5 b0 f0 ff ff 	mov    QWORD PTR [rbp-0xf50],rsi
  66e1ae:	48 8b 85 f0 f0 ff ff 	mov    rax,QWORD PTR [rbp-0xf10]
  66e1b5:	48 8b 95 18 f1 ff ff 	mov    rdx,QWORD PTR [rbp-0xee8]
  66e1bc:	4c 03 fe             	add    r15,rsi
  66e1bf:	4d 89 fd             	mov    r13,r15
  66e1c2:	48 8b 8d 08 f1 ff ff 	mov    rcx,QWORD PTR [rbp-0xef8]
  66e1c9:	48 8b b5 00 f1 ff ff 	mov    rsi,QWORD PTR [rbp-0xf00]
  66e1d0:	4c 8b b5 e8 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xa18]
  66e1d7:	4c 8b bd d0 fb ff ff 	mov    r15,QWORD PTR [rbp-0x430]
  66e1de:	c4 41 7b 10 3c 12    	vmovsd xmm15,QWORD PTR [r10+rdx*1]
  66e1e4:	c4 41 03 58 34 0a    	vaddsd xmm14,xmm15,QWORD PTR [r10+rcx*1]
  66e1ea:	c4 81 7b 10 3c 3b    	vmovsd xmm7,QWORD PTR [r11+r15*1]
  66e1f0:	4c 8b bd c8 fb ff ff 	mov    r15,QWORD PTR [rbp-0x438]
  66e1f7:	c4 01 7b 10 3c 03    	vmovsd xmm15,QWORD PTR [r11+r8*1]
  66e1fd:	c4 41 7b 59 f6       	vmulsd xmm14,xmm0,xmm14
  66e202:	c4 01 43 58 2c 0b    	vaddsd xmm13,xmm7,QWORD PTR [r11+r9*1]
  66e208:	c4 81 03 58 3c 3b    	vaddsd xmm7,xmm15,QWORD PTR [r11+r15*1]
  66e20e:	c4 41 23 59 ed       	vmulsd xmm13,xmm11,xmm13
  66e213:	c5 2b 59 ff          	vmulsd xmm15,xmm10,xmm7
  66e217:	4c 8b bd e0 fb ff ff 	mov    r15,QWORD PTR [rbp-0x420]
  66e21e:	c4 41 13 5c ef       	vsubsd xmm13,xmm13,xmm15
  66e223:	c4 c1 0b 59 fd       	vmulsd xmm7,xmm14,xmm13
  66e228:	c4 41 7b 10 2c 3c    	vmovsd xmm13,QWORD PTR [r12+rdi*1]
  66e22e:	c4 a1 7b 11 7c f6 10 	vmovsd QWORD PTR [rsi+r14*8+0x10],xmm7
  66e235:	4c 03 95 28 fb ff ff 	add    r10,QWORD PTR [rbp-0x4d8]
  66e23c:	4c 03 9d 28 fd ff ff 	add    r11,QWORD PTR [rbp-0x2d8]
  66e243:	c4 01 13 58 3c 3c    	vaddsd xmm15,xmm13,QWORD PTR [r12+r15*1]
  66e249:	c4 41 7b 10 2c 04    	vmovsd xmm13,QWORD PTR [r12+rax*1]
  66e24f:	c4 c1 23 59 ff       	vmulsd xmm7,xmm11,xmm15
  66e254:	c4 01 13 58 3c 2c    	vaddsd xmm15,xmm13,QWORD PTR [r12+r13*1]
  66e25a:	c4 41 2b 59 ef       	vmulsd xmm13,xmm10,xmm15
  66e25f:	4c 8b bd f0 fb ff ff 	mov    r15,QWORD PTR [rbp-0x410]
  66e266:	c4 c1 43 5c fd       	vsubsd xmm7,xmm7,xmm13
  66e26b:	c5 0b 59 f7          	vmulsd xmm14,xmm14,xmm7
  66e26f:	c4 01 7b 11 74 f7 10 	vmovsd QWORD PTR [r15+r14*8+0x10],xmm14
  66e276:	49 ff c6             	inc    r14
  66e279:	4c 03 a5 b0 fb ff ff 	add    r12,QWORD PTR [rbp-0x450]
  66e280:	4c 3b b5 50 fd ff ff 	cmp    r14,QWORD PTR [rbp-0x2b0]
  66e287:	0f 82 4a ff ff ff    	jb     66e1d7 <gls_corstep_mod_mp_gls_corstep_tile_+0x6a67>
  66e28d:	48 8b 85 98 f0 ff ff 	mov    rax,QWORD PTR [rbp-0xf68]
  66e294:	48 8b 95 a0 f0 ff ff 	mov    rdx,QWORD PTR [rbp-0xf60]
  66e29b:	48 8b 8d a8 f0 ff ff 	mov    rcx,QWORD PTR [rbp-0xf58]
  66e2a2:	48 8b b5 b0 f0 ff ff 	mov    rsi,QWORD PTR [rbp-0xf50]
  66e2a9:	48 8b bd 18 ef ff ff 	mov    rdi,QWORD PTR [rbp-0x10e8]
  66e2b0:	48 ff c7             	inc    rdi
  66e2b3:	48 03 85 60 fd ff ff 	add    rax,QWORD PTR [rbp-0x2a0]
  66e2ba:	48 03 95 00 ef ff ff 	add    rdx,QWORD PTR [rbp-0x1100]
  66e2c1:	48 03 8d 58 fd ff ff 	add    rcx,QWORD PTR [rbp-0x2a8]
  66e2c8:	48 03 b5 48 fd ff ff 	add    rsi,QWORD PTR [rbp-0x2b8]
  66e2cf:	48 89 bd 18 ef ff ff 	mov    QWORD PTR [rbp-0x10e8],rdi
  66e2d6:	48 3b bd 10 ef ff ff 	cmp    rdi,QWORD PTR [rbp-0x10f0]
  66e2dd:	0f 82 52 fb ff ff    	jb     66de35 <gls_corstep_mod_mp_gls_corstep_tile_+0x66c5>
  66e2e3:	e9 c2 35 00 00       	jmp    6718aa <gls_corstep_mod_mp_gls_corstep_tile_+0xa13a>
  66e2e8:	48 8b bd 18 ef ff ff 	mov    rdi,QWORD PTR [rbp-0x10e8]
  66e2ef:	48 ff c7             	inc    rdi
  66e2f2:	48 03 85 60 fd ff ff 	add    rax,QWORD PTR [rbp-0x2a0]
  66e2f9:	48 03 95 00 ef ff ff 	add    rdx,QWORD PTR [rbp-0x1100]
  66e300:	48 03 8d 58 fd ff ff 	add    rcx,QWORD PTR [rbp-0x2a8]
  66e307:	48 03 b5 48 fd ff ff 	add    rsi,QWORD PTR [rbp-0x2b8]
  66e30e:	48 89 bd 18 ef ff ff 	mov    QWORD PTR [rbp-0x10e8],rdi
  66e315:	48 3b bd 10 ef ff ff 	cmp    rdi,QWORD PTR [rbp-0x10f0]
  66e31c:	0f 82 13 fb ff ff    	jb     66de35 <gls_corstep_mod_mp_gls_corstep_tile_+0x66c5>
  66e322:	48 83 bd d8 fc ff ff 	cmp    QWORD PTR [rbp-0x328],0x0
  66e329:	00 
  66e32a:	0f 8e e0 66 00 00    	jle    674a10 <gls_corstep_mod_mp_gls_corstep_tile_+0xd2a0>
  66e330:	4c 8b b5 40 ec ff ff 	mov    r14,QWORD PTR [rbp-0x13c0]
  66e337:	48 8b b5 70 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x1390]
  66e33e:	4c 8b bd 48 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13b8]
  66e345:	4c 8b 85 50 ec ff ff 	mov    r8,QWORD PTR [rbp-0x13b0]
  66e34c:	4c 8b 8d 58 ec ff ff 	mov    r9,QWORD PTR [rbp-0x13a8]
  66e353:	4c 8b a5 78 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb88]
  66e35a:	4c 8b 95 90 f2 ff ff 	mov    r10,QWORD PTR [rbp-0xd70]
  66e361:	4c 89 ff             	mov    rdi,r15
  66e364:	4c 89 ca             	mov    rdx,r9
  66e367:	4c 8b 9d 68 ec ff ff 	mov    r11,QWORD PTR [rbp-0x1398]
  66e36e:	4c 89 c0             	mov    rax,r8
  66e371:	4c 0f af de          	imul   r11,rsi
  66e375:	48 0f af fe          	imul   rdi,rsi
  66e379:	48 0f af d6          	imul   rdx,rsi
  66e37d:	48 0f af c6          	imul   rax,rsi
  66e381:	c4 01 7b 10 4c e2 f8 	vmovsd xmm9,QWORD PTR [r10+r12*8-0x8]
  66e388:	45 33 ed             	xor    r13d,r13d
  66e38b:	4c 03 9d 80 ec ff ff 	add    r11,QWORD PTR [rbp-0x1380]
  66e392:	33 c9                	xor    ecx,ecx
  66e394:	48 03 bd 78 ec ff ff 	add    rdi,QWORD PTR [rbp-0x1388]
  66e39b:	49 03 d6             	add    rdx,r14
  66e39e:	48 03 85 60 ec ff ff 	add    rax,QWORD PTR [rbp-0x13a0]
  66e3a5:	4c 8b bd b0 fb ff ff 	mov    r15,QWORD PTR [rbp-0x450]
  66e3ac:	c4 41 7b 12 d1       	vmovddup xmm10,xmm9
  66e3b1:	48 89 bd e0 fe ff ff 	mov    QWORD PTR [rbp-0x120],rdi
  66e3b8:	4c 89 9d d8 fe ff ff 	mov    QWORD PTR [rbp-0x128],r11
  66e3bf:	4c 89 ad 20 f0 ff ff 	mov    QWORD PTR [rbp-0xfe0],r13
  66e3c6:	48 89 b5 70 ec ff ff 	mov    QWORD PTR [rbp-0x1390],rsi
  66e3cd:	8b b5 80 fa ff ff    	mov    esi,DWORD PTR [rbp-0x580]
  66e3d3:	3b b5 78 fa ff ff    	cmp    esi,DWORD PTR [rbp-0x588]
  66e3d9:	0f 8c fa 02 00 00    	jl     66e6d9 <gls_corstep_mod_mp_gls_corstep_tile_+0x6f69>
  66e3df:	48 8b b5 d0 f1 ff ff 	mov    rsi,QWORD PTR [rbp-0xe30]
  66e3e6:	4c 8b 85 78 f4 ff ff 	mov    r8,QWORD PTR [rbp-0xb88]
  66e3ed:	48 8b bd d8 f1 ff ff 	mov    rdi,QWORD PTR [rbp-0xe28]
  66e3f4:	c4 21 7b 10 44 c6 f8 	vmovsd xmm8,QWORD PTR [rsi+r8*8-0x8]
  66e3fb:	c4 a1 7b 10 7c c7 f8 	vmovsd xmm7,QWORD PTR [rdi+r8*8-0x8]
  66e402:	4d 85 ff             	test   r15,r15
  66e405:	0f 84 b3 65 00 00    	je     6749be <gls_corstep_mod_mp_gls_corstep_tile_+0xd24e>
  66e40b:	48 83 bd 28 fd ff ff 	cmp    QWORD PTR [rbp-0x2d8],0x0
  66e412:	00 
  66e413:	0f 84 a5 65 00 00    	je     6749be <gls_corstep_mod_mp_gls_corstep_tile_+0xd24e>
  66e419:	48 83 bd 50 fd ff ff 	cmp    QWORD PTR [rbp-0x2b0],0x2
  66e420:	02 
  66e421:	0f 8c 97 65 00 00    	jl     6749be <gls_corstep_mod_mp_gls_corstep_tile_+0xd24e>
  66e427:	4c 8b a5 f0 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb10]
  66e42e:	45 33 ed             	xor    r13d,r13d
  66e431:	4c 8b 9d 50 f2 ff ff 	mov    r11,QWORD PTR [rbp-0xdb0]
  66e438:	45 33 c0             	xor    r8d,r8d
  66e43b:	4c 8b 95 e8 f4 ff ff 	mov    r10,QWORD PTR [rbp-0xb18]
  66e442:	33 ff                	xor    edi,edi
  66e444:	48 8b b5 f8 f1 ff ff 	mov    rsi,QWORD PTR [rbp-0xe08]
  66e44b:	4c 03 e1             	add    r12,rcx
  66e44e:	4c 8b b5 70 fd ff ff 	mov    r14,QWORD PTR [rbp-0x290]
  66e455:	4c 03 d9             	add    r11,rcx
  66e458:	48 89 85 88 f3 ff ff 	mov    QWORD PTR [rbp-0xc78],rax
  66e45f:	4c 03 d1             	add    r10,rcx
  66e462:	48 89 85 a8 f4 ff ff 	mov    QWORD PTR [rbp-0xb58],rax
  66e469:	4c 8d 0c 0e          	lea    r9,[rsi+rcx*1]
  66e46d:	48 89 95 b0 f4 ff ff 	mov    QWORD PTR [rbp-0xb50],rdx
  66e474:	48 89 d6             	mov    rsi,rdx
  66e477:	c5 7b 12 ff          	vmovddup xmm15,xmm7
  66e47b:	c4 41 7b 12 f0       	vmovddup xmm14,xmm8
  66e480:	4c 89 b5 a0 f4 ff ff 	mov    QWORD PTR [rbp-0xb60],r14
  66e487:	48 89 8d b8 f4 ff ff 	mov    QWORD PTR [rbp-0xb48],rcx
  66e48e:	48 8b 85 88 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xc78]
  66e495:	48 8b 95 28 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x2d8]
  66e49c:	48 8b 8d d8 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x128]
  66e4a3:	4e 8d 34 01          	lea    r14,[rcx+r8*1]
  66e4a7:	48 8b 8d 08 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2f8]
  66e4ae:	c4 41 7b 10 1e       	vmovsd xmm11,QWORD PTR [r14]
  66e4b3:	c4 41 21 16 2c 0e    	vmovhpd xmm13,xmm11,QWORD PTR [r14+rcx*1]
  66e4b9:	4d 8d 04 48          	lea    r8,[r8+rcx*2]
  66e4bd:	c4 41 29 59 dd       	vmulpd xmm11,xmm10,xmm13
  66e4c2:	4c 8b b5 e0 fe ff ff 	mov    r14,QWORD PTR [rbp-0x120]
  66e4c9:	49 8d 0c 3e          	lea    rcx,[r14+rdi*1]
  66e4cd:	4c 8b b5 10 fd ff ff 	mov    r14,QWORD PTR [rbp-0x2f0]
  66e4d4:	c5 7b 10 21          	vmovsd xmm12,QWORD PTR [rcx]
  66e4d8:	c4 21 19 16 2c 31    	vmovhpd xmm13,xmm12,QWORD PTR [rcx+r14*1]
  66e4de:	4a 8d 3c 77          	lea    rdi,[rdi+r14*2]
  66e4e2:	c4 41 21 59 ed       	vmulpd xmm13,xmm11,xmm13
  66e4e7:	c4 01 79 10 5c e9 10 	vmovupd xmm11,XMMWORD PTR [r9+r13*8+0x10]
  66e4ee:	c4 01 21 5c 5c ea 08 	vsubpd xmm11,xmm11,XMMWORD PTR [r10+r13*8+0x8]
  66e4f5:	c4 41 11 59 db       	vmulpd xmm11,xmm13,xmm11
  66e4fa:	c5 7b 10 26          	vmovsd xmm12,QWORD PTR [rsi]
  66e4fe:	c5 19 16 24 16       	vmovhpd xmm12,xmm12,QWORD PTR [rsi+rdx*1]
  66e503:	c4 41 19 5c e3       	vsubpd xmm12,xmm12,xmm11
  66e508:	c4 41 19 5f de       	vmaxpd xmm11,xmm12,xmm14
  66e50d:	c5 7b 10 20          	vmovsd xmm12,QWORD PTR [rax]
  66e511:	c5 7b 11 1e          	vmovsd QWORD PTR [rsi],xmm11
  66e515:	c5 79 17 1c 32       	vmovhpd QWORD PTR [rdx+rsi*1],xmm11
  66e51a:	48 8d 34 56          	lea    rsi,[rsi+rdx*2]
  66e51e:	c4 21 19 16 1c 38    	vmovhpd xmm11,xmm12,QWORD PTR [rax+r15*1]
  66e524:	c4 01 79 10 64 eb 10 	vmovupd xmm12,XMMWORD PTR [r11+r13*8+0x10]
  66e52b:	c4 01 19 5c 64 ec 08 	vsubpd xmm12,xmm12,XMMWORD PTR [r12+r13*8+0x8]
  66e532:	c4 41 11 59 ec       	vmulpd xmm13,xmm13,xmm12
  66e537:	c4 41 21 5c dd       	vsubpd xmm11,xmm11,xmm13
  66e53c:	c4 41 21 5f e7       	vmaxpd xmm12,xmm11,xmm15
  66e541:	49 83 c5 02          	add    r13,0x2
  66e545:	c5 7b 11 20          	vmovsd QWORD PTR [rax],xmm12
  66e549:	c4 41 79 17 24 07    	vmovhpd QWORD PTR [r15+rax*1],xmm12
  66e54f:	4a 8d 04 78          	lea    rax,[rax+r15*2]
  66e553:	4c 3b ad 70 fd ff ff 	cmp    r13,QWORD PTR [rbp-0x290]
  66e55a:	0f 82 3c ff ff ff    	jb     66e49c <gls_corstep_mod_mp_gls_corstep_tile_+0x6d2c>
  66e560:	4c 8b b5 a0 f4 ff ff 	mov    r14,QWORD PTR [rbp-0xb60]
  66e567:	48 8b 85 a8 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb58]
  66e56e:	48 8b 95 b0 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb50]
  66e575:	48 8b 8d b8 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xb48]
  66e57c:	4d 89 fc             	mov    r12,r15
  66e57f:	4c 8b ad 28 fd ff ff 	mov    r13,QWORD PTR [rbp-0x2d8]
  66e586:	4c 8b 95 10 fd ff ff 	mov    r10,QWORD PTR [rbp-0x2f0]
  66e58d:	48 8b bd 08 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2f8]
  66e594:	4d 0f af e6          	imul   r12,r14
  66e598:	4d 0f af ee          	imul   r13,r14
  66e59c:	4d 0f af d6          	imul   r10,r14
  66e5a0:	49 0f af fe          	imul   rdi,r14
  66e5a4:	4c 3b b5 50 fd ff ff 	cmp    r14,QWORD PTR [rbp-0x2b0]
  66e5ab:	0f 83 f0 00 00 00    	jae    66e6a1 <gls_corstep_mod_mp_gls_corstep_tile_+0x6f31>
  66e5b1:	48 8b b5 f0 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb10]
  66e5b8:	4c 03 ea             	add    r13,rdx
  66e5bb:	4c 8b 8d 50 f2 ff ff 	mov    r9,QWORD PTR [rbp-0xdb0]
  66e5c2:	4c 03 e0             	add    r12,rax
  66e5c5:	4c 8b 85 e8 f4 ff ff 	mov    r8,QWORD PTR [rbp-0xb18]
  66e5cc:	4c 8b 9d f8 f1 ff ff 	mov    r11,QWORD PTR [rbp-0xe08]
  66e5d3:	48 03 f1             	add    rsi,rcx
  66e5d6:	48 89 85 a8 f4 ff ff 	mov    QWORD PTR [rbp-0xb58],rax
  66e5dd:	4c 03 c9             	add    r9,rcx
  66e5e0:	48 89 95 b0 f4 ff ff 	mov    QWORD PTR [rbp-0xb50],rdx
  66e5e7:	4c 03 c1             	add    r8,rcx
  66e5ea:	48 89 8d b8 f4 ff ff 	mov    QWORD PTR [rbp-0xb48],rcx
  66e5f1:	4c 03 d9             	add    r11,rcx
  66e5f4:	48 8b 85 e0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x120]
  66e5fb:	48 8b 95 d8 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x128]
  66e602:	48 8b 8d 08 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2f8]
  66e609:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  66e610:	c5 33 59 24 17       	vmulsd xmm12,xmm9,QWORD PTR [rdi+rdx*1]
  66e615:	48 03 f9             	add    rdi,rcx
  66e618:	c4 01 7b 10 6c f3 10 	vmovsd xmm13,QWORD PTR [r11+r14*8+0x10]
  66e61f:	c4 41 1b 59 1c 02    	vmulsd xmm11,xmm12,QWORD PTR [r10+rax*1]
  66e625:	c4 01 13 5c 74 f0 08 	vsubsd xmm14,xmm13,QWORD PTR [r8+r14*8+0x8]
  66e62c:	c4 41 23 59 e6       	vmulsd xmm12,xmm11,xmm14
  66e631:	c4 41 7b 10 7d 00    	vmovsd xmm15,QWORD PTR [r13+0x0]
  66e637:	c4 01 7b 10 74 f1 10 	vmovsd xmm14,QWORD PTR [r9+r14*8+0x10]
  66e63e:	c4 41 03 5c ec       	vsubsd xmm13,xmm15,xmm12
  66e643:	c4 21 0b 5c 64 f6 08 	vsubsd xmm12,xmm14,QWORD PTR [rsi+r14*8+0x8]
  66e64a:	c4 41 13 5f e8       	vmaxsd xmm13,xmm13,xmm8
  66e64f:	c4 41 23 59 fc       	vmulsd xmm15,xmm11,xmm12
  66e654:	c4 41 7b 10 1c 24    	vmovsd xmm11,QWORD PTR [r12]
  66e65a:	49 ff c6             	inc    r14
  66e65d:	c4 41 7b 11 6d 00    	vmovsd QWORD PTR [r13+0x0],xmm13
  66e663:	c4 41 23 5c df       	vsubsd xmm11,xmm11,xmm15
  66e668:	4c 03 95 10 fd ff ff 	add    r10,QWORD PTR [rbp-0x2f0]
  66e66f:	c5 23 5f df          	vmaxsd xmm11,xmm11,xmm7
  66e673:	4c 03 ad 28 fd ff ff 	add    r13,QWORD PTR [rbp-0x2d8]
  66e67a:	c4 41 7b 11 1c 24    	vmovsd QWORD PTR [r12],xmm11
  66e680:	4d 03 e7             	add    r12,r15
  66e683:	4c 3b b5 50 fd ff ff 	cmp    r14,QWORD PTR [rbp-0x2b0]
  66e68a:	72 84                	jb     66e610 <gls_corstep_mod_mp_gls_corstep_tile_+0x6ea0>
  66e68c:	48 8b 85 a8 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb58]
  66e693:	48 8b 95 b0 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb50]
  66e69a:	48 8b 8d b8 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xb48]
  66e6a1:	48 8b b5 20 f0 ff ff 	mov    rsi,QWORD PTR [rbp-0xfe0]
  66e6a8:	48 ff c6             	inc    rsi
  66e6ab:	48 03 8d 60 fd ff ff 	add    rcx,QWORD PTR [rbp-0x2a0]
  66e6b2:	48 03 95 58 fd ff ff 	add    rdx,QWORD PTR [rbp-0x2a8]
  66e6b9:	48 03 85 48 fd ff ff 	add    rax,QWORD PTR [rbp-0x2b8]
  66e6c0:	48 89 b5 20 f0 ff ff 	mov    QWORD PTR [rbp-0xfe0],rsi
  66e6c7:	48 3b b5 d8 fc ff ff 	cmp    rsi,QWORD PTR [rbp-0x328]
  66e6ce:	0f 82 f9 fc ff ff    	jb     66e3cd <gls_corstep_mod_mp_gls_corstep_tile_+0x6c5d>
  66e6d4:	e9 ed 62 00 00       	jmp    6749c6 <gls_corstep_mod_mp_gls_corstep_tile_+0xd256>
  66e6d9:	48 8b b5 20 f0 ff ff 	mov    rsi,QWORD PTR [rbp-0xfe0]
  66e6e0:	48 ff c6             	inc    rsi
  66e6e3:	48 03 8d 60 fd ff ff 	add    rcx,QWORD PTR [rbp-0x2a0]
  66e6ea:	48 03 95 58 fd ff ff 	add    rdx,QWORD PTR [rbp-0x2a8]
  66e6f1:	48 03 85 48 fd ff ff 	add    rax,QWORD PTR [rbp-0x2b8]
  66e6f8:	48 89 b5 20 f0 ff ff 	mov    QWORD PTR [rbp-0xfe0],rsi
  66e6ff:	48 3b b5 d8 fc ff ff 	cmp    rsi,QWORD PTR [rbp-0x328]
  66e706:	0f 82 c1 fc ff ff    	jb     66e3cd <gls_corstep_mod_mp_gls_corstep_tile_+0x6c5d>
  66e70c:	c4 c1 7b 59 f9       	vmulsd xmm7,xmm0,xmm9
  66e711:	4c 8b 8d 58 ec ff ff 	mov    r9,QWORD PTR [rbp-0x13a8]
  66e718:	4c 8b a5 78 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb88]
  66e71f:	4c 8b 95 90 f2 ff ff 	mov    r10,QWORD PTR [rbp-0xd70]
  66e726:	4c 8b bd 78 eb ff ff 	mov    r15,QWORD PTR [rbp-0x1488]
  66e72d:	4c 8b ad 50 fd ff ff 	mov    r13,QWORD PTR [rbp-0x2b0]
  66e734:	48 8b b5 80 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x1480]
  66e73b:	c5 c1 57 3d 7d d1 1d 	vxorpd xmm7,xmm7,XMMWORD PTR [rip+0x1dd17d]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  66e742:	00 
  66e743:	48 83 bd 28 fd ff ff 	cmp    QWORD PTR [rbp-0x2d8],0x8
  66e74a:	08 
  66e74b:	0f 85 2b 01 00 00    	jne    66e87c <gls_corstep_mod_mp_gls_corstep_tile_+0x710c>
  66e751:	33 ff                	xor    edi,edi
  66e753:	48 83 fe 02          	cmp    rsi,0x2
  66e757:	0f 8c 41 61 00 00    	jl     67489e <gls_corstep_mod_mp_gls_corstep_tile_+0xd12e>
  66e75d:	48 8b 85 58 ec ff ff 	mov    rax,QWORD PTR [rbp-0x13a8]
  66e764:	48 8d 4e ff          	lea    rcx,[rsi-0x1]
  66e768:	48 0f af 85 70 ec ff 	imul   rax,QWORD PTR [rbp-0x1390]
  66e76f:	ff 
  66e770:	48 8b 95 e8 e7 ff ff 	mov    rdx,QWORD PTR [rbp-0x1818]
  66e777:	48 89 8d 70 e7 ff ff 	mov    QWORD PTR [rbp-0x1890],rcx
  66e77e:	48 89 b5 80 eb ff ff 	mov    QWORD PTR [rbp-0x1480],rsi
  66e785:	4c 89 bd 78 eb ff ff 	mov    QWORD PTR [rbp-0x1488],r15
  66e78c:	48 03 d0             	add    rdx,rax
  66e78f:	48 03 85 f0 e7 ff ff 	add    rax,QWORD PTR [rbp-0x1810]
  66e796:	4c 8b 85 60 fd ff ff 	mov    r8,QWORD PTR [rbp-0x2a0]
  66e79d:	48 8b b5 78 f0 ff ff 	mov    rsi,QWORD PTR [rbp-0xf88]
  66e7a4:	4c 8b b5 58 fd ff ff 	mov    r14,QWORD PTR [rbp-0x2a8]
  66e7ab:	8b 8d 80 fa ff ff    	mov    ecx,DWORD PTR [rbp-0x580]
  66e7b1:	3b 8d 78 fa ff ff    	cmp    ecx,DWORD PTR [rbp-0x588]
  66e7b7:	7d 11                	jge    66e7ca <gls_corstep_mod_mp_gls_corstep_tile_+0x705a>
  66e7b9:	48 ff c7             	inc    rdi
  66e7bc:	48 3b bd 70 e7 ff ff 	cmp    rdi,QWORD PTR [rbp-0x1890]
  66e7c3:	72 ec                	jb     66e7b1 <gls_corstep_mod_mp_gls_corstep_tile_+0x7041>
  66e7c5:	e9 88 61 00 00       	jmp    674952 <gls_corstep_mod_mp_gls_corstep_tile_+0xd1e2>
  66e7ca:	49 83 fd 04          	cmp    r13,0x4
  66e7ce:	0f 8c c2 60 00 00    	jl     674896 <gls_corstep_mod_mp_gls_corstep_tile_+0xd126>
  66e7d4:	49 89 fb             	mov    r11,rdi
  66e7d7:	4d 89 f1             	mov    r9,r14
  66e7da:	4d 0f af d8          	imul   r11,r8
  66e7de:	4c 0f af cf          	imul   r9,rdi
  66e7e2:	4c 8b bd 50 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xab0]
  66e7e9:	45 33 e4             	xor    r12d,r12d
  66e7ec:	4c 03 de             	add    r11,rsi
  66e7ef:	4e 8d 14 0a          	lea    r10,[rdx+r9*1]
  66e7f3:	4c 03 c8             	add    r9,rax
  66e7f6:	4c 89 f9             	mov    rcx,r15
  66e7f9:	c4 81 7d 10 44 e3 10 	vmovupd ymm0,YMMWORD PTR [r11+r12*8+0x10]
  66e800:	c4 81 7d 10 0c e2    	vmovupd ymm1,YMMWORD PTR [r10+r12*8]
  66e806:	c4 81 7d 59 14 e1    	vmulpd ymm2,ymm0,YMMWORD PTR [r9+r12*8]
  66e80c:	c5 f5 5c da          	vsubpd ymm3,ymm1,ymm2
  66e810:	c4 81 7d 11 1c e2    	vmovupd YMMWORD PTR [r10+r12*8],ymm3
  66e816:	49 83 c4 04          	add    r12,0x4
  66e81a:	4c 3b e1             	cmp    r12,rcx
  66e81d:	72 da                	jb     66e7f9 <gls_corstep_mod_mp_gls_corstep_tile_+0x7089>
  66e81f:	8b 8d 80 fa ff ff    	mov    ecx,DWORD PTR [rbp-0x580]
  66e825:	4d 3b fd             	cmp    r15,r13
  66e828:	73 3d                	jae    66e867 <gls_corstep_mod_mp_gls_corstep_tile_+0x70f7>
  66e82a:	49 89 fb             	mov    r11,rdi
  66e82d:	4d 89 f1             	mov    r9,r14
  66e830:	4d 0f af d8          	imul   r11,r8
  66e834:	4c 0f af cf          	imul   r9,rdi
  66e838:	4c 03 de             	add    r11,rsi
  66e83b:	4e 8d 14 0a          	lea    r10,[rdx+r9*1]
  66e83f:	4c 03 c8             	add    r9,rax
  66e842:	c4 81 7b 10 44 fb 10 	vmovsd xmm0,QWORD PTR [r11+r15*8+0x10]
  66e849:	c4 81 7b 59 14 f9    	vmulsd xmm2,xmm0,QWORD PTR [r9+r15*8]
  66e84f:	c4 81 7b 10 0c fa    	vmovsd xmm1,QWORD PTR [r10+r15*8]
  66e855:	c5 f3 5c da          	vsubsd xmm3,xmm1,xmm2
  66e859:	c4 81 7b 11 1c fa    	vmovsd QWORD PTR [r10+r15*8],xmm3
  66e85f:	49 ff c7             	inc    r15
  66e862:	4d 3b fd             	cmp    r15,r13
  66e865:	72 db                	jb     66e842 <gls_corstep_mod_mp_gls_corstep_tile_+0x70d2>
  66e867:	48 ff c7             	inc    rdi
  66e86a:	48 3b bd 70 e7 ff ff 	cmp    rdi,QWORD PTR [rbp-0x1890]
  66e871:	0f 82 3a ff ff ff    	jb     66e7b1 <gls_corstep_mod_mp_gls_corstep_tile_+0x7041>
  66e877:	e9 7d 1e 00 00       	jmp    6706f9 <gls_corstep_mod_mp_gls_corstep_tile_+0x8f89>
  66e87c:	48 83 fe 02          	cmp    rsi,0x2
  66e880:	0f 8c 18 60 00 00    	jl     67489e <gls_corstep_mod_mp_gls_corstep_tile_+0xd12e>
  66e886:	4c 89 bd 78 eb ff ff 	mov    QWORD PTR [rbp-0x1488],r15
  66e88d:	48 89 b5 80 eb ff ff 	mov    QWORD PTR [rbp-0x1480],rsi
  66e894:	4c 8b 9d 00 e8 ff ff 	mov    r11,QWORD PTR [rbp-0x1800]
  66e89b:	33 f6                	xor    esi,esi
  66e89d:	4c 8b a5 60 e8 ff ff 	mov    r12,QWORD PTR [rbp-0x17a0]
  66e8a4:	33 c9                	xor    ecx,ecx
  66e8a6:	4c 8b 95 28 e8 ff ff 	mov    r10,QWORD PTR [rbp-0x17d8]
  66e8ad:	33 d2                	xor    edx,edx
  66e8af:	4c 8b 8d 08 e8 ff ff 	mov    r9,QWORD PTR [rbp-0x17f8]
  66e8b6:	4c 8b 85 40 e8 ff ff 	mov    r8,QWORD PTR [rbp-0x17c0]
  66e8bd:	4d 03 dc             	add    r11,r12
  66e8c0:	48 8b bd 38 e8 ff ff 	mov    rdi,QWORD PTR [rbp-0x17c8]
  66e8c7:	4d 03 d4             	add    r10,r12
  66e8ca:	4c 8b b5 40 ec ff ff 	mov    r14,QWORD PTR [rbp-0x13c0]
  66e8d1:	4d 03 cc             	add    r9,r12
  66e8d4:	4c 8b bd 80 eb ff ff 	mov    r15,QWORD PTR [rbp-0x1480]
  66e8db:	4d 03 c4             	add    r8,r12
  66e8de:	48 8b 85 78 f0 ff ff 	mov    rax,QWORD PTR [rbp-0xf88]
  66e8e5:	49 03 fc             	add    rdi,r12
  66e8e8:	49 89 c5             	mov    r13,rax
  66e8eb:	4d 03 f4             	add    r14,r12
  66e8ee:	48 89 bd e8 ee ff ff 	mov    QWORD PTR [rbp-0x1118],rdi
  66e8f5:	4d 8d 67 ff          	lea    r12,[r15-0x1]
  66e8f9:	4c 89 a5 b8 ec ff ff 	mov    QWORD PTR [rbp-0x1348],r12
  66e900:	4c 89 ad 90 e6 ff ff 	mov    QWORD PTR [rbp-0x1970],r13
  66e907:	4c 89 b5 d0 ee ff ff 	mov    QWORD PTR [rbp-0x1130],r14
  66e90e:	4c 89 85 e0 ee ff ff 	mov    QWORD PTR [rbp-0x1120],r8
  66e915:	4c 89 8d f0 ee ff ff 	mov    QWORD PTR [rbp-0x1110],r9
  66e91c:	4c 89 95 c8 ee ff ff 	mov    QWORD PTR [rbp-0x1138],r10
  66e923:	4c 89 9d d8 ee ff ff 	mov    QWORD PTR [rbp-0x1128],r11
  66e92a:	48 8b bd 60 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2a0]
  66e931:	4c 8b a5 28 fd ff ff 	mov    r12,QWORD PTR [rbp-0x2d8]
  66e938:	44 8b 85 80 fa ff ff 	mov    r8d,DWORD PTR [rbp-0x580]
  66e93f:	44 3b 85 78 fa ff ff 	cmp    r8d,DWORD PTR [rbp-0x588]
  66e946:	0f 8c 1b 01 00 00    	jl     66ea67 <gls_corstep_mod_mp_gls_corstep_tile_+0x72f7>
  66e94c:	41 b8 01 00 00 00    	mov    r8d,0x1
  66e952:	45 33 ff             	xor    r15d,r15d
  66e955:	45 33 db             	xor    r11d,r11d
  66e958:	83 bd f8 ee ff ff 00 	cmp    DWORD PTR [rbp-0x1108],0x0
  66e95f:	0f 84 8e 00 00 00    	je     66e9f3 <gls_corstep_mod_mp_gls_corstep_tile_+0x7283>
  66e965:	4c 8b 95 f0 ee ff ff 	mov    r10,QWORD PTR [rbp-0x1110]
  66e96c:	4c 8b 8d d0 ee ff ff 	mov    r9,QWORD PTR [rbp-0x1130]
  66e973:	4c 8b 85 e0 ee ff ff 	mov    r8,QWORD PTR [rbp-0x1120]
  66e97a:	4c 8b ad e8 ee ff ff 	mov    r13,QWORD PTR [rbp-0x1118]
  66e981:	4c 03 d1             	add    r10,rcx
  66e984:	48 8b bd 90 ee ff ff 	mov    rdi,QWORD PTR [rbp-0x1170]
  66e98b:	4c 03 c9             	add    r9,rcx
  66e98e:	4c 03 c1             	add    r8,rcx
  66e991:	4d 8d 74 0d 00       	lea    r14,[r13+rcx*1+0x0]
  66e996:	49 89 c5             	mov    r13,rax
  66e999:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  66e9a0:	c4 c1 7b 10 45 10    	vmovsd xmm0,QWORD PTR [r13+0x10]
  66e9a6:	49 ff c7             	inc    r15
  66e9a9:	c4 c1 7b 10 65 18    	vmovsd xmm4,QWORD PTR [r13+0x18]
  66e9af:	49 83 c5 10          	add    r13,0x10
  66e9b3:	c4 81 7b 59 14 59    	vmulsd xmm2,xmm0,QWORD PTR [r9+r11*2]
  66e9b9:	c4 81 5b 59 34 5e    	vmulsd xmm6,xmm4,QWORD PTR [r14+r11*2]
  66e9bf:	c4 81 7b 10 0c 5a    	vmovsd xmm1,QWORD PTR [r10+r11*2]
  66e9c5:	c4 81 7b 10 2c 58    	vmovsd xmm5,QWORD PTR [r8+r11*2]
  66e9cb:	c5 f3 5c da          	vsubsd xmm3,xmm1,xmm2
  66e9cf:	c5 53 5c c6          	vsubsd xmm8,xmm5,xmm6
  66e9d3:	c4 81 7b 11 1c 5a    	vmovsd QWORD PTR [r10+r11*2],xmm3
  66e9d9:	c4 01 7b 11 04 58    	vmovsd QWORD PTR [r8+r11*2],xmm8
  66e9df:	4d 03 dc             	add    r11,r12
  66e9e2:	4c 3b ff             	cmp    r15,rdi
  66e9e5:	72 b9                	jb     66e9a0 <gls_corstep_mod_mp_gls_corstep_tile_+0x7230>
  66e9e7:	48 8b bd 60 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2a0]
  66e9ee:	47 8d 44 3f 01       	lea    r8d,[r15+r15*1+0x1]
  66e9f3:	45 8d 48 ff          	lea    r9d,[r8-0x1]
  66e9f7:	44 3b 8d 08 ef ff ff 	cmp    r9d,DWORD PTR [rbp-0x10f8]
  66e9fe:	73 45                	jae    66ea45 <gls_corstep_mod_mp_gls_corstep_tile_+0x72d5>
  66ea00:	4d 63 c0             	movsxd r8,r8d
  66ea03:	4d 89 e5             	mov    r13,r12
  66ea06:	4d 0f af e8          	imul   r13,r8
  66ea0a:	4c 8b 95 d8 ee ff ff 	mov    r10,QWORD PTR [rbp-0x1128]
  66ea11:	4c 8b 8d 78 f0 ff ff 	mov    r9,QWORD PTR [rbp-0xf88]
  66ea18:	4f 8d 34 2a          	lea    r14,[r10+r13*1]
  66ea1c:	4c 03 ad c8 ee ff ff 	add    r13,QWORD PTR [rbp-0x1138]
  66ea23:	c4 c1 7b 10 0c 0e    	vmovsd xmm1,QWORD PTR [r14+rcx*1]
  66ea29:	4f 8d 1c c1          	lea    r11,[r9+r8*8]
  66ea2d:	c4 c1 7b 10 44 13 08 	vmovsd xmm0,QWORD PTR [r11+rdx*1+0x8]
  66ea34:	c4 c1 7b 59 54 0d 00 	vmulsd xmm2,xmm0,QWORD PTR [r13+rcx*1+0x0]
  66ea3b:	c5 f3 5c da          	vsubsd xmm3,xmm1,xmm2
  66ea3f:	c4 c1 7b 11 1c 0e    	vmovsd QWORD PTR [r14+rcx*1],xmm3
  66ea45:	48 ff c6             	inc    rsi
  66ea48:	48 03 c7             	add    rax,rdi
  66ea4b:	48 03 8d 58 fd ff ff 	add    rcx,QWORD PTR [rbp-0x2a8]
  66ea52:	48 03 d7             	add    rdx,rdi
  66ea55:	48 3b b5 b8 ec ff ff 	cmp    rsi,QWORD PTR [rbp-0x1348]
  66ea5c:	0f 82 d6 fe ff ff    	jb     66e938 <gls_corstep_mod_mp_gls_corstep_tile_+0x71c8>
  66ea62:	e9 92 1c 00 00       	jmp    6706f9 <gls_corstep_mod_mp_gls_corstep_tile_+0x8f89>
  66ea67:	48 ff c6             	inc    rsi
  66ea6a:	48 03 c7             	add    rax,rdi
  66ea6d:	48 03 8d 58 fd ff ff 	add    rcx,QWORD PTR [rbp-0x2a8]
  66ea74:	48 03 d7             	add    rdx,rdi
  66ea77:	48 3b b5 b8 ec ff ff 	cmp    rsi,QWORD PTR [rbp-0x1348]
  66ea7e:	0f 82 b4 fe ff ff    	jb     66e938 <gls_corstep_mod_mp_gls_corstep_tile_+0x71c8>
  66ea84:	c5 7b 10 15 cc da 1d 	vmovsd xmm10,QWORD PTR [rip+0x1ddacc]        # 84c558 <__STRLITPACK_0.112+0x448>
  66ea8b:	00 
  66ea8c:	c5 7b 10 1d bc da 1d 	vmovsd xmm11,QWORD PTR [rip+0x1ddabc]        # 84c550 <__STRLITPACK_0.112+0x440>
  66ea93:	00 
  66ea94:	c5 79 10 0d e4 cf 1d 	vmovupd xmm9,XMMWORD PTR [rip+0x1dcfe4]        # 84ba80 <__STRLITPACK_19.34+0xa0>
  66ea9b:	00 
  66ea9c:	c5 79 10 25 cc cf 1d 	vmovupd xmm12,XMMWORD PTR [rip+0x1dcfcc]        # 84ba70 <__STRLITPACK_19.34+0x90>
  66eaa3:	00 
  66eaa4:	c5 fb 10 0d 9c da 1d 	vmovsd xmm1,QWORD PTR [rip+0x1dda9c]        # 84c548 <__STRLITPACK_0.112+0x438>
  66eaab:	00 
  66eaac:	c5 fb 10 35 8c da 1d 	vmovsd xmm6,QWORD PTR [rip+0x1dda8c]        # 84c540 <__STRLITPACK_0.112+0x430>
  66eab3:	00 
  66eab4:	c5 f9 10 25 a4 cf 1d 	vmovupd xmm4,XMMWORD PTR [rip+0x1dcfa4]        # 84ba60 <__STRLITPACK_19.34+0x80>
  66eabb:	00 
  66eabc:	c5 f9 10 2d 8c cf 1d 	vmovupd xmm5,XMMWORD PTR [rip+0x1dcf8c]        # 84ba50 <__STRLITPACK_19.34+0x70>
  66eac3:	00 
  66eac4:	c5 f9 10 15 74 cf 1d 	vmovupd xmm2,XMMWORD PTR [rip+0x1dcf74]        # 84ba40 <__STRLITPACK_19.34+0x60>
  66eacb:	00 
  66eacc:	c5 79 10 05 1c cf 1d 	vmovupd xmm8,XMMWORD PTR [rip+0x1dcf1c]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  66ead3:	00 
  66ead4:	c5 fb 10 1d 2c da 1d 	vmovsd xmm3,QWORD PTR [rip+0x1dda2c]        # 84c508 <__STRLITPACK_0.112+0x3f8>
  66eadb:	00 
  66eadc:	c5 fb 10 05 b4 d6 1d 	vmovsd xmm0,QWORD PTR [rip+0x1dd6b4]        # 84c198 <__STRLITPACK_0.112+0x88>
  66eae3:	00 
  66eae4:	4c 8b 9d 90 e6 ff ff 	mov    r11,QWORD PTR [rbp-0x1970]
  66eaeb:	48 83 bd b0 fb ff ff 	cmp    QWORD PTR [rbp-0x450],0x8
  66eaf2:	08 
  66eaf3:	0f 84 e1 01 00 00    	je     66ecda <gls_corstep_mod_mp_gls_corstep_tile_+0x756a>
  66eaf9:	4c 8b a5 68 e8 ff ff 	mov    r12,QWORD PTR [rbp-0x1798]
  66eb00:	33 d2                	xor    edx,edx
  66eb02:	48 8b b5 20 e8 ff ff 	mov    rsi,QWORD PTR [rbp-0x17e0]
  66eb09:	33 c0                	xor    eax,eax
  66eb0b:	4c 8b ad 60 ec ff ff 	mov    r13,QWORD PTR [rbp-0x13a0]
  66eb12:	33 c9                	xor    ecx,ecx
  66eb14:	4c 8b 95 f8 e7 ff ff 	mov    r10,QWORD PTR [rbp-0x1808]
  66eb1b:	4c 8b 8d 18 e8 ff ff 	mov    r9,QWORD PTR [rbp-0x17e8]
  66eb22:	49 03 f4             	add    rsi,r12
  66eb25:	4c 8b 85 10 e8 ff ff 	mov    r8,QWORD PTR [rbp-0x17f0]
  66eb2c:	4d 03 ec             	add    r13,r12
  66eb2f:	48 8b bd 30 e8 ff ff 	mov    rdi,QWORD PTR [rbp-0x17d0]
  66eb36:	4d 03 d4             	add    r10,r12
  66eb39:	4c 8b b5 80 eb ff ff 	mov    r14,QWORD PTR [rbp-0x1480]
  66eb40:	4d 03 cc             	add    r9,r12
  66eb43:	4c 89 ad a0 ee ff ff 	mov    QWORD PTR [rbp-0x1160],r13
  66eb4a:	4d 03 c4             	add    r8,r12
  66eb4d:	48 89 b5 b0 ee ff ff 	mov    QWORD PTR [rbp-0x1150],rsi
  66eb54:	49 03 fc             	add    rdi,r12
  66eb57:	48 89 bd c0 ee ff ff 	mov    QWORD PTR [rbp-0x1140],rdi
  66eb5e:	4d 8d 66 ff          	lea    r12,[r14-0x1]
  66eb62:	4c 89 a5 b0 ec ff ff 	mov    QWORD PTR [rbp-0x1350],r12
  66eb69:	4c 89 85 b8 ee ff ff 	mov    QWORD PTR [rbp-0x1148],r8
  66eb70:	4c 89 8d 98 ee ff ff 	mov    QWORD PTR [rbp-0x1168],r9
  66eb77:	4c 89 95 a8 ee ff ff 	mov    QWORD PTR [rbp-0x1158],r10
  66eb7e:	48 8b b5 60 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x2a0]
  66eb85:	4c 8b ad b0 fb ff ff 	mov    r13,QWORD PTR [rbp-0x450]
  66eb8c:	8b bd 80 fa ff ff    	mov    edi,DWORD PTR [rbp-0x580]
  66eb92:	3b bd 78 fa ff ff    	cmp    edi,DWORD PTR [rbp-0x588]
  66eb98:	0f 8c 1a 01 00 00    	jl     66ecb8 <gls_corstep_mod_mp_gls_corstep_tile_+0x7548>
  66eb9e:	41 b8 01 00 00 00    	mov    r8d,0x1
  66eba4:	33 ff                	xor    edi,edi
  66eba6:	45 33 e4             	xor    r12d,r12d
  66eba9:	83 bd f8 ee ff ff 00 	cmp    DWORD PTR [rbp-0x1108],0x0
  66ebb0:	0f 84 8f 00 00 00    	je     66ec45 <gls_corstep_mod_mp_gls_corstep_tile_+0x74d5>
  66ebb6:	4c 8b 95 b8 ee ff ff 	mov    r10,QWORD PTR [rbp-0x1148]
  66ebbd:	4c 8b 8d a0 ee ff ff 	mov    r9,QWORD PTR [rbp-0x1160]
  66ebc4:	4c 8b 85 c0 ee ff ff 	mov    r8,QWORD PTR [rbp-0x1140]
  66ebcb:	4c 8b b5 b0 ee ff ff 	mov    r14,QWORD PTR [rbp-0x1150]
  66ebd2:	4c 03 d0             	add    r10,rax
  66ebd5:	48 8b b5 90 ee ff ff 	mov    rsi,QWORD PTR [rbp-0x1170]
  66ebdc:	4c 03 c8             	add    r9,rax
  66ebdf:	4c 03 c0             	add    r8,rax
  66ebe2:	4d 8d 3c 06          	lea    r15,[r14+rax*1]
  66ebe6:	4d 89 de             	mov    r14,r11
  66ebe9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  66ebf0:	c4 c1 7b 10 7e 10    	vmovsd xmm7,QWORD PTR [r14+0x10]
  66ebf6:	48 ff c7             	inc    rdi
  66ebf9:	c4 01 43 59 34 61    	vmulsd xmm14,xmm7,QWORD PTR [r9+r12*2]
  66ebff:	c4 01 7b 10 2c 62    	vmovsd xmm13,QWORD PTR [r10+r12*2]
  66ec05:	c4 c1 7b 10 7e 18    	vmovsd xmm7,QWORD PTR [r14+0x18]
  66ec0b:	49 83 c6 10          	add    r14,0x10
  66ec0f:	c4 41 13 5c fe       	vsubsd xmm15,xmm13,xmm14
  66ec14:	c4 01 43 59 34 67    	vmulsd xmm14,xmm7,QWORD PTR [r15+r12*2]
  66ec1a:	c4 01 7b 10 2c 60    	vmovsd xmm13,QWORD PTR [r8+r12*2]
  66ec20:	c4 01 7b 11 3c 62    	vmovsd QWORD PTR [r10+r12*2],xmm15
  66ec26:	c4 41 13 5c fe       	vsubsd xmm15,xmm13,xmm14
  66ec2b:	c4 01 7b 11 3c 60    	vmovsd QWORD PTR [r8+r12*2],xmm15
  66ec31:	4d 03 e5             	add    r12,r13
  66ec34:	48 3b fe             	cmp    rdi,rsi
  66ec37:	72 b7                	jb     66ebf0 <gls_corstep_mod_mp_gls_corstep_tile_+0x7480>
  66ec39:	48 8b b5 60 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x2a0]
  66ec40:	44 8d 44 3f 01       	lea    r8d,[rdi+rdi*1+0x1]
  66ec45:	41 8d 78 ff          	lea    edi,[r8-0x1]
  66ec49:	3b bd 08 ef ff ff    	cmp    edi,DWORD PTR [rbp-0x10f8]
  66ec4f:	73 45                	jae    66ec96 <gls_corstep_mod_mp_gls_corstep_tile_+0x7526>
  66ec51:	4d 63 c0             	movsxd r8,r8d
  66ec54:	4d 89 ec             	mov    r12,r13
  66ec57:	4d 0f af e0          	imul   r12,r8
  66ec5b:	4c 8b 8d a8 ee ff ff 	mov    r9,QWORD PTR [rbp-0x1158]
  66ec62:	48 8b bd 78 f0 ff ff 	mov    rdi,QWORD PTR [rbp-0xf88]
  66ec69:	4f 8d 34 21          	lea    r14,[r9+r12*1]
  66ec6d:	4c 03 a5 98 ee ff ff 	add    r12,QWORD PTR [rbp-0x1168]
  66ec74:	c4 41 7b 10 2c 06    	vmovsd xmm13,QWORD PTR [r14+rax*1]
  66ec7a:	4e 8d 14 c7          	lea    r10,[rdi+r8*8]
  66ec7e:	c4 c1 7b 10 7c 0a 08 	vmovsd xmm7,QWORD PTR [r10+rcx*1+0x8]
  66ec85:	c4 41 43 59 34 04    	vmulsd xmm14,xmm7,QWORD PTR [r12+rax*1]
  66ec8b:	c4 41 13 5c fe       	vsubsd xmm15,xmm13,xmm14
  66ec90:	c4 41 7b 11 3c 06    	vmovsd QWORD PTR [r14+rax*1],xmm15
  66ec96:	48 ff c2             	inc    rdx
  66ec99:	4c 03 de             	add    r11,rsi
  66ec9c:	48 03 85 48 fd ff ff 	add    rax,QWORD PTR [rbp-0x2b8]
  66eca3:	48 03 ce             	add    rcx,rsi
  66eca6:	48 3b 95 b0 ec ff ff 	cmp    rdx,QWORD PTR [rbp-0x1350]
  66ecad:	0f 82 d9 fe ff ff    	jb     66eb8c <gls_corstep_mod_mp_gls_corstep_tile_+0x741c>
  66ecb3:	e9 9d 01 00 00       	jmp    66ee55 <gls_corstep_mod_mp_gls_corstep_tile_+0x76e5>
  66ecb8:	48 ff c2             	inc    rdx
  66ecbb:	4c 03 de             	add    r11,rsi
  66ecbe:	48 03 85 48 fd ff ff 	add    rax,QWORD PTR [rbp-0x2b8]
  66ecc5:	48 03 ce             	add    rcx,rsi
  66ecc8:	48 3b 95 b0 ec ff ff 	cmp    rdx,QWORD PTR [rbp-0x1350]
  66eccf:	0f 82 b7 fe ff ff    	jb     66eb8c <gls_corstep_mod_mp_gls_corstep_tile_+0x741c>
  66ecd5:	e9 2e 01 00 00       	jmp    66ee08 <gls_corstep_mod_mp_gls_corstep_tile_+0x7698>
  66ecda:	48 8b bd 50 e8 ff ff 	mov    rdi,QWORD PTR [rbp-0x17b0]
  66ece1:	33 d2                	xor    edx,edx
  66ece3:	48 8b 85 68 e8 ff ff 	mov    rax,QWORD PTR [rbp-0x1798]
  66ecea:	45 33 c9             	xor    r9d,r9d
  66eced:	4c 8b 95 48 e8 ff ff 	mov    r10,QWORD PTR [rbp-0x17b8]
  66ecf4:	48 8b 8d 80 eb ff ff 	mov    rcx,QWORD PTR [rbp-0x1480]
  66ecfb:	48 8b b5 48 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x2b8]
  66ed02:	48 03 f8             	add    rdi,rax
  66ed05:	44 8b 85 80 fa ff ff 	mov    r8d,DWORD PTR [rbp-0x580]
  66ed0c:	4c 03 d0             	add    r10,rax
  66ed0f:	48 8d 41 ff          	lea    rax,[rcx-0x1]
  66ed13:	48 8b 8d 50 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2b0]
  66ed1a:	48 89 85 78 e7 ff ff 	mov    QWORD PTR [rbp-0x1888],rax
  66ed21:	44 3b 85 78 fa ff ff 	cmp    r8d,DWORD PTR [rbp-0x588]
  66ed28:	0f 8c c0 00 00 00    	jl     66edee <gls_corstep_mod_mp_gls_corstep_tile_+0x767e>
  66ed2e:	48 83 f9 04          	cmp    rcx,0x4
  66ed32:	0f 8c ba 19 00 00    	jl     6706f2 <gls_corstep_mod_mp_gls_corstep_tile_+0x8f82>
  66ed38:	48 8b 85 50 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xab0]
  66ed3f:	45 33 f6             	xor    r14d,r14d
  66ed42:	4d 89 dc             	mov    r12,r11
  66ed45:	4e 8d 2c 0f          	lea    r13,[rdi+r9*1]
  66ed49:	49 89 c0             	mov    r8,rax
  66ed4c:	4f 8d 3c 0a          	lea    r15,[r10+r9*1]
  66ed50:	c4 c1 7d 10 7c 24 10 	vmovupd ymm7,YMMWORD PTR [r12+0x10]
  66ed57:	49 83 c4 20          	add    r12,0x20
  66ed5b:	c4 01 7d 10 6c f5 00 	vmovupd ymm13,YMMWORD PTR [r13+r14*8+0x0]
  66ed62:	c4 01 45 59 34 f7    	vmulpd ymm14,ymm7,YMMWORD PTR [r15+r14*8]
  66ed68:	c4 41 15 5c fe       	vsubpd ymm15,ymm13,ymm14
  66ed6d:	c4 01 7d 11 7c f5 00 	vmovupd YMMWORD PTR [r13+r14*8+0x0],ymm15
  66ed74:	49 83 c6 04          	add    r14,0x4
  66ed78:	4d 3b f0             	cmp    r14,r8
  66ed7b:	72 d3                	jb     66ed50 <gls_corstep_mod_mp_gls_corstep_tile_+0x75e0>
  66ed7d:	44 8b 85 80 fa ff ff 	mov    r8d,DWORD PTR [rbp-0x580]
  66ed84:	4c 8d 2c c5 00 00 00 	lea    r13,[rax*8+0x0]
  66ed8b:	00 
  66ed8c:	48 3b c1             	cmp    rax,rcx
  66ed8f:	73 41                	jae    66edd2 <gls_corstep_mod_mp_gls_corstep_tile_+0x7662>
  66ed91:	4e 8d 34 0f          	lea    r14,[rdi+r9*1]
  66ed95:	4d 8d 24 c3          	lea    r12,[r11+rax*8]
  66ed99:	4d 8d 3c c6          	lea    r15,[r14+rax*8]
  66ed9d:	4f 8d 34 0a          	lea    r14,[r10+r9*1]
  66eda1:	c4 c1 7b 10 7c 24 10 	vmovsd xmm7,QWORD PTR [r12+0x10]
  66eda8:	48 ff c0             	inc    rax
  66edab:	c4 01 43 59 74 35 00 	vmulsd xmm14,xmm7,QWORD PTR [r13+r14*1+0x0]
  66edb2:	49 83 c4 08          	add    r12,0x8
  66edb6:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  66edbb:	49 83 c5 08          	add    r13,0x8
  66edbf:	c4 41 13 5c fe       	vsubsd xmm15,xmm13,xmm14
  66edc4:	c4 41 7b 11 3f       	vmovsd QWORD PTR [r15],xmm15
  66edc9:	49 83 c7 08          	add    r15,0x8
  66edcd:	48 3b c1             	cmp    rax,rcx
  66edd0:	72 cf                	jb     66eda1 <gls_corstep_mod_mp_gls_corstep_tile_+0x7631>
  66edd2:	48 ff c2             	inc    rdx
  66edd5:	4c 03 ce             	add    r9,rsi
  66edd8:	4c 03 9d 60 fd ff ff 	add    r11,QWORD PTR [rbp-0x2a0]
  66eddf:	48 3b 95 78 e7 ff ff 	cmp    rdx,QWORD PTR [rbp-0x1888]
  66ede6:	0f 82 35 ff ff ff    	jb     66ed21 <gls_corstep_mod_mp_gls_corstep_tile_+0x75b1>
  66edec:	eb 67                	jmp    66ee55 <gls_corstep_mod_mp_gls_corstep_tile_+0x76e5>
  66edee:	48 ff c2             	inc    rdx
  66edf1:	4c 03 ce             	add    r9,rsi
  66edf4:	4c 03 9d 60 fd ff ff 	add    r11,QWORD PTR [rbp-0x2a0]
  66edfb:	48 3b 95 78 e7 ff ff 	cmp    rdx,QWORD PTR [rbp-0x1888]
  66ee02:	0f 82 19 ff ff ff    	jb     66ed21 <gls_corstep_mod_mp_gls_corstep_tile_+0x75b1>
  66ee08:	48 8b 85 68 e8 ff ff 	mov    rax,QWORD PTR [rbp-0x1798]
  66ee0f:	48 8b 95 60 e8 ff ff 	mov    rdx,QWORD PTR [rbp-0x17a0]
  66ee16:	48 8b 8d 70 ec ff ff 	mov    rcx,QWORD PTR [rbp-0x1390]
  66ee1d:	48 ff c1             	inc    rcx
  66ee20:	48 03 85 50 ec ff ff 	add    rax,QWORD PTR [rbp-0x13b0]
  66ee27:	48 03 95 58 ec ff ff 	add    rdx,QWORD PTR [rbp-0x13a8]
  66ee2e:	48 89 85 68 e8 ff ff 	mov    QWORD PTR [rbp-0x1798],rax
  66ee35:	48 89 95 60 e8 ff ff 	mov    QWORD PTR [rbp-0x17a0],rdx
  66ee3c:	48 89 8d 70 ec ff ff 	mov    QWORD PTR [rbp-0x1390],rcx
  66ee43:	48 3b 8d 58 e8 ff ff 	cmp    rcx,QWORD PTR [rbp-0x17a8]
  66ee4a:	0f 82 f5 ee ff ff    	jb     66dd45 <gls_corstep_mod_mp_gls_corstep_tile_+0x65d5>
  66ee50:	e9 a6 d2 ff ff       	jmp    66c0fb <gls_corstep_mod_mp_gls_corstep_tile_+0x498b>
  66ee55:	48 8b b5 70 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x1390]
  66ee5c:	4c 8b a5 78 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb88]
  66ee63:	4c 8b b5 90 e8 ff ff 	mov    r14,QWORD PTR [rbp-0x1770]
  66ee6a:	48 8b 95 40 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x13c0]
  66ee71:	4c 8b 95 98 e8 ff ff 	mov    r10,QWORD PTR [rbp-0x1768]
  66ee78:	c4 81 7b 10 5c e6 f8 	vmovsd xmm3,QWORD PTR [r14+r12*8-0x8]
  66ee7f:	4c 8b b5 58 ec ff ff 	mov    r14,QWORD PTR [rbp-0x13a8]
  66ee86:	4c 0f af f6          	imul   r14,rsi
  66ee8a:	c4 81 7b 10 54 e2 f8 	vmovsd xmm2,QWORD PTR [r10+r12*8-0x8]
  66ee91:	4e 8d 3c 32          	lea    r15,[rdx+r14*1]
  66ee95:	48 8b 95 50 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x13b0]
  66ee9c:	48 0f af d6          	imul   rdx,rsi
  66eea0:	4c 8b 85 28 e9 ff ff 	mov    r8,QWORD PTR [rbp-0x16d8]
  66eea7:	4c 8b 95 60 fd ff ff 	mov    r10,QWORD PTR [rbp-0x2a0]
  66eeae:	4c 0f af d6          	imul   r10,rsi
  66eeb2:	4c 8b 8d a0 e8 ff ff 	mov    r9,QWORD PTR [rbp-0x1760]
  66eeb9:	4b 8d 0c 30          	lea    rcx,[r8+r14*1]
  66eebd:	4c 8b 85 60 ec ff ff 	mov    r8,QWORD PTR [rbp-0x13a0]
  66eec4:	48 89 8d b8 f5 ff ff 	mov    QWORD PTR [rbp-0xa48],rcx
  66eecb:	c4 81 7b 10 4c e1 f8 	vmovsd xmm1,QWORD PTR [r9+r12*8-0x8]
  66eed2:	48 8b bd a8 e8 ff ff 	mov    rdi,QWORD PTR [rbp-0x1758]
  66eed9:	49 8d 0c 10          	lea    rcx,[r8+rdx*1]
  66eedd:	4c 8b 85 a8 e9 ff ff 	mov    r8,QWORD PTR [rbp-0x1658]
  66eee4:	4c 0f af c6          	imul   r8,rsi
  66eee8:	4c 8b 8d 50 eb ff ff 	mov    r9,QWORD PTR [rbp-0x14b0]
  66eeef:	c4 a1 7b 10 44 e7 f8 	vmovsd xmm0,QWORD PTR [rdi+r12*8-0x8]
  66eef6:	48 8b 85 78 eb ff ff 	mov    rax,QWORD PTR [rbp-0x1488]
  66eefd:	48 89 8d 18 f3 ff ff 	mov    QWORD PTR [rbp-0xce8],rcx
  66ef04:	4b 8d 3c 11          	lea    rdi,[r9+r10*1]
  66ef08:	48 89 bd c0 f5 ff ff 	mov    QWORD PTR [rbp-0xa40],rdi
  66ef0f:	48 8b bd f8 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x308]
  66ef16:	48 0f af f8          	imul   rdi,rax
  66ef1a:	4c 8b 8d a0 e9 ff ff 	mov    r9,QWORD PTR [rbp-0x1660]
  66ef21:	48 8b 8d 50 e9 ff ff 	mov    rcx,QWORD PTR [rbp-0x16b0]
  66ef28:	4c 0f af ce          	imul   r9,rsi
  66ef2c:	48 03 95 18 e9 ff ff 	add    rdx,QWORD PTR [rbp-0x16e8]
  66ef33:	48 89 95 50 f3 ff ff 	mov    QWORD PTR [rbp-0xcb0],rdx
  66ef3a:	4a 8d 14 01          	lea    rdx,[rcx+r8*1]
  66ef3e:	48 8b 8d b0 e9 ff ff 	mov    rcx,QWORD PTR [rbp-0x1650]
  66ef45:	48 0f af ce          	imul   rcx,rsi
  66ef49:	4c 89 bd 20 f3 ff ff 	mov    QWORD PTR [rbp-0xce0],r15
  66ef50:	4c 8b bd 30 e9 ff ff 	mov    r15,QWORD PTR [rbp-0x16d0]
  66ef57:	48 03 bd f8 e9 ff ff 	add    rdi,QWORD PTR [rbp-0x1608]
  66ef5e:	48 03 bd 98 ea ff ff 	add    rdi,QWORD PTR [rbp-0x1568]
  66ef65:	4c 8b 9d e0 f1 ff ff 	mov    r11,QWORD PTR [rbp-0xe20]
  66ef6c:	49 03 f9             	add    rdi,r9
  66ef6f:	48 89 bd e0 f5 ff ff 	mov    QWORD PTR [rbp-0xa20],rdi
  66ef76:	4b 8d 3c 0f          	lea    rdi,[r15+r9*1]
  66ef7a:	4c 8b bd 58 e9 ff ff 	mov    r15,QWORD PTR [rbp-0x16a8]
  66ef81:	4c 8b ad 38 e9 ff ff 	mov    r13,QWORD PTR [rbp-0x16c8]
  66ef88:	c4 81 7b 10 6c e3 f8 	vmovsd xmm5,QWORD PTR [r11+r12*8-0x8]
  66ef8f:	4c 8b 9d 20 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2e0]
  66ef96:	4c 0f af d8          	imul   r11,rax
  66ef9a:	48 89 95 d0 f5 ff ff 	mov    QWORD PTR [rbp-0xa30],rdx
  66efa1:	49 8d 14 0f          	lea    rdx,[r15+rcx*1]
  66efa5:	c4 81 7b 10 64 e5 f8 	vmovsd xmm4,QWORD PTR [r13+r12*8-0x8]
  66efac:	48 89 bd c8 f5 ff ff 	mov    QWORD PTR [rbp-0xa38],rdi
  66efb3:	48 89 95 d8 f5 ff ff 	mov    QWORD PTR [rbp-0xa28],rdx
  66efba:	4c 8b ad 58 fd ff ff 	mov    r13,QWORD PTR [rbp-0x2a8]
  66efc1:	48 8b bd 30 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2d0]
  66efc8:	48 8b 95 38 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x2c8]
  66efcf:	4c 0f af e8          	imul   r13,rax
  66efd3:	48 0f af f8          	imul   rdi,rax
  66efd7:	48 0f af d0          	imul   rdx,rax
  66efdb:	48 8b 85 98 e9 ff ff 	mov    rax,QWORD PTR [rbp-0x1668]
  66efe2:	48 0f af c6          	imul   rax,rsi
  66efe6:	4c 8b bd e8 e8 ff ff 	mov    r15,QWORD PTR [rbp-0x1718]
  66efed:	4c 03 ad 20 ea ff ff 	add    r13,QWORD PTR [rbp-0x15e0]
  66eff4:	49 f7 dd             	neg    r13
  66eff7:	4c 03 ad 10 e9 ff ff 	add    r13,QWORD PTR [rbp-0x16f0]
  66effe:	4d 03 fb             	add    r15,r11
  66f001:	4c 03 f8             	add    r15,rax
  66f004:	49 f7 dd             	neg    r13
  66f007:	4c 89 bd 40 f3 ff ff 	mov    QWORD PTR [rbp-0xcc0],r15
  66f00e:	4c 8b bd 70 e9 ff ff 	mov    r15,QWORD PTR [rbp-0x1690]
  66f015:	48 03 bd 40 ea ff ff 	add    rdi,QWORD PTR [rbp-0x15c0]
  66f01c:	48 03 95 38 ea ff ff 	add    rdx,QWORD PTR [rbp-0x15c8]
  66f023:	4c 03 ad e0 e8 ff ff 	add    r13,QWORD PTR [rbp-0x1720]
  66f02a:	4c 03 f8             	add    r15,rax
  66f02d:	4c 89 bd 38 f3 ff ff 	mov    QWORD PTR [rbp-0xcc8],r15
  66f034:	4d 03 ee             	add    r13,r14
  66f037:	4c 8b bd 50 ea ff ff 	mov    r15,QWORD PTR [rbp-0x15b0]
  66f03e:	48 03 bd 68 e9 ff ff 	add    rdi,QWORD PTR [rbp-0x1698]
  66f045:	48 03 95 60 e9 ff ff 	add    rdx,QWORD PTR [rbp-0x16a0]
  66f04c:	49 03 f8             	add    rdi,r8
  66f04f:	4c 03 8d d8 ea ff ff 	add    r9,QWORD PTR [rbp-0x1528]
  66f056:	4d 03 fb             	add    r15,r11
  66f059:	4c 03 f8             	add    r15,rax
  66f05c:	48 03 d1             	add    rdx,rcx
  66f05f:	4c 89 bd 48 f3 ff ff 	mov    QWORD PTR [rbp-0xcb8],r15
  66f066:	4c 8b bd 00 e9 ff ff 	mov    r15,QWORD PTR [rbp-0x1700]
  66f06d:	4c 03 9d f0 e8 ff ff 	add    r11,QWORD PTR [rbp-0x1710]
  66f074:	4c 03 85 d0 e7 ff ff 	add    r8,QWORD PTR [rbp-0x1830]
  66f07b:	4c 03 d8             	add    r11,rax
  66f07e:	48 03 8d d8 e7 ff ff 	add    rcx,QWORD PTR [rbp-0x1828]
  66f085:	4c 03 f8             	add    r15,rax
  66f088:	4c 89 bd 30 f3 ff ff 	mov    QWORD PTR [rbp-0xcd0],r15
  66f08f:	4c 8b bd 00 eb ff ff 	mov    r15,QWORD PTR [rbp-0x1500]
  66f096:	48 c7 85 90 f4 ff ff 	mov    QWORD PTR [rbp-0xb70],0x0
  66f09d:	00 00 00 00 
  66f0a1:	4c 89 ad 78 f5 ff ff 	mov    QWORD PTR [rbp-0xa88],r13
  66f0a8:	c5 fb 11 85 98 f5 ff 	vmovsd QWORD PTR [rbp-0xa68],xmm0
  66f0af:	ff 
  66f0b0:	4c 03 f8             	add    r15,rax
  66f0b3:	4c 89 bd 28 f3 ff ff 	mov    QWORD PTR [rbp-0xcd8],r15
  66f0ba:	4c 8b bd d8 fc ff ff 	mov    r15,QWORD PTR [rbp-0x328]
  66f0c1:	4c 8b ad 90 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xb70]
  66f0c8:	41 83 e7 fc          	and    r15d,0xfffffffc
  66f0cc:	4d 63 ff             	movsxd r15,r15d
  66f0cf:	4c 89 bd d0 fe ff ff 	mov    QWORD PTR [rbp-0x130],r15
  66f0d6:	4c 8b bd 08 e9 ff ff 	mov    r15,QWORD PTR [rbp-0x16f8]
  66f0dd:	c5 fb 11 8d b0 fd ff 	vmovsd QWORD PTR [rbp-0x250],xmm1
  66f0e4:	ff 
  66f0e5:	c5 fb 11 95 a8 fd ff 	vmovsd QWORD PTR [rbp-0x258],xmm2
  66f0ec:	ff 
  66f0ed:	c5 fb 11 9d a0 fd ff 	vmovsd QWORD PTR [rbp-0x260],xmm3
  66f0f4:	ff 
  66f0f5:	4d 03 fe             	add    r15,r14
  66f0f8:	4c 89 bd 58 f3 ff ff 	mov    QWORD PTR [rbp-0xca8],r15
  66f0ff:	4c 8b bd 48 eb ff ff 	mov    r15,QWORD PTR [rbp-0x14b8]
  66f106:	4c 03 b5 80 ea ff ff 	add    r14,QWORD PTR [rbp-0x1580]
  66f10d:	c5 fb 11 a5 90 f5 ff 	vmovsd QWORD PTR [rbp-0xa70],xmm4
  66f114:	ff 
  66f115:	c5 fb 11 ad 88 f5 ff 	vmovsd QWORD PTR [rbp-0xa78],xmm5
  66f11c:	ff 
  66f11d:	4d 03 fa             	add    r15,r10
  66f120:	4c 89 bd 60 f3 ff ff 	mov    QWORD PTR [rbp-0xca0],r15
  66f127:	4c 8b bd 80 e9 ff ff 	mov    r15,QWORD PTR [rbp-0x1680]
  66f12e:	4c 0f af fe          	imul   r15,rsi
  66f132:	4c 03 bd e8 eb ff ff 	add    r15,QWORD PTR [rbp-0x1418]
  66f139:	4c 89 bd 80 f3 ff ff 	mov    QWORD PTR [rbp-0xc80],r15
  66f140:	4c 8b bd b0 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1850]
  66f147:	4c 03 95 40 e9 ff ff 	add    r10,QWORD PTR [rbp-0x16c0]
  66f14e:	48 89 8d a0 f2 ff ff 	mov    QWORD PTR [rbp-0xd60],rcx
  66f155:	4c 89 85 a8 f2 ff ff 	mov    QWORD PTR [rbp-0xd58],r8
  66f15c:	4c 03 f8             	add    r15,rax
  66f15f:	4c 89 bd 78 f3 ff ff 	mov    QWORD PTR [rbp-0xc88],r15
  66f166:	4c 8b bd c0 eb ff ff 	mov    r15,QWORD PTR [rbp-0x1440]
  66f16d:	4c 89 8d b0 f2 ff ff 	mov    QWORD PTR [rbp-0xd50],r9
  66f174:	4c 89 b5 b8 f2 ff ff 	mov    QWORD PTR [rbp-0xd48],r14
  66f17b:	4c 89 95 c0 f2 ff ff 	mov    QWORD PTR [rbp-0xd40],r10
  66f182:	4c 03 f8             	add    r15,rax
  66f185:	4c 89 bd 70 f3 ff ff 	mov    QWORD PTR [rbp-0xc90],r15
  66f18c:	4c 8b bd 38 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13c8]
  66f193:	4c 89 9d c8 f2 ff ff 	mov    QWORD PTR [rbp-0xd38],r11
  66f19a:	48 89 95 68 f5 ff ff 	mov    QWORD PTR [rbp-0xa98],rdx
  66f1a1:	48 89 bd 70 f5 ff ff 	mov    QWORD PTR [rbp-0xa90],rdi
  66f1a8:	4c 03 f8             	add    r15,rax
  66f1ab:	48 03 85 90 ea ff ff 	add    rax,QWORD PTR [rbp-0x1570]
  66f1b2:	4c 89 bd 68 f3 ff ff 	mov    QWORD PTR [rbp-0xc98],r15
  66f1b9:	48 89 85 98 f2 ff ff 	mov    QWORD PTR [rbp-0xd68],rax
  66f1c0:	48 89 b5 70 ec ff ff 	mov    QWORD PTR [rbp-0x1390],rsi
  66f1c7:	48 83 bd d8 fc ff ff 	cmp    QWORD PTR [rbp-0x328],0x0
  66f1ce:	00 
  66f1cf:	0f 8e 22 12 00 00    	jle    6703f7 <gls_corstep_mod_mp_gls_corstep_tile_+0x8c87>
  66f1d5:	48 8b 85 d8 f1 ff ff 	mov    rax,QWORD PTR [rbp-0xe28]
  66f1dc:	48 8b 95 18 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xce8]
  66f1e3:	c4 a1 7b 10 44 e0 f8 	vmovsd xmm0,QWORD PTR [rax+r12*8-0x8]
  66f1ea:	48 8b 85 b0 fb ff ff 	mov    rax,QWORD PTR [rbp-0x450]
  66f1f1:	49 0f af c5          	imul   rax,r13
  66f1f5:	c5 fb 11 85 d0 f2 ff 	vmovsd QWORD PTR [rbp-0xd30],xmm0
  66f1fc:	ff 
  66f1fd:	4c 8d 3c 02          	lea    r15,[rdx+rax*1]
  66f201:	48 83 bd 48 fd ff ff 	cmp    QWORD PTR [rbp-0x2b8],0x0
  66f208:	00 
  66f209:	0f 84 dc 14 00 00    	je     6706eb <gls_corstep_mod_mp_gls_corstep_tile_+0x8f7b>
  66f20f:	48 83 bd d8 fc ff ff 	cmp    QWORD PTR [rbp-0x328],0x4
  66f216:	04 
  66f217:	0f 8c ce 14 00 00    	jl     6706eb <gls_corstep_mod_mp_gls_corstep_tile_+0x8f7b>
  66f21d:	48 8b b5 d0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x130]
  66f224:	33 c9                	xor    ecx,ecx
  66f226:	48 03 85 50 f3 ff ff 	add    rax,QWORD PTR [rbp-0xcb0]
  66f22d:	4c 89 fa             	mov    rdx,r15
  66f230:	c5 fb 12 85 d0 f2 ff 	vmovddup xmm0,QWORD PTR [rbp-0xd30]
  66f237:	ff 
  66f238:	48 89 f7             	mov    rdi,rsi
  66f23b:	4c 8b 85 48 fd ff ff 	mov    r8,QWORD PTR [rbp-0x2b8]
  66f242:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  66f249:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  66f250:	c5 fb 10 0a          	vmovsd xmm1,QWORD PTR [rdx]
  66f254:	48 83 c1 04          	add    rcx,0x4
  66f258:	c4 a1 71 16 14 02    	vmovhpd xmm2,xmm1,QWORD PTR [rdx+r8*1]
  66f25e:	c5 e9 5f d8          	vmaxpd xmm3,xmm2,xmm0
  66f262:	c5 fb 11 1a          	vmovsd QWORD PTR [rdx],xmm3
  66f266:	c4 c1 79 17 1c 10    	vmovhpd QWORD PTR [r8+rdx*1],xmm3
  66f26c:	4a 8d 14 82          	lea    rdx,[rdx+r8*4]
  66f270:	c5 fb 10 20          	vmovsd xmm4,QWORD PTR [rax]
  66f274:	c4 a1 59 16 2c 00    	vmovhpd xmm5,xmm4,QWORD PTR [rax+r8*1]
  66f27a:	c5 d1 5f f0          	vmaxpd xmm6,xmm5,xmm0
  66f27e:	c5 fb 11 30          	vmovsd QWORD PTR [rax],xmm6
  66f282:	c4 c1 79 17 34 00    	vmovhpd QWORD PTR [r8+rax*1],xmm6
  66f288:	4a 8d 04 80          	lea    rax,[rax+r8*4]
  66f28c:	48 3b cf             	cmp    rcx,rdi
  66f28f:	72 bf                	jb     66f250 <gls_corstep_mod_mp_gls_corstep_tile_+0x7ae0>
  66f291:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  66f298:	48 0f af c6          	imul   rax,rsi
  66f29c:	49 03 c7             	add    rax,r15
  66f29f:	48 3b b5 d8 fc ff ff 	cmp    rsi,QWORD PTR [rbp-0x328]
  66f2a6:	73 2d                	jae    66f2d5 <gls_corstep_mod_mp_gls_corstep_tile_+0x7b65>
  66f2a8:	c5 fb 10 8d d0 f2 ff 	vmovsd xmm1,QWORD PTR [rbp-0xd30]
  66f2af:	ff 
  66f2b0:	48 8b 95 d8 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x328]
  66f2b7:	48 8b 8d 48 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2b8]
  66f2be:	c5 fb 10 00          	vmovsd xmm0,QWORD PTR [rax]
  66f2c2:	48 ff c6             	inc    rsi
  66f2c5:	c5 fb 5f c1          	vmaxsd xmm0,xmm0,xmm1
  66f2c9:	c5 fb 11 00          	vmovsd QWORD PTR [rax],xmm0
  66f2cd:	48 03 c1             	add    rax,rcx
  66f2d0:	48 3b f2             	cmp    rsi,rdx
  66f2d3:	72 e9                	jb     66f2be <gls_corstep_mod_mp_gls_corstep_tile_+0x7b4e>
  66f2d5:	48 8b 85 d0 f1 ff ff 	mov    rax,QWORD PTR [rbp-0xe30]
  66f2dc:	48 83 bd 58 fd ff ff 	cmp    QWORD PTR [rbp-0x2a8],0x0
  66f2e3:	00 
  66f2e4:	c4 a1 7b 10 4c e0 f8 	vmovsd xmm1,QWORD PTR [rax+r12*8-0x8]
  66f2eb:	0f 84 cf 13 00 00    	je     6706c0 <gls_corstep_mod_mp_gls_corstep_tile_+0x8f50>
  66f2f1:	48 8b 95 28 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x2d8]
  66f2f8:	49 0f af d5          	imul   rdx,r13
  66f2fc:	48 8b 85 20 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xce0]
  66f303:	48 89 95 80 f5 ff ff 	mov    QWORD PTR [rbp-0xa80],rdx
  66f30a:	48 83 bd d8 fc ff ff 	cmp    QWORD PTR [rbp-0x328],0x4
  66f311:	04 
  66f312:	48 8d 0c 10          	lea    rcx,[rax+rdx*1]
  66f316:	48 89 8d d8 fd ff ff 	mov    QWORD PTR [rbp-0x228],rcx
  66f31d:	0f 8c 96 13 00 00    	jl     6706b9 <gls_corstep_mod_mp_gls_corstep_tile_+0x8f49>
  66f323:	48 8b bd 58 f3 ff ff 	mov    rdi,QWORD PTR [rbp-0xca8]
  66f32a:	33 f6                	xor    esi,esi
  66f32c:	48 8b 85 d0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x130]
  66f333:	4c 8b 85 58 fd ff ff 	mov    r8,QWORD PTR [rbp-0x2a8]
  66f33a:	48 03 d7             	add    rdx,rdi
  66f33d:	c5 fb 12 c1          	vmovddup xmm0,xmm1
  66f341:	48 89 c7             	mov    rdi,rax
  66f344:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  66f349:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  66f350:	c5 fb 10 11          	vmovsd xmm2,QWORD PTR [rcx]
  66f354:	48 83 c6 04          	add    rsi,0x4
  66f358:	c4 a1 69 16 1c 01    	vmovhpd xmm3,xmm2,QWORD PTR [rcx+r8*1]
  66f35e:	c5 e1 5f e0          	vmaxpd xmm4,xmm3,xmm0
  66f362:	c5 fb 11 21          	vmovsd QWORD PTR [rcx],xmm4
  66f366:	c4 c1 79 17 24 08    	vmovhpd QWORD PTR [r8+rcx*1],xmm4
  66f36c:	4a 8d 0c 81          	lea    rcx,[rcx+r8*4]
  66f370:	c5 fb 10 2a          	vmovsd xmm5,QWORD PTR [rdx]
  66f374:	c4 a1 51 16 34 02    	vmovhpd xmm6,xmm5,QWORD PTR [rdx+r8*1]
  66f37a:	c5 c9 5f f8          	vmaxpd xmm7,xmm6,xmm0
  66f37e:	c5 fb 11 3a          	vmovsd QWORD PTR [rdx],xmm7
  66f382:	c4 c1 79 17 3c 10    	vmovhpd QWORD PTR [r8+rdx*1],xmm7
  66f388:	4a 8d 14 82          	lea    rdx,[rdx+r8*4]
  66f38c:	48 3b f7             	cmp    rsi,rdi
  66f38f:	72 bf                	jb     66f350 <gls_corstep_mod_mp_gls_corstep_tile_+0x7be0>
  66f391:	48 8b 95 58 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x2a8]
  66f398:	48 0f af d0          	imul   rdx,rax
  66f39c:	48 03 95 d8 fd ff ff 	add    rdx,QWORD PTR [rbp-0x228]
  66f3a3:	48 3b 85 d8 fc ff ff 	cmp    rax,QWORD PTR [rbp-0x328]
  66f3aa:	73 25                	jae    66f3d1 <gls_corstep_mod_mp_gls_corstep_tile_+0x7c61>
  66f3ac:	48 8b 8d d8 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x328]
  66f3b3:	48 8b b5 58 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x2a8]
  66f3ba:	c5 fb 10 02          	vmovsd xmm0,QWORD PTR [rdx]
  66f3be:	48 ff c0             	inc    rax
  66f3c1:	c5 fb 5f c1          	vmaxsd xmm0,xmm0,xmm1
  66f3c5:	c5 fb 11 02          	vmovsd QWORD PTR [rdx],xmm0
  66f3c9:	48 03 d6             	add    rdx,rsi
  66f3cc:	48 3b c1             	cmp    rax,rcx
  66f3cf:	72 e9                	jb     66f3ba <gls_corstep_mod_mp_gls_corstep_tile_+0x7c4a>
  66f3d1:	48 8b 85 48 f2 ff ff 	mov    rax,QWORD PTR [rbp-0xdb8]
  66f3d8:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  66f3dc:	c4 a1 7b 10 44 e0 f8 	vmovsd xmm0,QWORD PTR [rax+r12*8-0x8]
  66f3e3:	c5 f9 2f c1          	vcomisd xmm0,xmm1
  66f3e7:	0f 82 4d 04 00 00    	jb     66f83a <gls_corstep_mod_mp_gls_corstep_tile_+0x80ca>
  66f3ed:	4c 8b b5 30 f2 ff ff 	mov    r14,QWORD PTR [rbp-0xdd0]
  66f3f4:	48 8b 85 c0 f2 ff ff 	mov    rax,QWORD PTR [rbp-0xd40]
  66f3fb:	48 83 bd 48 fd ff ff 	cmp    QWORD PTR [rbp-0x2b8],0x0
  66f402:	00 
  66f403:	c4 81 7b 10 04 e6    	vmovsd xmm0,QWORD PTR [r14+r12*8]
  66f409:	4e 8d 34 ed 00 00 00 	lea    r14,[r13*8+0x0]
  66f410:	00 
  66f411:	c5 fb 11 85 d8 f2 ff 	vmovsd QWORD PTR [rbp-0xd28],xmm0
  66f418:	ff 
  66f419:	4a 8d 14 e8          	lea    rdx,[rax+r13*8]
  66f41d:	48 89 95 e0 fd ff ff 	mov    QWORD PTR [rbp-0x220],rdx
  66f424:	0f 84 71 12 00 00    	je     67069b <gls_corstep_mod_mp_gls_corstep_tile_+0x8f2b>
  66f42a:	48 83 bd d8 fc ff ff 	cmp    QWORD PTR [rbp-0x328],0x4
  66f431:	04 
  66f432:	0f 8c 63 12 00 00    	jl     67069b <gls_corstep_mod_mp_gls_corstep_tile_+0x8f2b>
  66f438:	33 f6                	xor    esi,esi
  66f43a:	c5 f9 57 0d 7e c4 1d 	vxorpd xmm1,xmm0,XMMWORD PTR [rip+0x1dc47e]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  66f441:	00 
  66f442:	c4 e2 7d 19 d1       	vbroadcastsd ymm2,xmm1
  66f447:	48 8b bd d0 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x130]
  66f44e:	4c 89 f8             	mov    rax,r15
  66f451:	4c 89 b5 f8 fa ff ff 	mov    QWORD PTR [rbp-0x508],r14
  66f458:	49 89 c4             	mov    r12,rax
  66f45b:	48 89 bd 80 f4 ff ff 	mov    QWORD PTR [rbp-0xb80],rdi
  66f462:	49 89 f6             	mov    r14,rsi
  66f465:	4c 89 bd 88 f4 ff ff 	mov    QWORD PTR [rbp-0xb78],r15
  66f46c:	49 89 f7             	mov    r15,rsi
  66f46f:	4c 89 ad 90 f4 ff ff 	mov    QWORD PTR [rbp-0xb70],r13
  66f476:	49 89 f5             	mov    r13,rsi
  66f479:	c4 e3 7d 19 d4 01    	vextractf128 xmm4,ymm2,0x1
  66f47f:	c5 f9 70 da 0e       	vpshufd xmm3,xmm2,0xe
  66f484:	c5 fb 11 9d c8 fd ff 	vmovsd QWORD PTR [rbp-0x238],xmm3
  66f48b:	ff 
  66f48c:	c5 f9 70 ec 0e       	vpshufd xmm5,xmm4,0xe
  66f491:	c5 fb 11 ad c0 fd ff 	vmovsd QWORD PTR [rbp-0x240],xmm5
  66f498:	ff 
  66f499:	c5 fb 11 a5 b8 fd ff 	vmovsd QWORD PTR [rbp-0x248],xmm4
  66f4a0:	ff 
  66f4a1:	c5 fb 11 95 d0 fd ff 	vmovsd QWORD PTR [rbp-0x230],xmm2
  66f4a8:	ff 
  66f4a9:	48 8b bd d8 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x228]
  66f4b0:	4c 8b 95 58 fd ff ff 	mov    r10,QWORD PTR [rbp-0x2a8]
  66f4b7:	4e 8d 04 3f          	lea    r8,[rdi+r15*1]
  66f4bb:	c4 c1 7b 10 10       	vmovsd xmm2,QWORD PTR [r8]
  66f4c0:	4f 8d 0c 50          	lea    r9,[r8+r10*2]
  66f4c4:	c4 c1 7b 10 19       	vmovsd xmm3,QWORD PTR [r9]
  66f4c9:	c4 81 69 16 14 10    	vmovhpd xmm2,xmm2,QWORD PTR [r8+r10*1]
  66f4cf:	c4 81 61 16 24 11    	vmovhpd xmm4,xmm3,QWORD PTR [r9+r10*1]
  66f4d5:	c5 f9 28 c2          	vmovapd xmm0,xmm2
  66f4d9:	c5 f9 11 a5 40 fb ff 	vmovupd XMMWORD PTR [rbp-0x4c0],xmm4
  66f4e0:	ff 
  66f4e1:	c5 f8 77             	vzeroupper 
  66f4e4:	c5 fb 10 8d 68 fd ff 	vmovsd xmm1,QWORD PTR [rbp-0x298]
  66f4eb:	ff 
  66f4ec:	c5 f9 11 95 70 fb ff 	vmovupd XMMWORD PTR [rbp-0x490],xmm2
  66f4f3:	ff 
  66f4f4:	e8 47 04 e5 ff       	call   4bf940 <pow>
  66f4f9:	c5 f9 10 95 70 fb ff 	vmovupd xmm2,XMMWORD PTR [rbp-0x490]
  66f500:	ff 
  66f501:	c5 fb 11 85 e8 fd ff 	vmovsd QWORD PTR [rbp-0x218],xmm0
  66f508:	ff 
  66f509:	c5 f9 70 c2 0e       	vpshufd xmm0,xmm2,0xe
  66f50e:	c5 fb 10 8d 90 fd ff 	vmovsd xmm1,QWORD PTR [rbp-0x270]
  66f515:	ff 
  66f516:	e8 25 04 e5 ff       	call   4bf940 <pow>
  66f51b:	c5 fb 11 85 08 fe ff 	vmovsd QWORD PTR [rbp-0x1f8],xmm0
  66f522:	ff 
  66f523:	c5 fb 10 85 40 fb ff 	vmovsd xmm0,QWORD PTR [rbp-0x4c0]
  66f52a:	ff 
  66f52b:	c5 fb 10 8d 98 fd ff 	vmovsd xmm1,QWORD PTR [rbp-0x268]
  66f532:	ff 
  66f533:	e8 08 04 e5 ff       	call   4bf940 <pow>
  66f538:	c5 fb 11 85 f8 fd ff 	vmovsd QWORD PTR [rbp-0x208],xmm0
  66f53f:	ff 
  66f540:	c5 f9 70 85 40 fb ff 	vpshufd xmm0,XMMWORD PTR [rbp-0x4c0],0xe
  66f547:	ff 0e 
  66f549:	c5 fb 10 8d 88 fd ff 	vmovsd xmm1,QWORD PTR [rbp-0x278]
  66f550:	ff 
  66f551:	e8 ea 03 e5 ff       	call   4bf940 <pow>
  66f556:	48 8b bd e0 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x220]
  66f55d:	4c 8b 95 c0 fc ff ff 	mov    r10,QWORD PTR [rbp-0x340]
  66f564:	c4 41 25 57 db       	vxorpd ymm11,ymm11,ymm11
  66f569:	c5 fb 10 9d f8 fd ff 	vmovsd xmm3,QWORD PTR [rbp-0x208]
  66f570:	ff 
  66f571:	4e 8d 04 2f          	lea    r8,[rdi+r13*1]
  66f575:	c4 c1 7b 10 38       	vmovsd xmm7,QWORD PTR [r8]
  66f57a:	4f 8d 0c 50          	lea    r9,[r8+r10*2]
  66f57e:	c4 41 7b 10 09       	vmovsd xmm9,QWORD PTR [r9]
  66f583:	c4 01 41 16 04 10    	vmovhpd xmm8,xmm7,QWORD PTR [r8+r10*1]
  66f589:	c4 01 31 16 14 11    	vmovhpd xmm10,xmm9,QWORD PTR [r9+r10*1]
  66f58f:	c5 fb 10 95 e8 fd ff 	vmovsd xmm2,QWORD PTR [rbp-0x218]
  66f596:	ff 
  66f597:	c5 e1 14 e8          	vunpcklpd xmm5,xmm3,xmm0
  66f59b:	c5 e9 16 a5 08 fe ff 	vmovhpd xmm4,xmm2,QWORD PTR [rbp-0x1f8]
  66f5a2:	ff 
  66f5a3:	c4 43 3d 18 e2 01    	vinsertf128 ymm12,ymm8,xmm10,0x1
  66f5a9:	c4 41 25 5f ec       	vmaxpd ymm13,ymm11,ymm12
  66f5ae:	c4 41 7d 51 f5       	vsqrtpd ymm14,ymm13
  66f5b3:	c5 8d 58 05 e5 ad 1d 	vaddpd ymm0,ymm14,YMMWORD PTR [rip+0x1dade5]        # 84a3a0 <var$630.126.450+0x400>
  66f5ba:	00 
  66f5bb:	c4 e3 7d 19 85 30 fb 	vextractf128 XMMWORD PTR [rbp-0x4d0],ymm0,0x1
  66f5c2:	ff ff 01 
  66f5c5:	c4 e3 5d 18 f5 01    	vinsertf128 ymm6,ymm4,xmm5,0x1
  66f5cb:	c5 fc 11 b5 b0 fa ff 	vmovups YMMWORD PTR [rbp-0x550],ymm6
  66f5d2:	ff 
  66f5d3:	c5 f8 28 d0          	vmovaps xmm2,xmm0
  66f5d7:	c5 f9 28 c2          	vmovapd xmm0,xmm2
  66f5db:	c5 f8 77             	vzeroupper 
  66f5de:	c5 fb 10 8d d0 fd ff 	vmovsd xmm1,QWORD PTR [rbp-0x230]
  66f5e5:	ff 
  66f5e6:	c5 f8 11 95 80 fb ff 	vmovups XMMWORD PTR [rbp-0x480],xmm2
  66f5ed:	ff 
  66f5ee:	e8 4d 03 e5 ff       	call   4bf940 <pow>
  66f5f3:	c5 f8 10 95 80 fb ff 	vmovups xmm2,XMMWORD PTR [rbp-0x480]
  66f5fa:	ff 
  66f5fb:	c5 fb 11 85 f0 fd ff 	vmovsd QWORD PTR [rbp-0x210],xmm0
  66f602:	ff 
  66f603:	c5 f9 70 c2 0e       	vpshufd xmm0,xmm2,0xe
  66f608:	c5 fb 10 8d c8 fd ff 	vmovsd xmm1,QWORD PTR [rbp-0x238]
  66f60f:	ff 
  66f610:	e8 2b 03 e5 ff       	call   4bf940 <pow>
  66f615:	c5 fb 11 85 00 fe ff 	vmovsd QWORD PTR [rbp-0x200],xmm0
  66f61c:	ff 
  66f61d:	c5 fb 10 85 30 fb ff 	vmovsd xmm0,QWORD PTR [rbp-0x4d0]
  66f624:	ff 
  66f625:	c5 fb 10 8d b8 fd ff 	vmovsd xmm1,QWORD PTR [rbp-0x248]
  66f62c:	ff 
  66f62d:	e8 0e 03 e5 ff       	call   4bf940 <pow>
  66f632:	c5 fb 11 85 10 fe ff 	vmovsd QWORD PTR [rbp-0x1f0],xmm0
  66f639:	ff 
  66f63a:	c5 f9 70 85 30 fb ff 	vpshufd xmm0,XMMWORD PTR [rbp-0x4d0],0xe
  66f641:	ff 0e 
  66f643:	c5 fb 10 8d c0 fd ff 	vmovsd xmm1,QWORD PTR [rbp-0x240]
  66f64a:	ff 
  66f64b:	e8 f0 02 e5 ff       	call   4bf940 <pow>
  66f650:	c5 fc 10 ad b0 fa ff 	vmovups ymm5,YMMWORD PTR [rbp-0x550]
  66f657:	ff 
  66f658:	c5 f9 28 c8          	vmovapd xmm1,xmm0
  66f65c:	c5 fb 10 85 f0 fd ff 	vmovsd xmm0,QWORD PTR [rbp-0x210]
  66f663:	ff 
  66f664:	c5 fb 10 95 10 fe ff 	vmovsd xmm2,QWORD PTR [rbp-0x1f0]
  66f66b:	ff 
  66f66c:	c5 f9 16 9d 00 fe ff 	vmovhpd xmm3,xmm0,QWORD PTR [rbp-0x200]
  66f673:	ff 
  66f674:	c5 e9 14 e1          	vunpcklpd xmm4,xmm2,xmm1
  66f678:	c5 d5 59 bd 90 fa ff 	vmulpd ymm7,ymm5,YMMWORD PTR [rbp-0x570]
  66f67f:	ff 
  66f680:	49 83 c6 04          	add    r14,0x4
  66f684:	c4 41 7b 10 04 24    	vmovsd xmm8,QWORD PTR [r12]
  66f68a:	4c 8b 9d 48 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2b8]
  66f691:	48 8b bd 58 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2a8]
  66f698:	4c 8b 85 c0 fc ff ff 	mov    r8,QWORD PTR [rbp-0x340]
  66f69f:	c4 01 39 16 0c 1c    	vmovhpd xmm9,xmm8,QWORD PTR [r12+r11*1]
  66f6a5:	4f 8d 0c 5c          	lea    r9,[r12+r11*2]
  66f6a9:	c4 41 7b 10 11       	vmovsd xmm10,QWORD PTR [r9]
  66f6ae:	4d 8d 3c bf          	lea    r15,[r15+rdi*4]
  66f6b2:	c4 01 29 16 1c 19    	vmovhpd xmm11,xmm10,QWORD PTR [r9+r11*1]
  66f6b8:	4f 8d 6c 85 00       	lea    r13,[r13+r8*4+0x0]
  66f6bd:	4c 8b 95 18 fd ff ff 	mov    r10,QWORD PTR [rbp-0x2e8]
  66f6c4:	4c 3b b5 d0 fe ff ff 	cmp    r14,QWORD PTR [rbp-0x130]
  66f6cb:	c4 e3 65 18 f4 01    	vinsertf128 ymm6,ymm3,xmm4,0x1
  66f6d1:	c5 4d 59 ef          	vmulpd ymm13,ymm6,ymm7
  66f6d5:	c4 43 35 18 e3 01    	vinsertf128 ymm12,ymm9,xmm11,0x1
  66f6db:	c4 41 1d 5d f5       	vminpd ymm14,ymm12,ymm13
  66f6e0:	c4 43 7d 19 f7 01    	vextractf128 xmm15,ymm14,0x1
  66f6e6:	c4 41 7b 11 34 24    	vmovsd QWORD PTR [r12],xmm14
  66f6ec:	c4 01 79 17 34 23    	vmovhpd QWORD PTR [r11+r12*1],xmm14
  66f6f2:	c4 41 7b 11 39       	vmovsd QWORD PTR [r9],xmm15
  66f6f7:	c4 01 79 17 3c 22    	vmovhpd QWORD PTR [r10+r12*1],xmm15
  66f6fd:	4f 8d 24 9c          	lea    r12,[r12+r11*4]
  66f701:	0f 82 a2 fd ff ff    	jb     66f4a9 <gls_corstep_mod_mp_gls_corstep_tile_+0x7d39>
  66f707:	4c 8b b5 f8 fa ff ff 	mov    r14,QWORD PTR [rbp-0x508]
  66f70e:	48 8b bd 80 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xb80]
  66f715:	4c 8b bd 88 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb78]
  66f71c:	4c 8b ad 90 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xb70]
  66f723:	4c 8b a5 78 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb88]
  66f72a:	48 8b 8d 48 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2b8]
  66f731:	48 0f af cf          	imul   rcx,rdi
  66f735:	48 8b 95 c0 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x340]
  66f73c:	49 03 cf             	add    rcx,r15
  66f73f:	48 8b 85 58 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2a8]
  66f746:	48 0f af d7          	imul   rdx,rdi
  66f74a:	48 0f af c7          	imul   rax,rdi
  66f74e:	48 3b bd d8 fc ff ff 	cmp    rdi,QWORD PTR [rbp-0x328]
  66f755:	0f 83 43 05 00 00    	jae    66fc9e <gls_corstep_mod_mp_gls_corstep_tile_+0x852e>
  66f75b:	c5 fb 10 85 d8 f2 ff 	vmovsd xmm0,QWORD PTR [rbp-0xd28]
  66f762:	ff 
  66f763:	49 89 c4             	mov    r12,rax
  66f766:	c5 f9 57 05 52 c1 1d 	vxorpd xmm0,xmm0,XMMWORD PTR [rip+0x1dc152]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  66f76d:	00 
  66f76e:	c5 fb 11 85 18 fe ff 	vmovsd QWORD PTR [rbp-0x1e8],xmm0
  66f775:	ff 
  66f776:	4c 89 b5 f8 fa ff ff 	mov    QWORD PTR [rbp-0x508],r14
  66f77d:	49 89 fe             	mov    r14,rdi
  66f780:	4c 89 bd 88 f4 ff ff 	mov    QWORD PTR [rbp-0xb78],r15
  66f787:	49 89 cf             	mov    r15,rcx
  66f78a:	4c 89 ad 90 f4 ff ff 	mov    QWORD PTR [rbp-0xb70],r13
  66f791:	49 89 d5             	mov    r13,rdx
  66f794:	48 8b b5 d8 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x228]
  66f79b:	c4 c1 7b 10 0c 34    	vmovsd xmm1,QWORD PTR [r12+rsi*1]
  66f7a1:	c5 f8 77             	vzeroupper 
  66f7a4:	c4 c1 7b 10 04 34    	vmovsd xmm0,QWORD PTR [r12+rsi*1]
  66f7aa:	c5 fb 10 8d d0 fc ff 	vmovsd xmm1,QWORD PTR [rbp-0x330]
  66f7b1:	ff 
  66f7b2:	e8 89 01 e5 ff       	call   4bf940 <pow>
  66f7b7:	48 8b b5 e0 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x220]
  66f7be:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  66f7c2:	c5 fb 11 85 20 fe ff 	vmovsd QWORD PTR [rbp-0x1e0],xmm0
  66f7c9:	ff 
  66f7ca:	c4 c1 73 5f 4c 35 00 	vmaxsd xmm1,xmm1,QWORD PTR [r13+rsi*1+0x0]
  66f7d1:	c5 f3 51 c9          	vsqrtsd xmm1,xmm1,xmm1
  66f7d5:	c5 f3 58 05 33 cd 1d 	vaddsd xmm0,xmm1,QWORD PTR [rip+0x1dcd33]        # 84c510 <__STRLITPACK_0.112+0x400>
  66f7dc:	00 
  66f7dd:	c5 fb 10 8d 18 fe ff 	vmovsd xmm1,QWORD PTR [rbp-0x1e8]
  66f7e4:	ff 
  66f7e5:	e8 56 01 e5 ff       	call   4bf940 <pow>
  66f7ea:	c5 f9 28 d0          	vmovapd xmm2,xmm0
  66f7ee:	49 ff c6             	inc    r14
  66f7f1:	c5 fb 10 85 20 fe ff 	vmovsd xmm0,QWORD PTR [rbp-0x1e0]
  66f7f8:	ff 
  66f7f9:	c5 fb 59 8d b0 fc ff 	vmulsd xmm1,xmm0,QWORD PTR [rbp-0x350]
  66f800:	ff 
  66f801:	c5 f3 59 e2          	vmulsd xmm4,xmm1,xmm2
  66f805:	c4 c1 7b 10 1f       	vmovsd xmm3,QWORD PTR [r15]
  66f80a:	4c 03 a5 58 fd ff ff 	add    r12,QWORD PTR [rbp-0x2a8]
  66f811:	c5 e3 5d dc          	vminsd xmm3,xmm3,xmm4
  66f815:	c4 c1 7b 11 1f       	vmovsd QWORD PTR [r15],xmm3
  66f81a:	4c 03 ad c0 fc ff ff 	add    r13,QWORD PTR [rbp-0x340]
  66f821:	4c 03 bd 48 fd ff ff 	add    r15,QWORD PTR [rbp-0x2b8]
  66f828:	4c 3b b5 d8 fc ff ff 	cmp    r14,QWORD PTR [rbp-0x328]
  66f82f:	0f 82 5f ff ff ff    	jb     66f794 <gls_corstep_mod_mp_gls_corstep_tile_+0x8024>
  66f835:	e9 48 04 00 00       	jmp    66fc82 <gls_corstep_mod_mp_gls_corstep_tile_+0x8512>
  66f83a:	4c 8b b5 30 f2 ff ff 	mov    r14,QWORD PTR [rbp-0xdd0]
  66f841:	48 8b 85 c0 f2 ff ff 	mov    rax,QWORD PTR [rbp-0xd40]
  66f848:	48 83 bd 48 fd ff ff 	cmp    QWORD PTR [rbp-0x2b8],0x0
  66f84f:	00 
  66f850:	c4 81 7b 10 04 e6    	vmovsd xmm0,QWORD PTR [r14+r12*8]
  66f856:	4e 8d 34 ed 00 00 00 	lea    r14,[r13*8+0x0]
  66f85d:	00 
  66f85e:	c5 fb 11 85 d8 f2 ff 	vmovsd QWORD PTR [rbp-0xd28],xmm0
  66f865:	ff 
  66f866:	4a 8d 14 e8          	lea    rdx,[rax+r13*8]
  66f86a:	48 89 95 e0 fd ff ff 	mov    QWORD PTR [rbp-0x220],rdx
  66f871:	0f 84 3b 0e 00 00    	je     6706b2 <gls_corstep_mod_mp_gls_corstep_tile_+0x8f42>
  66f877:	48 83 bd d8 fc ff ff 	cmp    QWORD PTR [rbp-0x328],0x4
  66f87e:	04 
  66f87f:	0f 8c 2d 0e 00 00    	jl     6706b2 <gls_corstep_mod_mp_gls_corstep_tile_+0x8f42>
  66f885:	33 f6                	xor    esi,esi
  66f887:	c5 f9 57 0d 31 c0 1d 	vxorpd xmm1,xmm0,XMMWORD PTR [rip+0x1dc031]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  66f88e:	00 
  66f88f:	c4 e2 7d 19 d1       	vbroadcastsd ymm2,xmm1
  66f894:	48 8b bd d0 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x130]
  66f89b:	4c 89 f8             	mov    rax,r15
  66f89e:	4c 89 b5 f8 fa ff ff 	mov    QWORD PTR [rbp-0x508],r14
  66f8a5:	49 89 c4             	mov    r12,rax
  66f8a8:	48 89 bd 98 f4 ff ff 	mov    QWORD PTR [rbp-0xb68],rdi
  66f8af:	49 89 f6             	mov    r14,rsi
  66f8b2:	4c 89 bd 88 f4 ff ff 	mov    QWORD PTR [rbp-0xb78],r15
  66f8b9:	49 89 f7             	mov    r15,rsi
  66f8bc:	4c 89 ad 90 f4 ff ff 	mov    QWORD PTR [rbp-0xb70],r13
  66f8c3:	49 89 f5             	mov    r13,rsi
  66f8c6:	c4 e3 7d 19 d4 01    	vextractf128 xmm4,ymm2,0x1
  66f8cc:	c5 f9 70 da 0e       	vpshufd xmm3,xmm2,0xe
  66f8d1:	c5 fb 11 9d 38 fe ff 	vmovsd QWORD PTR [rbp-0x1c8],xmm3
  66f8d8:	ff 
  66f8d9:	c5 f9 70 ec 0e       	vpshufd xmm5,xmm4,0xe
  66f8de:	c5 fb 11 ad 30 fe ff 	vmovsd QWORD PTR [rbp-0x1d0],xmm5
  66f8e5:	ff 
  66f8e6:	c5 fb 11 a5 28 fe ff 	vmovsd QWORD PTR [rbp-0x1d8],xmm4
  66f8ed:	ff 
  66f8ee:	c5 fb 11 95 40 fe ff 	vmovsd QWORD PTR [rbp-0x1c0],xmm2
  66f8f5:	ff 
  66f8f6:	48 8b bd d8 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x228]
  66f8fd:	4c 8b 95 58 fd ff ff 	mov    r10,QWORD PTR [rbp-0x2a8]
  66f904:	4e 8d 04 3f          	lea    r8,[rdi+r15*1]
  66f908:	c4 c1 7b 10 10       	vmovsd xmm2,QWORD PTR [r8]
  66f90d:	4f 8d 0c 50          	lea    r9,[r8+r10*2]
  66f911:	c4 c1 7b 10 19       	vmovsd xmm3,QWORD PTR [r9]
  66f916:	c4 81 69 16 14 10    	vmovhpd xmm2,xmm2,QWORD PTR [r8+r10*1]
  66f91c:	c4 81 61 16 24 11    	vmovhpd xmm4,xmm3,QWORD PTR [r9+r10*1]
  66f922:	c5 f9 28 c2          	vmovapd xmm0,xmm2
  66f926:	c5 f9 11 a5 60 fb ff 	vmovupd XMMWORD PTR [rbp-0x4a0],xmm4
  66f92d:	ff 
  66f92e:	c5 f8 77             	vzeroupper 
  66f931:	c5 fb 10 8d 68 fd ff 	vmovsd xmm1,QWORD PTR [rbp-0x298]
  66f938:	ff 
  66f939:	c5 f9 11 95 90 fb ff 	vmovupd XMMWORD PTR [rbp-0x470],xmm2
  66f940:	ff 
  66f941:	e8 fa ff e4 ff       	call   4bf940 <pow>
  66f946:	c5 f9 10 95 90 fb ff 	vmovupd xmm2,XMMWORD PTR [rbp-0x470]
  66f94d:	ff 
  66f94e:	c5 fb 11 85 48 fe ff 	vmovsd QWORD PTR [rbp-0x1b8],xmm0
  66f955:	ff 
  66f956:	c5 f9 70 c2 0e       	vpshufd xmm0,xmm2,0xe
  66f95b:	c5 fb 10 8d 90 fd ff 	vmovsd xmm1,QWORD PTR [rbp-0x270]
  66f962:	ff 
  66f963:	e8 d8 ff e4 ff       	call   4bf940 <pow>
  66f968:	c5 fb 11 85 68 fe ff 	vmovsd QWORD PTR [rbp-0x198],xmm0
  66f96f:	ff 
  66f970:	c5 fb 10 85 60 fb ff 	vmovsd xmm0,QWORD PTR [rbp-0x4a0]
  66f977:	ff 
  66f978:	c5 fb 10 8d 98 fd ff 	vmovsd xmm1,QWORD PTR [rbp-0x268]
  66f97f:	ff 
  66f980:	e8 bb ff e4 ff       	call   4bf940 <pow>
  66f985:	c5 fb 11 85 58 fe ff 	vmovsd QWORD PTR [rbp-0x1a8],xmm0
  66f98c:	ff 
  66f98d:	c5 f9 70 85 60 fb ff 	vpshufd xmm0,XMMWORD PTR [rbp-0x4a0],0xe
  66f994:	ff 0e 
  66f996:	c5 fb 10 8d 88 fd ff 	vmovsd xmm1,QWORD PTR [rbp-0x278]
  66f99d:	ff 
  66f99e:	e8 9d ff e4 ff       	call   4bf940 <pow>
  66f9a3:	48 8b bd e0 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x220]
  66f9aa:	4c 8b 95 c0 fc ff ff 	mov    r10,QWORD PTR [rbp-0x340]
  66f9b1:	c4 41 25 57 db       	vxorpd ymm11,ymm11,ymm11
  66f9b6:	c5 fb 10 9d 58 fe ff 	vmovsd xmm3,QWORD PTR [rbp-0x1a8]
  66f9bd:	ff 
  66f9be:	4e 8d 04 2f          	lea    r8,[rdi+r13*1]
  66f9c2:	c4 c1 7b 10 38       	vmovsd xmm7,QWORD PTR [r8]
  66f9c7:	4f 8d 0c 50          	lea    r9,[r8+r10*2]
  66f9cb:	c4 41 7b 10 09       	vmovsd xmm9,QWORD PTR [r9]
  66f9d0:	c4 01 41 16 04 10    	vmovhpd xmm8,xmm7,QWORD PTR [r8+r10*1]
  66f9d6:	c4 01 31 16 14 11    	vmovhpd xmm10,xmm9,QWORD PTR [r9+r10*1]
  66f9dc:	c5 fb 10 95 48 fe ff 	vmovsd xmm2,QWORD PTR [rbp-0x1b8]
  66f9e3:	ff 
  66f9e4:	c5 e1 14 e8          	vunpcklpd xmm5,xmm3,xmm0
  66f9e8:	c5 e9 16 a5 68 fe ff 	vmovhpd xmm4,xmm2,QWORD PTR [rbp-0x198]
  66f9ef:	ff 
  66f9f0:	c4 43 3d 18 e2 01    	vinsertf128 ymm12,ymm8,xmm10,0x1
  66f9f6:	c4 41 25 5f ec       	vmaxpd ymm13,ymm11,ymm12
  66f9fb:	c4 41 7d 51 f5       	vsqrtpd ymm14,ymm13
  66fa00:	c5 8d 58 05 98 a9 1d 	vaddpd ymm0,ymm14,YMMWORD PTR [rip+0x1da998]        # 84a3a0 <var$630.126.450+0x400>
  66fa07:	00 
  66fa08:	c4 e3 7d 19 85 50 fb 	vextractf128 XMMWORD PTR [rbp-0x4b0],ymm0,0x1
  66fa0f:	ff ff 01 
  66fa12:	c4 e3 5d 18 f5 01    	vinsertf128 ymm6,ymm4,xmm5,0x1
  66fa18:	c5 fc 11 b5 d0 fa ff 	vmovups YMMWORD PTR [rbp-0x530],ymm6
  66fa1f:	ff 
  66fa20:	c5 f8 28 d0          	vmovaps xmm2,xmm0
  66fa24:	c5 f9 28 c2          	vmovapd xmm0,xmm2
  66fa28:	c5 f8 77             	vzeroupper 
  66fa2b:	c5 fb 10 8d 40 fe ff 	vmovsd xmm1,QWORD PTR [rbp-0x1c0]
  66fa32:	ff 
  66fa33:	c5 f8 11 95 a0 fb ff 	vmovups XMMWORD PTR [rbp-0x460],xmm2
  66fa3a:	ff 
  66fa3b:	e8 00 ff e4 ff       	call   4bf940 <pow>
  66fa40:	c5 f8 10 95 a0 fb ff 	vmovups xmm2,XMMWORD PTR [rbp-0x460]
  66fa47:	ff 
  66fa48:	c5 fb 11 85 50 fe ff 	vmovsd QWORD PTR [rbp-0x1b0],xmm0
  66fa4f:	ff 
  66fa50:	c5 f9 70 c2 0e       	vpshufd xmm0,xmm2,0xe
  66fa55:	c5 fb 10 8d 38 fe ff 	vmovsd xmm1,QWORD PTR [rbp-0x1c8]
  66fa5c:	ff 
  66fa5d:	e8 de fe e4 ff       	call   4bf940 <pow>
  66fa62:	c5 fb 11 85 60 fe ff 	vmovsd QWORD PTR [rbp-0x1a0],xmm0
  66fa69:	ff 
  66fa6a:	c5 fb 10 85 50 fb ff 	vmovsd xmm0,QWORD PTR [rbp-0x4b0]
  66fa71:	ff 
  66fa72:	c5 fb 10 8d 28 fe ff 	vmovsd xmm1,QWORD PTR [rbp-0x1d8]
  66fa79:	ff 
  66fa7a:	e8 c1 fe e4 ff       	call   4bf940 <pow>
  66fa7f:	c5 fb 11 85 70 fe ff 	vmovsd QWORD PTR [rbp-0x190],xmm0
  66fa86:	ff 
  66fa87:	c5 f9 70 85 50 fb ff 	vpshufd xmm0,XMMWORD PTR [rbp-0x4b0],0xe
  66fa8e:	ff 0e 
  66fa90:	c5 fb 10 8d 30 fe ff 	vmovsd xmm1,QWORD PTR [rbp-0x1d0]
  66fa97:	ff 
  66fa98:	e8 a3 fe e4 ff       	call   4bf940 <pow>
  66fa9d:	c5 fc 10 ad d0 fa ff 	vmovups ymm5,YMMWORD PTR [rbp-0x530]
  66faa4:	ff 
  66faa5:	c5 f9 28 c8          	vmovapd xmm1,xmm0
  66faa9:	c5 fb 10 85 50 fe ff 	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
  66fab0:	ff 
  66fab1:	c5 fb 10 95 70 fe ff 	vmovsd xmm2,QWORD PTR [rbp-0x190]
  66fab8:	ff 
  66fab9:	c5 f9 16 9d 60 fe ff 	vmovhpd xmm3,xmm0,QWORD PTR [rbp-0x1a0]
  66fac0:	ff 
  66fac1:	c5 e9 14 e1          	vunpcklpd xmm4,xmm2,xmm1
  66fac5:	c5 d5 59 bd 90 fa ff 	vmulpd ymm7,ymm5,YMMWORD PTR [rbp-0x570]
  66facc:	ff 
  66facd:	49 83 c6 04          	add    r14,0x4
  66fad1:	c4 41 7b 10 04 24    	vmovsd xmm8,QWORD PTR [r12]
  66fad7:	4c 8b 9d 48 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2b8]
  66fade:	48 8b bd 58 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2a8]
  66fae5:	4c 8b 85 c0 fc ff ff 	mov    r8,QWORD PTR [rbp-0x340]
  66faec:	c4 01 39 16 0c 1c    	vmovhpd xmm9,xmm8,QWORD PTR [r12+r11*1]
  66faf2:	4f 8d 0c 5c          	lea    r9,[r12+r11*2]
  66faf6:	c4 41 7b 10 11       	vmovsd xmm10,QWORD PTR [r9]
  66fafb:	4d 8d 3c bf          	lea    r15,[r15+rdi*4]
  66faff:	c4 01 29 16 1c 19    	vmovhpd xmm11,xmm10,QWORD PTR [r9+r11*1]
  66fb05:	4f 8d 6c 85 00       	lea    r13,[r13+r8*4+0x0]
  66fb0a:	4c 8b 95 18 fd ff ff 	mov    r10,QWORD PTR [rbp-0x2e8]
  66fb11:	4c 3b b5 d0 fe ff ff 	cmp    r14,QWORD PTR [rbp-0x130]
  66fb18:	c4 e3 65 18 f4 01    	vinsertf128 ymm6,ymm3,xmm4,0x1
  66fb1e:	c5 4d 59 ef          	vmulpd ymm13,ymm6,ymm7
  66fb22:	c4 43 35 18 e3 01    	vinsertf128 ymm12,ymm9,xmm11,0x1
  66fb28:	c4 41 1d 5f f5       	vmaxpd ymm14,ymm12,ymm13
  66fb2d:	c4 43 7d 19 f7 01    	vextractf128 xmm15,ymm14,0x1
  66fb33:	c4 41 7b 11 34 24    	vmovsd QWORD PTR [r12],xmm14
  66fb39:	c4 01 79 17 34 23    	vmovhpd QWORD PTR [r11+r12*1],xmm14
  66fb3f:	c4 41 7b 11 39       	vmovsd QWORD PTR [r9],xmm15
  66fb44:	c4 01 79 17 3c 22    	vmovhpd QWORD PTR [r10+r12*1],xmm15
  66fb4a:	4f 8d 24 9c          	lea    r12,[r12+r11*4]
  66fb4e:	0f 82 a2 fd ff ff    	jb     66f8f6 <gls_corstep_mod_mp_gls_corstep_tile_+0x8186>
  66fb54:	4c 8b b5 f8 fa ff ff 	mov    r14,QWORD PTR [rbp-0x508]
  66fb5b:	48 8b bd 98 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xb68]
  66fb62:	4c 8b bd 88 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb78]
  66fb69:	4c 8b ad 90 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xb70]
  66fb70:	4c 8b a5 78 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb88]
  66fb77:	48 8b 8d 48 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2b8]
  66fb7e:	48 0f af cf          	imul   rcx,rdi
  66fb82:	48 8b 95 c0 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x340]
  66fb89:	49 03 cf             	add    rcx,r15
  66fb8c:	48 8b 85 58 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2a8]
  66fb93:	48 0f af d7          	imul   rdx,rdi
  66fb97:	48 0f af c7          	imul   rax,rdi
  66fb9b:	48 3b bd d8 fc ff ff 	cmp    rdi,QWORD PTR [rbp-0x328]
  66fba2:	0f 83 f6 00 00 00    	jae    66fc9e <gls_corstep_mod_mp_gls_corstep_tile_+0x852e>
  66fba8:	c5 fb 10 85 d8 f2 ff 	vmovsd xmm0,QWORD PTR [rbp-0xd28]
  66fbaf:	ff 
  66fbb0:	49 89 c4             	mov    r12,rax
  66fbb3:	c5 f9 57 05 05 bd 1d 	vxorpd xmm0,xmm0,XMMWORD PTR [rip+0x1dbd05]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  66fbba:	00 
  66fbbb:	c5 fb 11 85 78 fe ff 	vmovsd QWORD PTR [rbp-0x188],xmm0
  66fbc2:	ff 
  66fbc3:	4c 89 b5 f8 fa ff ff 	mov    QWORD PTR [rbp-0x508],r14
  66fbca:	49 89 fe             	mov    r14,rdi
  66fbcd:	4c 89 bd 88 f4 ff ff 	mov    QWORD PTR [rbp-0xb78],r15
  66fbd4:	49 89 cf             	mov    r15,rcx
  66fbd7:	4c 89 ad 90 f4 ff ff 	mov    QWORD PTR [rbp-0xb70],r13
  66fbde:	49 89 d5             	mov    r13,rdx
  66fbe1:	48 8b b5 d8 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x228]
  66fbe8:	c4 c1 7b 10 0c 34    	vmovsd xmm1,QWORD PTR [r12+rsi*1]
  66fbee:	c5 f8 77             	vzeroupper 
  66fbf1:	c4 c1 7b 10 04 34    	vmovsd xmm0,QWORD PTR [r12+rsi*1]
  66fbf7:	c5 fb 10 8d d0 fc ff 	vmovsd xmm1,QWORD PTR [rbp-0x330]
  66fbfe:	ff 
  66fbff:	e8 3c fd e4 ff       	call   4bf940 <pow>
  66fc04:	48 8b b5 e0 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x220]
  66fc0b:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  66fc0f:	c5 fb 11 85 80 fe ff 	vmovsd QWORD PTR [rbp-0x180],xmm0
  66fc16:	ff 
  66fc17:	c4 c1 73 5f 4c 35 00 	vmaxsd xmm1,xmm1,QWORD PTR [r13+rsi*1+0x0]
  66fc1e:	c5 f3 51 c9          	vsqrtsd xmm1,xmm1,xmm1
  66fc22:	c5 f3 58 05 e6 c8 1d 	vaddsd xmm0,xmm1,QWORD PTR [rip+0x1dc8e6]        # 84c510 <__STRLITPACK_0.112+0x400>
  66fc29:	00 
  66fc2a:	c5 fb 10 8d 78 fe ff 	vmovsd xmm1,QWORD PTR [rbp-0x188]
  66fc31:	ff 
  66fc32:	e8 09 fd e4 ff       	call   4bf940 <pow>
  66fc37:	c5 f9 28 d0          	vmovapd xmm2,xmm0
  66fc3b:	49 ff c6             	inc    r14
  66fc3e:	c5 fb 10 85 80 fe ff 	vmovsd xmm0,QWORD PTR [rbp-0x180]
  66fc45:	ff 
  66fc46:	c5 fb 59 8d b0 fc ff 	vmulsd xmm1,xmm0,QWORD PTR [rbp-0x350]
  66fc4d:	ff 
  66fc4e:	c5 f3 59 e2          	vmulsd xmm4,xmm1,xmm2
  66fc52:	c4 c1 7b 10 1f       	vmovsd xmm3,QWORD PTR [r15]
  66fc57:	4c 03 a5 58 fd ff ff 	add    r12,QWORD PTR [rbp-0x2a8]
  66fc5e:	c5 e3 5f dc          	vmaxsd xmm3,xmm3,xmm4
  66fc62:	c4 c1 7b 11 1f       	vmovsd QWORD PTR [r15],xmm3
  66fc67:	4c 03 ad c0 fc ff ff 	add    r13,QWORD PTR [rbp-0x340]
  66fc6e:	4c 03 bd 48 fd ff ff 	add    r15,QWORD PTR [rbp-0x2b8]
  66fc75:	4c 3b b5 d8 fc ff ff 	cmp    r14,QWORD PTR [rbp-0x328]
  66fc7c:	0f 82 5f ff ff ff    	jb     66fbe1 <gls_corstep_mod_mp_gls_corstep_tile_+0x8471>
  66fc82:	4c 8b b5 f8 fa ff ff 	mov    r14,QWORD PTR [rbp-0x508]
  66fc89:	4c 8b bd 88 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb78]
  66fc90:	4c 8b ad 90 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xb70]
  66fc97:	4c 8b a5 78 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb88]
  66fc9e:	48 8b 85 68 f2 ff ff 	mov    rax,QWORD PTR [rbp-0xd98]
  66fca5:	bf 03 00 00 00       	mov    edi,0x3
  66fcaa:	48 8b 95 70 f2 ff ff 	mov    rdx,QWORD PTR [rbp-0xd90]
  66fcb1:	48 8b 8d 10 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xaf0]
  66fcb8:	48 8b b5 78 f2 ff ff 	mov    rsi,QWORD PTR [rbp-0xd88]
  66fcbf:	49 0f af c5          	imul   rax,r13
  66fcc3:	49 0f af d5          	imul   rdx,r13
  66fcc7:	49 0f af cd          	imul   rcx,r13
  66fccb:	49 0f af f5          	imul   rsi,r13
  66fccf:	4c 8b 95 28 f2 ff ff 	mov    r10,QWORD PTR [rbp-0xdd8]
  66fcd6:	4c 8b 85 60 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xca0]
  66fcdd:	48 c7 85 98 fe ff ff 	mov    QWORD PTR [rbp-0x168],0x0
  66fce4:	00 00 00 00 
  66fce8:	c4 81 7b 10 04 e2    	vmovsd xmm0,QWORD PTR [r10+r12*8]
  66fcee:	c5 fb 11 85 f8 f2 ff 	vmovsd QWORD PTR [rbp-0xd08],xmm0
  66fcf5:	ff 
  66fcf6:	4f 8d 0c 06          	lea    r9,[r14+r8*1]
  66fcfa:	48 89 85 b0 f5 ff ff 	mov    QWORD PTR [rbp-0xa50],rax
  66fd01:	48 89 95 a0 f5 ff ff 	mov    QWORD PTR [rbp-0xa60],rdx
  66fd08:	48 89 8d a8 f5 ff ff 	mov    QWORD PTR [rbp-0xa58],rcx
  66fd0f:	48 89 b5 00 fb ff ff 	mov    QWORD PTR [rbp-0x500],rsi
  66fd16:	4c 89 8d e8 f2 ff ff 	mov    QWORD PTR [rbp-0xd18],r9
  66fd1d:	c5 f8 77             	vzeroupper 
  66fd20:	e8 2b fd e4 ff       	call   4bfa50 <__powr8i4>
  66fd25:	48 8b 85 38 f2 ff ff 	mov    rax,QWORD PTR [rbp-0xdc8]
  66fd2c:	c5 fb 11 85 f0 f2 ff 	vmovsd QWORD PTR [rbp-0xd10],xmm0
  66fd33:	ff 
  66fd34:	c4 a1 7b 10 0c e0    	vmovsd xmm1,QWORD PTR [rax+r12*8]
  66fd3a:	c5 fb 10 85 f8 f2 ff 	vmovsd xmm0,QWORD PTR [rbp-0xd08]
  66fd41:	ff 
  66fd42:	e8 f9 fb e4 ff       	call   4bf940 <pow>
  66fd47:	48 8b 95 40 f2 ff ff 	mov    rdx,QWORD PTR [rbp-0xdc0]
  66fd4e:	c5 f9 28 c8          	vmovapd xmm1,xmm0
  66fd52:	48 8b 85 b8 f2 ff ff 	mov    rax,QWORD PTR [rbp-0xd48]
  66fd59:	48 8b 8d 80 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xa80]
  66fd60:	48 8b b5 b0 f2 ff ff 	mov    rsi,QWORD PTR [rbp-0xd50]
  66fd67:	48 8b bd b0 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xa50]
  66fd6e:	4c 8b 8d 78 f3 ff ff 	mov    r9,QWORD PTR [rbp-0xc88]
  66fd75:	4c 8b 95 00 fb ff ff 	mov    r10,QWORD PTR [rbp-0x500]
  66fd7c:	c4 a1 7b 10 04 e2    	vmovsd xmm0,QWORD PTR [rdx+r12*8]
  66fd82:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
  66fd86:	48 8b 8d 58 f2 ff ff 	mov    rcx,QWORD PTR [rbp-0xda8]
  66fd8d:	4c 8d 04 3e          	lea    r8,[rsi+rdi*1]
  66fd91:	49 0f af cd          	imul   rcx,r13
  66fd95:	4c 89 85 e0 f2 ff ff 	mov    QWORD PTR [rbp-0xd20],r8
  66fd9c:	4b 8d 04 0a          	lea    rax,[r10+r9*1]
  66fda0:	4c 8b 85 a0 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xd60]
  66fda7:	4c 8b 8d a8 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xa58]
  66fdae:	4c 03 95 70 f3 ff ff 	add    r10,QWORD PTR [rbp-0xc90]
  66fdb5:	4c 8b 9d a8 f2 ff ff 	mov    r11,QWORD PTR [rbp-0xd58]
  66fdbc:	48 8b b5 a0 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xa60]
  66fdc3:	4c 89 95 00 fb ff ff 	mov    QWORD PTR [rbp-0x500],r10
  66fdca:	4f 8d 14 08          	lea    r10,[r8+r9*1]
  66fdce:	4c 89 95 90 fe ff ff 	mov    QWORD PTR [rbp-0x170],r10
  66fdd5:	45 33 d2             	xor    r10d,r10d
  66fdd8:	49 8d 3c 33          	lea    rdi,[r11+rsi*1]
  66fddc:	4c 8b 9d 68 f3 ff ff 	mov    r11,QWORD PTR [rbp-0xc98]
  66fde3:	48 89 bd 88 fe ff ff 	mov    QWORD PTR [rbp-0x178],rdi
  66fdea:	48 03 8d 80 f3 ff ff 	add    rcx,QWORD PTR [rbp-0xc80]
  66fdf1:	c5 fb 11 85 08 f3 ff 	vmovsd QWORD PTR [rbp-0xcf8],xmm0
  66fdf8:	ff 
  66fdf9:	4d 03 de             	add    r11,r14
  66fdfc:	4c 03 b5 98 f2 ff ff 	add    r14,QWORD PTR [rbp-0xd68]
  66fe03:	4d 89 d4             	mov    r12,r10
  66fe06:	c5 fb 11 8d 10 f3 ff 	vmovsd QWORD PTR [rbp-0xcf0],xmm1
  66fe0d:	ff 
  66fe0e:	4c 89 95 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],r10
  66fe15:	4c 89 95 b0 fe ff ff 	mov    QWORD PTR [rbp-0x150],r10
  66fe1c:	4c 89 b5 f8 fa ff ff 	mov    QWORD PTR [rbp-0x508],r14
  66fe23:	4d 89 d6             	mov    r14,r10
  66fe26:	4c 89 9d 08 fb ff ff 	mov    QWORD PTR [rbp-0x4f8],r11
  66fe2d:	48 89 85 10 fb ff ff 	mov    QWORD PTR [rbp-0x4f0],rax
  66fe34:	48 89 8d b8 fe ff ff 	mov    QWORD PTR [rbp-0x148],rcx
  66fe3b:	48 89 95 00 f3 ff ff 	mov    QWORD PTR [rbp-0xd00],rdx
  66fe42:	4c 89 ad 90 f4 ff ff 	mov    QWORD PTR [rbp-0xb70],r13
  66fe49:	4d 89 d5             	mov    r13,r10
  66fe4c:	c4 c1 7b 10 07       	vmovsd xmm0,QWORD PTR [r15]
  66fe51:	c5 fb 10 8d 78 fd ff 	vmovsd xmm1,QWORD PTR [rbp-0x288]
  66fe58:	ff 
  66fe59:	e8 e2 fa e4 ff       	call   4bf940 <pow>
  66fe5e:	48 8b 85 d8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x228]
  66fe65:	c5 fb 11 85 c8 fe ff 	vmovsd QWORD PTR [rbp-0x138],xmm0
  66fe6c:	ff 
  66fe6d:	c4 c1 7b 10 0c 06    	vmovsd xmm1,QWORD PTR [r14+rax*1]
  66fe73:	c5 fb 11 8d c0 fe ff 	vmovsd QWORD PTR [rbp-0x140],xmm1
  66fe7a:	ff 
  66fe7b:	c4 c1 7b 10 04 06    	vmovsd xmm0,QWORD PTR [r14+rax*1]
  66fe81:	c5 fb 10 8d f0 fc ff 	vmovsd xmm1,QWORD PTR [rbp-0x310]
  66fe88:	ff 
  66fe89:	e8 b2 fa e4 ff       	call   4bf940 <pow>
  66fe8e:	c5 fb 10 95 c8 fe ff 	vmovsd xmm2,QWORD PTR [rbp-0x138]
  66fe95:	ff 
  66fe96:	c5 eb 59 b5 98 fc ff 	vmulsd xmm6,xmm2,QWORD PTR [rbp-0x368]
  66fe9d:	ff 
  66fe9e:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  66fea2:	c5 cb 59 c8          	vmulsd xmm1,xmm6,xmm0
  66fea6:	48 8b 85 e0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x220]
  66fead:	c5 fb 10 35 5b c6 1d 	vmovsd xmm6,QWORD PTR [rip+0x1dc65b]        # 84c510 <__STRLITPACK_0.112+0x400>
  66feb4:	00 
  66feb5:	c5 cb 5f f1          	vmaxsd xmm6,xmm6,xmm1
  66feb9:	c4 c1 7b 10 14 04    	vmovsd xmm2,QWORD PTR [r12+rax*1]
  66febf:	c5 f9 2f d3          	vcomisd xmm2,xmm3
  66fec3:	76 2c                	jbe    66fef1 <gls_corstep_mod_mp_gls_corstep_tile_+0x8781>
  66fec5:	c5 fb 10 8d c0 fe ff 	vmovsd xmm1,QWORD PTR [rbp-0x140]
  66fecc:	ff 
  66fecd:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  66fed1:	c5 f3 59 25 27 c6 1d 	vmulsd xmm4,xmm1,QWORD PTR [rip+0x1dc627]        # 84c500 <__STRLITPACK_0.112+0x3f0>
  66fed8:	00 
  66fed9:	c5 e3 5f da          	vmaxsd xmm3,xmm3,xmm2
  66fedd:	c5 e3 58 2d 2b c6 1d 	vaddsd xmm5,xmm3,QWORD PTR [rip+0x1dc62b]        # 84c510 <__STRLITPACK_0.112+0x400>
  66fee4:	00 
  66fee5:	c5 db 5e fd          	vdivsd xmm7,xmm4,xmm5
  66fee9:	c5 c3 51 ff          	vsqrtsd xmm7,xmm7,xmm7
  66feed:	c5 cb 5d f7          	vminsd xmm6,xmm6,xmm7
  66fef1:	c5 fb 10 85 c0 fe ff 	vmovsd xmm0,QWORD PTR [rbp-0x140]
  66fef8:	ff 
  66fef9:	c5 fb 10 8d 08 f3 ff 	vmovsd xmm1,QWORD PTR [rbp-0xcf8]
  66ff00:	ff 
  66ff01:	c5 fb 11 95 f8 e0 ff 	vmovsd QWORD PTR [rbp-0x1f08],xmm2
  66ff08:	ff 
  66ff09:	c5 fb 11 b5 00 e1 ff 	vmovsd QWORD PTR [rbp-0x1f00],xmm6
  66ff10:	ff 
  66ff11:	e8 2a fa e4 ff       	call   4bf940 <pow>
  66ff16:	48 8d 85 00 e1 ff ff 	lea    rax,[rbp-0x1f00]
  66ff1d:	c5 fb 10 30          	vmovsd xmm6,QWORD PTR [rax]
  66ff21:	48 8d 95 f8 e0 ff ff 	lea    rdx,[rbp-0x1f08]
  66ff28:	c5 fb 10 12          	vmovsd xmm2,QWORD PTR [rdx]
  66ff2c:	c5 fb 11 85 f0 e0 ff 	vmovsd QWORD PTR [rbp-0x1f10],xmm0
  66ff33:	ff 
  66ff34:	c5 fb 10 8d d8 f2 ff 	vmovsd xmm1,QWORD PTR [rbp-0xd28]
  66ff3b:	ff 
  66ff3c:	c5 f9 28 c6          	vmovapd xmm0,xmm6
  66ff40:	c5 fb 11 12          	vmovsd QWORD PTR [rdx],xmm2
  66ff44:	c5 fb 11 30          	vmovsd QWORD PTR [rax],xmm6
  66ff48:	e8 f3 f9 e4 ff       	call   4bf940 <pow>
  66ff4d:	c5 fb 10 b5 00 e1 ff 	vmovsd xmm6,QWORD PTR [rbp-0x1f00]
  66ff54:	ff 
  66ff55:	c5 fb 10 95 f8 e0 ff 	vmovsd xmm2,QWORD PTR [rbp-0x1f08]
  66ff5c:	ff 
  66ff5d:	c5 4b 59 d2          	vmulsd xmm10,xmm6,xmm2
  66ff61:	c5 7b 10 b5 c0 fe ff 	vmovsd xmm14,QWORD PTR [rbp-0x140]
  66ff68:	ff 
  66ff69:	c5 2b 59 de          	vmulsd xmm11,xmm10,xmm6
  66ff6d:	c5 8b 59 2d eb c4 1d 	vmulsd xmm5,xmm14,QWORD PTR [rip+0x1dc4eb]        # 84c460 <__STRLITPACK_0.112+0x350>
  66ff74:	00 
  66ff75:	c4 41 0b 51 f6       	vsqrtsd xmm14,xmm14,xmm14
  66ff7a:	c5 23 5e e5          	vdivsd xmm12,xmm11,xmm5
  66ff7e:	c5 19 57 2d 3a b9 1d 	vxorpd xmm13,xmm12,XMMWORD PTR [rip+0x1db93a]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  66ff85:	00 
  66ff86:	48 8d 05 8b c5 1d 00 	lea    rax,[rip+0x1dc58b]        # 84c518 <__STRLITPACK_0.112+0x408>
  66ff8d:	c5 fb 10 18          	vmovsd xmm3,QWORD PTR [rax]
  66ff91:	c4 c1 4b 59 e6       	vmulsd xmm4,xmm6,xmm14
  66ff96:	c4 c1 63 5d dd       	vminsd xmm3,xmm3,xmm13
  66ff9b:	c5 fb 10 bd 10 f3 ff 	vmovsd xmm7,QWORD PTR [rbp-0xcf0]
  66ffa2:	ff 
  66ffa3:	c5 43 59 85 f0 e0 ff 	vmulsd xmm8,xmm7,QWORD PTR [rbp-0x1f10]
  66ffaa:	ff 
  66ffab:	c5 63 5c 3d 6d c5 1d 	vsubsd xmm15,xmm3,QWORD PTR [rip+0x1dc56d]        # 84c520 <__STRLITPACK_0.112+0x410>
  66ffb2:	00 
  66ffb3:	c5 e3 58 08          	vaddsd xmm1,xmm3,QWORD PTR [rax]
  66ffb7:	c5 3b 59 c8          	vmulsd xmm9,xmm8,xmm0
  66ffbb:	c4 c1 03 59 d7       	vmulsd xmm2,xmm15,xmm15
  66ffc0:	c5 73 5c 35 60 c5 1d 	vsubsd xmm14,xmm1,QWORD PTR [rip+0x1dc560]        # 84c528 <__STRLITPACK_0.112+0x418>
  66ffc7:	00 
  66ffc8:	c5 33 5f 8d d0 f2 ff 	vmaxsd xmm9,xmm9,QWORD PTR [rbp-0xd30]
  66ffcf:	ff 
  66ffd0:	c4 41 6b 5e fe       	vdivsd xmm15,xmm2,xmm14
  66ffd5:	c4 41 7b 11 0f       	vmovsd QWORD PTR [r15],xmm9
  66ffda:	c4 c1 63 5c ff       	vsubsd xmm7,xmm3,xmm15
  66ffdf:	c5 7b 10 85 30 e6 ff 	vmovsd xmm8,QWORD PTR [rbp-0x19d0]
  66ffe6:	ff 
  66ffe7:	c5 e3 5d df          	vminsd xmm3,xmm3,xmm7
  66ffeb:	c5 fb 10 8d 88 e6 ff 	vmovsd xmm1,QWORD PTR [rbp-0x1978]
  66fff2:	ff 
  66fff3:	48 8b 85 e8 f2 ff ff 	mov    rax,QWORD PTR [rbp-0xd18]
  66fffa:	48 8b 95 00 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xd00]
  670001:	4c 8b 8d 50 e6 ff ff 	mov    r9,QWORD PTR [rbp-0x19b0]
  670008:	4c 8b 95 98 fe ff ff 	mov    r10,QWORD PTR [rbp-0x168]
  67000f:	4d 0f af ca          	imul   r9,r10
  670013:	c5 e3 5f 1d 15 c5 1d 	vmaxsd xmm3,xmm3,QWORD PTR [rip+0x1dc515]        # 84c530 <__STRLITPACK_0.112+0x420>
  67001a:	00 
  67001b:	c5 63 59 eb          	vmulsd xmm13,xmm3,xmm3
  67001f:	c5 63 59 8d 80 e6 ff 	vmulsd xmm9,xmm3,QWORD PTR [rbp-0x1980]
  670026:	ff 
  670027:	c5 93 59 95 08 e6 ff 	vmulsd xmm2,xmm13,QWORD PTR [rbp-0x19f8]
  67002e:	ff 
  67002f:	c4 41 3b 5c d9       	vsubsd xmm11,xmm8,xmm9
  670034:	c4 41 79 28 d5       	vmovapd xmm10,xmm13
  670039:	c5 2b 59 a5 28 e6 ff 	vmulsd xmm12,xmm10,QWORD PTR [rbp-0x19d8]
  670040:	ff 
  670041:	c5 63 59 ad 20 e6 ff 	vmulsd xmm13,xmm3,QWORD PTR [rbp-0x19e0]
  670048:	ff 
  670049:	c4 c1 23 58 fc       	vaddsd xmm7,xmm11,xmm12
  67004e:	c4 c1 73 5c cd       	vsubsd xmm1,xmm1,xmm13
  670053:	c5 c3 5e c9          	vdivsd xmm1,xmm7,xmm1
  670057:	c4 c1 4b 59 3c 04    	vmulsd xmm7,xmm6,QWORD PTR [r12+rax*1]
  67005d:	c5 c3 59 fe          	vmulsd xmm7,xmm7,xmm6
  670061:	c5 c3 5e ed          	vdivsd xmm5,xmm7,xmm5
  670065:	c5 e3 59 bd 18 e6 ff 	vmulsd xmm7,xmm3,QWORD PTR [rbp-0x19e8]
  67006c:	ff 
  67006d:	c5 f3 5d cd          	vminsd xmm1,xmm1,xmm5
  670071:	c5 fb 10 ad 78 e6 ff 	vmovsd xmm5,QWORD PTR [rbp-0x1988]
  670078:	ff 
  670079:	48 8b 8d b8 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x148]
  670080:	c5 d3 5c ef          	vsubsd xmm5,xmm5,xmm7
  670084:	c5 f3 59 bd 10 e6 ff 	vmulsd xmm7,xmm1,QWORD PTR [rbp-0x19f0]
  67008b:	ff 
  67008c:	48 8b 85 f8 fc ff ff 	mov    rax,QWORD PTR [rbp-0x308]
  670093:	c5 d3 58 ef          	vaddsd xmm5,xmm5,xmm7
  670097:	49 0f af c2          	imul   rax,r10
  67009b:	c5 d3 58 ea          	vaddsd xmm5,xmm5,xmm2
  67009f:	c5 e3 59 95 00 e6 ff 	vmulsd xmm2,xmm3,QWORD PTR [rbp-0x1a00]
  6700a6:	ff 
  6700a7:	c5 eb 59 d1          	vmulsd xmm2,xmm2,xmm1
  6700ab:	4c 8b 9d e0 f2 ff ff 	mov    r11,QWORD PTR [rbp-0xd20]
  6700b2:	c5 d3 5c ea          	vsubsd xmm5,xmm5,xmm2
  6700b6:	c5 f3 59 95 f8 e5 ff 	vmulsd xmm2,xmm1,QWORD PTR [rbp-0x1a08]
  6700bd:	ff 
  6700be:	c5 eb 59 d1          	vmulsd xmm2,xmm2,xmm1
  6700c2:	4c 89 8d a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],r9
  6700c9:	c5 d3 58 fa          	vaddsd xmm7,xmm5,xmm2
  6700cd:	c5 e3 59 ad 70 e6 ff 	vmulsd xmm5,xmm3,QWORD PTR [rbp-0x1990]
  6700d4:	ff 
  6700d5:	c5 e3 59 9d 60 e6 ff 	vmulsd xmm3,xmm3,QWORD PTR [rbp-0x19a0]
  6700dc:	ff 
  6700dd:	c5 fb 10 95 48 e6 ff 	vmovsd xmm2,QWORD PTR [rbp-0x19b8]
  6700e4:	ff 
  6700e5:	48 83 bd 78 f2 ff ff 	cmp    QWORD PTR [rbp-0xd88],0x8
  6700ec:	08 
  6700ed:	c5 eb 5c ed          	vsubsd xmm5,xmm2,xmm5
  6700f1:	c5 fb 10 95 40 e6 ff 	vmovsd xmm2,QWORD PTR [rbp-0x19c0]
  6700f8:	ff 
  6700f9:	c5 eb 5c db          	vsubsd xmm3,xmm2,xmm3
  6700fd:	c5 f3 59 95 68 e6 ff 	vmulsd xmm2,xmm1,QWORD PTR [rbp-0x1998]
  670104:	ff 
  670105:	c5 f3 59 8d 58 e6 ff 	vmulsd xmm1,xmm1,QWORD PTR [rbp-0x19a8]
  67010c:	ff 
  67010d:	c5 d3 58 d2          	vaddsd xmm2,xmm5,xmm2
  670111:	c5 e3 58 c9          	vaddsd xmm1,xmm3,xmm1
  670115:	c5 eb 5e d7          	vdivsd xmm2,xmm2,xmm7
  670119:	c5 f3 5e cf          	vdivsd xmm1,xmm1,xmm7
  67011d:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  670121:	c5 fb 10 ad f0 f2 ff 	vmovsd xmm5,QWORD PTR [rbp-0xd10]
  670128:	ff 
  670129:	c5 eb 5f d3          	vmaxsd xmm2,xmm2,xmm3
  67012d:	c5 f3 5f cb          	vmaxsd xmm1,xmm1,xmm3
  670131:	c5 fb 10 9d f0 e5 ff 	vmovsd xmm3,QWORD PTR [rbp-0x1a10]
  670138:	ff 
  670139:	c5 eb 59 d3          	vmulsd xmm2,xmm2,xmm3
  67013d:	c5 e3 59 c9          	vmulsd xmm1,xmm3,xmm1
  670141:	c5 eb 5e fd          	vdivsd xmm7,xmm2,xmm5
  670145:	c4 c1 7b 10 14 16    	vmovsd xmm2,QWORD PTR [r14+rdx*1]
  67014b:	c5 eb 51 d2          	vsqrtsd xmm2,xmm2,xmm2
  67014f:	c5 f3 5e cd          	vdivsd xmm1,xmm1,xmm5
  670153:	c4 a1 6b 59 14 09    	vmulsd xmm2,xmm2,QWORD PTR [rcx+r9*1]
  670159:	c5 db 58 e2          	vaddsd xmm4,xmm4,xmm2
  67015d:	c5 db 59 a5 38 e6 ff 	vmulsd xmm4,xmm4,QWORD PTR [rbp-0x19c8]
  670164:	ff 
  670165:	c5 c3 59 d4          	vmulsd xmm2,xmm7,xmm4
  670169:	c5 eb 58 9d 88 f5 ff 	vaddsd xmm3,xmm2,QWORD PTR [rbp-0xa78]
  670170:	ff 
  670171:	c4 c1 7b 11 1c 03    	vmovsd QWORD PTR [r11+rax*1],xmm3
  670177:	0f 85 e0 00 00 00    	jne    67025d <gls_corstep_mod_mp_gls_corstep_tile_+0x8aed>
  67017d:	83 bd 20 f5 ff ff 00 	cmp    DWORD PTR [rbp-0xae0],0x0
  670184:	0f 8e ac 01 00 00    	jle    670336 <gls_corstep_mod_mp_gls_corstep_tile_+0x8bc6>
  67018a:	48 83 bd 20 fb ff ff 	cmp    QWORD PTR [rbp-0x4e0],0x4
  670191:	04 
  670192:	0f 8c 0a 05 00 00    	jl     6706a2 <gls_corstep_mod_mp_gls_corstep_tile_+0x8f32>
  670198:	c5 db 59 d9          	vmulsd xmm3,xmm4,xmm1
  67019c:	33 c9                	xor    ecx,ecx
  67019e:	48 8b 95 08 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x4f8]
  6701a5:	45 33 c9             	xor    r9d,r9d
  6701a8:	48 8b 85 f8 fa ff ff 	mov    rax,QWORD PTR [rbp-0x508]
  6701af:	4c 8b 95 f0 fa ff ff 	mov    r10,QWORD PTR [rbp-0x510]
  6701b6:	4c 89 d6             	mov    rsi,r10
  6701b9:	48 8b bd 88 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x578]
  6701c0:	49 03 d5             	add    rdx,r13
  6701c3:	4c 8b 85 18 fb ff ff 	mov    r8,QWORD PTR [rbp-0x4e8]
  6701ca:	49 03 c5             	add    rax,r13
  6701cd:	c5 fb 12 db          	vmovddup xmm3,xmm3
  6701d1:	c5 e1 58 2c cf       	vaddpd xmm5,xmm3,XMMWORD PTR [rdi+rcx*8]
  6701d6:	c5 e1 58 7c cf 10    	vaddpd xmm7,xmm3,XMMWORD PTR [rdi+rcx*8+0x10]
  6701dc:	48 83 c1 04          	add    rcx,0x4
  6701e0:	4d 8d 1c 01          	lea    r11,[r9+rax*1]
  6701e4:	c4 c1 7b 11 2b       	vmovsd QWORD PTR [r11],xmm5
  6701e9:	c4 81 79 17 2c 18    	vmovhpd QWORD PTR [r8+r11*1],xmm5
  6701ef:	4d 8d 1c 11          	lea    r11,[r9+rdx*1]
  6701f3:	c4 c1 7b 11 3b       	vmovsd QWORD PTR [r11],xmm7
  6701f8:	4f 8d 0c 81          	lea    r9,[r9+r8*4]
  6701fc:	c4 81 79 17 3c 18    	vmovhpd QWORD PTR [r8+r11*1],xmm7
  670202:	48 3b ce             	cmp    rcx,rsi
  670205:	72 ca                	jb     6701d1 <gls_corstep_mod_mp_gls_corstep_tile_+0x8a61>
  670207:	48 8b 95 18 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x4e8]
  67020e:	49 0f af d2          	imul   rdx,r10
  670212:	4c 3b 95 20 fb ff ff 	cmp    r10,QWORD PTR [rbp-0x4e0]
  670219:	0f 83 17 01 00 00    	jae    670336 <gls_corstep_mod_mp_gls_corstep_tile_+0x8bc6>
  67021f:	48 8b 85 f8 fa ff ff 	mov    rax,QWORD PTR [rbp-0x508]
  670226:	48 8b 8d 20 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x4e0]
  67022d:	4c 8b 8d 88 fa ff ff 	mov    r9,QWORD PTR [rbp-0x578]
  670234:	4c 8b 9d 18 fb ff ff 	mov    r11,QWORD PTR [rbp-0x4e8]
  67023b:	49 03 c5             	add    rax,r13
  67023e:	c5 db 59 c9          	vmulsd xmm1,xmm4,xmm1
  670242:	c4 81 73 58 1c d1    	vaddsd xmm3,xmm1,QWORD PTR [r9+r10*8]
  670248:	49 ff c2             	inc    r10
  67024b:	c5 fb 11 1c 02       	vmovsd QWORD PTR [rdx+rax*1],xmm3
  670250:	49 03 d3             	add    rdx,r11
  670253:	4c 3b d1             	cmp    r10,rcx
  670256:	72 ea                	jb     670242 <gls_corstep_mod_mp_gls_corstep_tile_+0x8ad2>
  670258:	e9 d9 00 00 00       	jmp    670336 <gls_corstep_mod_mp_gls_corstep_tile_+0x8bc6>
  67025d:	83 bd 20 f5 ff ff 00 	cmp    DWORD PTR [rbp-0xae0],0x0
  670264:	0f 8e cc 00 00 00    	jle    670336 <gls_corstep_mod_mp_gls_corstep_tile_+0x8bc6>
  67026a:	48 83 bd 20 fb ff ff 	cmp    QWORD PTR [rbp-0x4e0],0x4
  670271:	04 
  670272:	0f 8c 32 04 00 00    	jl     6706aa <gls_corstep_mod_mp_gls_corstep_tile_+0x8f3a>
  670278:	c5 db 59 d9          	vmulsd xmm3,xmm4,xmm1
  67027c:	33 f6                	xor    esi,esi
  67027e:	48 8b 8d 10 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x4f0]
  670285:	48 8b 85 00 fb ff ff 	mov    rax,QWORD PTR [rbp-0x500]
  67028c:	4c 8b 95 f0 fa ff ff 	mov    r10,QWORD PTR [rbp-0x510]
  670293:	4c 89 d7             	mov    rdi,r10
  670296:	4c 8b 85 88 fa ff ff 	mov    r8,QWORD PTR [rbp-0x578]
  67029d:	49 03 cd             	add    rcx,r13
  6702a0:	4c 8b 8d 18 fb ff ff 	mov    r9,QWORD PTR [rbp-0x4e8]
  6702a7:	4a 8d 14 28          	lea    rdx,[rax+r13*1]
  6702ab:	c5 fb 12 db          	vmovddup xmm3,xmm3
  6702af:	33 c0                	xor    eax,eax
  6702b1:	c4 c1 61 58 2c f0    	vaddpd xmm5,xmm3,XMMWORD PTR [r8+rsi*8]
  6702b7:	c4 c1 61 58 7c f0 10 	vaddpd xmm7,xmm3,XMMWORD PTR [r8+rsi*8+0x10]
  6702be:	48 83 c6 04          	add    rsi,0x4
  6702c2:	4c 8d 1c 08          	lea    r11,[rax+rcx*1]
  6702c6:	c4 c1 7b 11 2b       	vmovsd QWORD PTR [r11],xmm5
  6702cb:	c4 81 79 17 2c 19    	vmovhpd QWORD PTR [r9+r11*1],xmm5
  6702d1:	4c 8d 1c 10          	lea    r11,[rax+rdx*1]
  6702d5:	c4 c1 7b 11 3b       	vmovsd QWORD PTR [r11],xmm7
  6702da:	4a 8d 04 88          	lea    rax,[rax+r9*4]
  6702de:	c4 81 79 17 3c 19    	vmovhpd QWORD PTR [r9+r11*1],xmm7
  6702e4:	48 3b f7             	cmp    rsi,rdi
  6702e7:	72 c8                	jb     6702b1 <gls_corstep_mod_mp_gls_corstep_tile_+0x8b41>
  6702e9:	48 8b 95 18 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x4e8]
  6702f0:	49 0f af d2          	imul   rdx,r10
  6702f4:	4c 3b 95 20 fb ff ff 	cmp    r10,QWORD PTR [rbp-0x4e0]
  6702fb:	73 39                	jae    670336 <gls_corstep_mod_mp_gls_corstep_tile_+0x8bc6>
  6702fd:	48 8b 85 10 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4f0]
  670304:	48 8b 8d 20 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x4e0]
  67030b:	4c 8b 8d 88 fa ff ff 	mov    r9,QWORD PTR [rbp-0x578]
  670312:	4c 8b 9d 18 fb ff ff 	mov    r11,QWORD PTR [rbp-0x4e8]
  670319:	49 03 c5             	add    rax,r13
  67031c:	c5 db 59 c9          	vmulsd xmm1,xmm4,xmm1
  670320:	c4 81 73 58 1c d1    	vaddsd xmm3,xmm1,QWORD PTR [r9+r10*8]
  670326:	49 ff c2             	inc    r10
  670329:	c5 fb 11 1c 02       	vmovsd QWORD PTR [rdx+rax*1],xmm3
  67032e:	49 03 d3             	add    rdx,r11
  670331:	4c 3b d1             	cmp    r10,rcx
  670334:	72 ea                	jb     670320 <gls_corstep_mod_mp_gls_corstep_tile_+0x8bb0>
  670336:	c5 eb 5e 85 a8 fd ff 	vdivsd xmm0,xmm2,QWORD PTR [rbp-0x258]
  67033d:	ff 
  67033e:	c5 eb 59 95 a8 fc ff 	vmulsd xmm2,xmm2,QWORD PTR [rbp-0x358]
  670345:	ff 
  670346:	c5 fb 58 8d a0 fd ff 	vaddsd xmm1,xmm0,QWORD PTR [rbp-0x260]
  67034d:	ff 
  67034e:	c5 eb 58 9d b0 fd ff 	vaddsd xmm3,xmm2,QWORD PTR [rbp-0x250]
  670355:	ff 
  670356:	48 8b 85 b8 fe ff ff 	mov    rax,QWORD PTR [rbp-0x148]
  67035d:	48 8b 95 a0 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x160]
  670364:	48 8b 8d 88 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x178]
  67036b:	4c 8b 95 b0 fe ff ff 	mov    r10,QWORD PTR [rbp-0x150]
  670372:	4c 8b 8d 90 fe ff ff 	mov    r9,QWORD PTR [rbp-0x170]
  670379:	4c 8b 9d a8 fe ff ff 	mov    r11,QWORD PTR [rbp-0x158]
  670380:	c5 fb 11 34 10       	vmovsd QWORD PTR [rax+rdx*1],xmm6
  670385:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  67038c:	c4 c1 7b 11 0c 0a    	vmovsd QWORD PTR [r10+rcx*1],xmm1
  670392:	48 ff c0             	inc    rax
  670395:	c4 81 7b 11 1c 0b    	vmovsd QWORD PTR [r11+r9*1],xmm3
  67039b:	4c 03 95 30 fd ff ff 	add    r10,QWORD PTR [rbp-0x2d0]
  6703a2:	4c 03 9d 38 fd ff ff 	add    r11,QWORD PTR [rbp-0x2c8]
  6703a9:	4c 03 ad 20 fd ff ff 	add    r13,QWORD PTR [rbp-0x2e0]
  6703b0:	4c 03 bd 48 fd ff ff 	add    r15,QWORD PTR [rbp-0x2b8]
  6703b7:	4c 03 b5 58 fd ff ff 	add    r14,QWORD PTR [rbp-0x2a8]
  6703be:	4c 03 a5 c0 fc ff ff 	add    r12,QWORD PTR [rbp-0x340]
  6703c5:	48 89 85 98 fe ff ff 	mov    QWORD PTR [rbp-0x168],rax
  6703cc:	4c 89 95 b0 fe ff ff 	mov    QWORD PTR [rbp-0x150],r10
  6703d3:	4c 89 9d a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],r11
  6703da:	48 3b 85 d8 fc ff ff 	cmp    rax,QWORD PTR [rbp-0x328]
  6703e1:	0f 82 65 fa ff ff    	jb     66fe4c <gls_corstep_mod_mp_gls_corstep_tile_+0x86dc>
  6703e7:	4c 8b ad 90 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xb70]
  6703ee:	4c 8b a5 78 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb88]
  6703f5:	eb 48                	jmp    67043f <gls_corstep_mod_mp_gls_corstep_tile_+0x8ccf>
  6703f7:	48 8b 85 28 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2d8]
  6703fe:	48 8b 95 68 f2 ff ff 	mov    rdx,QWORD PTR [rbp-0xd98]
  670405:	48 8b 8d 70 f2 ff ff 	mov    rcx,QWORD PTR [rbp-0xd90]
  67040c:	48 8b b5 10 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xaf0]
  670413:	49 0f af c5          	imul   rax,r13
  670417:	49 0f af d5          	imul   rdx,r13
  67041b:	49 0f af cd          	imul   rcx,r13
  67041f:	49 0f af f5          	imul   rsi,r13
  670423:	48 89 85 80 f5 ff ff 	mov    QWORD PTR [rbp-0xa80],rax
  67042a:	48 89 95 b0 f5 ff ff 	mov    QWORD PTR [rbp-0xa50],rdx
  670431:	48 89 8d a0 f5 ff ff 	mov    QWORD PTR [rbp-0xa60],rcx
  670438:	48 89 b5 a8 f5 ff ff 	mov    QWORD PTR [rbp-0xa58],rsi
  67043f:	48 8b 85 78 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa88]
  670446:	48 8b b5 80 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xa80]
  67044d:	48 8b 8d b8 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xa48]
  670454:	48 8b 95 48 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xab8]
  67045b:	48 8b bd c0 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xa40]
  670462:	c5 fb 10 1c 30       	vmovsd xmm3,QWORD PTR [rax+rsi*1]
  670467:	c5 7b 10 14 31       	vmovsd xmm10,QWORD PTR [rcx+rsi*1]
  67046c:	c5 fb 10 85 d8 f4 ff 	vmovsd xmm0,QWORD PTR [rbp-0xb28]
  670473:	ff 
  670474:	c5 fb 10 b5 58 f5 ff 	vmovsd xmm6,QWORD PTR [rbp-0xaa8]
  67047b:	ff 
  67047c:	c5 e3 51 db          	vsqrtsd xmm3,xmm3,xmm3
  670480:	c4 41 2b 51 d2       	vsqrtsd xmm10,xmm10,xmm10
  670485:	c4 a1 7b 59 0c ea    	vmulsd xmm1,xmm0,QWORD PTR [rdx+r13*8]
  67048b:	c4 a1 4b 59 3c ef    	vmulsd xmm7,xmm6,QWORD PTR [rdi+r13*8]
  670491:	c5 7b 10 85 90 f5 ff 	vmovsd xmm8,QWORD PTR [rbp-0xa70]
  670498:	ff 
  670499:	c4 c1 73 59 d0       	vmulsd xmm2,xmm1,xmm8
  67049e:	c4 41 43 59 c8       	vmulsd xmm9,xmm7,xmm8
  6704a3:	c5 eb 59 e3          	vmulsd xmm4,xmm2,xmm3
  6704a7:	c4 41 33 59 e2       	vmulsd xmm12,xmm9,xmm10
  6704ac:	c5 7b 10 9d 88 f5 ff 	vmovsd xmm11,QWORD PTR [rbp-0xa78]
  6704b3:	ff 
  6704b4:	4c 8b 8d e0 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xa20]
  6704bb:	c5 a3 58 ec          	vaddsd xmm5,xmm11,xmm4
  6704bf:	c4 c1 23 58 dc       	vaddsd xmm3,xmm11,xmm12
  6704c4:	4c 8b 95 b0 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xa50]
  6704cb:	4c 8b 85 c8 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xa38]
  6704d2:	c5 fb 10 85 a8 fd ff 	vmovsd xmm0,QWORD PTR [rbp-0x258]
  6704d9:	ff 
  6704da:	c4 81 7b 11 2c 11    	vmovsd QWORD PTR [r9+r10*1],xmm5
  6704e0:	c4 81 7b 11 1c 10    	vmovsd QWORD PTR [r8+r10*1],xmm3
  6704e6:	c4 01 7b 10 3c 11    	vmovsd xmm15,QWORD PTR [r9+r10*1]
  6704ec:	c5 03 5e e8          	vdivsd xmm13,xmm15,xmm0
  6704f0:	c5 fb 10 8d a0 fd ff 	vmovsd xmm1,QWORD PTR [rbp-0x260]
  6704f7:	ff 
  6704f8:	c5 e3 5e ad 98 f5 ff 	vdivsd xmm5,xmm3,QWORD PTR [rbp-0xa68]
  6704ff:	ff 
  670500:	4c 8b 9d 70 f5 ff ff 	mov    r11,QWORD PTR [rbp-0xa90]
  670507:	c4 41 73 58 f5       	vaddsd xmm14,xmm1,xmm13
  67050c:	c5 03 59 ad a8 fc ff 	vmulsd xmm13,xmm15,QWORD PTR [rbp-0x358]
  670513:	ff 
  670514:	c5 63 5e f8          	vdivsd xmm15,xmm3,xmm0
  670518:	48 8b 85 a0 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa60]
  67051f:	c4 c1 73 58 d7       	vaddsd xmm2,xmm1,xmm15
  670524:	c5 fb 10 a5 b0 fd ff 	vmovsd xmm4,QWORD PTR [rbp-0x250]
  67052b:	ff 
  67052c:	c4 41 7b 11 34 03    	vmovsd QWORD PTR [r11+rax*1],xmm14
  670532:	c4 41 5b 58 f5       	vaddsd xmm14,xmm4,xmm13
  670537:	c5 db 58 f5          	vaddsd xmm6,xmm4,xmm5
  67053b:	4c 8b b5 68 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xa98]
  670542:	48 8b 95 a8 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa58]
  670549:	4c 8b bd d0 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa30]
  670550:	83 bd 20 f5 ff ff 00 	cmp    DWORD PTR [rbp-0xae0],0x0
  670557:	c4 41 7b 11 34 16    	vmovsd QWORD PTR [r14+rdx*1],xmm14
  67055d:	4c 8b b5 d8 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xa28]
  670564:	c4 c1 7b 11 14 07    	vmovsd QWORD PTR [r15+rax*1],xmm2
  67056a:	c4 c1 7b 11 34 16    	vmovsd QWORD PTR [r14+rdx*1],xmm6
  670570:	0f 8e cf 00 00 00    	jle    670645 <gls_corstep_mod_mp_gls_corstep_tile_+0x8ed5>
  670576:	33 ff                	xor    edi,edi
  670578:	ba 01 00 00 00       	mov    edx,0x1
  67057d:	33 c0                	xor    eax,eax
  67057f:	33 f6                	xor    esi,esi
  670581:	83 bd f8 f4 ff ff 00 	cmp    DWORD PTR [rbp-0xb08],0x0
  670588:	74 71                	je     6705fb <gls_corstep_mod_mp_gls_corstep_tile_+0x8e8b>
  67058a:	4c 8b b5 78 f2 ff ff 	mov    r14,QWORD PTR [rbp-0xd88]
  670591:	4d 0f af f5          	imul   r14,r13
  670595:	48 8b 8d 48 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xcb8]
  67059c:	48 8b 95 30 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xcd0]
  6705a3:	4c 8b 85 c8 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xd38]
  6705aa:	4c 8b 8d 88 fa ff ff 	mov    r9,QWORD PTR [rbp-0x578]
  6705b1:	49 03 ce             	add    rcx,r14
  6705b4:	4c 8b 95 08 f2 ff ff 	mov    r10,QWORD PTR [rbp-0xdf8]
  6705bb:	49 03 d6             	add    rdx,r14
  6705be:	4c 8b 9d 18 fb ff ff 	mov    r11,QWORD PTR [rbp-0x4e8]
  6705c5:	4d 03 c6             	add    r8,r14
  6705c8:	4c 03 b5 28 f3 ff ff 	add    r14,QWORD PTR [rbp-0xcd8]
  6705cf:	4e 8b 3c 08          	mov    r15,QWORD PTR [rax+r9*1]
  6705d3:	48 ff c7             	inc    rdi
  6705d6:	4c 89 3c 71          	mov    QWORD PTR [rcx+rsi*2],r15
  6705da:	4c 89 3c 72          	mov    QWORD PTR [rdx+rsi*2],r15
  6705de:	4e 8b 7c 08 08       	mov    r15,QWORD PTR [rax+r9*1+0x8]
  6705e3:	48 83 c0 10          	add    rax,0x10
  6705e7:	4d 89 3c 70          	mov    QWORD PTR [r8+rsi*2],r15
  6705eb:	4d 89 3c 76          	mov    QWORD PTR [r14+rsi*2],r15
  6705ef:	49 03 f3             	add    rsi,r11
  6705f2:	49 3b fa             	cmp    rdi,r10
  6705f5:	72 d8                	jb     6705cf <gls_corstep_mod_mp_gls_corstep_tile_+0x8e5f>
  6705f7:	8d 54 3f 01          	lea    edx,[rdi+rdi*1+0x1]
  6705fb:	8d 42 ff             	lea    eax,[rdx-0x1]
  6705fe:	3b 85 20 f5 ff ff    	cmp    eax,DWORD PTR [rbp-0xae0]
  670604:	73 3f                	jae    670645 <gls_corstep_mod_mp_gls_corstep_tile_+0x8ed5>
  670606:	48 63 d2             	movsxd rdx,edx
  670609:	4c 8b 85 18 fb ff ff 	mov    r8,QWORD PTR [rbp-0x4e8]
  670610:	4c 0f af c2          	imul   r8,rdx
  670614:	4c 8b 8d 78 f2 ff ff 	mov    r9,QWORD PTR [rbp-0xd88]
  67061b:	4d 0f af cd          	imul   r9,r13
  67061f:	48 8b 8d 40 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xcc0]
  670626:	48 8b 85 88 fa ff ff 	mov    rax,QWORD PTR [rbp-0x578]
  67062d:	4a 8d 34 01          	lea    rsi,[rcx+r8*1]
  670631:	4c 03 85 38 f3 ff ff 	add    r8,QWORD PTR [rbp-0xcc8]
  670638:	48 8b 7c d0 f8       	mov    rdi,QWORD PTR [rax+rdx*8-0x8]
  67063d:	4a 89 3c 0e          	mov    QWORD PTR [rsi+r9*1],rdi
  670641:	4b 89 3c 08          	mov    QWORD PTR [r8+r9*1],rdi
  670645:	49 ff c5             	inc    r13
  670648:	4c 3b ad 50 fd ff ff 	cmp    r13,QWORD PTR [rbp-0x2b0]
  67064f:	0f 82 72 eb ff ff    	jb     66f1c7 <gls_corstep_mod_mp_gls_corstep_tile_+0x7a57>
  670655:	48 8b 85 68 e8 ff ff 	mov    rax,QWORD PTR [rbp-0x1798]
  67065c:	48 8b 95 60 e8 ff ff 	mov    rdx,QWORD PTR [rbp-0x17a0]
  670663:	48 8b b5 70 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x1390]
  67066a:	48 ff c6             	inc    rsi
  67066d:	48 03 85 50 ec ff ff 	add    rax,QWORD PTR [rbp-0x13b0]
  670674:	48 03 95 58 ec ff ff 	add    rdx,QWORD PTR [rbp-0x13a8]
  67067b:	48 89 85 68 e8 ff ff 	mov    QWORD PTR [rbp-0x1798],rax
  670682:	48 89 95 60 e8 ff ff 	mov    QWORD PTR [rbp-0x17a0],rdx
  670689:	48 3b b5 58 e8 ff ff 	cmp    rsi,QWORD PTR [rbp-0x17a8]
  670690:	0f 82 3a d6 ff ff    	jb     66dcd0 <gls_corstep_mod_mp_gls_corstep_tile_+0x6560>
  670696:	e9 60 ba ff ff       	jmp    66c0fb <gls_corstep_mod_mp_gls_corstep_tile_+0x498b>
  67069b:	33 ff                	xor    edi,edi
  67069d:	e9 88 f0 ff ff       	jmp    66f72a <gls_corstep_mod_mp_gls_corstep_tile_+0x7fba>
  6706a2:	45 33 d2             	xor    r10d,r10d
  6706a5:	e9 5d fb ff ff       	jmp    670207 <gls_corstep_mod_mp_gls_corstep_tile_+0x8a97>
  6706aa:	45 33 d2             	xor    r10d,r10d
  6706ad:	e9 37 fc ff ff       	jmp    6702e9 <gls_corstep_mod_mp_gls_corstep_tile_+0x8b79>
  6706b2:	33 ff                	xor    edi,edi
  6706b4:	e9 be f4 ff ff       	jmp    66fb77 <gls_corstep_mod_mp_gls_corstep_tile_+0x8407>
  6706b9:	33 c0                	xor    eax,eax
  6706bb:	e9 d1 ec ff ff       	jmp    66f391 <gls_corstep_mod_mp_gls_corstep_tile_+0x7c21>
  6706c0:	48 8b 8d 28 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2d8]
  6706c7:	33 c0                	xor    eax,eax
  6706c9:	49 0f af cd          	imul   rcx,r13
  6706cd:	48 8b 95 20 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xce0]
  6706d4:	48 89 8d 80 f5 ff ff 	mov    QWORD PTR [rbp-0xa80],rcx
  6706db:	48 8d 34 0a          	lea    rsi,[rdx+rcx*1]
  6706df:	48 89 b5 d8 fd ff ff 	mov    QWORD PTR [rbp-0x228],rsi
  6706e6:	e9 a6 ec ff ff       	jmp    66f391 <gls_corstep_mod_mp_gls_corstep_tile_+0x7c21>
  6706eb:	33 f6                	xor    esi,esi
  6706ed:	e9 9f eb ff ff       	jmp    66f291 <gls_corstep_mod_mp_gls_corstep_tile_+0x7b21>
  6706f2:	33 c0                	xor    eax,eax
  6706f4:	e9 8b e6 ff ff       	jmp    66ed84 <gls_corstep_mod_mp_gls_corstep_tile_+0x7614>
  6706f9:	48 8b 85 40 f2 ff ff 	mov    rax,QWORD PTR [rbp-0xdc0]
  670700:	48 8b b5 78 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb88]
  670707:	48 8b 8d 90 f2 ff ff 	mov    rcx,QWORD PTR [rbp-0xd70]
  67070e:	48 8b 95 30 f2 ff ff 	mov    rdx,QWORD PTR [rbp-0xdd0]
  670715:	c5 fb 10 0c f0       	vmovsd xmm1,QWORD PTR [rax+rsi*8]
  67071a:	c5 fb 10 44 f1 f8    	vmovsd xmm0,QWORD PTR [rcx+rsi*8-0x8]
  670720:	c5 fb 11 8d a8 f8 ff 	vmovsd QWORD PTR [rbp-0x758],xmm1
  670727:	ff 
  670728:	c5 fb 10 0c f2       	vmovsd xmm1,QWORD PTR [rdx+rsi*8]
  67072d:	c5 fb 11 85 38 e7 ff 	vmovsd QWORD PTR [rbp-0x18c8],xmm0
  670734:	ff 
  670735:	48 83 bd b0 fb ff ff 	cmp    QWORD PTR [rbp-0x450],0x0
  67073c:	00 
  67073d:	0f 84 3c 41 00 00    	je     67487f <gls_corstep_mod_mp_gls_corstep_tile_+0xd10f>
  670743:	4c 8b ad 50 ec ff ff 	mov    r13,QWORD PTR [rbp-0x13b0]
  67074a:	4c 0f af ad 70 ec ff 	imul   r13,QWORD PTR [rbp-0x1390]
  670751:	ff 
  670752:	48 83 bd 50 fd ff ff 	cmp    QWORD PTR [rbp-0x2b0],0x4
  670759:	04 
  67075a:	0f 8c 17 41 00 00    	jl     674877 <gls_corstep_mod_mp_gls_corstep_tile_+0xd107>
  670760:	48 8b bd 58 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2a8]
  670767:	48 89 fe             	mov    rsi,rdi
  67076a:	48 8b 95 d8 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x328]
  670771:	48 8b 85 78 eb ff ff 	mov    rax,QWORD PTR [rbp-0x1488]
  670778:	48 0f af f2          	imul   rsi,rdx
  67077c:	48 0f af f8          	imul   rdi,rax
  670780:	c5 f3 5c 15 f8 b9 1d 	vsubsd xmm2,xmm1,QWORD PTR [rip+0x1db9f8]        # 84c180 <__STRLITPACK_0.112+0x70>
  670787:	00 
  670788:	4c 8b bd 58 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13a8]
  67078f:	48 8b 8d 70 ec ff ff 	mov    rcx,QWORD PTR [rbp-0x1390]
  670796:	4c 0f af f9          	imul   r15,rcx
  67079a:	c4 e2 7d 19 da       	vbroadcastsd ymm3,xmm2
  67079f:	c5 f9 28 f8          	vmovapd xmm7,xmm0
  6707a3:	c5 43 59 85 78 e8 ff 	vmulsd xmm8,xmm7,QWORD PTR [rbp-0x1788]
  6707aa:	ff 
  6707ab:	4c 8b 85 20 ea ff ff 	mov    r8,QWORD PTR [rbp-0x15e0]
  6707b2:	49 03 f0             	add    rsi,r8
  6707b5:	49 03 f8             	add    rdi,r8
  6707b8:	48 f7 de             	neg    rsi
  6707bb:	48 f7 df             	neg    rdi
  6707be:	4c 8b 8d 10 e9 ff ff 	mov    r9,QWORD PTR [rbp-0x16f0]
  6707c5:	49 03 f1             	add    rsi,r9
  6707c8:	49 03 f9             	add    rdi,r9
  6707cb:	48 f7 de             	neg    rsi
  6707ce:	4c 8b 9d 28 e9 ff ff 	mov    r11,QWORD PTR [rbp-0x16d8]
  6707d5:	48 f7 df             	neg    rdi
  6707d8:	4c 8b 95 e0 e8 ff ff 	mov    r10,QWORD PTR [rbp-0x1720]
  6707df:	49 03 f2             	add    rsi,r10
  6707e2:	49 03 fa             	add    rdi,r10
  6707e5:	49 89 d2             	mov    r10,rdx
  6707e8:	4c 8b 85 c8 e8 ff ff 	mov    r8,QWORD PTR [rbp-0x1738]
  6707ef:	4f 8d 34 3b          	lea    r14,[r11+r15*1]
  6707f3:	4c 8b 9d 60 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2a0]
  6707fa:	49 03 f7             	add    rsi,r15
  6707fd:	4d 0f af d3          	imul   r10,r11
  670801:	4c 0f af d9          	imul   r11,rcx
  670805:	c4 42 7d 19 c8       	vbroadcastsd ymm9,xmm8
  67080a:	4c 89 b5 80 f9 ff ff 	mov    QWORD PTR [rbp-0x680],r14
  670811:	4f 8d 0c 10          	lea    r9,[r8+r10*1]
  670815:	4c 89 8d a0 f9 ff ff 	mov    QWORD PTR [rbp-0x660],r9
  67081c:	49 03 ff             	add    rdi,r15
  67081f:	4c 8b 8d 38 fd ff ff 	mov    r9,QWORD PTR [rbp-0x2c8]
  670826:	4d 89 c8             	mov    r8,r9
  670829:	4c 0f af c0          	imul   r8,rax
  67082d:	4c 0f af ca          	imul   r9,rdx
  670831:	c5 7d 11 8d 70 ee ff 	vmovupd YMMWORD PTR [rbp-0x1190],ymm9
  670838:	ff 
  670839:	4c 8b b5 b0 e9 ff ff 	mov    r14,QWORD PTR [rbp-0x1650]
  670840:	4c 0f af f1          	imul   r14,rcx
  670844:	48 89 b5 60 fa ff ff 	mov    QWORD PTR [rbp-0x5a0],rsi
  67084b:	48 8b b5 c0 e8 ff ff 	mov    rsi,QWORD PTR [rbp-0x1740]
  670852:	48 89 bd 68 fa ff ff 	mov    QWORD PTR [rbp-0x598],rdi
  670859:	48 8b 85 38 ea ff ff 	mov    rax,QWORD PTR [rbp-0x15c8]
  670860:	4c 03 c0             	add    r8,rax
  670863:	4c 03 c8             	add    r9,rax
  670866:	4a 8d 3c 16          	lea    rdi,[rsi+r10*1]
  67086a:	48 8b b5 58 e9 ff ff 	mov    rsi,QWORD PTR [rbp-0x16a8]
  670871:	48 89 bd 90 f9 ff ff 	mov    QWORD PTR [rbp-0x670],rdi
  670878:	48 8b 95 b8 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x1448]
  67087f:	4c 03 95 d0 e8 ff ff 	add    r10,QWORD PTR [rbp-0x1730]
  670886:	4a 8d 3c 36          	lea    rdi,[rsi+r14*1]
  67088a:	48 8b b5 60 e9 ff ff 	mov    rsi,QWORD PTR [rbp-0x16a0]
  670891:	4c 03 c6             	add    r8,rsi
  670894:	4c 03 ce             	add    r9,rsi
  670897:	4d 03 c6             	add    r8,r14
  67089a:	4d 03 ce             	add    r9,r14
  67089d:	4c 03 b5 d8 e7 ff ff 	add    r14,QWORD PTR [rbp-0x1828]
  6708a4:	4c 89 b5 70 fa ff ff 	mov    QWORD PTR [rbp-0x590],r14
  6708ab:	4c 8b b5 c0 e9 ff ff 	mov    r14,QWORD PTR [rbp-0x1640]
  6708b2:	4c 0f af f1          	imul   r14,rcx
  6708b6:	4c 03 9d 50 eb ff ff 	add    r11,QWORD PTR [rbp-0x14b0]
  6708bd:	4a 8d 0c 32          	lea    rcx,[rdx+r14*1]
  6708c1:	4c 8b a5 50 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xab0]
  6708c8:	4c 03 bd 40 ec ff ff 	add    r15,QWORD PTR [rbp-0x13c0]
  6708cf:	48 c7 85 40 e7 ff ff 	mov    QWORD PTR [rbp-0x18c0],0x0
  6708d6:	00 00 00 00 
  6708da:	4c 89 95 e8 f9 ff ff 	mov    QWORD PTR [rbp-0x618],r10
  6708e1:	4c 89 9d d0 f9 ff ff 	mov    QWORD PTR [rbp-0x630],r11
  6708e8:	48 89 bd b0 f9 ff ff 	mov    QWORD PTR [rbp-0x650],rdi
  6708ef:	4c 89 85 00 fa ff ff 	mov    QWORD PTR [rbp-0x600],r8
  6708f6:	4c 89 8d 50 fa ff ff 	mov    QWORD PTR [rbp-0x5b0],r9
  6708fd:	48 89 8d c8 f9 ff ff 	mov    QWORD PTR [rbp-0x638],rcx
  670904:	c4 e3 7d 19 dd 01    	vextractf128 xmm5,ymm3,0x1
  67090a:	c5 f9 70 e3 0e       	vpshufd xmm4,xmm3,0xe
  67090f:	c5 fb 11 9d f0 f9 ff 	vmovsd QWORD PTR [rbp-0x610],xmm3
  670916:	ff 
  670917:	c5 f9 70 f5 0e       	vpshufd xmm6,xmm5,0xe
  67091c:	c5 fb 11 a5 28 fa ff 	vmovsd QWORD PTR [rbp-0x5d8],xmm4
  670923:	ff 
  670924:	c5 fb 11 ad 18 fa ff 	vmovsd QWORD PTR [rbp-0x5e8],xmm5
  67092b:	ff 
  67092c:	c5 fb 11 b5 08 fa ff 	vmovsd QWORD PTR [rbp-0x5f8],xmm6
  670933:	ff 
  670934:	c5 f8 77             	vzeroupper 
  670937:	c5 fb 10 85 d8 f4 ff 	vmovsd xmm0,QWORD PTR [rbp-0xb28]
  67093e:	ff 
  67093f:	c5 fb 11 8d 30 e7 ff 	vmovsd QWORD PTR [rbp-0x18d0],xmm1
  670946:	ff 
  670947:	e8 f4 ef e4 ff       	call   4bf940 <pow>
  67094c:	48 8b 85 58 ea ff ff 	mov    rax,QWORD PTR [rbp-0x15a8]
  670953:	48 8b 95 78 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb88]
  67095a:	48 8b bd 48 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2b8]
  670961:	48 0f af bd d8 fc ff 	imul   rdi,QWORD PTR [rbp-0x328]
  670968:	ff 
  670969:	c4 e2 7d 19 a5 a8 f8 	vbroadcastsd ymm4,QWORD PTR [rbp-0x758]
  670970:	ff ff 
  670972:	c5 fb 10 95 38 e7 ff 	vmovsd xmm2,QWORD PTR [rbp-0x18c8]
  670979:	ff 
  67097a:	c5 fb 10 8d 30 e7 ff 	vmovsd xmm1,QWORD PTR [rbp-0x18d0]
  670981:	ff 
  670982:	c5 eb 59 9d 70 e8 ff 	vmulsd xmm3,xmm2,QWORD PTR [rbp-0x1790]
  670989:	ff 
  67098a:	c4 e2 7d 19 c0       	vbroadcastsd ymm0,xmm0
  67098f:	c4 e2 7d 19 d3       	vbroadcastsd ymm2,xmm3
  670994:	c5 fd 11 85 10 ee ff 	vmovupd YMMWORD PTR [rbp-0x11f0],ymm0
  67099b:	ff 
  67099c:	c5 fd 11 95 f0 ed ff 	vmovupd YMMWORD PTR [rbp-0x1210],ymm2
  6709a3:	ff 
  6709a4:	48 63 0c 90          	movsxd rcx,DWORD PTR [rax+rdx*4]
  6709a8:	48 0f af 8d 40 fd ff 	imul   rcx,QWORD PTR [rbp-0x2c0]
  6709af:	ff 
  6709b0:	48 03 8d 30 ea ff ff 	add    rcx,QWORD PTR [rbp-0x15d0]
  6709b7:	48 03 bd 40 eb ff ff 	add    rdi,QWORD PTR [rbp-0x14c0]
  6709be:	48 03 8d e0 eb ff ff 	add    rcx,QWORD PTR [rbp-0x1420]
  6709c5:	48 f7 df             	neg    rdi
  6709c8:	48 03 8d a8 e7 ff ff 	add    rcx,QWORD PTR [rbp-0x1858]
  6709cf:	48 03 bd 48 e9 ff ff 	add    rdi,QWORD PTR [rbp-0x16b8]
  6709d6:	4c 03 f1             	add    r14,rcx
  6709d9:	48 8b b5 b0 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x450]
  6709e0:	33 c9                	xor    ecx,ecx
  6709e2:	48 f7 df             	neg    rdi
  6709e5:	48 03 bd f8 e8 ff ff 	add    rdi,QWORD PTR [rbp-0x1708]
  6709ec:	49 03 fd             	add    rdi,r13
  6709ef:	48 8d 34 76          	lea    rsi,[rsi+rsi*2]
  6709f3:	4c 89 b5 e0 f8 ff ff 	mov    QWORD PTR [rbp-0x720],r14
  6709fa:	4c 89 ad 20 e7 ff ff 	mov    QWORD PTR [rbp-0x18e0],r13
  670a01:	49 89 cd             	mov    r13,rcx
  670a04:	4c 89 a5 28 e7 ff ff 	mov    QWORD PTR [rbp-0x18d8],r12
  670a0b:	49 89 cc             	mov    r12,rcx
  670a0e:	48 89 b5 d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rsi
  670a15:	48 89 bd 48 f9 ff ff 	mov    QWORD PTR [rbp-0x6b8],rdi
  670a1c:	4c 89 bd d0 f8 ff ff 	mov    QWORD PTR [rbp-0x730],r15
  670a23:	49 89 cf             	mov    r15,rcx
  670a26:	4c 8b b5 40 e7 ff ff 	mov    r14,QWORD PTR [rbp-0x18c0]
  670a2d:	c4 e3 7d 19 e6 01    	vextractf128 xmm6,ymm4,0x1
  670a33:	c5 f9 70 ec 0e       	vpshufd xmm5,xmm4,0xe
  670a38:	c5 fb 11 ad c8 f8 ff 	vmovsd QWORD PTR [rbp-0x738],xmm5
  670a3f:	ff 
  670a40:	c5 f9 70 fe 0e       	vpshufd xmm7,xmm6,0xe
  670a45:	c5 fb 11 bd c0 f8 ff 	vmovsd QWORD PTR [rbp-0x740],xmm7
  670a4c:	ff 
  670a4d:	c5 fb 11 b5 b8 f8 ff 	vmovsd QWORD PTR [rbp-0x748],xmm6
  670a54:	ff 
  670a55:	c5 fb 11 a5 b0 f8 ff 	vmovsd QWORD PTR [rbp-0x750],xmm4
  670a5c:	ff 
  670a5d:	48 8b b5 80 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x680]
  670a64:	4c 8b 8d d0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x730]
  670a6b:	4a 8d 3c 3e          	lea    rdi,[rsi+r15*1]
  670a6f:	48 8b b5 28 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x2d8]
  670a76:	c5 fb 10 17          	vmovsd xmm2,QWORD PTR [rdi]
  670a7a:	4f 8d 14 39          	lea    r10,[r9+r15*1]
  670a7e:	c4 c1 7b 10 32       	vmovsd xmm6,QWORD PTR [r10]
  670a83:	c5 e9 16 1c 37       	vmovhpd xmm3,xmm2,QWORD PTR [rdi+rsi*1]
  670a88:	4c 8d 04 77          	lea    r8,[rdi+rsi*2]
  670a8c:	c4 c1 7b 10 20       	vmovsd xmm4,QWORD PTR [r8]
  670a91:	4d 8d 1c 72          	lea    r11,[r10+rsi*2]
  670a95:	c4 41 7b 10 03       	vmovsd xmm8,QWORD PTR [r11]
  670a9a:	c4 c1 49 16 3c 32    	vmovhpd xmm7,xmm6,QWORD PTR [r10+rsi*1]
  670aa0:	c4 c1 59 16 2c 30    	vmovhpd xmm5,xmm4,QWORD PTR [r8+rsi*1]
  670aa6:	c4 41 39 16 0c 33    	vmovhpd xmm9,xmm8,QWORD PTR [r11+rsi*1]
  670aac:	c4 63 65 18 d5 01    	vinsertf128 ymm10,ymm3,xmm5,0x1
  670ab2:	c4 43 45 18 d9 01    	vinsertf128 ymm11,ymm7,xmm9,0x1
  670ab8:	c4 41 2d 58 e3       	vaddpd ymm12,ymm10,ymm11
  670abd:	c5 9d 59 05 bb 98 1d 	vmulpd ymm0,ymm12,YMMWORD PTR [rip+0x1d98bb]        # 84a380 <var$630.126.450+0x3e0>
  670ac4:	00 
  670ac5:	c4 e3 7d 19 85 70 ef 	vextractf128 XMMWORD PTR [rbp-0x1090],ymm0,0x1
  670acc:	ff ff 01 
  670acf:	c5 f8 28 d0          	vmovaps xmm2,xmm0
  670ad3:	c5 f9 28 c2          	vmovapd xmm0,xmm2
  670ad7:	c5 f8 77             	vzeroupper 
  670ada:	c5 fb 10 8d b0 f8 ff 	vmovsd xmm1,QWORD PTR [rbp-0x750]
  670ae1:	ff 
  670ae2:	c5 f8 11 95 b0 ef ff 	vmovups XMMWORD PTR [rbp-0x1050],xmm2
  670ae9:	ff 
  670aea:	e8 51 ee e4 ff       	call   4bf940 <pow>
  670aef:	c5 f8 10 95 b0 ef ff 	vmovups xmm2,XMMWORD PTR [rbp-0x1050]
  670af6:	ff 
  670af7:	c5 fb 11 85 f8 f8 ff 	vmovsd QWORD PTR [rbp-0x708],xmm0
  670afe:	ff 
  670aff:	c5 f9 70 c2 0e       	vpshufd xmm0,xmm2,0xe
  670b04:	c5 fb 10 8d c8 f8 ff 	vmovsd xmm1,QWORD PTR [rbp-0x738]
  670b0b:	ff 
  670b0c:	e8 2f ee e4 ff       	call   4bf940 <pow>
  670b11:	c5 fb 11 85 10 f9 ff 	vmovsd QWORD PTR [rbp-0x6f0],xmm0
  670b18:	ff 
  670b19:	c5 fb 10 85 70 ef ff 	vmovsd xmm0,QWORD PTR [rbp-0x1090]
  670b20:	ff 
  670b21:	c5 fb 10 8d b8 f8 ff 	vmovsd xmm1,QWORD PTR [rbp-0x748]
  670b28:	ff 
  670b29:	e8 12 ee e4 ff       	call   4bf940 <pow>
  670b2e:	c5 fb 11 85 40 f9 ff 	vmovsd QWORD PTR [rbp-0x6c0],xmm0
  670b35:	ff 
  670b36:	c5 f9 70 85 70 ef ff 	vpshufd xmm0,XMMWORD PTR [rbp-0x1090],0xe
  670b3d:	ff 0e 
  670b3f:	c5 fb 10 8d c0 f8 ff 	vmovsd xmm1,QWORD PTR [rbp-0x740]
  670b46:	ff 
  670b47:	e8 f4 ed e4 ff       	call   4bf940 <pow>
  670b4c:	48 8b b5 c8 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x638]
  670b53:	4c 8b 8d 18 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xae8]
  670b5a:	4c 8b 95 d0 f9 ff ff 	mov    r10,QWORD PTR [rbp-0x630]
  670b61:	c5 fb 10 9d 40 f9 ff 	vmovsd xmm3,QWORD PTR [rbp-0x6c0]
  670b68:	ff 
  670b69:	4a 8d 3c 2e          	lea    rdi,[rsi+r13*1]
  670b6d:	c5 fb 10 3f          	vmovsd xmm7,QWORD PTR [rdi]
  670b71:	4e 8d 04 4f          	lea    r8,[rdi+r9*2]
  670b75:	c4 41 7b 10 08       	vmovsd xmm9,QWORD PTR [r8]
  670b7a:	c4 21 41 16 04 0f    	vmovhpd xmm8,xmm7,QWORD PTR [rdi+r9*1]
  670b80:	c4 01 31 16 14 08    	vmovhpd xmm10,xmm9,QWORD PTR [r8+r9*1]
  670b86:	c5 fb 10 95 f8 f8 ff 	vmovsd xmm2,QWORD PTR [rbp-0x708]
  670b8d:	ff 
  670b8e:	c5 e1 14 e8          	vunpcklpd xmm5,xmm3,xmm0
  670b92:	c5 e9 16 a5 10 f9 ff 	vmovhpd xmm4,xmm2,QWORD PTR [rbp-0x6f0]
  670b99:	ff 
  670b9a:	c4 43 3d 18 da 01    	vinsertf128 ymm11,ymm8,xmm10,0x1
  670ba0:	c5 25 59 25 d8 97 1d 	vmulpd ymm12,ymm11,YMMWORD PTR [rip+0x1d97d8]        # 84a380 <var$630.126.450+0x3e0>
  670ba7:	00 
  670ba8:	c4 81 1d 58 04 f2    	vaddpd ymm0,ymm12,YMMWORD PTR [r10+r14*8]
  670bae:	c4 e3 7d 19 85 90 ef 	vextractf128 XMMWORD PTR [rbp-0x1070],ymm0,0x1
  670bb5:	ff ff 01 
  670bb8:	c4 e3 5d 18 f5 01    	vinsertf128 ymm6,ymm4,xmm5,0x1
  670bbe:	c5 fc 11 b5 50 ee ff 	vmovups YMMWORD PTR [rbp-0x11b0],ymm6
  670bc5:	ff 
  670bc6:	c5 f8 28 d0          	vmovaps xmm2,xmm0
  670bca:	c5 f9 28 c2          	vmovapd xmm0,xmm2
  670bce:	c5 f8 77             	vzeroupper 
  670bd1:	c5 fb 10 8d f0 f9 ff 	vmovsd xmm1,QWORD PTR [rbp-0x610]
  670bd8:	ff 
  670bd9:	c5 f8 11 95 c0 ef ff 	vmovups XMMWORD PTR [rbp-0x1040],xmm2
  670be0:	ff 
  670be1:	e8 5a ed e4 ff       	call   4bf940 <pow>
  670be6:	c5 f8 10 95 c0 ef ff 	vmovups xmm2,XMMWORD PTR [rbp-0x1040]
  670bed:	ff 
  670bee:	c5 fb 11 85 f0 f8 ff 	vmovsd QWORD PTR [rbp-0x710],xmm0
  670bf5:	ff 
  670bf6:	c5 f9 70 c2 0e       	vpshufd xmm0,xmm2,0xe
  670bfb:	c5 fb 10 8d 28 fa ff 	vmovsd xmm1,QWORD PTR [rbp-0x5d8]
  670c02:	ff 
  670c03:	e8 38 ed e4 ff       	call   4bf940 <pow>
  670c08:	c5 fb 11 85 30 f9 ff 	vmovsd QWORD PTR [rbp-0x6d0],xmm0
  670c0f:	ff 
  670c10:	c5 fb 10 85 90 ef ff 	vmovsd xmm0,QWORD PTR [rbp-0x1070]
  670c17:	ff 
  670c18:	c5 fb 10 8d 18 fa ff 	vmovsd xmm1,QWORD PTR [rbp-0x5e8]
  670c1f:	ff 
  670c20:	e8 1b ed e4 ff       	call   4bf940 <pow>
  670c25:	c5 fb 11 85 18 f9 ff 	vmovsd QWORD PTR [rbp-0x6e8],xmm0
  670c2c:	ff 
  670c2d:	c5 f9 70 85 90 ef ff 	vpshufd xmm0,XMMWORD PTR [rbp-0x1070],0xe
  670c34:	ff 0e 
  670c36:	c5 fb 10 8d 08 fa ff 	vmovsd xmm1,QWORD PTR [rbp-0x5f8]
  670c3d:	ff 
  670c3e:	e8 fd ec e4 ff       	call   4bf940 <pow>
  670c43:	c5 fc 10 bd 50 ee ff 	vmovups ymm7,YMMWORD PTR [rbp-0x11b0]
  670c4a:	ff 
  670c4b:	c5 fb 10 9d f0 f8 ff 	vmovsd xmm3,QWORD PTR [rbp-0x710]
  670c52:	ff 
  670c53:	c5 fb 10 a5 18 f9 ff 	vmovsd xmm4,QWORD PTR [rbp-0x6e8]
  670c5a:	ff 
  670c5b:	c5 e1 16 ad 30 f9 ff 	vmovhpd xmm5,xmm3,QWORD PTR [rbp-0x6d0]
  670c62:	ff 
  670c63:	c5 d9 14 f0          	vunpcklpd xmm6,xmm4,xmm0
  670c67:	c5 45 59 8d 70 ee ff 	vmulpd ymm9,ymm7,YMMWORD PTR [rbp-0x1190]
  670c6e:	ff 
  670c6f:	c5 fd 10 15 09 97 1d 	vmovupd ymm2,YMMWORD PTR [rip+0x1d9709]        # 84a380 <var$630.126.450+0x3e0>
  670c76:	00 
  670c77:	48 8b b5 b0 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x650]
  670c7e:	4c 8b 8d 70 fa ff ff 	mov    r9,QWORD PTR [rbp-0x590]
  670c85:	4a 8d 3c 26          	lea    rdi,[rsi+r12*1]
  670c89:	c4 63 55 18 c6 01    	vinsertf128 ymm8,ymm5,xmm6,0x1
  670c8f:	4f 8d 14 21          	lea    r10,[r9+r12*1]
  670c93:	48 8b b5 10 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xaf0]
  670c9a:	c4 41 3d 59 d1       	vmulpd ymm10,ymm8,ymm9
  670c9f:	c4 41 7b 10 3a       	vmovsd xmm15,QWORD PTR [r10]
  670ca4:	c5 7b 10 1f          	vmovsd xmm11,QWORD PTR [rdi]
  670ca8:	c4 c1 01 16 04 32    	vmovhpd xmm0,xmm15,QWORD PTR [r10+rsi*1]
  670cae:	c5 21 16 24 37       	vmovhpd xmm12,xmm11,QWORD PTR [rdi+rsi*1]
  670cb3:	c5 ad 59 ca          	vmulpd ymm1,ymm10,ymm2
  670cb7:	4c 8d 04 77          	lea    r8,[rdi+rsi*2]
  670cbb:	c4 41 7b 10 28       	vmovsd xmm13,QWORD PTR [r8]
  670cc0:	c4 41 11 16 34 30    	vmovhpd xmm14,xmm13,QWORD PTR [r8+rsi*1]
  670cc6:	48 8b bd 28 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2d8]
  670ccd:	4d 8d 1c 72          	lea    r11,[r10+rsi*2]
  670cd1:	c4 41 7b 10 3b       	vmovsd xmm15,QWORD PTR [r11]
  670cd6:	c4 41 01 16 1c 33    	vmovhpd xmm11,xmm15,QWORD PTR [r11+rsi*1]
  670cdc:	48 8b b5 38 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xac8]
  670ce3:	c4 43 1d 18 e6 01    	vinsertf128 ymm12,ymm12,xmm14,0x1
  670ce9:	c4 43 7d 18 eb 01    	vinsertf128 ymm13,ymm0,xmm11,0x1
  670cef:	c4 c1 1d 58 dd       	vaddpd ymm3,ymm12,ymm13
  670cf4:	c5 f5 59 e3          	vmulpd ymm4,ymm1,ymm3
  670cf8:	c4 a1 7d 11 24 f6    	vmovupd YMMWORD PTR [rsi+r14*8],ymm4
  670cfe:	48 8b b5 68 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x598]
  670d05:	49 03 f7             	add    rsi,r15
  670d08:	c5 fb 10 2e          	vmovsd xmm5,QWORD PTR [rsi]
  670d0c:	c5 d1 16 34 3e       	vmovhpd xmm6,xmm5,QWORD PTR [rsi+rdi*1]
  670d11:	48 8d 34 7e          	lea    rsi,[rsi+rdi*2]
  670d15:	c5 fb 10 3e          	vmovsd xmm7,QWORD PTR [rsi]
  670d19:	c5 41 16 04 3e       	vmovhpd xmm8,xmm7,QWORD PTR [rsi+rdi*1]
  670d1e:	48 8b b5 60 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5a0]
  670d25:	c4 c3 4d 18 c8 01    	vinsertf128 ymm1,ymm6,xmm8,0x1
  670d2b:	49 03 f7             	add    rsi,r15
  670d2e:	c5 7b 10 0e          	vmovsd xmm9,QWORD PTR [rsi]
  670d32:	c5 31 16 14 3e       	vmovhpd xmm10,xmm9,QWORD PTR [rsi+rdi*1]
  670d37:	48 8d 34 7e          	lea    rsi,[rsi+rdi*2]
  670d3b:	c5 7b 10 36          	vmovsd xmm14,QWORD PTR [rsi]
  670d3f:	c5 89 16 04 3e       	vmovhpd xmm0,xmm14,QWORD PTR [rsi+rdi*1]
  670d44:	c4 e3 2d 18 d8 01    	vinsertf128 ymm3,ymm10,xmm0,0x1
  670d4a:	c5 f5 58 e3          	vaddpd ymm4,ymm1,ymm3
  670d4e:	c5 ed 59 c4          	vmulpd ymm0,ymm2,ymm4
  670d52:	c4 e3 7d 19 85 80 ef 	vextractf128 XMMWORD PTR [rbp-0x1080],ymm0,0x1
  670d59:	ff ff 01 
  670d5c:	c5 f8 28 d0          	vmovaps xmm2,xmm0
  670d60:	c5 f9 28 c2          	vmovapd xmm0,xmm2
  670d64:	c5 f8 77             	vzeroupper 
  670d67:	c5 fb 10 8d b0 f8 ff 	vmovsd xmm1,QWORD PTR [rbp-0x750]
  670d6e:	ff 
  670d6f:	c5 f8 11 95 d0 ef ff 	vmovups XMMWORD PTR [rbp-0x1030],xmm2
  670d76:	ff 
  670d77:	e8 c4 eb e4 ff       	call   4bf940 <pow>
  670d7c:	c5 f8 10 95 d0 ef ff 	vmovups xmm2,XMMWORD PTR [rbp-0x1030]
  670d83:	ff 
  670d84:	c5 fb 11 85 00 f9 ff 	vmovsd QWORD PTR [rbp-0x700],xmm0
  670d8b:	ff 
  670d8c:	c5 f9 70 c2 0e       	vpshufd xmm0,xmm2,0xe
  670d91:	c5 fb 10 8d c8 f8 ff 	vmovsd xmm1,QWORD PTR [rbp-0x738]
  670d98:	ff 
  670d99:	e8 a2 eb e4 ff       	call   4bf940 <pow>
  670d9e:	c5 fb 11 85 08 f9 ff 	vmovsd QWORD PTR [rbp-0x6f8],xmm0
  670da5:	ff 
  670da6:	c5 fb 10 85 80 ef ff 	vmovsd xmm0,QWORD PTR [rbp-0x1080]
  670dad:	ff 
  670dae:	c5 fb 10 8d b8 f8 ff 	vmovsd xmm1,QWORD PTR [rbp-0x748]
  670db5:	ff 
  670db6:	e8 85 eb e4 ff       	call   4bf940 <pow>
  670dbb:	c5 fb 11 85 28 f9 ff 	vmovsd QWORD PTR [rbp-0x6d8],xmm0
  670dc2:	ff 
  670dc3:	c5 f9 70 85 80 ef ff 	vpshufd xmm0,XMMWORD PTR [rbp-0x1080],0xe
  670dca:	ff 0e 
  670dcc:	c5 fb 10 8d c0 f8 ff 	vmovsd xmm1,QWORD PTR [rbp-0x740]
  670dd3:	ff 
  670dd4:	e8 67 eb e4 ff       	call   4bf940 <pow>
  670dd9:	48 8b b5 e0 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x720]
  670de0:	4c 8b 8d 18 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xae8]
  670de7:	4c 8b 95 48 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xab8]
  670dee:	c5 fb 10 9d 28 f9 ff 	vmovsd xmm3,QWORD PTR [rbp-0x6d8]
  670df5:	ff 
  670df6:	4a 8d 3c 2e          	lea    rdi,[rsi+r13*1]
  670dfa:	c5 fb 10 3f          	vmovsd xmm7,QWORD PTR [rdi]
  670dfe:	4e 8d 04 4f          	lea    r8,[rdi+r9*2]
  670e02:	c4 41 7b 10 08       	vmovsd xmm9,QWORD PTR [r8]
  670e07:	c4 21 41 16 04 0f    	vmovhpd xmm8,xmm7,QWORD PTR [rdi+r9*1]
  670e0d:	c4 01 31 16 14 08    	vmovhpd xmm10,xmm9,QWORD PTR [r8+r9*1]
  670e13:	c5 fb 10 95 00 f9 ff 	vmovsd xmm2,QWORD PTR [rbp-0x700]
  670e1a:	ff 
  670e1b:	c5 e1 14 e8          	vunpcklpd xmm5,xmm3,xmm0
  670e1f:	c5 e9 16 a5 08 f9 ff 	vmovhpd xmm4,xmm2,QWORD PTR [rbp-0x6f8]
  670e26:	ff 
  670e27:	c4 43 3d 18 da 01    	vinsertf128 ymm11,ymm8,xmm10,0x1
  670e2d:	c5 25 59 25 4b 95 1d 	vmulpd ymm12,ymm11,YMMWORD PTR [rip+0x1d954b]        # 84a380 <var$630.126.450+0x3e0>
  670e34:	00 
  670e35:	c4 81 1d 58 04 f2    	vaddpd ymm0,ymm12,YMMWORD PTR [r10+r14*8]
  670e3b:	c4 e3 7d 19 85 a0 ef 	vextractf128 XMMWORD PTR [rbp-0x1060],ymm0,0x1
  670e42:	ff ff 01 
  670e45:	c4 e3 5d 18 f5 01    	vinsertf128 ymm6,ymm4,xmm5,0x1
  670e4b:	c5 fc 11 b5 30 ee ff 	vmovups YMMWORD PTR [rbp-0x11d0],ymm6
  670e52:	ff 
  670e53:	c5 f8 28 d0          	vmovaps xmm2,xmm0
  670e57:	c5 f9 28 c2          	vmovapd xmm0,xmm2
  670e5b:	c5 f8 77             	vzeroupper 
  670e5e:	c5 fb 10 8d f0 f9 ff 	vmovsd xmm1,QWORD PTR [rbp-0x610]
  670e65:	ff 
  670e66:	c5 f8 11 95 e0 ef ff 	vmovups XMMWORD PTR [rbp-0x1020],xmm2
  670e6d:	ff 
  670e6e:	e8 cd ea e4 ff       	call   4bf940 <pow>
  670e73:	c5 f8 10 95 e0 ef ff 	vmovups xmm2,XMMWORD PTR [rbp-0x1020]
  670e7a:	ff 
  670e7b:	c5 fb 11 85 e8 f8 ff 	vmovsd QWORD PTR [rbp-0x718],xmm0
  670e82:	ff 
  670e83:	c5 f9 70 c2 0e       	vpshufd xmm0,xmm2,0xe
  670e88:	c5 fb 10 8d 28 fa ff 	vmovsd xmm1,QWORD PTR [rbp-0x5d8]
  670e8f:	ff 
  670e90:	e8 ab ea e4 ff       	call   4bf940 <pow>
  670e95:	c5 fb 11 85 38 f9 ff 	vmovsd QWORD PTR [rbp-0x6c8],xmm0
  670e9c:	ff 
  670e9d:	c5 fb 10 85 a0 ef ff 	vmovsd xmm0,QWORD PTR [rbp-0x1060]
  670ea4:	ff 
  670ea5:	c5 fb 10 8d 18 fa ff 	vmovsd xmm1,QWORD PTR [rbp-0x5e8]
  670eac:	ff 
  670ead:	e8 8e ea e4 ff       	call   4bf940 <pow>
  670eb2:	c5 fb 11 85 20 f9 ff 	vmovsd QWORD PTR [rbp-0x6e0],xmm0
  670eb9:	ff 
  670eba:	c5 f9 70 85 a0 ef ff 	vpshufd xmm0,XMMWORD PTR [rbp-0x1060],0xe
  670ec1:	ff 0e 
  670ec3:	c5 fb 10 8d 08 fa ff 	vmovsd xmm1,QWORD PTR [rbp-0x5f8]
  670eca:	ff 
  670ecb:	e8 70 ea e4 ff       	call   4bf940 <pow>
  670ed0:	c5 fc 10 ad 30 ee ff 	vmovups ymm5,YMMWORD PTR [rbp-0x11d0]
  670ed7:	ff 
  670ed8:	c5 f9 28 c8          	vmovapd xmm1,xmm0
  670edc:	c5 fb 10 85 e8 f8 ff 	vmovsd xmm0,QWORD PTR [rbp-0x718]
  670ee3:	ff 
  670ee4:	c5 fb 10 95 20 f9 ff 	vmovsd xmm2,QWORD PTR [rbp-0x6e0]
  670eeb:	ff 
  670eec:	c5 f9 16 9d 38 f9 ff 	vmovhpd xmm3,xmm0,QWORD PTR [rbp-0x6c8]
  670ef3:	ff 
  670ef4:	c5 e9 14 e1          	vunpcklpd xmm4,xmm2,xmm1
  670ef8:	c5 d5 59 b5 f0 ed ff 	vmulpd ymm6,ymm5,YMMWORD PTR [rbp-0x1210]
  670eff:	ff 
  670f00:	48 8b b5 28 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x2d8]
  670f07:	4c 8b 85 00 fa ff ff 	mov    r8,QWORD PTR [rbp-0x600]
  670f0e:	c5 4d 59 85 10 ee ff 	vmulpd ymm8,ymm6,YMMWORD PTR [rbp-0x11f0]
  670f15:	ff 
  670f16:	4c 8b 9d 50 fa ff ff 	mov    r11,QWORD PTR [rbp-0x5b0]
  670f1d:	4d 8d 3c b7          	lea    r15,[r15+rsi*4]
  670f21:	48 8b b5 10 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xaf0]
  670f28:	4f 8d 0c 20          	lea    r9,[r8+r12*1]
  670f2c:	c4 41 7b 10 11       	vmovsd xmm10,QWORD PTR [r9]
  670f31:	48 8b bd 18 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xae8]
  670f38:	c4 41 29 16 1c 31    	vmovhpd xmm11,xmm10,QWORD PTR [r9+rsi*1]
  670f3e:	4d 8d 14 71          	lea    r10,[r9+rsi*2]
  670f42:	c4 41 7b 10 22       	vmovsd xmm12,QWORD PTR [r10]
  670f47:	4f 8d 0c 23          	lea    r9,[r11+r12*1]
  670f4b:	c4 41 7b 10 31       	vmovsd xmm14,QWORD PTR [r9]
  670f50:	4d 8d 24 b4          	lea    r12,[r12+rsi*4]
  670f54:	c4 41 09 16 3c 31    	vmovhpd xmm15,xmm14,QWORD PTR [r9+rsi*1]
  670f5a:	4d 8d 0c 71          	lea    r9,[r9+rsi*2]
  670f5e:	c4 c1 7b 10 01       	vmovsd xmm0,QWORD PTR [r9]
  670f63:	4d 8d 6c bd 00       	lea    r13,[r13+rdi*4+0x0]
  670f68:	c4 41 19 16 2c 32    	vmovhpd xmm13,xmm12,QWORD PTR [r10+rsi*1]
  670f6e:	c4 41 79 16 34 31    	vmovhpd xmm14,xmm0,QWORD PTR [r9+rsi*1]
  670f74:	48 8b b5 40 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xac0]
  670f7b:	48 8b bd 48 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x6b8]
  670f82:	4c 8b 85 b0 fb ff ff 	mov    r8,QWORD PTR [rbp-0x450]
  670f89:	c4 e3 65 18 fc 01    	vinsertf128 ymm7,ymm3,xmm4,0x1
  670f8f:	c4 41 45 59 c8       	vmulpd ymm9,ymm7,ymm8
  670f94:	c5 fd 10 1d c4 90 1d 	vmovupd ymm3,YMMWORD PTR [rip+0x1d90c4]        # 84a060 <var$630.126.450+0xc0>
  670f9b:	00 
  670f9c:	c5 fb 10 2f          	vmovsd xmm5,QWORD PTR [rdi]
  670fa0:	c4 a1 51 16 34 07    	vmovhpd xmm6,xmm5,QWORD PTR [rdi+r8*1]
  670fa6:	c5 b5 59 0d d2 93 1d 	vmulpd ymm1,ymm9,YMMWORD PTR [rip+0x1d93d2]        # 84a380 <var$630.126.450+0x3e0>
  670fad:	00 
  670fae:	c4 43 25 18 d5 01    	vinsertf128 ymm10,ymm11,xmm13,0x1
  670fb4:	c4 43 05 18 de 01    	vinsertf128 ymm11,ymm15,xmm14,0x1
  670fba:	c4 c1 2d 58 d3       	vaddpd ymm2,ymm10,ymm11
  670fbf:	c5 75 59 e2          	vmulpd ymm12,ymm1,ymm2
  670fc3:	c4 21 7d 11 24 f6    	vmovupd YMMWORD PTR [rsi+r14*8],ymm12
  670fc9:	48 8b b5 e8 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x618]
  670fd0:	c4 a1 65 5e 04 f6    	vdivpd ymm0,ymm3,YMMWORD PTR [rsi+r14*8]
  670fd6:	48 8b b5 a0 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x660]
  670fdd:	c4 a1 7d 59 24 f6    	vmulpd ymm4,ymm0,YMMWORD PTR [rsi+r14*8]
  670fe3:	48 8b b5 90 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x670]
  670fea:	c4 a1 7d 11 24 f6    	vmovupd YMMWORD PTR [rsi+r14*8],ymm4
  670ff0:	4a 8d 34 47          	lea    rsi,[rdi+r8*2]
  670ff4:	c5 fb 10 3e          	vmovsd xmm7,QWORD PTR [rsi]
  670ff8:	c4 21 41 16 04 06    	vmovhpd xmm8,xmm7,QWORD PTR [rsi+r8*1]
  670ffe:	c4 43 4d 18 c8 01    	vinsertf128 ymm9,ymm6,xmm8,0x1
  671004:	49 83 c6 04          	add    r14,0x4
  671008:	c4 41 35 5c ec       	vsubpd ymm13,ymm9,ymm12
  67100d:	c4 c1 7d 59 cd       	vmulpd ymm1,ymm0,ymm13
  671012:	48 8b b5 d8 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x728]
  671019:	4c 3b b5 50 f5 ff ff 	cmp    r14,QWORD PTR [rbp-0xab0]
  671020:	c4 e3 7d 19 ca 01    	vextractf128 xmm2,ymm1,0x1
  671026:	c5 fb 11 0f          	vmovsd QWORD PTR [rdi],xmm1
  67102a:	c4 c1 79 17 0c 38    	vmovhpd QWORD PTR [r8+rdi*1],xmm1
  671030:	c4 a1 7b 11 14 47    	vmovsd QWORD PTR [rdi+r8*2],xmm2
  671036:	c5 f9 17 14 3e       	vmovhpd QWORD PTR [rsi+rdi*1],xmm2
  67103b:	4a 8d 34 87          	lea    rsi,[rdi+r8*4]
  67103f:	48 89 b5 48 f9 ff ff 	mov    QWORD PTR [rbp-0x6b8],rsi
  671046:	0f 82 11 fa ff ff    	jb     670a5d <gls_corstep_mod_mp_gls_corstep_tile_+0x92ed>
  67104c:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  671052:	c5 fb 10 8d 30 e7 ff 	vmovsd xmm1,QWORD PTR [rbp-0x18d0]
  671059:	ff 
  67105a:	c5 f9 15 f8          	vunpckhpd xmm7,xmm0,xmm0
  67105e:	4c 8b ad 20 e7 ff ff 	mov    r13,QWORD PTR [rbp-0x18e0]
  671065:	4c 8b a5 28 e7 ff ff 	mov    r12,QWORD PTR [rbp-0x18d8]
  67106c:	48 8b 85 10 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xaf0]
  671073:	48 8b 95 18 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xae8]
  67107a:	48 8b 8d 28 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2d8]
  671081:	49 0f af c4          	imul   rax,r12
  671085:	49 0f af d4          	imul   rdx,r12
  671089:	49 0f af cc          	imul   rcx,r12
  67108d:	4c 8b bd b0 fb ff ff 	mov    r15,QWORD PTR [rbp-0x450]
  671094:	4d 0f af fc          	imul   r15,r12
  671098:	48 89 85 60 e7 ff ff 	mov    QWORD PTR [rbp-0x18a0],rax
  67109f:	48 89 95 58 e7 ff ff 	mov    QWORD PTR [rbp-0x18a8],rdx
  6710a6:	48 89 8d 68 e7 ff ff 	mov    QWORD PTR [rbp-0x1898],rcx
  6710ad:	4c 3b a5 50 fd ff ff 	cmp    r12,QWORD PTR [rbp-0x2b0]
  6710b4:	0f 83 50 04 00 00    	jae    67150a <gls_corstep_mod_mp_gls_corstep_tile_+0x9d9a>
  6710ba:	4c 8b 85 58 fd ff ff 	mov    r8,QWORD PTR [rbp-0x2a8]
  6710c1:	4c 89 c7             	mov    rdi,r8
  6710c4:	48 8b 8d d8 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x328]
  6710cb:	48 0f af f9          	imul   rdi,rcx
  6710cf:	c5 f3 5c 15 a9 b0 1d 	vsubsd xmm2,xmm1,QWORD PTR [rip+0x1db0a9]        # 84c180 <__STRLITPACK_0.112+0x70>
  6710d6:	00 
  6710d7:	48 8b 95 58 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x13a8]
  6710de:	48 8b b5 70 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x1390]
  6710e5:	48 0f af d6          	imul   rdx,rsi
  6710e9:	48 8b 85 78 eb ff ff 	mov    rax,QWORD PTR [rbp-0x1488]
  6710f0:	4c 0f af c0          	imul   r8,rax
  6710f4:	4c 8b 8d 20 ea ff ff 	mov    r9,QWORD PTR [rbp-0x15e0]
  6710fb:	49 03 f9             	add    rdi,r9
  6710fe:	48 f7 df             	neg    rdi
  671101:	4d 03 c1             	add    r8,r9
  671104:	4c 8b 95 10 e9 ff ff 	mov    r10,QWORD PTR [rbp-0x16f0]
  67110b:	49 03 fa             	add    rdi,r10
  67110e:	4c 8b b5 28 e9 ff ff 	mov    r14,QWORD PTR [rbp-0x16d8]
  671115:	48 f7 df             	neg    rdi
  671118:	4c 8b 9d e0 e8 ff ff 	mov    r11,QWORD PTR [rbp-0x1720]
  67111f:	49 03 fb             	add    rdi,r11
  671122:	48 03 fa             	add    rdi,rdx
  671125:	49 f7 d8             	neg    r8
  671128:	48 89 bd 40 fa ff ff 	mov    QWORD PTR [rbp-0x5c0],rdi
  67112f:	49 8d 3c 16          	lea    rdi,[r14+rdx*1]
  671133:	49 89 ce             	mov    r14,rcx
  671136:	4d 03 c2             	add    r8,r10
  671139:	48 89 bd 88 f9 ff ff 	mov    QWORD PTR [rbp-0x678],rdi
  671140:	49 f7 d8             	neg    r8
  671143:	48 8b bd 60 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2a0]
  67114a:	4d 03 c3             	add    r8,r11
  67114d:	4c 0f af f7          	imul   r14,rdi
  671151:	48 0f af fe          	imul   rdi,rsi
  671155:	4c 03 c2             	add    r8,rdx
  671158:	48 03 95 40 ec ff ff 	add    rdx,QWORD PTR [rbp-0x13c0]
  67115f:	48 89 95 58 fa ff ff 	mov    QWORD PTR [rbp-0x5a8],rdx
  671166:	48 8b 95 c0 e8 ff ff 	mov    rdx,QWORD PTR [rbp-0x1740]
  67116d:	4c 8b 95 c8 e8 ff ff 	mov    r10,QWORD PTR [rbp-0x1738]
  671174:	4c 89 85 38 fa ff ff 	mov    QWORD PTR [rbp-0x5c8],r8
  67117b:	4c 8b 85 58 e9 ff ff 	mov    r8,QWORD PTR [rbp-0x16a8]
  671182:	4e 8d 0c 32          	lea    r9,[rdx+r14*1]
  671186:	48 8b 95 48 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x2b8]
  67118d:	4f 8d 1c 32          	lea    r11,[r10+r14*1]
  671191:	48 0f af d1          	imul   rdx,rcx
  671195:	48 03 95 40 eb ff ff 	add    rdx,QWORD PTR [rbp-0x14c0]
  67119c:	48 f7 da             	neg    rdx
  67119f:	48 03 95 48 e9 ff ff 	add    rdx,QWORD PTR [rbp-0x16b8]
  6711a6:	48 f7 da             	neg    rdx
  6711a9:	48 03 95 f8 e8 ff ff 	add    rdx,QWORD PTR [rbp-0x1708]
  6711b0:	49 03 d5             	add    rdx,r13
  6711b3:	4c 8b 95 38 fd ff ff 	mov    r10,QWORD PTR [rbp-0x2c8]
  6711ba:	4c 03 fa             	add    r15,rdx
  6711bd:	4c 89 d2             	mov    rdx,r10
  6711c0:	48 0f af d0          	imul   rdx,rax
  6711c4:	4c 0f af d1          	imul   r10,rcx
  6711c8:	4c 03 b5 d0 e8 ff ff 	add    r14,QWORD PTR [rbp-0x1730]
  6711cf:	4c 89 b5 e0 f9 ff ff 	mov    QWORD PTR [rbp-0x620],r14
  6711d6:	4c 8b b5 b0 e9 ff ff 	mov    r14,QWORD PTR [rbp-0x1650]
  6711dd:	4c 0f af f6          	imul   r14,rsi
  6711e1:	48 03 bd 50 eb ff ff 	add    rdi,QWORD PTR [rbp-0x14b0]
  6711e8:	48 8b 85 38 ea ff ff 	mov    rax,QWORD PTR [rbp-0x15c8]
  6711ef:	48 03 d0             	add    rdx,rax
  6711f2:	4c 03 d0             	add    r10,rax
  6711f5:	48 89 bd d8 f9 ff ff 	mov    QWORD PTR [rbp-0x628],rdi
  6711fc:	48 8b bd 60 e9 ff ff 	mov    rdi,QWORD PTR [rbp-0x16a0]
  671203:	48 03 d7             	add    rdx,rdi
  671206:	4c 03 d7             	add    r10,rdi
  671209:	49 03 d6             	add    rdx,r14
  67120c:	4c 89 8d 98 f9 ff ff 	mov    QWORD PTR [rbp-0x668],r9
  671213:	4f 8d 0c 30          	lea    r9,[r8+r14*1]
  671217:	4d 03 d6             	add    r10,r14
  67121a:	4c 03 b5 d8 e7 ff ff 	add    r14,QWORD PTR [rbp-0x1828]
  671221:	4c 89 b5 48 fa ff ff 	mov    QWORD PTR [rbp-0x5b8],r14
  671228:	4c 8b b5 c0 e9 ff ff 	mov    r14,QWORD PTR [rbp-0x1640]
  67122f:	4c 0f af f6          	imul   r14,rsi
  671233:	c5 fb 10 9d 38 e7 ff 	vmovsd xmm3,QWORD PTR [rbp-0x18c8]
  67123a:	ff 
  67123b:	c5 e3 59 a5 78 e8 ff 	vmulsd xmm4,xmm3,QWORD PTR [rbp-0x1788]
  671242:	ff 
  671243:	48 8b 8d b8 eb ff ff 	mov    rcx,QWORD PTR [rbp-0x1448]
  67124a:	c5 fb 11 95 30 fa ff 	vmovsd QWORD PTR [rbp-0x5d0],xmm2
  671251:	ff 
  671252:	c5 fb 11 a5 10 fa ff 	vmovsd QWORD PTR [rbp-0x5f0],xmm4
  671259:	ff 
  67125a:	4c 89 9d c0 f9 ff ff 	mov    QWORD PTR [rbp-0x640],r11
  671261:	4a 8d 34 31          	lea    rsi,[rcx+r14*1]
  671265:	4c 89 8d a8 f9 ff ff 	mov    QWORD PTR [rbp-0x658],r9
  67126c:	48 89 95 20 fa ff ff 	mov    QWORD PTR [rbp-0x5e0],rdx
  671273:	4c 89 95 f8 f9 ff ff 	mov    QWORD PTR [rbp-0x608],r10
  67127a:	48 89 b5 b8 f9 ff ff 	mov    QWORD PTR [rbp-0x648],rsi
  671281:	c5 f8 77             	vzeroupper 
  671284:	c5 fb 10 85 d8 f4 ff 	vmovsd xmm0,QWORD PTR [rbp-0xb28]
  67128b:	ff 
  67128c:	e8 af e6 e4 ff       	call   4bf940 <pow>
  671291:	48 8b 85 58 ea ff ff 	mov    rax,QWORD PTR [rbp-0x15a8]
  671298:	c5 f9 28 c8          	vmovapd xmm1,xmm0
  67129c:	48 8b 95 78 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb88]
  6712a3:	c5 fb 10 85 38 e7 ff 	vmovsd xmm0,QWORD PTR [rbp-0x18c8]
  6712aa:	ff 
  6712ab:	4c 89 ad 20 e7 ff ff 	mov    QWORD PTR [rbp-0x18e0],r13
  6712b2:	48 63 0c 90          	movsxd rcx,DWORD PTR [rax+rdx*4]
  6712b6:	48 0f af 8d 40 fd ff 	imul   rcx,QWORD PTR [rbp-0x2c0]
  6712bd:	ff 
  6712be:	c5 fb 59 85 70 e8 ff 	vmulsd xmm0,xmm0,QWORD PTR [rbp-0x1790]
  6712c5:	ff 
  6712c6:	48 03 8d 30 ea ff ff 	add    rcx,QWORD PTR [rbp-0x15d0]
  6712cd:	48 03 8d e0 eb ff ff 	add    rcx,QWORD PTR [rbp-0x1420]
  6712d4:	48 03 8d a8 e7 ff ff 	add    rcx,QWORD PTR [rbp-0x1858]
  6712db:	4c 03 f1             	add    r14,rcx
  6712de:	4c 89 b5 60 f9 ff ff 	mov    QWORD PTR [rbp-0x6a0],r14
  6712e5:	4c 89 bd 78 f9 ff ff 	mov    QWORD PTR [rbp-0x688],r15
  6712ec:	c5 fb 11 85 58 f9 ff 	vmovsd QWORD PTR [rbp-0x6a8],xmm0
  6712f3:	ff 
  6712f4:	c5 fb 11 8d 50 f9 ff 	vmovsd QWORD PTR [rbp-0x6b0],xmm1
  6712fb:	ff 
  6712fc:	c5 fb 10 15 94 ae 1d 	vmovsd xmm2,QWORD PTR [rip+0x1dae94]        # 84c198 <__STRLITPACK_0.112+0x88>
  671303:	00 
  671304:	4c 8b bd 68 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1898]
  67130b:	4c 8b b5 58 e7 ff ff 	mov    r14,QWORD PTR [rbp-0x18a8]
  671312:	4c 8b ad 60 e7 ff ff 	mov    r13,QWORD PTR [rbp-0x18a0]
  671319:	48 8b 85 88 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x678]
  671320:	48 8b 95 58 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x5a8]
  671327:	c4 c1 7b 10 1c 07    	vmovsd xmm3,QWORD PTR [r15+rax*1]
  67132d:	c4 c1 63 58 24 17    	vaddsd xmm4,xmm3,QWORD PTR [r15+rdx*1]
  671333:	c5 eb 59 c4          	vmulsd xmm0,xmm2,xmm4
  671337:	c5 fb 10 8d a8 f8 ff 	vmovsd xmm1,QWORD PTR [rbp-0x758]
  67133e:	ff 
  67133f:	e8 fc e5 e4 ff       	call   4bf940 <pow>
  671344:	48 8b 85 b8 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x648]
  67134b:	c5 fb 10 15 45 ae 1d 	vmovsd xmm2,QWORD PTR [rip+0x1dae45]        # 84c198 <__STRLITPACK_0.112+0x88>
  671352:	00 
  671353:	48 8b 95 d8 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x628]
  67135a:	c4 c1 6b 59 1c 06    	vmulsd xmm3,xmm2,QWORD PTR [r14+rax*1]
  671360:	c5 fb 11 85 70 f9 ff 	vmovsd QWORD PTR [rbp-0x690],xmm0
  671367:	ff 
  671368:	c4 a1 63 58 04 e2    	vaddsd xmm0,xmm3,QWORD PTR [rdx+r12*8]
  67136e:	c5 fb 10 8d 30 fa ff 	vmovsd xmm1,QWORD PTR [rbp-0x5d0]
  671375:	ff 
  671376:	e8 c5 e5 e4 ff       	call   4bf940 <pow>
  67137b:	c5 fb 10 9d 70 f9 ff 	vmovsd xmm3,QWORD PTR [rbp-0x690]
  671382:	ff 
  671383:	c5 e3 59 a5 10 fa ff 	vmulsd xmm4,xmm3,QWORD PTR [rbp-0x5f0]
  67138a:	ff 
  67138b:	c5 db 59 e8          	vmulsd xmm5,xmm4,xmm0
  67138f:	48 8b 85 a8 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x658]
  671396:	48 8b 95 48 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x5b8]
  67139d:	c5 fb 10 15 f3 ad 1d 	vmovsd xmm2,QWORD PTR [rip+0x1dadf3]        # 84c198 <__STRLITPACK_0.112+0x88>
  6713a4:	00 
  6713a5:	c4 c1 7b 10 74 05 00 	vmovsd xmm6,QWORD PTR [r13+rax*1+0x0]
  6713ac:	48 8b b5 38 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5c8]
  6713b3:	c5 d3 59 fa          	vmulsd xmm7,xmm5,xmm2
  6713b7:	c4 41 4b 58 44 15 00 	vaddsd xmm8,xmm6,QWORD PTR [r13+rdx*1+0x0]
  6713be:	48 8b bd 40 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x5c0]
  6713c5:	c4 41 7b 10 14 37    	vmovsd xmm10,QWORD PTR [r15+rsi*1]
  6713cb:	c4 41 43 59 c8       	vmulsd xmm9,xmm7,xmm8
  6713d0:	c4 41 2b 58 1c 3f    	vaddsd xmm11,xmm10,QWORD PTR [r15+rdi*1]
  6713d6:	48 8b 8d 38 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xac8]
  6713dd:	c4 c1 6b 59 c3       	vmulsd xmm0,xmm2,xmm11
  6713e2:	c4 21 7b 11 0c e1    	vmovsd QWORD PTR [rcx+r12*8],xmm9
  6713e8:	c5 fb 10 8d a8 f8 ff 	vmovsd xmm1,QWORD PTR [rbp-0x758]
  6713ef:	ff 
  6713f0:	e8 4b e5 e4 ff       	call   4bf940 <pow>
  6713f5:	48 8b 85 60 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x6a0]
  6713fc:	c5 fb 10 15 94 ad 1d 	vmovsd xmm2,QWORD PTR [rip+0x1dad94]        # 84c198 <__STRLITPACK_0.112+0x88>
  671403:	00 
  671404:	48 8b 95 48 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xab8]
  67140b:	c4 c1 6b 59 1c 06    	vmulsd xmm3,xmm2,QWORD PTR [r14+rax*1]
  671411:	c5 fb 11 85 68 f9 ff 	vmovsd QWORD PTR [rbp-0x698],xmm0
  671418:	ff 
  671419:	c4 a1 63 58 04 e2    	vaddsd xmm0,xmm3,QWORD PTR [rdx+r12*8]
  67141f:	c5 fb 10 8d 30 fa ff 	vmovsd xmm1,QWORD PTR [rbp-0x5d0]
  671426:	ff 
  671427:	e8 14 e5 e4 ff       	call   4bf940 <pow>
  67142c:	48 8b b5 e0 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x620]
  671433:	c5 f9 28 d8          	vmovapd xmm3,xmm0
  671437:	c5 fb 10 bd 68 f9 ff 	vmovsd xmm7,QWORD PTR [rbp-0x698]
  67143e:	ff 
  67143f:	c5 7b 10 0d 39 ad 1d 	vmovsd xmm9,QWORD PTR [rip+0x1dad39]        # 84c180 <__STRLITPACK_0.112+0x70>
  671446:	00 
  671447:	c5 c3 59 85 58 f9 ff 	vmulsd xmm0,xmm7,QWORD PTR [rbp-0x6a8]
  67144e:	ff 
  67144f:	c4 a1 33 5e 3c e6    	vdivsd xmm7,xmm9,QWORD PTR [rsi+r12*8]
  671455:	c5 fb 59 8d 50 f9 ff 	vmulsd xmm1,xmm0,QWORD PTR [rbp-0x6b0]
  67145c:	ff 
  67145d:	c5 f3 59 e3          	vmulsd xmm4,xmm1,xmm3
  671461:	48 8b 85 20 fa ff ff 	mov    rax,QWORD PTR [rbp-0x5e0]
  671468:	48 8b 95 f8 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x608]
  67146f:	c5 fb 10 15 21 ad 1d 	vmovsd xmm2,QWORD PTR [rip+0x1dad21]        # 84c198 <__STRLITPACK_0.112+0x88>
  671476:	00 
  671477:	c4 c1 7b 10 6c 05 00 	vmovsd xmm5,QWORD PTR [r13+rax*1+0x0]
  67147e:	c5 db 59 f2          	vmulsd xmm6,xmm4,xmm2
  671482:	c4 41 53 58 44 15 00 	vaddsd xmm8,xmm5,QWORD PTR [r13+rdx*1+0x0]
  671489:	c4 41 4b 59 e0       	vmulsd xmm12,xmm6,xmm8
  67148e:	4c 8b 8d 78 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x688]
  671495:	48 8b bd c0 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x640]
  67149c:	48 8b 8d 40 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xac0]
  6714a3:	c4 41 7b 10 19       	vmovsd xmm11,QWORD PTR [r9]
  6714a8:	c4 21 43 59 14 e7    	vmulsd xmm10,xmm7,QWORD PTR [rdi+r12*8]
  6714ae:	c4 41 23 5c ec       	vsubsd xmm13,xmm11,xmm12
  6714b3:	c4 41 43 59 f5       	vmulsd xmm14,xmm7,xmm13
  6714b8:	4c 8b 85 98 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x668]
  6714bf:	c4 21 7b 11 24 e1    	vmovsd QWORD PTR [rcx+r12*8],xmm12
  6714c5:	c4 41 7b 11 31       	vmovsd QWORD PTR [r9],xmm14
  6714ca:	c4 01 7b 11 14 e0    	vmovsd QWORD PTR [r8+r12*8],xmm10
  6714d0:	49 ff c4             	inc    r12
  6714d3:	4c 03 8d b0 fb ff ff 	add    r9,QWORD PTR [rbp-0x450]
  6714da:	4c 03 bd 28 fd ff ff 	add    r15,QWORD PTR [rbp-0x2d8]
  6714e1:	4c 03 b5 18 f5 ff ff 	add    r14,QWORD PTR [rbp-0xae8]
  6714e8:	4c 03 ad 10 f5 ff ff 	add    r13,QWORD PTR [rbp-0xaf0]
  6714ef:	4c 89 8d 78 f9 ff ff 	mov    QWORD PTR [rbp-0x688],r9
  6714f6:	4c 3b a5 50 fd ff ff 	cmp    r12,QWORD PTR [rbp-0x2b0]
  6714fd:	0f 82 16 fe ff ff    	jb     671319 <gls_corstep_mod_mp_gls_corstep_tile_+0x9ba9>
  671503:	4c 8b ad 20 e7 ff ff 	mov    r13,QWORD PTR [rbp-0x18e0]
  67150a:	48 8b 95 78 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x1488]
  671511:	33 c9                	xor    ecx,ecx
  671513:	4c 8b 95 60 fd ff ff 	mov    r10,QWORD PTR [rbp-0x2a0]
  67151a:	4c 8b 9d 48 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2b8]
  671521:	48 8b 85 78 e9 ff ff 	mov    rax,QWORD PTR [rbp-0x1688]
  671528:	48 8d 52 fe          	lea    rdx,[rdx-0x2]
  67152c:	4c 0f af d2          	imul   r10,rdx
  671530:	4c 0f af da          	imul   r11,rdx
  671534:	4c 8b a5 20 e9 ff ff 	mov    r12,QWORD PTR [rbp-0x16e0]
  67153b:	4d 8d 7c 05 00       	lea    r15,[r13+rax*1+0x0]
  671540:	48 8b b5 d8 e8 ff ff 	mov    rsi,QWORD PTR [rbp-0x1728]
  671547:	4d 03 fb             	add    r15,r11
  67154a:	4c 8b 8d c0 e8 ff ff 	mov    r9,QWORD PTR [rbp-0x1740]
  671551:	33 c0                	xor    eax,eax
  671553:	4c 8b 85 c8 e8 ff ff 	mov    r8,QWORD PTR [rbp-0x1738]
  67155a:	4f 8d 74 25 00       	lea    r14,[r13+r12*1+0x0]
  67155f:	48 8b bd d0 e8 ff ff 	mov    rdi,QWORD PTR [rbp-0x1730]
  671566:	49 03 f2             	add    rsi,r10
  671569:	4d 03 de             	add    r11,r14
  67156c:	4d 03 ca             	add    r9,r10
  67156f:	48 89 b5 50 f4 ff ff 	mov    QWORD PTR [rbp-0xbb0],rsi
  671576:	4d 03 c2             	add    r8,r10
  671579:	4c 03 ad 60 ec ff ff 	add    r13,QWORD PTR [rbp-0x13a0]
  671580:	49 03 fa             	add    rdi,r10
  671583:	4c 03 95 f0 f4 ff ff 	add    r10,QWORD PTR [rbp-0xb10]
  67158a:	48 8b b5 38 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xac8]
  671591:	4c 89 9d 68 f4 ff ff 	mov    QWORD PTR [rbp-0xb98],r11
  671598:	4c 89 bd 60 f4 ff ff 	mov    QWORD PTR [rbp-0xba0],r15
  67159f:	4c 89 95 58 f4 ff ff 	mov    QWORD PTR [rbp-0xba8],r10
  6715a6:	48 89 bd 48 f4 ff ff 	mov    QWORD PTR [rbp-0xbb8],rdi
  6715ad:	4c 89 85 40 f4 ff ff 	mov    QWORD PTR [rbp-0xbc0],r8
  6715b4:	4c 89 8d 38 f4 ff ff 	mov    QWORD PTR [rbp-0xbc8],r9
  6715bb:	c5 fb 10 15 bd ab 1d 	vmovsd xmm2,QWORD PTR [rip+0x1dabbd]        # 84c180 <__STRLITPACK_0.112+0x70>
  6715c2:	00 
  6715c3:	45 33 f6             	xor    r14d,r14d
  6715c6:	45 33 e4             	xor    r12d,r12d
  6715c9:	45 33 ff             	xor    r15d,r15d
  6715cc:	48 85 d2             	test   rdx,rdx
  6715cf:	0f 8e c4 00 00 00    	jle    671699 <gls_corstep_mod_mp_gls_corstep_tile_+0x9f29>
  6715d5:	4c 8b 8d 58 f4 ff ff 	mov    r9,QWORD PTR [rbp-0xba8]
  6715dc:	4c 8b 85 50 f4 ff ff 	mov    r8,QWORD PTR [rbp-0xbb0]
  6715e3:	48 8b bd 68 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xb98]
  6715ea:	4c 8b 95 60 f4 ff ff 	mov    r10,QWORD PTR [rbp-0xba0]
  6715f1:	4c 8b 9d 48 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xbb8]
  6715f8:	c4 c1 7b 10 4c c9 08 	vmovsd xmm1,QWORD PTR [r9+rcx*8+0x8]
  6715ff:	4c 8d 0c 07          	lea    r9,[rdi+rax*1]
  671603:	c4 c1 7b 10 44 c8 08 	vmovsd xmm0,QWORD PTR [r8+rcx*8+0x8]
  67160a:	4d 8d 04 02          	lea    r8,[r10+rax*1]
  67160e:	4c 8b 95 40 f4 ff ff 	mov    r10,QWORD PTR [rbp-0xbc0]
  671615:	49 8d 3c cb          	lea    rdi,[r11+rcx*8]
  671619:	4c 8b 9d 38 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xbc8]
  671620:	48 89 8d d0 f4 ff ff 	mov    QWORD PTR [rbp-0xb30],rcx
  671627:	48 8b b5 18 f2 ff ff 	mov    rsi,QWORD PTR [rbp-0xde8]
  67162e:	4d 8d 14 ca          	lea    r10,[r10+rcx*8]
  671632:	4d 8d 1c cb          	lea    r11,[r11+rcx*8]
  671636:	48 8b 8d 20 f2 ff ff 	mov    rcx,QWORD PTR [rbp-0xde0]
  67163d:	0f 1f 00             	nop    DWORD PTR [rax]
  671640:	c5 fb 59 c1          	vmulsd xmm0,xmm0,xmm1
  671644:	49 ff c6             	inc    r14
  671647:	c4 81 73 59 24 07    	vmulsd xmm4,xmm1,QWORD PTR [r15+r8*1]
  67164d:	c4 c1 7b 10 0c 3c    	vmovsd xmm1,QWORD PTR [r12+rdi*1]
  671653:	4c 03 fe             	add    r15,rsi
  671656:	c4 c1 7b 10 19       	vmovsd xmm3,QWORD PTR [r9]
  67165b:	c5 f3 5c f8          	vsubsd xmm7,xmm1,xmm0
  67165f:	c5 e3 5c ec          	vsubsd xmm5,xmm3,xmm4
  671663:	c5 eb 5e ff          	vdivsd xmm7,xmm2,xmm7
  671667:	c4 81 7b 10 0c 14    	vmovsd xmm1,QWORD PTR [r12+r10*1]
  67166d:	c5 c3 59 c1          	vmulsd xmm0,xmm7,xmm1
  671671:	c5 c3 59 f5          	vmulsd xmm6,xmm7,xmm5
  671675:	c4 81 7b 11 04 1c    	vmovsd QWORD PTR [r12+r11*1],xmm0
  67167b:	4c 03 e1             	add    r12,rcx
  67167e:	c4 c1 7b 11 31       	vmovsd QWORD PTR [r9],xmm6
  671683:	4c 03 ce             	add    r9,rsi
  671686:	4c 3b f2             	cmp    r14,rdx
  671689:	72 b5                	jb     671640 <gls_corstep_mod_mp_gls_corstep_tile_+0x9ed0>
  67168b:	48 8b 8d d0 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xb30]
  671692:	48 8b b5 38 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xac8]
  671699:	c4 c1 7b 10 44 05 00 	vmovsd xmm0,QWORD PTR [r13+rax*1+0x0]
  6716a0:	c5 c3 59 0c ce       	vmulsd xmm1,xmm7,QWORD PTR [rsi+rcx*8]
  6716a5:	48 ff c1             	inc    rcx
  6716a8:	c5 fb 5c d9          	vsubsd xmm3,xmm0,xmm1
  6716ac:	c4 c1 7b 11 5c 05 00 	vmovsd QWORD PTR [r13+rax*1+0x0],xmm3
  6716b3:	48 03 85 b0 fb ff ff 	add    rax,QWORD PTR [rbp-0x450]
  6716ba:	48 3b 8d 50 fd ff ff 	cmp    rcx,QWORD PTR [rbp-0x2b0]
  6716c1:	0f 82 fc fe ff ff    	jb     6715c3 <gls_corstep_mod_mp_gls_corstep_tile_+0x9e53>
  6716c7:	48 83 bd b0 fb ff ff 	cmp    QWORD PTR [rbp-0x450],0x8
  6716ce:	08 
  6716cf:	75 7a                	jne    67174b <gls_corstep_mod_mp_gls_corstep_tile_+0x9fdb>
  6716d1:	48 83 bd 80 eb ff ff 	cmp    QWORD PTR [rbp-0x1480],0x2
  6716d8:	02 
  6716d9:	0f 8c e2 00 00 00    	jl     6717c1 <gls_corstep_mod_mp_gls_corstep_tile_+0xa051>
  6716df:	c5 7b 10 15 71 ae 1d 	vmovsd xmm10,QWORD PTR [rip+0x1dae71]        # 84c558 <__STRLITPACK_0.112+0x448>
  6716e6:	00 
  6716e7:	c5 7b 10 1d 61 ae 1d 	vmovsd xmm11,QWORD PTR [rip+0x1dae61]        # 84c550 <__STRLITPACK_0.112+0x440>
  6716ee:	00 
  6716ef:	c5 79 10 0d 89 a3 1d 	vmovupd xmm9,XMMWORD PTR [rip+0x1da389]        # 84ba80 <__STRLITPACK_19.34+0xa0>
  6716f6:	00 
  6716f7:	c5 79 10 25 71 a3 1d 	vmovupd xmm12,XMMWORD PTR [rip+0x1da371]        # 84ba70 <__STRLITPACK_19.34+0x90>
  6716fe:	00 
  6716ff:	c5 fb 10 0d 41 ae 1d 	vmovsd xmm1,QWORD PTR [rip+0x1dae41]        # 84c548 <__STRLITPACK_0.112+0x438>
  671706:	00 
  671707:	c5 fb 10 35 31 ae 1d 	vmovsd xmm6,QWORD PTR [rip+0x1dae31]        # 84c540 <__STRLITPACK_0.112+0x430>
  67170e:	00 
  67170f:	c5 f9 10 25 49 a3 1d 	vmovupd xmm4,XMMWORD PTR [rip+0x1da349]        # 84ba60 <__STRLITPACK_19.34+0x80>
  671716:	00 
  671717:	c5 f9 10 2d 31 a3 1d 	vmovupd xmm5,XMMWORD PTR [rip+0x1da331]        # 84ba50 <__STRLITPACK_19.34+0x70>
  67171e:	00 
  67171f:	c5 f9 10 15 19 a3 1d 	vmovupd xmm2,XMMWORD PTR [rip+0x1da319]        # 84ba40 <__STRLITPACK_19.34+0x60>
  671726:	00 
  671727:	c5 79 10 05 c1 a2 1d 	vmovupd xmm8,XMMWORD PTR [rip+0x1da2c1]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  67172e:	00 
  67172f:	c5 fb 10 1d d1 ad 1d 	vmovsd xmm3,QWORD PTR [rip+0x1dadd1]        # 84c508 <__STRLITPACK_0.112+0x3f8>
  671736:	00 
  671737:	c5 fb 10 05 59 aa 1d 	vmovsd xmm0,QWORD PTR [rip+0x1daa59]        # 84c198 <__STRLITPACK_0.112+0x88>
  67173e:	00 
  67173f:	4c 8b 9d 78 f0 ff ff 	mov    r11,QWORD PTR [rbp-0xf88]
  671746:	e9 8f d5 ff ff       	jmp    66ecda <gls_corstep_mod_mp_gls_corstep_tile_+0x756a>
  67174b:	48 83 bd 80 eb ff ff 	cmp    QWORD PTR [rbp-0x1480],0x2
  671752:	02 
  671753:	7c 6c                	jl     6717c1 <gls_corstep_mod_mp_gls_corstep_tile_+0xa051>
  671755:	c5 7b 10 15 fb ad 1d 	vmovsd xmm10,QWORD PTR [rip+0x1dadfb]        # 84c558 <__STRLITPACK_0.112+0x448>
  67175c:	00 
  67175d:	c5 7b 10 1d eb ad 1d 	vmovsd xmm11,QWORD PTR [rip+0x1dadeb]        # 84c550 <__STRLITPACK_0.112+0x440>
  671764:	00 
  671765:	c5 79 10 0d 13 a3 1d 	vmovupd xmm9,XMMWORD PTR [rip+0x1da313]        # 84ba80 <__STRLITPACK_19.34+0xa0>
  67176c:	00 
  67176d:	c5 79 10 25 fb a2 1d 	vmovupd xmm12,XMMWORD PTR [rip+0x1da2fb]        # 84ba70 <__STRLITPACK_19.34+0x90>
  671774:	00 
  671775:	c5 fb 10 0d cb ad 1d 	vmovsd xmm1,QWORD PTR [rip+0x1dadcb]        # 84c548 <__STRLITPACK_0.112+0x438>
  67177c:	00 
  67177d:	c5 fb 10 35 bb ad 1d 	vmovsd xmm6,QWORD PTR [rip+0x1dadbb]        # 84c540 <__STRLITPACK_0.112+0x430>
  671784:	00 
  671785:	c5 f9 10 25 d3 a2 1d 	vmovupd xmm4,XMMWORD PTR [rip+0x1da2d3]        # 84ba60 <__STRLITPACK_19.34+0x80>
  67178c:	00 
  67178d:	c5 f9 10 2d bb a2 1d 	vmovupd xmm5,XMMWORD PTR [rip+0x1da2bb]        # 84ba50 <__STRLITPACK_19.34+0x70>
  671794:	00 
  671795:	c5 f9 10 15 a3 a2 1d 	vmovupd xmm2,XMMWORD PTR [rip+0x1da2a3]        # 84ba40 <__STRLITPACK_19.34+0x60>
  67179c:	00 
  67179d:	c5 79 10 05 4b a2 1d 	vmovupd xmm8,XMMWORD PTR [rip+0x1da24b]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  6717a4:	00 
  6717a5:	c5 fb 10 1d 5b ad 1d 	vmovsd xmm3,QWORD PTR [rip+0x1dad5b]        # 84c508 <__STRLITPACK_0.112+0x3f8>
  6717ac:	00 
  6717ad:	c5 fb 10 05 e3 a9 1d 	vmovsd xmm0,QWORD PTR [rip+0x1da9e3]        # 84c198 <__STRLITPACK_0.112+0x88>
  6717b4:	00 
  6717b5:	4c 8b 9d 78 f0 ff ff 	mov    r11,QWORD PTR [rbp-0xf88]
  6717bc:	e9 38 d3 ff ff       	jmp    66eaf9 <gls_corstep_mod_mp_gls_corstep_tile_+0x7389>
  6717c1:	8b 85 80 fa ff ff    	mov    eax,DWORD PTR [rbp-0x580]
  6717c7:	3b 85 78 fa ff ff    	cmp    eax,DWORD PTR [rbp-0x588]
  6717cd:	0f 8d 82 d6 ff ff    	jge    66ee55 <gls_corstep_mod_mp_gls_corstep_tile_+0x76e5>
  6717d3:	48 8b 85 50 ec ff ff 	mov    rax,QWORD PTR [rbp-0x13b0]
  6717da:	48 8b 95 58 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x13a8]
  6717e1:	48 8b 8d 70 ec ff ff 	mov    rcx,QWORD PTR [rbp-0x1390]
  6717e8:	48 ff c1             	inc    rcx
  6717eb:	48 01 85 68 e8 ff ff 	add    QWORD PTR [rbp-0x1798],rax
  6717f2:	48 01 95 60 e8 ff ff 	add    QWORD PTR [rbp-0x17a0],rdx
  6717f9:	48 89 8d 70 ec ff ff 	mov    QWORD PTR [rbp-0x1390],rcx
  671800:	48 3b 8d 58 e8 ff ff 	cmp    rcx,QWORD PTR [rbp-0x17a8]
  671807:	0f 83 ee a8 ff ff    	jae    66c0fb <gls_corstep_mod_mp_gls_corstep_tile_+0x498b>
  67180d:	49 89 d1             	mov    r9,rdx
  671810:	49 89 c0             	mov    r8,rax
  671813:	c5 fb 10 05 7d a9 1d 	vmovsd xmm0,QWORD PTR [rip+0x1da97d]        # 84c198 <__STRLITPACK_0.112+0x88>
  67181a:	00 
  67181b:	48 8b 85 68 e8 ff ff 	mov    rax,QWORD PTR [rbp-0x1798]
  671822:	48 8b 95 60 e8 ff ff 	mov    rdx,QWORD PTR [rbp-0x17a0]
  671829:	4c 8b 9d 58 e8 ff ff 	mov    r11,QWORD PTR [rbp-0x17a8]
  671830:	4c 8b ad d8 fc ff ff 	mov    r13,QWORD PTR [rbp-0x328]
  671837:	48 89 ce             	mov    rsi,rcx
  67183a:	4c 8b b5 28 fd ff ff 	mov    r14,QWORD PTR [rbp-0x2d8]
  671841:	4c 8b a5 78 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb88]
  671848:	4c 8b 95 90 f2 ff ff 	mov    r10,QWORD PTR [rbp-0xd70]
  67184f:	44 8b bd 78 fa ff ff 	mov    r15d,DWORD PTR [rbp-0x588]
  671856:	8b 8d 80 fa ff ff    	mov    ecx,DWORD PTR [rbp-0x580]
  67185c:	41 3b cf             	cmp    ecx,r15d
  67185f:	0f 8c 99 07 00 00    	jl     671ffe <gls_corstep_mod_mp_gls_corstep_tile_+0xa88e>
  671865:	48 89 85 68 e8 ff ff 	mov    QWORD PTR [rbp-0x1798],rax
  67186c:	48 89 95 60 e8 ff ff 	mov    QWORD PTR [rbp-0x17a0],rdx
  671873:	48 89 b5 70 ec ff ff 	mov    QWORD PTR [rbp-0x1390],rsi
  67187a:	c5 fb 10 0d c6 ac 1d 	vmovsd xmm1,QWORD PTR [rip+0x1dacc6]        # 84c548 <__STRLITPACK_0.112+0x438>
  671881:	00 
  671882:	c5 fb 10 35 b6 ac 1d 	vmovsd xmm6,QWORD PTR [rip+0x1dacb6]        # 84c540 <__STRLITPACK_0.112+0x430>
  671889:	00 
  67188a:	c5 f9 10 25 ce a1 1d 	vmovupd xmm4,XMMWORD PTR [rip+0x1da1ce]        # 84ba60 <__STRLITPACK_19.34+0x80>
  671891:	00 
  671892:	c5 f9 10 2d b6 a1 1d 	vmovupd xmm5,XMMWORD PTR [rip+0x1da1b6]        # 84ba50 <__STRLITPACK_19.34+0x70>
  671899:	00 
  67189a:	c5 f9 10 15 9e a1 1d 	vmovupd xmm2,XMMWORD PTR [rip+0x1da19e]        # 84ba40 <__STRLITPACK_19.34+0x60>
  6718a1:	00 
  6718a2:	c5 fb 10 1d 5e ac 1d 	vmovsd xmm3,QWORD PTR [rip+0x1dac5e]        # 84c508 <__STRLITPACK_0.112+0x3f8>
  6718a9:	00 
  6718aa:	48 83 bd 50 fd ff ff 	cmp    QWORD PTR [rbp-0x2b0],0x2
  6718b1:	02 
  6718b2:	0f 8c 7e 2d 00 00    	jl     674636 <gls_corstep_mod_mp_gls_corstep_tile_+0xcec6>
  6718b8:	4c 8b 8d 70 fd ff ff 	mov    r9,QWORD PTR [rbp-0x290]
  6718bf:	45 33 d2             	xor    r10d,r10d
  6718c2:	48 8b 95 78 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x1488]
  6718c9:	4c 89 8d 48 e7 ff ff 	mov    QWORD PTR [rbp-0x18b8],r9
  6718d0:	49 89 d1             	mov    r9,rdx
  6718d3:	4c 0f af 8d 60 fd ff 	imul   r9,QWORD PTR [rbp-0x2a0]
  6718da:	ff 
  6718db:	48 8b 8d b8 e8 ff ff 	mov    rcx,QWORD PTR [rbp-0x1748]
  6718e2:	4c 8d 6a fe          	lea    r13,[rdx-0x2]
  6718e6:	4c 8b b5 58 ec ff ff 	mov    r14,QWORD PTR [rbp-0x13a8]
  6718ed:	48 8b bd 70 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x1390]
  6718f4:	4c 8b bd 00 ef ff ff 	mov    r15,QWORD PTR [rbp-0x1100]
  6718fb:	4a 8d 34 09          	lea    rsi,[rcx+r9*1]
  6718ff:	48 89 b5 a0 e6 ff ff 	mov    QWORD PTR [rbp-0x1960],rsi
  671906:	4d 89 f8             	mov    r8,r15
  671909:	48 8b 8d 50 ec ff ff 	mov    rcx,QWORD PTR [rbp-0x13b0]
  671910:	48 8b b5 e0 e9 ff ff 	mov    rsi,QWORD PTR [rbp-0x1620]
  671917:	4c 0f af f7          	imul   r14,rdi
  67191b:	48 0f af cf          	imul   rcx,rdi
  67191f:	48 0f af f7          	imul   rsi,rdi
  671923:	48 89 d7             	mov    rdi,rdx
  671926:	4c 8b 9d d8 fc ff ff 	mov    r11,QWORD PTR [rbp-0x328]
  67192d:	4d 0f af c3          	imul   r8,r11
  671931:	49 0f af ff          	imul   rdi,r15
  671935:	4c 8b a5 28 ea ff ff 	mov    r12,QWORD PTR [rbp-0x15d8]
  67193c:	4d 03 c4             	add    r8,r12
  67193f:	49 03 fc             	add    rdi,r12
  671942:	48 8b 85 18 ec ff ff 	mov    rax,QWORD PTR [rbp-0x13e8]
  671949:	4c 03 c0             	add    r8,rax
  67194c:	4c 8b bd a8 eb ff ff 	mov    r15,QWORD PTR [rbp-0x1458]
  671953:	48 03 f8             	add    rdi,rax
  671956:	48 8b 85 28 eb ff ff 	mov    rax,QWORD PTR [rbp-0x14d8]
  67195d:	4c 03 c6             	add    r8,rsi
  671960:	4c 03 8d c8 e8 ff ff 	add    r9,QWORD PTR [rbp-0x1738]
  671967:	48 03 fe             	add    rdi,rsi
  67196a:	4d 8d 24 37          	lea    r12,[r15+rsi*1]
  67196e:	4c 89 a5 78 f6 ff ff 	mov    QWORD PTR [rbp-0x988],r12
  671975:	4e 8d 3c 30          	lea    r15,[rax+r14*1]
  671979:	48 8b 85 58 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2a8]
  671980:	49 89 c4             	mov    r12,rax
  671983:	4c 0f af e2          	imul   r12,rdx
  671987:	4c 89 bd 68 f6 ff ff 	mov    QWORD PTR [rbp-0x998],r15
  67198e:	4c 8b bd 10 eb ff ff 	mov    r15,QWORD PTR [rbp-0x14f0]
  671995:	4d 03 e7             	add    r12,r15
  671998:	4d 03 e6             	add    r12,r14
  67199b:	4c 89 a5 a0 f6 ff ff 	mov    QWORD PTR [rbp-0x960],r12
  6719a2:	49 89 c4             	mov    r12,rax
  6719a5:	4d 0f af e3          	imul   r12,r11
  6719a9:	49 0f af c5          	imul   rax,r13
  6719ad:	4d 03 e7             	add    r12,r15
  6719b0:	49 03 c7             	add    rax,r15
  6719b3:	4c 8b bd 68 eb ff ff 	mov    r15,QWORD PTR [rbp-0x1498]
  6719ba:	49 03 c6             	add    rax,r14
  6719bd:	48 89 85 90 f6 ff ff 	mov    QWORD PTR [rbp-0x970],rax
  6719c4:	4d 03 e6             	add    r12,r14
  6719c7:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  6719ce:	4c 0f af e8          	imul   r13,rax
  6719d2:	4c 89 a5 c0 e6 ff ff 	mov    QWORD PTR [rbp-0x1940],r12
  6719d9:	4d 03 fe             	add    r15,r14
  6719dc:	4c 89 bd 98 e6 ff ff 	mov    QWORD PTR [rbp-0x1968],r15
  6719e3:	4c 8b bd f8 ea ff ff 	mov    r15,QWORD PTR [rbp-0x1508]
  6719ea:	4c 8b a5 08 ec ff ff 	mov    r12,QWORD PTR [rbp-0x13f8]
  6719f1:	4d 03 ec             	add    r13,r12
  6719f4:	48 03 b5 98 eb ff ff 	add    rsi,QWORD PTR [rbp-0x1468]
  6719fb:	4c 03 e9             	add    r13,rcx
  6719fe:	4c 03 b5 b0 ea ff ff 	add    r14,QWORD PTR [rbp-0x1550]
  671a05:	4c 03 f9             	add    r15,rcx
  671a08:	4c 89 bd 50 f6 ff ff 	mov    QWORD PTR [rbp-0x9b0],r15
  671a0f:	49 89 c7             	mov    r15,rax
  671a12:	4c 0f af fa          	imul   r15,rdx
  671a16:	49 0f af c3          	imul   rax,r11
  671a1a:	48 8b 95 58 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x14a8]
  671a21:	4d 03 fc             	add    r15,r12
  671a24:	4c 03 f9             	add    r15,rcx
  671a27:	49 03 c4             	add    rax,r12
  671a2a:	4c 89 ad f0 f5 ff ff 	mov    QWORD PTR [rbp-0xa10],r13
  671a31:	48 03 c1             	add    rax,rcx
  671a34:	4c 89 b5 20 f6 ff ff 	mov    QWORD PTR [rbp-0x9e0],r14
  671a3b:	4c 8d 1c 0a          	lea    r11,[rdx+rcx*1]
  671a3f:	33 d2                	xor    edx,edx
  671a41:	48 89 95 b0 e6 ff ff 	mov    QWORD PTR [rbp-0x1950],rdx
  671a48:	4c 89 9d 40 f6 ff ff 	mov    QWORD PTR [rbp-0x9c0],r11
  671a4f:	48 89 b5 10 f6 ff ff 	mov    QWORD PTR [rbp-0x9f0],rsi
  671a56:	48 89 bd f8 f5 ff ff 	mov    QWORD PTR [rbp-0xa08],rdi
  671a5d:	4c 89 85 00 f6 ff ff 	mov    QWORD PTR [rbp-0xa00],r8
  671a64:	4c 89 8d 08 f6 ff ff 	mov    QWORD PTR [rbp-0x9f8],r9
  671a6b:	48 03 8d 08 eb ff ff 	add    rcx,QWORD PTR [rbp-0x14f8]
  671a72:	49 89 d6             	mov    r14,rdx
  671a75:	48 8b 95 b0 e6 ff ff 	mov    rdx,QWORD PTR [rbp-0x1950]
  671a7c:	4c 89 d6             	mov    rsi,r10
  671a7f:	48 8b bd 98 e6 ff ff 	mov    rdi,QWORD PTR [rbp-0x1968]
  671a86:	4c 8b 85 c0 e6 ff ff 	mov    r8,QWORD PTR [rbp-0x1940]
  671a8d:	4c 8b 8d a0 e6 ff ff 	mov    r9,QWORD PTR [rbp-0x1960]
  671a94:	4c 8b 9d 28 fb ff ff 	mov    r11,QWORD PTR [rbp-0x4d8]
  671a9b:	4c 8b a5 b0 fb ff ff 	mov    r12,QWORD PTR [rbp-0x450]
  671aa2:	4c 8b ad 28 fd ff ff 	mov    r13,QWORD PTR [rbp-0x2d8]
  671aa9:	4c 89 bd 18 f6 ff ff 	mov    QWORD PTR [rbp-0x9e8],r15
  671ab0:	c5 79 10 0d 38 9f 1d 	vmovupd xmm9,XMMWORD PTR [rip+0x1d9f38]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  671ab7:	00 
  671ab8:	4c 8b bd 78 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x988]
  671abf:	4c 03 fe             	add    r15,rsi
  671ac2:	c4 41 7b 10 17       	vmovsd xmm10,QWORD PTR [r15]
  671ac7:	c4 01 29 16 24 1f    	vmovhpd xmm12,xmm10,QWORD PTR [r15+r11*1]
  671acd:	4c 8b bd 10 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9f0]
  671ad4:	4c 03 fe             	add    r15,rsi
  671ad7:	c4 41 7b 10 1f       	vmovsd xmm11,QWORD PTR [r15]
  671adc:	c4 01 21 16 2c 1f    	vmovhpd xmm13,xmm11,QWORD PTR [r15+r11*1]
  671ae2:	4c 8b bd 68 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x998]
  671ae9:	c4 41 19 58 f5       	vaddpd xmm14,xmm12,xmm13
  671aee:	c4 41 31 59 c6       	vmulpd xmm8,xmm9,xmm14
  671af3:	4c 03 fa             	add    r15,rdx
  671af6:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  671afb:	c4 81 01 16 3c 2f    	vmovhpd xmm7,xmm15,QWORD PTR [r15+r13*1]
  671b01:	4c 8b bd 20 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9e0]
  671b08:	c5 69 59 e7          	vmulpd xmm12,xmm2,xmm7
  671b0c:	4c 03 fa             	add    r15,rdx
  671b0f:	c4 41 7b 10 17       	vmovsd xmm10,QWORD PTR [r15]
  671b14:	c4 01 29 16 1c 2f    	vmovhpd xmm11,xmm10,QWORD PTR [r15+r13*1]
  671b1a:	4c 8d 3c 17          	lea    r15,[rdi+rdx*1]
  671b1e:	c4 41 51 59 eb       	vmulpd xmm13,xmm5,xmm11
  671b23:	c4 41 7b 10 37       	vmovsd xmm14,QWORD PTR [r15]
  671b28:	c4 01 09 16 3c 2f    	vmovhpd xmm15,xmm14,QWORD PTR [r15+r13*1]
  671b2e:	c4 41 59 59 d7       	vmulpd xmm10,xmm4,xmm15
  671b33:	c4 c1 19 58 fd       	vaddpd xmm7,xmm12,xmm13
  671b38:	c4 41 41 5c da       	vsubpd xmm11,xmm7,xmm10
  671b3d:	c4 41 39 59 e3       	vmulpd xmm12,xmm8,xmm11
  671b42:	4c 8b bd e8 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb18]
  671b49:	c4 01 79 11 64 d7 08 	vmovupd XMMWORD PTR [r15+r10*8+0x8],xmm12
  671b50:	4c 8b bd 50 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9b0]
  671b57:	4d 03 fe             	add    r15,r14
  671b5a:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  671b5f:	c4 01 11 16 34 27    	vmovhpd xmm14,xmm13,QWORD PTR [r15+r12*1]
  671b65:	4e 8d 3c 31          	lea    r15,[rcx+r14*1]
  671b69:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  671b6e:	c4 81 01 16 3c 27    	vmovhpd xmm7,xmm15,QWORD PTR [r15+r12*1]
  671b74:	4c 8b bd 40 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9c0]
  671b7b:	c4 41 69 59 d6       	vmulpd xmm10,xmm2,xmm14
  671b80:	c5 51 59 df          	vmulpd xmm11,xmm5,xmm7
  671b84:	c4 41 29 58 f3       	vaddpd xmm14,xmm10,xmm11
  671b89:	4d 03 fe             	add    r15,r14
  671b8c:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  671b91:	c4 01 19 16 2c 27    	vmovhpd xmm13,xmm12,QWORD PTR [r15+r12*1]
  671b97:	c4 41 59 59 fd       	vmulpd xmm15,xmm4,xmm13
  671b9c:	c4 c1 09 5c ff       	vsubpd xmm7,xmm14,xmm15
  671ba1:	c5 39 59 c7          	vmulpd xmm8,xmm8,xmm7
  671ba5:	4c 8b bd f0 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb10]
  671bac:	c4 01 79 11 44 d7 08 	vmovupd XMMWORD PTR [r15+r10*8+0x8],xmm8
  671bb3:	4c 8b bd f8 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa08]
  671bba:	4c 03 fe             	add    r15,rsi
  671bbd:	c4 c1 7b 10 3f       	vmovsd xmm7,QWORD PTR [r15]
  671bc2:	66 90                	xchg   ax,ax
  671bc4:	c4 01 41 16 14 1f    	vmovhpd xmm10,xmm7,QWORD PTR [r15+r11*1]
  671bca:	4c 8b bd 00 f6 ff ff 	mov    r15,QWORD PTR [rbp-0xa00]
  671bd1:	4c 03 fe             	add    r15,rsi
  671bd4:	c4 41 7b 10 07       	vmovsd xmm8,QWORD PTR [r15]
  671bd9:	4a 8d 34 5e          	lea    rsi,[rsi+r11*2]
  671bdd:	c4 01 39 16 1c 1f    	vmovhpd xmm11,xmm8,QWORD PTR [r15+r11*1]
  671be3:	4c 8b bd a0 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x960]
  671bea:	c4 41 29 58 e3       	vaddpd xmm12,xmm10,xmm11
  671bef:	c4 c1 31 59 fc       	vmulpd xmm7,xmm9,xmm12
  671bf4:	4c 03 fa             	add    r15,rdx
  671bf7:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  671bfc:	c4 01 11 16 34 2f    	vmovhpd xmm14,xmm13,QWORD PTR [r15+r13*1]
  671c02:	4d 8d 3c 10          	lea    r15,[r8+rdx*1]
  671c06:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  671c0b:	c4 01 01 16 3c 2f    	vmovhpd xmm15,xmm15,QWORD PTR [r15+r13*1]
  671c11:	4c 8b bd 90 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x970]
  671c18:	c4 41 69 59 c6       	vmulpd xmm8,xmm2,xmm14
  671c1d:	c4 41 51 59 d7       	vmulpd xmm10,xmm5,xmm15
  671c22:	c4 41 39 58 ea       	vaddpd xmm13,xmm8,xmm10
  671c27:	4c 03 fa             	add    r15,rdx
  671c2a:	c4 41 7b 10 1f       	vmovsd xmm11,QWORD PTR [r15]
  671c2f:	4a 8d 14 6a          	lea    rdx,[rdx+r13*2]
  671c33:	c4 01 21 16 24 2f    	vmovhpd xmm12,xmm11,QWORD PTR [r15+r13*1]
  671c39:	c4 41 59 59 f4       	vmulpd xmm14,xmm4,xmm12
  671c3e:	c4 41 11 5c c6       	vsubpd xmm8,xmm13,xmm14
  671c43:	4c 8b bd 18 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9e8]
  671c4a:	c4 41 41 59 d0       	vmulpd xmm10,xmm7,xmm8
  671c4f:	c4 01 79 11 14 d1    	vmovupd XMMWORD PTR [r9+r10*8],xmm10
  671c55:	4d 03 fe             	add    r15,r14
  671c58:	c4 41 7b 10 1f       	vmovsd xmm11,QWORD PTR [r15]
  671c5d:	c4 01 21 16 24 27    	vmovhpd xmm12,xmm11,QWORD PTR [r15+r12*1]
  671c63:	4e 8d 3c 30          	lea    r15,[rax+r14*1]
  671c67:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  671c6c:	c4 01 11 16 34 27    	vmovhpd xmm14,xmm13,QWORD PTR [r15+r12*1]
  671c72:	4c 8b bd f0 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa10]
  671c79:	c4 41 69 59 fc       	vmulpd xmm15,xmm2,xmm12
  671c7e:	c4 41 51 59 c6       	vmulpd xmm8,xmm5,xmm14
  671c83:	c4 41 01 58 e0       	vaddpd xmm12,xmm15,xmm8
  671c88:	4d 03 fe             	add    r15,r14
  671c8b:	c4 41 7b 10 17       	vmovsd xmm10,QWORD PTR [r15]
  671c90:	4f 8d 34 66          	lea    r14,[r14+r12*2]
  671c94:	c4 01 29 16 1c 27    	vmovhpd xmm11,xmm10,QWORD PTR [r15+r12*1]
  671c9a:	c4 41 59 59 eb       	vmulpd xmm13,xmm4,xmm11
  671c9f:	c4 41 19 5c f5       	vsubpd xmm14,xmm12,xmm13
  671ca4:	c4 c1 41 59 fe       	vmulpd xmm7,xmm7,xmm14
  671ca9:	4c 8b bd 08 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9f8]
  671cb0:	c4 81 79 11 3c d7    	vmovupd XMMWORD PTR [r15+r10*8],xmm7
  671cb6:	49 83 c2 02          	add    r10,0x2
  671cba:	4c 3b 95 70 fd ff ff 	cmp    r10,QWORD PTR [rbp-0x290]
  671cc1:	0f 82 f1 fd ff ff    	jb     671ab8 <gls_corstep_mod_mp_gls_corstep_tile_+0xa348>
  671cc7:	48 8b 95 48 e7 ff ff 	mov    rdx,QWORD PTR [rbp-0x18b8]
  671cce:	48 8b 85 28 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4d8]
  671cd5:	48 0f af c2          	imul   rax,rdx
  671cd9:	4c 8b a5 b0 fb ff ff 	mov    r12,QWORD PTR [rbp-0x450]
  671ce0:	4c 8b 8d 28 fd ff ff 	mov    r9,QWORD PTR [rbp-0x2d8]
  671ce7:	4c 0f af e2          	imul   r12,rdx
  671ceb:	4c 0f af ca          	imul   r9,rdx
  671cef:	48 89 85 50 e7 ff ff 	mov    QWORD PTR [rbp-0x18b0],rax
  671cf6:	48 3b 95 50 fd ff ff 	cmp    rdx,QWORD PTR [rbp-0x2b0]
  671cfd:	0f 83 1f c6 ff ff    	jae    66e322 <gls_corstep_mod_mp_gls_corstep_tile_+0x6bb2>
  671d03:	48 8b 95 78 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x1488]
  671d0a:	49 89 d3             	mov    r11,rdx
  671d0d:	4c 0f af 9d 60 fd ff 	imul   r11,QWORD PTR [rbp-0x2a0]
  671d14:	ff 
  671d15:	48 8b 8d b8 e8 ff ff 	mov    rcx,QWORD PTR [rbp-0x1748]
  671d1c:	4c 8d 42 fe          	lea    r8,[rdx-0x2]
  671d20:	4c 8b ad 00 ef ff ff 	mov    r13,QWORD PTR [rbp-0x1100]
  671d27:	4d 89 ee             	mov    r14,r13
  671d2a:	48 8b bd 58 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x13a8]
  671d31:	4c 8b 95 70 ec ff ff 	mov    r10,QWORD PTR [rbp-0x1390]
  671d38:	4a 8d 34 19          	lea    rsi,[rcx+r11*1]
  671d3c:	48 89 b5 48 f6 ff ff 	mov    QWORD PTR [rbp-0x9b8],rsi
  671d43:	48 8b 8d 50 ec ff ff 	mov    rcx,QWORD PTR [rbp-0x13b0]
  671d4a:	48 8b b5 e0 e9 ff ff 	mov    rsi,QWORD PTR [rbp-0x1620]
  671d51:	49 0f af fa          	imul   rdi,r10
  671d55:	49 0f af ca          	imul   rcx,r10
  671d59:	49 0f af f2          	imul   rsi,r10
  671d5d:	4c 8b 95 d8 fc ff ff 	mov    r10,QWORD PTR [rbp-0x328]
  671d64:	4d 0f af f2          	imul   r14,r10
  671d68:	48 8b 85 28 ea ff ff 	mov    rax,QWORD PTR [rbp-0x15d8]
  671d6f:	4c 03 f0             	add    r14,rax
  671d72:	4c 8b bd 18 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13e8]
  671d79:	4d 03 f7             	add    r14,r15
  671d7c:	4c 03 f6             	add    r14,rsi
  671d7f:	4c 89 b5 88 f6 ff ff 	mov    QWORD PTR [rbp-0x978],r14
  671d86:	49 89 d6             	mov    r14,rdx
  671d89:	4d 0f af f5          	imul   r14,r13
  671d8d:	4c 03 f0             	add    r14,rax
  671d90:	4c 8b ad 28 eb ff ff 	mov    r13,QWORD PTR [rbp-0x14d8]
  671d97:	4d 03 f7             	add    r14,r15
  671d9a:	4c 8b bd a8 eb ff ff 	mov    r15,QWORD PTR [rbp-0x1458]
  671da1:	4c 03 f6             	add    r14,rsi
  671da4:	4c 89 b5 80 f6 ff ff 	mov    QWORD PTR [rbp-0x980],r14
  671dab:	4c 03 9d c8 e8 ff ff 	add    r11,QWORD PTR [rbp-0x1738]
  671db2:	4d 8d 74 3d 00       	lea    r14,[r13+rdi*1+0x0]
  671db7:	4c 8b ad 58 fd ff ff 	mov    r13,QWORD PTR [rbp-0x2a8]
  671dbe:	49 8d 04 37          	lea    rax,[r15+rsi*1]
  671dc2:	48 89 85 60 f6 ff ff 	mov    QWORD PTR [rbp-0x9a0],rax
  671dc9:	4d 89 ef             	mov    r15,r13
  671dcc:	4c 89 e8             	mov    rax,r13
  671dcf:	4c 0f af fa          	imul   r15,rdx
  671dd3:	49 0f af c2          	imul   rax,r10
  671dd7:	4d 0f af e8          	imul   r13,r8
  671ddb:	4c 89 b5 70 f6 ff ff 	mov    QWORD PTR [rbp-0x990],r14
  671de2:	4c 8b b5 10 eb ff ff 	mov    r14,QWORD PTR [rbp-0x14f0]
  671de9:	4d 03 fe             	add    r15,r14
  671dec:	49 03 c6             	add    rax,r14
  671def:	4d 03 ee             	add    r13,r14
  671df2:	4c 8b b5 68 eb ff ff 	mov    r14,QWORD PTR [rbp-0x1498]
  671df9:	4c 03 ff             	add    r15,rdi
  671dfc:	4c 89 bd 98 f6 ff ff 	mov    QWORD PTR [rbp-0x968],r15
  671e03:	48 03 c7             	add    rax,rdi
  671e06:	48 89 85 c8 e6 ff ff 	mov    QWORD PTR [rbp-0x1938],rax
  671e0d:	4c 03 ef             	add    r13,rdi
  671e10:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  671e17:	4d 8d 3c 3e          	lea    r15,[r14+rdi*1]
  671e1b:	4c 8b b5 f8 ea ff ff 	mov    r14,QWORD PTR [rbp-0x1508]
  671e22:	4c 89 bd a8 e6 ff ff 	mov    QWORD PTR [rbp-0x1958],r15
  671e29:	4c 0f af c0          	imul   r8,rax
  671e2d:	4c 89 ad b8 e6 ff ff 	mov    QWORD PTR [rbp-0x1948],r13
  671e34:	4d 8d 3c 0e          	lea    r15,[r14+rcx*1]
  671e38:	49 89 c6             	mov    r14,rax
  671e3b:	4c 0f af f2          	imul   r14,rdx
  671e3f:	49 0f af c2          	imul   rax,r10
  671e43:	48 8b 95 58 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x14a8]
  671e4a:	4c 8b ad 08 ec ff ff 	mov    r13,QWORD PTR [rbp-0x13f8]
  671e51:	4d 03 f5             	add    r14,r13
  671e54:	48 03 b5 98 eb ff ff 	add    rsi,QWORD PTR [rbp-0x1468]
  671e5b:	4c 03 f1             	add    r14,rcx
  671e5e:	48 03 bd b0 ea ff ff 	add    rdi,QWORD PTR [rbp-0x1550]
  671e65:	4d 03 c5             	add    r8,r13
  671e68:	49 03 c5             	add    rax,r13
  671e6b:	48 03 d1             	add    rdx,rcx
  671e6e:	48 89 95 58 f6 ff ff 	mov    QWORD PTR [rbp-0x9a8],rdx
  671e75:	4c 03 c1             	add    r8,rcx
  671e78:	48 89 bd 38 f6 ff ff 	mov    QWORD PTR [rbp-0x9c8],rdi
  671e7f:	48 03 c1             	add    rax,rcx
  671e82:	48 89 b5 28 f6 ff ff 	mov    QWORD PTR [rbp-0x9d8],rsi
  671e89:	4c 89 9d 30 f6 ff ff 	mov    QWORD PTR [rbp-0x9d0],r11
  671e90:	48 03 8d 08 eb ff ff 	add    rcx,QWORD PTR [rbp-0x14f8]
  671e97:	4c 89 f2             	mov    rdx,r14
  671e9a:	4c 89 fe             	mov    rsi,r15
  671e9d:	48 8b bd a8 e6 ff ff 	mov    rdi,QWORD PTR [rbp-0x1958]
  671ea4:	4c 8b 95 b8 e6 ff ff 	mov    r10,QWORD PTR [rbp-0x1948]
  671eab:	4c 8b 9d c8 e6 ff ff 	mov    r11,QWORD PTR [rbp-0x1938]
  671eb2:	4c 8b b5 50 e7 ff ff 	mov    r14,QWORD PTR [rbp-0x18b0]
  671eb9:	4c 8b ad 48 e7 ff ff 	mov    r13,QWORD PTR [rbp-0x18b8]
  671ec0:	4c 8b bd 60 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9a0]
  671ec7:	c4 41 73 59 34 39    	vmulsd xmm14,xmm1,QWORD PTR [r9+rdi*1]
  671ecd:	c4 01 7b 10 0c 3e    	vmovsd xmm9,QWORD PTR [r14+r15*1]
  671ed3:	4c 8b bd 28 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9d8]
  671eda:	c4 01 33 58 14 3e    	vaddsd xmm10,xmm9,QWORD PTR [r14+r15*1]
  671ee0:	c4 41 63 59 0c 34    	vmulsd xmm9,xmm3,QWORD PTR [r12+rsi*1]
  671ee6:	c4 41 7b 59 c2       	vmulsd xmm8,xmm0,xmm10
  671eeb:	c4 41 4b 59 14 0c    	vmulsd xmm10,xmm6,QWORD PTR [r12+rcx*1]
  671ef1:	4c 8b bd 70 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x990]
  671ef8:	c4 01 63 59 1c 39    	vmulsd xmm11,xmm3,QWORD PTR [r9+r15*1]
  671efe:	4c 8b bd 38 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9c8]
  671f05:	c4 01 4b 59 24 39    	vmulsd xmm12,xmm6,QWORD PTR [r9+r15*1]
  671f0b:	4c 8b bd e8 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb18]
  671f12:	c4 41 23 58 ec       	vaddsd xmm13,xmm11,xmm12
  671f17:	c4 41 33 58 da       	vaddsd xmm11,xmm9,xmm10
  671f1c:	c4 01 73 59 14 11    	vmulsd xmm10,xmm1,QWORD PTR [r9+r10*1]
  671f22:	c4 41 13 5c fe       	vsubsd xmm15,xmm13,xmm14
  671f27:	c4 c1 3b 59 ff       	vmulsd xmm7,xmm8,xmm15
  671f2c:	c4 81 7b 11 7c ef 08 	vmovsd QWORD PTR [r15+r13*8+0x8],xmm7
  671f33:	4c 8b bd 58 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9a8]
  671f3a:	c4 01 73 59 24 3c    	vmulsd xmm12,xmm1,QWORD PTR [r12+r15*1]
  671f40:	4c 8b bd f0 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb10]
  671f47:	c4 41 23 5c ec       	vsubsd xmm13,xmm11,xmm12
  671f4c:	c4 41 3b 59 c5       	vmulsd xmm8,xmm8,xmm13
  671f51:	c4 41 63 59 2c 14    	vmulsd xmm13,xmm3,QWORD PTR [r12+rdx*1]
  671f57:	c4 01 7b 11 44 ef 08 	vmovsd QWORD PTR [r15+r13*8+0x8],xmm8
  671f5e:	4c 8b bd 80 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x980]
  671f65:	c4 01 4b 59 04 19    	vmulsd xmm8,xmm6,QWORD PTR [r9+r11*1]
  671f6b:	c4 01 7b 10 34 3e    	vmovsd xmm14,QWORD PTR [r14+r15*1]
  671f71:	4c 8b bd 88 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x978]
  671f78:	c4 81 0b 58 3c 3e    	vaddsd xmm7,xmm14,QWORD PTR [r14+r15*1]
  671f7e:	c4 41 4b 59 34 04    	vmulsd xmm14,xmm6,QWORD PTR [r12+rax*1]
  671f84:	c5 fb 59 ff          	vmulsd xmm7,xmm0,xmm7
  671f88:	4c 8b bd 98 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x968]
  671f8f:	4c 03 b5 28 fb ff ff 	add    r14,QWORD PTR [rbp-0x4d8]
  671f96:	c4 01 63 59 3c 39    	vmulsd xmm15,xmm3,QWORD PTR [r9+r15*1]
  671f9c:	4c 8b bd 48 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9b8]
  671fa3:	c4 41 03 58 c8       	vaddsd xmm9,xmm15,xmm8
  671fa8:	c4 01 73 59 04 04    	vmulsd xmm8,xmm1,QWORD PTR [r12+r8*1]
  671fae:	c4 41 13 58 fe       	vaddsd xmm15,xmm13,xmm14
  671fb3:	c4 41 33 5c da       	vsubsd xmm11,xmm9,xmm10
  671fb8:	c4 41 03 5c c8       	vsubsd xmm9,xmm15,xmm8
  671fbd:	c4 41 43 59 e3       	vmulsd xmm12,xmm7,xmm11
  671fc2:	c4 c1 43 59 f9       	vmulsd xmm7,xmm7,xmm9
  671fc7:	c4 01 7b 11 24 ef    	vmovsd QWORD PTR [r15+r13*8],xmm12
  671fcd:	90                   	nop
  671fce:	4c 8b bd 30 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9d0]
  671fd5:	4c 03 8d 28 fd ff ff 	add    r9,QWORD PTR [rbp-0x2d8]
  671fdc:	4c 03 a5 b0 fb ff ff 	add    r12,QWORD PTR [rbp-0x450]
  671fe3:	c4 81 7b 11 3c ef    	vmovsd QWORD PTR [r15+r13*8],xmm7
  671fe9:	49 ff c5             	inc    r13
  671fec:	4c 3b ad 50 fd ff ff 	cmp    r13,QWORD PTR [rbp-0x2b0]
  671ff3:	0f 82 c7 fe ff ff    	jb     671ec0 <gls_corstep_mod_mp_gls_corstep_tile_+0xa750>
  671ff9:	e9 24 c3 ff ff       	jmp    66e322 <gls_corstep_mod_mp_gls_corstep_tile_+0x6bb2>
  671ffe:	4d 85 ed             	test   r13,r13
  672001:	7e 51                	jle    672054 <gls_corstep_mod_mp_gls_corstep_tile_+0xa8e4>
  672003:	48 89 85 68 e8 ff ff 	mov    QWORD PTR [rbp-0x1798],rax
  67200a:	48 89 95 60 e8 ff ff 	mov    QWORD PTR [rbp-0x17a0],rdx
  672011:	c5 fb 10 0d 2f a5 1d 	vmovsd xmm1,QWORD PTR [rip+0x1da52f]        # 84c548 <__STRLITPACK_0.112+0x438>
  672018:	00 
  672019:	c5 fb 10 35 1f a5 1d 	vmovsd xmm6,QWORD PTR [rip+0x1da51f]        # 84c540 <__STRLITPACK_0.112+0x430>
  672020:	00 
  672021:	c5 f9 10 25 37 9a 1d 	vmovupd xmm4,XMMWORD PTR [rip+0x1d9a37]        # 84ba60 <__STRLITPACK_19.34+0x80>
  672028:	00 
  672029:	c5 f9 10 2d 1f 9a 1d 	vmovupd xmm5,XMMWORD PTR [rip+0x1d9a1f]        # 84ba50 <__STRLITPACK_19.34+0x70>
  672030:	00 
  672031:	c5 f9 10 15 07 9a 1d 	vmovupd xmm2,XMMWORD PTR [rip+0x1d9a07]        # 84ba40 <__STRLITPACK_19.34+0x60>
  672038:	00 
  672039:	c5 fb 10 1d c7 a4 1d 	vmovsd xmm3,QWORD PTR [rip+0x1da4c7]        # 84c508 <__STRLITPACK_0.112+0x3f8>
  672040:	00 
  672041:	4c 8b b5 40 ec ff ff 	mov    r14,QWORD PTR [rbp-0x13c0]
  672048:	4c 8b bd 48 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13b8]
  67204f:	e9 0d c3 ff ff       	jmp    66e361 <gls_corstep_mod_mp_gls_corstep_tile_+0x6bf1>
  672054:	c4 81 7b 59 4c e2 f8 	vmulsd xmm1,xmm0,QWORD PTR [r10+r12*8-0x8]
  67205b:	41 3b cf             	cmp    ecx,r15d
  67205e:	c5 f1 57 3d 5a 98 1d 	vxorpd xmm7,xmm1,XMMWORD PTR [rip+0x1d985a]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  672065:	00 
  672066:	0f 8c 24 25 00 00    	jl     674590 <gls_corstep_mod_mp_gls_corstep_tile_+0xce20>
  67206c:	48 89 85 68 e8 ff ff 	mov    QWORD PTR [rbp-0x1798],rax
  672073:	48 89 95 60 e8 ff ff 	mov    QWORD PTR [rbp-0x17a0],rdx
  67207a:	48 89 b5 70 ec ff ff 	mov    QWORD PTR [rbp-0x1390],rsi
  672081:	4c 8b ad 50 fd ff ff 	mov    r13,QWORD PTR [rbp-0x2b0]
  672088:	83 bd 08 ef ff ff 0c 	cmp    DWORD PTR [rbp-0x10f8],0xc
  67208f:	0f 8e 24 27 00 00    	jle    6747b9 <gls_corstep_mod_mp_gls_corstep_tile_+0xd049>
  672095:	33 f6                	xor    esi,esi
  672097:	48 8b bd 90 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x1370]
  67209e:	48 8b 95 a0 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1360]
  6720a5:	c5 f8 77             	vzeroupper 
  6720a8:	c5 fb 11 bd 68 ff ff 	vmovsd QWORD PTR [rbp-0x98],xmm7
  6720af:	ff 
  6720b0:	e8 db f3 e5 ff       	call   4d1490 <_intel_fast_memset>
  6720b5:	33 f6                	xor    esi,esi
  6720b7:	c5 fb 10 bd 68 ff ff 	vmovsd xmm7,QWORD PTR [rbp-0x98]
  6720be:	ff 
  6720bf:	48 8b bd 98 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x1368]
  6720c6:	48 8b 95 a0 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1360]
  6720cd:	c5 fb 11 bd 68 ff ff 	vmovsd QWORD PTR [rbp-0x98],xmm7
  6720d4:	ff 
  6720d5:	e8 b6 f3 e5 ff       	call   4d1490 <_intel_fast_memset>
  6720da:	c5 fb 10 bd 68 ff ff 	vmovsd xmm7,QWORD PTR [rbp-0x98]
  6720e1:	ff 
  6720e2:	4c 8b bd 08 ea ff ff 	mov    r15,QWORD PTR [rbp-0x15f8]
  6720e9:	4c 8b 9d 78 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xb88]
  6720f0:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  6720f4:	48 8b bd 70 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x1390]
  6720fb:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  6720ff:	48 8b 85 d8 e7 ff ff 	mov    rax,QWORD PTR [rbp-0x1828]
  672106:	47 8b 7c 9f fc       	mov    r15d,DWORD PTR [r15+r11*4-0x4]
  67210b:	4c 8b 9d a8 e9 ff ff 	mov    r11,QWORD PTR [rbp-0x1658]
  672112:	4c 0f af df          	imul   r11,rdi
  672116:	48 8b 8d b0 eb ff ff 	mov    rcx,QWORD PTR [rbp-0x1450]
  67211d:	45 8d 67 ff          	lea    r12d,[r15-0x1]
  672121:	44 89 a5 b0 f6 ff ff 	mov    DWORD PTR [rbp-0x950],r12d
  672128:	4c 8b a5 b0 e9 ff ff 	mov    r12,QWORD PTR [rbp-0x1650]
  67212f:	4c 0f af e7          	imul   r12,rdi
  672133:	48 8b 95 d0 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x1430]
  67213a:	4e 8d 04 20          	lea    r8,[rax+r12*1]
  67213e:	48 8b 85 c0 e9 ff ff 	mov    rax,QWORD PTR [rbp-0x1640]
  672145:	48 0f af c7          	imul   rax,rdi
  672149:	48 8b b5 90 e7 ff ff 	mov    rsi,QWORD PTR [rbp-0x1870]
  672150:	4c 8d 34 01          	lea    r14,[rcx+rax*1]
  672154:	4c 89 b5 98 f3 ff ff 	mov    QWORD PTR [rbp-0xc68],r14
  67215b:	41 8d 4f fe          	lea    ecx,[r15-0x2]
  67215f:	4c 8b b5 20 ec ff ff 	mov    r14,QWORD PTR [rbp-0x13e0]
  672166:	4c 8b 95 d0 e7 ff ff 	mov    r10,QWORD PTR [rbp-0x1830]
  67216d:	48 8d 3c 06          	lea    rdi,[rsi+rax*1]
  672171:	4c 8b 8d c8 eb ff ff 	mov    r9,QWORD PTR [rbp-0x1438]
  672178:	89 ce                	mov    esi,ecx
  67217a:	4c 89 85 c8 f1 ff ff 	mov    QWORD PTR [rbp-0xe38],r8
  672181:	4d 03 f3             	add    r14,r11
  672184:	4c 89 b5 c0 f1 ff ff 	mov    QWORD PTR [rbp-0xe40],r14
  67218b:	4e 8d 04 22          	lea    r8,[rdx+r12*1]
  67218f:	4c 8b b5 e8 ea ff ff 	mov    r14,QWORD PTR [rbp-0x1518]
  672196:	83 e6 fc             	and    esi,0xfffffffc
  672199:	48 8b 95 e0 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1520]
  6721a0:	4d 03 d3             	add    r10,r11
  6721a3:	48 c7 85 28 f1 ff ff 	mov    QWORD PTR [rbp-0xed8],0x0
  6721aa:	00 00 00 00 
  6721ae:	4d 03 cb             	add    r9,r11
  6721b1:	48 63 f6             	movsxd rsi,esi
  6721b4:	4d 03 f4             	add    r14,r12
  6721b7:	4c 89 b5 b8 f1 ff ff 	mov    QWORD PTR [rbp-0xe48],r14
  6721be:	49 03 d3             	add    rdx,r11
  6721c1:	4c 8b b5 00 ec ff ff 	mov    r14,QWORD PTR [rbp-0x1400]
  6721c8:	48 63 c9             	movsxd rcx,ecx
  6721cb:	48 89 85 90 f3 ff ff 	mov    QWORD PTR [rbp-0xc70],rax
  6721d2:	c5 fb 12 c7          	vmovddup xmm0,xmm7
  6721d6:	4d 03 f4             	add    r14,r12
  6721d9:	4c 89 b5 b0 f1 ff ff 	mov    QWORD PTR [rbp-0xe50],r14
  6721e0:	4c 8b b5 88 eb ff ff 	mov    r14,QWORD PTR [rbp-0x1478]
  6721e7:	48 89 b5 90 fc ff ff 	mov    QWORD PTR [rbp-0x370],rsi
  6721ee:	48 89 8d 90 f1 ff ff 	mov    QWORD PTR [rbp-0xe70],rcx
  6721f5:	48 89 95 40 f1 ff ff 	mov    QWORD PTR [rbp-0xec0],rdx
  6721fc:	4d 03 f3             	add    r14,r11
  6721ff:	4c 89 b5 a8 f1 ff ff 	mov    QWORD PTR [rbp-0xe58],r14
  672206:	4c 8b b5 70 eb ff ff 	mov    r14,QWORD PTR [rbp-0x1490]
  67220d:	4c 03 9d 18 eb ff ff 	add    r11,QWORD PTR [rbp-0x14e8]
  672214:	4c 89 9d 38 f1 ff ff 	mov    QWORD PTR [rbp-0xec8],r11
  67221b:	89 b5 48 f1 ff ff    	mov    DWORD PTR [rbp-0xeb8],esi
  672221:	4c 03 f0             	add    r14,rax
  672224:	4c 89 b5 a0 f1 ff ff 	mov    QWORD PTR [rbp-0xe60],r14
  67222b:	4c 8b b5 a0 eb ff ff 	mov    r14,QWORD PTR [rbp-0x1460]
  672232:	48 8b 85 28 f1 ff ff 	mov    rax,QWORD PTR [rbp-0xed8]
  672239:	89 8d a8 f6 ff ff    	mov    DWORD PTR [rbp-0x958],ecx
  67223f:	48 89 bd 50 f1 ff ff 	mov    QWORD PTR [rbp-0xeb0],rdi
  672246:	4d 03 f4             	add    r14,r12
  672249:	4c 03 a5 20 eb ff ff 	add    r12,QWORD PTR [rbp-0x14e0]
  672250:	4c 89 b5 98 f1 ff ff 	mov    QWORD PTR [rbp-0xe68],r14
  672257:	4c 89 a5 30 f1 ff ff 	mov    QWORD PTR [rbp-0xed0],r12
  67225e:	4c 89 85 58 f1 ff ff 	mov    QWORD PTR [rbp-0xea8],r8
  672265:	4c 89 8d 60 f1 ff ff 	mov    QWORD PTR [rbp-0xea0],r9
  67226c:	4c 89 95 68 f1 ff ff 	mov    QWORD PTR [rbp-0xe98],r10
  672273:	44 89 bd d0 e6 ff ff 	mov    DWORD PTR [rbp-0x1930],r15d
  67227a:	83 bd b0 f6 ff ff 02 	cmp    DWORD PTR [rbp-0x950],0x2
  672281:	0f 8c df 06 00 00    	jl     672966 <gls_corstep_mod_mp_gls_corstep_tile_+0xb1f6>
  672287:	83 bd a8 f6 ff ff 04 	cmp    DWORD PTR [rbp-0x958],0x4
  67228e:	0f 8c 1d 25 00 00    	jl     6747b1 <gls_corstep_mod_mp_gls_corstep_tile_+0xd041>
  672294:	4c 8b 95 60 f0 ff ff 	mov    r10,QWORD PTR [rbp-0xfa0]
  67229b:	33 c9                	xor    ecx,ecx
  67229d:	4c 8b bd 70 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd90]
  6722a4:	4c 0f af f8          	imul   r15,rax
  6722a8:	4c 8b 85 70 f0 ff ff 	mov    r8,QWORD PTR [rbp-0xf90]
  6722af:	49 8d 14 c2          	lea    rdx,[r10+rax*8]
  6722b3:	4c 8b 95 f8 f1 ff ff 	mov    r10,QWORD PTR [rbp-0xe08]
  6722ba:	48 89 95 88 fc ff ff 	mov    QWORD PTR [rbp-0x378],rdx
  6722c1:	48 8b bd 68 f1 ff ff 	mov    rdi,QWORD PTR [rbp-0xe98]
  6722c8:	4d 8d 0c c0          	lea    r9,[r8+rax*8]
  6722cc:	4c 8b 85 50 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xdb0]
  6722d3:	49 8d 14 c2          	lea    rdx,[r10+rax*8]
  6722d7:	4c 8b 95 78 f0 ff ff 	mov    r10,QWORD PTR [rbp-0xf88]
  6722de:	48 89 95 80 fc ff ff 	mov    QWORD PTR [rbp-0x380],rdx
  6722e5:	4e 8d 34 3f          	lea    r14,[rdi+r15*1]
  6722e9:	48 8b bd 18 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xae8]
  6722f0:	48 0f af f8          	imul   rdi,rax
  6722f4:	4c 89 8d 78 f1 ff ff 	mov    QWORD PTR [rbp-0xe88],r9
  6722fb:	49 8d 14 c2          	lea    rdx,[r10+rax*8]
  6722ff:	4c 8b 95 10 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xaf0]
  672306:	4d 8d 0c c0          	lea    r9,[r8+rax*8]
  67230a:	4c 0f af d0          	imul   r10,rax
  67230e:	48 89 95 70 fc ff ff 	mov    QWORD PTR [rbp-0x390],rdx
  672315:	4c 8b 85 b0 f1 ff ff 	mov    r8,QWORD PTR [rbp-0xe50]
  67231c:	48 8b 95 c8 f1 ff ff 	mov    rdx,QWORD PTR [rbp-0xe38]
  672323:	4c 89 8d 78 fc ff ff 	mov    QWORD PTR [rbp-0x388],r9
  67232a:	4c 8b ad 98 f3 ff ff 	mov    r13,QWORD PTR [rbp-0xc68]
  672331:	4f 8d 0c 10          	lea    r9,[r8+r10*1]
  672335:	4c 89 8d 68 fc ff ff 	mov    QWORD PTR [rbp-0x398],r9
  67233c:	4e 8d 04 12          	lea    r8,[rdx+r10*1]
  672340:	4c 89 85 60 fc ff ff 	mov    QWORD PTR [rbp-0x3a0],r8
  672347:	4c 8b 8d a8 f1 ff ff 	mov    r9,QWORD PTR [rbp-0xe58]
  67234e:	4c 03 ef             	add    r13,rdi
  672351:	4c 8b 85 98 f1 ff ff 	mov    r8,QWORD PTR [rbp-0xe68]
  672358:	4c 8b a5 68 f0 ff ff 	mov    r12,QWORD PTR [rbp-0xf98]
  67235f:	48 8b b5 c0 f1 ff ff 	mov    rsi,QWORD PTR [rbp-0xe40]
  672366:	4b 8d 14 39          	lea    rdx,[r9+r15*1]
  67236a:	44 8b 9d 48 f1 ff ff 	mov    r11d,DWORD PTR [rbp-0xeb8]
  672371:	4f 8d 0c 10          	lea    r9,[r8+r10*1]
  672375:	45 33 c0             	xor    r8d,r8d
  672378:	4d 8d 24 c4          	lea    r12,[r12+rax*8]
  67237c:	4c 89 8d 50 fc ff ff 	mov    QWORD PTR [rbp-0x3b0],r9
  672383:	45 33 c9             	xor    r9d,r9d
  672386:	48 89 95 58 fc ff ff 	mov    QWORD PTR [rbp-0x3a8],rdx
  67238d:	33 d2                	xor    edx,edx
  67238f:	4c 03 95 30 f1 ff ff 	add    r10,QWORD PTR [rbp-0xed0]
  672396:	49 03 f7             	add    rsi,r15
  672399:	4c 03 bd 38 f1 ff ff 	add    r15,QWORD PTR [rbp-0xec8]
  6723a0:	44 89 9d 20 f1 ff ff 	mov    DWORD PTR [rbp-0xee0],r11d
  6723a7:	4c 89 95 10 fc ff ff 	mov    QWORD PTR [rbp-0x3f0],r10
  6723ae:	4c 89 a5 00 fc ff ff 	mov    QWORD PTR [rbp-0x400],r12
  6723b5:	4c 89 ad 08 fc ff ff 	mov    QWORD PTR [rbp-0x3f8],r13
  6723bc:	4c 89 b5 20 fc ff ff 	mov    QWORD PTR [rbp-0x3e0],r14
  6723c3:	48 89 85 28 f1 ff ff 	mov    QWORD PTR [rbp-0xed8],rax
  6723ca:	48 03 bd a0 f1 ff ff 	add    rdi,QWORD PTR [rbp-0xe60]
  6723d1:	49 89 d2             	mov    r10,rdx
  6723d4:	48 8b 85 78 f1 ff ff 	mov    rax,QWORD PTR [rbp-0xe88]
  6723db:	4c 8b 9d 58 f0 ff ff 	mov    r11,QWORD PTR [rbp-0xfa8]
  6723e2:	4c 8b a5 40 fd ff ff 	mov    r12,QWORD PTR [rbp-0x2c0]
  6723e9:	4c 8b ad 38 fd ff ff 	mov    r13,QWORD PTR [rbp-0x2c8]
  6723f0:	4c 8b b5 30 fd ff ff 	mov    r14,QWORD PTR [rbp-0x2d0]
  6723f7:	4c 89 bd 18 fc ff ff 	mov    QWORD PTR [rbp-0x3e8],r15
  6723fe:	48 83 c1 04          	add    rcx,0x4
  672402:	4e 8d 3c 06          	lea    r15,[rsi+r8*1]
  672406:	c4 c1 7b 10 1f       	vmovsd xmm3,QWORD PTR [r15]
  67240b:	c4 81 61 16 2c 37    	vmovhpd xmm5,xmm3,QWORD PTR [r15+r14*1]
  672411:	4c 8b bd 20 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3e0]
  672418:	4d 03 f8             	add    r15,r8
  67241b:	c4 c1 7b 10 27       	vmovsd xmm4,QWORD PTR [r15]
  672420:	c4 81 59 16 34 37    	vmovhpd xmm6,xmm4,QWORD PTR [r15+r14*1]
  672426:	c5 51 58 c6          	vaddpd xmm8,xmm5,xmm6
  67242a:	c4 41 79 59 d0       	vmulpd xmm10,xmm0,xmm8
  67242f:	4c 8b bd 08 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3f8]
  672436:	4d 03 f9             	add    r15,r9
  672439:	c4 41 7b 10 0f       	vmovsd xmm9,QWORD PTR [r15]
  67243e:	c4 81 31 16 1c 27    	vmovhpd xmm3,xmm9,QWORD PTR [r15+r12*1]
  672444:	c5 29 5e db          	vdivpd xmm11,xmm10,xmm3
  672448:	4c 8b bd 80 fc ff ff 	mov    r15,QWORD PTR [rbp-0x380]
  67244f:	4e 8d 7c 3a 10       	lea    r15,[rdx+r15*1+0x10]
  672454:	c4 41 7b 11 1f       	vmovsd QWORD PTR [r15],xmm11
  672459:	c4 01 79 17 5c df 08 	vmovhpd QWORD PTR [r15+r11*8+0x8],xmm11
  672460:	4c 8b bd 68 fc ff ff 	mov    r15,QWORD PTR [rbp-0x398]
  672467:	4d 03 fa             	add    r15,r10
  67246a:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  67246f:	c4 01 19 16 34 2f    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r13*1]
  672475:	4c 8b bd 60 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3a0]
  67247c:	4d 03 fa             	add    r15,r10
  67247f:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  672484:	c4 01 11 16 3c 2f    	vmovhpd xmm15,xmm13,QWORD PTR [r15+r13*1]
  67248a:	c4 41 09 58 d7       	vaddpd xmm10,xmm14,xmm15
  67248f:	c4 41 79 59 da       	vmulpd xmm11,xmm0,xmm10
  672494:	c5 a1 5e e3          	vdivpd xmm4,xmm11,xmm3
  672498:	4c 8b bd 78 fc ff ff 	mov    r15,QWORD PTR [rbp-0x388]
  67249f:	4e 8d 7c 3a 10       	lea    r15,[rdx+r15*1+0x10]
  6724a4:	c4 c1 7b 11 27       	vmovsd QWORD PTR [r15],xmm4
  6724a9:	c4 81 79 17 64 df 08 	vmovhpd QWORD PTR [r15+r11*8+0x8],xmm4
  6724b0:	4c 8b bd 70 fc ff ff 	mov    r15,QWORD PTR [rbp-0x390]
  6724b7:	4e 8d 7c 3a 10       	lea    r15,[rdx+r15*1+0x10]
  6724bc:	c4 c1 7b 11 17       	vmovsd QWORD PTR [r15],xmm2
  6724c1:	c4 81 79 17 54 df 08 	vmovhpd QWORD PTR [r15+r11*8+0x8],xmm2
  6724c8:	4c 8b bd 58 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3a8]
  6724cf:	4d 03 f8             	add    r15,r8
  6724d2:	c4 c1 7b 10 2f       	vmovsd xmm5,QWORD PTR [r15]
  6724d7:	c4 01 51 16 04 37    	vmovhpd xmm8,xmm5,QWORD PTR [r15+r14*1]
  6724dd:	4c 8b bd 18 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3e8]
  6724e4:	4d 03 f8             	add    r15,r8
  6724e7:	c4 c1 7b 10 37       	vmovsd xmm6,QWORD PTR [r15]
  6724ec:	4f 8d 04 b0          	lea    r8,[r8+r14*4]
  6724f0:	c4 01 49 16 0c 37    	vmovhpd xmm9,xmm6,QWORD PTR [r15+r14*1]
  6724f6:	4e 8d 3c 0f          	lea    r15,[rdi+r9*1]
  6724fa:	c4 41 39 58 e1       	vaddpd xmm12,xmm8,xmm9
  6724ff:	c4 41 79 59 f4       	vmulpd xmm14,xmm0,xmm12
  672504:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  672509:	4f 8d 0c a1          	lea    r9,[r9+r12*4]
  67250d:	c4 01 11 16 04 27    	vmovhpd xmm8,xmm13,QWORD PTR [r15+r12*1]
  672513:	c4 41 09 5e f8       	vdivpd xmm15,xmm14,xmm8
  672518:	4c 8b bd 00 fc ff ff 	mov    r15,QWORD PTR [rbp-0x400]
  67251f:	4e 8d 7c 3a 20       	lea    r15,[rdx+r15*1+0x20]
  672524:	c4 41 7b 11 3f       	vmovsd QWORD PTR [r15],xmm15
  672529:	c4 01 79 17 7c df 08 	vmovhpd QWORD PTR [r15+r11*8+0x8],xmm15
  672530:	4c 8b bd 50 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3b0]
  672537:	4d 03 fa             	add    r15,r10
  67253a:	c4 41 7b 10 37       	vmovsd xmm14,QWORD PTR [r15]
  67253f:	c4 81 09 16 1c 2f    	vmovhpd xmm3,xmm14,QWORD PTR [r15+r13*1]
  672545:	4c 8b bd 10 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3f0]
  67254c:	4d 03 fa             	add    r15,r10
  67254f:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  672554:	4f 8d 14 aa          	lea    r10,[r10+r13*4]
  672558:	c4 81 01 16 24 2f    	vmovhpd xmm4,xmm15,QWORD PTR [r15+r13*1]
  67255e:	c5 e1 58 ec          	vaddpd xmm5,xmm3,xmm4
  672562:	c5 f9 59 f5          	vmulpd xmm6,xmm0,xmm5
  672566:	c4 41 49 5e c8       	vdivpd xmm9,xmm6,xmm8
  67256b:	4c 8b bd 88 fc ff ff 	mov    r15,QWORD PTR [rbp-0x378]
  672572:	4e 8d 7c 3a 20       	lea    r15,[rdx+r15*1+0x20]
  672577:	c4 41 7b 11 0f       	vmovsd QWORD PTR [r15],xmm9
  67257c:	c4 01 79 17 4c df 08 	vmovhpd QWORD PTR [r15+r11*8+0x8],xmm9
  672583:	4c 8d 7c 02 20       	lea    r15,[rdx+rax*1+0x20]
  672588:	c4 c1 7b 11 17       	vmovsd QWORD PTR [r15],xmm2
  67258d:	c4 81 79 17 54 df 08 	vmovhpd QWORD PTR [r15+r11*8+0x8],xmm2
  672594:	4c 8b bd 60 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2a0]
  67259b:	4a 8d 14 ba          	lea    rdx,[rdx+r15*4]
  67259f:	48 3b 8d 90 fc ff ff 	cmp    rcx,QWORD PTR [rbp-0x370]
  6725a6:	0f 82 52 fe ff ff    	jb     6723fe <gls_corstep_mod_mp_gls_corstep_tile_+0xac8e>
  6725ac:	44 8b 9d 20 f1 ff ff 	mov    r11d,DWORD PTR [rbp-0xee0]
  6725b3:	48 8b 85 28 f1 ff ff 	mov    rax,QWORD PTR [rbp-0xed8]
  6725ba:	41 8d 53 01          	lea    edx,[r11+0x1]
  6725be:	3b 95 a8 f6 ff ff    	cmp    edx,DWORD PTR [rbp-0x958]
  6725c4:	0f 87 9c 03 00 00    	ja     672966 <gls_corstep_mod_mp_gls_corstep_tile_+0xb1f6>
  6725ca:	4d 63 db             	movsxd r11,r11d
  6725cd:	48 8b 95 90 f1 ff ff 	mov    rdx,QWORD PTR [rbp-0xe70]
  6725d4:	49 2b d3             	sub    rdx,r11
  6725d7:	48 89 95 28 fc ff ff 	mov    QWORD PTR [rbp-0x3d8],rdx
  6725de:	48 83 fa 02          	cmp    rdx,0x2
  6725e2:	0f 8c b9 21 00 00    	jl     6747a1 <gls_corstep_mod_mp_gls_corstep_tile_+0xd031>
  6725e8:	49 89 d1             	mov    r9,rdx
  6725eb:	4c 8b 95 70 f2 ff ff 	mov    r10,QWORD PTR [rbp-0xd90]
  6725f2:	4c 0f af d0          	imul   r10,rax
  6725f6:	4c 8b a5 30 fd ff ff 	mov    r12,QWORD PTR [rbp-0x2d0]
  6725fd:	4d 0f af e3          	imul   r12,r11
  672601:	4c 8b b5 10 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xaf0]
  672608:	4c 8b 85 60 f1 ff ff 	mov    r8,QWORD PTR [rbp-0xea0]
  67260f:	4c 0f af f0          	imul   r14,rax
  672613:	48 8b 8d 38 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2c8]
  67261a:	4d 03 c2             	add    r8,r10
  67261d:	49 0f af cb          	imul   rcx,r11
  672621:	4c 03 95 40 f1 ff ff 	add    r10,QWORD PTR [rbp-0xec0]
  672628:	4d 03 c4             	add    r8,r12
  67262b:	4d 03 d4             	add    r10,r12
  67262e:	4c 8b a5 18 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xae8]
  672635:	4c 0f af e0          	imul   r12,rax
  672639:	48 8b b5 40 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x2c0]
  672640:	49 0f af f3          	imul   rsi,r11
  672644:	48 8b 95 60 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x2a0]
  67264b:	49 0f af d3          	imul   rdx,r11
  67264f:	4c 8b ad 58 f1 ff ff 	mov    r13,QWORD PTR [rbp-0xea8]
  672656:	4c 8b bd 78 f0 ff ff 	mov    r15,QWORD PTR [rbp-0xf88]
  67265d:	41 83 e1 fe          	and    r9d,0xfffffffe
  672661:	4b 8d 7c 35 00       	lea    rdi,[r13+r14*1+0x0]
  672666:	4c 03 b5 b8 f1 ff ff 	add    r14,QWORD PTR [rbp-0xe48]
  67266d:	48 03 f9             	add    rdi,rcx
  672670:	4c 03 f1             	add    r14,rcx
  672673:	4d 8d 2c c7          	lea    r13,[r15+rax*8]
  672677:	48 8b 8d f8 f1 ff ff 	mov    rcx,QWORD PTR [rbp-0xe08]
  67267e:	4c 03 ea             	add    r13,rdx
  672681:	48 89 bd 80 f1 ff ff 	mov    QWORD PTR [rbp-0xe80],rdi
  672688:	48 8b bd 50 f2 ff ff 	mov    rdi,QWORD PTR [rbp-0xdb0]
  67268f:	4d 63 c9             	movsxd r9,r9d
  672692:	4c 8d 3c c1          	lea    r15,[rcx+rax*8]
  672696:	4c 89 8d 30 fc ff ff 	mov    QWORD PTR [rbp-0x3d0],r9
  67269d:	45 33 c9             	xor    r9d,r9d
  6726a0:	4c 03 a5 50 f1 ff ff 	add    r12,QWORD PTR [rbp-0xeb0]
  6726a7:	33 c9                	xor    ecx,ecx
  6726a9:	4c 03 e6             	add    r12,rsi
  6726ac:	48 8d 3c c7          	lea    rdi,[rdi+rax*8]
  6726b0:	33 f6                	xor    esi,esi
  6726b2:	48 03 fa             	add    rdi,rdx
  6726b5:	4c 03 fa             	add    r15,rdx
  6726b8:	33 d2                	xor    edx,edx
  6726ba:	4c 89 bd 40 fc ff ff 	mov    QWORD PTR [rbp-0x3c0],r15
  6726c1:	4c 89 ad 38 fc ff ff 	mov    QWORD PTR [rbp-0x3c8],r13
  6726c8:	4c 89 a5 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],r12
  6726cf:	4c 89 9d 70 f1 ff ff 	mov    QWORD PTR [rbp-0xe90],r11
  6726d6:	48 89 85 28 f1 ff ff 	mov    QWORD PTR [rbp-0xed8],rax
  6726dd:	49 89 d5             	mov    r13,rdx
  6726e0:	4c 8b a5 80 f1 ff ff 	mov    r12,QWORD PTR [rbp-0xe80]
  6726e7:	4c 8b bd 58 f0 ff ff 	mov    r15,QWORD PTR [rbp-0xfa8]
  6726ee:	4c 8b 9d 30 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2d0]
  6726f5:	49 8d 04 0a          	lea    rax,[r10+rcx*1]
  6726f9:	c5 fb 10 18          	vmovsd xmm3,QWORD PTR [rax]
  6726fd:	49 83 c1 02          	add    r9,0x2
  672701:	c4 a1 61 16 2c 18    	vmovhpd xmm5,xmm3,QWORD PTR [rax+r11*1]
  672707:	49 8d 04 08          	lea    rax,[r8+rcx*1]
  67270b:	c5 fb 10 20          	vmovsd xmm4,QWORD PTR [rax]
  67270f:	4a 8d 0c 59          	lea    rcx,[rcx+r11*2]
  672713:	c4 a1 59 16 34 18    	vmovhpd xmm6,xmm4,QWORD PTR [rax+r11*1]
  672719:	c5 51 58 c6          	vaddpd xmm8,xmm5,xmm6
  67271d:	c4 41 79 59 d0       	vmulpd xmm10,xmm0,xmm8
  672722:	4c 8b 9d 48 fc ff ff 	mov    r11,QWORD PTR [rbp-0x3b8]
  672729:	49 8d 04 33          	lea    rax,[r11+rsi*1]
  67272d:	4c 8b 9d 40 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2c0]
  672734:	c5 7b 10 08          	vmovsd xmm9,QWORD PTR [rax]
  672738:	c4 a1 31 16 1c 18    	vmovhpd xmm3,xmm9,QWORD PTR [rax+r11*1]
  67273e:	4a 8d 34 5e          	lea    rsi,[rsi+r11*2]
  672742:	c5 29 5e db          	vdivpd xmm11,xmm10,xmm3
  672746:	48 8b 85 40 fc ff ff 	mov    rax,QWORD PTR [rbp-0x3c0]
  67274d:	4c 8d 5c 02 10       	lea    r11,[rdx+rax*1+0x10]
  672752:	48 8b 85 38 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c8]
  672759:	c4 41 7b 11 1b       	vmovsd QWORD PTR [r11],xmm11
  67275e:	c4 01 79 17 5c fb 08 	vmovhpd QWORD PTR [r11+r15*8+0x8],xmm11
  672765:	4f 8d 1c 2e          	lea    r11,[r14+r13*1]
  672769:	c4 41 7b 10 23       	vmovsd xmm12,QWORD PTR [r11]
  67276e:	c4 41 19 16 34 03    	vmovhpd xmm14,xmm12,QWORD PTR [r11+rax*1]
  672774:	4f 8d 1c 2c          	lea    r11,[r12+r13*1]
  672778:	c4 41 7b 10 2b       	vmovsd xmm13,QWORD PTR [r11]
  67277d:	4d 8d 6c 45 00       	lea    r13,[r13+rax*2+0x0]
  672782:	c4 41 11 16 3c 03    	vmovhpd xmm15,xmm13,QWORD PTR [r11+rax*1]
  672788:	48 8d 44 3a 10       	lea    rax,[rdx+rdi*1+0x10]
  67278d:	c4 41 09 58 d7       	vaddpd xmm10,xmm14,xmm15
  672792:	c4 41 79 59 da       	vmulpd xmm11,xmm0,xmm10
  672797:	c5 a1 5e e3          	vdivpd xmm4,xmm11,xmm3
  67279b:	c5 fb 11 20          	vmovsd QWORD PTR [rax],xmm4
  67279f:	c4 a1 79 17 64 f8 08 	vmovhpd QWORD PTR [rax+r15*8+0x8],xmm4
  6727a6:	48 8b 85 38 fc ff ff 	mov    rax,QWORD PTR [rbp-0x3c8]
  6727ad:	4c 8d 5c 02 10       	lea    r11,[rdx+rax*1+0x10]
  6727b2:	48 8b 85 60 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2a0]
  6727b9:	c4 c1 7b 11 13       	vmovsd QWORD PTR [r11],xmm2
  6727be:	c4 81 79 17 54 fb 08 	vmovhpd QWORD PTR [r11+r15*8+0x8],xmm2
  6727c5:	48 8d 14 42          	lea    rdx,[rdx+rax*2]
  6727c9:	4c 3b 8d 30 fc ff ff 	cmp    r9,QWORD PTR [rbp-0x3d0]
  6727d0:	0f 82 18 ff ff ff    	jb     6726ee <gls_corstep_mod_mp_gls_corstep_tile_+0xaf7e>
  6727d6:	4c 8b 9d 70 f1 ff ff 	mov    r11,QWORD PTR [rbp-0xe90]
  6727dd:	48 8b 85 28 f1 ff ff 	mov    rax,QWORD PTR [rbp-0xed8]
  6727e4:	48 8b 95 30 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x3d0]
  6727eb:	4c 8b a5 38 fd ff ff 	mov    r12,QWORD PTR [rbp-0x2c8]
  6727f2:	4c 8b ad 40 fd ff ff 	mov    r13,QWORD PTR [rbp-0x2c0]
  6727f9:	4c 8b b5 30 fd ff ff 	mov    r14,QWORD PTR [rbp-0x2d0]
  672800:	4c 8b 95 60 fd ff ff 	mov    r10,QWORD PTR [rbp-0x2a0]
  672807:	4c 0f af e2          	imul   r12,rdx
  67280b:	4c 0f af ea          	imul   r13,rdx
  67280f:	4c 0f af f2          	imul   r14,rdx
  672813:	4c 0f af d2          	imul   r10,rdx
  672817:	48 3b 95 28 fc ff ff 	cmp    rdx,QWORD PTR [rbp-0x3d8]
  67281e:	0f 83 42 01 00 00    	jae    672966 <gls_corstep_mod_mp_gls_corstep_tile_+0xb1f6>
  672824:	4c 8b 85 70 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xd90]
  67282b:	4c 0f af c0          	imul   r8,rax
  67282f:	48 8b b5 10 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xaf0]
  672836:	48 8b bd 30 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2d0]
  67283d:	48 0f af f0          	imul   rsi,rax
  672841:	49 0f af fb          	imul   rdi,r11
  672845:	4c 8b 8d 60 f1 ff ff 	mov    r9,QWORD PTR [rbp-0xea0]
  67284c:	4c 8b bd 58 f1 ff ff 	mov    r15,QWORD PTR [rbp-0xea8]
  672853:	48 8b 8d 38 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2c8]
  67285a:	49 0f af cb          	imul   rcx,r11
  67285e:	48 8b 95 40 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x2c0]
  672865:	4d 03 c8             	add    r9,r8
  672868:	4c 03 85 40 f1 ff ff 	add    r8,QWORD PTR [rbp-0xec0]
  67286f:	4c 03 cf             	add    r9,rdi
  672872:	4c 03 c7             	add    r8,rdi
  672875:	49 8d 3c 37          	lea    rdi,[r15+rsi*1]
  672879:	4c 8b bd 18 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xae8]
  672880:	48 03 f9             	add    rdi,rcx
  672883:	4c 0f af f8          	imul   r15,rax
  672887:	49 0f af d3          	imul   rdx,r11
  67288b:	4c 0f af 9d 60 fd ff 	imul   r11,QWORD PTR [rbp-0x2a0]
  672892:	ff 
  672893:	48 03 b5 b8 f1 ff ff 	add    rsi,QWORD PTR [rbp-0xe48]
  67289a:	48 03 f1             	add    rsi,rcx
  67289d:	48 8b 8d 78 f0 ff ff 	mov    rcx,QWORD PTR [rbp-0xf88]
  6728a4:	4c 03 bd 50 f1 ff ff 	add    r15,QWORD PTR [rbp-0xeb0]
  6728ab:	4c 03 fa             	add    r15,rdx
  6728ae:	48 89 85 28 f1 ff ff 	mov    QWORD PTR [rbp-0xed8],rax
  6728b5:	48 8d 14 c1          	lea    rdx,[rcx+rax*8]
  6728b9:	49 03 d3             	add    rdx,r11
  6728bc:	48 89 95 88 f1 ff ff 	mov    QWORD PTR [rbp-0xe78],rdx
  6728c3:	48 8b 8d 50 f2 ff ff 	mov    rcx,QWORD PTR [rbp-0xdb0]
  6728ca:	48 8b 95 f8 f1 ff ff 	mov    rdx,QWORD PTR [rbp-0xe08]
  6728d1:	48 8d 0c c1          	lea    rcx,[rcx+rax*8]
  6728d5:	49 03 cb             	add    rcx,r11
  6728d8:	48 8d 14 c2          	lea    rdx,[rdx+rax*8]
  6728dc:	48 8b 85 88 f1 ff ff 	mov    rax,QWORD PTR [rbp-0xe78]
  6728e3:	49 03 d3             	add    rdx,r11
  6728e6:	4c 8b 9d 30 fc ff ff 	mov    r11,QWORD PTR [rbp-0x3d0]
  6728ed:	0f 1f 00             	nop    DWORD PTR [rax]
  6728f0:	c4 81 7b 10 1c 06    	vmovsd xmm3,QWORD PTR [r14+r8*1]
  6728f6:	49 ff c3             	inc    r11
  6728f9:	c4 41 7b 10 04 34    	vmovsd xmm8,QWORD PTR [r12+rsi*1]
  6728ff:	c4 01 7b 10 5c 3d 00 	vmovsd xmm11,QWORD PTR [r13+r15*1+0x0]
  672906:	c4 c1 7b 11 4c 02 10 	vmovsd QWORD PTR [r10+rax*1+0x10],xmm1
  67290d:	4c 03 ad 40 fd ff ff 	add    r13,QWORD PTR [rbp-0x2c0]
  672914:	c4 81 63 58 24 0e    	vaddsd xmm4,xmm3,QWORD PTR [r14+r9*1]
  67291a:	c4 41 3b 58 0c 3c    	vaddsd xmm9,xmm8,QWORD PTR [r12+rdi*1]
  672920:	c5 c3 59 ec          	vmulsd xmm5,xmm7,xmm4
  672924:	c4 41 43 59 d1       	vmulsd xmm10,xmm7,xmm9
  672929:	c4 c1 53 5e f3       	vdivsd xmm6,xmm5,xmm11
  67292e:	c4 41 2b 5e e3       	vdivsd xmm12,xmm10,xmm11
  672933:	c4 c1 7b 11 74 12 10 	vmovsd QWORD PTR [r10+rdx*1+0x10],xmm6
  67293a:	c4 41 7b 11 64 0a 10 	vmovsd QWORD PTR [r10+rcx*1+0x10],xmm12
  672941:	4c 03 b5 30 fd ff ff 	add    r14,QWORD PTR [rbp-0x2d0]
  672948:	4c 03 95 60 fd ff ff 	add    r10,QWORD PTR [rbp-0x2a0]
  67294f:	4c 03 a5 38 fd ff ff 	add    r12,QWORD PTR [rbp-0x2c8]
  672956:	4c 3b 9d 28 fc ff ff 	cmp    r11,QWORD PTR [rbp-0x3d8]
  67295d:	72 91                	jb     6728f0 <gls_corstep_mod_mp_gls_corstep_tile_+0xb180>
  67295f:	48 8b 85 28 f1 ff ff 	mov    rax,QWORD PTR [rbp-0xed8]
  672966:	48 ff c0             	inc    rax
  672969:	48 3b 85 50 fd ff ff 	cmp    rax,QWORD PTR [rbp-0x2b0]
  672970:	0f 82 04 f9 ff ff    	jb     67227a <gls_corstep_mod_mp_gls_corstep_tile_+0xab0a>
  672976:	4c 8b ad 50 fd ff ff 	mov    r13,QWORD PTR [rbp-0x2b0]
  67297d:	44 8b bd d0 e6 ff ff 	mov    r15d,DWORD PTR [rbp-0x1930]
  672984:	48 8b 85 90 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xc70]
  67298b:	4d 63 ff             	movsxd r15,r15d
  67298e:	49 83 fd 04          	cmp    r13,0x4
  672992:	0f 8c fc 1d 00 00    	jl     674794 <gls_corstep_mod_mp_gls_corstep_tile_+0xd024>
  672998:	4c 89 fa             	mov    rdx,r15
  67299b:	33 c9                	xor    ecx,ecx
  67299d:	48 0f af 95 60 fd ff 	imul   rdx,QWORD PTR [rbp-0x2a0]
  6729a4:	ff 
  6729a5:	48 03 95 c8 e8 ff ff 	add    rdx,QWORD PTR [rbp-0x1738]
  6729ac:	48 8b b5 50 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xab0]
  6729b3:	c5 fd 57 c0          	vxorpd ymm0,ymm0,ymm0
  6729b7:	c5 fd 11 04 ca       	vmovupd YMMWORD PTR [rdx+rcx*8],ymm0
  6729bc:	48 83 c1 04          	add    rcx,0x4
  6729c0:	48 3b ce             	cmp    rcx,rsi
  6729c3:	72 f2                	jb     6729b7 <gls_corstep_mod_mp_gls_corstep_tile_+0xb247>
  6729c5:	48 8b 95 50 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xab0]
  6729cc:	49 3b d5             	cmp    rdx,r13
  6729cf:	73 34                	jae    672a05 <gls_corstep_mod_mp_gls_corstep_tile_+0xb295>
  6729d1:	4c 89 f9             	mov    rcx,r15
  6729d4:	48 0f af 8d 60 fd ff 	imul   rcx,QWORD PTR [rbp-0x2a0]
  6729db:	ff 
  6729dc:	48 03 8d c8 e8 ff ff 	add    rcx,QWORD PTR [rbp-0x1738]
  6729e3:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  6729e7:	c5 fb 11 04 d1       	vmovsd QWORD PTR [rcx+rdx*8],xmm0
  6729ec:	48 ff c2             	inc    rdx
  6729ef:	49 3b d5             	cmp    rdx,r13
  6729f2:	72 f3                	jb     6729e7 <gls_corstep_mod_mp_gls_corstep_tile_+0xb277>
  6729f4:	49 83 fd 04          	cmp    r13,0x4
  6729f8:	0f 8c 8f 1d 00 00    	jl     67478d <gls_corstep_mod_mp_gls_corstep_tile_+0xd01d>
  6729fe:	48 8b 95 50 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xab0]
  672a05:	4c 89 f9             	mov    rcx,r15
  672a08:	33 f6                	xor    esi,esi
  672a0a:	48 0f af 8d 60 fd ff 	imul   rcx,QWORD PTR [rbp-0x2a0]
  672a11:	ff 
  672a12:	48 03 8d b8 e8 ff ff 	add    rcx,QWORD PTR [rbp-0x1748]
  672a19:	48 89 d7             	mov    rdi,rdx
  672a1c:	c5 fd 57 c0          	vxorpd ymm0,ymm0,ymm0
  672a20:	c5 fd 11 04 f1       	vmovupd YMMWORD PTR [rcx+rsi*8],ymm0
  672a25:	48 83 c6 04          	add    rsi,0x4
  672a29:	48 3b f7             	cmp    rsi,rdi
  672a2c:	72 f2                	jb     672a20 <gls_corstep_mod_mp_gls_corstep_tile_+0xb2b0>
  672a2e:	49 3b d5             	cmp    rdx,r13
  672a31:	73 23                	jae    672a56 <gls_corstep_mod_mp_gls_corstep_tile_+0xb2e6>
  672a33:	4c 89 f9             	mov    rcx,r15
  672a36:	48 0f af 8d 60 fd ff 	imul   rcx,QWORD PTR [rbp-0x2a0]
  672a3d:	ff 
  672a3e:	48 03 8d b8 e8 ff ff 	add    rcx,QWORD PTR [rbp-0x1748]
  672a45:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  672a49:	c5 fb 11 04 d1       	vmovsd QWORD PTR [rcx+rdx*8],xmm0
  672a4e:	48 ff c2             	inc    rdx
  672a51:	49 3b d5             	cmp    rdx,r13
  672a54:	72 f3                	jb     672a49 <gls_corstep_mod_mp_gls_corstep_tile_+0xb2d9>
  672a56:	4c 8b 8d 70 ec ff ff 	mov    r9,QWORD PTR [rbp-0x1390]
  672a5d:	4d 8d 77 ff          	lea    r14,[r15-0x1]
  672a61:	4c 89 b5 d8 fc ff ff 	mov    QWORD PTR [rbp-0x328],r14
  672a68:	4c 8b b5 58 ec ff ff 	mov    r14,QWORD PTR [rbp-0x13a8]
  672a6f:	4d 0f af f1          	imul   r14,r9
  672a73:	48 8b b5 40 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x13c0]
  672a7a:	4c 8b 95 50 ec ff ff 	mov    r10,QWORD PTR [rbp-0x13b0]
  672a81:	4d 0f af d1          	imul   r10,r9
  672a85:	48 8b 95 d0 f1 ff ff 	mov    rdx,QWORD PTR [rbp-0xe30]
  672a8c:	4a 8d 3c 36          	lea    rdi,[rsi+r14*1]
  672a90:	48 8b b5 60 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x2a0]
  672a97:	49 0f af f1          	imul   rsi,r9
  672a9b:	48 8b 8d 78 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xb88]
  672aa2:	4c 8b 9d 48 eb ff ff 	mov    r11,QWORD PTR [rbp-0x14b8]
  672aa9:	48 89 bd c8 f4 ff ff 	mov    QWORD PTR [rbp-0xb38],rdi
  672ab0:	c5 fb 10 44 ca f8    	vmovsd xmm0,QWORD PTR [rdx+rcx*8-0x8]
  672ab6:	4c 8b 85 60 ec ff ff 	mov    r8,QWORD PTR [rbp-0x13a0]
  672abd:	4d 8d 24 33          	lea    r12,[r11+rsi*1]
  672ac1:	48 8b 8d 40 e9 ff ff 	mov    rcx,QWORD PTR [rbp-0x16c0]
  672ac8:	48 8b bd 80 ea ff ff 	mov    rdi,QWORD PTR [rbp-0x1580]
  672acf:	4c 8b 9d f0 ea ff ff 	mov    r11,QWORD PTR [rbp-0x1510]
  672ad6:	4b 8d 14 10          	lea    rdx,[r8+r10*1]
  672ada:	4c 8b 85 98 e9 ff ff 	mov    r8,QWORD PTR [rbp-0x1668]
  672ae1:	48 03 ce             	add    rcx,rsi
  672ae4:	48 89 b5 b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],rsi
  672aeb:	4a 8d 34 37          	lea    rsi,[rdi+r14*1]
  672aef:	4c 89 95 c0 f6 ff ff 	mov    QWORD PTR [rbp-0x940],r10
  672af6:	4d 03 d3             	add    r10,r11
  672af9:	48 8b bd a0 e9 ff ff 	mov    rdi,QWORD PTR [rbp-0x1660]
  672b00:	4c 8b 9d b8 e9 ff ff 	mov    r11,QWORD PTR [rbp-0x1648]
  672b07:	49 0f af f9          	imul   rdi,r9
  672b0b:	4d 0f af c1          	imul   r8,r9
  672b0f:	4d 0f af d9          	imul   r11,r9
  672b13:	4d 89 f9             	mov    r9,r15
  672b16:	4c 0f af 8d 00 fd ff 	imul   r9,QWORD PTR [rbp-0x300]
  672b1d:	ff 
  672b1e:	4c 89 a5 30 f4 ff ff 	mov    QWORD PTR [rbp-0xbd0],r12
  672b25:	4c 8b a5 e0 e7 ff ff 	mov    r12,QWORD PTR [rbp-0x1820]
  672b2c:	4c 03 8d f0 e9 ff ff 	add    r9,QWORD PTR [rbp-0x1610]
  672b33:	4c 03 8d 28 ec ff ff 	add    r9,QWORD PTR [rbp-0x13d8]
  672b3a:	48 03 85 b8 eb ff ff 	add    rax,QWORD PTR [rbp-0x1448]
  672b41:	4d 03 cb             	add    r9,r11
  672b44:	48 03 bd d8 ea ff ff 	add    rdi,QWORD PTR [rbp-0x1528]
  672b4b:	4d 03 e3             	add    r12,r11
  672b4e:	4c 03 85 30 ec ff ff 	add    r8,QWORD PTR [rbp-0x13d0]
  672b55:	4c 03 9d 38 eb ff ff 	add    r11,QWORD PTR [rbp-0x14c8]
  672b5c:	48 c7 85 c0 f4 ff ff 	mov    QWORD PTR [rbp-0xb40],0x0
  672b63:	00 00 00 00 
  672b67:	4c 89 a5 48 f0 ff ff 	mov    QWORD PTR [rbp-0xfb8],r12
  672b6e:	c5 fb 11 85 f8 fe ff 	vmovsd QWORD PTR [rbp-0x108],xmm0
  672b75:	ff 
  672b76:	c5 fb 11 bd 68 ff ff 	vmovsd QWORD PTR [rbp-0x98],xmm7
  672b7d:	ff 
  672b7e:	4c 89 9d d0 f3 ff ff 	mov    QWORD PTR [rbp-0xc30],r11
  672b85:	4c 89 8d 38 f0 ff ff 	mov    QWORD PTR [rbp-0xfc8],r9
  672b8c:	4c 89 95 c8 f3 ff ff 	mov    QWORD PTR [rbp-0xc38],r10
  672b93:	4c 89 85 c0 f3 ff ff 	mov    QWORD PTR [rbp-0xc40],r8
  672b9a:	48 89 85 90 f3 ff ff 	mov    QWORD PTR [rbp-0xc70],rax
  672ba1:	48 89 bd b8 f3 ff ff 	mov    QWORD PTR [rbp-0xc48],rdi
  672ba8:	48 89 b5 b0 f3 ff ff 	mov    QWORD PTR [rbp-0xc50],rsi
  672baf:	48 89 8d a8 f3 ff ff 	mov    QWORD PTR [rbp-0xc58],rcx
  672bb6:	48 89 95 a0 f3 ff ff 	mov    QWORD PTR [rbp-0xc60],rdx
  672bbd:	4c 89 b5 d8 e6 ff ff 	mov    QWORD PTR [rbp-0x1928],r14
  672bc4:	4c 89 bd 78 eb ff ff 	mov    QWORD PTR [rbp-0x1488],r15
  672bcb:	c5 7b 10 05 ad 95 1d 	vmovsd xmm8,QWORD PTR [rip+0x1d95ad]        # 84c180 <__STRLITPACK_0.112+0x70>
  672bd2:	00 
  672bd3:	4c 8b a5 c0 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb40]
  672bda:	45 33 db             	xor    r11d,r11d
  672bdd:	45 33 ff             	xor    r15d,r15d
  672be0:	45 33 c9             	xor    r9d,r9d
  672be3:	45 33 c0             	xor    r8d,r8d
  672be6:	33 ff                	xor    edi,edi
  672be8:	33 f6                	xor    esi,esi
  672bea:	45 33 d2             	xor    r10d,r10d
  672bed:	4c 89 55 f8          	mov    QWORD PTR [rbp-0x8],r10
  672bf1:	48 83 bd d8 fc ff ff 	cmp    QWORD PTR [rbp-0x328],0x0
  672bf8:	00 
  672bf9:	0f 8e 3d 05 00 00    	jle    67313c <gls_corstep_mod_mp_gls_corstep_tile_+0xb9cc>
  672bff:	48 8b 95 88 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x578]
  672c06:	48 8b 85 60 f2 ff ff 	mov    rax,QWORD PTR [rbp-0xda0]
  672c0d:	48 8b 8d 78 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xb88]
  672c14:	4c 8b ad e8 f1 ff ff 	mov    r13,QWORD PTR [rbp-0xe18]
  672c1b:	c5 fb 10 64 c2 f8    	vmovsd xmm4,QWORD PTR [rdx+rax*8-0x8]
  672c21:	48 8b 95 90 f2 ff ff 	mov    rdx,QWORD PTR [rbp-0xd70]
  672c28:	c4 c1 7b 10 54 cd f8 	vmovsd xmm2,QWORD PTR [r13+rcx*8-0x8]
  672c2f:	4c 8b ad 30 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xbd0]
  672c36:	c5 fb 10 4c ca f8    	vmovsd xmm1,QWORD PTR [rdx+rcx*8-0x8]
  672c3c:	4c 8b b5 e0 f1 ff ff 	mov    r14,QWORD PTR [rbp-0xe20]
  672c43:	48 8b 85 a8 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xc58]
  672c4a:	4b 8d 54 e5 00       	lea    rdx,[r13+r12*8+0x0]
  672c4f:	4c 8b ad e8 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xb18]
  672c56:	48 89 55 b8          	mov    QWORD PTR [rbp-0x48],rdx
  672c5a:	c4 c1 7b 10 5c ce f8 	vmovsd xmm3,QWORD PTR [r14+rcx*8-0x8]
  672c61:	4e 8d 34 e0          	lea    r14,[rax+r12*8]
  672c65:	48 8b 85 00 f2 ff ff 	mov    rax,QWORD PTR [rbp-0xe00]
  672c6c:	4b 8d 54 e5 00       	lea    rdx,[r13+r12*8+0x0]
  672c71:	4c 8b ad 88 f2 ff ff 	mov    r13,QWORD PTR [rbp-0xd78]
  672c78:	48 89 55 c8          	mov    QWORD PTR [rbp-0x38],rdx
  672c7c:	4c 89 75 b0          	mov    QWORD PTR [rbp-0x50],r14
  672c80:	4e 8d 34 e0          	lea    r14,[rax+r12*8]
  672c84:	48 8b 85 f8 f1 ff ff 	mov    rax,QWORD PTR [rbp-0xe08]
  672c8b:	4b 8d 54 e5 00       	lea    rdx,[r13+r12*8+0x0]
  672c90:	4c 8b ad 50 f2 ff ff 	mov    r13,QWORD PTR [rbp-0xdb0]
  672c97:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  672c9b:	4c 89 75 c0          	mov    QWORD PTR [rbp-0x40],r14
  672c9f:	4e 8d 34 e0          	lea    r14,[rax+r12*8]
  672ca3:	48 8b 85 f0 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb10]
  672caa:	4b 8d 54 e5 00       	lea    rdx,[r13+r12*8+0x0]
  672caf:	48 89 55 a8          	mov    QWORD PTR [rbp-0x58],rdx
  672cb3:	48 8b 95 78 f2 ff ff 	mov    rdx,QWORD PTR [rbp-0xd88]
  672cba:	49 0f af d4          	imul   rdx,r12
  672cbe:	4c 89 75 d0          	mov    QWORD PTR [rbp-0x30],r14
  672cc2:	4e 8d 34 e0          	lea    r14,[rax+r12*8]
  672cc6:	48 8b 85 68 f2 ff ff 	mov    rax,QWORD PTR [rbp-0xd98]
  672ccd:	49 0f af c4          	imul   rax,r12
  672cd1:	48 03 95 c0 f3 ff ff 	add    rdx,QWORD PTR [rbp-0xc40]
  672cd8:	48 89 55 f0          	mov    QWORD PTR [rbp-0x10],rdx
  672cdc:	48 8b 95 18 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xae8]
  672ce3:	49 0f af d4          	imul   rdx,r12
  672ce7:	48 03 85 b8 f3 ff ff 	add    rax,QWORD PTR [rbp-0xc48]
  672cee:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  672cf2:	48 8b 85 28 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2d8]
  672cf9:	49 0f af c4          	imul   rax,r12
  672cfd:	4c 89 75 e0          	mov    QWORD PTR [rbp-0x20],r14
  672d01:	4c 8b b5 90 f3 ff ff 	mov    r14,QWORD PTR [rbp-0xc70]
  672d08:	4c 89 a5 c0 f4 ff ff 	mov    QWORD PTR [rbp-0xb40],r12
  672d0f:	c5 fb 11 8d 40 ff ff 	vmovsd QWORD PTR [rbp-0xc0],xmm1
  672d16:	ff 
  672d17:	c5 fb 11 95 10 ff ff 	vmovsd QWORD PTR [rbp-0xf0],xmm2
  672d1e:	ff 
  672d1f:	4d 8d 2c 16          	lea    r13,[r14+rdx*1]
  672d23:	4c 8b b5 c8 f4 ff ff 	mov    r14,QWORD PTR [rbp-0xb38]
  672d2a:	4c 89 6d a0          	mov    QWORD PTR [rbp-0x60],r13
  672d2e:	48 03 95 98 f3 ff ff 	add    rdx,QWORD PTR [rbp-0xc68]
  672d35:	c5 fb 11 9d e8 fe ff 	vmovsd QWORD PTR [rbp-0x118],xmm3
  672d3c:	ff 
  672d3d:	4d 8d 2c 06          	lea    r13,[r14+rax*1]
  672d41:	4c 8b b5 b0 fb ff ff 	mov    r14,QWORD PTR [rbp-0x450]
  672d48:	4d 0f af f4          	imul   r14,r12
  672d4c:	4c 89 ad e8 f3 ff ff 	mov    QWORD PTR [rbp-0xc18],r13
  672d53:	4c 8b ad a0 f3 ff ff 	mov    r13,QWORD PTR [rbp-0xc60]
  672d5a:	48 03 85 b0 f3 ff ff 	add    rax,QWORD PTR [rbp-0xc50]
  672d61:	c5 fb 11 a5 f0 fe ff 	vmovsd QWORD PTR [rbp-0x110],xmm4
  672d68:	ff 
  672d69:	48 89 85 08 ff ff ff 	mov    QWORD PTR [rbp-0xf8],rax
  672d70:	4d 03 ee             	add    r13,r14
  672d73:	4c 89 ad e0 f3 ff ff 	mov    QWORD PTR [rbp-0xc20],r13
  672d7a:	4c 8b ad f0 f1 ff ff 	mov    r13,QWORD PTR [rbp-0xe10]
  672d81:	4c 03 b5 c8 f3 ff ff 	add    r14,QWORD PTR [rbp-0xc38]
  672d88:	48 89 95 18 ff ff ff 	mov    QWORD PTR [rbp-0xe8],rdx
  672d8f:	c4 c1 73 59 44 cd f8 	vmulsd xmm0,xmm1,QWORD PTR [r13+rcx*8-0x8]
  672d96:	4c 8b ad 80 f2 ff ff 	mov    r13,QWORD PTR [rbp-0xd80]
  672d9d:	4d 0f af ec          	imul   r13,r12
  672da1:	48 8b 8d d0 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xc30]
  672da8:	4c 89 ad f0 f3 ff ff 	mov    QWORD PTR [rbp-0xc10],r13
  672daf:	c5 fb 11 85 00 ff ff 	vmovsd QWORD PTR [rbp-0x100],xmm0
  672db6:	ff 
  672db7:	4c 89 95 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],r10
  672dbe:	49 03 cd             	add    rcx,r13
  672dc1:	48 89 8d d8 f3 ff ff 	mov    QWORD PTR [rbp-0xc28],rcx
  672dc8:	48 89 75 80          	mov    QWORD PTR [rbp-0x80],rsi
  672dcc:	48 89 7d 98          	mov    QWORD PTR [rbp-0x68],rdi
  672dd0:	4c 89 85 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],r8
  672dd7:	4c 89 4d 90          	mov    QWORD PTR [rbp-0x70],r9
  672ddb:	4c 89 9d 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],r11
  672de2:	4c 8b a5 e0 f3 ff ff 	mov    r12,QWORD PTR [rbp-0xc20]
  672de9:	4c 8b ad e8 f3 ff ff 	mov    r13,QWORD PTR [rbp-0xc18]
  672df0:	48 8b 7d e8          	mov    rdi,QWORD PTR [rbp-0x18]
  672df4:	48 8b 75 90          	mov    rsi,QWORD PTR [rbp-0x70]
  672df8:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  672dfc:	4c 8b 4d f0          	mov    r9,QWORD PTR [rbp-0x10]
  672e00:	4c 8b 85 78 ff ff ff 	mov    r8,QWORD PTR [rbp-0x88]
  672e07:	c5 fb 10 14 3e       	vmovsd xmm2,QWORD PTR [rsi+rdi*1]
  672e0c:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
  672e10:	c4 81 7b 10 1c 08    	vmovsd xmm3,QWORD PTR [r8+r9*1]
  672e16:	4c 8b 55 b8          	mov    r10,QWORD PTR [rbp-0x48]
  672e1a:	c4 41 7b 10 0c 07    	vmovsd xmm9,QWORD PTR [r15+rax*1]
  672e20:	c5 79 2f c9          	vcomisd xmm9,xmm1
  672e24:	c5 6b 5c b5 e8 fe ff 	vsubsd xmm14,xmm2,QWORD PTR [rbp-0x118]
  672e2b:	ff 
  672e2c:	c5 63 5c 95 f0 fe ff 	vsubsd xmm10,xmm3,QWORD PTR [rbp-0x110]
  672e33:	ff 
  672e34:	c4 81 0b 59 24 17    	vmulsd xmm4,xmm14,QWORD PTR [r15+r10*1]
  672e3a:	c4 c1 33 59 ea       	vmulsd xmm5,xmm9,xmm10
  672e3f:	48 8b 8d e8 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x318]
  672e46:	c5 f9 28 d9          	vmovapd xmm3,xmm1
  672e4a:	48 8b 95 e0 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x320]
  672e51:	c5 db 5c f5          	vsubsd xmm6,xmm4,xmm5
  672e55:	77 03                	ja     672e5a <gls_corstep_mod_mp_gls_corstep_tile_+0xb6ea>
  672e57:	48 89 d1             	mov    rcx,rdx
  672e5a:	c5 f9 2f ce          	vcomisd xmm1,xmm6
  672e5e:	c5 cb 58 c5          	vaddsd xmm0,xmm6,xmm5
  672e62:	c5 7b 10 a5 10 ff ff 	vmovsd xmm12,QWORD PTR [rbp-0xf0]
  672e69:	ff 
  672e6a:	c5 fb 10 79 f8       	vmovsd xmm7,QWORD PTR [rcx-0x8]
  672e6f:	c4 41 43 59 d9       	vmulsd xmm11,xmm7,xmm9
  672e74:	c4 01 1b 59 2c 17    	vmulsd xmm13,xmm12,QWORD PTR [r15+r10*1]
  672e7a:	c4 c1 2b 59 d3       	vmulsd xmm2,xmm10,xmm11
  672e7f:	c4 41 13 59 fe       	vmulsd xmm15,xmm13,xmm14
  672e84:	4c 8b 5d a0          	mov    r11,QWORD PTR [rbp-0x60]
  672e88:	c5 83 5c e2          	vsubsd xmm4,xmm15,xmm2
  672e8c:	48 8b 45 98          	mov    rax,QWORD PTR [rbp-0x68]
  672e90:	48 8b 95 18 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xe8]
  672e97:	77 04                	ja     672e9d <gls_corstep_mod_mp_gls_corstep_tile_+0xb72d>
  672e99:	c5 f8 28 c6          	vmovaps xmm0,xmm6
  672e9d:	c4 a1 7b 10 2c 18    	vmovsd xmm5,QWORD PTR [rax+r11*1]
  672ea3:	c5 fb 11 bd 58 ff ff 	vmovsd QWORD PTR [rbp-0xa8],xmm7
  672eaa:	ff 
  672eab:	c5 7b 11 95 70 ff ff 	vmovsd QWORD PTR [rbp-0x90],xmm10
  672eb2:	ff 
  672eb3:	77 05                	ja     672eba <gls_corstep_mod_mp_gls_corstep_tile_+0xb74a>
  672eb5:	c4 c1 78 28 d8       	vmovaps xmm3,xmm8
  672eba:	c5 f9 2f cc          	vcomisd xmm1,xmm4
  672ebe:	c5 d3 58 34 10       	vaddsd xmm6,xmm5,QWORD PTR [rax+rdx*1]
  672ec3:	c5 cb 59 3d cd 92 1d 	vmulsd xmm7,xmm6,QWORD PTR [rip+0x1d92cd]        # 84c198 <__STRLITPACK_0.112+0x88>
  672eca:	00 
  672ecb:	c5 43 59 95 40 ff ff 	vmulsd xmm10,xmm7,QWORD PTR [rbp-0xc0]
  672ed2:	ff 
  672ed3:	c4 c1 7b 59 c2       	vmulsd xmm0,xmm0,xmm10
  672ed8:	c5 7b 11 4d 88       	vmovsd QWORD PTR [rbp-0x78],xmm9
  672edd:	c5 5b 58 ca          	vaddsd xmm9,xmm4,xmm2
  672ee1:	c4 41 7b 58 5d 00    	vaddsd xmm11,xmm0,QWORD PTR [r13+0x0]
  672ee7:	77 04                	ja     672eed <gls_corstep_mod_mp_gls_corstep_tile_+0xb77d>
  672ee9:	c5 78 28 cc          	vmovaps xmm9,xmm4
  672eed:	c4 41 33 59 e2       	vmulsd xmm12,xmm9,xmm10
  672ef2:	48 8b b5 08 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xf8]
  672ef9:	48 8b 4d 80          	mov    rcx,QWORD PTR [rbp-0x80]
  672efd:	c4 41 7b 11 5d 00    	vmovsd QWORD PTR [r13+0x0],xmm11
  672f03:	c4 41 1b 59 36       	vmulsd xmm14,xmm12,QWORD PTR [r14]
  672f08:	c5 7b 10 2c 31       	vmovsd xmm13,QWORD PTR [rcx+rsi*1]
  672f0d:	c5 7b 11 ad 60 ff ff 	vmovsd QWORD PTR [rbp-0xa0],xmm13
  672f14:	ff 
  672f15:	77 05                	ja     672f1c <gls_corstep_mod_mp_gls_corstep_tile_+0xb7ac>
  672f17:	c4 c1 78 28 c8       	vmovaps xmm1,xmm8
  672f1c:	c5 fb 11 9d 20 ff ff 	vmovsd QWORD PTR [rbp-0xe0],xmm3
  672f23:	ff 
  672f24:	c5 fb 11 8d 28 ff ff 	vmovsd QWORD PTR [rbp-0xd8],xmm1
  672f2b:	ff 
  672f2c:	c5 fb 11 bd 68 ff ff 	vmovsd QWORD PTR [rbp-0x98],xmm7
  672f33:	ff 
  672f34:	c5 7b 11 85 30 ff ff 	vmovsd QWORD PTR [rbp-0xd0],xmm8
  672f3b:	ff 
  672f3c:	83 bd b8 fc ff ff 00 	cmp    DWORD PTR [rbp-0x348],0x0
  672f43:	c5 13 5f ad f8 fe ff 	vmaxsd xmm13,xmm13,QWORD PTR [rbp-0x108]
  672f4a:	ff 
  672f4b:	c4 41 0b 5e fd       	vdivsd xmm15,xmm14,xmm13
  672f50:	c4 c1 03 58 04 24    	vaddsd xmm0,xmm15,QWORD PTR [r12]
  672f56:	c4 c1 7b 11 04 24    	vmovsd QWORD PTR [r12],xmm0
  672f5c:	c4 c1 7b 10 16       	vmovsd xmm2,QWORD PTR [r14]
  672f61:	0f 85 3c 17 00 00    	jne    6746a3 <gls_corstep_mod_mp_gls_corstep_tile_+0xcf33>
  672f67:	c5 f8 77             	vzeroupper 
  672f6a:	c5 fb 10 8d 80 fd ff 	vmovsd xmm1,QWORD PTR [rbp-0x280]
  672f71:	ff 
  672f72:	c5 f9 28 c2          	vmovapd xmm0,xmm2
  672f76:	e8 c5 c9 e4 ff       	call   4bf940 <pow>
  672f7b:	c5 7b 10 05 fd 91 1d 	vmovsd xmm8,QWORD PTR [rip+0x1d91fd]        # 84c180 <__STRLITPACK_0.112+0x70>
  672f82:	00 
  672f83:	c5 fb 11 85 38 ff ff 	vmovsd QWORD PTR [rbp-0xc8],xmm0
  672f8a:	ff 
  672f8b:	c5 fb 10 85 60 ff ff 	vmovsd xmm0,QWORD PTR [rbp-0xa0]
  672f92:	ff 
  672f93:	c5 fb 10 8d c8 fc ff 	vmovsd xmm1,QWORD PTR [rbp-0x338]
  672f9a:	ff 
  672f9b:	e8 a0 c9 e4 ff       	call   4bf940 <pow>
  672fa0:	c5 7b 10 ad 30 ff ff 	vmovsd xmm13,QWORD PTR [rbp-0xd0]
  672fa7:	ff 
  672fa8:	c5 f9 28 f8          	vmovapd xmm7,xmm0
  672fac:	c5 13 59 b5 00 ff ff 	vmulsd xmm14,xmm13,QWORD PTR [rbp-0x100]
  672fb3:	ff 
  672fb4:	c5 fb 10 b5 40 ff ff 	vmovsd xmm6,QWORD PTR [rbp-0xc0]
  672fbb:	ff 
  672fbc:	c5 7b 10 bd 38 ff ff 	vmovsd xmm15,QWORD PTR [rbp-0xc8]
  672fc3:	ff 
  672fc4:	c4 c1 0b 59 d7       	vmulsd xmm2,xmm14,xmm15
  672fc9:	c4 c1 4b 59 c7       	vmulsd xmm0,xmm6,xmm15
  672fce:	c5 fb 10 8d a0 fc ff 	vmovsd xmm1,QWORD PTR [rbp-0x360]
  672fd5:	ff 
  672fd6:	c5 7b 59 e9          	vmulsd xmm13,xmm0,xmm1
  672fda:	c5 eb 59 c9          	vmulsd xmm1,xmm2,xmm1
  672fde:	c5 13 59 f7          	vmulsd xmm14,xmm13,xmm7
  672fe2:	c5 f3 59 d7          	vmulsd xmm2,xmm1,xmm7
  672fe6:	c5 7b 10 05 92 91 1d 	vmovsd xmm8,QWORD PTR [rip+0x1d9192]        # 84c180 <__STRLITPACK_0.112+0x70>
  672fed:	00 
  672fee:	c5 fb 10 6d 88       	vmovsd xmm5,QWORD PTR [rbp-0x78]
  672ff3:	c4 41 0b 58 f8       	vaddsd xmm15,xmm14,xmm8
  672ff8:	c5 3b 5c 8d 20 ff ff 	vsubsd xmm9,xmm8,QWORD PTR [rbp-0xe0]
  672fff:	ff 
  673000:	c5 bb 5c bd 28 ff ff 	vsubsd xmm7,xmm8,QWORD PTR [rbp-0xd8]
  673007:	ff 
  673008:	c4 c1 6b 58 c8       	vaddsd xmm1,xmm2,xmm8
  67300d:	c4 41 4b 59 d1       	vmulsd xmm10,xmm6,xmm9
  673012:	c5 cb 59 f7          	vmulsd xmm6,xmm6,xmm7
  673016:	c5 2b 59 dd          	vmulsd xmm11,xmm10,xmm5
  67301a:	c5 cb 59 b5 58 ff ff 	vmulsd xmm6,xmm6,QWORD PTR [rbp-0xa8]
  673021:	ff 
  673022:	c5 cb 59 ed          	vmulsd xmm5,xmm6,xmm5
  673026:	c5 fb 10 a5 70 ff ff 	vmovsd xmm4,QWORD PTR [rbp-0x90]
  67302d:	ff 
  67302e:	c5 23 59 e4          	vmulsd xmm12,xmm11,xmm4
  673032:	c5 d3 59 e4          	vmulsd xmm4,xmm5,xmm4
  673036:	c5 fb 10 9d 60 ff ff 	vmovsd xmm3,QWORD PTR [rbp-0xa0]
  67303d:	ff 
  67303e:	c5 1b 5e cb          	vdivsd xmm9,xmm12,xmm3
  673042:	c5 db 5e db          	vdivsd xmm3,xmm4,xmm3
  673046:	c5 fb 10 85 68 ff ff 	vmovsd xmm0,QWORD PTR [rbp-0x98]
  67304d:	ff 
  67304e:	c4 41 03 58 d1       	vaddsd xmm10,xmm15,xmm9
  673053:	c5 f3 58 cb          	vaddsd xmm1,xmm1,xmm3
  673057:	c4 41 7b 59 da       	vmulsd xmm11,xmm0,xmm10
  67305c:	c5 fb 59 c1          	vmulsd xmm0,xmm0,xmm1
  673060:	48 8b 55 c8          	mov    rdx,QWORD PTR [rbp-0x38]
  673064:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
  67306b:	48 8b 7d e0          	mov    rdi,QWORD PTR [rbp-0x20]
  67306f:	48 8b 4d d0          	mov    rcx,QWORD PTR [rbp-0x30]
  673073:	4c 8b 45 a8          	mov    r8,QWORD PTR [rbp-0x58]
  673077:	48 8b 75 c0          	mov    rsi,QWORD PTR [rbp-0x40]
  67307b:	4c 8b 4d d8          	mov    r9,QWORD PTR [rbp-0x28]
  67307f:	4c 8b 55 90          	mov    r10,QWORD PTR [rbp-0x70]
  673083:	4c 8b 9d 78 ff ff ff 	mov    r11,QWORD PTR [rbp-0x88]
  67308a:	4c 03 95 f8 fc ff ff 	add    r10,QWORD PTR [rbp-0x308]
  673091:	4c 03 9d 20 fd ff ff 	add    r11,QWORD PTR [rbp-0x2e0]
  673098:	4c 03 bd c0 fc ff ff 	add    r15,QWORD PTR [rbp-0x340]
  67309f:	4c 89 55 90          	mov    QWORD PTR [rbp-0x70],r10
  6730a3:	4c 89 9d 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],r11
  6730aa:	c5 23 5c 64 10 08    	vsubsd xmm12,xmm11,QWORD PTR [rax+rdx*1+0x8]
  6730b0:	c5 fb 5c 54 38 08    	vsubsd xmm2,xmm0,QWORD PTR [rax+rdi*1+0x8]
  6730b6:	c5 1b 5c 4c 08 10    	vsubsd xmm9,xmm12,QWORD PTR [rax+rcx*1+0x10]
  6730bc:	c4 a1 6b 5c 5c 00 10 	vsubsd xmm3,xmm2,QWORD PTR [rax+r8*1+0x10]
  6730c3:	c5 7b 11 4c 30 08    	vmovsd QWORD PTR [rax+rsi*1+0x8],xmm9
  6730c9:	c4 a1 7b 11 5c 08 08 	vmovsd QWORD PTR [rax+r9*1+0x8],xmm3
  6730d0:	48 03 85 60 fd ff ff 	add    rax,QWORD PTR [rbp-0x2a0]
  6730d7:	48 89 85 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],rax
  6730de:	48 8b 55 98          	mov    rdx,QWORD PTR [rbp-0x68]
  6730e2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  6730e6:	48 8b 8d 58 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2a8]
  6730ed:	4c 03 e9             	add    r13,rcx
  6730f0:	48 8b bd 48 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xb8]
  6730f7:	48 ff c7             	inc    rdi
  6730fa:	48 03 95 40 fd ff ff 	add    rdx,QWORD PTR [rbp-0x2c0]
  673101:	48 03 85 00 fd ff ff 	add    rax,QWORD PTR [rbp-0x300]
  673108:	48 8b b5 48 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x2b8]
  67310f:	4c 03 e6             	add    r12,rsi
  673112:	48 01 4d 80          	add    QWORD PTR [rbp-0x80],rcx
  673116:	4c 03 f6             	add    r14,rsi
  673119:	48 89 55 98          	mov    QWORD PTR [rbp-0x68],rdx
  67311d:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  673121:	48 89 bd 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],rdi
  673128:	48 3b bd d8 fc ff ff 	cmp    rdi,QWORD PTR [rbp-0x328]
  67312f:	0f 82 bb fc ff ff    	jb     672df0 <gls_corstep_mod_mp_gls_corstep_tile_+0xb680>
  673135:	4c 8b a5 c0 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb40]
  67313c:	49 ff c4             	inc    r12
  67313f:	4c 3b a5 50 fd ff ff 	cmp    r12,QWORD PTR [rbp-0x2b0]
  673146:	0f 82 8e fa ff ff    	jb     672bda <gls_corstep_mod_mp_gls_corstep_tile_+0xb46a>
  67314c:	4c 8b ad 50 fd ff ff 	mov    r13,QWORD PTR [rbp-0x2b0]
  673153:	c5 fb 10 bd 68 ff ff 	vmovsd xmm7,QWORD PTR [rbp-0x98]
  67315a:	ff 
  67315b:	4c 8b b5 d8 e6 ff ff 	mov    r14,QWORD PTR [rbp-0x1928]
  673162:	4c 8b bd 78 eb ff ff 	mov    r15,QWORD PTR [rbp-0x1488]
  673169:	49 83 fd 04          	cmp    r13,0x4
  67316d:	0f 8c 29 15 00 00    	jl     67469c <gls_corstep_mod_mp_gls_corstep_tile_+0xcf2c>
  673173:	48 8b 95 50 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xab0]
  67317a:	33 c0                	xor    eax,eax
  67317c:	c5 fd 10 85 d0 e5 ff 	vmovupd ymm0,YMMWORD PTR [rbp-0x1a30]
  673183:	ff 
  673184:	48 89 d1             	mov    rcx,rdx
  673187:	48 8b b5 48 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xab8]
  67318e:	c5 fd 11 04 c6       	vmovupd YMMWORD PTR [rsi+rax*8],ymm0
  673193:	48 83 c0 04          	add    rax,0x4
  673197:	48 3b c1             	cmp    rax,rcx
  67319a:	72 f2                	jb     67318e <gls_corstep_mod_mp_gls_corstep_tile_+0xba1e>
  67319c:	49 3b d5             	cmp    rdx,r13
  67319f:	73 1c                	jae    6731bd <gls_corstep_mod_mp_gls_corstep_tile_+0xba4d>
  6731a1:	c5 fb 10 85 80 e8 ff 	vmovsd xmm0,QWORD PTR [rbp-0x1780]
  6731a8:	ff 
  6731a9:	48 8b 85 48 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xab8]
  6731b0:	c5 fb 11 04 d0       	vmovsd QWORD PTR [rax+rdx*8],xmm0
  6731b5:	48 ff c2             	inc    rdx
  6731b8:	49 3b d5             	cmp    rdx,r13
  6731bb:	72 f3                	jb     6731b0 <gls_corstep_mod_mp_gls_corstep_tile_+0xba40>
  6731bd:	48 8b 85 28 f2 ff ff 	mov    rax,QWORD PTR [rbp-0xdd8]
  6731c4:	4c 8b 85 78 f4 ff ff 	mov    r8,QWORD PTR [rbp-0xb88]
  6731cb:	48 8b 95 38 f2 ff ff 	mov    rdx,QWORD PTR [rbp-0xdc8]
  6731d2:	48 8b 8d 40 f2 ff ff 	mov    rcx,QWORD PTR [rbp-0xdc0]
  6731d9:	48 8b b5 30 f2 ff ff 	mov    rsi,QWORD PTR [rbp-0xdd0]
  6731e0:	48 8b bd d8 f1 ff ff 	mov    rdi,QWORD PTR [rbp-0xe28]
  6731e7:	c4 a1 7b 10 04 c0    	vmovsd xmm0,QWORD PTR [rax+r8*8]
  6731ed:	c4 a1 7b 10 0c c2    	vmovsd xmm1,QWORD PTR [rdx+r8*8]
  6731f3:	c4 a1 7b 10 14 c1    	vmovsd xmm2,QWORD PTR [rcx+r8*8]
  6731f9:	c4 a1 7b 10 1c c6    	vmovsd xmm3,QWORD PTR [rsi+r8*8]
  6731ff:	c4 a1 7b 10 64 c7 f8 	vmovsd xmm4,QWORD PTR [rdi+r8*8-0x8]
  673206:	c5 fb 11 85 e0 e6 ff 	vmovsd QWORD PTR [rbp-0x1920],xmm0
  67320d:	ff 
  67320e:	c5 fb 11 8d e8 e6 ff 	vmovsd QWORD PTR [rbp-0x1918],xmm1
  673215:	ff 
  673216:	c5 fb 11 95 c8 f6 ff 	vmovsd QWORD PTR [rbp-0x938],xmm2
  67321d:	ff 
  67321e:	c5 fb 11 9d d0 f6 ff 	vmovsd QWORD PTR [rbp-0x930],xmm3
  673225:	ff 
  673226:	c5 fb 11 a5 d8 f6 ff 	vmovsd QWORD PTR [rbp-0x928],xmm4
  67322d:	ff 
  67322e:	48 83 bd b0 fb ff ff 	cmp    QWORD PTR [rbp-0x450],0x0
  673235:	00 
  673236:	0f 84 4f 14 00 00    	je     67468b <gls_corstep_mod_mp_gls_corstep_tile_+0xcf1b>
  67323c:	48 83 bd 28 fd ff ff 	cmp    QWORD PTR [rbp-0x2d8],0x0
  673243:	00 
  673244:	0f 84 41 14 00 00    	je     67468b <gls_corstep_mod_mp_gls_corstep_tile_+0xcf1b>
  67324a:	49 83 fd 04          	cmp    r13,0x4
  67324e:	0f 8c 29 14 00 00    	jl     67467d <gls_corstep_mod_mp_gls_corstep_tile_+0xcf0d>
  673254:	48 8b 85 58 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2a8]
  67325b:	4c 8b 8d 48 fd ff ff 	mov    r9,QWORD PTR [rbp-0x2b8]
  673262:	49 0f af c7          	imul   rax,r15
  673266:	4d 0f af cf          	imul   r9,r15
  67326a:	48 03 85 20 ea ff ff 	add    rax,QWORD PTR [rbp-0x15e0]
  673271:	4c 03 8d 40 eb ff ff 	add    r9,QWORD PTR [rbp-0x14c0]
  673278:	48 f7 d8             	neg    rax
  67327b:	49 f7 d9             	neg    r9
  67327e:	48 03 85 10 e9 ff ff 	add    rax,QWORD PTR [rbp-0x16f0]
  673285:	4c 03 8d 48 e9 ff ff 	add    r9,QWORD PTR [rbp-0x16b8]
  67328c:	48 f7 d8             	neg    rax
  67328f:	48 8b 95 28 e9 ff ff 	mov    rdx,QWORD PTR [rbp-0x16d8]
  673296:	49 f7 d9             	neg    r9
  673299:	48 8b b5 50 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x14b0]
  6732a0:	48 8b bd b8 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0x948]
  6732a7:	4c 8b 95 c0 f6 ff ff 	mov    r10,QWORD PTR [rbp-0x940]
  6732ae:	49 8d 0c 16          	lea    rcx,[r14+rdx*1]
  6732b2:	4c 8b 9d 20 e9 ff ff 	mov    r11,QWORD PTR [rbp-0x16e0]
  6732b9:	48 03 85 e0 e8 ff ff 	add    rax,QWORD PTR [rbp-0x1720]
  6732c0:	4c 8d 04 3e          	lea    r8,[rsi+rdi*1]
  6732c4:	4c 03 8d f8 e8 ff ff 	add    r9,QWORD PTR [rbp-0x1708]
  6732cb:	49 03 c6             	add    rax,r14
  6732ce:	4d 03 ca             	add    r9,r10
  6732d1:	4f 8d 24 1a          	lea    r12,[r10+r11*1]
  6732d5:	48 c7 85 f0 e6 ff ff 	mov    QWORD PTR [rbp-0x1910],0x0
  6732dc:	00 00 00 00 
  6732e0:	48 89 85 48 f8 ff ff 	mov    QWORD PTR [rbp-0x7b8],rax
  6732e7:	48 89 8d 28 f8 ff ff 	mov    QWORD PTR [rbp-0x7d8],rcx
  6732ee:	4c 89 85 20 f8 ff ff 	mov    QWORD PTR [rbp-0x7e0],r8
  6732f5:	4c 89 8d 38 f8 ff ff 	mov    QWORD PTR [rbp-0x7c8],r9
  6732fc:	4c 89 a5 18 f8 ff ff 	mov    QWORD PTR [rbp-0x7e8],r12
  673303:	c5 f8 77             	vzeroupper 
  673306:	c5 fb 10 85 e0 e6 ff 	vmovsd xmm0,QWORD PTR [rbp-0x1920]
  67330d:	ff 
  67330e:	c5 fb 10 8d e8 e6 ff 	vmovsd xmm1,QWORD PTR [rbp-0x1918]
  673315:	ff 
  673316:	e8 25 c6 e4 ff       	call   4bf940 <pow>
  67331b:	4c 8b 8d 58 ea ff ff 	mov    r9,QWORD PTR [rbp-0x15a8]
  673322:	4c 8b 95 78 f4 ff ff 	mov    r10,QWORD PTR [rbp-0xb88]
  673329:	48 8b 95 70 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1390]
  673330:	4c 8b 85 f0 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1410]
  673337:	4f 63 0c 91          	movsxd r9,DWORD PTR [r9+r10*4]
  67333b:	4c 8b 95 88 e9 ff ff 	mov    r10,QWORD PTR [rbp-0x1678]
  673342:	4c 0f af d2          	imul   r10,rdx
  673346:	4c 0f af 8d 58 fd ff 	imul   r9,QWORD PTR [rbp-0x2a8]
  67334d:	ff 
  67334e:	c4 e2 7d 19 95 d0 f6 	vbroadcastsd ymm2,QWORD PTR [rbp-0x930]
  673355:	ff ff 
  673357:	c4 e2 7d 19 bd c8 f6 	vbroadcastsd ymm7,QWORD PTR [rbp-0x938]
  67335e:	ff ff 
  673360:	c4 e2 7d 19 e0       	vbroadcastsd ymm4,xmm0
  673365:	c4 e2 7d 19 ad f8 fe 	vbroadcastsd ymm5,QWORD PTR [rbp-0x108]
  67336c:	ff ff 
  67336e:	c4 e2 7d 19 9d d8 f6 	vbroadcastsd ymm3,QWORD PTR [rbp-0x928]
  673375:	ff ff 
  673377:	c5 fd 11 a5 70 ed ff 	vmovupd YMMWORD PTR [rbp-0x1290],ymm4
  67337e:	ff 
  67337f:	c5 fd 11 ad 90 ed ff 	vmovupd YMMWORD PTR [rbp-0x1270],ymm5
  673386:	ff 
  673387:	c5 fd 11 9d 50 ed ff 	vmovupd YMMWORD PTR [rbp-0x12b0],ymm3
  67338e:	ff 
  67338f:	48 8b b5 78 ea ff ff 	mov    rsi,QWORD PTR [rbp-0x1588]
  673396:	4b 8d 3c 10          	lea    rdi,[r8+r10*1]
  67339a:	4c 8b 85 18 ea ff ff 	mov    r8,QWORD PTR [rbp-0x15e8]
  6733a1:	4c 0f af c2          	imul   r8,rdx
  6733a5:	48 89 bd 98 f8 ff ff 	mov    QWORD PTR [rbp-0x768],rdi
  6733ac:	4a 8d 0c 06          	lea    rcx,[rsi+r8*1]
  6733b0:	48 8b b5 10 ea ff ff 	mov    rsi,QWORD PTR [rbp-0x15f0]
  6733b7:	48 0f af f2          	imul   rsi,rdx
  6733bb:	48 8b bd 90 e9 ff ff 	mov    rdi,QWORD PTR [rbp-0x1670]
  6733c2:	48 0f af fa          	imul   rdi,rdx
  6733c6:	4c 8b 9d 60 ea ff ff 	mov    r11,QWORD PTR [rbp-0x15a0]
  6733cd:	4c 03 8d 20 ea ff ff 	add    r9,QWORD PTR [rbp-0x15e0]
  6733d4:	49 f7 d9             	neg    r9
  6733d7:	4c 8b a5 f8 eb ff ff 	mov    r12,QWORD PTR [rbp-0x1408]
  6733de:	49 8d 14 33          	lea    rdx,[r11+rsi*1]
  6733e2:	4c 8b 9d b0 fb ff ff 	mov    r11,QWORD PTR [rbp-0x450]
  6733e9:	48 89 8d 88 f8 ff ff 	mov    QWORD PTR [rbp-0x778],rcx
  6733f0:	33 c9                	xor    ecx,ecx
  6733f2:	4c 03 8d 10 e9 ff ff 	add    r9,QWORD PTR [rbp-0x16f0]
  6733f9:	49 8d 04 3c          	lea    rax,[r12+rdi*1]
  6733fd:	48 89 95 80 f8 ff ff 	mov    QWORD PTR [rbp-0x780],rdx
  673404:	49 f7 d9             	neg    r9
  673407:	4f 8d 1c 5b          	lea    r11,[r11+r11*2]
  67340b:	4c 89 9d a0 f8 ff ff 	mov    QWORD PTR [rbp-0x760],r11
  673412:	45 33 e4             	xor    r12d,r12d
  673415:	4c 8b 9d 28 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2d8]
  67341c:	49 89 cd             	mov    r13,rcx
  67341f:	4c 03 8d e0 e8 ff ff 	add    r9,QWORD PTR [rbp-0x1720]
  673426:	48 89 85 90 f8 ff ff 	mov    QWORD PTR [rbp-0x770],rax
  67342d:	4c 03 95 68 ea ff ff 	add    r10,QWORD PTR [rbp-0x1598]
  673434:	4d 03 ce             	add    r9,r14
  673437:	4c 03 85 a0 e7 ff ff 	add    r8,QWORD PTR [rbp-0x1860]
  67343e:	4f 8d 1c 5b          	lea    r11,[r11+r11*2]
  673442:	48 03 bd 70 ea ff ff 	add    rdi,QWORD PTR [rbp-0x1590]
  673449:	48 03 b5 98 e7 ff ff 	add    rsi,QWORD PTR [rbp-0x1868]
  673450:	48 89 8d 18 e7 ff ff 	mov    QWORD PTR [rbp-0x18e8],rcx
  673457:	4c 89 b5 d8 e6 ff ff 	mov    QWORD PTR [rbp-0x1928],r14
  67345e:	4c 89 bd 78 eb ff ff 	mov    QWORD PTR [rbp-0x1488],r15
  673465:	48 89 8d 70 f8 ff ff 	mov    QWORD PTR [rbp-0x790],rcx
  67346c:	4c 89 9d 78 f8 ff ff 	mov    QWORD PTR [rbp-0x788],r11
  673473:	48 89 8d b0 f7 ff ff 	mov    QWORD PTR [rbp-0x850],rcx
  67347a:	48 89 8d a8 f7 ff ff 	mov    QWORD PTR [rbp-0x858],rcx
  673481:	48 89 b5 38 f7 ff ff 	mov    QWORD PTR [rbp-0x8c8],rsi
  673488:	48 89 bd 40 f7 ff ff 	mov    QWORD PTR [rbp-0x8c0],rdi
  67348f:	4c 89 85 20 f7 ff ff 	mov    QWORD PTR [rbp-0x8e0],r8
  673496:	4c 89 95 28 f7 ff ff 	mov    QWORD PTR [rbp-0x8d8],r10
  67349d:	4c 89 8d 30 f7 ff ff 	mov    QWORD PTR [rbp-0x8d0],r9
  6734a4:	4c 8b b5 18 e7 ff ff 	mov    r14,QWORD PTR [rbp-0x18e8]
  6734ab:	4c 8b bd f0 e6 ff ff 	mov    r15,QWORD PTR [rbp-0x1910]
  6734b2:	c4 e3 7d 19 d0 01    	vextractf128 xmm0,ymm2,0x1
  6734b8:	c4 c3 7d 19 f9 01    	vextractf128 xmm9,ymm7,0x1
  6734be:	c5 f9 70 ca 0e       	vpshufd xmm1,xmm2,0xe
  6734c3:	c5 f9 70 f0 0e       	vpshufd xmm6,xmm0,0xe
  6734c8:	c5 79 70 c7 0e       	vpshufd xmm8,xmm7,0xe
  6734cd:	c4 41 79 70 d1 0e    	vpshufd xmm10,xmm9,0xe
  6734d3:	c5 7b 11 95 18 f7 ff 	vmovsd QWORD PTR [rbp-0x8e8],xmm10
  6734da:	ff 
  6734db:	c5 7b 11 8d 10 f7 ff 	vmovsd QWORD PTR [rbp-0x8f0],xmm9
  6734e2:	ff 
  6734e3:	c5 7b 11 85 00 f7 ff 	vmovsd QWORD PTR [rbp-0x900],xmm8
  6734ea:	ff 
  6734eb:	c5 fb 11 bd f8 f6 ff 	vmovsd QWORD PTR [rbp-0x908],xmm7
  6734f2:	ff 
  6734f3:	c5 fb 11 b5 08 f7 ff 	vmovsd QWORD PTR [rbp-0x8f8],xmm6
  6734fa:	ff 
  6734fb:	c5 fb 11 85 e8 f6 ff 	vmovsd QWORD PTR [rbp-0x918],xmm0
  673502:	ff 
  673503:	c5 fb 11 8d e0 f6 ff 	vmovsd QWORD PTR [rbp-0x920],xmm1
  67350a:	ff 
  67350b:	c5 fb 11 95 f0 f6 ff 	vmovsd QWORD PTR [rbp-0x910],xmm2
  673512:	ff 
  673513:	4c 8b 95 a8 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x858]
  67351a:	4c 8b 8d 98 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x768]
  673521:	48 8b 8d 28 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xad8]
  673528:	48 8b b5 28 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x8d8]
  67352f:	4f 8d 1c 11          	lea    r11,[r9+r10*1]
  673533:	c4 41 7b 10 0b       	vmovsd xmm9,QWORD PTR [r11]
  673538:	49 8d 04 4b          	lea    rax,[r11+rcx*2]
  67353c:	c5 7b 10 18          	vmovsd xmm11,QWORD PTR [rax]
  673540:	4a 8d 3c 16          	lea    rdi,[rsi+r10*1]
  673544:	c5 21 16 24 08       	vmovhpd xmm12,xmm11,QWORD PTR [rax+rcx*1]
  673549:	4c 8d 04 4f          	lea    r8,[rdi+rcx*2]
  67354d:	48 8b 85 20 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x8e0]
  673554:	c5 fb 10 2f          	vmovsd xmm5,QWORD PTR [rdi]
  673558:	c4 c1 7b 10 38       	vmovsd xmm7,QWORD PTR [r8]
  67355d:	c5 d1 16 34 0f       	vmovhpd xmm6,xmm5,QWORD PTR [rdi+rcx*1]
  673562:	49 03 c5             	add    rax,r13
  673565:	c4 41 41 16 04 08    	vmovhpd xmm8,xmm7,QWORD PTR [r8+rcx*1]
  67356b:	c4 41 31 16 14 0b    	vmovhpd xmm10,xmm9,QWORD PTR [r11+rcx*1]
  673571:	48 8b 8d 00 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xb00]
  673578:	c5 fb 10 00          	vmovsd xmm0,QWORD PTR [rax]
  67357c:	48 8b bd b0 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x850]
  673583:	c5 f9 16 1c 08       	vmovhpd xmm3,xmm0,QWORD PTR [rax+rcx*1]
  673588:	48 8d 04 48          	lea    rax,[rax+rcx*2]
  67358c:	c5 fb 10 20          	vmovsd xmm4,QWORD PTR [rax]
  673590:	c5 d9 16 14 08       	vmovhpd xmm2,xmm4,QWORD PTR [rax+rcx*1]
  673595:	48 8b 85 88 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x778]
  67359c:	c5 fd 10 a5 d0 ec ff 	vmovupd ymm4,YMMWORD PTR [rbp-0x1330]
  6735a3:	ff 
  6735a4:	4c 8b 85 30 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xad0]
  6735ab:	49 03 c5             	add    rax,r13
  6735ae:	c5 fb 10 08          	vmovsd xmm1,QWORD PTR [rax]
  6735b2:	c5 f1 16 2c 08       	vmovhpd xmm5,xmm1,QWORD PTR [rax+rcx*1]
  6735b7:	48 8d 04 48          	lea    rax,[rax+rcx*2]
  6735bb:	c4 43 4d 18 e8 01    	vinsertf128 ymm13,ymm6,xmm8,0x1
  6735c1:	c5 fb 10 30          	vmovsd xmm6,QWORD PTR [rax]
  6735c5:	c5 c9 16 3c 08       	vmovhpd xmm7,xmm6,QWORD PTR [rax+rcx*1]
  6735ca:	48 8b 85 48 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7b8]
  6735d1:	48 8b 8d 78 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x788]
  6735d8:	49 8d 34 04          	lea    rsi,[r12+rax*1]
  6735dc:	c4 43 2d 18 f4 01    	vinsertf128 ymm14,ymm10,xmm12,0x1
  6735e2:	c4 41 15 58 fe       	vaddpd ymm15,ymm13,ymm14
  6735e7:	c4 41 05 59 df       	vmulpd ymm11,ymm15,ymm15
  6735ec:	48 8b 85 28 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2d8]
  6735f3:	c4 63 65 18 c2 01    	vinsertf128 ymm8,ymm3,xmm2,0x1
  6735f9:	c4 63 55 18 cf 01    	vinsertf128 ymm9,ymm5,xmm7,0x1
  6735ff:	c4 41 3d 58 d1       	vaddpd ymm10,ymm8,ymm9
  673604:	c5 fd 10 9d 90 ed ff 	vmovupd ymm3,YMMWORD PTR [rbp-0x1270]
  67360b:	ff 
  67360c:	c4 41 2d 59 e2       	vmulpd ymm12,ymm10,ymm10
  673611:	c4 41 25 58 ec       	vaddpd ymm13,ymm11,ymm12
  673616:	c4 41 7d 51 f5       	vsqrtpd ymm14,ymm13
  67361b:	c5 0d 59 fc          	vmulpd ymm15,ymm14,ymm4
  67361f:	c5 85 5f c3          	vmaxpd ymm0,ymm15,ymm3
  673623:	c4 e3 7d 19 c2 01    	vextractf128 xmm2,ymm0,0x1
  673629:	c5 fb 11 06          	vmovsd QWORD PTR [rsi],xmm0
  67362d:	c5 f9 17 04 30       	vmovhpd QWORD PTR [rax+rsi*1],xmm0
  673632:	c5 fb 11 14 46       	vmovsd QWORD PTR [rsi+rax*2],xmm2
  673637:	c5 f9 17 14 31       	vmovhpd QWORD PTR [rcx+rsi*1],xmm2
  67363c:	48 8b b5 40 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x8c0]
  673643:	48 03 f7             	add    rsi,rdi
  673646:	c5 fb 10 0e          	vmovsd xmm1,QWORD PTR [rsi]
  67364a:	c4 a1 71 16 2c 06    	vmovhpd xmm5,xmm1,QWORD PTR [rsi+r8*1]
  673650:	4a 8d 34 46          	lea    rsi,[rsi+r8*2]
  673654:	c5 fb 10 36          	vmovsd xmm6,QWORD PTR [rsi]
  673658:	c4 a1 49 16 3c 06    	vmovhpd xmm7,xmm6,QWORD PTR [rsi+r8*1]
  67365e:	48 8b b5 90 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x770]
  673665:	c4 63 55 18 e7 01    	vinsertf128 ymm12,ymm5,xmm7,0x1
  67366b:	48 03 f7             	add    rsi,rdi
  67366e:	c5 7b 10 06          	vmovsd xmm8,QWORD PTR [rsi]
  673672:	c4 21 39 16 0c 06    	vmovhpd xmm9,xmm8,QWORD PTR [rsi+r8*1]
  673678:	4a 8d 34 46          	lea    rsi,[rsi+r8*2]
  67367c:	c5 7b 10 16          	vmovsd xmm10,QWORD PTR [rsi]
  673680:	c4 21 29 16 1c 06    	vmovhpd xmm11,xmm10,QWORD PTR [rsi+r8*1]
  673686:	48 8b b5 38 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x8c8]
  67368d:	48 8b bd 08 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xaf8]
  673694:	49 03 f6             	add    rsi,r14
  673697:	c4 43 35 18 eb 01    	vinsertf128 ymm13,ymm9,xmm11,0x1
  67369d:	c4 c1 1d 58 c5       	vaddpd ymm0,ymm12,ymm13
  6736a2:	c5 7b 10 36          	vmovsd xmm14,QWORD PTR [rsi]
  6736a6:	c5 09 16 3c 3e       	vmovhpd xmm15,xmm14,QWORD PTR [rsi+rdi*1]
  6736ab:	c5 fd 59 d0          	vmulpd ymm2,ymm0,ymm0
  6736af:	48 8d 34 7e          	lea    rsi,[rsi+rdi*2]
  6736b3:	c5 fb 10 06          	vmovsd xmm0,QWORD PTR [rsi]
  6736b7:	c5 f9 16 0c 3e       	vmovhpd xmm1,xmm0,QWORD PTR [rsi+rdi*1]
  6736bc:	48 8b b5 80 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x780]
  6736c3:	c4 63 05 18 c9 01    	vinsertf128 ymm9,ymm15,xmm1,0x1
  6736c9:	49 03 f6             	add    rsi,r14
  6736cc:	c5 fb 10 2e          	vmovsd xmm5,QWORD PTR [rsi]
  6736d0:	c5 d1 16 34 3e       	vmovhpd xmm6,xmm5,QWORD PTR [rsi+rdi*1]
  6736d5:	48 8d 34 7e          	lea    rsi,[rsi+rdi*2]
  6736d9:	c5 fb 10 3e          	vmovsd xmm7,QWORD PTR [rsi]
  6736dd:	c5 41 16 04 3e       	vmovhpd xmm8,xmm7,QWORD PTR [rsi+rdi*1]
  6736e2:	48 8b b5 28 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x7d8]
  6736e9:	c4 43 4d 18 d0 01    	vinsertf128 ymm10,ymm6,xmm8,0x1
  6736ef:	49 03 f4             	add    rsi,r12
  6736f2:	c4 41 35 58 da       	vaddpd ymm11,ymm9,ymm10
  6736f7:	c4 41 25 59 e3       	vmulpd ymm12,ymm11,ymm11
  6736fc:	c4 c1 6d 58 d4       	vaddpd ymm2,ymm2,ymm12
  673701:	c5 7d 51 ea          	vsqrtpd ymm13,ymm2
  673705:	c5 95 59 e4          	vmulpd ymm4,ymm13,ymm4
  673709:	c5 dd 5f db          	vmaxpd ymm3,ymm4,ymm3
  67370d:	c4 e3 7d 19 d8 01    	vextractf128 xmm0,ymm3,0x1
  673713:	c5 fb 11 1e          	vmovsd QWORD PTR [rsi],xmm3
  673717:	c5 f9 17 1c 30       	vmovhpd QWORD PTR [rax+rsi*1],xmm3
  67371c:	c5 fb 11 04 46       	vmovsd QWORD PTR [rsi+rax*2],xmm0
  673721:	c5 f9 17 04 31       	vmovhpd QWORD PTR [rcx+rsi*1],xmm0
  673726:	48 8b 8d 30 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x8d0]
  67372d:	c5 f8 11 9d 60 ef ff 	vmovups XMMWORD PTR [rbp-0x10a0],xmm3
  673734:	ff 
  673735:	c5 f8 11 85 20 ef ff 	vmovups XMMWORD PTR [rbp-0x10e0],xmm0
  67373c:	ff 
  67373d:	49 03 cc             	add    rcx,r12
  673740:	c5 fb 10 09          	vmovsd xmm1,QWORD PTR [rcx]
  673744:	c5 f1 16 1c 01       	vmovhpd xmm3,xmm1,QWORD PTR [rcx+rax*1]
  673749:	48 8d 0c 41          	lea    rcx,[rcx+rax*2]
  67374d:	c5 fb 10 11          	vmovsd xmm2,QWORD PTR [rcx]
  673751:	c5 f9 28 c3          	vmovapd xmm0,xmm3
  673755:	c5 e9 16 24 01       	vmovhpd xmm4,xmm2,QWORD PTR [rcx+rax*1]
  67375a:	c5 f9 11 a5 50 ef ff 	vmovupd XMMWORD PTR [rbp-0x10b0],xmm4
  673761:	ff 
  673762:	c5 f8 77             	vzeroupper 
  673765:	c5 fb 10 8d f8 f6 ff 	vmovsd xmm1,QWORD PTR [rbp-0x908]
  67376c:	ff 
  67376d:	c5 f9 11 9d f0 ef ff 	vmovupd XMMWORD PTR [rbp-0x1010],xmm3
  673774:	ff 
  673775:	e8 c6 c1 e4 ff       	call   4bf940 <pow>
  67377a:	c5 f9 10 9d f0 ef ff 	vmovupd xmm3,XMMWORD PTR [rbp-0x1010]
  673781:	ff 
  673782:	c5 fb 11 85 48 f7 ff 	vmovsd QWORD PTR [rbp-0x8b8],xmm0
  673789:	ff 
  67378a:	c5 f9 70 c3 0e       	vpshufd xmm0,xmm3,0xe
  67378f:	c5 fb 10 8d 00 f7 ff 	vmovsd xmm1,QWORD PTR [rbp-0x900]
  673796:	ff 
  673797:	e8 a4 c1 e4 ff       	call   4bf940 <pow>
  67379c:	c5 fb 11 85 90 f7 ff 	vmovsd QWORD PTR [rbp-0x870],xmm0
  6737a3:	ff 
  6737a4:	c5 fb 10 85 50 ef ff 	vmovsd xmm0,QWORD PTR [rbp-0x10b0]
  6737ab:	ff 
  6737ac:	c5 fb 10 8d 10 f7 ff 	vmovsd xmm1,QWORD PTR [rbp-0x8f0]
  6737b3:	ff 
  6737b4:	e8 87 c1 e4 ff       	call   4bf940 <pow>
  6737b9:	c5 fb 11 85 78 f7 ff 	vmovsd QWORD PTR [rbp-0x888],xmm0
  6737c0:	ff 
  6737c1:	c5 f9 70 85 50 ef ff 	vpshufd xmm0,XMMWORD PTR [rbp-0x10b0],0xe
  6737c8:	ff 0e 
  6737ca:	c5 fb 10 8d 18 f7 ff 	vmovsd xmm1,QWORD PTR [rbp-0x8e8]
  6737d1:	ff 
  6737d2:	e8 69 c1 e4 ff       	call   4bf940 <pow>
  6737d7:	c5 fd 10 bd f0 ec ff 	vmovupd ymm7,YMMWORD PTR [rbp-0x1310]
  6737de:	ff 
  6737df:	c5 fb 10 9d 78 f7 ff 	vmovsd xmm3,QWORD PTR [rbp-0x888]
  6737e6:	ff 
  6737e7:	c5 e1 14 e8          	vunpcklpd xmm5,xmm3,xmm0
  6737eb:	c5 fb 10 95 48 f7 ff 	vmovsd xmm2,QWORD PTR [rbp-0x8b8]
  6737f2:	ff 
  6737f3:	c5 e9 16 a5 90 f7 ff 	vmovhpd xmm4,xmm2,QWORD PTR [rbp-0x870]
  6737fa:	ff 
  6737fb:	48 8b 85 48 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xab8]
  673802:	c4 a1 45 59 04 f8    	vmulpd ymm0,ymm7,YMMWORD PTR [rax+r15*8]
  673808:	c4 e3 5d 18 f5 01    	vinsertf128 ymm6,ymm4,xmm5,0x1
  67380e:	c4 e3 7d 19 85 40 ef 	vextractf128 XMMWORD PTR [rbp-0x10c0],ymm0,0x1
  673815:	ff ff 01 
  673818:	c5 fc 11 b5 b0 ed ff 	vmovups YMMWORD PTR [rbp-0x1250],ymm6
  67381f:	ff 
  673820:	c5 f8 28 d0          	vmovaps xmm2,xmm0
  673824:	c5 f9 28 c2          	vmovapd xmm0,xmm2
  673828:	c5 f8 77             	vzeroupper 
  67382b:	c5 fb 10 8d f0 f6 ff 	vmovsd xmm1,QWORD PTR [rbp-0x910]
  673832:	ff 
  673833:	c5 f8 11 95 00 f0 ff 	vmovups XMMWORD PTR [rbp-0x1000],xmm2
  67383a:	ff 
  67383b:	e8 00 c1 e4 ff       	call   4bf940 <pow>
  673840:	c5 f8 10 95 00 f0 ff 	vmovups xmm2,XMMWORD PTR [rbp-0x1000]
  673847:	ff 
  673848:	c5 fb 11 85 58 f7 ff 	vmovsd QWORD PTR [rbp-0x8a8],xmm0
  67384f:	ff 
  673850:	c5 f9 70 c2 0e       	vpshufd xmm0,xmm2,0xe
  673855:	c5 fb 10 8d e0 f6 ff 	vmovsd xmm1,QWORD PTR [rbp-0x920]
  67385c:	ff 
  67385d:	e8 de c0 e4 ff       	call   4bf940 <pow>
  673862:	c5 fb 11 85 80 f7 ff 	vmovsd QWORD PTR [rbp-0x880],xmm0
  673869:	ff 
  67386a:	c5 fb 10 85 40 ef ff 	vmovsd xmm0,QWORD PTR [rbp-0x10c0]
  673871:	ff 
  673872:	c5 fb 10 8d e8 f6 ff 	vmovsd xmm1,QWORD PTR [rbp-0x918]
  673879:	ff 
  67387a:	e8 c1 c0 e4 ff       	call   4bf940 <pow>
  67387f:	c5 fb 11 85 70 f7 ff 	vmovsd QWORD PTR [rbp-0x890],xmm0
  673886:	ff 
  673887:	c5 f9 70 85 40 ef ff 	vpshufd xmm0,XMMWORD PTR [rbp-0x10c0],0xe
  67388e:	ff 0e 
  673890:	c5 fb 10 8d 08 f7 ff 	vmovsd xmm1,QWORD PTR [rbp-0x8f8]
  673897:	ff 
  673898:	e8 a3 c0 e4 ff       	call   4bf940 <pow>
  67389d:	c5 fc 10 b5 b0 ed ff 	vmovups ymm6,YMMWORD PTR [rbp-0x1250]
  6738a4:	ff 
  6738a5:	c5 fb 10 95 58 f7 ff 	vmovsd xmm2,QWORD PTR [rbp-0x8a8]
  6738ac:	ff 
  6738ad:	c5 fb 10 9d 70 f7 ff 	vmovsd xmm3,QWORD PTR [rbp-0x890]
  6738b4:	ff 
  6738b5:	c5 e9 16 a5 80 f7 ff 	vmovhpd xmm4,xmm2,QWORD PTR [rbp-0x880]
  6738bc:	ff 
  6738bd:	c5 e1 14 e8          	vunpcklpd xmm5,xmm3,xmm0
  6738c1:	c5 4d 59 85 70 ed ff 	vmulpd ymm8,ymm6,YMMWORD PTR [rbp-0x1290]
  6738c8:	ff 
  6738c9:	c5 7d 10 a5 10 ed ff 	vmovupd ymm12,YMMWORD PTR [rbp-0x12f0]
  6738d0:	ff 
  6738d1:	4c 8b 8d 20 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x7e0]
  6738d8:	48 8b 8d 38 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7c8]
  6738df:	48 8b 85 70 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x790]
  6738e6:	c4 81 1d 59 04 f9    	vmulpd ymm0,ymm12,YMMWORD PTR [r9+r15*8]
  6738ec:	48 8b b5 b0 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x450]
  6738f3:	4c 8d 04 08          	lea    r8,[rax+rcx*1]
  6738f7:	48 8b bd a0 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x760]
  6738fe:	c4 e3 7d 19 85 30 ef 	vextractf128 XMMWORD PTR [rbp-0x10d0],ymm0,0x1
  673905:	ff ff 01 
  673908:	c4 e3 5d 18 fd 01    	vinsertf128 ymm7,ymm4,xmm5,0x1
  67390e:	c4 41 45 59 c8       	vmulpd ymm9,ymm7,ymm8
  673913:	c5 35 5f 95 50 ed ff 	vmaxpd ymm10,ymm9,YMMWORD PTR [rbp-0x12b0]
  67391a:	ff 
  67391b:	c4 43 7d 19 d3 01    	vextractf128 xmm11,ymm10,0x1
  673921:	c4 41 7b 11 10       	vmovsd QWORD PTR [r8],xmm10
  673926:	c4 21 79 17 14 06    	vmovhpd QWORD PTR [rsi+r8*1],xmm10
  67392c:	c4 41 7b 11 1c 70    	vmovsd QWORD PTR [r8+rsi*2],xmm11
  673932:	c4 21 79 17 1c 07    	vmovhpd QWORD PTR [rdi+r8*1],xmm11
  673938:	c5 f8 28 d0          	vmovaps xmm2,xmm0
  67393c:	c5 f9 28 c2          	vmovapd xmm0,xmm2
  673940:	c5 f8 77             	vzeroupper 
  673943:	c5 fb 10 8d f0 f6 ff 	vmovsd xmm1,QWORD PTR [rbp-0x910]
  67394a:	ff 
  67394b:	c5 f8 11 95 10 f0 ff 	vmovups XMMWORD PTR [rbp-0xff0],xmm2
  673952:	ff 
  673953:	e8 e8 bf e4 ff       	call   4bf940 <pow>
  673958:	c5 f8 10 95 10 f0 ff 	vmovups xmm2,XMMWORD PTR [rbp-0xff0]
  67395f:	ff 
  673960:	c5 fb 11 85 50 f7 ff 	vmovsd QWORD PTR [rbp-0x8b0],xmm0
  673967:	ff 
  673968:	c5 f9 70 c2 0e       	vpshufd xmm0,xmm2,0xe
  67396d:	c5 fb 10 8d e0 f6 ff 	vmovsd xmm1,QWORD PTR [rbp-0x920]
  673974:	ff 
  673975:	e8 c6 bf e4 ff       	call   4bf940 <pow>
  67397a:	c5 fb 11 85 88 f7 ff 	vmovsd QWORD PTR [rbp-0x878],xmm0
  673981:	ff 
  673982:	c5 fb 10 85 30 ef ff 	vmovsd xmm0,QWORD PTR [rbp-0x10d0]
  673989:	ff 
  67398a:	c5 fb 10 8d e8 f6 ff 	vmovsd xmm1,QWORD PTR [rbp-0x918]
  673991:	ff 
  673992:	e8 a9 bf e4 ff       	call   4bf940 <pow>
  673997:	c5 fb 11 85 68 f7 ff 	vmovsd QWORD PTR [rbp-0x898],xmm0
  67399e:	ff 
  67399f:	c5 f9 70 85 30 ef ff 	vpshufd xmm0,XMMWORD PTR [rbp-0x10d0],0xe
  6739a6:	ff 0e 
  6739a8:	c5 fb 10 8d 08 f7 ff 	vmovsd xmm1,QWORD PTR [rbp-0x8f8]
  6739af:	ff 
  6739b0:	e8 8b bf e4 ff       	call   4bf940 <pow>
  6739b5:	c5 fb 10 8d 50 f7 ff 	vmovsd xmm1,QWORD PTR [rbp-0x8b0]
  6739bc:	ff 
  6739bd:	c5 fb 10 95 68 f7 ff 	vmovsd xmm2,QWORD PTR [rbp-0x898]
  6739c4:	ff 
  6739c5:	c5 f1 16 9d 88 f7 ff 	vmovhpd xmm3,xmm1,QWORD PTR [rbp-0x878]
  6739cc:	ff 
  6739cd:	c5 e9 14 e0          	vunpcklpd xmm4,xmm2,xmm0
  6739d1:	c5 fb 10 85 60 ef ff 	vmovsd xmm0,QWORD PTR [rbp-0x10a0]
  6739d8:	ff 
  6739d9:	c4 e3 65 18 ec 01    	vinsertf128 ymm5,ymm3,xmm4,0x1
  6739df:	c5 d5 59 b5 30 ed ff 	vmulpd ymm6,ymm5,YMMWORD PTR [rbp-0x12d0]
  6739e6:	ff 
  6739e7:	c5 fd 11 b5 d0 ed ff 	vmovupd YMMWORD PTR [rbp-0x1230],ymm6
  6739ee:	ff 
  6739ef:	c5 f8 77             	vzeroupper 
  6739f2:	c5 fb 10 8d f8 f6 ff 	vmovsd xmm1,QWORD PTR [rbp-0x908]
  6739f9:	ff 
  6739fa:	e8 41 bf e4 ff       	call   4bf940 <pow>
  6739ff:	c5 fb 11 85 60 f7 ff 	vmovsd QWORD PTR [rbp-0x8a0],xmm0
  673a06:	ff 
  673a07:	c5 f9 70 85 60 ef ff 	vpshufd xmm0,XMMWORD PTR [rbp-0x10a0],0xe
  673a0e:	ff 0e 
  673a10:	c5 fb 10 8d 00 f7 ff 	vmovsd xmm1,QWORD PTR [rbp-0x900]
  673a17:	ff 
  673a18:	e8 23 bf e4 ff       	call   4bf940 <pow>
  673a1d:	c5 fb 11 85 98 f7 ff 	vmovsd QWORD PTR [rbp-0x868],xmm0
  673a24:	ff 
  673a25:	c5 fb 10 85 20 ef ff 	vmovsd xmm0,QWORD PTR [rbp-0x10e0]
  673a2c:	ff 
  673a2d:	c5 fb 10 8d 10 f7 ff 	vmovsd xmm1,QWORD PTR [rbp-0x8f0]
  673a34:	ff 
  673a35:	e8 06 bf e4 ff       	call   4bf940 <pow>
  673a3a:	c5 fb 11 85 a0 f7 ff 	vmovsd QWORD PTR [rbp-0x860],xmm0
  673a41:	ff 
  673a42:	c5 f9 70 85 20 ef ff 	vpshufd xmm0,XMMWORD PTR [rbp-0x10e0],0xe
  673a49:	ff 0e 
  673a4b:	c5 fb 10 8d 18 f7 ff 	vmovsd xmm1,QWORD PTR [rbp-0x8e8]
  673a52:	ff 
  673a53:	e8 e8 be e4 ff       	call   4bf940 <pow>
  673a58:	c5 f9 28 c8          	vmovapd xmm1,xmm0
  673a5c:	49 83 c7 04          	add    r15,0x4
  673a60:	c5 fb 10 85 60 f7 ff 	vmovsd xmm0,QWORD PTR [rbp-0x8a0]
  673a67:	ff 
  673a68:	c5 fb 10 95 a0 f7 ff 	vmovsd xmm2,QWORD PTR [rbp-0x860]
  673a6f:	ff 
  673a70:	c5 f9 16 9d 98 f7 ff 	vmovhpd xmm3,xmm0,QWORD PTR [rbp-0x868]
  673a77:	ff 
  673a78:	c5 e9 14 e1          	vunpcklpd xmm4,xmm2,xmm1
  673a7c:	48 8b 8d 28 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xad8]
  673a83:	48 8b 85 a8 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x858]
  673a8a:	48 8b bd 00 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xb00]
  673a91:	4c 8b 95 30 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xad0]
  673a98:	4c 8b 8d b0 f7 ff ff 	mov    r9,QWORD PTR [rbp-0x850]
  673a9f:	48 8d 34 88          	lea    rsi,[rax+rcx*4]
  673aa3:	48 8b 85 08 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xaf8]
  673aaa:	4d 8d 6c bd 00       	lea    r13,[r13+rdi*4+0x0]
  673aaf:	48 89 b5 a8 f7 ff ff 	mov    QWORD PTR [rbp-0x858],rsi
  673ab6:	48 8b b5 70 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x790]
  673abd:	4f 8d 1c 91          	lea    r11,[r9+r10*4]
  673ac1:	48 8b bd b0 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x450]
  673ac8:	4d 8d 34 86          	lea    r14,[r14+rax*4]
  673acc:	48 8b 85 18 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7e8]
  673ad3:	4c 8b 85 28 fd ff ff 	mov    r8,QWORD PTR [rbp-0x2d8]
  673ada:	4c 89 9d b0 f7 ff ff 	mov    QWORD PTR [rbp-0x850],r11
  673ae1:	48 8d 0c 06          	lea    rcx,[rsi+rax*1]
  673ae5:	48 8b 85 a0 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x760]
  673aec:	4f 8d 24 84          	lea    r12,[r12+r8*4]
  673af0:	c4 e3 65 18 ec 01    	vinsertf128 ymm5,ymm3,xmm4,0x1
  673af6:	c5 d5 59 b5 d0 ed ff 	vmulpd ymm6,ymm5,YMMWORD PTR [rbp-0x1230]
  673afd:	ff 
  673afe:	c5 cd 5f bd 50 ed ff 	vmaxpd ymm7,ymm6,YMMWORD PTR [rbp-0x12b0]
  673b05:	ff 
  673b06:	c4 c3 7d 19 f8 01    	vextractf128 xmm8,ymm7,0x1
  673b0c:	c5 fb 11 39          	vmovsd QWORD PTR [rcx],xmm7
  673b10:	c5 f9 17 3c 0f       	vmovhpd QWORD PTR [rdi+rcx*1],xmm7
  673b15:	c5 7b 11 04 79       	vmovsd QWORD PTR [rcx+rdi*2],xmm8
  673b1a:	c5 79 17 04 08       	vmovhpd QWORD PTR [rax+rcx*1],xmm8
  673b1f:	48 8d 04 be          	lea    rax,[rsi+rdi*4]
  673b23:	48 89 85 70 f8 ff ff 	mov    QWORD PTR [rbp-0x790],rax
  673b2a:	4c 3b bd 50 f5 ff ff 	cmp    r15,QWORD PTR [rbp-0xab0]
  673b31:	0f 82 dc f9 ff ff    	jb     673513 <gls_corstep_mod_mp_gls_corstep_tile_+0xbda3>
  673b37:	c5 fd 10 85 d0 ed ff 	vmovupd ymm0,YMMWORD PTR [rbp-0x1230]
  673b3e:	ff 
  673b3f:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  673b45:	c5 f9 15 f8          	vunpckhpd xmm7,xmm0,xmm0
  673b49:	4c 8b ad 50 fd ff ff 	mov    r13,QWORD PTR [rbp-0x2b0]
  673b50:	4c 8b a5 50 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xab0]
  673b57:	4d 3b e5             	cmp    r12,r13
  673b5a:	4c 8b b5 d8 e6 ff ff 	mov    r14,QWORD PTR [rbp-0x1928]
  673b61:	4c 8b bd 78 eb ff ff 	mov    r15,QWORD PTR [rbp-0x1488]
  673b68:	0f 83 7d 04 00 00    	jae    673feb <gls_corstep_mod_mp_gls_corstep_tile_+0xc87b>
  673b6e:	48 8b 95 b0 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x450]
  673b75:	49 0f af d4          	imul   rdx,r12
  673b79:	48 89 95 08 e7 ff ff 	mov    QWORD PTR [rbp-0x18f8],rdx
  673b80:	48 8b 95 48 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x2b8]
  673b87:	49 0f af d7          	imul   rdx,r15
  673b8b:	4c 8b 95 58 fd ff ff 	mov    r10,QWORD PTR [rbp-0x2a8]
  673b92:	4d 0f af d7          	imul   r10,r15
  673b96:	48 8b 8d 08 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xaf8]
  673b9d:	49 0f af cc          	imul   rcx,r12
  673ba1:	48 8b b5 30 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xad0]
  673ba8:	48 8b bd 28 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2d8]
  673baf:	4c 8b 85 00 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xb00]
  673bb6:	4c 8b 8d 28 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xad8]
  673bbd:	49 0f af f4          	imul   rsi,r12
  673bc1:	49 0f af fc          	imul   rdi,r12
  673bc5:	4d 0f af c4          	imul   r8,r12
  673bc9:	4d 0f af cc          	imul   r9,r12
  673bcd:	48 03 95 40 eb ff ff 	add    rdx,QWORD PTR [rbp-0x14c0]
  673bd4:	4c 03 95 20 ea ff ff 	add    r10,QWORD PTR [rbp-0x15e0]
  673bdb:	48 f7 da             	neg    rdx
  673bde:	49 f7 da             	neg    r10
  673be1:	48 03 95 48 e9 ff ff 	add    rdx,QWORD PTR [rbp-0x16b8]
  673be8:	4c 03 95 10 e9 ff ff 	add    r10,QWORD PTR [rbp-0x16f0]
  673bef:	48 f7 da             	neg    rdx
  673bf2:	4c 8b 9d 28 e9 ff ff 	mov    r11,QWORD PTR [rbp-0x16d8]
  673bf9:	49 f7 da             	neg    r10
  673bfc:	48 8b 85 b8 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x948]
  673c03:	48 89 8d 00 e7 ff ff 	mov    QWORD PTR [rbp-0x1900],rcx
  673c0a:	48 03 95 f8 e8 ff ff 	add    rdx,QWORD PTR [rbp-0x1708]
  673c11:	48 8b 8d c0 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x940]
  673c18:	48 03 d1             	add    rdx,rcx
  673c1b:	48 03 85 50 eb ff ff 	add    rax,QWORD PTR [rbp-0x14b0]
  673c22:	4c 03 95 e0 e8 ff ff 	add    r10,QWORD PTR [rbp-0x1720]
  673c29:	48 03 8d 20 e9 ff ff 	add    rcx,QWORD PTR [rbp-0x16e0]
  673c30:	4d 03 d6             	add    r10,r14
  673c33:	48 89 85 b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],rax
  673c3a:	4b 8d 04 1e          	lea    rax,[r14+r11*1]
  673c3e:	48 89 b5 40 f8 ff ff 	mov    QWORD PTR [rbp-0x7c0],rsi
  673c45:	48 89 bd f8 e6 ff ff 	mov    QWORD PTR [rbp-0x1908],rdi
  673c4c:	4c 89 85 50 f8 ff ff 	mov    QWORD PTR [rbp-0x7b0],r8
  673c53:	4c 89 8d 58 f8 ff ff 	mov    QWORD PTR [rbp-0x7a8],r9
  673c5a:	4c 89 95 60 f8 ff ff 	mov    QWORD PTR [rbp-0x7a0],r10
  673c61:	48 89 85 30 f8 ff ff 	mov    QWORD PTR [rbp-0x7d0],rax
  673c68:	48 89 95 68 f8 ff ff 	mov    QWORD PTR [rbp-0x798],rdx
  673c6f:	48 89 8d c0 f6 ff ff 	mov    QWORD PTR [rbp-0x940],rcx
  673c76:	c5 f8 77             	vzeroupper 
  673c79:	c5 fb 10 85 e0 e6 ff 	vmovsd xmm0,QWORD PTR [rbp-0x1920]
  673c80:	ff 
  673c81:	c5 fb 10 8d e8 e6 ff 	vmovsd xmm1,QWORD PTR [rbp-0x1918]
  673c88:	ff 
  673c89:	e8 b2 bc e4 ff       	call   4bf940 <pow>
  673c8e:	4c 8b 8d 58 ea ff ff 	mov    r9,QWORD PTR [rbp-0x15a8]
  673c95:	4c 8b 95 78 f4 ff ff 	mov    r10,QWORD PTR [rbp-0xb88]
  673c9c:	4c 8b 9d 70 ec ff ff 	mov    r11,QWORD PTR [rbp-0x1390]
  673ca3:	48 8b bd f0 eb ff ff 	mov    rdi,QWORD PTR [rbp-0x1410]
  673caa:	4f 63 14 91          	movsxd r10,DWORD PTR [r9+r10*4]
  673cae:	4c 8b 8d 88 e9 ff ff 	mov    r9,QWORD PTR [rbp-0x1678]
  673cb5:	4d 0f af cb          	imul   r9,r11
  673cb9:	4c 0f af 95 58 fd ff 	imul   r10,QWORD PTR [rbp-0x2a8]
  673cc0:	ff 
  673cc1:	48 8b 8d 78 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x1588]
  673cc8:	4e 8d 04 0f          	lea    r8,[rdi+r9*1]
  673ccc:	48 8b bd 18 ea ff ff 	mov    rdi,QWORD PTR [rbp-0x15e8]
  673cd3:	49 0f af fb          	imul   rdi,r11
  673cd7:	48 8b 95 10 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x15f0]
  673cde:	48 8d 34 39          	lea    rsi,[rcx+rdi*1]
  673ce2:	48 8b 8d 90 e9 ff ff 	mov    rcx,QWORD PTR [rbp-0x1670]
  673ce9:	49 0f af cb          	imul   rcx,r11
  673ced:	49 0f af d3          	imul   rdx,r11
  673cf1:	4c 03 95 20 ea ff ff 	add    r10,QWORD PTR [rbp-0x15e0]
  673cf8:	49 f7 da             	neg    r10
  673cfb:	4c 03 95 10 e9 ff ff 	add    r10,QWORD PTR [rbp-0x16f0]
  673d02:	48 8b 85 f8 eb ff ff 	mov    rax,QWORD PTR [rbp-0x1408]
  673d09:	49 f7 da             	neg    r10
  673d0c:	4c 8b 9d 60 ea ff ff 	mov    r11,QWORD PTR [rbp-0x15a0]
  673d13:	4c 03 95 e0 e8 ff ff 	add    r10,QWORD PTR [rbp-0x1720]
  673d1a:	4c 03 8d 68 ea ff ff 	add    r9,QWORD PTR [rbp-0x1598]
  673d21:	4d 03 d6             	add    r10,r14
  673d24:	48 03 bd a0 e7 ff ff 	add    rdi,QWORD PTR [rbp-0x1860]
  673d2b:	48 03 c1             	add    rax,rcx
  673d2e:	48 03 8d 70 ea ff ff 	add    rcx,QWORD PTR [rbp-0x1590]
  673d35:	4c 03 da             	add    r11,rdx
  673d38:	48 03 95 98 e7 ff ff 	add    rdx,QWORD PTR [rbp-0x1868]
  673d3f:	4c 89 b5 d8 e6 ff ff 	mov    QWORD PTR [rbp-0x1928],r14
  673d46:	4c 89 bd 78 eb ff ff 	mov    QWORD PTR [rbp-0x1488],r15
  673d4d:	c5 fb 11 85 e0 f7 ff 	vmovsd QWORD PTR [rbp-0x820],xmm0
  673d54:	ff 
  673d55:	48 89 95 f0 f7 ff ff 	mov    QWORD PTR [rbp-0x810],rdx
  673d5c:	4c 89 9d f8 f7 ff ff 	mov    QWORD PTR [rbp-0x808],r11
  673d63:	48 89 8d c8 f7 ff ff 	mov    QWORD PTR [rbp-0x838],rcx
  673d6a:	48 89 85 00 f8 ff ff 	mov    QWORD PTR [rbp-0x800],rax
  673d71:	48 89 bd d0 f7 ff ff 	mov    QWORD PTR [rbp-0x830],rdi
  673d78:	48 89 b5 b8 f7 ff ff 	mov    QWORD PTR [rbp-0x848],rsi
  673d7f:	4c 89 8d c0 f7 ff ff 	mov    QWORD PTR [rbp-0x840],r9
  673d86:	4c 89 85 d8 f7 ff ff 	mov    QWORD PTR [rbp-0x828],r8
  673d8d:	4c 89 95 e8 f7 ff ff 	mov    QWORD PTR [rbp-0x818],r10
  673d94:	4c 8b bd f8 e6 ff ff 	mov    r15,QWORD PTR [rbp-0x1908]
  673d9b:	4c 8b ad 00 e7 ff ff 	mov    r13,QWORD PTR [rbp-0x1900]
  673da2:	4c 8b b5 08 e7 ff ff 	mov    r14,QWORD PTR [rbp-0x18f8]
  673da9:	48 8b 85 c0 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x840]
  673db0:	48 8b 95 58 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7a8]
  673db7:	48 8b b5 d0 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x830]
  673dbe:	48 8b bd 50 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x7b0]
  673dc5:	48 8b 8d d8 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x828]
  673dcc:	4c 8b 85 b8 f7 ff ff 	mov    r8,QWORD PTR [rbp-0x848]
  673dd3:	c5 fb 10 0c 02       	vmovsd xmm1,QWORD PTR [rdx+rax*1]
  673dd8:	c5 fb 10 1c 37       	vmovsd xmm3,QWORD PTR [rdi+rsi*1]
  673ddd:	4c 8b 95 c8 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x838]
  673de4:	4c 8b 9d 40 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x7c0]
  673deb:	48 8b 85 00 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x800]
  673df2:	c5 fb 10 85 60 f5 ff 	vmovsd xmm0,QWORD PTR [rbp-0xaa0]
  673df9:	ff 
  673dfa:	c4 01 7b 10 0c 13    	vmovsd xmm9,QWORD PTR [r11+r10*1]
  673e00:	4c 8b 8d 60 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x7a0]
  673e07:	48 8b b5 30 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x7d0]
  673e0e:	c5 f3 58 14 0a       	vaddsd xmm2,xmm1,QWORD PTR [rdx+rcx*1]
  673e13:	c4 a1 63 58 24 07    	vaddsd xmm4,xmm3,QWORD PTR [rdi+r8*1]
  673e19:	c4 41 33 58 14 03    	vaddsd xmm10,xmm9,QWORD PTR [r11+rax*1]
  673e1f:	c5 eb 59 ea          	vmulsd xmm5,xmm2,xmm2
  673e23:	c5 db 59 f4          	vmulsd xmm6,xmm4,xmm4
  673e27:	c4 41 2b 59 ea       	vmulsd xmm13,xmm10,xmm10
  673e2c:	c5 d3 58 fe          	vaddsd xmm7,xmm5,xmm6
  673e30:	48 8b 95 f0 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x810]
  673e37:	48 8b 8d f8 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x808]
  673e3e:	c5 c3 51 ff          	vsqrtsd xmm7,xmm7,xmm7
  673e42:	c4 41 7b 10 5c 15 00 	vmovsd xmm11,QWORD PTR [r13+rdx*1+0x0]
  673e49:	c5 7b 59 c7          	vmulsd xmm8,xmm0,xmm7
  673e4d:	c4 41 23 58 64 0d 00 	vaddsd xmm12,xmm11,QWORD PTR [r13+rcx*1+0x0]
  673e54:	c4 41 1b 59 f4       	vmulsd xmm14,xmm12,xmm12
  673e59:	c5 fb 10 8d f8 fe ff 	vmovsd xmm1,QWORD PTR [rbp-0x108]
  673e60:	ff 
  673e61:	c4 41 13 58 fe       	vaddsd xmm15,xmm13,xmm14
  673e66:	c5 3b 5f c1          	vmaxsd xmm8,xmm8,xmm1
  673e6a:	c4 41 03 51 ff       	vsqrtsd xmm15,xmm15,xmm15
  673e6f:	c4 01 7b 11 04 0f    	vmovsd QWORD PTR [r15+r9*1],xmm8
  673e75:	c4 41 7b 59 c7       	vmulsd xmm8,xmm0,xmm15
  673e7a:	48 8b bd e8 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x818]
  673e81:	c5 3b 5f c1          	vmaxsd xmm8,xmm8,xmm1
  673e85:	c4 41 7b 11 04 37    	vmovsd QWORD PTR [r15+rsi*1],xmm8
  673e8b:	c4 c1 7b 10 04 3f    	vmovsd xmm0,QWORD PTR [r15+rdi*1]
  673e91:	c5 7b 11 85 08 f8 ff 	vmovsd QWORD PTR [rbp-0x7f8],xmm8
  673e98:	ff 
  673e99:	c5 fb 10 8d c8 f6 ff 	vmovsd xmm1,QWORD PTR [rbp-0x938]
  673ea0:	ff 
  673ea1:	e8 9a ba e4 ff       	call   4bf940 <pow>
  673ea6:	48 8b 85 48 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xab8]
  673ead:	c5 fb 10 8d d8 f4 ff 	vmovsd xmm1,QWORD PTR [rbp-0xb28]
  673eb4:	ff 
  673eb5:	c5 fb 11 85 10 f8 ff 	vmovsd QWORD PTR [rbp-0x7f0],xmm0
  673ebc:	ff 
  673ebd:	c4 a1 73 59 04 e0    	vmulsd xmm0,xmm1,QWORD PTR [rax+r12*8]
  673ec3:	c5 fb 10 8d d0 f6 ff 	vmovsd xmm1,QWORD PTR [rbp-0x930]
  673eca:	ff 
  673ecb:	e8 70 ba e4 ff       	call   4bf940 <pow>
  673ed0:	c5 fb 10 8d 10 f8 ff 	vmovsd xmm1,QWORD PTR [rbp-0x7f0]
  673ed7:	ff 
  673ed8:	c5 f3 59 95 e0 f7 ff 	vmulsd xmm2,xmm1,QWORD PTR [rbp-0x820]
  673edf:	ff 
  673ee0:	c5 eb 59 d8          	vmulsd xmm3,xmm2,xmm0
  673ee4:	48 8b 95 b8 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x948]
  673eeb:	48 8b 85 68 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x798]
  673ef2:	c5 fb 10 a5 58 f5 ff 	vmovsd xmm4,QWORD PTR [rbp-0xaa8]
  673ef9:	ff 
  673efa:	c4 a1 5b 59 04 e2    	vmulsd xmm0,xmm4,QWORD PTR [rdx+r12*8]
  673f00:	c5 e3 5f 9d d8 f6 ff 	vmaxsd xmm3,xmm3,QWORD PTR [rbp-0x928]
  673f07:	ff 
  673f08:	c4 c1 7b 11 1c 06    	vmovsd QWORD PTR [r14+rax*1],xmm3
  673f0e:	c5 fb 10 8d d0 f6 ff 	vmovsd xmm1,QWORD PTR [rbp-0x930]
  673f15:	ff 
  673f16:	e8 25 ba e4 ff       	call   4bf940 <pow>
  673f1b:	c5 fb 59 bd e0 f4 ff 	vmulsd xmm7,xmm0,QWORD PTR [rbp-0xb20]
  673f22:	ff 
  673f23:	c5 fb 10 85 08 f8 ff 	vmovsd xmm0,QWORD PTR [rbp-0x7f8]
  673f2a:	ff 
  673f2b:	c5 fb 10 8d c8 f6 ff 	vmovsd xmm1,QWORD PTR [rbp-0x938]
  673f32:	ff 
  673f33:	c5 fb 11 bd 68 ff ff 	vmovsd QWORD PTR [rbp-0x98],xmm7
  673f3a:	ff 
  673f3b:	e8 00 ba e4 ff       	call   4bf940 <pow>
  673f40:	c5 fb 10 bd 68 ff ff 	vmovsd xmm7,QWORD PTR [rbp-0x98]
  673f47:	ff 
  673f48:	49 ff c4             	inc    r12
  673f4b:	c5 c3 59 c8          	vmulsd xmm1,xmm7,xmm0
  673f4f:	48 8b 85 c0 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x940]
  673f56:	48 8b 95 58 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7a8]
  673f5d:	48 8b 8d 50 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7b0]
  673f64:	48 8b b5 40 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x7c0]
  673f6b:	48 03 95 28 f5 ff ff 	add    rdx,QWORD PTR [rbp-0xad8]
  673f72:	48 03 8d 00 f5 ff ff 	add    rcx,QWORD PTR [rbp-0xb00]
  673f79:	48 03 b5 30 f5 ff ff 	add    rsi,QWORD PTR [rbp-0xad0]
  673f80:	4c 03 bd 28 fd ff ff 	add    r15,QWORD PTR [rbp-0x2d8]
  673f87:	4c 03 ad 08 f5 ff ff 	add    r13,QWORD PTR [rbp-0xaf8]
  673f8e:	48 89 95 58 f8 ff ff 	mov    QWORD PTR [rbp-0x7a8],rdx
  673f95:	48 89 8d 50 f8 ff ff 	mov    QWORD PTR [rbp-0x7b0],rcx
  673f9c:	48 89 b5 40 f8 ff ff 	mov    QWORD PTR [rbp-0x7c0],rsi
  673fa3:	c5 f3 5f 8d d8 f6 ff 	vmaxsd xmm1,xmm1,QWORD PTR [rbp-0x928]
  673faa:	ff 
  673fab:	c4 c1 7b 11 0c 06    	vmovsd QWORD PTR [r14+rax*1],xmm1
  673fb1:	4c 03 b5 b0 fb ff ff 	add    r14,QWORD PTR [rbp-0x450]
  673fb8:	4c 3b a5 50 fd ff ff 	cmp    r12,QWORD PTR [rbp-0x2b0]
  673fbf:	0f 82 e4 fd ff ff    	jb     673da9 <gls_corstep_mod_mp_gls_corstep_tile_+0xc639>
  673fc5:	4c 8b b5 d8 e6 ff ff 	mov    r14,QWORD PTR [rbp-0x1928]
  673fcc:	4c 8b bd 78 eb ff ff 	mov    r15,QWORD PTR [rbp-0x1488]
  673fd3:	4c 8b ad 50 fd ff ff 	mov    r13,QWORD PTR [rbp-0x2b0]
  673fda:	49 83 fd 04          	cmp    r13,0x4
  673fde:	0f 8c 91 06 00 00    	jl     674675 <gls_corstep_mod_mp_gls_corstep_tile_+0xcf05>
  673fe4:	4c 8b a5 50 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xab0]
  673feb:	4c 89 e2             	mov    rdx,r12
  673fee:	33 c0                	xor    eax,eax
  673ff0:	48 8b 8d 48 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x15b8]
  673ff7:	48 8b b5 70 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb90]
  673ffe:	c5 fd 57 c0          	vxorpd ymm0,ymm0,ymm0
  674002:	c5 fd 11 04 c1       	vmovupd YMMWORD PTR [rcx+rax*8],ymm0
  674007:	c5 fd 11 04 c6       	vmovupd YMMWORD PTR [rsi+rax*8],ymm0
  67400c:	48 83 c0 04          	add    rax,0x4
  674010:	48 3b c2             	cmp    rax,rdx
  674013:	72 ed                	jb     674002 <gls_corstep_mod_mp_gls_corstep_tile_+0xc892>
  674015:	4d 3b e5             	cmp    r12,r13
  674018:	73 26                	jae    674040 <gls_corstep_mod_mp_gls_corstep_tile_+0xc8d0>
  67401a:	48 8b 85 48 ea ff ff 	mov    rax,QWORD PTR [rbp-0x15b8]
  674021:	48 8b 95 70 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb90]
  674028:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  67402c:	c4 a1 7b 11 04 e0    	vmovsd QWORD PTR [rax+r12*8],xmm0
  674032:	c4 a1 7b 11 04 e2    	vmovsd QWORD PTR [rdx+r12*8],xmm0
  674038:	49 ff c4             	inc    r12
  67403b:	4d 3b e5             	cmp    r12,r13
  67403e:	72 ec                	jb     67402c <gls_corstep_mod_mp_gls_corstep_tile_+0xc8bc>
  674040:	48 83 bd 28 fd ff ff 	cmp    QWORD PTR [rbp-0x2d8],0x0
  674047:	00 
  674048:	0f 84 08 06 00 00    	je     674656 <gls_corstep_mod_mp_gls_corstep_tile_+0xcee6>
  67404e:	83 bd 08 ef ff ff 04 	cmp    DWORD PTR [rbp-0x10f8],0x4
  674055:	0f 8c f3 05 00 00    	jl     67464e <gls_corstep_mod_mp_gls_corstep_tile_+0xcede>
  67405b:	4c 8b 9d d8 fc ff ff 	mov    r11,QWORD PTR [rbp-0x328]
  674062:	45 33 c9             	xor    r9d,r9d
  674065:	48 8b 85 58 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2a8]
  67406c:	49 0f af c3          	imul   rax,r11
  674070:	4c 0f af 9d 60 fd ff 	imul   r11,QWORD PTR [rbp-0x2a0]
  674077:	ff 
  674078:	48 8b bd c8 e9 ff ff 	mov    rdi,QWORD PTR [rbp-0x1638]
  67407f:	48 8b b5 d8 e9 ff ff 	mov    rsi,QWORD PTR [rbp-0x1628]
  674086:	48 8b 8d d0 e9 ff ff 	mov    rcx,QWORD PTR [rbp-0x1630]
  67408d:	4c 8b 95 b8 e8 ff ff 	mov    r10,QWORD PTR [rbp-0x1748]
  674094:	49 03 fb             	add    rdi,r11
  674097:	4c 8b a5 b0 e8 ff ff 	mov    r12,QWORD PTR [rbp-0x1750]
  67409e:	49 03 f3             	add    rsi,r11
  6740a1:	48 03 85 20 ea ff ff 	add    rax,QWORD PTR [rbp-0x15e0]
  6740a8:	49 03 cb             	add    rcx,r11
  6740ab:	48 8b 95 88 e8 ff ff 	mov    rdx,QWORD PTR [rbp-0x1778]
  6740b2:	48 03 fa             	add    rdi,rdx
  6740b5:	48 03 f2             	add    rsi,rdx
  6740b8:	48 03 ca             	add    rcx,rdx
  6740bb:	4c 89 b5 d8 e6 ff ff 	mov    QWORD PTR [rbp-0x1928],r14
  6740c2:	4b 8d 14 1a          	lea    rdx,[r10+r11*1]
  6740c6:	4c 89 bd 78 eb ff ff 	mov    QWORD PTR [rbp-0x1488],r15
  6740cd:	4f 8d 14 1c          	lea    r10,[r12+r11*1]
  6740d1:	4c 8b a5 10 e9 ff ff 	mov    r12,QWORD PTR [rbp-0x16f0]
  6740d8:	4c 2b e0             	sub    r12,rax
  6740db:	49 f7 dc             	neg    r12
  6740de:	4c 03 a5 e0 e8 ff ff 	add    r12,QWORD PTR [rbp-0x1720]
  6740e5:	48 03 85 90 eb ff ff 	add    rax,QWORD PTR [rbp-0x1470]
  6740ec:	4d 03 e6             	add    r12,r14
  6740ef:	44 8b 85 d8 eb ff ff 	mov    r8d,DWORD PTR [rbp-0x1428]
  6740f6:	49 03 c6             	add    rax,r14
  6740f9:	4c 03 9d c0 e8 ff ff 	add    r11,QWORD PTR [rbp-0x1740]
  674100:	4c 8b ad 88 e7 ff ff 	mov    r13,QWORD PTR [rbp-0x1878]
  674107:	4c 8b b5 48 ea ff ff 	mov    r14,QWORD PTR [rbp-0x15b8]
  67410e:	4c 8b bd 28 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2d8]
  674115:	c5 79 10 1d 83 76 1d 	vmovupd xmm11,XMMWORD PTR [rip+0x1d7683]        # 84b7a0 <__STRLITPACK_219.115+0xa0>
  67411c:	00 
  67411d:	0f 1f 00             	nop    DWORD PTR [rax]
  674120:	c4 81 21 5e 1c ca    	vdivpd xmm3,xmm11,XMMWORD PTR [r10+r9*8]
  674126:	c4 a1 61 59 04 ca    	vmulpd xmm0,xmm3,XMMWORD PTR [rdx+r9*8]
  67412c:	c4 81 79 11 04 cb    	vmovupd XMMWORD PTR [r11+r9*8],xmm0
  674132:	c4 a1 21 5e 44 c9 10 	vdivpd xmm0,xmm11,XMMWORD PTR [rcx+r9*8+0x10]
  674139:	c4 c1 7b 10 0c 24    	vmovsd xmm1,QWORD PTR [r12]
  67413f:	c4 81 71 16 14 3c    	vmovhpd xmm2,xmm1,QWORD PTR [r12+r15*1]
  674145:	c4 81 69 58 24 ce    	vaddpd xmm4,xmm2,XMMWORD PTR [r14+r9*8]
  67414b:	c4 a1 79 59 74 ce 10 	vmulpd xmm6,xmm0,XMMWORD PTR [rsi+r9*8+0x10]
  674152:	c5 e1 59 ec          	vmulpd xmm5,xmm3,xmm4
  674156:	c4 a1 79 11 74 cf 10 	vmovupd XMMWORD PTR [rdi+r9*8+0x10],xmm6
  67415d:	c4 c1 7b 11 2c 24    	vmovsd QWORD PTR [r12],xmm5
  674163:	c4 81 79 17 2c 27    	vmovhpd QWORD PTR [r15+r12*1],xmm5
  674169:	4f 8d 24 bc          	lea    r12,[r12+r15*4]
  67416d:	c5 fb 10 38          	vmovsd xmm7,QWORD PTR [rax]
  674171:	c4 21 41 16 04 38    	vmovhpd xmm8,xmm7,QWORD PTR [rax+r15*1]
  674177:	c4 01 39 58 4c ce 10 	vaddpd xmm9,xmm8,XMMWORD PTR [r14+r9*8+0x10]
  67417e:	c4 41 79 59 d1       	vmulpd xmm10,xmm0,xmm9
  674183:	49 83 c1 04          	add    r9,0x4
  674187:	c5 7b 11 10          	vmovsd QWORD PTR [rax],xmm10
  67418b:	c4 41 79 17 14 07    	vmovhpd QWORD PTR [r15+rax*1],xmm10
  674191:	4a 8d 04 b8          	lea    rax,[rax+r15*4]
  674195:	4d 3b cd             	cmp    r9,r13
  674198:	72 86                	jb     674120 <gls_corstep_mod_mp_gls_corstep_tile_+0xc9b0>
  67419a:	c5 f9 15 f8          	vunpckhpd xmm7,xmm0,xmm0
  67419e:	4c 8b b5 d8 e6 ff ff 	mov    r14,QWORD PTR [rbp-0x1928]
  6741a5:	4c 8b bd 78 eb ff ff 	mov    r15,QWORD PTR [rbp-0x1488]
  6741ac:	4c 8b ad 50 fd ff ff 	mov    r13,QWORD PTR [rbp-0x2b0]
  6741b3:	41 8d 40 01          	lea    eax,[r8+0x1]
  6741b7:	3b 85 08 ef ff ff    	cmp    eax,DWORD PTR [rbp-0x10f8]
  6741bd:	0f 87 02 02 00 00    	ja     6743c5 <gls_corstep_mod_mp_gls_corstep_tile_+0xcc55>
  6741c3:	49 63 f8             	movsxd rdi,r8d
  6741c6:	4c 8b 95 80 e7 ff ff 	mov    r10,QWORD PTR [rbp-0x1880]
  6741cd:	4c 2b d7             	sub    r10,rdi
  6741d0:	49 83 fa 02          	cmp    r10,0x2
  6741d4:	0f 8c 6c 04 00 00    	jl     674646 <gls_corstep_mod_mp_gls_corstep_tile_+0xced6>
  6741da:	48 8b b5 d8 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x328]
  6741e1:	49 89 f4             	mov    r12,rsi
  6741e4:	4c 0f af a5 60 fd ff 	imul   r12,QWORD PTR [rbp-0x2a0]
  6741eb:	ff 
  6741ec:	48 8b 95 c8 e9 ff ff 	mov    rdx,QWORD PTR [rbp-0x1638]
  6741f3:	45 89 d1             	mov    r9d,r10d
  6741f6:	4c 8b 9d 88 e8 ff ff 	mov    r11,QWORD PTR [rbp-0x1778]
  6741fd:	41 83 e1 fe          	and    r9d,0xfffffffe
  674201:	48 8b 8d 48 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x15b8]
  674208:	48 c7 85 10 e7 ff ff 	mov    QWORD PTR [rbp-0x18f0],0x0
  67420f:	00 00 00 00 
  674213:	4a 8d 04 22          	lea    rax,[rdx+r12*1]
  674217:	49 03 c3             	add    rax,r11
  67421a:	4d 63 c9             	movsxd r9,r9d
  67421d:	48 8d 0c f9          	lea    rcx,[rcx+rdi*8]
  674221:	c5 f9 10 35 77 75 1d 	vmovupd xmm6,XMMWORD PTR [rip+0x1d7577]        # 84b7a0 <__STRLITPACK_219.115+0xa0>
  674228:	00 
  674229:	48 8d 14 f8          	lea    rdx,[rax+rdi*8]
  67422d:	48 8b 85 d8 e9 ff ff 	mov    rax,QWORD PTR [rbp-0x1628]
  674234:	49 03 c4             	add    rax,r12
  674237:	4c 03 a5 d0 e9 ff ff 	add    r12,QWORD PTR [rbp-0x1630]
  67423e:	4d 03 e3             	add    r12,r11
  674241:	49 03 c3             	add    rax,r11
  674244:	4d 8d 1c fc          	lea    r11,[r12+rdi*8]
  674248:	4c 8b a5 58 fd ff ff 	mov    r12,QWORD PTR [rbp-0x2a8]
  67424f:	4c 0f af e6          	imul   r12,rsi
  674253:	49 f7 dc             	neg    r12
  674256:	48 8d 04 f8          	lea    rax,[rax+rdi*8]
  67425a:	48 0f af bd 28 fd ff 	imul   rdi,QWORD PTR [rbp-0x2d8]
  674261:	ff 
  674262:	4c 03 a5 00 ea ff ff 	add    r12,QWORD PTR [rbp-0x1600]
  674269:	49 f7 dc             	neg    r12
  67426c:	4c 03 a5 a8 ea ff ff 	add    r12,QWORD PTR [rbp-0x1558]
  674273:	4c 03 a5 e8 e9 ff ff 	add    r12,QWORD PTR [rbp-0x1618]
  67427a:	4c 03 a5 20 ea ff ff 	add    r12,QWORD PTR [rbp-0x15e0]
  674281:	4d 03 e6             	add    r12,r14
  674284:	48 8b b5 10 e7 ff ff 	mov    rsi,QWORD PTR [rbp-0x18f0]
  67428b:	4c 03 e7             	add    r12,rdi
  67428e:	48 8b bd 28 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2d8]
  674295:	c4 c1 49 5e 04 f3    	vdivpd xmm0,xmm6,XMMWORD PTR [r11+rsi*8]
  67429b:	c4 c1 7b 10 14 24    	vmovsd xmm2,QWORD PTR [r12]
  6742a1:	c4 c1 69 16 1c 3c    	vmovhpd xmm3,xmm2,QWORD PTR [r12+rdi*1]
  6742a7:	c5 e1 58 24 f1       	vaddpd xmm4,xmm3,XMMWORD PTR [rcx+rsi*8]
  6742ac:	c5 f9 59 0c f0       	vmulpd xmm1,xmm0,XMMWORD PTR [rax+rsi*8]
  6742b1:	c5 f9 59 ec          	vmulpd xmm5,xmm0,xmm4
  6742b5:	c5 f9 11 0c f2       	vmovupd XMMWORD PTR [rdx+rsi*8],xmm1
  6742ba:	48 83 c6 02          	add    rsi,0x2
  6742be:	c4 c1 7b 11 2c 24    	vmovsd QWORD PTR [r12],xmm5
  6742c4:	c4 a1 79 17 2c 27    	vmovhpd QWORD PTR [rdi+r12*1],xmm5
  6742ca:	4d 8d 24 7c          	lea    r12,[r12+rdi*2]
  6742ce:	49 3b f1             	cmp    rsi,r9
  6742d1:	72 c2                	jb     674295 <gls_corstep_mod_mp_gls_corstep_tile_+0xcb25>
  6742d3:	c5 f9 15 f8          	vunpckhpd xmm7,xmm0,xmm0
  6742d7:	4c 8b 9d 28 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2d8]
  6742de:	4d 0f af d9          	imul   r11,r9
  6742e2:	4d 3b ca             	cmp    r9,r10
  6742e5:	0f 83 da 00 00 00    	jae    6743c5 <gls_corstep_mod_mp_gls_corstep_tile_+0xcc55>
  6742eb:	48 8b b5 d8 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x328]
  6742f2:	48 89 f2             	mov    rdx,rsi
  6742f5:	48 8b bd 58 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2a8]
  6742fc:	48 0f af fe          	imul   rdi,rsi
  674300:	48 0f af 95 60 fd ff 	imul   rdx,QWORD PTR [rbp-0x2a0]
  674307:	ff 
  674308:	4d 63 c0             	movsxd r8,r8d
  67430b:	48 f7 df             	neg    rdi
  67430e:	48 8b 8d 28 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2d8]
  674315:	49 0f af c8          	imul   rcx,r8
  674319:	48 03 bd 00 ea ff ff 	add    rdi,QWORD PTR [rbp-0x1600]
  674320:	48 f7 df             	neg    rdi
  674323:	48 03 bd a8 ea ff ff 	add    rdi,QWORD PTR [rbp-0x1558]
  67432a:	48 03 bd e8 e9 ff ff 	add    rdi,QWORD PTR [rbp-0x1618]
  674331:	48 03 bd 20 ea ff ff 	add    rdi,QWORD PTR [rbp-0x15e0]
  674338:	49 03 fe             	add    rdi,r14
  67433b:	48 03 f9             	add    rdi,rcx
  67433e:	4c 8b a5 48 ea ff ff 	mov    r12,QWORD PTR [rbp-0x15b8]
  674345:	4c 03 df             	add    r11,rdi
  674348:	48 8b 85 c8 e9 ff ff 	mov    rax,QWORD PTR [rbp-0x1638]
  67434f:	48 8b bd d8 e9 ff ff 	mov    rdi,QWORD PTR [rbp-0x1628]
  674356:	c5 fb 10 25 22 7e 1d 	vmovsd xmm4,QWORD PTR [rip+0x1d7e22]        # 84c180 <__STRLITPACK_0.112+0x70>
  67435d:	00 
  67435e:	4b 8d 34 c4          	lea    rsi,[r12+r8*8]
  674362:	48 8d 0c 10          	lea    rcx,[rax+rdx*1]
  674366:	48 8b 85 88 e8 ff ff 	mov    rax,QWORD PTR [rbp-0x1778]
  67436d:	48 03 c8             	add    rcx,rax
  674370:	4c 8d 24 17          	lea    r12,[rdi+rdx*1]
  674374:	48 03 95 d0 e9 ff ff 	add    rdx,QWORD PTR [rbp-0x1630]
  67437b:	4c 03 e0             	add    r12,rax
  67437e:	48 03 d0             	add    rdx,rax
  674381:	4a 8d 0c c1          	lea    rcx,[rcx+r8*8]
  674385:	4b 8d 3c c4          	lea    rdi,[r12+r8*8]
  674389:	4a 8d 04 c2          	lea    rax,[rdx+r8*8]
  67438d:	48 8b 95 28 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x2d8]
  674394:	c4 a1 5b 5e 3c c8    	vdivsd xmm7,xmm4,QWORD PTR [rax+r9*8]
  67439a:	c4 c1 7b 10 0b       	vmovsd xmm1,QWORD PTR [r11]
  67439f:	c4 a1 43 59 04 cf    	vmulsd xmm0,xmm7,QWORD PTR [rdi+r9*8]
  6743a5:	c4 a1 73 58 14 ce    	vaddsd xmm2,xmm1,QWORD PTR [rsi+r9*8]
  6743ab:	c5 c3 59 da          	vmulsd xmm3,xmm7,xmm2
  6743af:	c4 a1 7b 11 04 c9    	vmovsd QWORD PTR [rcx+r9*8],xmm0
  6743b5:	49 ff c1             	inc    r9
  6743b8:	c4 c1 7b 11 1b       	vmovsd QWORD PTR [r11],xmm3
  6743bd:	4c 03 da             	add    r11,rdx
  6743c0:	4d 3b ca             	cmp    r9,r10
  6743c3:	72 cf                	jb     674394 <gls_corstep_mod_mp_gls_corstep_tile_+0xcc24>
  6743c5:	4c 8b 85 88 ea ff ff 	mov    r8,QWORD PTR [rbp-0x1578]
  6743cc:	49 8d 57 fe          	lea    rdx,[r15-0x2]
  6743d0:	4c 8b 95 58 fd ff ff 	mov    r10,QWORD PTR [rbp-0x2a8]
  6743d7:	33 c9                	xor    ecx,ecx
  6743d9:	4c 0f af d2          	imul   r10,rdx
  6743dd:	48 8b bd b8 e8 ff ff 	mov    rdi,QWORD PTR [rbp-0x1748]
  6743e4:	4f 8d 0c 06          	lea    r9,[r14+r8*1]
  6743e8:	4c 8b 85 60 fd ff ff 	mov    r8,QWORD PTR [rbp-0x2a0]
  6743ef:	4d 03 ca             	add    r9,r10
  6743f2:	4c 0f af c2          	imul   r8,rdx
  6743f6:	48 8b b5 b0 e8 ff ff 	mov    rsi,QWORD PTR [rbp-0x1750]
  6743fd:	49 03 f8             	add    rdi,r8
  674400:	48 8b 85 e8 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb18]
  674407:	4c 8b 9d c0 e8 ff ff 	mov    r11,QWORD PTR [rbp-0x1740]
  67440e:	4c 03 b5 28 e9 ff ff 	add    r14,QWORD PTR [rbp-0x16d8]
  674415:	49 03 f0             	add    rsi,r8
  674418:	4d 03 d6             	add    r10,r14
  67441b:	4e 8d 24 00          	lea    r12,[rax+r8*1]
  67441f:	48 89 b5 00 f4 ff ff 	mov    QWORD PTR [rbp-0xc00],rsi
  674426:	4d 03 d8             	add    r11,r8
  674429:	4c 03 85 d8 e8 ff ff 	add    r8,QWORD PTR [rbp-0x1728]
  674430:	33 c0                	xor    eax,eax
  674432:	48 89 bd 20 f4 ff ff 	mov    QWORD PTR [rbp-0xbe0],rdi
  674439:	4c 89 85 18 f4 ff ff 	mov    QWORD PTR [rbp-0xbe8],r8
  674440:	4c 89 9d 10 f4 ff ff 	mov    QWORD PTR [rbp-0xbf0],r11
  674447:	4c 89 a5 08 f4 ff ff 	mov    QWORD PTR [rbp-0xbf8],r12
  67444e:	4c 89 95 f8 f3 ff ff 	mov    QWORD PTR [rbp-0xc08],r10
  674455:	4c 89 8d 28 f4 ff ff 	mov    QWORD PTR [rbp-0xbd8],r9
  67445c:	4c 89 bd 78 eb ff ff 	mov    QWORD PTR [rbp-0x1488],r15
  674463:	c5 fb 10 15 15 7d 1d 	vmovsd xmm2,QWORD PTR [rip+0x1d7d15]        # 84c180 <__STRLITPACK_0.112+0x70>
  67446a:	00 
  67446b:	48 8b b5 c8 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb38]
  674472:	48 8b bd 70 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xb90]
  674479:	45 33 f6             	xor    r14d,r14d
  67447c:	45 33 ed             	xor    r13d,r13d
  67447f:	45 33 ff             	xor    r15d,r15d
  674482:	48 85 d2             	test   rdx,rdx
  674485:	0f 8e c1 00 00 00    	jle    67454c <gls_corstep_mod_mp_gls_corstep_tile_+0xcddc>
  67448b:	4c 8b 95 08 f4 ff ff 	mov    r10,QWORD PTR [rbp-0xbf8]
  674492:	4c 8b 8d 18 f4 ff ff 	mov    r9,QWORD PTR [rbp-0xbe8]
  674499:	4c 8b 85 f8 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xc08]
  6744a0:	4c 8b 9d 28 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xbd8]
  6744a7:	4c 8b a5 00 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xc00]
  6744ae:	c4 c1 7b 10 4c ca 08 	vmovsd xmm1,QWORD PTR [r10+rcx*8+0x8]
  6744b5:	4d 8d 14 00          	lea    r10,[r8+rax*1]
  6744b9:	c4 c1 7b 10 44 c9 08 	vmovsd xmm0,QWORD PTR [r9+rcx*8+0x8]
  6744c0:	4d 8d 0c 03          	lea    r9,[r11+rax*1]
  6744c4:	4c 8b 9d 20 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xbe0]
  6744cb:	4d 8d 04 cc          	lea    r8,[r12+rcx*8]
  6744cf:	4c 8b a5 10 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xbf0]
  6744d6:	48 8b b5 20 f2 ff ff 	mov    rsi,QWORD PTR [rbp-0xde0]
  6744dd:	48 8b bd 10 f2 ff ff 	mov    rdi,QWORD PTR [rbp-0xdf0]
  6744e4:	4d 8d 1c cb          	lea    r11,[r11+rcx*8]
  6744e8:	4d 8d 24 cc          	lea    r12,[r12+rcx*8]
  6744ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  6744f0:	c5 fb 59 c1          	vmulsd xmm0,xmm0,xmm1
  6744f4:	49 ff c6             	inc    r14
  6744f7:	c4 81 73 59 24 0f    	vmulsd xmm4,xmm1,QWORD PTR [r15+r9*1]
  6744fd:	c4 81 7b 10 4c 05 00 	vmovsd xmm1,QWORD PTR [r13+r8*1+0x0]
  674504:	4c 03 ff             	add    r15,rdi
  674507:	c4 c1 7b 10 1a       	vmovsd xmm3,QWORD PTR [r10]
  67450c:	c5 f3 5c f8          	vsubsd xmm7,xmm1,xmm0
  674510:	c5 e3 5c ec          	vsubsd xmm5,xmm3,xmm4
  674514:	c5 eb 5e ff          	vdivsd xmm7,xmm2,xmm7
  674518:	c4 81 7b 10 4c 1d 00 	vmovsd xmm1,QWORD PTR [r13+r11*1+0x0]
  67451f:	c5 c3 59 c1          	vmulsd xmm0,xmm7,xmm1
  674523:	c5 c3 59 f5          	vmulsd xmm6,xmm7,xmm5
  674527:	c4 81 7b 11 44 25 00 	vmovsd QWORD PTR [r13+r12*1+0x0],xmm0
  67452e:	4c 03 ee             	add    r13,rsi
  674531:	c4 c1 7b 11 32       	vmovsd QWORD PTR [r10],xmm6
  674536:	4c 03 d7             	add    r10,rdi
  674539:	4c 3b f2             	cmp    r14,rdx
  67453c:	72 b2                	jb     6744f0 <gls_corstep_mod_mp_gls_corstep_tile_+0xcd80>
  67453e:	48 8b b5 c8 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb38]
  674545:	48 8b bd 70 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xb90]
  67454c:	c5 fb 10 04 06       	vmovsd xmm0,QWORD PTR [rsi+rax*1]
  674551:	c5 c3 59 0c cf       	vmulsd xmm1,xmm7,QWORD PTR [rdi+rcx*8]
  674556:	48 ff c1             	inc    rcx
  674559:	c5 fb 5c d9          	vsubsd xmm3,xmm0,xmm1
  67455d:	c5 fb 11 1c 06       	vmovsd QWORD PTR [rsi+rax*1],xmm3
  674562:	48 03 85 28 fd ff ff 	add    rax,QWORD PTR [rbp-0x2d8]
  674569:	48 3b 8d 50 fd ff ff 	cmp    rcx,QWORD PTR [rbp-0x2b0]
  674570:	0f 82 03 ff ff ff    	jb     674479 <gls_corstep_mod_mp_gls_corstep_tile_+0xcd09>
  674576:	4c 8b bd 78 eb ff ff 	mov    r15,QWORD PTR [rbp-0x1488]
  67457d:	4c 8b ad 50 fd ff ff 	mov    r13,QWORD PTR [rbp-0x2b0]
  674584:	48 63 b5 b0 f6 ff ff 	movsxd rsi,DWORD PTR [rbp-0x950]
  67458b:	e9 b3 a1 ff ff       	jmp    66e743 <gls_corstep_mod_mp_gls_corstep_tile_+0x6fd3>
  674590:	49 83 fe 08          	cmp    r14,0x8
  674594:	75 78                	jne    67460e <gls_corstep_mod_mp_gls_corstep_tile_+0xce9e>
  674596:	33 ff                	xor    edi,edi
  674598:	48 83 bd 80 eb ff ff 	cmp    QWORD PTR [rbp-0x1480],0x2
  67459f:	02 
  6745a0:	0f 8c 6b 03 00 00    	jl     674911 <gls_corstep_mod_mp_gls_corstep_tile_+0xd1a1>
  6745a6:	48 89 85 68 e8 ff ff 	mov    QWORD PTR [rbp-0x1798],rax
  6745ad:	48 89 b5 70 ec ff ff 	mov    QWORD PTR [rbp-0x1390],rsi
  6745b4:	48 8b 85 58 ec ff ff 	mov    rax,QWORD PTR [rbp-0x13a8]
  6745bb:	48 0f af 85 70 ec ff 	imul   rax,QWORD PTR [rbp-0x1390]
  6745c2:	ff 
  6745c3:	4c 8b 8d 80 eb ff ff 	mov    r9,QWORD PTR [rbp-0x1480]
  6745ca:	48 89 95 60 e8 ff ff 	mov    QWORD PTR [rbp-0x17a0],rdx
  6745d1:	48 8b 95 e8 e7 ff ff 	mov    rdx,QWORD PTR [rbp-0x1818]
  6745d8:	4c 8b ad 50 fd ff ff 	mov    r13,QWORD PTR [rbp-0x2b0]
  6745df:	4d 8d 51 ff          	lea    r10,[r9-0x1]
  6745e3:	4c 8b 85 60 fd ff ff 	mov    r8,QWORD PTR [rbp-0x2a0]
  6745ea:	48 8b b5 78 f0 ff ff 	mov    rsi,QWORD PTR [rbp-0xf88]
  6745f1:	48 03 d0             	add    rdx,rax
  6745f4:	4c 8b b5 58 fd ff ff 	mov    r14,QWORD PTR [rbp-0x2a8]
  6745fb:	48 03 85 f0 e7 ff ff 	add    rax,QWORD PTR [rbp-0x1810]
  674602:	4c 89 95 70 e7 ff ff 	mov    QWORD PTR [rbp-0x1890],r10
  674609:	e9 ab a1 ff ff       	jmp    66e7b9 <gls_corstep_mod_mp_gls_corstep_tile_+0x7049>
  67460e:	48 83 bd 80 eb ff ff 	cmp    QWORD PTR [rbp-0x1480],0x2
  674615:	02 
  674616:	0f 8c f5 02 00 00    	jl     674911 <gls_corstep_mod_mp_gls_corstep_tile_+0xd1a1>
  67461c:	48 89 85 68 e8 ff ff 	mov    QWORD PTR [rbp-0x1798],rax
  674623:	48 89 95 60 e8 ff ff 	mov    QWORD PTR [rbp-0x17a0],rdx
  67462a:	48 89 b5 70 ec ff ff 	mov    QWORD PTR [rbp-0x1390],rsi
  674631:	e9 5e a2 ff ff       	jmp    66e894 <gls_corstep_mod_mp_gls_corstep_tile_+0x7124>
  674636:	48 c7 85 48 e7 ff ff 	mov    QWORD PTR [rbp-0x18b8],0x0
  67463d:	00 00 00 00 
  674641:	e9 81 d6 ff ff       	jmp    671cc7 <gls_corstep_mod_mp_gls_corstep_tile_+0xa557>
  674646:	45 33 c9             	xor    r9d,r9d
  674649:	e9 89 fc ff ff       	jmp    6742d7 <gls_corstep_mod_mp_gls_corstep_tile_+0xcb67>
  67464e:	45 33 c0             	xor    r8d,r8d
  674651:	e9 5d fb ff ff       	jmp    6741b3 <gls_corstep_mod_mp_gls_corstep_tile_+0xca43>
  674656:	45 33 c0             	xor    r8d,r8d
  674659:	83 bd 08 ef ff ff 01 	cmp    DWORD PTR [rbp-0x10f8],0x1
  674660:	0f 82 5f fd ff ff    	jb     6743c5 <gls_corstep_mod_mp_gls_corstep_tile_+0xcc55>
  674666:	4c 8b 95 80 e7 ff ff 	mov    r10,QWORD PTR [rbp-0x1880]
  67466d:	45 33 c9             	xor    r9d,r9d
  674670:	e9 62 fc ff ff       	jmp    6742d7 <gls_corstep_mod_mp_gls_corstep_tile_+0xcb67>
  674675:	45 33 e4             	xor    r12d,r12d
  674678:	e9 98 f9 ff ff       	jmp    674015 <gls_corstep_mod_mp_gls_corstep_tile_+0xc8a5>
  67467d:	45 33 e4             	xor    r12d,r12d
  674680:	4d 85 ed             	test   r13,r13
  674683:	0f 85 e5 f4 ff ff    	jne    673b6e <gls_corstep_mod_mp_gls_corstep_tile_+0xc3fe>
  674689:	eb ea                	jmp    674675 <gls_corstep_mod_mp_gls_corstep_tile_+0xcf05>
  67468b:	45 33 e4             	xor    r12d,r12d
  67468e:	4d 85 ed             	test   r13,r13
  674691:	0f 85 d7 f4 ff ff    	jne    673b6e <gls_corstep_mod_mp_gls_corstep_tile_+0xc3fe>
  674697:	e9 3e f9 ff ff       	jmp    673fda <gls_corstep_mod_mp_gls_corstep_tile_+0xc86a>
  67469c:	33 d2                	xor    edx,edx
  67469e:	e9 f9 ea ff ff       	jmp    67319c <gls_corstep_mod_mp_gls_corstep_tile_+0xba2c>
  6746a3:	c5 f8 77             	vzeroupper 
  6746a6:	c5 fb 10 8d 78 fd ff 	vmovsd xmm1,QWORD PTR [rbp-0x288]
  6746ad:	ff 
  6746ae:	c5 f9 28 c2          	vmovapd xmm0,xmm2
  6746b2:	c5 fb 11 95 50 f0 ff 	vmovsd QWORD PTR [rbp-0xfb0],xmm2
  6746b9:	ff 
  6746ba:	e8 81 b2 e4 ff       	call   4bf940 <pow>
  6746bf:	c5 7b 10 05 b9 7a 1d 	vmovsd xmm8,QWORD PTR [rip+0x1d7ab9]        # 84c180 <__STRLITPACK_0.112+0x70>
  6746c6:	00 
  6746c7:	c5 fb 10 95 50 f0 ff 	vmovsd xmm2,QWORD PTR [rbp-0xfb0]
  6746ce:	ff 
  6746cf:	c5 fb 11 85 40 f0 ff 	vmovsd QWORD PTR [rbp-0xfc0],xmm0
  6746d6:	ff 
  6746d7:	c5 fb 10 85 60 ff ff 	vmovsd xmm0,QWORD PTR [rbp-0xa0]
  6746de:	ff 
  6746df:	c5 fb 10 8d f0 fc ff 	vmovsd xmm1,QWORD PTR [rbp-0x310]
  6746e6:	ff 
  6746e7:	c5 fb 11 95 50 f0 ff 	vmovsd QWORD PTR [rbp-0xfb0],xmm2
  6746ee:	ff 
  6746ef:	e8 4c b2 e4 ff       	call   4bf940 <pow>
  6746f4:	48 8b 95 d8 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xc28]
  6746fb:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  6746ff:	48 8b 8d 48 f0 ff ff 	mov    rcx,QWORD PTR [rbp-0xfb8]
  674706:	48 8b bd f0 f3 ff ff 	mov    rdi,QWORD PTR [rbp-0xc10]
  67470d:	c5 7b 10 1c 10       	vmovsd xmm11,QWORD PTR [rax+rdx*1]
  674712:	c5 7b 10 05 66 7a 1d 	vmovsd xmm8,QWORD PTR [rip+0x1d7a66]        # 84c180 <__STRLITPACK_0.112+0x70>
  674719:	00 
  67471a:	48 8b b5 38 f0 ff ff 	mov    rsi,QWORD PTR [rbp-0xfc8]
  674721:	c5 fb 10 8d 40 f0 ff 	vmovsd xmm1,QWORD PTR [rbp-0xfc0]
  674728:	ff 
  674729:	c5 fb 10 95 50 f0 ff 	vmovsd xmm2,QWORD PTR [rbp-0xfb0]
  674730:	ff 
  674731:	c5 7b 10 14 3e       	vmovsd xmm10,QWORD PTR [rsi+rdi*1]
  674736:	c5 f3 59 9d 98 fc ff 	vmulsd xmm3,xmm1,QWORD PTR [rbp-0x368]
  67473d:	ff 
  67473e:	c4 41 2b 5c e3       	vsubsd xmm12,xmm10,xmm11
  674743:	c5 a3 5c 24 39       	vsubsd xmm4,xmm11,QWORD PTR [rcx+rdi*1]
  674748:	c4 41 3b 5e f4       	vdivsd xmm14,xmm8,xmm12
  67474d:	c5 bb 5e ec          	vdivsd xmm5,xmm8,xmm4
  674751:	c5 63 59 e8          	vmulsd xmm13,xmm3,xmm0
  674755:	c5 93 59 f5          	vmulsd xmm6,xmm13,xmm5
  674759:	c4 41 13 59 fe       	vmulsd xmm15,xmm13,xmm14
  67475e:	c5 cb 59 fe          	vmulsd xmm7,xmm6,xmm6
  674762:	c4 41 03 59 d7       	vmulsd xmm10,xmm15,xmm15
  674767:	c5 43 59 8d 30 f0 ff 	vmulsd xmm9,xmm7,QWORD PTR [rbp-0xfd0]
  67476e:	ff 
  67476f:	c5 ab 59 9d 28 f0 ff 	vmulsd xmm3,xmm10,QWORD PTR [rbp-0xfd8]
  674776:	ff 
  674777:	c4 c1 33 58 c8       	vaddsd xmm1,xmm9,xmm8
  67477c:	c5 f3 58 e3          	vaddsd xmm4,xmm1,xmm3
  674780:	c5 fb 11 a5 30 ff ff 	vmovsd QWORD PTR [rbp-0xd0],xmm4
  674787:	ff 
  674788:	e9 da e7 ff ff       	jmp    672f67 <gls_corstep_mod_mp_gls_corstep_tile_+0xb7f7>
  67478d:	33 d2                	xor    edx,edx
  67478f:	e9 9a e2 ff ff       	jmp    672a2e <gls_corstep_mod_mp_gls_corstep_tile_+0xb2be>
  674794:	33 d2                	xor    edx,edx
  674796:	4d 85 ed             	test   r13,r13
  674799:	0f 85 32 e2 ff ff    	jne    6729d1 <gls_corstep_mod_mp_gls_corstep_tile_+0xb261>
  67479f:	eb ec                	jmp    67478d <gls_corstep_mod_mp_gls_corstep_tile_+0xd01d>
  6747a1:	48 c7 85 30 fc ff ff 	mov    QWORD PTR [rbp-0x3d0],0x0
  6747a8:	00 00 00 00 
  6747ac:	e9 33 e0 ff ff       	jmp    6727e4 <gls_corstep_mod_mp_gls_corstep_tile_+0xb074>
  6747b1:	45 33 db             	xor    r11d,r11d
  6747b4:	e9 01 de ff ff       	jmp    6725ba <gls_corstep_mod_mp_gls_corstep_tile_+0xae4a>
  6747b9:	49 83 fd 08          	cmp    r13,0x8
  6747bd:	0f 8c ab 00 00 00    	jl     67486e <gls_corstep_mod_mp_gls_corstep_tile_+0xd0fe>
  6747c3:	48 8b 95 a8 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1358]
  6747ca:	33 c0                	xor    eax,eax
  6747cc:	48 8b 8d e8 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xb18]
  6747d3:	c5 fd 57 c0          	vxorpd ymm0,ymm0,ymm0
  6747d7:	c5 fd 11 44 c1 08    	vmovupd YMMWORD PTR [rcx+rax*8+0x8],ymm0
  6747dd:	c5 fd 11 44 c1 28    	vmovupd YMMWORD PTR [rcx+rax*8+0x28],ymm0
  6747e3:	48 83 c0 08          	add    rax,0x8
  6747e7:	48 3b c2             	cmp    rax,rdx
  6747ea:	72 eb                	jb     6747d7 <gls_corstep_mod_mp_gls_corstep_tile_+0xd067>
  6747ec:	48 8b 95 a8 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1358]
  6747f3:	49 3b d5             	cmp    rdx,r13
  6747f6:	73 26                	jae    67481e <gls_corstep_mod_mp_gls_corstep_tile_+0xd0ae>
  6747f8:	48 8b 85 e8 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb18]
  6747ff:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  674803:	c5 fb 11 44 d0 08    	vmovsd QWORD PTR [rax+rdx*8+0x8],xmm0
  674809:	48 ff c2             	inc    rdx
  67480c:	49 3b d5             	cmp    rdx,r13
  67480f:	72 f2                	jb     674803 <gls_corstep_mod_mp_gls_corstep_tile_+0xd093>
  674811:	49 83 fd 08          	cmp    r13,0x8
  674815:	7c 53                	jl     67486a <gls_corstep_mod_mp_gls_corstep_tile_+0xd0fa>
  674817:	48 8b 95 a8 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1358]
  67481e:	48 89 d1             	mov    rcx,rdx
  674821:	33 c0                	xor    eax,eax
  674823:	48 8b b5 f0 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb10]
  67482a:	c5 fd 57 c0          	vxorpd ymm0,ymm0,ymm0
  67482e:	c5 fd 11 44 c6 08    	vmovupd YMMWORD PTR [rsi+rax*8+0x8],ymm0
  674834:	c5 fd 11 44 c6 28    	vmovupd YMMWORD PTR [rsi+rax*8+0x28],ymm0
  67483a:	48 83 c0 08          	add    rax,0x8
  67483e:	48 3b c1             	cmp    rax,rcx
  674841:	72 eb                	jb     67482e <gls_corstep_mod_mp_gls_corstep_tile_+0xd0be>
  674843:	49 3b d5             	cmp    rdx,r13
  674846:	0f 83 96 d8 ff ff    	jae    6720e2 <gls_corstep_mod_mp_gls_corstep_tile_+0xa972>
  67484c:	48 8b 85 f0 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb10]
  674853:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  674857:	c5 fb 11 44 d0 08    	vmovsd QWORD PTR [rax+rdx*8+0x8],xmm0
  67485d:	48 ff c2             	inc    rdx
  674860:	49 3b d5             	cmp    rdx,r13
  674863:	72 f2                	jb     674857 <gls_corstep_mod_mp_gls_corstep_tile_+0xd0e7>
  674865:	e9 78 d8 ff ff       	jmp    6720e2 <gls_corstep_mod_mp_gls_corstep_tile_+0xa972>
  67486a:	33 d2                	xor    edx,edx
  67486c:	eb d5                	jmp    674843 <gls_corstep_mod_mp_gls_corstep_tile_+0xd0d3>
  67486e:	33 d2                	xor    edx,edx
  674870:	4d 85 ed             	test   r13,r13
  674873:	75 83                	jne    6747f8 <gls_corstep_mod_mp_gls_corstep_tile_+0xd088>
  674875:	eb f3                	jmp    67486a <gls_corstep_mod_mp_gls_corstep_tile_+0xd0fa>
  674877:	45 33 e4             	xor    r12d,r12d
  67487a:	e9 ed c7 ff ff       	jmp    67106c <gls_corstep_mod_mp_gls_corstep_tile_+0x98fc>
  67487f:	4c 8b ad 50 ec ff ff 	mov    r13,QWORD PTR [rbp-0x13b0]
  674886:	45 33 e4             	xor    r12d,r12d
  674889:	4c 0f af ad 70 ec ff 	imul   r13,QWORD PTR [rbp-0x1390]
  674890:	ff 
  674891:	e9 d6 c7 ff ff       	jmp    67106c <gls_corstep_mod_mp_gls_corstep_tile_+0x98fc>
  674896:	45 33 ff             	xor    r15d,r15d
  674899:	e9 87 9f ff ff       	jmp    66e825 <gls_corstep_mod_mp_gls_corstep_tile_+0x70b5>
  67489e:	8b 85 80 fa ff ff    	mov    eax,DWORD PTR [rbp-0x580]
  6748a4:	3b 85 78 fa ff ff    	cmp    eax,DWORD PTR [rbp-0x588]
  6748aa:	7d 7c                	jge    674928 <gls_corstep_mod_mp_gls_corstep_tile_+0xd1b8>
  6748ac:	89 c1                	mov    ecx,eax
  6748ae:	4c 89 bd 78 eb ff ff 	mov    QWORD PTR [rbp-0x1488],r15
  6748b5:	48 89 b5 80 eb ff ff 	mov    QWORD PTR [rbp-0x1480],rsi
  6748bc:	c5 fb 10 05 d4 78 1d 	vmovsd xmm0,QWORD PTR [rip+0x1d78d4]        # 84c198 <__STRLITPACK_0.112+0x88>
  6748c3:	00 
  6748c4:	48 8b 85 68 e8 ff ff 	mov    rax,QWORD PTR [rbp-0x1798]
  6748cb:	48 8b 95 60 e8 ff ff 	mov    rdx,QWORD PTR [rbp-0x17a0]
  6748d2:	4c 8b 9d 58 e8 ff ff 	mov    r11,QWORD PTR [rbp-0x17a8]
  6748d9:	4c 8b ad d8 fc ff ff 	mov    r13,QWORD PTR [rbp-0x328]
  6748e0:	48 8b b5 70 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x1390]
  6748e7:	4c 8b 85 50 ec ff ff 	mov    r8,QWORD PTR [rbp-0x13b0]
  6748ee:	4c 8b b5 28 fd ff ff 	mov    r14,QWORD PTR [rbp-0x2d8]
  6748f5:	4c 8b 8d 58 ec ff ff 	mov    r9,QWORD PTR [rbp-0x13a8]
  6748fc:	4c 8b a5 78 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb88]
  674903:	4c 8b 95 90 f2 ff ff 	mov    r10,QWORD PTR [rbp-0xd70]
  67490a:	44 8b bd 78 fa ff ff 	mov    r15d,DWORD PTR [rbp-0x588]
  674911:	48 ff c6             	inc    rsi
  674914:	49 03 c0             	add    rax,r8
  674917:	49 03 d1             	add    rdx,r9
  67491a:	49 3b f3             	cmp    rsi,r11
  67491d:	0f 82 39 cf ff ff    	jb     67185c <gls_corstep_mod_mp_gls_corstep_tile_+0xa0ec>
  674923:	e9 d3 77 ff ff       	jmp    66c0fb <gls_corstep_mod_mp_gls_corstep_tile_+0x498b>
  674928:	48 89 b5 80 eb ff ff 	mov    QWORD PTR [rbp-0x1480],rsi
  67492f:	4c 89 bd 78 eb ff ff 	mov    QWORD PTR [rbp-0x1488],r15
  674936:	4c 8b 85 60 fd ff ff 	mov    r8,QWORD PTR [rbp-0x2a0]
  67493d:	48 8b b5 78 f0 ff ff 	mov    rsi,QWORD PTR [rbp-0xf88]
  674944:	4c 8b b5 58 fd ff ff 	mov    r14,QWORD PTR [rbp-0x2a8]
  67494b:	89 c1                	mov    ecx,eax
  67494d:	e9 a7 bd ff ff       	jmp    6706f9 <gls_corstep_mod_mp_gls_corstep_tile_+0x8f89>
  674952:	c5 7b 10 15 fe 7b 1d 	vmovsd xmm10,QWORD PTR [rip+0x1d7bfe]        # 84c558 <__STRLITPACK_0.112+0x448>
  674959:	00 
  67495a:	c5 7b 10 1d ee 7b 1d 	vmovsd xmm11,QWORD PTR [rip+0x1d7bee]        # 84c550 <__STRLITPACK_0.112+0x440>
  674961:	00 
  674962:	c5 79 10 0d 16 71 1d 	vmovupd xmm9,XMMWORD PTR [rip+0x1d7116]        # 84ba80 <__STRLITPACK_19.34+0xa0>
  674969:	00 
  67496a:	c5 79 10 25 fe 70 1d 	vmovupd xmm12,XMMWORD PTR [rip+0x1d70fe]        # 84ba70 <__STRLITPACK_19.34+0x90>
  674971:	00 
  674972:	c5 fb 10 0d ce 7b 1d 	vmovsd xmm1,QWORD PTR [rip+0x1d7bce]        # 84c548 <__STRLITPACK_0.112+0x438>
  674979:	00 
  67497a:	c5 fb 10 35 be 7b 1d 	vmovsd xmm6,QWORD PTR [rip+0x1d7bbe]        # 84c540 <__STRLITPACK_0.112+0x430>
  674981:	00 
  674982:	c5 f9 10 25 d6 70 1d 	vmovupd xmm4,XMMWORD PTR [rip+0x1d70d6]        # 84ba60 <__STRLITPACK_19.34+0x80>
  674989:	00 
  67498a:	c5 f9 10 2d be 70 1d 	vmovupd xmm5,XMMWORD PTR [rip+0x1d70be]        # 84ba50 <__STRLITPACK_19.34+0x70>
  674991:	00 
  674992:	c5 f9 10 15 a6 70 1d 	vmovupd xmm2,XMMWORD PTR [rip+0x1d70a6]        # 84ba40 <__STRLITPACK_19.34+0x60>
  674999:	00 
  67499a:	c5 79 10 05 4e 70 1d 	vmovupd xmm8,XMMWORD PTR [rip+0x1d704e]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  6749a1:	00 
  6749a2:	c5 fb 10 1d 5e 7b 1d 	vmovsd xmm3,QWORD PTR [rip+0x1d7b5e]        # 84c508 <__STRLITPACK_0.112+0x3f8>
  6749a9:	00 
  6749aa:	c5 fb 10 05 e6 77 1d 	vmovsd xmm0,QWORD PTR [rip+0x1d77e6]        # 84c198 <__STRLITPACK_0.112+0x88>
  6749b1:	00 
  6749b2:	4c 8b 9d 78 f0 ff ff 	mov    r11,QWORD PTR [rbp-0xf88]
  6749b9:	e9 2d a1 ff ff       	jmp    66eaeb <gls_corstep_mod_mp_gls_corstep_tile_+0x737b>
  6749be:	45 33 f6             	xor    r14d,r14d
  6749c1:	e9 b6 9b ff ff       	jmp    66e57c <gls_corstep_mod_mp_gls_corstep_tile_+0x6e0c>
  6749c6:	c4 c1 7b 59 f9       	vmulsd xmm7,xmm0,xmm9
  6749cb:	4c 8b b5 40 ec ff ff 	mov    r14,QWORD PTR [rbp-0x13c0]
  6749d2:	48 8b b5 70 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x1390]
  6749d9:	4c 8b bd 48 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13b8]
  6749e0:	4c 8b 85 50 ec ff ff 	mov    r8,QWORD PTR [rbp-0x13b0]
  6749e7:	4c 8b 8d 58 ec ff ff 	mov    r9,QWORD PTR [rbp-0x13a8]
  6749ee:	4c 8b a5 78 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb88]
  6749f5:	4c 8b 95 90 f2 ff ff 	mov    r10,QWORD PTR [rbp-0xd70]
  6749fc:	4c 8b ad 50 fd ff ff 	mov    r13,QWORD PTR [rbp-0x2b0]
  674a03:	c5 c1 57 3d b5 6e 1d 	vxorpd xmm7,xmm7,XMMWORD PTR [rip+0x1d6eb5]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  674a0a:	00 
  674a0b:	e9 78 d6 ff ff       	jmp    672088 <gls_corstep_mod_mp_gls_corstep_tile_+0xa918>
  674a10:	48 8b 85 68 e8 ff ff 	mov    rax,QWORD PTR [rbp-0x1798]
  674a17:	48 8b 95 60 e8 ff ff 	mov    rdx,QWORD PTR [rbp-0x17a0]
  674a1e:	4c 8b 9d 58 e8 ff ff 	mov    r11,QWORD PTR [rbp-0x17a8]
  674a25:	4c 8b ad d8 fc ff ff 	mov    r13,QWORD PTR [rbp-0x328]
  674a2c:	48 8b b5 70 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x1390]
  674a33:	4c 8b 85 50 ec ff ff 	mov    r8,QWORD PTR [rbp-0x13b0]
  674a3a:	4c 8b b5 28 fd ff ff 	mov    r14,QWORD PTR [rbp-0x2d8]
  674a41:	4c 8b 8d 58 ec ff ff 	mov    r9,QWORD PTR [rbp-0x13a8]
  674a48:	4c 8b a5 78 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb88]
  674a4f:	4c 8b 95 90 f2 ff ff 	mov    r10,QWORD PTR [rbp-0xd70]
  674a56:	44 8b bd 78 fa ff ff 	mov    r15d,DWORD PTR [rbp-0x588]
  674a5d:	8b 8d 80 fa ff ff    	mov    ecx,DWORD PTR [rbp-0x580]
  674a63:	e9 ec d5 ff ff       	jmp    672054 <gls_corstep_mod_mp_gls_corstep_tile_+0xa8e4>
  674a68:	45 33 f6             	xor    r14d,r14d
  674a6b:	e9 6f 3c ff ff       	jmp    6686df <gls_corstep_mod_mp_gls_corstep_tile_+0xf6f>
  674a70:	45 33 ff             	xor    r15d,r15d
  674a73:	e9 e3 4b ff ff       	jmp    66965b <gls_corstep_mod_mp_gls_corstep_tile_+0x1eeb>
  674a78:	48 8b bd 88 ef ff ff 	mov    rdi,QWORD PTR [rbp-0x1078]
  674a7f:	83 bd d8 ec ff ff 00 	cmp    DWORD PTR [rbp-0x1328],0x0
  674a86:	0f 85 6d 01 00 00    	jne    674bf9 <gls_corstep_mod_mp_gls_corstep_tile_+0xd489>
  674a8c:	48 8b 85 08 ec ff ff 	mov    rax,QWORD PTR [rbp-0x13f8]
  674a93:	48 8b 95 f0 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1310]
  674a9a:	f6 44 90 fc 01       	test   BYTE PTR [rax+rdx*4-0x4],0x1
  674a9f:	0f 85 54 01 00 00    	jne    674bf9 <gls_corstep_mod_mp_gls_corstep_tile_+0xd489>
  674aa5:	48 8b 85 c0 eb ff ff 	mov    rax,QWORD PTR [rbp-0x1440]
  674aac:	48 8b 95 c8 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x1438]
  674ab3:	48 8b b4 10 a8 f8 ff 	mov    rsi,QWORD PTR [rax+rdx*1-0x758]
  674aba:	ff 
  674abb:	48 f7 de             	neg    rsi
  674abe:	48 03 b5 c8 ec ff ff 	add    rsi,QWORD PTR [rbp-0x1338]
  674ac5:	48 0f af b4 10 a0 f8 	imul   rsi,QWORD PTR [rax+rdx*1-0x760]
  674acc:	ff ff 
  674ace:	48 8b 8c 10 68 f8 ff 	mov    rcx,QWORD PTR [rax+rdx*1-0x798]
  674ad5:	ff 
  674ad6:	f6 04 31 01          	test   BYTE PTR [rcx+rsi*1],0x1
  674ada:	0f 84 19 01 00 00    	je     674bf9 <gls_corstep_mod_mp_gls_corstep_tile_+0xd489>
  674ae0:	8b 85 b8 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1348]
  674ae6:	3b 85 c0 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x1340]
  674aec:	0f 8c e0 00 00 00    	jl     674bd2 <gls_corstep_mod_mp_gls_corstep_tile_+0xd462>
  674af2:	45 33 ed             	xor    r13d,r13d
  674af5:	ba 01 00 00 00       	mov    edx,0x1
  674afa:	33 c0                	xor    eax,eax
  674afc:	83 bd 00 ea ff ff 00 	cmp    DWORD PTR [rbp-0x1600],0x0
  674b03:	74 6e                	je     674b73 <gls_corstep_mod_mp_gls_corstep_tile_+0xd403>
  674b05:	48 8b 95 f8 e9 ff ff 	mov    rdx,QWORD PTR [rbp-0x1608]
  674b0c:	48 8b 8d 80 ed ff ff 	mov    rcx,QWORD PTR [rbp-0x1280]
  674b13:	48 8b b5 28 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x13d8]
  674b1a:	4c 8b 85 50 ed ff ff 	mov    r8,QWORD PTR [rbp-0x12b0]
  674b21:	4c 8b 8d 58 ed ff ff 	mov    r9,QWORD PTR [rbp-0x12a8]
  674b28:	4c 8b 95 28 ea ff ff 	mov    r10,QWORD PTR [rbp-0x15d8]
  674b2f:	4c 8b 9d e0 e9 ff ff 	mov    r11,QWORD PTR [rbp-0x1620]
  674b36:	4c 8b a5 f0 e0 ff ff 	mov    r12,QWORD PTR [rbp-0x1f10]
  674b3d:	4c 8b 34 30          	mov    r14,QWORD PTR [rax+rsi*1]
  674b41:	49 ff c5             	inc    r13
  674b44:	4c 8b 3c 08          	mov    r15,QWORD PTR [rax+rcx*1]
  674b48:	4e 89 74 00 f8       	mov    QWORD PTR [rax+r8*1-0x8],r14
  674b4d:	4e 89 7c 08 f8       	mov    QWORD PTR [rax+r9*1-0x8],r15
  674b52:	4e 8b 74 10 08       	mov    r14,QWORD PTR [rax+r10*1+0x8]
  674b57:	4e 8b 7c 18 08       	mov    r15,QWORD PTR [rax+r11*1+0x8]
  674b5c:	4e 89 34 10          	mov    QWORD PTR [rax+r10*1],r14
  674b60:	4e 89 3c 18          	mov    QWORD PTR [rax+r11*1],r15
  674b64:	4a 8d 44 20 10       	lea    rax,[rax+r12*1+0x10]
  674b69:	4c 3b ea             	cmp    r13,rdx
  674b6c:	72 cf                	jb     674b3d <gls_corstep_mod_mp_gls_corstep_tile_+0xd3cd>
  674b6e:	43 8d 54 2d 01       	lea    edx,[r13+r13*1+0x1]
  674b73:	8d 42 ff             	lea    eax,[rdx-0x1]
  674b76:	3b 85 08 ea ff ff    	cmp    eax,DWORD PTR [rbp-0x15f8]
  674b7c:	73 2d                	jae    674bab <gls_corstep_mod_mp_gls_corstep_tile_+0xd43b>
  674b7e:	48 63 d2             	movsxd rdx,edx
  674b81:	48 0f af 95 d0 ee ff 	imul   rdx,QWORD PTR [rbp-0x1130]
  674b88:	ff 
  674b89:	48 8b 8d 20 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x15e0]
  674b90:	4c 8b 85 d8 e9 ff ff 	mov    r8,QWORD PTR [rbp-0x1628]
  674b97:	48 8b 44 0a f8       	mov    rax,QWORD PTR [rdx+rcx*1-0x8]
  674b9c:	49 8b 74 10 f8       	mov    rsi,QWORD PTR [r8+rdx*1-0x8]
  674ba1:	48 89 44 0a f0       	mov    QWORD PTR [rdx+rcx*1-0x10],rax
  674ba6:	49 89 74 10 f0       	mov    QWORD PTR [r8+rdx*1-0x10],rsi
  674bab:	83 bd 18 ec ff ff 00 	cmp    DWORD PTR [rbp-0x13e8],0x0
  674bb2:	0f 85 73 01 00 00    	jne    674d2b <gls_corstep_mod_mp_gls_corstep_tile_+0xd5bb>
  674bb8:	48 8b 85 08 ec ff ff 	mov    rax,QWORD PTR [rbp-0x13f8]
  674bbf:	48 8b 95 f0 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1310]
  674bc6:	f6 44 90 fc 01       	test   BYTE PTR [rax+rdx*4-0x4],0x1
  674bcb:	74 52                	je     674c1f <gls_corstep_mod_mp_gls_corstep_tile_+0xd4af>
  674bcd:	e9 59 01 00 00       	jmp    674d2b <gls_corstep_mod_mp_gls_corstep_tile_+0xd5bb>
  674bd2:	83 bd 18 ec ff ff 00 	cmp    DWORD PTR [rbp-0x13e8],0x0
  674bd9:	0f 85 f5 07 00 00    	jne    6753d4 <gls_corstep_mod_mp_gls_corstep_tile_+0xdc64>
  674bdf:	48 8b 85 08 ec ff ff 	mov    rax,QWORD PTR [rbp-0x13f8]
  674be6:	48 8b 95 f0 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1310]
  674bed:	f6 44 90 fc 01       	test   BYTE PTR [rax+rdx*4-0x4],0x1
  674bf2:	74 2b                	je     674c1f <gls_corstep_mod_mp_gls_corstep_tile_+0xd4af>
  674bf4:	e9 db 07 00 00       	jmp    6753d4 <gls_corstep_mod_mp_gls_corstep_tile_+0xdc64>
  674bf9:	83 bd 18 ec ff ff 00 	cmp    DWORD PTR [rbp-0x13e8],0x0
  674c00:	0f 85 13 01 00 00    	jne    674d19 <gls_corstep_mod_mp_gls_corstep_tile_+0xd5a9>
  674c06:	48 8b 85 08 ec ff ff 	mov    rax,QWORD PTR [rbp-0x13f8]
  674c0d:	48 8b 95 f0 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1310]
  674c14:	f6 44 90 fc 01       	test   BYTE PTR [rax+rdx*4-0x4],0x1
  674c19:	0f 85 fa 00 00 00    	jne    674d19 <gls_corstep_mod_mp_gls_corstep_tile_+0xd5a9>
  674c1f:	48 8b 85 c0 eb ff ff 	mov    rax,QWORD PTR [rbp-0x1440]
  674c26:	48 8b 95 c8 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x1438]
  674c2d:	48 8b b4 10 60 f8 ff 	mov    rsi,QWORD PTR [rax+rdx*1-0x7a0]
  674c34:	ff 
  674c35:	48 f7 de             	neg    rsi
  674c38:	48 03 b5 c8 ec ff ff 	add    rsi,QWORD PTR [rbp-0x1338]
  674c3f:	48 0f af b4 10 58 f8 	imul   rsi,QWORD PTR [rax+rdx*1-0x7a8]
  674c46:	ff ff 
  674c48:	48 8b 8c 10 20 f8 ff 	mov    rcx,QWORD PTR [rax+rdx*1-0x7e0]
  674c4f:	ff 
  674c50:	f6 04 31 01          	test   BYTE PTR [rcx+rsi*1],0x1
  674c54:	0f 84 bf 00 00 00    	je     674d19 <gls_corstep_mod_mp_gls_corstep_tile_+0xd5a9>
  674c5a:	8b 85 b8 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1348]
  674c60:	3b 85 c0 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x1340]
  674c66:	0f 8c 68 07 00 00    	jl     6753d4 <gls_corstep_mod_mp_gls_corstep_tile_+0xdc64>
  674c6c:	33 d2                	xor    edx,edx
  674c6e:	b9 01 00 00 00       	mov    ecx,0x1
  674c73:	33 c0                	xor    eax,eax
  674c75:	83 bd 00 ea ff ff 00 	cmp    DWORD PTR [rbp-0x1600],0x0
  674c7c:	74 63                	je     674ce1 <gls_corstep_mod_mp_gls_corstep_tile_+0xd571>
  674c7e:	4c 8b 95 f8 e9 ff ff 	mov    r10,QWORD PTR [rbp-0x1608]
  674c85:	4c 8b 9d c8 e2 ff ff 	mov    r11,QWORD PTR [rbp-0x1d38]
  674c8c:	4c 8b a5 b0 e2 ff ff 	mov    r12,QWORD PTR [rbp-0x1d50]
  674c93:	4c 8b ad c0 e2 ff ff 	mov    r13,QWORD PTR [rbp-0x1d40]
  674c9a:	4c 8b b5 b8 e2 ff ff 	mov    r14,QWORD PTR [rbp-0x1d48]
  674ca1:	4c 8b bd f0 e0 ff ff 	mov    r15,QWORD PTR [rbp-0x1f10]
  674ca8:	48 ff c2             	inc    rdx
  674cab:	4a 8b 4c 18 08       	mov    rcx,QWORD PTR [rax+r11*1+0x8]
  674cb0:	4a 8b 74 20 08       	mov    rsi,QWORD PTR [rax+r12*1+0x8]
  674cb5:	4e 8b 44 28 10       	mov    r8,QWORD PTR [rax+r13*1+0x10]
  674cba:	4e 8b 4c 30 10       	mov    r9,QWORD PTR [rax+r14*1+0x10]
  674cbf:	4a 89 4c 18 10       	mov    QWORD PTR [rax+r11*1+0x10],rcx
  674cc4:	4a 89 74 20 10       	mov    QWORD PTR [rax+r12*1+0x10],rsi
  674cc9:	4e 89 44 28 18       	mov    QWORD PTR [rax+r13*1+0x18],r8
  674cce:	4e 89 4c 30 18       	mov    QWORD PTR [rax+r14*1+0x18],r9
  674cd3:	4a 8d 44 38 10       	lea    rax,[rax+r15*1+0x10]
  674cd8:	49 3b d2             	cmp    rdx,r10
  674cdb:	72 cb                	jb     674ca8 <gls_corstep_mod_mp_gls_corstep_tile_+0xd538>
  674cdd:	8d 4c 12 01          	lea    ecx,[rdx+rdx*1+0x1]
  674ce1:	8d 41 ff             	lea    eax,[rcx-0x1]
  674ce4:	3b 85 08 ea ff ff    	cmp    eax,DWORD PTR [rbp-0x15f8]
  674cea:	73 3f                	jae    674d2b <gls_corstep_mod_mp_gls_corstep_tile_+0xd5bb>
  674cec:	48 63 c9             	movsxd rcx,ecx
  674cef:	48 0f af 8d d0 ee ff 	imul   rcx,QWORD PTR [rbp-0x1130]
  674cf6:	ff 
  674cf7:	48 8b 95 18 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x15e8]
  674cfe:	4c 8b 85 f8 e0 ff ff 	mov    r8,QWORD PTR [rbp-0x1f08]
  674d05:	48 8b 04 11          	mov    rax,QWORD PTR [rcx+rdx*1]
  674d09:	49 8b 34 08          	mov    rsi,QWORD PTR [r8+rcx*1]
  674d0d:	48 89 44 11 08       	mov    QWORD PTR [rcx+rdx*1+0x8],rax
  674d12:	49 89 74 08 08       	mov    QWORD PTR [r8+rcx*1+0x8],rsi
  674d17:	eb 12                	jmp    674d2b <gls_corstep_mod_mp_gls_corstep_tile_+0xd5bb>
  674d19:	8b 85 b8 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1348]
  674d1f:	3b 85 c0 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x1340]
  674d25:	0f 8c a9 06 00 00    	jl     6753d4 <gls_corstep_mod_mp_gls_corstep_tile_+0xdc64>
  674d2b:	45 33 c9             	xor    r9d,r9d
  674d2e:	48 8b 95 28 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x13d8]
  674d35:	45 33 c0             	xor    r8d,r8d
  674d38:	48 8b 8d 50 ed ff ff 	mov    rcx,QWORD PTR [rbp-0x12b0]
  674d3f:	48 8b b5 a0 ee ff ff 	mov    rsi,QWORD PTR [rbp-0x1160]
  674d46:	8b 85 08 ef ff ff    	mov    eax,DWORD PTR [rbp-0x10f8]
  674d4c:	3b 85 00 ef ff ff    	cmp    eax,DWORD PTR [rbp-0x1100]
  674d52:	0f 8c e9 00 00 00    	jl     674e41 <gls_corstep_mod_mp_gls_corstep_tile_+0xd6d1>
  674d58:	48 83 fe 04          	cmp    rsi,0x4
  674d5c:	0f 8c d7 2a 00 00    	jl     677839 <gls_corstep_mod_mp_gls_corstep_tile_+0x100c9>
  674d62:	4c 8b ad 58 ed ff ff 	mov    r13,QWORD PTR [rbp-0x12a8]
  674d69:	45 33 ff             	xor    r15d,r15d
  674d6c:	4c 8b a5 10 ee ff ff 	mov    r12,QWORD PTR [rbp-0x11f0]
  674d73:	4c 8b 95 18 ee ff ff 	mov    r10,QWORD PTR [rbp-0x11e8]
  674d7a:	48 8b bd 80 ed ff ff 	mov    rdi,QWORD PTR [rbp-0x1280]
  674d81:	4f 8d 74 05 00       	lea    r14,[r13+r8*1+0x0]
  674d86:	48 8b 85 b8 ed ff ff 	mov    rax,QWORD PTR [rbp-0x1248]
  674d8d:	4e 8d 2c 01          	lea    r13,[rcx+r8*1]
  674d91:	48 89 c6             	mov    rsi,rax
  674d94:	4d 03 e0             	add    r12,r8
  674d97:	4f 8d 1c 02          	lea    r11,[r10+r8*1]
  674d9b:	4e 8d 14 02          	lea    r10,[rdx+r8*1]
  674d9f:	49 03 f8             	add    rdi,r8
  674da2:	c4 81 7d 10 44 fd 00 	vmovupd ymm0,YMMWORD PTR [r13+r15*8+0x0]
  674da9:	c4 81 7d 10 14 fe    	vmovupd ymm2,YMMWORD PTR [r14+r15*8]
  674daf:	c4 81 7d 5c 4c fa f8 	vsubpd ymm1,ymm0,YMMWORD PTR [r10+r15*8-0x8]
  674db6:	c4 a1 6d 5c 5c ff f8 	vsubpd ymm3,ymm2,YMMWORD PTR [rdi+r15*8-0x8]
  674dbd:	c4 81 7d 11 4c fc f8 	vmovupd YMMWORD PTR [r12+r15*8-0x8],ymm1
  674dc4:	c4 81 7d 11 5c fb f8 	vmovupd YMMWORD PTR [r11+r15*8-0x8],ymm3
  674dcb:	49 83 c7 04          	add    r15,0x4
  674dcf:	4c 3b fe             	cmp    r15,rsi
  674dd2:	72 ce                	jb     674da2 <gls_corstep_mod_mp_gls_corstep_tile_+0xd632>
  674dd4:	48 8b b5 a0 ee ff ff 	mov    rsi,QWORD PTR [rbp-0x1160]
  674ddb:	48 3b c6             	cmp    rax,rsi
  674dde:	73 61                	jae    674e41 <gls_corstep_mod_mp_gls_corstep_tile_+0xd6d1>
  674de0:	4c 8b 95 58 ed ff ff 	mov    r10,QWORD PTR [rbp-0x12a8]
  674de7:	4e 8d 1c 01          	lea    r11,[rcx+r8*1]
  674deb:	48 8b bd 10 ee ff ff 	mov    rdi,QWORD PTR [rbp-0x11f0]
  674df2:	4c 8b ad 18 ee ff ff 	mov    r13,QWORD PTR [rbp-0x11e8]
  674df9:	4c 8b a5 80 ed ff ff 	mov    r12,QWORD PTR [rbp-0x1280]
  674e00:	4d 03 d0             	add    r10,r8
  674e03:	49 03 f8             	add    rdi,r8
  674e06:	4f 8d 74 05 00       	lea    r14,[r13+r8*1+0x0]
  674e0b:	4e 8d 2c 02          	lea    r13,[rdx+r8*1]
  674e0f:	4d 03 e0             	add    r12,r8
  674e12:	c4 c1 7b 10 04 c3    	vmovsd xmm0,QWORD PTR [r11+rax*8]
  674e18:	c4 c1 7b 10 14 c2    	vmovsd xmm2,QWORD PTR [r10+rax*8]
  674e1e:	c4 c1 7b 5c 4c c5 f8 	vsubsd xmm1,xmm0,QWORD PTR [r13+rax*8-0x8]
  674e25:	c4 c1 6b 5c 5c c4 f8 	vsubsd xmm3,xmm2,QWORD PTR [r12+rax*8-0x8]
  674e2c:	c5 fb 11 4c c7 f8    	vmovsd QWORD PTR [rdi+rax*8-0x8],xmm1
  674e32:	c4 c1 7b 11 5c c6 f8 	vmovsd QWORD PTR [r14+rax*8-0x8],xmm3
  674e39:	48 ff c0             	inc    rax
  674e3c:	48 3b c6             	cmp    rax,rsi
  674e3f:	72 d1                	jb     674e12 <gls_corstep_mod_mp_gls_corstep_tile_+0xd6a2>
  674e41:	49 ff c1             	inc    r9
  674e44:	4c 03 85 d0 ee ff ff 	add    r8,QWORD PTR [rbp-0x1130]
  674e4b:	4c 3b 8d e0 ee ff ff 	cmp    r9,QWORD PTR [rbp-0x1120]
  674e52:	0f 82 ee fe ff ff    	jb     674d46 <gls_corstep_mod_mp_gls_corstep_tile_+0xd5d6>
  674e58:	4c 8b a5 38 ef ff ff 	mov    r12,QWORD PTR [rbp-0x10c8]
  674e5f:	45 33 db             	xor    r11d,r11d
  674e62:	48 8b 85 d8 ee ff ff 	mov    rax,QWORD PTR [rbp-0x1128]
  674e69:	33 f6                	xor    esi,esi
  674e6b:	4c 8b ad 30 ef ff ff 	mov    r13,QWORD PTR [rbp-0x10d0]
  674e72:	33 c9                	xor    ecx,ecx
  674e74:	4c 8b 8d 48 ec ff ff 	mov    r9,QWORD PTR [rbp-0x13b8]
  674e7b:	4c 0f af e0          	imul   r12,rax
  674e7f:	4c 0f af e8          	imul   r13,rax
  674e83:	4c 0f af c8          	imul   r9,rax
  674e87:	4c 8b 95 30 ee ff ff 	mov    r10,QWORD PTR [rbp-0x11d0]
  674e8e:	4c 8b 85 50 ee ff ff 	mov    r8,QWORD PTR [rbp-0x11b0]
  674e95:	48 8b 95 40 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x13c0]
  674e9c:	4d 03 d4             	add    r10,r12
  674e9f:	4c 03 a5 68 ec ff ff 	add    r12,QWORD PTR [rbp-0x1398]
  674ea6:	4d 03 c5             	add    r8,r13
  674ea9:	4c 03 ad 70 ec ff ff 	add    r13,QWORD PTR [rbp-0x1390]
  674eb0:	4e 8d 34 0a          	lea    r14,[rdx+r9*1]
  674eb4:	4c 03 8d 50 ec ff ff 	add    r9,QWORD PTR [rbp-0x13b0]
  674ebb:	33 d2                	xor    edx,edx
  674ebd:	4c 89 ad 98 e5 ff ff 	mov    QWORD PTR [rbp-0x1a68],r13
  674ec4:	33 c0                	xor    eax,eax
  674ec6:	4c 89 a5 a0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a60],r12
  674ecd:	4c 89 8d a8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a58],r9
  674ed4:	4c 89 b5 b0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a50],r14
  674edb:	4c 89 85 b8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a48],r8
  674ee2:	4c 89 95 c0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a40],r10
  674ee9:	4c 89 9d e0 e6 ff ff 	mov    QWORD PTR [rbp-0x1920],r11
  674ef0:	8b bd 08 ef ff ff    	mov    edi,DWORD PTR [rbp-0x10f8]
  674ef6:	3b bd c8 ee ff ff    	cmp    edi,DWORD PTR [rbp-0x1138]
  674efc:	0f 8c 91 04 00 00    	jl     675393 <gls_corstep_mod_mp_gls_corstep_tile_+0xdc23>
  674f02:	48 83 bd c8 ef ff ff 	cmp    QWORD PTR [rbp-0x1038],0x4
  674f09:	04 
  674f0a:	0f 8c 19 29 00 00    	jl     677829 <gls_corstep_mod_mp_gls_corstep_tile_+0x100b9>
  674f10:	48 8b bd c0 e5 ff ff 	mov    rdi,QWORD PTR [rbp-0x1a40]
  674f17:	4c 8b 9d b0 ef ff ff 	mov    r11,QWORD PTR [rbp-0x1050]
  674f1e:	4c 8b bd 88 ed ff ff 	mov    r15,QWORD PTR [rbp-0x1278]
  674f25:	4c 8b b5 a8 e5 ff ff 	mov    r14,QWORD PTR [rbp-0x1a58]
  674f2c:	4c 8d 2c 17          	lea    r13,[rdi+rdx*1]
  674f30:	48 8b bd a0 e5 ff ff 	mov    rdi,QWORD PTR [rbp-0x1a60]
  674f37:	4c 89 ad f8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a08],r13
  674f3e:	4c 03 fe             	add    r15,rsi
  674f41:	4c 89 9d d8 e6 ff ff 	mov    QWORD PTR [rbp-0x1928],r11
  674f48:	45 33 db             	xor    r11d,r11d
  674f4b:	4c 8b 95 38 ed ff ff 	mov    r10,QWORD PTR [rbp-0x12c8]
  674f52:	4c 8d 2c 17          	lea    r13,[rdi+rdx*1]
  674f56:	48 8b bd b8 e5 ff ff 	mov    rdi,QWORD PTR [rbp-0x1a48]
  674f5d:	4c 03 f1             	add    r14,rcx
  674f60:	4c 89 ad b8 e9 ff ff 	mov    QWORD PTR [rbp-0x1648],r13
  674f67:	4c 8b 8d 10 ee ff ff 	mov    r9,QWORD PTR [rbp-0x11f0]
  674f6e:	4c 03 d6             	add    r10,rsi
  674f71:	4c 8b 85 18 ee ff ff 	mov    r8,QWORD PTR [rbp-0x11e8]
  674f78:	4c 8d 2c 07          	lea    r13,[rdi+rax*1]
  674f7c:	48 8b bd 98 e5 ff ff 	mov    rdi,QWORD PTR [rbp-0x1a68]
  674f83:	4c 8b a5 b0 e5 ff ff 	mov    r12,QWORD PTR [rbp-0x1a50]
  674f8a:	4c 03 ce             	add    r9,rsi
  674f8d:	4c 89 ad e0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a20],r13
  674f94:	4c 03 c6             	add    r8,rsi
  674f97:	48 89 85 60 e6 ff ff 	mov    QWORD PTR [rbp-0x19a0],rax
  674f9e:	4c 8d 2c 07          	lea    r13,[rdi+rax*1]
  674fa2:	4c 89 ad d0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a30],r13
  674fa9:	45 33 ed             	xor    r13d,r13d
  674fac:	33 ff                	xor    edi,edi
  674fae:	4c 03 e1             	add    r12,rcx
  674fb1:	48 89 95 68 e6 ff ff 	mov    QWORD PTR [rbp-0x1998],rdx
  674fb8:	48 89 8d 70 e6 ff ff 	mov    QWORD PTR [rbp-0x1990],rcx
  674fbf:	48 89 b5 78 e6 ff ff 	mov    QWORD PTR [rbp-0x1988],rsi
  674fc6:	c5 dd 76 e4          	vpcmpeqd ymm4,ymm4,ymm4
  674fca:	4c 89 b5 a8 e9 ff ff 	mov    QWORD PTR [rbp-0x1658],r14
  674fd1:	4c 89 bd b0 e9 ff ff 	mov    QWORD PTR [rbp-0x1650],r15
  674fd8:	48 89 f8             	mov    rax,rdi
  674fdb:	48 8b 95 d0 e5 ff ff 	mov    rdx,QWORD PTR [rbp-0x1a30]
  674fe2:	48 8b 8d e0 e5 ff ff 	mov    rcx,QWORD PTR [rbp-0x1a20]
  674fe9:	48 8b b5 f8 e5 ff ff 	mov    rsi,QWORD PTR [rbp-0x1a08]
  674ff0:	4c 8b b5 b8 ef ff ff 	mov    r14,QWORD PTR [rbp-0x1048]
  674ff7:	4f 8d 3c 2c          	lea    r15,[r12+r13*1]
  674ffb:	c4 c1 7b 10 2f       	vmovsd xmm5,QWORD PTR [r15]
  675000:	c4 01 51 16 2c 37    	vmovhpd xmm13,xmm5,QWORD PTR [r15+r14*1]
  675006:	4f 8d 3c 77          	lea    r15,[r15+r14*2]
  67500a:	c4 c1 7b 10 37       	vmovsd xmm6,QWORD PTR [r15]
  67500f:	c4 01 49 16 34 37    	vmovhpd xmm14,xmm6,QWORD PTR [r15+r14*1]
  675015:	4c 8b bd a8 e9 ff ff 	mov    r15,QWORD PTR [rbp-0x1658]
  67501c:	c4 c3 15 18 c6 01    	vinsertf128 ymm0,ymm13,xmm14,0x1
  675022:	4d 03 fd             	add    r15,r13
  675025:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  67502a:	4f 8d 6c b5 00       	lea    r13,[r13+r14*4+0x0]
  67502f:	c4 81 01 16 0c 37    	vmovhpd xmm1,xmm15,QWORD PTR [r15+r14*1]
  675035:	4f 8d 3c 77          	lea    r15,[r15+r14*2]
  675039:	c4 c1 7b 10 1f       	vmovsd xmm3,QWORD PTR [r15]
  67503e:	c4 81 61 16 14 37    	vmovhpd xmm2,xmm3,QWORD PTR [r15+r14*1]
  675044:	4c 8b b5 b8 e9 ff ff 	mov    r14,QWORD PTR [rbp-0x1648]
  67504b:	4c 8b bd f8 ef ff ff 	mov    r15,QWORD PTR [rbp-0x1008]
  675052:	4c 03 f7             	add    r14,rdi
  675055:	c4 e3 75 18 ea 01    	vinsertf128 ymm5,ymm1,xmm2,0x1
  67505b:	c5 fd 58 f5          	vaddpd ymm6,ymm0,ymm5
  67505f:	c5 ad 59 c6          	vmulpd ymm0,ymm10,ymm6
  675063:	c4 c1 7d c2 d4 0e    	vcmpgtpd ymm2,ymm0,ymm12
  675069:	c5 6d 57 fc          	vxorpd ymm15,ymm2,ymm4
  67506d:	c4 02 05 2d 2c d9    	vmaskmovpd ymm13,ymm15,YMMWORD PTR [r9+r11*8]
  675073:	c4 02 6d 2d 74 d9 f8 	vmaskmovpd ymm14,ymm2,YMMWORD PTR [r9+r11*8-0x8]
  67507a:	c4 c3 15 4b ee 20    	vblendvpd ymm5,ymm13,ymm14,ymm2
  675080:	c4 41 7b 10 2e       	vmovsd xmm13,QWORD PTR [r14]
  675085:	c4 82 05 2d 1c d8    	vmaskmovpd ymm3,ymm15,YMMWORD PTR [r8+r11*8]
  67508b:	c4 01 11 16 3c 3e    	vmovhpd xmm15,xmm13,QWORD PTR [r14+r15*1]
  675091:	4f 8d 34 7e          	lea    r14,[r14+r15*2]
  675095:	c4 41 7b 10 36       	vmovsd xmm14,QWORD PTR [r14]
  67509a:	c4 82 6d 2d 4c d8 f8 	vmaskmovpd ymm1,ymm2,YMMWORD PTR [r8+r11*8-0x8]
  6750a1:	c4 e3 65 4b f1 20    	vblendvpd ymm6,ymm3,ymm1,ymm2
  6750a7:	c4 c1 7d 59 da       	vmulpd ymm3,ymm0,ymm10
  6750ac:	c4 81 09 16 04 3e    	vmovhpd xmm0,xmm14,QWORD PTR [r14+r15*1]
  6750b2:	c4 c1 55 59 d0       	vmulpd ymm2,ymm5,ymm8
  6750b7:	c4 c1 4d 59 c8       	vmulpd ymm1,ymm6,ymm8
  6750bc:	4c 8d 34 3e          	lea    r14,[rsi+rdi*1]
  6750c0:	c4 c1 7b 10 2e       	vmovsd xmm5,QWORD PTR [r14]
  6750c5:	4a 8d 3c bf          	lea    rdi,[rdi+r15*4]
  6750c9:	c4 01 51 16 2c 3e    	vmovhpd xmm13,xmm5,QWORD PTR [r14+r15*1]
  6750cf:	4f 8d 34 7e          	lea    r14,[r14+r15*2]
  6750d3:	c4 c1 7b 10 36       	vmovsd xmm6,QWORD PTR [r14]
  6750d8:	c4 01 49 16 34 3e    	vmovhpd xmm14,xmm6,QWORD PTR [r14+r15*1]
  6750de:	4c 8d 3c 02          	lea    r15,[rdx+rax*1]
  6750e2:	4c 8b b5 b0 e9 ff ff 	mov    r14,QWORD PTR [rbp-0x1650]
  6750e9:	c4 e3 05 18 c0 01    	vinsertf128 ymm0,ymm15,xmm0,0x1
  6750ef:	c4 c3 15 18 ee 01    	vinsertf128 ymm5,ymm13,xmm14,0x1
  6750f5:	c5 fd 58 c5          	vaddpd ymm0,ymm0,ymm5
  6750f9:	c5 fd 5c d2          	vsubpd ymm2,ymm0,ymm2
  6750fd:	c5 e5 59 c2          	vmulpd ymm0,ymm3,ymm2
  675101:	c4 c1 7b 10 17       	vmovsd xmm2,QWORD PTR [r15]
  675106:	c4 81 7d 11 04 de    	vmovupd YMMWORD PTR [r14+r11*8],ymm0
  67510c:	4c 8b b5 f0 ef ff ff 	mov    r14,QWORD PTR [rbp-0x1010]
  675113:	c4 81 69 16 34 37    	vmovhpd xmm6,xmm2,QWORD PTR [r15+r14*1]
  675119:	4f 8d 3c 77          	lea    r15,[r15+r14*2]
  67511d:	c4 c1 7b 10 2f       	vmovsd xmm5,QWORD PTR [r15]
  675122:	c4 01 51 16 2c 37    	vmovhpd xmm13,xmm5,QWORD PTR [r15+r14*1]
  675128:	4c 8d 3c 01          	lea    r15,[rcx+rax*1]
  67512c:	c4 41 7b 10 37       	vmovsd xmm14,QWORD PTR [r15]
  675131:	4a 8d 04 b0          	lea    rax,[rax+r14*4]
  675135:	c4 01 09 16 34 37    	vmovhpd xmm14,xmm14,QWORD PTR [r15+r14*1]
  67513b:	4f 8d 3c 77          	lea    r15,[r15+r14*2]
  67513f:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  675144:	66 90                	xchg   ax,ax
  675146:	c4 01 01 16 3c 37    	vmovhpd xmm15,xmm15,QWORD PTR [r15+r14*1]
  67514c:	c4 c3 4d 18 c5 01    	vinsertf128 ymm0,ymm6,xmm13,0x1
  675152:	c4 c3 0d 18 d7 01    	vinsertf128 ymm2,ymm14,xmm15,0x1
  675158:	c5 fd 58 ea          	vaddpd ymm5,ymm0,ymm2
  67515c:	c5 d5 5c c9          	vsubpd ymm1,ymm5,ymm1
  675160:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  675164:	c4 81 7d 11 1c da    	vmovupd YMMWORD PTR [r10+r11*8],ymm3
  67516a:	49 83 c3 04          	add    r11,0x4
  67516e:	4c 3b 9d b0 ef ff ff 	cmp    r11,QWORD PTR [rbp-0x1050]
  675175:	0f 82 75 fe ff ff    	jb     674ff0 <gls_corstep_mod_mp_gls_corstep_tile_+0xd880>
  67517b:	48 8b 85 60 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x19a0]
  675182:	48 8b 95 68 e6 ff ff 	mov    rdx,QWORD PTR [rbp-0x1998]
  675189:	48 8b 8d 70 e6 ff ff 	mov    rcx,QWORD PTR [rbp-0x1990]
  675190:	48 8b b5 78 e6 ff ff 	mov    rsi,QWORD PTR [rbp-0x1988]
  675197:	48 8b bd d8 e6 ff ff 	mov    rdi,QWORD PTR [rbp-0x1928]
  67519e:	4c 8b a5 f0 ef ff ff 	mov    r12,QWORD PTR [rbp-0x1010]
  6751a5:	4c 8b 9d f8 ef ff ff 	mov    r11,QWORD PTR [rbp-0x1008]
  6751ac:	4c 8b 95 b8 ef ff ff 	mov    r10,QWORD PTR [rbp-0x1048]
  6751b3:	4c 0f af e7          	imul   r12,rdi
  6751b7:	4c 0f af df          	imul   r11,rdi
  6751bb:	4c 0f af d7          	imul   r10,rdi
  6751bf:	48 3b bd c8 ef ff ff 	cmp    rdi,QWORD PTR [rbp-0x1038]
  6751c6:	0f 83 c7 01 00 00    	jae    675393 <gls_corstep_mod_mp_gls_corstep_tile_+0xdc23>
  6751cc:	48 8b bd 38 ed ff ff 	mov    rdi,QWORD PTR [rbp-0x12c8]
  6751d3:	4c 8b 8d 48 ed ff ff 	mov    r9,QWORD PTR [rbp-0x12b8]
  6751da:	4c 8b ad 40 ed ff ff 	mov    r13,QWORD PTR [rbp-0x12c0]
  6751e1:	48 89 85 60 e6 ff ff 	mov    QWORD PTR [rbp-0x19a0],rax
  6751e8:	4c 8d 3c 37          	lea    r15,[rdi+rsi*1]
  6751ec:	4c 89 bd f0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a10],r15
  6751f3:	4d 8d 34 31          	lea    r14,[r9+rsi*1]
  6751f7:	4c 8b bd c0 e5 ff ff 	mov    r15,QWORD PTR [rbp-0x1a40]
  6751fe:	4d 8d 44 35 00       	lea    r8,[r13+rsi*1+0x0]
  675203:	4c 89 b5 20 e7 ff ff 	mov    QWORD PTR [rbp-0x18e0],r14
  67520a:	4c 8b b5 10 ee ff ff 	mov    r14,QWORD PTR [rbp-0x11f0]
  675211:	4c 8b ad 18 ee ff ff 	mov    r13,QWORD PTR [rbp-0x11e8]
  675218:	4c 03 fa             	add    r15,rdx
  67521b:	4c 89 bd e8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a18],r15
  675222:	4c 8b bd a0 e5 ff ff 	mov    r15,QWORD PTR [rbp-0x1a60]
  675229:	4c 03 f6             	add    r14,rsi
  67522c:	4c 89 85 18 e7 ff ff 	mov    QWORD PTR [rbp-0x18e8],r8
  675233:	4c 03 ee             	add    r13,rsi
  675236:	4c 8b 8d 88 ed ff ff 	mov    r9,QWORD PTR [rbp-0x1278]
  67523d:	4c 8b 85 b0 e5 ff ff 	mov    r8,QWORD PTR [rbp-0x1a50]
  675244:	4c 03 fa             	add    r15,rdx
  675247:	4c 89 bd d8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a28],r15
  67524e:	4c 8b bd b8 e5 ff ff 	mov    r15,QWORD PTR [rbp-0x1a48]
  675255:	4c 03 ce             	add    r9,rsi
  675258:	48 8b bd a8 e5 ff ff 	mov    rdi,QWORD PTR [rbp-0x1a58]
  67525f:	4c 03 c1             	add    r8,rcx
  675262:	4c 89 ad 10 e7 ff ff 	mov    QWORD PTR [rbp-0x18f0],r13
  675269:	4c 89 b5 08 e7 ff ff 	mov    QWORD PTR [rbp-0x18f8],r14
  675270:	4c 03 f8             	add    r15,rax
  675273:	4c 89 bd c8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a38],r15
  67527a:	48 03 f9             	add    rdi,rcx
  67527d:	4c 8b bd 98 e5 ff ff 	mov    r15,QWORD PTR [rbp-0x1a68]
  675284:	48 89 95 68 e6 ff ff 	mov    QWORD PTR [rbp-0x1998],rdx
  67528b:	48 89 8d 70 e6 ff ff 	mov    QWORD PTR [rbp-0x1990],rcx
  675292:	48 89 b5 78 e6 ff ff 	mov    QWORD PTR [rbp-0x1988],rsi
  675299:	4c 03 f8             	add    r15,rax
  67529c:	4d 89 fe             	mov    r14,r15
  67529f:	48 8b b5 c8 e5 ff ff 	mov    rsi,QWORD PTR [rbp-0x1a38]
  6752a6:	48 8b 85 d8 e5 ff ff 	mov    rax,QWORD PTR [rbp-0x1a28]
  6752ad:	48 8b 95 e8 e5 ff ff 	mov    rdx,QWORD PTR [rbp-0x1a18]
  6752b4:	48 8b 8d f0 e5 ff ff 	mov    rcx,QWORD PTR [rbp-0x1a10]
  6752bb:	4c 8b ad d8 e6 ff ff 	mov    r13,QWORD PTR [rbp-0x1928]
  6752c2:	c4 81 7b 10 04 02    	vmovsd xmm0,QWORD PTR [r10+r8*1]
  6752c8:	c4 c1 7b 58 0c 3a    	vaddsd xmm1,xmm0,QWORD PTR [r10+rdi*1]
  6752ce:	c5 a3 59 c1          	vmulsd xmm0,xmm11,xmm1
  6752d2:	c4 c1 79 2f c1       	vcomisd xmm0,xmm9
  6752d7:	76 1e                	jbe    6752f7 <gls_corstep_mod_mp_gls_corstep_tile_+0xdb87>
  6752d9:	4c 8b bd 08 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x18f8]
  6752e0:	c4 81 7b 10 5c ef f8 	vmovsd xmm3,QWORD PTR [r15+r13*8-0x8]
  6752e7:	4c 8b bd 10 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x18f0]
  6752ee:	c4 81 7b 10 4c ef f8 	vmovsd xmm1,QWORD PTR [r15+r13*8-0x8]
  6752f5:	eb 1a                	jmp    675311 <gls_corstep_mod_mp_gls_corstep_tile_+0xdba1>
  6752f7:	4c 8b bd 18 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x18e8]
  6752fe:	c4 81 7b 10 1c ef    	vmovsd xmm3,QWORD PTR [r15+r13*8]
  675304:	4c 8b bd 20 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x18e0]
  67530b:	c4 81 7b 10 0c ef    	vmovsd xmm1,QWORD PTR [r15+r13*8]
  675311:	c4 c1 7b 10 14 03    	vmovsd xmm2,QWORD PTR [r11+rax*1]
  675317:	c4 01 7b 10 2c 34    	vmovsd xmm13,QWORD PTR [r12+r14*1]
  67531d:	c5 c3 59 db          	vmulsd xmm3,xmm7,xmm3
  675321:	c4 c1 6b 58 24 13    	vaddsd xmm4,xmm2,QWORD PTR [r11+rdx*1]
  675327:	c4 41 13 58 34 34    	vaddsd xmm14,xmm13,QWORD PTR [r12+rsi*1]
  67532d:	c5 c3 59 c9          	vmulsd xmm1,xmm7,xmm1
  675331:	c5 a3 59 c0          	vmulsd xmm0,xmm11,xmm0
  675335:	c5 db 5c eb          	vsubsd xmm5,xmm4,xmm3
  675339:	c5 0b 5c f9          	vsubsd xmm15,xmm14,xmm1
  67533d:	c5 fb 59 f5          	vmulsd xmm6,xmm0,xmm5
  675341:	c4 c1 7b 59 c7       	vmulsd xmm0,xmm0,xmm15
  675346:	c4 81 7b 11 34 e9    	vmovsd QWORD PTR [r9+r13*8],xmm6
  67534c:	c4 a1 7b 11 04 e9    	vmovsd QWORD PTR [rcx+r13*8],xmm0
  675352:	49 ff c5             	inc    r13
  675355:	4c 03 95 b8 ef ff ff 	add    r10,QWORD PTR [rbp-0x1048]
  67535c:	4c 03 9d f8 ef ff ff 	add    r11,QWORD PTR [rbp-0x1008]
  675363:	4c 03 a5 f0 ef ff ff 	add    r12,QWORD PTR [rbp-0x1010]
  67536a:	4c 3b ad c8 ef ff ff 	cmp    r13,QWORD PTR [rbp-0x1038]
  675371:	0f 82 4b ff ff ff    	jb     6752c2 <gls_corstep_mod_mp_gls_corstep_tile_+0xdb52>
  675377:	48 8b 85 60 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x19a0]
  67537e:	48 8b 95 68 e6 ff ff 	mov    rdx,QWORD PTR [rbp-0x1998]
  675385:	48 8b 8d 70 e6 ff ff 	mov    rcx,QWORD PTR [rbp-0x1990]
  67538c:	48 8b b5 78 e6 ff ff 	mov    rsi,QWORD PTR [rbp-0x1988]
  675393:	48 8b bd e0 e6 ff ff 	mov    rdi,QWORD PTR [rbp-0x1920]
  67539a:	48 ff c7             	inc    rdi
  67539d:	48 03 b5 d0 ee ff ff 	add    rsi,QWORD PTR [rbp-0x1130]
  6753a4:	48 03 8d 18 ef ff ff 	add    rcx,QWORD PTR [rbp-0x10e8]
  6753ab:	48 03 95 48 ef ff ff 	add    rdx,QWORD PTR [rbp-0x10b8]
  6753b2:	48 03 85 40 ef ff ff 	add    rax,QWORD PTR [rbp-0x10c0]
  6753b9:	48 89 bd e0 e6 ff ff 	mov    QWORD PTR [rbp-0x1920],rdi
  6753c0:	48 3b bd e0 ee ff ff 	cmp    rdi,QWORD PTR [rbp-0x1120]
  6753c7:	0f 82 23 fb ff ff    	jb     674ef0 <gls_corstep_mod_mp_gls_corstep_tile_+0xd780>
  6753cd:	48 8b bd 88 ef ff ff 	mov    rdi,QWORD PTR [rbp-0x1078]
  6753d4:	45 33 c0             	xor    r8d,r8d
  6753d7:	45 33 d2             	xor    r10d,r10d
  6753da:	45 33 e4             	xor    r12d,r12d
  6753dd:	48 8b 85 a8 ec ff ff 	mov    rax,QWORD PTR [rbp-0x1358]
  6753e4:	45 33 db             	xor    r11d,r11d
  6753e7:	45 33 c9             	xor    r9d,r9d
  6753ea:	48 3b 85 b0 ec ff ff 	cmp    rax,QWORD PTR [rbp-0x1350]
  6753f1:	0f 8c ff 05 00 00    	jl     6759f6 <gls_corstep_mod_mp_gls_corstep_tile_+0xe286>
  6753f7:	48 8b b5 d8 ee ff ff 	mov    rsi,QWORD PTR [rbp-0x1128]
  6753fe:	4c 8b b5 30 ef ff ff 	mov    r14,QWORD PTR [rbp-0x10d0]
  675405:	4c 0f af f6          	imul   r14,rsi
  675409:	4c 8b ad 38 ef ff ff 	mov    r13,QWORD PTR [rbp-0x10c8]
  675410:	4c 0f af ee          	imul   r13,rsi
  675414:	48 8b 8d 30 ec ff ff 	mov    rcx,QWORD PTR [rbp-0x13d0]
  67541b:	48 8b 85 60 ec ff ff 	mov    rax,QWORD PTR [rbp-0x13a0]
  675422:	4c 8b bd 38 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13c8]
  675429:	4c 89 85 c8 e6 ff ff 	mov    QWORD PTR [rbp-0x1938],r8
  675430:	4a 8d 14 31          	lea    rdx,[rcx+r14*1]
  675434:	48 89 95 a8 e6 ff ff 	mov    QWORD PTR [rbp-0x1958],rdx
  67543b:	4a 8d 34 30          	lea    rsi,[rax+r14*1]
  67543f:	48 8b 95 58 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x13a8]
  675446:	4b 8d 0c 2f          	lea    rcx,[r15+r13*1]
  67544a:	48 8b 85 90 ec ff ff 	mov    rax,QWORD PTR [rbp-0x1370]
  675451:	4c 8b bd 80 ec ff ff 	mov    r15,QWORD PTR [rbp-0x1380]
  675458:	48 89 8d b8 e6 ff ff 	mov    QWORD PTR [rbp-0x1948],rcx
  67545f:	49 03 d5             	add    rdx,r13
  675462:	48 89 95 b0 e6 ff ff 	mov    QWORD PTR [rbp-0x1950],rdx
  675469:	49 03 c6             	add    rax,r14
  67546c:	4c 03 b5 88 ec ff ff 	add    r14,QWORD PTR [rbp-0x1378]
  675473:	4d 03 fd             	add    r15,r13
  675476:	4c 03 ad 78 ec ff ff 	add    r13,QWORD PTR [rbp-0x1388]
  67547d:	4c 89 bd 88 e2 ff ff 	mov    QWORD PTR [rbp-0x1d78],r15
  675484:	4c 89 ad 98 e2 ff ff 	mov    QWORD PTR [rbp-0x1d68],r13
  67548b:	4c 89 b5 a0 e2 ff ff 	mov    QWORD PTR [rbp-0x1d60],r14
  675492:	48 89 85 a8 e2 ff ff 	mov    QWORD PTR [rbp-0x1d58],rax
  675499:	48 89 b5 c0 e6 ff ff 	mov    QWORD PTR [rbp-0x1940],rsi
  6754a0:	8b 85 c0 ee ff ff    	mov    eax,DWORD PTR [rbp-0x1140]
  6754a6:	3b 85 c8 ee ff ff    	cmp    eax,DWORD PTR [rbp-0x1138]
  6754ac:	0f 8c 03 05 00 00    	jl     6759b5 <gls_corstep_mod_mp_gls_corstep_tile_+0xe245>
  6754b2:	48 83 bd 88 ef ff ff 	cmp    QWORD PTR [rbp-0x1078],0x4
  6754b9:	04 
  6754ba:	0f 8c 61 23 00 00    	jl     677821 <gls_corstep_mod_mp_gls_corstep_tile_+0x100b1>
  6754c0:	48 8b 85 58 ee ff ff 	mov    rax,QWORD PTR [rbp-0x11a8]
  6754c7:	4a 8d 14 08          	lea    rdx,[rax+r9*1]
  6754cb:	48 89 95 00 e8 ff ff 	mov    QWORD PTR [rbp-0x1800],rdx
  6754d2:	48 83 e2 0f          	and    rdx,0xf
  6754d6:	85 d2                	test   edx,edx
  6754d8:	74 0e                	je     6754e8 <gls_corstep_mod_mp_gls_corstep_tile_+0xdd78>
  6754da:	f6 c2 07             	test   dl,0x7
  6754dd:	0f 85 3e 23 00 00    	jne    677821 <gls_corstep_mod_mp_gls_corstep_tile_+0x100b1>
  6754e3:	ba 01 00 00 00       	mov    edx,0x1
  6754e8:	89 d7                	mov    edi,edx
  6754ea:	48 8d 47 04          	lea    rax,[rdi+0x4]
  6754ee:	48 3b 85 88 ef ff ff 	cmp    rax,QWORD PTR [rbp-0x1078]
  6754f5:	0f 8f 26 23 00 00    	jg     677821 <gls_corstep_mod_mp_gls_corstep_tile_+0x100b1>
  6754fb:	48 8b 85 f0 ee ff ff 	mov    rax,QWORD PTR [rbp-0x1110]
  675502:	45 33 f6             	xor    r14d,r14d
  675505:	8b 8d f8 ee ff ff    	mov    ecx,DWORD PTR [rbp-0x1108]
  67550b:	41 89 c8             	mov    r8d,ecx
  67550e:	44 2b c2             	sub    r8d,edx
  675511:	41 83 e0 03          	and    r8d,0x3
  675515:	4e 8d 3c 08          	lea    r15,[rax+r9*1]
  675519:	4c 89 bd a0 e9 ff ff 	mov    QWORD PTR [rbp-0x1660],r15
  675520:	41 f7 d8             	neg    r8d
  675523:	4c 8b bd c0 e6 ff ff 	mov    r15,QWORD PTR [rbp-0x1940]
  67552a:	44 03 c1             	add    r8d,ecx
  67552d:	48 8b 85 a8 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x1958]
  675534:	33 c9                	xor    ecx,ecx
  675536:	33 f6                	xor    esi,esi
  675538:	4d 63 c0             	movsxd r8,r8d
  67553b:	4d 03 fa             	add    r15,r10
  67553e:	4c 89 bd d0 e6 ff ff 	mov    QWORD PTR [rbp-0x1930],r15
  675545:	45 33 ed             	xor    r13d,r13d
  675548:	4c 8b bd b8 e6 ff ff 	mov    r15,QWORD PTR [rbp-0x1948]
  67554f:	49 03 c2             	add    rax,r10
  675552:	4d 03 fc             	add    r15,r12
  675555:	4c 89 bd 90 e9 ff ff 	mov    QWORD PTR [rbp-0x1670],r15
  67555c:	4c 8b bd b0 e6 ff ff 	mov    r15,QWORD PTR [rbp-0x1950]
  675563:	4d 03 fc             	add    r15,r12
  675566:	4c 89 bd 88 e9 ff ff 	mov    QWORD PTR [rbp-0x1678],r15
  67556d:	4c 8b bd 50 ef ff ff 	mov    r15,QWORD PTR [rbp-0x10b0]
  675574:	4d 03 fb             	add    r15,r11
  675577:	4c 89 bd 08 e8 ff ff 	mov    QWORD PTR [rbp-0x17f8],r15
  67557e:	85 d2                	test   edx,edx
  675580:	0f 86 c8 00 00 00    	jbe    67564e <gls_corstep_mod_mp_gls_corstep_tile_+0xdede>
  675586:	4c 89 85 e0 e7 ff ff 	mov    QWORD PTR [rbp-0x1820],r8
  67558d:	4c 89 8d 40 e6 ff ff 	mov    QWORD PTR [rbp-0x19c0],r9
  675594:	4c 89 9d 48 e6 ff ff 	mov    QWORD PTR [rbp-0x19b8],r11
  67559b:	4c 89 a5 50 e6 ff ff 	mov    QWORD PTR [rbp-0x19b0],r12
  6755a2:	4c 89 95 58 e6 ff ff 	mov    QWORD PTR [rbp-0x19a8],r10
  6755a9:	4c 89 fa             	mov    rdx,r15
  6755ac:	4c 8b 85 88 e9 ff ff 	mov    r8,QWORD PTR [rbp-0x1678]
  6755b3:	4c 8b 8d 90 e9 ff ff 	mov    r9,QWORD PTR [rbp-0x1670]
  6755ba:	4c 8b 95 d0 e6 ff ff 	mov    r10,QWORD PTR [rbp-0x1930]
  6755c1:	4c 8b 9d a0 e9 ff ff 	mov    r11,QWORD PTR [rbp-0x1660]
  6755c8:	4c 8b a5 00 e8 ff ff 	mov    r12,QWORD PTR [rbp-0x1800]
  6755cf:	4c 8b bd f0 ef ff ff 	mov    r15,QWORD PTR [rbp-0x1010]
  6755d6:	0f 1f 00             	nop    DWORD PTR [rax]
  6755d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  6755e0:	c4 a1 7b 10 04 11    	vmovsd xmm0,QWORD PTR [rcx+r10*1]
  6755e6:	c4 a1 7b 10 0c 06    	vmovsd xmm1,QWORD PTR [rsi+r8*1]
  6755ec:	c4 c1 7b 10 6c 15 00 	vmovsd xmm5,QWORD PTR [r13+rdx*1+0x0]
  6755f3:	4c 03 ad e0 ef ff ff 	add    r13,QWORD PTR [rbp-0x1020]
  6755fa:	c5 fb 5c 14 01       	vsubsd xmm2,xmm0,QWORD PTR [rcx+rax*1]
  6755ff:	49 03 cf             	add    rcx,r15
  675602:	c4 a1 73 5c 24 0e    	vsubsd xmm4,xmm1,QWORD PTR [rsi+r9*1]
  675608:	c5 eb 59 dd          	vmulsd xmm3,xmm2,xmm5
  67560c:	c5 db 59 f5          	vmulsd xmm6,xmm4,xmm5
  675610:	c4 81 7b 11 1c f3    	vmovsd QWORD PTR [r11+r14*8],xmm3
  675616:	c4 81 7b 11 34 f4    	vmovsd QWORD PTR [r12+r14*8],xmm6
  67561c:	49 ff c6             	inc    r14
  67561f:	48 03 b5 f8 ef ff ff 	add    rsi,QWORD PTR [rbp-0x1008]
  675626:	4c 3b f7             	cmp    r14,rdi
  675629:	72 b5                	jb     6755e0 <gls_corstep_mod_mp_gls_corstep_tile_+0xde70>
  67562b:	4c 8b 85 e0 e7 ff ff 	mov    r8,QWORD PTR [rbp-0x1820]
  675632:	4c 8b 8d 40 e6 ff ff 	mov    r9,QWORD PTR [rbp-0x19c0]
  675639:	4c 8b 9d 48 e6 ff ff 	mov    r11,QWORD PTR [rbp-0x19b8]
  675640:	4c 8b a5 50 e6 ff ff 	mov    r12,QWORD PTR [rbp-0x19b0]
  675647:	4c 8b 95 58 e6 ff ff 	mov    r10,QWORD PTR [rbp-0x19a8]
  67564e:	4c 8b bd a8 e2 ff ff 	mov    r15,QWORD PTR [rbp-0x1d58]
  675655:	4c 8b b5 a0 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1260]
  67565c:	4c 8b ad 68 ee ff ff 	mov    r13,QWORD PTR [rbp-0x1198]
  675663:	48 8b 8d e0 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x1020]
  67566a:	4d 03 fa             	add    r15,r10
  67566d:	4c 89 bd 98 e9 ff ff 	mov    QWORD PTR [rbp-0x1668],r15
  675674:	4d 03 f1             	add    r14,r9
  675677:	4c 8b bd a0 e2 ff ff 	mov    r15,QWORD PTR [rbp-0x1d60]
  67567e:	4d 03 e9             	add    r13,r9
  675681:	48 8b 95 f8 ef ff ff 	mov    rdx,QWORD PTR [rbp-0x1008]
  675688:	48 8b b5 f0 ef ff ff 	mov    rsi,QWORD PTR [rbp-0x1010]
  67568f:	4c 89 85 e0 e7 ff ff 	mov    QWORD PTR [rbp-0x1820],r8
  675696:	4d 03 fa             	add    r15,r10
  675699:	4c 89 bd 80 e5 ff ff 	mov    QWORD PTR [rbp-0x1a80],r15
  6756a0:	4c 8b bd 88 e2 ff ff 	mov    r15,QWORD PTR [rbp-0x1d78]
  6756a7:	4c 89 ad f8 e7 ff ff 	mov    QWORD PTR [rbp-0x1808],r13
  6756ae:	4c 89 b5 f0 e7 ff ff 	mov    QWORD PTR [rbp-0x1810],r14
  6756b5:	48 89 85 e8 e7 ff ff 	mov    QWORD PTR [rbp-0x1818],rax
  6756bc:	4d 03 fc             	add    r15,r12
  6756bf:	4c 89 bd 78 e5 ff ff 	mov    QWORD PTR [rbp-0x1a88],r15
  6756c6:	4c 8b bd 98 e2 ff ff 	mov    r15,QWORD PTR [rbp-0x1d68]
  6756cd:	4c 89 8d 40 e6 ff ff 	mov    QWORD PTR [rbp-0x19c0],r9
  6756d4:	4c 89 9d 48 e6 ff ff 	mov    QWORD PTR [rbp-0x19b8],r11
  6756db:	4c 89 a5 50 e6 ff ff 	mov    QWORD PTR [rbp-0x19b0],r12
  6756e2:	4d 03 fc             	add    r15,r12
  6756e5:	4c 89 bd 70 e5 ff ff 	mov    QWORD PTR [rbp-0x1a90],r15
  6756ec:	4c 8b bd 88 ee ff ff 	mov    r15,QWORD PTR [rbp-0x1178]
  6756f3:	4c 89 95 58 e6 ff ff 	mov    QWORD PTR [rbp-0x19a8],r10
  6756fa:	48 0f af cf          	imul   rcx,rdi
  6756fe:	48 0f af d7          	imul   rdx,rdi
  675702:	48 0f af f7          	imul   rsi,rdi
  675706:	4c 8b 8d 70 e5 ff ff 	mov    r9,QWORD PTR [rbp-0x1a90]
  67570d:	4d 03 fb             	add    r15,r11
  675710:	4d 89 fb             	mov    r11,r15
  675713:	48 8b 85 78 e5 ff ff 	mov    rax,QWORD PTR [rbp-0x1a88]
  67571a:	4c 8b 85 80 e5 ff ff 	mov    r8,QWORD PTR [rbp-0x1a80]
  675721:	4c 8b 95 d0 e6 ff ff 	mov    r10,QWORD PTR [rbp-0x1930]
  675728:	4c 8b a5 e0 ef ff ff 	mov    r12,QWORD PTR [rbp-0x1020]
  67572f:	4c 8b ad f8 ef ff ff 	mov    r13,QWORD PTR [rbp-0x1008]
  675736:	4c 8b b5 f0 ef ff ff 	mov    r14,QWORD PTR [rbp-0x1010]
  67573d:	4d 8d 3c 32          	lea    r15,[r10+rsi*1]
  675741:	c4 c1 7b 10 07       	vmovsd xmm0,QWORD PTR [r15]
  675746:	c4 81 79 16 14 37    	vmovhpd xmm2,xmm0,QWORD PTR [r15+r14*1]
  67574c:	4c 8b bd e8 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1818]
  675753:	4c 03 fe             	add    r15,rsi
  675756:	c4 c1 7b 10 0f       	vmovsd xmm1,QWORD PTR [r15]
  67575b:	c4 81 71 16 1c 37    	vmovhpd xmm3,xmm1,QWORD PTR [r15+r14*1]
  675761:	4c 8b bd 88 e9 ff ff 	mov    r15,QWORD PTR [rbp-0x1678]
  675768:	c5 69 5c fb          	vsubpd xmm15,xmm2,xmm3
  67576c:	4c 03 fa             	add    r15,rdx
  67576f:	c4 c1 7b 10 27       	vmovsd xmm4,QWORD PTR [r15]
  675774:	c4 81 59 16 34 2f    	vmovhpd xmm6,xmm4,QWORD PTR [r15+r13*1]
  67577a:	4c 8b bd 90 e9 ff ff 	mov    r15,QWORD PTR [rbp-0x1670]
  675781:	4c 03 fa             	add    r15,rdx
  675784:	c4 c1 7b 10 2f       	vmovsd xmm5,QWORD PTR [r15]
  675789:	c4 01 51 16 2c 2f    	vmovhpd xmm13,xmm5,QWORD PTR [r15+r13*1]
  67578f:	4c 8b bd 08 e8 ff ff 	mov    r15,QWORD PTR [rbp-0x17f8]
  675796:	c4 c1 49 5c c5       	vsubpd xmm0,xmm6,xmm13
  67579b:	4c 03 f9             	add    r15,rcx
  67579e:	c4 41 7b 10 37       	vmovsd xmm14,QWORD PTR [r15]
  6757a3:	c4 01 09 16 34 27    	vmovhpd xmm14,xmm14,QWORD PTR [r15+r12*1]
  6757a9:	c4 41 09 59 ff       	vmulpd xmm15,xmm14,xmm15
  6757ae:	c5 89 59 c8          	vmulpd xmm1,xmm14,xmm0
  6757b2:	4c 8b bd a0 e9 ff ff 	mov    r15,QWORD PTR [rbp-0x1660]
  6757b9:	c4 41 79 11 3c ff    	vmovupd XMMWORD PTR [r15+rdi*8],xmm15
  6757bf:	4c 8b bd 00 e8 ff ff 	mov    r15,QWORD PTR [rbp-0x1800]
  6757c6:	c4 c1 79 11 0c ff    	vmovupd XMMWORD PTR [r15+rdi*8],xmm1
  6757cc:	4c 8b bd 98 e9 ff ff 	mov    r15,QWORD PTR [rbp-0x1668]
  6757d3:	4c 03 fe             	add    r15,rsi
  6757d6:	c4 c1 7b 10 17       	vmovsd xmm2,QWORD PTR [r15]
  6757db:	c4 81 69 16 24 37    	vmovhpd xmm4,xmm2,QWORD PTR [r15+r14*1]
  6757e1:	4d 8d 3c 30          	lea    r15,[r8+rsi*1]
  6757e5:	c4 c1 7b 10 1f       	vmovsd xmm3,QWORD PTR [r15]
  6757ea:	4a 8d 34 b6          	lea    rsi,[rsi+r14*4]
  6757ee:	c4 81 61 16 2c 37    	vmovhpd xmm5,xmm3,QWORD PTR [r15+r14*1]
  6757f4:	4c 8d 3c 10          	lea    r15,[rax+rdx*1]
  6757f8:	c4 c1 7b 10 37       	vmovsd xmm6,QWORD PTR [r15]
  6757fd:	c5 d9 5c cd          	vsubpd xmm1,xmm4,xmm5
  675801:	c4 81 49 16 34 2f    	vmovhpd xmm6,xmm6,QWORD PTR [r15+r13*1]
  675807:	4d 8d 3c 11          	lea    r15,[r9+rdx*1]
  67580b:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  675810:	4a 8d 14 aa          	lea    rdx,[rdx+r13*4]
  675814:	c4 01 11 16 2c 2f    	vmovhpd xmm13,xmm13,QWORD PTR [r15+r13*1]
  67581a:	4d 8d 3c 0b          	lea    r15,[r11+rcx*1]
  67581e:	c4 c1 7b 10 07       	vmovsd xmm0,QWORD PTR [r15]
  675823:	4a 8d 0c a1          	lea    rcx,[rcx+r12*4]
  675827:	c4 c1 49 5c e5       	vsubpd xmm4,xmm6,xmm13
  67582c:	c4 81 79 16 1c 27    	vmovhpd xmm3,xmm0,QWORD PTR [r15+r12*1]
  675832:	c5 e1 59 d1          	vmulpd xmm2,xmm3,xmm1
  675836:	c5 e1 59 ec          	vmulpd xmm5,xmm3,xmm4
  67583a:	4c 8b bd f8 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1808]
  675841:	c4 c1 79 11 54 ff 10 	vmovupd XMMWORD PTR [r15+rdi*8+0x10],xmm2
  675848:	4c 8b bd f0 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1810]
  67584f:	c4 c1 79 11 6c ff 10 	vmovupd XMMWORD PTR [r15+rdi*8+0x10],xmm5
  675856:	48 83 c7 04          	add    rdi,0x4
  67585a:	48 3b bd e0 e7 ff ff 	cmp    rdi,QWORD PTR [rbp-0x1820]
  675861:	0f 82 d6 fe ff ff    	jb     67573d <gls_corstep_mod_mp_gls_corstep_tile_+0xdfcd>
  675867:	4c 8b 85 e0 e7 ff ff 	mov    r8,QWORD PTR [rbp-0x1820]
  67586e:	4c 8b 8d 40 e6 ff ff 	mov    r9,QWORD PTR [rbp-0x19c0]
  675875:	4c 8b 9d 48 e6 ff ff 	mov    r11,QWORD PTR [rbp-0x19b8]
  67587c:	4c 8b a5 50 e6 ff ff 	mov    r12,QWORD PTR [rbp-0x19b0]
  675883:	4c 8b 95 58 e6 ff ff 	mov    r10,QWORD PTR [rbp-0x19a8]
  67588a:	4c 8b ad e0 ef ff ff 	mov    r13,QWORD PTR [rbp-0x1020]
  675891:	48 8b bd f8 ef ff ff 	mov    rdi,QWORD PTR [rbp-0x1008]
  675898:	48 8b 8d f0 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x1010]
  67589f:	4d 0f af e8          	imul   r13,r8
  6758a3:	49 0f af f8          	imul   rdi,r8
  6758a7:	49 0f af c8          	imul   rcx,r8
  6758ab:	4c 3b 85 88 ef ff ff 	cmp    r8,QWORD PTR [rbp-0x1078]
  6758b2:	0f 83 fd 00 00 00    	jae    6759b5 <gls_corstep_mod_mp_gls_corstep_tile_+0xe245>
  6758b8:	48 8b 95 f0 ee ff ff 	mov    rdx,QWORD PTR [rbp-0x1110]
  6758bf:	4c 8b bd a8 e6 ff ff 	mov    r15,QWORD PTR [rbp-0x1958]
  6758c6:	48 8b b5 58 ee ff ff 	mov    rsi,QWORD PTR [rbp-0x11a8]
  6758cd:	4c 89 8d 40 e6 ff ff 	mov    QWORD PTR [rbp-0x19c0],r9
  6758d4:	4e 8d 34 0a          	lea    r14,[rdx+r9*1]
  6758d8:	4c 89 b5 90 e5 ff ff 	mov    QWORD PTR [rbp-0x1a70],r14
  6758df:	4b 8d 14 17          	lea    rdx,[r15+r10*1]
  6758e3:	4c 8b bd 50 ef ff ff 	mov    r15,QWORD PTR [rbp-0x10b0]
  6758ea:	4a 8d 04 0e          	lea    rax,[rsi+r9*1]
  6758ee:	48 89 85 88 e5 ff ff 	mov    QWORD PTR [rbp-0x1a78],rax
  6758f5:	4c 8b b5 c0 e6 ff ff 	mov    r14,QWORD PTR [rbp-0x1940]
  6758fc:	48 8b b5 b8 e6 ff ff 	mov    rsi,QWORD PTR [rbp-0x1948]
  675903:	4d 03 fb             	add    r15,r11
  675906:	48 8b 85 b0 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x1950]
  67590d:	4d 03 f2             	add    r14,r10
  675910:	4c 89 9d 48 e6 ff ff 	mov    QWORD PTR [rbp-0x19b8],r11
  675917:	49 03 f4             	add    rsi,r12
  67591a:	4c 89 a5 50 e6 ff ff 	mov    QWORD PTR [rbp-0x19b0],r12
  675921:	49 03 c4             	add    rax,r12
  675924:	4c 89 95 58 e6 ff ff 	mov    QWORD PTR [rbp-0x19a8],r10
  67592b:	4d 89 f9             	mov    r9,r15
  67592e:	4c 8b 95 88 e5 ff ff 	mov    r10,QWORD PTR [rbp-0x1a78]
  675935:	4c 8b 9d 90 e5 ff ff 	mov    r11,QWORD PTR [rbp-0x1a70]
  67593c:	4c 8b a5 f8 ef ff ff 	mov    r12,QWORD PTR [rbp-0x1008]
  675943:	4c 8b bd f0 ef ff ff 	mov    r15,QWORD PTR [rbp-0x1010]
  67594a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  675950:	c4 a1 7b 10 04 31    	vmovsd xmm0,QWORD PTR [rcx+r14*1]
  675956:	c5 fb 10 0c 07       	vmovsd xmm1,QWORD PTR [rdi+rax*1]
  67595b:	c4 81 7b 10 6c 0d 00 	vmovsd xmm5,QWORD PTR [r13+r9*1+0x0]
  675962:	4c 03 ad e0 ef ff ff 	add    r13,QWORD PTR [rbp-0x1020]
  675969:	c5 fb 5c 14 11       	vsubsd xmm2,xmm0,QWORD PTR [rcx+rdx*1]
  67596e:	49 03 cf             	add    rcx,r15
  675971:	c5 f3 5c 24 37       	vsubsd xmm4,xmm1,QWORD PTR [rdi+rsi*1]
  675976:	c5 eb 59 dd          	vmulsd xmm3,xmm2,xmm5
  67597a:	c5 db 59 f5          	vmulsd xmm6,xmm4,xmm5
  67597e:	c4 81 7b 11 1c c3    	vmovsd QWORD PTR [r11+r8*8],xmm3
  675984:	49 03 fc             	add    rdi,r12
  675987:	c4 81 7b 11 34 c2    	vmovsd QWORD PTR [r10+r8*8],xmm6
  67598d:	49 ff c0             	inc    r8
  675990:	4c 3b 85 88 ef ff ff 	cmp    r8,QWORD PTR [rbp-0x1078]
  675997:	72 b7                	jb     675950 <gls_corstep_mod_mp_gls_corstep_tile_+0xe1e0>
  675999:	4c 8b 8d 40 e6 ff ff 	mov    r9,QWORD PTR [rbp-0x19c0]
  6759a0:	4c 8b 9d 48 e6 ff ff 	mov    r11,QWORD PTR [rbp-0x19b8]
  6759a7:	4c 8b a5 50 e6 ff ff 	mov    r12,QWORD PTR [rbp-0x19b0]
  6759ae:	4c 8b 95 58 e6 ff ff 	mov    r10,QWORD PTR [rbp-0x19a8]
  6759b5:	48 8b 85 c8 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x1938]
  6759bc:	48 ff c0             	inc    rax
  6759bf:	4c 03 95 40 ef ff ff 	add    r10,QWORD PTR [rbp-0x10c0]
  6759c6:	4c 03 a5 48 ef ff ff 	add    r12,QWORD PTR [rbp-0x10b8]
  6759cd:	4c 03 9d 20 ef ff ff 	add    r11,QWORD PTR [rbp-0x10e0]
  6759d4:	4c 03 8d d0 ee ff ff 	add    r9,QWORD PTR [rbp-0x1130]
  6759db:	48 89 85 c8 e6 ff ff 	mov    QWORD PTR [rbp-0x1938],rax
  6759e2:	48 3b 85 e8 ee ff ff 	cmp    rax,QWORD PTR [rbp-0x1118]
  6759e9:	0f 82 b1 fa ff ff    	jb     6754a0 <gls_corstep_mod_mp_gls_corstep_tile_+0xdd30>
  6759ef:	48 8b bd 88 ef ff ff 	mov    rdi,QWORD PTR [rbp-0x1078]
  6759f6:	83 bd d0 ec ff ff 00 	cmp    DWORD PTR [rbp-0x1330],0x0
  6759fd:	0f 85 f0 00 00 00    	jne    675af3 <gls_corstep_mod_mp_gls_corstep_tile_+0xe383>
  675a03:	48 8b 85 00 ec ff ff 	mov    rax,QWORD PTR [rbp-0x1400]
  675a0a:	48 8b 95 f0 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1310]
  675a11:	f6 44 90 fc 01       	test   BYTE PTR [rax+rdx*4-0x4],0x1
  675a16:	0f 85 d7 00 00 00    	jne    675af3 <gls_corstep_mod_mp_gls_corstep_tile_+0xe383>
  675a1c:	48 8b 85 c0 eb ff ff 	mov    rax,QWORD PTR [rbp-0x1440]
  675a23:	48 8b 95 c8 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x1438]
  675a2a:	48 8b b4 10 38 f9 ff 	mov    rsi,QWORD PTR [rax+rdx*1-0x6c8]
  675a31:	ff 
  675a32:	48 f7 de             	neg    rsi
  675a35:	48 03 b5 c8 ec ff ff 	add    rsi,QWORD PTR [rbp-0x1338]
  675a3c:	48 0f af b4 10 30 f9 	imul   rsi,QWORD PTR [rax+rdx*1-0x6d0]
  675a43:	ff ff 
  675a45:	48 8b 8c 10 f8 f8 ff 	mov    rcx,QWORD PTR [rax+rdx*1-0x708]
  675a4c:	ff 
  675a4d:	f6 04 31 01          	test   BYTE PTR [rcx+rsi*1],0x1
  675a51:	0f 84 9c 00 00 00    	je     675af3 <gls_corstep_mod_mp_gls_corstep_tile_+0xe383>
  675a57:	8b 85 c0 ee ff ff    	mov    eax,DWORD PTR [rbp-0x1140]
  675a5d:	3b 85 c8 ee ff ff    	cmp    eax,DWORD PTR [rbp-0x1138]
  675a63:	0f 8c 98 00 00 00    	jl     675b01 <gls_corstep_mod_mp_gls_corstep_tile_+0xe391>
  675a69:	48 83 ff 04          	cmp    rdi,0x4
  675a6d:	0f 8c 40 1b 00 00    	jl     6775b3 <gls_corstep_mod_mp_gls_corstep_tile_+0xfe43>
  675a73:	48 8b 85 98 ef ff ff 	mov    rax,QWORD PTR [rbp-0x1068]
  675a7a:	33 d2                	xor    edx,edx
  675a7c:	48 8b 8d 80 ed ff ff 	mov    rcx,QWORD PTR [rbp-0x1280]
  675a83:	49 89 c2             	mov    r10,rax
  675a86:	48 8b b5 28 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x13d8]
  675a8d:	4c 8b 85 e8 e9 ff ff 	mov    r8,QWORD PTR [rbp-0x1618]
  675a94:	4c 8b 8d d0 e9 ff ff 	mov    r9,QWORD PTR [rbp-0x1630]
  675a9b:	c5 fd 10 04 d6       	vmovupd ymm0,YMMWORD PTR [rsi+rdx*8]
  675aa0:	c5 fd 10 0c d1       	vmovupd ymm1,YMMWORD PTR [rcx+rdx*8]
  675aa5:	c4 c1 7d 11 04 d1    	vmovupd YMMWORD PTR [r9+rdx*8],ymm0
  675aab:	c4 c1 7d 11 0c d0    	vmovupd YMMWORD PTR [r8+rdx*8],ymm1
  675ab1:	48 83 c2 04          	add    rdx,0x4
  675ab5:	49 3b d2             	cmp    rdx,r10
  675ab8:	72 e1                	jb     675a9b <gls_corstep_mod_mp_gls_corstep_tile_+0xe32b>
  675aba:	48 3b c7             	cmp    rax,rdi
  675abd:	73 34                	jae    675af3 <gls_corstep_mod_mp_gls_corstep_tile_+0xe383>
  675abf:	48 8b b5 80 ed ff ff 	mov    rsi,QWORD PTR [rbp-0x1280]
  675ac6:	4c 8b 85 28 ec ff ff 	mov    r8,QWORD PTR [rbp-0x13d8]
  675acd:	4c 8b 8d e8 e9 ff ff 	mov    r9,QWORD PTR [rbp-0x1618]
  675ad4:	4c 8b 95 d0 e9 ff ff 	mov    r10,QWORD PTR [rbp-0x1630]
  675adb:	49 8b 14 c0          	mov    rdx,QWORD PTR [r8+rax*8]
  675adf:	48 8b 0c c6          	mov    rcx,QWORD PTR [rsi+rax*8]
  675ae3:	49 89 14 c2          	mov    QWORD PTR [r10+rax*8],rdx
  675ae7:	49 89 0c c1          	mov    QWORD PTR [r9+rax*8],rcx
  675aeb:	48 ff c0             	inc    rax
  675aee:	48 3b c7             	cmp    rax,rdi
  675af1:	72 e8                	jb     675adb <gls_corstep_mod_mp_gls_corstep_tile_+0xe36b>
  675af3:	83 bd 98 ec ff ff 00 	cmp    DWORD PTR [rbp-0x1368],0x0
  675afa:	74 12                	je     675b0e <gls_corstep_mod_mp_gls_corstep_tile_+0xe39e>
  675afc:	e9 89 01 00 00       	jmp    675c8a <gls_corstep_mod_mp_gls_corstep_tile_+0xe51a>
  675b01:	83 bd 98 ec ff ff 00 	cmp    DWORD PTR [rbp-0x1368],0x0
  675b08:	0f 85 94 01 00 00    	jne    675ca2 <gls_corstep_mod_mp_gls_corstep_tile_+0xe532>
  675b0e:	48 8b 85 00 ec ff ff 	mov    rax,QWORD PTR [rbp-0x1400]
  675b15:	48 8b 95 f0 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1310]
  675b1c:	f6 44 90 fc 01       	test   BYTE PTR [rax+rdx*4-0x4],0x1
  675b21:	0f 85 63 01 00 00    	jne    675c8a <gls_corstep_mod_mp_gls_corstep_tile_+0xe51a>
  675b27:	48 8b 85 c0 eb ff ff 	mov    rax,QWORD PTR [rbp-0x1440]
  675b2e:	48 8b 95 c8 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x1438]
  675b35:	48 8b b4 10 f0 f8 ff 	mov    rsi,QWORD PTR [rax+rdx*1-0x710]
  675b3c:	ff 
  675b3d:	48 f7 de             	neg    rsi
  675b40:	48 03 b5 c8 ec ff ff 	add    rsi,QWORD PTR [rbp-0x1338]
  675b47:	48 0f af b4 10 e8 f8 	imul   rsi,QWORD PTR [rax+rdx*1-0x718]
  675b4e:	ff ff 
  675b50:	48 8b 8c 10 b0 f8 ff 	mov    rcx,QWORD PTR [rax+rdx*1-0x750]
  675b57:	ff 
  675b58:	f6 04 31 01          	test   BYTE PTR [rcx+rsi*1],0x1
  675b5c:	0f 84 28 01 00 00    	je     675c8a <gls_corstep_mod_mp_gls_corstep_tile_+0xe51a>
  675b62:	8b 85 c0 ee ff ff    	mov    eax,DWORD PTR [rbp-0x1140]
  675b68:	3b 85 c8 ee ff ff    	cmp    eax,DWORD PTR [rbp-0x1138]
  675b6e:	0f 8c c9 00 00 00    	jl     675c3d <gls_corstep_mod_mp_gls_corstep_tile_+0xe4cd>
  675b74:	48 83 ff 04          	cmp    rdi,0x4
  675b78:	0f 8c 9f 1a 00 00    	jl     67761d <gls_corstep_mod_mp_gls_corstep_tile_+0xfead>
  675b7e:	48 8b 85 98 ef ff ff 	mov    rax,QWORD PTR [rbp-0x1068]
  675b85:	33 d2                	xor    edx,edx
  675b87:	48 8b 8d 10 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x15f0]
  675b8e:	49 89 c2             	mov    r10,rax
  675b91:	48 8b b5 80 e9 ff ff 	mov    rsi,QWORD PTR [rbp-0x1680]
  675b98:	4c 8b 85 f0 e9 ff ff 	mov    r8,QWORD PTR [rbp-0x1610]
  675b9f:	4c 8b 8d c8 e9 ff ff 	mov    r9,QWORD PTR [rbp-0x1638]
  675ba6:	c5 fd 10 04 d6       	vmovupd ymm0,YMMWORD PTR [rsi+rdx*8]
  675bab:	c5 fd 10 0c d1       	vmovupd ymm1,YMMWORD PTR [rcx+rdx*8]
  675bb0:	c4 c1 7d 11 04 d1    	vmovupd YMMWORD PTR [r9+rdx*8],ymm0
  675bb6:	c4 c1 7d 11 0c d0    	vmovupd YMMWORD PTR [r8+rdx*8],ymm1
  675bbc:	48 83 c2 04          	add    rdx,0x4
  675bc0:	49 3b d2             	cmp    rdx,r10
  675bc3:	72 e1                	jb     675ba6 <gls_corstep_mod_mp_gls_corstep_tile_+0xe436>
  675bc5:	48 3b c7             	cmp    rax,rdi
  675bc8:	73 34                	jae    675bfe <gls_corstep_mod_mp_gls_corstep_tile_+0xe48e>
  675bca:	48 8b b5 10 ea ff ff 	mov    rsi,QWORD PTR [rbp-0x15f0]
  675bd1:	4c 8b 85 80 e9 ff ff 	mov    r8,QWORD PTR [rbp-0x1680]
  675bd8:	4c 8b 8d f0 e9 ff ff 	mov    r9,QWORD PTR [rbp-0x1610]
  675bdf:	4c 8b 95 c8 e9 ff ff 	mov    r10,QWORD PTR [rbp-0x1638]
  675be6:	49 8b 14 c0          	mov    rdx,QWORD PTR [r8+rax*8]
  675bea:	48 8b 0c c6          	mov    rcx,QWORD PTR [rsi+rax*8]
  675bee:	49 89 14 c2          	mov    QWORD PTR [r10+rax*8],rdx
  675bf2:	49 89 0c c1          	mov    QWORD PTR [r9+rax*8],rcx
  675bf6:	48 ff c0             	inc    rax
  675bf9:	48 3b c7             	cmp    rax,rdi
  675bfc:	72 e8                	jb     675be6 <gls_corstep_mod_mp_gls_corstep_tile_+0xe476>
  675bfe:	8b 85 a0 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1360]
  675c04:	3b 85 10 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x13f0]
  675c0a:	b8 00 00 00 00       	mov    eax,0x0
  675c0f:	0f 8c a5 19 00 00    	jl     6775ba <gls_corstep_mod_mp_gls_corstep_tile_+0xfe4a>
  675c15:	48 89 85 90 e2 ff ff 	mov    QWORD PTR [rbp-0x1d70],rax
  675c1c:	4c 8b b5 58 ed ff ff 	mov    r14,QWORD PTR [rbp-0x12a8]
  675c23:	4c 8b ad 98 ee ff ff 	mov    r13,QWORD PTR [rbp-0x1168]
  675c2a:	4c 8b a5 68 ed ff ff 	mov    r12,QWORD PTR [rbp-0x1298]
  675c31:	4c 8b bd e8 ec ff ff 	mov    r15,QWORD PTR [rbp-0x1318]
  675c38:	e9 c8 00 00 00       	jmp    675d05 <gls_corstep_mod_mp_gls_corstep_tile_+0xe595>
  675c3d:	8b 85 a0 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1360]
  675c43:	3b 85 10 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x13f0]
  675c49:	0f 8c bf 1a 00 00    	jl     67770e <gls_corstep_mod_mp_gls_corstep_tile_+0xff9e>
  675c4f:	b8 01 00 00 00       	mov    eax,0x1
  675c54:	48 83 bd e0 ec ff ff 	cmp    QWORD PTR [rbp-0x1320],0x1
  675c5b:	01 
  675c5c:	0f 86 c2 19 00 00    	jbe    677624 <gls_corstep_mod_mp_gls_corstep_tile_+0xfeb4>
  675c62:	48 89 85 90 e2 ff ff 	mov    QWORD PTR [rbp-0x1d70],rax
  675c69:	4c 8b b5 58 ed ff ff 	mov    r14,QWORD PTR [rbp-0x12a8]
  675c70:	4c 8b ad 98 ee ff ff 	mov    r13,QWORD PTR [rbp-0x1168]
  675c77:	4c 8b a5 68 ed ff ff 	mov    r12,QWORD PTR [rbp-0x1298]
  675c7e:	4c 8b bd e8 ec ff ff 	mov    r15,QWORD PTR [rbp-0x1318]
  675c85:	e9 5f 01 00 00       	jmp    675de9 <gls_corstep_mod_mp_gls_corstep_tile_+0xe679>
  675c8a:	8b 85 a0 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1360]
  675c90:	3b 85 10 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x13f0]
  675c96:	b8 00 00 00 00       	mov    eax,0x0
  675c9b:	7d 2a                	jge    675cc7 <gls_corstep_mod_mp_gls_corstep_tile_+0xe557>
  675c9d:	e9 74 01 00 00       	jmp    675e16 <gls_corstep_mod_mp_gls_corstep_tile_+0xe6a6>
  675ca2:	8b 85 a0 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1360]
  675ca8:	3b 85 10 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x13f0]
  675cae:	0f 8c 5c 1b 00 00    	jl     677810 <gls_corstep_mod_mp_gls_corstep_tile_+0x100a0>
  675cb4:	b8 01 00 00 00       	mov    eax,0x1
  675cb9:	48 83 bd e0 ec ff ff 	cmp    QWORD PTR [rbp-0x1320],0x1
  675cc0:	01 
  675cc1:	0f 86 4f 01 00 00    	jbe    675e16 <gls_corstep_mod_mp_gls_corstep_tile_+0xe6a6>
  675cc7:	4c 8b b5 58 ed ff ff 	mov    r14,QWORD PTR [rbp-0x12a8]
  675cce:	4c 8b ad 98 ee ff ff 	mov    r13,QWORD PTR [rbp-0x1168]
  675cd5:	4c 8b a5 68 ed ff ff 	mov    r12,QWORD PTR [rbp-0x1298]
  675cdc:	4c 8b bd e8 ec ff ff 	mov    r15,QWORD PTR [rbp-0x1318]
  675ce3:	48 8b 95 e0 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1320]
  675cea:	8b 8d c0 ee ff ff    	mov    ecx,DWORD PTR [rbp-0x1140]
  675cf0:	8b b5 c8 ee ff ff    	mov    esi,DWORD PTR [rbp-0x1138]
  675cf6:	3b ce                	cmp    ecx,esi
  675cf8:	0f 8c 05 01 00 00    	jl     675e03 <gls_corstep_mod_mp_gls_corstep_tile_+0xe693>
  675cfe:	48 89 85 90 e2 ff ff 	mov    QWORD PTR [rbp-0x1d70],rax
  675d05:	48 83 ff 04          	cmp    rdi,0x4
  675d09:	0f 8c f9 1a 00 00    	jl     677808 <gls_corstep_mod_mp_gls_corstep_tile_+0x10098>
  675d0f:	49 89 c2             	mov    r10,rax
  675d12:	45 33 c9             	xor    r9d,r9d
  675d15:	4c 0f af 95 d0 ee ff 	imul   r10,QWORD PTR [rbp-0x1130]
  675d1c:	ff 
  675d1d:	48 8b 85 70 ed ff ff 	mov    rax,QWORD PTR [rbp-0x1290]
  675d24:	4f 8d 04 17          	lea    r8,[r15+r10*1]
  675d28:	4c 8b 9d 98 ef ff ff 	mov    r11,QWORD PTR [rbp-0x1068]
  675d2f:	4b 8d 0c 14          	lea    rcx,[r12+r10*1]
  675d33:	4c 89 df             	mov    rdi,r11
  675d36:	4b 8d 54 15 00       	lea    rdx,[r13+r10*1+0x0]
  675d3b:	4a 8d 34 10          	lea    rsi,[rax+r10*1]
  675d3f:	4b 8d 04 16          	lea    rax,[r14+r10*1]
  675d43:	4c 03 95 50 ed ff ff 	add    r10,QWORD PTR [rbp-0x12b0]
  675d4a:	c4 81 7d 10 04 ca    	vmovupd ymm0,YMMWORD PTR [r10+r9*8]
  675d50:	c4 a1 7d 10 14 c8    	vmovupd ymm2,YMMWORD PTR [rax+r9*8]
  675d56:	c4 a1 7d 5c 4c ce f8 	vsubpd ymm1,ymm0,YMMWORD PTR [rsi+r9*8-0x8]
  675d5d:	c4 81 6d 5c 5c c8 f8 	vsubpd ymm3,ymm2,YMMWORD PTR [r8+r9*8-0x8]
  675d64:	c4 a1 7d 11 4c ca f8 	vmovupd YMMWORD PTR [rdx+r9*8-0x8],ymm1
  675d6b:	c4 a1 7d 11 5c c9 f8 	vmovupd YMMWORD PTR [rcx+r9*8-0x8],ymm3
  675d72:	49 83 c1 04          	add    r9,0x4
  675d76:	4c 3b cf             	cmp    r9,rdi
  675d79:	72 cf                	jb     675d4a <gls_corstep_mod_mp_gls_corstep_tile_+0xe5da>
  675d7b:	48 8b bd 88 ef ff ff 	mov    rdi,QWORD PTR [rbp-0x1078]
  675d82:	4c 3b df             	cmp    r11,rdi
  675d85:	73 62                	jae    675de9 <gls_corstep_mod_mp_gls_corstep_tile_+0xe679>
  675d87:	48 8b 85 90 e2 ff ff 	mov    rax,QWORD PTR [rbp-0x1d70]
  675d8e:	48 0f af 85 d0 ee ff 	imul   rax,QWORD PTR [rbp-0x1130]
  675d95:	ff 
  675d96:	48 8b 95 70 ed ff ff 	mov    rdx,QWORD PTR [rbp-0x1290]
  675d9d:	4d 8d 0c 07          	lea    r9,[r15+rax*1]
  675da1:	49 8d 34 04          	lea    rsi,[r12+rax*1]
  675da5:	49 8d 4c 05 00       	lea    rcx,[r13+rax*1+0x0]
  675daa:	4c 8d 04 02          	lea    r8,[rdx+rax*1]
  675dae:	49 8d 14 06          	lea    rdx,[r14+rax*1]
  675db2:	48 03 85 50 ed ff ff 	add    rax,QWORD PTR [rbp-0x12b0]
  675db9:	c4 a1 7b 10 04 d8    	vmovsd xmm0,QWORD PTR [rax+r11*8]
  675dbf:	c4 a1 7b 10 14 da    	vmovsd xmm2,QWORD PTR [rdx+r11*8]
  675dc5:	c4 81 7b 5c 4c d8 f8 	vsubsd xmm1,xmm0,QWORD PTR [r8+r11*8-0x8]
  675dcc:	c4 81 6b 5c 5c d9 f8 	vsubsd xmm3,xmm2,QWORD PTR [r9+r11*8-0x8]
  675dd3:	c4 a1 7b 11 4c d9 f8 	vmovsd QWORD PTR [rcx+r11*8-0x8],xmm1
  675dda:	c4 a1 7b 11 5c de f8 	vmovsd QWORD PTR [rsi+r11*8-0x8],xmm3
  675de1:	49 ff c3             	inc    r11
  675de4:	4c 3b df             	cmp    r11,rdi
  675de7:	72 d0                	jb     675db9 <gls_corstep_mod_mp_gls_corstep_tile_+0xe649>
  675de9:	48 8b 85 90 e2 ff ff 	mov    rax,QWORD PTR [rbp-0x1d70]
  675df0:	48 8b 95 e0 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1320]
  675df7:	8b 8d c0 ee ff ff    	mov    ecx,DWORD PTR [rbp-0x1140]
  675dfd:	8b b5 c8 ee ff ff    	mov    esi,DWORD PTR [rbp-0x1138]
  675e03:	48 ff c0             	inc    rax
  675e06:	48 3b c2             	cmp    rax,rdx
  675e09:	0f 82 e7 fe ff ff    	jb     675cf6 <gls_corstep_mod_mp_gls_corstep_tile_+0xe586>
  675e0f:	4c 89 ad 98 ee ff ff 	mov    QWORD PTR [rbp-0x1168],r13
  675e16:	8b 85 a0 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1360]
  675e1c:	45 33 db             	xor    r11d,r11d
  675e1f:	3b 85 c0 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x1340]
  675e25:	0f 8c 27 05 00 00    	jl     676352 <gls_corstep_mod_mp_gls_corstep_tile_+0xebe2>
  675e2b:	8b 85 c0 ee ff ff    	mov    eax,DWORD PTR [rbp-0x1140]
  675e31:	3b 85 c8 ee ff ff    	cmp    eax,DWORD PTR [rbp-0x1138]
  675e37:	0f 8c fe 04 00 00    	jl     67633b <gls_corstep_mod_mp_gls_corstep_tile_+0xebcb>
  675e3d:	48 83 bd 88 ef ff ff 	cmp    QWORD PTR [rbp-0x1078],0x4
  675e44:	04 
  675e45:	0f 8c 9d 19 00 00    	jl     6777e8 <gls_corstep_mod_mp_gls_corstep_tile_+0x10078>
  675e4b:	4c 89 d9             	mov    rcx,r11
  675e4e:	48 0f af 8d d0 ee ff 	imul   rcx,QWORD PTR [rbp-0x1130]
  675e55:	ff 
  675e56:	4c 8b ad 68 ed ff ff 	mov    r13,QWORD PTR [rbp-0x1298]
  675e5d:	4c 8b 95 10 ee ff ff 	mov    r10,QWORD PTR [rbp-0x11f0]
  675e64:	48 8b bd 08 ee ff ff 	mov    rdi,QWORD PTR [rbp-0x11f8]
  675e6b:	48 8b 85 00 ee ff ff 	mov    rax,QWORD PTR [rbp-0x1200]
  675e72:	4d 8d 74 0d 00       	lea    r14,[r13+rcx*1+0x0]
  675e77:	4c 89 b5 60 e2 ff ff 	mov    QWORD PTR [rbp-0x1da0],r14
  675e7e:	4d 8d 34 0a          	lea    r14,[r10+rcx*1]
  675e82:	4c 89 b5 50 e2 ff ff 	mov    QWORD PTR [rbp-0x1db0],r14
  675e89:	4c 8d 04 0f          	lea    r8,[rdi+rcx*1]
  675e8d:	4c 8b a5 38 ef ff ff 	mov    r12,QWORD PTR [rbp-0x10c8]
  675e94:	4c 8d 0c 08          	lea    r9,[rax+rcx*1]
  675e98:	4c 8b bd d8 ee ff ff 	mov    r15,QWORD PTR [rbp-0x1128]
  675e9f:	4c 8b b5 30 ef ff ff 	mov    r14,QWORD PTR [rbp-0x10d0]
  675ea6:	48 8b bd e0 ed ff ff 	mov    rdi,QWORD PTR [rbp-0x1220]
  675ead:	4d 0f af e7          	imul   r12,r15
  675eb1:	4d 0f af f7          	imul   r14,r15
  675eb5:	49 0f af ff          	imul   rdi,r15
  675eb9:	4d 89 df             	mov    r15,r11
  675ebc:	4c 0f af bd d8 ed ff 	imul   r15,QWORD PTR [rbp-0x1228]
  675ec3:	ff 
  675ec4:	48 8b 85 48 ef ff ff 	mov    rax,QWORD PTR [rbp-0x10b8]
  675ecb:	49 0f af c3          	imul   rax,r11
  675ecf:	48 8b b5 98 ee ff ff 	mov    rsi,QWORD PTR [rbp-0x1168]
  675ed6:	4c 89 85 50 e7 ff ff 	mov    QWORD PTR [rbp-0x18b0],r8
  675edd:	4c 8b 85 30 ee ff ff 	mov    r8,QWORD PTR [rbp-0x11d0]
  675ee4:	4c 89 8d 48 e7 ff ff 	mov    QWORD PTR [rbp-0x18b8],r9
  675eeb:	4c 8d 2c 0e          	lea    r13,[rsi+rcx*1]
  675eef:	48 8b b5 98 ed ff ff 	mov    rsi,QWORD PTR [rbp-0x1268]
  675ef6:	4c 8b 8d 50 ee ff ff 	mov    r9,QWORD PTR [rbp-0x11b0]
  675efd:	48 8b 95 98 ef ff ff 	mov    rdx,QWORD PTR [rbp-0x1068]
  675f04:	48 89 95 80 e6 ff ff 	mov    QWORD PTR [rbp-0x1980],rdx
  675f0b:	48 03 f7             	add    rsi,rdi
  675f0e:	48 03 bd 38 ee ff ff 	add    rdi,QWORD PTR [rbp-0x11c8]
  675f15:	49 03 f7             	add    rsi,r15
  675f18:	4c 03 ff             	add    r15,rdi
  675f1b:	4b 8d 3c 20          	lea    rdi,[r8+r12*1]
  675f1f:	4c 03 a5 40 ee ff ff 	add    r12,QWORD PTR [rbp-0x11c0]
  675f26:	48 03 f8             	add    rdi,rax
  675f29:	4c 03 e0             	add    r12,rax
  675f2c:	33 d2                	xor    edx,edx
  675f2e:	48 8b 85 40 ef ff ff 	mov    rax,QWORD PTR [rbp-0x10c0]
  675f35:	4f 8d 04 31          	lea    r8,[r9+r14*1]
  675f39:	49 0f af c3          	imul   rax,r11
  675f3d:	45 33 c9             	xor    r9d,r9d
  675f40:	4c 03 c0             	add    r8,rax
  675f43:	4c 03 b5 48 ee ff ff 	add    r14,QWORD PTR [rbp-0x11b8]
  675f4a:	45 33 d2             	xor    r10d,r10d
  675f4d:	4c 03 f0             	add    r14,rax
  675f50:	33 c0                	xor    eax,eax
  675f52:	4c 89 a5 38 e7 ff ff 	mov    QWORD PTR [rbp-0x18c8],r12
  675f59:	4c 89 ad 30 e7 ff ff 	mov    QWORD PTR [rbp-0x18d0],r13
  675f60:	4c 89 9d 00 e6 ff ff 	mov    QWORD PTR [rbp-0x1a00],r11
  675f67:	c5 dd 76 e4          	vpcmpeqd ymm4,ymm4,ymm4
  675f6b:	48 03 8d 18 ee ff ff 	add    rcx,QWORD PTR [rbp-0x11e8]
  675f72:	49 89 c3             	mov    r11,rax
  675f75:	4c 8b a5 50 e2 ff ff 	mov    r12,QWORD PTR [rbp-0x1db0]
  675f7c:	4c 8b ad 60 e2 ff ff 	mov    r13,QWORD PTR [rbp-0x1da0]
  675f83:	4c 89 b5 28 e7 ff ff 	mov    QWORD PTR [rbp-0x18d8],r14
  675f8a:	4c 89 bd 40 e7 ff ff 	mov    QWORD PTR [rbp-0x18c0],r15
  675f91:	4c 8b b5 c0 ef ff ff 	mov    r14,QWORD PTR [rbp-0x1040]
  675f98:	4e 8d 3c 16          	lea    r15,[rsi+r10*1]
  675f9c:	c4 c1 7b 10 2f       	vmovsd xmm5,QWORD PTR [r15]
  675fa1:	48 83 c2 04          	add    rdx,0x4
  675fa5:	c4 01 51 16 2c 37    	vmovhpd xmm13,xmm5,QWORD PTR [r15+r14*1]
  675fab:	4f 8d 3c 77          	lea    r15,[r15+r14*2]
  675faf:	c4 c1 7b 10 37       	vmovsd xmm6,QWORD PTR [r15]
  675fb4:	c4 01 49 16 34 37    	vmovhpd xmm14,xmm6,QWORD PTR [r15+r14*1]
  675fba:	4c 8b bd 40 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x18c0]
  675fc1:	c4 c3 15 18 c6 01    	vinsertf128 ymm0,ymm13,xmm14,0x1
  675fc7:	4d 03 fa             	add    r15,r10
  675fca:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  675fcf:	4f 8d 14 b2          	lea    r10,[r10+r14*4]
  675fd3:	c4 81 01 16 0c 37    	vmovhpd xmm1,xmm15,QWORD PTR [r15+r14*1]
  675fd9:	4f 8d 3c 77          	lea    r15,[r15+r14*2]
  675fdd:	c4 c1 7b 10 1f       	vmovsd xmm3,QWORD PTR [r15]
  675fe2:	c4 81 61 16 14 37    	vmovhpd xmm2,xmm3,QWORD PTR [r15+r14*1]
  675fe8:	4c 8b bd 30 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x18d0]
  675fef:	4c 8b b5 38 e7 ff ff 	mov    r14,QWORD PTR [rbp-0x18c8]
  675ff6:	c4 e3 75 18 ea 01    	vinsertf128 ymm5,ymm1,xmm2,0x1
  675ffc:	4c 03 f0             	add    r14,rax
  675fff:	c5 fd 58 f5          	vaddpd ymm6,ymm0,ymm5
  676003:	c5 ad 59 c6          	vmulpd ymm0,ymm10,ymm6
  676007:	c4 c1 7d c2 d4 0e    	vcmpgtpd ymm2,ymm0,ymm12
  67600d:	c5 6d 57 fc          	vxorpd ymm15,ymm2,ymm4
  676011:	c4 02 6d 2d 74 39 f8 	vmaskmovpd ymm14,ymm2,YMMWORD PTR [r9+r15*1-0x8]
  676018:	4c 8b bd f8 ef ff ff 	mov    r15,QWORD PTR [rbp-0x1008]
  67601f:	c4 02 05 2d 2c 21    	vmaskmovpd ymm13,ymm15,YMMWORD PTR [r9+r12*1]
  676025:	c4 c3 15 4b ee 20    	vblendvpd ymm5,ymm13,ymm14,ymm2
  67602b:	c4 41 7b 10 2e       	vmovsd xmm13,QWORD PTR [r14]
  676030:	c4 c2 05 2d 1c 09    	vmaskmovpd ymm3,ymm15,YMMWORD PTR [r9+rcx*1]
  676036:	c4 01 11 16 3c 3e    	vmovhpd xmm15,xmm13,QWORD PTR [r14+r15*1]
  67603c:	4f 8d 34 7e          	lea    r14,[r14+r15*2]
  676040:	c4 41 7b 10 36       	vmovsd xmm14,QWORD PTR [r14]
  676045:	c4 82 6d 2d 4c 29 f8 	vmaskmovpd ymm1,ymm2,YMMWORD PTR [r9+r13*1-0x8]
  67604c:	c4 e3 65 4b f1 20    	vblendvpd ymm6,ymm3,ymm1,ymm2
  676052:	c4 c1 7d 59 da       	vmulpd ymm3,ymm0,ymm10
  676057:	c4 81 09 16 04 3e    	vmovhpd xmm0,xmm14,QWORD PTR [r14+r15*1]
  67605d:	c4 c1 55 59 d0       	vmulpd ymm2,ymm5,ymm8
  676062:	c4 c1 4d 59 c8       	vmulpd ymm1,ymm6,ymm8
  676067:	4c 8d 34 07          	lea    r14,[rdi+rax*1]
  67606b:	c4 c1 7b 10 2e       	vmovsd xmm5,QWORD PTR [r14]
  676070:	4a 8d 04 b8          	lea    rax,[rax+r15*4]
  676074:	c4 01 51 16 2c 3e    	vmovhpd xmm13,xmm5,QWORD PTR [r14+r15*1]
  67607a:	4f 8d 34 7e          	lea    r14,[r14+r15*2]
  67607e:	c4 c1 7b 10 36       	vmovsd xmm6,QWORD PTR [r14]
  676083:	c4 01 49 16 34 3e    	vmovhpd xmm14,xmm6,QWORD PTR [r14+r15*1]
  676089:	4c 8b b5 48 e7 ff ff 	mov    r14,QWORD PTR [rbp-0x18b8]
  676090:	4c 8b bd 28 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x18d8]
  676097:	4d 03 fb             	add    r15,r11
  67609a:	c4 e3 05 18 c0 01    	vinsertf128 ymm0,ymm15,xmm0,0x1
  6760a0:	c4 c3 15 18 ee 01    	vinsertf128 ymm5,ymm13,xmm14,0x1
  6760a6:	c5 fd 58 c5          	vaddpd ymm0,ymm0,ymm5
  6760aa:	c5 fd 5c d2          	vsubpd ymm2,ymm0,ymm2
  6760ae:	c5 e5 59 c2          	vmulpd ymm0,ymm3,ymm2
  6760b2:	c4 c1 7b 10 17       	vmovsd xmm2,QWORD PTR [r15]
  6760b7:	c4 81 7d 11 04 31    	vmovupd YMMWORD PTR [r9+r14*1],ymm0
  6760bd:	4c 8b b5 f0 ef ff ff 	mov    r14,QWORD PTR [rbp-0x1010]
  6760c4:	c4 81 69 16 34 37    	vmovhpd xmm6,xmm2,QWORD PTR [r15+r14*1]
  6760ca:	4f 8d 3c 77          	lea    r15,[r15+r14*2]
  6760ce:	c4 c1 7b 10 2f       	vmovsd xmm5,QWORD PTR [r15]
  6760d3:	90                   	nop
  6760d4:	c4 01 51 16 2c 37    	vmovhpd xmm13,xmm5,QWORD PTR [r15+r14*1]
  6760da:	4f 8d 3c 18          	lea    r15,[r8+r11*1]
  6760de:	c4 41 7b 10 37       	vmovsd xmm14,QWORD PTR [r15]
  6760e3:	4f 8d 1c b3          	lea    r11,[r11+r14*4]
  6760e7:	c4 01 09 16 34 37    	vmovhpd xmm14,xmm14,QWORD PTR [r15+r14*1]
  6760ed:	4f 8d 3c 77          	lea    r15,[r15+r14*2]
  6760f1:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  6760f6:	c4 01 01 16 3c 37    	vmovhpd xmm15,xmm15,QWORD PTR [r15+r14*1]
  6760fc:	4c 8b bd 50 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x18b0]
  676103:	c4 c3 4d 18 c5 01    	vinsertf128 ymm0,ymm6,xmm13,0x1
  676109:	c4 c3 0d 18 d7 01    	vinsertf128 ymm2,ymm14,xmm15,0x1
  67610f:	c5 fd 58 ea          	vaddpd ymm5,ymm0,ymm2
  676113:	c5 d5 5c c9          	vsubpd ymm1,ymm5,ymm1
  676117:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  67611b:	c4 81 7d 11 1c 39    	vmovupd YMMWORD PTR [r9+r15*1],ymm3
  676121:	49 83 c1 20          	add    r9,0x20
  676125:	48 3b 95 98 ef ff ff 	cmp    rdx,QWORD PTR [rbp-0x1068]
  67612c:	0f 82 5f fe ff ff    	jb     675f91 <gls_corstep_mod_mp_gls_corstep_tile_+0xe821>
  676132:	4c 8b 9d 00 e6 ff ff 	mov    r11,QWORD PTR [rbp-0x1a00]
  676139:	48 8b 85 80 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x1980]
  676140:	48 8b bd f0 ef ff ff 	mov    rdi,QWORD PTR [rbp-0x1010]
  676147:	4c 8b 8d f8 ef ff ff 	mov    r9,QWORD PTR [rbp-0x1008]
  67614e:	4c 8b ad c0 ef ff ff 	mov    r13,QWORD PTR [rbp-0x1040]
  676155:	48 0f af f8          	imul   rdi,rax
  676159:	4c 0f af c8          	imul   r9,rax
  67615d:	4c 0f af e8          	imul   r13,rax
  676161:	48 3b 85 88 ef ff ff 	cmp    rax,QWORD PTR [rbp-0x1078]
  676168:	0f 83 cd 01 00 00    	jae    67633b <gls_corstep_mod_mp_gls_corstep_tile_+0xebcb>
  67616e:	4d 89 da             	mov    r10,r11
  676171:	4c 0f af 95 d0 ee ff 	imul   r10,QWORD PTR [rbp-0x1130]
  676178:	ff 
  676179:	48 8b 85 48 ed ff ff 	mov    rax,QWORD PTR [rbp-0x12b8]
  676180:	4c 8b 85 98 ee ff ff 	mov    r8,QWORD PTR [rbp-0x1168]
  676187:	48 8b 95 d8 ee ff ff 	mov    rdx,QWORD PTR [rbp-0x1128]
  67618e:	4c 8b b5 38 ef ff ff 	mov    r14,QWORD PTR [rbp-0x10c8]
  676195:	4a 8d 34 10          	lea    rsi,[rax+r10*1]
  676199:	48 8b 85 08 ee ff ff 	mov    rax,QWORD PTR [rbp-0x11f8]
  6761a0:	4b 8d 0c 10          	lea    rcx,[r8+r10*1]
  6761a4:	4c 8b 85 40 ed ff ff 	mov    r8,QWORD PTR [rbp-0x12c0]
  6761ab:	48 89 8d 00 e7 ff ff 	mov    QWORD PTR [rbp-0x1900],rcx
  6761b2:	4c 0f af f2          	imul   r14,rdx
  6761b6:	48 89 b5 f0 e6 ff ff 	mov    QWORD PTR [rbp-0x1910],rsi
  6761bd:	4e 8d 3c 10          	lea    r15,[rax+r10*1]
  6761c1:	48 8b 85 e0 ed ff ff 	mov    rax,QWORD PTR [rbp-0x1220]
  6761c8:	4b 8d 0c 10          	lea    rcx,[r8+r10*1]
  6761cc:	48 0f af c2          	imul   rax,rdx
  6761d0:	4c 8b 85 30 ef ff ff 	mov    r8,QWORD PTR [rbp-0x10d0]
  6761d7:	4c 0f af c2          	imul   r8,rdx
  6761db:	4c 89 da             	mov    rdx,r11
  6761de:	48 0f af 95 d8 ed ff 	imul   rdx,QWORD PTR [rbp-0x1228]
  6761e5:	ff 
  6761e6:	48 8b b5 98 ed ff ff 	mov    rsi,QWORD PTR [rbp-0x1268]
  6761ed:	48 89 8d f8 e6 ff ff 	mov    QWORD PTR [rbp-0x1908],rcx
  6761f4:	4c 89 bd 58 e2 ff ff 	mov    QWORD PTR [rbp-0x1da8],r15
  6761fb:	4c 8b bd 30 ee ff ff 	mov    r15,QWORD PTR [rbp-0x11d0]
  676202:	48 8d 0c 06          	lea    rcx,[rsi+rax*1]
  676206:	48 8b b5 48 ef ff ff 	mov    rsi,QWORD PTR [rbp-0x10b8]
  67620d:	48 03 ca             	add    rcx,rdx
  676210:	49 0f af f3          	imul   rsi,r11
  676214:	48 03 85 38 ee ff ff 	add    rax,QWORD PTR [rbp-0x11c8]
  67621b:	48 03 d0             	add    rdx,rax
  67621e:	4b 8d 04 37          	lea    rax,[r15+r14*1]
  676222:	4c 8b bd 40 ef ff ff 	mov    r15,QWORD PTR [rbp-0x10c0]
  676229:	48 03 c6             	add    rax,rsi
  67622c:	4d 0f af fb          	imul   r15,r11
  676230:	4c 03 b5 40 ee ff ff 	add    r14,QWORD PTR [rbp-0x11c0]
  676237:	4c 8b a5 68 ed ff ff 	mov    r12,QWORD PTR [rbp-0x1298]
  67623e:	4c 03 f6             	add    r14,rsi
  676241:	48 8b b5 50 ee ff ff 	mov    rsi,QWORD PTR [rbp-0x11b0]
  676248:	4c 89 9d 00 e6 ff ff 	mov    QWORD PTR [rbp-0x1a00],r11
  67624f:	4c 8b 9d 58 e2 ff ff 	mov    r11,QWORD PTR [rbp-0x1da8]
  676256:	4d 03 e2             	add    r12,r10
  676259:	4c 89 a5 e8 e6 ff ff 	mov    QWORD PTR [rbp-0x1918],r12
  676260:	49 03 f0             	add    rsi,r8
  676263:	4c 03 85 48 ee ff ff 	add    r8,QWORD PTR [rbp-0x11b8]
  67626a:	49 03 f7             	add    rsi,r15
  67626d:	4c 03 95 00 ee ff ff 	add    r10,QWORD PTR [rbp-0x1200]
  676274:	4d 03 c7             	add    r8,r15
  676277:	4c 8b a5 80 e6 ff ff 	mov    r12,QWORD PTR [rbp-0x1980]
  67627e:	c4 c1 7b 10 44 0d 00 	vmovsd xmm0,QWORD PTR [r13+rcx*1+0x0]
  676285:	c4 c1 7b 58 4c 15 00 	vaddsd xmm1,xmm0,QWORD PTR [r13+rdx*1+0x0]
  67628c:	c5 a3 59 c1          	vmulsd xmm0,xmm11,xmm1
  676290:	c4 c1 79 2f c1       	vcomisd xmm0,xmm9
  676295:	76 1e                	jbe    6762b5 <gls_corstep_mod_mp_gls_corstep_tile_+0xeb45>
  676297:	4c 8b bd 00 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1900]
  67629e:	c4 81 7b 10 5c e7 f8 	vmovsd xmm3,QWORD PTR [r15+r12*8-0x8]
  6762a5:	4c 8b bd e8 e6 ff ff 	mov    r15,QWORD PTR [rbp-0x1918]
  6762ac:	c4 81 7b 10 4c e7 f8 	vmovsd xmm1,QWORD PTR [r15+r12*8-0x8]
  6762b3:	eb 1a                	jmp    6762cf <gls_corstep_mod_mp_gls_corstep_tile_+0xeb5f>
  6762b5:	4c 8b bd f8 e6 ff ff 	mov    r15,QWORD PTR [rbp-0x1908]
  6762bc:	c4 81 7b 10 1c e7    	vmovsd xmm3,QWORD PTR [r15+r12*8]
  6762c2:	4c 8b bd f0 e6 ff ff 	mov    r15,QWORD PTR [rbp-0x1910]
  6762c9:	c4 81 7b 10 0c e7    	vmovsd xmm1,QWORD PTR [r15+r12*8]
  6762cf:	c4 81 7b 10 14 31    	vmovsd xmm2,QWORD PTR [r9+r14*1]
  6762d5:	c4 21 7b 10 2c 07    	vmovsd xmm13,QWORD PTR [rdi+r8*1]
  6762db:	c5 c3 59 db          	vmulsd xmm3,xmm7,xmm3
  6762df:	c4 c1 6b 58 24 01    	vaddsd xmm4,xmm2,QWORD PTR [r9+rax*1]
  6762e5:	c5 13 58 34 37       	vaddsd xmm14,xmm13,QWORD PTR [rdi+rsi*1]
  6762ea:	c5 c3 59 c9          	vmulsd xmm1,xmm7,xmm1
  6762ee:	c5 a3 59 c0          	vmulsd xmm0,xmm11,xmm0
  6762f2:	c5 db 5c eb          	vsubsd xmm5,xmm4,xmm3
  6762f6:	c5 0b 5c f9          	vsubsd xmm15,xmm14,xmm1
  6762fa:	c5 fb 59 f5          	vmulsd xmm6,xmm0,xmm5
  6762fe:	c4 c1 7b 59 c7       	vmulsd xmm0,xmm0,xmm15
  676303:	c4 81 7b 11 34 e2    	vmovsd QWORD PTR [r10+r12*8],xmm6
  676309:	c4 81 7b 11 04 e3    	vmovsd QWORD PTR [r11+r12*8],xmm0
  67630f:	49 ff c4             	inc    r12
  676312:	4c 03 ad c0 ef ff ff 	add    r13,QWORD PTR [rbp-0x1040]
  676319:	4c 03 8d f8 ef ff ff 	add    r9,QWORD PTR [rbp-0x1008]
  676320:	48 03 bd f0 ef ff ff 	add    rdi,QWORD PTR [rbp-0x1010]
  676327:	4c 3b a5 88 ef ff ff 	cmp    r12,QWORD PTR [rbp-0x1078]
  67632e:	0f 82 4a ff ff ff    	jb     67627e <gls_corstep_mod_mp_gls_corstep_tile_+0xeb0e>
  676334:	4c 8b 9d 00 e6 ff ff 	mov    r11,QWORD PTR [rbp-0x1a00]
  67633b:	49 ff c3             	inc    r11
  67633e:	4c 3b 9d a8 ee ff ff 	cmp    r11,QWORD PTR [rbp-0x1158]
  676345:	0f 82 e0 fa ff ff    	jb     675e2b <gls_corstep_mod_mp_gls_corstep_tile_+0xe6bb>
  67634b:	48 8b bd 88 ef ff ff 	mov    rdi,QWORD PTR [rbp-0x1078]
  676352:	8b 85 b8 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1348]
  676358:	3b 85 c0 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x1340]
  67635e:	b8 00 00 00 00       	mov    eax,0x0
  676363:	0f 8c 91 12 00 00    	jl     6775fa <gls_corstep_mod_mp_gls_corstep_tile_+0xfe8a>
  676369:	48 8b 95 d8 ee ff ff 	mov    rdx,QWORD PTR [rbp-0x1128]
  676370:	41 ba 01 00 00 00    	mov    r10d,0x1
  676376:	48 8b b5 e0 ee ff ff 	mov    rsi,QWORD PTR [rbp-0x1120]
  67637d:	41 bb 02 00 00 00    	mov    r11d,0x2
  676383:	48 8b 8d f0 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x1010]
  67638a:	45 33 e4             	xor    r12d,r12d
  67638d:	48 8b bd 20 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x13e0]
  676394:	44 8b 85 b8 ec ff ff 	mov    r8d,DWORD PTR [rbp-0x1348]
  67639b:	44 8b 8d c0 ec ff ff 	mov    r9d,DWORD PTR [rbp-0x1340]
  6763a2:	48 89 95 d8 ee ff ff 	mov    QWORD PTR [rbp-0x1128],rdx
  6763a9:	8b 95 c0 ee ff ff    	mov    edx,DWORD PTR [rbp-0x1140]
  6763af:	3b 95 c8 ee ff ff    	cmp    edx,DWORD PTR [rbp-0x1138]
  6763b5:	0f 8c 9a 04 00 00    	jl     676855 <gls_corstep_mod_mp_gls_corstep_tile_+0xf0e5>
  6763bb:	48 8b 95 18 ed ff ff 	mov    rdx,QWORD PTR [rbp-0x12e8]
  6763c2:	48 8b bd f0 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x1310]
  6763c9:	48 8b 8d 10 ed ff ff 	mov    rcx,QWORD PTR [rbp-0x12f0]
  6763d0:	48 8b b5 08 ed ff ff 	mov    rsi,QWORD PTR [rbp-0x12f8]
  6763d7:	c5 fb 10 74 fa f8    	vmovsd xmm6,QWORD PTR [rdx+rdi*8-0x8]
  6763dd:	c5 fb 10 64 f9 f8    	vmovsd xmm4,QWORD PTR [rcx+rdi*8-0x8]
  6763e3:	c5 fb 10 6c fe f8    	vmovsd xmm5,QWORD PTR [rsi+rdi*8-0x8]
  6763e9:	48 83 bd f0 ef ff ff 	cmp    QWORD PTR [rbp-0x1010],0x0
  6763f0:	00 
  6763f1:	0f 84 01 14 00 00    	je     6777f8 <gls_corstep_mod_mp_gls_corstep_tile_+0x10088>
  6763f7:	48 83 bd f8 ef ff ff 	cmp    QWORD PTR [rbp-0x1008],0x0
  6763fe:	00 
  6763ff:	0f 84 f3 13 00 00    	je     6777f8 <gls_corstep_mod_mp_gls_corstep_tile_+0x10088>
  676405:	48 83 bd 88 ef ff ff 	cmp    QWORD PTR [rbp-0x1078],0x2
  67640c:	02 
  67640d:	0f 8c e5 13 00 00    	jl     6777f8 <gls_corstep_mod_mp_gls_corstep_tile_+0x10088>
  676413:	48 8b 95 90 ef ff ff 	mov    rdx,QWORD PTR [rbp-0x1070]
  67641a:	48 89 c1             	mov    rcx,rax
  67641d:	48 89 95 88 e6 ff ff 	mov    QWORD PTR [rbp-0x1978],rdx
  676424:	48 89 c2             	mov    rdx,rax
  676427:	48 0f af 95 d0 ee ff 	imul   rdx,QWORD PTR [rbp-0x1130]
  67642e:	ff 
  67642f:	48 0f af 8d 48 ef ff 	imul   rcx,QWORD PTR [rbp-0x10b8]
  676436:	ff 
  676437:	4c 8b b5 60 ed ff ff 	mov    r14,QWORD PTR [rbp-0x12a0]
  67643e:	49 89 c3             	mov    r11,rax
  676441:	48 8b bd 90 ed ff ff 	mov    rdi,QWORD PTR [rbp-0x1270]
  676448:	49 89 c7             	mov    r15,rax
  67644b:	48 8b b5 d8 ee ff ff 	mov    rsi,QWORD PTR [rbp-0x1128]
  676452:	49 89 c0             	mov    r8,rax
  676455:	4c 0f af 9d 40 ef ff 	imul   r11,QWORD PTR [rbp-0x10c0]
  67645c:	ff 
  67645d:	4c 0f af bd b0 ed ff 	imul   r15,QWORD PTR [rbp-0x1250]
  676464:	ff 
  676465:	4c 0f af 85 a8 ed ff 	imul   r8,QWORD PTR [rbp-0x1258]
  67646c:	ff 
  67646d:	4c 8b 95 08 ee ff ff 	mov    r10,QWORD PTR [rbp-0x11f8]
  676474:	4d 8d 2c 16          	lea    r13,[r14+rdx*1]
  676478:	4c 8b a5 00 ee ff ff 	mov    r12,QWORD PTR [rbp-0x1200]
  67647f:	4c 8d 34 17          	lea    r14,[rdi+rdx*1]
  676483:	48 8b bd 38 ef ff ff 	mov    rdi,QWORD PTR [rbp-0x10c8]
  67648a:	45 33 c9             	xor    r9d,r9d
  67648d:	48 0f af fe          	imul   rdi,rsi
  676491:	48 03 bd 20 ed ff ff 	add    rdi,QWORD PTR [rbp-0x12e0]
  676498:	4c 03 e2             	add    r12,rdx
  67649b:	48 03 f9             	add    rdi,rcx
  67649e:	48 8b 8d 30 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x10d0]
  6764a5:	48 0f af ce          	imul   rcx,rsi
  6764a9:	48 8b b5 00 ed ff ff 	mov    rsi,QWORD PTR [rbp-0x1300]
  6764b0:	48 03 8d 78 ed ff ff 	add    rcx,QWORD PTR [rbp-0x1288]
  6764b7:	49 03 cb             	add    rcx,r11
  6764ba:	4c 89 ad 78 e2 ff ff 	mov    QWORD PTR [rbp-0x1d88],r13
  6764c1:	4c 8d 1c f5 00 00 00 	lea    r11,[rsi*8+0x0]
  6764c8:	00 
  6764c9:	48 8b b5 c0 ed ff ff 	mov    rsi,QWORD PTR [rbp-0x1240]
  6764d0:	49 f7 db             	neg    r11
  6764d3:	4c 03 bd 20 ee ff ff 	add    r15,QWORD PTR [rbp-0x11e0]
  6764da:	4d 8d 2c 12          	lea    r13,[r10+rdx*1]
  6764de:	45 33 d2             	xor    r10d,r10d
  6764e1:	48 03 f2             	add    rsi,rdx
  6764e4:	49 03 f3             	add    rsi,r11
  6764e7:	49 03 d3             	add    rdx,r11
  6764ea:	4c 8b 9d f8 ed ff ff 	mov    r11,QWORD PTR [rbp-0x1208]
  6764f1:	49 03 f3             	add    rsi,r11
  6764f4:	49 03 d3             	add    rdx,r11
  6764f7:	4c 8b 9d f8 ec ff ff 	mov    r11,QWORD PTR [rbp-0x1308]
  6764fe:	49 f7 db             	neg    r11
  676501:	49 03 d3             	add    rdx,r11
  676504:	49 03 f3             	add    rsi,r11
  676507:	4c 89 a5 58 e7 ff ff 	mov    QWORD PTR [rbp-0x18a8],r12
  67650e:	4c 89 ad 60 e7 ff ff 	mov    QWORD PTR [rbp-0x18a0],r13
  676515:	4c 89 b5 70 e7 ff ff 	mov    QWORD PTR [rbp-0x1890],r14
  67651c:	c5 fb 12 d6          	vmovddup xmm2,xmm6
  676520:	c5 fb 12 cc          	vmovddup xmm1,xmm4
  676524:	c5 fb 12 c5          	vmovddup xmm0,xmm5
  676528:	4c 03 85 28 ee ff ff 	add    r8,QWORD PTR [rbp-0x11d8]
  67652f:	48 03 95 c8 ed ff ff 	add    rdx,QWORD PTR [rbp-0x1238]
  676536:	4d 89 d3             	mov    r11,r10
  676539:	4c 8b a5 78 e2 ff ff 	mov    r12,QWORD PTR [rbp-0x1d88]
  676540:	4c 8b ad f8 ef ff ff 	mov    r13,QWORD PTR [rbp-0x1008]
  676547:	4c 8b b5 f0 ef ff ff 	mov    r14,QWORD PTR [rbp-0x1010]
  67654e:	4c 89 bd 68 e7 ff ff 	mov    QWORD PTR [rbp-0x1898],r15
  676555:	48 89 85 08 e6 ff ff 	mov    QWORD PTR [rbp-0x19f8],rax
  67655c:	4c 8b bd 68 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1898]
  676563:	c5 fb 10 1f          	vmovsd xmm3,QWORD PTR [rdi]
  676567:	c5 7b 10 31          	vmovsd xmm14,QWORD PTR [rcx]
  67656b:	c4 21 61 16 2c 2f    	vmovhpd xmm13,xmm3,QWORD PTR [rdi+r13*1]
  676571:	4b 8d 04 17          	lea    rax,[r15+r10*1]
  676575:	4c 8b bd a8 ef ff ff 	mov    r15,QWORD PTR [rbp-0x1058]
  67657c:	c5 7b 10 38          	vmovsd xmm15,QWORD PTR [rax]
  676580:	c4 a1 09 16 1c 31    	vmovhpd xmm3,xmm14,QWORD PTR [rcx+r14*1]
  676586:	c4 21 01 16 34 38    	vmovhpd xmm14,xmm15,QWORD PTR [rax+r15*1]
  67658c:	4f 8d 14 7a          	lea    r10,[r10+r15*2]
  676590:	c4 41 69 59 fe       	vmulpd xmm15,xmm2,xmm14
  676595:	4c 8b bd a0 ef ff ff 	mov    r15,QWORD PTR [rbp-0x1060]
  67659c:	4b 8d 04 18          	lea    rax,[r8+r11*1]
  6765a0:	c5 7b 10 30          	vmovsd xmm14,QWORD PTR [rax]
  6765a4:	c4 21 09 16 34 38    	vmovhpd xmm14,xmm14,QWORD PTR [rax+r15*1]
  6765aa:	4f 8d 1c 7b          	lea    r11,[r11+r15*2]
  6765ae:	48 8b 85 d0 ef ff ff 	mov    rax,QWORD PTR [rbp-0x1030]
  6765b5:	c4 41 01 59 f6       	vmulpd xmm14,xmm15,xmm14
  6765ba:	4c 8b bd 70 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1890]
  6765c1:	49 03 c1             	add    rax,r9
  6765c4:	c5 79 10 7c c6 08    	vmovupd xmm15,XMMWORD PTR [rsi+rax*8+0x8]
  6765ca:	c5 01 5c 3c c6       	vsubpd xmm15,xmm15,XMMWORD PTR [rsi+rax*8]
  6765cf:	c4 01 01 58 7c cf 08 	vaddpd xmm15,xmm15,XMMWORD PTR [r15+r9*8+0x8]
  6765d6:	4c 8b bd 58 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x18a8]
  6765dd:	c4 01 01 5c 3c cf    	vsubpd xmm15,xmm15,XMMWORD PTR [r15+r9*8]
  6765e3:	c4 41 09 59 ff       	vmulpd xmm15,xmm14,xmm15
  6765e8:	c4 41 11 5c ef       	vsubpd xmm13,xmm13,xmm15
  6765ed:	c5 79 10 7c c2 08    	vmovupd xmm15,XMMWORD PTR [rdx+rax*8+0x8]
  6765f3:	c5 11 5f e9          	vmaxpd xmm13,xmm13,xmm1
  6765f7:	c5 01 5c 3c c2       	vsubpd xmm15,xmm15,XMMWORD PTR [rdx+rax*8]
  6765fc:	c4 01 01 58 7c cc 08 	vaddpd xmm15,xmm15,XMMWORD PTR [r12+r9*8+0x8]
  676603:	48 8b 85 60 e7 ff ff 	mov    rax,QWORD PTR [rbp-0x18a0]
  67660a:	c5 7b 11 2f          	vmovsd QWORD PTR [rdi],xmm13
  67660e:	c4 41 79 17 6c 3d 00 	vmovhpd QWORD PTR [r13+rdi*1+0x0],xmm13
  676615:	4a 8d 3c 6f          	lea    rdi,[rdi+r13*2]
  676619:	c4 21 01 5c 3c c8    	vsubpd xmm15,xmm15,XMMWORD PTR [rax+r9*8]
  67661f:	c4 41 09 59 f7       	vmulpd xmm14,xmm14,xmm15
  676624:	c4 c1 61 5c de       	vsubpd xmm3,xmm3,xmm14
  676629:	c5 e1 5f d8          	vmaxpd xmm3,xmm3,xmm0
  67662d:	49 83 c1 02          	add    r9,0x2
  676631:	c5 fb 11 19          	vmovsd QWORD PTR [rcx],xmm3
  676635:	c4 c1 79 17 1c 0e    	vmovhpd QWORD PTR [r14+rcx*1],xmm3
  67663b:	4a 8d 0c 71          	lea    rcx,[rcx+r14*2]
  67663f:	4c 3b 8d 90 ef ff ff 	cmp    r9,QWORD PTR [rbp-0x1070]
  676646:	0f 82 10 ff ff ff    	jb     67655c <gls_corstep_mod_mp_gls_corstep_tile_+0xedec>
  67664c:	48 8b 85 08 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x19f8]
  676653:	48 8b b5 88 e6 ff ff 	mov    rsi,QWORD PTR [rbp-0x1978]
  67665a:	48 8b 95 f0 ef ff ff 	mov    rdx,QWORD PTR [rbp-0x1010]
  676661:	48 8b 8d f8 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x1008]
  676668:	4c 8b 85 a0 ef ff ff 	mov    r8,QWORD PTR [rbp-0x1060]
  67666f:	48 8b bd a8 ef ff ff 	mov    rdi,QWORD PTR [rbp-0x1058]
  676676:	48 0f af d6          	imul   rdx,rsi
  67667a:	48 0f af ce          	imul   rcx,rsi
  67667e:	4c 0f af c6          	imul   r8,rsi
  676682:	48 0f af fe          	imul   rdi,rsi
  676686:	48 3b b5 88 ef ff ff 	cmp    rsi,QWORD PTR [rbp-0x1078]
  67668d:	0f 83 c2 01 00 00    	jae    676855 <gls_corstep_mod_mp_gls_corstep_tile_+0xf0e5>
  676693:	4c 8b ad 38 ef ff ff 	mov    r13,QWORD PTR [rbp-0x10c8]
  67669a:	49 89 c7             	mov    r15,rax
  67669d:	4c 8b b5 d8 ee ff ff 	mov    r14,QWORD PTR [rbp-0x1128]
  6766a4:	49 89 c1             	mov    r9,rax
  6766a7:	4d 0f af ee          	imul   r13,r14
  6766ab:	4c 0f af bd d0 ee ff 	imul   r15,QWORD PTR [rbp-0x1130]
  6766b2:	ff 
  6766b3:	4c 0f af 8d 48 ef ff 	imul   r9,QWORD PTR [rbp-0x10b8]
  6766ba:	ff 
  6766bb:	4c 8b 9d 60 ed ff ff 	mov    r11,QWORD PTR [rbp-0x12a0]
  6766c2:	48 89 c6             	mov    rsi,rax
  6766c5:	4c 03 ad 20 ed ff ff 	add    r13,QWORD PTR [rbp-0x12e0]
  6766cc:	49 89 c2             	mov    r10,rax
  6766cf:	4d 03 e9             	add    r13,r9
  6766d2:	48 0f af b5 b0 ed ff 	imul   rsi,QWORD PTR [rbp-0x1250]
  6766d9:	ff 
  6766da:	4c 0f af 95 a8 ed ff 	imul   r10,QWORD PTR [rbp-0x1258]
  6766e1:	ff 
  6766e2:	49 03 cd             	add    rcx,r13
  6766e5:	4f 8d 0c 3b          	lea    r9,[r11+r15*1]
  6766e9:	4c 8b 9d 08 ee ff ff 	mov    r11,QWORD PTR [rbp-0x11f8]
  6766f0:	4c 8b ad 90 ed ff ff 	mov    r13,QWORD PTR [rbp-0x1270]
  6766f7:	48 89 85 08 e6 ff ff 	mov    QWORD PTR [rbp-0x19f8],rax
  6766fe:	48 03 b5 20 ee ff ff 	add    rsi,QWORD PTR [rbp-0x11e0]
  676705:	4f 8d 24 3b          	lea    r12,[r11+r15*1]
  676709:	4c 8b 9d 38 ed ff ff 	mov    r11,QWORD PTR [rbp-0x12c8]
  676710:	4d 03 ef             	add    r13,r15
  676713:	4c 89 a5 88 e7 ff ff 	mov    QWORD PTR [rbp-0x1878],r12
  67671a:	4c 89 ad 78 e7 ff ff 	mov    QWORD PTR [rbp-0x1888],r13
  676721:	4c 03 95 28 ee ff ff 	add    r10,QWORD PTR [rbp-0x11d8]
  676728:	4f 8d 24 3b          	lea    r12,[r11+r15*1]
  67672c:	4c 8b 9d 00 ee ff ff 	mov    r11,QWORD PTR [rbp-0x1200]
  676733:	4d 89 e5             	mov    r13,r12
  676736:	4f 8d 24 3b          	lea    r12,[r11+r15*1]
  67673a:	4c 8b 9d 88 ed ff ff 	mov    r11,QWORD PTR [rbp-0x1278]
  676741:	4c 89 a5 68 e2 ff ff 	mov    QWORD PTR [rbp-0x1d98],r12
  676748:	4f 8d 24 3b          	lea    r12,[r11+r15*1]
  67674c:	4c 89 a5 70 e2 ff ff 	mov    QWORD PTR [rbp-0x1d90],r12
  676753:	4c 8b a5 30 ef ff ff 	mov    r12,QWORD PTR [rbp-0x10d0]
  67675a:	4d 0f af e6          	imul   r12,r14
  67675e:	49 89 c6             	mov    r14,rax
  676761:	4c 0f af b5 40 ef ff 	imul   r14,QWORD PTR [rbp-0x10c0]
  676768:	ff 
  676769:	4c 8b 9d 30 ed ff ff 	mov    r11,QWORD PTR [rbp-0x12d0]
  676770:	4c 03 a5 78 ed ff ff 	add    r12,QWORD PTR [rbp-0x1288]
  676777:	4d 03 e6             	add    r12,r14
  67677a:	48 8b 85 70 e2 ff ff 	mov    rax,QWORD PTR [rbp-0x1d90]
  676781:	4d 03 df             	add    r11,r15
  676784:	4c 03 bd 28 ed ff ff 	add    r15,QWORD PTR [rbp-0x12d8]
  67678b:	49 03 d4             	add    rdx,r12
  67678e:	4c 8b a5 68 e2 ff ff 	mov    r12,QWORD PTR [rbp-0x1d98]
  676795:	4c 8b b5 88 e6 ff ff 	mov    r14,QWORD PTR [rbp-0x1978]
  67679c:	4c 89 bd 80 e7 ff ff 	mov    QWORD PTR [rbp-0x1880],r15
  6767a3:	c4 81 7b 10 5c f3 08 	vmovsd xmm3,QWORD PTR [r11+r14*8+0x8]
  6767aa:	4c 8b bd 78 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1888]
  6767b1:	c5 cb 59 14 37       	vmulsd xmm2,xmm6,QWORD PTR [rdi+rsi*1]
  6767b6:	c4 21 63 5c 2c f0    	vsubsd xmm13,xmm3,QWORD PTR [rax+r14*8]
  6767bc:	c4 81 6b 59 0c 10    	vmulsd xmm1,xmm2,QWORD PTR [r8+r10*1]
  6767c2:	c4 01 13 58 74 f7 08 	vaddsd xmm14,xmm13,QWORD PTR [r15+r14*8+0x8]
  6767c9:	4c 8b bd 80 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1880]
  6767d0:	c5 fb 10 01          	vmovsd xmm0,QWORD PTR [rcx]
  6767d4:	48 03 bd a8 ef ff ff 	add    rdi,QWORD PTR [rbp-0x1058]
  6767db:	c4 81 7b 10 5c f7 08 	vmovsd xmm3,QWORD PTR [r15+r14*8+0x8]
  6767e2:	4c 8b bd 88 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1878]
  6767e9:	4c 03 85 a0 ef ff ff 	add    r8,QWORD PTR [rbp-0x1060]
  6767f0:	c4 01 0b 5c 3c f4    	vsubsd xmm15,xmm14,QWORD PTR [r12+r14*8]
  6767f6:	c4 01 63 5c 6c f5 00 	vsubsd xmm13,xmm3,QWORD PTR [r13+r14*8+0x0]
  6767fd:	c4 c1 73 59 d7       	vmulsd xmm2,xmm1,xmm15
  676802:	c4 01 13 58 74 f1 08 	vaddsd xmm14,xmm13,QWORD PTR [r9+r14*8+0x8]
  676809:	c5 fb 5c c2          	vsubsd xmm0,xmm0,xmm2
  67680d:	c4 81 0b 5c 14 f7    	vsubsd xmm2,xmm14,QWORD PTR [r15+r14*8]
  676813:	c5 fb 5f c4          	vmaxsd xmm0,xmm0,xmm4
  676817:	c5 73 59 fa          	vmulsd xmm15,xmm1,xmm2
  67681b:	c5 fb 10 0a          	vmovsd xmm1,QWORD PTR [rdx]
  67681f:	49 ff c6             	inc    r14
  676822:	c5 fb 11 01          	vmovsd QWORD PTR [rcx],xmm0
  676826:	c4 c1 73 5c cf       	vsubsd xmm1,xmm1,xmm15
  67682b:	48 03 8d f8 ef ff ff 	add    rcx,QWORD PTR [rbp-0x1008]
  676832:	c5 f3 5f cd          	vmaxsd xmm1,xmm1,xmm5
  676836:	c5 fb 11 0a          	vmovsd QWORD PTR [rdx],xmm1
  67683a:	48 03 95 f0 ef ff ff 	add    rdx,QWORD PTR [rbp-0x1010]
  676841:	4c 3b b5 88 ef ff ff 	cmp    r14,QWORD PTR [rbp-0x1078]
  676848:	0f 82 55 ff ff ff    	jb     6767a3 <gls_corstep_mod_mp_gls_corstep_tile_+0xf033>
  67684e:	48 8b 85 08 e6 ff ff 	mov    rax,QWORD PTR [rbp-0x19f8]
  676855:	48 ff c0             	inc    rax
  676858:	48 3b 85 e0 ee ff ff 	cmp    rax,QWORD PTR [rbp-0x1120]
  67685f:	0f 82 44 fb ff ff    	jb     6763a9 <gls_corstep_mod_mp_gls_corstep_tile_+0xec39>
  676865:	48 8b 95 d8 ee ff ff 	mov    rdx,QWORD PTR [rbp-0x1128]
  67686c:	41 ba 01 00 00 00    	mov    r10d,0x1
  676872:	48 8b b5 e0 ee ff ff 	mov    rsi,QWORD PTR [rbp-0x1120]
  676879:	41 bb 02 00 00 00    	mov    r11d,0x2
  67687f:	48 8b 8d f0 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x1010]
  676886:	45 33 e4             	xor    r12d,r12d
  676889:	48 8b bd 20 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x13e0]
  676890:	44 8b 85 b8 ec ff ff 	mov    r8d,DWORD PTR [rbp-0x1348]
  676897:	44 8b 8d c0 ec ff ff 	mov    r9d,DWORD PTR [rbp-0x1340]
  67689e:	48 ff c2             	inc    rdx
  6768a1:	48 3b d7             	cmp    rdx,rdi
  6768a4:	0f 82 18 4c ff ff    	jb     66b4c2 <gls_corstep_mod_mp_gls_corstep_tile_+0x3d52>
  6768aa:	bf 58 56 ab 00       	mov    edi,0xab5658
  6768af:	c5 f8 77             	vzeroupper 
  6768b2:	e8 39 6f d9 ff       	call   40d7f0 <__kmpc_global_thread_num@plt>
  6768b7:	89 85 e8 e5 ff ff    	mov    DWORD PTR [rbp-0x1a18],eax
  6768bd:	bf 08 56 ab 00       	mov    edi,0xab5608
  6768c2:	33 c0                	xor    eax,eax
  6768c4:	e8 57 70 d9 ff       	call   40d920 <__kmpc_ok_to_fork@plt>
  6768c9:	85 c0                	test   eax,eax
  6768cb:	0f 84 a8 02 00 00    	je     676b79 <gls_corstep_mod_mp_gls_corstep_tile_+0xf409>
  6768d1:	48 81 c4 f0 fd ff ff 	add    rsp,0xfffffffffffffdf0
  6768d8:	48 8d 85 b0 eb ff ff 	lea    rax,[rbp-0x1450]
  6768df:	ba 37 ba 66 00       	mov    edx,0x66ba37
  6768e4:	4c 8d 50 04          	lea    r10,[rax+0x4]
  6768e8:	4c 8d 9b a0 00 00 00 	lea    r11,[rbx+0xa0]
  6768ef:	4d 8d 63 60          	lea    r12,[r11+0x60]
  6768f3:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  6768f7:	4d 8d 6b 58          	lea    r13,[r11+0x58]
  6768fb:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
  676900:	4c 8d 73 68          	lea    r14,[rbx+0x68]
  676904:	48 8d 4c 24 10       	lea    rcx,[rsp+0x10]
  676909:	4c 89 19             	mov    QWORD PTR [rcx],r11
  67690c:	4c 8d 7b 70          	lea    r15,[rbx+0x70]
  676910:	4c 89 61 08          	mov    QWORD PTR [rcx+0x8],r12
  676914:	48 8d 43 38          	lea    rax,[rbx+0x38]
  676918:	4c 89 69 10          	mov    QWORD PTR [rcx+0x10],r13
  67691c:	49 8d 73 40          	lea    rsi,[r11+0x40]
  676920:	4c 89 71 18          	mov    QWORD PTR [rcx+0x18],r14
  676924:	48 8d 7b 60          	lea    rdi,[rbx+0x60]
  676928:	4c 89 79 20          	mov    QWORD PTR [rcx+0x20],r15
  67692c:	4c 8d 56 08          	lea    r10,[rsi+0x8]
  676930:	4c 8b 9d 00 e1 ff ff 	mov    r11,QWORD PTR [rbp-0x1f00]
  676937:	4c 8d 6e f0          	lea    r13,[rsi-0x10]
  67693b:	4c 8b a5 78 e1 ff ff 	mov    r12,QWORD PTR [rbp-0x1e88]
  676942:	4c 8d 76 e8          	lea    r14,[rsi-0x18]
  676946:	48 89 41 28          	mov    QWORD PTR [rcx+0x28],rax
  67694a:	4c 8d 7b 30          	lea    r15,[rbx+0x30]
  67694e:	48 89 71 30          	mov    QWORD PTR [rcx+0x30],rsi
  676952:	48 8d 85 78 eb ff ff 	lea    rax,[rbp-0x1488]
  676959:	48 89 79 38          	mov    QWORD PTR [rcx+0x38],rdi
  67695d:	48 8d 70 e0          	lea    rsi,[rax-0x20]
  676961:	4c 89 51 40          	mov    QWORD PTR [rcx+0x40],r10
  676965:	48 8d 78 a0          	lea    rdi,[rax-0x60]
  676969:	4c 89 59 48          	mov    QWORD PTR [rcx+0x48],r11
  67696d:	4c 8d 50 e8          	lea    r10,[rax-0x18]
  676971:	4c 89 61 50          	mov    QWORD PTR [rcx+0x50],r12
  676975:	4d 8d 5d b0          	lea    r11,[r13-0x50]
  676979:	4c 89 69 58          	mov    QWORD PTR [rcx+0x58],r13
  67697d:	4c 8d 60 a8          	lea    r12,[rax-0x58]
  676981:	4c 89 71 60          	mov    QWORD PTR [rcx+0x60],r14
  676985:	4c 8d 68 f0          	lea    r13,[rax-0x10]
  676989:	4c 89 79 68          	mov    QWORD PTR [rcx+0x68],r15
  67698d:	4c 8d 70 b0          	lea    r14,[rax-0x50]
  676991:	48 89 41 70          	mov    QWORD PTR [rcx+0x70],rax
  676995:	4d 8d 7b 38          	lea    r15,[r11+0x38]
  676999:	48 89 71 78          	mov    QWORD PTR [rcx+0x78],rsi
  67699d:	49 8d 43 40          	lea    rax,[r11+0x40]
  6769a1:	4c 8d 84 24 90 00 00 	lea    r8,[rsp+0x90]
  6769a8:	00 
  6769a9:	49 89 38             	mov    QWORD PTR [r8],rdi
  6769ac:	48 8d 70 e8          	lea    rsi,[rax-0x18]
  6769b0:	4d 89 50 08          	mov    QWORD PTR [r8+0x8],r10
  6769b4:	48 8d 78 f0          	lea    rdi,[rax-0x10]
  6769b8:	4d 89 58 10          	mov    QWORD PTR [r8+0x10],r11
  6769bc:	4c 8d 95 78 e9 ff ff 	lea    r10,[rbp-0x1688]
  6769c3:	4d 89 60 18          	mov    QWORD PTR [r8+0x18],r12
  6769c7:	4d 8d 5c 24 e0       	lea    r11,[r12-0x20]
  6769cc:	4d 89 68 20          	mov    QWORD PTR [r8+0x20],r13
  6769d0:	4d 8d 63 40          	lea    r12,[r11+0x40]
  6769d4:	4c 8d ac 24 b8 00 00 	lea    r13,[rsp+0xb8]
  6769db:	00 
  6769dc:	4d 89 75 00          	mov    QWORD PTR [r13+0x0],r14
  6769e0:	4d 8d 73 38          	lea    r14,[r11+0x38]
  6769e4:	4d 89 7d 08          	mov    QWORD PTR [r13+0x8],r15
  6769e8:	4d 8d 7b 30          	lea    r15,[r11+0x30]
  6769ec:	49 89 45 10          	mov    QWORD PTR [r13+0x10],rax
  6769f0:	49 8d 43 48          	lea    rax,[r11+0x48]
  6769f4:	49 89 75 18          	mov    QWORD PTR [r13+0x18],rsi
  6769f8:	48 8d 70 28          	lea    rsi,[rax+0x28]
  6769fc:	4c 8b ad f0 e1 ff ff 	mov    r13,QWORD PTR [rbp-0x1e10]
  676a03:	48 8d 48 70          	lea    rcx,[rax+0x70]
  676a07:	49 89 78 48          	mov    QWORD PTR [r8+0x48],rdi
  676a0b:	48 8d 78 08          	lea    rdi,[rax+0x8]
  676a0f:	4d 89 50 50          	mov    QWORD PTR [r8+0x50],r10
  676a13:	4c 8d 50 c8          	lea    r10,[rax-0x38]
  676a17:	4d 89 58 58          	mov    QWORD PTR [r8+0x58],r11
  676a1b:	4c 8d 9b f0 00 00 00 	lea    r11,[rbx+0xf0]
  676a22:	4d 89 60 60          	mov    QWORD PTR [r8+0x60],r12
  676a26:	4c 8d 60 c0          	lea    r12,[rax-0x40]
  676a2a:	4d 89 68 68          	mov    QWORD PTR [r8+0x68],r13
  676a2e:	4c 8d 68 34          	lea    r13,[rax+0x34]
  676a32:	4d 89 70 70          	mov    QWORD PTR [r8+0x70],r14
  676a36:	4c 8d 70 38          	lea    r14,[rax+0x38]
  676a3a:	4d 89 78 78          	mov    QWORD PTR [r8+0x78],r15
  676a3e:	4c 8d 78 3c          	lea    r15,[rax+0x3c]
  676a42:	4c 8d 8c 24 10 01 00 	lea    r9,[rsp+0x110]
  676a49:	00 
  676a4a:	49 89 01             	mov    QWORD PTR [r9],rax
  676a4d:	48 8d 40 40          	lea    rax,[rax+0x40]
  676a51:	49 89 71 08          	mov    QWORD PTR [r9+0x8],rsi
  676a55:	48 8d 70 18          	lea    rsi,[rax+0x18]
  676a59:	49 89 79 10          	mov    QWORD PTR [r9+0x10],rdi
  676a5d:	48 8d 78 1c          	lea    rdi,[rax+0x1c]
  676a61:	4d 89 51 18          	mov    QWORD PTR [r9+0x18],r10
  676a65:	4c 8d 50 14          	lea    r10,[rax+0x14]
  676a69:	4d 89 59 20          	mov    QWORD PTR [r9+0x20],r11
  676a6d:	4c 8d 58 04          	lea    r11,[rax+0x4]
  676a71:	4d 89 61 28          	mov    QWORD PTR [r9+0x28],r12
  676a75:	4c 8d 60 08          	lea    r12,[rax+0x8]
  676a79:	4d 89 69 30          	mov    QWORD PTR [r9+0x30],r13
  676a7d:	4c 8d 68 24          	lea    r13,[rax+0x24]
  676a81:	4d 89 71 38          	mov    QWORD PTR [r9+0x38],r14
  676a85:	4c 8d 70 20          	lea    r14,[rax+0x20]
  676a89:	4d 89 79 40          	mov    QWORD PTR [r9+0x40],r15
  676a8d:	4c 8d 78 0c          	lea    r15,[rax+0xc]
  676a91:	49 89 41 48          	mov    QWORD PTR [r9+0x48],rax
  676a95:	48 8d 40 10          	lea    rax,[rax+0x10]
  676a99:	49 89 71 50          	mov    QWORD PTR [r9+0x50],rsi
  676a9d:	48 8d b5 30 e9 ff ff 	lea    rsi,[rbp-0x16d0]
  676aa4:	49 89 79 58          	mov    QWORD PTR [r9+0x58],rdi
  676aa8:	48 8d 7e b8          	lea    rdi,[rsi-0x48]
  676aac:	4d 89 51 60          	mov    QWORD PTR [r9+0x60],r10
  676ab0:	4c 8d 57 b8          	lea    r10,[rdi-0x48]
  676ab4:	4d 89 59 68          	mov    QWORD PTR [r9+0x68],r11
  676ab8:	4d 8d 5a b8          	lea    r11,[r10-0x48]
  676abc:	4d 89 61 70          	mov    QWORD PTR [r9+0x70],r12
  676ac0:	4d 8d 63 b8          	lea    r12,[r11-0x48]
  676ac4:	4d 89 69 78          	mov    QWORD PTR [r9+0x78],r13
  676ac8:	4c 8d ad 10 e5 ff ff 	lea    r13,[rbp-0x1af0]
  676acf:	4c 89 b4 24 90 01 00 	mov    QWORD PTR [rsp+0x190],r14
  676ad6:	00 
  676ad7:	4d 8d 75 a0          	lea    r14,[r13-0x60]
  676adb:	4c 89 bc 24 98 01 00 	mov    QWORD PTR [rsp+0x198],r15
  676ae2:	00 
  676ae3:	4d 8d 7e a0          	lea    r15,[r14-0x60]
  676ae7:	48 89 84 24 a0 01 00 	mov    QWORD PTR [rsp+0x1a0],rax
  676aee:	00 
  676aef:	49 8d 47 a0          	lea    rax,[r15-0x60]
  676af3:	48 89 b4 24 a8 01 00 	mov    QWORD PTR [rsp+0x1a8],rsi
  676afa:	00 
  676afb:	48 8d 70 a0          	lea    rsi,[rax-0x60]
  676aff:	48 89 bc 24 b0 01 00 	mov    QWORD PTR [rsp+0x1b0],rdi
  676b06:	00 
  676b07:	48 8d 7e a0          	lea    rdi,[rsi-0x60]
  676b0b:	4c 89 94 24 b8 01 00 	mov    QWORD PTR [rsp+0x1b8],r10
  676b12:	00 
  676b13:	4c 8d 41 04          	lea    r8,[rcx+0x4]
  676b17:	4c 89 9c 24 c0 01 00 	mov    QWORD PTR [rsp+0x1c0],r11
  676b1e:	00 
  676b1f:	4c 8d 49 18          	lea    r9,[rcx+0x18]
  676b23:	4c 89 a4 24 c8 01 00 	mov    QWORD PTR [rsp+0x1c8],r12
  676b2a:	00 
  676b2b:	4c 8d 57 a0          	lea    r10,[rdi-0x60]
  676b2f:	4c 8d a4 24 d0 01 00 	lea    r12,[rsp+0x1d0]
  676b36:	00 
  676b37:	4d 89 2c 24          	mov    QWORD PTR [r12],r13
  676b3b:	4d 89 74 24 08       	mov    QWORD PTR [r12+0x8],r14
  676b40:	4d 89 7c 24 10       	mov    QWORD PTR [r12+0x10],r15
  676b45:	4c 8d bc 24 e8 01 00 	lea    r15,[rsp+0x1e8]
  676b4c:	00 
  676b4d:	49 89 07             	mov    QWORD PTR [r15],rax
  676b50:	33 c0                	xor    eax,eax
  676b52:	49 89 77 08          	mov    QWORD PTR [r15+0x8],rsi
  676b56:	be 44 00 00 00       	mov    esi,0x44
  676b5b:	49 89 7f 10          	mov    QWORD PTR [r15+0x10],rdi
  676b5f:	bf 08 56 ab 00       	mov    edi,0xab5608
  676b64:	4d 89 57 18          	mov    QWORD PTR [r15+0x18],r10
  676b68:	e8 03 6c d9 ff       	call   40d770 <__kmpc_fork_call@plt>
  676b6d:	48 81 c4 10 02 00 00 	add    rsp,0x210
  676b74:	e9 ac 02 00 00       	jmp    676e25 <gls_corstep_mod_mp_gls_corstep_tile_+0xf6b5>
  676b79:	bf 08 56 ab 00       	mov    edi,0xab5608
  676b7e:	33 c0                	xor    eax,eax
  676b80:	8b b5 e8 e5 ff ff    	mov    esi,DWORD PTR [rbp-0x1a18]
  676b86:	e8 85 6d d9 ff       	call   40d910 <__kmpc_serialized_parallel@plt>
  676b8b:	48 81 c4 00 fe ff ff 	add    rsp,0xfffffffffffffe00
  676b92:	48 8d 85 b4 eb ff ff 	lea    rax,[rbp-0x144c]
  676b99:	be 70 11 be 00       	mov    esi,0xbe1170
  676b9e:	4c 8d 93 a0 00 00 00 	lea    r10,[rbx+0xa0]
  676ba5:	4d 8d 5a 60          	lea    r11,[r10+0x60]
  676ba9:	4d 8d 62 58          	lea    r12,[r10+0x58]
  676bad:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  676bb1:	4c 8d 6b 68          	lea    r13,[rbx+0x68]
  676bb5:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
  676bba:	4c 8d 73 70          	lea    r14,[rbx+0x70]
  676bbe:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  676bc3:	4c 89 1a             	mov    QWORD PTR [rdx],r11
  676bc6:	4c 8d 7b 38          	lea    r15,[rbx+0x38]
  676bca:	4c 89 62 08          	mov    QWORD PTR [rdx+0x8],r12
  676bce:	49 8d 42 40          	lea    rax,[r10+0x40]
  676bd2:	4c 89 6a 10          	mov    QWORD PTR [rdx+0x10],r13
  676bd6:	4c 8d 53 60          	lea    r10,[rbx+0x60]
  676bda:	4c 89 72 18          	mov    QWORD PTR [rdx+0x18],r14
  676bde:	4c 8d 58 08          	lea    r11,[rax+0x8]
  676be2:	4c 8b a5 00 e1 ff ff 	mov    r12,QWORD PTR [rbp-0x1f00]
  676be9:	4c 8d 70 f0          	lea    r14,[rax-0x10]
  676bed:	4c 8b ad 78 e1 ff ff 	mov    r13,QWORD PTR [rbp-0x1e88]
  676bf4:	48 8d bd e8 e5 ff ff 	lea    rdi,[rbp-0x1a18]
  676bfb:	4c 89 7a 20          	mov    QWORD PTR [rdx+0x20],r15
  676bff:	4c 8d 78 e8          	lea    r15,[rax-0x18]
  676c03:	48 89 42 28          	mov    QWORD PTR [rdx+0x28],rax
  676c07:	48 8d 43 30          	lea    rax,[rbx+0x30]
  676c0b:	4c 89 52 30          	mov    QWORD PTR [rdx+0x30],r10
  676c0f:	4c 8d 95 78 eb ff ff 	lea    r10,[rbp-0x1488]
  676c16:	4c 89 5a 38          	mov    QWORD PTR [rdx+0x38],r11
  676c1a:	4d 8d 5a e0          	lea    r11,[r10-0x20]
  676c1e:	4c 89 62 40          	mov    QWORD PTR [rdx+0x40],r12
  676c22:	4d 8d 62 a0          	lea    r12,[r10-0x60]
  676c26:	4c 89 6a 48          	mov    QWORD PTR [rdx+0x48],r13
  676c2a:	4d 8d 6a e8          	lea    r13,[r10-0x18]
  676c2e:	4c 89 72 50          	mov    QWORD PTR [rdx+0x50],r14
  676c32:	4c 8d 70 50          	lea    r14,[rax+0x50]
  676c36:	4c 89 7a 58          	mov    QWORD PTR [rdx+0x58],r15
  676c3a:	4d 8d 7a a8          	lea    r15,[r10-0x58]
  676c3e:	48 89 42 60          	mov    QWORD PTR [rdx+0x60],rax
  676c42:	49 8d 42 f0          	lea    rax,[r10-0x10]
  676c46:	4c 89 52 68          	mov    QWORD PTR [rdx+0x68],r10
  676c4a:	4c 8d 50 c0          	lea    r10,[rax-0x40]
  676c4e:	4c 89 5a 70          	mov    QWORD PTR [rdx+0x70],r11
  676c52:	4d 8d 5e 38          	lea    r11,[r14+0x38]
  676c56:	4c 89 62 78          	mov    QWORD PTR [rdx+0x78],r12
  676c5a:	4d 8d 63 08          	lea    r12,[r11+0x8]
  676c5e:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  676c65:	00 
  676c66:	4c 89 29             	mov    QWORD PTR [rcx],r13
  676c69:	4d 8d 6b f0          	lea    r13,[r11-0x10]
  676c6d:	4c 89 71 08          	mov    QWORD PTR [rcx+0x8],r14
  676c71:	4d 8d 73 f8          	lea    r14,[r11-0x8]
  676c75:	4c 89 79 10          	mov    QWORD PTR [rcx+0x10],r15
  676c79:	4c 8d bd 78 e9 ff ff 	lea    r15,[rbp-0x1688]
  676c80:	48 89 41 18          	mov    QWORD PTR [rcx+0x18],rax
  676c84:	48 8d 40 98          	lea    rax,[rax-0x68]
  676c88:	4c 89 51 20          	mov    QWORD PTR [rcx+0x20],r10
  676c8c:	4c 8d 50 40          	lea    r10,[rax+0x40]
  676c90:	4c 89 59 28          	mov    QWORD PTR [rcx+0x28],r11
  676c94:	49 8d 52 78          	lea    rdx,[r10+0x78]
  676c98:	4c 89 61 30          	mov    QWORD PTR [rcx+0x30],r12
  676c9c:	4c 8d 60 38          	lea    r12,[rax+0x38]
  676ca0:	4c 89 69 38          	mov    QWORD PTR [rcx+0x38],r13
  676ca4:	4c 8d 68 30          	lea    r13,[rax+0x30]
  676ca8:	4c 8b 9d f0 e1 ff ff 	mov    r11,QWORD PTR [rbp-0x1e10]
  676caf:	48 8d 4a 04          	lea    rcx,[rdx+0x4]
  676cb3:	4c 8d 84 24 d0 00 00 	lea    r8,[rsp+0xd0]
  676cba:	00 
  676cbb:	4d 89 30             	mov    QWORD PTR [r8],r14
  676cbe:	4c 8d 70 48          	lea    r14,[rax+0x48]
  676cc2:	4d 89 78 08          	mov    QWORD PTR [r8+0x8],r15
  676cc6:	4c 8d 78 70          	lea    r15,[rax+0x70]
  676cca:	49 89 40 10          	mov    QWORD PTR [r8+0x10],rax
  676cce:	48 8d 40 50          	lea    rax,[rax+0x50]
  676cd2:	4d 89 50 18          	mov    QWORD PTR [r8+0x18],r10
  676cd6:	4c 8d 50 c0          	lea    r10,[rax-0x40]
  676cda:	4d 89 58 20          	mov    QWORD PTR [r8+0x20],r11
  676cde:	4c 8d 9b f0 00 00 00 	lea    r11,[rbx+0xf0]
  676ce5:	4d 89 60 28          	mov    QWORD PTR [r8+0x28],r12
  676ce9:	4c 8d 60 b8          	lea    r12,[rax-0x48]
  676ced:	4d 89 68 30          	mov    QWORD PTR [r8+0x30],r13
  676cf1:	4c 8d 68 2c          	lea    r13,[rax+0x2c]
  676cf5:	4d 89 70 38          	mov    QWORD PTR [r8+0x38],r14
  676cf9:	4c 8d 70 30          	lea    r14,[rax+0x30]
  676cfd:	4d 89 78 40          	mov    QWORD PTR [r8+0x40],r15
  676d01:	4c 8d 78 34          	lea    r15,[rax+0x34]
  676d05:	49 89 40 48          	mov    QWORD PTR [r8+0x48],rax
  676d09:	48 8d 40 38          	lea    rax,[rax+0x38]
  676d0d:	4d 89 50 50          	mov    QWORD PTR [r8+0x50],r10
  676d11:	4c 8d 50 18          	lea    r10,[rax+0x18]
  676d15:	4d 89 58 58          	mov    QWORD PTR [r8+0x58],r11
  676d19:	4c 8d 58 1c          	lea    r11,[rax+0x1c]
  676d1d:	4d 89 60 60          	mov    QWORD PTR [r8+0x60],r12
  676d21:	4c 8d 60 14          	lea    r12,[rax+0x14]
  676d25:	4d 89 68 68          	mov    QWORD PTR [r8+0x68],r13
  676d29:	4c 8d 68 04          	lea    r13,[rax+0x4]
  676d2d:	4d 89 70 70          	mov    QWORD PTR [r8+0x70],r14
  676d31:	4c 8d 70 08          	lea    r14,[rax+0x8]
  676d35:	4d 89 78 78          	mov    QWORD PTR [r8+0x78],r15
  676d39:	4c 8d 78 24          	lea    r15,[rax+0x24]
  676d3d:	4c 8d 8c 24 50 01 00 	lea    r9,[rsp+0x150]
  676d44:	00 
  676d45:	49 89 01             	mov    QWORD PTR [r9],rax
  676d48:	48 8d 40 20          	lea    rax,[rax+0x20]
  676d4c:	4d 89 51 08          	mov    QWORD PTR [r9+0x8],r10
  676d50:	4c 8d 50 ec          	lea    r10,[rax-0x14]
  676d54:	4d 89 59 10          	mov    QWORD PTR [r9+0x10],r11
  676d58:	4c 8d 58 f0          	lea    r11,[rax-0x10]
  676d5c:	4d 89 61 18          	mov    QWORD PTR [r9+0x18],r12
  676d60:	4c 8d a5 30 e9 ff ff 	lea    r12,[rbp-0x16d0]
  676d67:	4d 89 69 20          	mov    QWORD PTR [r9+0x20],r13
  676d6b:	4d 8d 6c 24 b8       	lea    r13,[r12-0x48]
  676d70:	4d 89 71 28          	mov    QWORD PTR [r9+0x28],r14
  676d74:	4d 8d 75 b8          	lea    r14,[r13-0x48]
  676d78:	4d 89 79 30          	mov    QWORD PTR [r9+0x30],r15
  676d7c:	4d 8d 7e b8          	lea    r15,[r14-0x48]
  676d80:	49 89 41 38          	mov    QWORD PTR [r9+0x38],rax
  676d84:	49 8d 47 b8          	lea    rax,[r15-0x48]
  676d88:	4d 89 51 40          	mov    QWORD PTR [r9+0x40],r10
  676d8c:	4c 8d 95 10 e5 ff ff 	lea    r10,[rbp-0x1af0]
  676d93:	4d 89 59 48          	mov    QWORD PTR [r9+0x48],r11
  676d97:	4d 8d 5a a0          	lea    r11,[r10-0x60]
  676d9b:	4d 89 61 50          	mov    QWORD PTR [r9+0x50],r12
  676d9f:	4c 8d 42 18          	lea    r8,[rdx+0x18]
  676da3:	4d 89 69 58          	mov    QWORD PTR [r9+0x58],r13
  676da7:	4c 8d 4a f8          	lea    r9,[rdx-0x8]
  676dab:	4c 89 b4 24 b0 01 00 	mov    QWORD PTR [rsp+0x1b0],r14
  676db2:	00 
  676db3:	4d 8d 63 a0          	lea    r12,[r11-0x60]
  676db7:	4c 89 bc 24 b8 01 00 	mov    QWORD PTR [rsp+0x1b8],r15
  676dbe:	00 
  676dbf:	4d 8d 6c 24 a0       	lea    r13,[r12-0x60]
  676dc4:	48 89 84 24 c0 01 00 	mov    QWORD PTR [rsp+0x1c0],rax
  676dcb:	00 
  676dcc:	4d 8d 75 a0          	lea    r14,[r13-0x60]
  676dd0:	4c 89 94 24 c8 01 00 	mov    QWORD PTR [rsp+0x1c8],r10
  676dd7:	00 
  676dd8:	4d 8d 7e a0          	lea    r15,[r14-0x60]
  676ddc:	4c 8d 94 24 d0 01 00 	lea    r10,[rsp+0x1d0]
  676de3:	00 
  676de4:	4d 89 1a             	mov    QWORD PTR [r10],r11
  676de7:	49 8d 47 a0          	lea    rax,[r15-0x60]
  676deb:	4d 89 62 08          	mov    QWORD PTR [r10+0x8],r12
  676def:	4d 89 6a 10          	mov    QWORD PTR [r10+0x10],r13
  676df3:	4c 8d ac 24 e8 01 00 	lea    r13,[rsp+0x1e8]
  676dfa:	00 
  676dfb:	4d 89 75 00          	mov    QWORD PTR [r13+0x0],r14
  676dff:	4d 89 7d 08          	mov    QWORD PTR [r13+0x8],r15
  676e03:	49 89 45 10          	mov    QWORD PTR [r13+0x10],rax
  676e07:	e8 2b 4c ff ff       	call   66ba37 <gls_corstep_mod_mp_gls_corstep_tile_+0x42c7>
  676e0c:	48 81 c4 00 02 00 00 	add    rsp,0x200
  676e13:	bf 08 56 ab 00       	mov    edi,0xab5608
  676e18:	33 c0                	xor    eax,eax
  676e1a:	8b b5 e8 e5 ff ff    	mov    esi,DWORD PTR [rbp-0x1a18]
  676e20:	e8 3b 6e d9 ff       	call   40dc60 <__kmpc_end_serialized_parallel@plt>
  676e25:	48 8b bd d0 eb ff ff 	mov    rdi,QWORD PTR [rbp-0x1430]
  676e2c:	48 83 c4 b0          	add    rsp,0xffffffffffffffb0
  676e30:	48 8b 0d c9 38 44 00 	mov    rcx,QWORD PTR [rip+0x4438c9]        # aba700 <mod_param_mp_n_+0x40>
  676e37:	48 f7 d9             	neg    rcx
  676e3a:	48 63 07             	movsxd rax,DWORD PTR [rdi]
  676e3d:	48 03 c8             	add    rcx,rax
  676e40:	48 8b 15 79 38 44 00 	mov    rdx,QWORD PTR [rip+0x443879]        # aba6c0 <mod_param_mp_n_>
  676e47:	4c 8b 63 38          	mov    r12,QWORD PTR [rbx+0x38]
  676e4b:	4c 8b 6b 30          	mov    r13,QWORD PTR [rbx+0x30]
  676e4f:	4c 8b b3 f8 00 00 00 	mov    r14,QWORD PTR [rbx+0xf8]
  676e56:	48 8d 34 8a          	lea    rsi,[rdx+rcx*4]
  676e5a:	48 89 34 24          	mov    QWORD PTR [rsp],rsi
  676e5e:	4c 8b 85 f8 ea ff ff 	mov    r8,QWORD PTR [rbp-0x1508]
  676e65:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
  676e6a:	4c 8b 8d f0 ea ff ff 	mov    r9,QWORD PTR [rbp-0x1510]
  676e71:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
  676e76:	4c 8b 95 e8 ea ff ff 	mov    r10,QWORD PTR [rbp-0x1518]
  676e7d:	4c 89 54 24 18       	mov    QWORD PTR [rsp+0x18],r10
  676e82:	4c 8b 9d e0 ea ff ff 	mov    r11,QWORD PTR [rbp-0x1520]
  676e89:	4c 8b bb 00 01 00 00 	mov    r15,QWORD PTR [rbx+0x100]
  676e90:	4c 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],r11
  676e95:	4c 89 64 24 28       	mov    QWORD PTR [rsp+0x28],r12
  676e9a:	4c 89 6c 24 30       	mov    QWORD PTR [rsp+0x30],r13
  676e9f:	4c 89 74 24 38       	mov    QWORD PTR [rsp+0x38],r14
  676ea4:	4c 89 7c 24 40       	mov    QWORD PTR [rsp+0x40],r15
  676ea9:	48 8b b5 d8 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x1428]
  676eb0:	48 8b 95 e0 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x1420]
  676eb7:	48 8b 8d e8 eb ff ff 	mov    rcx,QWORD PTR [rbp-0x1418]
  676ebe:	4c 8b 85 f0 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1410]
  676ec5:	4c 8b 8d f8 eb ff ff 	mov    r9,QWORD PTR [rbp-0x1408]
  676ecc:	e8 4f 76 fe ff       	call   65e520 <tkebc_mod_mp_tkebc_tile_>
  676ed1:	48 83 c4 50          	add    rsp,0x50
  676ed5:	48 8b bd d0 eb ff ff 	mov    rdi,QWORD PTR [rbp-0x1430]
  676edc:	4c 8b 05 3d 4a 44 00 	mov    r8,QWORD PTR [rip+0x444a3d]        # abb920 <mod_scalars_mp_ewperiodic_>
  676ee3:	4c 8b 0d 96 4d 44 00 	mov    r9,QWORD PTR [rip+0x444d96]        # abbc80 <mod_scalars_mp_nsperiodic_>
  676eea:	4c 63 17             	movsxd r10,DWORD PTR [rdi]
  676eed:	4a 8d 04 95 00 00 00 	lea    rax,[r10*4+0x0]
  676ef4:	00 
  676ef5:	41 8b 54 00 fc       	mov    edx,DWORD PTR [r8+rax*1-0x4]
  676efa:	41 0b 54 01 fc       	or     edx,DWORD PTR [r9+rax*1-0x4]
  676eff:	f6 c2 01             	test   dl,0x1
  676f02:	0f 84 b8 03 00 00    	je     6772c0 <gls_corstep_mod_mp_gls_corstep_tile_+0xfb50>
  676f08:	4c 8b 6b 38          	mov    r13,QWORD PTR [rbx+0x38]
  676f0c:	33 f6                	xor    esi,esi
  676f0e:	4c 8b b3 00 01 00 00 	mov    r14,QWORD PTR [rbx+0x100]
  676f15:	b8 01 00 00 00       	mov    eax,0x1
  676f1a:	48 89 85 30 e1 ff ff 	mov    QWORD PTR [rbp-0x1ed0],rax
  676f21:	48 83 c4 e0          	add    rsp,0xffffffffffffffe0
  676f25:	4d 63 7d 00          	movsxd r15,DWORD PTR [r13+0x0]
  676f29:	49 ff cf             	dec    r15
  676f2c:	4d 0f af be 80 00 00 	imul   r15,QWORD PTR [r14+0x80]
  676f33:	00 
  676f34:	49 8b 56 30          	mov    rdx,QWORD PTR [r14+0x30]
  676f38:	48 85 d2             	test   rdx,rdx
  676f3b:	48 89 85 48 e1 ff ff 	mov    QWORD PTR [rbp-0x1eb8],rax
  676f42:	48 89 85 60 e1 ff ff 	mov    QWORD PTR [rbp-0x1ea0],rax
  676f49:	48 0f 4e d6          	cmovle rdx,rsi
  676f4d:	48 89 85 08 e1 ff ff 	mov    QWORD PTR [rbp-0x1ef8],rax
  676f54:	48 8b 05 a5 37 44 00 	mov    rax,QWORD PTR [rip+0x4437a5]        # aba700 <mod_param_mp_n_+0x40>
  676f5b:	48 c1 e0 02          	shl    rax,0x2
  676f5f:	48 89 95 20 e1 ff ff 	mov    QWORD PTR [rbp-0x1ee0],rdx
  676f66:	48 8b 15 53 37 44 00 	mov    rdx,QWORD PTR [rip+0x443753]        # aba6c0 <mod_param_mp_n_>
  676f6d:	48 2b d0             	sub    rdx,rax
  676f70:	48 8d 85 f0 e0 ff ff 	lea    rax,[rbp-0x1f10]
  676f77:	49 8b 4e 48          	mov    rcx,QWORD PTR [r14+0x48]
  676f7b:	48 85 c9             	test   rcx,rcx
  676f7e:	4d 8b 46 60          	mov    r8,QWORD PTR [r14+0x60]
  676f82:	48 0f 4e ce          	cmovle rcx,rsi
  676f86:	4d 85 c0             	test   r8,r8
  676f89:	48 c7 04 24 bc 72 84 	mov    QWORD PTR [rsp],0x8472bc
  676f90:	00 
  676f91:	4e 8d 14 92          	lea    r10,[rdx+r10*4]
  676f95:	4d 8b 4e 38          	mov    r9,QWORD PTR [r14+0x38]
  676f99:	4c 0f 4e c6          	cmovle r8,rsi
  676f9d:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
  676fa2:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  676fa7:	4d 8b 5e 50          	mov    r11,QWORD PTR [r14+0x50]
  676fab:	4d 8b 66 68          	mov    r12,QWORD PTR [r14+0x68]
  676faf:	4d 03 3e             	add    r15,QWORD PTR [r14]
  676fb2:	48 89 70 10          	mov    QWORD PTR [rax+0x10],rsi
  676fb6:	48 89 48 48          	mov    QWORD PTR [rax+0x48],rcx
  676fba:	4c 89 40 60          	mov    QWORD PTR [rax+0x60],r8
  676fbe:	4c 89 48 38          	mov    QWORD PTR [rax+0x38],r9
  676fc2:	48 8b b5 d8 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x1428]
  676fc9:	48 8b 95 e0 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x1420]
  676fd0:	48 8b 8d e8 eb ff ff 	mov    rcx,QWORD PTR [rbp-0x1418]
  676fd7:	4c 8b 85 f0 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1410]
  676fde:	4c 8b 8d f8 eb ff ff 	mov    r9,QWORD PTR [rbp-0x1408]
  676fe5:	48 c7 40 08 08 00 00 	mov    QWORD PTR [rax+0x8],0x8
  676fec:	00 
  676fed:	48 c7 40 20 03 00 00 	mov    QWORD PTR [rax+0x20],0x3
  676ff4:	00 
  676ff5:	4c 89 58 50          	mov    QWORD PTR [rax+0x50],r11
  676ff9:	4c 89 60 68          	mov    QWORD PTR [rax+0x68],r12
  676ffd:	4c 89 38             	mov    QWORD PTR [rax],r15
  677000:	e8 cb 33 f7 ff       	call   5ea3d0 <exchange_3d_mod_mp_exchange_w3d_tile_>
  677005:	4c 8b 53 38          	mov    r10,QWORD PTR [rbx+0x38]
  677009:	33 c9                	xor    ecx,ecx
  67700b:	4c 8b 9b f8 00 00 00 	mov    r11,QWORD PTR [rbx+0xf8]
  677012:	4c 8b 3d a7 36 44 00 	mov    r15,QWORD PTR [rip+0x4436a7]        # aba6c0 <mod_param_mp_n_>
  677019:	41 bd 01 00 00 00    	mov    r13d,0x1
  67701f:	4d 63 22             	movsxd r12,DWORD PTR [r10]
  677022:	49 ff cc             	dec    r12
  677025:	4d 0f af a3 80 00 00 	imul   r12,QWORD PTR [r11+0x80]
  67702c:	00 
  67702d:	49 8b 7b 50          	mov    rdi,QWORD PTR [r11+0x50]
  677031:	49 8b 43 30          	mov    rax,QWORD PTR [r11+0x30]
  677035:	48 85 c0             	test   rax,rax
  677038:	48 89 bd b8 e1 ff ff 	mov    QWORD PTR [rbp-0x1e48],rdi
  67703f:	48 8b bd d0 eb ff ff 	mov    rdi,QWORD PTR [rbp-0x1430]
  677046:	48 0f 4e c1          	cmovle rax,rcx
  67704a:	48 89 85 98 e1 ff ff 	mov    QWORD PTR [rbp-0x1e68],rax
  677051:	48 8b 05 a8 36 44 00 	mov    rax,QWORD PTR [rip+0x4436a8]        # aba700 <mod_param_mp_n_+0x40>
  677058:	48 f7 d8             	neg    rax
  67705b:	4c 63 37             	movsxd r14,DWORD PTR [rdi]
  67705e:	49 03 c6             	add    rax,r14
  677061:	49 8b 53 48          	mov    rdx,QWORD PTR [r11+0x48]
  677065:	48 85 d2             	test   rdx,rdx
  677068:	4d 8b 4b 60          	mov    r9,QWORD PTR [r11+0x60]
  67706c:	48 0f 4e d1          	cmovle rdx,rcx
  677070:	4d 85 c9             	test   r9,r9
  677073:	48 c7 04 24 bc 72 84 	mov    QWORD PTR [rsp],0x8472bc
  67707a:	00 
  67707b:	4d 8d 34 87          	lea    r14,[r15+rax*4]
  67707f:	49 8b 73 38          	mov    rsi,QWORD PTR [r11+0x38]
  677083:	4c 8d bd 68 e1 ff ff 	lea    r15,[rbp-0x1e98]
  67708a:	4d 8b 43 68          	mov    r8,QWORD PTR [r11+0x68]
  67708e:	4c 0f 4e c9          	cmovle r9,rcx
  677092:	4c 89 74 24 08       	mov    QWORD PTR [rsp+0x8],r14
  677097:	4c 89 7c 24 10       	mov    QWORD PTR [rsp+0x10],r15
  67709c:	4d 03 23             	add    r12,QWORD PTR [r11]
  67709f:	49 89 57 48          	mov    QWORD PTR [r15+0x48],rdx
  6770a3:	49 89 4f 10          	mov    QWORD PTR [r15+0x10],rcx
  6770a7:	49 89 77 38          	mov    QWORD PTR [r15+0x38],rsi
  6770ab:	4d 89 47 68          	mov    QWORD PTR [r15+0x68],r8
  6770af:	4d 89 4f 60          	mov    QWORD PTR [r15+0x60],r9
  6770b3:	48 8b b5 d8 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x1428]
  6770ba:	48 8b 95 e0 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x1420]
  6770c1:	48 8b 8d e8 eb ff ff 	mov    rcx,QWORD PTR [rbp-0x1418]
  6770c8:	4c 8b 85 f0 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1410]
  6770cf:	4c 8b 8d f8 eb ff ff 	mov    r9,QWORD PTR [rbp-0x1408]
  6770d6:	49 c7 47 08 08 00 00 	mov    QWORD PTR [r15+0x8],0x8
  6770dd:	00 
  6770de:	49 c7 47 20 03 00 00 	mov    QWORD PTR [r15+0x20],0x3
  6770e5:	00 
  6770e6:	4d 89 6f 40          	mov    QWORD PTR [r15+0x40],r13
  6770ea:	4d 89 6f 58          	mov    QWORD PTR [r15+0x58],r13
  6770ee:	4d 89 6f 70          	mov    QWORD PTR [r15+0x70],r13
  6770f2:	4d 89 27             	mov    QWORD PTR [r15],r12
  6770f5:	4d 89 6f 18          	mov    QWORD PTR [r15+0x18],r13
  6770f9:	e8 d2 32 f7 ff       	call   5ea3d0 <exchange_3d_mod_mp_exchange_w3d_tile_>
  6770fe:	48 8b bd d0 eb ff ff 	mov    rdi,QWORD PTR [rbp-0x1430]
  677105:	48 8b 0d f4 35 44 00 	mov    rcx,QWORD PTR [rip+0x4435f4]        # aba700 <mod_param_mp_n_+0x40>
  67710c:	48 f7 d9             	neg    rcx
  67710f:	48 63 07             	movsxd rax,DWORD PTR [rdi]
  677112:	48 03 c8             	add    rcx,rax
  677115:	48 8b 15 a4 35 44 00 	mov    rdx,QWORD PTR [rip+0x4435a4]        # aba6c0 <mod_param_mp_n_>
  67711c:	4c 8b 83 d0 00 00 00 	mov    r8,QWORD PTR [rbx+0xd0]
  677123:	48 c7 04 24 bc 72 84 	mov    QWORD PTR [rsp],0x8472bc
  67712a:	00 
  67712b:	48 8d 34 8a          	lea    rsi,[rdx+rcx*4]
  67712f:	48 89 74 24 08       	mov    QWORD PTR [rsp+0x8],rsi
  677134:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
  677139:	48 8b b5 d8 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x1428]
  677140:	48 8b 95 e0 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x1420]
  677147:	48 8b 8d e8 eb ff ff 	mov    rcx,QWORD PTR [rbp-0x1418]
  67714e:	4c 8b 85 f0 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1410]
  677155:	4c 8b 8d f8 eb ff ff 	mov    r9,QWORD PTR [rbp-0x1408]
  67715c:	e8 6f 32 f7 ff       	call   5ea3d0 <exchange_3d_mod_mp_exchange_w3d_tile_>
  677161:	48 83 c4 20          	add    rsp,0x20
  677165:	48 63 15 74 99 56 00 	movsxd rdx,DWORD PTR [rip+0x569974]        # be0ae0 <mod_param_mp_nat_>
  67716c:	41 bf 01 00 00 00    	mov    r15d,0x1
  677172:	45 33 e4             	xor    r12d,r12d
  677175:	48 85 d2             	test   rdx,rdx
  677178:	0f 8e 2a 01 00 00    	jle    6772a8 <gls_corstep_mod_mp_gls_corstep_tile_+0xfb38>
  67717e:	48 89 95 e0 e1 ff ff 	mov    QWORD PTR [rbp-0x1e20],rdx
  677185:	45 33 f6             	xor    r14d,r14d
  677188:	48 8b 93 c8 00 00 00 	mov    rdx,QWORD PTR [rbx+0xc8]
  67718f:	4c 89 e1             	mov    rcx,r12
  677192:	48 8b bd d0 eb ff ff 	mov    rdi,QWORD PTR [rbp-0x1430]
  677199:	48 83 c4 e0          	add    rsp,0xffffffffffffffe0
  67719d:	4c 8b 0d 5c 35 44 00 	mov    r9,QWORD PTR [rip+0x44355c]        # aba700 <mod_param_mp_n_+0x40>
  6771a4:	48 0f af 8a 80 00 00 	imul   rcx,QWORD PTR [rdx+0x80]
  6771ab:	00 
  6771ac:	48 8b 42 30          	mov    rax,QWORD PTR [rdx+0x30]
  6771b0:	48 85 c0             	test   rax,rax
  6771b3:	4c 8b 52 48          	mov    r10,QWORD PTR [rdx+0x48]
  6771b7:	48 63 37             	movsxd rsi,DWORD PTR [rdi]
  6771ba:	49 0f 4e c6          	cmovle rax,r14
  6771be:	49 f7 d9             	neg    r9
  6771c1:	4d 85 d2             	test   r10,r10
  6771c4:	4c 8b 05 f5 34 44 00 	mov    r8,QWORD PTR [rip+0x4434f5]        # aba6c0 <mod_param_mp_n_>
  6771cb:	4c 8b 5a 60          	mov    r11,QWORD PTR [rdx+0x60]
  6771cf:	4d 0f 4e d6          	cmovle r10,r14
  6771d3:	4c 03 ce             	add    r9,rsi
  6771d6:	4d 85 db             	test   r11,r11
  6771d9:	48 c7 04 24 bc 72 84 	mov    QWORD PTR [rsp],0x8472bc
  6771e0:	00 
  6771e1:	4d 0f 4e de          	cmovle r11,r14
  6771e5:	48 03 0a             	add    rcx,QWORD PTR [rdx]
  6771e8:	48 89 85 a0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a60],rax
  6771ef:	4b 8d 34 88          	lea    rsi,[r8+r9*4]
  6771f3:	48 89 74 24 08       	mov    QWORD PTR [rsp+0x8],rsi
  6771f8:	48 8d b5 70 e5 ff ff 	lea    rsi,[rbp-0x1a90]
  6771ff:	4c 89 56 48          	mov    QWORD PTR [rsi+0x48],r10
  677203:	4c 89 5e 60          	mov    QWORD PTR [rsi+0x60],r11
  677207:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  67720c:	48 8b 42 38          	mov    rax,QWORD PTR [rdx+0x38]
  677210:	4c 8b 52 50          	mov    r10,QWORD PTR [rdx+0x50]
  677214:	4c 8b 5a 68          	mov    r11,QWORD PTR [rdx+0x68]
  677218:	48 89 0e             	mov    QWORD PTR [rsi],rcx
  67721b:	48 8b b5 d8 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x1428]
  677222:	48 8b 95 e0 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x1420]
  677229:	48 8b 8d e8 eb ff ff 	mov    rcx,QWORD PTR [rbp-0x1418]
  677230:	4c 8b 85 f0 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1410]
  677237:	4c 8b 8d f8 eb ff ff 	mov    r9,QWORD PTR [rbp-0x1408]
  67723e:	48 c7 85 78 e5 ff ff 	mov    QWORD PTR [rbp-0x1a88],0x8
  677245:	08 00 00 00 
  677249:	48 c7 85 90 e5 ff ff 	mov    QWORD PTR [rbp-0x1a70],0x3
  677250:	03 00 00 00 
  677254:	4c 89 b5 80 e5 ff ff 	mov    QWORD PTR [rbp-0x1a80],r14
  67725b:	4c 89 ad b0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a50],r13
  677262:	4c 89 ad c8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a38],r13
  677269:	4c 89 ad e0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a20],r13
  677270:	4c 89 ad 88 e5 ff ff 	mov    QWORD PTR [rbp-0x1a78],r13
  677277:	48 89 85 a8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a58],rax
  67727e:	4c 89 95 c0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a40],r10
  677285:	4c 89 9d d8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a28],r11
  67728c:	e8 3f 31 f7 ff       	call   5ea3d0 <exchange_3d_mod_mp_exchange_w3d_tile_>
  677291:	48 83 c4 20          	add    rsp,0x20
  677295:	49 ff c7             	inc    r15
  677298:	49 ff c4             	inc    r12
  67729b:	4c 3b bd e0 e1 ff ff 	cmp    r15,QWORD PTR [rbp-0x1e20]
  6772a2:	0f 8e e0 fe ff ff    	jle    677188 <gls_corstep_mod_mp_gls_corstep_tile_+0xfa18>
  6772a8:	48 8b bd d0 eb ff ff 	mov    rdi,QWORD PTR [rbp-0x1430]
  6772af:	4c 8b 05 6a 46 44 00 	mov    r8,QWORD PTR [rip+0x44466a]        # abb920 <mod_scalars_mp_ewperiodic_>
  6772b6:	4c 8b 0d c3 49 44 00 	mov    r9,QWORD PTR [rip+0x4449c3]        # abbc80 <mod_scalars_mp_nsperiodic_>
  6772bd:	4c 63 17             	movsxd r10,DWORD PTR [rdi]
  6772c0:	48 8b 8b 00 01 00 00 	mov    rcx,QWORD PTR [rbx+0x100]
  6772c7:	33 f6                	xor    esi,esi
  6772c9:	41 bd 01 00 00 00    	mov    r13d,0x1
  6772cf:	48 83 c4 a0          	add    rsp,0xffffffffffffffa0
  6772d3:	4c 89 ad 20 e2 ff ff 	mov    QWORD PTR [rbp-0x1de0],r13
  6772da:	41 bb 08 00 00 00    	mov    r11d,0x8
  6772e0:	4c 8b 71 30          	mov    r14,QWORD PTR [rcx+0x30]
  6772e4:	4d 85 f6             	test   r14,r14
  6772e7:	4c 8b 79 48          	mov    r15,QWORD PTR [rcx+0x48]
  6772eb:	4c 0f 4e f6          	cmovle r14,rsi
  6772ef:	41 bc 03 00 00 00    	mov    r12d,0x3
  6772f5:	4d 85 ff             	test   r15,r15
  6772f8:	4c 89 ad 38 e2 ff ff 	mov    QWORD PTR [rbp-0x1dc8],r13
  6772ff:	4c 89 ad 50 e2 ff ff 	mov    QWORD PTR [rbp-0x1db0],r13
  677306:	4c 0f 4e fe          	cmovle r15,rsi
  67730a:	4c 89 ad f8 e1 ff ff 	mov    QWORD PTR [rbp-0x1e08],r13
  677311:	4c 89 ad 98 e2 ff ff 	mov    QWORD PTR [rbp-0x1d68],r13
  677318:	4c 89 ad b0 e2 ff ff 	mov    QWORD PTR [rbp-0x1d50],r13
  67731f:	4c 89 ad c8 e2 ff ff 	mov    QWORD PTR [rbp-0x1d38],r13
  677326:	4c 89 ad 70 e2 ff ff 	mov    QWORD PTR [rbp-0x1d90],r13
  67732d:	4c 8b 6b 38          	mov    r13,QWORD PTR [rbx+0x38]
  677331:	48 8b 51 60          	mov    rdx,QWORD PTR [rcx+0x60]
  677335:	48 85 d2             	test   rdx,rdx
  677338:	48 8b 41 38          	mov    rax,QWORD PTR [rcx+0x38]
  67733c:	48 0f 4e d6          	cmovle rdx,rsi
  677340:	48 89 95 40 e2 ff ff 	mov    QWORD PTR [rbp-0x1dc0],rdx
  677347:	49 63 55 00          	movsxd rdx,DWORD PTR [r13+0x0]
  67734b:	48 ff ca             	dec    rdx
  67734e:	48 89 85 18 e2 ff ff 	mov    QWORD PTR [rbp-0x1de8],rax
  677355:	48 8b 81 80 00 00 00 	mov    rax,QWORD PTR [rcx+0x80]
  67735c:	48 0f af c2          	imul   rax,rdx
  677360:	48 03 01             	add    rax,QWORD PTR [rcx]
  677363:	4c 89 b5 10 e2 ff ff 	mov    QWORD PTR [rbp-0x1df0],r14
  67736a:	4c 8b b5 f0 eb ff ff 	mov    r14,QWORD PTR [rbp-0x1410]
  677371:	48 89 85 e0 e1 ff ff 	mov    QWORD PTR [rbp-0x1e20],rax
  677378:	48 8b 83 f8 00 00 00 	mov    rax,QWORD PTR [rbx+0xf8]
  67737f:	4c 89 34 24          	mov    QWORD PTR [rsp],r14
  677383:	4c 89 bd 28 e2 ff ff 	mov    QWORD PTR [rbp-0x1dd8],r15
  67738a:	4c 8b bd f8 eb ff ff 	mov    r15,QWORD PTR [rbp-0x1408]
  677391:	4c 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],r15
  677396:	4c 8b b8 80 00 00 00 	mov    r15,QWORD PTR [rax+0x80]
  67739d:	4c 0f af fa          	imul   r15,rdx
  6773a1:	4c 89 9d e8 e1 ff ff 	mov    QWORD PTR [rbp-0x1e18],r11
  6773a8:	4c 89 9d 60 e2 ff ff 	mov    QWORD PTR [rbp-0x1da0],r11
  6773af:	4c 89 a5 00 e2 ff ff 	mov    QWORD PTR [rbp-0x1e00],r12
  6773b6:	4c 89 a5 78 e2 ff ff 	mov    QWORD PTR [rbp-0x1d88],r12
  6773bd:	4c 8b 59 50          	mov    r11,QWORD PTR [rcx+0x50]
  6773c1:	4c 8b 61 68          	mov    r12,QWORD PTR [rcx+0x68]
  6773c5:	48 8b 48 30          	mov    rcx,QWORD PTR [rax+0x30]
  6773c9:	48 85 c9             	test   rcx,rcx
  6773cc:	4c 89 9d 30 e2 ff ff 	mov    QWORD PTR [rbp-0x1dd0],r11
  6773d3:	48 0f 4e ce          	cmovle rcx,rsi
  6773d7:	4c 89 a5 48 e2 ff ff 	mov    QWORD PTR [rbp-0x1db8],r12
  6773de:	48 89 8d 88 e2 ff ff 	mov    QWORD PTR [rbp-0x1d78],rcx
  6773e5:	4c 8b 58 48          	mov    r11,QWORD PTR [rax+0x48]
  6773e9:	4d 85 db             	test   r11,r11
  6773ec:	4c 8b 60 60          	mov    r12,QWORD PTR [rax+0x60]
  6773f0:	48 8b 48 38          	mov    rcx,QWORD PTR [rax+0x38]
  6773f4:	4c 0f 4e de          	cmovle r11,rsi
  6773f8:	4c 8b 68 50          	mov    r13,QWORD PTR [rax+0x50]
  6773fc:	4d 85 e4             	test   r12,r12
  6773ff:	4c 8b 70 68          	mov    r14,QWORD PTR [rax+0x68]
  677403:	48 8b 15 b6 32 44 00 	mov    rdx,QWORD PTR [rip+0x4432b6]        # aba6c0 <mod_param_mp_n_>
  67740a:	4c 0f 4e e6          	cmovle r12,rsi
  67740e:	4c 03 38             	add    r15,QWORD PTR [rax]
  677411:	48 8b 05 e8 32 44 00 	mov    rax,QWORD PTR [rip+0x4432e8]        # aba700 <mod_param_mp_n_+0x40>
  677418:	48 c1 e0 02          	shl    rax,0x2
  67741c:	48 2b d0             	sub    rdx,rax
  67741f:	48 c7 44 24 10 bc 72 	mov    QWORD PTR [rsp+0x10],0x8472bc
  677426:	84 00 
  677428:	48 89 8d 90 e2 ff ff 	mov    QWORD PTR [rbp-0x1d70],rcx
  67742f:	48 8b 0d 2a 45 44 00 	mov    rcx,QWORD PTR [rip+0x44452a]        # abb960 <mod_scalars_mp_ewperiodic_+0x40>
  677436:	48 c1 e1 02          	shl    rcx,0x2
  67743a:	4a 8d 04 92          	lea    rax,[rdx+r10*4]
  67743e:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  677443:	4c 2b c1             	sub    r8,rcx
  677446:	48 8b 05 73 48 44 00 	mov    rax,QWORD PTR [rip+0x444873]        # abbcc0 <mod_scalars_mp_nsperiodic_+0x40>
  67744d:	b9 c0 72 84 00       	mov    ecx,0x8472c0
  677452:	48 c1 e0 02          	shl    rax,0x2
  677456:	4c 2b c8             	sub    r9,rax
  677459:	48 8d 85 58 e2 ff ff 	lea    rax,[rbp-0x1da8]
  677460:	48 c7 44 24 20 08 0a 	mov    QWORD PTR [rsp+0x20],0xbe0a08
  677467:	be 00 
  677469:	4f 8d 04 90          	lea    r8,[r8+r10*4]
  67746d:	48 8b 93 d0 00 00 00 	mov    rdx,QWORD PTR [rbx+0xd0]
  677474:	4c 89 44 24 28       	mov    QWORD PTR [rsp+0x28],r8
  677479:	48 89 70 98          	mov    QWORD PTR [rax-0x68],rsi
  67747d:	4f 8d 0c 91          	lea    r9,[r9+r10*4]
  677481:	4c 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],r9
  677486:	4c 8d 95 e0 e1 ff ff 	lea    r10,[rbp-0x1e20]
  67748d:	4c 89 54 24 38       	mov    QWORD PTR [rsp+0x38],r10
  677492:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  677497:	48 89 54 24 48       	mov    QWORD PTR [rsp+0x48],rdx
  67749c:	ba c8 58 ac 00       	mov    edx,0xac58c8
  6774a1:	48 89 74 24 50       	mov    QWORD PTR [rsp+0x50],rsi
  6774a6:	48 89 70 10          	mov    QWORD PTR [rax+0x10],rsi
  6774aa:	48 8b b5 d8 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x1428]
  6774b1:	4c 8b 85 e0 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1420]
  6774b8:	4c 8b 8d e8 eb ff ff 	mov    r9,QWORD PTR [rbp-0x1418]
  6774bf:	4c 89 58 48          	mov    QWORD PTR [rax+0x48],r11
  6774c3:	4c 89 60 60          	mov    QWORD PTR [rax+0x60],r12
  6774c7:	4c 89 68 50          	mov    QWORD PTR [rax+0x50],r13
  6774cb:	4c 89 70 68          	mov    QWORD PTR [rax+0x68],r14
  6774cf:	4c 89 38             	mov    QWORD PTR [rax],r15
  6774d2:	e8 89 ba f5 ff       	call   5d2f60 <mp_exchange_mod_mp_mp_exchange3d_>
  6774d7:	48 83 c4 60          	add    rsp,0x60
  6774db:	48 8b bd d0 eb ff ff 	mov    rdi,QWORD PTR [rbp-0x1430]
  6774e2:	33 c0                	xor    eax,eax
  6774e4:	48 8b 0d d5 47 44 00 	mov    rcx,QWORD PTR [rip+0x4447d5]        # abbcc0 <mod_scalars_mp_nsperiodic_+0x40>
  6774eb:	ba c8 58 ac 00       	mov    edx,0xac58c8
  6774f0:	48 c1 e1 02          	shl    rcx,0x2
  6774f4:	4c 8b 0d 85 47 44 00 	mov    r9,QWORD PTR [rip+0x444785]        # abbc80 <mod_scalars_mp_nsperiodic_>
  6774fb:	4c 8b 05 5e 44 44 00 	mov    r8,QWORD PTR [rip+0x44445e]        # abb960 <mod_scalars_mp_ewperiodic_+0x40>
  677502:	4c 2b c9             	sub    r9,rcx
  677505:	49 c1 e0 02          	shl    r8,0x2
  677509:	b9 c4 72 84 00       	mov    ecx,0x8472c4
  67750e:	4c 8b 1d 0b 44 44 00 	mov    r11,QWORD PTR [rip+0x44440b]        # abb920 <mod_scalars_mp_ewperiodic_>
  677515:	4c 63 3f             	movsxd r15,DWORD PTR [rdi]
  677518:	4d 2b d8             	sub    r11,r8
  67751b:	50                   	push   rax
  67751c:	50                   	push   rax
  67751d:	ff b3 c8 00 00 00    	push   QWORD PTR [rbx+0xc8]
  677523:	4c 8b 2d d6 31 44 00 	mov    r13,QWORD PTR [rip+0x4431d6]        # aba700 <mod_param_mp_n_+0x40>
  67752a:	4f 8d 14 b9          	lea    r10,[r9+r15*4]
  67752e:	49 c1 e5 02          	shl    r13,0x2
  677532:	4f 8d 24 bb          	lea    r12,[r11+r15*4]
  677536:	41 52                	push   r10
  677538:	4c 8b 35 81 31 44 00 	mov    r14,QWORD PTR [rip+0x443181]        # aba6c0 <mod_param_mp_n_>
  67753f:	4d 2b f5             	sub    r14,r13
  677542:	41 54                	push   r12
  677544:	68 08 0a be 00       	push   0xbe0a08
  677549:	68 e0 0a be 00       	push   0xbe0ae0
  67754e:	51                   	push   rcx
  67754f:	48 8b b5 d8 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x1428]
  677556:	4f 8d 2c be          	lea    r13,[r14+r15*4]
  67755a:	41 55                	push   r13
  67755c:	68 bc 72 84 00       	push   0x8472bc
  677561:	ff b5 f8 eb ff ff    	push   QWORD PTR [rbp-0x1408]
  677567:	ff b5 f0 eb ff ff    	push   QWORD PTR [rbp-0x1410]
  67756d:	4c 8b 85 e0 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1420]
  677574:	4c 8b 8d e8 eb ff ff 	mov    r9,QWORD PTR [rbp-0x1418]
  67757b:	e8 d0 85 fa ff       	call   61fb50 <mp_exchange_mod_mp_mp_exchange4d_>
  677580:	48 83 c4 60          	add    rsp,0x60
  677584:	48 8b 85 d8 ea ff ff 	mov    rax,QWORD PTR [rbp-0x1528]
  67758b:	48 89 c4             	mov    rsp,rax
  67758e:	4c 8b bd b8 ea ff ff 	mov    r15,QWORD PTR [rbp-0x1548]
  677595:	4c 8b b5 c0 ea ff ff 	mov    r14,QWORD PTR [rbp-0x1540]
  67759c:	4c 8b ad c8 ea ff ff 	mov    r13,QWORD PTR [rbp-0x1538]
  6775a3:	4c 8b a5 d0 ea ff ff 	mov    r12,QWORD PTR [rbp-0x1530]
  6775aa:	48 89 ec             	mov    rsp,rbp
  6775ad:	5d                   	pop    rbp
  6775ae:	48 89 dc             	mov    rsp,rbx
  6775b1:	5b                   	pop    rbx
  6775b2:	c3                   	ret    
  6775b3:	33 c0                	xor    eax,eax
  6775b5:	e9 00 e5 ff ff       	jmp    675aba <gls_corstep_mod_mp_gls_corstep_tile_+0xe34a>
  6775ba:	8b 85 a0 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1360]
  6775c0:	45 33 db             	xor    r11d,r11d
  6775c3:	3b 85 c0 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x1340]
  6775c9:	0f 8d 6e e8 ff ff    	jge    675e3d <gls_corstep_mod_mp_gls_corstep_tile_+0xe6cd>
  6775cf:	8b 85 b8 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1348]
  6775d5:	3b 85 c0 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x1340]
  6775db:	b8 00 00 00 00       	mov    eax,0x0
  6775e0:	7c 18                	jl     6775fa <gls_corstep_mod_mp_gls_corstep_tile_+0xfe8a>
  6775e2:	41 ba 01 00 00 00    	mov    r10d,0x1
  6775e8:	41 bb 02 00 00 00    	mov    r11d,0x2
  6775ee:	44 8b 8d c0 ec ff ff 	mov    r9d,DWORD PTR [rbp-0x1340]
  6775f5:	e9 c1 ed ff ff       	jmp    6763bb <gls_corstep_mod_mp_gls_corstep_tile_+0xec4b>
  6775fa:	48 8b 85 d8 ee ff ff 	mov    rax,QWORD PTR [rbp-0x1128]
  677601:	48 ff c0             	inc    rax
  677604:	48 89 85 d8 ee ff ff 	mov    QWORD PTR [rbp-0x1128],rax
  67760b:	48 3b 85 20 ec ff ff 	cmp    rax,QWORD PTR [rbp-0x13e0]
  677612:	0f 82 67 d4 ff ff    	jb     674a7f <gls_corstep_mod_mp_gls_corstep_tile_+0xd30f>
  677618:	e9 8d f2 ff ff       	jmp    6768aa <gls_corstep_mod_mp_gls_corstep_tile_+0xf13a>
  67761d:	33 c0                	xor    eax,eax
  67761f:	e9 a1 e5 ff ff       	jmp    675bc5 <gls_corstep_mod_mp_gls_corstep_tile_+0xe455>
  677624:	8b 85 a0 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1360]
  67762a:	45 33 db             	xor    r11d,r11d
  67762d:	3b 85 c0 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x1340]
  677633:	0f 8c 80 00 00 00    	jl     6776b9 <gls_corstep_mod_mp_gls_corstep_tile_+0xff49>
  677639:	49 8d 43 01          	lea    rax,[r11+0x1]
  67763d:	48 3b 85 a8 ee ff ff 	cmp    rax,QWORD PTR [rbp-0x1158]
  677644:	73 16                	jae    67765c <gls_corstep_mod_mp_gls_corstep_tile_+0xfeec>
  677646:	49 83 c3 02          	add    r11,0x2
  67764a:	4c 3b 9d a8 ee ff ff 	cmp    r11,QWORD PTR [rbp-0x1158]
  677651:	0f 82 e4 ec ff ff    	jb     67633b <gls_corstep_mod_mp_gls_corstep_tile_+0xebcb>
  677657:	e9 70 01 00 00       	jmp    6777cc <gls_corstep_mod_mp_gls_corstep_tile_+0x1005c>
  67765c:	8b 85 b8 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1348]
  677662:	3b 85 c0 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x1340]
  677668:	b8 00 00 00 00       	mov    eax,0x0
  67766d:	7c 8b                	jl     6775fa <gls_corstep_mod_mp_gls_corstep_tile_+0xfe8a>
  67766f:	48 8b 95 d8 ee ff ff 	mov    rdx,QWORD PTR [rbp-0x1128]
  677676:	41 ba 01 00 00 00    	mov    r10d,0x1
  67767c:	48 8b b5 e0 ee ff ff 	mov    rsi,QWORD PTR [rbp-0x1120]
  677683:	41 bb 02 00 00 00    	mov    r11d,0x2
  677689:	48 8b 8d f0 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x1010]
  677690:	45 33 e4             	xor    r12d,r12d
  677693:	48 8b bd 20 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x13e0]
  67769a:	44 8b 85 b8 ec ff ff 	mov    r8d,DWORD PTR [rbp-0x1348]
  6776a1:	44 8b 8d c0 ec ff ff 	mov    r9d,DWORD PTR [rbp-0x1340]
  6776a8:	48 ff c0             	inc    rax
  6776ab:	48 3b c6             	cmp    rax,rsi
  6776ae:	0f 82 ee ec ff ff    	jb     6763a2 <gls_corstep_mod_mp_gls_corstep_tile_+0xec32>
  6776b4:	e9 e5 f1 ff ff       	jmp    67689e <gls_corstep_mod_mp_gls_corstep_tile_+0xf12e>
  6776b9:	8b 85 b8 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1348]
  6776bf:	3b 85 c0 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x1340]
  6776c5:	0f 8c 2f ff ff ff    	jl     6775fa <gls_corstep_mod_mp_gls_corstep_tile_+0xfe8a>
  6776cb:	48 8b 95 d8 ee ff ff 	mov    rdx,QWORD PTR [rbp-0x1128]
  6776d2:	41 ba 01 00 00 00    	mov    r10d,0x1
  6776d8:	48 8b b5 e0 ee ff ff 	mov    rsi,QWORD PTR [rbp-0x1120]
  6776df:	41 bb 02 00 00 00    	mov    r11d,0x2
  6776e5:	48 8b 8d f0 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x1010]
  6776ec:	45 33 e4             	xor    r12d,r12d
  6776ef:	48 8b bd 20 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x13e0]
  6776f6:	41 89 c0             	mov    r8d,eax
  6776f9:	44 8b 8d c0 ec ff ff 	mov    r9d,DWORD PTR [rbp-0x1340]
  677700:	4c 89 d0             	mov    rax,r10
  677703:	48 83 fe 01          	cmp    rsi,0x1
  677707:	77 9f                	ja     6776a8 <gls_corstep_mod_mp_gls_corstep_tile_+0xff38>
  677709:	e9 90 f1 ff ff       	jmp    67689e <gls_corstep_mod_mp_gls_corstep_tile_+0xf12e>
  67770e:	3b 85 c0 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x1340]
  677714:	7c 27                	jl     67773d <gls_corstep_mod_mp_gls_corstep_tile_+0xffcd>
  677716:	41 bb 01 00 00 00    	mov    r11d,0x1
  67771c:	48 83 bd a8 ee ff ff 	cmp    QWORD PTR [rbp-0x1158],0x1
  677723:	01 
  677724:	0f 87 0f ff ff ff    	ja     677639 <gls_corstep_mod_mp_gls_corstep_tile_+0xfec9>
  67772a:	8b 85 b8 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1348]
  677730:	3b 85 c0 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x1340]
  677736:	7d 93                	jge    6776cb <gls_corstep_mod_mp_gls_corstep_tile_+0xff5b>
  677738:	e9 bd fe ff ff       	jmp    6775fa <gls_corstep_mod_mp_gls_corstep_tile_+0xfe8a>
  67773d:	8b 85 b8 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1348]
  677743:	3b 85 c0 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x1340]
  677749:	0f 8c ab fe ff ff    	jl     6775fa <gls_corstep_mod_mp_gls_corstep_tile_+0xfe8a>
  67774f:	48 8b 8d f0 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x1010]
  677756:	48 83 bd e0 ee ff ff 	cmp    QWORD PTR [rbp-0x1120],0x1
  67775d:	01 
  67775e:	76 47                	jbe    6777a7 <gls_corstep_mod_mp_gls_corstep_tile_+0x10037>
  677760:	41 89 c0             	mov    r8d,eax
  677763:	41 bb 02 00 00 00    	mov    r11d,0x2
  677769:	41 ba 01 00 00 00    	mov    r10d,0x1
  67776f:	48 8b b5 e0 ee ff ff 	mov    rsi,QWORD PTR [rbp-0x1120]
  677776:	45 33 e4             	xor    r12d,r12d
  677779:	48 8b 95 d8 ee ff ff 	mov    rdx,QWORD PTR [rbp-0x1128]
  677780:	4c 89 d8             	mov    rax,r11
  677783:	48 8b bd 20 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x13e0]
  67778a:	44 8b 8d c0 ec ff ff 	mov    r9d,DWORD PTR [rbp-0x1340]
  677791:	48 83 fe 02          	cmp    rsi,0x2
  677795:	0f 86 03 f1 ff ff    	jbe    67689e <gls_corstep_mod_mp_gls_corstep_tile_+0xf12e>
  67779b:	48 89 95 d8 ee ff ff 	mov    QWORD PTR [rbp-0x1128],rdx
  6777a2:	e9 ae f0 ff ff       	jmp    676855 <gls_corstep_mod_mp_gls_corstep_tile_+0xf0e5>
  6777a7:	48 8b 85 d8 ee ff ff 	mov    rax,QWORD PTR [rbp-0x1128]
  6777ae:	48 ff c0             	inc    rax
  6777b1:	48 89 85 d8 ee ff ff 	mov    QWORD PTR [rbp-0x1128],rax
  6777b8:	48 3b 85 20 ec ff ff 	cmp    rax,QWORD PTR [rbp-0x13e0]
  6777bf:	0f 83 e5 f0 ff ff    	jae    6768aa <gls_corstep_mod_mp_gls_corstep_tile_+0xf13a>
  6777c5:	33 c0                	xor    eax,eax
  6777c7:	e9 09 3d ff ff       	jmp    66b4d5 <gls_corstep_mod_mp_gls_corstep_tile_+0x3d65>
  6777cc:	8b 85 b8 ec ff ff    	mov    eax,DWORD PTR [rbp-0x1348]
  6777d2:	3b 85 c0 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x1340]
  6777d8:	b8 00 00 00 00       	mov    eax,0x0
  6777dd:	0f 8d 86 eb ff ff    	jge    676369 <gls_corstep_mod_mp_gls_corstep_tile_+0xebf9>
  6777e3:	e9 12 fe ff ff       	jmp    6775fa <gls_corstep_mod_mp_gls_corstep_tile_+0xfe8a>
  6777e8:	48 c7 85 80 e6 ff ff 	mov    QWORD PTR [rbp-0x1980],0x0
  6777ef:	00 00 00 00 
  6777f3:	e9 41 e9 ff ff       	jmp    676139 <gls_corstep_mod_mp_gls_corstep_tile_+0xe9c9>
  6777f8:	48 c7 85 88 e6 ff ff 	mov    QWORD PTR [rbp-0x1978],0x0
  6777ff:	00 00 00 00 
  677803:	e9 4b ee ff ff       	jmp    676653 <gls_corstep_mod_mp_gls_corstep_tile_+0xeee3>
  677808:	45 33 db             	xor    r11d,r11d
  67780b:	e9 72 e5 ff ff       	jmp    675d82 <gls_corstep_mod_mp_gls_corstep_tile_+0xe612>
  677810:	45 33 db             	xor    r11d,r11d
  677813:	3b 85 c0 ec ff ff    	cmp    eax,DWORD PTR [rbp-0x1340]
  677819:	0f 8d 1c eb ff ff    	jge    67633b <gls_corstep_mod_mp_gls_corstep_tile_+0xebcb>
  67781f:	eb ab                	jmp    6777cc <gls_corstep_mod_mp_gls_corstep_tile_+0x1005c>
  677821:	45 33 c0             	xor    r8d,r8d
  677824:	e9 61 e0 ff ff       	jmp    67588a <gls_corstep_mod_mp_gls_corstep_tile_+0xe11a>
  677829:	48 c7 85 d8 e6 ff ff 	mov    QWORD PTR [rbp-0x1928],0x0
  677830:	00 00 00 00 
  677834:	e9 5e d9 ff ff       	jmp    675197 <gls_corstep_mod_mp_gls_corstep_tile_+0xda27>
  677839:	33 c0                	xor    eax,eax
  67783b:	e9 9b d5 ff ff       	jmp    674ddb <gls_corstep_mod_mp_gls_corstep_tile_+0xd66b>
  677840:	33 d2                	xor    edx,edx
  677842:	e9 ba 40 ff ff       	jmp    66b901 <gls_corstep_mod_mp_gls_corstep_tile_+0x4191>
  677847:	48 89 95 d8 ee ff ff 	mov    QWORD PTR [rbp-0x1128],rdx
  67784e:	e9 25 d2 ff ff       	jmp    674a78 <gls_corstep_mod_mp_gls_corstep_tile_+0xd308>
  677853:	33 c0                	xor    eax,eax
  677855:	e9 d1 2c ff ff       	jmp    66a52b <gls_corstep_mod_mp_gls_corstep_tile_+0x2dbb>
  67785a:	33 c0                	xor    eax,eax
  67785c:	e9 ac 2a ff ff       	jmp    66a30d <gls_corstep_mod_mp_gls_corstep_tile_+0x2b9d>
  677861:	48 2b 8d b0 ea ff ff 	sub    rcx,QWORD PTR [rbp-0x1550]
  677868:	48 ff c1             	inc    rcx
  67786b:	48 83 f9 04          	cmp    rcx,0x4
  67786f:	7c 63                	jl     6778d4 <gls_corstep_mod_mp_gls_corstep_tile_+0x10164>
  677871:	48 8b b5 08 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x13f8]
  677878:	89 c8                	mov    eax,ecx
  67787a:	48 8b 95 c0 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x1440]
  677881:	83 e0 fc             	and    eax,0xfffffffc
  677884:	48 63 c0             	movsxd rax,eax
  677887:	33 ff                	xor    edi,edi
  677889:	49 03 f6             	add    rsi,r14
  67788c:	49 03 d6             	add    rdx,r14
  67788f:	c5 fd 10 04 fe       	vmovupd ymm0,YMMWORD PTR [rsi+rdi*8]
  677894:	c5 fd 11 04 fa       	vmovupd YMMWORD PTR [rdx+rdi*8],ymm0
  677899:	48 83 c7 04          	add    rdi,0x4
  67789d:	48 3b f8             	cmp    rdi,rax
  6778a0:	72 ed                	jb     67788f <gls_corstep_mod_mp_gls_corstep_tile_+0x1011f>
  6778a2:	48 3b c1             	cmp    rax,rcx
  6778a5:	0f 83 e3 27 ff ff    	jae    66a08e <gls_corstep_mod_mp_gls_corstep_tile_+0x291e>
  6778ab:	48 8b b5 08 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x13f8]
  6778b2:	48 8b 95 c0 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x1440]
  6778b9:	49 03 f6             	add    rsi,r14
  6778bc:	49 03 d6             	add    rdx,r14
  6778bf:	48 8b 3c c6          	mov    rdi,QWORD PTR [rsi+rax*8]
  6778c3:	48 89 3c c2          	mov    QWORD PTR [rdx+rax*8],rdi
  6778c7:	48 ff c0             	inc    rax
  6778ca:	48 3b c1             	cmp    rax,rcx
  6778cd:	72 f0                	jb     6778bf <gls_corstep_mod_mp_gls_corstep_tile_+0x1014f>
  6778cf:	e9 ba 27 ff ff       	jmp    66a08e <gls_corstep_mod_mp_gls_corstep_tile_+0x291e>
  6778d4:	33 c0                	xor    eax,eax
  6778d6:	eb ca                	jmp    6778a2 <gls_corstep_mod_mp_gls_corstep_tile_+0x10132>
  6778d8:	48 2b 8d b0 ea ff ff 	sub    rcx,QWORD PTR [rbp-0x1550]
  6778df:	48 ff c1             	inc    rcx
  6778e2:	48 83 f9 04          	cmp    rcx,0x4
  6778e6:	7c 63                	jl     67794b <gls_corstep_mod_mp_gls_corstep_tile_+0x101db>
  6778e8:	48 8b b5 c8 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x1438]
  6778ef:	89 c8                	mov    eax,ecx
  6778f1:	48 8b 95 00 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1400]
  6778f8:	83 e0 fc             	and    eax,0xfffffffc
  6778fb:	48 63 c0             	movsxd rax,eax
  6778fe:	33 ff                	xor    edi,edi
  677900:	49 03 f6             	add    rsi,r14
  677903:	49 03 d6             	add    rdx,r14
  677906:	c5 fd 10 04 fe       	vmovupd ymm0,YMMWORD PTR [rsi+rdi*8]
  67790b:	c5 fd 11 04 fa       	vmovupd YMMWORD PTR [rdx+rdi*8],ymm0
  677910:	48 83 c7 04          	add    rdi,0x4
  677914:	48 3b f8             	cmp    rdi,rax
  677917:	72 ed                	jb     677906 <gls_corstep_mod_mp_gls_corstep_tile_+0x10196>
  677919:	48 3b c1             	cmp    rax,rcx
  67791c:	0f 83 a2 26 ff ff    	jae    669fc4 <gls_corstep_mod_mp_gls_corstep_tile_+0x2854>
  677922:	48 8b b5 c8 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x1438]
  677929:	48 8b 95 00 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1400]
  677930:	49 03 f6             	add    rsi,r14
  677933:	49 03 d6             	add    rdx,r14
  677936:	48 8b 3c c6          	mov    rdi,QWORD PTR [rsi+rax*8]
  67793a:	48 89 3c c2          	mov    QWORD PTR [rdx+rax*8],rdi
  67793e:	48 ff c0             	inc    rax
  677941:	48 3b c1             	cmp    rax,rcx
  677944:	72 f0                	jb     677936 <gls_corstep_mod_mp_gls_corstep_tile_+0x101c6>
  677946:	e9 79 26 ff ff       	jmp    669fc4 <gls_corstep_mod_mp_gls_corstep_tile_+0x2854>
  67794b:	33 c0                	xor    eax,eax
  67794d:	eb ca                	jmp    677919 <gls_corstep_mod_mp_gls_corstep_tile_+0x101a9>
  67794f:	48 c7 85 38 ec ff ff 	mov    QWORD PTR [rbp-0x13c8],0x0
  677956:	00 00 00 00 
  67795a:	e9 04 18 ff ff       	jmp    669163 <gls_corstep_mod_mp_gls_corstep_tile_+0x19f3>
  67795f:	48 8b 8d f0 ec ff ff 	mov    rcx,QWORD PTR [rbp-0x1310]
  677966:	48 8b 35 13 8d 44 00 	mov    rsi,QWORD PTR [rip+0x448d13]        # ac0680 <mod_scalars_mp_gls_m_>
  67796d:	48 8d 04 c8          	lea    rax,[rax+rcx*8]
  677971:	c5 fb 10 40 f8       	vmovsd xmm0,QWORD PTR [rax-0x8]
  677976:	c5 fb 11 85 f8 e0 ff 	vmovsd QWORD PTR [rbp-0x1f08],xmm0
  67797d:	ff 
  67797e:	c5 f9 2e 05 fa 47 1d 	vucomisd xmm0,QWORD PTR [rip+0x1d47fa]        # 84c180 <__STRLITPACK_0.112+0x70>
  677985:	00 
  677986:	7a 02                	jp     67798a <gls_corstep_mod_mp_gls_corstep_tile_+0x1021a>
  677988:	74 1d                	je     6779a7 <gls_corstep_mod_mp_gls_corstep_tile_+0x10237>
  67798a:	c7 85 78 eb ff ff 00 	mov    DWORD PTR [rbp-0x1488],0x0
  677991:	00 00 00 
  677994:	c5 fb 10 44 ce f8    	vmovsd xmm0,QWORD PTR [rsi+rcx*8-0x8]
  67799a:	c5 fb 11 85 f0 e0 ff 	vmovsd QWORD PTR [rbp-0x1f10],xmm0
  6779a1:	ff 
  6779a2:	e9 e9 0e ff ff       	jmp    668890 <gls_corstep_mod_mp_gls_corstep_tile_+0x1120>
  6779a7:	c5 fb 10 44 ce f8    	vmovsd xmm0,QWORD PTR [rsi+rcx*8-0x8]
  6779ad:	c5 fb 11 85 f0 e0 ff 	vmovsd QWORD PTR [rbp-0x1f10],xmm0
  6779b4:	ff 
  6779b5:	c5 f9 2e 05 c3 47 1d 	vucomisd xmm0,QWORD PTR [rip+0x1d47c3]        # 84c180 <__STRLITPACK_0.112+0x70>
  6779bc:	00 
  6779bd:	7a 02                	jp     6779c1 <gls_corstep_mod_mp_gls_corstep_tile_+0x10251>
  6779bf:	74 0f                	je     6779d0 <gls_corstep_mod_mp_gls_corstep_tile_+0x10260>
  6779c1:	c7 85 78 eb ff ff 00 	mov    DWORD PTR [rbp-0x1488],0x0
  6779c8:	00 00 00 
  6779cb:	e9 c0 0e ff ff       	jmp    668890 <gls_corstep_mod_mp_gls_corstep_tile_+0x1120>
  6779d0:	c7 85 78 eb ff ff ff 	mov    DWORD PTR [rbp-0x1488],0xffffffff
  6779d7:	ff ff ff 
  6779da:	e9 b1 0e ff ff       	jmp    668890 <gls_corstep_mod_mp_gls_corstep_tile_+0x1120>
  6779df:	4c 89 f9             	mov    rcx,r15
  6779e2:	e9 05 0e ff ff       	jmp    6687ec <gls_corstep_mod_mp_gls_corstep_tile_+0x107c>
  6779e7:	48 c7 85 e8 f5 ff ff 	mov    QWORD PTR [rbp-0xa18],0x0
  6779ee:	00 00 00 00 
  6779f2:	e9 b0 66 ff ff       	jmp    66e0a7 <gls_corstep_mod_mp_gls_corstep_tile_+0x6937>
  6779f7:	c5 fb 10 05 99 47 1d 	vmovsd xmm0,QWORD PTR [rip+0x1d4799]        # 84c198 <__STRLITPACK_0.112+0x88>
  6779fe:	00 
  6779ff:	48 8b 85 68 e8 ff ff 	mov    rax,QWORD PTR [rbp-0x1798]
  677a06:	48 8b 95 60 e8 ff ff 	mov    rdx,QWORD PTR [rbp-0x17a0]
  677a0d:	4c 8b 9d 58 e8 ff ff 	mov    r11,QWORD PTR [rbp-0x17a8]
  677a14:	4c 8b ad d8 fc ff ff 	mov    r13,QWORD PTR [rbp-0x328]
  677a1b:	4c 8b 85 50 ec ff ff 	mov    r8,QWORD PTR [rbp-0x13b0]
  677a22:	4c 8b b5 28 fd ff ff 	mov    r14,QWORD PTR [rbp-0x2d8]
  677a29:	4c 8b 8d 58 ec ff ff 	mov    r9,QWORD PTR [rbp-0x13a8]
  677a30:	4c 8b 95 90 f2 ff ff 	mov    r10,QWORD PTR [rbp-0xd70]
  677a37:	44 8b bd 78 fa ff ff 	mov    r15d,DWORD PTR [rbp-0x588]
  677a3e:	8b 8d 80 fa ff ff    	mov    ecx,DWORD PTR [rbp-0x580]
  677a44:	e9 13 9e ff ff       	jmp    67185c <gls_corstep_mod_mp_gls_corstep_tile_+0xa0ec>
  677a49:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
