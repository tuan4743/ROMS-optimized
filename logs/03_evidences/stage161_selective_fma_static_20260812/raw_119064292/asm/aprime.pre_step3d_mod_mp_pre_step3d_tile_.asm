00000000008145b0 <pre_step3d_mod_mp_pre_step3d_tile_>:
  8145b0:	53                   	push   %rbx
  8145b1:	48 89 e3             	mov    %rsp,%rbx
  8145b4:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  8145b8:	55                   	push   %rbp
  8145b9:	55                   	push   %rbp
  8145ba:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  8145be:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  8145c3:	48 89 e5             	mov    %rsp,%rbp
  8145c6:	48 81 ec 70 0e 00 00 	sub    $0xe70,%rsp
  8145cd:	4c 89 a5 30 f6 ff ff 	mov    %r12,-0x9d0(%rbp)
  8145d4:	48 89 b5 70 f5 ff ff 	mov    %rsi,-0xa90(%rbp)
  8145db:	4c 8b 63 10          	mov    0x10(%rbx),%r12
  8145df:	48 8b 73 18          	mov    0x18(%rbx),%rsi
  8145e3:	4c 89 8d 88 f5 ff ff 	mov    %r9,-0xa78(%rbp)
  8145ea:	44 8b 0a             	mov    (%rdx),%r9d
  8145ed:	44 89 8d 40 f5 ff ff 	mov    %r9d,-0xac0(%rbp)
  8145f4:	4c 89 a5 90 f5 ff ff 	mov    %r12,-0xa70(%rbp)
  8145fb:	4d 63 0c 24          	movslq (%r12),%r9
  8145ff:	4c 63 26             	movslq (%rsi),%r12
  814602:	48 89 8d 80 f5 ff ff 	mov    %rcx,-0xa80(%rbp)
  814609:	44 89 a5 bc f5 ff ff 	mov    %r12d,-0xa44(%rbp)
  814610:	4d 2b e1             	sub    %r9,%r12
  814613:	48 8b 4b 20          	mov    0x20(%rbx),%rcx
  814617:	4c 8b 53 28          	mov    0x28(%rbx),%r10
  81461b:	48 89 bd 78 f5 ff ff 	mov    %rdi,-0xa88(%rbp)
  814622:	48 63 07             	movslq (%rdi),%rax
  814625:	4c 89 e7             	mov    %r12,%rdi
  814628:	4c 89 85 b0 f5 ff ff 	mov    %r8,-0xa50(%rbp)
  81462f:	48 ff c7             	inc    %rdi
  814632:	45 8b 00             	mov    (%r8),%r8d
  814635:	44 89 85 44 f5 ff ff 	mov    %r8d,-0xabc(%rbp)
  81463c:	48 89 8d 50 f4 ff ff 	mov    %rcx,-0xbb0(%rbp)
  814643:	4c 63 01             	movslq (%rcx),%r8
  814646:	b9 00 00 00 00       	mov    $0x0,%ecx
  81464b:	48 89 b5 a0 f5 ff ff 	mov    %rsi,-0xa60(%rbp)
  814652:	48 0f 4e f9          	cmovle %rcx,%rdi
  814656:	49 63 32             	movslq (%r10),%rsi
  814659:	89 b5 c4 f5 ff ff    	mov    %esi,-0xa3c(%rbp)
  81465f:	49 2b f0             	sub    %r8,%rsi
  814662:	48 ff c6             	inc    %rsi
  814665:	4c 89 b5 20 f6 ff ff 	mov    %r14,-0x9e0(%rbp)
  81466c:	4c 8d 34 fd 00 00 00 	lea    0x0(,%rdi,8),%r14
  814673:	00 
  814674:	48 0f 4f ce          	cmovg  %rsi,%rcx
  814678:	4c 89 b5 10 f2 ff ff 	mov    %r14,-0xdf0(%rbp)
  81467f:	4c 0f af f1          	imul   %rcx,%r14
  814683:	4c 89 ad 28 f6 ff ff 	mov    %r13,-0x9d8(%rbp)
  81468a:	4c 8b 2d 4f 7a 32 00 	mov    0x327a4f(%rip),%r13        # b3c0e0 <mod_param_mp_n_+0x40>
  814691:	49 f7 dd             	neg    %r13
  814694:	4c 03 e8             	add    %rax,%r13
  814697:	4c 89 95 98 f5 ff ff 	mov    %r10,-0xa68(%rbp)
  81469e:	4c 8b 15 fb 79 32 00 	mov    0x3279fb(%rip),%r10        # b3c0a0 <mod_param_mp_n_>
  8146a5:	48 89 95 a8 f5 ff ff 	mov    %rdx,-0xa58(%rbp)
  8146ac:	4c 8b 9b 98 00 00 00 	mov    0x98(%rbx),%r11
  8146b3:	48 89 85 08 f2 ff ff 	mov    %rax,-0xdf8(%rbp)
  8146ba:	4c 89 f0             	mov    %r14,%rax
  8146bd:	4b 63 14 aa          	movslq (%r10,%r13,4),%rdx
  8146c1:	4c 89 bd 18 f6 ff ff 	mov    %r15,-0x9e8(%rbp)
  8146c8:	4c 89 9d 18 f2 ff ff 	mov    %r11,-0xde8(%rbp)
  8146cf:	44 89 8d b8 f5 ff ff 	mov    %r9d,-0xa48(%rbp)
  8146d6:	44 89 85 c0 f5 ff ff 	mov    %r8d,-0xa40(%rbp)
  8146dd:	89 95 48 f5 ff ff    	mov    %edx,-0xab8(%rbp)
  8146e3:	89 95 4c f5 ff ff    	mov    %edx,-0xab4(%rbp)
  8146e9:	89 95 50 f5 ff ff    	mov    %edx,-0xab0(%rbp)
  8146ef:	48 89 a5 38 f5 ff ff 	mov    %rsp,-0xac8(%rbp)
  8146f6:	48 83 c0 1f          	add    $0x1f,%rax
  8146fa:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  8146fe:	48 2b e0             	sub    %rax,%rsp
  814701:	48 89 e0             	mov    %rsp,%rax
  814704:	48 89 85 20 f2 ff ff 	mov    %rax,-0xde0(%rbp)
  81470b:	4c 89 f0             	mov    %r14,%rax
  81470e:	41 ba 08 00 00 00    	mov    $0x8,%r10d
  814714:	4e 8d 24 e5 08 00 00 	lea    0x8(,%r12,8),%r12
  81471b:	00 
  81471c:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  814722:	48 c7 85 30 f2 ff ff 	movq   $0x0,-0xdd0(%rbp)
  814729:	00 00 00 00 
  81472d:	4c 89 8d 60 f2 ff ff 	mov    %r9,-0xda0(%rbp)
  814734:	48 89 bd 50 f2 ff ff 	mov    %rdi,-0xdb0(%rbp)
  81473b:	4c 89 a5 70 f2 ff ff 	mov    %r12,-0xd90(%rbp)
  814742:	4c 89 85 78 f2 ff ff 	mov    %r8,-0xd88(%rbp)
  814749:	48 89 8d 68 f2 ff ff 	mov    %rcx,-0xd98(%rbp)
  814750:	4c 89 95 28 f2 ff ff 	mov    %r10,-0xdd8(%rbp)
  814757:	4c 89 95 58 f2 ff ff 	mov    %r10,-0xda8(%rbp)
  81475e:	48 c7 85 40 f2 ff ff 	movq   $0x2,-0xdc0(%rbp)
  814765:	02 00 00 00 
  814769:	4c 89 ad 38 f2 ff ff 	mov    %r13,-0xdc8(%rbp)
  814770:	48 83 c0 1f          	add    $0x1f,%rax
  814774:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  814778:	48 2b e0             	sub    %rax,%rsp
  81477b:	48 89 e0             	mov    %rsp,%rax
  81477e:	48 89 85 80 f2 ff ff 	mov    %rax,-0xd80(%rbp)
  814785:	4c 89 f0             	mov    %r14,%rax
  814788:	41 ba 08 00 00 00    	mov    $0x8,%r10d
  81478e:	4c 89 95 88 f2 ff ff 	mov    %r10,-0xd78(%rbp)
  814795:	48 c7 85 a0 f2 ff ff 	movq   $0x2,-0xd60(%rbp)
  81479c:	02 00 00 00 
  8147a0:	48 c7 85 90 f2 ff ff 	movq   $0x0,-0xd70(%rbp)
  8147a7:	00 00 00 00 
  8147ab:	4c 89 95 b8 f2 ff ff 	mov    %r10,-0xd48(%rbp)
  8147b2:	4c 89 8d c0 f2 ff ff 	mov    %r9,-0xd40(%rbp)
  8147b9:	48 89 bd b0 f2 ff ff 	mov    %rdi,-0xd50(%rbp)
  8147c0:	4c 89 a5 d0 f2 ff ff 	mov    %r12,-0xd30(%rbp)
  8147c7:	4c 89 85 d8 f2 ff ff 	mov    %r8,-0xd28(%rbp)
  8147ce:	48 89 8d c8 f2 ff ff 	mov    %rcx,-0xd38(%rbp)
  8147d5:	4c 89 ad 98 f2 ff ff 	mov    %r13,-0xd68(%rbp)
  8147dc:	48 83 c0 1f          	add    $0x1f,%rax
  8147e0:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  8147e4:	48 2b e0             	sub    %rax,%rsp
  8147e7:	48 89 e0             	mov    %rsp,%rax
  8147ea:	48 89 85 78 f4 ff ff 	mov    %rax,-0xb88(%rbp)
  8147f1:	4c 89 f0             	mov    %r14,%rax
  8147f4:	41 ba 08 00 00 00    	mov    $0x8,%r10d
  8147fa:	4c 89 95 80 f4 ff ff 	mov    %r10,-0xb80(%rbp)
  814801:	48 c7 85 98 f4 ff ff 	movq   $0x2,-0xb68(%rbp)
  814808:	02 00 00 00 
  81480c:	48 c7 85 88 f4 ff ff 	movq   $0x0,-0xb78(%rbp)
  814813:	00 00 00 00 
  814817:	4c 89 95 b0 f4 ff ff 	mov    %r10,-0xb50(%rbp)
  81481e:	4c 89 8d b8 f4 ff ff 	mov    %r9,-0xb48(%rbp)
  814825:	48 89 bd a8 f4 ff ff 	mov    %rdi,-0xb58(%rbp)
  81482c:	4c 89 a5 c8 f4 ff ff 	mov    %r12,-0xb38(%rbp)
  814833:	4c 89 85 d0 f4 ff ff 	mov    %r8,-0xb30(%rbp)
  81483a:	48 89 8d c0 f4 ff ff 	mov    %rcx,-0xb40(%rbp)
  814841:	4c 89 ad 90 f4 ff ff 	mov    %r13,-0xb70(%rbp)
  814848:	48 83 c0 1f          	add    $0x1f,%rax
  81484c:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  814850:	48 2b e0             	sub    %rax,%rsp
  814853:	48 89 e0             	mov    %rsp,%rax
  814856:	48 89 85 d8 f4 ff ff 	mov    %rax,-0xb28(%rbp)
  81485d:	48 89 f8             	mov    %rdi,%rax
  814860:	48 0f af c1          	imul   %rcx,%rax
  814864:	41 bf 08 00 00 00    	mov    $0x8,%r15d
  81486a:	45 33 f6             	xor    %r14d,%r14d
  81486d:	4c 89 bd e0 f4 ff ff 	mov    %r15,-0xb20(%rbp)
  814874:	4c 89 bd 10 f5 ff ff 	mov    %r15,-0xaf0(%rbp)
  81487b:	49 89 d7             	mov    %rdx,%r15
  81487e:	49 ff c7             	inc    %r15
  814881:	4c 89 b5 e8 f4 ff ff 	mov    %r14,-0xb18(%rbp)
  814888:	4d 0f 4e fe          	cmovle %r14,%r15
  81488c:	48 c7 85 f8 f4 ff ff 	movq   $0x2,-0xb08(%rbp)
  814893:	02 00 00 00 
  814897:	4c 89 8d 18 f5 ff ff 	mov    %r9,-0xae8(%rbp)
  81489e:	48 89 bd 08 f5 ff ff 	mov    %rdi,-0xaf8(%rbp)
  8148a5:	4c 89 a5 28 f5 ff ff 	mov    %r12,-0xad8(%rbp)
  8148ac:	4e 8d 34 fd 00 00 00 	lea    0x0(,%r15,8),%r14
  8148b3:	00 
  8148b4:	49 0f af c6          	imul   %r14,%rax
  8148b8:	4c 89 85 30 f5 ff ff 	mov    %r8,-0xad0(%rbp)
  8148bf:	48 89 8d 20 f5 ff ff 	mov    %rcx,-0xae0(%rbp)
  8148c6:	4c 89 ad f0 f4 ff ff 	mov    %r13,-0xb10(%rbp)
  8148cd:	48 83 c0 1f          	add    $0x1f,%rax
  8148d1:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  8148d5:	48 2b e0             	sub    %rax,%rsp
  8148d8:	48 89 e0             	mov    %rsp,%rax
  8148db:	4c 0f af f7          	imul   %rdi,%r14
  8148df:	49 0f af f4          	imul   %r12,%rsi
  8148e3:	48 89 85 90 f1 ff ff 	mov    %rax,-0xe70(%rbp)
  8148ea:	4c 89 f0             	mov    %r14,%rax
  8148ed:	4c 89 85 e8 f1 ff ff 	mov    %r8,-0xe18(%rbp)
  8148f4:	45 33 c0             	xor    %r8d,%r8d
  8148f7:	48 89 8d d8 f1 ff ff 	mov    %rcx,-0xe28(%rbp)
  8148fe:	b9 08 00 00 00       	mov    $0x8,%ecx
  814903:	48 89 8d 98 f1 ff ff 	mov    %rcx,-0xe68(%rbp)
  81490a:	48 c7 85 b0 f1 ff ff 	movq   $0x3,-0xe50(%rbp)
  814911:	03 00 00 00 
  814915:	4c 89 85 a0 f1 ff ff 	mov    %r8,-0xe60(%rbp)
  81491c:	48 89 8d c8 f1 ff ff 	mov    %rcx,-0xe38(%rbp)
  814923:	4c 89 8d d0 f1 ff ff 	mov    %r9,-0xe30(%rbp)
  81492a:	48 89 bd c0 f1 ff ff 	mov    %rdi,-0xe40(%rbp)
  814931:	4c 89 a5 e0 f1 ff ff 	mov    %r12,-0xe20(%rbp)
  814938:	48 89 b5 f8 f1 ff ff 	mov    %rsi,-0xe08(%rbp)
  81493f:	4c 89 85 00 f2 ff ff 	mov    %r8,-0xe00(%rbp)
  814946:	4c 89 bd f0 f1 ff ff 	mov    %r15,-0xe10(%rbp)
  81494d:	4c 89 ad a8 f1 ff ff 	mov    %r13,-0xe58(%rbp)
  814954:	48 83 c0 1f          	add    $0x1f,%rax
  814958:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81495c:	48 2b e0             	sub    %rax,%rsp
  81495f:	48 89 e0             	mov    %rsp,%rax
  814962:	48 89 85 e0 f2 ff ff 	mov    %rax,-0xd20(%rbp)
  814969:	4c 89 f0             	mov    %r14,%rax
  81496c:	48 89 8d e8 f2 ff ff 	mov    %rcx,-0xd18(%rbp)
  814973:	48 c7 85 00 f3 ff ff 	movq   $0x2,-0xd00(%rbp)
  81497a:	02 00 00 00 
  81497e:	4c 89 85 f0 f2 ff ff 	mov    %r8,-0xd10(%rbp)
  814985:	48 89 8d 18 f3 ff ff 	mov    %rcx,-0xce8(%rbp)
  81498c:	4c 89 8d 20 f3 ff ff 	mov    %r9,-0xce0(%rbp)
  814993:	48 89 bd 10 f3 ff ff 	mov    %rdi,-0xcf0(%rbp)
  81499a:	4c 89 a5 30 f3 ff ff 	mov    %r12,-0xcd0(%rbp)
  8149a1:	4c 89 85 38 f3 ff ff 	mov    %r8,-0xcc8(%rbp)
  8149a8:	4c 89 bd 28 f3 ff ff 	mov    %r15,-0xcd8(%rbp)
  8149af:	4c 89 ad f8 f2 ff ff 	mov    %r13,-0xd08(%rbp)
  8149b6:	48 83 c0 1f          	add    $0x1f,%rax
  8149ba:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  8149be:	48 2b e0             	sub    %rax,%rsp
  8149c1:	48 89 e0             	mov    %rsp,%rax
  8149c4:	48 89 85 40 f3 ff ff 	mov    %rax,-0xcc0(%rbp)
  8149cb:	48 8b 85 10 f2 ff ff 	mov    -0xdf0(%rbp),%rax
  8149d2:	49 0f af c7          	imul   %r15,%rax
  8149d6:	48 89 8d 48 f3 ff ff 	mov    %rcx,-0xcb8(%rbp)
  8149dd:	48 c7 85 60 f3 ff ff 	movq   $0x2,-0xca0(%rbp)
  8149e4:	02 00 00 00 
  8149e8:	4c 89 85 50 f3 ff ff 	mov    %r8,-0xcb0(%rbp)
  8149ef:	48 89 8d 78 f3 ff ff 	mov    %rcx,-0xc88(%rbp)
  8149f6:	4c 89 8d 80 f3 ff ff 	mov    %r9,-0xc80(%rbp)
  8149fd:	48 89 bd 70 f3 ff ff 	mov    %rdi,-0xc90(%rbp)
  814a04:	4c 89 a5 90 f3 ff ff 	mov    %r12,-0xc70(%rbp)
  814a0b:	4c 89 85 98 f3 ff ff 	mov    %r8,-0xc68(%rbp)
  814a12:	4c 89 bd 88 f3 ff ff 	mov    %r15,-0xc78(%rbp)
  814a19:	4c 89 ad 58 f3 ff ff 	mov    %r13,-0xca8(%rbp)
  814a20:	48 83 c0 1f          	add    $0x1f,%rax
  814a24:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  814a28:	48 2b e0             	sub    %rax,%rsp
  814a2b:	48 89 e0             	mov    %rsp,%rax
  814a2e:	48 8b 0d ab 96 32 00 	mov    0x3296ab(%rip),%rcx        # b3e0e0 <mod_param_mp_bounds_+0x40>
  814a35:	be 08 00 00 00       	mov    $0x8,%esi
  814a3a:	48 f7 d9             	neg    %rcx
  814a3d:	45 33 f6             	xor    %r14d,%r14d
  814a40:	48 03 8d 08 f2 ff ff 	add    -0xdf8(%rbp),%rcx
  814a47:	4c 89 8d e0 f3 ff ff 	mov    %r9,-0xc20(%rbp)
  814a4e:	4c 69 c9 60 0f 00 00 	imul   $0xf60,%rcx,%r9
  814a55:	4c 89 a5 f0 f3 ff ff 	mov    %r12,-0xc10(%rbp)
  814a5c:	4c 8b 25 3d 96 32 00 	mov    0x32963d(%rip),%r12        # b3e0a0 <mod_param_mp_bounds_>
  814a63:	48 89 b5 a8 f3 ff ff 	mov    %rsi,-0xc58(%rbp)
  814a6a:	48 89 b5 d8 f3 ff ff 	mov    %rsi,-0xc28(%rbp)
  814a71:	48 8b b5 70 f5 ff ff 	mov    -0xa90(%rbp),%rsi
  814a78:	4f 8b 94 0c f0 01 00 	mov    0x1f0(%r12,%r9,1),%r10
  814a7f:	00 
  814a80:	49 f7 da             	neg    %r10
  814a83:	48 89 bd d0 f3 ff ff 	mov    %rdi,-0xc30(%rbp)
  814a8a:	48 63 3e             	movslq (%rsi),%rdi
  814a8d:	4c 03 d7             	add    %rdi,%r10
  814a90:	4f 0f af 94 0c e8 01 	imul   0x1e8(%r12,%r9,1),%r10
  814a97:	00 00 
  814a99:	4f 8b 84 0c b0 01 00 	mov    0x1b0(%r12,%r9,1),%r8
  814aa0:	00 
  814aa1:	48 89 85 a0 f3 ff ff 	mov    %rax,-0xc60(%rbp)
  814aa8:	4b 8b 84 0c a0 03 00 	mov    0x3a0(%r12,%r9,1),%rax
  814aaf:	00 
  814ab0:	47 8b 1c 10          	mov    (%r8,%r10,1),%r11d
  814ab4:	48 f7 d8             	neg    %rax
  814ab7:	4f 8b 94 0c 38 02 00 	mov    0x238(%r12,%r9,1),%r10
  814abe:	00 
  814abf:	48 03 c7             	add    %rdi,%rax
  814ac2:	49 f7 da             	neg    %r10
  814ac5:	4c 03 d7             	add    %rdi,%r10
  814ac8:	4f 0f af 94 0c 30 02 	imul   0x230(%r12,%r9,1),%r10
  814acf:	00 00 
  814ad1:	4b 0f af 84 0c 98 03 	imul   0x398(%r12,%r9,1),%rax
  814ad8:	00 00 
  814ada:	4f 8b 84 0c f8 01 00 	mov    0x1f8(%r12,%r9,1),%r8
  814ae1:	00 
  814ae2:	44 89 9d c8 f5 ff ff 	mov    %r11d,-0xa38(%rbp)
  814ae9:	4c 89 bd e8 f3 ff ff 	mov    %r15,-0xc18(%rbp)
  814af0:	47 8b 1c 10          	mov    (%r8,%r10,1),%r11d
  814af4:	4f 8b 84 0c 78 04 00 	mov    0x478(%r12,%r9,1),%r8
  814afb:	00 
  814afc:	49 f7 d8             	neg    %r8
  814aff:	4c 03 c7             	add    %rdi,%r8
  814b02:	4f 0f af 84 0c 70 04 	imul   0x470(%r12,%r9,1),%r8
  814b09:	00 00 
  814b0b:	4f 8b bc 0c 60 03 00 	mov    0x360(%r12,%r9,1),%r15
  814b12:	00 
  814b13:	44 89 9d cc f5 ff ff 	mov    %r11d,-0xa34(%rbp)
  814b1a:	4f 8b 9c 0c 88 02 00 	mov    0x288(%r12,%r9,1),%r11
  814b21:	00 
  814b22:	41 8b 0c 07          	mov    (%r15,%rax,1),%ecx
  814b26:	89 8d 54 f5 ff ff    	mov    %ecx,-0xaac(%rbp)
  814b2c:	4b 8b 84 0c 80 02 00 	mov    0x280(%r12,%r9,1),%rax
  814b33:	00 
  814b34:	4b 8b 8c 0c 38 04 00 	mov    0x438(%r12,%r9,1),%rcx
  814b3b:	00 
  814b3c:	48 f7 d8             	neg    %rax
  814b3f:	48 03 c7             	add    %rdi,%rax
  814b42:	4b 0f af 84 0c 78 02 	imul   0x278(%r12,%r9,1),%rax
  814b49:	00 00 
  814b4b:	46 8b 14 01          	mov    (%rcx,%r8,1),%r10d
  814b4f:	4f 8b 84 0c 40 09 00 	mov    0x940(%r12,%r9,1),%r8
  814b56:	00 
  814b57:	49 f7 d8             	neg    %r8
  814b5a:	4c 03 c7             	add    %rdi,%r8
  814b5d:	4f 0f af 84 0c 38 09 	imul   0x938(%r12,%r9,1),%r8
  814b64:	00 00 
  814b66:	4f 8b bc 0c 40 02 00 	mov    0x240(%r12,%r9,1),%r15
  814b6d:	00 
  814b6e:	4b 8b 8c 0c c8 02 00 	mov    0x2c8(%r12,%r9,1),%rcx
  814b75:	00 
  814b76:	48 f7 d9             	neg    %rcx
  814b79:	49 63 04 07          	movslq (%r15,%rax,1),%rax
  814b7d:	48 03 cf             	add    %rdi,%rcx
  814b80:	4f 8b bc 0c 00 09 00 	mov    0x900(%r12,%r9,1),%r15
  814b87:	00 
  814b88:	4b 0f af 8c 0c c0 02 	imul   0x2c0(%r12,%r9,1),%rcx
  814b8f:	00 00 
  814b91:	44 89 95 58 f5 ff ff 	mov    %r10d,-0xaa8(%rbp)
  814b98:	47 8b 14 07          	mov    (%r15,%r8,1),%r10d
  814b9c:	4f 8b bc 0c 60 0a 00 	mov    0xa60(%r12,%r9,1),%r15
  814ba3:	00 
  814ba4:	49 f7 df             	neg    %r15
  814ba7:	4c 03 ff             	add    %rdi,%r15
  814baa:	4f 0f af bc 0c 58 0a 	imul   0xa58(%r12,%r9,1),%r15
  814bb1:	00 00 
  814bb3:	49 63 0c 0b          	movslq (%r11,%rcx,1),%rcx
  814bb7:	4f 8b 9c 0c 20 0a 00 	mov    0xa20(%r12,%r9,1),%r11
  814bbe:	00 
  814bbf:	44 89 95 5c f5 ff ff 	mov    %r10d,-0xaa4(%rbp)
  814bc6:	4f 8b 94 0c 88 0b 00 	mov    0xb88(%r12,%r9,1),%r10
  814bcd:	00 
  814bce:	47 8b 04 3b          	mov    (%r11,%r15,1),%r8d
  814bd2:	44 89 85 60 f5 ff ff 	mov    %r8d,-0xaa0(%rbp)
  814bd9:	4f 8b 9c 0c c8 0b 00 	mov    0xbc8(%r12,%r9,1),%r11
  814be0:	00 
  814be1:	4f 8b 84 0c e8 0c 00 	mov    0xce8(%r12,%r9,1),%r8
  814be8:	00 
  814be9:	49 f7 db             	neg    %r11
  814bec:	49 f7 d8             	neg    %r8
  814bef:	4c 03 df             	add    %rdi,%r11
  814bf2:	4c 03 c7             	add    %rdi,%r8
  814bf5:	4f 0f af 84 0c e0 0c 	imul   0xce0(%r12,%r9,1),%r8
  814bfc:	00 00 
  814bfe:	4f 0f af 9c 0c c0 0b 	imul   0xbc0(%r12,%r9,1),%r11
  814c05:	00 00 
  814c07:	4b 8b bc 0c a8 0c 00 	mov    0xca8(%r12,%r9,1),%rdi
  814c0e:	00 
  814c0f:	47 8b 3c 1a          	mov    (%r10,%r11,1),%r15d
  814c13:	48 c7 85 c0 f3 ff ff 	movq   $0x2,-0xc40(%rbp)
  814c1a:	02 00 00 00 
  814c1e:	46 8b 0c 07          	mov    (%rdi,%r8,1),%r9d
  814c22:	4c 89 b5 b0 f3 ff ff 	mov    %r14,-0xc50(%rbp)
  814c29:	4c 89 b5 f8 f3 ff ff 	mov    %r14,-0xc08(%rbp)
  814c30:	4c 89 ad b8 f3 ff ff 	mov    %r13,-0xc48(%rbp)
  814c37:	89 85 d8 f5 ff ff    	mov    %eax,-0xa28(%rbp)
  814c3d:	89 8d dc f5 ff ff    	mov    %ecx,-0xa24(%rbp)
  814c43:	44 89 bd 64 f5 ff ff 	mov    %r15d,-0xa9c(%rbp)
  814c4a:	44 89 8d 68 f5 ff ff 	mov    %r9d,-0xa98(%rbp)
  814c51:	48 ff ca             	dec    %rdx
  814c54:	0f 8e e6 07 00 00    	jle    815440 <pre_step3d_mod_mp_pre_step3d_tile_+0xe90>
  814c5a:	4c 8b 8d 18 f2 ff ff 	mov    -0xde8(%rbp),%r9
  814c61:	48 89 8d 78 f6 ff ff 	mov    %rcx,-0x988(%rbp)
  814c68:	4c 89 b5 60 f4 ff ff 	mov    %r14,-0xba0(%rbp)
  814c6f:	4d 8b 21             	mov    (%r9),%r12
  814c72:	4d 8b 59 68          	mov    0x68(%r9),%r11
  814c76:	4d 8b 41 50          	mov    0x50(%r9),%r8
  814c7a:	4d 8b 49 38          	mov    0x38(%r9),%r9
  814c7e:	4c 89 85 70 f6 ff ff 	mov    %r8,-0x990(%rbp)
  814c85:	4d 89 c8             	mov    %r9,%r8
  814c88:	49 f7 d8             	neg    %r8
  814c8b:	4c 89 8d 20 f4 ff ff 	mov    %r9,-0xbe0(%rbp)
  814c92:	4c 89 9d 70 f4 ff ff 	mov    %r11,-0xb90(%rbp)
  814c99:	4c 89 a5 10 f2 ff ff 	mov    %r12,-0xdf0(%rbp)
  814ca0:	4c 89 b5 68 f4 ff ff 	mov    %r14,-0xb98(%rbp)
  814ca7:	4b 8d 3c 04          	lea    (%r12,%r8,1),%rdi
  814cab:	48 89 bd 10 f4 ff ff 	mov    %rdi,-0xbf0(%rbp)
  814cb2:	4b 8d 3c 1c          	lea    (%r12,%r11,1),%rdi
  814cb6:	4c 03 c7             	add    %rdi,%r8
  814cb9:	4d 8d 3c 39          	lea    (%r9,%rdi,1),%r15
  814cbd:	4c 89 bd 08 f4 ff ff 	mov    %r15,-0xbf8(%rbp)
  814cc4:	4f 8d 3c 21          	lea    (%r9,%r12,1),%r15
  814cc8:	4c 89 bd 00 f4 ff ff 	mov    %r15,-0xc00(%rbp)
  814ccf:	4c 89 85 18 f4 ff ff 	mov    %r8,-0xbe8(%rbp)
  814cd6:	48 89 bd 08 f2 ff ff 	mov    %rdi,-0xdf8(%rbp)
  814cdd:	48 89 95 58 f4 ff ff 	mov    %rdx,-0xba8(%rbp)
  814ce4:	48 8b bd 78 f5 ff ff 	mov    -0xa88(%rbp),%rdi
  814ceb:	4c 8b ad 78 f4 ff ff 	mov    -0xb88(%rbp),%r13
  814cf2:	48 3b 85 78 f6 ff ff 	cmp    -0x988(%rbp),%rax
  814cf9:	0f 8f e2 04 00 00    	jg     8151e1 <pre_step3d_mod_mp_pre_step3d_tile_+0xc31>
  814cff:	4c 63 95 44 f5 ff ff 	movslq -0xabc(%rbp),%r10
  814d06:	48 8b 95 70 f6 ff ff 	mov    -0x990(%rbp),%rdx
  814d0d:	4c 0f af d2          	imul   %rdx,%r10
  814d11:	4c 89 95 e8 f5 ff ff 	mov    %r10,-0xa18(%rbp)
  814d18:	4c 63 95 b8 f5 ff ff 	movslq -0xa48(%rbp),%r10
  814d1f:	4c 63 b5 bc f5 ff ff 	movslq -0xa44(%rbp),%r14
  814d26:	4d 2b f2             	sub    %r10,%r14
  814d29:	48 63 8d c0 f5 ff ff 	movslq -0xa40(%rbp),%rcx
  814d30:	4c 8b 0d a9 73 32 00 	mov    0x3273a9(%rip),%r9        # b3c0e0 <mod_param_mp_n_+0x40>
  814d37:	49 c1 e1 02          	shl    $0x2,%r9
  814d3b:	49 f7 d9             	neg    %r9
  814d3e:	4d 8d 7e 01          	lea    0x1(%r14),%r15
  814d42:	4c 8b a5 78 f6 ff ff 	mov    -0x988(%rbp),%r12
  814d49:	4e 8d 34 f5 08 00 00 	lea    0x8(,%r14,8),%r14
  814d50:	00 
  814d51:	4c 89 b5 80 f6 ff ff 	mov    %r14,-0x980(%rbp)
  814d58:	4c 2b e0             	sub    %rax,%r12
  814d5b:	49 0f af ce          	imul   %r14,%rcx
  814d5f:	4c 03 0d 3a 73 32 00 	add    0x32733a(%rip),%r9        # b3c0a0 <mod_param_mp_n_>
  814d66:	4c 8d 34 c5 00 00 00 	lea    0x0(,%rax,8),%r14
  814d6d:	00 
  814d6e:	4d 0f af f7          	imul   %r15,%r14
  814d72:	48 0f af c2          	imul   %rdx,%rax
  814d76:	4c 89 8d d0 f5 ff ff 	mov    %r9,-0xa30(%rbp)
  814d7d:	4c 89 f2             	mov    %r14,%rdx
  814d80:	44 8b 8d c8 f5 ff ff 	mov    -0xa38(%rbp),%r9d
  814d87:	48 2b d1             	sub    %rcx,%rdx
  814d8a:	44 89 8d 88 f6 ff ff 	mov    %r9d,-0x978(%rbp)
  814d91:	49 ff c4             	inc    %r12
  814d94:	4d 63 c9             	movslq %r9d,%r9
  814d97:	4c 63 07             	movslq (%rdi),%r8
  814d9a:	4c 89 85 68 f6 ff ff 	mov    %r8,-0x998(%rbp)
  814da1:	48 89 8d 18 f2 ff ff 	mov    %rcx,-0xde8(%rbp)
  814da8:	48 8b 8d 10 f2 ff ff 	mov    -0xdf0(%rbp),%rcx
  814daf:	4f 8d 44 cd 00       	lea    0x0(%r13,%r9,8),%r8
  814db4:	49 c1 e2 03          	shl    $0x3,%r10
  814db8:	4d 89 c7             	mov    %r8,%r15
  814dbb:	4d 2b fa             	sub    %r10,%r15
  814dbe:	4c 03 fa             	add    %rdx,%r15
  814dc1:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
  814dc5:	48 8b 8d 60 f4 ff ff 	mov    -0xba0(%rbp),%rcx
  814dcc:	4c 89 bd e0 f5 ff ff 	mov    %r15,-0xa20(%rbp)
  814dd3:	4c 8b bd 08 f2 ff ff 	mov    -0xdf8(%rbp),%r15
  814dda:	44 8b 9d cc f5 ff ff 	mov    -0xa34(%rbp),%r11d
  814de1:	48 03 c8             	add    %rax,%rcx
  814de4:	4c 89 a5 78 f6 ff ff 	mov    %r12,-0x988(%rbp)
  814deb:	4c 63 a5 40 f5 ff ff 	movslq -0xac0(%rbp),%r12
  814df2:	44 89 9d 90 f6 ff ff 	mov    %r11d,-0x970(%rbp)
  814df9:	4e 8d 1c cd 00 00 00 	lea    0x0(,%r9,8),%r11
  814e00:	00 
  814e01:	48 89 8d 28 f4 ff ff 	mov    %rcx,-0xbd8(%rbp)
  814e08:	49 03 cf             	add    %r15,%rcx
  814e0b:	48 83 bd 20 f4 ff ff 	cmpq   $0x8,-0xbe0(%rbp)
  814e12:	08 
  814e13:	0f 84 68 02 00 00    	je     815081 <pre_step3d_mod_mp_pre_step3d_tile_+0xad1>
  814e19:	4c 8b 9d 20 f4 ff ff 	mov    -0xbe0(%rbp),%r11
  814e20:	4d 2b d6             	sub    %r14,%r10
  814e23:	4d 0f af cb          	imul   %r11,%r9
  814e27:	4d 0f af e3          	imul   %r11,%r12
  814e2b:	4c 8b bd 10 f4 ff ff 	mov    -0xbf0(%rbp),%r15
  814e32:	4d 2b c2             	sub    %r10,%r8
  814e35:	44 8b b5 90 f6 ff ff 	mov    -0x970(%rbp),%r14d
  814e3c:	45 33 db             	xor    %r11d,%r11d
  814e3f:	44 2b b5 88 f6 ff ff 	sub    -0x978(%rbp),%r14d
  814e46:	41 ff c6             	inc    %r14d
  814e49:	4c 03 f8             	add    %rax,%r15
  814e4c:	4c 89 bd f0 f5 ff ff 	mov    %r15,-0xa10(%rbp)
  814e53:	4d 89 cf             	mov    %r9,%r15
  814e56:	4d 2b fc             	sub    %r12,%r15
  814e59:	45 89 f2             	mov    %r14d,%r10d
  814e5c:	4c 03 a5 e8 f5 ff ff 	add    -0xa18(%rbp),%r12
  814e63:	49 03 d7             	add    %r15,%rdx
  814e66:	4c 89 bd 00 f6 ff ff 	mov    %r15,-0xa00(%rbp)
  814e6d:	4d 2b cc             	sub    %r12,%r9
  814e70:	4c 8b bd 18 f4 ff ff 	mov    -0xbe8(%rbp),%r15
  814e77:	49 03 c9             	add    %r9,%rcx
  814e7a:	4c 8b a5 28 f4 ff ff 	mov    -0xbd8(%rbp),%r12
  814e81:	41 d1 ea             	shr    %r10d
  814e84:	44 89 95 98 f6 ff ff 	mov    %r10d,-0x968(%rbp)
  814e8b:	4c 89 95 f8 f5 ff ff 	mov    %r10,-0xa08(%rbp)
  814e92:	4d 03 fc             	add    %r12,%r15
  814e95:	4c 03 a5 08 f4 ff ff 	add    -0xbf8(%rbp),%r12
  814e9c:	45 33 d2             	xor    %r10d,%r10d
  814e9f:	48 03 85 00 f4 ff ff 	add    -0xc00(%rbp),%rax
  814ea6:	4d 03 f9             	add    %r9,%r15
  814ea9:	4c 2b 85 18 f2 ff ff 	sub    -0xde8(%rbp),%r8
  814eb0:	4d 03 cc             	add    %r12,%r9
  814eb3:	48 89 95 10 f6 ff ff 	mov    %rdx,-0x9f0(%rbp)
  814eba:	48 89 85 08 f6 ff ff 	mov    %rax,-0x9f8(%rbp)
  814ec1:	48 89 8d 50 f6 ff ff 	mov    %rcx,-0x9b0(%rbp)
  814ec8:	4c 89 8d 58 f6 ff ff 	mov    %r9,-0x9a8(%rbp)
  814ecf:	4c 89 bd 48 f6 ff ff 	mov    %r15,-0x9b8(%rbp)
  814ed6:	4c 89 85 60 f6 ff ff 	mov    %r8,-0x9a0(%rbp)
  814edd:	44 89 b5 a0 f6 ff ff 	mov    %r14d,-0x960(%rbp)
  814ee4:	4c 89 ad 30 f4 ff ff 	mov    %r13,-0xbd0(%rbp)
  814eeb:	48 89 bd 38 f4 ff ff 	mov    %rdi,-0xbc8(%rbp)
  814ef2:	48 89 b5 40 f4 ff ff 	mov    %rsi,-0xbc0(%rbp)
  814ef9:	4c 89 d0             	mov    %r10,%rax
  814efc:	48 8b 95 20 f4 ff ff 	mov    -0xbe0(%rbp),%rdx
  814f03:	8b 8d 90 f6 ff ff    	mov    -0x970(%rbp),%ecx
  814f09:	3b 8d 88 f6 ff ff    	cmp    -0x978(%rbp),%ecx
  814f0f:	0f 8c 49 01 00 00    	jl     81505e <pre_step3d_mod_mp_pre_step3d_tile_+0xaae>
  814f15:	45 33 ff             	xor    %r15d,%r15d
  814f18:	be 01 00 00 00       	mov    $0x1,%esi
  814f1d:	45 33 f6             	xor    %r14d,%r14d
  814f20:	45 33 e4             	xor    %r12d,%r12d
  814f23:	83 bd 98 f6 ff ff 00 	cmpl   $0x0,-0x968(%rbp)
  814f2a:	0f 84 bc 00 00 00    	je     814fec <pre_step3d_mod_mp_pre_step3d_tile_+0xa3c>
  814f30:	4c 8b ad 68 f6 ff ff 	mov    -0x998(%rbp),%r13
  814f37:	48 8b bd d0 f5 ff ff 	mov    -0xa30(%rbp),%rdi
  814f3e:	4c 8b 8d e0 f5 ff ff 	mov    -0xa20(%rbp),%r9
  814f45:	4c 8b 85 60 f6 ff ff 	mov    -0x9a0(%rbp),%r8
  814f4c:	4e 63 2c af          	movslq (%rdi,%r13,4),%r13
  814f50:	4c 0f af ad 70 f4 ff 	imul   -0xb90(%rbp),%r13
  814f57:	ff 
  814f58:	49 f7 dd             	neg    %r13
  814f5b:	4d 03 ca             	add    %r10,%r9
  814f5e:	4c 03 ad e8 f5 ff ff 	add    -0xa18(%rbp),%r13
  814f65:	4d 03 c2             	add    %r10,%r8
  814f68:	48 8b bd 10 f6 ff ff 	mov    -0x9f0(%rbp),%rdi
  814f6f:	49 2b fd             	sub    %r13,%rdi
  814f72:	49 f7 dd             	neg    %r13
  814f75:	48 8b b5 58 f6 ff ff 	mov    -0x9a8(%rbp),%rsi
  814f7c:	48 03 f8             	add    %rax,%rdi
  814f7f:	48 8b 8d 50 f6 ff ff 	mov    -0x9b0(%rbp),%rcx
  814f86:	4c 03 ad 00 f6 ff ff 	add    -0xa00(%rbp),%r13
  814f8d:	4c 03 ad 08 f6 ff ff 	add    -0x9f8(%rbp),%r13
  814f94:	48 03 f0             	add    %rax,%rsi
  814f97:	4c 89 9d 40 f6 ff ff 	mov    %r11,-0x9c0(%rbp)
  814f9e:	4c 03 e8             	add    %rax,%r13
  814fa1:	4c 8b 9d f8 f5 ff ff 	mov    -0xa08(%rbp),%r11
  814fa8:	48 03 c8             	add    %rax,%rcx
  814fab:	c4 a1 7b 10 04 67    	vmovsd (%rdi,%r12,2),%xmm0
  814fb1:	49 ff c7             	inc    %r15
  814fb4:	c4 81 7b 10 54 65 00 	vmovsd 0x0(%r13,%r12,2),%xmm2
  814fbb:	c4 a1 7b 5c 0c 61    	vsubsd (%rcx,%r12,2),%xmm0,%xmm1
  814fc1:	c4 a1 6b 5c 1c 66    	vsubsd (%rsi,%r12,2),%xmm2,%xmm3
  814fc7:	c4 81 7b 11 0c 0e    	vmovsd %xmm1,(%r14,%r9,1)
  814fcd:	4c 03 e2             	add    %rdx,%r12
  814fd0:	c4 81 7b 11 5c 06 08 	vmovsd %xmm3,0x8(%r14,%r8,1)
  814fd7:	49 83 c6 10          	add    $0x10,%r14
  814fdb:	4d 3b fb             	cmp    %r11,%r15
  814fde:	72 cb                	jb     814fab <pre_step3d_mod_mp_pre_step3d_tile_+0x9fb>
  814fe0:	4c 8b 9d 40 f6 ff ff 	mov    -0x9c0(%rbp),%r11
  814fe7:	43 8d 74 3f 01       	lea    0x1(%r15,%r15,1),%esi
  814fec:	8d 4e ff             	lea    -0x1(%rsi),%ecx
  814fef:	3b 8d a0 f6 ff ff    	cmp    -0x960(%rbp),%ecx
  814ff5:	73 67                	jae    81505e <pre_step3d_mod_mp_pre_step3d_tile_+0xaae>
  814ff7:	4c 8b ad 68 f6 ff ff 	mov    -0x998(%rbp),%r13
  814ffe:	48 89 d1             	mov    %rdx,%rcx
  815001:	4c 8b a5 d0 f5 ff ff 	mov    -0xa30(%rbp),%r12
  815008:	48 63 f6             	movslq %esi,%rsi
  81500b:	48 0f af ce          	imul   %rsi,%rcx
  81500f:	4f 63 34 ac          	movslq (%r12,%r13,4),%r14
  815013:	4c 0f af b5 70 f4 ff 	imul   -0xb90(%rbp),%r14
  81501a:	ff 
  81501b:	4c 8b 85 f0 f5 ff ff 	mov    -0xa10(%rbp),%r8
  815022:	4c 8b 8d 00 f6 ff ff 	mov    -0xa00(%rbp),%r9
  815029:	48 8b bd 60 f6 ff ff 	mov    -0x9a0(%rbp),%rdi
  815030:	4f 8d 3c 08          	lea    (%r8,%r9,1),%r15
  815034:	4c 2b bd e8 f5 ff ff 	sub    -0xa18(%rbp),%r15
  81503b:	48 8d 34 f7          	lea    (%rdi,%rsi,8),%rsi
  81503f:	4d 03 fe             	add    %r14,%r15
  815042:	4c 03 f9             	add    %rcx,%r15
  815045:	48 03 8d 48 f6 ff ff 	add    -0x9b8(%rbp),%rcx
  81504c:	c4 c1 7b 10 04 07    	vmovsd (%r15,%rax,1),%xmm0
  815052:	c5 fb 5c 0c 01       	vsubsd (%rcx,%rax,1),%xmm0,%xmm1
  815057:	c4 a1 7b 11 4c 16 f8 	vmovsd %xmm1,-0x8(%rsi,%r10,1)
  81505e:	49 ff c3             	inc    %r11
  815061:	4c 03 95 80 f6 ff ff 	add    -0x980(%rbp),%r10
  815068:	48 03 85 70 f6 ff ff 	add    -0x990(%rbp),%rax
  81506f:	4c 3b 9d 78 f6 ff ff 	cmp    -0x988(%rbp),%r11
  815076:	0f 82 87 fe ff ff    	jb     814f03 <pre_step3d_mod_mp_pre_step3d_tile_+0x953>
  81507c:	e9 4b 01 00 00       	jmpq   8151cc <pre_step3d_mod_mp_pre_step3d_tile_+0xc1c>
  815081:	4c 63 85 90 f6 ff ff 	movslq -0x970(%rbp),%r8
  815088:	4a 8d 04 e5 00 00 00 	lea    0x0(,%r12,8),%rax
  81508f:	00 
  815090:	4d 2b c1             	sub    %r9,%r8
  815093:	48 f7 d8             	neg    %rax
  815096:	4c 8b b5 e8 f5 ff ff 	mov    -0xa18(%rbp),%r14
  81509d:	49 ff c0             	inc    %r8
  8150a0:	45 89 c1             	mov    %r8d,%r9d
  8150a3:	49 03 c3             	add    %r11,%rax
  8150a6:	41 83 e1 fc          	and    $0xfffffffc,%r9d
  8150aa:	48 03 d0             	add    %rax,%rdx
  8150ad:	4d 63 c9             	movslq %r9d,%r9
  8150b0:	4f 8d 24 e6          	lea    (%r14,%r12,8),%r12
  8150b4:	45 33 d2             	xor    %r10d,%r10d
  8150b7:	4d 2b dc             	sub    %r12,%r11
  8150ba:	48 89 95 10 f6 ff ff 	mov    %rdx,-0x9f0(%rbp)
  8150c1:	49 03 cb             	add    %r11,%rcx
  8150c4:	4c 89 ad 30 f4 ff ff 	mov    %r13,-0xbd0(%rbp)
  8150cb:	33 c0                	xor    %eax,%eax
  8150cd:	48 89 bd 38 f4 ff ff 	mov    %rdi,-0xbc8(%rbp)
  8150d4:	4c 89 8d 38 f6 ff ff 	mov    %r9,-0x9c8(%rbp)
  8150db:	48 89 b5 40 f4 ff ff 	mov    %rsi,-0xbc0(%rbp)
  8150e2:	4c 89 f6             	mov    %r14,%rsi
  8150e5:	48 8b bd d0 f5 ff ff 	mov    -0xa30(%rbp),%rdi
  8150ec:	4c 8b ad e0 f5 ff ff 	mov    -0xa20(%rbp),%r13
  8150f3:	44 8b b5 90 f6 ff ff 	mov    -0x970(%rbp),%r14d
  8150fa:	48 8b 95 68 f6 ff ff 	mov    -0x998(%rbp),%rdx
  815101:	44 3b b5 88 f6 ff ff 	cmp    -0x978(%rbp),%r14d
  815108:	0f 8c a0 00 00 00    	jl     8151ae <pre_step3d_mod_mp_pre_step3d_tile_+0xbfe>
  81510e:	49 83 f8 04          	cmp    $0x4,%r8
  815112:	0f 8c 64 f9 00 00    	jl     824a7c <pre_step3d_mod_mp_pre_step3d_tile_+0x104cc>
  815118:	4c 63 0c 97          	movslq (%rdi,%rdx,4),%r9
  81511c:	45 33 e4             	xor    %r12d,%r12d
  81511f:	4c 0f af 8d 70 f4 ff 	imul   -0xb90(%rbp),%r9
  815126:	ff 
  815127:	49 f7 d9             	neg    %r9
  81512a:	4c 8d 1c 01          	lea    (%rcx,%rax,1),%r11
  81512e:	4c 03 ce             	add    %rsi,%r9
  815131:	49 f7 d9             	neg    %r9
  815134:	4c 03 8d 10 f6 ff ff 	add    -0x9f0(%rbp),%r9
  81513b:	4c 8b bd 38 f6 ff ff 	mov    -0x9c8(%rbp),%r15
  815142:	4c 03 c8             	add    %rax,%r9
  815145:	4c 89 fa             	mov    %r15,%rdx
  815148:	c4 81 7d 10 04 e1    	vmovupd (%r9,%r12,8),%ymm0
  81514e:	c4 81 7d 5c 0c e3    	vsubpd (%r11,%r12,8),%ymm0,%ymm1
  815154:	c4 81 7d 11 4c e5 00 	vmovupd %ymm1,0x0(%r13,%r12,8)
  81515b:	49 83 c4 04          	add    $0x4,%r12
  81515f:	4c 3b e2             	cmp    %rdx,%r12
  815162:	72 e4                	jb     815148 <pre_step3d_mod_mp_pre_step3d_tile_+0xb98>
  815164:	48 8b 95 68 f6 ff ff 	mov    -0x998(%rbp),%rdx
  81516b:	4d 3b f8             	cmp    %r8,%r15
  81516e:	73 3e                	jae    8151ae <pre_step3d_mod_mp_pre_step3d_tile_+0xbfe>
  815170:	4c 63 0c 97          	movslq (%rdi,%rdx,4),%r9
  815174:	4c 8d 1c 01          	lea    (%rcx,%rax,1),%r11
  815178:	4c 0f af 8d 70 f4 ff 	imul   -0xb90(%rbp),%r9
  81517f:	ff 
  815180:	49 f7 d9             	neg    %r9
  815183:	4c 03 ce             	add    %rsi,%r9
  815186:	49 f7 d9             	neg    %r9
  815189:	4c 03 8d 10 f6 ff ff 	add    -0x9f0(%rbp),%r9
  815190:	4c 03 c8             	add    %rax,%r9
  815193:	c4 81 7b 10 04 f9    	vmovsd (%r9,%r15,8),%xmm0
  815199:	c4 81 7b 5c 0c fb    	vsubsd (%r11,%r15,8),%xmm0,%xmm1
  81519f:	c4 81 7b 11 4c fd 00 	vmovsd %xmm1,0x0(%r13,%r15,8)
  8151a6:	49 ff c7             	inc    %r15
  8151a9:	4d 3b f8             	cmp    %r8,%r15
  8151ac:	72 e5                	jb     815193 <pre_step3d_mod_mp_pre_step3d_tile_+0xbe3>
  8151ae:	49 ff c2             	inc    %r10
  8151b1:	4c 03 ad 80 f6 ff ff 	add    -0x980(%rbp),%r13
  8151b8:	48 03 85 70 f6 ff ff 	add    -0x990(%rbp),%rax
  8151bf:	4c 3b 95 78 f6 ff ff 	cmp    -0x988(%rbp),%r10
  8151c6:	0f 82 35 ff ff ff    	jb     815101 <pre_step3d_mod_mp_pre_step3d_tile_+0xb51>
  8151cc:	4c 8b ad 30 f4 ff ff 	mov    -0xbd0(%rbp),%r13
  8151d3:	48 8b bd 38 f4 ff ff 	mov    -0xbc8(%rbp),%rdi
  8151da:	48 8b b5 40 f4 ff ff 	mov    -0xbc0(%rbp),%rsi
  8151e1:	48 83 c4 c0          	add    $0xffffffffffffffc0,%rsp
  8151e5:	48 8b 85 90 f5 ff ff 	mov    -0xa70(%rbp),%rax
  8151ec:	4c 8b 8d d8 f4 ff ff 	mov    -0xb28(%rbp),%r9
  8151f3:	48 89 04 24          	mov    %rax,(%rsp)
  8151f7:	48 8b 95 a0 f5 ff ff 	mov    -0xa60(%rbp),%rdx
  8151fe:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  815203:	48 8b 8d 50 f4 ff ff 	mov    -0xbb0(%rbp),%rcx
  81520a:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
  81520f:	4c 8b 85 98 f5 ff ff 	mov    -0xa68(%rbp),%r8
  815216:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  81521b:	48 c7 44 24 20 80 35 	movq   $0x8c3580,0x20(%rsp)
  815222:	8c 00 
  815224:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
  815229:	4c 89 4c 24 30       	mov    %r9,0x30(%rsp)
  81522e:	48 8b 95 a8 f5 ff ff 	mov    -0xa58(%rbp),%rdx
  815235:	48 8b 8d 80 f5 ff ff 	mov    -0xa80(%rbp),%rcx
  81523c:	4c 8b 85 b0 f5 ff ff 	mov    -0xa50(%rbp),%r8
  815243:	4c 8b 8d 88 f5 ff ff 	mov    -0xa78(%rbp),%r9
  81524a:	c5 f8 77             	vzeroupper 
  81524d:	e8 1e eb ff ff       	callq  813d70 <lmd_swfrac_tile_>
  815252:	48 83 c4 40          	add    $0x40,%rsp
  815256:	48 63 95 dc f5 ff ff 	movslq -0xa24(%rbp),%rdx
  81525d:	45 33 ed             	xor    %r13d,%r13d
  815260:	48 63 85 d8 f5 ff ff 	movslq -0xa28(%rbp),%rax
  815267:	48 89 95 78 f6 ff ff 	mov    %rdx,-0x988(%rbp)
  81526e:	48 3b d0             	cmp    %rax,%rdx
  815271:	0f 8c 88 01 00 00    	jl     8153ff <pre_step3d_mod_mp_pre_step3d_tile_+0xe4f>
  815277:	44 8b b5 cc f5 ff ff 	mov    -0xa34(%rbp),%r14d
  81527e:	45 89 f7             	mov    %r14d,%r15d
  815281:	44 8b 9d c8 f5 ff ff 	mov    -0xa38(%rbp),%r11d
  815288:	45 2b fb             	sub    %r11d,%r15d
  81528b:	44 89 9d b8 f6 ff ff 	mov    %r11d,-0x948(%rbp)
  815292:	41 ff c7             	inc    %r15d
  815295:	44 89 b5 c0 f6 ff ff 	mov    %r14d,-0x940(%rbp)
  81529c:	4d 63 db             	movslq %r11d,%r11
  81529f:	4d 63 f6             	movslq %r14d,%r14
  8152a2:	4d 2b f3             	sub    %r11,%r14
  8152a5:	48 63 b5 b8 f5 ff ff 	movslq -0xa48(%rbp),%rsi
  8152ac:	4c 63 a5 bc f5 ff ff 	movslq -0xa44(%rbp),%r12
  8152b3:	4c 2b e6             	sub    %rsi,%r12
  8152b6:	44 89 bd 48 f4 ff ff 	mov    %r15d,-0xbb8(%rbp)
  8152bd:	4e 8d 3c f5 08 00 00 	lea    0x8(,%r14,8),%r15
  8152c4:	00 
  8152c5:	49 ff c6             	inc    %r14
  8152c8:	4c 8b 95 90 f1 ff ff 	mov    -0xe70(%rbp),%r10
  8152cf:	45 89 f1             	mov    %r14d,%r9d
  8152d2:	49 89 d0             	mov    %rdx,%r8
  8152d5:	41 83 e1 fc          	and    $0xfffffffc,%r9d
  8152d9:	4c 2b c0             	sub    %rax,%r8
  8152dc:	4d 63 c9             	movslq %r9d,%r9
  8152df:	49 ff c0             	inc    %r8
  8152e2:	4c 89 85 b0 f6 ff ff 	mov    %r8,-0x950(%rbp)
  8152e9:	4f 8d 04 da          	lea    (%r10,%r11,8),%r8
  8152ed:	4c 89 8d e0 f6 ff ff 	mov    %r9,-0x920(%rbp)
  8152f4:	4d 8d 54 24 01       	lea    0x1(%r12),%r10
  8152f9:	48 8b 95 d8 f4 ff ff 	mov    -0xb28(%rbp),%rdx
  815300:	4c 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%r9
  815307:	00 
  815308:	4d 0f af ca          	imul   %r10,%r9
  81530c:	48 c1 e6 03          	shl    $0x3,%rsi
  815310:	4e 8d 24 e5 08 00 00 	lea    0x8(,%r12,8),%r12
  815317:	00 
  815318:	48 63 bd c0 f5 ff ff 	movslq -0xa40(%rbp),%rdi
  81531f:	4a 8d 14 da          	lea    (%rdx,%r11,8),%rdx
  815323:	48 63 8d c4 f5 ff ff 	movslq -0xa3c(%rbp),%rcx
  81532a:	49 89 d3             	mov    %rdx,%r11
  81532d:	4c 89 a5 a8 f6 ff ff 	mov    %r12,-0x958(%rbp)
  815334:	48 2b cf             	sub    %rdi,%rcx
  815337:	49 0f af fc          	imul   %r12,%rdi
  81533b:	49 89 f4             	mov    %rsi,%r12
  81533e:	48 2b d6             	sub    %rsi,%rdx
  815341:	4d 2b e1             	sub    %r9,%r12
  815344:	48 ff c1             	inc    %rcx
  815347:	4d 2b dc             	sub    %r12,%r11
  81534a:	49 f7 dc             	neg    %r12
  81534d:	4d 03 e0             	add    %r8,%r12
  815350:	4c 2b c6             	sub    %rsi,%r8
  815353:	48 8b b5 68 f4 ff ff 	mov    -0xb98(%rbp),%rsi
  81535a:	4c 2b cf             	sub    %rdi,%r9
  81535d:	4d 03 c1             	add    %r9,%r8
  815360:	4c 2b df             	sub    %rdi,%r11
  815363:	49 03 d1             	add    %r9,%rdx
  815366:	4c 89 bd c8 f6 ff ff 	mov    %r15,-0x938(%rbp)
  81536d:	48 8d 34 f5 08 00 00 	lea    0x8(,%rsi,8),%rsi
  815374:	00 
  815375:	4c 0f af d6          	imul   %rsi,%r10
  815379:	4c 0f af d1          	imul   %rcx,%r10
  81537d:	49 2b fa             	sub    %r10,%rdi
  815380:	4d 03 c2             	add    %r10,%r8
  815383:	4c 89 9d d0 f6 ff ff 	mov    %r11,-0x930(%rbp)
  81538a:	45 33 ff             	xor    %r15d,%r15d
  81538d:	4c 89 85 d8 f6 ff ff 	mov    %r8,-0x928(%rbp)
  815394:	4c 2b e7             	sub    %rdi,%r12
  815397:	48 89 95 e8 f6 ff ff 	mov    %rdx,-0x918(%rbp)
  81539e:	48 89 85 08 f6 ff ff 	mov    %rax,-0x9f8(%rbp)
  8153a5:	8b 85 c0 f6 ff ff    	mov    -0x940(%rbp),%eax
  8153ab:	3b 85 b8 f6 ff ff    	cmp    -0x948(%rbp),%eax
  8153b1:	7c 32                	jl     8153e5 <pre_step3d_mod_mp_pre_step3d_tile_+0xe35>
  8153b3:	83 bd 48 f4 ff ff 0c 	cmpl   $0xc,-0xbb8(%rbp)
  8153ba:	0f 8e 57 f6 00 00    	jle    824a17 <pre_step3d_mod_mp_pre_step3d_tile_+0x10467>
  8153c0:	48 8b 85 d8 f6 ff ff 	mov    -0x928(%rbp),%rax
  8153c7:	48 8b 8d d0 f6 ff ff 	mov    -0x930(%rbp),%rcx
  8153ce:	48 8b 95 c8 f6 ff ff 	mov    -0x938(%rbp),%rdx
  8153d5:	4a 8d 3c 38          	lea    (%rax,%r15,1),%rdi
  8153d9:	4a 8d 34 39          	lea    (%rcx,%r15,1),%rsi
  8153dd:	c5 f8 77             	vzeroupper 
  8153e0:	e8 5b 37 cc ff       	callq  4d8b40 <_intel_fast_memcpy>
  8153e5:	49 ff c5             	inc    %r13
  8153e8:	4c 03 bd a8 f6 ff ff 	add    -0x958(%rbp),%r15
  8153ef:	4c 3b ad b0 f6 ff ff 	cmp    -0x950(%rbp),%r13
  8153f6:	72 ad                	jb     8153a5 <pre_step3d_mod_mp_pre_step3d_tile_+0xdf5>
  8153f8:	48 8b 85 08 f6 ff ff 	mov    -0x9f8(%rbp),%rax
  8153ff:	48 8b 95 60 f4 ff ff 	mov    -0xba0(%rbp),%rdx
  815406:	48 8b 8d 68 f4 ff ff 	mov    -0xb98(%rbp),%rcx
  81540d:	48 ff c1             	inc    %rcx
  815410:	48 03 95 70 f4 ff ff 	add    -0xb90(%rbp),%rdx
  815417:	48 89 95 60 f4 ff ff 	mov    %rdx,-0xba0(%rbp)
  81541e:	48 89 8d 68 f4 ff ff 	mov    %rcx,-0xb98(%rbp)
  815425:	48 3b 8d 58 f4 ff ff 	cmp    -0xba8(%rbp),%rcx
  81542c:	73 0c                	jae    81543a <pre_step3d_mod_mp_pre_step3d_tile_+0xe8a>
  81542e:	48 8b b5 70 f5 ff ff 	mov    -0xa90(%rbp),%rsi
  815435:	e9 aa f8 ff ff       	jmpq   814ce4 <pre_step3d_mod_mp_pre_step3d_tile_+0x734>
  81543a:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  815440:	bf cc 73 b3 00       	mov    $0xb373cc,%edi
  815445:	c5 f8 77             	vzeroupper 
  815448:	e8 e3 87 bf ff       	callq  40dc30 <__kmpc_global_thread_num@plt>
  81544d:	89 85 6c f5 ff ff    	mov    %eax,-0xa94(%rbp)
  815453:	bf 1c 74 b3 00       	mov    $0xb3741c,%edi
  815458:	33 c0                	xor    %eax,%eax
  81545a:	e8 01 89 bf ff       	callq  40dd60 <__kmpc_ok_to_fork@plt>
  81545f:	85 c0                	test   %eax,%eax
  815461:	0f 84 3d 01 00 00    	je     8155a4 <pre_step3d_mod_mp_pre_step3d_tile_+0xff4>
  815467:	48 81 c4 20 ff ff ff 	add    $0xffffffffffffff20,%rsp
  81546e:	4c 8d 95 5c f5 ff ff 	lea    -0xaa4(%rbp),%r10
  815475:	ba c0 07 82 00       	mov    $0x8207c0,%edx
  81547a:	4d 8d 5a 04          	lea    0x4(%r10),%r11
  81547e:	4c 8d a3 00 01 00 00 	lea    0x100(%rbx),%r12
  815485:	4c 8d 73 38          	lea    0x38(%rbx),%r14
  815489:	4c 89 14 24          	mov    %r10,(%rsp)
  81548d:	4c 8d 7b 50          	lea    0x50(%rbx),%r15
  815491:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
  815496:	49 8d 42 14          	lea    0x14(%r10),%rax
  81549a:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
  81549f:	48 8d 70 58          	lea    0x58(%rax),%rsi
  8154a3:	4c 89 74 24 18       	mov    %r14,0x18(%rsp)
  8154a8:	48 8d 78 5c          	lea    0x5c(%rax),%rdi
  8154ac:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
  8154b1:	4d 8d 54 24 80       	lea    -0x80(%r12),%r10
  8154b6:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  8154bb:	4c 8d 58 f4          	lea    -0xc(%rax),%r11
  8154bf:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
  8154c4:	4c 8d 60 f8          	lea    -0x8(%rax),%r12
  8154c8:	48 89 7c 24 38       	mov    %rdi,0x38(%rsp)
  8154cd:	4c 8d 73 58          	lea    0x58(%rbx),%r14
  8154d1:	4c 89 54 24 40       	mov    %r10,0x40(%rsp)
  8154d6:	4d 8d 7a 08          	lea    0x8(%r10),%r15
  8154da:	4c 89 5c 24 48       	mov    %r11,0x48(%rsp)
  8154df:	48 8d 43 78          	lea    0x78(%rbx),%rax
  8154e3:	4c 89 64 24 50       	mov    %r12,0x50(%rsp)
  8154e8:	48 8d 73 40          	lea    0x40(%rbx),%rsi
  8154ec:	4c 89 74 24 58       	mov    %r14,0x58(%rsp)
  8154f1:	48 8d 7b 68          	lea    0x68(%rbx),%rdi
  8154f5:	4c 89 7c 24 60       	mov    %r15,0x60(%rsp)
  8154fa:	4c 8d 53 70          	lea    0x70(%rbx),%r10
  8154fe:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  815503:	4d 8d 5b 54          	lea    0x54(%r11),%r11
  815507:	48 89 74 24 70       	mov    %rsi,0x70(%rsp)
  81550c:	4d 8d 63 04          	lea    0x4(%r11),%r12
  815510:	48 8d 74 24 78       	lea    0x78(%rsp),%rsi
  815515:	48 89 3e             	mov    %rdi,(%rsi)
  815518:	4d 8d 73 08          	lea    0x8(%r11),%r14
  81551c:	4c 89 56 08          	mov    %r10,0x8(%rsi)
  815520:	4d 8d 7b 0c          	lea    0xc(%r11),%r15
  815524:	4c 89 5e 10          	mov    %r11,0x10(%rsi)
  815528:	49 8d 43 88          	lea    -0x78(%r11),%rax
  81552c:	4c 8d 9c 24 90 00 00 	lea    0x90(%rsp),%r11
  815533:	00 
  815534:	4d 89 23             	mov    %r12,(%r11)
  815537:	48 8d 70 04          	lea    0x4(%rax),%rsi
  81553b:	4d 89 73 08          	mov    %r14,0x8(%r11)
  81553f:	48 8d bd 78 f4 ff ff 	lea    -0xb88(%rbp),%rdi
  815546:	4d 89 7b 10          	mov    %r15,0x10(%r11)
  81554a:	48 8d 48 38          	lea    0x38(%rax),%rcx
  81554e:	4c 8d bc 24 a8 00 00 	lea    0xa8(%rsp),%r15
  815555:	00 
  815556:	49 89 07             	mov    %rax,(%r15)
  815559:	4c 8d 41 60          	lea    0x60(%rcx),%r8
  81555d:	49 89 77 08          	mov    %rsi,0x8(%r15)
  815561:	4c 8d 49 64          	lea    0x64(%rcx),%r9
  815565:	49 89 7f 10          	mov    %rdi,0x10(%r15)
  815569:	bf 1c 74 b3 00       	mov    $0xb3741c,%edi
  81556e:	be 1e 00 00 00       	mov    $0x1e,%esi
  815573:	33 c0                	xor    %eax,%eax
  815575:	4c 8d 95 d8 f4 ff ff 	lea    -0xb28(%rbp),%r10
  81557c:	4d 89 57 18          	mov    %r10,0x18(%r15)
  815580:	4c 8d 9d 20 f2 ff ff 	lea    -0xde0(%rbp),%r11
  815587:	4d 89 5f 20          	mov    %r11,0x20(%r15)
  81558b:	4d 8d 63 60          	lea    0x60(%r11),%r12
  81558f:	4d 89 67 28          	mov    %r12,0x28(%r15)
  815593:	e8 18 86 bf ff       	callq  40dbb0 <__kmpc_fork_call@plt>
  815598:	48 81 c4 e0 00 00 00 	add    $0xe0,%rsp
  81559f:	e9 57 01 00 00       	jmpq   8156fb <pre_step3d_mod_mp_pre_step3d_tile_+0x114b>
  8155a4:	bf 1c 74 b3 00       	mov    $0xb3741c,%edi
  8155a9:	33 c0                	xor    %eax,%eax
  8155ab:	8b b5 6c f5 ff ff    	mov    -0xa94(%rbp),%esi
  8155b1:	e8 9a 87 bf ff       	callq  40dd50 <__kmpc_serialized_parallel@plt>
  8155b6:	48 81 c4 30 ff ff ff 	add    $0xffffffffffffff30,%rsp
  8155bd:	48 8d 85 60 f5 ff ff 	lea    -0xaa0(%rbp),%rax
  8155c4:	be 08 4c b8 00       	mov    $0xb84c08,%esi
  8155c9:	4c 8d 93 00 01 00 00 	lea    0x100(%rbx),%r10
  8155d0:	4c 8d 5b 38          	lea    0x38(%rbx),%r11
  8155d4:	4c 8d 63 50          	lea    0x50(%rbx),%r12
  8155d8:	48 89 04 24          	mov    %rax,(%rsp)
  8155dc:	4c 8d 70 10          	lea    0x10(%rax),%r14
  8155e0:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
  8155e5:	4c 8d 78 68          	lea    0x68(%rax),%r15
  8155e9:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
  8155ee:	48 8d 40 6c          	lea    0x6c(%rax),%rax
  8155f2:	4c 89 64 24 18       	mov    %r12,0x18(%rsp)
  8155f7:	4d 8d 52 80          	lea    -0x80(%r10),%r10
  8155fb:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
  815600:	4c 8d 58 98          	lea    -0x68(%rax),%r11
  815604:	4c 89 7c 24 28       	mov    %r15,0x28(%rsp)
  815609:	4c 8d 60 9c          	lea    -0x64(%rax),%r12
  81560d:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  815612:	4c 8d 73 58          	lea    0x58(%rbx),%r14
  815616:	4c 89 54 24 38       	mov    %r10,0x38(%rsp)
  81561b:	4d 8d 7a 08          	lea    0x8(%r10),%r15
  81561f:	4c 89 5c 24 40       	mov    %r11,0x40(%rsp)
  815624:	48 8d 43 78          	lea    0x78(%rbx),%rax
  815628:	4c 89 64 24 48       	mov    %r12,0x48(%rsp)
  81562d:	4c 8d 53 40          	lea    0x40(%rbx),%r10
  815631:	4c 89 74 24 50       	mov    %r14,0x50(%rsp)
  815636:	4c 8d 5b 68          	lea    0x68(%rbx),%r11
  81563a:	4c 89 7c 24 58       	mov    %r15,0x58(%rsp)
  81563f:	4c 8d 63 70          	lea    0x70(%rbx),%r12
  815643:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
  815648:	4c 8d b5 b8 f5 ff ff 	lea    -0xa48(%rbp),%r14
  81564f:	4c 89 54 24 68       	mov    %r10,0x68(%rsp)
  815654:	4d 8d 7e 04          	lea    0x4(%r14),%r15
  815658:	4c 89 5c 24 70       	mov    %r11,0x70(%rsp)
  81565d:	49 8d 46 08          	lea    0x8(%r14),%rax
  815661:	4c 89 64 24 78       	mov    %r12,0x78(%rsp)
  815666:	4c 8d 50 04          	lea    0x4(%rax),%r10
  81566a:	4c 89 b4 24 80 00 00 	mov    %r14,0x80(%rsp)
  815671:	00 
  815672:	4c 8d 58 80          	lea    -0x80(%rax),%r11
  815676:	4c 8d b4 24 88 00 00 	lea    0x88(%rsp),%r14
  81567d:	00 
  81567e:	4d 89 3e             	mov    %r15,(%r14)
  815681:	48 8d 78 ac          	lea    -0x54(%rax),%rdi
  815685:	49 89 46 08          	mov    %rax,0x8(%r14)
  815689:	48 8d 50 b8          	lea    -0x48(%rax),%rdx
  81568d:	4d 89 56 10          	mov    %r10,0x10(%r14)
  815691:	48 8d 48 18          	lea    0x18(%rax),%rcx
  815695:	4c 8d 94 24 a0 00 00 	lea    0xa0(%rsp),%r10
  81569c:	00 
  81569d:	4d 89 1a             	mov    %r11,(%r10)
  8156a0:	4c 8d 40 1c          	lea    0x1c(%rax),%r8
  8156a4:	4c 8d 48 9c          	lea    -0x64(%rax),%r9
  8156a8:	4c 8d 60 84          	lea    -0x7c(%rax),%r12
  8156ac:	4d 89 62 08          	mov    %r12,0x8(%r10)
  8156b0:	4c 8d b5 78 f4 ff ff 	lea    -0xb88(%rbp),%r14
  8156b7:	4d 89 72 10          	mov    %r14,0x10(%r10)
  8156bb:	4d 8d 7b 98          	lea    -0x68(%r11),%r15
  8156bf:	4c 8d 9c 24 b8 00 00 	lea    0xb8(%rsp),%r11
  8156c6:	00 
  8156c7:	4d 89 3b             	mov    %r15,(%r11)
  8156ca:	48 8d 85 20 f2 ff ff 	lea    -0xde0(%rbp),%rax
  8156d1:	49 89 43 08          	mov    %rax,0x8(%r11)
  8156d5:	4c 8d 50 60          	lea    0x60(%rax),%r10
  8156d9:	4d 89 53 10          	mov    %r10,0x10(%r11)
  8156dd:	e8 de b0 00 00       	callq  8207c0 <pre_step3d_mod_mp_pre_step3d_tile_+0xc210>
  8156e2:	48 81 c4 d0 00 00 00 	add    $0xd0,%rsp
  8156e9:	bf 1c 74 b3 00       	mov    $0xb3741c,%edi
  8156ee:	33 c0                	xor    %eax,%eax
  8156f0:	8b b5 6c f5 ff ff    	mov    -0xa94(%rbp),%esi
  8156f6:	e8 c5 89 bf ff       	callq  40e0c0 <__kmpc_end_serialized_parallel@plt>
  8156fb:	bf 6c 74 b3 00       	mov    $0xb3746c,%edi
  815700:	33 c0                	xor    %eax,%eax
  815702:	e8 59 86 bf ff       	callq  40dd60 <__kmpc_ok_to_fork@plt>
  815707:	85 c0                	test   %eax,%eax
  815709:	0f 84 ea 00 00 00    	je     8157f9 <pre_step3d_mod_mp_pre_step3d_tile_+0x1249>
  81570f:	48 81 c4 60 ff ff ff 	add    $0xffffffffffffff60,%rsp
  815716:	4c 8d 95 c8 f5 ff ff 	lea    -0xa38(%rbp),%r10
  81571d:	4d 8d 5a 04          	lea    0x4(%r10),%r11
  815721:	4c 8d 63 78          	lea    0x78(%rbx),%r12
  815725:	4c 8d 73 68          	lea    0x68(%rbx),%r14
  815729:	4c 89 14 24          	mov    %r10,(%rsp)
  81572d:	4c 8d 7b 70          	lea    0x70(%rbx),%r15
  815731:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
  815736:	49 8d 54 24 08       	lea    0x8(%r12),%rdx
  81573b:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
  815740:	48 8d 72 08          	lea    0x8(%rdx),%rsi
  815744:	4c 89 74 24 18       	mov    %r14,0x18(%rsp)
  815749:	48 8d 7a 68          	lea    0x68(%rdx),%rdi
  81574d:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
  815752:	48 8d 4e 78          	lea    0x78(%rsi),%rcx
  815756:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  81575b:	4c 8d 43 38          	lea    0x38(%rbx),%r8
  81575f:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
  815764:	49 8d 42 f0          	lea    -0x10(%r10),%rax
  815768:	48 89 7c 24 38       	mov    %rdi,0x38(%rsp)
  81576d:	4c 8d 48 04          	lea    0x4(%rax),%r9
  815771:	48 89 4c 24 40       	mov    %rcx,0x40(%rsp)
  815776:	4c 8d 50 90          	lea    -0x70(%rax),%r10
  81577a:	4c 89 44 24 48       	mov    %r8,0x48(%rsp)
  81577f:	4c 8d 58 88          	lea    -0x78(%rax),%r11
  815783:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  815788:	4c 8d 60 8c          	lea    -0x74(%rax),%r12
  81578c:	4c 89 4c 24 58       	mov    %r9,0x58(%rsp)
  815791:	4c 8d 70 94          	lea    -0x6c(%rax),%r14
  815795:	4c 89 54 24 60       	mov    %r10,0x60(%rsp)
  81579a:	4c 8d bd a0 f3 ff ff 	lea    -0xc60(%rbp),%r15
  8157a1:	4c 89 5c 24 68       	mov    %r11,0x68(%rsp)
  8157a6:	49 8d 77 a0          	lea    -0x60(%r15),%rsi
  8157aa:	4c 89 64 24 70       	mov    %r12,0x70(%rsp)
  8157af:	48 8d 7e a0          	lea    -0x60(%rsi),%rdi
  8157b3:	4c 89 74 24 78       	mov    %r14,0x78(%rsp)
  8157b8:	ba 55 e6 81 00       	mov    $0x81e655,%edx
  8157bd:	4c 8d b4 24 80 00 00 	lea    0x80(%rsp),%r14
  8157c4:	00 
  8157c5:	4d 89 3e             	mov    %r15,(%r14)
  8157c8:	48 8d 48 20          	lea    0x20(%rax),%rcx
  8157cc:	49 89 76 08          	mov    %rsi,0x8(%r14)
  8157d0:	be 16 00 00 00       	mov    $0x16,%esi
  8157d5:	49 89 7e 10          	mov    %rdi,0x10(%r14)
  8157d9:	bf 6c 74 b3 00       	mov    $0xb3746c,%edi
  8157de:	33 c0                	xor    %eax,%eax
  8157e0:	4c 8d 41 04          	lea    0x4(%rcx),%r8
  8157e4:	4c 8d 49 a0          	lea    -0x60(%rcx),%r9
  8157e8:	e8 c3 83 bf ff       	callq  40dbb0 <__kmpc_fork_call@plt>
  8157ed:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
  8157f4:	e9 bb 00 00 00       	jmpq   8158b4 <pre_step3d_mod_mp_pre_step3d_tile_+0x1304>
  8157f9:	bf 6c 74 b3 00       	mov    $0xb3746c,%edi
  8157fe:	33 c0                	xor    %eax,%eax
  815800:	8b b5 6c f5 ff ff    	mov    -0xa94(%rbp),%esi
  815806:	e8 45 85 bf ff       	callq  40dd50 <__kmpc_serialized_parallel@plt>
  81580b:	48 8d 85 e0 f2 ff ff 	lea    -0xd20(%rbp),%rax
  815812:	50                   	push   %rax
  815813:	4c 8d 50 60          	lea    0x60(%rax),%r10
  815817:	41 52                	push   %r10
  815819:	4d 8d 5a 60          	lea    0x60(%r10),%r11
  81581d:	41 53                	push   %r11
  81581f:	4c 8d a5 4c f5 ff ff 	lea    -0xab4(%rbp),%r12
  815826:	41 54                	push   %r12
  815828:	4d 8d 74 24 f8       	lea    -0x8(%r12),%r14
  81582d:	41 56                	push   %r14
  81582f:	4d 8d 7c 24 f4       	lea    -0xc(%r12),%r15
  815834:	41 57                	push   %r15
  815836:	49 8d 7c 24 fc       	lea    -0x4(%r12),%rdi
  81583b:	57                   	push   %rdi
  81583c:	48 8d 77 74          	lea    0x74(%rdi),%rsi
  815840:	56                   	push   %rsi
  815841:	be 0c 4c b8 00       	mov    $0xb84c0c,%esi
  815846:	48 8d 57 70          	lea    0x70(%rdi),%rdx
  81584a:	52                   	push   %rdx
  81584b:	48 8d 4b 38          	lea    0x38(%rbx),%rcx
  81584f:	51                   	push   %rcx
  815850:	4c 8d 83 00 01 00 00 	lea    0x100(%rbx),%r8
  815857:	41 50                	push   %r8
  815859:	49 8d 40 e8          	lea    -0x18(%r8),%rax
  81585d:	50                   	push   %rax
  81585e:	4c 8d 48 a0          	lea    -0x60(%rax),%r9
  815862:	41 51                	push   %r9
  815864:	4c 8d 50 98          	lea    -0x68(%rax),%r10
  815868:	41 52                	push   %r10
  81586a:	4c 8d 5b 70          	lea    0x70(%rbx),%r11
  81586e:	41 53                	push   %r11
  815870:	4c 8d 63 68          	lea    0x68(%rbx),%r12
  815874:	41 54                	push   %r12
  815876:	4c 8d 73 78          	lea    0x78(%rbx),%r14
  81587a:	41 56                	push   %r14
  81587c:	4c 8d 7a 14          	lea    0x14(%rdx),%r15
  815880:	41 57                	push   %r15
  815882:	48 8d 7a b4          	lea    -0x4c(%rdx),%rdi
  815886:	48 8d 52 20          	lea    0x20(%rdx),%rdx
  81588a:	48 8d 4a 04          	lea    0x4(%rdx),%rcx
  81588e:	4c 8d 42 a0          	lea    -0x60(%rdx),%r8
  815892:	4c 8d 4a f0          	lea    -0x10(%rdx),%r9
  815896:	e8 ba 8d 00 00       	callq  81e655 <pre_step3d_mod_mp_pre_step3d_tile_+0xa0a5>
  81589b:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
  8158a2:	bf 6c 74 b3 00       	mov    $0xb3746c,%edi
  8158a7:	33 c0                	xor    %eax,%eax
  8158a9:	8b b5 6c f5 ff ff    	mov    -0xa94(%rbp),%esi
  8158af:	e8 0c 88 bf ff       	callq  40e0c0 <__kmpc_end_serialized_parallel@plt>
  8158b4:	bf bc 74 b3 00       	mov    $0xb374bc,%edi
  8158b9:	33 c0                	xor    %eax,%eax
  8158bb:	e8 a0 84 bf ff       	callq  40dd60 <__kmpc_ok_to_fork@plt>
  8158c0:	85 c0                	test   %eax,%eax
  8158c2:	0f 84 10 01 00 00    	je     8159d8 <pre_step3d_mod_mp_pre_step3d_tile_+0x1428>
  8158c8:	48 81 c4 50 ff ff ff 	add    $0xffffffffffffff50,%rsp
  8158cf:	4c 8d 95 c8 f5 ff ff 	lea    -0xa38(%rbp),%r10
  8158d6:	4c 8b 85 90 f1 ff ff 	mov    -0xe70(%rbp),%r8
  8158dd:	4d 8d 5a 04          	lea    0x4(%r10),%r11
  8158e1:	ba d7 c3 81 00       	mov    $0x81c3d7,%edx
  8158e6:	4c 8d a3 90 00 00 00 	lea    0x90(%rbx),%r12
  8158ed:	4d 8d 74 24 48       	lea    0x48(%r12),%r14
  8158f2:	4c 89 14 24          	mov    %r10,(%rsp)
  8158f6:	4d 8d 7c 24 70       	lea    0x70(%r12),%r15
  8158fb:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
  815900:	48 8d 73 38          	lea    0x38(%rbx),%rsi
  815904:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
  815909:	49 8d 7c 24 40       	lea    0x40(%r12),%rdi
  81590e:	4c 89 74 24 18       	mov    %r14,0x18(%rsp)
  815913:	48 8d 4b 60          	lea    0x60(%rbx),%rcx
  815917:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
  81591c:	48 8d 41 40          	lea    0x40(%rcx),%rax
  815920:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
  815925:	4c 8d 48 18          	lea    0x18(%rax),%r9
  815929:	48 89 7c 24 30       	mov    %rdi,0x30(%rsp)
  81592e:	4c 8d 53 78          	lea    0x78(%rbx),%r10
  815932:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  815937:	4c 8d 5b 40          	lea    0x40(%rbx),%r11
  81593b:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
  815940:	4c 8d a5 40 f5 ff ff 	lea    -0xac0(%rbp),%r12
  815947:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  81594c:	4d 8d 74 24 04       	lea    0x4(%r12),%r14
  815951:	4c 89 4c 24 50       	mov    %r9,0x50(%rsp)
  815956:	4d 8d 7c 24 78       	lea    0x78(%r12),%r15
  81595b:	4c 89 54 24 58       	mov    %r10,0x58(%rsp)
  815960:	49 8d 74 24 7c       	lea    0x7c(%r12),%rsi
  815965:	4c 89 5c 24 60       	mov    %r11,0x60(%rsp)
  81596a:	48 8d 7e 90          	lea    -0x70(%rsi),%rdi
  81596e:	4c 89 64 24 68       	mov    %r12,0x68(%rsp)
  815973:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  815977:	4c 89 74 24 70       	mov    %r14,0x70(%rsp)
  81597c:	4c 8d 41 04          	lea    0x4(%rcx),%r8
  815980:	4c 89 7c 24 78       	mov    %r15,0x78(%rsp)
  815985:	48 8d 41 90          	lea    -0x70(%rcx),%rax
  815989:	4c 8d bc 24 80 00 00 	lea    0x80(%rsp),%r15
  815990:	00 
  815991:	49 89 37             	mov    %rsi,(%r15)
  815994:	4c 8d 8d e0 f2 ff ff 	lea    -0xd20(%rbp),%r9
  81599b:	49 89 7f 08          	mov    %rdi,0x8(%r15)
  81599f:	bf bc 74 b3 00       	mov    $0xb374bc,%edi
  8159a4:	49 89 4f 10          	mov    %rcx,0x10(%r15)
  8159a8:	be 19 00 00 00       	mov    $0x19,%esi
  8159ad:	4d 89 47 18          	mov    %r8,0x18(%r15)
  8159b1:	48 8d 49 18          	lea    0x18(%rcx),%rcx
  8159b5:	49 89 47 20          	mov    %rax,0x20(%r15)
  8159b9:	4c 8d 41 04          	lea    0x4(%rcx),%r8
  8159bd:	4d 89 4f 28          	mov    %r9,0x28(%r15)
  8159c1:	4c 8d 48 28          	lea    0x28(%rax),%r9
  8159c5:	33 c0                	xor    %eax,%eax
  8159c7:	e8 e4 81 bf ff       	callq  40dbb0 <__kmpc_fork_call@plt>
  8159cc:	48 81 c4 b0 00 00 00 	add    $0xb0,%rsp
  8159d3:	e9 1d 01 00 00       	jmpq   815af5 <pre_step3d_mod_mp_pre_step3d_tile_+0x1545>
  8159d8:	bf bc 74 b3 00       	mov    $0xb374bc,%edi
  8159dd:	33 c0                	xor    %eax,%eax
  8159df:	8b b5 6c f5 ff ff    	mov    -0xa94(%rbp),%esi
  8159e5:	e8 66 83 bf ff       	callq  40dd50 <__kmpc_serialized_parallel@plt>
  8159ea:	48 81 c4 50 ff ff ff 	add    $0xffffffffffffff50,%rsp
  8159f1:	48 8d 85 cc f5 ff ff 	lea    -0xa34(%rbp),%rax
  8159f8:	48 8b 8d 90 f1 ff ff 	mov    -0xe70(%rbp),%rcx
  8159ff:	4c 8d 93 90 00 00 00 	lea    0x90(%rbx),%r10
  815a06:	be 10 4c b8 00       	mov    $0xb84c10,%esi
  815a0b:	4d 8d 5a 48          	lea    0x48(%r10),%r11
  815a0f:	4d 8d 62 70          	lea    0x70(%r10),%r12
  815a13:	48 89 04 24          	mov    %rax,(%rsp)
  815a17:	4c 8d 73 38          	lea    0x38(%rbx),%r14
  815a1b:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
  815a20:	4d 8d 7a 40          	lea    0x40(%r10),%r15
  815a24:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
  815a29:	48 8d 53 60          	lea    0x60(%rbx),%rdx
  815a2d:	4c 89 64 24 18       	mov    %r12,0x18(%rsp)
  815a32:	4c 8d 42 40          	lea    0x40(%rdx),%r8
  815a36:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
  815a3b:	48 8d 42 58          	lea    0x58(%rdx),%rax
  815a3f:	4c 89 7c 24 28       	mov    %r15,0x28(%rsp)
  815a44:	4c 8d 4b 78          	lea    0x78(%rbx),%r9
  815a48:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  815a4d:	4c 8d 53 40          	lea    0x40(%rbx),%r10
  815a51:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  815a56:	4c 8d 9d 40 f5 ff ff 	lea    -0xac0(%rbp),%r11
  815a5d:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
  815a62:	4d 8d 63 04          	lea    0x4(%r11),%r12
  815a66:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  815a6b:	4d 8d 73 78          	lea    0x78(%r11),%r14
  815a6f:	4c 89 4c 24 50       	mov    %r9,0x50(%rsp)
  815a74:	4d 8d 7b 7c          	lea    0x7c(%r11),%r15
  815a78:	4c 89 54 24 58       	mov    %r10,0x58(%rsp)
  815a7d:	49 8d 53 0c          	lea    0xc(%r11),%rdx
  815a81:	4c 89 5c 24 60       	mov    %r11,0x60(%rsp)
  815a86:	48 8d 4a 74          	lea    0x74(%rdx),%rcx
  815a8a:	4c 89 64 24 68       	mov    %r12,0x68(%rsp)
  815a8f:	4c 8d 42 78          	lea    0x78(%rdx),%r8
  815a93:	4c 89 74 24 70       	mov    %r14,0x70(%rsp)
  815a98:	48 8d 42 04          	lea    0x4(%rdx),%rax
  815a9c:	4c 89 7c 24 78       	mov    %r15,0x78(%rsp)
  815aa1:	4c 8d 8d e0 f2 ff ff 	lea    -0xd20(%rbp),%r9
  815aa8:	4c 8d bc 24 80 00 00 	lea    0x80(%rsp),%r15
  815aaf:	00 
  815ab0:	49 89 17             	mov    %rdx,(%r15)
  815ab3:	48 8d 78 1c          	lea    0x1c(%rax),%rdi
  815ab7:	49 89 4f 08          	mov    %rcx,0x8(%r15)
  815abb:	48 8d 51 18          	lea    0x18(%rcx),%rdx
  815abf:	4d 89 47 10          	mov    %r8,0x10(%r15)
  815ac3:	48 8d 4a 04          	lea    0x4(%rdx),%rcx
  815ac7:	49 89 47 18          	mov    %rax,0x18(%r15)
  815acb:	4c 8d 40 28          	lea    0x28(%rax),%r8
  815acf:	4d 89 4f 20          	mov    %r9,0x20(%r15)
  815ad3:	4c 8d 48 78          	lea    0x78(%rax),%r9
  815ad7:	e8 fb 68 00 00       	callq  81c3d7 <pre_step3d_mod_mp_pre_step3d_tile_+0x7e27>
  815adc:	48 81 c4 b0 00 00 00 	add    $0xb0,%rsp
  815ae3:	bf bc 74 b3 00       	mov    $0xb374bc,%edi
  815ae8:	33 c0                	xor    %eax,%eax
  815aea:	8b b5 6c f5 ff ff    	mov    -0xa94(%rbp),%esi
  815af0:	e8 cb 85 bf ff       	callq  40e0c0 <__kmpc_end_serialized_parallel@plt>
  815af5:	bf 0c 75 b3 00       	mov    $0xb3750c,%edi
  815afa:	33 c0                	xor    %eax,%eax
  815afc:	e8 5f 82 bf ff       	callq  40dd60 <__kmpc_ok_to_fork@plt>
  815b01:	85 c0                	test   %eax,%eax
  815b03:	0f 84 51 01 00 00    	je     815c5a <pre_step3d_mod_mp_pre_step3d_tile_+0x16aa>
  815b09:	48 81 c4 20 ff ff ff 	add    $0xffffffffffffff20,%rsp
  815b10:	4c 8d 95 54 f5 ff ff 	lea    -0xaac(%rbp),%r10
  815b17:	ba 77 62 81 00       	mov    $0x816277,%edx
  815b1c:	4d 8d 5a 78          	lea    0x78(%r10),%r11
  815b20:	4c 8d a3 90 00 00 00 	lea    0x90(%rbx),%r12
  815b27:	4d 8d 74 24 78       	lea    0x78(%r12),%r14
  815b2c:	4c 89 14 24          	mov    %r10,(%rsp)
  815b30:	4c 8d 7b 38          	lea    0x38(%rbx),%r15
  815b34:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
  815b39:	49 8d 74 24 50       	lea    0x50(%r12),%rsi
  815b3e:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
  815b43:	48 8d 7e c8          	lea    -0x38(%rsi),%rdi
  815b47:	4c 89 74 24 18       	mov    %r14,0x18(%rsp)
  815b4c:	48 8d 4e e0          	lea    -0x20(%rsi),%rcx
  815b50:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
  815b55:	4c 8d 43 68          	lea    0x68(%rbx),%r8
  815b59:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
  815b5e:	48 8d 43 70          	lea    0x70(%rbx),%rax
  815b62:	48 89 7c 24 30       	mov    %rdi,0x30(%rsp)
  815b67:	4c 8d 4b 30          	lea    0x30(%rbx),%r9
  815b6b:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  815b70:	4c 8d 53 78          	lea    0x78(%rbx),%r10
  815b74:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
  815b79:	4c 8d 5b 40          	lea    0x40(%rbx),%r11
  815b7d:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  815b82:	4c 8d 61 30          	lea    0x30(%rcx),%r12
  815b86:	4c 89 4c 24 50       	mov    %r9,0x50(%rsp)
  815b8b:	4c 8d b5 58 f5 ff ff 	lea    -0xaa8(%rbp),%r14
  815b92:	4c 89 54 24 58       	mov    %r10,0x58(%rsp)
  815b97:	4d 8d 7e 70          	lea    0x70(%r14),%r15
  815b9b:	4c 89 5c 24 60       	mov    %r11,0x60(%rsp)
  815ba0:	48 8d 71 50          	lea    0x50(%rcx),%rsi
  815ba4:	4c 89 64 24 68       	mov    %r12,0x68(%rsp)
  815ba9:	48 8d 78 40          	lea    0x40(%rax),%rdi
  815bad:	4c 89 74 24 70       	mov    %r14,0x70(%rsp)
  815bb2:	48 8d 48 58          	lea    0x58(%rax),%rcx
  815bb6:	4c 89 7c 24 78       	mov    %r15,0x78(%rsp)
  815bbb:	4c 8d 41 30          	lea    0x30(%rcx),%r8
  815bbf:	4c 8d bc 24 80 00 00 	lea    0x80(%rsp),%r15
  815bc6:	00 
  815bc7:	49 89 37             	mov    %rsi,(%r15)
  815bca:	49 8d 46 e8          	lea    -0x18(%r14),%rax
  815bce:	49 89 7f 08          	mov    %rdi,0x8(%r15)
  815bd2:	4c 8d 48 04          	lea    0x4(%rax),%r9
  815bd6:	49 89 4f 10          	mov    %rcx,0x10(%r15)
  815bda:	4c 8d 50 78          	lea    0x78(%rax),%r10
  815bde:	48 8d 8c 24 98 00 00 	lea    0x98(%rsp),%rcx
  815be5:	00 
  815be6:	4c 89 01             	mov    %r8,(%rcx)
  815be9:	4c 8d 58 7c          	lea    0x7c(%rax),%r11
  815bed:	48 89 41 08          	mov    %rax,0x8(%rcx)
  815bf1:	4c 8d 60 0c          	lea    0xc(%rax),%r12
  815bf5:	4c 89 49 10          	mov    %r9,0x10(%rcx)
  815bf9:	4c 8d 70 08          	lea    0x8(%rax),%r14
  815bfd:	48 8d 84 24 b0 00 00 	lea    0xb0(%rsp),%rax
  815c04:	00 
  815c05:	4c 89 10             	mov    %r10,(%rax)
  815c08:	4c 8d bd 40 f3 ff ff 	lea    -0xcc0(%rbp),%r15
  815c0f:	4c 89 58 08          	mov    %r11,0x8(%rax)
  815c13:	49 8d 77 a0          	lea    -0x60(%r15),%rsi
  815c17:	4c 89 60 10          	mov    %r12,0x10(%rax)
  815c1b:	bf 0c 75 b3 00       	mov    $0xb3750c,%edi
  815c20:	4c 8d a4 24 c8 00 00 	lea    0xc8(%rsp),%r12
  815c27:	00 
  815c28:	4d 89 34 24          	mov    %r14,(%r12)
  815c2c:	49 8d 4a 20          	lea    0x20(%r10),%rcx
  815c30:	4d 89 7c 24 08       	mov    %r15,0x8(%r12)
  815c35:	4c 8d 41 04          	lea    0x4(%rcx),%r8
  815c39:	49 89 74 24 10       	mov    %rsi,0x10(%r12)
  815c3e:	be 1f 00 00 00       	mov    $0x1f,%esi
  815c43:	33 c0                	xor    %eax,%eax
  815c45:	4c 8d 49 a0          	lea    -0x60(%rcx),%r9
  815c49:	e8 62 7f bf ff       	callq  40dbb0 <__kmpc_fork_call@plt>
  815c4e:	48 81 c4 e0 00 00 00 	add    $0xe0,%rsp
  815c55:	e9 5e 01 00 00       	jmpq   815db8 <pre_step3d_mod_mp_pre_step3d_tile_+0x1808>
  815c5a:	bf 0c 75 b3 00       	mov    $0xb3750c,%edi
  815c5f:	33 c0                	xor    %eax,%eax
  815c61:	8b b5 6c f5 ff ff    	mov    -0xa94(%rbp),%esi
  815c67:	e8 e4 80 bf ff       	callq  40dd50 <__kmpc_serialized_parallel@plt>
  815c6c:	48 81 c4 20 ff ff ff 	add    $0xffffffffffffff20,%rsp
  815c73:	48 8d 85 cc f5 ff ff 	lea    -0xa34(%rbp),%rax
  815c7a:	be 14 4c b8 00       	mov    $0xb84c14,%esi
  815c7f:	4c 8d 93 90 00 00 00 	lea    0x90(%rbx),%r10
  815c86:	4d 8d 5a 78          	lea    0x78(%r10),%r11
  815c8a:	4c 8d 63 38          	lea    0x38(%rbx),%r12
  815c8e:	48 89 04 24          	mov    %rax,(%rsp)
  815c92:	4d 8d 72 50          	lea    0x50(%r10),%r14
  815c96:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
  815c9b:	4d 8d 7a 18          	lea    0x18(%r10),%r15
  815c9f:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
  815ca4:	49 8d 52 30          	lea    0x30(%r10),%rdx
  815ca8:	4c 89 64 24 18       	mov    %r12,0x18(%rsp)
  815cad:	48 8d 4b 68          	lea    0x68(%rbx),%rcx
  815cb1:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
  815cb6:	48 8d 43 70          	lea    0x70(%rbx),%rax
  815cba:	4c 89 7c 24 28       	mov    %r15,0x28(%rsp)
  815cbf:	4c 8d 43 30          	lea    0x30(%rbx),%r8
  815cc3:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  815cc8:	4c 8d 53 78          	lea    0x78(%rbx),%r10
  815ccc:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  815cd1:	4c 8d 5b 40          	lea    0x40(%rbx),%r11
  815cd5:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  815cda:	4c 8d 62 30          	lea    0x30(%rdx),%r12
  815cde:	4c 89 44 24 48       	mov    %r8,0x48(%rsp)
  815ce3:	4c 8d b5 58 f5 ff ff 	lea    -0xaa8(%rbp),%r14
  815cea:	4c 89 54 24 50       	mov    %r10,0x50(%rsp)
  815cef:	4d 8d 7e 70          	lea    0x70(%r14),%r15
  815cf3:	4c 89 5c 24 58       	mov    %r11,0x58(%rsp)
  815cf8:	48 8d 52 50          	lea    0x50(%rdx),%rdx
  815cfc:	4c 89 64 24 60       	mov    %r12,0x60(%rsp)
  815d01:	48 8d 48 40          	lea    0x40(%rax),%rcx
  815d05:	4c 89 74 24 68       	mov    %r14,0x68(%rsp)
  815d0a:	48 8d 40 58          	lea    0x58(%rax),%rax
  815d0e:	4c 89 7c 24 70       	mov    %r15,0x70(%rsp)
  815d13:	4c 8d 40 30          	lea    0x30(%rax),%r8
  815d17:	4c 8d 7c 24 78       	lea    0x78(%rsp),%r15
  815d1c:	49 89 17             	mov    %rdx,(%r15)
  815d1f:	4d 8d 56 e8          	lea    -0x18(%r14),%r10
  815d23:	49 89 4f 08          	mov    %rcx,0x8(%r15)
  815d27:	4d 8d 5a 04          	lea    0x4(%r10),%r11
  815d2b:	49 89 47 10          	mov    %rax,0x10(%r15)
  815d2f:	4d 8d 62 78          	lea    0x78(%r10),%r12
  815d33:	48 8d 84 24 90 00 00 	lea    0x90(%rsp),%rax
  815d3a:	00 
  815d3b:	4c 89 00             	mov    %r8,(%rax)
  815d3e:	4d 8d 72 7c          	lea    0x7c(%r10),%r14
  815d42:	4c 89 50 08          	mov    %r10,0x8(%rax)
  815d46:	4d 8d 7a 0c          	lea    0xc(%r10),%r15
  815d4a:	4c 89 58 10          	mov    %r11,0x10(%rax)
  815d4e:	49 8d 52 08          	lea    0x8(%r10),%rdx
  815d52:	4c 8d 94 24 a8 00 00 	lea    0xa8(%rsp),%r10
  815d59:	00 
  815d5a:	4d 89 22             	mov    %r12,(%r10)
  815d5d:	48 8d 8d 40 f3 ff ff 	lea    -0xcc0(%rbp),%rcx
  815d64:	4d 89 72 08          	mov    %r14,0x8(%r10)
  815d68:	48 8d 7a 24          	lea    0x24(%rdx),%rdi
  815d6c:	4d 89 7a 10          	mov    %r15,0x10(%r10)
  815d70:	4c 8d 4a 0c          	lea    0xc(%rdx),%r9
  815d74:	4c 8d bc 24 c0 00 00 	lea    0xc0(%rsp),%r15
  815d7b:	00 
  815d7c:	49 89 17             	mov    %rdx,(%r15)
  815d7f:	48 8d 57 6c          	lea    0x6c(%rdi),%rdx
  815d83:	49 89 4f 08          	mov    %rcx,0x8(%r15)
  815d87:	48 8d 4a 04          	lea    0x4(%rdx),%rcx
  815d8b:	4c 8d 42 a0          	lea    -0x60(%rdx),%r8
  815d8f:	48 8d 85 e0 f2 ff ff 	lea    -0xd20(%rbp),%rax
  815d96:	49 89 47 10          	mov    %rax,0x10(%r15)
  815d9a:	e8 d8 04 00 00       	callq  816277 <pre_step3d_mod_mp_pre_step3d_tile_+0x1cc7>
  815d9f:	48 81 c4 e0 00 00 00 	add    $0xe0,%rsp
  815da6:	bf 0c 75 b3 00       	mov    $0xb3750c,%edi
  815dab:	33 c0                	xor    %eax,%eax
  815dad:	8b b5 6c f5 ff ff    	mov    -0xa94(%rbp),%esi
  815db3:	e8 08 83 bf ff       	callq  40e0c0 <__kmpc_end_serialized_parallel@plt>
  815db8:	48 8b 15 c1 62 32 00 	mov    0x3262c1(%rip),%rdx        # b3c080 <mod_param_mp_nt_+0x40>
  815dbf:	b8 01 00 00 00       	mov    $0x1,%eax
  815dc4:	48 c1 e2 02          	shl    $0x2,%rdx
  815dc8:	48 8b bd 78 f5 ff ff 	mov    -0xa88(%rbp),%rdi
  815dcf:	48 89 d1             	mov    %rdx,%rcx
  815dd2:	48 f7 d9             	neg    %rcx
  815dd5:	48 03 0d 64 62 32 00 	add    0x326264(%rip),%rcx        # b3c040 <mod_param_mp_nt_>
  815ddc:	48 63 37             	movslq (%rdi),%rsi
  815ddf:	c7 85 d0 f5 ff ff 00 	movl   $0x0,-0xa30(%rbp)
  815de6:	00 00 00 
  815de9:	c7 85 d4 f5 ff ff 01 	movl   $0x1,-0xa2c(%rbp)
  815df0:	00 00 00 
  815df3:	44 8b 24 b1          	mov    (%rcx,%rsi,4),%r12d
  815df7:	45 85 e4             	test   %r12d,%r12d
  815dfa:	0f 8e d3 02 00 00    	jle    8160d3 <pre_step3d_mod_mp_pre_step3d_tile_+0x1b23>
  815e00:	4c 8b ad 50 f4 ff ff 	mov    -0xbb0(%rbp),%r13
  815e07:	4c 8b b5 b0 f5 ff ff 	mov    -0xa50(%rbp),%r14
  815e0e:	4c 8b bd 88 f5 ff ff 	mov    -0xa78(%rbp),%r15
  815e15:	4c 8b 05 9c 6f 32 00 	mov    0x326f9c(%rip),%r8        # b3cdb8 <mod_scalars_mp_ltracerclm_+0x58>
  815e1c:	49 f7 d8             	neg    %r8
  815e1f:	4c 03 c6             	add    %rsi,%r8
  815e22:	4c 0f af 05 86 6f 32 	imul   0x326f86(%rip),%r8        # b3cdb0 <mod_scalars_mp_ltracerclm_+0x50>
  815e29:	00 
  815e2a:	48 8b 0d 6f 6f 32 00 	mov    0x326f6f(%rip),%rcx        # b3cda0 <mod_scalars_mp_ltracerclm_+0x40>
  815e31:	48 c1 e1 02          	shl    $0x2,%rcx
  815e35:	4c 8b 15 24 6f 32 00 	mov    0x326f24(%rip),%r10        # b3cd60 <mod_scalars_mp_ltracerclm_>
  815e3c:	48 63 c0             	movslq %eax,%rax
  815e3f:	4c 2b d1             	sub    %rcx,%r10
  815e42:	4d 8d 1c 82          	lea    (%r10,%rax,4),%r11
  815e46:	43 f6 04 03 01       	testb  $0x1,(%r11,%r8,1)
  815e4b:	74 3b                	je     815e88 <pre_step3d_mod_mp_pre_step3d_tile_+0x18d8>
  815e4d:	4c 8b 1d 04 6f 32 00 	mov    0x326f04(%rip),%r11        # b3cd58 <mod_scalars_mp_lnudgetclm_+0x58>
  815e54:	49 f7 db             	neg    %r11
  815e57:	4c 03 de             	add    %rsi,%r11
  815e5a:	4c 0f af 1d ee 6e 32 	imul   0x326eee(%rip),%r11        # b3cd50 <mod_scalars_mp_lnudgetclm_+0x50>
  815e61:	00 
  815e62:	48 8b 0d d7 6e 32 00 	mov    0x326ed7(%rip),%rcx        # b3cd40 <mod_scalars_mp_lnudgetclm_+0x40>
  815e69:	48 c1 e1 02          	shl    $0x2,%rcx
  815e6d:	4c 8b 15 8c 6e 32 00 	mov    0x326e8c(%rip),%r10        # b3cd00 <mod_scalars_mp_lnudgetclm_>
  815e74:	4c 2b d1             	sub    %rcx,%r10
  815e77:	49 8d 04 82          	lea    (%r10,%rax,4),%rax
  815e7b:	42 f6 04 18 01       	testb  $0x1,(%rax,%r11,1)
  815e80:	74 06                	je     815e88 <pre_step3d_mod_mp_pre_step3d_tile_+0x18d8>
  815e82:	ff 85 d0 f5 ff ff    	incl   -0xa30(%rbp)
  815e88:	48 8b 05 51 62 32 00 	mov    0x326251(%rip),%rax        # b3c0e0 <mod_param_mp_n_+0x40>
  815e8f:	48 83 c4 a0          	add    $0xffffffffffffffa0,%rsp
  815e93:	48 c1 e0 02          	shl    $0x2,%rax
  815e97:	4c 8b 15 02 62 32 00 	mov    0x326202(%rip),%r10        # b3c0a0 <mod_param_mp_n_>
  815e9e:	4c 2b d0             	sub    %rax,%r10
  815ea1:	48 8b 05 98 61 32 00 	mov    0x326198(%rip),%rax        # b3c040 <mod_param_mp_nt_>
  815ea8:	48 2b c2             	sub    %rdx,%rax
  815eab:	4c 89 34 24          	mov    %r14,(%rsp)
  815eaf:	4c 89 7c 24 08       	mov    %r15,0x8(%rsp)
  815eb4:	4d 8d 1c b2          	lea    (%r10,%rsi,4),%r11
  815eb8:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
  815ebd:	4c 8b 5b 38          	mov    0x38(%rbx),%r11
  815ec1:	48 8d 14 b0          	lea    (%rax,%rsi,4),%rdx
  815ec5:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
  815eca:	48 8d 95 d4 f5 ff ff 	lea    -0xa2c(%rbp),%rdx
  815ed1:	48 8b 4a bc          	mov    -0x44(%rdx),%rcx
  815ed5:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  815eda:	48 8d 8d d0 f5 ff ff 	lea    -0xa30(%rbp),%rcx
  815ee1:	48 8b 72 cc          	mov    -0x34(%rdx),%rsi
  815ee5:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
  815eea:	4c 89 6c 24 30       	mov    %r13,0x30(%rsp)
  815eef:	4c 8b 52 c4          	mov    -0x3c(%rdx),%r10
  815ef3:	48 8b 83 00 01 00 00 	mov    0x100(%rbx),%rax
  815efa:	4c 89 54 24 38       	mov    %r10,0x38(%rsp)
  815eff:	4c 89 5c 24 40       	mov    %r11,0x40(%rsp)
  815f04:	48 c7 44 24 48 88 35 	movq   $0x8c3588,0x48(%rsp)
  815f0b:	8c 00 
  815f0d:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  815f12:	48 8b 72 9c          	mov    -0x64(%rdx),%rsi
  815f16:	4c 8b 42 d4          	mov    -0x2c(%rdx),%r8
  815f1a:	4c 8b 4a ac          	mov    -0x54(%rdx),%r9
  815f1e:	e8 8d 76 e6 ff       	callq  67d5b0 <t3dbc_mod_mp_t3dbc_tile_>
  815f23:	48 83 c4 60          	add    $0x60,%rsp
  815f27:	48 8b bd 78 f5 ff ff 	mov    -0xa88(%rbp),%rdi
  815f2e:	48 8b 05 6b 7c 32 00 	mov    0x327c6b(%rip),%rax        # b3dba0 <mod_scalars_mp_ewperiodic_+0x40>
  815f35:	48 c1 e0 02          	shl    $0x2,%rax
  815f39:	48 8b 15 00 79 32 00 	mov    0x327900(%rip),%rdx        # b3d840 <mod_scalars_mp_nsperiodic_+0x40>
  815f40:	48 f7 d8             	neg    %rax
  815f43:	48 63 37             	movslq (%rdi),%rsi
  815f46:	48 c1 e2 02          	shl    $0x2,%rdx
  815f4a:	48 03 05 0f 7c 32 00 	add    0x327c0f(%rip),%rax        # b3db60 <mod_scalars_mp_ewperiodic_>
  815f51:	48 f7 da             	neg    %rdx
  815f54:	48 03 15 a5 78 32 00 	add    0x3278a5(%rip),%rdx        # b3d800 <mod_scalars_mp_nsperiodic_>
  815f5b:	48 8d 0c b5 00 00 00 	lea    0x0(,%rsi,4),%rcx
  815f62:	00 
  815f63:	44 8b 14 08          	mov    (%rax,%rcx,1),%r10d
  815f67:	44 0b 14 0a          	or     (%rdx,%rcx,1),%r10d
  815f6b:	41 f7 c2 01 00 00 00 	test   $0x1,%r10d
  815f72:	0f 84 1d 01 00 00    	je     816095 <pre_step3d_mod_mp_pre_step3d_tile_+0x1ae5>
  815f78:	48 8b 83 00 01 00 00 	mov    0x100(%rbx),%rax
  815f7f:	33 d2                	xor    %edx,%edx
  815f81:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  815f87:	48 83 c4 e0          	add    $0xffffffffffffffe0,%rsp
  815f8b:	4c 89 95 40 f4 ff ff 	mov    %r10,-0xbc0(%rbp)
  815f92:	4d 89 f0             	mov    %r14,%r8
  815f95:	4c 8b 58 30          	mov    0x30(%rax),%r11
  815f99:	4d 85 db             	test   %r11,%r11
  815f9c:	4c 89 95 58 f4 ff ff 	mov    %r10,-0xba8(%rbp)
  815fa3:	4d 89 f9             	mov    %r15,%r9
  815fa6:	4c 89 95 70 f4 ff ff 	mov    %r10,-0xb90(%rbp)
  815fad:	4c 0f 4e da          	cmovle %rdx,%r11
  815fb1:	4c 89 95 18 f4 ff ff 	mov    %r10,-0xbe8(%rbp)
  815fb8:	4c 8b 50 48          	mov    0x48(%rax),%r10
  815fbc:	4d 85 d2             	test   %r10,%r10
  815fbf:	48 8b 48 60          	mov    0x60(%rax),%rcx
  815fc3:	4c 0f 4e d2          	cmovle %rdx,%r10
  815fc7:	48 85 c9             	test   %rcx,%rcx
  815fca:	48 89 95 10 f4 ff ff 	mov    %rdx,-0xbf0(%rbp)
  815fd1:	48 0f 4e ca          	cmovle %rdx,%rcx
  815fd5:	48 8b 50 50          	mov    0x50(%rax),%rdx
  815fd9:	48 89 95 50 f4 ff ff 	mov    %rdx,-0xbb0(%rbp)
  815fe0:	48 8b 50 68          	mov    0x68(%rax),%rdx
  815fe4:	48 89 8d 60 f4 ff ff 	mov    %rcx,-0xba0(%rbp)
  815feb:	48 89 95 68 f4 ff ff 	mov    %rdx,-0xb98(%rbp)
  815ff2:	48 8b 88 80 00 00 00 	mov    0x80(%rax),%rcx
  815ff9:	48 8b 10             	mov    (%rax),%rdx
  815ffc:	4c 89 9d 30 f4 ff ff 	mov    %r11,-0xbd0(%rbp)
  816003:	4c 8b 58 38          	mov    0x38(%rax),%r11
  816007:	48 c7 04 24 8c 35 8c 	movq   $0x8c358c,(%rsp)
  81600e:	00 
  81600f:	48 8d 0c 4a          	lea    (%rdx,%rcx,2),%rcx
  816013:	48 63 95 d4 f5 ff ff 	movslq -0xa2c(%rbp),%rdx
  81601a:	48 ff ca             	dec    %rdx
  81601d:	48 0f af 90 98 00 00 	imul   0x98(%rax),%rdx
  816024:	00 
  816025:	48 8b 05 b4 60 32 00 	mov    0x3260b4(%rip),%rax        # b3c0e0 <mod_param_mp_n_+0x40>
  81602c:	48 03 ca             	add    %rdx,%rcx
  81602f:	48 c1 e0 02          	shl    $0x2,%rax
  816033:	48 8b 15 66 60 32 00 	mov    0x326066(%rip),%rdx        # b3c0a0 <mod_param_mp_n_>
  81603a:	48 2b d0             	sub    %rax,%rdx
  81603d:	48 8d 85 00 f4 ff ff 	lea    -0xc00(%rbp),%rax
  816044:	48 89 08             	mov    %rcx,(%rax)
  816047:	48 c7 40 08 08 00 00 	movq   $0x8,0x8(%rax)
  81604e:	00 
  81604f:	48 c7 40 20 03 00 00 	movq   $0x3,0x20(%rax)
  816056:	00 
  816057:	4c 89 50 48          	mov    %r10,0x48(%rax)
  81605b:	48 8d 34 b2          	lea    (%rdx,%rsi,4),%rsi
  81605f:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  816064:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  816069:	48 8b b5 70 f5 ff ff 	mov    -0xa90(%rbp),%rsi
  816070:	48 8b 95 a8 f5 ff ff 	mov    -0xa58(%rbp),%rdx
  816077:	48 8b 8d 80 f5 ff ff 	mov    -0xa80(%rbp),%rcx
  81607e:	4c 89 58 38          	mov    %r11,0x38(%rax)
  816082:	e8 39 41 df ff       	callq  60a1c0 <exchange_3d_mod_mp_exchange_r3d_tile_>
  816087:	48 83 c4 20          	add    $0x20,%rsp
  81608b:	48 8b bd 78 f5 ff ff 	mov    -0xa88(%rbp),%rdi
  816092:	48 63 37             	movslq (%rdi),%rsi
  816095:	8b 85 d4 f5 ff ff    	mov    -0xa2c(%rbp),%eax
  81609b:	ff c0                	inc    %eax
  81609d:	89 85 d4 f5 ff ff    	mov    %eax,-0xa2c(%rbp)
  8160a3:	41 3b c4             	cmp    %r12d,%eax
  8160a6:	7f 10                	jg     8160b8 <pre_step3d_mod_mp_pre_step3d_tile_+0x1b08>
  8160a8:	48 8b 15 d1 5f 32 00 	mov    0x325fd1(%rip),%rdx        # b3c080 <mod_param_mp_nt_+0x40>
  8160af:	48 c1 e2 02          	shl    $0x2,%rdx
  8160b3:	e9 5d fd ff ff       	jmpq   815e15 <pre_step3d_mod_mp_pre_step3d_tile_+0x1865>
  8160b8:	48 8b 05 c1 5f 32 00 	mov    0x325fc1(%rip),%rax        # b3c080 <mod_param_mp_nt_+0x40>
  8160bf:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  8160c5:	48 c1 e0 02          	shl    $0x2,%rax
  8160c9:	48 8b 0d 70 5f 32 00 	mov    0x325f70(%rip),%rcx        # b3c040 <mod_param_mp_nt_>
  8160d0:	48 2b c8             	sub    %rax,%rcx
  8160d3:	4c 8b 15 66 77 32 00 	mov    0x327766(%rip),%r10        # b3d840 <mod_scalars_mp_nsperiodic_+0x40>
  8160da:	45 33 c0             	xor    %r8d,%r8d
  8160dd:	49 c1 e2 02          	shl    $0x2,%r10
  8160e1:	4c 8d 8d 90 f1 ff ff 	lea    -0xe70(%rbp),%r9
  8160e8:	4c 8b 1d 11 77 32 00 	mov    0x327711(%rip),%r11        # b3d800 <mod_scalars_mp_nsperiodic_>
  8160ef:	48 8d 0c b1          	lea    (%rcx,%rsi,4),%rcx
  8160f3:	4c 8b 35 a6 7a 32 00 	mov    0x327aa6(%rip),%r14        # b3dba0 <mod_scalars_mp_ewperiodic_+0x40>
  8160fa:	4d 2b da             	sub    %r10,%r11
  8160fd:	49 c1 e6 02          	shl    $0x2,%r14
  816101:	4c 8b 3d 58 7a 32 00 	mov    0x327a58(%rip),%r15        # b3db60 <mod_scalars_mp_ewperiodic_>
  816108:	4d 2b fe             	sub    %r14,%r15
  81610b:	41 50                	push   %r8
  81610d:	41 50                	push   %r8
  81610f:	41 51                	push   %r9
  816111:	48 8b 15 c8 5f 32 00 	mov    0x325fc8(%rip),%rdx        # b3c0e0 <mod_param_mp_n_+0x40>
  816118:	4d 8d 24 b3          	lea    (%r11,%rsi,4),%r12
  81611c:	41 54                	push   %r12
  81611e:	48 c1 e2 02          	shl    $0x2,%rdx
  816122:	49 8d 04 b7          	lea    (%r15,%rsi,4),%rax
  816126:	50                   	push   %rax
  816127:	48 8b 83 00 01 00 00 	mov    0x100(%rbx),%rax
  81612e:	4c 8b 0d 6b 5f 32 00 	mov    0x325f6b(%rip),%r9        # b3c0a0 <mod_param_mp_n_>
  816135:	4c 2b ca             	sub    %rdx,%r9
  816138:	4c 8b 50 30          	mov    0x30(%rax),%r10
  81613c:	4d 85 d2             	test   %r10,%r10
  81613f:	68 88 23 cc 00       	pushq  $0xcc2388
  816144:	4c 8b 60 48          	mov    0x48(%rax),%r12
  816148:	4d 0f 4e d0          	cmovle %r8,%r10
  81614c:	51                   	push   %rcx
  81614d:	b9 8c 35 8c 00       	mov    $0x8c358c,%ecx
  816152:	4d 85 e4             	test   %r12,%r12
  816155:	51                   	push   %rcx
  816156:	48 8b 50 60          	mov    0x60(%rax),%rdx
  81615a:	49 8d 34 b1          	lea    (%r9,%rsi,4),%rsi
  81615e:	4d 0f 4e e0          	cmovle %r8,%r12
  816162:	48 85 d2             	test   %rdx,%rdx
  816165:	56                   	push   %rsi
  816166:	51                   	push   %rcx
  816167:	48 8b b0 90 00 00 00 	mov    0x90(%rax),%rsi
  81616e:	49 0f 4e d0          	cmovle %r8,%rdx
  816172:	48 85 f6             	test   %rsi,%rsi
  816175:	ff b5 88 f5 ff ff    	pushq  -0xa78(%rbp)
  81617b:	ff b5 b0 f5 ff ff    	pushq  -0xa50(%rbp)
  816181:	4c 89 85 a0 f1 ff ff 	mov    %r8,-0xe60(%rbp)
  816188:	49 0f 4e f0          	cmovle %r8,%rsi
  81618c:	48 89 95 f0 f1 ff ff 	mov    %rdx,-0xe10(%rbp)
  816193:	4c 8b 40 38          	mov    0x38(%rax),%r8
  816197:	4c 8b 58 50          	mov    0x50(%rax),%r11
  81619b:	4c 8b 70 68          	mov    0x68(%rax),%r14
  81619f:	4c 8b b8 98 00 00 00 	mov    0x98(%rax),%r15
  8161a6:	48 8b 90 80 00 00 00 	mov    0x80(%rax),%rdx
  8161ad:	48 8b 00             	mov    (%rax),%rax
  8161b0:	4c 89 85 c8 f1 ff ff 	mov    %r8,-0xe38(%rbp)
  8161b7:	48 89 b5 08 f2 ff ff 	mov    %rsi,-0xdf8(%rbp)
  8161be:	48 8b b5 70 f5 ff ff 	mov    -0xa90(%rbp),%rsi
  8161c5:	4c 8d 04 50          	lea    (%rax,%rdx,2),%r8
  8161c9:	ba e8 b6 b3 00       	mov    $0xb3b6e8,%edx
  8161ce:	4c 89 85 90 f1 ff ff 	mov    %r8,-0xe70(%rbp)
  8161d5:	4c 8b 85 a8 f5 ff ff 	mov    -0xa58(%rbp),%r8
  8161dc:	4c 8b 8d 80 f5 ff ff 	mov    -0xa80(%rbp),%r9
  8161e3:	48 c7 85 98 f1 ff ff 	movq   $0x8,-0xe68(%rbp)
  8161ea:	08 00 00 00 
  8161ee:	48 c7 85 b0 f1 ff ff 	movq   $0x4,-0xe50(%rbp)
  8161f5:	04 00 00 00 
  8161f9:	4c 89 ad d0 f1 ff ff 	mov    %r13,-0xe30(%rbp)
  816200:	4c 89 95 c0 f1 ff ff 	mov    %r10,-0xe40(%rbp)
  816207:	4c 89 9d e0 f1 ff ff 	mov    %r11,-0xe20(%rbp)
  81620e:	4c 89 ad e8 f1 ff ff 	mov    %r13,-0xe18(%rbp)
  816215:	4c 89 a5 d8 f1 ff ff 	mov    %r12,-0xe28(%rbp)
  81621c:	4c 89 b5 f8 f1 ff ff 	mov    %r14,-0xe08(%rbp)
  816223:	4c 89 ad 00 f2 ff ff 	mov    %r13,-0xe00(%rbp)
  81622a:	4c 89 bd 10 f2 ff ff 	mov    %r15,-0xdf0(%rbp)
  816231:	4c 89 ad 18 f2 ff ff 	mov    %r13,-0xde8(%rbp)
  816238:	4c 89 ad a8 f1 ff ff 	mov    %r13,-0xe58(%rbp)
  81623f:	e8 0c ed e2 ff       	callq  644f50 <mp_exchange_mod_mp_mp_exchange4d_>
  816244:	48 83 c4 60          	add    $0x60,%rsp
  816248:	48 8b 85 38 f5 ff ff 	mov    -0xac8(%rbp),%rax
  81624f:	48 89 c4             	mov    %rax,%rsp
  816252:	4c 8b bd 18 f6 ff ff 	mov    -0x9e8(%rbp),%r15
  816259:	4c 8b b5 20 f6 ff ff 	mov    -0x9e0(%rbp),%r14
  816260:	4c 8b ad 28 f6 ff ff 	mov    -0x9d8(%rbp),%r13
  816267:	4c 8b a5 30 f6 ff ff 	mov    -0x9d0(%rbp),%r12
  81626e:	48 89 ec             	mov    %rbp,%rsp
  816271:	5d                   	pop    %rbp
  816272:	48 89 dc             	mov    %rbx,%rsp
  816275:	5b                   	pop    %rbx
  816276:	c3                   	retq   
  816277:	53                   	push   %rbx
  816278:	48 89 e3             	mov    %rsp,%rbx
  81627b:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  81627f:	55                   	push   %rbp
  816280:	55                   	push   %rbp
  816281:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  816285:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  81628a:	48 89 e5             	mov    %rsp,%rbp
  81628d:	48 81 ec 70 0e 00 00 	sub    $0xe70,%rsp
  816294:	4c 89 a5 30 f6 ff ff 	mov    %r12,-0x9d0(%rbp)
  81629b:	4c 8b 63 10          	mov    0x10(%rbx),%r12
  81629f:	48 8b 43 38          	mov    0x38(%rbx),%rax
  8162a3:	4c 89 b5 20 f6 ff ff 	mov    %r14,-0x9e0(%rbp)
  8162aa:	4d 63 24 24          	movslq (%r12),%r12
  8162ae:	4c 89 a5 00 ff ff ff 	mov    %r12,-0x100(%rbp)
  8162b5:	44 8b 21             	mov    (%rcx),%r12d
  8162b8:	8b 0a                	mov    (%rdx),%ecx
  8162ba:	48 8b 53 50          	mov    0x50(%rbx),%rdx
  8162be:	48 8b 00             	mov    (%rax),%rax
  8162c1:	48 89 85 10 f3 ff ff 	mov    %rax,-0xcf0(%rbp)
  8162c8:	49 63 01             	movslq (%r9),%rax
  8162cb:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
  8162d2:	48 8b 02             	mov    (%rdx),%rax
  8162d5:	48 89 85 f8 f2 ff ff 	mov    %rax,-0xd08(%rbp)
  8162dc:	48 8d 53 78          	lea    0x78(%rbx),%rdx
  8162e0:	48 8b 02             	mov    (%rdx),%rax
  8162e3:	4c 8b 52 a0          	mov    -0x60(%rdx),%r10
  8162e7:	4c 8b 72 b0          	mov    -0x50(%rdx),%r14
  8162eb:	8b 00                	mov    (%rax),%eax
  8162ed:	89 85 c8 fb ff ff    	mov    %eax,-0x438(%rbp)
  8162f3:	48 8b 42 08          	mov    0x8(%rdx),%rax
  8162f7:	4c 89 ad 28 f6 ff ff 	mov    %r13,-0x9d8(%rbp)
  8162fe:	49 89 fd             	mov    %rdi,%r13
  816301:	48 8b 7a c8          	mov    -0x38(%rdx),%rdi
  816305:	48 63 00             	movslq (%rax),%rax
  816308:	48 89 85 f8 fb ff ff 	mov    %rax,-0x408(%rbp)
  81630f:	48 8b 42 10          	mov    0x10(%rdx),%rax
  816313:	4c 89 bd 18 f6 ff ff 	mov    %r15,-0x9e8(%rbp)
  81631a:	4c 8b 5a a8          	mov    -0x58(%rdx),%r11
  81631e:	48 8b 00             	mov    (%rax),%rax
  816321:	48 89 85 50 f3 ff ff 	mov    %rax,-0xcb0(%rbp)
  816328:	48 8b 42 18          	mov    0x18(%rdx),%rax
  81632c:	4c 8b 7a b8          	mov    -0x48(%rdx),%r15
  816330:	4d 8b 36             	mov    (%r14),%r14
  816333:	48 8b 00             	mov    (%rax),%rax
  816336:	48 89 85 00 f3 ff ff 	mov    %rax,-0xd00(%rbp)
  81633d:	48 8b 42 20          	mov    0x20(%rdx),%rax
  816341:	4d 8b 12             	mov    (%r10),%r10
  816344:	4d 8b 00             	mov    (%r8),%r8
  816347:	48 8b 00             	mov    (%rax),%rax
  81634a:	48 89 85 08 f3 ff ff 	mov    %rax,-0xcf8(%rbp)
  816351:	48 8b 42 28          	mov    0x28(%rdx),%rax
  816355:	48 8b 52 e0          	mov    -0x20(%rdx),%rdx
  816359:	4c 8d 4b 48          	lea    0x48(%rbx),%r9
  81635d:	49 8b 31             	mov    (%r9),%rsi
  816360:	48 8b 00             	mov    (%rax),%rax
  816363:	48 89 85 40 f3 ff ff 	mov    %rax,-0xcc0(%rbp)
  81636a:	49 8b 41 60          	mov    0x60(%r9),%rax
  81636e:	4c 89 b5 e0 f2 ff ff 	mov    %r14,-0xd20(%rbp)
  816375:	4c 89 95 28 f3 ff ff 	mov    %r10,-0xcd8(%rbp)
  81637c:	48 63 00             	movslq (%rax),%rax
  81637f:	48 89 85 f0 f1 ff ff 	mov    %rax,-0xe10(%rbp)
  816386:	49 8b 41 68          	mov    0x68(%r9),%rax
  81638a:	4c 89 85 d0 f2 ff ff 	mov    %r8,-0xd30(%rbp)
  816391:	4d 8b 41 18          	mov    0x18(%r9),%r8
  816395:	48 63 00             	movslq (%rax),%rax
  816398:	48 89 85 f8 f1 ff ff 	mov    %rax,-0xe08(%rbp)
  81639f:	49 8b 41 70          	mov    0x70(%r9),%rax
  8163a3:	4d 8b 51 20          	mov    0x20(%r9),%r10
  8163a7:	4d 8b 71 28          	mov    0x28(%r9),%r14
  8163ab:	48 63 00             	movslq (%rax),%rax
  8163ae:	48 89 85 68 f7 ff ff 	mov    %rax,-0x898(%rbp)
  8163b5:	49 8b 41 78          	mov    0x78(%r9),%rax
  8163b9:	48 8b 3f             	mov    (%rdi),%rdi
  8163bc:	48 89 bd 18 f3 ff ff 	mov    %rdi,-0xce8(%rbp)
  8163c3:	48 63 00             	movslq (%rax),%rax
  8163c6:	4d 8b 3f             	mov    (%r15),%r15
  8163c9:	4d 8b 1b             	mov    (%r11),%r11
  8163cc:	48 89 85 58 f3 ff ff 	mov    %rax,-0xca8(%rbp)
  8163d3:	48 8b 3a             	mov    (%rdx),%rdi
  8163d6:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
  8163dd:	48 8b 36             	mov    (%rsi),%rsi
  8163e0:	4c 89 bd 30 f3 ff ff 	mov    %r15,-0xcd0(%rbp)
  8163e7:	4c 89 9d 48 f3 ff ff 	mov    %r11,-0xcb8(%rbp)
  8163ee:	48 89 bd d8 f2 ff ff 	mov    %rdi,-0xd28(%rbp)
  8163f5:	48 8d bd 90 f1 ff ff 	lea    -0xe70(%rbp),%rdi
  8163fc:	4d 8b 08             	mov    (%r8),%r9
  8163ff:	4d 8b 1a             	mov    (%r10),%r11
  816402:	4d 8b 3e             	mov    (%r14),%r15
  816405:	48 89 47 78          	mov    %rax,0x78(%rdi)
  816409:	33 c0                	xor    %eax,%eax
  81640b:	48 89 b5 f0 f2 ff ff 	mov    %rsi,-0xd10(%rbp)
  816412:	48 8b b3 e0 00 00 00 	mov    0xe0(%rbx),%rsi
  816419:	45 8b 6d 00          	mov    0x0(%r13),%r13d
  81641d:	4c 89 8d 20 f3 ff ff 	mov    %r9,-0xce0(%rbp)
  816424:	4c 89 9d e8 f2 ff ff 	mov    %r11,-0xd18(%rbp)
  81642b:	4c 89 bd 38 f3 ff ff 	mov    %r15,-0xcc8(%rbp)
  816432:	89 4f 70             	mov    %ecx,0x70(%rdi)
  816435:	e8 76 80 c6 ff       	callq  47e4b0 <_f90_dope_vector_init>
  81643a:	8b 8d 00 f2 ff ff    	mov    -0xe00(%rbp),%ecx
  816440:	49 89 c7             	mov    %rax,%r15
  816443:	4c 89 f8             	mov    %r15,%rax
  816446:	48 83 c0 1f          	add    $0x1f,%rax
  81644a:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81644e:	48 2b e0             	sub    %rax,%rsp
  816451:	48 89 e0             	mov    %rsp,%rax
  816454:	48 89 85 08 f6 ff ff 	mov    %rax,-0x9f8(%rbp)
  81645b:	48 89 c2             	mov    %rax,%rdx
  81645e:	48 8d bd 10 f4 ff ff 	lea    -0xbf0(%rbp),%rdi
  816465:	33 c0                	xor    %eax,%eax
  816467:	48 8b b5 08 f2 ff ff 	mov    -0xdf8(%rbp),%rsi
  81646e:	48 89 95 90 f1 ff ff 	mov    %rdx,-0xe70(%rbp)
  816475:	89 8d 00 f2 ff ff    	mov    %ecx,-0xe00(%rbp)
  81647b:	e8 30 80 c6 ff       	callq  47e4b0 <_f90_dope_vector_init>
  816480:	8b 8d 00 f2 ff ff    	mov    -0xe00(%rbp),%ecx
  816486:	48 89 85 10 f6 ff ff 	mov    %rax,-0x9f0(%rbp)
  81648d:	48 83 c0 1f          	add    $0x1f,%rax
  816491:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  816495:	48 2b e0             	sub    %rax,%rsp
  816498:	48 89 e0             	mov    %rsp,%rax
  81649b:	49 89 c6             	mov    %rax,%r14
  81649e:	4c 89 b5 10 f4 ff ff 	mov    %r14,-0xbf0(%rbp)
  8164a5:	44 3b e1             	cmp    %ecx,%r12d
  8164a8:	0f 8c dd 5e 00 00    	jl     81c38b <pre_step3d_mod_mp_pre_step3d_tile_+0x7ddb>
  8164ae:	48 83 c4 e0          	add    $0xffffffffffffffe0,%rsp
  8164b2:	bf 0c 75 b3 00       	mov    $0xb3750c,%edi
  8164b7:	89 8d 18 fd ff ff    	mov    %ecx,-0x2e8(%rbp)
  8164bd:	44 89 ee             	mov    %r13d,%esi
  8164c0:	ba 22 00 00 00       	mov    $0x22,%edx
  8164c5:	48 8d 8d 20 fd ff ff 	lea    -0x2e0(%rbp),%rcx
  8164cc:	41 bb 01 00 00 00    	mov    $0x1,%r11d
  8164d2:	4c 8d 85 18 fd ff ff 	lea    -0x2e8(%rbp),%r8
  8164d9:	44 89 61 fc          	mov    %r12d,-0x4(%rcx)
  8164dd:	4c 8d 8d 1c fd ff ff 	lea    -0x2e4(%rbp),%r9
  8164e4:	c7 01 00 00 00 00    	movl   $0x0,(%rcx)
  8164ea:	4c 8d 95 24 fd ff ff 	lea    -0x2dc(%rbp),%r10
  8164f1:	4c 89 14 24          	mov    %r10,(%rsp)
  8164f5:	44 89 5c 24 08       	mov    %r11d,0x8(%rsp)
  8164fa:	44 89 59 04          	mov    %r11d,0x4(%rcx)
  8164fe:	44 89 5c 24 10       	mov    %r11d,0x10(%rsp)
  816503:	e8 28 79 bf ff       	callq  40de30 <__kmpc_for_static_init_4@plt>
  816508:	48 83 c4 20          	add    $0x20,%rsp
  81650c:	8b 8d 18 fd ff ff    	mov    -0x2e8(%rbp),%ecx
  816512:	89 8d d0 f8 ff ff    	mov    %ecx,-0x730(%rbp)
  816518:	41 3b cc             	cmp    %r12d,%ecx
  81651b:	8b 8d 1c fd ff ff    	mov    -0x2e4(%rbp),%ecx
  816521:	0f 8f 54 5e 00 00    	jg     81c37b <pre_step3d_mod_mp_pre_step3d_tile_+0x7dcb>
  816527:	41 3b cc             	cmp    %r12d,%ecx
  81652a:	48 8b bd d0 f2 ff ff 	mov    -0xd30(%rbp),%rdi
  816531:	44 0f 4c e1          	cmovl  %ecx,%r12d
  816535:	44 8b 85 d0 f8 ff ff 	mov    -0x730(%rbp),%r8d
  81653c:	45 2b e0             	sub    %r8d,%r12d
  81653f:	48 8b b5 d8 f2 ff ff 	mov    -0xd28(%rbp),%rsi
  816546:	41 ff c4             	inc    %r12d
  816549:	4c 89 b5 60 f5 ff ff 	mov    %r14,-0xaa0(%rbp)
  816550:	4c 8b b5 e0 f2 ff ff 	mov    -0xd20(%rbp),%r14
  816557:	44 89 a5 d0 fb ff ff 	mov    %r12d,-0x430(%rbp)
  81655e:	48 8b 0d 7b 5b 32 00 	mov    0x325b7b(%rip),%rcx        # b3c0e0 <mod_param_mp_n_+0x40>
  816565:	4c 8b 25 b4 5d 32 00 	mov    0x325db4(%rip),%r12        # b3c320 <mod_scalars_mp_iic_+0x40>
  81656c:	48 c1 e1 02          	shl    $0x2,%rcx
  816570:	49 c1 e4 02          	shl    $0x2,%r12
  816574:	48 f7 d9             	neg    %rcx
  816577:	4c 89 bd 68 f5 ff ff 	mov    %r15,-0xa98(%rbp)
  81657e:	49 f7 dc             	neg    %r12
  816581:	4c 63 3f             	movslq (%rdi),%r15
  816584:	4c 63 16             	movslq (%rsi),%r10
  816587:	48 8b bd e8 f2 ff ff 	mov    -0xd18(%rbp),%rdi
  81658e:	49 63 06             	movslq (%r14),%rax
  816591:	4c 89 95 78 f4 ff ff 	mov    %r10,-0xb88(%rbp)
  816598:	48 03 0d 01 5b 32 00 	add    0x325b01(%rip),%rcx        # b3c0a0 <mod_param_mp_n_>
  81659f:	4c 03 25 3a 5d 32 00 	add    0x325d3a(%rip),%r12        # b3c2e0 <mod_scalars_mp_iic_>
  8165a6:	48 89 85 a8 f4 ff ff 	mov    %rax,-0xb58(%rbp)
  8165ad:	4c 8b 95 48 f3 ff ff 	mov    -0xcb8(%rbp),%r10
  8165b4:	48 8b 05 25 d1 32 00 	mov    0x32d125(%rip),%rax        # b436e0 <mod_scalars_mp_ntfirst_+0x40>
  8165bb:	48 c1 e0 02          	shl    $0x2,%rax
  8165bf:	4c 8d b5 68 f7 ff ff 	lea    -0x898(%rbp),%r14
  8165c6:	49 8b 36             	mov    (%r14),%rsi
  8165c9:	48 f7 d8             	neg    %rax
  8165cc:	48 63 17             	movslq (%rdi),%rdx
  8165cf:	44 89 ad 70 f5 ff ff 	mov    %r13d,-0xa90(%rbp)
  8165d6:	48 29 b5 58 f3 ff ff 	sub    %rsi,-0xca8(%rbp)
  8165dd:	48 c1 e6 03          	shl    $0x3,%rsi
  8165e1:	48 89 95 90 f4 ff ff 	mov    %rdx,-0xb70(%rbp)
  8165e8:	49 89 36             	mov    %rsi,(%r14)
  8165eb:	4e 63 2c b9          	movslq (%rcx,%r15,4),%r13
  8165ef:	47 8b 34 bc          	mov    (%r12,%r15,4),%r14d
  8165f3:	48 03 05 a6 d0 32 00 	add    0x32d0a6(%rip),%rax        # b436a0 <mod_scalars_mp_ntfirst_>
  8165fa:	49 8b 12             	mov    (%r10),%rdx
  8165fd:	4d 8b 62 38          	mov    0x38(%r10),%r12
  816601:	49 8b 72 68          	mov    0x68(%r10),%rsi
  816605:	49 8b 8a 80 00 00 00 	mov    0x80(%r10),%rcx
  81660c:	48 2b d1             	sub    %rcx,%rdx
  81660f:	4d 8b 4a 50          	mov    0x50(%r10),%r9
  816613:	4c 8b 95 38 f3 ff ff 	mov    -0xcc8(%rbp),%r10
  81661a:	48 8b 3d 5f 4d 32 00 	mov    0x324d5f(%rip),%rdi        # b3b380 <mod_scalars_mp_dt_+0x40>
  816621:	48 f7 df             	neg    %rdi
  816624:	49 03 ff             	add    %r15,%rdi
  816627:	46 8b 1c b8          	mov    (%rax,%r15,4),%r11d
  81662b:	4c 8b 3d 0e 4d 32 00 	mov    0x324d0e(%rip),%r15        # b3b340 <mod_scalars_mp_dt_>
  816632:	48 89 95 88 f2 ff ff 	mov    %rdx,-0xd78(%rbp)
  816639:	49 8b 92 80 00 00 00 	mov    0x80(%r10),%rdx
  816640:	48 89 95 68 f3 ff ff 	mov    %rdx,-0xc98(%rbp)
  816647:	48 8b 95 50 f3 ff ff 	mov    -0xcb0(%rbp),%rdx
  81664e:	c4 c1 7b 10 14 ff    	vmovsd (%r15,%rdi,8),%xmm2
  816654:	49 8b 3a             	mov    (%r10),%rdi
  816657:	c5 79 28 fa          	vmovapd %xmm2,%xmm15
  81665b:	48 8b 85 20 f3 ff ff 	mov    -0xce0(%rbp),%rax
  816662:	48 89 bd 60 f3 ff ff 	mov    %rdi,-0xca0(%rbp)
  816669:	48 8b 7a 68          	mov    0x68(%rdx),%rdi
  81666d:	48 89 bd 00 fc ff ff 	mov    %rdi,-0x400(%rbp)
  816674:	48 8b bd 40 f3 ff ff 	mov    -0xcc0(%rbp),%rdi
  81667b:	44 89 b5 e0 fb ff ff 	mov    %r14d,-0x420(%rbp)
  816682:	4c 8b 30             	mov    (%rax),%r14
  816685:	48 89 b5 20 ff ff ff 	mov    %rsi,-0xe0(%rbp)
  81668c:	4c 89 8d f0 fb ff ff 	mov    %r9,-0x410(%rbp)
  816693:	4c 89 b5 c0 f4 ff ff 	mov    %r14,-0xb40(%rbp)
  81669a:	49 8b 72 68          	mov    0x68(%r10),%rsi
  81669e:	4d 8b 4a 50          	mov    0x50(%r10),%r9
  8166a2:	4d 8b 72 38          	mov    0x38(%r10),%r14
  8166a6:	4c 8b 78 68          	mov    0x68(%rax),%r15
  8166aa:	4c 8b 97 80 00 00 00 	mov    0x80(%rdi),%r10
  8166b1:	48 89 8d 68 f6 ff ff 	mov    %rcx,-0x998(%rbp)
  8166b8:	4c 89 bd 10 fd ff ff 	mov    %r15,-0x2f0(%rbp)
  8166bf:	4c 89 95 50 f2 ff ff 	mov    %r10,-0xdb0(%rbp)
  8166c6:	4c 8b 78 50          	mov    0x50(%rax),%r15
  8166ca:	48 8b 48 38          	mov    0x38(%rax),%rcx
  8166ce:	4c 8b 95 f0 f2 ff ff 	mov    -0xd10(%rbp),%r10
  8166d5:	48 8b 82 80 00 00 00 	mov    0x80(%rdx),%rax
  8166dc:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
  8166e3:	48 89 b5 70 fa ff ff 	mov    %rsi,-0x590(%rbp)
  8166ea:	4c 89 8d d0 f4 ff ff 	mov    %r9,-0xb30(%rbp)
  8166f1:	48 8b 0a             	mov    (%rdx),%rcx
  8166f4:	48 89 85 00 f2 ff ff 	mov    %rax,-0xe00(%rbp)
  8166fb:	48 2b c8             	sub    %rax,%rcx
  8166fe:	48 8b 72 38          	mov    0x38(%rdx),%rsi
  816702:	4c 8b 0f             	mov    (%rdi),%r9
  816705:	48 8b 47 68          	mov    0x68(%rdi),%rax
  816709:	4c 89 b5 50 ff ff ff 	mov    %r14,-0xb0(%rbp)
  816710:	4c 8b 72 50          	mov    0x50(%rdx),%r14
  816714:	48 89 75 80          	mov    %rsi,-0x80(%rbp)
  816718:	4c 89 8d 40 f2 ff ff 	mov    %r9,-0xdc0(%rbp)
  81671f:	48 89 85 90 f6 ff ff 	mov    %rax,-0x970(%rbp)
  816726:	48 8b 57 38          	mov    0x38(%rdi),%rdx
  81672a:	49 8b 32             	mov    (%r10),%rsi
  81672d:	49 8b 42 38          	mov    0x38(%r10),%rax
  816731:	4d 8b 4a 50          	mov    0x50(%r10),%r9
  816735:	4c 8b 95 00 f3 ff ff 	mov    -0xd00(%rbp),%r10
  81673c:	48 89 95 e8 fc ff ff 	mov    %rdx,-0x318(%rbp)
  816743:	48 8b 95 f8 f2 ff ff 	mov    -0xd08(%rbp),%rdx
  81674a:	48 89 8d 68 f2 ff ff 	mov    %rcx,-0xd98(%rbp)
  816751:	48 8b 4f 50          	mov    0x50(%rdi),%rcx
  816755:	48 89 85 78 fe ff ff 	mov    %rax,-0x188(%rbp)
  81675c:	49 8b 42 38          	mov    0x38(%r10),%rax
  816760:	48 89 8d 70 f4 ff ff 	mov    %rcx,-0xb90(%rbp)
  816767:	48 89 b5 00 f5 ff ff 	mov    %rsi,-0xb00(%rbp)
  81676e:	48 8b 0a             	mov    (%rdx),%rcx
  816771:	48 8b 72 38          	mov    0x38(%rdx),%rsi
  816775:	48 8b 7a 50          	mov    0x50(%rdx),%rdi
  816779:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  816780:	48 8b 95 08 f3 ff ff 	mov    -0xcf8(%rbp),%rdx
  816787:	48 8b 85 28 f3 ff ff 	mov    -0xcd8(%rbp),%rax
  81678e:	4c 89 8d d0 f6 ff ff 	mov    %r9,-0x930(%rbp)
  816795:	4d 8b 0a             	mov    (%r10),%r9
  816798:	48 89 bd c8 f6 ff ff 	mov    %rdi,-0x938(%rbp)
  81679f:	48 89 b5 80 fe ff ff 	mov    %rsi,-0x180(%rbp)
  8167a6:	4c 89 8d 28 f5 ff ff 	mov    %r9,-0xad8(%rbp)
  8167ad:	48 8b 3a             	mov    (%rdx),%rdi
  8167b0:	4c 8b 4a 38          	mov    0x38(%rdx),%r9
  8167b4:	48 8b 72 50          	mov    0x50(%rdx),%rsi
  8167b8:	48 8b 50 38          	mov    0x38(%rax),%rdx
  8167bc:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  8167c0:	48 8b 95 30 f3 ff ff 	mov    -0xcd0(%rbp),%rdx
  8167c7:	48 89 8d 08 f5 ff ff 	mov    %rcx,-0xaf8(%rbp)
  8167ce:	49 8b 4a 50          	mov    0x50(%r10),%rcx
  8167d2:	48 89 bd 20 f5 ff ff 	mov    %rdi,-0xae0(%rbp)
  8167d9:	4c 89 8d f8 f5 ff ff 	mov    %r9,-0xa08(%rbp)
  8167e0:	4c 8b 10             	mov    (%rax),%r10
  8167e3:	48 8b 78 68          	mov    0x68(%rax),%rdi
  8167e7:	4c 8b 48 50          	mov    0x50(%rax),%r9
  8167eb:	48 8b 02             	mov    (%rdx),%rax
  8167ee:	48 89 85 70 f3 ff ff 	mov    %rax,-0xc90(%rbp)
  8167f5:	48 8b 42 68          	mov    0x68(%rdx),%rax
  8167f9:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
  816800:	48 8b 42 50          	mov    0x50(%rdx),%rax
  816804:	48 8b 52 38          	mov    0x38(%rdx),%rdx
  816808:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  81680c:	48 8b 95 10 f3 ff ff 	mov    -0xcf0(%rbp),%rdx
  816813:	4c 89 65 c8          	mov    %r12,-0x38(%rbp)
  816817:	45 33 e4             	xor    %r12d,%r12d
  81681a:	4c 89 a5 c8 f8 ff ff 	mov    %r12,-0x738(%rbp)
  816821:	4c 89 a5 c0 f8 ff ff 	mov    %r12,-0x740(%rbp)
  816828:	4c 8b 22             	mov    (%rdx),%r12
  81682b:	4c 89 a5 d8 f6 ff ff 	mov    %r12,-0x928(%rbp)
  816832:	4c 8b 62 38          	mov    0x38(%rdx),%r12
  816836:	4c 89 a5 70 fe ff ff 	mov    %r12,-0x190(%rbp)
  81683d:	4c 8b a5 18 f3 ff ff 	mov    -0xce8(%rbp),%r12
  816844:	48 89 85 e8 fb ff ff 	mov    %rax,-0x418(%rbp)
  81684b:	48 8b 42 50          	mov    0x50(%rdx),%rax
  81684f:	49 8b 14 24          	mov    (%r12),%rdx
  816853:	4c 89 95 20 f2 ff ff 	mov    %r10,-0xde0(%rbp)
  81685a:	4c 2b d7             	sub    %rdi,%r10
  81685d:	48 89 95 00 f7 ff ff 	mov    %rdx,-0x900(%rbp)
  816864:	49 8b 54 24 50       	mov    0x50(%r12),%rdx
  816869:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  81686e:	4c 89 ad 08 fd ff ff 	mov    %r13,-0x2f8(%rbp)
  816875:	4c 89 a5 68 fe ff ff 	mov    %r12,-0x198(%rbp)
  81687c:	4d 8d 65 ff          	lea    -0x1(%r13),%r12
  816880:	4c 8b ad 08 ff ff ff 	mov    -0xf8(%rbp),%r13
  816887:	44 89 9d d8 fb ff ff 	mov    %r11d,-0x428(%rbp)
  81688e:	45 8d 5b 01          	lea    0x1(%r11),%r11d
  816892:	41 f7 dd             	neg    %r13d
  816895:	44 89 9d e0 f8 ff ff 	mov    %r11d,-0x720(%rbp)
  81689c:	4c 8b 9d 00 ff ff ff 	mov    -0x100(%rbp),%r11
  8168a3:	4c 89 95 80 f3 ff ff 	mov    %r10,-0xc80(%rbp)
  8168aa:	45 03 eb             	add    %r11d,%r13d
  8168ad:	4c 89 a5 10 ff ff ff 	mov    %r12,-0xf0(%rbp)
  8168b4:	4d 8d 24 7a          	lea    (%r10,%rdi,2),%r12
  8168b8:	4c 8b 95 f8 f1 ff ff 	mov    -0xe08(%rbp),%r10
  8168bf:	44 89 9d 78 f3 ff ff 	mov    %r11d,-0xc88(%rbp)
  8168c6:	4d 89 d3             	mov    %r10,%r11
  8168c9:	4d 0f af d9          	imul   %r9,%r11
  8168cd:	c5 fd 10 3d 8b ea 0a 	vmovupd 0xaea8b(%rip),%ymm7        # 8c5360 <var$630.126.450+0x4a0>
  8168d4:	00 
  8168d5:	c5 7b 10 2d 23 09 0b 	vmovsd 0xb0923(%rip),%xmm13        # 8c7200 <__STRLITPACK_199.115+0x70>
  8168dc:	00 
  8168dd:	c5 f9 10 35 bb 00 0b 	vmovupd 0xb00bb(%rip),%xmm6        # 8c69a0 <__STRLITPACK_19.34+0x10>
  8168e4:	00 
  8168e5:	c5 7b 10 05 2b 09 0b 	vmovsd 0xb092b(%rip),%xmm8        # 8c7218 <__STRLITPACK_199.115+0x88>
  8168ec:	00 
  8168ed:	c5 f9 10 05 5b 04 0b 	vmovupd 0xb045b(%rip),%xmm0        # 8c6d50 <__STRLITPACK_124.84+0x50>
  8168f4:	00 
  8168f5:	4d 63 ed             	movslq %r13d,%r13
  8168f8:	c5 93 5c 1d c8 d5 32 	vsubsd 0x32d5c8(%rip),%xmm13,%xmm3        # b43ec8 <mod_scalars_mp_lambda_>
  8168ff:	00 
  816900:	c5 fd 10 0d 78 e6 0a 	vmovupd 0xae678(%rip),%ymm1        # 8c4f80 <var$630.126.450+0xc0>
  816907:	00 
  816908:	c5 eb 59 25 30 0c 0b 	vmulsd 0xb0c30(%rip),%xmm2,%xmm4        # 8c7540 <__STRLITPACK_199.115+0x3b0>
  81690f:	00 
  816910:	c5 e3 59 da          	vmulsd %xmm2,%xmm3,%xmm3
  816914:	4c 89 a5 88 f3 ff ff 	mov    %r12,-0xc78(%rbp)
  81691b:	49 ff c5             	inc    %r13
  81691e:	49 89 fc             	mov    %rdi,%r12
  816921:	c5 f9 28 eb          	vmovapd %xmm3,%xmm5
  816925:	4c 89 6d c0          	mov    %r13,-0x40(%rbp)
  816929:	4c 8d 2c 3f          	lea    (%rdi,%rdi,1),%r13
  81692d:	4d 2b e3             	sub    %r11,%r12
  816930:	4c 89 a5 90 f3 ff ff 	mov    %r12,-0xc70(%rbp)
  816937:	4d 89 ec             	mov    %r13,%r12
  81693a:	4d 63 c0             	movslq %r8d,%r8
  81693d:	49 f7 dd             	neg    %r13
  816940:	48 89 bd 30 ff ff ff 	mov    %rdi,-0xd0(%rbp)
  816947:	4c 03 ef             	add    %rdi,%r13
  81694a:	4c 89 c7             	mov    %r8,%rdi
  81694d:	4d 2b e3             	sub    %r11,%r12
  816950:	48 0f af fe          	imul   %rsi,%rdi
  816954:	48 89 bd 38 f2 ff ff 	mov    %rdi,-0xdc8(%rbp)
  81695b:	4c 89 c7             	mov    %r8,%rdi
  81695e:	48 0f af f8          	imul   %rax,%rdi
  816962:	48 89 b5 f0 f4 ff ff 	mov    %rsi,-0xb10(%rbp)
  816969:	4c 89 c6             	mov    %r8,%rsi
  81696c:	48 89 8d f8 f4 ff ff 	mov    %rcx,-0xb08(%rbp)
  816973:	48 0f af f1          	imul   %rcx,%rsi
  816977:	4c 89 c1             	mov    %r8,%rcx
  81697a:	49 0f af ce          	imul   %r14,%rcx
  81697e:	4c 89 b5 80 f5 ff ff 	mov    %r14,-0xa80(%rbp)
  816985:	4d 89 c6             	mov    %r8,%r14
  816988:	48 89 bd a0 f3 ff ff 	mov    %rdi,-0xc60(%rbp)
  81698f:	4c 89 c7             	mov    %r8,%rdi
  816992:	4c 89 bd 48 f6 ff ff 	mov    %r15,-0x9b8(%rbp)
  816999:	4d 0f af f7          	imul   %r15,%r14
  81699d:	49 0f af f9          	imul   %r9,%rdi
  8169a1:	4d 89 c7             	mov    %r8,%r15
  8169a4:	4c 2b df             	sub    %rdi,%r11
  8169a7:	4c 0f af fa          	imul   %rdx,%r15
  8169ab:	48 89 8d 08 f2 ff ff 	mov    %rcx,-0xdf8(%rbp)
  8169b2:	4c 89 c1             	mov    %r8,%rcx
  8169b5:	48 0f af 8d d0 f6 ff 	imul   -0x930(%rbp),%rcx
  8169bc:	ff 
  8169bd:	4c 89 b5 90 f2 ff ff 	mov    %r14,-0xd70(%rbp)
  8169c4:	4d 89 c6             	mov    %r8,%r14
  8169c7:	4c 89 bd 98 f3 ff ff 	mov    %r15,-0xc68(%rbp)
  8169ce:	4d 03 eb             	add    %r11,%r13
  8169d1:	4c 8b bd f0 f1 ff ff 	mov    -0xe10(%rbp),%r15
  8169d8:	4c 0f af b5 c8 f6 ff 	imul   -0x938(%rbp),%r14
  8169df:	ff 
  8169e0:	4c 89 ad f0 f5 ff ff 	mov    %r13,-0xa10(%rbp)
  8169e7:	4d 89 fd             	mov    %r15,%r13
  8169ea:	4c 89 8d a8 f8 ff ff 	mov    %r9,-0x758(%rbp)
  8169f1:	4c 8b 4d d0          	mov    -0x30(%rbp),%r9
  8169f5:	4d 0f af e9          	imul   %r9,%r13
  8169f9:	48 89 85 c0 f6 ff ff 	mov    %rax,-0x940(%rbp)
  816a00:	4c 89 c0             	mov    %r8,%rax
  816a03:	48 89 8d 70 f2 ff ff 	mov    %rcx,-0xd90(%rbp)
  816a0a:	4c 89 c1             	mov    %r8,%rcx
  816a0d:	4d 2b c2             	sub    %r10,%r8
  816a10:	4c 89 85 c0 f2 ff ff 	mov    %r8,-0xd40(%rbp)
  816a17:	4c 8b 85 80 f3 ff ff 	mov    -0xc80(%rbp),%r8
  816a1e:	4c 89 a5 e8 f5 ff ff 	mov    %r12,-0xa18(%rbp)
  816a25:	4c 89 b5 78 f2 ff ff 	mov    %r14,-0xd88(%rbp)
  816a2c:	48 89 bd b0 f5 ff ff 	mov    %rdi,-0xa50(%rbp)
  816a33:	4f 8d 34 20          	lea    (%r8,%r12,1),%r14
  816a37:	4c 8b a5 90 f3 ff ff 	mov    -0xc70(%rbp),%r12
  816a3e:	49 2b fd             	sub    %r13,%rdi
  816a41:	4c 03 f7             	add    %rdi,%r14
  816a44:	4c 89 ad c0 f5 ff ff 	mov    %r13,-0xa40(%rbp)
  816a4b:	48 89 95 b8 f6 ff ff 	mov    %rdx,-0x948(%rbp)
  816a52:	4d 03 e0             	add    %r8,%r12
  816a55:	4c 03 e7             	add    %rdi,%r12
  816a58:	48 8b bd 08 ff ff ff 	mov    -0xf8(%rbp),%rdi
  816a5f:	49 89 f8             	mov    %rdi,%r8
  816a62:	4d 0f af c1          	imul   %r9,%r8
  816a66:	4d 2b e8             	sub    %r8,%r13
  816a69:	49 f7 d9             	neg    %r9
  816a6c:	4d 03 eb             	add    %r11,%r13
  816a6f:	4c 89 a5 a8 f5 ff ff 	mov    %r12,-0xa58(%rbp)
  816a76:	4d 03 e0             	add    %r8,%r12
  816a79:	4d 03 c6             	add    %r14,%r8
  816a7c:	4c 89 85 80 f8 ff ff 	mov    %r8,-0x780(%rbp)
  816a83:	4c 8b 85 20 f2 ff ff 	mov    -0xde0(%rbp),%r8
  816a8a:	4d 2b c5             	sub    %r13,%r8
  816a8d:	49 f7 dd             	neg    %r13
  816a90:	4c 03 ad 88 f3 ff ff 	add    -0xc78(%rbp),%r13
  816a97:	4d 03 c1             	add    %r9,%r8
  816a9a:	4d 03 e9             	add    %r9,%r13
  816a9d:	4d 89 d1             	mov    %r10,%r9
  816aa0:	48 8b 95 f0 fb ff ff 	mov    -0x410(%rbp),%rdx
  816aa7:	48 0f af c2          	imul   %rdx,%rax
  816aab:	4c 0f af ca          	imul   %rdx,%r9
  816aaf:	4c 89 a5 38 f8 ff ff 	mov    %r12,-0x7c8(%rbp)
  816ab6:	4c 8b a5 20 ff ff ff 	mov    -0xe0(%rbp),%r12
  816abd:	4c 89 85 68 f8 ff ff 	mov    %r8,-0x798(%rbp)
  816ac4:	48 89 85 10 f2 ff ff 	mov    %rax,-0xdf0(%rbp)
  816acb:	4c 89 8d 58 f2 ff ff 	mov    %r9,-0xda8(%rbp)
  816ad2:	4f 8d 04 24          	lea    (%r12,%r12,1),%r8
  816ad6:	49 f7 d8             	neg    %r8
  816ad9:	4c 2b c8             	sub    %rax,%r9
  816adc:	4d 03 c4             	add    %r12,%r8
  816adf:	4c 89 f8             	mov    %r15,%rax
  816ae2:	49 89 fc             	mov    %rdi,%r12
  816ae5:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  816ae9:	48 0f af c2          	imul   %rdx,%rax
  816aed:	4c 0f af e2          	imul   %rdx,%r12
  816af1:	4c 89 b5 88 f5 ff ff 	mov    %r14,-0xa78(%rbp)
  816af8:	4c 8b b5 68 f6 ff ff 	mov    -0x998(%rbp),%r14
  816aff:	48 89 85 48 f2 ff ff 	mov    %rax,-0xdb8(%rbp)
  816b06:	49 2b c4             	sub    %r12,%rax
  816b09:	4c 89 a5 28 f2 ff ff 	mov    %r12,-0xdd8(%rbp)
  816b10:	4d 89 f4             	mov    %r14,%r12
  816b13:	4c 89 9d c8 f2 ff ff 	mov    %r11,-0xd38(%rbp)
  816b1a:	49 03 c1             	add    %r9,%rax
  816b1d:	4c 8b 9d a8 f4 ff ff 	mov    -0xb58(%rbp),%r11
  816b24:	4d 0f af e3          	imul   %r11,%r12
  816b28:	4c 0f af b5 90 f4 ff 	imul   -0xb70(%rbp),%r14
  816b2f:	ff 
  816b30:	4c 0f af 9d 00 f2 ff 	imul   -0xe00(%rbp),%r11
  816b37:	ff 
  816b38:	48 8b 95 88 f2 ff ff 	mov    -0xd78(%rbp),%rdx
  816b3f:	4c 89 ad 98 f8 ff ff 	mov    %r13,-0x768(%rbp)
  816b46:	49 89 d5             	mov    %rdx,%r13
  816b49:	4d 2b e8             	sub    %r8,%r13
  816b4c:	4d 03 c1             	add    %r9,%r8
  816b4f:	4c 2b e8             	sub    %rax,%r13
  816b52:	48 f7 d8             	neg    %rax
  816b55:	48 03 c2             	add    %rdx,%rax
  816b58:	4d 03 ec             	add    %r12,%r13
  816b5b:	4c 89 8d a8 f3 ff ff 	mov    %r9,-0xc58(%rbp)
  816b62:	4c 89 a5 78 f6 ff ff 	mov    %r12,-0x988(%rbp)
  816b69:	48 89 b5 30 f2 ff ff 	mov    %rsi,-0xdd0(%rbp)
  816b70:	48 8b b5 e8 fb ff ff 	mov    -0x418(%rbp),%rsi
  816b77:	4e 8d 0c 20          	lea    (%rax,%r12,1),%r9
  816b7b:	4d 89 d4             	mov    %r10,%r12
  816b7e:	49 03 c6             	add    %r14,%rax
  816b81:	4c 0f af e6          	imul   %rsi,%r12
  816b85:	48 0f af ce          	imul   %rsi,%rcx
  816b89:	48 89 85 70 f6 ff ff 	mov    %rax,-0x990(%rbp)
  816b90:	4c 89 f8             	mov    %r15,%rax
  816b93:	4c 89 b5 68 f6 ff ff 	mov    %r14,-0x998(%rbp)
  816b9a:	4c 89 e6             	mov    %r12,%rsi
  816b9d:	4c 89 85 a0 f8 ff ff 	mov    %r8,-0x760(%rbp)
  816ba4:	48 2b f1             	sub    %rcx,%rsi
  816ba7:	4c 8b b5 70 f3 ff ff 	mov    -0xc90(%rbp),%r14
  816bae:	4c 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%r8
  816bb5:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  816bb9:	48 0f af c2          	imul   %rdx,%rax
  816bbd:	4c 89 9d a8 f4 ff ff 	mov    %r11,-0xb58(%rbp)
  816bc4:	4d 03 f0             	add    %r8,%r14
  816bc7:	4d 2b c4             	sub    %r12,%r8
  816bca:	49 f7 dc             	neg    %r12
  816bcd:	4c 89 b5 c8 f5 ff ff 	mov    %r14,-0xa38(%rbp)
  816bd4:	4d 89 f3             	mov    %r14,%r11
  816bd7:	4d 03 e6             	add    %r14,%r12
  816bda:	49 89 fe             	mov    %rdi,%r14
  816bdd:	4c 0f af f2          	imul   %rdx,%r14
  816be1:	48 89 8d b8 f5 ff ff 	mov    %rcx,-0xa48(%rbp)
  816be8:	48 2b c8             	sub    %rax,%rcx
  816beb:	4c 03 e1             	add    %rcx,%r12
  816bee:	4c 2b de             	sub    %rsi,%r11
  816bf1:	4c 89 a5 d8 f5 ff ff 	mov    %r12,-0xa28(%rbp)
  816bf8:	48 f7 da             	neg    %rdx
  816bfb:	4c 89 8d 30 f8 ff ff 	mov    %r9,-0x7d0(%rbp)
  816c02:	4c 89 9d b8 f3 ff ff 	mov    %r11,-0xc48(%rbp)
  816c09:	48 89 85 c8 f3 ff ff 	mov    %rax,-0xc38(%rbp)
  816c10:	4d 03 e6             	add    %r14,%r12
  816c13:	49 f7 de             	neg    %r14
  816c16:	4c 89 a5 28 f8 ff ff 	mov    %r12,-0x7d8(%rbp)
  816c1d:	4c 03 f0             	add    %rax,%r14
  816c20:	4c 8b a5 58 f3 ff ff 	mov    -0xca8(%rbp),%r12
  816c27:	49 f7 de             	neg    %r14
  816c2a:	4d 03 f3             	add    %r11,%r14
  816c2d:	4c 8d 1c fd 00 00 00 	lea    0x0(,%rdi,8),%r11
  816c34:	00 
  816c35:	4c 03 f2             	add    %rdx,%r14
  816c38:	4c 89 d8             	mov    %r11,%rax
  816c3b:	48 8b 95 08 fd ff ff 	mov    -0x2f8(%rbp),%rdx
  816c42:	4e 8d 0c e5 08 00 00 	lea    0x8(,%r12,8),%r9
  816c49:	00 
  816c4a:	49 0f af d1          	imul   %r9,%rdx
  816c4e:	4c 89 b5 90 f8 ff ff 	mov    %r14,-0x770(%rbp)
  816c55:	4c 8b b5 90 f1 ff ff 	mov    -0xe70(%rbp),%r14
  816c5c:	48 2b 85 68 f7 ff ff 	sub    -0x898(%rbp),%rax
  816c63:	48 8b 8d 10 f4 ff ff 	mov    -0xbf0(%rbp),%rcx
  816c6a:	4c 89 85 c0 f3 ff ff 	mov    %r8,-0xc40(%rbp)
  816c71:	4d 8d 04 16          	lea    (%r14,%rdx,1),%r8
  816c75:	4c 89 ad 70 f8 ff ff 	mov    %r13,-0x790(%rbp)
  816c7c:	4e 8d 2c 00          	lea    (%rax,%r8,1),%r13
  816c80:	48 89 b5 b0 f3 ff ff 	mov    %rsi,-0xc50(%rbp)
  816c87:	48 8d 34 08          	lea    (%rax,%rcx,1),%rsi
  816c8b:	4c 89 ad 58 fe ff ff 	mov    %r13,-0x1a8(%rbp)
  816c92:	4a 8d 0c 30          	lea    (%rax,%r14,1),%rcx
  816c96:	4c 89 85 10 f5 ff ff 	mov    %r8,-0xaf0(%rbp)
  816c9d:	4a 8d 04 e0          	lea    (%rax,%r12,8),%rax
  816ca1:	49 03 c6             	add    %r14,%rax
  816ca4:	4d 89 f8             	mov    %r15,%r8
  816ca7:	48 89 85 20 fc ff ff 	mov    %rax,-0x3e0(%rbp)
  816cae:	4c 89 d0             	mov    %r10,%rax
  816cb1:	48 0f af 85 c0 f6 ff 	imul   -0x940(%rbp),%rax
  816cb8:	ff 
  816cb9:	4c 8b ad 70 fe ff ff 	mov    -0x190(%rbp),%r13
  816cc0:	49 89 fe             	mov    %rdi,%r14
  816cc3:	4d 0f af c5          	imul   %r13,%r8
  816cc7:	4d 0f af f5          	imul   %r13,%r14
  816ccb:	48 89 b5 48 ff ff ff 	mov    %rsi,-0xb8(%rbp)
  816cd2:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
  816cd6:	48 89 95 18 f5 ff ff 	mov    %rdx,-0xae8(%rbp)
  816cdd:	4c 89 d2             	mov    %r10,%rdx
  816ce0:	48 0f af 95 d0 f6 ff 	imul   -0x930(%rbp),%rdx
  816ce7:	ff 
  816ce8:	48 89 8d 60 fe ff ff 	mov    %rcx,-0x1a0(%rbp)
  816cef:	48 8b 8d d8 f6 ff ff 	mov    -0x928(%rbp),%rcx
  816cf6:	48 2b c8             	sub    %rax,%rcx
  816cf9:	4c 89 8d 18 ff ff ff 	mov    %r9,-0xe8(%rbp)
  816d00:	4c 8b 8d a0 f3 ff ff 	mov    -0xc60(%rbp),%r9
  816d07:	49 2b c1             	sub    %r9,%rax
  816d0a:	48 89 b5 50 fe ff ff 	mov    %rsi,-0x1b0(%rbp)
  816d11:	48 8b b5 00 f5 ff ff 	mov    -0xb00(%rbp),%rsi
  816d18:	4e 8d 24 09          	lea    (%rcx,%r9,1),%r12
  816d1c:	4d 2b c8             	sub    %r8,%r9
  816d1f:	4d 2b c6             	sub    %r14,%r8
  816d22:	4d 2b e0             	sub    %r8,%r12
  816d25:	49 03 c9             	add    %r9,%rcx
  816d28:	4c 89 a5 b0 f6 ff ff 	mov    %r12,-0x950(%rbp)
  816d2f:	4f 8d 24 6e          	lea    (%r14,%r13,2),%r12
  816d33:	49 03 cc             	add    %r12,%rcx
  816d36:	48 2b f2             	sub    %rdx,%rsi
  816d39:	48 89 8d 48 f7 ff ff 	mov    %rcx,-0x8b8(%rbp)
  816d40:	4d 89 fc             	mov    %r15,%r12
  816d43:	48 8b 8d 70 f2 ff ff 	mov    -0xd90(%rbp),%rcx
  816d4a:	48 2b d1             	sub    %rcx,%rdx
  816d4d:	48 89 95 d0 f3 ff ff 	mov    %rdx,-0xc30(%rbp)
  816d54:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
  816d5b:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
  816d5f:	4c 0f af e2          	imul   %rdx,%r12
  816d63:	49 2b cc             	sub    %r12,%rcx
  816d66:	48 89 b5 38 f5 ff ff 	mov    %rsi,-0xac8(%rbp)
  816d6d:	48 03 ce             	add    %rsi,%rcx
  816d70:	48 89 fe             	mov    %rdi,%rsi
  816d73:	48 0f af f2          	imul   %rdx,%rsi
  816d77:	4c 89 a5 a0 f2 ff ff 	mov    %r12,-0xd60(%rbp)
  816d7e:	4c 2b e6             	sub    %rsi,%r12
  816d81:	49 f7 dc             	neg    %r12
  816d84:	4c 8d 0c 32          	lea    (%rdx,%rsi,1),%r9
  816d88:	4c 89 b5 48 f5 ff ff 	mov    %r14,-0xab8(%rbp)
  816d8f:	4d 03 e6             	add    %r14,%r12
  816d92:	49 89 d6             	mov    %rdx,%r14
  816d95:	48 8d 14 56          	lea    (%rsi,%rdx,2),%rdx
  816d99:	49 f7 de             	neg    %r14
  816d9c:	4c 03 c9             	add    %rcx,%r9
  816d9f:	4c 03 f6             	add    %rsi,%r14
  816da2:	48 03 d1             	add    %rcx,%rdx
  816da5:	48 89 8d 58 f5 ff ff 	mov    %rcx,-0xaa8(%rbp)
  816dac:	4c 03 f1             	add    %rcx,%r14
  816daf:	4c 89 d1             	mov    %r10,%rcx
  816db2:	48 0f af 8d c8 f6 ff 	imul   -0x938(%rbp),%rcx
  816db9:	ff 
  816dba:	4c 89 a5 40 f7 ff ff 	mov    %r12,-0x8c0(%rbp)
  816dc1:	4c 89 8d 20 f7 ff ff 	mov    %r9,-0x8e0(%rbp)
  816dc8:	49 89 f9             	mov    %rdi,%r9
  816dcb:	4c 89 b5 38 f7 ff ff 	mov    %r14,-0x8c8(%rbp)
  816dd2:	4d 89 fe             	mov    %r15,%r14
  816dd5:	4c 8b a5 80 fe ff ff 	mov    -0x180(%rbp),%r12
  816ddc:	4d 0f af f4          	imul   %r12,%r14
  816de0:	4d 0f af cc          	imul   %r12,%r9
  816de4:	4c 8b 85 08 f5 ff ff 	mov    -0xaf8(%rbp),%r8
  816deb:	4f 8d 2c 0c          	lea    (%r12,%r9,1),%r13
  816def:	4c 2b c1             	sub    %rcx,%r8
  816df2:	48 89 95 10 f7 ff ff 	mov    %rdx,-0x8f0(%rbp)
  816df9:	48 8b 95 78 f2 ff ff 	mov    -0xd88(%rbp),%rdx
  816e00:	4c 89 b5 a8 f2 ff ff 	mov    %r14,-0xd58(%rbp)
  816e07:	48 2b ca             	sub    %rdx,%rcx
  816e0a:	48 89 8d d8 f3 ff ff 	mov    %rcx,-0xc28(%rbp)
  816e11:	4c 89 e1             	mov    %r12,%rcx
  816e14:	48 f7 d9             	neg    %rcx
  816e17:	49 8d 34 10          	lea    (%r8,%rdx,1),%rsi
  816e1b:	49 2b d6             	sub    %r14,%rdx
  816e1e:	4d 2b f1             	sub    %r9,%r14
  816e21:	49 f7 de             	neg    %r14
  816e24:	49 03 d0             	add    %r8,%rdx
  816e27:	48 89 b5 40 f5 ff ff 	mov    %rsi,-0xac0(%rbp)
  816e2e:	4c 03 f6             	add    %rsi,%r14
  816e31:	4c 89 d6             	mov    %r10,%rsi
  816e34:	4f 8d 24 61          	lea    (%r9,%r12,2),%r12
  816e38:	48 0f af b5 b8 f6 ff 	imul   -0x948(%rbp),%rsi
  816e3f:	ff 
  816e40:	4c 0f af 95 48 f6 ff 	imul   -0x9b8(%rbp),%r10
  816e47:	ff 
  816e48:	4c 03 ea             	add    %rdx,%r13
  816e4b:	4c 03 e2             	add    %rdx,%r12
  816e4e:	4c 89 ad 18 f7 ff ff 	mov    %r13,-0x8e8(%rbp)
  816e55:	49 03 c9             	add    %r9,%rcx
  816e58:	4c 89 a5 08 f7 ff ff 	mov    %r12,-0x8f8(%rbp)
  816e5f:	4d 89 fc             	mov    %r15,%r12
  816e62:	4c 8b ad 68 fe ff ff 	mov    -0x198(%rbp),%r13
  816e69:	49 89 f9             	mov    %rdi,%r9
  816e6c:	4d 0f af e5          	imul   %r13,%r12
  816e70:	4d 0f af cd          	imul   %r13,%r9
  816e74:	48 89 95 50 f5 ff ff 	mov    %rdx,-0xab0(%rbp)
  816e7b:	48 03 ca             	add    %rdx,%rcx
  816e7e:	48 8b 95 00 f7 ff ff 	mov    -0x900(%rbp),%rdx
  816e85:	48 89 8d 28 f7 ff ff 	mov    %rcx,-0x8d8(%rbp)
  816e8c:	48 89 d1             	mov    %rdx,%rcx
  816e8f:	48 2b ce             	sub    %rsi,%rcx
  816e92:	4c 89 85 30 f5 ff ff 	mov    %r8,-0xad0(%rbp)
  816e99:	4c 8b 85 98 f3 ff ff 	mov    -0xc68(%rbp),%r8
  816ea0:	4c 89 b5 30 f7 ff ff 	mov    %r14,-0x8d0(%rbp)
  816ea7:	49 2b f0             	sub    %r8,%rsi
  816eaa:	c5 7b 12 dd          	vmovddup %xmm5,%xmm11
  816eae:	c5 79 10 0d ea ff 0a 	vmovupd 0xaffea(%rip),%xmm9        # 8c6ea0 <__STRLITPACK_54.50+0x80>
  816eb5:	00 
  816eb6:	4e 8d 34 01          	lea    (%rcx,%r8,1),%r14
  816eba:	4d 2b c4             	sub    %r12,%r8
  816ebd:	4d 2b e1             	sub    %r9,%r12
  816ec0:	49 03 c8             	add    %r8,%rcx
  816ec3:	4d 2b f4             	sub    %r12,%r14
  816ec6:	4c 89 b5 a8 f6 ff ff 	mov    %r14,-0x958(%rbp)
  816ecd:	4f 8d 24 69          	lea    (%r9,%r13,2),%r12
  816ed1:	49 03 cc             	add    %r12,%rcx
  816ed4:	4d 89 d5             	mov    %r10,%r13
  816ed7:	48 89 8d 50 f7 ff ff 	mov    %rcx,-0x8b0(%rbp)
  816ede:	49 f7 da             	neg    %r10
  816ee1:	48 8b 8d c0 f4 ff ff 	mov    -0xb40(%rbp),%rcx
  816ee8:	49 89 c8             	mov    %rcx,%r8
  816eeb:	4c 8b 8d 10 fd ff ff 	mov    -0x2f0(%rbp),%r9
  816ef2:	4d 2b c1             	sub    %r9,%r8
  816ef5:	4d 03 d1             	add    %r9,%r10
  816ef8:	4d 89 fc             	mov    %r15,%r12
  816efb:	4c 89 95 a0 f4 ff ff 	mov    %r10,-0xb60(%rbp)
  816f02:	4c 89 85 e0 f3 ff ff 	mov    %r8,-0xc20(%rbp)
  816f09:	4c 8b b5 90 f2 ff ff 	mov    -0xd70(%rbp),%r14
  816f10:	4d 2b ee             	sub    %r14,%r13
  816f13:	4c 89 ad b8 f2 ff ff 	mov    %r13,-0xd48(%rbp)
  816f1a:	4f 8d 0c 10          	lea    (%r8,%r10,1),%r9
  816f1e:	4c 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%r10
  816f25:	49 89 f8             	mov    %rdi,%r8
  816f28:	4d 0f af e2          	imul   %r10,%r12
  816f2c:	4d 0f af c2          	imul   %r10,%r8
  816f30:	4c 89 a5 b0 f2 ff ff 	mov    %r12,-0xd50(%rbp)
  816f37:	4d 2b f4             	sub    %r12,%r14
  816f3a:	4d 2b e0             	sub    %r8,%r12
  816f3d:	4d 03 f1             	add    %r9,%r14
  816f40:	4d 03 e5             	add    %r13,%r12
  816f43:	4d 03 c6             	add    %r14,%r8
  816f46:	49 f7 dc             	neg    %r12
  816f49:	4c 03 e1             	add    %rcx,%r12
  816f4c:	4c 89 b5 b8 f4 ff ff 	mov    %r14,-0xb48(%rbp)
  816f53:	4c 89 a5 80 f2 ff ff 	mov    %r12,-0xd80(%rbp)
  816f5a:	4c 89 85 60 f6 ff ff 	mov    %r8,-0x9a0(%rbp)
  816f61:	4c 8b 85 c0 f2 ff ff 	mov    -0xd40(%rbp),%r8
  816f68:	4f 8d 34 14          	lea    (%r12,%r10,1),%r14
  816f6c:	49 f7 da             	neg    %r10
  816f6f:	4d 03 d4             	add    %r12,%r10
  816f72:	4d 89 fc             	mov    %r15,%r12
  816f75:	49 f7 dc             	neg    %r12
  816f78:	4c 0f af 85 d0 f4 ff 	imul   -0xb30(%rbp),%r8
  816f7f:	ff 
  816f80:	4c 89 95 58 f6 ff ff 	mov    %r10,-0x9a8(%rbp)
  816f87:	4e 8d 14 27          	lea    (%rdi,%r12,1),%r10
  816f8b:	4c 0f af 95 50 ff ff 	imul   -0xb0(%rbp),%r10
  816f92:	ff 
  816f93:	48 8b bd 60 f3 ff ff 	mov    -0xca0(%rbp),%rdi
  816f9a:	4d 89 c5             	mov    %r8,%r13
  816f9d:	4c 89 a5 80 f4 ff ff 	mov    %r12,-0xb80(%rbp)
  816fa4:	49 89 fc             	mov    %rdi,%r12
  816fa7:	4c 89 8d 60 f2 ff ff 	mov    %r9,-0xda0(%rbp)
  816fae:	49 f7 dd             	neg    %r13
  816fb1:	4c 8b 8d 68 f3 ff ff 	mov    -0xc98(%rbp),%r9
  816fb8:	4d 2b e1             	sub    %r9,%r12
  816fbb:	48 8b 8d 70 fa ff ff 	mov    -0x590(%rbp),%rcx
  816fc2:	4c 03 e1             	add    %rcx,%r12
  816fc5:	4d 2b e5             	sub    %r13,%r12
  816fc8:	4c 89 b5 40 f6 ff ff 	mov    %r14,-0x9c0(%rbp)
  816fcf:	4d 89 ce             	mov    %r9,%r14
  816fd2:	4d 03 d4             	add    %r12,%r10
  816fd5:	4c 8b a5 78 f4 ff ff 	mov    -0xb88(%rbp),%r12
  816fdc:	4d 0f af f4          	imul   %r12,%r14
  816fe0:	c5 79 10 25 c8 fe 0a 	vmovupd 0xafec8(%rip),%xmm12        # 8c6eb0 <__STRLITPACK_54.50+0x90>
  816fe7:	00 
  816fe8:	4f 8d 2c 32          	lea    (%r10,%r14,1),%r13
  816fec:	4c 89 ad c8 f4 ff ff 	mov    %r13,-0xb38(%rbp)
  816ff3:	4d 89 e5             	mov    %r12,%r13
  816ff6:	49 f7 dd             	neg    %r13
  816ff9:	49 83 c5 03          	add    $0x3,%r13
  816ffd:	4d 89 ec             	mov    %r13,%r12
  817000:	4d 0f af e1          	imul   %r9,%r12
  817004:	4c 0f af ad 50 f2 ff 	imul   -0xdb0(%rbp),%r13
  81700b:	ff 
  81700c:	4d 03 d4             	add    %r12,%r10
  81700f:	4c 2b c9             	sub    %rcx,%r9
  817012:	4c 89 95 e8 f4 ff ff 	mov    %r10,-0xb18(%rbp)
  817019:	4e 8d 14 fd 00 00 00 	lea    0x0(,%r15,8),%r10
  817020:	00 
  817021:	4d 2b da             	sub    %r10,%r11
  817024:	4d 2b c8             	sub    %r8,%r9
  817027:	49 03 fb             	add    %r11,%rdi
  81702a:	49 03 d3             	add    %r11,%rdx
  81702d:	4c 89 ad 88 f4 ff ff 	mov    %r13,-0xb78(%rbp)
  817034:	49 2b f9             	sub    %r9,%rdi
  817037:	4c 8b ad 20 f2 ff ff 	mov    -0xde0(%rbp),%r13
  81703e:	4c 03 e7             	add    %rdi,%r12
  817041:	4c 8b 85 80 f3 ff ff 	mov    -0xc80(%rbp),%r8
  817048:	48 2b d6             	sub    %rsi,%rdx
  81704b:	48 8b b5 70 f3 ff ff 	mov    -0xc90(%rbp),%rsi
  817052:	4c 03 f7             	add    %rdi,%r14
  817055:	4c 89 a5 e0 f4 ff ff 	mov    %r12,-0xb20(%rbp)
  81705c:	4c 8b a5 e8 f5 ff ff 	mov    -0xa18(%rbp),%r12
  817063:	4d 03 c3             	add    %r11,%r8
  817066:	48 8b 8d c8 f5 ff ff 	mov    -0xa38(%rbp),%rcx
  81706d:	4d 8d 0c 33          	lea    (%r11,%rsi,1),%r9
  817071:	4c 89 b5 d8 f4 ff ff 	mov    %r14,-0xb28(%rbp)
  817078:	4f 8d 34 2b          	lea    (%r11,%r13,1),%r14
  81707c:	48 89 95 00 f7 ff ff 	mov    %rdx,-0x900(%rbp)
  817083:	4c 89 b5 40 f8 ff ff 	mov    %r14,-0x7c0(%rbp)
  81708a:	49 8d 3c 0b          	lea    (%r11,%rcx,1),%rdi
  81708e:	48 8b 95 d8 f6 ff ff 	mov    -0x928(%rbp),%rdx
  817095:	4c 2b b5 f0 f5 ff ff 	sub    -0xa10(%rbp),%r14
  81709c:	49 03 d3             	add    %r11,%rdx
  81709f:	4c 89 b5 50 f8 ff ff 	mov    %r14,-0x7b0(%rbp)
  8170a6:	4f 8d 34 04          	lea    (%r12,%r8,1),%r14
  8170aa:	4c 8b a5 30 f5 ff ff 	mov    -0xad0(%rbp),%r12
  8170b1:	48 2b d0             	sub    %rax,%rdx
  8170b4:	48 89 95 d8 f6 ff ff 	mov    %rdx,-0x928(%rbp)
  8170bb:	48 8b 95 c0 f3 ff ff 	mov    -0xc40(%rbp),%rdx
  8170c2:	4c 03 ca             	add    %rdx,%r9
  8170c5:	48 8b 85 b0 f3 ff ff 	mov    -0xc50(%rbp),%rax
  8170cc:	48 2b f8             	sub    %rax,%rdi
  8170cf:	48 89 bd 58 f8 ff ff 	mov    %rdi,-0x7a8(%rbp)
  8170d6:	48 8b bd b8 f5 ff ff 	mov    -0xa48(%rbp),%rdi
  8170dd:	4c 03 cf             	add    %rdi,%r9
  8170e0:	4c 03 85 90 f3 ff ff 	add    -0xc70(%rbp),%r8
  8170e7:	4c 89 8d 60 f8 ff ff 	mov    %r9,-0x7a0(%rbp)
  8170ee:	4c 8b 8d b0 f5 ff ff 	mov    -0xa50(%rbp),%r9
  8170f5:	4d 03 f1             	add    %r9,%r14
  8170f8:	4c 89 b5 48 f8 ff ff 	mov    %r14,-0x7b8(%rbp)
  8170ff:	4f 8d 34 1c          	lea    (%r12,%r11,1),%r14
  817103:	4d 03 c1             	add    %r9,%r8
  817106:	4c 8b 8d 08 f5 ff ff 	mov    -0xaf8(%rbp),%r9
  81710d:	4c 03 b5 78 f2 ff ff 	add    -0xd88(%rbp),%r14
  817114:	4c 89 85 78 f8 ff ff 	mov    %r8,-0x788(%rbp)
  81711b:	4c 89 b5 f8 f6 ff ff 	mov    %r14,-0x908(%rbp)
  817122:	4f 8d 24 0b          	lea    (%r11,%r9,1),%r12
  817126:	4c 8b 85 38 f5 ff ff 	mov    -0xac8(%rbp),%r8
  81712d:	4c 8b b5 00 f5 ff ff 	mov    -0xb00(%rbp),%r14
  817134:	4c 2b a5 d8 f3 ff ff 	sub    -0xc28(%rbp),%r12
  81713b:	4c 89 a5 f0 f6 ff ff 	mov    %r12,-0x910(%rbp)
  817142:	4f 8d 24 18          	lea    (%r8,%r11,1),%r12
  817146:	4c 8b 85 e0 f3 ff ff 	mov    -0xc20(%rbp),%r8
  81714d:	4f 8d 0c 33          	lea    (%r11,%r14,1),%r9
  817151:	4c 8b b5 88 f2 ff ff 	mov    -0xd78(%rbp),%r14
  817158:	4c 03 a5 70 f2 ff ff 	add    -0xd90(%rbp),%r12
  81715f:	4c 2b 8d d0 f3 ff ff 	sub    -0xc30(%rbp),%r9
  817166:	4c 89 a5 e8 f6 ff ff 	mov    %r12,-0x918(%rbp)
  81716d:	4f 8d 24 18          	lea    (%r8,%r11,1),%r12
  817171:	4c 89 8d e0 f6 ff ff 	mov    %r9,-0x920(%rbp)
  817178:	4d 03 f3             	add    %r11,%r14
  81717b:	4c 03 9d c0 f4 ff ff 	add    -0xb40(%rbp),%r11
  817182:	4c 8d 85 a0 f8 ff ff 	lea    -0x760(%rbp),%r8
  817189:	4d 8b 08             	mov    (%r8),%r9
  81718c:	4c 2b 9d b8 f2 ff ff 	sub    -0xd48(%rbp),%r11
  817193:	49 f7 d9             	neg    %r9
  817196:	4c 89 9d 80 f6 ff ff 	mov    %r11,-0x980(%rbp)
  81719d:	4d 03 ce             	add    %r14,%r9
  8171a0:	4c 03 a5 a0 f4 ff ff 	add    -0xb60(%rbp),%r12
  8171a7:	4c 2b b5 a8 f3 ff ff 	sub    -0xc58(%rbp),%r14
  8171ae:	4c 8b 9d 68 f6 ff ff 	mov    -0x998(%rbp),%r11
  8171b5:	4c 03 a5 90 f2 ff ff 	add    -0xd70(%rbp),%r12
  8171bc:	4c 89 a5 50 f6 ff ff 	mov    %r12,-0x9b0(%rbp)
  8171c3:	4c 8b a5 78 f6 ff ff 	mov    -0x988(%rbp),%r12
  8171ca:	4d 03 cc             	add    %r12,%r9
  8171cd:	4d 89 08             	mov    %r9,(%r8)
  8171d0:	4f 8d 0c 1e          	lea    (%r14,%r11,1),%r9
  8171d4:	4c 89 8d 38 f6 ff ff 	mov    %r9,-0x9c8(%rbp)
  8171db:	4d 03 f4             	add    %r12,%r14
  8171de:	4c 8b 8d f8 fb ff ff 	mov    -0x408(%rbp),%r9
  8171e5:	4d 89 cb             	mov    %r9,%r11
  8171e8:	4c 0f af 5d d0       	imul   -0x30(%rbp),%r11
  8171ed:	4c 89 b5 88 f8 ff ff 	mov    %r14,-0x778(%rbp)
  8171f4:	4c 8b b5 a8 f8 ff ff 	mov    -0x758(%rbp),%r14
  8171fb:	4c 8b 85 c0 f5 ff ff 	mov    -0xa40(%rbp),%r8
  817202:	49 f7 de             	neg    %r14
  817205:	49 f7 d8             	neg    %r8
  817208:	4d 03 c6             	add    %r14,%r8
  81720b:	44 8b a5 78 f3 ff ff 	mov    -0xc88(%rbp),%r12d
  817212:	49 f7 d8             	neg    %r8
  817215:	45 2b e1             	sub    %r9d,%r12d
  817218:	4d 63 e4             	movslq %r12d,%r12
  81721b:	4c 03 85 c8 f2 ff ff 	add    -0xd38(%rbp),%r8
  817222:	49 ff c4             	inc    %r12
  817225:	4c 89 a5 78 ff ff ff 	mov    %r12,-0x88(%rbp)
  81722c:	4c 8b a5 88 f3 ff ff 	mov    -0xc78(%rbp),%r12
  817233:	4d 2b e0             	sub    %r8,%r12
  817236:	49 f7 d8             	neg    %r8
  817239:	4d 03 c5             	add    %r13,%r8
  81723c:	4d 03 c3             	add    %r11,%r8
  81723f:	4c 01 9d a8 f5 ff ff 	add    %r11,-0xa58(%rbp)
  817246:	4c 01 9d 88 f5 ff ff 	add    %r11,-0xa78(%rbp)
  81724d:	4d 03 dc             	add    %r12,%r11
  817250:	4c 89 85 c0 f5 ff ff 	mov    %r8,-0xa40(%rbp)
  817257:	4c 89 9d d0 f5 ff ff 	mov    %r11,-0xa30(%rbp)
  81725e:	4d 89 cb             	mov    %r9,%r11
  817261:	4c 8b 85 f8 f1 ff ff 	mov    -0xe08(%rbp),%r8
  817268:	4c 89 b5 98 f5 ff ff 	mov    %r14,-0xa68(%rbp)
  81726f:	4c 8b 75 80          	mov    -0x80(%rbp),%r14
  817273:	4c 0f af 85 80 f5 ff 	imul   -0xa80(%rbp),%r8
  81727a:	ff 
  81727b:	4d 0f af fe          	imul   %r14,%r15
  81727f:	4d 0f af de          	imul   %r14,%r11
  817283:	4c 8b ad 00 fc ff ff 	mov    -0x400(%rbp),%r13
  81728a:	4c 8b b5 68 f2 ff ff 	mov    -0xd98(%rbp),%r14
  817291:	4c 89 85 e8 f3 ff ff 	mov    %r8,-0xc18(%rbp)
  817298:	4c 2b 85 08 f2 ff ff 	sub    -0xdf8(%rbp),%r8
  81729f:	4f 8d 64 2d 00       	lea    0x0(%r13,%r13,1),%r12
  8172a4:	49 f7 dc             	neg    %r12
  8172a7:	4c 89 bd f8 f3 ff ff 	mov    %r15,-0xc08(%rbp)
  8172ae:	4d 03 e5             	add    %r13,%r12
  8172b1:	4d 2b fb             	sub    %r11,%r15
  8172b4:	4d 89 f5             	mov    %r14,%r13
  8172b7:	4d 03 f8             	add    %r8,%r15
  8172ba:	4d 2b ec             	sub    %r12,%r13
  8172bd:	4c 89 9d 18 f2 ff ff 	mov    %r11,-0xde8(%rbp)
  8172c4:	4d 2b ef             	sub    %r15,%r13
  8172c7:	4c 8b 9d a8 f4 ff ff 	mov    -0xb58(%rbp),%r11
  8172ce:	49 f7 df             	neg    %r15
  8172d1:	4d 03 eb             	add    %r11,%r13
  8172d4:	4d 03 fe             	add    %r14,%r15
  8172d7:	4c 89 ad a0 f5 ff ff 	mov    %r13,-0xa60(%rbp)
  8172de:	4d 89 cd             	mov    %r9,%r13
  8172e1:	4c 0f af 6d d8       	imul   -0x28(%rbp),%r13
  8172e6:	4c 89 85 f0 f3 ff ff 	mov    %r8,-0xc10(%rbp)
  8172ed:	4d 03 e0             	add    %r8,%r12
  8172f0:	4c 89 bd b0 f4 ff ff 	mov    %r15,-0xb50(%rbp)
  8172f7:	4d 03 fb             	add    %r11,%r15
  8172fa:	4c 8b 9d e8 fb ff ff 	mov    -0x418(%rbp),%r11
  817301:	49 f7 dc             	neg    %r12
  817304:	4c 8b 85 c8 f3 ff ff 	mov    -0xc38(%rbp),%r8
  81730b:	49 f7 db             	neg    %r11
  81730e:	49 f7 d8             	neg    %r8
  817311:	4d 03 c3             	add    %r11,%r8
  817314:	4c 89 bd 78 f5 ff ff 	mov    %r15,-0xa88(%rbp)
  81731b:	4c 8b bd b8 f3 ff ff 	mov    -0xc48(%rbp),%r15
  817322:	4d 03 f8             	add    %r8,%r15
  817325:	4c 01 ad d8 f5 ff ff 	add    %r13,-0xa28(%rbp)
  81732c:	4d 03 ef             	add    %r15,%r13
  81732f:	4c 8b 85 58 f3 ff ff 	mov    -0xca8(%rbp),%r8
  817336:	4e 8d 3c cd 00 00 00 	lea    0x0(,%r9,8),%r15
  81733d:	00 
  81733e:	4c 8b 8d 68 f7 ff ff 	mov    -0x898(%rbp),%r9
  817345:	49 f7 d9             	neg    %r9
  817348:	4d 03 cf             	add    %r15,%r9
  81734b:	4d 2b fa             	sub    %r10,%r15
  81734e:	49 03 cf             	add    %r15,%rcx
  817351:	49 03 f7             	add    %r15,%rsi
  817354:	48 2b c8             	sub    %rax,%rcx
  817357:	48 03 d6             	add    %rsi,%rdx
  81735a:	48 8d b5 20 f2 ff ff 	lea    -0xde0(%rbp),%rsi
  817361:	48 8b 06             	mov    (%rsi),%rax
  817364:	49 03 cb             	add    %r11,%rcx
  817367:	48 03 fa             	add    %rdx,%rdi
  81736a:	49 03 c7             	add    %r15,%rax
  81736d:	4c 8d 9d f0 f5 ff ff 	lea    -0xa10(%rbp),%r11
  817374:	49 8b 13             	mov    (%r11),%rdx
  817377:	4d 03 f7             	add    %r15,%r14
  81737a:	4c 8b 95 10 f4 ff ff 	mov    -0xbf0(%rbp),%r10
  817381:	48 f7 da             	neg    %rdx
  817384:	4c 89 ad 90 f5 ff ff 	mov    %r13,-0xa70(%rbp)
  81738b:	4d 03 d1             	add    %r9,%r10
  81738e:	48 89 8d c8 f5 ff ff 	mov    %rcx,-0xa38(%rbp)
  817395:	48 03 d0             	add    %rax,%rdx
  817398:	4c 8b ad 90 f1 ff ff 	mov    -0xe70(%rbp),%r13
  81739f:	4d 03 e6             	add    %r14,%r12
  8173a2:	48 8b 8d 80 f3 ff ff 	mov    -0xc80(%rbp),%rcx
  8173a9:	4c 01 8d 10 f5 ff ff 	add    %r9,-0xaf0(%rbp)
  8173b0:	49 03 cf             	add    %r15,%rcx
  8173b3:	4c 89 95 e0 fc ff ff 	mov    %r10,-0x320(%rbp)
  8173ba:	4f 8d 14 c1          	lea    (%r9,%r8,8),%r10
  8173be:	4d 03 cd             	add    %r13,%r9
  8173c1:	4d 03 ea             	add    %r10,%r13
  8173c4:	4c 8b 85 e0 f3 ff ff 	mov    -0xc20(%rbp),%r8
  8173cb:	4d 03 c7             	add    %r15,%r8
  8173ce:	48 89 06             	mov    %rax,(%rsi)
  8173d1:	48 89 bd b8 f5 ff ff 	mov    %rdi,-0xa48(%rbp)
  8173d8:	4c 8d 95 e8 f5 ff ff 	lea    -0xa18(%rbp),%r10
  8173df:	49 8b 32             	mov    (%r10),%rsi
  8173e2:	48 8b 85 90 f3 ff ff 	mov    -0xc70(%rbp),%rax
  8173e9:	48 03 f1             	add    %rcx,%rsi
  8173ec:	4c 01 8d 18 f5 ff ff 	add    %r9,-0xae8(%rbp)
  8173f3:	48 03 c1             	add    %rcx,%rax
  8173f6:	48 8b 8d 08 f5 ff ff 	mov    -0xaf8(%rbp),%rcx
  8173fd:	48 8b bd 00 f5 ff ff 	mov    -0xb00(%rbp),%rdi
  817404:	49 03 cf             	add    %r15,%rcx
  817407:	4c 89 8d 68 f7 ff ff 	mov    %r9,-0x898(%rbp)
  81740e:	49 03 ff             	add    %r15,%rdi
  817411:	4c 8b 8d a0 f4 ff ff 	mov    -0xb60(%rbp),%r9
  817418:	4d 03 c8             	add    %r8,%r9
  81741b:	48 03 95 98 f5 ff ff 	add    -0xa68(%rbp),%rdx
  817422:	48 2b 8d d8 f3 ff ff 	sub    -0xc28(%rbp),%rcx
  817429:	48 2b bd d0 f3 ff ff 	sub    -0xc30(%rbp),%rdi
  817430:	4c 03 8d 90 f2 ff ff 	add    -0xd70(%rbp),%r9
  817437:	49 89 13             	mov    %rdx,(%r11)
  81743a:	4c 8d 85 b0 f5 ff ff 	lea    -0xa50(%rbp),%r8
  817441:	49 8b 10             	mov    (%r8),%rdx
  817444:	48 03 f2             	add    %rdx,%rsi
  817447:	48 03 d0             	add    %rax,%rdx
  81744a:	4c 89 bd 98 f2 ff ff 	mov    %r15,-0xd68(%rbp)
  817451:	4c 89 ad 90 fa ff ff 	mov    %r13,-0x570(%rbp)
  817458:	49 89 10             	mov    %rdx,(%r8)
  81745b:	48 89 8d 08 f5 ff ff 	mov    %rcx,-0xaf8(%rbp)
  817462:	48 89 bd 00 f5 ff ff 	mov    %rdi,-0xb00(%rbp)
  817469:	4c 89 b5 98 f4 ff ff 	mov    %r14,-0xb68(%rbp)
  817470:	4c 89 a5 e0 f5 ff ff 	mov    %r12,-0xa20(%rbp)
  817477:	c5 7b 10 35 99 05 0b 	vmovsd 0xb0599(%rip),%xmm14        # 8c7a18 <__STRLITPACK_199.115+0x888>
  81747e:	00 
  81747f:	c7 85 b8 f8 ff ff 00 	movl   $0x0,-0x748(%rbp)
  817486:	00 00 00 
  817489:	c4 41 7b 12 d7       	vmovddup %xmm15,%xmm10
  81748e:	c5 79 11 9d 00 f4 ff 	vmovupd %xmm11,-0xc00(%rbp)
  817495:	ff 
  817496:	49 89 32             	mov    %rsi,(%r10)
  817499:	4c 89 8d a0 f4 ff ff 	mov    %r9,-0xb60(%rbp)
  8174a0:	44 8b a5 d0 fb ff ff 	mov    -0x430(%rbp),%r12d
  8174a7:	4c 8b b5 60 f5 ff ff 	mov    -0xaa0(%rbp),%r14
  8174ae:	4c 8b bd 68 f5 ff ff 	mov    -0xa98(%rbp),%r15
  8174b5:	44 8b ad 70 f5 ff ff 	mov    -0xa90(%rbp),%r13d
  8174bc:	48 8b 95 e8 f3 ff ff 	mov    -0xc18(%rbp),%rdx
  8174c3:	48 8b bd f8 f3 ff ff 	mov    -0xc08(%rbp),%rdi
  8174ca:	48 8b 8d f0 f3 ff ff 	mov    -0xc10(%rbp),%rcx
  8174d1:	4c 8b 9d 98 f4 ff ff 	mov    -0xb68(%rbp),%r11
  8174d8:	48 f7 da             	neg    %rdx
  8174db:	4c 2b d9             	sub    %rcx,%r11
  8174de:	48 8d b5 c0 f2 ff ff 	lea    -0xd40(%rbp),%rsi
  8174e5:	48 8b 0e             	mov    (%rsi),%rcx
  8174e8:	48 0f af 8d 70 f4 ff 	imul   -0xb90(%rbp),%rcx
  8174ef:	ff 
  8174f0:	c4 42 7d 19 df       	vbroadcastsd %xmm15,%ymm11
  8174f5:	c4 e2 7d 19 ed       	vbroadcastsd %xmm5,%ymm5
  8174fa:	c5 79 10 8d 00 f4 ff 	vmovupd -0xc00(%rbp),%xmm9
  817501:	ff 
  817502:	48 8d 85 f0 f2 ff ff 	lea    -0xd10(%rbp),%rax
  817509:	c5 7d 11 18          	vmovupd %ymm11,(%rax)
  81750d:	4c 8d 85 d0 f2 ff ff 	lea    -0xd30(%rbp),%r8
  817514:	c4 c1 7d 11 28       	vmovupd %ymm5,(%r8)
  817519:	c5 7b 12 dc          	vmovddup %xmm4,%xmm11
  81751d:	c4 e2 7d 19 ec       	vbroadcastsd %xmm4,%ymm5
  817522:	c5 fd 10 30          	vmovupd (%rax),%ymm6
  817526:	c4 c1 7d 10 38       	vmovupd (%r8),%ymm7
  81752b:	44 89 a5 d0 fb ff ff 	mov    %r12d,-0x430(%rbp)
  817532:	4c 8d 8d 80 f4 ff ff 	lea    -0xb80(%rbp),%r9
  817539:	4d 8b 21             	mov    (%r9),%r12
  81753c:	48 8b 85 f8 fb ff ff 	mov    -0x408(%rbp),%rax
  817543:	4c 03 e0             	add    %rax,%r12
  817546:	4c 0f af a5 e8 fc ff 	imul   -0x318(%rbp),%r12
  81754d:	ff 
  81754e:	4c 89 b5 60 f5 ff ff 	mov    %r14,-0xaa0(%rbp)
  817555:	48 89 0e             	mov    %rcx,(%rsi)
  817558:	44 89 ad 70 f5 ff ff 	mov    %r13d,-0xa90(%rbp)
  81755f:	48 8b 8d 50 f2 ff ff 	mov    -0xdb0(%rbp),%rcx
  817566:	4c 8b b5 78 f4 ff ff 	mov    -0xb88(%rbp),%r14
  81756d:	48 8b b5 08 f2 ff ff 	mov    -0xdf8(%rbp),%rsi
  817574:	4c 8b ad 00 fc ff ff 	mov    -0x400(%rbp),%r13
  81757b:	48 2b f7             	sub    %rdi,%rsi
  81757e:	4c 0f af f1          	imul   %rcx,%r14
  817582:	49 03 d5             	add    %r13,%rdx
  817585:	4c 8b 85 68 f2 ff ff 	mov    -0xd98(%rbp),%r8
  81758c:	48 03 d6             	add    %rsi,%rdx
  81758f:	4d 2b c5             	sub    %r13,%r8
  817592:	4c 89 bd 68 f5 ff ff 	mov    %r15,-0xa98(%rbp)
  817599:	4c 03 c2             	add    %rdx,%r8
  81759c:	4c 8b 7d 80          	mov    -0x80(%rbp),%r15
  8175a0:	48 8b 95 18 f2 ff ff 	mov    -0xde8(%rbp),%rdx
  8175a7:	4c 8b 95 90 f4 ff ff 	mov    -0xb70(%rbp),%r10
  8175ae:	4d 89 21             	mov    %r12,(%r9)
  8175b1:	4c 8b a5 80 f2 ff ff 	mov    -0xd80(%rbp),%r12
  8175b8:	4a 8d 34 7a          	lea    (%rdx,%r15,2),%rsi
  8175bc:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
  8175c3:	4c 03 c6             	add    %rsi,%r8
  8175c6:	4c 8b ad c8 f2 ff ff 	mov    -0xd38(%rbp),%r13
  8175cd:	48 8b b5 20 f2 ff ff 	mov    -0xde0(%rbp),%rsi
  8175d4:	4c 0f af 95 00 f2 ff 	imul   -0xe00(%rbp),%r10
  8175db:	ff 
  8175dc:	49 2b f5             	sub    %r13,%rsi
  8175df:	48 01 b5 98 f5 ff ff 	add    %rsi,-0xa68(%rbp)
  8175e6:	48 8b b5 58 f2 ff ff 	mov    -0xda8(%rbp),%rsi
  8175ed:	4c 8b 8d 10 f2 ff ff 	mov    -0xdf0(%rbp),%r9
  8175f4:	48 f7 de             	neg    %rsi
  8175f7:	4c 89 b5 78 f4 ff ff 	mov    %r14,-0xb88(%rbp)
  8175fe:	4d 8d 34 54          	lea    (%r12,%rdx,2),%r14
  817602:	4c 8b a5 20 ff ff ff 	mov    -0xe0(%rbp),%r12
  817609:	49 03 f4             	add    %r12,%rsi
  81760c:	4c 2b 8d 48 f2 ff ff 	sub    -0xdb8(%rbp),%r9
  817613:	4c 8b bd 88 f2 ff ff 	mov    -0xd78(%rbp),%r15
  81761a:	49 03 f1             	add    %r9,%rsi
  81761d:	4d 2b fc             	sub    %r12,%r15
  817620:	4c 8b 8d 28 f2 ff ff 	mov    -0xdd8(%rbp),%r9
  817627:	4c 03 fe             	add    %rsi,%r15
  81762a:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
  81762e:	48 8b bd a8 f4 ff ff 	mov    -0xb58(%rbp),%rdi
  817635:	4c 8b a5 f8 f1 ff ff 	mov    -0xe08(%rbp),%r12
  81763c:	48 01 bd e0 f5 ff ff 	add    %rdi,-0xa20(%rbp)
  817643:	4d 8d 0c 71          	lea    (%r9,%rsi,2),%r9
  817647:	4d 03 f9             	add    %r9,%r15
  81764a:	4c 01 95 b0 f4 ff ff 	add    %r10,-0xb50(%rbp)
  817651:	4c 01 bd 68 f6 ff ff 	add    %r15,-0x998(%rbp)
  817658:	4c 01 bd 78 f6 ff ff 	add    %r15,-0x988(%rbp)
  81765f:	4e 8d 3c 1f          	lea    (%rdi,%r11,1),%r15
  817663:	4d 03 da             	add    %r10,%r11
  817666:	4d 03 d0             	add    %r8,%r10
  817669:	49 03 f8             	add    %r8,%rdi
  81766c:	4d 89 e0             	mov    %r12,%r8
  81766f:	4c 0f af 85 f8 f4 ff 	imul   -0xb08(%rbp),%r8
  817676:	ff 
  817677:	4c 0f af a5 f0 f4 ff 	imul   -0xb10(%rbp),%r12
  81767e:	ff 
  81767f:	48 89 bd a8 f4 ff ff 	mov    %rdi,-0xb58(%rbp)
  817686:	4c 29 ad 40 f8 ff ff 	sub    %r13,-0x7c0(%rbp)
  81768d:	4c 8d 8d 28 f5 ff ff 	lea    -0xad8(%rbp),%r9
  817694:	49 8b 39             	mov    (%r9),%rdi
  817697:	48 8b b5 98 f2 ff ff 	mov    -0xd68(%rbp),%rsi
  81769e:	4c 8b ad 30 f2 ff ff 	mov    -0xdd0(%rbp),%r13
  8176a5:	4c 89 b5 88 f6 ff ff 	mov    %r14,-0x978(%rbp)
  8176ac:	49 89 fe             	mov    %rdi,%r14
  8176af:	4d 2b f0             	sub    %r8,%r14
  8176b2:	48 03 fe             	add    %rsi,%rdi
  8176b5:	4d 2b c5             	sub    %r13,%r8
  8176b8:	4c 89 9d 98 f4 ff ff 	mov    %r11,-0xb68(%rbp)
  8176bf:	49 2b f8             	sub    %r8,%rdi
  8176c2:	49 89 39             	mov    %rdi,(%r9)
  8176c5:	4c 8b 9d f0 f1 ff ff 	mov    -0xe10(%rbp),%r11
  8176cc:	4d 89 d8             	mov    %r11,%r8
  8176cf:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  8176d6:	4f 8d 4c 35 00       	lea    0x0(%r13,%r14,1),%r9
  8176db:	4c 89 bd 70 f3 ff ff 	mov    %r15,-0xc90(%rbp)
  8176e2:	49 89 c7             	mov    %rax,%r15
  8176e5:	4c 0f af c7          	imul   %rdi,%r8
  8176e9:	4c 0f af ff          	imul   %rdi,%r15
  8176ed:	4d 2b e8             	sub    %r8,%r13
  8176f0:	4d 2b c7             	sub    %r15,%r8
  8176f3:	4c 89 95 90 f4 ff ff 	mov    %r10,-0xb70(%rbp)
  8176fa:	4d 03 f5             	add    %r13,%r14
  8176fd:	4c 8b 95 f8 f5 ff ff 	mov    -0xa08(%rbp),%r10
  817704:	4d 8d 2c 7f          	lea    (%r15,%rdi,2),%r13
  817708:	48 89 c7             	mov    %rax,%rdi
  81770b:	4d 03 f5             	add    %r13,%r14
  81770e:	4d 0f af da          	imul   %r10,%r11
  817712:	49 0f af fa          	imul   %r10,%rdi
  817716:	4c 89 b5 68 f3 ff ff 	mov    %r14,-0xc98(%rbp)
  81771d:	4d 2b c8             	sub    %r8,%r9
  817720:	4c 8b b5 20 f5 ff ff 	mov    -0xae0(%rbp),%r14
  817727:	4e 8d 14 57          	lea    (%rdi,%r10,2),%r10
  81772b:	4c 89 8d 38 f3 ff ff 	mov    %r9,-0xcc8(%rbp)
  817732:	4d 89 f1             	mov    %r14,%r9
  817735:	4d 2b cc             	sub    %r12,%r9
  817738:	4c 03 f6             	add    %rsi,%r14
  81773b:	4c 8b 85 38 f2 ff ff 	mov    -0xdc8(%rbp),%r8
  817742:	4d 2b e0             	sub    %r8,%r12
  817745:	4d 2b f4             	sub    %r12,%r14
  817748:	4c 8b ad d0 f6 ff ff 	mov    -0x930(%rbp),%r13
  81774f:	4f 8d 24 08          	lea    (%r8,%r9,1),%r12
  817753:	4d 2b c3             	sub    %r11,%r8
  817756:	4c 2b df             	sub    %rdi,%r11
  817759:	4d 03 c8             	add    %r8,%r9
  81775c:	4d 2b e3             	sub    %r11,%r12
  81775f:	4c 8b 9d 78 fe ff ff 	mov    -0x188(%rbp),%r11
  817766:	4d 03 ca             	add    %r10,%r9
  817769:	4c 89 8d 60 f3 ff ff 	mov    %r9,-0xca0(%rbp)
  817770:	4d 89 d9             	mov    %r11,%r9
  817773:	4c 0f af c8          	imul   %rax,%r9
  817777:	4c 89 a5 30 f3 ff ff 	mov    %r12,-0xcd0(%rbp)
  81777e:	4f 8d 14 59          	lea    (%r9,%r11,2),%r10
  817782:	49 f7 d9             	neg    %r9
  817785:	49 f7 dd             	neg    %r13
  817788:	48 8b bd a0 f2 ff ff 	mov    -0xd60(%rbp),%rdi
  81778f:	4c 03 cf             	add    %rdi,%r9
  817792:	4c 8b a5 48 f5 ff ff 	mov    -0xab8(%rbp),%r12
  817799:	4d 89 e0             	mov    %r12,%r8
  81779c:	4d 2b c1             	sub    %r9,%r8
  81779f:	48 f7 df             	neg    %rdi
  8177a2:	4c 89 85 58 f3 ff ff 	mov    %r8,-0xca8(%rbp)
  8177a9:	49 03 fd             	add    %r13,%rdi
  8177ac:	4c 8d 9d 38 f5 ff ff 	lea    -0xac8(%rbp),%r11
  8177b3:	4d 8b 03             	mov    (%r11),%r8
  8177b6:	4c 8b bd 70 f2 ff ff 	mov    -0xd90(%rbp),%r15
  8177bd:	4d 03 fd             	add    %r13,%r15
  8177c0:	4c 89 b5 20 f5 ff ff 	mov    %r14,-0xae0(%rbp)
  8177c7:	4d 8d 34 30          	lea    (%r8,%rsi,1),%r14
  8177cb:	4d 03 c7             	add    %r15,%r8
  8177ce:	4d 03 f7             	add    %r15,%r14
  8177d1:	4d 2b c1             	sub    %r9,%r8
  8177d4:	4c 8b 8d 80 fe ff ff 	mov    -0x180(%rbp),%r9
  8177db:	4d 89 03             	mov    %r8,(%r11)
  8177de:	4d 89 c8             	mov    %r9,%r8
  8177e1:	4c 0f af c0          	imul   %rax,%r8
  8177e5:	4c 01 95 58 f5 ff ff 	add    %r10,-0xaa8(%rbp)
  8177ec:	4c 03 d7             	add    %rdi,%r10
  8177ef:	4d 03 e2             	add    %r10,%r12
  8177f2:	4f 8d 1c 48          	lea    (%r8,%r9,2),%r11
  8177f6:	49 f7 d8             	neg    %r8
  8177f9:	4c 89 a5 48 f5 ff ff 	mov    %r12,-0xab8(%rbp)
  817800:	4c 8b 95 a8 f2 ff ff 	mov    -0xd58(%rbp),%r10
  817807:	4d 03 c2             	add    %r10,%r8
  81780a:	4c 8d 8d 40 f5 ff ff 	lea    -0xac0(%rbp),%r9
  817811:	4d 8b 21             	mov    (%r9),%r12
  817814:	4c 89 e7             	mov    %r12,%rdi
  817817:	49 2b f8             	sub    %r8,%rdi
  81781a:	49 f7 da             	neg    %r10
  81781d:	48 89 bd 48 f3 ff ff 	mov    %rdi,-0xcb8(%rbp)
  817824:	48 8b bd 30 f5 ff ff 	mov    -0xad0(%rbp),%rdi
  81782b:	4c 8b ad c8 f6 ff ff 	mov    -0x938(%rbp),%r13
  817832:	49 f7 dd             	neg    %r13
  817835:	4c 8b bd 78 f2 ff ff 	mov    -0xd88(%rbp),%r15
  81783c:	4d 03 d5             	add    %r13,%r10
  81783f:	4d 03 fd             	add    %r13,%r15
  817842:	4c 89 b5 50 f3 ff ff 	mov    %r14,-0xcb0(%rbp)
  817849:	4c 8d 34 37          	lea    (%rdi,%rsi,1),%r14
  81784d:	49 03 ff             	add    %r15,%rdi
  817850:	4d 03 f7             	add    %r15,%r14
  817853:	49 2b f8             	sub    %r8,%rdi
  817856:	49 89 d0             	mov    %rdx,%r8
  817859:	4c 0f af c0          	imul   %rax,%r8
  81785d:	4c 01 9d 50 f5 ff ff 	add    %r11,-0xab0(%rbp)
  817864:	4d 03 da             	add    %r10,%r11
  817867:	4d 03 e3             	add    %r11,%r12
  81786a:	4d 89 21             	mov    %r12,(%r9)
  81786d:	48 8b 85 b0 f2 ff ff 	mov    -0xd50(%rbp),%rax
  817874:	4c 8b a5 48 f6 ff ff 	mov    -0x9b8(%rbp),%r12
  81787b:	48 89 bd 30 f5 ff ff 	mov    %rdi,-0xad0(%rbp)
  817882:	48 89 c7             	mov    %rax,%rdi
  817885:	49 f7 dc             	neg    %r12
  817888:	48 f7 d8             	neg    %rax
  81788b:	4c 8b 8d 90 f2 ff ff 	mov    -0xd70(%rbp),%r9
  817892:	49 2b f8             	sub    %r8,%rdi
  817895:	4d 03 cc             	add    %r12,%r9
  817898:	49 03 c4             	add    %r12,%rax
  81789b:	4c 2b cf             	sub    %rdi,%r9
  81789e:	48 f7 d8             	neg    %rax
  8178a1:	4c 8b 95 60 f2 ff ff 	mov    -0xda0(%rbp),%r10
  8178a8:	4d 03 d1             	add    %r9,%r10
  8178ab:	4c 8b 9d b8 f2 ff ff 	mov    -0xd48(%rbp),%r11
  8178b2:	49 03 c3             	add    %r11,%rax
  8178b5:	48 f7 d8             	neg    %rax
  8178b8:	49 03 fb             	add    %r11,%rdi
  8178bb:	4c 8b ad c0 f4 ff ff 	mov    -0xb40(%rbp),%r13
  8178c2:	49 03 c5             	add    %r13,%rax
  8178c5:	48 f7 df             	neg    %rdi
  8178c8:	4c 01 85 b8 f4 ff ff 	add    %r8,-0xb48(%rbp)
  8178cf:	4c 03 c0             	add    %rax,%r8
  8178d2:	4c 89 b5 40 f3 ff ff 	mov    %r14,-0xcc0(%rbp)
  8178d9:	49 8d 04 52          	lea    (%r10,%rdx,2),%rax
  8178dd:	48 89 85 28 f3 ff ff 	mov    %rax,-0xcd8(%rbp)
  8178e4:	49 03 fd             	add    %r13,%rdi
  8178e7:	48 8b 85 40 f2 ff ff 	mov    -0xdc0(%rbp),%rax
  8178ee:	4c 03 ee             	add    %rsi,%r13
  8178f1:	4c 8b b5 90 f6 ff ff 	mov    -0x970(%rbp),%r14
  8178f8:	48 03 f0             	add    %rax,%rsi
  8178fb:	48 2b c1             	sub    %rcx,%rax
  8178fe:	49 2b ce             	sub    %r14,%rcx
  817901:	4c 8b bd c0 f2 ff ff 	mov    -0xd40(%rbp),%r15
  817908:	49 03 c6             	add    %r14,%rax
  81790b:	49 2b cf             	sub    %r15,%rcx
  81790e:	49 f7 df             	neg    %r15
  817911:	49 2b c7             	sub    %r15,%rax
  817914:	48 2b f1             	sub    %rcx,%rsi
  817917:	4c 8d bd 80 f4 ff ff 	lea    -0xb80(%rbp),%r15
  81791e:	4d 8b 0f             	mov    (%r15),%r9
  817921:	48 8d 0c 57          	lea    (%rdi,%rdx,2),%rcx
  817925:	4c 03 c8             	add    %rax,%r9
  817928:	4d 2b eb             	sub    %r11,%r13
  81792b:	4c 8d 9d 88 f4 ff ff 	lea    -0xb78(%rbp),%r11
  817932:	49 8b 13             	mov    (%r11),%rdx
  817935:	4d 03 ec             	add    %r12,%r13
  817938:	4c 8d a5 78 f4 ff ff 	lea    -0xb88(%rbp),%r12
  81793f:	49 8b 3c 24          	mov    (%r12),%rdi
  817943:	48 89 8d 20 f3 ff ff 	mov    %rcx,-0xce0(%rbp)
  81794a:	48 8d 85 d8 f8 ff ff 	lea    -0x728(%rbp),%rax
  817951:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  817958:	4a 8d 0c 0a          	lea    (%rdx,%r9,1),%rcx
  81795c:	4c 03 cf             	add    %rdi,%r9
  81795f:	48 03 fe             	add    %rsi,%rdi
  817962:	4d 89 0f             	mov    %r9,(%r15)
  817965:	48 03 d6             	add    %rsi,%rdx
  817968:	4c 8b 4d c0          	mov    -0x40(%rbp),%r9
  81796c:	45 89 ca             	mov    %r9d,%r10d
  81796f:	49 89 3c 24          	mov    %rdi,(%r12)
  817973:	41 83 e2 fc          	and    $0xfffffffc,%r10d
  817977:	48 8b bd 78 ff ff ff 	mov    -0x88(%rbp),%rdi
  81797e:	41 83 e1 fe          	and    $0xfffffffe,%r9d
  817982:	89 fe                	mov    %edi,%esi
  817984:	83 e7 fe             	and    $0xfffffffe,%edi
  817987:	83 e6 fc             	and    $0xfffffffc,%esi
  81798a:	48 63 ff             	movslq %edi,%rdi
  81798d:	4d 63 d2             	movslq %r10d,%r10
  817990:	4d 63 c9             	movslq %r9d,%r9
  817993:	4c 89 ad c0 f4 ff ff 	mov    %r13,-0xb40(%rbp)
  81799a:	48 63 f6             	movslq %esi,%rsi
  81799d:	4c 89 4d e0          	mov    %r9,-0x20(%rbp)
  8179a1:	4c 89 55 a0          	mov    %r10,-0x60(%rbp)
  8179a5:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
  8179a9:	4c 89 85 18 f3 ff ff 	mov    %r8,-0xce8(%rbp)
  8179b0:	49 89 13             	mov    %rdx,(%r11)
  8179b3:	48 89 b5 e0 fe ff ff 	mov    %rsi,-0x120(%rbp)
  8179ba:	44 8b a5 d0 fb ff ff 	mov    -0x430(%rbp),%r12d
  8179c1:	4c 8b b5 60 f5 ff ff 	mov    -0xaa0(%rbp),%r14
  8179c8:	4c 8b bd 68 f5 ff ff 	mov    -0xa98(%rbp),%r15
  8179cf:	44 8b ad 70 f5 ff ff 	mov    -0xa90(%rbp),%r13d
  8179d6:	48 8b 38             	mov    (%rax),%rdi
  8179d9:	44 8b 85 b8 f8 ff ff 	mov    -0x748(%rbp),%r8d
  8179e0:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  8179e7:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  8179ee:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  8179f5:	48 89 8d 10 f3 ff ff 	mov    %rcx,-0xcf0(%rbp)
  8179fc:	48 83 7d d0 08       	cmpq   $0x8,-0x30(%rbp)
  817a01:	0f 85 ca 03 00 00    	jne    817dd1 <pre_step3d_mod_mp_pre_step3d_tile_+0x3821>
  817a07:	48 83 7d c8 08       	cmpq   $0x8,-0x38(%rbp)
  817a0c:	0f 85 bf 03 00 00    	jne    817dd1 <pre_step3d_mod_mp_pre_step3d_tile_+0x3821>
  817a12:	48 83 7d d8 08       	cmpq   $0x8,-0x28(%rbp)
  817a17:	0f 85 b4 03 00 00    	jne    817dd1 <pre_step3d_mod_mp_pre_step3d_tile_+0x3821>
  817a1d:	48 8b 95 20 fc ff ff 	mov    -0x3e0(%rbp),%rdx
  817a24:	33 c0                	xor    %eax,%eax
  817a26:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  817a2d:	48 89 95 20 fe ff ff 	mov    %rdx,-0x1e0(%rbp)
  817a34:	48 89 85 18 fe ff ff 	mov    %rax,-0x1e8(%rbp)
  817a3b:	48 89 85 10 fe ff ff 	mov    %rax,-0x1f0(%rbp)
  817a42:	48 89 85 b0 f8 ff ff 	mov    %rax,-0x750(%rbp)
  817a49:	48 83 bd 10 ff ff ff 	cmpq   $0x0,-0xf0(%rbp)
  817a50:	00 
  817a51:	0f 8e d6 07 00 00    	jle    81822d <pre_step3d_mod_mp_pre_step3d_tile_+0x3c7d>
  817a57:	4c 8b b5 a8 f8 ff ff 	mov    -0x758(%rbp),%r14
  817a5e:	4c 8b ad f0 fb ff ff 	mov    -0x410(%rbp),%r13
  817a65:	4c 0f af f7          	imul   %rdi,%r14
  817a69:	4c 0f af ef          	imul   %rdi,%r13
  817a6d:	48 8b b5 60 f8 ff ff 	mov    -0x7a0(%rbp),%rsi
  817a74:	48 8b 8d 50 f8 ff ff 	mov    -0x7b0(%rbp),%rcx
  817a7b:	48 8b 95 48 f8 ff ff 	mov    -0x7b8(%rbp),%rdx
  817a82:	4c 8b a5 58 f8 ff ff 	mov    -0x7a8(%rbp),%r12
  817a89:	49 03 f1             	add    %r9,%rsi
  817a8c:	48 8b 85 78 f8 ff ff 	mov    -0x788(%rbp),%rax
  817a93:	49 03 ce             	add    %r14,%rcx
  817a96:	4c 8b bd a0 f8 ff ff 	mov    -0x760(%rbp),%r15
  817a9d:	49 03 d6             	add    %r14,%rdx
  817aa0:	48 89 95 48 fd ff ff 	mov    %rdx,-0x2b8(%rbp)
  817aa7:	4d 03 e1             	add    %r9,%r12
  817aaa:	48 89 8d 50 fd ff ff 	mov    %rcx,-0x2b0(%rbp)
  817ab1:	49 03 c6             	add    %r14,%rax
  817ab4:	4c 03 b5 40 f8 ff ff 	add    -0x7c0(%rbp),%r14
  817abb:	4d 03 fd             	add    %r13,%r15
  817abe:	4c 03 ad 88 f8 ff ff 	add    -0x778(%rbp),%r13
  817ac5:	48 89 b5 58 fd ff ff 	mov    %rsi,-0x2a8(%rbp)
  817acc:	48 89 bd d8 f8 ff ff 	mov    %rdi,-0x728(%rbp)
  817ad3:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  817ada:	4c 89 b5 28 fd ff ff 	mov    %r14,-0x2d8(%rbp)
  817ae1:	4c 89 ad 30 fd ff ff 	mov    %r13,-0x2d0(%rbp)
  817ae8:	4c 89 bd 38 fd ff ff 	mov    %r15,-0x2c8(%rbp)
  817aef:	48 89 85 40 fd ff ff 	mov    %rax,-0x2c0(%rbp)
  817af6:	4c 89 a5 60 fd ff ff 	mov    %r12,-0x2a0(%rbp)
  817afd:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  817b04:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  817b0b:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  817b12:	4c 8b 85 b0 f8 ff ff 	mov    -0x750(%rbp),%r8
  817b19:	48 8b 8d 10 fe ff ff 	mov    -0x1f0(%rbp),%rcx
  817b20:	48 8b b5 18 fe ff ff 	mov    -0x1e8(%rbp),%rsi
  817b27:	48 8b bd 20 fe ff ff 	mov    -0x1e0(%rbp),%rdi
  817b2e:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  817b32:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  817b39:	48 3b 85 08 ff ff ff 	cmp    -0xf8(%rbp),%rax
  817b40:	0f 8c 4c 02 00 00    	jl     817d92 <pre_step3d_mod_mp_pre_step3d_tile_+0x37e2>
  817b46:	48 83 fa 04          	cmp    $0x4,%rdx
  817b4a:	0f 8c 34 cf 00 00    	jl     824a84 <pre_step3d_mod_mp_pre_step3d_tile_+0x104d4>
  817b50:	4c 8b 8d 30 fd ff ff 	mov    -0x2d0(%rbp),%r9
  817b57:	45 33 f6             	xor    %r14d,%r14d
  817b5a:	4c 8b ad 28 fd ff ff 	mov    -0x2d8(%rbp),%r13
  817b61:	4c 8b a5 40 fd ff ff 	mov    -0x2c0(%rbp),%r12
  817b68:	4c 8b 9d 50 fd ff ff 	mov    -0x2b0(%rbp),%r11
  817b6f:	4d 8d 3c 09          	lea    (%r9,%rcx,1),%r15
  817b73:	4c 89 bd 98 fd ff ff 	mov    %r15,-0x268(%rbp)
  817b7a:	4c 03 ee             	add    %rsi,%r13
  817b7d:	4c 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%r15
  817b84:	4c 03 e6             	add    %rsi,%r12
  817b87:	4c 8b 95 48 fd ff ff 	mov    -0x2b8(%rbp),%r10
  817b8e:	4c 03 de             	add    %rsi,%r11
  817b91:	4c 8b 8d 38 fd ff ff 	mov    -0x2c8(%rbp),%r9
  817b98:	48 89 bd 68 fd ff ff 	mov    %rdi,-0x298(%rbp)
  817b9f:	4d 03 f8             	add    %r8,%r15
  817ba2:	4c 89 bd 80 fd ff ff 	mov    %r15,-0x280(%rbp)
  817ba9:	4c 03 d6             	add    %rsi,%r10
  817bac:	4c 8b bd 58 fd ff ff 	mov    -0x2a8(%rbp),%r15
  817bb3:	4c 03 c9             	add    %rcx,%r9
  817bb6:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  817bba:	48 89 8d 10 fe ff ff 	mov    %rcx,-0x1f0(%rbp)
  817bc1:	48 89 b5 18 fe ff ff 	mov    %rsi,-0x1e8(%rbp)
  817bc8:	4d 03 f8             	add    %r8,%r15
  817bcb:	4c 89 bd 70 fd ff ff 	mov    %r15,-0x290(%rbp)
  817bd2:	49 89 c7             	mov    %rax,%r15
  817bd5:	48 89 bd 20 fe ff ff 	mov    %rdi,-0x1e0(%rbp)
  817bdc:	48 8b 95 68 fd ff ff 	mov    -0x298(%rbp),%rdx
  817be3:	48 8b 8d 70 fd ff ff 	mov    -0x290(%rbp),%rcx
  817bea:	48 8b b5 80 fd ff ff 	mov    -0x280(%rbp),%rsi
  817bf1:	48 8b bd 98 fd ff ff 	mov    -0x268(%rbp),%rdi
  817bf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  817bff:	00 
  817c00:	c4 01 7d 10 24 f2    	vmovupd (%r10,%r14,8),%ymm12
  817c06:	c4 01 1d 58 74 f3 f8 	vaddpd -0x8(%r11,%r14,8),%ymm12,%ymm14
  817c0d:	c4 01 0d 5c 3c f4    	vsubpd (%r12,%r14,8),%ymm14,%ymm15
  817c13:	c4 01 05 5c 64 f5 f8 	vsubpd -0x8(%r13,%r14,8),%ymm15,%ymm12
  817c1a:	c4 01 7d 10 3c f1    	vmovupd (%r9,%r14,8),%ymm15
  817c20:	c4 41 75 5e f4       	vdivpd %ymm12,%ymm1,%ymm14
  817c25:	c5 0d 59 e7          	vmulpd %ymm7,%ymm14,%ymm12
  817c29:	c4 21 05 5c 34 f7    	vsubpd (%rdi,%r14,8),%ymm15,%ymm14
  817c2f:	c4 21 7d 10 3c f1    	vmovupd (%rcx,%r14,8),%ymm15
  817c35:	c4 41 1d 59 e6       	vmulpd %ymm14,%ymm12,%ymm12
  817c3a:	c4 21 05 58 74 f6 f8 	vaddpd -0x8(%rsi,%r14,8),%ymm15,%ymm14
  817c41:	c4 41 1d 59 fe       	vmulpd %ymm14,%ymm12,%ymm15
  817c46:	49 83 c6 04          	add    $0x4,%r14
  817c4a:	c5 7d 11 7a 08       	vmovupd %ymm15,0x8(%rdx)
  817c4f:	48 83 c2 20          	add    $0x20,%rdx
  817c53:	4d 3b f7             	cmp    %r15,%r14
  817c56:	72 a8                	jb     817c00 <pre_step3d_mod_mp_pre_step3d_tile_+0x3650>
  817c58:	48 8b 8d 10 fe ff ff 	mov    -0x1f0(%rbp),%rcx
  817c5f:	48 8b b5 18 fe ff ff 	mov    -0x1e8(%rbp),%rsi
  817c66:	48 8b bd 20 fe ff ff 	mov    -0x1e0(%rbp),%rdi
  817c6d:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  817c71:	4c 8d 34 c5 00 00 00 	lea    0x0(,%rax,8),%r14
  817c78:	00 
  817c79:	48 3b c2             	cmp    %rdx,%rax
  817c7c:	0f 83 10 01 00 00    	jae    817d92 <pre_step3d_mod_mp_pre_step3d_tile_+0x37e2>
  817c82:	4c 8b bd 30 fd ff ff 	mov    -0x2d0(%rbp),%r15
  817c89:	4c 8d 2c c7          	lea    (%rdi,%rax,8),%r13
  817c8d:	4c 8b a5 28 fd ff ff 	mov    -0x2d8(%rbp),%r12
  817c94:	4c 8b 9d 40 fd ff ff 	mov    -0x2c0(%rbp),%r11
  817c9b:	4c 8b 95 50 fd ff ff 	mov    -0x2b0(%rbp),%r10
  817ca2:	4c 03 f9             	add    %rcx,%r15
  817ca5:	4c 89 bd 88 fd ff ff 	mov    %r15,-0x278(%rbp)
  817cac:	4c 03 e6             	add    %rsi,%r12
  817caf:	4c 8b bd 38 fd ff ff 	mov    -0x2c8(%rbp),%r15
  817cb6:	4c 03 de             	add    %rsi,%r11
  817cb9:	4c 8b 8d 48 fd ff ff 	mov    -0x2b8(%rbp),%r9
  817cc0:	4c 03 d6             	add    %rsi,%r10
  817cc3:	48 89 8d 10 fe ff ff 	mov    %rcx,-0x1f0(%rbp)
  817cca:	48 89 b5 18 fe ff ff 	mov    %rsi,-0x1e8(%rbp)
  817cd1:	4c 03 f9             	add    %rcx,%r15
  817cd4:	4c 89 bd 90 fd ff ff 	mov    %r15,-0x270(%rbp)
  817cdb:	4c 03 ce             	add    %rsi,%r9
  817cde:	4c 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%r15
  817ce5:	48 89 bd 20 fe ff ff 	mov    %rdi,-0x1e0(%rbp)
  817cec:	48 8b bd 90 fd ff ff 	mov    -0x270(%rbp),%rdi
  817cf3:	4d 03 f8             	add    %r8,%r15
  817cf6:	4c 89 bd 78 fd ff ff 	mov    %r15,-0x288(%rbp)
  817cfd:	4c 8b bd 58 fd ff ff 	mov    -0x2a8(%rbp),%r15
  817d04:	48 8b b5 78 fd ff ff 	mov    -0x288(%rbp),%rsi
  817d0b:	4d 03 f8             	add    %r8,%r15
  817d0e:	4c 89 f9             	mov    %r15,%rcx
  817d11:	4c 8b bd 88 fd ff ff 	mov    -0x278(%rbp),%r15
  817d18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  817d1f:	00 
  817d20:	c4 41 7b 10 24 c1    	vmovsd (%r9,%rax,8),%xmm12
  817d26:	c4 41 1b 58 74 c2 f8 	vaddsd -0x8(%r10,%rax,8),%xmm12,%xmm14
  817d2d:	c4 41 0b 5c 3c c3    	vsubsd (%r11,%rax,8),%xmm14,%xmm15
  817d33:	c4 41 03 5c 64 c4 f8 	vsubsd -0x8(%r12,%rax,8),%xmm15,%xmm12
  817d3a:	48 ff c0             	inc    %rax
  817d3d:	c4 41 13 5e f4       	vdivsd %xmm12,%xmm13,%xmm14
  817d42:	c4 41 7b 10 3c 3e    	vmovsd (%r14,%rdi,1),%xmm15
  817d48:	c4 41 63 59 e6       	vmulsd %xmm14,%xmm3,%xmm12
  817d4d:	c4 01 03 5c 34 3e    	vsubsd (%r14,%r15,1),%xmm15,%xmm14
  817d53:	c4 41 7b 10 3c 0e    	vmovsd (%r14,%rcx,1),%xmm15
  817d59:	c4 41 1b 59 e6       	vmulsd %xmm14,%xmm12,%xmm12
  817d5e:	c4 41 03 58 74 36 f8 	vaddsd -0x8(%r14,%rsi,1),%xmm15,%xmm14
  817d65:	c4 41 1b 59 fe       	vmulsd %xmm14,%xmm12,%xmm15
  817d6a:	49 83 c6 08          	add    $0x8,%r14
  817d6e:	c4 41 7b 11 7d 08    	vmovsd %xmm15,0x8(%r13)
  817d74:	49 83 c5 08          	add    $0x8,%r13
  817d78:	48 3b c2             	cmp    %rdx,%rax
  817d7b:	72 a3                	jb     817d20 <pre_step3d_mod_mp_pre_step3d_tile_+0x3770>
  817d7d:	48 8b 8d 10 fe ff ff 	mov    -0x1f0(%rbp),%rcx
  817d84:	48 8b b5 18 fe ff ff 	mov    -0x1e8(%rbp),%rsi
  817d8b:	48 8b bd 20 fe ff ff 	mov    -0x1e0(%rbp),%rdi
  817d92:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  817d99:	48 ff c0             	inc    %rax
  817d9c:	48 03 bd 18 ff ff ff 	add    -0xe8(%rbp),%rdi
  817da3:	48 03 b5 30 ff ff ff 	add    -0xd0(%rbp),%rsi
  817daa:	48 03 8d 20 ff ff ff 	add    -0xe0(%rbp),%rcx
  817db1:	4c 03 85 28 ff ff ff 	add    -0xd8(%rbp),%r8
  817db8:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  817dbf:	48 3b 85 10 ff ff ff 	cmp    -0xf0(%rbp),%rax
  817dc6:	0f 82 66 fd ff ff    	jb     817b32 <pre_step3d_mod_mp_pre_step3d_tile_+0x3582>
  817dcc:	e9 39 04 00 00       	jmpq   81820a <pre_step3d_mod_mp_pre_step3d_tile_+0x3c5a>
  817dd1:	45 33 ed             	xor    %r13d,%r13d
  817dd4:	33 c9                	xor    %ecx,%ecx
  817dd6:	33 d2                	xor    %edx,%edx
  817dd8:	48 8b 85 20 fc ff ff 	mov    -0x3e0(%rbp),%rax
  817ddf:	33 f6                	xor    %esi,%esi
  817de1:	48 83 bd 10 ff ff ff 	cmpq   $0x0,-0xf0(%rbp)
  817de8:	00 
  817de9:	0f 8e 3e 04 00 00    	jle    81822d <pre_step3d_mod_mp_pre_step3d_tile_+0x3c7d>
  817def:	4c 8b b5 a8 f8 ff ff 	mov    -0x758(%rbp),%r14
  817df6:	4c 0f af f7          	imul   %rdi,%r14
  817dfa:	4c 8b bd 38 f8 ff ff 	mov    -0x7c8(%rbp),%r15
  817e01:	4c 8b a5 f0 fb ff ff 	mov    -0x410(%rbp),%r12
  817e08:	4c 0f af e7          	imul   %rdi,%r12
  817e0c:	4c 89 ad 38 ff ff ff 	mov    %r13,-0xc8(%rbp)
  817e13:	4d 03 fe             	add    %r14,%r15
  817e16:	4c 89 bd 08 fe ff ff 	mov    %r15,-0x1f8(%rbp)
  817e1d:	4c 8b bd 80 f8 ff ff 	mov    -0x780(%rbp),%r15
  817e24:	48 89 bd d8 f8 ff ff 	mov    %rdi,-0x728(%rbp)
  817e2b:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  817e32:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  817e39:	4d 03 fe             	add    %r14,%r15
  817e3c:	4c 89 bd 00 fe ff ff 	mov    %r15,-0x200(%rbp)
  817e43:	4c 8b bd 68 f8 ff ff 	mov    -0x798(%rbp),%r15
  817e4a:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  817e51:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  817e58:	4d 03 fe             	add    %r14,%r15
  817e5b:	4c 89 bd f8 fd ff ff 	mov    %r15,-0x208(%rbp)
  817e62:	4c 8b bd 70 f8 ff ff 	mov    -0x790(%rbp),%r15
  817e69:	4c 03 b5 98 f8 ff ff 	add    -0x768(%rbp),%r14
  817e70:	4c 89 b5 a8 fd ff ff 	mov    %r14,-0x258(%rbp)
  817e77:	4d 03 fc             	add    %r12,%r15
  817e7a:	4c 89 bd f0 fd ff ff 	mov    %r15,-0x210(%rbp)
  817e81:	4c 8b bd 28 f8 ff ff 	mov    -0x7d8(%rbp),%r15
  817e88:	4c 03 a5 30 f8 ff ff 	add    -0x7d0(%rbp),%r12
  817e8f:	4c 89 a5 a0 fd ff ff 	mov    %r12,-0x260(%rbp)
  817e96:	4d 03 f9             	add    %r9,%r15
  817e99:	4c 89 bd e8 fd ff ff 	mov    %r15,-0x218(%rbp)
  817ea0:	4c 8b bd 90 f8 ff ff 	mov    -0x770(%rbp),%r15
  817ea7:	4d 03 f9             	add    %r9,%r15
  817eaa:	4c 89 bd e0 fd ff ff 	mov    %r15,-0x220(%rbp)
  817eb1:	48 8b bd 00 ff ff ff 	mov    -0x100(%rbp),%rdi
  817eb8:	48 3b bd 08 ff ff ff 	cmp    -0xf8(%rbp),%rdi
  817ebf:	0f 8c 0b 03 00 00    	jl     8181d0 <pre_step3d_mod_mp_pre_step3d_tile_+0x3c20>
  817ec5:	48 83 7d c0 02       	cmpq   $0x2,-0x40(%rbp)
  817eca:	0f 8c 72 cc 00 00    	jl     824b42 <pre_step3d_mod_mp_pre_step3d_tile_+0x10592>
  817ed0:	48 8b bd a0 fd ff ff 	mov    -0x260(%rbp),%rdi
  817ed7:	45 33 db             	xor    %r11d,%r11d
  817eda:	4c 8b bd 00 fe ff ff 	mov    -0x200(%rbp),%r15
  817ee1:	4c 8b 95 08 fe ff ff 	mov    -0x1f8(%rbp),%r10
  817ee8:	4c 8b 8d f8 fd ff ff 	mov    -0x208(%rbp),%r9
  817eef:	4c 8d 2c 17          	lea    (%rdi,%rdx,1),%r13
  817ef3:	48 8b bd e8 fd ff ff 	mov    -0x218(%rbp),%rdi
  817efa:	4c 03 f9             	add    %rcx,%r15
  817efd:	4c 89 6d f0          	mov    %r13,-0x10(%rbp)
  817f01:	4c 03 d1             	add    %rcx,%r10
  817f04:	4c 8b 85 a8 fd ff ff 	mov    -0x258(%rbp),%r8
  817f0b:	4c 03 c9             	add    %rcx,%r9
  817f0e:	4c 8b a5 f0 fd ff ff 	mov    -0x210(%rbp),%r12
  817f15:	4c 8d 2c 37          	lea    (%rdi,%rsi,1),%r13
  817f19:	48 8b bd e0 fd ff ff 	mov    -0x220(%rbp),%rdi
  817f20:	4c 89 ad c0 fd ff ff 	mov    %r13,-0x240(%rbp)
  817f27:	4c 03 c1             	add    %rcx,%r8
  817f2a:	4c 8b 75 e0          	mov    -0x20(%rbp),%r14
  817f2e:	4c 03 e2             	add    %rdx,%r12
  817f31:	48 89 85 b0 fd ff ff 	mov    %rax,-0x250(%rbp)
  817f38:	4c 8d 2c 37          	lea    (%rdi,%rsi,1),%r13
  817f3c:	4c 89 ad b8 fd ff ff 	mov    %r13,-0x248(%rbp)
  817f43:	45 33 ed             	xor    %r13d,%r13d
  817f46:	33 ff                	xor    %edi,%edi
  817f48:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
  817f4f:	48 89 b5 38 fe ff ff 	mov    %rsi,-0x1c8(%rbp)
  817f56:	48 89 95 40 fe ff ff 	mov    %rdx,-0x1c0(%rbp)
  817f5d:	48 89 8d 48 fe ff ff 	mov    %rcx,-0x1b8(%rbp)
  817f64:	4c 89 b5 28 fe ff ff 	mov    %r14,-0x1d8(%rbp)
  817f6b:	4c 89 7d e8          	mov    %r15,-0x18(%rbp)
  817f6f:	48 8b b5 b0 fd ff ff 	mov    -0x250(%rbp),%rsi
  817f76:	48 89 f8             	mov    %rdi,%rax
  817f79:	48 8b 95 b8 fd ff ff 	mov    -0x248(%rbp),%rdx
  817f80:	48 8b 8d c0 fd ff ff 	mov    -0x240(%rbp),%rcx
  817f87:	4c 8b 7d e8          	mov    -0x18(%rbp),%r15
  817f8b:	49 83 c3 02          	add    $0x2,%r11
  817f8f:	4c 8b 75 d0          	mov    -0x30(%rbp),%r14
  817f93:	4d 03 fd             	add    %r13,%r15
  817f96:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  817f9b:	c4 01 19 16 34 37    	vmovhpd (%r15,%r14,1),%xmm12,%xmm14
  817fa1:	4f 8d 3c 28          	lea    (%r8,%r13,1),%r15
  817fa5:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  817faa:	c4 01 01 16 24 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm12
  817fb0:	4f 8d 3c 2a          	lea    (%r10,%r13,1),%r15
  817fb4:	c4 41 09 58 f4       	vaddpd %xmm12,%xmm14,%xmm14
  817fb9:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  817fbe:	c4 01 01 16 24 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm12
  817fc4:	4f 8d 3c 29          	lea    (%r9,%r13,1),%r15
  817fc8:	c4 41 09 5c f4       	vsubpd %xmm12,%xmm14,%xmm14
  817fcd:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  817fd2:	4f 8d 6c 75 00       	lea    0x0(%r13,%r14,2),%r13
  817fd7:	c4 01 01 16 24 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm12
  817fdd:	4d 8d 34 3c          	lea    (%r12,%rdi,1),%r14
  817fe1:	c4 41 09 5c fc       	vsubpd %xmm12,%xmm14,%xmm15
  817fe6:	c4 41 79 5e f7       	vdivpd %xmm15,%xmm0,%xmm14
  817feb:	4c 8b 7d c8          	mov    -0x38(%rbp),%r15
  817fef:	c4 41 7b 10 26       	vmovsd (%r14),%xmm12
  817ff4:	c4 41 09 59 f1       	vmulpd %xmm9,%xmm14,%xmm14
  817ff9:	c4 01 19 16 3c 3e    	vmovhpd (%r14,%r15,1),%xmm12,%xmm15
  817fff:	4c 8b 75 f0          	mov    -0x10(%rbp),%r14
  818003:	4c 03 f7             	add    %rdi,%r14
  818006:	c4 41 7b 10 26       	vmovsd (%r14),%xmm12
  81800b:	4a 8d 3c 7f          	lea    (%rdi,%r15,2),%rdi
  81800f:	c4 01 19 16 24 3e    	vmovhpd (%r14,%r15,1),%xmm12,%xmm12
  818015:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
  818019:	c4 41 01 5c fc       	vsubpd %xmm12,%xmm15,%xmm15
  81801e:	4c 8b 75 d8          	mov    -0x28(%rbp),%r14
  818022:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  818027:	c4 41 09 59 f7       	vmulpd %xmm15,%xmm14,%xmm14
  81802c:	c4 01 19 16 24 37    	vmovhpd (%r15,%r14,1),%xmm12,%xmm12
  818032:	4c 8d 3c 02          	lea    (%rdx,%rax,1),%r15
  818036:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81803b:	4a 8d 04 70          	lea    (%rax,%r14,2),%rax
  81803f:	c4 01 01 16 3c 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm15
  818045:	c4 41 19 58 e7       	vaddpd %xmm15,%xmm12,%xmm12
  81804a:	c4 41 09 59 f4       	vmulpd %xmm12,%xmm14,%xmm14
  81804f:	c5 79 11 76 08       	vmovupd %xmm14,0x8(%rsi)
  818054:	48 83 c6 10          	add    $0x10,%rsi
  818058:	4c 3b 5d e0          	cmp    -0x20(%rbp),%r11
  81805c:	0f 82 25 ff ff ff    	jb     817f87 <pre_step3d_mod_mp_pre_step3d_tile_+0x39d7>
  818062:	4c 8b b5 28 fe ff ff 	mov    -0x1d8(%rbp),%r14
  818069:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
  818070:	48 8b b5 38 fe ff ff 	mov    -0x1c8(%rbp),%rsi
  818077:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
  81807e:	48 8b 8d 48 fe ff ff 	mov    -0x1b8(%rbp),%rcx
  818085:	4c 8b 6d d8          	mov    -0x28(%rbp),%r13
  818089:	4c 8b 65 c8          	mov    -0x38(%rbp),%r12
  81808d:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
  818091:	4d 0f af ee          	imul   %r14,%r13
  818095:	4d 0f af e6          	imul   %r14,%r12
  818099:	4d 0f af de          	imul   %r14,%r11
  81809d:	4c 3b 75 c0          	cmp    -0x40(%rbp),%r14
  8180a1:	0f 83 29 01 00 00    	jae    8181d0 <pre_step3d_mod_mp_pre_step3d_tile_+0x3c20>
  8180a7:	4c 8b 8d 00 fe ff ff 	mov    -0x200(%rbp),%r9
  8180ae:	48 8b bd f8 fd ff ff 	mov    -0x208(%rbp),%rdi
  8180b5:	4c 8b bd a8 fd ff ff 	mov    -0x258(%rbp),%r15
  8180bc:	4c 8b 95 08 fe ff ff 	mov    -0x1f8(%rbp),%r10
  8180c3:	4d 8d 04 09          	lea    (%r9,%rcx,1),%r8
  8180c7:	4c 89 85 d0 fd ff ff 	mov    %r8,-0x230(%rbp)
  8180ce:	4c 8d 0c 0f          	lea    (%rdi,%rcx,1),%r9
  8180d2:	48 8b bd f0 fd ff ff 	mov    -0x210(%rbp),%rdi
  8180d9:	4d 8d 04 0f          	lea    (%r15,%rcx,1),%r8
  8180dd:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
  8180e4:	4c 03 d1             	add    %rcx,%r10
  8180e7:	48 89 b5 38 fe ff ff 	mov    %rsi,-0x1c8(%rbp)
  8180ee:	48 89 95 40 fe ff ff 	mov    %rdx,-0x1c0(%rbp)
  8180f5:	4c 8d 3c 17          	lea    (%rdi,%rdx,1),%r15
  8180f9:	4c 89 bd d8 fd ff ff 	mov    %r15,-0x228(%rbp)
  818100:	4c 8b bd e8 fd ff ff 	mov    -0x218(%rbp),%r15
  818107:	48 8b bd a0 fd ff ff 	mov    -0x260(%rbp),%rdi
  81810e:	48 89 8d 48 fe ff ff 	mov    %rcx,-0x1b8(%rbp)
  818115:	4c 03 fe             	add    %rsi,%r15
  818118:	4c 89 bd c8 fd ff ff 	mov    %r15,-0x238(%rbp)
  81811f:	4c 8b bd e0 fd ff ff 	mov    -0x220(%rbp),%r15
  818126:	48 03 fa             	add    %rdx,%rdi
  818129:	48 8b 8d c8 fd ff ff 	mov    -0x238(%rbp),%rcx
  818130:	4c 03 fe             	add    %rsi,%r15
  818133:	4c 89 fa             	mov    %r15,%rdx
  818136:	4e 8d 3c f0          	lea    (%rax,%r14,8),%r15
  81813a:	4c 89 f8             	mov    %r15,%rax
  81813d:	48 8b b5 d8 fd ff ff 	mov    -0x228(%rbp),%rsi
  818144:	4c 8b bd d0 fd ff ff 	mov    -0x230(%rbp),%r15
  81814b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  818150:	c4 01 7b 10 24 3b    	vmovsd (%r11,%r15,1),%xmm12
  818156:	49 ff c6             	inc    %r14
  818159:	c4 01 1b 58 34 03    	vaddsd (%r11,%r8,1),%xmm12,%xmm14
  81815f:	c4 01 0b 5c 3c 13    	vsubsd (%r11,%r10,1),%xmm14,%xmm15
  818165:	c4 01 03 5c 24 0b    	vsubsd (%r11,%r9,1),%xmm15,%xmm12
  81816b:	c4 41 13 5e f4       	vdivsd %xmm12,%xmm13,%xmm14
  818170:	c4 41 7b 10 3c 34    	vmovsd (%r12,%rsi,1),%xmm15
  818176:	c4 41 63 59 e6       	vmulsd %xmm14,%xmm3,%xmm12
  81817b:	c4 41 03 5c 34 3c    	vsubsd (%r12,%rdi,1),%xmm15,%xmm14
  818181:	c4 41 7b 10 7c 0d 00 	vmovsd 0x0(%r13,%rcx,1),%xmm15
  818188:	c4 41 1b 59 e6       	vmulsd %xmm14,%xmm12,%xmm12
  81818d:	c4 41 03 58 74 15 00 	vaddsd 0x0(%r13,%rdx,1),%xmm15,%xmm14
  818194:	c4 41 1b 59 fe       	vmulsd %xmm14,%xmm12,%xmm15
  818199:	4c 03 5d d0          	add    -0x30(%rbp),%r11
  81819d:	4c 03 65 c8          	add    -0x38(%rbp),%r12
  8181a1:	4c 03 6d d8          	add    -0x28(%rbp),%r13
  8181a5:	c5 7b 11 78 08       	vmovsd %xmm15,0x8(%rax)
  8181aa:	48 83 c0 08          	add    $0x8,%rax
  8181ae:	4c 3b 75 c0          	cmp    -0x40(%rbp),%r14
  8181b2:	72 9c                	jb     818150 <pre_step3d_mod_mp_pre_step3d_tile_+0x3ba0>
  8181b4:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
  8181bb:	48 8b b5 38 fe ff ff 	mov    -0x1c8(%rbp),%rsi
  8181c2:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
  8181c9:	48 8b 8d 48 fe ff ff 	mov    -0x1b8(%rbp),%rcx
  8181d0:	48 8b bd 38 ff ff ff 	mov    -0xc8(%rbp),%rdi
  8181d7:	48 ff c7             	inc    %rdi
  8181da:	48 03 8d 30 ff ff ff 	add    -0xd0(%rbp),%rcx
  8181e1:	48 03 95 20 ff ff ff 	add    -0xe0(%rbp),%rdx
  8181e8:	48 03 b5 28 ff ff ff 	add    -0xd8(%rbp),%rsi
  8181ef:	48 03 85 18 ff ff ff 	add    -0xe8(%rbp),%rax
  8181f6:	48 89 bd 38 ff ff ff 	mov    %rdi,-0xc8(%rbp)
  8181fd:	48 3b bd 10 ff ff ff 	cmp    -0xf0(%rbp),%rdi
  818204:	0f 82 a7 fc ff ff    	jb     817eb1 <pre_step3d_mod_mp_pre_step3d_tile_+0x3901>
  81820a:	48 8b bd d8 f8 ff ff 	mov    -0x728(%rbp),%rdi
  818211:	44 8b 85 b8 f8 ff ff 	mov    -0x748(%rbp),%r8d
  818218:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  81821f:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  818226:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  81822d:	48 83 bd 70 fe ff ff 	cmpq   $0x8,-0x190(%rbp)
  818234:	08 
  818235:	0f 85 47 02 00 00    	jne    818482 <pre_step3d_mod_mp_pre_step3d_tile_+0x3ed2>
  81823b:	48 83 bd 68 fe ff ff 	cmpq   $0x8,-0x198(%rbp)
  818242:	08 
  818243:	0f 85 39 02 00 00    	jne    818482 <pre_step3d_mod_mp_pre_step3d_tile_+0x3ed2>
  818249:	48 83 bd 78 fe ff ff 	cmpq   $0x8,-0x188(%rbp)
  818250:	08 
  818251:	0f 85 2b 02 00 00    	jne    818482 <pre_step3d_mod_mp_pre_step3d_tile_+0x3ed2>
  818257:	48 83 bd 80 fe ff ff 	cmpq   $0x8,-0x180(%rbp)
  81825e:	08 
  81825f:	0f 85 1d 02 00 00    	jne    818482 <pre_step3d_mod_mp_pre_step3d_tile_+0x3ed2>
  818265:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  81826c:	48 3b 85 08 ff ff ff 	cmp    -0xf8(%rbp),%rax
  818273:	0f 8c ae 06 00 00    	jl     818927 <pre_step3d_mod_mp_pre_step3d_tile_+0x4377>
  818279:	48 83 7d c0 04       	cmpq   $0x4,-0x40(%rbp)
  81827e:	0f 8c 07 c8 00 00    	jl     824a8b <pre_step3d_mod_mp_pre_step3d_tile_+0x104db>
  818284:	48 8b 95 d0 f6 ff ff 	mov    -0x930(%rbp),%rdx
  81828b:	45 33 f6             	xor    %r14d,%r14d
  81828e:	48 8b b5 c8 f6 ff ff 	mov    -0x938(%rbp),%rsi
  818295:	4c 8b ad b8 f6 ff ff 	mov    -0x948(%rbp),%r13
  81829c:	4c 8b bd c0 f6 ff ff 	mov    -0x940(%rbp),%r15
  8182a3:	48 0f af d7          	imul   %rdi,%rdx
  8182a7:	48 0f af f7          	imul   %rdi,%rsi
  8182ab:	4c 0f af ef          	imul   %rdi,%r13
  8182af:	4c 0f af ff          	imul   %rdi,%r15
  8182b3:	4c 8b a5 f8 f6 ff ff 	mov    -0x908(%rbp),%r12
  8182ba:	48 8b 8d e8 f6 ff ff 	mov    -0x918(%rbp),%rcx
  8182c1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  8182c5:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  8182cc:	4c 03 e6             	add    %rsi,%r12
  8182cf:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  8182d6:	48 03 ca             	add    %rdx,%rcx
  8182d9:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  8182e0:	4c 03 ad 00 f7 ff ff 	add    -0x900(%rbp),%r13
  8182e7:	48 03 b5 f0 f6 ff ff 	add    -0x910(%rbp),%rsi
  8182ee:	48 03 95 e0 f6 ff ff 	add    -0x920(%rbp),%rdx
  8182f5:	4c 03 bd d8 f6 ff ff 	add    -0x928(%rbp),%r15
  8182fc:	4c 8b 8d 50 fe ff ff 	mov    -0x1b0(%rbp),%r9
  818303:	4c 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%r10
  81830a:	4c 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%r11
  818311:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  818318:	49 89 c0             	mov    %rax,%r8
  81831b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  818320:	c4 01 4d 59 24 f7    	vmulpd (%r15,%r14,8),%ymm6,%ymm12
  818326:	c4 21 7d 10 34 f2    	vmovupd (%rdx,%r14,8),%ymm14
  81832c:	c4 01 7d 11 24 f2    	vmovupd %ymm12,(%r10,%r14,8)
  818332:	c4 21 7d 10 24 f6    	vmovupd (%rsi,%r14,8),%ymm12
  818338:	c4 21 0d 58 7c f1 f8 	vaddpd -0x8(%rcx,%r14,8),%ymm14,%ymm15
  81833f:	c4 41 55 59 f7       	vmulpd %ymm15,%ymm5,%ymm14
  818344:	c4 01 1d 58 7c f4 f8 	vaddpd -0x8(%r12,%r14,8),%ymm12,%ymm15
  81834b:	c4 41 0d 59 e7       	vmulpd %ymm15,%ymm14,%ymm12
  818350:	c4 01 4d 59 74 f5 00 	vmulpd 0x0(%r13,%r14,8),%ymm6,%ymm14
  818357:	c4 01 7d 11 24 f3    	vmovupd %ymm12,(%r11,%r14,8)
  81835d:	c4 01 7d 11 34 f1    	vmovupd %ymm14,(%r9,%r14,8)
  818363:	49 83 c6 04          	add    $0x4,%r14
  818367:	4d 3b f0             	cmp    %r8,%r14
  81836a:	72 b4                	jb     818320 <pre_step3d_mod_mp_pre_step3d_tile_+0x3d70>
  81836c:	44 8b 85 b8 f8 ff ff 	mov    -0x748(%rbp),%r8d
  818373:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  81837a:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  818381:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  818388:	48 3b 45 c0          	cmp    -0x40(%rbp),%rax
  81838c:	0f 83 95 05 00 00    	jae    818927 <pre_step3d_mod_mp_pre_step3d_tile_+0x4377>
  818392:	4c 8b ad d0 f6 ff ff 	mov    -0x930(%rbp),%r13
  818399:	48 8b 8d c8 f6 ff ff 	mov    -0x938(%rbp),%rcx
  8183a0:	4c 8b a5 b8 f6 ff ff 	mov    -0x948(%rbp),%r12
  8183a7:	4c 8b b5 c0 f6 ff ff 	mov    -0x940(%rbp),%r14
  8183ae:	4c 0f af ef          	imul   %rdi,%r13
  8183b2:	48 0f af cf          	imul   %rdi,%rcx
  8183b6:	4c 0f af e7          	imul   %rdi,%r12
  8183ba:	4c 0f af f7          	imul   %rdi,%r14
  8183be:	48 8b b5 f8 f6 ff ff 	mov    -0x908(%rbp),%rsi
  8183c5:	48 8b 95 e8 f6 ff ff 	mov    -0x918(%rbp),%rdx
  8183cc:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  8183d3:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  8183da:	48 03 f1             	add    %rcx,%rsi
  8183dd:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  8183e4:	49 03 d5             	add    %r13,%rdx
  8183e7:	4c 03 a5 00 f7 ff ff 	add    -0x900(%rbp),%r12
  8183ee:	48 03 8d f0 f6 ff ff 	add    -0x910(%rbp),%rcx
  8183f5:	4c 03 ad e0 f6 ff ff 	add    -0x920(%rbp),%r13
  8183fc:	4c 03 b5 d8 f6 ff ff 	add    -0x928(%rbp),%r14
  818403:	4c 8b 8d 50 fe ff ff 	mov    -0x1b0(%rbp),%r9
  81840a:	4c 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%r10
  818411:	4c 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%r11
  818418:	4c 8b 7d c0          	mov    -0x40(%rbp),%r15
  81841c:	0f 1f 40 00          	nopl   0x0(%rax)
  818420:	c4 41 7b 10 74 c5 00 	vmovsd 0x0(%r13,%rax,8),%xmm14
  818427:	c4 41 6b 59 24 c6    	vmulsd (%r14,%rax,8),%xmm2,%xmm12
  81842d:	c5 0b 58 7c c2 f8    	vaddsd -0x8(%rdx,%rax,8),%xmm14,%xmm15
  818433:	c4 41 7b 11 24 c2    	vmovsd %xmm12,(%r10,%rax,8)
  818439:	c5 7b 10 24 c1       	vmovsd (%rcx,%rax,8),%xmm12
  81843e:	c4 41 5b 59 f7       	vmulsd %xmm15,%xmm4,%xmm14
  818443:	c5 1b 58 7c c6 f8    	vaddsd -0x8(%rsi,%rax,8),%xmm12,%xmm15
  818449:	c4 41 0b 59 e7       	vmulsd %xmm15,%xmm14,%xmm12
  81844e:	c4 41 6b 59 34 c4    	vmulsd (%r12,%rax,8),%xmm2,%xmm14
  818454:	c4 41 7b 11 24 c3    	vmovsd %xmm12,(%r11,%rax,8)
  81845a:	c4 41 7b 11 34 c1    	vmovsd %xmm14,(%r9,%rax,8)
  818460:	48 ff c0             	inc    %rax
  818463:	49 3b c7             	cmp    %r15,%rax
  818466:	72 b8                	jb     818420 <pre_step3d_mod_mp_pre_step3d_tile_+0x3e70>
  818468:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  81846f:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  818476:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  81847d:	e9 a5 04 00 00       	jmpq   818927 <pre_step3d_mod_mp_pre_step3d_tile_+0x4377>
  818482:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  818489:	48 3b 85 08 ff ff ff 	cmp    -0xf8(%rbp),%rax
  818490:	0f 8c 91 04 00 00    	jl     818927 <pre_step3d_mod_mp_pre_step3d_tile_+0x4377>
  818496:	48 83 7d c0 04       	cmpq   $0x4,-0x40(%rbp)
  81849b:	0f 8c 91 c6 00 00    	jl     824b32 <pre_step3d_mod_mp_pre_step3d_tile_+0x10582>
  8184a1:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
  8184a5:	45 33 e4             	xor    %r12d,%r12d
  8184a8:	48 89 95 e8 f8 ff ff 	mov    %rdx,-0x718(%rbp)
  8184af:	48 8b 95 c0 f6 ff ff 	mov    -0x940(%rbp),%rdx
  8184b6:	48 0f af d7          	imul   %rdi,%rdx
  8184ba:	4c 8b b5 d0 f6 ff ff 	mov    -0x930(%rbp),%r14
  8184c1:	4c 0f af f7          	imul   %rdi,%r14
  8184c5:	4c 8b ad c8 f6 ff ff 	mov    -0x938(%rbp),%r13
  8184cc:	4c 0f af ef          	imul   %rdi,%r13
  8184d0:	48 8b 85 b0 f6 ff ff 	mov    -0x950(%rbp),%rax
  8184d7:	48 8b b5 20 f7 ff ff 	mov    -0x8e0(%rbp),%rsi
  8184de:	4c 8b bd b8 f6 ff ff 	mov    -0x948(%rbp),%r15
  8184e5:	4c 0f af ff          	imul   %rdi,%r15
  8184e9:	48 89 bd d8 f8 ff ff 	mov    %rdi,-0x728(%rbp)
  8184f0:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
  8184f4:	48 89 8d b8 fe ff ff 	mov    %rcx,-0x148(%rbp)
  8184fb:	4a 8d 04 36          	lea    (%rsi,%r14,1),%rax
  8184ff:	48 8b 8d 40 f7 ff ff 	mov    -0x8c0(%rbp),%rcx
  818506:	48 89 85 c0 fe ff ff 	mov    %rax,-0x140(%rbp)
  81850d:	48 8b 85 38 f7 ff ff 	mov    -0x8c8(%rbp),%rax
  818514:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  81851b:	4a 8d 34 31          	lea    (%rcx,%r14,1),%rsi
  81851f:	48 89 b5 d0 fe ff ff 	mov    %rsi,-0x130(%rbp)
  818526:	48 8b b5 18 f7 ff ff 	mov    -0x8e8(%rbp),%rsi
  81852d:	4a 8d 0c 30          	lea    (%rax,%r14,1),%rcx
  818531:	48 89 8d d8 fe ff ff 	mov    %rcx,-0x128(%rbp)
  818538:	48 8b 8d 30 f7 ff ff 	mov    -0x8d0(%rbp),%rcx
  81853f:	4c 03 b5 10 f7 ff ff 	add    -0x8f0(%rbp),%r14
  818546:	4a 8d 04 2e          	lea    (%rsi,%r13,1),%rax
  81854a:	48 89 85 c8 fe ff ff 	mov    %rax,-0x138(%rbp)
  818551:	48 8b 85 28 f7 ff ff 	mov    -0x8d8(%rbp),%rax
  818558:	4a 8d 34 29          	lea    (%rcx,%r13,1),%rsi
  81855c:	48 89 b5 b0 fe ff ff 	mov    %rsi,-0x150(%rbp)
  818563:	48 8b b5 a8 f6 ff ff 	mov    -0x958(%rbp),%rsi
  81856a:	4c 89 b5 98 fe ff ff 	mov    %r14,-0x168(%rbp)
  818571:	4a 8d 0c 28          	lea    (%rax,%r13,1),%rcx
  818575:	48 89 8d a8 fe ff ff 	mov    %rcx,-0x158(%rbp)
  81857c:	33 c9                	xor    %ecx,%ecx
  81857e:	4c 03 ad 08 f7 ff ff 	add    -0x8f8(%rbp),%r13
  818585:	4a 8d 04 3e          	lea    (%rsi,%r15,1),%rax
  818589:	33 f6                	xor    %esi,%esi
  81858b:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
  818592:	33 c0                	xor    %eax,%eax
  818594:	4c 03 bd 50 f7 ff ff 	add    -0x8b0(%rbp),%r15
  81859b:	4c 89 ad 88 fe ff ff 	mov    %r13,-0x178(%rbp)
  8185a2:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  8185a9:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  8185b0:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  8185b7:	48 03 95 48 f7 ff ff 	add    -0x8b8(%rbp),%rdx
  8185be:	49 89 c6             	mov    %rax,%r14
  8185c1:	48 8b bd 60 fe ff ff 	mov    -0x1a0(%rbp),%rdi
  8185c8:	4c 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%r8
  8185cf:	4c 8b 8d 68 fe ff ff 	mov    -0x198(%rbp),%r9
  8185d6:	4c 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%r10
  8185dd:	4c 8b 9d 80 fe ff ff 	mov    -0x180(%rbp),%r11
  8185e4:	4c 8b ad 78 fe ff ff 	mov    -0x188(%rbp),%r13
  8185eb:	4c 89 bd 90 fe ff ff 	mov    %r15,-0x170(%rbp)
  8185f2:	4c 8b bd b8 fe ff ff 	mov    -0x148(%rbp),%r15
  8185f9:	4c 03 f9             	add    %rcx,%r15
  8185fc:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  818601:	c4 01 19 16 3c 17    	vmovhpd (%r15,%r10,1),%xmm12,%xmm15
  818607:	c4 41 29 59 f7       	vmulpd %xmm15,%xmm10,%xmm14
  81860c:	4c 8b bd d0 fe ff ff 	mov    -0x130(%rbp),%r15
  818613:	c4 21 79 11 34 e7    	vmovupd %xmm14,(%rdi,%r12,8)
  818619:	4c 03 fe             	add    %rsi,%r15
  81861c:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  818621:	c4 01 19 16 34 2f    	vmovhpd (%r15,%r13,1),%xmm12,%xmm14
  818627:	4c 8b bd d8 fe ff ff 	mov    -0x128(%rbp),%r15
  81862e:	4c 03 fe             	add    %rsi,%r15
  818631:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  818636:	c4 01 01 16 24 2f    	vmovhpd (%r15,%r13,1),%xmm15,%xmm12
  81863c:	c4 41 09 58 fc       	vaddpd %xmm12,%xmm14,%xmm15
  818641:	4c 8b bd b0 fe ff ff 	mov    -0x150(%rbp),%r15
  818648:	c4 41 21 59 f7       	vmulpd %xmm15,%xmm11,%xmm14
  81864d:	4c 03 f8             	add    %rax,%r15
  818650:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  818655:	c4 01 19 16 3c 1f    	vmovhpd (%r15,%r11,1),%xmm12,%xmm15
  81865b:	4c 8b bd a8 fe ff ff 	mov    -0x158(%rbp),%r15
  818662:	4c 03 f8             	add    %rax,%r15
  818665:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81866a:	c4 01 19 16 24 1f    	vmovhpd (%r15,%r11,1),%xmm12,%xmm12
  818670:	c4 41 01 58 fc       	vaddpd %xmm12,%xmm15,%xmm15
  818675:	c4 41 09 59 f7       	vmulpd %xmm15,%xmm14,%xmm14
  81867a:	4c 8b bd a0 fe ff ff 	mov    -0x160(%rbp),%r15
  818681:	c4 01 79 11 34 e0    	vmovupd %xmm14,(%r8,%r12,8)
  818687:	4d 03 fe             	add    %r14,%r15
  81868a:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  81868f:	c4 01 09 16 24 0f    	vmovhpd (%r15,%r9,1),%xmm14,%xmm12
  818695:	c4 41 29 59 fc       	vmulpd %xmm12,%xmm10,%xmm15
  81869a:	4c 8b bd 50 fe ff ff 	mov    -0x1b0(%rbp),%r15
  8186a1:	c4 01 79 11 3c e7    	vmovupd %xmm15,(%r15,%r12,8)
  8186a7:	4c 8d 3c 0a          	lea    (%rdx,%rcx,1),%r15
  8186ab:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  8186b0:	4a 8d 0c 91          	lea    (%rcx,%r10,4),%rcx
  8186b4:	c4 01 09 16 24 17    	vmovhpd (%r15,%r10,1),%xmm14,%xmm12
  8186ba:	c4 41 29 59 fc       	vmulpd %xmm12,%xmm10,%xmm15
  8186bf:	4c 8b bd 98 fe ff ff 	mov    -0x168(%rbp),%r15
  8186c6:	c4 21 79 11 7c e7 10 	vmovupd %xmm15,0x10(%rdi,%r12,8)
  8186cd:	4c 03 fe             	add    %rsi,%r15
  8186d0:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  8186d5:	c4 01 09 16 3c 2f    	vmovhpd (%r15,%r13,1),%xmm14,%xmm15
  8186db:	4c 8b bd c0 fe ff ff 	mov    -0x140(%rbp),%r15
  8186e2:	4c 03 fe             	add    %rsi,%r15
  8186e5:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  8186ea:	4a 8d 34 ae          	lea    (%rsi,%r13,4),%rsi
  8186ee:	c4 01 19 16 34 2f    	vmovhpd (%r15,%r13,1),%xmm12,%xmm14
  8186f4:	c4 41 01 58 e6       	vaddpd %xmm14,%xmm15,%xmm12
  8186f9:	4c 8b bd 88 fe ff ff 	mov    -0x178(%rbp),%r15
  818700:	c4 41 21 59 f4       	vmulpd %xmm12,%xmm11,%xmm14
  818705:	4c 03 f8             	add    %rax,%r15
  818708:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81870d:	c4 01 01 16 24 1f    	vmovhpd (%r15,%r11,1),%xmm15,%xmm12
  818713:	4c 8b bd c8 fe ff ff 	mov    -0x138(%rbp),%r15
  81871a:	4c 03 f8             	add    %rax,%r15
  81871d:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  818722:	4a 8d 04 98          	lea    (%rax,%r11,4),%rax
  818726:	c4 01 01 16 3c 1f    	vmovhpd (%r15,%r11,1),%xmm15,%xmm15
  81872c:	c4 41 19 58 e7       	vaddpd %xmm15,%xmm12,%xmm12
  818731:	c4 41 09 59 f4       	vmulpd %xmm12,%xmm14,%xmm14
  818736:	90                   	nop
  818737:	4c 8b bd 90 fe ff ff 	mov    -0x170(%rbp),%r15
  81873e:	c4 01 79 11 74 e0 10 	vmovupd %xmm14,0x10(%r8,%r12,8)
  818745:	4d 03 fe             	add    %r14,%r15
  818748:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81874d:	4f 8d 34 8e          	lea    (%r14,%r9,4),%r14
  818751:	c4 01 19 16 34 0f    	vmovhpd (%r15,%r9,1),%xmm12,%xmm14
  818757:	c4 41 29 59 fe       	vmulpd %xmm14,%xmm10,%xmm15
  81875c:	4c 8b bd 58 fe ff ff 	mov    -0x1a8(%rbp),%r15
  818763:	c4 01 79 11 7c e7 10 	vmovupd %xmm15,0x10(%r15,%r12,8)
  81876a:	49 83 c4 04          	add    $0x4,%r12
  81876e:	4c 3b 65 a0          	cmp    -0x60(%rbp),%r12
  818772:	0f 82 7a fe ff ff    	jb     8185f2 <pre_step3d_mod_mp_pre_step3d_tile_+0x4042>
  818778:	48 8b bd d8 f8 ff ff 	mov    -0x728(%rbp),%rdi
  81877f:	44 8b 85 b8 f8 ff ff 	mov    -0x748(%rbp),%r8d
  818786:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  81878d:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  818794:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  81879b:	48 8b 85 e8 f8 ff ff 	mov    -0x718(%rbp),%rax
  8187a2:	4c 8b ad 80 fe ff ff 	mov    -0x180(%rbp),%r13
  8187a9:	4c 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%r15
  8187b0:	4c 8b a5 68 fe ff ff 	mov    -0x198(%rbp),%r12
  8187b7:	48 8b b5 70 fe ff ff 	mov    -0x190(%rbp),%rsi
  8187be:	4c 0f af e8          	imul   %rax,%r13
  8187c2:	4c 0f af f8          	imul   %rax,%r15
  8187c6:	4c 0f af e0          	imul   %rax,%r12
  8187ca:	48 0f af f0          	imul   %rax,%rsi
  8187ce:	48 3b 45 c0          	cmp    -0x40(%rbp),%rax
  8187d2:	0f 83 4f 01 00 00    	jae    818927 <pre_step3d_mod_mp_pre_step3d_tile_+0x4377>
  8187d8:	48 8b 95 d0 f6 ff ff 	mov    -0x930(%rbp),%rdx
  8187df:	48 0f af d7          	imul   %rdi,%rdx
  8187e3:	4c 8b b5 c8 f6 ff ff 	mov    -0x938(%rbp),%r14
  8187ea:	4c 0f af f7          	imul   %rdi,%r14
  8187ee:	48 8b 85 40 f7 ff ff 	mov    -0x8c0(%rbp),%rax
  8187f5:	48 8b 8d c0 f6 ff ff 	mov    -0x940(%rbp),%rcx
  8187fc:	48 0f af cf          	imul   %rdi,%rcx
  818800:	48 89 bd d8 f8 ff ff 	mov    %rdi,-0x728(%rbp)
  818807:	48 03 c2             	add    %rdx,%rax
  81880a:	48 89 85 58 f7 ff ff 	mov    %rax,-0x8a8(%rbp)
  818811:	48 8b 85 30 f7 ff ff 	mov    -0x8d0(%rbp),%rax
  818818:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  81881f:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  818826:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  81882d:	49 03 c6             	add    %r14,%rax
  818830:	48 89 85 60 f7 ff ff 	mov    %rax,-0x8a0(%rbp)
  818837:	48 8b 85 b8 f6 ff ff 	mov    -0x948(%rbp),%rax
  81883e:	48 0f af c7          	imul   %rdi,%rax
  818842:	48 03 8d b0 f6 ff ff 	add    -0x950(%rbp),%rcx
  818849:	48 03 95 38 f7 ff ff 	add    -0x8c8(%rbp),%rdx
  818850:	4c 03 b5 28 f7 ff ff 	add    -0x8d8(%rbp),%r14
  818857:	48 03 85 a8 f6 ff ff 	add    -0x958(%rbp),%rax
  81885e:	48 8b bd 60 f7 ff ff 	mov    -0x8a0(%rbp),%rdi
  818865:	4c 8b 85 58 f7 ff ff 	mov    -0x8a8(%rbp),%r8
  81886c:	4c 8b 8d e8 f8 ff ff 	mov    -0x718(%rbp),%r9
  818873:	4c 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%r10
  81887a:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  818881:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  818888:	00 
  818889:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  818890:	c4 01 7b 10 34 07    	vmovsd (%r15,%r8,1),%xmm14
  818896:	c5 6b 59 24 0e       	vmulsd (%rsi,%rcx,1),%xmm2,%xmm12
  81889b:	c4 41 0b 58 3c 17    	vaddsd (%r15,%rdx,1),%xmm14,%xmm15
  8188a1:	4c 8b 9d 60 fe ff ff 	mov    -0x1a0(%rbp),%r11
  8188a8:	c4 41 5b 59 f7       	vmulsd %xmm15,%xmm4,%xmm14
  8188ad:	c4 01 7b 11 24 cb    	vmovsd %xmm12,(%r11,%r9,8)
  8188b3:	c4 41 7b 10 64 3d 00 	vmovsd 0x0(%r13,%rdi,1),%xmm12
  8188ba:	4c 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%r11
  8188c1:	48 03 b5 70 fe ff ff 	add    -0x190(%rbp),%rsi
  8188c8:	4c 03 bd 78 fe ff ff 	add    -0x188(%rbp),%r15
  8188cf:	c4 01 1b 58 7c 35 00 	vaddsd 0x0(%r13,%r14,1),%xmm12,%xmm15
  8188d6:	c4 41 0b 59 e7       	vmulsd %xmm15,%xmm14,%xmm12
  8188db:	c4 41 6b 59 34 04    	vmulsd (%r12,%rax,1),%xmm2,%xmm14
  8188e1:	c4 01 7b 11 24 cb    	vmovsd %xmm12,(%r11,%r9,8)
  8188e7:	c4 01 7b 11 34 ca    	vmovsd %xmm14,(%r10,%r9,8)
  8188ed:	49 ff c1             	inc    %r9
  8188f0:	4c 03 ad 80 fe ff ff 	add    -0x180(%rbp),%r13
  8188f7:	4c 03 a5 68 fe ff ff 	add    -0x198(%rbp),%r12
  8188fe:	4c 3b 4d c0          	cmp    -0x40(%rbp),%r9
  818902:	72 8c                	jb     818890 <pre_step3d_mod_mp_pre_step3d_tile_+0x42e0>
  818904:	48 8b bd d8 f8 ff ff 	mov    -0x728(%rbp),%rdi
  81890b:	44 8b 85 b8 f8 ff ff 	mov    -0x748(%rbp),%r8d
  818912:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  818919:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  818920:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  818927:	8b 85 e0 fb ff ff    	mov    -0x420(%rbp),%eax
  81892d:	3b 85 d8 fb ff ff    	cmp    -0x428(%rbp),%eax
  818933:	0f 85 3e 06 00 00    	jne    818f77 <pre_step3d_mod_mp_pre_step3d_tile_+0x49c7>
  818939:	48 83 7d c8 08       	cmpq   $0x8,-0x38(%rbp)
  81893e:	0f 85 0f 02 00 00    	jne    818b53 <pre_step3d_mod_mp_pre_step3d_tile_+0x45a3>
  818944:	48 83 bd 58 ff ff ff 	cmpq   $0x8,-0xa8(%rbp)
  81894b:	08 
  81894c:	0f 85 01 02 00 00    	jne    818b53 <pre_step3d_mod_mp_pre_step3d_tile_+0x45a3>
  818952:	45 33 e4             	xor    %r12d,%r12d
  818955:	33 f6                	xor    %esi,%esi
  818957:	33 c9                	xor    %ecx,%ecx
  818959:	45 33 ed             	xor    %r13d,%r13d
  81895c:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  818963:	00 
  818964:	0f 8e d7 14 00 00    	jle    819e41 <pre_step3d_mod_mp_pre_step3d_tile_+0x5891>
  81896a:	48 8b 95 f0 fb ff ff 	mov    -0x410(%rbp),%rdx
  818971:	4c 8b b5 48 f6 ff ff 	mov    -0x9b8(%rbp),%r14
  818978:	48 0f af d7          	imul   %rdi,%rdx
  81897c:	4c 0f af f7          	imul   %rdi,%r14
  818980:	c5 7d 10 25 d8 c9 0a 	vmovupd 0xac9d8(%rip),%ymm12        # 8c5360 <var$630.126.450+0x4a0>
  818987:	00 
  818988:	4c 8b bd 38 f6 ff ff 	mov    -0x9c8(%rbp),%r15
  81898f:	48 8b 85 50 f6 ff ff 	mov    -0x9b0(%rbp),%rax
  818996:	48 89 bd d8 f8 ff ff 	mov    %rdi,-0x728(%rbp)
  81899d:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  8189a4:	4c 03 fa             	add    %rdx,%r15
  8189a7:	48 03 95 88 f8 ff ff 	add    -0x778(%rbp),%rdx
  8189ae:	49 03 c6             	add    %r14,%rax
  8189b1:	4c 03 b5 80 f6 ff ff 	add    -0x980(%rbp),%r14
  8189b8:	48 89 95 30 fc ff ff 	mov    %rdx,-0x3d0(%rbp)
  8189bf:	4c 89 b5 28 fc ff ff 	mov    %r14,-0x3d8(%rbp)
  8189c6:	4c 89 bd 38 fc ff ff 	mov    %r15,-0x3c8(%rbp)
  8189cd:	48 89 85 40 fc ff ff 	mov    %rax,-0x3c0(%rbp)
  8189d4:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  8189db:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  8189e2:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  8189e9:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  8189ed:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  8189f4:	48 3b 85 08 ff ff ff 	cmp    -0xf8(%rbp),%rax
  8189fb:	0f 8c 05 01 00 00    	jl     818b06 <pre_step3d_mod_mp_pre_step3d_tile_+0x4556>
  818a01:	48 83 fa 04          	cmp    $0x4,%rdx
  818a05:	0f 8c 87 c0 00 00    	jl     824a92 <pre_step3d_mod_mp_pre_step3d_tile_+0x104e2>
  818a0b:	4c 8b 9d 60 fe ff ff 	mov    -0x1a0(%rbp),%r11
  818a12:	45 33 f6             	xor    %r14d,%r14d
  818a15:	4c 8b 95 20 fc ff ff 	mov    -0x3e0(%rbp),%r10
  818a1c:	4c 8b 8d 38 fc ff ff 	mov    -0x3c8(%rbp),%r9
  818a23:	4c 8b 85 30 fc ff ff 	mov    -0x3d0(%rbp),%r8
  818a2a:	4c 03 de             	add    %rsi,%r11
  818a2d:	48 8b bd 28 fc ff ff 	mov    -0x3d8(%rbp),%rdi
  818a34:	4c 03 d6             	add    %rsi,%r10
  818a37:	4c 8b bd 40 fc ff ff 	mov    -0x3c0(%rbp),%r15
  818a3e:	4c 03 c9             	add    %rcx,%r9
  818a41:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  818a45:	4c 03 c1             	add    %rcx,%r8
  818a48:	48 89 c2             	mov    %rax,%rdx
  818a4b:	49 03 fd             	add    %r13,%rdi
  818a4e:	4d 03 fd             	add    %r13,%r15
  818a51:	c4 01 7d 10 34 f7    	vmovupd (%r15,%r14,8),%ymm14
  818a57:	c4 01 1d 59 3c f0    	vmulpd (%r8,%r14,8),%ymm12,%ymm15
  818a5d:	c4 21 0d 58 74 f7 f8 	vaddpd -0x8(%rdi,%r14,8),%ymm14,%ymm14
  818a64:	c4 41 05 59 f6       	vmulpd %ymm14,%ymm15,%ymm14
  818a69:	c4 01 7d 10 7c f2 08 	vmovupd 0x8(%r10,%r14,8),%ymm15
  818a70:	c4 01 05 5c 3c f3    	vsubpd (%r11,%r14,8),%ymm15,%ymm15
  818a76:	c4 41 0d 58 f7       	vaddpd %ymm15,%ymm14,%ymm14
  818a7b:	c4 01 7d 11 34 f1    	vmovupd %ymm14,(%r9,%r14,8)
  818a81:	49 83 c6 04          	add    $0x4,%r14
  818a85:	4c 3b f2             	cmp    %rdx,%r14
  818a88:	72 c7                	jb     818a51 <pre_step3d_mod_mp_pre_step3d_tile_+0x44a1>
  818a8a:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  818a8e:	48 3b c2             	cmp    %rdx,%rax
  818a91:	73 73                	jae    818b06 <pre_step3d_mod_mp_pre_step3d_tile_+0x4556>
  818a93:	4c 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%r10
  818a9a:	4c 8b 8d 20 fc ff ff 	mov    -0x3e0(%rbp),%r9
  818aa1:	4c 8b 85 38 fc ff ff 	mov    -0x3c8(%rbp),%r8
  818aa8:	48 8b bd 30 fc ff ff 	mov    -0x3d0(%rbp),%rdi
  818aaf:	4c 03 d6             	add    %rsi,%r10
  818ab2:	4c 8b b5 28 fc ff ff 	mov    -0x3d8(%rbp),%r14
  818ab9:	4c 03 ce             	add    %rsi,%r9
  818abc:	4c 8b 9d 40 fc ff ff 	mov    -0x3c0(%rbp),%r11
  818ac3:	4c 03 c1             	add    %rcx,%r8
  818ac6:	48 03 f9             	add    %rcx,%rdi
  818ac9:	4d 03 f5             	add    %r13,%r14
  818acc:	4d 03 dd             	add    %r13,%r11
  818acf:	c4 41 7b 10 34 c3    	vmovsd (%r11,%rax,8),%xmm14
  818ad5:	c5 3b 59 3c c7       	vmulsd (%rdi,%rax,8),%xmm8,%xmm15
  818ada:	c4 41 0b 58 74 c6 f8 	vaddsd -0x8(%r14,%rax,8),%xmm14,%xmm14
  818ae1:	c4 41 03 59 f6       	vmulsd %xmm14,%xmm15,%xmm14
  818ae6:	c4 41 7b 10 7c c1 08 	vmovsd 0x8(%r9,%rax,8),%xmm15
  818aed:	c4 41 03 5c 3c c2    	vsubsd (%r10,%rax,8),%xmm15,%xmm15
  818af3:	c4 41 0b 58 f7       	vaddsd %xmm15,%xmm14,%xmm14
  818af8:	c4 41 7b 11 34 c0    	vmovsd %xmm14,(%r8,%rax,8)
  818afe:	48 ff c0             	inc    %rax
  818b01:	48 3b c2             	cmp    %rdx,%rax
  818b04:	72 c9                	jb     818acf <pre_step3d_mod_mp_pre_step3d_tile_+0x451f>
  818b06:	49 ff c4             	inc    %r12
  818b09:	48 03 b5 18 ff ff ff 	add    -0xe8(%rbp),%rsi
  818b10:	48 03 8d 20 ff ff ff 	add    -0xe0(%rbp),%rcx
  818b17:	4c 03 ad 10 fd ff ff 	add    -0x2f0(%rbp),%r13
  818b1e:	4c 3b a5 08 fd ff ff 	cmp    -0x2f8(%rbp),%r12
  818b25:	0f 82 c2 fe ff ff    	jb     8189ed <pre_step3d_mod_mp_pre_step3d_tile_+0x443d>
  818b2b:	48 8b bd d8 f8 ff ff 	mov    -0x728(%rbp),%rdi
  818b32:	44 8b 85 b8 f8 ff ff 	mov    -0x748(%rbp),%r8d
  818b39:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  818b40:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  818b47:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  818b4e:	e9 ee 12 00 00       	jmpq   819e41 <pre_step3d_mod_mp_pre_step3d_tile_+0x5891>
  818b53:	33 c9                	xor    %ecx,%ecx
  818b55:	33 d2                	xor    %edx,%edx
  818b57:	33 f6                	xor    %esi,%esi
  818b59:	33 c0                	xor    %eax,%eax
  818b5b:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  818b62:	00 
  818b63:	0f 8e d8 12 00 00    	jle    819e41 <pre_step3d_mod_mp_pre_step3d_tile_+0x5891>
  818b69:	4c 8b b5 f0 fb ff ff 	mov    -0x410(%rbp),%r14
  818b70:	4c 0f af f7          	imul   %rdi,%r14
  818b74:	4c 8b ad 48 f6 ff ff 	mov    -0x9b8(%rbp),%r13
  818b7b:	4c 0f af ef          	imul   %rdi,%r13
  818b7f:	4c 8b a5 30 f8 ff ff 	mov    -0x7d0(%rbp),%r12
  818b86:	48 89 bd d8 f8 ff ff 	mov    %rdi,-0x728(%rbp)
  818b8d:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  818b94:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  818b9b:	4f 8d 3c 34          	lea    (%r12,%r14,1),%r15
  818b9f:	4c 89 bd 98 fc ff ff 	mov    %r15,-0x368(%rbp)
  818ba6:	4c 8b bd 60 f6 ff ff 	mov    -0x9a0(%rbp),%r15
  818bad:	4c 8b a5 40 f6 ff ff 	mov    -0x9c0(%rbp),%r12
  818bb4:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  818bbb:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  818bc2:	4d 03 fd             	add    %r13,%r15
  818bc5:	4c 89 bd a0 fc ff ff 	mov    %r15,-0x360(%rbp)
  818bcc:	4d 03 e5             	add    %r13,%r12
  818bcf:	4c 8b bd 58 f6 ff ff 	mov    -0x9a8(%rbp),%r15
  818bd6:	4c 89 a5 60 fc ff ff 	mov    %r12,-0x3a0(%rbp)
  818bdd:	c5 79 10 25 bb dd 0a 	vmovupd 0xaddbb(%rip),%xmm12        # 8c69a0 <__STRLITPACK_19.34+0x10>
  818be4:	00 
  818be5:	4c 8b 65 c8          	mov    -0x38(%rbp),%r12
  818be9:	4d 03 fd             	add    %r13,%r15
  818bec:	4c 89 bd b0 fc ff ff 	mov    %r15,-0x350(%rbp)
  818bf3:	4c 8b bd 70 f6 ff ff 	mov    -0x990(%rbp),%r15
  818bfa:	4c 03 ad 88 f6 ff ff 	add    -0x978(%rbp),%r13
  818c01:	4c 89 ad 58 fc ff ff 	mov    %r13,-0x3a8(%rbp)
  818c08:	4d 03 fe             	add    %r14,%r15
  818c0b:	4c 89 bd a8 fc ff ff 	mov    %r15,-0x358(%rbp)
  818c12:	4c 8b bd 68 f6 ff ff 	mov    -0x998(%rbp),%r15
  818c19:	4d 03 fe             	add    %r14,%r15
  818c1c:	4c 03 b5 78 f6 ff ff 	add    -0x988(%rbp),%r14
  818c23:	4c 89 b5 48 fc ff ff 	mov    %r14,-0x3b8(%rbp)
  818c2a:	4c 89 bd 50 fc ff ff 	mov    %r15,-0x3b0(%rbp)
  818c31:	4c 8b 75 c0          	mov    -0x40(%rbp),%r14
  818c35:	48 8b bd 00 ff ff ff 	mov    -0x100(%rbp),%rdi
  818c3c:	48 3b bd 08 ff ff ff 	cmp    -0xf8(%rbp),%rdi
  818c43:	0f 8c d9 02 00 00    	jl     818f22 <pre_step3d_mod_mp_pre_step3d_tile_+0x4972>
  818c49:	4d 85 e4             	test   %r12,%r12
  818c4c:	0f 84 47 be 00 00    	je     824a99 <pre_step3d_mod_mp_pre_step3d_tile_+0x104e9>
  818c52:	49 83 fe 04          	cmp    $0x4,%r14
  818c56:	0f 8c 3d be 00 00    	jl     824a99 <pre_step3d_mod_mp_pre_step3d_tile_+0x104e9>
  818c5c:	48 8b bd 60 fc ff ff 	mov    -0x3a0(%rbp),%rdi
  818c63:	45 33 d2             	xor    %r10d,%r10d
  818c66:	4c 8b bd 98 fc ff ff 	mov    -0x368(%rbp),%r15
  818c6d:	4c 8b 8d 60 fe ff ff 	mov    -0x1a0(%rbp),%r9
  818c74:	4c 8b 85 20 fc ff ff 	mov    -0x3e0(%rbp),%r8
  818c7b:	48 03 f8             	add    %rax,%rdi
  818c7e:	48 89 bd 80 fc ff ff 	mov    %rdi,-0x380(%rbp)
  818c85:	4c 03 fe             	add    %rsi,%r15
  818c88:	48 8b bd 58 fc ff ff 	mov    -0x3a8(%rbp),%rdi
  818c8f:	4c 03 ca             	add    %rdx,%r9
  818c92:	4c 8b 9d a8 fc ff ff 	mov    -0x358(%rbp),%r11
  818c99:	4c 03 c2             	add    %rdx,%r8
  818c9c:	4c 8b 6d a0          	mov    -0x60(%rbp),%r13
  818ca0:	4c 89 ad b8 fc ff ff 	mov    %r13,-0x348(%rbp)
  818ca7:	48 03 f8             	add    %rax,%rdi
  818caa:	48 89 bd 78 fc ff ff 	mov    %rdi,-0x388(%rbp)
  818cb1:	4c 03 de             	add    %rsi,%r11
  818cb4:	48 8b bd b0 fc ff ff 	mov    -0x350(%rbp),%rdi
  818cbb:	48 89 85 c0 fc ff ff 	mov    %rax,-0x340(%rbp)
  818cc2:	48 89 b5 c8 fc ff ff 	mov    %rsi,-0x338(%rbp)
  818cc9:	48 89 95 d0 fc ff ff 	mov    %rdx,-0x330(%rbp)
  818cd0:	48 03 f8             	add    %rax,%rdi
  818cd3:	48 89 bd 70 fc ff ff 	mov    %rdi,-0x390(%rbp)
  818cda:	48 8b bd a0 fc ff ff 	mov    -0x360(%rbp),%rdi
  818ce1:	48 89 8d d8 fc ff ff 	mov    %rcx,-0x328(%rbp)
  818ce8:	4c 89 7d a8          	mov    %r15,-0x58(%rbp)
  818cec:	48 8b 95 70 fc ff ff 	mov    -0x390(%rbp),%rdx
  818cf3:	48 03 f8             	add    %rax,%rdi
  818cf6:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  818cfa:	48 8b bd 50 fc ff ff 	mov    -0x3b0(%rbp),%rdi
  818d01:	48 8b 8d 78 fc ff ff 	mov    -0x388(%rbp),%rcx
  818d08:	4c 8b ad 58 ff ff ff 	mov    -0xa8(%rbp),%r13
  818d0f:	48 03 fe             	add    %rsi,%rdi
  818d12:	48 89 bd 68 fc ff ff 	mov    %rdi,-0x398(%rbp)
  818d19:	48 8b bd 48 fc ff ff 	mov    -0x3b8(%rbp),%rdi
  818d20:	48 8b 85 68 fc ff ff 	mov    -0x398(%rbp),%rax
  818d27:	48 03 fe             	add    %rsi,%rdi
  818d2a:	48 89 7d b0          	mov    %rdi,-0x50(%rbp)
  818d2e:	33 ff                	xor    %edi,%edi
  818d30:	49 89 fe             	mov    %rdi,%r14
  818d33:	48 8b b5 80 fc ff ff 	mov    -0x380(%rbp),%rsi
  818d3a:	4c 8b 7d a8          	mov    -0x58(%rbp),%r15
  818d3e:	4c 03 ff             	add    %rdi,%r15
  818d41:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  818d46:	c4 01 11 16 3c 27    	vmovhpd (%r15,%r12,1),%xmm13,%xmm15
  818d4c:	4c 8b 7d b8          	mov    -0x48(%rbp),%r15
  818d50:	c4 41 01 59 f4       	vmulpd %xmm12,%xmm15,%xmm14
  818d55:	4d 03 fe             	add    %r14,%r15
  818d58:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  818d5d:	c4 01 11 16 3c 2f    	vmovhpd (%r15,%r13,1),%xmm13,%xmm15
  818d63:	4e 8d 3c 32          	lea    (%rdx,%r14,1),%r15
  818d67:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  818d6c:	c4 01 11 16 2c 2f    	vmovhpd (%r15,%r13,1),%xmm13,%xmm13
  818d72:	4e 8d 3c 1f          	lea    (%rdi,%r11,1),%r15
  818d76:	c4 41 01 58 fd       	vaddpd %xmm13,%xmm15,%xmm15
  818d7b:	c4 41 09 59 ef       	vmulpd %xmm15,%xmm14,%xmm13
  818d80:	c4 01 79 10 74 d0 08 	vmovupd 0x8(%r8,%r10,8),%xmm14
  818d87:	c4 01 09 5c 34 d1    	vsubpd (%r9,%r10,8),%xmm14,%xmm14
  818d8d:	c4 41 11 58 fe       	vaddpd %xmm14,%xmm13,%xmm15
  818d92:	c4 41 7b 11 3f       	vmovsd %xmm15,(%r15)
  818d97:	c4 01 79 17 3c 3c    	vmovhpd %xmm15,(%r12,%r15,1)
  818d9d:	4c 8b 7d b0          	mov    -0x50(%rbp),%r15
  818da1:	4c 03 ff             	add    %rdi,%r15
  818da4:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  818da9:	c4 01 09 16 2c 27    	vmovhpd (%r15,%r12,1),%xmm14,%xmm13
  818daf:	4e 8d 3c 31          	lea    (%rcx,%r14,1),%r15
  818db3:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  818db8:	c4 41 11 59 f4       	vmulpd %xmm12,%xmm13,%xmm14
  818dbd:	c4 01 01 16 2c 2f    	vmovhpd (%r15,%r13,1),%xmm15,%xmm13
  818dc3:	4e 8d 3c 36          	lea    (%rsi,%r14,1),%r15
  818dc7:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  818dcc:	4f 8d 34 ae          	lea    (%r14,%r13,4),%r14
  818dd0:	c4 01 01 16 3c 2f    	vmovhpd (%r15,%r13,1),%xmm15,%xmm15
  818dd6:	4c 8d 3c 07          	lea    (%rdi,%rax,1),%r15
  818dda:	c4 41 11 58 ef       	vaddpd %xmm15,%xmm13,%xmm13
  818ddf:	c4 41 09 59 ed       	vmulpd %xmm13,%xmm14,%xmm13
  818de4:	c4 01 79 10 74 d0 18 	vmovupd 0x18(%r8,%r10,8),%xmm14
  818deb:	c4 01 09 5c 74 d1 10 	vsubpd 0x10(%r9,%r10,8),%xmm14,%xmm14
  818df2:	c4 41 11 58 fe       	vaddpd %xmm14,%xmm13,%xmm15
  818df7:	49 83 c2 04          	add    $0x4,%r10
  818dfb:	4a 8d 3c a7          	lea    (%rdi,%r12,4),%rdi
  818dff:	c4 41 7b 11 3f       	vmovsd %xmm15,(%r15)
  818e04:	c4 01 79 17 3c 3c    	vmovhpd %xmm15,(%r12,%r15,1)
  818e0a:	4c 3b 55 a0          	cmp    -0x60(%rbp),%r10
  818e0e:	0f 82 26 ff ff ff    	jb     818d3a <pre_step3d_mod_mp_pre_step3d_tile_+0x478a>
  818e14:	4c 8b ad b8 fc ff ff 	mov    -0x348(%rbp),%r13
  818e1b:	48 8b 85 c0 fc ff ff 	mov    -0x340(%rbp),%rax
  818e22:	48 8b b5 c8 fc ff ff 	mov    -0x338(%rbp),%rsi
  818e29:	48 8b 95 d0 fc ff ff 	mov    -0x330(%rbp),%rdx
  818e30:	48 8b 8d d8 fc ff ff 	mov    -0x328(%rbp),%rcx
  818e37:	4c 8b 75 c0          	mov    -0x40(%rbp),%r14
  818e3b:	4d 89 e1             	mov    %r12,%r9
  818e3e:	4c 8b 9d 58 ff ff ff 	mov    -0xa8(%rbp),%r11
  818e45:	4d 0f af dd          	imul   %r13,%r11
  818e49:	4d 0f af cd          	imul   %r13,%r9
  818e4d:	4d 3b ee             	cmp    %r14,%r13
  818e50:	0f 83 cc 00 00 00    	jae    818f22 <pre_step3d_mod_mp_pre_step3d_tile_+0x4972>
  818e56:	4c 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%r8
  818e5d:	4c 8b bd a8 fc ff ff 	mov    -0x358(%rbp),%r15
  818e64:	4c 8b 95 20 fc ff ff 	mov    -0x3e0(%rbp),%r10
  818e6b:	48 89 b5 c8 fc ff ff 	mov    %rsi,-0x338(%rbp)
  818e72:	49 8d 3c 10          	lea    (%r8,%rdx,1),%rdi
  818e76:	48 89 bd 90 fc ff ff 	mov    %rdi,-0x370(%rbp)
  818e7d:	49 8d 3c 37          	lea    (%r15,%rsi,1),%rdi
  818e81:	4c 8b bd b0 fc ff ff 	mov    -0x350(%rbp),%r15
  818e88:	4d 8d 04 12          	lea    (%r10,%rdx,1),%r8
  818e8c:	4c 8b 95 98 fc ff ff 	mov    -0x368(%rbp),%r10
  818e93:	48 89 95 d0 fc ff ff 	mov    %rdx,-0x330(%rbp)
  818e9a:	48 89 8d d8 fc ff ff 	mov    %rcx,-0x328(%rbp)
  818ea1:	4c 03 f8             	add    %rax,%r15
  818ea4:	4c 89 bd 88 fc ff ff 	mov    %r15,-0x378(%rbp)
  818eab:	4c 03 d6             	add    %rsi,%r10
  818eae:	4c 8b bd a0 fc ff ff 	mov    -0x360(%rbp),%r15
  818eb5:	48 8b 8d 88 fc ff ff 	mov    -0x378(%rbp),%rcx
  818ebc:	48 8b b5 90 fc ff ff 	mov    -0x370(%rbp),%rsi
  818ec3:	4c 03 f8             	add    %rax,%r15
  818ec6:	4c 89 fa             	mov    %r15,%rdx
  818ec9:	4c 8b bd 58 ff ff ff 	mov    -0xa8(%rbp),%r15
  818ed0:	c4 41 7b 10 2c 13    	vmovsd (%r11,%rdx,1),%xmm13
  818ed6:	c4 01 3b 59 34 11    	vmulsd (%r9,%r10,1),%xmm8,%xmm14
  818edc:	c4 41 13 58 3c 0b    	vaddsd (%r11,%rcx,1),%xmm13,%xmm15
  818ee2:	c4 01 7b 10 6c e8 08 	vmovsd 0x8(%r8,%r13,8),%xmm13
  818ee9:	4d 03 df             	add    %r15,%r11
  818eec:	c4 41 0b 59 f7       	vmulsd %xmm15,%xmm14,%xmm14
  818ef1:	c4 21 13 5c 3c ee    	vsubsd (%rsi,%r13,8),%xmm13,%xmm15
  818ef7:	49 ff c5             	inc    %r13
  818efa:	c4 41 0b 58 ef       	vaddsd %xmm15,%xmm14,%xmm13
  818eff:	c4 41 7b 11 2c 39    	vmovsd %xmm13,(%r9,%rdi,1)
  818f05:	4d 03 cc             	add    %r12,%r9
  818f08:	4d 3b ee             	cmp    %r14,%r13
  818f0b:	72 c3                	jb     818ed0 <pre_step3d_mod_mp_pre_step3d_tile_+0x4920>
  818f0d:	48 8b b5 c8 fc ff ff 	mov    -0x338(%rbp),%rsi
  818f14:	48 8b 95 d0 fc ff ff 	mov    -0x330(%rbp),%rdx
  818f1b:	48 8b 8d d8 fc ff ff 	mov    -0x328(%rbp),%rcx
  818f22:	48 ff c1             	inc    %rcx
  818f25:	48 03 95 18 ff ff ff 	add    -0xe8(%rbp),%rdx
  818f2c:	48 03 b5 20 ff ff ff 	add    -0xe0(%rbp),%rsi
  818f33:	48 03 85 10 fd ff ff 	add    -0x2f0(%rbp),%rax
  818f3a:	48 3b 8d 08 fd ff ff 	cmp    -0x2f8(%rbp),%rcx
  818f41:	0f 82 ee fc ff ff    	jb     818c35 <pre_step3d_mod_mp_pre_step3d_tile_+0x4685>
  818f47:	c5 7b 10 2d b1 e2 0a 	vmovsd 0xae2b1(%rip),%xmm13        # 8c7200 <__STRLITPACK_199.115+0x70>
  818f4e:	00 
  818f4f:	48 8b bd d8 f8 ff ff 	mov    -0x728(%rbp),%rdi
  818f56:	44 8b 85 b8 f8 ff ff 	mov    -0x748(%rbp),%r8d
  818f5d:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  818f64:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  818f6b:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  818f72:	e9 ca 0e 00 00       	jmpq   819e41 <pre_step3d_mod_mp_pre_step3d_tile_+0x5891>
  818f77:	3b 85 e0 f8 ff ff    	cmp    -0x720(%rbp),%eax
  818f7d:	0f 85 6e 06 00 00    	jne    8195f1 <pre_step3d_mod_mp_pre_step3d_tile_+0x5041>
  818f83:	48 83 7d c8 08       	cmpq   $0x8,-0x38(%rbp)
  818f88:	0f 85 ac 02 00 00    	jne    81923a <pre_step3d_mod_mp_pre_step3d_tile_+0x4c8a>
  818f8e:	48 83 bd 58 ff ff ff 	cmpq   $0x8,-0xa8(%rbp)
  818f95:	08 
  818f96:	0f 85 9e 02 00 00    	jne    81923a <pre_step3d_mod_mp_pre_step3d_tile_+0x4c8a>
  818f9c:	48 83 bd 50 ff ff ff 	cmpq   $0x8,-0xb0(%rbp)
  818fa3:	08 
  818fa4:	0f 85 90 02 00 00    	jne    81923a <pre_step3d_mod_mp_pre_step3d_tile_+0x4c8a>
  818faa:	45 33 e4             	xor    %r12d,%r12d
  818fad:	45 33 ed             	xor    %r13d,%r13d
  818fb0:	45 33 f6             	xor    %r14d,%r14d
  818fb3:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  818fba:	00 
  818fbb:	0f 8e 80 0e 00 00    	jle    819e41 <pre_step3d_mod_mp_pre_step3d_tile_+0x5891>
  818fc1:	48 8b b5 88 f8 ff ff 	mov    -0x778(%rbp),%rsi
  818fc8:	48 8b 8d 48 f6 ff ff 	mov    -0x9b8(%rbp),%rcx
  818fcf:	48 0f af cf          	imul   %rdi,%rcx
  818fd3:	c5 7d 10 25 85 c3 0a 	vmovupd 0xac385(%rip),%ymm12        # 8c5360 <var$630.126.450+0x4a0>
  818fda:	00 
  818fdb:	48 8b 95 50 f6 ff ff 	mov    -0x9b0(%rbp),%rdx
  818fe2:	4e 8d 3c 1e          	lea    (%rsi,%r11,1),%r15
  818fe6:	48 8b b5 d0 f4 ff ff 	mov    -0xb30(%rbp),%rsi
  818fed:	48 0f af f7          	imul   %rdi,%rsi
  818ff1:	48 8b 85 38 f6 ff ff 	mov    -0x9c8(%rbp),%rax
  818ff8:	48 03 d1             	add    %rcx,%rdx
  818ffb:	48 03 8d 80 f6 ff ff 	add    -0x980(%rbp),%rcx
  819002:	48 89 8d f0 f8 ff ff 	mov    %rcx,-0x710(%rbp)
  819009:	48 89 95 08 f9 ff ff 	mov    %rdx,-0x6f8(%rbp)
  819010:	49 03 c3             	add    %r11,%rax
  819013:	48 03 b5 e0 f4 ff ff 	add    -0xb20(%rbp),%rsi
  81901a:	4c 89 f2             	mov    %r14,%rdx
  81901d:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  819021:	4c 89 bd f8 f8 ff ff 	mov    %r15,-0x708(%rbp)
  819028:	48 89 85 00 f9 ff ff 	mov    %rax,-0x700(%rbp)
  81902f:	48 89 bd d8 f8 ff ff 	mov    %rdi,-0x728(%rbp)
  819036:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  81903d:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  819044:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  81904b:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  819052:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  819059:	48 3b 85 08 ff ff ff 	cmp    -0xf8(%rbp),%rax
  819060:	0f 8c 78 01 00 00    	jl     8191de <pre_step3d_mod_mp_pre_step3d_tile_+0x4c2e>
  819066:	48 83 f9 04          	cmp    $0x4,%rcx
  81906a:	0f 8c 31 ba 00 00    	jl     824aa1 <pre_step3d_mod_mp_pre_step3d_tile_+0x104f1>
  819070:	4c 8b bd 08 f9 ff ff 	mov    -0x6f8(%rbp),%r15
  819077:	4c 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%r10
  81907e:	4c 8b 8d 20 fc ff ff 	mov    -0x3e0(%rbp),%r9
  819085:	4c 8b 85 00 f9 ff ff 	mov    -0x700(%rbp),%r8
  81908c:	4c 03 fa             	add    %rdx,%r15
  81908f:	48 8b bd f8 f8 ff ff 	mov    -0x708(%rbp),%rdi
  819096:	4d 03 d5             	add    %r13,%r10
  819099:	4c 8b 9d f0 f8 ff ff 	mov    -0x710(%rbp),%r11
  8190a0:	4d 03 cd             	add    %r13,%r9
  8190a3:	48 c7 85 10 f9 ff ff 	movq   $0x0,-0x6f0(%rbp)
  8190aa:	00 00 00 00 
  8190ae:	4d 03 c6             	add    %r14,%r8
  8190b1:	49 03 fe             	add    %r14,%rdi
  8190b4:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  8190b8:	4c 03 da             	add    %rdx,%r11
  8190bb:	4c 89 a5 08 fa ff ff 	mov    %r12,-0x5f8(%rbp)
  8190c2:	4c 89 ad 00 fa ff ff 	mov    %r13,-0x600(%rbp)
  8190c9:	49 89 c5             	mov    %rax,%r13
  8190cc:	4c 89 f9             	mov    %r15,%rcx
  8190cf:	4c 8b a5 10 f9 ff ff 	mov    -0x6f0(%rbp),%r12
  8190d6:	4c 8b bd 48 ff ff ff 	mov    -0xb8(%rbp),%r15
  8190dd:	0f 1f 00             	nopl   (%rax)
  8190e0:	c4 21 7d 10 3c e1    	vmovupd (%rcx,%r12,8),%ymm15
  8190e6:	c4 21 1d 59 2c e7    	vmulpd (%rdi,%r12,8),%ymm12,%ymm13
  8190ec:	c4 01 05 58 74 e3 f8 	vaddpd -0x8(%r11,%r12,8),%ymm15,%ymm14
  8190f3:	c4 01 7d 10 7c e1 08 	vmovupd 0x8(%r9,%r12,8),%ymm15
  8190fa:	c4 41 15 59 f6       	vmulpd %ymm14,%ymm13,%ymm14
  8190ff:	c4 01 05 5c 2c e2    	vsubpd (%r10,%r12,8),%ymm15,%ymm13
  819105:	c4 01 1d 59 3c e7    	vmulpd (%r15,%r12,8),%ymm12,%ymm15
  81910b:	c4 21 05 59 3c e6    	vmulpd (%rsi,%r12,8),%ymm15,%ymm15
  819111:	c4 41 0d 5c f7       	vsubpd %ymm15,%ymm14,%ymm14
  819116:	c4 41 15 58 ee       	vaddpd %ymm14,%ymm13,%ymm13
  81911b:	c4 01 7d 11 2c e0    	vmovupd %ymm13,(%r8,%r12,8)
  819121:	49 83 c4 04          	add    $0x4,%r12
  819125:	4d 3b e5             	cmp    %r13,%r12
  819128:	72 b6                	jb     8190e0 <pre_step3d_mod_mp_pre_step3d_tile_+0x4b30>
  81912a:	4c 8b ad 00 fa ff ff 	mov    -0x600(%rbp),%r13
  819131:	4c 8b a5 08 fa ff ff 	mov    -0x5f8(%rbp),%r12
  819138:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  81913c:	48 3b c1             	cmp    %rcx,%rax
  81913f:	0f 83 99 00 00 00    	jae    8191de <pre_step3d_mod_mp_pre_step3d_tile_+0x4c2e>
  819145:	4c 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%r10
  81914c:	4c 8b 8d 20 fc ff ff 	mov    -0x3e0(%rbp),%r9
  819153:	4c 8b 85 00 f9 ff ff 	mov    -0x700(%rbp),%r8
  81915a:	48 8b bd f8 f8 ff ff 	mov    -0x708(%rbp),%rdi
  819161:	4d 03 d5             	add    %r13,%r10
  819164:	4c 8b 9d f0 f8 ff ff 	mov    -0x710(%rbp),%r11
  81916b:	4d 03 cd             	add    %r13,%r9
  81916e:	4c 8b bd 08 f9 ff ff 	mov    -0x6f8(%rbp),%r15
  819175:	4d 03 c6             	add    %r14,%r8
  819178:	4c 89 a5 08 fa ff ff 	mov    %r12,-0x5f8(%rbp)
  81917f:	49 03 fe             	add    %r14,%rdi
  819182:	4c 8b a5 48 ff ff ff 	mov    -0xb8(%rbp),%r12
  819189:	4c 03 da             	add    %rdx,%r11
  81918c:	4c 03 fa             	add    %rdx,%r15
  81918f:	90                   	nop
  819190:	c4 41 7b 10 3c c7    	vmovsd (%r15,%rax,8),%xmm15
  819196:	c5 3b 59 2c c7       	vmulsd (%rdi,%rax,8),%xmm8,%xmm13
  81919b:	c4 41 03 58 74 c3 f8 	vaddsd -0x8(%r11,%rax,8),%xmm15,%xmm14
  8191a2:	c4 41 7b 10 7c c1 08 	vmovsd 0x8(%r9,%rax,8),%xmm15
  8191a9:	c4 41 13 59 f6       	vmulsd %xmm14,%xmm13,%xmm14
  8191ae:	c4 41 03 5c 2c c2    	vsubsd (%r10,%rax,8),%xmm15,%xmm13
  8191b4:	c4 41 3b 59 3c c4    	vmulsd (%r12,%rax,8),%xmm8,%xmm15
  8191ba:	c5 03 59 3c c6       	vmulsd (%rsi,%rax,8),%xmm15,%xmm15
  8191bf:	c4 41 0b 5c f7       	vsubsd %xmm15,%xmm14,%xmm14
  8191c4:	c4 41 0b 58 ed       	vaddsd %xmm13,%xmm14,%xmm13
  8191c9:	c4 41 7b 11 2c c0    	vmovsd %xmm13,(%r8,%rax,8)
  8191cf:	48 ff c0             	inc    %rax
  8191d2:	48 3b c1             	cmp    %rcx,%rax
  8191d5:	72 b9                	jb     819190 <pre_step3d_mod_mp_pre_step3d_tile_+0x4be0>
  8191d7:	4c 8b a5 08 fa ff ff 	mov    -0x5f8(%rbp),%r12
  8191de:	49 ff c4             	inc    %r12
  8191e1:	4c 03 ad 18 ff ff ff 	add    -0xe8(%rbp),%r13
  8191e8:	4c 03 b5 20 ff ff ff 	add    -0xe0(%rbp),%r14
  8191ef:	48 03 95 10 fd ff ff 	add    -0x2f0(%rbp),%rdx
  8191f6:	48 03 b5 70 fa ff ff 	add    -0x590(%rbp),%rsi
  8191fd:	4c 3b a5 08 fd ff ff 	cmp    -0x2f8(%rbp),%r12
  819204:	0f 82 48 fe ff ff    	jb     819052 <pre_step3d_mod_mp_pre_step3d_tile_+0x4aa2>
  81920a:	c5 7b 10 2d ee df 0a 	vmovsd 0xadfee(%rip),%xmm13        # 8c7200 <__STRLITPACK_199.115+0x70>
  819211:	00 
  819212:	48 8b bd d8 f8 ff ff 	mov    -0x728(%rbp),%rdi
  819219:	44 8b 85 b8 f8 ff ff 	mov    -0x748(%rbp),%r8d
  819220:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  819227:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  81922e:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  819235:	e9 07 0c 00 00       	jmpq   819e41 <pre_step3d_mod_mp_pre_step3d_tile_+0x5891>
  81923a:	45 33 ed             	xor    %r13d,%r13d
  81923d:	33 c9                	xor    %ecx,%ecx
  81923f:	33 d2                	xor    %edx,%edx
  819241:	33 f6                	xor    %esi,%esi
  819243:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  81924a:	00 
  81924b:	0f 8e f0 0b 00 00    	jle    819e41 <pre_step3d_mod_mp_pre_step3d_tile_+0x5891>
  819251:	4c 8b b5 48 f6 ff ff 	mov    -0x9b8(%rbp),%r14
  819258:	4c 0f af f7          	imul   %rdi,%r14
  81925c:	48 8b 85 60 f6 ff ff 	mov    -0x9a0(%rbp),%rax
  819263:	4c 8b a5 30 f8 ff ff 	mov    -0x7d0(%rbp),%r12
  81926a:	4c 89 ad 78 fa ff ff 	mov    %r13,-0x588(%rbp)
  819271:	48 89 bd d8 f8 ff ff 	mov    %rdi,-0x728(%rbp)
  819278:	4e 8d 3c 30          	lea    (%rax,%r14,1),%r15
  81927c:	48 8b 85 d0 f4 ff ff 	mov    -0xb30(%rbp),%rax
  819283:	4d 03 e3             	add    %r11,%r12
  819286:	48 0f af c7          	imul   %rdi,%rax
  81928a:	4c 89 bd f0 f9 ff ff 	mov    %r15,-0x610(%rbp)
  819291:	4c 8b bd 70 f6 ff ff 	mov    -0x990(%rbp),%r15
  819298:	4c 03 b5 58 f6 ff ff 	add    -0x9a8(%rbp),%r14
  81929f:	4c 89 b5 20 f9 ff ff 	mov    %r14,-0x6e0(%rbp)
  8192a6:	48 03 85 e8 f4 ff ff 	add    -0xb18(%rbp),%rax
  8192ad:	4d 03 fb             	add    %r11,%r15
  8192b0:	4c 8b 75 c8          	mov    -0x38(%rbp),%r14
  8192b4:	4c 89 bd 18 f9 ff ff 	mov    %r15,-0x6e8(%rbp)
  8192bb:	4c 89 a5 28 f9 ff ff 	mov    %r12,-0x6d8(%rbp)
  8192c2:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  8192c9:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  8192d0:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  8192d7:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  8192de:	c5 f9 10 05 ba d6 0a 	vmovupd 0xad6ba(%rip),%xmm0        # 8c69a0 <__STRLITPACK_19.34+0x10>
  8192e5:	00 
  8192e6:	48 8b bd 00 ff ff ff 	mov    -0x100(%rbp),%rdi
  8192ed:	48 3b bd 08 ff ff ff 	cmp    -0xf8(%rbp),%rdi
  8192f4:	0f 8c 85 02 00 00    	jl     81957f <pre_step3d_mod_mp_pre_step3d_tile_+0x4fcf>
  8192fa:	4d 85 f6             	test   %r14,%r14
  8192fd:	0f 84 a5 b7 00 00    	je     824aa8 <pre_step3d_mod_mp_pre_step3d_tile_+0x104f8>
  819303:	48 83 7d c0 02       	cmpq   $0x2,-0x40(%rbp)
  819308:	0f 8c 9a b7 00 00    	jl     824aa8 <pre_step3d_mod_mp_pre_step3d_tile_+0x104f8>
  81930e:	4c 8b 9d 20 f9 ff ff 	mov    -0x6e0(%rbp),%r11
  819315:	45 33 d2             	xor    %r10d,%r10d
  819318:	4c 8b bd 20 fc ff ff 	mov    -0x3e0(%rbp),%r15
  81931f:	4c 8b 8d 60 fe ff ff 	mov    -0x1a0(%rbp),%r9
  819326:	4c 8b 85 18 f9 ff ff 	mov    -0x6e8(%rbp),%r8
  81932d:	4d 8d 24 33          	lea    (%r11,%rsi,1),%r12
  819331:	4c 8b 9d f0 f9 ff ff 	mov    -0x610(%rbp),%r11
  819338:	4c 03 f9             	add    %rcx,%r15
  81933b:	48 8b bd 28 f9 ff ff 	mov    -0x6d8(%rbp),%rdi
  819342:	4c 03 c9             	add    %rcx,%r9
  819345:	4c 89 a5 38 f9 ff ff 	mov    %r12,-0x6c8(%rbp)
  81934c:	4c 03 c2             	add    %rdx,%r8
  81934f:	4c 8b 6d e0          	mov    -0x20(%rbp),%r13
  819353:	4d 8d 24 33          	lea    (%r11,%rsi,1),%r12
  819357:	45 33 db             	xor    %r11d,%r11d
  81935a:	48 03 fa             	add    %rdx,%rdi
  81935d:	4c 89 a5 30 f9 ff ff 	mov    %r12,-0x6d0(%rbp)
  819364:	45 33 e4             	xor    %r12d,%r12d
  819367:	4c 89 ad 10 fa ff ff 	mov    %r13,-0x5f0(%rbp)
  81936e:	48 89 b5 18 fa ff ff 	mov    %rsi,-0x5e8(%rbp)
  819375:	48 89 8d 28 fa ff ff 	mov    %rcx,-0x5d8(%rbp)
  81937c:	4c 89 bd 60 ff ff ff 	mov    %r15,-0xa0(%rbp)
  819383:	48 89 95 20 fa ff ff 	mov    %rdx,-0x5e0(%rbp)
  81938a:	4d 89 e5             	mov    %r12,%r13
  81938d:	48 8b 8d 30 f9 ff ff 	mov    -0x6d0(%rbp),%rcx
  819394:	48 8b b5 38 f9 ff ff 	mov    -0x6c8(%rbp),%rsi
  81939b:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
  8193a2:	4e 8d 3c 27          	lea    (%rdi,%r12,1),%r15
  8193a6:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  8193ab:	c4 01 11 16 34 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm14
  8193b1:	4e 8d 3c 29          	lea    (%rcx,%r13,1),%r15
  8193b5:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  8193ba:	c5 09 59 f8          	vmulpd %xmm0,%xmm14,%xmm15
  8193be:	c4 41 19 16 34 17    	vmovhpd (%r15,%rdx,1),%xmm12,%xmm14
  8193c4:	4e 8d 3c 2e          	lea    (%rsi,%r13,1),%r15
  8193c8:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  8193cd:	4d 8d 6c 55 00       	lea    0x0(%r13,%rdx,2),%r13
  8193d2:	c4 41 11 16 24 17    	vmovhpd (%r15,%rdx,1),%xmm13,%xmm12
  8193d8:	4e 8d 3c 18          	lea    (%rax,%r11,1),%r15
  8193dc:	c4 41 09 58 ec       	vaddpd %xmm12,%xmm14,%xmm13
  8193e1:	48 8b 95 60 ff ff ff 	mov    -0xa0(%rbp),%rdx
  8193e8:	c4 41 01 59 f5       	vmulpd %xmm13,%xmm15,%xmm14
  8193ed:	c4 21 79 10 7c d2 08 	vmovupd 0x8(%rdx,%r10,8),%xmm15
  8193f4:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  8193fb:	c4 01 01 5c 2c d1    	vsubpd (%r9,%r10,8),%xmm15,%xmm13
  819401:	c4 21 79 59 24 d2    	vmulpd (%rdx,%r10,8),%xmm0,%xmm12
  819407:	48 8b 95 50 ff ff ff 	mov    -0xb0(%rbp),%rdx
  81940e:	49 83 c2 02          	add    $0x2,%r10
  819412:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  819417:	c4 41 01 16 3c 17    	vmovhpd (%r15,%rdx,1),%xmm15,%xmm15
  81941d:	4f 8d 3c 04          	lea    (%r12,%r8,1),%r15
  819421:	c4 41 19 59 e7       	vmulpd %xmm15,%xmm12,%xmm12
  819426:	c4 41 09 5c f4       	vsubpd %xmm12,%xmm14,%xmm14
  81942b:	c4 41 11 58 ee       	vaddpd %xmm14,%xmm13,%xmm13
  819430:	c4 41 7b 11 2f       	vmovsd %xmm13,(%r15)
  819435:	4d 8d 1c 53          	lea    (%r11,%rdx,2),%r11
  819439:	c4 01 79 17 2c 3e    	vmovhpd %xmm13,(%r14,%r15,1)
  81943f:	4f 8d 24 74          	lea    (%r12,%r14,2),%r12
  819443:	4c 3b 55 e0          	cmp    -0x20(%rbp),%r10
  819447:	0f 82 4e ff ff ff    	jb     81939b <pre_step3d_mod_mp_pre_step3d_tile_+0x4deb>
  81944d:	4c 8b ad 10 fa ff ff 	mov    -0x5f0(%rbp),%r13
  819454:	48 8b b5 18 fa ff ff 	mov    -0x5e8(%rbp),%rsi
  81945b:	48 8b 95 20 fa ff ff 	mov    -0x5e0(%rbp),%rdx
  819462:	48 8b 8d 28 fa ff ff 	mov    -0x5d8(%rbp),%rcx
  819469:	4d 89 f2             	mov    %r14,%r10
  81946c:	4c 8b 9d 58 ff ff ff 	mov    -0xa8(%rbp),%r11
  819473:	4c 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%r8
  81947a:	4d 0f af dd          	imul   %r13,%r11
  81947e:	4d 0f af d5          	imul   %r13,%r10
  819482:	4d 0f af c5          	imul   %r13,%r8
  819486:	4c 3b 6d c0          	cmp    -0x40(%rbp),%r13
  81948a:	0f 83 ef 00 00 00    	jae    81957f <pre_step3d_mod_mp_pre_step3d_tile_+0x4fcf>
  819490:	4c 8b 8d 60 fe ff ff 	mov    -0x1a0(%rbp),%r9
  819497:	4c 8b a5 20 fc ff ff 	mov    -0x3e0(%rbp),%r12
  81949e:	4c 8b bd 18 f9 ff ff 	mov    -0x6e8(%rbp),%r15
  8194a5:	48 89 b5 18 fa ff ff 	mov    %rsi,-0x5e8(%rbp)
  8194ac:	49 8d 3c 09          	lea    (%r9,%rcx,1),%rdi
  8194b0:	48 89 bd 48 f9 ff ff 	mov    %rdi,-0x6b8(%rbp)
  8194b7:	4d 8d 0c 0c          	lea    (%r12,%rcx,1),%r9
  8194bb:	4c 8b a5 28 f9 ff ff 	mov    -0x6d8(%rbp),%r12
  8194c2:	49 8d 3c 17          	lea    (%r15,%rdx,1),%rdi
  8194c6:	4c 8b bd 20 f9 ff ff 	mov    -0x6e0(%rbp),%r15
  8194cd:	48 89 bd 40 f9 ff ff 	mov    %rdi,-0x6c0(%rbp)
  8194d4:	48 89 95 20 fa ff ff 	mov    %rdx,-0x5e0(%rbp)
  8194db:	49 8d 3c 14          	lea    (%r12,%rdx,1),%rdi
  8194df:	48 89 8d 28 fa ff ff 	mov    %rcx,-0x5d8(%rbp)
  8194e6:	4d 8d 24 37          	lea    (%r15,%rsi,1),%r12
  8194ea:	4c 8b bd f0 f9 ff ff 	mov    -0x610(%rbp),%r15
  8194f1:	48 8b 8d 40 f9 ff ff 	mov    -0x6c0(%rbp),%rcx
  8194f8:	4c 03 fe             	add    %rsi,%r15
  8194fb:	4c 89 fa             	mov    %r15,%rdx
  8194fe:	48 8b b5 48 f9 ff ff 	mov    -0x6b8(%rbp),%rsi
  819505:	4c 8b bd 48 ff ff ff 	mov    -0xb8(%rbp),%r15
  81950c:	0f 1f 40 00          	nopl   0x0(%rax)
  819510:	c4 41 7b 10 34 13    	vmovsd (%r11,%rdx,1),%xmm14
  819516:	c4 41 3b 59 3c 3a    	vmulsd (%r10,%rdi,1),%xmm8,%xmm15
  81951c:	c4 01 0b 58 24 23    	vaddsd (%r11,%r12,1),%xmm14,%xmm12
  819522:	c4 41 03 59 ec       	vmulsd %xmm12,%xmm15,%xmm13
  819527:	c4 01 3b 59 3c ef    	vmulsd (%r15,%r13,8),%xmm8,%xmm15
  81952d:	c4 01 7b 10 74 e9 08 	vmovsd 0x8(%r9,%r13,8),%xmm14
  819534:	4c 03 9d 58 ff ff ff 	add    -0xa8(%rbp),%r11
  81953b:	c4 21 0b 5c 24 ee    	vsubsd (%rsi,%r13,8),%xmm14,%xmm12
  819541:	49 ff c5             	inc    %r13
  819544:	c4 41 03 59 34 00    	vmulsd (%r8,%rax,1),%xmm15,%xmm14
  81954a:	4c 03 85 50 ff ff ff 	add    -0xb0(%rbp),%r8
  819551:	c4 41 13 5c ee       	vsubsd %xmm14,%xmm13,%xmm13
  819556:	c4 41 13 58 e4       	vaddsd %xmm12,%xmm13,%xmm12
  81955b:	c4 41 7b 11 24 0a    	vmovsd %xmm12,(%r10,%rcx,1)
  819561:	4d 03 d6             	add    %r14,%r10
  819564:	4c 3b 6d c0          	cmp    -0x40(%rbp),%r13
  819568:	72 a6                	jb     819510 <pre_step3d_mod_mp_pre_step3d_tile_+0x4f60>
  81956a:	48 8b b5 18 fa ff ff 	mov    -0x5e8(%rbp),%rsi
  819571:	48 8b 95 20 fa ff ff 	mov    -0x5e0(%rbp),%rdx
  819578:	48 8b 8d 28 fa ff ff 	mov    -0x5d8(%rbp),%rcx
  81957f:	48 8b bd 78 fa ff ff 	mov    -0x588(%rbp),%rdi
  819586:	48 ff c7             	inc    %rdi
  819589:	48 03 8d 18 ff ff ff 	add    -0xe8(%rbp),%rcx
  819590:	48 03 95 20 ff ff ff 	add    -0xe0(%rbp),%rdx
  819597:	48 03 b5 10 fd ff ff 	add    -0x2f0(%rbp),%rsi
  81959e:	48 03 85 70 fa ff ff 	add    -0x590(%rbp),%rax
  8195a5:	48 89 bd 78 fa ff ff 	mov    %rdi,-0x588(%rbp)
  8195ac:	48 3b bd 08 fd ff ff 	cmp    -0x2f8(%rbp),%rdi
  8195b3:	0f 82 2d fd ff ff    	jb     8192e6 <pre_step3d_mod_mp_pre_step3d_tile_+0x4d36>
  8195b9:	c5 f9 10 05 8f d7 0a 	vmovupd 0xad78f(%rip),%xmm0        # 8c6d50 <__STRLITPACK_124.84+0x50>
  8195c0:	00 
  8195c1:	c5 7b 10 2d 37 dc 0a 	vmovsd 0xadc37(%rip),%xmm13        # 8c7200 <__STRLITPACK_199.115+0x70>
  8195c8:	00 
  8195c9:	48 8b bd d8 f8 ff ff 	mov    -0x728(%rbp),%rdi
  8195d0:	44 8b 85 b8 f8 ff ff 	mov    -0x748(%rbp),%r8d
  8195d7:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  8195de:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  8195e5:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  8195ec:	e9 50 08 00 00       	jmpq   819e41 <pre_step3d_mod_mp_pre_step3d_tile_+0x5891>
  8195f1:	48 83 7d c8 08       	cmpq   $0x8,-0x38(%rbp)
  8195f6:	0f 85 ac 03 00 00    	jne    8199a8 <pre_step3d_mod_mp_pre_step3d_tile_+0x53f8>
  8195fc:	48 83 bd 58 ff ff ff 	cmpq   $0x8,-0xa8(%rbp)
  819603:	08 
  819604:	0f 85 9e 03 00 00    	jne    8199a8 <pre_step3d_mod_mp_pre_step3d_tile_+0x53f8>
  81960a:	48 83 bd 50 ff ff ff 	cmpq   $0x8,-0xb0(%rbp)
  819611:	08 
  819612:	0f 85 90 03 00 00    	jne    8199a8 <pre_step3d_mod_mp_pre_step3d_tile_+0x53f8>
  819618:	45 33 ed             	xor    %r13d,%r13d
  81961b:	45 33 e4             	xor    %r12d,%r12d
  81961e:	4c 89 a5 38 fa ff ff 	mov    %r12,-0x5c8(%rbp)
  819625:	4c 89 a5 30 fa ff ff 	mov    %r12,-0x5d0(%rbp)
  81962c:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  819633:	00 
  819634:	0f 8e 07 08 00 00    	jle    819e41 <pre_step3d_mod_mp_pre_step3d_tile_+0x5891>
  81963a:	48 8b b5 48 f6 ff ff 	mov    -0x9b8(%rbp),%rsi
  819641:	4c 8b b5 d0 f4 ff ff 	mov    -0xb30(%rbp),%r14
  819648:	48 0f af f7          	imul   %rdi,%rsi
  81964c:	4c 0f af f7          	imul   %rdi,%r14
  819650:	c5 7d 10 2d 08 bd 0a 	vmovupd 0xabd08(%rip),%ymm13        # 8c5360 <var$630.126.450+0x4a0>
  819657:	00 
  819658:	c5 fb 11 a5 00 f2 ff 	vmovsd %xmm4,-0xe00(%rbp)
  81965f:	ff 
  819660:	c5 fb 11 9d f8 f1 ff 	vmovsd %xmm3,-0xe08(%rbp)
  819667:	ff 
  819668:	c5 fb 11 95 f0 f1 ff 	vmovsd %xmm2,-0xe10(%rbp)
  81966f:	ff 
  819670:	c5 7b 10 25 a8 e3 0a 	vmovsd 0xae3a8(%rip),%xmm12        # 8c7a20 <__STRLITPACK_199.115+0x890>
  819677:	00 
  819678:	4c 8b bd 88 f8 ff ff 	mov    -0x778(%rbp),%r15
  81967f:	48 8b 8d 50 f6 ff ff 	mov    -0x9b0(%rbp),%rcx
  819686:	48 8b 95 38 f6 ff ff 	mov    -0x9c8(%rbp),%rdx
  81968d:	48 89 bd d8 f8 ff ff 	mov    %rdi,-0x728(%rbp)
  819694:	4b 8d 04 1f          	lea    (%r15,%r11,1),%rax
  819698:	4c 8b bd e0 f4 ff ff 	mov    -0xb20(%rbp),%r15
  81969f:	48 03 ce             	add    %rsi,%rcx
  8196a2:	48 03 b5 80 f6 ff ff 	add    -0x980(%rbp),%rsi
  8196a9:	49 03 d3             	add    %r11,%rdx
  8196ac:	48 89 b5 60 f9 ff ff 	mov    %rsi,-0x6a0(%rbp)
  8196b3:	48 89 95 70 f9 ff ff 	mov    %rdx,-0x690(%rbp)
  8196ba:	4d 03 fe             	add    %r14,%r15
  8196bd:	4c 03 b5 d8 f4 ff ff 	add    -0xb28(%rbp),%r14
  8196c4:	48 89 8d 78 f9 ff ff 	mov    %rcx,-0x688(%rbp)
  8196cb:	4c 89 b5 50 f9 ff ff 	mov    %r14,-0x6b0(%rbp)
  8196d2:	4c 89 bd 58 f9 ff ff 	mov    %r15,-0x6a8(%rbp)
  8196d9:	48 89 85 68 f9 ff ff 	mov    %rax,-0x698(%rbp)
  8196e0:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  8196e7:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  8196ee:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  8196f5:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  8196fc:	c5 fd 10 15 bc c9 0a 	vmovupd 0xac9bc(%rip),%ymm2        # 8c60c0 <var$630.126.450+0x1200>
  819703:	00 
  819704:	c5 fb 10 1d 0c e3 0a 	vmovsd 0xae30c(%rip),%xmm3        # 8c7a18 <__STRLITPACK_199.115+0x888>
  81970b:	00 
  81970c:	c5 fd 10 25 8c c9 0a 	vmovupd 0xac98c(%rip),%ymm4        # 8c60a0 <var$630.126.450+0x11e0>
  819713:	00 
  819714:	4c 89 e7             	mov    %r12,%rdi
  819717:	48 8b 95 30 fa ff ff 	mov    -0x5d0(%rbp),%rdx
  81971e:	48 8b b5 38 fa ff ff 	mov    -0x5c8(%rbp),%rsi
  819725:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  819729:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  819730:	48 3b 85 08 ff ff ff 	cmp    -0xf8(%rbp),%rax
  819737:	0f 8c 3a 02 00 00    	jl     819977 <pre_step3d_mod_mp_pre_step3d_tile_+0x53c7>
  81973d:	48 83 f9 04          	cmp    $0x4,%rcx
  819741:	0f 8c 69 b3 00 00    	jl     824ab0 <pre_step3d_mod_mp_pre_step3d_tile_+0x10500>
  819747:	4c 8b 85 68 f9 ff ff 	mov    -0x698(%rbp),%r8
  81974e:	45 33 f6             	xor    %r14d,%r14d
  819751:	4c 8b 9d 60 fe ff ff 	mov    -0x1a0(%rbp),%r11
  819758:	4c 8b 95 20 fc ff ff 	mov    -0x3e0(%rbp),%r10
  81975f:	4c 8b 8d 70 f9 ff ff 	mov    -0x690(%rbp),%r9
  819766:	4d 8d 3c 30          	lea    (%r8,%rsi,1),%r15
  81976a:	4c 89 bd a0 f9 ff ff 	mov    %r15,-0x660(%rbp)
  819771:	4d 03 dc             	add    %r12,%r11
  819774:	4c 8b bd 60 f9 ff ff 	mov    -0x6a0(%rbp),%r15
  81977b:	4d 03 d4             	add    %r12,%r10
  81977e:	4c 8b 85 78 f9 ff ff 	mov    -0x688(%rbp),%r8
  819785:	4c 03 ce             	add    %rsi,%r9
  819788:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  81978c:	48 89 95 30 fa ff ff 	mov    %rdx,-0x5d0(%rbp)
  819793:	4c 03 fa             	add    %rdx,%r15
  819796:	4c 89 bd 88 f9 ff ff 	mov    %r15,-0x678(%rbp)
  81979d:	4c 03 c2             	add    %rdx,%r8
  8197a0:	4c 8b bd 58 f9 ff ff 	mov    -0x6a8(%rbp),%r15
  8197a7:	48 89 b5 38 fa ff ff 	mov    %rsi,-0x5c8(%rbp)
  8197ae:	4c 89 a5 40 fa ff ff 	mov    %r12,-0x5c0(%rbp)
  8197b5:	4c 89 ad 48 fa ff ff 	mov    %r13,-0x5b8(%rbp)
  8197bc:	4c 03 ff             	add    %rdi,%r15
  8197bf:	4c 89 bd 80 f9 ff ff 	mov    %r15,-0x680(%rbp)
  8197c6:	49 89 c5             	mov    %rax,%r13
  8197c9:	4c 8b bd 50 f9 ff ff 	mov    -0x6b0(%rbp),%r15
  8197d0:	48 8b 8d 80 f9 ff ff 	mov    -0x680(%rbp),%rcx
  8197d7:	48 8b b5 88 f9 ff ff 	mov    -0x678(%rbp),%rsi
  8197de:	4c 8b a5 a0 f9 ff ff 	mov    -0x660(%rbp),%r12
  8197e5:	4c 03 ff             	add    %rdi,%r15
  8197e8:	4c 89 fa             	mov    %r15,%rdx
  8197eb:	4c 8b bd 48 ff ff ff 	mov    -0xb8(%rbp),%r15
  8197f2:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  8197f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  819800:	c4 01 7d 10 34 f0    	vmovupd (%r8,%r14,8),%ymm14
  819806:	c4 01 15 59 3c f4    	vmulpd (%r12,%r14,8),%ymm13,%ymm15
  81980c:	c4 a1 0d 58 44 f6 f8 	vaddpd -0x8(%rsi,%r14,8),%ymm14,%ymm0
  819813:	c4 01 7d 10 74 f2 08 	vmovupd 0x8(%r10,%r14,8),%ymm14
  81981a:	c5 85 59 c8          	vmulpd %ymm0,%ymm15,%ymm1
  81981e:	c4 21 5d 59 3c f2    	vmulpd (%rdx,%r14,8),%ymm4,%ymm15
  819824:	c4 81 0d 5c 04 f3    	vsubpd (%r11,%r14,8),%ymm14,%ymm0
  81982a:	c4 21 6d 59 34 f1    	vmulpd (%rcx,%r14,8),%ymm2,%ymm14
  819830:	c4 41 05 5c fe       	vsubpd %ymm14,%ymm15,%ymm15
  819835:	c4 01 05 59 34 f7    	vmulpd (%r15,%r14,8),%ymm15,%ymm14
  81983b:	c4 c1 75 58 ce       	vaddpd %ymm14,%ymm1,%ymm1
  819840:	c5 fd 58 c1          	vaddpd %ymm1,%ymm0,%ymm0
  819844:	c4 81 7d 11 04 f1    	vmovupd %ymm0,(%r9,%r14,8)
  81984a:	49 83 c6 04          	add    $0x4,%r14
  81984e:	4d 3b f5             	cmp    %r13,%r14
  819851:	72 ad                	jb     819800 <pre_step3d_mod_mp_pre_step3d_tile_+0x5250>
  819853:	48 8b 95 30 fa ff ff 	mov    -0x5d0(%rbp),%rdx
  81985a:	48 8b b5 38 fa ff ff 	mov    -0x5c8(%rbp),%rsi
  819861:	4c 8b a5 40 fa ff ff 	mov    -0x5c0(%rbp),%r12
  819868:	4c 8b ad 48 fa ff ff 	mov    -0x5b8(%rbp),%r13
  81986f:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  819873:	48 3b c1             	cmp    %rcx,%rax
  819876:	0f 83 fb 00 00 00    	jae    819977 <pre_step3d_mod_mp_pre_step3d_tile_+0x53c7>
  81987c:	4c 8b 8d 68 f9 ff ff 	mov    -0x698(%rbp),%r9
  819883:	4c 8b bd 78 f9 ff ff 	mov    -0x688(%rbp),%r15
  81988a:	4c 8b b5 60 fe ff ff 	mov    -0x1a0(%rbp),%r14
  819891:	4c 8b 9d 20 fc ff ff 	mov    -0x3e0(%rbp),%r11
  819898:	4d 8d 04 31          	lea    (%r9,%rsi,1),%r8
  81989c:	4c 89 85 90 f9 ff ff 	mov    %r8,-0x670(%rbp)
  8198a3:	4d 8d 0c 17          	lea    (%r15,%rdx,1),%r9
  8198a7:	4c 8b 85 60 f9 ff ff 	mov    -0x6a0(%rbp),%r8
  8198ae:	4d 03 f4             	add    %r12,%r14
  8198b1:	4c 8b 95 70 f9 ff ff 	mov    -0x690(%rbp),%r10
  8198b8:	4d 03 dc             	add    %r12,%r11
  8198bb:	48 89 b5 38 fa ff ff 	mov    %rsi,-0x5c8(%rbp)
  8198c2:	4c 89 a5 40 fa ff ff 	mov    %r12,-0x5c0(%rbp)
  8198c9:	4d 8d 3c 10          	lea    (%r8,%rdx,1),%r15
  8198cd:	4c 89 bd 98 f9 ff ff 	mov    %r15,-0x668(%rbp)
  8198d4:	4c 03 d6             	add    %rsi,%r10
  8198d7:	4c 8b bd 50 f9 ff ff 	mov    -0x6b0(%rbp),%r15
  8198de:	4c 8b 85 58 f9 ff ff 	mov    -0x6a8(%rbp),%r8
  8198e5:	4c 89 ad 48 fa ff ff 	mov    %r13,-0x5b8(%rbp)
  8198ec:	4c 8b a5 98 f9 ff ff 	mov    -0x668(%rbp),%r12
  8198f3:	4c 03 ff             	add    %rdi,%r15
  8198f6:	4c 03 c7             	add    %rdi,%r8
  8198f9:	4c 89 fe             	mov    %r15,%rsi
  8198fc:	4c 8b ad 90 f9 ff ff 	mov    -0x670(%rbp),%r13
  819903:	4c 8b bd 48 ff ff ff 	mov    -0xb8(%rbp),%r15
  81990a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  819910:	c4 41 7b 10 34 c1    	vmovsd (%r9,%rax,8),%xmm14
  819916:	c4 41 3b 59 7c c5 00 	vmulsd 0x0(%r13,%rax,8),%xmm8,%xmm15
  81991d:	c4 c1 0b 58 44 c4 f8 	vaddsd -0x8(%r12,%rax,8),%xmm14,%xmm0
  819924:	c4 41 7b 10 74 c3 08 	vmovsd 0x8(%r11,%rax,8),%xmm14
  81992b:	c5 83 59 c8          	vmulsd %xmm0,%xmm15,%xmm1
  81992f:	c4 c1 0b 5c 04 c6    	vsubsd (%r14,%rax,8),%xmm14,%xmm0
  819935:	c5 63 59 3c c6       	vmulsd (%rsi,%rax,8),%xmm3,%xmm15
  81993a:	c4 41 1b 59 34 c0    	vmulsd (%r8,%rax,8),%xmm12,%xmm14
  819940:	c4 41 03 5c fe       	vsubsd %xmm14,%xmm15,%xmm15
  819945:	c4 41 03 59 34 c7    	vmulsd (%r15,%rax,8),%xmm15,%xmm14
  81994b:	c4 c1 73 58 ce       	vaddsd %xmm14,%xmm1,%xmm1
  819950:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
  819954:	c4 c1 7b 11 04 c2    	vmovsd %xmm0,(%r10,%rax,8)
  81995a:	48 ff c0             	inc    %rax
  81995d:	48 3b c1             	cmp    %rcx,%rax
  819960:	72 ae                	jb     819910 <pre_step3d_mod_mp_pre_step3d_tile_+0x5360>
  819962:	48 8b b5 38 fa ff ff 	mov    -0x5c8(%rbp),%rsi
  819969:	4c 8b a5 40 fa ff ff 	mov    -0x5c0(%rbp),%r12
  819970:	4c 8b ad 48 fa ff ff 	mov    -0x5b8(%rbp),%r13
  819977:	49 ff c5             	inc    %r13
  81997a:	4c 03 a5 18 ff ff ff 	add    -0xe8(%rbp),%r12
  819981:	48 03 b5 20 ff ff ff 	add    -0xe0(%rbp),%rsi
  819988:	48 03 95 10 fd ff ff 	add    -0x2f0(%rbp),%rdx
  81998f:	48 03 bd 70 fa ff ff 	add    -0x590(%rbp),%rdi
  819996:	4c 3b ad 08 fd ff ff 	cmp    -0x2f8(%rbp),%r13
  81999d:	0f 82 86 fd ff ff    	jb     819729 <pre_step3d_mod_mp_pre_step3d_tile_+0x5179>
  8199a3:	e9 46 04 00 00       	jmpq   819dee <pre_step3d_mod_mp_pre_step3d_tile_+0x583e>
  8199a8:	45 33 e4             	xor    %r12d,%r12d
  8199ab:	33 f6                	xor    %esi,%esi
  8199ad:	33 c9                	xor    %ecx,%ecx
  8199af:	33 d2                	xor    %edx,%edx
  8199b1:	33 c0                	xor    %eax,%eax
  8199b3:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  8199ba:	00 
  8199bb:	0f 8e 80 04 00 00    	jle    819e41 <pre_step3d_mod_mp_pre_step3d_tile_+0x5891>
  8199c1:	4c 8b b5 48 f6 ff ff 	mov    -0x9b8(%rbp),%r14
  8199c8:	4c 0f af f7          	imul   %rdi,%r14
  8199cc:	4c 8b ad d0 f4 ff ff 	mov    -0xb30(%rbp),%r13
  8199d3:	4c 0f af ef          	imul   %rdi,%r13
  8199d7:	4c 8b bd 30 f8 ff ff 	mov    -0x7d0(%rbp),%r15
  8199de:	c5 fb 11 a5 00 f2 ff 	vmovsd %xmm4,-0xe00(%rbp)
  8199e5:	ff 
  8199e6:	c5 fb 11 9d f8 f1 ff 	vmovsd %xmm3,-0xe08(%rbp)
  8199ed:	ff 
  8199ee:	c5 fb 11 95 f0 f1 ff 	vmovsd %xmm2,-0xe10(%rbp)
  8199f5:	ff 
  8199f6:	4d 03 fb             	add    %r11,%r15
  8199f9:	4c 89 bd f8 f9 ff ff 	mov    %r15,-0x608(%rbp)
  819a00:	4c 8b bd 60 f6 ff ff 	mov    -0x9a0(%rbp),%r15
  819a07:	4c 89 a5 88 fa ff ff 	mov    %r12,-0x578(%rbp)
  819a0e:	48 89 bd d8 f8 ff ff 	mov    %rdi,-0x728(%rbp)
  819a15:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  819a1c:	4d 03 fe             	add    %r14,%r15
  819a1f:	4c 89 bd e8 f9 ff ff 	mov    %r15,-0x618(%rbp)
  819a26:	4c 8b bd c8 f4 ff ff 	mov    -0xb38(%rbp),%r15
  819a2d:	4c 03 b5 58 f6 ff ff 	add    -0x9a8(%rbp),%r14
  819a34:	4c 89 b5 b0 f9 ff ff 	mov    %r14,-0x650(%rbp)
  819a3b:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  819a42:	4d 03 fd             	add    %r13,%r15
  819a45:	4c 89 bd e0 f9 ff ff 	mov    %r15,-0x620(%rbp)
  819a4c:	4c 8b bd 70 f6 ff ff 	mov    -0x990(%rbp),%r15
  819a53:	4c 03 ad e8 f4 ff ff 	add    -0xb18(%rbp),%r13
  819a5a:	4c 89 ad a8 f9 ff ff 	mov    %r13,-0x658(%rbp)
  819a61:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  819a68:	4d 03 fb             	add    %r11,%r15
  819a6b:	4c 89 bd d8 f9 ff ff 	mov    %r15,-0x628(%rbp)
  819a72:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  819a79:	c5 fb 10 05 9f df 0a 	vmovsd 0xadf9f(%rip),%xmm0        # 8c7a20 <__STRLITPACK_199.115+0x890>
  819a80:	00 
  819a81:	c5 fb 10 0d 8f df 0a 	vmovsd 0xadf8f(%rip),%xmm1        # 8c7a18 <__STRLITPACK_199.115+0x888>
  819a88:	00 
  819a89:	c5 f9 10 25 1f d4 0a 	vmovupd 0xad41f(%rip),%xmm4        # 8c6eb0 <__STRLITPACK_54.50+0x90>
  819a90:	00 
  819a91:	c5 f9 10 15 07 d4 0a 	vmovupd 0xad407(%rip),%xmm2        # 8c6ea0 <__STRLITPACK_54.50+0x80>
  819a98:	00 
  819a99:	c5 f9 10 1d ff ce 0a 	vmovupd 0xaceff(%rip),%xmm3        # 8c69a0 <__STRLITPACK_19.34+0x10>
  819aa0:	00 
  819aa1:	48 8b bd 00 ff ff ff 	mov    -0x100(%rbp),%rdi
  819aa8:	48 3b bd 08 ff ff ff 	cmp    -0xf8(%rbp),%rdi
  819aaf:	0f 8c ff 02 00 00    	jl     819db4 <pre_step3d_mod_mp_pre_step3d_tile_+0x5804>
  819ab5:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
  819aba:	0f 84 62 b0 00 00    	je     824b22 <pre_step3d_mod_mp_pre_step3d_tile_+0x10572>
  819ac0:	48 83 7d c0 02       	cmpq   $0x2,-0x40(%rbp)
  819ac5:	0f 8c 57 b0 00 00    	jl     824b22 <pre_step3d_mod_mp_pre_step3d_tile_+0x10572>
  819acb:	48 8b bd a8 f9 ff ff 	mov    -0x658(%rbp),%rdi
  819ad2:	4c 8b 65 e0          	mov    -0x20(%rbp),%r12
  819ad6:	4c 8b bd f8 f9 ff ff 	mov    -0x608(%rbp),%r15
  819add:	4c 8b b5 b0 f9 ff ff 	mov    -0x650(%rbp),%r14
  819ae4:	4c 8d 04 07          	lea    (%rdi,%rax,1),%r8
  819ae8:	48 8b bd d8 f9 ff ff 	mov    -0x628(%rbp),%rdi
  819aef:	4c 89 a5 80 fa ff ff 	mov    %r12,-0x580(%rbp)
  819af6:	45 33 e4             	xor    %r12d,%r12d
  819af9:	4c 8b 9d 60 fe ff ff 	mov    -0x1a0(%rbp),%r11
  819b00:	4c 03 f9             	add    %rcx,%r15
  819b03:	4c 8b 95 20 fc ff ff 	mov    -0x3e0(%rbp),%r10
  819b0a:	4c 03 f2             	add    %rdx,%r14
  819b0d:	4c 8b 8d e8 f9 ff ff 	mov    -0x618(%rbp),%r9
  819b14:	4c 8b ad e0 f9 ff ff 	mov    -0x620(%rbp),%r13
  819b1b:	4c 03 de             	add    %rsi,%r11
  819b1e:	4c 89 85 c0 f9 ff ff 	mov    %r8,-0x640(%rbp)
  819b25:	4c 8d 04 0f          	lea    (%rdi,%rcx,1),%r8
  819b29:	4c 89 85 b8 f9 ff ff 	mov    %r8,-0x648(%rbp)
  819b30:	45 33 c0             	xor    %r8d,%r8d
  819b33:	33 ff                	xor    %edi,%edi
  819b35:	4c 03 d6             	add    %rsi,%r10
  819b38:	4c 03 ca             	add    %rdx,%r9
  819b3b:	4c 89 b5 68 ff ff ff 	mov    %r14,-0x98(%rbp)
  819b42:	4c 03 e8             	add    %rax,%r13
  819b45:	4c 89 bd 70 ff ff ff 	mov    %r15,-0x90(%rbp)
  819b4c:	48 89 8d 60 fa ff ff 	mov    %rcx,-0x5a0(%rbp)
  819b53:	48 89 b5 68 fa ff ff 	mov    %rsi,-0x598(%rbp)
  819b5a:	48 89 85 50 fa ff ff 	mov    %rax,-0x5b0(%rbp)
  819b61:	48 89 95 58 fa ff ff 	mov    %rdx,-0x5a8(%rbp)
  819b68:	49 89 ff             	mov    %rdi,%r15
  819b6b:	48 8b 8d b8 f9 ff ff 	mov    -0x648(%rbp),%rcx
  819b72:	48 8b b5 c0 f9 ff ff 	mov    -0x640(%rbp),%rsi
  819b79:	4c 8b 75 c8          	mov    -0x38(%rbp),%r14
  819b7d:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  819b84:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
  819b8b:	49 03 c0             	add    %r8,%rax
  819b8e:	c5 7b 10 28          	vmovsd (%rax),%xmm13
  819b92:	c4 21 11 16 34 30    	vmovhpd (%rax,%r14,1),%xmm13,%xmm14
  819b98:	49 8d 04 39          	lea    (%r9,%rdi,1),%rax
  819b9c:	c5 7b 10 20          	vmovsd (%rax),%xmm12
  819ba0:	c5 09 59 fb          	vmulpd %xmm3,%xmm14,%xmm15
  819ba4:	c5 19 16 34 10       	vmovhpd (%rax,%rdx,1),%xmm12,%xmm14
  819ba9:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  819bb0:	48 03 c7             	add    %rdi,%rax
  819bb3:	c5 7b 10 28          	vmovsd (%rax),%xmm13
  819bb7:	48 8d 3c 57          	lea    (%rdi,%rdx,2),%rdi
  819bbb:	c5 11 16 24 10       	vmovhpd (%rax,%rdx,1),%xmm13,%xmm12
  819bc0:	4b 8d 54 3d 00       	lea    0x0(%r13,%r15,1),%rdx
  819bc5:	c4 41 09 58 ec       	vaddpd %xmm12,%xmm14,%xmm13
  819bca:	c4 41 01 59 f5       	vmulpd %xmm13,%xmm15,%xmm14
  819bcf:	c4 01 79 10 7c e2 08 	vmovupd 0x8(%r10,%r12,8),%xmm15
  819bd6:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
  819bdd:	c5 7b 10 22          	vmovsd (%rdx),%xmm12
  819be1:	c4 01 01 5c 2c e3    	vsubpd (%r11,%r12,8),%xmm15,%xmm13
  819be7:	c5 19 16 3c 02       	vmovhpd (%rdx,%rax,1),%xmm12,%xmm15
  819bec:	4a 8d 14 3e          	lea    (%rsi,%r15,1),%rdx
  819bf0:	c4 41 69 59 e7       	vmulpd %xmm15,%xmm2,%xmm12
  819bf5:	c5 7b 10 3a          	vmovsd (%rdx),%xmm15
  819bf9:	4d 8d 3c 47          	lea    (%r15,%rax,2),%r15
  819bfd:	c5 01 16 3c 02       	vmovhpd (%rdx,%rax,1),%xmm15,%xmm15
  819c02:	c4 41 59 59 ff       	vmulpd %xmm15,%xmm4,%xmm15
  819c07:	c4 41 19 5c e7       	vsubpd %xmm15,%xmm12,%xmm12
  819c0c:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  819c13:	c4 21 19 59 24 e0    	vmulpd (%rax,%r12,8),%xmm12,%xmm12
  819c19:	c4 41 09 58 f4       	vaddpd %xmm12,%xmm14,%xmm14
  819c1e:	c4 41 11 58 ee       	vaddpd %xmm14,%xmm13,%xmm13
  819c23:	49 83 c4 02          	add    $0x2,%r12
  819c27:	49 8d 04 08          	lea    (%r8,%rcx,1),%rax
  819c2b:	c5 7b 11 28          	vmovsd %xmm13,(%rax)
  819c2f:	4f 8d 04 70          	lea    (%r8,%r14,2),%r8
  819c33:	c4 41 79 17 2c 06    	vmovhpd %xmm13,(%r14,%rax,1)
  819c39:	4c 3b 65 e0          	cmp    -0x20(%rbp),%r12
  819c3d:	0f 82 3a ff ff ff    	jb     819b7d <pre_step3d_mod_mp_pre_step3d_tile_+0x55cd>
  819c43:	48 8b 85 50 fa ff ff 	mov    -0x5b0(%rbp),%rax
  819c4a:	48 8b 95 58 fa ff ff 	mov    -0x5a8(%rbp),%rdx
  819c51:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
  819c58:	48 8b b5 68 fa ff ff 	mov    -0x598(%rbp),%rsi
  819c5f:	48 8b bd 80 fa ff ff 	mov    -0x580(%rbp),%rdi
  819c66:	4c 8b ad 50 ff ff ff 	mov    -0xb0(%rbp),%r13
  819c6d:	4c 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%r14
  819c74:	4c 8b 65 c8          	mov    -0x38(%rbp),%r12
  819c78:	4c 0f af ef          	imul   %rdi,%r13
  819c7c:	4c 0f af f7          	imul   %rdi,%r14
  819c80:	4c 0f af e7          	imul   %rdi,%r12
  819c84:	48 3b 7d c0          	cmp    -0x40(%rbp),%rdi
  819c88:	0f 83 26 01 00 00    	jae    819db4 <pre_step3d_mod_mp_pre_step3d_tile_+0x5804>
  819c8e:	4c 8b bd e0 f9 ff ff 	mov    -0x620(%rbp),%r15
  819c95:	4c 8b 9d 60 fe ff ff 	mov    -0x1a0(%rbp),%r11
  819c9c:	4c 8b 95 20 fc ff ff 	mov    -0x3e0(%rbp),%r10
  819ca3:	4c 8b 8d f8 f9 ff ff 	mov    -0x608(%rbp),%r9
  819caa:	4c 03 f8             	add    %rax,%r15
  819cad:	4c 89 bd d0 f9 ff ff 	mov    %r15,-0x630(%rbp)
  819cb4:	4c 03 de             	add    %rsi,%r11
  819cb7:	4c 8b bd a8 f9 ff ff 	mov    -0x658(%rbp),%r15
  819cbe:	4c 03 d6             	add    %rsi,%r10
  819cc1:	4c 8b 85 e8 f9 ff ff 	mov    -0x618(%rbp),%r8
  819cc8:	4c 03 c9             	add    %rcx,%r9
  819ccb:	48 8b bd b0 f9 ff ff 	mov    -0x650(%rbp),%rdi
  819cd2:	48 89 85 50 fa ff ff 	mov    %rax,-0x5b0(%rbp)
  819cd9:	4c 03 f8             	add    %rax,%r15
  819cdc:	4c 89 bd c8 f9 ff ff 	mov    %r15,-0x638(%rbp)
  819ce3:	4c 03 c2             	add    %rdx,%r8
  819ce6:	4c 8b bd d8 f9 ff ff 	mov    -0x628(%rbp),%r15
  819ced:	48 03 fa             	add    %rdx,%rdi
  819cf0:	48 89 95 58 fa ff ff 	mov    %rdx,-0x5a8(%rbp)
  819cf7:	48 89 8d 60 fa ff ff 	mov    %rcx,-0x5a0(%rbp)
  819cfe:	48 89 b5 68 fa ff ff 	mov    %rsi,-0x598(%rbp)
  819d05:	4c 03 f9             	add    %rcx,%r15
  819d08:	4c 89 f8             	mov    %r15,%rax
  819d0b:	48 8b 95 c8 f9 ff ff 	mov    -0x638(%rbp),%rdx
  819d12:	48 8b 8d d0 f9 ff ff 	mov    -0x630(%rbp),%rcx
  819d19:	48 8b b5 80 fa ff ff 	mov    -0x580(%rbp),%rsi
  819d20:	4c 8b bd 48 ff ff ff 	mov    -0xb8(%rbp),%r15
  819d27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  819d2e:	00 00 
  819d30:	c4 01 7b 10 34 06    	vmovsd (%r14,%r8,1),%xmm14
  819d36:	c4 01 3b 59 3c 0c    	vmulsd (%r12,%r9,1),%xmm8,%xmm15
  819d3c:	c4 41 0b 58 24 3e    	vaddsd (%r14,%rdi,1),%xmm14,%xmm12
  819d42:	c4 41 7b 10 74 f2 08 	vmovsd 0x8(%r10,%rsi,8),%xmm14
  819d49:	c4 41 03 59 ec       	vmulsd %xmm12,%xmm15,%xmm13
  819d4e:	c4 41 0b 5c 24 f3    	vsubsd (%r11,%rsi,8),%xmm14,%xmm12
  819d54:	c4 41 73 59 7c 0d 00 	vmulsd 0x0(%r13,%rcx,1),%xmm1,%xmm15
  819d5b:	c4 41 7b 59 74 15 00 	vmulsd 0x0(%r13,%rdx,1),%xmm0,%xmm14
  819d62:	4c 03 b5 58 ff ff ff 	add    -0xa8(%rbp),%r14
  819d69:	c4 41 03 5c fe       	vsubsd %xmm14,%xmm15,%xmm15
  819d6e:	c4 41 03 59 34 f7    	vmulsd (%r15,%rsi,8),%xmm15,%xmm14
  819d74:	48 ff c6             	inc    %rsi
  819d77:	4c 03 ad 50 ff ff ff 	add    -0xb0(%rbp),%r13
  819d7e:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  819d83:	c4 41 13 58 e4       	vaddsd %xmm12,%xmm13,%xmm12
  819d88:	c4 41 7b 11 24 04    	vmovsd %xmm12,(%r12,%rax,1)
  819d8e:	4c 03 65 c8          	add    -0x38(%rbp),%r12
  819d92:	48 3b 75 c0          	cmp    -0x40(%rbp),%rsi
  819d96:	72 98                	jb     819d30 <pre_step3d_mod_mp_pre_step3d_tile_+0x5780>
  819d98:	48 8b 85 50 fa ff ff 	mov    -0x5b0(%rbp),%rax
  819d9f:	48 8b 95 58 fa ff ff 	mov    -0x5a8(%rbp),%rdx
  819da6:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
  819dad:	48 8b b5 68 fa ff ff 	mov    -0x598(%rbp),%rsi
  819db4:	48 8b bd 88 fa ff ff 	mov    -0x578(%rbp),%rdi
  819dbb:	48 ff c7             	inc    %rdi
  819dbe:	48 03 b5 18 ff ff ff 	add    -0xe8(%rbp),%rsi
  819dc5:	48 03 8d 20 ff ff ff 	add    -0xe0(%rbp),%rcx
  819dcc:	48 03 95 10 fd ff ff 	add    -0x2f0(%rbp),%rdx
  819dd3:	48 03 85 70 fa ff ff 	add    -0x590(%rbp),%rax
  819dda:	48 89 bd 88 fa ff ff 	mov    %rdi,-0x578(%rbp)
  819de1:	48 3b bd 08 fd ff ff 	cmp    -0x2f8(%rbp),%rdi
  819de8:	0f 82 b3 fc ff ff    	jb     819aa1 <pre_step3d_mod_mp_pre_step3d_tile_+0x54f1>
  819dee:	c5 fb 10 a5 00 f2 ff 	vmovsd -0xe00(%rbp),%xmm4
  819df5:	ff 
  819df6:	c5 fb 10 9d f8 f1 ff 	vmovsd -0xe08(%rbp),%xmm3
  819dfd:	ff 
  819dfe:	c5 fb 10 95 f0 f1 ff 	vmovsd -0xe10(%rbp),%xmm2
  819e05:	ff 
  819e06:	48 8b bd d8 f8 ff ff 	mov    -0x728(%rbp),%rdi
  819e0d:	44 8b 85 b8 f8 ff ff 	mov    -0x748(%rbp),%r8d
  819e14:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  819e1b:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  819e22:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  819e29:	c5 fd 10 0d 4f b1 0a 	vmovupd 0xab14f(%rip),%ymm1        # 8c4f80 <var$630.126.450+0xc0>
  819e30:	00 
  819e31:	c5 f9 10 05 17 cf 0a 	vmovupd 0xacf17(%rip),%xmm0        # 8c6d50 <__STRLITPACK_124.84+0x50>
  819e38:	00 
  819e39:	c5 7b 10 2d bf d3 0a 	vmovsd 0xad3bf(%rip),%xmm13        # 8c7200 <__STRLITPACK_199.115+0x70>
  819e40:	00 
  819e41:	44 3b 95 c8 fb ff ff 	cmp    -0x438(%rbp),%r10d
  819e48:	0f 8c f4 24 00 00    	jl     81c342 <pre_step3d_mod_mp_pre_step3d_tile_+0x7d92>
  819e4e:	48 83 7d d0 08       	cmpq   $0x8,-0x30(%rbp)
  819e53:	0f 85 c5 03 00 00    	jne    81a21e <pre_step3d_mod_mp_pre_step3d_tile_+0x5c6e>
  819e59:	48 83 7d 80 08       	cmpq   $0x8,-0x80(%rbp)
  819e5e:	0f 85 ba 03 00 00    	jne    81a21e <pre_step3d_mod_mp_pre_step3d_tile_+0x5c6e>
  819e64:	48 83 7d d8 08       	cmpq   $0x8,-0x28(%rbp)
  819e69:	0f 85 af 03 00 00    	jne    81a21e <pre_step3d_mod_mp_pre_step3d_tile_+0x5c6e>
  819e6f:	48 8b 95 90 fa ff ff 	mov    -0x570(%rbp),%rdx
  819e76:	33 c0                	xor    %eax,%eax
  819e78:	48 89 85 18 fc ff ff 	mov    %rax,-0x3e8(%rbp)
  819e7f:	48 89 95 90 fb ff ff 	mov    %rdx,-0x470(%rbp)
  819e86:	48 89 85 88 fb ff ff 	mov    %rax,-0x478(%rbp)
  819e8d:	48 89 85 80 fb ff ff 	mov    %rax,-0x480(%rbp)
  819e94:	48 89 85 28 f2 ff ff 	mov    %rax,-0xdd8(%rbp)
  819e9b:	48 83 bd 10 ff ff ff 	cmpq   $0x0,-0xf0(%rbp)
  819ea2:	00 
  819ea3:	0f 8e e5 07 00 00    	jle    81a68e <pre_step3d_mod_mp_pre_step3d_tile_+0x60de>
  819ea9:	4c 8b b5 a8 f8 ff ff 	mov    -0x758(%rbp),%r14
  819eb0:	4c 8b ad 80 f5 ff ff 	mov    -0xa80(%rbp),%r13
  819eb7:	4c 0f af f7          	imul   %rdi,%r14
  819ebb:	4c 0f af ef          	imul   %rdi,%r13
  819ebf:	48 8b b5 b8 f5 ff ff 	mov    -0xa48(%rbp),%rsi
  819ec6:	48 8b 8d f0 f5 ff ff 	mov    -0xa10(%rbp),%rcx
  819ecd:	48 8b 95 e8 f5 ff ff 	mov    -0xa18(%rbp),%rdx
  819ed4:	4c 8b a5 c8 f5 ff ff 	mov    -0xa38(%rbp),%r12
  819edb:	49 03 f1             	add    %r9,%rsi
  819ede:	48 8b 85 b0 f5 ff ff 	mov    -0xa50(%rbp),%rax
  819ee5:	49 03 ce             	add    %r14,%rcx
  819ee8:	4c 8b bd e0 f5 ff ff 	mov    -0xa20(%rbp),%r15
  819eef:	49 03 d6             	add    %r14,%rdx
  819ef2:	48 89 95 b8 fa ff ff 	mov    %rdx,-0x548(%rbp)
  819ef9:	4d 03 e1             	add    %r9,%r12
  819efc:	48 89 8d c0 fa ff ff 	mov    %rcx,-0x540(%rbp)
  819f03:	49 03 c6             	add    %r14,%rax
  819f06:	4c 03 b5 98 f5 ff ff 	add    -0xa68(%rbp),%r14
  819f0d:	4d 03 fd             	add    %r13,%r15
  819f10:	4c 03 ad 70 f3 ff ff 	add    -0xc90(%rbp),%r13
  819f17:	48 89 b5 c8 fa ff ff 	mov    %rsi,-0x538(%rbp)
  819f1e:	48 89 bd d8 f8 ff ff 	mov    %rdi,-0x728(%rbp)
  819f25:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  819f2c:	4c 89 b5 98 fa ff ff 	mov    %r14,-0x568(%rbp)
  819f33:	4c 89 ad a0 fa ff ff 	mov    %r13,-0x560(%rbp)
  819f3a:	4c 89 bd a8 fa ff ff 	mov    %r15,-0x558(%rbp)
  819f41:	48 89 85 b0 fa ff ff 	mov    %rax,-0x550(%rbp)
  819f48:	4c 89 a5 d0 fa ff ff 	mov    %r12,-0x530(%rbp)
  819f4f:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  819f56:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  819f5d:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  819f64:	4c 8b 85 28 f2 ff ff 	mov    -0xdd8(%rbp),%r8
  819f6b:	48 8b 8d 80 fb ff ff 	mov    -0x480(%rbp),%rcx
  819f72:	48 8b b5 88 fb ff ff 	mov    -0x478(%rbp),%rsi
  819f79:	48 8b bd 90 fb ff ff 	mov    -0x470(%rbp),%rdi
  819f80:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
  819f87:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  819f8e:	48 3b 85 f8 fb ff ff 	cmp    -0x408(%rbp),%rax
  819f95:	0f 8c 44 02 00 00    	jl     81a1df <pre_step3d_mod_mp_pre_step3d_tile_+0x5c2f>
  819f9b:	48 83 fa 04          	cmp    $0x4,%rdx
  819f9f:	0f 8c 12 ab 00 00    	jl     824ab7 <pre_step3d_mod_mp_pre_step3d_tile_+0x10507>
  819fa5:	4c 8b 8d a0 fa ff ff 	mov    -0x560(%rbp),%r9
  819fac:	45 33 f6             	xor    %r14d,%r14d
  819faf:	4c 8b ad b0 fa ff ff 	mov    -0x550(%rbp),%r13
  819fb6:	4c 8b a5 c0 fa ff ff 	mov    -0x540(%rbp),%r12
  819fbd:	4c 8b 9d b8 fa ff ff 	mov    -0x548(%rbp),%r11
  819fc4:	4d 8d 3c 09          	lea    (%r9,%rcx,1),%r15
  819fc8:	4c 89 bd 08 fb ff ff 	mov    %r15,-0x4f8(%rbp)
  819fcf:	4c 03 ee             	add    %rsi,%r13
  819fd2:	4c 8b bd d0 fa ff ff 	mov    -0x530(%rbp),%r15
  819fd9:	4c 03 e6             	add    %rsi,%r12
  819fdc:	4c 8b 95 98 fa ff ff 	mov    -0x568(%rbp),%r10
  819fe3:	4c 03 de             	add    %rsi,%r11
  819fe6:	4c 8b 8d a8 fa ff ff 	mov    -0x558(%rbp),%r9
  819fed:	48 89 bd d8 fa ff ff 	mov    %rdi,-0x528(%rbp)
  819ff4:	4d 03 f8             	add    %r8,%r15
  819ff7:	4c 89 bd f0 fa ff ff 	mov    %r15,-0x510(%rbp)
  819ffe:	4c 03 d6             	add    %rsi,%r10
  81a001:	4c 8b bd c8 fa ff ff 	mov    -0x538(%rbp),%r15
  81a008:	4c 03 c9             	add    %rcx,%r9
  81a00b:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  81a012:	48 89 8d 80 fb ff ff 	mov    %rcx,-0x480(%rbp)
  81a019:	48 89 b5 88 fb ff ff 	mov    %rsi,-0x478(%rbp)
  81a020:	4d 03 f8             	add    %r8,%r15
  81a023:	4c 89 bd e0 fa ff ff 	mov    %r15,-0x520(%rbp)
  81a02a:	49 89 c7             	mov    %rax,%r15
  81a02d:	48 89 bd 90 fb ff ff 	mov    %rdi,-0x470(%rbp)
  81a034:	48 8b 95 d8 fa ff ff 	mov    -0x528(%rbp),%rdx
  81a03b:	48 8b 8d e0 fa ff ff 	mov    -0x520(%rbp),%rcx
  81a042:	48 8b b5 f0 fa ff ff 	mov    -0x510(%rbp),%rsi
  81a049:	48 8b bd 08 fb ff ff 	mov    -0x4f8(%rbp),%rdi
  81a050:	c4 01 7d 10 24 f3    	vmovupd (%r11,%r14,8),%ymm12
  81a056:	c4 01 1d 58 34 f4    	vaddpd (%r12,%r14,8),%ymm12,%ymm14
  81a05c:	c4 01 0d 5c 7c f5 00 	vsubpd 0x0(%r13,%r14,8),%ymm14,%ymm15
  81a063:	c4 01 05 5c 24 f2    	vsubpd (%r10,%r14,8),%ymm15,%ymm12
  81a069:	c4 01 7d 10 3c f1    	vmovupd (%r9,%r14,8),%ymm15
  81a06f:	c4 41 75 5e f4       	vdivpd %ymm12,%ymm1,%ymm14
  81a074:	c5 0d 59 e7          	vmulpd %ymm7,%ymm14,%ymm12
  81a078:	c4 21 05 5c 34 f7    	vsubpd (%rdi,%r14,8),%ymm15,%ymm14
  81a07e:	c4 21 7d 10 3c f1    	vmovupd (%rcx,%r14,8),%ymm15
  81a084:	c4 41 1d 59 e6       	vmulpd %ymm14,%ymm12,%ymm12
  81a089:	c4 21 05 58 34 f6    	vaddpd (%rsi,%r14,8),%ymm15,%ymm14
  81a08f:	c4 41 1d 59 fe       	vmulpd %ymm14,%ymm12,%ymm15
  81a094:	49 83 c6 04          	add    $0x4,%r14
  81a098:	c5 7d 11 7a 08       	vmovupd %ymm15,0x8(%rdx)
  81a09d:	48 83 c2 20          	add    $0x20,%rdx
  81a0a1:	4d 3b f7             	cmp    %r15,%r14
  81a0a4:	72 aa                	jb     81a050 <pre_step3d_mod_mp_pre_step3d_tile_+0x5aa0>
  81a0a6:	48 8b 8d 80 fb ff ff 	mov    -0x480(%rbp),%rcx
  81a0ad:	48 8b b5 88 fb ff ff 	mov    -0x478(%rbp),%rsi
  81a0b4:	48 8b bd 90 fb ff ff 	mov    -0x470(%rbp),%rdi
  81a0bb:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
  81a0c2:	4c 8d 34 c5 00 00 00 	lea    0x0(,%rax,8),%r14
  81a0c9:	00 
  81a0ca:	48 3b c2             	cmp    %rdx,%rax
  81a0cd:	0f 83 0c 01 00 00    	jae    81a1df <pre_step3d_mod_mp_pre_step3d_tile_+0x5c2f>
  81a0d3:	4c 8b bd a0 fa ff ff 	mov    -0x560(%rbp),%r15
  81a0da:	4c 8d 2c c7          	lea    (%rdi,%rax,8),%r13
  81a0de:	4c 8b a5 b0 fa ff ff 	mov    -0x550(%rbp),%r12
  81a0e5:	4c 8b 9d c0 fa ff ff 	mov    -0x540(%rbp),%r11
  81a0ec:	4c 8b 95 b8 fa ff ff 	mov    -0x548(%rbp),%r10
  81a0f3:	4c 03 f9             	add    %rcx,%r15
  81a0f6:	4c 89 bd f8 fa ff ff 	mov    %r15,-0x508(%rbp)
  81a0fd:	4c 03 e6             	add    %rsi,%r12
  81a100:	4c 8b bd a8 fa ff ff 	mov    -0x558(%rbp),%r15
  81a107:	4c 03 de             	add    %rsi,%r11
  81a10a:	4c 8b 8d 98 fa ff ff 	mov    -0x568(%rbp),%r9
  81a111:	4c 03 d6             	add    %rsi,%r10
  81a114:	48 89 8d 80 fb ff ff 	mov    %rcx,-0x480(%rbp)
  81a11b:	48 89 b5 88 fb ff ff 	mov    %rsi,-0x478(%rbp)
  81a122:	4c 03 f9             	add    %rcx,%r15
  81a125:	4c 89 bd 00 fb ff ff 	mov    %r15,-0x500(%rbp)
  81a12c:	4c 03 ce             	add    %rsi,%r9
  81a12f:	4c 8b bd d0 fa ff ff 	mov    -0x530(%rbp),%r15
  81a136:	48 89 bd 90 fb ff ff 	mov    %rdi,-0x470(%rbp)
  81a13d:	48 8b bd 00 fb ff ff 	mov    -0x500(%rbp),%rdi
  81a144:	4d 03 f8             	add    %r8,%r15
  81a147:	4c 89 bd e8 fa ff ff 	mov    %r15,-0x518(%rbp)
  81a14e:	4c 8b bd c8 fa ff ff 	mov    -0x538(%rbp),%r15
  81a155:	48 8b b5 e8 fa ff ff 	mov    -0x518(%rbp),%rsi
  81a15c:	4d 03 f8             	add    %r8,%r15
  81a15f:	4c 89 f9             	mov    %r15,%rcx
  81a162:	4c 8b bd f8 fa ff ff 	mov    -0x508(%rbp),%r15
  81a169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  81a170:	c4 41 7b 10 24 c2    	vmovsd (%r10,%rax,8),%xmm12
  81a176:	c4 41 1b 58 34 c3    	vaddsd (%r11,%rax,8),%xmm12,%xmm14
  81a17c:	c4 41 0b 5c 3c c4    	vsubsd (%r12,%rax,8),%xmm14,%xmm15
  81a182:	c4 41 03 5c 24 c1    	vsubsd (%r9,%rax,8),%xmm15,%xmm12
  81a188:	48 ff c0             	inc    %rax
  81a18b:	c4 41 13 5e f4       	vdivsd %xmm12,%xmm13,%xmm14
  81a190:	c4 41 7b 10 3c 3e    	vmovsd (%r14,%rdi,1),%xmm15
  81a196:	c4 41 63 59 e6       	vmulsd %xmm14,%xmm3,%xmm12
  81a19b:	c4 01 03 5c 34 3e    	vsubsd (%r14,%r15,1),%xmm15,%xmm14
  81a1a1:	c4 41 7b 10 3c 0e    	vmovsd (%r14,%rcx,1),%xmm15
  81a1a7:	c4 41 1b 59 e6       	vmulsd %xmm14,%xmm12,%xmm12
  81a1ac:	c4 41 03 58 34 36    	vaddsd (%r14,%rsi,1),%xmm15,%xmm14
  81a1b2:	c4 41 1b 59 fe       	vmulsd %xmm14,%xmm12,%xmm15
  81a1b7:	49 83 c6 08          	add    $0x8,%r14
  81a1bb:	c4 41 7b 11 7d 08    	vmovsd %xmm15,0x8(%r13)
  81a1c1:	49 83 c5 08          	add    $0x8,%r13
  81a1c5:	48 3b c2             	cmp    %rdx,%rax
  81a1c8:	72 a6                	jb     81a170 <pre_step3d_mod_mp_pre_step3d_tile_+0x5bc0>
  81a1ca:	48 8b 8d 80 fb ff ff 	mov    -0x480(%rbp),%rcx
  81a1d1:	48 8b b5 88 fb ff ff 	mov    -0x478(%rbp),%rsi
  81a1d8:	48 8b bd 90 fb ff ff 	mov    -0x470(%rbp),%rdi
  81a1df:	48 8b 85 18 fc ff ff 	mov    -0x3e8(%rbp),%rax
  81a1e6:	48 ff c0             	inc    %rax
  81a1e9:	48 03 bd 18 ff ff ff 	add    -0xe8(%rbp),%rdi
  81a1f0:	48 03 b5 30 ff ff ff 	add    -0xd0(%rbp),%rsi
  81a1f7:	48 03 8d 00 fc ff ff 	add    -0x400(%rbp),%rcx
  81a1fe:	4c 03 85 28 ff ff ff 	add    -0xd8(%rbp),%r8
  81a205:	48 89 85 18 fc ff ff 	mov    %rax,-0x3e8(%rbp)
  81a20c:	48 3b 85 10 ff ff ff 	cmp    -0xf0(%rbp),%rax
  81a213:	0f 82 6e fd ff ff    	jb     819f87 <pre_step3d_mod_mp_pre_step3d_tile_+0x59d7>
  81a219:	e9 4d 04 00 00       	jmpq   81a66b <pre_step3d_mod_mp_pre_step3d_tile_+0x60bb>
  81a21e:	45 33 e4             	xor    %r12d,%r12d
  81a221:	33 c9                	xor    %ecx,%ecx
  81a223:	33 d2                	xor    %edx,%edx
  81a225:	33 f6                	xor    %esi,%esi
  81a227:	33 c0                	xor    %eax,%eax
  81a229:	48 83 bd 10 ff ff ff 	cmpq   $0x0,-0xf0(%rbp)
  81a230:	00 
  81a231:	0f 8e 57 04 00 00    	jle    81a68e <pre_step3d_mod_mp_pre_step3d_tile_+0x60de>
  81a237:	4c 8b b5 a8 f8 ff ff 	mov    -0x758(%rbp),%r14
  81a23e:	4c 0f af f7          	imul   %rdi,%r14
  81a242:	4c 8b bd a8 f5 ff ff 	mov    -0xa58(%rbp),%r15
  81a249:	4c 8b ad 80 f5 ff ff 	mov    -0xa80(%rbp),%r13
  81a250:	4c 0f af ef          	imul   %rdi,%r13
  81a254:	4c 89 a5 10 fc ff ff 	mov    %r12,-0x3f0(%rbp)
  81a25b:	4d 03 fe             	add    %r14,%r15
  81a25e:	4c 89 bd 50 fb ff ff 	mov    %r15,-0x4b0(%rbp)
  81a265:	4c 8b bd 88 f5 ff ff 	mov    -0xa78(%rbp),%r15
  81a26c:	48 89 bd d8 f8 ff ff 	mov    %rdi,-0x728(%rbp)
  81a273:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  81a27a:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  81a281:	4d 03 fe             	add    %r14,%r15
  81a284:	4c 89 bd 78 fb ff ff 	mov    %r15,-0x488(%rbp)
  81a28b:	4c 8b bd c0 f5 ff ff 	mov    -0xa40(%rbp),%r15
  81a292:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  81a299:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  81a2a0:	4d 03 fe             	add    %r14,%r15
  81a2a3:	4c 89 bd 58 fb ff ff 	mov    %r15,-0x4a8(%rbp)
  81a2aa:	4c 8b bd a0 f5 ff ff 	mov    -0xa60(%rbp),%r15
  81a2b1:	4c 03 b5 d0 f5 ff ff 	add    -0xa30(%rbp),%r14
  81a2b8:	4c 89 b5 18 fb ff ff 	mov    %r14,-0x4e8(%rbp)
  81a2bf:	4d 03 fd             	add    %r13,%r15
  81a2c2:	4c 89 bd 60 fb ff ff 	mov    %r15,-0x4a0(%rbp)
  81a2c9:	4c 8b bd d8 f5 ff ff 	mov    -0xa28(%rbp),%r15
  81a2d0:	4c 03 ad 78 f5 ff ff 	add    -0xa88(%rbp),%r13
  81a2d7:	4c 89 ad 10 fb ff ff 	mov    %r13,-0x4f0(%rbp)
  81a2de:	4d 03 f9             	add    %r9,%r15
  81a2e1:	4c 89 bd 68 fb ff ff 	mov    %r15,-0x498(%rbp)
  81a2e8:	4c 8b bd 90 f5 ff ff 	mov    -0xa70(%rbp),%r15
  81a2ef:	4d 03 f9             	add    %r9,%r15
  81a2f2:	4c 89 bd 70 fb ff ff 	mov    %r15,-0x490(%rbp)
  81a2f9:	48 8b bd 00 ff ff ff 	mov    -0x100(%rbp),%rdi
  81a300:	48 3b bd f8 fb ff ff 	cmp    -0x408(%rbp),%rdi
  81a307:	0f 8c 24 03 00 00    	jl     81a631 <pre_step3d_mod_mp_pre_step3d_tile_+0x6081>
  81a30d:	48 83 bd 78 ff ff ff 	cmpq   $0x2,-0x88(%rbp)
  81a314:	02 
  81a315:	0f 8c f7 a7 00 00    	jl     824b12 <pre_step3d_mod_mp_pre_step3d_tile_+0x10562>
  81a31b:	48 8b bd 68 fb ff ff 	mov    -0x498(%rbp),%rdi
  81a322:	4c 8b 5d 88          	mov    -0x78(%rbp),%r11
  81a326:	4c 8b bd 78 fb ff ff 	mov    -0x488(%rbp),%r15
  81a32d:	4c 8b b5 10 fb ff ff 	mov    -0x4f0(%rbp),%r14
  81a334:	4c 8d 2c 07          	lea    (%rdi,%rax,1),%r13
  81a338:	48 8b bd 70 fb ff ff 	mov    -0x490(%rbp),%rdi
  81a33f:	4c 89 ad 38 fb ff ff 	mov    %r13,-0x4c8(%rbp)
  81a346:	4c 03 fa             	add    %rdx,%r15
  81a349:	4c 89 9d 08 fc ff ff 	mov    %r11,-0x3f8(%rbp)
  81a350:	45 33 db             	xor    %r11d,%r11d
  81a353:	4c 8b 95 50 fb ff ff 	mov    -0x4b0(%rbp),%r10
  81a35a:	4c 8d 2c 07          	lea    (%rdi,%rax,1),%r13
  81a35e:	48 8b bd 90 fa ff ff 	mov    -0x570(%rbp),%rdi
  81a365:	4c 03 f6             	add    %rsi,%r14
  81a368:	4c 8b 8d 58 fb ff ff 	mov    -0x4a8(%rbp),%r9
  81a36f:	4c 8b 85 18 fb ff ff 	mov    -0x4e8(%rbp),%r8
  81a376:	4c 03 d2             	add    %rdx,%r10
  81a379:	4c 8b a5 60 fb ff ff 	mov    -0x4a0(%rbp),%r12
  81a380:	4c 89 ad 28 fb ff ff 	mov    %r13,-0x4d8(%rbp)
  81a387:	4c 8d 2c 0f          	lea    (%rdi,%rcx,1),%r13
  81a38b:	4c 89 ad 20 fb ff ff 	mov    %r13,-0x4e0(%rbp)
  81a392:	45 33 ed             	xor    %r13d,%r13d
  81a395:	33 ff                	xor    %edi,%edi
  81a397:	4c 03 ca             	add    %rdx,%r9
  81a39a:	4c 03 c2             	add    %rdx,%r8
  81a39d:	48 89 85 98 fb ff ff 	mov    %rax,-0x468(%rbp)
  81a3a4:	4c 03 e6             	add    %rsi,%r12
  81a3a7:	48 89 b5 a0 fb ff ff 	mov    %rsi,-0x460(%rbp)
  81a3ae:	48 89 95 a8 fb ff ff 	mov    %rdx,-0x458(%rbp)
  81a3b5:	48 89 8d b0 fb ff ff 	mov    %rcx,-0x450(%rbp)
  81a3bc:	4c 89 75 90          	mov    %r14,-0x70(%rbp)
  81a3c0:	4c 89 7d 98          	mov    %r15,-0x68(%rbp)
  81a3c4:	48 89 f8             	mov    %rdi,%rax
  81a3c7:	48 8b 95 20 fb ff ff 	mov    -0x4e0(%rbp),%rdx
  81a3ce:	48 8b 8d 28 fb ff ff 	mov    -0x4d8(%rbp),%rcx
  81a3d5:	48 8b b5 38 fb ff ff 	mov    -0x4c8(%rbp),%rsi
  81a3dc:	4c 8b 7d 98          	mov    -0x68(%rbp),%r15
  81a3e0:	4c 8b 75 d0          	mov    -0x30(%rbp),%r14
  81a3e4:	4d 03 fd             	add    %r13,%r15
  81a3e7:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81a3ec:	c4 01 19 16 34 37    	vmovhpd (%r15,%r14,1),%xmm12,%xmm14
  81a3f2:	4f 8d 3c 28          	lea    (%r8,%r13,1),%r15
  81a3f6:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81a3fb:	c4 01 01 16 24 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm12
  81a401:	4f 8d 3c 2a          	lea    (%r10,%r13,1),%r15
  81a405:	c4 41 09 58 f4       	vaddpd %xmm12,%xmm14,%xmm14
  81a40a:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81a40f:	c4 01 01 16 24 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm12
  81a415:	4f 8d 3c 29          	lea    (%r9,%r13,1),%r15
  81a419:	c4 41 09 5c f4       	vsubpd %xmm12,%xmm14,%xmm14
  81a41e:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81a423:	4f 8d 6c 75 00       	lea    0x0(%r13,%r14,2),%r13
  81a428:	c4 01 01 16 24 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm12
  81a42e:	4d 8d 34 3c          	lea    (%r12,%rdi,1),%r14
  81a432:	c4 41 09 5c fc       	vsubpd %xmm12,%xmm14,%xmm15
  81a437:	c4 41 79 5e f7       	vdivpd %xmm15,%xmm0,%xmm14
  81a43c:	4c 8b 7d 80          	mov    -0x80(%rbp),%r15
  81a440:	c4 41 7b 10 26       	vmovsd (%r14),%xmm12
  81a445:	c4 41 09 59 f1       	vmulpd %xmm9,%xmm14,%xmm14
  81a44a:	c4 01 19 16 3c 3e    	vmovhpd (%r14,%r15,1),%xmm12,%xmm15
  81a450:	4c 8b 75 90          	mov    -0x70(%rbp),%r14
  81a454:	4c 03 f7             	add    %rdi,%r14
  81a457:	c4 41 7b 10 26       	vmovsd (%r14),%xmm12
  81a45c:	4a 8d 3c 7f          	lea    (%rdi,%r15,2),%rdi
  81a460:	c4 01 19 16 24 3e    	vmovhpd (%r14,%r15,1),%xmm12,%xmm12
  81a466:	4c 8d 3c 06          	lea    (%rsi,%rax,1),%r15
  81a46a:	c4 41 01 5c fc       	vsubpd %xmm12,%xmm15,%xmm15
  81a46f:	4c 8b 75 d8          	mov    -0x28(%rbp),%r14
  81a473:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81a478:	c4 41 09 59 f7       	vmulpd %xmm15,%xmm14,%xmm14
  81a47d:	c4 01 19 16 24 37    	vmovhpd (%r15,%r14,1),%xmm12,%xmm12
  81a483:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
  81a487:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81a48c:	4a 8d 04 70          	lea    (%rax,%r14,2),%rax
  81a490:	c4 01 01 16 3c 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm15
  81a496:	c4 41 19 58 e7       	vaddpd %xmm15,%xmm12,%xmm12
  81a49b:	c4 41 09 59 f4       	vmulpd %xmm12,%xmm14,%xmm14
  81a4a0:	c4 21 79 11 74 da 08 	vmovupd %xmm14,0x8(%rdx,%r11,8)
  81a4a7:	49 83 c3 02          	add    $0x2,%r11
  81a4ab:	4c 3b 5d 88          	cmp    -0x78(%rbp),%r11
  81a4af:	0f 82 27 ff ff ff    	jb     81a3dc <pre_step3d_mod_mp_pre_step3d_tile_+0x5e2c>
  81a4b5:	48 8b 85 98 fb ff ff 	mov    -0x468(%rbp),%rax
  81a4bc:	48 8b b5 a0 fb ff ff 	mov    -0x460(%rbp),%rsi
  81a4c3:	48 8b 95 a8 fb ff ff 	mov    -0x458(%rbp),%rdx
  81a4ca:	48 8b 8d b0 fb ff ff 	mov    -0x450(%rbp),%rcx
  81a4d1:	48 8b bd 08 fc ff ff 	mov    -0x3f8(%rbp),%rdi
  81a4d8:	4c 8b 75 d8          	mov    -0x28(%rbp),%r14
  81a4dc:	4c 8b 6d 80          	mov    -0x80(%rbp),%r13
  81a4e0:	4c 8b 65 d0          	mov    -0x30(%rbp),%r12
  81a4e4:	4c 0f af f7          	imul   %rdi,%r14
  81a4e8:	4c 0f af ef          	imul   %rdi,%r13
  81a4ec:	4c 0f af e7          	imul   %rdi,%r12
  81a4f0:	48 3b bd 78 ff ff ff 	cmp    -0x88(%rbp),%rdi
  81a4f7:	0f 83 34 01 00 00    	jae    81a631 <pre_step3d_mod_mp_pre_step3d_tile_+0x6081>
  81a4fd:	48 8b bd 18 fb ff ff 	mov    -0x4e8(%rbp),%rdi
  81a504:	4c 8b 9d 50 fb ff ff 	mov    -0x4b0(%rbp),%r11
  81a50b:	4c 8b 8d 78 fb ff ff 	mov    -0x488(%rbp),%r9
  81a512:	4c 8b 85 58 fb ff ff 	mov    -0x4a8(%rbp),%r8
  81a519:	4c 8d 3c 17          	lea    (%rdi,%rdx,1),%r15
  81a51d:	4c 89 bd 48 fb ff ff 	mov    %r15,-0x4b8(%rbp)
  81a524:	4d 8d 14 13          	lea    (%r11,%rdx,1),%r10
  81a528:	4c 8b bd 70 fb ff ff 	mov    -0x490(%rbp),%r15
  81a52f:	4d 8d 1c 11          	lea    (%r9,%rdx,1),%r11
  81a533:	4c 8b 8d 60 fb ff ff 	mov    -0x4a0(%rbp),%r9
  81a53a:	48 8b bd 68 fb ff ff 	mov    -0x498(%rbp),%rdi
  81a541:	4c 89 95 40 fb ff ff 	mov    %r10,-0x4c0(%rbp)
  81a548:	4c 03 f8             	add    %rax,%r15
  81a54b:	4c 89 bd 30 fb ff ff 	mov    %r15,-0x4d0(%rbp)
  81a552:	4d 8d 14 10          	lea    (%r8,%rdx,1),%r10
  81a556:	4c 8b bd 90 fa ff ff 	mov    -0x570(%rbp),%r15
  81a55d:	4c 03 ce             	add    %rsi,%r9
  81a560:	4c 8b 85 10 fb ff ff 	mov    -0x4f0(%rbp),%r8
  81a567:	48 03 f8             	add    %rax,%rdi
  81a56a:	48 89 85 98 fb ff ff 	mov    %rax,-0x468(%rbp)
  81a571:	48 89 b5 a0 fb ff ff 	mov    %rsi,-0x460(%rbp)
  81a578:	4c 03 f9             	add    %rcx,%r15
  81a57b:	4c 03 c6             	add    %rsi,%r8
  81a57e:	48 89 95 a8 fb ff ff 	mov    %rdx,-0x458(%rbp)
  81a585:	48 89 8d b0 fb ff ff 	mov    %rcx,-0x450(%rbp)
  81a58c:	4c 89 f8             	mov    %r15,%rax
  81a58f:	48 8b 95 30 fb ff ff 	mov    -0x4d0(%rbp),%rdx
  81a596:	48 8b 8d 48 fb ff ff 	mov    -0x4b8(%rbp),%rcx
  81a59d:	48 8b b5 40 fb ff ff 	mov    -0x4c0(%rbp),%rsi
  81a5a4:	4c 8b bd 08 fc ff ff 	mov    -0x3f8(%rbp),%r15
  81a5ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  81a5b0:	c4 01 7b 10 24 1c    	vmovsd (%r12,%r11,1),%xmm12
  81a5b6:	c4 41 1b 58 34 0c    	vaddsd (%r12,%rcx,1),%xmm12,%xmm14
  81a5bc:	c4 41 0b 5c 3c 34    	vsubsd (%r12,%rsi,1),%xmm14,%xmm15
  81a5c2:	c4 01 03 5c 24 14    	vsubsd (%r12,%r10,1),%xmm15,%xmm12
  81a5c8:	c4 41 13 5e f4       	vdivsd %xmm12,%xmm13,%xmm14
  81a5cd:	c4 01 7b 10 7c 0d 00 	vmovsd 0x0(%r13,%r9,1),%xmm15
  81a5d4:	c4 41 63 59 e6       	vmulsd %xmm14,%xmm3,%xmm12
  81a5d9:	c4 01 03 5c 74 05 00 	vsubsd 0x0(%r13,%r8,1),%xmm15,%xmm14
  81a5e0:	c4 41 7b 10 3c 3e    	vmovsd (%r14,%rdi,1),%xmm15
  81a5e6:	c4 41 1b 59 e6       	vmulsd %xmm14,%xmm12,%xmm12
  81a5eb:	c4 41 03 58 34 16    	vaddsd (%r14,%rdx,1),%xmm15,%xmm14
  81a5f1:	c4 41 1b 59 fe       	vmulsd %xmm14,%xmm12,%xmm15
  81a5f6:	c4 21 7b 11 7c f8 08 	vmovsd %xmm15,0x8(%rax,%r15,8)
  81a5fd:	49 ff c7             	inc    %r15
  81a600:	4c 03 65 d0          	add    -0x30(%rbp),%r12
  81a604:	4c 03 6d 80          	add    -0x80(%rbp),%r13
  81a608:	4c 03 75 d8          	add    -0x28(%rbp),%r14
  81a60c:	4c 3b bd 78 ff ff ff 	cmp    -0x88(%rbp),%r15
  81a613:	72 9b                	jb     81a5b0 <pre_step3d_mod_mp_pre_step3d_tile_+0x6000>
  81a615:	48 8b 85 98 fb ff ff 	mov    -0x468(%rbp),%rax
  81a61c:	48 8b b5 a0 fb ff ff 	mov    -0x460(%rbp),%rsi
  81a623:	48 8b 95 a8 fb ff ff 	mov    -0x458(%rbp),%rdx
  81a62a:	48 8b 8d b0 fb ff ff 	mov    -0x450(%rbp),%rcx
  81a631:	48 8b bd 10 fc ff ff 	mov    -0x3f0(%rbp),%rdi
  81a638:	48 ff c7             	inc    %rdi
  81a63b:	48 03 8d 18 ff ff ff 	add    -0xe8(%rbp),%rcx
  81a642:	48 03 95 30 ff ff ff 	add    -0xd0(%rbp),%rdx
  81a649:	48 03 b5 00 fc ff ff 	add    -0x400(%rbp),%rsi
  81a650:	48 03 85 28 ff ff ff 	add    -0xd8(%rbp),%rax
  81a657:	48 89 bd 10 fc ff ff 	mov    %rdi,-0x3f0(%rbp)
  81a65e:	48 3b bd 10 ff ff ff 	cmp    -0xf0(%rbp),%rdi
  81a665:	0f 82 8e fc ff ff    	jb     81a2f9 <pre_step3d_mod_mp_pre_step3d_tile_+0x5d49>
  81a66b:	48 8b bd d8 f8 ff ff 	mov    -0x728(%rbp),%rdi
  81a672:	44 8b 85 b8 f8 ff ff 	mov    -0x748(%rbp),%r8d
  81a679:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  81a680:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  81a687:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  81a68e:	48 83 bd 00 f6 ff ff 	cmpq   $0x8,-0xa00(%rbp)
  81a695:	08 
  81a696:	0f 85 f6 00 00 00    	jne    81a792 <pre_step3d_mod_mp_pre_step3d_tile_+0x61e2>
  81a69c:	48 83 bd f8 f5 ff ff 	cmpq   $0x8,-0xa08(%rbp)
  81a6a3:	08 
  81a6a4:	0f 85 e8 00 00 00    	jne    81a792 <pre_step3d_mod_mp_pre_step3d_tile_+0x61e2>
  81a6aa:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  81a6b1:	48 3b 85 f8 fb ff ff 	cmp    -0x408(%rbp),%rax
  81a6b8:	0f 8c fa 06 00 00    	jl     81adb8 <pre_step3d_mod_mp_pre_step3d_tile_+0x6808>
  81a6be:	48 83 bd 78 ff ff ff 	cmpq   $0x4,-0x88(%rbp)
  81a6c5:	04 
  81a6c6:	0f 8c f2 a3 00 00    	jl     824abe <pre_step3d_mod_mp_pre_step3d_tile_+0x1050e>
  81a6cc:	48 8b 8d f8 f4 ff ff 	mov    -0xb08(%rbp),%rcx
  81a6d3:	33 f6                	xor    %esi,%esi
  81a6d5:	48 8b 95 f0 f4 ff ff 	mov    -0xb10(%rbp),%rdx
  81a6dc:	48 0f af cf          	imul   %rdi,%rcx
  81a6e0:	48 0f af d7          	imul   %rdi,%rdx
  81a6e4:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  81a6eb:	49 89 c4             	mov    %rax,%r12
  81a6ee:	48 03 8d 28 f5 ff ff 	add    -0xad8(%rbp),%rcx
  81a6f5:	48 03 95 20 f5 ff ff 	add    -0xae0(%rbp),%rdx
  81a6fc:	4c 8b ad 18 f5 ff ff 	mov    -0xae8(%rbp),%r13
  81a703:	4c 8b b5 68 f7 ff ff 	mov    -0x898(%rbp),%r14
  81a70a:	c5 4d 59 24 f1       	vmulpd (%rcx,%rsi,8),%ymm6,%ymm12
  81a70f:	c5 4d 59 34 f2       	vmulpd (%rdx,%rsi,8),%ymm6,%ymm14
  81a714:	c4 41 7d 11 24 f6    	vmovupd %ymm12,(%r14,%rsi,8)
  81a71a:	c4 41 7d 11 74 f5 00 	vmovupd %ymm14,0x0(%r13,%rsi,8)
  81a721:	48 83 c6 04          	add    $0x4,%rsi
  81a725:	49 3b f4             	cmp    %r12,%rsi
  81a728:	72 e0                	jb     81a70a <pre_step3d_mod_mp_pre_step3d_tile_+0x615a>
  81a72a:	48 3b 85 78 ff ff ff 	cmp    -0x88(%rbp),%rax
  81a731:	0f 83 6c 02 00 00    	jae    81a9a3 <pre_step3d_mod_mp_pre_step3d_tile_+0x63f3>
  81a737:	48 8b 8d f8 f4 ff ff 	mov    -0xb08(%rbp),%rcx
  81a73e:	48 8b 95 f0 f4 ff ff 	mov    -0xb10(%rbp),%rdx
  81a745:	48 0f af cf          	imul   %rdi,%rcx
  81a749:	48 0f af d7          	imul   %rdi,%rdx
  81a74d:	48 03 8d 28 f5 ff ff 	add    -0xad8(%rbp),%rcx
  81a754:	48 03 95 20 f5 ff ff 	add    -0xae0(%rbp),%rdx
  81a75b:	48 8b b5 18 f5 ff ff 	mov    -0xae8(%rbp),%rsi
  81a762:	4c 8b a5 68 f7 ff ff 	mov    -0x898(%rbp),%r12
  81a769:	4c 8b ad 78 ff ff ff 	mov    -0x88(%rbp),%r13
  81a770:	c5 6b 59 24 c1       	vmulsd (%rcx,%rax,8),%xmm2,%xmm12
  81a775:	c5 6b 59 34 c2       	vmulsd (%rdx,%rax,8),%xmm2,%xmm14
  81a77a:	c4 41 7b 11 24 c4    	vmovsd %xmm12,(%r12,%rax,8)
  81a780:	c5 7b 11 34 c6       	vmovsd %xmm14,(%rsi,%rax,8)
  81a785:	48 ff c0             	inc    %rax
  81a788:	49 3b c5             	cmp    %r13,%rax
  81a78b:	72 e3                	jb     81a770 <pre_step3d_mod_mp_pre_step3d_tile_+0x61c0>
  81a78d:	e9 11 02 00 00       	jmpq   81a9a3 <pre_step3d_mod_mp_pre_step3d_tile_+0x63f3>
  81a792:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  81a799:	48 3b 85 f8 fb ff ff 	cmp    -0x408(%rbp),%rax
  81a7a0:	0f 8c 12 06 00 00    	jl     81adb8 <pre_step3d_mod_mp_pre_step3d_tile_+0x6808>
  81a7a6:	48 83 bd 78 ff ff ff 	cmpq   $0x4,-0x88(%rbp)
  81a7ad:	04 
  81a7ae:	0f 8c 56 a3 00 00    	jl     824b0a <pre_step3d_mod_mp_pre_step3d_tile_+0x1055a>
  81a7b4:	48 8b b5 f8 f4 ff ff 	mov    -0xb08(%rbp),%rsi
  81a7bb:	33 c9                	xor    %ecx,%ecx
  81a7bd:	4c 8b a5 f0 f4 ff ff 	mov    -0xb10(%rbp),%r12
  81a7c4:	45 33 ed             	xor    %r13d,%r13d
  81a7c7:	48 0f af f7          	imul   %rdi,%rsi
  81a7cb:	4c 0f af e7          	imul   %rdi,%r12
  81a7cf:	48 8b 95 38 f3 ff ff 	mov    -0xcc8(%rbp),%rdx
  81a7d6:	48 8b 85 30 f3 ff ff 	mov    -0xcd0(%rbp),%rax
  81a7dd:	4c 8b bd e0 fe ff ff 	mov    -0x120(%rbp),%r15
  81a7e4:	48 89 bd d8 f8 ff ff 	mov    %rdi,-0x728(%rbp)
  81a7eb:	48 03 d6             	add    %rsi,%rdx
  81a7ee:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  81a7f5:	4e 8d 34 20          	lea    (%rax,%r12,1),%r14
  81a7f9:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  81a800:	33 c0                	xor    %eax,%eax
  81a802:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  81a809:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  81a810:	48 03 b5 68 f3 ff ff 	add    -0xc98(%rbp),%rsi
  81a817:	4c 03 a5 60 f3 ff ff 	add    -0xca0(%rbp),%r12
  81a81e:	48 8b bd 18 f5 ff ff 	mov    -0xae8(%rbp),%rdi
  81a825:	4c 8b 85 68 f7 ff ff 	mov    -0x898(%rbp),%r8
  81a82c:	4c 8b 8d 10 f5 ff ff 	mov    -0xaf0(%rbp),%r9
  81a833:	4c 8b 95 f8 f5 ff ff 	mov    -0xa08(%rbp),%r10
  81a83a:	4c 8b 9d 00 f6 ff ff 	mov    -0xa00(%rbp),%r11
  81a841:	4c 89 bd 18 f2 ff ff 	mov    %r15,-0xde8(%rbp)
  81a848:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  81a84f:	00 
  81a850:	4e 8d 3c 2a          	lea    (%rdx,%r13,1),%r15
  81a854:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81a859:	c4 01 19 16 34 1f    	vmovhpd (%r15,%r11,1),%xmm12,%xmm14
  81a85f:	4d 8d 3c 06          	lea    (%r14,%rax,1),%r15
  81a863:	c4 41 29 59 fe       	vmulpd %xmm14,%xmm10,%xmm15
  81a868:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81a86d:	c4 01 19 16 34 17    	vmovhpd (%r15,%r10,1),%xmm12,%xmm14
  81a873:	4e 8d 3c 2e          	lea    (%rsi,%r13,1),%r15
  81a877:	c4 41 79 11 3c c8    	vmovupd %xmm15,(%r8,%rcx,8)
  81a87d:	c4 41 29 59 fe       	vmulpd %xmm14,%xmm10,%xmm15
  81a882:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81a887:	4f 8d 6c 9d 00       	lea    0x0(%r13,%r11,4),%r13
  81a88c:	c4 01 19 16 34 1f    	vmovhpd (%r15,%r11,1),%xmm12,%xmm14
  81a892:	4d 8d 3c 04          	lea    (%r12,%rax,1),%r15
  81a896:	c5 79 11 3c cf       	vmovupd %xmm15,(%rdi,%rcx,8)
  81a89b:	c4 41 29 59 fe       	vmulpd %xmm14,%xmm10,%xmm15
  81a8a0:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81a8a5:	4a 8d 04 90          	lea    (%rax,%r10,4),%rax
  81a8a9:	c4 01 19 16 34 17    	vmovhpd (%r15,%r10,1),%xmm12,%xmm14
  81a8af:	c4 41 79 11 7c c8 10 	vmovupd %xmm15,0x10(%r8,%rcx,8)
  81a8b6:	c4 41 29 59 fe       	vmulpd %xmm14,%xmm10,%xmm15
  81a8bb:	c4 41 79 11 7c c9 10 	vmovupd %xmm15,0x10(%r9,%rcx,8)
  81a8c2:	48 83 c1 04          	add    $0x4,%rcx
  81a8c6:	48 3b 8d e0 fe ff ff 	cmp    -0x120(%rbp),%rcx
  81a8cd:	72 81                	jb     81a850 <pre_step3d_mod_mp_pre_step3d_tile_+0x62a0>
  81a8cf:	4c 8b bd 18 f2 ff ff 	mov    -0xde8(%rbp),%r15
  81a8d6:	48 8b bd d8 f8 ff ff 	mov    -0x728(%rbp),%rdi
  81a8dd:	44 8b 85 b8 f8 ff ff 	mov    -0x748(%rbp),%r8d
  81a8e4:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  81a8eb:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  81a8f2:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  81a8f9:	48 8b b5 f8 f5 ff ff 	mov    -0xa08(%rbp),%rsi
  81a900:	48 8b 85 00 f6 ff ff 	mov    -0xa00(%rbp),%rax
  81a907:	49 0f af f7          	imul   %r15,%rsi
  81a90b:	49 0f af c7          	imul   %r15,%rax
  81a90f:	4c 3b bd 78 ff ff ff 	cmp    -0x88(%rbp),%r15
  81a916:	0f 83 87 00 00 00    	jae    81a9a3 <pre_step3d_mod_mp_pre_step3d_tile_+0x63f3>
  81a91c:	48 8b 95 f8 f4 ff ff 	mov    -0xb08(%rbp),%rdx
  81a923:	48 8b 8d f0 f4 ff ff 	mov    -0xb10(%rbp),%rcx
  81a92a:	48 0f af d7          	imul   %rdi,%rdx
  81a92e:	48 0f af cf          	imul   %rdi,%rcx
  81a932:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  81a939:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  81a940:	48 03 95 38 f3 ff ff 	add    -0xcc8(%rbp),%rdx
  81a947:	48 03 8d 30 f3 ff ff 	add    -0xcd0(%rbp),%rcx
  81a94e:	4c 8b 95 18 f5 ff ff 	mov    -0xae8(%rbp),%r10
  81a955:	4c 8b 9d 68 f7 ff ff 	mov    -0x898(%rbp),%r11
  81a95c:	4c 8b a5 78 ff ff ff 	mov    -0x88(%rbp),%r12
  81a963:	4c 8b ad f8 f5 ff ff 	mov    -0xa08(%rbp),%r13
  81a96a:	4c 8b b5 00 f6 ff ff 	mov    -0xa00(%rbp),%r14
  81a971:	c5 6b 59 24 10       	vmulsd (%rax,%rdx,1),%xmm2,%xmm12
  81a976:	49 03 c6             	add    %r14,%rax
  81a979:	c5 6b 59 34 0e       	vmulsd (%rsi,%rcx,1),%xmm2,%xmm14
  81a97e:	c4 01 7b 11 24 fb    	vmovsd %xmm12,(%r11,%r15,8)
  81a984:	49 03 f5             	add    %r13,%rsi
  81a987:	c4 01 7b 11 34 fa    	vmovsd %xmm14,(%r10,%r15,8)
  81a98d:	49 ff c7             	inc    %r15
  81a990:	4d 3b fc             	cmp    %r12,%r15
  81a993:	72 dc                	jb     81a971 <pre_step3d_mod_mp_pre_step3d_tile_+0x63c1>
  81a995:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  81a99c:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  81a9a3:	48 83 bd 78 fe ff ff 	cmpq   $0x8,-0x188(%rbp)
  81a9aa:	08 
  81a9ab:	0f 85 33 01 00 00    	jne    81aae4 <pre_step3d_mod_mp_pre_step3d_tile_+0x6534>
  81a9b1:	48 83 bd 80 fe ff ff 	cmpq   $0x8,-0x180(%rbp)
  81a9b8:	08 
  81a9b9:	0f 85 25 01 00 00    	jne    81aae4 <pre_step3d_mod_mp_pre_step3d_tile_+0x6534>
  81a9bf:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  81a9c6:	48 3b 85 f8 fb ff ff 	cmp    -0x408(%rbp),%rax
  81a9cd:	0f 8c e5 03 00 00    	jl     81adb8 <pre_step3d_mod_mp_pre_step3d_tile_+0x6808>
  81a9d3:	48 83 bd 78 ff ff ff 	cmpq   $0x4,-0x88(%rbp)
  81a9da:	04 
  81a9db:	0f 8c e4 a0 00 00    	jl     824ac5 <pre_step3d_mod_mp_pre_step3d_tile_+0x10515>
  81a9e1:	48 8b 95 d0 f6 ff ff 	mov    -0x930(%rbp),%rdx
  81a9e8:	33 c9                	xor    %ecx,%ecx
  81a9ea:	48 8b b5 c8 f6 ff ff 	mov    -0x938(%rbp),%rsi
  81a9f1:	48 0f af d7          	imul   %rdi,%rdx
  81a9f5:	48 0f af f7          	imul   %rdi,%rsi
  81a9f9:	48 8b 85 08 f5 ff ff 	mov    -0xaf8(%rbp),%rax
  81aa00:	4c 8b ad 00 f5 ff ff 	mov    -0xb00(%rbp),%r13
  81aa07:	4c 8b a5 e0 fe ff ff 	mov    -0x120(%rbp),%r12
  81aa0e:	4d 89 e6             	mov    %r12,%r14
  81aa11:	4c 8b bd e0 fc ff ff 	mov    -0x320(%rbp),%r15
  81aa18:	48 03 c6             	add    %rsi,%rax
  81aa1b:	48 03 b5 40 f3 ff ff 	add    -0xcc0(%rbp),%rsi
  81aa22:	4c 03 ea             	add    %rdx,%r13
  81aa25:	48 03 95 50 f3 ff ff 	add    -0xcb0(%rbp),%rdx
  81aa2c:	c4 41 7d 10 64 cd 00 	vmovupd 0x0(%r13,%rcx,8),%ymm12
  81aa33:	c5 7d 10 3c c8       	vmovupd (%rax,%rcx,8),%ymm15
  81aa38:	c5 1d 58 34 ca       	vaddpd (%rdx,%rcx,8),%ymm12,%ymm14
  81aa3d:	c4 41 55 59 e6       	vmulpd %ymm14,%ymm5,%ymm12
  81aa42:	c5 05 58 34 ce       	vaddpd (%rsi,%rcx,8),%ymm15,%ymm14
  81aa47:	c4 41 1d 59 fe       	vmulpd %ymm14,%ymm12,%ymm15
  81aa4c:	c4 41 7d 11 3c cf    	vmovupd %ymm15,(%r15,%rcx,8)
  81aa52:	48 83 c1 04          	add    $0x4,%rcx
  81aa56:	49 3b ce             	cmp    %r14,%rcx
  81aa59:	72 d1                	jb     81aa2c <pre_step3d_mod_mp_pre_step3d_tile_+0x647c>
  81aa5b:	4c 3b a5 78 ff ff ff 	cmp    -0x88(%rbp),%r12
  81aa62:	0f 83 50 03 00 00    	jae    81adb8 <pre_step3d_mod_mp_pre_step3d_tile_+0x6808>
  81aa68:	48 8b 95 d0 f6 ff ff 	mov    -0x930(%rbp),%rdx
  81aa6f:	48 8b 85 c8 f6 ff ff 	mov    -0x938(%rbp),%rax
  81aa76:	48 0f af d7          	imul   %rdi,%rdx
  81aa7a:	48 0f af c7          	imul   %rdi,%rax
  81aa7e:	48 8b b5 08 f5 ff ff 	mov    -0xaf8(%rbp),%rsi
  81aa85:	48 8b 8d 00 f5 ff ff 	mov    -0xb00(%rbp),%rcx
  81aa8c:	4c 8b ad e0 fc ff ff 	mov    -0x320(%rbp),%r13
  81aa93:	4c 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%r14
  81aa9a:	48 03 f0             	add    %rax,%rsi
  81aa9d:	48 03 85 40 f3 ff ff 	add    -0xcc0(%rbp),%rax
  81aaa4:	48 03 ca             	add    %rdx,%rcx
  81aaa7:	48 03 95 50 f3 ff ff 	add    -0xcb0(%rbp),%rdx
  81aaae:	c4 21 7b 10 24 e1    	vmovsd (%rcx,%r12,8),%xmm12
  81aab4:	c4 21 7b 10 3c e6    	vmovsd (%rsi,%r12,8),%xmm15
  81aaba:	c4 21 1b 58 34 e2    	vaddsd (%rdx,%r12,8),%xmm12,%xmm14
  81aac0:	c4 41 5b 59 e6       	vmulsd %xmm14,%xmm4,%xmm12
  81aac5:	c4 21 03 58 34 e0    	vaddsd (%rax,%r12,8),%xmm15,%xmm14
  81aacb:	c4 41 1b 59 fe       	vmulsd %xmm14,%xmm12,%xmm15
  81aad0:	c4 01 7b 11 7c e5 00 	vmovsd %xmm15,0x0(%r13,%r12,8)
  81aad7:	49 ff c4             	inc    %r12
  81aada:	4d 3b e6             	cmp    %r14,%r12
  81aadd:	72 cf                	jb     81aaae <pre_step3d_mod_mp_pre_step3d_tile_+0x64fe>
  81aadf:	e9 d4 02 00 00       	jmpq   81adb8 <pre_step3d_mod_mp_pre_step3d_tile_+0x6808>
  81aae4:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  81aaeb:	48 3b 85 f8 fb ff ff 	cmp    -0x408(%rbp),%rax
  81aaf2:	0f 8c c0 02 00 00    	jl     81adb8 <pre_step3d_mod_mp_pre_step3d_tile_+0x6808>
  81aaf8:	48 83 bd 78 ff ff ff 	cmpq   $0x4,-0x88(%rbp)
  81aaff:	04 
  81ab00:	0f 8c fc 9f 00 00    	jl     824b02 <pre_step3d_mod_mp_pre_step3d_tile_+0x10552>
  81ab06:	4c 8b b5 d0 f6 ff ff 	mov    -0x930(%rbp),%r14
  81ab0d:	33 f6                	xor    %esi,%esi
  81ab0f:	4c 0f af f7          	imul   %rdi,%r14
  81ab13:	4c 8b a5 c8 f6 ff ff 	mov    -0x938(%rbp),%r12
  81ab1a:	4c 0f af e7          	imul   %rdi,%r12
  81ab1e:	48 8b 85 58 f3 ff ff 	mov    -0xca8(%rbp),%rax
  81ab25:	4c 8b ad 48 f5 ff ff 	mov    -0xab8(%rbp),%r13
  81ab2c:	48 8b 8d 58 f5 ff ff 	mov    -0xaa8(%rbp),%rcx
  81ab33:	4c 8b bd e0 fe ff ff 	mov    -0x120(%rbp),%r15
  81ab3a:	4a 8d 14 30          	lea    (%rax,%r14,1),%rdx
  81ab3e:	48 89 95 10 f2 ff ff 	mov    %rdx,-0xdf0(%rbp)
  81ab45:	4b 8d 44 35 00       	lea    0x0(%r13,%r14,1),%rax
  81ab4a:	48 8b 95 50 f5 ff ff 	mov    -0xab0(%rbp),%rdx
  81ab51:	49 03 ce             	add    %r14,%rcx
  81ab54:	48 89 85 b8 fb ff ff 	mov    %rax,-0x448(%rbp)
  81ab5b:	48 8b 85 48 f3 ff ff 	mov    -0xcb8(%rbp),%rax
  81ab62:	48 89 bd d8 f8 ff ff 	mov    %rdi,-0x728(%rbp)
  81ab69:	4e 8d 2c 22          	lea    (%rdx,%r12,1),%r13
  81ab6d:	4c 89 ad c0 fb ff ff 	mov    %r13,-0x440(%rbp)
  81ab74:	4c 8b ad 40 f5 ff ff 	mov    -0xac0(%rbp),%r13
  81ab7b:	4a 8d 14 20          	lea    (%rax,%r12,1),%rdx
  81ab7f:	48 89 95 08 f2 ff ff 	mov    %rdx,-0xdf8(%rbp)
  81ab86:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  81ab8d:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  81ab94:	4b 8d 54 25 00       	lea    0x0(%r13,%r12,1),%rdx
  81ab99:	45 33 ed             	xor    %r13d,%r13d
  81ab9c:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  81aba3:	33 c0                	xor    %eax,%eax
  81aba5:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  81abac:	4c 03 b5 38 f5 ff ff 	add    -0xac8(%rbp),%r14
  81abb3:	4c 03 a5 30 f5 ff ff 	add    -0xad0(%rbp),%r12
  81abba:	48 8b bd 08 f2 ff ff 	mov    -0xdf8(%rbp),%rdi
  81abc1:	4c 8b 85 10 f2 ff ff 	mov    -0xdf0(%rbp),%r8
  81abc8:	4c 8b 8d e0 fc ff ff 	mov    -0x320(%rbp),%r9
  81abcf:	4c 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%r10
  81abd6:	4c 8b 9d 78 fe ff ff 	mov    -0x188(%rbp),%r11
  81abdd:	4c 89 bd 20 f2 ff ff 	mov    %r15,-0xde0(%rbp)
  81abe4:	4f 8d 3c 28          	lea    (%r8,%r13,1),%r15
  81abe8:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81abed:	c4 01 19 16 34 1f    	vmovhpd (%r15,%r11,1),%xmm12,%xmm14
  81abf3:	4f 8d 3c 2e          	lea    (%r14,%r13,1),%r15
  81abf7:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81abfc:	c4 01 01 16 24 1f    	vmovhpd (%r15,%r11,1),%xmm15,%xmm12
  81ac02:	4c 8d 3c 07          	lea    (%rdi,%rax,1),%r15
  81ac06:	c4 41 09 58 fc       	vaddpd %xmm12,%xmm14,%xmm15
  81ac0b:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81ac10:	c4 41 21 59 f7       	vmulpd %xmm15,%xmm11,%xmm14
  81ac15:	c4 01 19 16 3c 17    	vmovhpd (%r15,%r10,1),%xmm12,%xmm15
  81ac1b:	4d 8d 3c 04          	lea    (%r12,%rax,1),%r15
  81ac1f:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81ac24:	c4 01 19 16 24 17    	vmovhpd (%r15,%r10,1),%xmm12,%xmm12
  81ac2a:	4e 8d 3c 29          	lea    (%rcx,%r13,1),%r15
  81ac2e:	c4 41 01 58 fc       	vaddpd %xmm12,%xmm15,%xmm15
  81ac33:	c4 41 09 59 f7       	vmulpd %xmm15,%xmm14,%xmm14
  81ac38:	c4 41 79 11 34 f1    	vmovupd %xmm14,(%r9,%rsi,8)
  81ac3e:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  81ac43:	c4 01 09 16 3c 1f    	vmovhpd (%r15,%r11,1),%xmm14,%xmm15
  81ac49:	4c 8b bd b8 fb ff ff 	mov    -0x448(%rbp),%r15
  81ac50:	4d 03 fd             	add    %r13,%r15
  81ac53:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81ac58:	4f 8d 6c 9d 00       	lea    0x0(%r13,%r11,4),%r13
  81ac5d:	c4 01 19 16 34 1f    	vmovhpd (%r15,%r11,1),%xmm12,%xmm14
  81ac63:	c4 41 01 58 e6       	vaddpd %xmm14,%xmm15,%xmm12
  81ac68:	4c 8b bd c0 fb ff ff 	mov    -0x440(%rbp),%r15
  81ac6f:	c4 41 21 59 f4       	vmulpd %xmm12,%xmm11,%xmm14
  81ac74:	4c 03 f8             	add    %rax,%r15
  81ac77:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81ac7c:	c4 01 01 16 24 17    	vmovhpd (%r15,%r10,1),%xmm15,%xmm12
  81ac82:	4c 8d 3c 02          	lea    (%rdx,%rax,1),%r15
  81ac86:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81ac8b:	4a 8d 04 90          	lea    (%rax,%r10,4),%rax
  81ac8f:	c4 01 01 16 3c 17    	vmovhpd (%r15,%r10,1),%xmm15,%xmm15
  81ac95:	c4 41 19 58 e7       	vaddpd %xmm15,%xmm12,%xmm12
  81ac9a:	c4 41 09 59 f4       	vmulpd %xmm12,%xmm14,%xmm14
  81ac9f:	c4 41 79 11 74 f1 10 	vmovupd %xmm14,0x10(%r9,%rsi,8)
  81aca6:	48 83 c6 04          	add    $0x4,%rsi
  81acaa:	48 3b b5 e0 fe ff ff 	cmp    -0x120(%rbp),%rsi
  81acb1:	0f 82 2d ff ff ff    	jb     81abe4 <pre_step3d_mod_mp_pre_step3d_tile_+0x6634>
  81acb7:	4c 8b bd 20 f2 ff ff 	mov    -0xde0(%rbp),%r15
  81acbe:	48 8b bd d8 f8 ff ff 	mov    -0x728(%rbp),%rdi
  81acc5:	44 8b 85 b8 f8 ff ff 	mov    -0x748(%rbp),%r8d
  81accc:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  81acd3:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  81acda:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  81ace1:	4c 8b ad 80 fe ff ff 	mov    -0x180(%rbp),%r13
  81ace8:	48 8b 8d 78 fe ff ff 	mov    -0x188(%rbp),%rcx
  81acef:	4d 0f af ef          	imul   %r15,%r13
  81acf3:	49 0f af cf          	imul   %r15,%rcx
  81acf7:	4c 3b bd 78 ff ff ff 	cmp    -0x88(%rbp),%r15
  81acfe:	0f 83 b4 00 00 00    	jae    81adb8 <pre_step3d_mod_mp_pre_step3d_tile_+0x6808>
  81ad04:	48 8b 85 d0 f6 ff ff 	mov    -0x930(%rbp),%rax
  81ad0b:	4c 8b a5 c8 f6 ff ff 	mov    -0x938(%rbp),%r12
  81ad12:	48 0f af c7          	imul   %rdi,%rax
  81ad16:	4c 0f af e7          	imul   %rdi,%r12
  81ad1a:	48 8b 95 58 f3 ff ff 	mov    -0xca8(%rbp),%rdx
  81ad21:	48 8b b5 48 f3 ff ff 	mov    -0xcb8(%rbp),%rsi
  81ad28:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  81ad2f:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  81ad36:	48 03 d0             	add    %rax,%rdx
  81ad39:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  81ad40:	49 03 f4             	add    %r12,%rsi
  81ad43:	48 03 85 38 f5 ff ff 	add    -0xac8(%rbp),%rax
  81ad4a:	4c 03 a5 30 f5 ff ff 	add    -0xad0(%rbp),%r12
  81ad51:	4c 8b 8d e0 fc ff ff 	mov    -0x320(%rbp),%r9
  81ad58:	4c 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%r10
  81ad5f:	4c 8b 9d 80 fe ff ff 	mov    -0x180(%rbp),%r11
  81ad66:	4c 8b b5 78 fe ff ff 	mov    -0x188(%rbp),%r14
  81ad6d:	c5 7b 10 24 11       	vmovsd (%rcx,%rdx,1),%xmm12
  81ad72:	c4 41 7b 10 7c 35 00 	vmovsd 0x0(%r13,%rsi,1),%xmm15
  81ad79:	c5 1b 58 34 01       	vaddsd (%rcx,%rax,1),%xmm12,%xmm14
  81ad7e:	49 03 ce             	add    %r14,%rcx
  81ad81:	c4 41 5b 59 e6       	vmulsd %xmm14,%xmm4,%xmm12
  81ad86:	c4 01 03 58 74 25 00 	vaddsd 0x0(%r13,%r12,1),%xmm15,%xmm14
  81ad8d:	c4 41 1b 59 fe       	vmulsd %xmm14,%xmm12,%xmm15
  81ad92:	4d 03 eb             	add    %r11,%r13
  81ad95:	c4 01 7b 11 3c f9    	vmovsd %xmm15,(%r9,%r15,8)
  81ad9b:	49 ff c7             	inc    %r15
  81ad9e:	4d 3b fa             	cmp    %r10,%r15
  81ada1:	72 ca                	jb     81ad6d <pre_step3d_mod_mp_pre_step3d_tile_+0x67bd>
  81ada3:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  81adaa:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  81adb1:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  81adb8:	8b 85 e0 fb ff ff    	mov    -0x420(%rbp),%eax
  81adbe:	3b 85 d8 fb ff ff    	cmp    -0x428(%rbp),%eax
  81adc4:	0f 85 64 06 00 00    	jne    81b42e <pre_step3d_mod_mp_pre_step3d_tile_+0x6e7e>
  81adca:	48 83 7d 80 08       	cmpq   $0x8,-0x80(%rbp)
  81adcf:	0f 85 16 02 00 00    	jne    81afeb <pre_step3d_mod_mp_pre_step3d_tile_+0x6a3b>
  81add5:	48 83 bd 58 ff ff ff 	cmpq   $0x8,-0xa8(%rbp)
  81addc:	08 
  81addd:	0f 85 08 02 00 00    	jne    81afeb <pre_step3d_mod_mp_pre_step3d_tile_+0x6a3b>
  81ade3:	45 33 ed             	xor    %r13d,%r13d
  81ade6:	45 33 e4             	xor    %r12d,%r12d
  81ade9:	33 f6                	xor    %esi,%esi
  81adeb:	33 c9                	xor    %ecx,%ecx
  81aded:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  81adf4:	00 
  81adf5:	0f 8e 47 15 00 00    	jle    81c342 <pre_step3d_mod_mp_pre_step3d_tile_+0x7d92>
  81adfb:	48 8b 95 80 f5 ff ff 	mov    -0xa80(%rbp),%rdx
  81ae02:	4c 8b b5 48 f6 ff ff 	mov    -0x9b8(%rbp),%r14
  81ae09:	48 0f af d7          	imul   %rdi,%rdx
  81ae0d:	4c 0f af f7          	imul   %rdi,%r14
  81ae11:	c5 7d 10 25 47 a5 0a 	vmovupd 0xaa547(%rip),%ymm12        # 8c5360 <var$630.126.450+0x4a0>
  81ae18:	00 
  81ae19:	4c 8b bd 70 f3 ff ff 	mov    -0xc90(%rbp),%r15
  81ae20:	48 8b 85 a0 f4 ff ff 	mov    -0xb60(%rbp),%rax
  81ae27:	48 89 bd d8 f8 ff ff 	mov    %rdi,-0x728(%rbp)
  81ae2e:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  81ae35:	4c 03 fa             	add    %rdx,%r15
  81ae38:	48 03 95 98 f4 ff ff 	add    -0xb68(%rbp),%rdx
  81ae3f:	49 03 c6             	add    %r14,%rax
  81ae42:	4c 03 b5 c0 f4 ff ff 	add    -0xb40(%rbp),%r14
  81ae49:	48 89 95 70 f7 ff ff 	mov    %rdx,-0x890(%rbp)
  81ae50:	4c 89 b5 78 f7 ff ff 	mov    %r14,-0x888(%rbp)
  81ae57:	4c 89 bd 80 f7 ff ff 	mov    %r15,-0x880(%rbp)
  81ae5e:	48 89 85 88 f7 ff ff 	mov    %rax,-0x878(%rbp)
  81ae65:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  81ae6c:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  81ae73:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  81ae7a:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
  81ae81:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  81ae88:	48 3b 85 f8 fb ff ff 	cmp    -0x408(%rbp),%rax
  81ae8f:	0f 8c 09 01 00 00    	jl     81af9e <pre_step3d_mod_mp_pre_step3d_tile_+0x69ee>
  81ae95:	48 83 fa 04          	cmp    $0x4,%rdx
  81ae99:	0f 8c 2e 9c 00 00    	jl     824acd <pre_step3d_mod_mp_pre_step3d_tile_+0x1051d>
  81ae9f:	4c 8b 9d 68 f7 ff ff 	mov    -0x898(%rbp),%r11
  81aea6:	45 33 f6             	xor    %r14d,%r14d
  81aea9:	4c 8b 95 90 fa ff ff 	mov    -0x570(%rbp),%r10
  81aeb0:	4c 8b 8d 70 f7 ff ff 	mov    -0x890(%rbp),%r9
  81aeb7:	4c 8b 85 80 f7 ff ff 	mov    -0x880(%rbp),%r8
  81aebe:	4d 03 dc             	add    %r12,%r11
  81aec1:	48 8b bd 78 f7 ff ff 	mov    -0x888(%rbp),%rdi
  81aec8:	4d 03 d4             	add    %r12,%r10
  81aecb:	4c 8b bd 88 f7 ff ff 	mov    -0x878(%rbp),%r15
  81aed2:	4c 03 ce             	add    %rsi,%r9
  81aed5:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  81aedc:	4c 03 c6             	add    %rsi,%r8
  81aedf:	48 89 c2             	mov    %rax,%rdx
  81aee2:	48 03 f9             	add    %rcx,%rdi
  81aee5:	4c 03 f9             	add    %rcx,%r15
  81aee8:	c4 01 7d 10 34 f7    	vmovupd (%r15,%r14,8),%ymm14
  81aeee:	c4 01 1d 59 3c f0    	vmulpd (%r8,%r14,8),%ymm12,%ymm15
  81aef4:	c4 21 0d 58 34 f7    	vaddpd (%rdi,%r14,8),%ymm14,%ymm14
  81aefa:	c4 41 05 59 f6       	vmulpd %ymm14,%ymm15,%ymm14
  81aeff:	c4 01 7d 10 7c f2 08 	vmovupd 0x8(%r10,%r14,8),%ymm15
  81af06:	c4 01 05 5c 3c f3    	vsubpd (%r11,%r14,8),%ymm15,%ymm15
  81af0c:	c4 41 0d 58 f7       	vaddpd %ymm15,%ymm14,%ymm14
  81af11:	c4 01 7d 11 34 f1    	vmovupd %ymm14,(%r9,%r14,8)
  81af17:	49 83 c6 04          	add    $0x4,%r14
  81af1b:	4c 3b f2             	cmp    %rdx,%r14
  81af1e:	72 c8                	jb     81aee8 <pre_step3d_mod_mp_pre_step3d_tile_+0x6938>
  81af20:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
  81af27:	48 3b c2             	cmp    %rdx,%rax
  81af2a:	73 72                	jae    81af9e <pre_step3d_mod_mp_pre_step3d_tile_+0x69ee>
  81af2c:	4c 8b 95 68 f7 ff ff 	mov    -0x898(%rbp),%r10
  81af33:	4c 8b 8d 90 fa ff ff 	mov    -0x570(%rbp),%r9
  81af3a:	4c 8b 85 70 f7 ff ff 	mov    -0x890(%rbp),%r8
  81af41:	48 8b bd 80 f7 ff ff 	mov    -0x880(%rbp),%rdi
  81af48:	4d 03 d4             	add    %r12,%r10
  81af4b:	4c 8b b5 78 f7 ff ff 	mov    -0x888(%rbp),%r14
  81af52:	4d 03 cc             	add    %r12,%r9
  81af55:	4c 8b 9d 88 f7 ff ff 	mov    -0x878(%rbp),%r11
  81af5c:	4c 03 c6             	add    %rsi,%r8
  81af5f:	48 03 fe             	add    %rsi,%rdi
  81af62:	4c 03 f1             	add    %rcx,%r14
  81af65:	4c 03 d9             	add    %rcx,%r11
  81af68:	c4 41 7b 10 34 c3    	vmovsd (%r11,%rax,8),%xmm14
  81af6e:	c5 3b 59 3c c7       	vmulsd (%rdi,%rax,8),%xmm8,%xmm15
  81af73:	c4 41 0b 58 34 c6    	vaddsd (%r14,%rax,8),%xmm14,%xmm14
  81af79:	c4 41 03 59 f6       	vmulsd %xmm14,%xmm15,%xmm14
  81af7e:	c4 41 7b 10 7c c1 08 	vmovsd 0x8(%r9,%rax,8),%xmm15
  81af85:	c4 41 03 5c 3c c2    	vsubsd (%r10,%rax,8),%xmm15,%xmm15
  81af8b:	c4 41 0b 58 f7       	vaddsd %xmm15,%xmm14,%xmm14
  81af90:	c4 41 7b 11 34 c0    	vmovsd %xmm14,(%r8,%rax,8)
  81af96:	48 ff c0             	inc    %rax
  81af99:	48 3b c2             	cmp    %rdx,%rax
  81af9c:	72 ca                	jb     81af68 <pre_step3d_mod_mp_pre_step3d_tile_+0x69b8>
  81af9e:	49 ff c5             	inc    %r13
  81afa1:	4c 03 a5 18 ff ff ff 	add    -0xe8(%rbp),%r12
  81afa8:	48 03 b5 00 fc ff ff 	add    -0x400(%rbp),%rsi
  81afaf:	48 03 8d 10 fd ff ff 	add    -0x2f0(%rbp),%rcx
  81afb6:	4c 3b ad 08 fd ff ff 	cmp    -0x2f8(%rbp),%r13
  81afbd:	0f 82 be fe ff ff    	jb     81ae81 <pre_step3d_mod_mp_pre_step3d_tile_+0x68d1>
  81afc3:	48 8b bd d8 f8 ff ff 	mov    -0x728(%rbp),%rdi
  81afca:	44 8b 85 b8 f8 ff ff 	mov    -0x748(%rbp),%r8d
  81afd1:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  81afd8:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  81afdf:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  81afe6:	e9 57 13 00 00       	jmpq   81c342 <pre_step3d_mod_mp_pre_step3d_tile_+0x7d92>
  81afeb:	33 c9                	xor    %ecx,%ecx
  81afed:	33 d2                	xor    %edx,%edx
  81afef:	33 f6                	xor    %esi,%esi
  81aff1:	33 c0                	xor    %eax,%eax
  81aff3:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  81affa:	00 
  81affb:	0f 8e 41 13 00 00    	jle    81c342 <pre_step3d_mod_mp_pre_step3d_tile_+0x7d92>
  81b001:	4c 8b ad 80 f5 ff ff 	mov    -0xa80(%rbp),%r13
  81b008:	4c 0f af ef          	imul   %rdi,%r13
  81b00c:	4c 8b b5 48 f6 ff ff 	mov    -0x9b8(%rbp),%r14
  81b013:	4c 0f af f7          	imul   %rdi,%r14
  81b017:	4c 8b a5 78 f5 ff ff 	mov    -0xa88(%rbp),%r12
  81b01e:	48 89 bd d8 f8 ff ff 	mov    %rdi,-0x728(%rbp)
  81b025:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  81b02c:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  81b033:	4f 8d 3c 2c          	lea    (%r12,%r13,1),%r15
  81b037:	4c 89 bd e8 f7 ff ff 	mov    %r15,-0x818(%rbp)
  81b03e:	4c 8b bd 18 f3 ff ff 	mov    -0xce8(%rbp),%r15
  81b045:	4c 8b a5 b8 f4 ff ff 	mov    -0xb48(%rbp),%r12
  81b04c:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  81b053:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  81b05a:	4d 03 fe             	add    %r14,%r15
  81b05d:	4c 89 bd e0 f7 ff ff 	mov    %r15,-0x820(%rbp)
  81b064:	4d 03 e6             	add    %r14,%r12
  81b067:	4c 8b bd b0 f4 ff ff 	mov    -0xb50(%rbp),%r15
  81b06e:	4c 89 a5 a8 f7 ff ff 	mov    %r12,-0x858(%rbp)
  81b075:	c5 79 10 25 23 b9 0a 	vmovupd 0xab923(%rip),%xmm12        # 8c69a0 <__STRLITPACK_19.34+0x10>
  81b07c:	00 
  81b07d:	4c 8b 65 80          	mov    -0x80(%rbp),%r12
  81b081:	4d 03 fd             	add    %r13,%r15
  81b084:	4c 89 bd f8 f7 ff ff 	mov    %r15,-0x808(%rbp)
  81b08b:	4c 8b bd 90 f4 ff ff 	mov    -0xb70(%rbp),%r15
  81b092:	4d 03 fd             	add    %r13,%r15
  81b095:	4c 89 bd f0 f7 ff ff 	mov    %r15,-0x810(%rbp)
  81b09c:	4c 8b bd 28 f3 ff ff 	mov    -0xcd8(%rbp),%r15
  81b0a3:	4c 03 ad a8 f4 ff ff 	add    -0xb58(%rbp),%r13
  81b0aa:	4c 89 ad a0 f7 ff ff 	mov    %r13,-0x860(%rbp)
  81b0b1:	4d 03 fe             	add    %r14,%r15
  81b0b4:	4c 03 b5 20 f3 ff ff 	add    -0xce0(%rbp),%r14
  81b0bb:	4c 89 b5 90 f7 ff ff 	mov    %r14,-0x870(%rbp)
  81b0c2:	4c 89 bd 98 f7 ff ff 	mov    %r15,-0x868(%rbp)
  81b0c9:	4c 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%r14
  81b0d0:	48 8b bd 00 ff ff ff 	mov    -0x100(%rbp),%rdi
  81b0d7:	48 3b bd f8 fb ff ff 	cmp    -0x408(%rbp),%rdi
  81b0de:	0f 8c f5 02 00 00    	jl     81b3d9 <pre_step3d_mod_mp_pre_step3d_tile_+0x6e29>
  81b0e4:	4d 85 e4             	test   %r12,%r12
  81b0e7:	0f 84 e7 99 00 00    	je     824ad4 <pre_step3d_mod_mp_pre_step3d_tile_+0x10524>
  81b0ed:	49 83 fe 04          	cmp    $0x4,%r14
  81b0f1:	0f 8c dd 99 00 00    	jl     824ad4 <pre_step3d_mod_mp_pre_step3d_tile_+0x10524>
  81b0f7:	48 8b bd e0 f7 ff ff 	mov    -0x820(%rbp),%rdi
  81b0fe:	45 33 d2             	xor    %r10d,%r10d
  81b101:	4c 8b bd e8 f7 ff ff 	mov    -0x818(%rbp),%r15
  81b108:	4c 8b 8d 68 f7 ff ff 	mov    -0x898(%rbp),%r9
  81b10f:	4c 8b 85 90 fa ff ff 	mov    -0x570(%rbp),%r8
  81b116:	48 03 f8             	add    %rax,%rdi
  81b119:	48 89 bd c8 f7 ff ff 	mov    %rdi,-0x838(%rbp)
  81b120:	4c 03 fe             	add    %rsi,%r15
  81b123:	48 8b bd a8 f7 ff ff 	mov    -0x858(%rbp),%rdi
  81b12a:	4c 03 ca             	add    %rdx,%r9
  81b12d:	4c 8b 9d f8 f7 ff ff 	mov    -0x808(%rbp),%r11
  81b134:	4c 03 c2             	add    %rdx,%r8
  81b137:	4c 8b ad e0 fe ff ff 	mov    -0x120(%rbp),%r13
  81b13e:	4c 89 ad 00 f8 ff ff 	mov    %r13,-0x800(%rbp)
  81b145:	48 03 f8             	add    %rax,%rdi
  81b148:	48 89 bd c0 f7 ff ff 	mov    %rdi,-0x840(%rbp)
  81b14f:	4c 03 de             	add    %rsi,%r11
  81b152:	48 8b bd f0 f7 ff ff 	mov    -0x810(%rbp),%rdi
  81b159:	48 89 85 08 f8 ff ff 	mov    %rax,-0x7f8(%rbp)
  81b160:	48 89 b5 10 f8 ff ff 	mov    %rsi,-0x7f0(%rbp)
  81b167:	48 89 95 18 f8 ff ff 	mov    %rdx,-0x7e8(%rbp)
  81b16e:	48 03 fe             	add    %rsi,%rdi
  81b171:	48 89 bd b8 f7 ff ff 	mov    %rdi,-0x848(%rbp)
  81b178:	48 8b bd a0 f7 ff ff 	mov    -0x860(%rbp),%rdi
  81b17f:	48 89 8d 20 f8 ff ff 	mov    %rcx,-0x7e0(%rbp)
  81b186:	4c 89 bd e8 fe ff ff 	mov    %r15,-0x118(%rbp)
  81b18d:	48 8b 95 b8 f7 ff ff 	mov    -0x848(%rbp),%rdx
  81b194:	48 03 fe             	add    %rsi,%rdi
  81b197:	48 89 bd f8 fe ff ff 	mov    %rdi,-0x108(%rbp)
  81b19e:	48 8b bd 98 f7 ff ff 	mov    -0x868(%rbp),%rdi
  81b1a5:	48 8b 8d c0 f7 ff ff 	mov    -0x840(%rbp),%rcx
  81b1ac:	48 8b b5 c8 f7 ff ff 	mov    -0x838(%rbp),%rsi
  81b1b3:	4c 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%r14
  81b1ba:	48 03 f8             	add    %rax,%rdi
  81b1bd:	48 89 bd b0 f7 ff ff 	mov    %rdi,-0x850(%rbp)
  81b1c4:	48 8b bd 90 f7 ff ff 	mov    -0x870(%rbp),%rdi
  81b1cb:	48 03 f8             	add    %rax,%rdi
  81b1ce:	48 89 bd f0 fe ff ff 	mov    %rdi,-0x110(%rbp)
  81b1d5:	33 ff                	xor    %edi,%edi
  81b1d7:	49 89 fd             	mov    %rdi,%r13
  81b1da:	48 8b 85 b0 f7 ff ff 	mov    -0x850(%rbp),%rax
  81b1e1:	4c 8b bd e8 fe ff ff 	mov    -0x118(%rbp),%r15
  81b1e8:	4c 03 ff             	add    %rdi,%r15
  81b1eb:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81b1f0:	c4 01 11 16 3c 27    	vmovhpd (%r15,%r12,1),%xmm13,%xmm15
  81b1f6:	4e 8d 3c 29          	lea    (%rcx,%r13,1),%r15
  81b1fa:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81b1ff:	c4 41 01 59 f4       	vmulpd %xmm12,%xmm15,%xmm14
  81b204:	c4 01 11 16 3c 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm15
  81b20a:	4e 8d 3c 2e          	lea    (%rsi,%r13,1),%r15
  81b20e:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81b213:	c4 01 11 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm13
  81b219:	4e 8d 3c 1f          	lea    (%rdi,%r11,1),%r15
  81b21d:	c4 41 01 58 fd       	vaddpd %xmm13,%xmm15,%xmm15
  81b222:	c4 41 09 59 ef       	vmulpd %xmm15,%xmm14,%xmm13
  81b227:	c4 01 79 10 74 d0 08 	vmovupd 0x8(%r8,%r10,8),%xmm14
  81b22e:	c4 01 09 5c 34 d1    	vsubpd (%r9,%r10,8),%xmm14,%xmm14
  81b234:	c4 41 11 58 fe       	vaddpd %xmm14,%xmm13,%xmm15
  81b239:	c4 41 7b 11 3f       	vmovsd %xmm15,(%r15)
  81b23e:	c4 01 79 17 3c 3c    	vmovhpd %xmm15,(%r12,%r15,1)
  81b244:	4c 8b bd f8 fe ff ff 	mov    -0x108(%rbp),%r15
  81b24b:	4c 03 ff             	add    %rdi,%r15
  81b24e:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  81b253:	c4 01 09 16 2c 27    	vmovhpd (%r15,%r12,1),%xmm14,%xmm13
  81b259:	4c 8b bd f0 fe ff ff 	mov    -0x110(%rbp),%r15
  81b260:	c4 41 11 59 f4       	vmulpd %xmm12,%xmm13,%xmm14
  81b265:	4d 03 fd             	add    %r13,%r15
  81b268:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81b26d:	c4 01 01 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm13
  81b273:	4e 8d 3c 28          	lea    (%rax,%r13,1),%r15
  81b277:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81b27c:	4f 8d 6c b5 00       	lea    0x0(%r13,%r14,4),%r13
  81b281:	c4 01 01 16 3c 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm15
  81b287:	4c 8d 3c 17          	lea    (%rdi,%rdx,1),%r15
  81b28b:	c4 41 11 58 ef       	vaddpd %xmm15,%xmm13,%xmm13
  81b290:	c4 41 09 59 ed       	vmulpd %xmm13,%xmm14,%xmm13
  81b295:	c4 01 79 10 74 d0 18 	vmovupd 0x18(%r8,%r10,8),%xmm14
  81b29c:	c4 01 09 5c 74 d1 10 	vsubpd 0x10(%r9,%r10,8),%xmm14,%xmm14
  81b2a3:	c4 41 11 58 fe       	vaddpd %xmm14,%xmm13,%xmm15
  81b2a8:	49 83 c2 04          	add    $0x4,%r10
  81b2ac:	4a 8d 3c a7          	lea    (%rdi,%r12,4),%rdi
  81b2b0:	c4 41 7b 11 3f       	vmovsd %xmm15,(%r15)
  81b2b5:	c4 01 79 17 3c 3c    	vmovhpd %xmm15,(%r12,%r15,1)
  81b2bb:	4c 3b 95 e0 fe ff ff 	cmp    -0x120(%rbp),%r10
  81b2c2:	0f 82 19 ff ff ff    	jb     81b1e1 <pre_step3d_mod_mp_pre_step3d_tile_+0x6c31>
  81b2c8:	4c 8b ad 00 f8 ff ff 	mov    -0x800(%rbp),%r13
  81b2cf:	48 8b 85 08 f8 ff ff 	mov    -0x7f8(%rbp),%rax
  81b2d6:	48 8b b5 10 f8 ff ff 	mov    -0x7f0(%rbp),%rsi
  81b2dd:	48 8b 95 18 f8 ff ff 	mov    -0x7e8(%rbp),%rdx
  81b2e4:	48 8b 8d 20 f8 ff ff 	mov    -0x7e0(%rbp),%rcx
  81b2eb:	4c 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%r14
  81b2f2:	4d 89 e1             	mov    %r12,%r9
  81b2f5:	4c 8b 9d 58 ff ff ff 	mov    -0xa8(%rbp),%r11
  81b2fc:	4d 0f af dd          	imul   %r13,%r11
  81b300:	4d 0f af cd          	imul   %r13,%r9
  81b304:	4d 3b ee             	cmp    %r14,%r13
  81b307:	0f 83 cc 00 00 00    	jae    81b3d9 <pre_step3d_mod_mp_pre_step3d_tile_+0x6e29>
  81b30d:	4c 8b 85 68 f7 ff ff 	mov    -0x898(%rbp),%r8
  81b314:	4c 8b bd f8 f7 ff ff 	mov    -0x808(%rbp),%r15
  81b31b:	4c 8b 95 90 fa ff ff 	mov    -0x570(%rbp),%r10
  81b322:	48 89 b5 10 f8 ff ff 	mov    %rsi,-0x7f0(%rbp)
  81b329:	49 8d 3c 10          	lea    (%r8,%rdx,1),%rdi
  81b32d:	48 89 bd d8 f7 ff ff 	mov    %rdi,-0x828(%rbp)
  81b334:	49 8d 3c 37          	lea    (%r15,%rsi,1),%rdi
  81b338:	4c 8b bd e0 f7 ff ff 	mov    -0x820(%rbp),%r15
  81b33f:	4d 8d 04 12          	lea    (%r10,%rdx,1),%r8
  81b343:	4c 8b 95 e8 f7 ff ff 	mov    -0x818(%rbp),%r10
  81b34a:	48 89 95 18 f8 ff ff 	mov    %rdx,-0x7e8(%rbp)
  81b351:	48 89 8d 20 f8 ff ff 	mov    %rcx,-0x7e0(%rbp)
  81b358:	4c 03 f8             	add    %rax,%r15
  81b35b:	4c 89 bd d0 f7 ff ff 	mov    %r15,-0x830(%rbp)
  81b362:	4c 03 d6             	add    %rsi,%r10
  81b365:	4c 8b bd a8 f7 ff ff 	mov    -0x858(%rbp),%r15
  81b36c:	48 8b 8d d0 f7 ff ff 	mov    -0x830(%rbp),%rcx
  81b373:	48 8b b5 d8 f7 ff ff 	mov    -0x828(%rbp),%rsi
  81b37a:	4c 03 f8             	add    %rax,%r15
  81b37d:	4c 89 fa             	mov    %r15,%rdx
  81b380:	4c 8b bd 58 ff ff ff 	mov    -0xa8(%rbp),%r15
  81b387:	c4 41 7b 10 2c 13    	vmovsd (%r11,%rdx,1),%xmm13
  81b38d:	c4 01 3b 59 34 11    	vmulsd (%r9,%r10,1),%xmm8,%xmm14
  81b393:	c4 41 13 58 3c 0b    	vaddsd (%r11,%rcx,1),%xmm13,%xmm15
  81b399:	c4 01 7b 10 6c e8 08 	vmovsd 0x8(%r8,%r13,8),%xmm13
  81b3a0:	4d 03 df             	add    %r15,%r11
  81b3a3:	c4 41 0b 59 f7       	vmulsd %xmm15,%xmm14,%xmm14
  81b3a8:	c4 21 13 5c 3c ee    	vsubsd (%rsi,%r13,8),%xmm13,%xmm15
  81b3ae:	49 ff c5             	inc    %r13
  81b3b1:	c4 41 0b 58 ef       	vaddsd %xmm15,%xmm14,%xmm13
  81b3b6:	c4 41 7b 11 2c 39    	vmovsd %xmm13,(%r9,%rdi,1)
  81b3bc:	4d 03 cc             	add    %r12,%r9
  81b3bf:	4d 3b ee             	cmp    %r14,%r13
  81b3c2:	72 c3                	jb     81b387 <pre_step3d_mod_mp_pre_step3d_tile_+0x6dd7>
  81b3c4:	48 8b b5 10 f8 ff ff 	mov    -0x7f0(%rbp),%rsi
  81b3cb:	48 8b 95 18 f8 ff ff 	mov    -0x7e8(%rbp),%rdx
  81b3d2:	48 8b 8d 20 f8 ff ff 	mov    -0x7e0(%rbp),%rcx
  81b3d9:	48 ff c1             	inc    %rcx
  81b3dc:	48 03 95 18 ff ff ff 	add    -0xe8(%rbp),%rdx
  81b3e3:	48 03 b5 00 fc ff ff 	add    -0x400(%rbp),%rsi
  81b3ea:	48 03 85 10 fd ff ff 	add    -0x2f0(%rbp),%rax
  81b3f1:	48 3b 8d 08 fd ff ff 	cmp    -0x2f8(%rbp),%rcx
  81b3f8:	0f 82 d2 fc ff ff    	jb     81b0d0 <pre_step3d_mod_mp_pre_step3d_tile_+0x6b20>
  81b3fe:	c5 7b 10 2d fa bd 0a 	vmovsd 0xabdfa(%rip),%xmm13        # 8c7200 <__STRLITPACK_199.115+0x70>
  81b405:	00 
  81b406:	48 8b bd d8 f8 ff ff 	mov    -0x728(%rbp),%rdi
  81b40d:	44 8b 85 b8 f8 ff ff 	mov    -0x748(%rbp),%r8d
  81b414:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  81b41b:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  81b422:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  81b429:	e9 14 0f 00 00       	jmpq   81c342 <pre_step3d_mod_mp_pre_step3d_tile_+0x7d92>
  81b42e:	3b 85 e0 f8 ff ff    	cmp    -0x720(%rbp),%eax
  81b434:	0f 85 99 06 00 00    	jne    81bad3 <pre_step3d_mod_mp_pre_step3d_tile_+0x7523>
  81b43a:	48 83 7d 80 08       	cmpq   $0x8,-0x80(%rbp)
  81b43f:	0f 85 d5 02 00 00    	jne    81b71a <pre_step3d_mod_mp_pre_step3d_tile_+0x716a>
  81b445:	48 83 bd 58 ff ff ff 	cmpq   $0x8,-0xa8(%rbp)
  81b44c:	08 
  81b44d:	0f 85 c7 02 00 00    	jne    81b71a <pre_step3d_mod_mp_pre_step3d_tile_+0x716a>
  81b453:	48 83 bd e8 fc ff ff 	cmpq   $0x8,-0x318(%rbp)
  81b45a:	08 
  81b45b:	0f 85 b9 02 00 00    	jne    81b71a <pre_step3d_mod_mp_pre_step3d_tile_+0x716a>
  81b461:	45 33 ed             	xor    %r13d,%r13d
  81b464:	45 33 e4             	xor    %r12d,%r12d
  81b467:	45 33 f6             	xor    %r14d,%r14d
  81b46a:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  81b471:	00 
  81b472:	0f 8e ca 0e 00 00    	jle    81c342 <pre_step3d_mod_mp_pre_step3d_tile_+0x7d92>
  81b478:	48 8b 95 80 f5 ff ff 	mov    -0xa80(%rbp),%rdx
  81b47f:	48 0f af d7          	imul   %rdi,%rdx
  81b483:	c5 7d 10 25 d5 9e 0a 	vmovupd 0xa9ed5(%rip),%ymm12        # 8c5360 <var$630.126.450+0x4a0>
  81b48a:	00 
  81b48b:	48 8b b5 70 f3 ff ff 	mov    -0xc90(%rbp),%rsi
  81b492:	48 8b 8d 48 f6 ff ff 	mov    -0x9b8(%rbp),%rcx
  81b499:	48 0f af cf          	imul   %rdi,%rcx
  81b49d:	48 8b 85 a0 f4 ff ff 	mov    -0xb60(%rbp),%rax
  81b4a4:	4c 8d 3c 16          	lea    (%rsi,%rdx,1),%r15
  81b4a8:	48 8b b5 70 f4 ff ff 	mov    -0xb90(%rbp),%rsi
  81b4af:	48 0f af f7          	imul   %rdi,%rsi
  81b4b3:	48 03 95 98 f4 ff ff 	add    -0xb68(%rbp),%rdx
  81b4ba:	48 03 c1             	add    %rcx,%rax
  81b4bd:	48 03 8d c0 f4 ff ff 	add    -0xb40(%rbp),%rcx
  81b4c4:	48 89 95 30 f2 ff ff 	mov    %rdx,-0xdd0(%rbp)
  81b4cb:	48 89 8d 38 f2 ff ff 	mov    %rcx,-0xdc8(%rbp)
  81b4d2:	48 03 b5 88 f4 ff ff 	add    -0xb78(%rbp),%rsi
  81b4d9:	4c 89 f2             	mov    %r14,%rdx
  81b4dc:	48 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%rcx
  81b4e3:	4c 89 bd 40 f2 ff ff 	mov    %r15,-0xdc0(%rbp)
  81b4ea:	48 89 85 48 f2 ff ff 	mov    %rax,-0xdb8(%rbp)
  81b4f1:	48 89 bd d8 f8 ff ff 	mov    %rdi,-0x728(%rbp)
  81b4f8:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  81b4ff:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  81b506:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  81b50d:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  81b514:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  81b51b:	48 3b 85 f8 fb ff ff 	cmp    -0x408(%rbp),%rax
  81b522:	0f 8c 96 01 00 00    	jl     81b6be <pre_step3d_mod_mp_pre_step3d_tile_+0x710e>
  81b528:	48 83 f9 04          	cmp    $0x4,%rcx
  81b52c:	0f 8c aa 95 00 00    	jl     824adc <pre_step3d_mod_mp_pre_step3d_tile_+0x1052c>
  81b532:	4c 8b bd 48 f2 ff ff 	mov    -0xdb8(%rbp),%r15
  81b539:	4c 8b 95 68 f7 ff ff 	mov    -0x898(%rbp),%r10
  81b540:	4c 8b 8d 90 fa ff ff 	mov    -0x570(%rbp),%r9
  81b547:	4c 8b 85 30 f2 ff ff 	mov    -0xdd0(%rbp),%r8
  81b54e:	4c 03 fa             	add    %rdx,%r15
  81b551:	48 8b bd 40 f2 ff ff 	mov    -0xdc0(%rbp),%rdi
  81b558:	4d 03 d4             	add    %r12,%r10
  81b55b:	4c 8b 9d 38 f2 ff ff 	mov    -0xdc8(%rbp),%r11
  81b562:	4d 03 cc             	add    %r12,%r9
  81b565:	48 c7 85 50 f2 ff ff 	movq   $0x0,-0xdb0(%rbp)
  81b56c:	00 00 00 00 
  81b570:	4d 03 c6             	add    %r14,%r8
  81b573:	49 03 fe             	add    %r14,%rdi
  81b576:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  81b57d:	4c 03 da             	add    %rdx,%r11
  81b580:	4c 89 a5 98 f3 ff ff 	mov    %r12,-0xc68(%rbp)
  81b587:	4c 89 ad a0 f3 ff ff 	mov    %r13,-0xc60(%rbp)
  81b58e:	49 89 c5             	mov    %rax,%r13
  81b591:	4c 89 f9             	mov    %r15,%rcx
  81b594:	4c 8b a5 50 f2 ff ff 	mov    -0xdb0(%rbp),%r12
  81b59b:	4c 8b bd e0 fc ff ff 	mov    -0x320(%rbp),%r15
  81b5a2:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  81b5a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  81b5b0:	c4 21 7d 10 3c e1    	vmovupd (%rcx,%r12,8),%ymm15
  81b5b6:	c4 21 1d 59 2c e7    	vmulpd (%rdi,%r12,8),%ymm12,%ymm13
  81b5bc:	c4 01 05 58 34 e3    	vaddpd (%r11,%r12,8),%ymm15,%ymm14
  81b5c2:	c4 01 7d 10 7c e1 08 	vmovupd 0x8(%r9,%r12,8),%ymm15
  81b5c9:	c4 41 15 59 f6       	vmulpd %ymm14,%ymm13,%ymm14
  81b5ce:	c4 01 05 5c 2c e2    	vsubpd (%r10,%r12,8),%ymm15,%ymm13
  81b5d4:	c4 01 1d 59 3c e7    	vmulpd (%r15,%r12,8),%ymm12,%ymm15
  81b5da:	c4 21 05 59 3c e6    	vmulpd (%rsi,%r12,8),%ymm15,%ymm15
  81b5e0:	c4 41 0d 5c f7       	vsubpd %ymm15,%ymm14,%ymm14
  81b5e5:	c4 41 15 58 ee       	vaddpd %ymm14,%ymm13,%ymm13
  81b5ea:	c4 01 7d 11 2c e0    	vmovupd %ymm13,(%r8,%r12,8)
  81b5f0:	49 83 c4 04          	add    $0x4,%r12
  81b5f4:	4d 3b e5             	cmp    %r13,%r12
  81b5f7:	72 b7                	jb     81b5b0 <pre_step3d_mod_mp_pre_step3d_tile_+0x7000>
  81b5f9:	4c 8b a5 98 f3 ff ff 	mov    -0xc68(%rbp),%r12
  81b600:	4c 8b ad a0 f3 ff ff 	mov    -0xc60(%rbp),%r13
  81b607:	48 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%rcx
  81b60e:	48 3b c1             	cmp    %rcx,%rax
  81b611:	0f 83 a7 00 00 00    	jae    81b6be <pre_step3d_mod_mp_pre_step3d_tile_+0x710e>
  81b617:	4c 8b 95 68 f7 ff ff 	mov    -0x898(%rbp),%r10
  81b61e:	4c 8b 8d 90 fa ff ff 	mov    -0x570(%rbp),%r9
  81b625:	4c 8b 85 30 f2 ff ff 	mov    -0xdd0(%rbp),%r8
  81b62c:	48 8b bd 40 f2 ff ff 	mov    -0xdc0(%rbp),%rdi
  81b633:	4d 03 d4             	add    %r12,%r10
  81b636:	4c 8b 9d 38 f2 ff ff 	mov    -0xdc8(%rbp),%r11
  81b63d:	4d 03 cc             	add    %r12,%r9
  81b640:	4c 8b bd 48 f2 ff ff 	mov    -0xdb8(%rbp),%r15
  81b647:	4d 03 c6             	add    %r14,%r8
  81b64a:	4c 89 ad a0 f3 ff ff 	mov    %r13,-0xc60(%rbp)
  81b651:	49 03 fe             	add    %r14,%rdi
  81b654:	4c 8b ad e0 fc ff ff 	mov    -0x320(%rbp),%r13
  81b65b:	4c 03 da             	add    %rdx,%r11
  81b65e:	4c 03 fa             	add    %rdx,%r15
  81b661:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  81b668:	00 
  81b669:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  81b670:	c4 41 7b 10 3c c7    	vmovsd (%r15,%rax,8),%xmm15
  81b676:	c5 3b 59 2c c7       	vmulsd (%rdi,%rax,8),%xmm8,%xmm13
  81b67b:	c4 41 03 58 34 c3    	vaddsd (%r11,%rax,8),%xmm15,%xmm14
  81b681:	c4 41 7b 10 7c c1 08 	vmovsd 0x8(%r9,%rax,8),%xmm15
  81b688:	c4 41 13 59 f6       	vmulsd %xmm14,%xmm13,%xmm14
  81b68d:	c4 41 03 5c 2c c2    	vsubsd (%r10,%rax,8),%xmm15,%xmm13
  81b693:	c4 41 3b 59 7c c5 00 	vmulsd 0x0(%r13,%rax,8),%xmm8,%xmm15
  81b69a:	c5 03 59 3c c6       	vmulsd (%rsi,%rax,8),%xmm15,%xmm15
  81b69f:	c4 41 0b 5c f7       	vsubsd %xmm15,%xmm14,%xmm14
  81b6a4:	c4 41 0b 58 ed       	vaddsd %xmm13,%xmm14,%xmm13
  81b6a9:	c4 41 7b 11 2c c0    	vmovsd %xmm13,(%r8,%rax,8)
  81b6af:	48 ff c0             	inc    %rax
  81b6b2:	48 3b c1             	cmp    %rcx,%rax
  81b6b5:	72 b9                	jb     81b670 <pre_step3d_mod_mp_pre_step3d_tile_+0x70c0>
  81b6b7:	4c 8b ad a0 f3 ff ff 	mov    -0xc60(%rbp),%r13
  81b6be:	49 ff c5             	inc    %r13
  81b6c1:	4c 03 a5 18 ff ff ff 	add    -0xe8(%rbp),%r12
  81b6c8:	4c 03 b5 00 fc ff ff 	add    -0x400(%rbp),%r14
  81b6cf:	48 03 95 10 fd ff ff 	add    -0x2f0(%rbp),%rdx
  81b6d6:	48 03 b5 90 f6 ff ff 	add    -0x970(%rbp),%rsi
  81b6dd:	4c 3b ad 08 fd ff ff 	cmp    -0x2f8(%rbp),%r13
  81b6e4:	0f 82 2a fe ff ff    	jb     81b514 <pre_step3d_mod_mp_pre_step3d_tile_+0x6f64>
  81b6ea:	c5 7b 10 2d 0e bb 0a 	vmovsd 0xabb0e(%rip),%xmm13        # 8c7200 <__STRLITPACK_199.115+0x70>
  81b6f1:	00 
  81b6f2:	48 8b bd d8 f8 ff ff 	mov    -0x728(%rbp),%rdi
  81b6f9:	44 8b 85 b8 f8 ff ff 	mov    -0x748(%rbp),%r8d
  81b700:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  81b707:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  81b70e:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  81b715:	e9 28 0c 00 00       	jmpq   81c342 <pre_step3d_mod_mp_pre_step3d_tile_+0x7d92>
  81b71a:	45 33 ed             	xor    %r13d,%r13d
  81b71d:	33 c9                	xor    %ecx,%ecx
  81b71f:	33 d2                	xor    %edx,%edx
  81b721:	33 f6                	xor    %esi,%esi
  81b723:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  81b72a:	00 
  81b72b:	0f 8e 11 0c 00 00    	jle    81c342 <pre_step3d_mod_mp_pre_step3d_tile_+0x7d92>
  81b731:	4c 8b bd 48 f6 ff ff 	mov    -0x9b8(%rbp),%r15
  81b738:	4c 0f af ff          	imul   %rdi,%r15
  81b73c:	48 8b 85 b8 f4 ff ff 	mov    -0xb48(%rbp),%rax
  81b743:	4c 8b b5 80 f5 ff ff 	mov    -0xa80(%rbp),%r14
  81b74a:	4c 0f af f7          	imul   %rdi,%r14
  81b74e:	4c 8b a5 78 f5 ff ff 	mov    -0xa88(%rbp),%r12
  81b755:	49 03 c7             	add    %r15,%rax
  81b758:	48 89 85 88 f3 ff ff 	mov    %rax,-0xc78(%rbp)
  81b75f:	48 8b 85 70 f4 ff ff 	mov    -0xb90(%rbp),%rax
  81b766:	48 0f af c7          	imul   %rdi,%rax
  81b76a:	4c 03 bd 18 f3 ff ff 	add    -0xce8(%rbp),%r15
  81b771:	4d 03 e6             	add    %r14,%r12
  81b774:	4c 03 b5 b0 f4 ff ff 	add    -0xb50(%rbp),%r14
  81b77b:	48 03 85 10 f3 ff ff 	add    -0xcf0(%rbp),%rax
  81b782:	4c 89 b5 58 f2 ff ff 	mov    %r14,-0xda8(%rbp)
  81b789:	4c 89 bd 60 f2 ff ff 	mov    %r15,-0xda0(%rbp)
  81b790:	4c 89 a5 68 f2 ff ff 	mov    %r12,-0xd98(%rbp)
  81b797:	4c 89 ad 08 f4 ff ff 	mov    %r13,-0xbf8(%rbp)
  81b79e:	48 89 bd d8 f8 ff ff 	mov    %rdi,-0x728(%rbp)
  81b7a5:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  81b7ac:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  81b7b3:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  81b7ba:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  81b7c1:	c5 f9 10 05 d7 b1 0a 	vmovupd 0xab1d7(%rip),%xmm0        # 8c69a0 <__STRLITPACK_19.34+0x10>
  81b7c8:	00 
  81b7c9:	48 8b bd 00 ff ff ff 	mov    -0x100(%rbp),%rdi
  81b7d0:	48 3b bd f8 fb ff ff 	cmp    -0x408(%rbp),%rdi
  81b7d7:	0f 8c 84 02 00 00    	jl     81ba61 <pre_step3d_mod_mp_pre_step3d_tile_+0x74b1>
  81b7dd:	48 83 7d 80 00       	cmpq   $0x0,-0x80(%rbp)
  81b7e2:	0f 84 fb 92 00 00    	je     824ae3 <pre_step3d_mod_mp_pre_step3d_tile_+0x10533>
  81b7e8:	48 83 bd 78 ff ff ff 	cmpq   $0x2,-0x88(%rbp)
  81b7ef:	02 
  81b7f0:	0f 8c ed 92 00 00    	jl     824ae3 <pre_step3d_mod_mp_pre_step3d_tile_+0x10533>
  81b7f6:	4c 8b a5 88 f3 ff ff 	mov    -0xc78(%rbp),%r12
  81b7fd:	45 33 db             	xor    %r11d,%r11d
  81b800:	4c 8b bd 90 fa ff ff 	mov    -0x570(%rbp),%r15
  81b807:	4c 8b 95 68 f7 ff ff 	mov    -0x898(%rbp),%r10
  81b80e:	4c 8b 8d 58 f2 ff ff 	mov    -0xda8(%rbp),%r9
  81b815:	4d 8d 2c 34          	lea    (%r12,%rsi,1),%r13
  81b819:	4c 8b 85 68 f2 ff ff 	mov    -0xd98(%rbp),%r8
  81b820:	45 33 e4             	xor    %r12d,%r12d
  81b823:	48 8b bd 60 f2 ff ff 	mov    -0xda0(%rbp),%rdi
  81b82a:	4c 03 f9             	add    %rcx,%r15
  81b82d:	4c 8b 75 88          	mov    -0x78(%rbp),%r14
  81b831:	4c 03 d1             	add    %rcx,%r10
  81b834:	4c 89 ad 70 f2 ff ff 	mov    %r13,-0xd90(%rbp)
  81b83b:	45 33 ed             	xor    %r13d,%r13d
  81b83e:	4c 03 ca             	add    %rdx,%r9
  81b841:	4c 89 b5 a8 f3 ff ff 	mov    %r14,-0xc58(%rbp)
  81b848:	4c 03 c2             	add    %rdx,%r8
  81b84b:	48 89 b5 b0 f3 ff ff 	mov    %rsi,-0xc50(%rbp)
  81b852:	48 03 fe             	add    %rsi,%rdi
  81b855:	48 89 8d c0 f3 ff ff 	mov    %rcx,-0xc40(%rbp)
  81b85c:	4c 89 bd f0 fc ff ff 	mov    %r15,-0x310(%rbp)
  81b863:	48 89 95 b8 f3 ff ff 	mov    %rdx,-0xc48(%rbp)
  81b86a:	4c 89 ee             	mov    %r13,%rsi
  81b86d:	48 8b 8d 70 f2 ff ff 	mov    -0xd90(%rbp),%rcx
  81b874:	4c 8b 75 80          	mov    -0x80(%rbp),%r14
  81b878:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
  81b87f:	4f 8d 3c 28          	lea    (%r8,%r13,1),%r15
  81b883:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81b888:	c4 01 11 16 34 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm14
  81b88e:	4c 8d 3c 31          	lea    (%rcx,%rsi,1),%r15
  81b892:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81b897:	c5 09 59 f8          	vmulpd %xmm0,%xmm14,%xmm15
  81b89b:	c4 41 19 16 34 17    	vmovhpd (%r15,%rdx,1),%xmm12,%xmm14
  81b8a1:	4c 8d 3c 37          	lea    (%rdi,%rsi,1),%r15
  81b8a5:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81b8aa:	48 8d 34 56          	lea    (%rsi,%rdx,2),%rsi
  81b8ae:	c4 41 11 16 24 17    	vmovhpd (%r15,%rdx,1),%xmm13,%xmm12
  81b8b4:	4e 8d 3c 20          	lea    (%rax,%r12,1),%r15
  81b8b8:	c4 41 09 58 ec       	vaddpd %xmm12,%xmm14,%xmm13
  81b8bd:	48 8b 95 f0 fc ff ff 	mov    -0x310(%rbp),%rdx
  81b8c4:	c4 41 01 59 f5       	vmulpd %xmm13,%xmm15,%xmm14
  81b8c9:	c4 21 79 10 7c da 08 	vmovupd 0x8(%rdx,%r11,8),%xmm15
  81b8d0:	48 8b 95 e0 fc ff ff 	mov    -0x320(%rbp),%rdx
  81b8d7:	c4 01 01 5c 2c da    	vsubpd (%r10,%r11,8),%xmm15,%xmm13
  81b8dd:	c4 21 79 59 24 da    	vmulpd (%rdx,%r11,8),%xmm0,%xmm12
  81b8e3:	48 8b 95 e8 fc ff ff 	mov    -0x318(%rbp),%rdx
  81b8ea:	49 83 c3 02          	add    $0x2,%r11
  81b8ee:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81b8f3:	c4 41 01 16 3c 17    	vmovhpd (%r15,%rdx,1),%xmm15,%xmm15
  81b8f9:	4f 8d 7c 0d 00       	lea    0x0(%r13,%r9,1),%r15
  81b8fe:	c4 41 19 59 e7       	vmulpd %xmm15,%xmm12,%xmm12
  81b903:	c4 41 09 5c f4       	vsubpd %xmm12,%xmm14,%xmm14
  81b908:	c4 41 11 58 ee       	vaddpd %xmm14,%xmm13,%xmm13
  81b90d:	c4 41 7b 11 2f       	vmovsd %xmm13,(%r15)
  81b912:	4d 8d 24 54          	lea    (%r12,%rdx,2),%r12
  81b916:	c4 01 79 17 2c 3e    	vmovhpd %xmm13,(%r14,%r15,1)
  81b91c:	4f 8d 6c 75 00       	lea    0x0(%r13,%r14,2),%r13
  81b921:	4c 3b 5d 88          	cmp    -0x78(%rbp),%r11
  81b925:	0f 82 4d ff ff ff    	jb     81b878 <pre_step3d_mod_mp_pre_step3d_tile_+0x72c8>
  81b92b:	4c 8b b5 a8 f3 ff ff 	mov    -0xc58(%rbp),%r14
  81b932:	48 8b b5 b0 f3 ff ff 	mov    -0xc50(%rbp),%rsi
  81b939:	48 8b 95 b8 f3 ff ff 	mov    -0xc48(%rbp),%rdx
  81b940:	48 8b 8d c0 f3 ff ff 	mov    -0xc40(%rbp),%rcx
  81b947:	4c 8b ad 58 ff ff ff 	mov    -0xa8(%rbp),%r13
  81b94e:	4c 8b 65 80          	mov    -0x80(%rbp),%r12
  81b952:	4c 8b 95 e8 fc ff ff 	mov    -0x318(%rbp),%r10
  81b959:	4d 0f af ee          	imul   %r14,%r13
  81b95d:	4d 0f af e6          	imul   %r14,%r12
  81b961:	4d 0f af d6          	imul   %r14,%r10
  81b965:	4c 3b b5 78 ff ff ff 	cmp    -0x88(%rbp),%r14
  81b96c:	0f 83 ef 00 00 00    	jae    81ba61 <pre_step3d_mod_mp_pre_step3d_tile_+0x74b1>
  81b972:	4c 8b 85 58 f2 ff ff 	mov    -0xda8(%rbp),%r8
  81b979:	4c 8b bd 68 f2 ff ff 	mov    -0xd98(%rbp),%r15
  81b980:	4c 8b 8d 68 f7 ff ff 	mov    -0x898(%rbp),%r9
  81b987:	4c 8b 9d 90 fa ff ff 	mov    -0x570(%rbp),%r11
  81b98e:	49 8d 3c 10          	lea    (%r8,%rdx,1),%rdi
  81b992:	48 89 bd 78 f2 ff ff 	mov    %rdi,-0xd88(%rbp)
  81b999:	4d 8d 04 17          	lea    (%r15,%rdx,1),%r8
  81b99d:	48 8b bd 60 f2 ff ff 	mov    -0xda0(%rbp),%rdi
  81b9a4:	4c 03 c9             	add    %rcx,%r9
  81b9a7:	4c 8b bd 88 f3 ff ff 	mov    -0xc78(%rbp),%r15
  81b9ae:	4c 03 d9             	add    %rcx,%r11
  81b9b1:	48 89 b5 b0 f3 ff ff 	mov    %rsi,-0xc50(%rbp)
  81b9b8:	48 89 95 b8 f3 ff ff 	mov    %rdx,-0xc48(%rbp)
  81b9bf:	48 03 fe             	add    %rsi,%rdi
  81b9c2:	48 89 8d c0 f3 ff ff 	mov    %rcx,-0xc40(%rbp)
  81b9c9:	4c 03 fe             	add    %rsi,%r15
  81b9cc:	48 8b 95 78 f2 ff ff 	mov    -0xd88(%rbp),%rdx
  81b9d3:	48 8b 8d e0 fc ff ff 	mov    -0x320(%rbp),%rcx
  81b9da:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  81b9e1:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  81b9e8:	00 
  81b9e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  81b9f0:	c4 01 7b 10 74 3d 00 	vmovsd 0x0(%r13,%r15,1),%xmm14
  81b9f7:	c4 01 3b 59 3c 04    	vmulsd (%r12,%r8,1),%xmm8,%xmm15
  81b9fd:	c4 41 0b 58 64 3d 00 	vaddsd 0x0(%r13,%rdi,1),%xmm14,%xmm12
  81ba04:	c4 41 03 59 ec       	vmulsd %xmm12,%xmm15,%xmm13
  81ba09:	4c 03 ee             	add    %rsi,%r13
  81ba0c:	c4 21 3b 59 3c f1    	vmulsd (%rcx,%r14,8),%xmm8,%xmm15
  81ba12:	c4 01 7b 10 74 f3 08 	vmovsd 0x8(%r11,%r14,8),%xmm14
  81ba19:	c4 01 0b 5c 24 f1    	vsubsd (%r9,%r14,8),%xmm14,%xmm12
  81ba1f:	49 ff c6             	inc    %r14
  81ba22:	c4 41 03 59 34 02    	vmulsd (%r10,%rax,1),%xmm15,%xmm14
  81ba28:	4c 03 95 e8 fc ff ff 	add    -0x318(%rbp),%r10
  81ba2f:	c4 41 13 5c ee       	vsubsd %xmm14,%xmm13,%xmm13
  81ba34:	c4 41 13 58 e4       	vaddsd %xmm12,%xmm13,%xmm12
  81ba39:	c4 41 7b 11 24 14    	vmovsd %xmm12,(%r12,%rdx,1)
  81ba3f:	4c 03 65 80          	add    -0x80(%rbp),%r12
  81ba43:	4c 3b b5 78 ff ff ff 	cmp    -0x88(%rbp),%r14
  81ba4a:	72 a4                	jb     81b9f0 <pre_step3d_mod_mp_pre_step3d_tile_+0x7440>
  81ba4c:	48 8b b5 b0 f3 ff ff 	mov    -0xc50(%rbp),%rsi
  81ba53:	48 8b 95 b8 f3 ff ff 	mov    -0xc48(%rbp),%rdx
  81ba5a:	48 8b 8d c0 f3 ff ff 	mov    -0xc40(%rbp),%rcx
  81ba61:	48 8b bd 08 f4 ff ff 	mov    -0xbf8(%rbp),%rdi
  81ba68:	48 ff c7             	inc    %rdi
  81ba6b:	48 03 8d 18 ff ff ff 	add    -0xe8(%rbp),%rcx
  81ba72:	48 03 95 00 fc ff ff 	add    -0x400(%rbp),%rdx
  81ba79:	48 03 b5 10 fd ff ff 	add    -0x2f0(%rbp),%rsi
  81ba80:	48 03 85 90 f6 ff ff 	add    -0x970(%rbp),%rax
  81ba87:	48 89 bd 08 f4 ff ff 	mov    %rdi,-0xbf8(%rbp)
  81ba8e:	48 3b bd 08 fd ff ff 	cmp    -0x2f8(%rbp),%rdi
  81ba95:	0f 82 2e fd ff ff    	jb     81b7c9 <pre_step3d_mod_mp_pre_step3d_tile_+0x7219>
  81ba9b:	c5 f9 10 05 ad b2 0a 	vmovupd 0xab2ad(%rip),%xmm0        # 8c6d50 <__STRLITPACK_124.84+0x50>
  81baa2:	00 
  81baa3:	c5 7b 10 2d 55 b7 0a 	vmovsd 0xab755(%rip),%xmm13        # 8c7200 <__STRLITPACK_199.115+0x70>
  81baaa:	00 
  81baab:	48 8b bd d8 f8 ff ff 	mov    -0x728(%rbp),%rdi
  81bab2:	44 8b 85 b8 f8 ff ff 	mov    -0x748(%rbp),%r8d
  81bab9:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  81bac0:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  81bac7:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  81bace:	e9 6f 08 00 00       	jmpq   81c342 <pre_step3d_mod_mp_pre_step3d_tile_+0x7d92>
  81bad3:	48 83 7d 80 08       	cmpq   $0x8,-0x80(%rbp)
  81bad8:	0f 85 b9 03 00 00    	jne    81be97 <pre_step3d_mod_mp_pre_step3d_tile_+0x78e7>
  81bade:	48 83 bd 58 ff ff ff 	cmpq   $0x8,-0xa8(%rbp)
  81bae5:	08 
  81bae6:	0f 85 ab 03 00 00    	jne    81be97 <pre_step3d_mod_mp_pre_step3d_tile_+0x78e7>
  81baec:	48 83 bd e8 fc ff ff 	cmpq   $0x8,-0x318(%rbp)
  81baf3:	08 
  81baf4:	0f 85 9d 03 00 00    	jne    81be97 <pre_step3d_mod_mp_pre_step3d_tile_+0x78e7>
  81bafa:	45 33 ed             	xor    %r13d,%r13d
  81bafd:	45 33 e4             	xor    %r12d,%r12d
  81bb00:	4c 89 a5 d0 f3 ff ff 	mov    %r12,-0xc30(%rbp)
  81bb07:	4c 89 a5 c8 f3 ff ff 	mov    %r12,-0xc38(%rbp)
  81bb0e:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  81bb15:	00 
  81bb16:	0f 8e 26 08 00 00    	jle    81c342 <pre_step3d_mod_mp_pre_step3d_tile_+0x7d92>
  81bb1c:	48 8b 8d 80 f5 ff ff 	mov    -0xa80(%rbp),%rcx
  81bb23:	48 0f af cf          	imul   %rdi,%rcx
  81bb27:	c5 7d 10 2d 31 98 0a 	vmovupd 0xa9831(%rip),%ymm13        # 8c5360 <var$630.126.450+0x4a0>
  81bb2e:	00 
  81bb2f:	c5 fb 11 a5 00 f2 ff 	vmovsd %xmm4,-0xe00(%rbp)
  81bb36:	ff 
  81bb37:	c5 fb 11 9d f8 f1 ff 	vmovsd %xmm3,-0xe08(%rbp)
  81bb3e:	ff 
  81bb3f:	c5 fb 11 95 f0 f1 ff 	vmovsd %xmm2,-0xe10(%rbp)
  81bb46:	ff 
  81bb47:	c5 7b 10 25 d1 be 0a 	vmovsd 0xabed1(%rip),%xmm12        # 8c7a20 <__STRLITPACK_199.115+0x890>
  81bb4e:	00 
  81bb4f:	48 8b b5 48 f6 ff ff 	mov    -0x9b8(%rbp),%rsi
  81bb56:	4c 8b b5 70 f4 ff ff 	mov    -0xb90(%rbp),%r14
  81bb5d:	48 0f af f7          	imul   %rdi,%rsi
  81bb61:	4c 0f af f7          	imul   %rdi,%r14
  81bb65:	c5 fd 10 15 53 a5 0a 	vmovupd 0xaa553(%rip),%ymm2        # 8c60c0 <var$630.126.450+0x1200>
  81bb6c:	00 
  81bb6d:	c5 fb 10 1d a3 be 0a 	vmovsd 0xabea3(%rip),%xmm3        # 8c7a18 <__STRLITPACK_199.115+0x888>
  81bb74:	00 
  81bb75:	c5 fd 10 25 23 a5 0a 	vmovupd 0xaa523(%rip),%ymm4        # 8c60a0 <var$630.126.450+0x11e0>
  81bb7c:	00 
  81bb7d:	4c 8b bd 70 f3 ff ff 	mov    -0xc90(%rbp),%r15
  81bb84:	48 8b 95 a0 f4 ff ff 	mov    -0xb60(%rbp),%rdx
  81bb8b:	48 89 bd d8 f8 ff ff 	mov    %rdi,-0x728(%rbp)
  81bb92:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  81bb99:	49 8d 04 0f          	lea    (%r15,%rcx,1),%rax
  81bb9d:	4c 8b bd 88 f4 ff ff 	mov    -0xb78(%rbp),%r15
  81bba4:	48 03 d6             	add    %rsi,%rdx
  81bba7:	48 03 b5 c0 f4 ff ff 	add    -0xb40(%rbp),%rsi
  81bbae:	48 03 8d 98 f4 ff ff 	add    -0xb68(%rbp),%rcx
  81bbb5:	48 89 8d 90 f2 ff ff 	mov    %rcx,-0xd70(%rbp)
  81bbbc:	4d 03 fe             	add    %r14,%r15
  81bbbf:	4c 03 b5 78 f4 ff ff 	add    -0xb88(%rbp),%r14
  81bbc6:	48 89 b5 98 f2 ff ff 	mov    %rsi,-0xd68(%rbp)
  81bbcd:	48 89 95 a8 f2 ff ff 	mov    %rdx,-0xd58(%rbp)
  81bbd4:	4c 89 b5 80 f2 ff ff 	mov    %r14,-0xd80(%rbp)
  81bbdb:	4c 89 bd 88 f2 ff ff 	mov    %r15,-0xd78(%rbp)
  81bbe2:	48 89 85 a0 f2 ff ff 	mov    %rax,-0xd60(%rbp)
  81bbe9:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  81bbf0:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  81bbf7:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  81bbfe:	4c 89 e7             	mov    %r12,%rdi
  81bc01:	48 8b 95 c8 f3 ff ff 	mov    -0xc38(%rbp),%rdx
  81bc08:	48 8b b5 d0 f3 ff ff 	mov    -0xc30(%rbp),%rsi
  81bc0f:	48 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%rcx
  81bc16:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  81bc1d:	48 3b 85 f8 fb ff ff 	cmp    -0x408(%rbp),%rax
  81bc24:	0f 8c 3c 02 00 00    	jl     81be66 <pre_step3d_mod_mp_pre_step3d_tile_+0x78b6>
  81bc2a:	48 83 f9 04          	cmp    $0x4,%rcx
  81bc2e:	0f 8c b7 8e 00 00    	jl     824aeb <pre_step3d_mod_mp_pre_step3d_tile_+0x1053b>
  81bc34:	4c 8b 8d 90 f2 ff ff 	mov    -0xd70(%rbp),%r9
  81bc3b:	45 33 f6             	xor    %r14d,%r14d
  81bc3e:	4c 8b bd a0 f2 ff ff 	mov    -0xd60(%rbp),%r15
  81bc45:	4c 8b 9d 68 f7 ff ff 	mov    -0x898(%rbp),%r11
  81bc4c:	4c 8b 95 90 fa ff ff 	mov    -0x570(%rbp),%r10
  81bc53:	4d 8d 04 31          	lea    (%r9,%rsi,1),%r8
  81bc57:	4c 89 85 d0 f2 ff ff 	mov    %r8,-0xd30(%rbp)
  81bc5e:	4d 8d 0c 37          	lea    (%r15,%rsi,1),%r9
  81bc62:	4c 8b bd a8 f2 ff ff 	mov    -0xd58(%rbp),%r15
  81bc69:	4d 03 dc             	add    %r12,%r11
  81bc6c:	4c 8b 85 98 f2 ff ff 	mov    -0xd68(%rbp),%r8
  81bc73:	4d 03 d4             	add    %r12,%r10
  81bc76:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  81bc7d:	48 89 95 c8 f3 ff ff 	mov    %rdx,-0xc38(%rbp)
  81bc84:	4c 03 fa             	add    %rdx,%r15
  81bc87:	4c 89 bd b8 f2 ff ff 	mov    %r15,-0xd48(%rbp)
  81bc8e:	4c 03 c2             	add    %rdx,%r8
  81bc91:	4c 8b bd 88 f2 ff ff 	mov    -0xd78(%rbp),%r15
  81bc98:	48 89 b5 d0 f3 ff ff 	mov    %rsi,-0xc30(%rbp)
  81bc9f:	4c 89 a5 d8 f3 ff ff 	mov    %r12,-0xc28(%rbp)
  81bca6:	4c 89 ad e0 f3 ff ff 	mov    %r13,-0xc20(%rbp)
  81bcad:	4c 03 ff             	add    %rdi,%r15
  81bcb0:	4c 89 bd b0 f2 ff ff 	mov    %r15,-0xd50(%rbp)
  81bcb7:	49 89 c5             	mov    %rax,%r13
  81bcba:	4c 8b bd 80 f2 ff ff 	mov    -0xd80(%rbp),%r15
  81bcc1:	48 8b 8d b0 f2 ff ff 	mov    -0xd50(%rbp),%rcx
  81bcc8:	48 8b b5 b8 f2 ff ff 	mov    -0xd48(%rbp),%rsi
  81bccf:	4c 8b a5 d0 f2 ff ff 	mov    -0xd30(%rbp),%r12
  81bcd6:	4c 03 ff             	add    %rdi,%r15
  81bcd9:	4c 89 fa             	mov    %r15,%rdx
  81bcdc:	4c 8b bd e0 fc ff ff 	mov    -0x320(%rbp),%r15
  81bce3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  81bce8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  81bcef:	00 
  81bcf0:	c4 21 7d 10 34 f6    	vmovupd (%rsi,%r14,8),%ymm14
  81bcf6:	c4 01 15 59 3c f1    	vmulpd (%r9,%r14,8),%ymm13,%ymm15
  81bcfc:	c4 81 0d 58 04 f0    	vaddpd (%r8,%r14,8),%ymm14,%ymm0
  81bd02:	c4 01 7d 10 74 f2 08 	vmovupd 0x8(%r10,%r14,8),%ymm14
  81bd09:	c5 85 59 c8          	vmulpd %ymm0,%ymm15,%ymm1
  81bd0d:	c4 21 5d 59 3c f2    	vmulpd (%rdx,%r14,8),%ymm4,%ymm15
  81bd13:	c4 81 0d 5c 04 f3    	vsubpd (%r11,%r14,8),%ymm14,%ymm0
  81bd19:	c4 21 6d 59 34 f1    	vmulpd (%rcx,%r14,8),%ymm2,%ymm14
  81bd1f:	c4 41 05 5c fe       	vsubpd %ymm14,%ymm15,%ymm15
  81bd24:	c4 01 05 59 34 f7    	vmulpd (%r15,%r14,8),%ymm15,%ymm14
  81bd2a:	c4 c1 75 58 ce       	vaddpd %ymm14,%ymm1,%ymm1
  81bd2f:	c5 fd 58 c1          	vaddpd %ymm1,%ymm0,%ymm0
  81bd33:	c4 81 7d 11 04 f4    	vmovupd %ymm0,(%r12,%r14,8)
  81bd39:	49 83 c6 04          	add    $0x4,%r14
  81bd3d:	4d 3b f5             	cmp    %r13,%r14
  81bd40:	72 ae                	jb     81bcf0 <pre_step3d_mod_mp_pre_step3d_tile_+0x7740>
  81bd42:	48 8b 95 c8 f3 ff ff 	mov    -0xc38(%rbp),%rdx
  81bd49:	48 8b b5 d0 f3 ff ff 	mov    -0xc30(%rbp),%rsi
  81bd50:	4c 8b a5 d8 f3 ff ff 	mov    -0xc28(%rbp),%r12
  81bd57:	4c 8b ad e0 f3 ff ff 	mov    -0xc20(%rbp),%r13
  81bd5e:	48 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%rcx
  81bd65:	48 3b c1             	cmp    %rcx,%rax
  81bd68:	0f 83 f8 00 00 00    	jae    81be66 <pre_step3d_mod_mp_pre_step3d_tile_+0x78b6>
  81bd6e:	4c 8b 8d a0 f2 ff ff 	mov    -0xd60(%rbp),%r9
  81bd75:	4c 8b bd 98 f2 ff ff 	mov    -0xd68(%rbp),%r15
  81bd7c:	4c 8b b5 68 f7 ff ff 	mov    -0x898(%rbp),%r14
  81bd83:	4c 8b 9d 90 fa ff ff 	mov    -0x570(%rbp),%r11
  81bd8a:	4d 8d 04 31          	lea    (%r9,%rsi,1),%r8
  81bd8e:	4c 89 85 c0 f2 ff ff 	mov    %r8,-0xd40(%rbp)
  81bd95:	4d 8d 0c 17          	lea    (%r15,%rdx,1),%r9
  81bd99:	4c 8b 85 a8 f2 ff ff 	mov    -0xd58(%rbp),%r8
  81bda0:	4d 03 f4             	add    %r12,%r14
  81bda3:	4c 8b 95 90 f2 ff ff 	mov    -0xd70(%rbp),%r10
  81bdaa:	4d 03 dc             	add    %r12,%r11
  81bdad:	48 89 b5 d0 f3 ff ff 	mov    %rsi,-0xc30(%rbp)
  81bdb4:	4c 89 a5 d8 f3 ff ff 	mov    %r12,-0xc28(%rbp)
  81bdbb:	4d 8d 3c 10          	lea    (%r8,%rdx,1),%r15
  81bdbf:	4c 89 bd c8 f2 ff ff 	mov    %r15,-0xd38(%rbp)
  81bdc6:	4c 03 d6             	add    %rsi,%r10
  81bdc9:	4c 8b bd 80 f2 ff ff 	mov    -0xd80(%rbp),%r15
  81bdd0:	4c 8b 85 88 f2 ff ff 	mov    -0xd78(%rbp),%r8
  81bdd7:	4c 89 ad e0 f3 ff ff 	mov    %r13,-0xc20(%rbp)
  81bdde:	4c 8b a5 c8 f2 ff ff 	mov    -0xd38(%rbp),%r12
  81bde5:	4c 03 ff             	add    %rdi,%r15
  81bde8:	4c 03 c7             	add    %rdi,%r8
  81bdeb:	4c 89 fe             	mov    %r15,%rsi
  81bdee:	4c 8b ad c0 f2 ff ff 	mov    -0xd40(%rbp),%r13
  81bdf5:	4c 8b bd e0 fc ff ff 	mov    -0x320(%rbp),%r15
  81bdfc:	0f 1f 40 00          	nopl   0x0(%rax)
  81be00:	c4 41 7b 10 34 c4    	vmovsd (%r12,%rax,8),%xmm14
  81be06:	c4 41 3b 59 7c c5 00 	vmulsd 0x0(%r13,%rax,8),%xmm8,%xmm15
  81be0d:	c4 c1 0b 58 04 c1    	vaddsd (%r9,%rax,8),%xmm14,%xmm0
  81be13:	c4 41 7b 10 74 c3 08 	vmovsd 0x8(%r11,%rax,8),%xmm14
  81be1a:	c5 83 59 c8          	vmulsd %xmm0,%xmm15,%xmm1
  81be1e:	c4 c1 0b 5c 04 c6    	vsubsd (%r14,%rax,8),%xmm14,%xmm0
  81be24:	c5 63 59 3c c6       	vmulsd (%rsi,%rax,8),%xmm3,%xmm15
  81be29:	c4 41 1b 59 34 c0    	vmulsd (%r8,%rax,8),%xmm12,%xmm14
  81be2f:	c4 41 03 5c fe       	vsubsd %xmm14,%xmm15,%xmm15
  81be34:	c4 41 03 59 34 c7    	vmulsd (%r15,%rax,8),%xmm15,%xmm14
  81be3a:	c4 c1 73 58 ce       	vaddsd %xmm14,%xmm1,%xmm1
  81be3f:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
  81be43:	c4 c1 7b 11 04 c2    	vmovsd %xmm0,(%r10,%rax,8)
  81be49:	48 ff c0             	inc    %rax
  81be4c:	48 3b c1             	cmp    %rcx,%rax
  81be4f:	72 af                	jb     81be00 <pre_step3d_mod_mp_pre_step3d_tile_+0x7850>
  81be51:	48 8b b5 d0 f3 ff ff 	mov    -0xc30(%rbp),%rsi
  81be58:	4c 8b a5 d8 f3 ff ff 	mov    -0xc28(%rbp),%r12
  81be5f:	4c 8b ad e0 f3 ff ff 	mov    -0xc20(%rbp),%r13
  81be66:	49 ff c5             	inc    %r13
  81be69:	4c 03 a5 18 ff ff ff 	add    -0xe8(%rbp),%r12
  81be70:	48 03 b5 00 fc ff ff 	add    -0x400(%rbp),%rsi
  81be77:	48 03 95 10 fd ff ff 	add    -0x2f0(%rbp),%rdx
  81be7e:	48 03 bd 90 f6 ff ff 	add    -0x970(%rbp),%rdi
  81be85:	4c 3b ad 08 fd ff ff 	cmp    -0x2f8(%rbp),%r13
  81be8c:	0f 82 84 fd ff ff    	jb     81bc16 <pre_step3d_mod_mp_pre_step3d_tile_+0x7666>
  81be92:	e9 58 04 00 00       	jmpq   81c2ef <pre_step3d_mod_mp_pre_step3d_tile_+0x7d3f>
  81be97:	45 33 e4             	xor    %r12d,%r12d
  81be9a:	33 c9                	xor    %ecx,%ecx
  81be9c:	33 d2                	xor    %edx,%edx
  81be9e:	33 c0                	xor    %eax,%eax
  81bea0:	48 89 85 e8 f3 ff ff 	mov    %rax,-0xc18(%rbp)
  81bea7:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  81beae:	00 
  81beaf:	0f 8e 8d 04 00 00    	jle    81c342 <pre_step3d_mod_mp_pre_step3d_tile_+0x7d92>
  81beb5:	4c 8b b5 80 f5 ff ff 	mov    -0xa80(%rbp),%r14
  81bebc:	4c 0f af f7          	imul   %rdi,%r14
  81bec0:	4c 8b ad 48 f6 ff ff 	mov    -0x9b8(%rbp),%r13
  81bec7:	4c 0f af ef          	imul   %rdi,%r13
  81becb:	48 8b b5 70 f4 ff ff 	mov    -0xb90(%rbp),%rsi
  81bed2:	48 0f af f7          	imul   %rdi,%rsi
  81bed6:	4c 8b bd 78 f5 ff ff 	mov    -0xa88(%rbp),%r15
  81bedd:	c5 fb 11 a5 00 f2 ff 	vmovsd %xmm4,-0xe00(%rbp)
  81bee4:	ff 
  81bee5:	c5 fb 11 9d f8 f1 ff 	vmovsd %xmm3,-0xe08(%rbp)
  81beec:	ff 
  81beed:	c5 fb 11 95 f0 f1 ff 	vmovsd %xmm2,-0xe10(%rbp)
  81bef4:	ff 
  81bef5:	4d 03 fe             	add    %r14,%r15
  81bef8:	4c 89 bd 78 f3 ff ff 	mov    %r15,-0xc88(%rbp)
  81beff:	4c 8b bd b8 f4 ff ff 	mov    -0xb48(%rbp),%r15
  81bf06:	4c 03 b5 b0 f4 ff ff 	add    -0xb50(%rbp),%r14
  81bf0d:	4c 89 b5 d8 f2 ff ff 	mov    %r14,-0xd28(%rbp)
  81bf14:	4c 89 a5 a0 f6 ff ff 	mov    %r12,-0x960(%rbp)
  81bf1b:	4d 03 fd             	add    %r13,%r15
  81bf1e:	4c 89 bd 80 f3 ff ff 	mov    %r15,-0xc80(%rbp)
  81bf25:	4c 8b bd 10 f3 ff ff 	mov    -0xcf0(%rbp),%r15
  81bf2c:	4c 03 ad 18 f3 ff ff 	add    -0xce8(%rbp),%r13
  81bf33:	4c 89 ad e8 f2 ff ff 	mov    %r13,-0xd18(%rbp)
  81bf3a:	48 89 bd d8 f8 ff ff 	mov    %rdi,-0x728(%rbp)
  81bf41:	4c 03 fe             	add    %rsi,%r15
  81bf44:	48 03 b5 80 f4 ff ff 	add    -0xb80(%rbp),%rsi
  81bf4b:	49 89 c5             	mov    %rax,%r13
  81bf4e:	4c 89 bd 90 f3 ff ff 	mov    %r15,-0xc70(%rbp)
  81bf55:	48 89 b5 e0 f2 ff ff 	mov    %rsi,-0xd20(%rbp)
  81bf5c:	44 89 85 b8 f8 ff ff 	mov    %r8d,-0x748(%rbp)
  81bf63:	4c 89 8d c0 f8 ff ff 	mov    %r9,-0x740(%rbp)
  81bf6a:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  81bf71:	44 89 95 d0 f8 ff ff 	mov    %r10d,-0x730(%rbp)
  81bf78:	c5 fb 10 05 a0 ba 0a 	vmovsd 0xabaa0(%rip),%xmm0        # 8c7a20 <__STRLITPACK_199.115+0x890>
  81bf7f:	00 
  81bf80:	c5 fb 10 0d 90 ba 0a 	vmovsd 0xaba90(%rip),%xmm1        # 8c7a18 <__STRLITPACK_199.115+0x888>
  81bf87:	00 
  81bf88:	c5 f9 10 25 20 af 0a 	vmovupd 0xaaf20(%rip),%xmm4        # 8c6eb0 <__STRLITPACK_54.50+0x90>
  81bf8f:	00 
  81bf90:	c5 f9 10 15 08 af 0a 	vmovupd 0xaaf08(%rip),%xmm2        # 8c6ea0 <__STRLITPACK_54.50+0x80>
  81bf97:	00 
  81bf98:	c5 f9 10 1d 00 aa 0a 	vmovupd 0xaaa00(%rip),%xmm3        # 8c69a0 <__STRLITPACK_19.34+0x10>
  81bf9f:	00 
  81bfa0:	48 8b b5 00 ff ff ff 	mov    -0x100(%rbp),%rsi
  81bfa7:	48 3b b5 f8 fb ff ff 	cmp    -0x408(%rbp),%rsi
  81bfae:	0f 8c 01 03 00 00    	jl     81c2b5 <pre_step3d_mod_mp_pre_step3d_tile_+0x7d05>
  81bfb4:	48 83 7d 80 00       	cmpq   $0x0,-0x80(%rbp)
  81bfb9:	0f 84 33 8b 00 00    	je     824af2 <pre_step3d_mod_mp_pre_step3d_tile_+0x10542>
  81bfbf:	48 83 bd 78 ff ff ff 	cmpq   $0x2,-0x88(%rbp)
  81bfc6:	02 
  81bfc7:	0f 8c 25 8b 00 00    	jl     824af2 <pre_step3d_mod_mp_pre_step3d_tile_+0x10542>
  81bfcd:	48 8b b5 e0 f2 ff ff 	mov    -0xd20(%rbp),%rsi
  81bfd4:	4c 8b 5d 88          	mov    -0x78(%rbp),%r11
  81bfd8:	4c 8b bd 78 f3 ff ff 	mov    -0xc88(%rbp),%r15
  81bfdf:	4c 8b b5 e8 f2 ff ff 	mov    -0xd18(%rbp),%r14
  81bfe6:	4a 8d 3c 2e          	lea    (%rsi,%r13,1),%rdi
  81bfea:	48 8b b5 d8 f2 ff ff 	mov    -0xd28(%rbp),%rsi
  81bff1:	4c 89 9d 98 f6 ff ff 	mov    %r11,-0x968(%rbp)
  81bff8:	45 33 db             	xor    %r11d,%r11d
  81bffb:	4c 8b 95 68 f7 ff ff 	mov    -0x898(%rbp),%r10
  81c002:	4c 03 fa             	add    %rdx,%r15
  81c005:	4c 8b 8d 90 fa ff ff 	mov    -0x570(%rbp),%r9
  81c00c:	4c 03 f0             	add    %rax,%r14
  81c00f:	4c 8b 85 80 f3 ff ff 	mov    -0xc80(%rbp),%r8
  81c016:	4c 8b a5 90 f3 ff ff 	mov    -0xc70(%rbp),%r12
  81c01d:	4c 03 d1             	add    %rcx,%r10
  81c020:	48 89 bd f8 f2 ff ff 	mov    %rdi,-0xd08(%rbp)
  81c027:	48 8d 3c 16          	lea    (%rsi,%rdx,1),%rdi
  81c02b:	48 89 bd f0 f2 ff ff 	mov    %rdi,-0xd10(%rbp)
  81c032:	33 ff                	xor    %edi,%edi
  81c034:	33 f6                	xor    %esi,%esi
  81c036:	4c 03 c9             	add    %rcx,%r9
  81c039:	4c 03 c0             	add    %rax,%r8
  81c03c:	4c 89 b5 f8 fc ff ff 	mov    %r14,-0x308(%rbp)
  81c043:	4d 03 e5             	add    %r13,%r12
  81c046:	4c 89 bd 00 fd ff ff 	mov    %r15,-0x300(%rbp)
  81c04d:	4c 89 ad e8 f3 ff ff 	mov    %r13,-0xc18(%rbp)
  81c054:	48 89 8d 00 f4 ff ff 	mov    %rcx,-0xc00(%rbp)
  81c05b:	48 89 85 f0 f3 ff ff 	mov    %rax,-0xc10(%rbp)
  81c062:	48 89 95 f8 f3 ff ff 	mov    %rdx,-0xc08(%rbp)
  81c069:	49 89 f7             	mov    %rsi,%r15
  81c06c:	48 8b 8d f0 f2 ff ff 	mov    -0xd10(%rbp),%rcx
  81c073:	4c 8b ad f8 f2 ff ff 	mov    -0xd08(%rbp),%r13
  81c07a:	4c 8b 75 80          	mov    -0x80(%rbp),%r14
  81c07e:	48 8b 85 00 fd ff ff 	mov    -0x300(%rbp),%rax
  81c085:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
  81c08c:	48 03 c7             	add    %rdi,%rax
  81c08f:	c5 7b 10 28          	vmovsd (%rax),%xmm13
  81c093:	c4 21 11 16 34 30    	vmovhpd (%rax,%r14,1),%xmm13,%xmm14
  81c099:	49 8d 04 30          	lea    (%r8,%rsi,1),%rax
  81c09d:	c5 7b 10 20          	vmovsd (%rax),%xmm12
  81c0a1:	c5 09 59 fb          	vmulpd %xmm3,%xmm14,%xmm15
  81c0a5:	c5 19 16 34 10       	vmovhpd (%rax,%rdx,1),%xmm12,%xmm14
  81c0aa:	48 8b 85 f8 fc ff ff 	mov    -0x308(%rbp),%rax
  81c0b1:	48 03 c6             	add    %rsi,%rax
  81c0b4:	c5 7b 10 28          	vmovsd (%rax),%xmm13
  81c0b8:	48 8d 34 56          	lea    (%rsi,%rdx,2),%rsi
  81c0bc:	c5 11 16 24 10       	vmovhpd (%rax,%rdx,1),%xmm13,%xmm12
  81c0c1:	4b 8d 54 3d 00       	lea    0x0(%r13,%r15,1),%rdx
  81c0c6:	c4 41 09 58 ec       	vaddpd %xmm12,%xmm14,%xmm13
  81c0cb:	c4 41 01 59 f5       	vmulpd %xmm13,%xmm15,%xmm14
  81c0d0:	c4 01 79 10 7c d9 08 	vmovupd 0x8(%r9,%r11,8),%xmm15
  81c0d7:	48 8b 85 e8 fc ff ff 	mov    -0x318(%rbp),%rax
  81c0de:	c5 7b 10 22          	vmovsd (%rdx),%xmm12
  81c0e2:	c4 01 01 5c 2c da    	vsubpd (%r10,%r11,8),%xmm15,%xmm13
  81c0e8:	c5 19 16 3c 02       	vmovhpd (%rdx,%rax,1),%xmm12,%xmm15
  81c0ed:	4b 8d 14 3c          	lea    (%r12,%r15,1),%rdx
  81c0f1:	c4 41 69 59 e7       	vmulpd %xmm15,%xmm2,%xmm12
  81c0f6:	c5 7b 10 3a          	vmovsd (%rdx),%xmm15
  81c0fa:	4d 8d 3c 47          	lea    (%r15,%rax,2),%r15
  81c0fe:	c5 01 16 3c 02       	vmovhpd (%rdx,%rax,1),%xmm15,%xmm15
  81c103:	c4 41 59 59 ff       	vmulpd %xmm15,%xmm4,%xmm15
  81c108:	c4 41 19 5c e7       	vsubpd %xmm15,%xmm12,%xmm12
  81c10d:	48 8b 85 e0 fc ff ff 	mov    -0x320(%rbp),%rax
  81c114:	c4 21 19 59 24 d8    	vmulpd (%rax,%r11,8),%xmm12,%xmm12
  81c11a:	c4 41 09 58 f4       	vaddpd %xmm12,%xmm14,%xmm14
  81c11f:	c4 41 11 58 ee       	vaddpd %xmm14,%xmm13,%xmm13
  81c124:	49 83 c3 02          	add    $0x2,%r11
  81c128:	48 8d 04 0f          	lea    (%rdi,%rcx,1),%rax
  81c12c:	c5 7b 11 28          	vmovsd %xmm13,(%rax)
  81c130:	4a 8d 3c 77          	lea    (%rdi,%r14,2),%rdi
  81c134:	c4 41 79 17 2c 06    	vmovhpd %xmm13,(%r14,%rax,1)
  81c13a:	4c 3b 5d 88          	cmp    -0x78(%rbp),%r11
  81c13e:	0f 82 3a ff ff ff    	jb     81c07e <pre_step3d_mod_mp_pre_step3d_tile_+0x7ace>
  81c144:	4c 8b ad e8 f3 ff ff 	mov    -0xc18(%rbp),%r13
  81c14b:	48 8b 85 f0 f3 ff ff 	mov    -0xc10(%rbp),%rax
  81c152:	48 8b 95 f8 f3 ff ff 	mov    -0xc08(%rbp),%rdx
  81c159:	48 8b 8d 00 f4 ff ff 	mov    -0xc00(%rbp),%rcx
  81c160:	48 8b b5 98 f6 ff ff 	mov    -0x968(%rbp),%rsi
  81c167:	4c 8b a5 e8 fc ff ff 	mov    -0x318(%rbp),%r12
  81c16e:	4c 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%r14
  81c175:	4c 8b 5d 80          	mov    -0x80(%rbp),%r11
  81c179:	4c 0f af e6          	imul   %rsi,%r12
  81c17d:	4c 0f af f6          	imul   %rsi,%r14
  81c181:	4c 0f af de          	imul   %rsi,%r11
  81c185:	48 3b b5 78 ff ff ff 	cmp    -0x88(%rbp),%rsi
  81c18c:	0f 83 23 01 00 00    	jae    81c2b5 <pre_step3d_mod_mp_pre_step3d_tile_+0x7d05>
  81c192:	4c 8b bd 90 f3 ff ff 	mov    -0xc70(%rbp),%r15
  81c199:	4c 8b 95 68 f7 ff ff 	mov    -0x898(%rbp),%r10
  81c1a0:	4c 8b 8d 90 fa ff ff 	mov    -0x570(%rbp),%r9
  81c1a7:	4c 8b 85 78 f3 ff ff 	mov    -0xc88(%rbp),%r8
  81c1ae:	4d 03 fd             	add    %r13,%r15
  81c1b1:	4c 89 bd 08 f3 ff ff 	mov    %r15,-0xcf8(%rbp)
  81c1b8:	4c 03 d1             	add    %rcx,%r10
  81c1bb:	4c 8b bd e0 f2 ff ff 	mov    -0xd20(%rbp),%r15
  81c1c2:	4c 03 c9             	add    %rcx,%r9
  81c1c5:	48 8b bd 80 f3 ff ff 	mov    -0xc80(%rbp),%rdi
  81c1cc:	4c 03 c2             	add    %rdx,%r8
  81c1cf:	48 8b b5 e8 f2 ff ff 	mov    -0xd18(%rbp),%rsi
  81c1d6:	4c 89 ad e8 f3 ff ff 	mov    %r13,-0xc18(%rbp)
  81c1dd:	4d 03 fd             	add    %r13,%r15
  81c1e0:	4c 89 bd 00 f3 ff ff 	mov    %r15,-0xd00(%rbp)
  81c1e7:	48 03 f8             	add    %rax,%rdi
  81c1ea:	4c 8b bd d8 f2 ff ff 	mov    -0xd28(%rbp),%r15
  81c1f1:	48 03 f0             	add    %rax,%rsi
  81c1f4:	48 89 85 f0 f3 ff ff 	mov    %rax,-0xc10(%rbp)
  81c1fb:	48 89 95 f8 f3 ff ff 	mov    %rdx,-0xc08(%rbp)
  81c202:	48 89 8d 00 f4 ff ff 	mov    %rcx,-0xc00(%rbp)
  81c209:	4c 03 fa             	add    %rdx,%r15
  81c20c:	4c 89 f8             	mov    %r15,%rax
  81c20f:	48 8b 95 00 f3 ff ff 	mov    -0xd00(%rbp),%rdx
  81c216:	48 8b 8d 08 f3 ff ff 	mov    -0xcf8(%rbp),%rcx
  81c21d:	4c 8b ad 98 f6 ff ff 	mov    -0x968(%rbp),%r13
  81c224:	4c 8b bd e0 fc ff ff 	mov    -0x320(%rbp),%r15
  81c22b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  81c230:	c4 41 7b 10 34 3e    	vmovsd (%r14,%rdi,1),%xmm14
  81c236:	c4 01 3b 59 3c 03    	vmulsd (%r11,%r8,1),%xmm8,%xmm15
  81c23c:	c4 41 0b 58 24 36    	vaddsd (%r14,%rsi,1),%xmm14,%xmm12
  81c242:	c4 01 7b 10 74 e9 08 	vmovsd 0x8(%r9,%r13,8),%xmm14
  81c249:	c4 41 03 59 ec       	vmulsd %xmm12,%xmm15,%xmm13
  81c24e:	c4 01 0b 5c 24 ea    	vsubsd (%r10,%r13,8),%xmm14,%xmm12
  81c254:	c4 41 73 59 3c 14    	vmulsd (%r12,%rdx,1),%xmm1,%xmm15
  81c25a:	c4 41 7b 59 34 0c    	vmulsd (%r12,%rcx,1),%xmm0,%xmm14
  81c260:	4c 03 b5 58 ff ff ff 	add    -0xa8(%rbp),%r14
  81c267:	c4 41 03 5c fe       	vsubsd %xmm14,%xmm15,%xmm15
  81c26c:	c4 01 03 59 34 ef    	vmulsd (%r15,%r13,8),%xmm15,%xmm14
  81c272:	49 ff c5             	inc    %r13
  81c275:	4c 03 a5 e8 fc ff ff 	add    -0x318(%rbp),%r12
  81c27c:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  81c281:	c4 41 13 58 e4       	vaddsd %xmm12,%xmm13,%xmm12
  81c286:	c4 41 7b 11 24 03    	vmovsd %xmm12,(%r11,%rax,1)
  81c28c:	4c 03 5d 80          	add    -0x80(%rbp),%r11
  81c290:	4c 3b ad 78 ff ff ff 	cmp    -0x88(%rbp),%r13
  81c297:	72 97                	jb     81c230 <pre_step3d_mod_mp_pre_step3d_tile_+0x7c80>
  81c299:	4c 8b ad e8 f3 ff ff 	mov    -0xc18(%rbp),%r13
  81c2a0:	48 8b 85 f0 f3 ff ff 	mov    -0xc10(%rbp),%rax
  81c2a7:	48 8b 95 f8 f3 ff ff 	mov    -0xc08(%rbp),%rdx
  81c2ae:	48 8b 8d 00 f4 ff ff 	mov    -0xc00(%rbp),%rcx
  81c2b5:	48 8b b5 a0 f6 ff ff 	mov    -0x960(%rbp),%rsi
  81c2bc:	48 ff c6             	inc    %rsi
  81c2bf:	48 03 8d 18 ff ff ff 	add    -0xe8(%rbp),%rcx
  81c2c6:	48 03 95 00 fc ff ff 	add    -0x400(%rbp),%rdx
  81c2cd:	48 03 85 10 fd ff ff 	add    -0x2f0(%rbp),%rax
  81c2d4:	4c 03 ad 90 f6 ff ff 	add    -0x970(%rbp),%r13
  81c2db:	48 89 b5 a0 f6 ff ff 	mov    %rsi,-0x960(%rbp)
  81c2e2:	48 3b b5 08 fd ff ff 	cmp    -0x2f8(%rbp),%rsi
  81c2e9:	0f 82 b1 fc ff ff    	jb     81bfa0 <pre_step3d_mod_mp_pre_step3d_tile_+0x79f0>
  81c2ef:	c5 fb 10 a5 00 f2 ff 	vmovsd -0xe00(%rbp),%xmm4
  81c2f6:	ff 
  81c2f7:	c5 fb 10 9d f8 f1 ff 	vmovsd -0xe08(%rbp),%xmm3
  81c2fe:	ff 
  81c2ff:	c5 fb 10 95 f0 f1 ff 	vmovsd -0xe10(%rbp),%xmm2
  81c306:	ff 
  81c307:	48 8b bd d8 f8 ff ff 	mov    -0x728(%rbp),%rdi
  81c30e:	44 8b 85 b8 f8 ff ff 	mov    -0x748(%rbp),%r8d
  81c315:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  81c31c:	4c 8b 9d c8 f8 ff ff 	mov    -0x738(%rbp),%r11
  81c323:	44 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%r10d
  81c32a:	c5 fd 10 0d 4e 8c 0a 	vmovupd 0xa8c4e(%rip),%ymm1        # 8c4f80 <var$630.126.450+0xc0>
  81c331:	00 
  81c332:	c5 f9 10 05 16 aa 0a 	vmovupd 0xaaa16(%rip),%xmm0        # 8c6d50 <__STRLITPACK_124.84+0x50>
  81c339:	00 
  81c33a:	c5 7b 10 2d be ae 0a 	vmovsd 0xaaebe(%rip),%xmm13        # 8c7200 <__STRLITPACK_199.115+0x70>
  81c341:	00 
  81c342:	41 ff c0             	inc    %r8d
  81c345:	48 ff c7             	inc    %rdi
  81c348:	4c 03 8d e8 fb ff ff 	add    -0x418(%rbp),%r9
  81c34f:	41 ff c2             	inc    %r10d
  81c352:	4c 03 9d f0 fb ff ff 	add    -0x410(%rbp),%r11
  81c359:	44 3b 85 d0 fb ff ff 	cmp    -0x430(%rbp),%r8d
  81c360:	0f 82 96 b6 ff ff    	jb     8179fc <pre_step3d_mod_mp_pre_step3d_tile_+0x344c>
  81c366:	4c 8b b5 60 f5 ff ff 	mov    -0xaa0(%rbp),%r14
  81c36d:	4c 8b bd 68 f5 ff ff 	mov    -0xa98(%rbp),%r15
  81c374:	44 8b ad 70 f5 ff ff 	mov    -0xa90(%rbp),%r13d
  81c37b:	bf 0c 75 b3 00       	mov    $0xb3750c,%edi
  81c380:	44 89 ee             	mov    %r13d,%esi
  81c383:	c5 f8 77             	vzeroupper 
  81c386:	e8 75 1d bf ff       	callq  40e100 <__kmpc_for_static_fini@plt>
  81c38b:	4c 89 f2             	mov    %r14,%rdx
  81c38e:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  81c395:	48 83 c0 1f          	add    $0x1f,%rax
  81c399:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81c39d:	48 03 e0             	add    %rax,%rsp
  81c3a0:	4c 89 f8             	mov    %r15,%rax
  81c3a3:	48 8b 95 08 f6 ff ff 	mov    -0x9f8(%rbp),%rdx
  81c3aa:	48 83 c0 1f          	add    $0x1f,%rax
  81c3ae:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81c3b2:	48 03 e0             	add    %rax,%rsp
  81c3b5:	4c 8b bd 18 f6 ff ff 	mov    -0x9e8(%rbp),%r15
  81c3bc:	4c 8b b5 20 f6 ff ff 	mov    -0x9e0(%rbp),%r14
  81c3c3:	4c 8b ad 28 f6 ff ff 	mov    -0x9d8(%rbp),%r13
  81c3ca:	4c 8b a5 30 f6 ff ff 	mov    -0x9d0(%rbp),%r12
  81c3d1:	c9                   	leaveq 
  81c3d2:	48 89 dc             	mov    %rbx,%rsp
  81c3d5:	5b                   	pop    %rbx
  81c3d6:	c3                   	retq   
  81c3d7:	53                   	push   %rbx
  81c3d8:	48 89 e3             	mov    %rsp,%rbx
  81c3db:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  81c3df:	55                   	push   %rbp
  81c3e0:	55                   	push   %rbp
  81c3e1:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  81c3e5:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  81c3ea:	48 89 e5             	mov    %rsp,%rbp
  81c3ed:	48 81 ec 70 0e 00 00 	sub    $0xe70,%rsp
  81c3f4:	48 89 fe             	mov    %rdi,%rsi
  81c3f7:	4c 89 ad 28 f6 ff ff 	mov    %r13,-0x9d8(%rbp)
  81c3fe:	4c 8b 6b 38          	mov    0x38(%rbx),%r13
  81c402:	4c 89 bd 18 f6 ff ff 	mov    %r15,-0x9e8(%rbp)
  81c409:	4c 89 a5 30 f6 ff ff 	mov    %r12,-0x9d0(%rbp)
  81c410:	4c 8b 63 10          	mov    0x10(%rbx),%r12
  81c414:	4c 8b 7b 40          	mov    0x40(%rbx),%r15
  81c418:	4c 89 b5 20 f6 ff ff 	mov    %r14,-0x9e0(%rbp)
  81c41f:	4c 8b 73 30          	mov    0x30(%rbx),%r14
  81c423:	48 8b 43 28          	mov    0x28(%rbx),%rax
  81c427:	4d 8b 6d 00          	mov    0x0(%r13),%r13
  81c42b:	4c 89 ad e8 f1 ff ff 	mov    %r13,-0xe18(%rbp)
  81c432:	4d 8b 3f             	mov    (%r15),%r15
  81c435:	4d 63 2c 24          	movslq (%r12),%r13
  81c439:	4c 89 bd e0 f1 ff ff 	mov    %r15,-0xe20(%rbp)
  81c440:	4c 89 ad b8 f6 ff ff 	mov    %r13,-0x948(%rbp)
  81c447:	4d 8b 3e             	mov    (%r14),%r15
  81c44a:	44 8b 29             	mov    (%rcx),%r13d
  81c44d:	4c 8b 30             	mov    (%rax),%r14
  81c450:	48 8b 4b 50          	mov    0x50(%rbx),%rcx
  81c454:	4c 8b 53 18          	mov    0x18(%rbx),%r10
  81c458:	4c 89 b5 00 f2 ff ff 	mov    %r14,-0xe00(%rbp)
  81c45f:	4d 63 31             	movslq (%r9),%r14
  81c462:	4c 89 b5 c0 f6 ff ff 	mov    %r14,-0x940(%rbp)
  81c469:	4d 8b 30             	mov    (%r8),%r14
  81c46c:	4c 8b 01             	mov    (%rcx),%r8
  81c46f:	48 8b 4b 60          	mov    0x60(%rbx),%rcx
  81c473:	4c 8b 5b 20          	mov    0x20(%rbx),%r11
  81c477:	4d 8b 12             	mov    (%r10),%r10
  81c47a:	4c 8b 63 58          	mov    0x58(%rbx),%r12
  81c47e:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
  81c482:	4c 89 95 d8 f1 ff ff 	mov    %r10,-0xe28(%rbp)
  81c489:	4c 89 85 f8 f1 ff ff 	mov    %r8,-0xe08(%rbp)
  81c490:	4c 8b 43 70          	mov    0x70(%rbx),%r8
  81c494:	4c 8b 53 78          	mov    0x78(%rbx),%r10
  81c498:	48 89 bd b0 f1 ff ff 	mov    %rdi,-0xe50(%rbp)
  81c49f:	8b 3e                	mov    (%rsi),%edi
  81c4a1:	48 8b 31             	mov    (%rcx),%rsi
  81c4a4:	89 bd b0 f3 ff ff    	mov    %edi,-0xc50(%rbp)
  81c4aa:	4d 8b 1b             	mov    (%r11),%r11
  81c4ad:	49 8b 04 24          	mov    (%r12),%rax
  81c4b1:	48 89 b5 08 f2 ff ff 	mov    %rsi,-0xdf8(%rbp)
  81c4b8:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
  81c4bc:	48 8b b3 88 00 00 00 	mov    0x88(%rbx),%rsi
  81c4c3:	4c 89 9d d0 f1 ff ff 	mov    %r11,-0xe30(%rbp)
  81c4ca:	48 89 85 f0 f1 ff ff 	mov    %rax,-0xe10(%rbp)
  81c4d1:	4d 63 08             	movslq (%r8),%r9
  81c4d4:	4d 63 1a             	movslq (%r10),%r11
  81c4d7:	4c 8d 93 80 00 00 00 	lea    0x80(%rbx),%r10
  81c4de:	49 8b 02             	mov    (%r10),%rax
  81c4e1:	4d 8b 42 18          	mov    0x18(%r10),%r8
  81c4e5:	4d 8b 52 20          	mov    0x20(%r10),%r10
  81c4e9:	4c 8b 27             	mov    (%rdi),%r12
  81c4ec:	48 63 3e             	movslq (%rsi),%rdi
  81c4ef:	4c 89 8d b8 f1 ff ff 	mov    %r9,-0xe48(%rbp)
  81c4f6:	4c 89 9d a8 f1 ff ff 	mov    %r11,-0xe58(%rbp)
  81c4fd:	8b 12                	mov    (%rdx),%edx
  81c4ff:	48 63 08             	movslq (%rax),%rcx
  81c502:	33 c0                	xor    %eax,%eax
  81c504:	48 89 bd a0 f1 ff ff 	mov    %rdi,-0xe60(%rbp)
  81c50b:	48 8d bd 70 f2 ff ff 	lea    -0xd90(%rbp),%rdi
  81c512:	4d 63 08             	movslq (%r8),%r9
  81c515:	4d 63 1a             	movslq (%r10),%r11
  81c518:	48 8b b3 b0 00 00 00 	mov    0xb0(%rbx),%rsi
  81c51f:	48 89 8d c0 f1 ff ff 	mov    %rcx,-0xe40(%rbp)
  81c526:	4c 89 8d 98 f1 ff ff 	mov    %r9,-0xe68(%rbp)
  81c52d:	4c 89 9d 90 f1 ff ff 	mov    %r11,-0xe70(%rbp)
  81c534:	89 95 c8 f1 ff ff    	mov    %edx,-0xe38(%rbp)
  81c53a:	e8 71 1f c6 ff       	callq  47e4b0 <_f90_dope_vector_init>
  81c53f:	8b 95 c8 f1 ff ff    	mov    -0xe38(%rbp),%edx
  81c545:	48 89 85 98 f3 ff ff 	mov    %rax,-0xc68(%rbp)
  81c54c:	48 83 c0 1f          	add    $0x1f,%rax
  81c550:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81c554:	48 2b e0             	sub    %rax,%rsp
  81c557:	48 89 e0             	mov    %rsp,%rax
  81c55a:	48 89 85 a0 f3 ff ff 	mov    %rax,-0xc60(%rbp)
  81c561:	48 89 85 70 f2 ff ff 	mov    %rax,-0xd90(%rbp)
  81c568:	44 3b ea             	cmp    %edx,%r13d
  81c56b:	0f 8c a9 20 00 00    	jl     81e61a <pre_step3d_mod_mp_pre_step3d_tile_+0xa06a>
  81c571:	48 83 c4 e0          	add    $0xffffffffffffffe0,%rsp
  81c575:	48 8d 85 dc f3 ff ff 	lea    -0xc24(%rbp),%rax
  81c57c:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  81c582:	bf bc 74 b3 00       	mov    $0xb374bc,%edi
  81c587:	89 50 f4             	mov    %edx,-0xc(%rax)
  81c58a:	ba 22 00 00 00       	mov    $0x22,%edx
  81c58f:	44 89 68 f8          	mov    %r13d,-0x8(%rax)
  81c593:	48 8d 8d d8 f3 ff ff 	lea    -0xc28(%rbp),%rcx
  81c59a:	48 89 04 24          	mov    %rax,(%rsp)
  81c59e:	4c 8d 85 d0 f3 ff ff 	lea    -0xc30(%rbp),%r8
  81c5a5:	44 89 54 24 08       	mov    %r10d,0x8(%rsp)
  81c5aa:	4c 8d 8d d4 f3 ff ff 	lea    -0xc2c(%rbp),%r9
  81c5b1:	44 89 54 24 10       	mov    %r10d,0x10(%rsp)
  81c5b6:	8b 70 d4             	mov    -0x2c(%rax),%esi
  81c5b9:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%rax)
  81c5c0:	44 89 10             	mov    %r10d,(%rax)
  81c5c3:	e8 68 18 bf ff       	callq  40de30 <__kmpc_for_static_init_4@plt>
  81c5c8:	48 83 c4 20          	add    $0x20,%rsp
  81c5cc:	4d 63 ed             	movslq %r13d,%r13
  81c5cf:	48 63 85 d0 f3 ff ff 	movslq -0xc30(%rbp),%rax
  81c5d6:	8b 95 d4 f3 ff ff    	mov    -0xc2c(%rbp),%edx
  81c5dc:	48 89 85 d0 f2 ff ff 	mov    %rax,-0xd30(%rbp)
  81c5e3:	49 3b c5             	cmp    %r13,%rax
  81c5e6:	0f 8f 1b 20 00 00    	jg     81e607 <pre_step3d_mod_mp_pre_step3d_tile_+0xa057>
  81c5ec:	41 3b d5             	cmp    %r13d,%edx
  81c5ef:	4c 8b 0d 8a fa 31 00 	mov    0x31fa8a(%rip),%r9        # b3c080 <mod_param_mp_nt_+0x40>
  81c5f6:	44 0f 4c ea          	cmovl  %edx,%r13d
  81c5fa:	8b 15 20 29 3d 00    	mov    0x3d2920(%rip),%edx        # beef20 <mod_scalars_mp_itemp_>
  81c600:	89 95 d8 f4 ff ff    	mov    %edx,-0xb28(%rbp)
  81c606:	48 8b 95 00 f2 ff ff 	mov    -0xe00(%rbp),%rdx
  81c60d:	49 c1 e1 02          	shl    $0x2,%r9
  81c611:	4c 8b 15 c8 fa 31 00 	mov    0x31fac8(%rip),%r10        # b3c0e0 <mod_param_mp_n_+0x40>
  81c618:	49 f7 d9             	neg    %r9
  81c61b:	48 8b 35 5e ed 31 00 	mov    0x31ed5e(%rip),%rsi        # b3b380 <mod_scalars_mp_dt_+0x40>
  81c622:	48 f7 de             	neg    %rsi
  81c625:	4c 89 95 20 f3 ff ff 	mov    %r10,-0xce0(%rbp)
  81c62c:	49 63 06             	movslq (%r14),%rax
  81c62f:	48 03 f0             	add    %rax,%rsi
  81c632:	4c 8b 95 08 f2 ff ff 	mov    -0xdf8(%rbp),%r10
  81c639:	4d 63 34 24          	movslq (%r12),%r14
  81c63d:	4c 03 0d fc f9 31 00 	add    0x31f9fc(%rip),%r9        # b3c040 <mod_param_mp_nt_>
  81c644:	4c 8b 62 38          	mov    0x38(%rdx),%r12
  81c648:	48 8b 3d f1 ec 31 00 	mov    0x31ecf1(%rip),%rdi        # b3b340 <mod_scalars_mp_dt_>
  81c64f:	4c 8b 1d 4a fa 31 00 	mov    0x31fa4a(%rip),%r11        # b3c0a0 <mod_param_mp_n_>
  81c656:	4c 89 a5 48 f7 ff ff 	mov    %r12,-0x8b8(%rbp)
  81c65d:	4c 8b a5 f0 f1 ff ff 	mov    -0xe10(%rbp),%r12
  81c664:	4c 89 9d 08 f3 ff ff 	mov    %r11,-0xcf8(%rbp)
  81c66b:	4d 8b 5a 68          	mov    0x68(%r10),%r11
  81c66f:	45 8b 04 81          	mov    (%r9,%rax,4),%r8d
  81c673:	48 8b 8d 70 f2 ff ff 	mov    -0xd90(%rbp),%rcx
  81c67a:	4c 89 b5 f0 f2 ff ff 	mov    %r14,-0xd10(%rbp)
  81c681:	4c 89 9d e0 f6 ff ff 	mov    %r11,-0x920(%rbp)
  81c688:	44 89 85 e0 f4 ff ff 	mov    %r8d,-0xb20(%rbp)
  81c68f:	c5 fb 10 3c f7       	vmovsd (%rdi,%rsi,8),%xmm7
  81c694:	48 89 8d 50 f3 ff ff 	mov    %rcx,-0xcb0(%rbp)
  81c69b:	4d 8b 32             	mov    (%r10),%r14
  81c69e:	4d 8b 4a 38          	mov    0x38(%r10),%r9
  81c6a2:	4d 8b 5a 50          	mov    0x50(%r10),%r11
  81c6a6:	4c 8b 02             	mov    (%rdx),%r8
  81c6a9:	48 8b ba 98 00 00 00 	mov    0x98(%rdx),%rdi
  81c6b0:	48 8b b2 80 00 00 00 	mov    0x80(%rdx),%rsi
  81c6b7:	48 8b 4a 68          	mov    0x68(%rdx),%rcx
  81c6bb:	4c 8b 52 50          	mov    0x50(%rdx),%r10
  81c6bf:	49 8b 54 24 68       	mov    0x68(%r12),%rdx
  81c6c4:	48 89 95 e0 f3 ff ff 	mov    %rdx,-0xc20(%rbp)
  81c6cb:	48 8b 95 e8 f1 ff ff 	mov    -0xe18(%rbp),%rdx
  81c6d2:	48 89 bd 38 f4 ff ff 	mov    %rdi,-0xbc8(%rbp)
  81c6d9:	48 89 8d d8 f6 ff ff 	mov    %rcx,-0x928(%rbp)
  81c6e0:	48 8b bd f8 f1 ff ff 	mov    -0xe08(%rbp),%rdi
  81c6e7:	49 8b 0c 24          	mov    (%r12),%rcx
  81c6eb:	48 89 8d 28 f3 ff ff 	mov    %rcx,-0xcd8(%rbp)
  81c6f2:	48 8b 4a 50          	mov    0x50(%rdx),%rcx
  81c6f6:	4c 89 8d 40 f7 ff ff 	mov    %r9,-0x8c0(%rbp)
  81c6fd:	48 89 8d 10 f3 ff ff 	mov    %rcx,-0xcf0(%rbp)
  81c704:	4c 8b 0f             	mov    (%rdi),%r9
  81c707:	48 8b 8d e0 f1 ff ff 	mov    -0xe20(%rbp),%rcx
  81c70e:	4c 89 85 e8 f2 ff ff 	mov    %r8,-0xd18(%rbp)
  81c715:	48 89 b5 38 f3 ff ff 	mov    %rsi,-0xcc8(%rbp)
  81c71c:	4c 89 8d 18 f3 ff ff 	mov    %r9,-0xce8(%rbp)
  81c723:	4c 8b 4f 68          	mov    0x68(%rdi),%r9
  81c727:	4c 8b 47 50          	mov    0x50(%rdi),%r8
  81c72b:	48 8b 77 38          	mov    0x38(%rdi),%rsi
  81c72f:	49 8b 7c 24 38       	mov    0x38(%r12),%rdi
  81c734:	48 89 b5 c8 f4 ff ff 	mov    %rsi,-0xb38(%rbp)
  81c73b:	48 89 bd d0 f4 ff ff 	mov    %rdi,-0xb30(%rbp)
  81c742:	48 8b 32             	mov    (%rdx),%rsi
  81c745:	48 8b 39             	mov    (%rcx),%rdi
  81c748:	48 89 b5 00 f3 ff ff 	mov    %rsi,-0xd00(%rbp)
  81c74f:	48 89 bd f8 f2 ff ff 	mov    %rdi,-0xd08(%rbp)
  81c756:	48 8b 71 50          	mov    0x50(%rcx),%rsi
  81c75a:	48 8b 79 38          	mov    0x38(%rcx),%rdi
  81c75e:	48 8b 8d d8 f1 ff ff 	mov    -0xe28(%rbp),%rcx
  81c765:	4c 89 85 e0 f2 ff ff 	mov    %r8,-0xd20(%rbp)
  81c76c:	4d 8b 44 24 50       	mov    0x50(%r12),%r8
  81c771:	4c 8b 62 38          	mov    0x38(%rdx),%r12
  81c775:	4c 89 a5 c0 f3 ff ff 	mov    %r12,-0xc40(%rbp)
  81c77c:	4c 8b 61 68          	mov    0x68(%rcx),%r12
  81c780:	4c 89 a5 d0 f6 ff ff 	mov    %r12,-0x930(%rbp)
  81c787:	4c 8b a5 d0 f1 ff ff 	mov    -0xe30(%rbp),%r12
  81c78e:	48 8b 11             	mov    (%rcx),%rdx
  81c791:	c5 7b 10 05 67 aa 0a 	vmovsd 0xaaa67(%rip),%xmm8        # 8c7200 <__STRLITPACK_199.115+0x70>
  81c798:	00 
  81c799:	48 89 95 30 f3 ff ff 	mov    %rdx,-0xcd0(%rbp)
  81c7a0:	49 8b 14 24          	mov    (%r12),%rdx
  81c7a4:	48 89 95 48 f3 ff ff 	mov    %rdx,-0xcb8(%rbp)
  81c7ab:	49 8b 94 24 80 00 00 	mov    0x80(%r12),%rdx
  81c7b2:	00 
  81c7b3:	4d 63 ed             	movslq %r13d,%r13
  81c7b6:	c5 bb 5c 05 0a 77 32 	vsubsd 0x32770a(%rip),%xmm8,%xmm0        # b43ec8 <mod_scalars_mp_lambda_>
  81c7bd:	00 
  81c7be:	48 89 95 40 f4 ff ff 	mov    %rdx,-0xbc0(%rbp)
  81c7c5:	49 8b 54 24 68       	mov    0x68(%r12),%rdx
  81c7ca:	4d 63 3f             	movslq (%r15),%r15
  81c7cd:	4c 2b ad d0 f2 ff ff 	sub    -0xd30(%rbp),%r13
  81c7d4:	48 89 b5 40 f3 ff ff 	mov    %rsi,-0xcc0(%rbp)
  81c7db:	49 ff c5             	inc    %r13
  81c7de:	48 89 95 c8 f6 ff ff 	mov    %rdx,-0x938(%rbp)
  81c7e5:	4c 89 bd d8 f2 ff ff 	mov    %r15,-0xd28(%rbp)
  81c7ec:	48 8b 71 50          	mov    0x50(%rcx),%rsi
  81c7f0:	49 8b 54 24 50       	mov    0x50(%r12),%rdx
  81c7f5:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  81c7fa:	44 8b 3d 8f 82 36 00 	mov    0x36828f(%rip),%r15d        # b84a90 <mod_param_mp_nat_>
  81c801:	48 8b 49 38          	mov    0x38(%rcx),%rcx
  81c805:	48 c7 85 a8 f3 ff ff 	movq   $0x0,-0xc58(%rbp)
  81c80c:	00 00 00 00 
  81c810:	4c 89 ad b8 f3 ff ff 	mov    %r13,-0xc48(%rbp)
  81c817:	48 89 95 58 f3 ff ff 	mov    %rdx,-0xca8(%rbp)
  81c81e:	4c 89 8d e8 f3 ff ff 	mov    %r9,-0xc18(%rbp)
  81c825:	c5 c3 59 c8          	vmulsd %xmm0,%xmm7,%xmm1
  81c829:	4c 89 a5 50 f7 ff ff 	mov    %r12,-0x8b0(%rbp)
  81c830:	48 89 8d 58 f7 ff ff 	mov    %rcx,-0x8a8(%rbp)
  81c837:	48 89 b5 60 f3 ff ff 	mov    %rsi,-0xca0(%rbp)
  81c83e:	48 89 bd c8 f3 ff ff 	mov    %rdi,-0xc38(%rbp)
  81c845:	4c 89 85 68 f3 ff ff 	mov    %r8,-0xc98(%rbp)
  81c84c:	4c 89 95 70 f3 ff ff 	mov    %r10,-0xc90(%rbp)
  81c853:	4c 89 9d 78 f3 ff ff 	mov    %r11,-0xc88(%rbp)
  81c85a:	4c 89 b5 80 f3 ff ff 	mov    %r14,-0xc80(%rbp)
  81c861:	44 89 bd 88 f3 ff ff 	mov    %r15d,-0xc78(%rbp)
  81c868:	48 89 85 90 f3 ff ff 	mov    %rax,-0xc70(%rbp)
  81c86f:	44 8b ad e0 f4 ff ff 	mov    -0xb20(%rbp),%r13d
  81c876:	48 8b 95 a8 f3 ff ff 	mov    -0xc58(%rbp),%rdx
  81c87d:	4c 8b 8d b8 f6 ff ff 	mov    -0x948(%rbp),%r9
  81c884:	45 33 c0             	xor    %r8d,%r8d
  81c887:	45 85 ed             	test   %r13d,%r13d
  81c88a:	0f 8e 67 1d 00 00    	jle    81e5f7 <pre_step3d_mod_mp_pre_step3d_tile_+0xa047>
  81c890:	48 8b 85 20 f3 ff ff 	mov    -0xce0(%rbp),%rax
  81c897:	48 8b b5 90 f3 ff ff 	mov    -0xc70(%rbp),%rsi
  81c89e:	4c 89 8d b8 f6 ff ff 	mov    %r9,-0x948(%rbp)
  81c8a5:	44 89 ad e0 f4 ff ff 	mov    %r13d,-0xb20(%rbp)
  81c8ac:	4c 8d 24 85 00 00 00 	lea    0x0(,%rax,4),%r12
  81c8b3:	00 
  81c8b4:	49 f7 dc             	neg    %r12
  81c8b7:	4c 03 a5 08 f3 ff ff 	add    -0xcf8(%rbp),%r12
  81c8be:	4c 8b ad a8 f1 ff ff 	mov    -0xe58(%rbp),%r13
  81c8c5:	4d 89 eb             	mov    %r13,%r11
  81c8c8:	4c 8b bd 60 f3 ff ff 	mov    -0xca0(%rbp),%r15
  81c8cf:	49 63 0c b4          	movslq (%r12,%rsi,4),%rcx
  81c8d3:	4c 8b a5 c0 f6 ff ff 	mov    -0x940(%rbp),%r12
  81c8da:	45 2b cc             	sub    %r12d,%r9d
  81c8dd:	41 ff c1             	inc    %r9d
  81c8e0:	48 8d 41 ff          	lea    -0x1(%rcx),%rax
  81c8e4:	4c 8b b5 b8 f1 ff ff 	mov    -0xe48(%rbp),%r14
  81c8eb:	44 89 85 c0 f4 ff ff 	mov    %r8d,-0xb40(%rbp)
  81c8f2:	4d 89 f8             	mov    %r15,%r8
  81c8f5:	44 89 8d 28 f7 ff ff 	mov    %r9d,-0x8d8(%rbp)
  81c8fc:	41 83 e1 fc          	and    $0xfffffffc,%r9d
  81c900:	44 89 8d 00 f6 ff ff 	mov    %r9d,-0xa00(%rbp)
  81c907:	48 8d b5 58 f7 ff ff 	lea    -0x8a8(%rbp),%rsi
  81c90e:	4c 8b 0e             	mov    (%rsi),%r9
  81c911:	4c 0f af 85 d0 f2 ff 	imul   -0xd30(%rbp),%r8
  81c918:	ff 
  81c919:	4c 0f af 36          	imul   (%rsi),%r14
  81c91d:	4d 0f af df          	imul   %r15,%r11
  81c921:	4d 0f af cc          	imul   %r12,%r9
  81c925:	4c 0f af fa          	imul   %rdx,%r15
  81c929:	c5 fd 10 1d 4f 86 0a 	vmovupd 0xa864f(%rip),%ymm3        # 8c4f80 <var$630.126.450+0xc0>
  81c930:	00 
  81c931:	c5 f9 10 15 17 a4 0a 	vmovupd 0xaa417(%rip),%xmm2        # 8c6d50 <__STRLITPACK_124.84+0x50>
  81c938:	00 
  81c939:	c5 fb 12 e9          	vmovddup %xmm1,%xmm5
  81c93d:	c5 fb 12 e7          	vmovddup %xmm7,%xmm4
  81c941:	c4 e2 7d 19 f7       	vbroadcastsd %xmm7,%ymm6
  81c946:	c4 e2 7d 19 c1       	vbroadcastsd %xmm1,%ymm0
  81c94b:	48 89 8d 20 f7 ff ff 	mov    %rcx,-0x8e0(%rbp)
  81c952:	48 8b 8d d0 f6 ff ff 	mov    -0x930(%rbp),%rcx
  81c959:	48 8b bd 30 f3 ff ff 	mov    -0xcd0(%rbp),%rdi
  81c960:	49 89 fa             	mov    %rdi,%r10
  81c963:	4c 2b d1             	sub    %rcx,%r10
  81c966:	48 89 ce             	mov    %rcx,%rsi
  81c969:	48 89 85 10 f7 ff ff 	mov    %rax,-0x8f0(%rbp)
  81c970:	48 8d 04 09          	lea    (%rcx,%rcx,1),%rax
  81c974:	4c 89 85 e0 f1 ff ff 	mov    %r8,-0xe20(%rbp)
  81c97b:	49 2b c3             	sub    %r11,%rax
  81c97e:	49 2b f3             	sub    %r11,%rsi
  81c981:	4d 2b d8             	sub    %r8,%r11
  81c984:	4d 2b c6             	sub    %r14,%r8
  81c987:	4d 2b f1             	sub    %r9,%r14
  81c98a:	4d 03 de             	add    %r14,%r11
  81c98d:	49 8d 0c 4a          	lea    (%r10,%rcx,2),%rcx
  81c991:	4c 8b a5 58 f7 ff ff 	mov    -0x8a8(%rbp),%r12
  81c998:	49 2b fb             	sub    %r11,%rdi
  81c99b:	49 2b cb             	sub    %r11,%rcx
  81c99e:	4d 89 e6             	mov    %r12,%r14
  81c9a1:	4c 89 95 d0 f1 ff ff 	mov    %r10,-0xe30(%rbp)
  81c9a8:	48 89 b5 d8 f1 ff ff 	mov    %rsi,-0xe28(%rbp)
  81c9af:	49 03 f2             	add    %r10,%rsi
  81c9b2:	49 03 f0             	add    %r8,%rsi
  81c9b5:	4c 03 d0             	add    %rax,%r10
  81c9b8:	4d 03 c2             	add    %r10,%r8
  81c9bb:	4e 8d 1c 3f          	lea    (%rdi,%r15,1),%r11
  81c9bf:	4c 89 9d e0 f5 ff ff 	mov    %r11,-0xa20(%rbp)
  81c9c6:	4a 8d 3c 67          	lea    (%rdi,%r12,2),%rdi
  81c9ca:	49 03 f1             	add    %r9,%rsi
  81c9cd:	4e 8d 1c 39          	lea    (%rcx,%r15,1),%r11
  81c9d1:	4d 03 c1             	add    %r9,%r8
  81c9d4:	4a 8d 0c 71          	lea    (%rcx,%r14,2),%rcx
  81c9d8:	4c 89 bd 60 f6 ff ff 	mov    %r15,-0x9a0(%rbp)
  81c9df:	49 03 ff             	add    %r15,%rdi
  81c9e2:	49 03 cf             	add    %r15,%rcx
  81c9e5:	49 03 f7             	add    %r15,%rsi
  81c9e8:	4d 03 c7             	add    %r15,%r8
  81c9eb:	4d 89 ef             	mov    %r13,%r15
  81c9ee:	48 89 b5 10 f6 ff ff 	mov    %rsi,-0x9f0(%rbp)
  81c9f5:	48 8b b5 58 f3 ff ff 	mov    -0xca8(%rbp),%rsi
  81c9fc:	4c 0f af fe          	imul   %rsi,%r15
  81ca00:	48 89 8d f8 f5 ff ff 	mov    %rcx,-0xa08(%rbp)
  81ca07:	48 8b 8d c8 f6 ff ff 	mov    -0x938(%rbp),%rcx
  81ca0e:	49 89 cc             	mov    %rcx,%r12
  81ca11:	4c 8b b5 48 f3 ff ff 	mov    -0xcb8(%rbp),%r14
  81ca18:	4d 2b e7             	sub    %r15,%r12
  81ca1b:	4c 2b b5 40 f4 ff ff 	sub    -0xbc0(%rbp),%r14
  81ca22:	4c 89 9d e8 f5 ff ff 	mov    %r11,-0xa18(%rbp)
  81ca29:	4d 03 e6             	add    %r14,%r12
  81ca2c:	48 89 bd f0 f5 ff ff 	mov    %rdi,-0xa10(%rbp)
  81ca33:	4c 03 f1             	add    %rcx,%r14
  81ca36:	48 8b 8d d0 f2 ff ff 	mov    -0xd30(%rbp),%rcx
  81ca3d:	49 89 ca             	mov    %rcx,%r10
  81ca40:	4c 8b 9d b8 f1 ff ff 	mov    -0xe48(%rbp),%r11
  81ca47:	48 8b bd 50 f7 ff ff 	mov    -0x8b0(%rbp),%rdi
  81ca4e:	4c 89 85 40 f6 ff ff 	mov    %r8,-0x9c0(%rbp)
  81ca55:	4d 89 d8             	mov    %r11,%r8
  81ca58:	4c 0f af d6          	imul   %rsi,%r10
  81ca5c:	4c 0f af c7          	imul   %rdi,%r8
  81ca60:	48 0f af f2          	imul   %rdx,%rsi
  81ca64:	48 89 85 38 f6 ff ff 	mov    %rax,-0x9c8(%rbp)
  81ca6b:	4d 2b fa             	sub    %r10,%r15
  81ca6e:	48 8b 85 c0 f6 ff ff 	mov    -0x940(%rbp),%rax
  81ca75:	4d 2b d0             	sub    %r8,%r10
  81ca78:	49 89 c1             	mov    %rax,%r9
  81ca7b:	4c 0f af cf          	imul   %rdi,%r9
  81ca7f:	4d 2b c1             	sub    %r9,%r8
  81ca82:	4c 89 bd e8 f1 ff ff 	mov    %r15,-0xe18(%rbp)
  81ca89:	4d 03 c7             	add    %r15,%r8
  81ca8c:	4d 2b f0             	sub    %r8,%r14
  81ca8f:	4f 8d 3c 14          	lea    (%r12,%r10,1),%r15
  81ca93:	4d 03 f9             	add    %r9,%r15
  81ca96:	4d 8d 0c 79          	lea    (%r9,%rdi,2),%r9
  81ca9a:	4d 03 d1             	add    %r9,%r10
  81ca9d:	4c 03 f6             	add    %rsi,%r14
  81caa0:	4d 03 e2             	add    %r10,%r12
  81caa3:	4c 03 fe             	add    %rsi,%r15
  81caa6:	4c 8b 95 70 f3 ff ff 	mov    -0xc90(%rbp),%r10
  81caad:	4c 03 e6             	add    %rsi,%r12
  81cab0:	4d 0f af ea          	imul   %r10,%r13
  81cab4:	4c 89 b5 60 f4 ff ff 	mov    %r14,-0xba0(%rbp)
  81cabb:	4c 8b 85 d8 f6 ff ff 	mov    -0x928(%rbp),%r8
  81cac2:	4c 89 c7             	mov    %r8,%rdi
  81cac5:	4c 8b b5 38 f3 ff ff 	mov    -0xcc8(%rbp),%r14
  81cacc:	49 2b fd             	sub    %r13,%rdi
  81cacf:	4c 89 a5 80 f4 ff ff 	mov    %r12,-0xb80(%rbp)
  81cad6:	4c 8b a5 e8 f2 ff ff 	mov    -0xd18(%rbp),%r12
  81cadd:	4c 2b a5 38 f4 ff ff 	sub    -0xbc8(%rbp),%r12
  81cae4:	4c 89 a5 50 f4 ff ff 	mov    %r12,-0xbb0(%rbp)
  81caeb:	4f 8d 24 06          	lea    (%r14,%r8,1),%r12
  81caef:	48 89 b5 98 f4 ff ff 	mov    %rsi,-0xb68(%rbp)
  81caf6:	4c 89 e6             	mov    %r12,%rsi
  81caf9:	4c 89 bd 78 f4 ff ff 	mov    %r15,-0xb88(%rbp)
  81cb00:	4f 8d 3c 00          	lea    (%r8,%r8,1),%r15
  81cb04:	48 89 bd 90 f4 ff ff 	mov    %rdi,-0xb70(%rbp)
  81cb0b:	48 2b f7             	sub    %rdi,%rsi
  81cb0e:	4c 89 ff             	mov    %r15,%rdi
  81cb11:	49 f7 df             	neg    %r15
  81cb14:	4d 03 f8             	add    %r8,%r15
  81cb17:	49 89 c8             	mov    %rcx,%r8
  81cb1a:	4d 0f af c2          	imul   %r10,%r8
  81cb1e:	4c 0f af d2          	imul   %rdx,%r10
  81cb22:	49 2b fd             	sub    %r13,%rdi
  81cb25:	4d 2b e8             	sub    %r8,%r13
  81cb28:	4c 89 ad 00 f2 ff ff 	mov    %r13,-0xe00(%rbp)
  81cb2f:	4d 03 fd             	add    %r13,%r15
  81cb32:	49 89 c5             	mov    %rax,%r13
  81cb35:	48 f7 de             	neg    %rsi
  81cb38:	4c 8b 8d 48 f7 ff ff 	mov    -0x8b8(%rbp),%r9
  81cb3f:	4d 0f af d9          	imul   %r9,%r11
  81cb43:	4d 0f af e9          	imul   %r9,%r13
  81cb47:	4d 89 f1             	mov    %r14,%r9
  81cb4a:	4c 0f af 8d d8 f2 ff 	imul   -0xd28(%rbp),%r9
  81cb51:	ff 
  81cb52:	4c 89 bd 58 f4 ff ff 	mov    %r15,-0xba8(%rbp)
  81cb59:	4d 89 c7             	mov    %r8,%r15
  81cb5c:	4c 89 ad 10 f2 ff ff 	mov    %r13,-0xdf0(%rbp)
  81cb63:	4d 2b fb             	sub    %r11,%r15
  81cb66:	4d 2b dd             	sub    %r13,%r11
  81cb69:	4d 03 e9             	add    %r9,%r13
  81cb6c:	4d 03 ef             	add    %r15,%r13
  81cb6f:	4c 89 a5 f0 f1 ff ff 	mov    %r12,-0xe10(%rbp)
  81cb76:	4c 2b e7             	sub    %rdi,%r12
  81cb79:	48 03 b5 e8 f2 ff ff 	add    -0xd18(%rbp),%rsi
  81cb80:	49 f7 dc             	neg    %r12
  81cb83:	4c 03 a5 e8 f2 ff ff 	add    -0xd18(%rbp),%r12
  81cb8a:	4c 89 85 f8 f1 ff ff 	mov    %r8,-0xe08(%rbp)
  81cb91:	4d 03 e5             	add    %r13,%r12
  81cb94:	4c 89 9d 18 f2 ff ff 	mov    %r11,-0xde8(%rbp)
  81cb9b:	4f 8d 1c 08          	lea    (%r8,%r9,1),%r11
  81cb9f:	48 89 b5 48 f4 ff ff 	mov    %rsi,-0xbb8(%rbp)
  81cba6:	4d 8d 44 35 00       	lea    0x0(%r13,%rsi,1),%r8
  81cbab:	4c 8b ad b0 f1 ff ff 	mov    -0xe50(%rbp),%r13
  81cbb2:	49 03 fb             	add    %r11,%rdi
  81cbb5:	48 8b b5 c0 f1 ff ff 	mov    -0xe40(%rbp),%rsi
  81cbbc:	4d 03 e2             	add    %r10,%r12
  81cbbf:	48 89 bd 20 f2 ff ff 	mov    %rdi,-0xde0(%rbp)
  81cbc6:	4d 03 c2             	add    %r10,%r8
  81cbc9:	4c 89 bd 08 f2 ff ff 	mov    %r15,-0xdf8(%rbp)
  81cbd0:	49 8d 7c c5 00       	lea    0x0(%r13,%rax,8),%rdi
  81cbd5:	4c 8b ad a0 f1 ff ff 	mov    -0xe60(%rbp),%r13
  81cbdc:	4c 8d 3c f5 00 00 00 	lea    0x0(,%rsi,8),%r15
  81cbe3:	00 
  81cbe4:	4c 2b ee             	sub    %rsi,%r13
  81cbe7:	4c 89 a5 a0 f4 ff ff 	mov    %r12,-0xb60(%rbp)
  81cbee:	4c 8d 24 c5 00 00 00 	lea    0x0(,%rax,8),%r12
  81cbf5:	00 
  81cbf6:	4c 89 a5 28 f2 ff ff 	mov    %r12,-0xdd8(%rbp)
  81cbfd:	4d 2b e7             	sub    %r15,%r12
  81cc00:	49 f7 df             	neg    %r15
  81cc03:	48 89 bd 10 f5 ff ff 	mov    %rdi,-0xaf0(%rbp)
  81cc0a:	4a 8d 34 ed 08 00 00 	lea    0x8(,%r13,8),%rsi
  81cc11:	00 
  81cc12:	4c 03 ff             	add    %rdi,%r15
  81cc15:	48 8b bd 20 f7 ff ff 	mov    -0x8e0(%rbp),%rdi
  81cc1c:	48 0f af fe          	imul   %rsi,%rdi
  81cc20:	4c 89 bd 30 f2 ff ff 	mov    %r15,-0xdd0(%rbp)
  81cc27:	4c 8b bd 50 f3 ff ff 	mov    -0xcb0(%rbp),%r15
  81cc2e:	4c 03 9d 90 f4 ff ff 	add    -0xb70(%rbp),%r11
  81cc35:	4c 89 85 68 f4 ff ff 	mov    %r8,-0xb98(%rbp)
  81cc3c:	4c 89 9d 70 f4 ff ff 	mov    %r11,-0xb90(%rbp)
  81cc43:	4f 8d 04 27          	lea    (%r15,%r12,1),%r8
  81cc47:	4c 89 85 50 f6 ff ff 	mov    %r8,-0x9b0(%rbp)
  81cc4e:	4d 8d 1c 3f          	lea    (%r15,%rdi,1),%r11
  81cc52:	4d 03 dc             	add    %r12,%r11
  81cc55:	49 03 f8             	add    %r8,%rdi
  81cc58:	4c 89 ad 58 f6 ff ff 	mov    %r13,-0x9a8(%rbp)
  81cc5f:	4f 8d 04 ec          	lea    (%r12,%r13,8),%r8
  81cc63:	4c 8b a5 98 f1 ff ff 	mov    -0xe68(%rbp),%r12
  81cc6a:	49 89 d5             	mov    %rdx,%r13
  81cc6d:	4c 0f af e6          	imul   %rsi,%r12
  81cc71:	4c 0f af ee          	imul   %rsi,%r13
  81cc75:	48 89 bd 20 f4 ff ff 	mov    %rdi,-0xbe0(%rbp)
  81cc7c:	48 89 cf             	mov    %rcx,%rdi
  81cc7f:	48 0f af fe          	imul   %rsi,%rdi
  81cc83:	4c 89 a5 38 f2 ff ff 	mov    %r12,-0xdc8(%rbp)
  81cc8a:	4d 03 c7             	add    %r15,%r8
  81cc8d:	48 89 b5 30 f7 ff ff 	mov    %rsi,-0x8d0(%rbp)
  81cc94:	4c 8b a5 48 f7 ff ff 	mov    -0x8b8(%rbp),%r12
  81cc9b:	48 8b b5 38 f4 ff ff 	mov    -0xbc8(%rbp),%rsi
  81cca2:	49 2b f6             	sub    %r14,%rsi
  81cca5:	4c 8b bd 50 f4 ff ff 	mov    -0xbb0(%rbp),%r15
  81ccac:	4c 03 fe             	add    %rsi,%r15
  81ccaf:	48 8b b5 58 f4 ff ff 	mov    -0xba8(%rbp),%rsi
  81ccb6:	48 f7 de             	neg    %rsi
  81ccb9:	4c 89 ad 48 f5 ff ff 	mov    %r13,-0xab8(%rbp)
  81ccc0:	49 03 f7             	add    %r15,%rsi
  81ccc3:	49 89 f6             	mov    %rsi,%r14
  81ccc6:	4f 8d 2c 61          	lea    (%r9,%r12,2),%r13
  81ccca:	49 f7 dd             	neg    %r13
  81cccd:	48 89 bd 40 f2 ff ff 	mov    %rdi,-0xdc0(%rbp)
  81ccd4:	48 8b bd 18 f2 ff ff 	mov    -0xde8(%rbp),%rdi
  81ccdb:	4c 2b f7             	sub    %rdi,%r14
  81ccde:	4c 2b bd 00 f2 ff ff 	sub    -0xe00(%rbp),%r15
  81cce5:	4c 03 ef             	add    %rdi,%r13
  81cce8:	48 f7 df             	neg    %rdi
  81cceb:	4d 03 f1             	add    %r9,%r14
  81ccee:	49 03 ff             	add    %r15,%rdi
  81ccf1:	49 2b f5             	sub    %r13,%rsi
  81ccf4:	4c 03 cf             	add    %rdi,%r9
  81ccf7:	4d 2b fd             	sub    %r13,%r15
  81ccfa:	4c 8b a5 b8 f6 ff ff 	mov    -0x948(%rbp),%r12
  81cd01:	4d 03 ca             	add    %r10,%r9
  81cd04:	4c 2b e0             	sub    %rax,%r12
  81cd07:	49 03 f2             	add    %r10,%rsi
  81cd0a:	48 8b bd b8 f1 ff ff 	mov    -0xe48(%rbp),%rdi
  81cd11:	4d 03 fa             	add    %r10,%r15
  81cd14:	4c 89 8d b0 f4 ff ff 	mov    %r9,-0xb50(%rbp)
  81cd1b:	49 ff c4             	inc    %r12
  81cd1e:	48 89 b5 58 f4 ff ff 	mov    %rsi,-0xba8(%rbp)
  81cd25:	49 89 fd             	mov    %rdi,%r13
  81cd28:	4c 63 8d 28 f7 ff ff 	movslq -0x8d8(%rbp),%r9
  81cd2f:	4d 03 f2             	add    %r10,%r14
  81cd32:	48 8b b5 a8 f1 ff ff 	mov    -0xe58(%rbp),%rsi
  81cd39:	4c 89 bd 50 f4 ff ff 	mov    %r15,-0xbb0(%rbp)
  81cd40:	4c 89 9d f0 f3 ff ff 	mov    %r11,-0xc10(%rbp)
  81cd47:	49 89 cb             	mov    %rcx,%r11
  81cd4a:	4c 89 a5 60 f7 ff ff 	mov    %r12,-0x8a0(%rbp)
  81cd51:	49 89 f4             	mov    %rsi,%r12
  81cd54:	4c 8b bd c8 f4 ff ff 	mov    -0xb38(%rbp),%r15
  81cd5b:	4c 89 8d 68 f6 ff ff 	mov    %r9,-0x998(%rbp)
  81cd62:	4c 8b 8d e0 f2 ff ff 	mov    -0xd20(%rbp),%r9
  81cd69:	4d 0f af e1          	imul   %r9,%r12
  81cd6d:	4d 0f af d9          	imul   %r9,%r11
  81cd71:	4d 0f af ef          	imul   %r15,%r13
  81cd75:	49 0f af c7          	imul   %r15,%rax
  81cd79:	4c 0f af ca          	imul   %rdx,%r9
  81cd7d:	4c 89 95 a8 f4 ff ff 	mov    %r10,-0xb58(%rbp)
  81cd84:	4c 89 b5 88 f4 ff ff 	mov    %r14,-0xb78(%rbp)
  81cd8b:	4c 63 95 00 f6 ff ff 	movslq -0xa00(%rbp),%r10
  81cd92:	4c 8b b5 18 f3 ff ff 	mov    -0xce8(%rbp),%r14
  81cd99:	4c 89 85 08 f6 ff ff 	mov    %r8,-0x9f8(%rbp)
  81cda0:	4d 89 f0             	mov    %r14,%r8
  81cda3:	4c 89 95 a0 f7 ff ff 	mov    %r10,-0x860(%rbp)
  81cdaa:	4c 8b 95 e8 f3 ff ff 	mov    -0xc18(%rbp),%r10
  81cdb1:	4d 2b c2             	sub    %r10,%r8
  81cdb4:	4c 89 9d 58 f2 ff ff 	mov    %r11,-0xda8(%rbp)
  81cdbb:	4d 2b d4             	sub    %r12,%r10
  81cdbe:	4d 2b e3             	sub    %r11,%r12
  81cdc1:	4d 2b dd             	sub    %r13,%r11
  81cdc4:	4c 2b e8             	sub    %rax,%r13
  81cdc7:	4d 03 e5             	add    %r13,%r12
  81cdca:	49 89 f5             	mov    %rsi,%r13
  81cdcd:	49 f7 dc             	neg    %r12
  81cdd0:	4d 03 e6             	add    %r14,%r12
  81cdd3:	4c 89 85 48 f2 ff ff 	mov    %r8,-0xdb8(%rbp)
  81cdda:	4d 03 c2             	add    %r10,%r8
  81cddd:	4d 03 c3             	add    %r11,%r8
  81cde0:	4c 03 c0             	add    %rax,%r8
  81cde3:	4c 89 95 50 f2 ff ff 	mov    %r10,-0xdb0(%rbp)
  81cdea:	4b 8d 04 7c          	lea    (%r12,%r15,2),%rax
  81cdee:	49 03 c1             	add    %r9,%rax
  81cdf1:	49 89 ca             	mov    %rcx,%r10
  81cdf4:	48 89 85 f8 f3 ff ff 	mov    %rax,-0xc08(%rbp)
  81cdfb:	48 89 f8             	mov    %rdi,%rax
  81cdfe:	4c 8b 9d d0 f4 ff ff 	mov    -0xb30(%rbp),%r11
  81ce05:	4d 03 c1             	add    %r9,%r8
  81ce08:	4c 89 8d 08 f4 ff ff 	mov    %r9,-0xbf8(%rbp)
  81ce0f:	4c 8b 8d 68 f3 ff ff 	mov    -0xc98(%rbp),%r9
  81ce16:	4c 8b a5 c0 f6 ff ff 	mov    -0x940(%rbp),%r12
  81ce1d:	4d 0f af e9          	imul   %r9,%r13
  81ce21:	4d 0f af d1          	imul   %r9,%r10
  81ce25:	49 0f af c3          	imul   %r11,%rax
  81ce29:	4d 0f af e3          	imul   %r11,%r12
  81ce2d:	4c 0f af ca          	imul   %rdx,%r9
  81ce31:	4c 8b bd 28 f3 ff ff 	mov    -0xcd8(%rbp),%r15
  81ce38:	4c 89 85 18 f4 ff ff 	mov    %r8,-0xbe8(%rbp)
  81ce3f:	4d 89 f8             	mov    %r15,%r8
  81ce42:	4c 8b b5 e0 f3 ff ff 	mov    -0xc20(%rbp),%r14
  81ce49:	4d 2b c6             	sub    %r14,%r8
  81ce4c:	4c 89 95 68 f2 ff ff 	mov    %r10,-0xd98(%rbp)
  81ce53:	4d 2b f5             	sub    %r13,%r14
  81ce56:	4d 2b ea             	sub    %r10,%r13
  81ce59:	4c 2b d0             	sub    %rax,%r10
  81ce5c:	49 2b c4             	sub    %r12,%rax
  81ce5f:	4c 03 e8             	add    %rax,%r13
  81ce62:	48 8b 85 20 f7 ff ff 	mov    -0x8e0(%rbp),%rax
  81ce69:	49 f7 dd             	neg    %r13
  81ce6c:	4d 03 ef             	add    %r15,%r13
  81ce6f:	83 e0 fe             	and    $0xfffffffe,%eax
  81ce72:	48 98                	cltq   
  81ce74:	48 89 85 18 f7 ff ff 	mov    %rax,-0x8e8(%rbp)
  81ce7b:	48 89 f0             	mov    %rsi,%rax
  81ce7e:	4c 8b bd 78 f3 ff ff 	mov    -0xc88(%rbp),%r15
  81ce85:	49 0f af c7          	imul   %r15,%rax
  81ce89:	49 0f af cf          	imul   %r15,%rcx
  81ce8d:	4c 0f af fa          	imul   %rdx,%r15
  81ce91:	4c 89 b5 60 f2 ff ff 	mov    %r14,-0xda0(%rbp)
  81ce98:	4d 03 f0             	add    %r8,%r14
  81ce9b:	4d 03 f2             	add    %r10,%r14
  81ce9e:	48 f7 d8             	neg    %rax
  81cea1:	4d 03 f4             	add    %r12,%r14
  81cea4:	4f 8d 64 5d 00       	lea    0x0(%r13,%r11,2),%r12
  81cea9:	4d 03 e1             	add    %r9,%r12
  81ceac:	4d 03 f1             	add    %r9,%r14
  81ceaf:	4c 89 a5 00 f4 ff ff 	mov    %r12,-0xc00(%rbp)
  81ceb6:	49 89 fc             	mov    %rdi,%r12
  81ceb9:	4c 8b 95 38 f3 ff ff 	mov    -0xcc8(%rbp),%r10
  81cec0:	49 f7 dc             	neg    %r12
  81cec3:	4c 0f af 95 f0 f2 ff 	imul   -0xd10(%rbp),%r10
  81ceca:	ff 
  81cecb:	4c 03 a5 c0 f6 ff ff 	add    -0x940(%rbp),%r12
  81ced2:	48 c1 e7 03          	shl    $0x3,%rdi
  81ced6:	4c 0f af a5 40 f7 ff 	imul   -0x8c0(%rbp),%r12
  81cedd:	ff 
  81cede:	4c 89 b5 28 f4 ff ff 	mov    %r14,-0xbd8(%rbp)
  81cee5:	4c 8b b5 80 f3 ff ff 	mov    -0xc80(%rbp),%r14
  81ceec:	4c 8b ad e0 f6 ff ff 	mov    -0x920(%rbp),%r13
  81cef3:	4d 2b f5             	sub    %r13,%r14
  81cef6:	49 03 c5             	add    %r13,%rax
  81cef9:	48 89 95 a8 f3 ff ff 	mov    %rdx,-0xc58(%rbp)
  81cf00:	4c 8b ad 10 f2 ff ff 	mov    -0xdf0(%rbp),%r13
  81cf07:	4d 03 ea             	add    %r10,%r13
  81cf0a:	4c 8b 9d 08 f2 ff ff 	mov    -0xdf8(%rbp),%r11
  81cf11:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  81cf15:	48 03 d1             	add    %rcx,%rdx
  81cf18:	4d 03 dd             	add    %r13,%r11
  81cf1b:	49 03 d7             	add    %r15,%rdx
  81cf1e:	4c 03 e2             	add    %rdx,%r12
  81cf21:	48 8b 95 f8 f1 ff ff 	mov    -0xe08(%rbp),%rdx
  81cf28:	4c 89 a5 48 f6 ff ff 	mov    %r12,-0x9b8(%rbp)
  81cf2f:	49 03 d2             	add    %r10,%rdx
  81cf32:	4c 8d 95 48 f4 ff ff 	lea    -0xbb8(%rbp),%r10
  81cf39:	4d 8b 22             	mov    (%r10),%r12
  81cf3c:	4d 03 e3             	add    %r11,%r12
  81cf3f:	4c 8b ad 90 f4 ff ff 	mov    -0xb70(%rbp),%r13
  81cf46:	4c 03 ea             	add    %rdx,%r13
  81cf49:	48 8b 95 a8 f4 ff ff 	mov    -0xb58(%rbp),%rdx
  81cf50:	4c 03 e2             	add    %rdx,%r12
  81cf53:	4d 89 22             	mov    %r12,(%r10)
  81cf56:	4c 8b a5 28 f2 ff ff 	mov    -0xdd8(%rbp),%r12
  81cf5d:	4c 2b e7             	sub    %rdi,%r12
  81cf60:	48 8b bd d0 f1 ff ff 	mov    -0xe30(%rbp),%rdi
  81cf67:	4d 03 f4             	add    %r12,%r14
  81cf6a:	49 03 fc             	add    %r12,%rdi
  81cf6d:	49 03 c6             	add    %r14,%rax
  81cf70:	4c 8d b5 38 f6 ff ff 	lea    -0x9c8(%rbp),%r14
  81cf77:	4d 8b 1e             	mov    (%r14),%r11
  81cf7a:	4d 03 c4             	add    %r12,%r8
  81cf7d:	4c 03 df             	add    %rdi,%r11
  81cf80:	48 03 c1             	add    %rcx,%rax
  81cf83:	4c 8b 95 d8 f1 ff ff 	mov    -0xe28(%rbp),%r10
  81cf8a:	4c 03 f8             	add    %rax,%r15
  81cf8d:	4c 03 d7             	add    %rdi,%r10
  81cf90:	48 8b bd e0 f1 ff ff 	mov    -0xe20(%rbp),%rdi
  81cf97:	4c 03 df             	add    %rdi,%r11
  81cf9a:	49 03 fa             	add    %r10,%rdi
  81cf9d:	4c 8b 95 60 f6 ff ff 	mov    -0x9a0(%rbp),%r10
  81cfa4:	4d 03 da             	add    %r10,%r11
  81cfa7:	48 8b 8d e8 f2 ff ff 	mov    -0xd18(%rbp),%rcx
  81cfae:	4c 03 d7             	add    %rdi,%r10
  81cfb1:	4d 89 1e             	mov    %r11,(%r14)
  81cfb4:	4c 8b 9d 60 f2 ff ff 	mov    -0xda0(%rbp),%r11
  81cfbb:	4d 03 d8             	add    %r8,%r11
  81cfbe:	4a 8d 3c 21          	lea    (%rcx,%r12,1),%rdi
  81cfc2:	4c 03 9d 68 f2 ff ff 	add    -0xd98(%rbp),%r11
  81cfc9:	4c 8b 85 48 f2 ff ff 	mov    -0xdb8(%rbp),%r8
  81cfd0:	4d 03 cb             	add    %r11,%r9
  81cfd3:	4d 03 c4             	add    %r12,%r8
  81cfd6:	4c 89 8d 10 f4 ff ff 	mov    %r9,-0xbf0(%rbp)
  81cfdd:	4c 8b 8d 50 f2 ff ff 	mov    -0xdb0(%rbp),%r9
  81cfe4:	4d 03 c8             	add    %r8,%r9
  81cfe7:	48 2b bd f0 f1 ff ff 	sub    -0xe10(%rbp),%rdi
  81cfee:	4c 03 8d 58 f2 ff ff 	add    -0xda8(%rbp),%r9
  81cff5:	4c 03 ef             	add    %rdi,%r13
  81cff8:	4c 8d 85 70 f4 ff ff 	lea    -0xb90(%rbp),%r8
  81cfff:	49 8b 00             	mov    (%r8),%rax
  81d002:	4c 03 ea             	add    %rdx,%r13
  81d005:	48 03 c7             	add    %rdi,%rax
  81d008:	4c 01 8d 08 f4 ff ff 	add    %r9,-0xbf8(%rbp)
  81d00f:	49 89 f1             	mov    %rsi,%r9
  81d012:	48 03 c2             	add    %rdx,%rax
  81d015:	49 89 00             	mov    %rax,(%r8)
  81d018:	48 8b 85 10 f3 ff ff 	mov    -0xcf0(%rbp),%rax
  81d01f:	4c 0f af c8          	imul   %rax,%r9
  81d023:	48 03 bd 20 f2 ff ff 	add    -0xde0(%rbp),%rdi
  81d02a:	48 03 d7             	add    %rdi,%rdx
  81d02d:	48 8b bd d0 f2 ff ff 	mov    -0xd30(%rbp),%rdi
  81d034:	49 89 f8             	mov    %rdi,%r8
  81d037:	4c 89 ad 90 f4 ff ff 	mov    %r13,-0xb70(%rbp)
  81d03e:	4c 8b ad b8 f1 ff ff 	mov    -0xe48(%rbp),%r13
  81d045:	4c 8b 9d c0 f3 ff ff 	mov    -0xc40(%rbp),%r11
  81d04c:	4c 89 95 60 f6 ff ff 	mov    %r10,-0x9a0(%rbp)
  81d053:	4d 89 ea             	mov    %r13,%r10
  81d056:	4c 0f af c0          	imul   %rax,%r8
  81d05a:	4d 0f af d3          	imul   %r11,%r10
  81d05e:	48 8b 8d c0 f6 ff ff 	mov    -0x940(%rbp),%rcx
  81d065:	49 0f af cb          	imul   %r11,%rcx
  81d069:	48 89 95 a8 f4 ff ff 	mov    %rdx,-0xb58(%rbp)
  81d070:	48 8b 95 a8 f3 ff ff 	mov    -0xc58(%rbp),%rdx
  81d077:	48 0f af c2          	imul   %rdx,%rax
  81d07b:	4c 8b b5 00 f3 ff ff 	mov    -0xd00(%rbp),%r14
  81d082:	4c 89 bd c8 f1 ff ff 	mov    %r15,-0xe38(%rbp)
  81d089:	4d 89 f7             	mov    %r14,%r15
  81d08c:	4d 2b f9             	sub    %r9,%r15
  81d08f:	4d 2b c8             	sub    %r8,%r9
  81d092:	4d 03 f4             	add    %r12,%r14
  81d095:	4d 2b f1             	sub    %r9,%r14
  81d098:	4c 03 f0             	add    %rax,%r14
  81d09b:	4c 89 b5 00 f5 ff ff 	mov    %r14,-0xb00(%rbp)
  81d0a2:	4f 8d 0c 07          	lea    (%r15,%r8,1),%r9
  81d0a6:	4d 2b c2             	sub    %r10,%r8
  81d0a9:	4c 2b d1             	sub    %rcx,%r10
  81d0ac:	4d 03 f8             	add    %r8,%r15
  81d0af:	4a 8d 0c 59          	lea    (%rcx,%r11,2),%rcx
  81d0b3:	4c 8b 85 40 f3 ff ff 	mov    -0xcc0(%rbp),%r8
  81d0ba:	4d 2b ca             	sub    %r10,%r9
  81d0bd:	49 0f af f0          	imul   %r8,%rsi
  81d0c1:	49 0f af f8          	imul   %r8,%rdi
  81d0c5:	4c 0f af c2          	imul   %rdx,%r8
  81d0c9:	4c 03 f9             	add    %rcx,%r15
  81d0cc:	4c 03 c8             	add    %rax,%r9
  81d0cf:	49 03 c7             	add    %r15,%rax
  81d0d2:	48 89 85 f0 f4 ff ff 	mov    %rax,-0xb10(%rbp)
  81d0d9:	48 8b 85 c8 f3 ff ff 	mov    -0xc38(%rbp),%rax
  81d0e0:	4c 8b bd c0 f6 ff ff 	mov    -0x940(%rbp),%r15
  81d0e7:	4c 0f af e8          	imul   %rax,%r13
  81d0eb:	4c 0f af f8          	imul   %rax,%r15
  81d0ef:	4c 8b 95 f8 f2 ff ff 	mov    -0xd08(%rbp),%r10
  81d0f6:	4c 89 d1             	mov    %r10,%rcx
  81d0f9:	48 2b ce             	sub    %rsi,%rcx
  81d0fc:	48 2b f7             	sub    %rdi,%rsi
  81d0ff:	4c 89 8d 38 f7 ff ff 	mov    %r9,-0x8c8(%rbp)
  81d106:	4f 8d 1c 22          	lea    (%r10,%r12,1),%r11
  81d10a:	4c 2b de             	sub    %rsi,%r11
  81d10d:	4c 8b 95 38 f2 ff ff 	mov    -0xdc8(%rbp),%r10
  81d114:	4d 03 d8             	add    %r8,%r11
  81d117:	48 8d 95 10 f5 ff ff 	lea    -0xaf0(%rbp),%rdx
  81d11e:	4c 8b 0a             	mov    (%rdx),%r9
  81d121:	48 8d 34 39          	lea    (%rcx,%rdi,1),%rsi
  81d125:	49 2b fd             	sub    %r13,%rdi
  81d128:	4d 2b ef             	sub    %r15,%r13
  81d12b:	49 2b f5             	sub    %r13,%rsi
  81d12e:	48 03 cf             	add    %rdi,%rcx
  81d131:	49 03 f0             	add    %r8,%rsi
  81d134:	48 89 b5 f8 f4 ff ff 	mov    %rsi,-0xb08(%rbp)
  81d13b:	49 8d 34 47          	lea    (%r15,%rax,2),%rsi
  81d13f:	48 03 ce             	add    %rsi,%rcx
  81d142:	48 8b b5 90 f1 ff ff 	mov    -0xe70(%rbp),%rsi
  81d149:	4c 03 c1             	add    %rcx,%r8
  81d14c:	48 2b b5 98 f1 ff ff 	sub    -0xe68(%rbp),%rsi
  81d153:	48 ff c6             	inc    %rsi
  81d156:	48 0f af b5 30 f7 ff 	imul   -0x8d0(%rbp),%rsi
  81d15d:	ff 
  81d15e:	48 8b 8d c0 f1 ff ff 	mov    -0xe40(%rbp),%rcx
  81d165:	4c 89 9d 08 f5 ff ff 	mov    %r11,-0xaf8(%rbp)
  81d16c:	4c 89 85 e8 f4 ff ff 	mov    %r8,-0xb18(%rbp)
  81d173:	4c 8b 9d 30 f2 ff ff 	mov    -0xdd0(%rbp),%r11
  81d17a:	49 8d 3c ca          	lea    (%r10,%rcx,8),%rdi
  81d17e:	4c 2b cf             	sub    %rdi,%r9
  81d181:	4c 2b d6             	sub    %rsi,%r10
  81d184:	48 8b bd 40 f4 ff ff 	mov    -0xbc0(%rbp),%rdi
  81d18b:	4c 03 ce             	add    %rsi,%r9
  81d18e:	48 8b 8d 60 f7 ff ff 	mov    -0x8a0(%rbp),%rcx
  81d195:	4d 2b da             	sub    %r10,%r11
  81d198:	48 2b bd c8 f6 ff ff 	sub    -0x938(%rbp),%rdi
  81d19f:	89 c8                	mov    %ecx,%eax
  81d1a1:	4c 8b 85 e8 f1 ff ff 	mov    -0xe18(%rbp),%r8
  81d1a8:	83 e0 fc             	and    $0xfffffffc,%eax
  81d1ab:	4c 03 a5 48 f3 ff ff 	add    -0xcb8(%rbp),%r12
  81d1b2:	4c 03 c7             	add    %rdi,%r8
  81d1b5:	4c 8b ad 40 f2 ff ff 	mov    -0xdc0(%rbp),%r13
  81d1bc:	4d 03 cd             	add    %r13,%r9
  81d1bf:	4d 03 eb             	add    %r11,%r13
  81d1c2:	4d 2b e0             	sub    %r8,%r12
  81d1c5:	48 98                	cltq   
  81d1c7:	4c 8d 85 48 f5 ff ff 	lea    -0xab8(%rbp),%r8
  81d1ce:	4d 8b 30             	mov    (%r8),%r14
  81d1d1:	4d 03 ce             	add    %r14,%r9
  81d1d4:	4c 01 a5 98 f4 ff ff 	add    %r12,-0xb68(%rbp)
  81d1db:	4d 03 f5             	add    %r13,%r14
  81d1de:	4c 89 0a             	mov    %r9,(%rdx)
  81d1e1:	4d 89 30             	mov    %r14,(%r8)
  81d1e4:	44 8b 85 c0 f4 ff ff 	mov    -0xb40(%rbp),%r8d
  81d1eb:	44 8b ad e0 f4 ff ff 	mov    -0xb20(%rbp),%r13d
  81d1f2:	4c 8b 8d b8 f6 ff ff 	mov    -0x948(%rbp),%r9
  81d1f9:	48 89 85 b0 f6 ff ff 	mov    %rax,-0x950(%rbp)
  81d200:	89 8d 30 f5 ff ff    	mov    %ecx,-0xad0(%rbp)
  81d206:	48 89 b5 38 f5 ff ff 	mov    %rsi,-0xac8(%rbp)
  81d20d:	44 8b a5 88 f3 ff ff 	mov    -0xc78(%rbp),%r12d
  81d214:	41 8d 78 01          	lea    0x1(%r8),%edi
  81d218:	44 3b e7             	cmp    %edi,%r12d
  81d21b:	44 0f 4d e7          	cmovge %edi,%r12d
  81d21f:	4d 63 e4             	movslq %r12d,%r12
  81d222:	48 83 bd 58 f7 ff ff 	cmpq   $0x8,-0x8a8(%rbp)
  81d229:	08 
  81d22a:	0f 85 e4 01 00 00    	jne    81d414 <pre_step3d_mod_mp_pre_step3d_tile_+0x8e64>
  81d230:	48 83 bd 50 f7 ff ff 	cmpq   $0x8,-0x8b0(%rbp)
  81d237:	08 
  81d238:	0f 85 d6 01 00 00    	jne    81d414 <pre_step3d_mod_mp_pre_step3d_tile_+0x8e64>
  81d23e:	48 83 bd 48 f7 ff ff 	cmpq   $0x8,-0x8b8(%rbp)
  81d245:	08 
  81d246:	0f 85 c8 01 00 00    	jne    81d414 <pre_step3d_mod_mp_pre_step3d_tile_+0x8e64>
  81d24c:	33 f6                	xor    %esi,%esi
  81d24e:	33 c9                	xor    %ecx,%ecx
  81d250:	4c 8b 95 08 f6 ff ff 	mov    -0x9f8(%rbp),%r10
  81d257:	45 33 db             	xor    %r11d,%r11d
  81d25a:	48 83 bd 10 f7 ff ff 	cmpq   $0x0,-0x8f0(%rbp)
  81d261:	00 
  81d262:	0f 8e e9 78 00 00    	jle    824b51 <pre_step3d_mod_mp_pre_step3d_tile_+0x105a1>
  81d268:	49 63 d0             	movslq %r8d,%rdx
  81d26b:	48 0f af 95 38 f4 ff 	imul   -0xbc8(%rbp),%rdx
  81d272:	ff 
  81d273:	4c 0f af a5 40 f4 ff 	imul   -0xbc0(%rbp),%r12
  81d27a:	ff 
  81d27b:	48 8b 85 70 f4 ff ff 	mov    -0xb90(%rbp),%rax
  81d282:	4c 03 a5 98 f4 ff ff 	add    -0xb68(%rbp),%r12
  81d289:	89 bd b8 f4 ff ff    	mov    %edi,-0xb48(%rbp)
  81d28f:	44 89 85 c0 f4 ff ff 	mov    %r8d,-0xb40(%rbp)
  81d296:	48 03 c2             	add    %rdx,%rax
  81d299:	48 03 95 a8 f4 ff ff 	add    -0xb58(%rbp),%rdx
  81d2a0:	48 89 95 50 f5 ff ff 	mov    %rdx,-0xab0(%rbp)
  81d2a7:	48 89 85 58 f5 ff ff 	mov    %rax,-0xaa8(%rbp)
  81d2ae:	4c 89 8d b8 f6 ff ff 	mov    %r9,-0x948(%rbp)
  81d2b5:	48 8b 95 60 f7 ff ff 	mov    -0x8a0(%rbp),%rdx
  81d2bc:	48 8b 85 b8 f6 ff ff 	mov    -0x948(%rbp),%rax
  81d2c3:	48 3b 85 c0 f6 ff ff 	cmp    -0x940(%rbp),%rax
  81d2ca:	0f 8c 13 01 00 00    	jl     81d3e3 <pre_step3d_mod_mp_pre_step3d_tile_+0x8e33>
  81d2d0:	48 83 fa 04          	cmp    $0x4,%rdx
  81d2d4:	0f 8c 70 78 00 00    	jl     824b4a <pre_step3d_mod_mp_pre_step3d_tile_+0x1059a>
  81d2da:	4c 8b 8d 60 f6 ff ff 	mov    -0x9a0(%rbp),%r9
  81d2e1:	45 33 ed             	xor    %r13d,%r13d
  81d2e4:	4c 8b 85 38 f6 ff ff 	mov    -0x9c8(%rbp),%r8
  81d2eb:	48 8b bd 58 f5 ff ff 	mov    -0xaa8(%rbp),%rdi
  81d2f2:	4c 8b b5 50 f5 ff ff 	mov    -0xab0(%rbp),%r14
  81d2f9:	4c 03 c9             	add    %rcx,%r9
  81d2fc:	48 8b 85 b0 f6 ff ff 	mov    -0x950(%rbp),%rax
  81d303:	4c 03 c1             	add    %rcx,%r8
  81d306:	48 89 c2             	mov    %rax,%rdx
  81d309:	49 03 fb             	add    %r11,%rdi
  81d30c:	4f 8d 3c 1e          	lea    (%r14,%r11,1),%r15
  81d310:	4d 89 d6             	mov    %r10,%r14
  81d313:	c4 01 7d 10 0c e8    	vmovupd (%r8,%r13,8),%ymm9
  81d319:	c4 01 7d 10 2c ef    	vmovupd (%r15,%r13,8),%ymm13
  81d31f:	c4 01 35 5c 14 e9    	vsubpd (%r9,%r13,8),%ymm9,%ymm10
  81d325:	c4 21 15 5c 3c ef    	vsubpd (%rdi,%r13,8),%ymm13,%ymm15
  81d32b:	c4 41 65 5e da       	vdivpd %ymm10,%ymm3,%ymm11
  81d330:	c5 25 59 e0          	vmulpd %ymm0,%ymm11,%ymm12
  81d334:	c4 01 1d 59 34 ec    	vmulpd (%r12,%r13,8),%ymm12,%ymm14
  81d33a:	49 83 c5 04          	add    $0x4,%r13
  81d33e:	c4 41 0d 59 cf       	vmulpd %ymm15,%ymm14,%ymm9
  81d343:	c4 41 7d 11 4e 08    	vmovupd %ymm9,0x8(%r14)
  81d349:	49 83 c6 20          	add    $0x20,%r14
  81d34d:	4c 3b ea             	cmp    %rdx,%r13
  81d350:	72 c1                	jb     81d313 <pre_step3d_mod_mp_pre_step3d_tile_+0x8d63>
  81d352:	48 8b 95 60 f7 ff ff 	mov    -0x8a0(%rbp),%rdx
  81d359:	4c 8d 34 c5 00 00 00 	lea    0x0(,%rax,8),%r14
  81d360:	00 
  81d361:	48 3b c2             	cmp    %rdx,%rax
  81d364:	73 7d                	jae    81d3e3 <pre_step3d_mod_mp_pre_step3d_tile_+0x8e33>
  81d366:	4c 8b 8d 60 f6 ff ff 	mov    -0x9a0(%rbp),%r9
  81d36d:	4d 8d 2c c2          	lea    (%r10,%rax,8),%r13
  81d371:	4c 8b 85 38 f6 ff ff 	mov    -0x9c8(%rbp),%r8
  81d378:	48 8b bd 58 f5 ff ff 	mov    -0xaa8(%rbp),%rdi
  81d37f:	4c 8b bd 50 f5 ff ff 	mov    -0xab0(%rbp),%r15
  81d386:	4c 03 c9             	add    %rcx,%r9
  81d389:	4c 03 c1             	add    %rcx,%r8
  81d38c:	49 03 fb             	add    %r11,%rdi
  81d38f:	4d 03 fb             	add    %r11,%r15
  81d392:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  81d399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  81d3a0:	c4 41 7b 10 0c c0    	vmovsd (%r8,%rax,8),%xmm9
  81d3a6:	c4 01 7b 10 2c 3e    	vmovsd (%r14,%r15,1),%xmm13
  81d3ac:	c4 41 33 5c 14 c1    	vsubsd (%r9,%rax,8),%xmm9,%xmm10
  81d3b2:	48 ff c0             	inc    %rax
  81d3b5:	c4 41 13 5c 3c 3e    	vsubsd (%r14,%rdi,1),%xmm13,%xmm15
  81d3bb:	c4 41 3b 5e da       	vdivsd %xmm10,%xmm8,%xmm11
  81d3c0:	c4 41 73 59 e3       	vmulsd %xmm11,%xmm1,%xmm12
  81d3c5:	c4 01 1b 59 34 26    	vmulsd (%r14,%r12,1),%xmm12,%xmm14
  81d3cb:	49 83 c6 08          	add    $0x8,%r14
  81d3cf:	c4 41 0b 59 cf       	vmulsd %xmm15,%xmm14,%xmm9
  81d3d4:	c4 41 7b 11 4d 08    	vmovsd %xmm9,0x8(%r13)
  81d3da:	49 83 c5 08          	add    $0x8,%r13
  81d3de:	48 3b c2             	cmp    %rdx,%rax
  81d3e1:	72 bd                	jb     81d3a0 <pre_step3d_mod_mp_pre_step3d_tile_+0x8df0>
  81d3e3:	48 ff c6             	inc    %rsi
  81d3e6:	4c 03 95 30 f7 ff ff 	add    -0x8d0(%rbp),%r10
  81d3ed:	48 03 8d d0 f6 ff ff 	add    -0x930(%rbp),%rcx
  81d3f4:	4c 03 a5 c8 f6 ff ff 	add    -0x938(%rbp),%r12
  81d3fb:	4c 03 9d d8 f6 ff ff 	add    -0x928(%rbp),%r11
  81d402:	48 3b b5 10 f7 ff ff 	cmp    -0x8f0(%rbp),%rsi
  81d409:	0f 82 ad fe ff ff    	jb     81d2bc <pre_step3d_mod_mp_pre_step3d_tile_+0x8d0c>
  81d40f:	e9 30 06 00 00       	jmpq   81da44 <pre_step3d_mod_mp_pre_step3d_tile_+0x9494>
  81d414:	45 33 f6             	xor    %r14d,%r14d
  81d417:	33 c0                	xor    %eax,%eax
  81d419:	45 33 ed             	xor    %r13d,%r13d
  81d41c:	4c 8b 95 08 f6 ff ff 	mov    -0x9f8(%rbp),%r10
  81d423:	45 33 db             	xor    %r11d,%r11d
  81d426:	48 83 bd 10 f7 ff ff 	cmpq   $0x0,-0x8f0(%rbp)
  81d42d:	00 
  81d42e:	0f 8e 68 0a 00 00    	jle    81de9c <pre_step3d_mod_mp_pre_step3d_tile_+0x98ec>
  81d434:	49 63 c8             	movslq %r8d,%rcx
  81d437:	48 0f af 8d 38 f4 ff 	imul   -0xbc8(%rbp),%rcx
  81d43e:	ff 
  81d43f:	4c 0f af a5 40 f4 ff 	imul   -0xbc0(%rbp),%r12
  81d446:	ff 
  81d447:	4c 8b bd 68 f4 ff ff 	mov    -0xb98(%rbp),%r15
  81d44e:	48 8b b5 78 f4 ff ff 	mov    -0xb88(%rbp),%rsi
  81d455:	48 8b 95 60 f4 ff ff 	mov    -0xba0(%rbp),%rdx
  81d45c:	4c 89 95 f0 f6 ff ff 	mov    %r10,-0x910(%rbp)
  81d463:	4c 03 f9             	add    %rcx,%r15
  81d466:	4c 89 bd d8 f5 ff ff 	mov    %r15,-0xa28(%rbp)
  81d46d:	49 03 f4             	add    %r12,%rsi
  81d470:	4c 8b bd a0 f4 ff ff 	mov    -0xb60(%rbp),%r15
  81d477:	49 03 d4             	add    %r12,%rdx
  81d47a:	4c 03 a5 80 f4 ff ff 	add    -0xb80(%rbp),%r12
  81d481:	4c 89 a5 68 f5 ff ff 	mov    %r12,-0xa98(%rbp)
  81d488:	48 89 95 70 f5 ff ff 	mov    %rdx,-0xa90(%rbp)
  81d48f:	4c 03 f9             	add    %rcx,%r15
  81d492:	4c 89 bd d0 f5 ff ff 	mov    %r15,-0xa30(%rbp)
  81d499:	4c 8b bd 88 f4 ff ff 	mov    -0xb78(%rbp),%r15
  81d4a0:	48 89 b5 e8 f6 ff ff 	mov    %rsi,-0x918(%rbp)
  81d4a7:	4c 89 9d f8 f6 ff ff 	mov    %r11,-0x908(%rbp)
  81d4ae:	4c 89 ad 00 f7 ff ff 	mov    %r13,-0x900(%rbp)
  81d4b5:	4c 03 f9             	add    %rcx,%r15
  81d4b8:	4c 89 bd c8 f5 ff ff 	mov    %r15,-0xa38(%rbp)
  81d4bf:	4c 8b bd 58 f4 ff ff 	mov    -0xba8(%rbp),%r15
  81d4c6:	4c 89 b5 08 f7 ff ff 	mov    %r14,-0x8f8(%rbp)
  81d4cd:	89 bd b8 f4 ff ff    	mov    %edi,-0xb48(%rbp)
  81d4d3:	44 89 85 c0 f4 ff ff 	mov    %r8d,-0xb40(%rbp)
  81d4da:	4c 03 f9             	add    %rcx,%r15
  81d4dd:	4c 89 bd c0 f5 ff ff 	mov    %r15,-0xa40(%rbp)
  81d4e4:	4c 8b bd b0 f4 ff ff 	mov    -0xb50(%rbp),%r15
  81d4eb:	4c 89 8d b8 f6 ff ff 	mov    %r9,-0x948(%rbp)
  81d4f2:	4c 03 f9             	add    %rcx,%r15
  81d4f5:	48 03 8d 50 f4 ff ff 	add    -0xbb0(%rbp),%rcx
  81d4fc:	4c 89 bd b8 f5 ff ff 	mov    %r15,-0xa48(%rbp)
  81d503:	48 89 8d 60 f5 ff ff 	mov    %rcx,-0xaa0(%rbp)
  81d50a:	48 8b 95 b8 f6 ff ff 	mov    -0x948(%rbp),%rdx
  81d511:	48 3b 95 c0 f6 ff ff 	cmp    -0x940(%rbp),%rdx
  81d518:	0f 8c c2 04 00 00    	jl     81d9e0 <pre_step3d_mod_mp_pre_step3d_tile_+0x9430>
  81d51e:	83 bd 28 f7 ff ff 04 	cmpl   $0x4,-0x8d8(%rbp)
  81d525:	0f 8c 6d 76 00 00    	jl     824b98 <pre_step3d_mod_mp_pre_step3d_tile_+0x105e8>
  81d52b:	4c 8b a5 d8 f5 ff ff 	mov    -0xa28(%rbp),%r12
  81d532:	33 ff                	xor    %edi,%edi
  81d534:	48 8b 95 f8 f6 ff ff 	mov    -0x908(%rbp),%rdx
  81d53b:	4c 8b ad d0 f5 ff ff 	mov    -0xa30(%rbp),%r13
  81d542:	48 8b 8d f0 f5 ff ff 	mov    -0xa10(%rbp),%rcx
  81d549:	4c 8b bd f8 f5 ff ff 	mov    -0xa08(%rbp),%r15
  81d550:	4d 8d 0c 14          	lea    (%r12,%rdx,1),%r9
  81d554:	4c 8b 95 70 f5 ff ff 	mov    -0xa90(%rbp),%r10
  81d55b:	4d 8d 64 15 00       	lea    0x0(%r13,%rdx,1),%r12
  81d560:	4c 8b b5 00 f7 ff ff 	mov    -0x900(%rbp),%r14
  81d567:	4c 89 8d 98 f7 ff ff 	mov    %r9,-0x868(%rbp)
  81d56e:	4c 8d 0c 01          	lea    (%rcx,%rax,1),%r9
  81d572:	48 8b 8d 68 f5 ff ff 	mov    -0xa98(%rbp),%rcx
  81d579:	4d 8d 2c 07          	lea    (%r15,%rax,1),%r13
  81d57d:	4c 8b bd c0 f5 ff ff 	mov    -0xa40(%rbp),%r15
  81d584:	4d 03 d6             	add    %r14,%r10
  81d587:	48 8b b5 40 f6 ff ff 	mov    -0x9c0(%rbp),%rsi
  81d58e:	4c 8b 9d 10 f6 ff ff 	mov    -0x9f0(%rbp),%r11
  81d595:	4c 03 f1             	add    %rcx,%r14
  81d598:	44 8b 85 00 f6 ff ff 	mov    -0xa00(%rbp),%r8d
  81d59f:	49 8d 0c 17          	lea    (%r15,%rdx,1),%rcx
  81d5a3:	4c 8b bd 60 f5 ff ff 	mov    -0xaa0(%rbp),%r15
  81d5aa:	48 03 f0             	add    %rax,%rsi
  81d5ad:	48 89 8d 90 f7 ff ff 	mov    %rcx,-0x870(%rbp)
  81d5b4:	33 c9                	xor    %ecx,%ecx
  81d5b6:	44 89 85 70 f6 ff ff 	mov    %r8d,-0x990(%rbp)
  81d5bd:	4c 03 d8             	add    %rax,%r11
  81d5c0:	4c 89 b5 70 f7 ff ff 	mov    %r14,-0x890(%rbp)
  81d5c7:	49 03 d7             	add    %r15,%rdx
  81d5ca:	4c 8b bd f0 f6 ff ff 	mov    -0x910(%rbp),%r15
  81d5d1:	48 89 95 78 f5 ff ff 	mov    %rdx,-0xa88(%rbp)
  81d5d8:	33 d2                	xor    %edx,%edx
  81d5da:	4c 89 ad 80 f7 ff ff 	mov    %r13,-0x880(%rbp)
  81d5e1:	4c 89 95 68 f7 ff ff 	mov    %r10,-0x898(%rbp)
  81d5e8:	48 89 b5 78 f7 ff ff 	mov    %rsi,-0x888(%rbp)
  81d5ef:	48 89 85 78 f6 ff ff 	mov    %rax,-0x988(%rbp)
  81d5f6:	4d 89 f8             	mov    %r15,%r8
  81d5f9:	48 89 d0             	mov    %rdx,%rax
  81d5fc:	48 8b b5 78 f5 ff ff 	mov    -0xa88(%rbp),%rsi
  81d603:	4c 8b 95 50 f7 ff ff 	mov    -0x8b0(%rbp),%r10
  81d60a:	4c 8b ad 58 f7 ff ff 	mov    -0x8a8(%rbp),%r13
  81d611:	4c 8b b5 48 f7 ff ff 	mov    -0x8b8(%rbp),%r14
  81d618:	4c 8b bd 78 f7 ff ff 	mov    -0x888(%rbp),%r15
  81d61f:	48 83 c7 04          	add    $0x4,%rdi
  81d623:	4c 03 f9             	add    %rcx,%r15
  81d626:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  81d62b:	c4 01 31 16 1c 2f    	vmovhpd (%r15,%r13,1),%xmm9,%xmm11
  81d631:	4d 8d 3c 0b          	lea    (%r11,%rcx,1),%r15
  81d635:	c4 41 7b 10 17       	vmovsd (%r15),%xmm10
  81d63a:	c4 01 29 16 24 2f    	vmovhpd (%r15,%r13,1),%xmm10,%xmm12
  81d640:	c4 41 21 5c ec       	vsubpd %xmm12,%xmm11,%xmm13
  81d645:	c4 41 69 5e f5       	vdivpd %xmm13,%xmm2,%xmm14
  81d64a:	4c 8b bd 68 f7 ff ff 	mov    -0x898(%rbp),%r15
  81d651:	c5 09 59 cd          	vmulpd %xmm5,%xmm14,%xmm9
  81d655:	4c 03 fa             	add    %rdx,%r15
  81d658:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81d65d:	c4 01 01 16 14 17    	vmovhpd (%r15,%r10,1),%xmm15,%xmm10
  81d663:	4d 8d 3c 04          	lea    (%r12,%rax,1),%r15
  81d667:	c4 41 7b 10 1f       	vmovsd (%r15),%xmm11
  81d66c:	c4 01 21 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm11,%xmm13
  81d672:	4c 8b bd 98 f7 ff ff 	mov    -0x868(%rbp),%r15
  81d679:	c4 41 31 59 fa       	vmulpd %xmm10,%xmm9,%xmm15
  81d67e:	4c 03 f8             	add    %rax,%r15
  81d681:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81d686:	c4 01 19 16 34 37    	vmovhpd (%r15,%r14,1),%xmm12,%xmm14
  81d68c:	4c 8b bd 80 f7 ff ff 	mov    -0x880(%rbp),%r15
  81d693:	c4 41 11 5c ce       	vsubpd %xmm14,%xmm13,%xmm9
  81d698:	c4 41 01 59 d1       	vmulpd %xmm9,%xmm15,%xmm10
  81d69d:	c4 41 79 11 50 08    	vmovupd %xmm10,0x8(%r8)
  81d6a3:	4c 03 f9             	add    %rcx,%r15
  81d6a6:	c4 41 7b 10 1f       	vmovsd (%r15),%xmm11
  81d6ab:	c4 01 21 16 2c 2f    	vmovhpd (%r15,%r13,1),%xmm11,%xmm13
  81d6b1:	4d 8d 3c 09          	lea    (%r9,%rcx,1),%r15
  81d6b5:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81d6ba:	4a 8d 0c a9          	lea    (%rcx,%r13,4),%rcx
  81d6be:	c4 01 19 16 34 2f    	vmovhpd (%r15,%r13,1),%xmm12,%xmm14
  81d6c4:	c4 41 11 5c fe       	vsubpd %xmm14,%xmm13,%xmm15
  81d6c9:	c4 41 69 5e cf       	vdivpd %xmm15,%xmm2,%xmm9
  81d6ce:	4c 8b bd 70 f7 ff ff 	mov    -0x890(%rbp),%r15
  81d6d5:	c5 31 59 dd          	vmulpd %xmm5,%xmm9,%xmm11
  81d6d9:	4c 03 fa             	add    %rdx,%r15
  81d6dc:	c4 41 7b 10 17       	vmovsd (%r15),%xmm10
  81d6e1:	4a 8d 14 92          	lea    (%rdx,%r10,4),%rdx
  81d6e5:	c4 01 29 16 24 17    	vmovhpd (%r15,%r10,1),%xmm10,%xmm12
  81d6eb:	4c 8b bd 90 f7 ff ff 	mov    -0x870(%rbp),%r15
  81d6f2:	c4 41 21 59 cc       	vmulpd %xmm12,%xmm11,%xmm9
  81d6f7:	4c 03 f8             	add    %rax,%r15
  81d6fa:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81d6ff:	c4 01 11 16 3c 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm15
  81d705:	4c 8d 3c 06          	lea    (%rsi,%rax,1),%r15
  81d709:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  81d70e:	4a 8d 04 b0          	lea    (%rax,%r14,4),%rax
  81d712:	c4 01 09 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm14,%xmm13
  81d718:	c4 41 01 5c d5       	vsubpd %xmm13,%xmm15,%xmm10
  81d71d:	c4 41 31 59 da       	vmulpd %xmm10,%xmm9,%xmm11
  81d722:	c4 41 79 11 58 18    	vmovupd %xmm11,0x18(%r8)
  81d728:	49 83 c0 20          	add    $0x20,%r8
  81d72c:	48 3b bd a0 f7 ff ff 	cmp    -0x860(%rbp),%rdi
  81d733:	0f 82 df fe ff ff    	jb     81d618 <pre_step3d_mod_mp_pre_step3d_tile_+0x9068>
  81d739:	44 8b 85 70 f6 ff ff 	mov    -0x990(%rbp),%r8d
  81d740:	48 8b 85 78 f6 ff ff 	mov    -0x988(%rbp),%rax
  81d747:	41 8d 50 01          	lea    0x1(%r8),%edx
  81d74b:	3b 95 28 f7 ff ff    	cmp    -0x8d8(%rbp),%edx
  81d751:	0f 87 89 02 00 00    	ja     81d9e0 <pre_step3d_mod_mp_pre_step3d_tile_+0x9430>
  81d757:	4d 63 c0             	movslq %r8d,%r8
  81d75a:	4c 8b bd 68 f6 ff ff 	mov    -0x998(%rbp),%r15
  81d761:	4d 2b f8             	sub    %r8,%r15
  81d764:	49 83 ff 02          	cmp    $0x2,%r15
  81d768:	0f 8c 22 74 00 00    	jl     824b90 <pre_step3d_mod_mp_pre_step3d_tile_+0x105e0>
  81d76e:	4d 89 c4             	mov    %r8,%r12
  81d771:	45 33 c9             	xor    %r9d,%r9d
  81d774:	4c 0f af a5 58 f7 ff 	imul   -0x8a8(%rbp),%r12
  81d77b:	ff 
  81d77c:	48 8b bd e0 f5 ff ff 	mov    -0xa20(%rbp),%rdi
  81d783:	45 89 fe             	mov    %r15d,%r14d
  81d786:	4c 8b 9d e8 f5 ff ff 	mov    -0xa18(%rbp),%r11
  81d78d:	41 83 e6 fe          	and    $0xfffffffe,%r14d
  81d791:	48 8b 95 48 f7 ff ff 	mov    -0x8b8(%rbp),%rdx
  81d798:	49 0f af d0          	imul   %r8,%rdx
  81d79c:	4c 8b ad f0 f6 ff ff 	mov    -0x910(%rbp),%r13
  81d7a3:	48 03 f8             	add    %rax,%rdi
  81d7a6:	49 03 fc             	add    %r12,%rdi
  81d7a9:	4c 03 d8             	add    %rax,%r11
  81d7ac:	4d 03 dc             	add    %r12,%r11
  81d7af:	4d 89 c4             	mov    %r8,%r12
  81d7b2:	4c 0f af a5 50 f7 ff 	imul   -0x8b0(%rbp),%r12
  81d7b9:	ff 
  81d7ba:	48 8b b5 b8 f5 ff ff 	mov    -0xa48(%rbp),%rsi
  81d7c1:	4b 8d 4c c5 00       	lea    0x0(%r13,%r8,8),%rcx
  81d7c6:	48 89 8d 80 f5 ff ff 	mov    %rcx,-0xa80(%rbp)
  81d7cd:	48 8b 8d f8 f6 ff ff 	mov    -0x908(%rbp),%rcx
  81d7d4:	4c 8b 95 c8 f5 ff ff 	mov    -0xa38(%rbp),%r10
  81d7db:	4c 89 bd 88 f7 ff ff 	mov    %r15,-0x878(%rbp)
  81d7e2:	4d 63 f6             	movslq %r14d,%r14
  81d7e5:	4c 8d 2c 0e          	lea    (%rsi,%rcx,1),%r13
  81d7e9:	4c 03 a5 e8 f6 ff ff 	add    -0x918(%rbp),%r12
  81d7f0:	4c 03 d1             	add    %rcx,%r10
  81d7f3:	33 c9                	xor    %ecx,%ecx
  81d7f5:	4c 03 ea             	add    %rdx,%r13
  81d7f8:	33 f6                	xor    %esi,%esi
  81d7fa:	4c 03 d2             	add    %rdx,%r10
  81d7fd:	4c 8b bd 80 f5 ff ff 	mov    -0xa80(%rbp),%r15
  81d804:	33 d2                	xor    %edx,%edx
  81d806:	4c 89 85 80 f6 ff ff 	mov    %r8,-0x980(%rbp)
  81d80d:	48 89 85 78 f6 ff ff 	mov    %rax,-0x988(%rbp)
  81d814:	4c 8b 85 58 f7 ff ff 	mov    -0x8a8(%rbp),%r8
  81d81b:	49 8d 04 33          	lea    (%r11,%rsi,1),%rax
  81d81f:	c5 7b 10 08          	vmovsd (%rax),%xmm9
  81d823:	c4 21 31 16 1c 00    	vmovhpd (%rax,%r8,1),%xmm9,%xmm11
  81d829:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  81d82d:	c5 7b 10 10          	vmovsd (%rax),%xmm10
  81d831:	4a 8d 34 46          	lea    (%rsi,%r8,2),%rsi
  81d835:	c4 21 29 16 24 00    	vmovhpd (%rax,%r8,1),%xmm10,%xmm12
  81d83b:	4d 8d 04 0c          	lea    (%r12,%rcx,1),%r8
  81d83f:	c4 41 21 5c ec       	vsubpd %xmm12,%xmm11,%xmm13
  81d844:	c4 41 69 5e f5       	vdivpd %xmm13,%xmm2,%xmm14
  81d849:	c5 09 59 cd          	vmulpd %xmm5,%xmm14,%xmm9
  81d84d:	48 8b 85 50 f7 ff ff 	mov    -0x8b0(%rbp),%rax
  81d854:	c4 41 7b 10 38       	vmovsd (%r8),%xmm15
  81d859:	c4 41 01 16 14 00    	vmovhpd (%r8,%rax,1),%xmm15,%xmm10
  81d85f:	48 8d 0c 41          	lea    (%rcx,%rax,2),%rcx
  81d863:	48 8b 85 48 f7 ff ff 	mov    -0x8b8(%rbp),%rax
  81d86a:	4d 8d 04 12          	lea    (%r10,%rdx,1),%r8
  81d86e:	c4 41 7b 10 18       	vmovsd (%r8),%xmm11
  81d873:	c4 41 31 59 fa       	vmulpd %xmm10,%xmm9,%xmm15
  81d878:	c4 41 21 16 2c 00    	vmovhpd (%r8,%rax,1),%xmm11,%xmm13
  81d87e:	4d 8d 44 15 00       	lea    0x0(%r13,%rdx,1),%r8
  81d883:	c4 41 7b 10 20       	vmovsd (%r8),%xmm12
  81d888:	48 8d 14 42          	lea    (%rdx,%rax,2),%rdx
  81d88c:	c4 41 19 16 34 00    	vmovhpd (%r8,%rax,1),%xmm12,%xmm14
  81d892:	c4 41 11 5c ce       	vsubpd %xmm14,%xmm13,%xmm9
  81d897:	c4 41 01 59 d1       	vmulpd %xmm9,%xmm15,%xmm10
  81d89c:	c4 01 79 11 54 cf 08 	vmovupd %xmm10,0x8(%r15,%r9,8)
  81d8a3:	49 83 c1 02          	add    $0x2,%r9
  81d8a7:	4d 3b ce             	cmp    %r14,%r9
  81d8aa:	0f 82 64 ff ff ff    	jb     81d814 <pre_step3d_mod_mp_pre_step3d_tile_+0x9264>
  81d8b0:	4c 8b bd 88 f7 ff ff 	mov    -0x878(%rbp),%r15
  81d8b7:	4c 8b 85 80 f6 ff ff 	mov    -0x980(%rbp),%r8
  81d8be:	48 8b 85 78 f6 ff ff 	mov    -0x988(%rbp),%rax
  81d8c5:	4c 8b 9d 48 f7 ff ff 	mov    -0x8b8(%rbp),%r11
  81d8cc:	4c 8b 95 58 f7 ff ff 	mov    -0x8a8(%rbp),%r10
  81d8d3:	4c 8b 8d 50 f7 ff ff 	mov    -0x8b0(%rbp),%r9
  81d8da:	4d 0f af de          	imul   %r14,%r11
  81d8de:	4d 0f af d6          	imul   %r14,%r10
  81d8e2:	4d 0f af ce          	imul   %r14,%r9
  81d8e6:	4d 3b f7             	cmp    %r15,%r14
  81d8e9:	0f 83 f1 00 00 00    	jae    81d9e0 <pre_step3d_mod_mp_pre_step3d_tile_+0x9430>
  81d8ef:	4c 89 c6             	mov    %r8,%rsi
  81d8f2:	48 0f af b5 58 f7 ff 	imul   -0x8a8(%rbp),%rsi
  81d8f9:	ff 
  81d8fa:	48 8b bd e0 f5 ff ff 	mov    -0xa20(%rbp),%rdi
  81d901:	4c 8b a5 e8 f5 ff ff 	mov    -0xa18(%rbp),%r12
  81d908:	48 8b 8d f0 f6 ff ff 	mov    -0x910(%rbp),%rcx
  81d90f:	48 8b 95 f8 f6 ff ff 	mov    -0x908(%rbp),%rdx
  81d916:	48 03 f8             	add    %rax,%rdi
  81d919:	48 03 fe             	add    %rsi,%rdi
  81d91c:	4c 03 e0             	add    %rax,%r12
  81d91f:	4c 03 e6             	add    %rsi,%r12
  81d922:	4c 89 c6             	mov    %r8,%rsi
  81d925:	48 0f af b5 50 f7 ff 	imul   -0x8b0(%rbp),%rsi
  81d92c:	ff 
  81d92d:	4c 89 bd 88 f7 ff ff 	mov    %r15,-0x878(%rbp)
  81d934:	4e 8d 2c c1          	lea    (%rcx,%r8,8),%r13
  81d938:	4c 0f af 85 48 f7 ff 	imul   -0x8b8(%rbp),%r8
  81d93f:	ff 
  81d940:	4c 89 ad 88 f5 ff ff 	mov    %r13,-0xa78(%rbp)
  81d947:	48 8b 8d b8 f5 ff ff 	mov    -0xa48(%rbp),%rcx
  81d94e:	4c 8b ad c8 f5 ff ff 	mov    -0xa38(%rbp),%r13
  81d955:	48 89 85 78 f6 ff ff 	mov    %rax,-0x988(%rbp)
  81d95c:	48 03 b5 e8 f6 ff ff 	add    -0x918(%rbp),%rsi
  81d963:	48 03 ca             	add    %rdx,%rcx
  81d966:	48 8b 85 88 f5 ff ff 	mov    -0xa78(%rbp),%rax
  81d96d:	49 03 d5             	add    %r13,%rdx
  81d970:	4c 8b ad 58 f7 ff ff 	mov    -0x8a8(%rbp),%r13
  81d977:	49 03 c8             	add    %r8,%rcx
  81d97a:	4c 8b bd 48 f7 ff ff 	mov    -0x8b8(%rbp),%r15
  81d981:	49 03 d0             	add    %r8,%rdx
  81d984:	4c 8b 85 50 f7 ff ff 	mov    -0x8b0(%rbp),%r8
  81d98b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  81d990:	c4 01 7b 10 0c 22    	vmovsd (%r10,%r12,1),%xmm9
  81d996:	c4 41 7b 10 2c 13    	vmovsd (%r11,%rdx,1),%xmm13
  81d99c:	c4 41 33 5c 14 3a    	vsubsd (%r10,%rdi,1),%xmm9,%xmm10
  81d9a2:	4d 03 d5             	add    %r13,%r10
  81d9a5:	c4 41 13 5c 3c 0b    	vsubsd (%r11,%rcx,1),%xmm13,%xmm15
  81d9ab:	c4 41 3b 5e da       	vdivsd %xmm10,%xmm8,%xmm11
  81d9b0:	c4 41 73 59 e3       	vmulsd %xmm11,%xmm1,%xmm12
  81d9b5:	4d 03 df             	add    %r15,%r11
  81d9b8:	c4 41 1b 59 34 31    	vmulsd (%r9,%rsi,1),%xmm12,%xmm14
  81d9be:	4d 03 c8             	add    %r8,%r9
  81d9c1:	c4 41 0b 59 cf       	vmulsd %xmm15,%xmm14,%xmm9
  81d9c6:	c4 21 7b 11 4c f0 08 	vmovsd %xmm9,0x8(%rax,%r14,8)
  81d9cd:	49 ff c6             	inc    %r14
  81d9d0:	4c 3b b5 88 f7 ff ff 	cmp    -0x878(%rbp),%r14
  81d9d7:	72 b7                	jb     81d990 <pre_step3d_mod_mp_pre_step3d_tile_+0x93e0>
  81d9d9:	48 8b 85 78 f6 ff ff 	mov    -0x988(%rbp),%rax
  81d9e0:	48 8b 8d f8 f6 ff ff 	mov    -0x908(%rbp),%rcx
  81d9e7:	48 8b b5 f0 f6 ff ff 	mov    -0x910(%rbp),%rsi
  81d9ee:	48 8b 95 c8 f6 ff ff 	mov    -0x938(%rbp),%rdx
  81d9f5:	48 8b bd 08 f7 ff ff 	mov    -0x8f8(%rbp),%rdi
  81d9fc:	48 ff c7             	inc    %rdi
  81d9ff:	48 03 8d d8 f6 ff ff 	add    -0x928(%rbp),%rcx
  81da06:	48 03 b5 30 f7 ff ff 	add    -0x8d0(%rbp),%rsi
  81da0d:	48 03 85 d0 f6 ff ff 	add    -0x930(%rbp),%rax
  81da14:	48 01 95 e8 f6 ff ff 	add    %rdx,-0x918(%rbp)
  81da1b:	48 01 95 00 f7 ff ff 	add    %rdx,-0x900(%rbp)
  81da22:	48 89 8d f8 f6 ff ff 	mov    %rcx,-0x908(%rbp)
  81da29:	48 89 b5 f0 f6 ff ff 	mov    %rsi,-0x910(%rbp)
  81da30:	48 89 bd 08 f7 ff ff 	mov    %rdi,-0x8f8(%rbp)
  81da37:	48 3b bd 10 f7 ff ff 	cmp    -0x8f0(%rbp),%rdi
  81da3e:	0f 82 c6 fa ff ff    	jb     81d50a <pre_step3d_mod_mp_pre_step3d_tile_+0x8f5a>
  81da44:	8b bd b8 f4 ff ff    	mov    -0xb48(%rbp),%edi
  81da4a:	44 8b 85 c0 f4 ff ff 	mov    -0xb40(%rbp),%r8d
  81da51:	4c 8b 8d b8 f6 ff ff 	mov    -0x948(%rbp),%r9
  81da58:	3b bd d8 f4 ff ff    	cmp    -0xb28(%rbp),%edi
  81da5e:	0f 85 38 04 00 00    	jne    81de9c <pre_step3d_mod_mp_pre_step3d_tile_+0x98ec>
  81da64:	48 83 bd c0 f3 ff ff 	cmpq   $0x8,-0xc40(%rbp)
  81da6b:	08 
  81da6c:	0f 85 55 01 00 00    	jne    81dbc7 <pre_step3d_mod_mp_pre_step3d_tile_+0x9617>
  81da72:	48 83 bd c8 f3 ff ff 	cmpq   $0x8,-0xc38(%rbp)
  81da79:	08 
  81da7a:	0f 85 47 01 00 00    	jne    81dbc7 <pre_step3d_mod_mp_pre_step3d_tile_+0x9617>
  81da80:	4c 8b ad 08 f6 ff ff 	mov    -0x9f8(%rbp),%r13
  81da87:	45 33 e4             	xor    %r12d,%r12d
  81da8a:	4c 8b 9d 48 f5 ff ff 	mov    -0xab8(%rbp),%r11
  81da91:	48 83 bd 10 f7 ff ff 	cmpq   $0x0,-0x8f0(%rbp)
  81da98:	00 
  81da99:	0f 8e fd 03 00 00    	jle    81de9c <pre_step3d_mod_mp_pre_step3d_tile_+0x98ec>
  81da9f:	89 bd b8 f4 ff ff    	mov    %edi,-0xb48(%rbp)
  81daa5:	44 89 85 c0 f4 ff ff 	mov    %r8d,-0xb40(%rbp)
  81daac:	48 8b 95 b0 f6 ff ff 	mov    -0x950(%rbp),%rdx
  81dab3:	48 8b 8d 38 f5 ff ff 	mov    -0xac8(%rbp),%rcx
  81daba:	48 8b b5 60 f7 ff ff 	mov    -0x8a0(%rbp),%rsi
  81dac1:	48 8b bd 30 f7 ff ff 	mov    -0x8d0(%rbp),%rdi
  81dac8:	4c 8b 85 10 f7 ff ff 	mov    -0x8f0(%rbp),%r8
  81dacf:	4c 8b 95 c0 f6 ff ff 	mov    -0x940(%rbp),%r10
  81dad6:	4d 3b ca             	cmp    %r10,%r9
  81dad9:	0f 8c c4 00 00 00    	jl     81dba3 <pre_step3d_mod_mp_pre_step3d_tile_+0x95f3>
  81dadf:	48 83 fe 04          	cmp    $0x4,%rsi
  81dae3:	0f 8c 79 70 00 00    	jl     824b62 <pre_step3d_mod_mp_pre_step3d_tile_+0x105b2>
  81dae9:	4c 89 8d b8 f6 ff ff 	mov    %r9,-0x948(%rbp)
  81daf0:	48 89 d0             	mov    %rdx,%rax
  81daf3:	4c 8b 8d 08 f5 ff ff 	mov    -0xaf8(%rbp),%r9
  81dafa:	45 33 ff             	xor    %r15d,%r15d
  81dafd:	4c 8b 95 00 f5 ff ff 	mov    -0xb00(%rbp),%r10
  81db04:	4d 89 ee             	mov    %r13,%r14
  81db07:	c4 01 4d 59 0c fa    	vmulpd (%r10,%r15,8),%ymm6,%ymm9
  81db0d:	c4 01 35 59 14 f9    	vmulpd (%r9,%r15,8),%ymm9,%ymm10
  81db13:	c4 01 2d 59 1c fb    	vmulpd (%r11,%r15,8),%ymm10,%ymm11
  81db19:	49 83 c7 04          	add    $0x4,%r15
  81db1d:	c4 41 25 58 66 08    	vaddpd 0x8(%r14),%ymm11,%ymm12
  81db23:	c4 41 7d 11 66 08    	vmovupd %ymm12,0x8(%r14)
  81db29:	49 83 c6 20          	add    $0x20,%r14
  81db2d:	4c 3b fa             	cmp    %rdx,%r15
  81db30:	72 d5                	jb     81db07 <pre_step3d_mod_mp_pre_step3d_tile_+0x9557>
  81db32:	4c 8b 95 c0 f6 ff ff 	mov    -0x940(%rbp),%r10
  81db39:	4c 8b 8d b8 f6 ff ff 	mov    -0x948(%rbp),%r9
  81db40:	4c 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%r15
  81db47:	00 
  81db48:	48 3b c6             	cmp    %rsi,%rax
  81db4b:	73 56                	jae    81dba3 <pre_step3d_mod_mp_pre_step3d_tile_+0x95f3>
  81db4d:	4c 89 8d b8 f6 ff ff 	mov    %r9,-0x948(%rbp)
  81db54:	4d 8d 74 c5 00       	lea    0x0(%r13,%rax,8),%r14
  81db59:	4c 8b 8d 08 f5 ff ff 	mov    -0xaf8(%rbp),%r9
  81db60:	4c 8b 95 00 f5 ff ff 	mov    -0xb00(%rbp),%r10
  81db67:	c4 01 43 59 0c 17    	vmulsd (%r15,%r10,1),%xmm7,%xmm9
  81db6d:	48 ff c0             	inc    %rax
  81db70:	c4 01 33 59 14 0f    	vmulsd (%r15,%r9,1),%xmm9,%xmm10
  81db76:	c4 01 2b 59 1c 1f    	vmulsd (%r15,%r11,1),%xmm10,%xmm11
  81db7c:	49 83 c7 08          	add    $0x8,%r15
  81db80:	c4 41 23 58 66 08    	vaddsd 0x8(%r14),%xmm11,%xmm12
  81db86:	c4 41 7b 11 66 08    	vmovsd %xmm12,0x8(%r14)
  81db8c:	49 83 c6 08          	add    $0x8,%r14
  81db90:	48 3b c6             	cmp    %rsi,%rax
  81db93:	72 d2                	jb     81db67 <pre_step3d_mod_mp_pre_step3d_tile_+0x95b7>
  81db95:	4c 8b 95 c0 f6 ff ff 	mov    -0x940(%rbp),%r10
  81db9c:	4c 8b 8d b8 f6 ff ff 	mov    -0x948(%rbp),%r9
  81dba3:	49 ff c4             	inc    %r12
  81dba6:	4c 03 ef             	add    %rdi,%r13
  81dba9:	4c 03 d9             	add    %rcx,%r11
  81dbac:	4d 3b e0             	cmp    %r8,%r12
  81dbaf:	0f 82 21 ff ff ff    	jb     81dad6 <pre_step3d_mod_mp_pre_step3d_tile_+0x9526>
  81dbb5:	8b bd b8 f4 ff ff    	mov    -0xb48(%rbp),%edi
  81dbbb:	44 8b 85 c0 f4 ff ff 	mov    -0xb40(%rbp),%r8d
  81dbc2:	e9 d5 02 00 00       	jmpq   81de9c <pre_step3d_mod_mp_pre_step3d_tile_+0x98ec>
  81dbc7:	33 c9                	xor    %ecx,%ecx
  81dbc9:	48 8b 85 08 f6 ff ff 	mov    -0x9f8(%rbp),%rax
  81dbd0:	33 d2                	xor    %edx,%edx
  81dbd2:	48 83 bd 10 f7 ff ff 	cmpq   $0x0,-0x8f0(%rbp)
  81dbd9:	00 
  81dbda:	0f 8e bc 02 00 00    	jle    81de9c <pre_step3d_mod_mp_pre_step3d_tile_+0x98ec>
  81dbe0:	89 bd b8 f4 ff ff    	mov    %edi,-0xb48(%rbp)
  81dbe6:	44 89 85 c0 f4 ff ff 	mov    %r8d,-0xb40(%rbp)
  81dbed:	4c 89 8d b8 f6 ff ff 	mov    %r9,-0x948(%rbp)
  81dbf4:	4c 8b ad 60 f7 ff ff 	mov    -0x8a0(%rbp),%r13
  81dbfb:	4c 8b b5 c8 f3 ff ff 	mov    -0xc38(%rbp),%r14
  81dc02:	4c 8b a5 c0 f3 ff ff 	mov    -0xc40(%rbp),%r12
  81dc09:	48 8b b5 b8 f6 ff ff 	mov    -0x948(%rbp),%rsi
  81dc10:	48 3b b5 c0 f6 ff ff 	cmp    -0x940(%rbp),%rsi
  81dc17:	0f 8c 4d 02 00 00    	jl     81de6a <pre_step3d_mod_mp_pre_step3d_tile_+0x98ba>
  81dc1d:	49 83 fd 04          	cmp    $0x4,%r13
  81dc21:	0f 8c 61 6f 00 00    	jl     824b88 <pre_step3d_mod_mp_pre_step3d_tile_+0x105d8>
  81dc27:	48 8d 70 08          	lea    0x8(%rax),%rsi
  81dc2b:	48 83 e6 0f          	and    $0xf,%rsi
  81dc2f:	85 f6                	test   %esi,%esi
  81dc31:	74 11                	je     81dc44 <pre_step3d_mod_mp_pre_step3d_tile_+0x9694>
  81dc33:	f7 c6 07 00 00 00    	test   $0x7,%esi
  81dc39:	0f 85 49 6f 00 00    	jne    824b88 <pre_step3d_mod_mp_pre_step3d_tile_+0x105d8>
  81dc3f:	be 01 00 00 00       	mov    $0x1,%esi
  81dc44:	41 89 f2             	mov    %esi,%r10d
  81dc47:	49 8d 7a 04          	lea    0x4(%r10),%rdi
  81dc4b:	4c 3b ef             	cmp    %rdi,%r13
  81dc4e:	0f 8c 34 6f 00 00    	jl     824b88 <pre_step3d_mod_mp_pre_step3d_tile_+0x105d8>
  81dc54:	8b bd 30 f5 ff ff    	mov    -0xad0(%rbp),%edi
  81dc5a:	41 89 fb             	mov    %edi,%r11d
  81dc5d:	44 2b de             	sub    %esi,%r11d
  81dc60:	45 33 c0             	xor    %r8d,%r8d
  81dc63:	41 83 e3 03          	and    $0x3,%r11d
  81dc67:	45 33 c9             	xor    %r9d,%r9d
  81dc6a:	4c 8b bd 48 f5 ff ff 	mov    -0xab8(%rbp),%r15
  81dc71:	41 f7 db             	neg    %r11d
  81dc74:	44 03 df             	add    %edi,%r11d
  81dc77:	33 ff                	xor    %edi,%edi
  81dc79:	4d 63 db             	movslq %r11d,%r11
  81dc7c:	4c 03 fa             	add    %rdx,%r15
  81dc7f:	4c 89 bd 40 f5 ff ff 	mov    %r15,-0xac0(%rbp)
  81dc86:	85 f6                	test   %esi,%esi
  81dc88:	76 6b                	jbe    81dcf5 <pre_step3d_mod_mp_pre_step3d_tile_+0x9745>
  81dc8a:	48 89 95 18 f5 ff ff 	mov    %rdx,-0xae8(%rbp)
  81dc91:	48 89 8d 20 f5 ff ff 	mov    %rcx,-0xae0(%rbp)
  81dc98:	48 89 c2             	mov    %rax,%rdx
  81dc9b:	48 89 f9             	mov    %rdi,%rcx
  81dc9e:	4c 89 fe             	mov    %r15,%rsi
  81dca1:	4c 8b ad f8 f4 ff ff 	mov    -0xb08(%rbp),%r13
  81dca8:	4c 8b bd 38 f7 ff ff 	mov    -0x8c8(%rbp),%r15
  81dcaf:	c4 01 43 59 0c 39    	vmulsd (%r9,%r15,1),%xmm7,%xmm9
  81dcb5:	49 ff c0             	inc    %r8
  81dcb8:	c4 21 33 59 14 2f    	vmulsd (%rdi,%r13,1),%xmm9,%xmm10
  81dcbe:	4d 03 cc             	add    %r12,%r9
  81dcc1:	c5 2b 59 1c 31       	vmulsd (%rcx,%rsi,1),%xmm10,%xmm11
  81dcc6:	49 03 fe             	add    %r14,%rdi
  81dcc9:	48 83 c1 08          	add    $0x8,%rcx
  81dccd:	c5 23 58 62 08       	vaddsd 0x8(%rdx),%xmm11,%xmm12
  81dcd2:	c5 7b 11 62 08       	vmovsd %xmm12,0x8(%rdx)
  81dcd7:	48 83 c2 08          	add    $0x8,%rdx
  81dcdb:	4d 3b c2             	cmp    %r10,%r8
  81dcde:	72 cf                	jb     81dcaf <pre_step3d_mod_mp_pre_step3d_tile_+0x96ff>
  81dce0:	48 8b 95 18 f5 ff ff 	mov    -0xae8(%rbp),%rdx
  81dce7:	48 8b 8d 20 f5 ff ff 	mov    -0xae0(%rbp),%rcx
  81dcee:	4c 8b ad 60 f7 ff ff 	mov    -0x8a0(%rbp),%r13
  81dcf5:	48 8b b5 10 f5 ff ff 	mov    -0xaf0(%rbp),%rsi
  81dcfc:	4d 89 f0             	mov    %r14,%r8
  81dcff:	4c 89 e7             	mov    %r12,%rdi
  81dd02:	4e 8d 0c d0          	lea    (%rax,%r10,8),%r9
  81dd06:	48 89 85 28 f5 ff ff 	mov    %rax,-0xad8(%rbp)
  81dd0d:	48 89 95 18 f5 ff ff 	mov    %rdx,-0xae8(%rbp)
  81dd14:	48 03 f2             	add    %rdx,%rsi
  81dd17:	48 89 8d 20 f5 ff ff 	mov    %rcx,-0xae0(%rbp)
  81dd1e:	4d 0f af c2          	imul   %r10,%r8
  81dd22:	49 0f af fa          	imul   %r10,%rdi
  81dd26:	48 8b 85 40 f5 ff ff 	mov    -0xac0(%rbp),%rax
  81dd2d:	48 8b 95 e8 f4 ff ff 	mov    -0xb18(%rbp),%rdx
  81dd34:	48 8b 8d f0 f4 ff ff 	mov    -0xb10(%rbp),%rcx
  81dd3b:	4c 8b ad f8 f4 ff ff 	mov    -0xb08(%rbp),%r13
  81dd42:	4c 8b bd 38 f7 ff ff 	mov    -0x8c8(%rbp),%r15
  81dd49:	4c 03 ff             	add    %rdi,%r15
  81dd4c:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  81dd51:	c4 01 31 16 14 27    	vmovhpd (%r15,%r12,1),%xmm9,%xmm10
  81dd57:	4f 8d 7c 05 00       	lea    0x0(%r13,%r8,1),%r15
  81dd5c:	c4 41 59 59 e2       	vmulpd %xmm10,%xmm4,%xmm12
  81dd61:	c4 41 7b 10 1f       	vmovsd (%r15),%xmm11
  81dd66:	c4 01 21 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm11,%xmm13
  81dd6c:	4c 8d 3c 39          	lea    (%rcx,%rdi,1),%r15
  81dd70:	c4 41 19 59 f5       	vmulpd %xmm13,%xmm12,%xmm14
  81dd75:	c4 41 7b 10 17       	vmovsd (%r15),%xmm10
  81dd7a:	4a 8d 3c a7          	lea    (%rdi,%r12,4),%rdi
  81dd7e:	c4 01 29 16 1c 27    	vmovhpd (%r15,%r12,1),%xmm10,%xmm11
  81dd84:	4e 8d 3c 02          	lea    (%rdx,%r8,1),%r15
  81dd88:	c4 21 09 59 3c d0    	vmulpd (%rax,%r10,8),%xmm14,%xmm15
  81dd8e:	c4 41 59 59 eb       	vmulpd %xmm11,%xmm4,%xmm13
  81dd93:	c4 41 01 58 49 08    	vaddpd 0x8(%r9),%xmm15,%xmm9
  81dd99:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81dd9e:	4f 8d 04 b0          	lea    (%r8,%r14,4),%r8
  81dda2:	c4 01 19 16 34 37    	vmovhpd (%r15,%r14,1),%xmm12,%xmm14
  81dda8:	c4 41 11 59 fe       	vmulpd %xmm14,%xmm13,%xmm15
  81ddad:	c4 41 79 11 49 08    	vmovupd %xmm9,0x8(%r9)
  81ddb3:	c4 21 01 59 4c d6 10 	vmulpd 0x10(%rsi,%r10,8),%xmm15,%xmm9
  81ddba:	c4 41 31 58 51 18    	vaddpd 0x18(%r9),%xmm9,%xmm10
  81ddc0:	49 83 c2 04          	add    $0x4,%r10
  81ddc4:	c4 41 79 11 51 18    	vmovupd %xmm10,0x18(%r9)
  81ddca:	49 83 c1 20          	add    $0x20,%r9
  81ddce:	4d 3b d3             	cmp    %r11,%r10
  81ddd1:	0f 82 6b ff ff ff    	jb     81dd42 <pre_step3d_mod_mp_pre_step3d_tile_+0x9792>
  81ddd7:	48 8b 85 28 f5 ff ff 	mov    -0xad8(%rbp),%rax
  81ddde:	48 8b 95 18 f5 ff ff 	mov    -0xae8(%rbp),%rdx
  81dde5:	48 8b 8d 20 f5 ff ff 	mov    -0xae0(%rbp),%rcx
  81ddec:	4c 8b ad 60 f7 ff ff 	mov    -0x8a0(%rbp),%r13
  81ddf3:	4d 89 f0             	mov    %r14,%r8
  81ddf6:	4d 89 e2             	mov    %r12,%r10
  81ddf9:	4d 0f af c3          	imul   %r11,%r8
  81ddfd:	4d 0f af d3          	imul   %r11,%r10
  81de01:	4e 8d 0c dd 00 00 00 	lea    0x0(,%r11,8),%r9
  81de08:	00 
  81de09:	4d 3b dd             	cmp    %r13,%r11
  81de0c:	73 5c                	jae    81de6a <pre_step3d_mod_mp_pre_step3d_tile_+0x98ba>
  81de0e:	48 8b bd 48 f5 ff ff 	mov    -0xab8(%rbp),%rdi
  81de15:	4a 8d 34 d8          	lea    (%rax,%r11,8),%rsi
  81de19:	48 89 8d 20 f5 ff ff 	mov    %rcx,-0xae0(%rbp)
  81de20:	48 8b 8d f8 f4 ff ff 	mov    -0xb08(%rbp),%rcx
  81de27:	4c 8b bd 38 f7 ff ff 	mov    -0x8c8(%rbp),%r15
  81de2e:	48 03 fa             	add    %rdx,%rdi
  81de31:	c4 01 43 59 0c 3a    	vmulsd (%r10,%r15,1),%xmm7,%xmm9
  81de37:	49 ff c3             	inc    %r11
  81de3a:	c4 41 33 59 14 08    	vmulsd (%r8,%rcx,1),%xmm9,%xmm10
  81de40:	4d 03 d4             	add    %r12,%r10
  81de43:	c4 41 2b 59 1c 39    	vmulsd (%r9,%rdi,1),%xmm10,%xmm11
  81de49:	4d 03 c6             	add    %r14,%r8
  81de4c:	49 83 c1 08          	add    $0x8,%r9
  81de50:	c5 23 58 66 08       	vaddsd 0x8(%rsi),%xmm11,%xmm12
  81de55:	c5 7b 11 66 08       	vmovsd %xmm12,0x8(%rsi)
  81de5a:	48 83 c6 08          	add    $0x8,%rsi
  81de5e:	4d 3b dd             	cmp    %r13,%r11
  81de61:	72 ce                	jb     81de31 <pre_step3d_mod_mp_pre_step3d_tile_+0x9881>
  81de63:	48 8b 8d 20 f5 ff ff 	mov    -0xae0(%rbp),%rcx
  81de6a:	48 ff c1             	inc    %rcx
  81de6d:	48 03 95 38 f5 ff ff 	add    -0xac8(%rbp),%rdx
  81de74:	48 03 85 30 f7 ff ff 	add    -0x8d0(%rbp),%rax
  81de7b:	48 3b 8d 10 f7 ff ff 	cmp    -0x8f0(%rbp),%rcx
  81de82:	0f 82 81 fd ff ff    	jb     81dc09 <pre_step3d_mod_mp_pre_step3d_tile_+0x9659>
  81de88:	8b bd b8 f4 ff ff    	mov    -0xb48(%rbp),%edi
  81de8e:	44 8b 85 c0 f4 ff ff 	mov    -0xb40(%rbp),%r8d
  81de95:	4c 8b 8d b8 f6 ff ff 	mov    -0x948(%rbp),%r9
  81de9c:	48 83 bd c8 f4 ff ff 	cmpq   $0x8,-0xb38(%rbp)
  81dea3:	08 
  81dea4:	0f 85 ef 00 00 00    	jne    81df99 <pre_step3d_mod_mp_pre_step3d_tile_+0x99e9>
  81deaa:	48 83 bd d0 f4 ff ff 	cmpq   $0x8,-0xb30(%rbp)
  81deb1:	08 
  81deb2:	0f 85 e1 00 00 00    	jne    81df99 <pre_step3d_mod_mp_pre_step3d_tile_+0x99e9>
  81deb8:	4c 3b 8d c0 f6 ff ff 	cmp    -0x940(%rbp),%r9
  81debf:	0f 8c 9e 02 00 00    	jl     81e163 <pre_step3d_mod_mp_pre_step3d_tile_+0x9bb3>
  81dec5:	48 83 bd 60 f7 ff ff 	cmpq   $0x4,-0x8a0(%rbp)
  81decc:	04 
  81decd:	0f 8c 96 6c 00 00    	jl     824b69 <pre_step3d_mod_mp_pre_step3d_tile_+0x105b9>
  81ded3:	49 63 d0             	movslq %r8d,%rdx
  81ded6:	33 f6                	xor    %esi,%esi
  81ded8:	48 8b 8d e0 f3 ff ff 	mov    -0xc20(%rbp),%rcx
  81dedf:	48 0f af ca          	imul   %rdx,%rcx
  81dee3:	48 0f af 95 e8 f3 ff 	imul   -0xc18(%rbp),%rdx
  81deea:	ff 
  81deeb:	48 8b 85 b0 f6 ff ff 	mov    -0x950(%rbp),%rax
  81def2:	49 89 c2             	mov    %rax,%r10
  81def5:	48 03 8d 10 f4 ff ff 	add    -0xbf0(%rbp),%rcx
  81defc:	48 03 95 08 f4 ff ff 	add    -0xbf8(%rbp),%rdx
  81df03:	4c 8b 9d 20 f4 ff ff 	mov    -0xbe0(%rbp),%r11
  81df0a:	4c 8b a5 50 f6 ff ff 	mov    -0x9b0(%rbp),%r12
  81df11:	c5 4d 59 0c f2       	vmulpd (%rdx,%rsi,8),%ymm6,%ymm9
  81df16:	c5 4d 59 14 f1       	vmulpd (%rcx,%rsi,8),%ymm6,%ymm10
  81df1b:	c4 41 7d 11 0c f4    	vmovupd %ymm9,(%r12,%rsi,8)
  81df21:	c4 41 7d 11 14 f3    	vmovupd %ymm10,(%r11,%rsi,8)
  81df27:	48 83 c6 04          	add    $0x4,%rsi
  81df2b:	49 3b f2             	cmp    %r10,%rsi
  81df2e:	72 e1                	jb     81df11 <pre_step3d_mod_mp_pre_step3d_tile_+0x9961>
  81df30:	48 3b 85 60 f7 ff ff 	cmp    -0x8a0(%rbp),%rax
  81df37:	0f 83 26 02 00 00    	jae    81e163 <pre_step3d_mod_mp_pre_step3d_tile_+0x9bb3>
  81df3d:	49 63 d0             	movslq %r8d,%rdx
  81df40:	48 8b 8d e0 f3 ff ff 	mov    -0xc20(%rbp),%rcx
  81df47:	48 0f af ca          	imul   %rdx,%rcx
  81df4b:	48 0f af 95 e8 f3 ff 	imul   -0xc18(%rbp),%rdx
  81df52:	ff 
  81df53:	48 03 8d 10 f4 ff ff 	add    -0xbf0(%rbp),%rcx
  81df5a:	48 03 95 08 f4 ff ff 	add    -0xbf8(%rbp),%rdx
  81df61:	48 8b b5 60 f7 ff ff 	mov    -0x8a0(%rbp),%rsi
  81df68:	4c 8b 95 20 f4 ff ff 	mov    -0xbe0(%rbp),%r10
  81df6f:	4c 8b 9d 50 f6 ff ff 	mov    -0x9b0(%rbp),%r11
  81df76:	c5 43 59 0c c2       	vmulsd (%rdx,%rax,8),%xmm7,%xmm9
  81df7b:	c5 43 59 14 c1       	vmulsd (%rcx,%rax,8),%xmm7,%xmm10
  81df80:	c4 41 7b 11 0c c3    	vmovsd %xmm9,(%r11,%rax,8)
  81df86:	c4 41 7b 11 14 c2    	vmovsd %xmm10,(%r10,%rax,8)
  81df8c:	48 ff c0             	inc    %rax
  81df8f:	48 3b c6             	cmp    %rsi,%rax
  81df92:	72 e2                	jb     81df76 <pre_step3d_mod_mp_pre_step3d_tile_+0x99c6>
  81df94:	e9 ca 01 00 00       	jmpq   81e163 <pre_step3d_mod_mp_pre_step3d_tile_+0x9bb3>
  81df99:	4c 3b 8d c0 f6 ff ff 	cmp    -0x940(%rbp),%r9
  81dfa0:	0f 8c bd 01 00 00    	jl     81e163 <pre_step3d_mod_mp_pre_step3d_tile_+0x9bb3>
  81dfa6:	48 83 bd 60 f7 ff ff 	cmpq   $0x4,-0x8a0(%rbp)
  81dfad:	04 
  81dfae:	0f 8c cc 6b 00 00    	jl     824b80 <pre_step3d_mod_mp_pre_step3d_tile_+0x105d0>
  81dfb4:	4d 63 d0             	movslq %r8d,%r10
  81dfb7:	33 c9                	xor    %ecx,%ecx
  81dfb9:	48 8b b5 e8 f3 ff ff 	mov    -0xc18(%rbp),%rsi
  81dfc0:	45 33 db             	xor    %r11d,%r11d
  81dfc3:	49 0f af f2          	imul   %r10,%rsi
  81dfc7:	4c 0f af 95 e0 f3 ff 	imul   -0xc20(%rbp),%r10
  81dfce:	ff 
  81dfcf:	48 8b 95 18 f4 ff ff 	mov    -0xbe8(%rbp),%rdx
  81dfd6:	48 8b 85 28 f4 ff ff 	mov    -0xbd8(%rbp),%rax
  81dfdd:	4c 8b ad b0 f6 ff ff 	mov    -0x950(%rbp),%r13
  81dfe4:	4c 89 ad 30 f4 ff ff 	mov    %r13,-0xbd0(%rbp)
  81dfeb:	48 03 d6             	add    %rsi,%rdx
  81dfee:	89 bd b8 f4 ff ff    	mov    %edi,-0xb48(%rbp)
  81dff4:	4e 8d 24 10          	lea    (%rax,%r10,1),%r12
  81dff8:	44 89 85 c0 f4 ff ff 	mov    %r8d,-0xb40(%rbp)
  81dfff:	33 c0                	xor    %eax,%eax
  81e001:	4c 89 8d b8 f6 ff ff 	mov    %r9,-0x948(%rbp)
  81e008:	48 03 b5 f8 f3 ff ff 	add    -0xc08(%rbp),%rsi
  81e00f:	4c 03 95 00 f4 ff ff 	add    -0xc00(%rbp),%r10
  81e016:	48 8b bd 20 f4 ff ff 	mov    -0xbe0(%rbp),%rdi
  81e01d:	4c 8b 85 f0 f3 ff ff 	mov    -0xc10(%rbp),%r8
  81e024:	4c 8b 8d 50 f6 ff ff 	mov    -0x9b0(%rbp),%r9
  81e02b:	4c 8b ad d0 f4 ff ff 	mov    -0xb30(%rbp),%r13
  81e032:	4c 8b b5 c8 f4 ff ff 	mov    -0xb38(%rbp),%r14
  81e039:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  81e040:	4e 8d 3c 1a          	lea    (%rdx,%r11,1),%r15
  81e044:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  81e049:	c4 01 31 16 14 37    	vmovhpd (%r15,%r14,1),%xmm9,%xmm10
  81e04f:	4d 8d 3c 04          	lea    (%r12,%rax,1),%r15
  81e053:	c4 41 59 59 da       	vmulpd %xmm10,%xmm4,%xmm11
  81e058:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81e05d:	c4 01 19 16 2c 2f    	vmovhpd (%r15,%r13,1),%xmm12,%xmm13
  81e063:	4e 8d 3c 1e          	lea    (%rsi,%r11,1),%r15
  81e067:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81e06c:	4f 8d 1c b3          	lea    (%r11,%r14,4),%r11
  81e070:	c4 01 01 16 0c 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm9
  81e076:	4d 8d 3c 02          	lea    (%r10,%rax,1),%r15
  81e07a:	c4 41 79 11 1c c9    	vmovupd %xmm11,(%r9,%rcx,8)
  81e080:	c4 41 59 59 f5       	vmulpd %xmm13,%xmm4,%xmm14
  81e085:	c4 41 59 59 d1       	vmulpd %xmm9,%xmm4,%xmm10
  81e08a:	c5 79 11 34 cf       	vmovupd %xmm14,(%rdi,%rcx,8)
  81e08f:	c4 41 79 11 54 c9 10 	vmovupd %xmm10,0x10(%r9,%rcx,8)
  81e096:	c4 41 7b 10 1f       	vmovsd (%r15),%xmm11
  81e09b:	4a 8d 04 a8          	lea    (%rax,%r13,4),%rax
  81e09f:	c4 01 21 16 24 2f    	vmovhpd (%r15,%r13,1),%xmm11,%xmm12
  81e0a5:	c4 41 59 59 ec       	vmulpd %xmm12,%xmm4,%xmm13
  81e0aa:	c4 41 79 11 6c c8 10 	vmovupd %xmm13,0x10(%r8,%rcx,8)
  81e0b1:	48 83 c1 04          	add    $0x4,%rcx
  81e0b5:	48 3b 8d b0 f6 ff ff 	cmp    -0x950(%rbp),%rcx
  81e0bc:	72 82                	jb     81e040 <pre_step3d_mod_mp_pre_step3d_tile_+0x9a90>
  81e0be:	4c 8b ad 30 f4 ff ff 	mov    -0xbd0(%rbp),%r13
  81e0c5:	8b bd b8 f4 ff ff    	mov    -0xb48(%rbp),%edi
  81e0cb:	44 8b 85 c0 f4 ff ff 	mov    -0xb40(%rbp),%r8d
  81e0d2:	4c 8b 8d b8 f6 ff ff 	mov    -0x948(%rbp),%r9
  81e0d9:	48 8b b5 d0 f4 ff ff 	mov    -0xb30(%rbp),%rsi
  81e0e0:	48 8b 8d c8 f4 ff ff 	mov    -0xb38(%rbp),%rcx
  81e0e7:	49 0f af f5          	imul   %r13,%rsi
  81e0eb:	49 0f af cd          	imul   %r13,%rcx
  81e0ef:	4c 3b ad 60 f7 ff ff 	cmp    -0x8a0(%rbp),%r13
  81e0f6:	73 6b                	jae    81e163 <pre_step3d_mod_mp_pre_step3d_tile_+0x9bb3>
  81e0f8:	49 63 c0             	movslq %r8d,%rax
  81e0fb:	48 8b 95 e8 f3 ff ff 	mov    -0xc18(%rbp),%rdx
  81e102:	48 0f af d0          	imul   %rax,%rdx
  81e106:	48 0f af 85 e0 f3 ff 	imul   -0xc20(%rbp),%rax
  81e10d:	ff 
  81e10e:	48 03 95 18 f4 ff ff 	add    -0xbe8(%rbp),%rdx
  81e115:	48 03 85 28 f4 ff ff 	add    -0xbd8(%rbp),%rax
  81e11c:	4c 8b 95 60 f7 ff ff 	mov    -0x8a0(%rbp),%r10
  81e123:	4c 8b 9d 20 f4 ff ff 	mov    -0xbe0(%rbp),%r11
  81e12a:	4c 8b a5 50 f6 ff ff 	mov    -0x9b0(%rbp),%r12
  81e131:	4c 8b b5 d0 f4 ff ff 	mov    -0xb30(%rbp),%r14
  81e138:	4c 8b bd c8 f4 ff ff 	mov    -0xb38(%rbp),%r15
  81e13f:	c5 43 59 0c 11       	vmulsd (%rcx,%rdx,1),%xmm7,%xmm9
  81e144:	49 03 cf             	add    %r15,%rcx
  81e147:	c5 43 59 14 06       	vmulsd (%rsi,%rax,1),%xmm7,%xmm10
  81e14c:	c4 01 7b 11 0c ec    	vmovsd %xmm9,(%r12,%r13,8)
  81e152:	49 03 f6             	add    %r14,%rsi
  81e155:	c4 01 7b 11 14 eb    	vmovsd %xmm10,(%r11,%r13,8)
  81e15b:	49 ff c5             	inc    %r13
  81e15e:	4d 3b ea             	cmp    %r10,%r13
  81e161:	72 dc                	jb     81e13f <pre_step3d_mod_mp_pre_step3d_tile_+0x9b8f>
  81e163:	48 83 bd 40 f7 ff ff 	cmpq   $0x8,-0x8c0(%rbp)
  81e16a:	08 
  81e16b:	0f 85 69 01 00 00    	jne    81e2da <pre_step3d_mod_mp_pre_step3d_tile_+0x9d2a>
  81e171:	48 83 bd 48 f7 ff ff 	cmpq   $0x8,-0x8b8(%rbp)
  81e178:	08 
  81e179:	0f 85 5b 01 00 00    	jne    81e2da <pre_step3d_mod_mp_pre_step3d_tile_+0x9d2a>
  81e17f:	33 d2                	xor    %edx,%edx
  81e181:	45 33 d2             	xor    %r10d,%r10d
  81e184:	48 8b 8d c8 f1 ff ff 	mov    -0xe38(%rbp),%rcx
  81e18b:	33 f6                	xor    %esi,%esi
  81e18d:	48 83 bd 20 f7 ff ff 	cmpq   $0x0,-0x8e0(%rbp)
  81e194:	00 
  81e195:	0f 8e 3f 04 00 00    	jle    81e5da <pre_step3d_mod_mp_pre_step3d_tile_+0xa02a>
  81e19b:	4d 63 c0             	movslq %r8d,%r8
  81e19e:	4c 0f af 85 38 f4 ff 	imul   -0xbc8(%rbp),%r8
  81e1a5:	ff 
  81e1a6:	48 8b 85 90 f4 ff ff 	mov    -0xb70(%rbp),%rax
  81e1ad:	4c 8b b5 08 f6 ff ff 	mov    -0x9f8(%rbp),%r14
  81e1b4:	4c 8b bd 60 f7 ff ff 	mov    -0x8a0(%rbp),%r15
  81e1bb:	89 bd b8 f4 ff ff    	mov    %edi,-0xb48(%rbp)
  81e1c1:	49 03 c0             	add    %r8,%rax
  81e1c4:	4c 03 85 70 f4 ff ff 	add    -0xb90(%rbp),%r8
  81e1cb:	4c 89 85 90 f5 ff ff 	mov    %r8,-0xa70(%rbp)
  81e1d2:	4c 89 8d b8 f6 ff ff 	mov    %r9,-0x948(%rbp)
  81e1d9:	48 8b bd b8 f6 ff ff 	mov    -0x948(%rbp),%rdi
  81e1e0:	48 3b bd c0 f6 ff ff 	cmp    -0x940(%rbp),%rdi
  81e1e7:	0f 8c b6 00 00 00    	jl     81e2a3 <pre_step3d_mod_mp_pre_step3d_tile_+0x9cf3>
  81e1ed:	49 83 ff 04          	cmp    $0x4,%r15
  81e1f1:	0f 8c 79 69 00 00    	jl     824b70 <pre_step3d_mod_mp_pre_step3d_tile_+0x105c0>
  81e1f7:	4c 8b 85 50 f6 ff ff 	mov    -0x9b0(%rbp),%r8
  81e1fe:	45 33 e4             	xor    %r12d,%r12d
  81e201:	48 8b bd 90 f5 ff ff 	mov    -0xa70(%rbp),%rdi
  81e208:	4f 8d 0c 16          	lea    (%r14,%r10,1),%r9
  81e20c:	4c 8b ad b0 f6 ff ff 	mov    -0x950(%rbp),%r13
  81e213:	4d 89 ef             	mov    %r13,%r15
  81e216:	4f 8d 1c 10          	lea    (%r8,%r10,1),%r11
  81e21a:	4c 8d 04 30          	lea    (%rax,%rsi,1),%r8
  81e21e:	48 03 fe             	add    %rsi,%rdi
  81e221:	c4 21 7d 10 0c e1    	vmovupd (%rcx,%r12,8),%ymm9
  81e227:	c4 01 7d 10 54 e1 08 	vmovupd 0x8(%r9,%r12,8),%ymm10
  81e22e:	c4 21 35 59 1c e7    	vmulpd (%rdi,%r12,8),%ymm9,%ymm11
  81e234:	c4 01 2d 5c 24 e3    	vsubpd (%r11,%r12,8),%ymm10,%ymm12
  81e23a:	c4 41 25 58 ec       	vaddpd %ymm12,%ymm11,%ymm13
  81e23f:	c4 01 7d 11 2c e0    	vmovupd %ymm13,(%r8,%r12,8)
  81e245:	49 83 c4 04          	add    $0x4,%r12
  81e249:	4d 3b e7             	cmp    %r15,%r12
  81e24c:	72 d3                	jb     81e221 <pre_step3d_mod_mp_pre_step3d_tile_+0x9c71>
  81e24e:	4c 8b bd 60 f7 ff ff 	mov    -0x8a0(%rbp),%r15
  81e255:	4d 3b ef             	cmp    %r15,%r13
  81e258:	73 49                	jae    81e2a3 <pre_step3d_mod_mp_pre_step3d_tile_+0x9cf3>
  81e25a:	4c 8b 85 50 f6 ff ff 	mov    -0x9b0(%rbp),%r8
  81e261:	4f 8d 0c 16          	lea    (%r14,%r10,1),%r9
  81e265:	48 8b bd 90 f5 ff ff 	mov    -0xa70(%rbp),%rdi
  81e26c:	4f 8d 1c 10          	lea    (%r8,%r10,1),%r11
  81e270:	4c 8d 04 30          	lea    (%rax,%rsi,1),%r8
  81e274:	48 03 fe             	add    %rsi,%rdi
  81e277:	c4 21 7b 10 0c e9    	vmovsd (%rcx,%r13,8),%xmm9
  81e27d:	c4 01 7b 10 54 e9 08 	vmovsd 0x8(%r9,%r13,8),%xmm10
  81e284:	c4 21 33 59 1c ef    	vmulsd (%rdi,%r13,8),%xmm9,%xmm11
  81e28a:	c4 01 2b 5c 24 eb    	vsubsd (%r11,%r13,8),%xmm10,%xmm12
  81e290:	c4 41 23 58 ec       	vaddsd %xmm12,%xmm11,%xmm13
  81e295:	c4 01 7b 11 2c e8    	vmovsd %xmm13,(%r8,%r13,8)
  81e29b:	49 ff c5             	inc    %r13
  81e29e:	4d 3b ef             	cmp    %r15,%r13
  81e2a1:	72 d4                	jb     81e277 <pre_step3d_mod_mp_pre_step3d_tile_+0x9cc7>
  81e2a3:	48 ff c2             	inc    %rdx
  81e2a6:	4c 03 95 30 f7 ff ff 	add    -0x8d0(%rbp),%r10
  81e2ad:	48 03 8d e0 f6 ff ff 	add    -0x920(%rbp),%rcx
  81e2b4:	48 03 b5 d8 f6 ff ff 	add    -0x928(%rbp),%rsi
  81e2bb:	48 3b 95 20 f7 ff ff 	cmp    -0x8e0(%rbp),%rdx
  81e2c2:	0f 82 11 ff ff ff    	jb     81e1d9 <pre_step3d_mod_mp_pre_step3d_tile_+0x9c29>
  81e2c8:	8b bd b8 f4 ff ff    	mov    -0xb48(%rbp),%edi
  81e2ce:	4c 8b 8d b8 f6 ff ff 	mov    -0x948(%rbp),%r9
  81e2d5:	e9 00 03 00 00       	jmpq   81e5da <pre_step3d_mod_mp_pre_step3d_tile_+0xa02a>
  81e2da:	48 83 bd 20 f7 ff ff 	cmpq   $0x0,-0x8e0(%rbp)
  81e2e1:	00 
  81e2e2:	0f 8e f2 02 00 00    	jle    81e5da <pre_step3d_mod_mp_pre_step3d_tile_+0xa02a>
  81e2e8:	48 83 bd d8 f6 ff ff 	cmpq   $0x0,-0x928(%rbp)
  81e2ef:	00 
  81e2f0:	0f 84 82 68 00 00    	je     824b78 <pre_step3d_mod_mp_pre_step3d_tile_+0x105c8>
  81e2f6:	48 83 bd 20 f7 ff ff 	cmpq   $0x2,-0x8e0(%rbp)
  81e2fd:	02 
  81e2fe:	0f 8c 74 68 00 00    	jl     824b78 <pre_step3d_mod_mp_pre_step3d_tile_+0x105c8>
  81e304:	4d 63 d8             	movslq %r8d,%r11
  81e307:	33 d2                	xor    %edx,%edx
  81e309:	4c 0f af 9d 38 f4 ff 	imul   -0xbc8(%rbp),%r11
  81e310:	ff 
  81e311:	48 8b 85 68 f4 ff ff 	mov    -0xb98(%rbp),%rax
  81e318:	33 c9                	xor    %ecx,%ecx
  81e31a:	4c 8b 95 18 f7 ff ff 	mov    -0x8e8(%rbp),%r10
  81e321:	33 f6                	xor    %esi,%esi
  81e323:	4c 89 8d b8 f6 ff ff 	mov    %r9,-0x948(%rbp)
  81e32a:	4c 89 95 a0 f6 ff ff 	mov    %r10,-0x960(%rbp)
  81e331:	4e 8d 24 18          	lea    (%rax,%r11,1),%r12
  81e335:	4c 03 9d 48 f4 ff ff 	add    -0xbb8(%rbp),%r11
  81e33c:	33 c0                	xor    %eax,%eax
  81e33e:	4c 89 9d a0 f5 ff ff 	mov    %r11,-0xa60(%rbp)
  81e345:	4c 89 a5 98 f5 ff ff 	mov    %r12,-0xa68(%rbp)
  81e34c:	89 bd b8 f4 ff ff    	mov    %edi,-0xb48(%rbp)
  81e352:	44 89 85 c0 f4 ff ff 	mov    %r8d,-0xb40(%rbp)
  81e359:	4c 8b 8d d8 f6 ff ff 	mov    -0x928(%rbp),%r9
  81e360:	4c 8b 9d e0 f6 ff ff 	mov    -0x920(%rbp),%r11
  81e367:	45 33 ed             	xor    %r13d,%r13d
  81e36a:	48 8b bd b8 f6 ff ff 	mov    -0x948(%rbp),%rdi
  81e371:	45 33 ff             	xor    %r15d,%r15d
  81e374:	45 33 c0             	xor    %r8d,%r8d
  81e377:	48 3b bd c0 f6 ff ff 	cmp    -0x940(%rbp),%rdi
  81e37e:	0f 8c d5 00 00 00    	jl     81e459 <pre_step3d_mod_mp_pre_step3d_tile_+0x9ea9>
  81e384:	48 8b bd 50 f6 ff ff 	mov    -0x9b0(%rbp),%rdi
  81e38b:	4c 8b a5 48 f6 ff ff 	mov    -0x9b8(%rbp),%r12
  81e392:	4c 8b 95 98 f5 ff ff 	mov    -0xa68(%rbp),%r10
  81e399:	4c 8b b5 a0 f5 ff ff 	mov    -0xa60(%rbp),%r14
  81e3a0:	48 03 f9             	add    %rcx,%rdi
  81e3a3:	48 89 85 98 f6 ff ff 	mov    %rax,-0x968(%rbp)
  81e3aa:	4c 03 e6             	add    %rsi,%r12
  81e3ad:	48 89 95 88 f6 ff ff 	mov    %rdx,-0x978(%rbp)
  81e3b4:	4c 03 d0             	add    %rax,%r10
  81e3b7:	48 89 b5 90 f6 ff ff 	mov    %rsi,-0x970(%rbp)
  81e3be:	4c 03 f0             	add    %rax,%r14
  81e3c1:	48 8b 85 08 f6 ff ff 	mov    -0x9f8(%rbp),%rax
  81e3c8:	48 8b 95 58 f6 ff ff 	mov    -0x9a8(%rbp),%rdx
  81e3cf:	90                   	nop
  81e3d0:	4b 8d 34 3c          	lea    (%r12,%r15,1),%rsi
  81e3d4:	4c 03 bd 40 f7 ff ff 	add    -0x8c0(%rbp),%r15
  81e3db:	c5 7b 10 0e          	vmovsd (%rsi),%xmm9
  81e3df:	c4 21 31 16 1c 1e    	vmovhpd (%rsi,%r11,1),%xmm9,%xmm11
  81e3e5:	4b 8d 34 02          	lea    (%r10,%r8,1),%rsi
  81e3e9:	c5 7b 10 16          	vmovsd (%rsi),%xmm10
  81e3ed:	c4 21 29 16 24 0e    	vmovhpd (%rsi,%r9,1),%xmm10,%xmm12
  81e3f3:	48 8d 74 08 08       	lea    0x8(%rax,%rcx,1),%rsi
  81e3f8:	c4 41 21 59 cc       	vmulpd %xmm12,%xmm11,%xmm9
  81e3fd:	4a 8d 34 ee          	lea    (%rsi,%r13,8),%rsi
  81e401:	c5 7b 10 2e          	vmovsd (%rsi),%xmm13
  81e405:	c5 11 16 7c d6 08    	vmovhpd 0x8(%rsi,%rdx,8),%xmm13,%xmm15
  81e40b:	4a 8d 34 ef          	lea    (%rdi,%r13,8),%rsi
  81e40f:	c5 7b 10 36          	vmovsd (%rsi),%xmm14
  81e413:	49 ff c5             	inc    %r13
  81e416:	c5 09 16 6c d6 08    	vmovhpd 0x8(%rsi,%rdx,8),%xmm14,%xmm13
  81e41c:	4b 8d 34 30          	lea    (%r8,%r14,1),%rsi
  81e420:	c4 41 01 5c d5       	vsubpd %xmm13,%xmm15,%xmm10
  81e425:	c4 41 31 58 da       	vaddpd %xmm10,%xmm9,%xmm11
  81e42a:	4c 03 85 48 f7 ff ff 	add    -0x8b8(%rbp),%r8
  81e431:	c5 7b 11 1e          	vmovsd %xmm11,(%rsi)
  81e435:	c4 41 79 17 1c 31    	vmovhpd %xmm11,(%r9,%rsi,1)
  81e43b:	4c 3b ad 60 f7 ff ff 	cmp    -0x8a0(%rbp),%r13
  81e442:	72 8c                	jb     81e3d0 <pre_step3d_mod_mp_pre_step3d_tile_+0x9e20>
  81e444:	48 8b 85 98 f6 ff ff 	mov    -0x968(%rbp),%rax
  81e44b:	48 8b b5 90 f6 ff ff 	mov    -0x970(%rbp),%rsi
  81e452:	48 8b 95 88 f6 ff ff 	mov    -0x978(%rbp),%rdx
  81e459:	48 8b bd 30 f7 ff ff 	mov    -0x8d0(%rbp),%rdi
  81e460:	48 83 c2 02          	add    $0x2,%rdx
  81e464:	4a 8d 34 5e          	lea    (%rsi,%r11,2),%rsi
  81e468:	4a 8d 04 48          	lea    (%rax,%r9,2),%rax
  81e46c:	48 8d 0c 79          	lea    (%rcx,%rdi,2),%rcx
  81e470:	48 3b 95 18 f7 ff ff 	cmp    -0x8e8(%rbp),%rdx
  81e477:	0f 82 ea fe ff ff    	jb     81e367 <pre_step3d_mod_mp_pre_step3d_tile_+0x9db7>
  81e47d:	4c 8b 95 a0 f6 ff ff 	mov    -0x960(%rbp),%r10
  81e484:	8b bd b8 f4 ff ff    	mov    -0xb48(%rbp),%edi
  81e48a:	44 8b 85 c0 f4 ff ff 	mov    -0xb40(%rbp),%r8d
  81e491:	4c 8b 8d b8 f6 ff ff 	mov    -0x948(%rbp),%r9
  81e498:	48 8b 8d d8 f6 ff ff 	mov    -0x928(%rbp),%rcx
  81e49f:	48 8b 85 e0 f6 ff ff 	mov    -0x920(%rbp),%rax
  81e4a6:	48 8b 95 30 f7 ff ff 	mov    -0x8d0(%rbp),%rdx
  81e4ad:	49 0f af ca          	imul   %r10,%rcx
  81e4b1:	49 0f af c2          	imul   %r10,%rax
  81e4b5:	49 0f af d2          	imul   %r10,%rdx
  81e4b9:	4c 3b 95 20 f7 ff ff 	cmp    -0x8e0(%rbp),%r10
  81e4c0:	0f 83 14 01 00 00    	jae    81e5da <pre_step3d_mod_mp_pre_step3d_tile_+0xa02a>
  81e4c6:	4d 63 c0             	movslq %r8d,%r8
  81e4c9:	4c 0f af 85 38 f4 ff 	imul   -0xbc8(%rbp),%r8
  81e4d0:	ff 
  81e4d1:	48 8b b5 68 f4 ff ff 	mov    -0xb98(%rbp),%rsi
  81e4d8:	89 bd b8 f4 ff ff    	mov    %edi,-0xb48(%rbp)
  81e4de:	49 03 f0             	add    %r8,%rsi
  81e4e1:	4c 03 85 48 f4 ff ff 	add    -0xbb8(%rbp),%r8
  81e4e8:	4c 89 85 a8 f5 ff ff 	mov    %r8,-0xa58(%rbp)
  81e4ef:	48 89 b5 b0 f5 ff ff 	mov    %rsi,-0xa50(%rbp)
  81e4f6:	45 33 f6             	xor    %r14d,%r14d
  81e4f9:	45 33 ff             	xor    %r15d,%r15d
  81e4fc:	45 33 db             	xor    %r11d,%r11d
  81e4ff:	4c 3b 8d c0 f6 ff ff 	cmp    -0x940(%rbp),%r9
  81e506:	0f 8c a3 00 00 00    	jl     81e5af <pre_step3d_mod_mp_pre_step3d_tile_+0x9fff>
  81e50c:	4c 8b 85 50 f6 ff ff 	mov    -0x9b0(%rbp),%r8
  81e513:	48 8b bd 08 f6 ff ff 	mov    -0x9f8(%rbp),%rdi
  81e51a:	48 8b b5 48 f6 ff ff 	mov    -0x9b8(%rbp),%rsi
  81e521:	4c 8b a5 a8 f5 ff ff 	mov    -0xa58(%rbp),%r12
  81e528:	4c 03 c2             	add    %rdx,%r8
  81e52b:	4c 8b ad b0 f5 ff ff 	mov    -0xa50(%rbp),%r13
  81e532:	48 03 fa             	add    %rdx,%rdi
  81e535:	48 89 8d a8 f6 ff ff 	mov    %rcx,-0x958(%rbp)
  81e53c:	48 03 f0             	add    %rax,%rsi
  81e53f:	4c 89 95 a0 f6 ff ff 	mov    %r10,-0x960(%rbp)
  81e546:	4c 03 e1             	add    %rcx,%r12
  81e549:	4c 89 8d b8 f6 ff ff 	mov    %r9,-0x948(%rbp)
  81e550:	4c 03 e9             	add    %rcx,%r13
  81e553:	48 8b 8d 60 f7 ff ff 	mov    -0x8a0(%rbp),%rcx
  81e55a:	4c 8b 8d 48 f7 ff ff 	mov    -0x8b8(%rbp),%r9
  81e561:	4c 8b 95 40 f7 ff ff 	mov    -0x8c0(%rbp),%r10
  81e568:	c4 41 7b 10 0c 37    	vmovsd (%r15,%rsi,1),%xmm9
  81e56e:	4d 03 fa             	add    %r10,%r15
  81e571:	c4 21 7b 10 54 f7 08 	vmovsd 0x8(%rdi,%r14,8),%xmm10
  81e578:	c4 01 33 59 1c 2b    	vmulsd (%r11,%r13,1),%xmm9,%xmm11
  81e57e:	c4 01 2b 5c 24 f0    	vsubsd (%r8,%r14,8),%xmm10,%xmm12
  81e584:	49 ff c6             	inc    %r14
  81e587:	c4 41 23 58 ec       	vaddsd %xmm12,%xmm11,%xmm13
  81e58c:	c4 01 7b 11 2c 23    	vmovsd %xmm13,(%r11,%r12,1)
  81e592:	4d 03 d9             	add    %r9,%r11
  81e595:	4c 3b f1             	cmp    %rcx,%r14
  81e598:	72 ce                	jb     81e568 <pre_step3d_mod_mp_pre_step3d_tile_+0x9fb8>
  81e59a:	48 8b 8d a8 f6 ff ff 	mov    -0x958(%rbp),%rcx
  81e5a1:	4c 8b 95 a0 f6 ff ff 	mov    -0x960(%rbp),%r10
  81e5a8:	4c 8b 8d b8 f6 ff ff 	mov    -0x948(%rbp),%r9
  81e5af:	49 ff c2             	inc    %r10
  81e5b2:	48 03 95 30 f7 ff ff 	add    -0x8d0(%rbp),%rdx
  81e5b9:	48 03 85 e0 f6 ff ff 	add    -0x920(%rbp),%rax
  81e5c0:	48 03 8d d8 f6 ff ff 	add    -0x928(%rbp),%rcx
  81e5c7:	4c 3b 95 20 f7 ff ff 	cmp    -0x8e0(%rbp),%r10
  81e5ce:	0f 82 22 ff ff ff    	jb     81e4f6 <pre_step3d_mod_mp_pre_step3d_tile_+0x9f46>
  81e5d4:	8b bd b8 f4 ff ff    	mov    -0xb48(%rbp),%edi
  81e5da:	41 89 f8             	mov    %edi,%r8d
  81e5dd:	3b bd e0 f4 ff ff    	cmp    -0xb20(%rbp),%edi
  81e5e3:	0f 82 24 ec ff ff    	jb     81d20d <pre_step3d_mod_mp_pre_step3d_tile_+0x8c5d>
  81e5e9:	44 8b ad e0 f4 ff ff 	mov    -0xb20(%rbp),%r13d
  81e5f0:	48 8b 95 a8 f3 ff ff 	mov    -0xc58(%rbp),%rdx
  81e5f7:	48 ff c2             	inc    %rdx
  81e5fa:	48 3b 95 b8 f3 ff ff 	cmp    -0xc48(%rbp),%rdx
  81e601:	0f 82 7d e2 ff ff    	jb     81c884 <pre_step3d_mod_mp_pre_step3d_tile_+0x82d4>
  81e607:	bf bc 74 b3 00       	mov    $0xb374bc,%edi
  81e60c:	8b b5 b0 f3 ff ff    	mov    -0xc50(%rbp),%esi
  81e612:	c5 f8 77             	vzeroupper 
  81e615:	e8 e6 fa be ff       	callq  40e100 <__kmpc_for_static_fini@plt>
  81e61a:	48 8b 95 a0 f3 ff ff 	mov    -0xc60(%rbp),%rdx
  81e621:	48 8b 85 98 f3 ff ff 	mov    -0xc68(%rbp),%rax
  81e628:	48 83 c0 1f          	add    $0x1f,%rax
  81e62c:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81e630:	48 03 e0             	add    %rax,%rsp
  81e633:	4c 8b bd 18 f6 ff ff 	mov    -0x9e8(%rbp),%r15
  81e63a:	4c 8b b5 20 f6 ff ff 	mov    -0x9e0(%rbp),%r14
  81e641:	4c 8b ad 28 f6 ff ff 	mov    -0x9d8(%rbp),%r13
  81e648:	4c 8b a5 30 f6 ff ff 	mov    -0x9d0(%rbp),%r12
  81e64f:	c9                   	leaveq 
  81e650:	48 89 dc             	mov    %rbx,%rsp
  81e653:	5b                   	pop    %rbx
  81e654:	c3                   	retq   
  81e655:	53                   	push   %rbx
  81e656:	48 89 e3             	mov    %rsp,%rbx
  81e659:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  81e65d:	55                   	push   %rbp
  81e65e:	55                   	push   %rbp
  81e65f:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  81e663:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  81e668:	48 89 e5             	mov    %rsp,%rbp
  81e66b:	48 81 ec 70 0e 00 00 	sub    $0xe70,%rsp
  81e672:	4c 89 a5 30 f6 ff ff 	mov    %r12,-0x9d0(%rbp)
  81e679:	4c 8b 63 48          	mov    0x48(%rbx),%r12
  81e67d:	48 8b 43 18          	mov    0x18(%rbx),%rax
  81e681:	4c 89 ad 28 f6 ff ff 	mov    %r13,-0x9d8(%rbp)
  81e688:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
  81e68c:	4d 8b 24 24          	mov    (%r12),%r12
  81e690:	4c 89 bd 18 f6 ff ff 	mov    %r15,-0x9e8(%rbp)
  81e697:	4c 8b 7b 38          	mov    0x38(%rbx),%r15
  81e69b:	4c 89 a5 c0 f1 ff ff 	mov    %r12,-0xe40(%rbp)
  81e6a2:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  81e6a6:	4c 8b 20             	mov    (%rax),%r12
  81e6a9:	4c 89 a5 b0 f1 ff ff 	mov    %r12,-0xe50(%rbp)
  81e6b0:	44 8b 21             	mov    (%rcx),%r12d
  81e6b3:	4d 8b 6d 00          	mov    0x0(%r13),%r13
  81e6b7:	48 8b 4b 58          	mov    0x58(%rbx),%rcx
  81e6bb:	4d 8b 3f             	mov    (%r15),%r15
  81e6be:	4c 89 ad b8 f1 ff ff 	mov    %r13,-0xe48(%rbp)
  81e6c5:	44 8b 2e             	mov    (%rsi),%r13d
  81e6c8:	4c 89 bd a0 f1 ff ff 	mov    %r15,-0xe60(%rbp)
  81e6cf:	4c 89 b5 20 f6 ff ff 	mov    %r14,-0x9e0(%rbp)
  81e6d6:	4d 63 39             	movslq (%r9),%r15
  81e6d9:	4c 8b 73 30          	mov    0x30(%rbx),%r14
  81e6dd:	4c 8b 53 28          	mov    0x28(%rbx),%r10
  81e6e1:	8b 3f                	mov    (%rdi),%edi
  81e6e3:	44 89 ad b8 f3 ff ff 	mov    %r13d,-0xc48(%rbp)
  81e6ea:	4d 8b 28             	mov    (%r8),%r13
  81e6ed:	4c 89 bd 18 fa ff ff 	mov    %r15,-0x5e8(%rbp)
  81e6f4:	4c 63 01             	movslq (%rcx),%r8
  81e6f7:	44 8b 3a             	mov    (%rdx),%r15d
  81e6fa:	48 8b 4b 70          	mov    0x70(%rbx),%rcx
  81e6fe:	48 8b 53 50          	mov    0x50(%rbx),%rdx
  81e702:	89 bd 70 f6 ff ff    	mov    %edi,-0x990(%rbp)
  81e708:	4c 8b 5b 20          	mov    0x20(%rbx),%r11
  81e70c:	48 8b 43 60          	mov    0x60(%rbx),%rax
  81e710:	48 8b 7b 78          	mov    0x78(%rbx),%rdi
  81e714:	4d 8b 36             	mov    (%r14),%r14
  81e717:	4d 8b 12             	mov    (%r10),%r10
  81e71a:	4c 89 b5 a8 f1 ff ff 	mov    %r14,-0xe58(%rbp)
  81e721:	48 63 31             	movslq (%rcx),%rsi
  81e724:	4c 89 95 c8 f1 ff ff 	mov    %r10,-0xe38(%rbp)
  81e72b:	4c 8b 32             	mov    (%rdx),%r14
  81e72e:	4c 89 85 d0 f3 ff ff 	mov    %r8,-0xc30(%rbp)
  81e735:	4d 8b 1b             	mov    (%r11),%r11
  81e738:	48 63 10             	movslq (%rax),%rdx
  81e73b:	33 c0                	xor    %eax,%eax
  81e73d:	4c 63 07             	movslq (%rdi),%r8
  81e740:	48 8d bd e0 f1 ff ff 	lea    -0xe20(%rbp),%rdi
  81e747:	48 8d 8b 88 00 00 00 	lea    0x88(%rbx),%rcx
  81e74e:	4c 8b 09             	mov    (%rcx),%r9
  81e751:	4c 8b 51 08          	mov    0x8(%rcx),%r10
  81e755:	48 89 b5 c8 f3 ff ff 	mov    %rsi,-0xc38(%rbp)
  81e75c:	48 8b 71 10          	mov    0x10(%rcx),%rsi
  81e760:	4c 89 5f f0          	mov    %r11,-0x10(%rdi)
  81e764:	48 89 95 d8 f3 ff ff 	mov    %rdx,-0xc28(%rbp)
  81e76b:	4c 89 85 c0 f3 ff ff 	mov    %r8,-0xc40(%rbp)
  81e772:	4c 89 4f b0          	mov    %r9,-0x50(%rdi)
  81e776:	4c 89 57 b8          	mov    %r10,-0x48(%rdi)
  81e77a:	e8 31 fd c5 ff       	callq  47e4b0 <_f90_dope_vector_init>
  81e77f:	48 89 85 08 f5 ff ff 	mov    %rax,-0xaf8(%rbp)
  81e786:	48 83 c0 1f          	add    $0x1f,%rax
  81e78a:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81e78e:	48 2b e0             	sub    %rax,%rsp
  81e791:	48 89 e0             	mov    %rsp,%rax
  81e794:	48 89 85 00 f5 ff ff 	mov    %rax,-0xb00(%rbp)
  81e79b:	48 89 c2             	mov    %rax,%rdx
  81e79e:	48 8d bd 40 f2 ff ff 	lea    -0xdc0(%rbp),%rdi
  81e7a5:	33 c0                	xor    %eax,%eax
  81e7a7:	48 8b b5 98 f1 ff ff 	mov    -0xe68(%rbp),%rsi
  81e7ae:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  81e7b2:	e8 f9 fc c5 ff       	callq  47e4b0 <_f90_dope_vector_init>
  81e7b7:	48 89 85 18 f5 ff ff 	mov    %rax,-0xae8(%rbp)
  81e7be:	48 83 c0 1f          	add    $0x1f,%rax
  81e7c2:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81e7c6:	48 2b e0             	sub    %rax,%rsp
  81e7c9:	48 89 e0             	mov    %rsp,%rax
  81e7cc:	48 89 85 10 f5 ff ff 	mov    %rax,-0xaf0(%rbp)
  81e7d3:	48 89 c2             	mov    %rax,%rdx
  81e7d6:	48 8d bd a0 f2 ff ff 	lea    -0xd60(%rbp),%rdi
  81e7dd:	33 c0                	xor    %eax,%eax
  81e7df:	48 8b b5 90 f1 ff ff 	mov    -0xe70(%rbp),%rsi
  81e7e6:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  81e7ea:	e8 c1 fc c5 ff       	callq  47e4b0 <_f90_dope_vector_init>
  81e7ef:	48 89 85 20 f5 ff ff 	mov    %rax,-0xae0(%rbp)
  81e7f6:	48 83 c0 1f          	add    $0x1f,%rax
  81e7fa:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81e7fe:	48 2b e0             	sub    %rax,%rsp
  81e801:	48 89 e0             	mov    %rsp,%rax
  81e804:	48 89 85 28 f5 ff ff 	mov    %rax,-0xad8(%rbp)
  81e80b:	48 89 85 a0 f2 ff ff 	mov    %rax,-0xd60(%rbp)
  81e812:	45 3b e7             	cmp    %r15d,%r12d
  81e815:	0f 8c 8a 00 00 00    	jl     81e8a5 <pre_step3d_mod_mp_pre_step3d_tile_+0xa2f5>
  81e81b:	48 83 c4 e0          	add    $0xffffffffffffffe0,%rsp
  81e81f:	48 8d 85 8c f6 ff ff 	lea    -0x974(%rbp),%rax
  81e826:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  81e82c:	bf 6c 74 b3 00       	mov    $0xb3746c,%edi
  81e831:	ba 22 00 00 00       	mov    $0x22,%edx
  81e836:	48 8d 8d 88 f6 ff ff 	lea    -0x978(%rbp),%rcx
  81e83d:	44 89 78 f4          	mov    %r15d,-0xc(%rax)
  81e841:	4c 8d 85 80 f6 ff ff 	lea    -0x980(%rbp),%r8
  81e848:	48 89 04 24          	mov    %rax,(%rsp)
  81e84c:	4c 8d 8d 84 f6 ff ff 	lea    -0x97c(%rbp),%r9
  81e853:	44 89 54 24 08       	mov    %r10d,0x8(%rsp)
  81e858:	44 89 54 24 10       	mov    %r10d,0x10(%rsp)
  81e85d:	8b 70 e4             	mov    -0x1c(%rax),%esi
  81e860:	44 89 60 f8          	mov    %r12d,-0x8(%rax)
  81e864:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%rax)
  81e86b:	44 89 10             	mov    %r10d,(%rax)
  81e86e:	e8 bd f5 be ff       	callq  40de30 <__kmpc_for_static_init_4@plt>
  81e873:	48 83 c4 20          	add    $0x20,%rsp
  81e877:	8b 85 80 f6 ff ff    	mov    -0x980(%rbp),%eax
  81e87d:	89 85 e0 f3 ff ff    	mov    %eax,-0xc20(%rbp)
  81e883:	41 3b c4             	cmp    %r12d,%eax
  81e886:	8b 85 84 f6 ff ff    	mov    -0x97c(%rbp),%eax
  81e88c:	0f 8e 80 00 00 00    	jle    81e912 <pre_step3d_mod_mp_pre_step3d_tile_+0xa362>
  81e892:	bf 6c 74 b3 00       	mov    $0xb3746c,%edi
  81e897:	8b b5 70 f6 ff ff    	mov    -0x990(%rbp),%esi
  81e89d:	c5 f8 77             	vzeroupper 
  81e8a0:	e8 5b f8 be ff       	callq  40e100 <__kmpc_for_static_fini@plt>
  81e8a5:	48 8b 95 28 f5 ff ff 	mov    -0xad8(%rbp),%rdx
  81e8ac:	48 8b 85 20 f5 ff ff 	mov    -0xae0(%rbp),%rax
  81e8b3:	48 83 c0 1f          	add    $0x1f,%rax
  81e8b7:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81e8bb:	48 03 e0             	add    %rax,%rsp
  81e8be:	48 8b 95 10 f5 ff ff 	mov    -0xaf0(%rbp),%rdx
  81e8c5:	48 8b 85 18 f5 ff ff 	mov    -0xae8(%rbp),%rax
  81e8cc:	48 83 c0 1f          	add    $0x1f,%rax
  81e8d0:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81e8d4:	48 03 e0             	add    %rax,%rsp
  81e8d7:	48 8b 95 00 f5 ff ff 	mov    -0xb00(%rbp),%rdx
  81e8de:	48 8b 85 08 f5 ff ff 	mov    -0xaf8(%rbp),%rax
  81e8e5:	48 83 c0 1f          	add    $0x1f,%rax
  81e8e9:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81e8ed:	48 03 e0             	add    %rax,%rsp
  81e8f0:	4c 8b bd 18 f6 ff ff 	mov    -0x9e8(%rbp),%r15
  81e8f7:	4c 8b b5 20 f6 ff ff 	mov    -0x9e0(%rbp),%r14
  81e8fe:	4c 8b ad 28 f6 ff ff 	mov    -0x9d8(%rbp),%r13
  81e905:	4c 8b a5 30 f6 ff ff 	mov    -0x9d0(%rbp),%r12
  81e90c:	c9                   	leaveq 
  81e90d:	48 89 dc             	mov    %rbx,%rsp
  81e910:	5b                   	pop    %rbx
  81e911:	c3                   	retq   
  81e912:	4c 8b 05 c7 d7 31 00 	mov    0x31d7c7(%rip),%r8        # b3c0e0 <mod_param_mp_n_+0x40>
  81e919:	41 3b c4             	cmp    %r12d,%eax
  81e91c:	4d 63 5d 00          	movslq 0x0(%r13),%r11
  81e920:	44 0f 4c e0          	cmovl  %eax,%r12d
  81e924:	49 c1 e0 02          	shl    $0x2,%r8
  81e928:	49 f7 d8             	neg    %r8
  81e92b:	4c 03 05 6e d7 31 00 	add    0x31d76e(%rip),%r8        # b3c0a0 <mod_param_mp_n_>
  81e932:	48 8b 35 47 d7 31 00 	mov    0x31d747(%rip),%rsi        # b3c080 <mod_param_mp_nt_+0x40>
  81e939:	48 c1 e6 02          	shl    $0x2,%rsi
  81e93d:	43 8b 04 98          	mov    (%r8,%r11,4),%eax
  81e941:	48 f7 de             	neg    %rsi
  81e944:	4c 8b 05 35 ca 31 00 	mov    0x31ca35(%rip),%r8        # b3b380 <mod_scalars_mp_dt_+0x40>
  81e94b:	49 f7 d8             	neg    %r8
  81e94e:	4c 8b 95 d0 f3 ff ff 	mov    -0xc30(%rbp),%r10
  81e955:	4d 03 c3             	add    %r11,%r8
  81e958:	4c 29 95 d8 f3 ff ff 	sub    %r10,-0xc28(%rbp)
  81e95f:	49 c1 e2 03          	shl    $0x3,%r10
  81e963:	4c 89 95 d0 f3 ff ff 	mov    %r10,-0xc30(%rbp)
  81e96a:	4c 8b 15 cf c9 31 00 	mov    0x31c9cf(%rip),%r10        # b3b340 <mod_scalars_mp_dt_>
  81e971:	48 03 35 c8 d6 31 00 	add    0x31d6c8(%rip),%rsi        # b3c040 <mod_param_mp_nt_>
  81e978:	48 8b 0d a1 d9 31 00 	mov    0x31d9a1(%rip),%rcx        # b3c320 <mod_scalars_mp_iic_+0x40>
  81e97f:	48 c1 e1 02          	shl    $0x2,%rcx
  81e983:	48 f7 d9             	neg    %rcx
  81e986:	c4 81 7b 10 04 c2    	vmovsd (%r10,%r8,8),%xmm0
  81e98c:	4c 8b 85 d0 f1 ff ff 	mov    -0xe30(%rbp),%r8
  81e993:	4d 63 0e             	movslq (%r14),%r9
  81e996:	4a 63 3c 9e          	movslq (%rsi,%r11,4),%rdi
  81e99a:	48 03 0d 3f d9 31 00 	add    0x31d93f(%rip),%rcx        # b3c2e0 <mod_scalars_mp_iic_>
  81e9a1:	4c 89 8d e8 f3 ff ff 	mov    %r9,-0xc18(%rbp)
  81e9a8:	48 89 bd b0 f8 ff ff 	mov    %rdi,-0x750(%rbp)
  81e9af:	44 8b 8d e0 f3 ff ff 	mov    -0xc20(%rbp),%r9d
  81e9b6:	45 2b e1             	sub    %r9d,%r12d
  81e9b9:	48 8b 35 a0 4e 32 00 	mov    0x324ea0(%rip),%rsi        # b43860 <mod_sources_mp_nsrc_+0x40>
  81e9c0:	41 ff c4             	inc    %r12d
  81e9c3:	48 8b 3d f6 4d 32 00 	mov    0x324df6(%rip),%rdi        # b437c0 <mod_sources_mp_sources_>
  81e9ca:	48 8b 15 0f 4d 32 00 	mov    0x324d0f(%rip),%rdx        # b436e0 <mod_scalars_mp_ntfirst_+0x40>
  81e9d1:	48 c1 e2 02          	shl    $0x2,%rdx
  81e9d5:	48 89 b5 00 f4 ff ff 	mov    %rsi,-0xc00(%rbp)
  81e9dc:	48 f7 da             	neg    %rdx
  81e9df:	48 89 bd f8 f5 ff ff 	mov    %rdi,-0xa08(%rbp)
  81e9e6:	4d 8b 10             	mov    (%r8),%r10
  81e9e9:	49 8b 78 38          	mov    0x38(%r8),%rdi
  81e9ed:	49 8b 70 50          	mov    0x50(%r8),%rsi
  81e9f1:	44 89 a5 78 f6 ff ff 	mov    %r12d,-0x988(%rbp)
  81e9f8:	4c 8b 2d 11 fb 31 00 	mov    0x31fb11(%rip),%r13        # b3e510 <mod_scalars_mp_ltracersrc_+0x30>
  81e9ff:	4c 8b 85 c0 f1 ff ff 	mov    -0xe40(%rbp),%r8
  81ea06:	46 8b 24 99          	mov    (%rcx,%r11,4),%r12d
  81ea0a:	4c 89 ad 98 f8 ff ff 	mov    %r13,-0x768(%rbp)
  81ea11:	48 03 15 88 4c 32 00 	add    0x324c88(%rip),%rdx        # b436a0 <mod_scalars_mp_ntfirst_>
  81ea18:	44 89 a5 a0 f8 ff ff 	mov    %r12d,-0x760(%rbp)
  81ea1f:	4c 8b 2d ba fa 31 00 	mov    0x31faba(%rip),%r13        # b3e4e0 <mod_scalars_mp_ltracersrc_>
  81ea26:	4c 8b 25 03 fb 31 00 	mov    0x31fb03(%rip),%r12        # b3e530 <mod_scalars_mp_ltracersrc_+0x50>
  81ea2d:	4c 89 ad 10 f4 ff ff 	mov    %r13,-0xbf0(%rbp)
  81ea34:	4c 89 a5 20 f4 ff ff 	mov    %r12,-0xbe0(%rbp)
  81ea3b:	4c 8b ad c8 f1 ff ff 	mov    -0xe38(%rbp),%r13
  81ea42:	4c 8b 35 d7 fa 31 00 	mov    0x31fad7(%rip),%r14        # b3e520 <mod_scalars_mp_ltracersrc_+0x40>
  81ea49:	4d 8b 20             	mov    (%r8),%r12
  81ea4c:	4c 89 9d 40 f6 ff ff 	mov    %r11,-0x9c0(%rbp)
  81ea53:	4c 89 b5 f0 f3 ff ff 	mov    %r14,-0xc10(%rbp)
  81ea5a:	46 8b 3c 9a          	mov    (%rdx,%r11,4),%r15d
  81ea5e:	4c 89 a5 50 f4 ff ff 	mov    %r12,-0xbb0(%rbp)
  81ea65:	4c 8b 1d b4 4d 32 00 	mov    0x324db4(%rip),%r11        # b43820 <mod_sources_mp_nsrc_>
  81ea6c:	4c 8b 35 8d 4d 32 00 	mov    0x324d8d(%rip),%r14        # b43800 <mod_sources_mp_sources_+0x40>
  81ea73:	4c 8b a5 b8 f1 ff ff 	mov    -0xe48(%rbp),%r12
  81ea7a:	48 8b 95 e0 f1 ff ff 	mov    -0xe20(%rbp),%rdx
  81ea81:	48 8b 0d b0 fa 31 00 	mov    0x31fab0(%rip),%rcx        # b3e538 <mod_scalars_mp_ltracersrc_+0x58>
  81ea88:	44 89 bd a8 f8 ff ff 	mov    %r15d,-0x758(%rbp)
  81ea8f:	4c 89 9d f8 f3 ff ff 	mov    %r11,-0xc08(%rbp)
  81ea96:	4c 89 b5 08 f4 ff ff 	mov    %r14,-0xbf8(%rbp)
  81ea9d:	48 89 8d 18 f4 ff ff 	mov    %rcx,-0xbe8(%rbp)
  81eaa4:	48 89 95 30 f4 ff ff 	mov    %rdx,-0xbd0(%rbp)
  81eaab:	4c 8b 3d 2e 2b 32 00 	mov    0x322b2e(%rip),%r15        # b415e0 <mod_scalars_mp_lwsrc_>
  81eab2:	4c 8b 1d 67 2b 32 00 	mov    0x322b67(%rip),%r11        # b41620 <mod_scalars_mp_lwsrc_+0x40>
  81eab9:	4d 8b 75 00          	mov    0x0(%r13),%r14
  81eabd:	49 8b 4d 38          	mov    0x38(%r13),%rcx
  81eac1:	49 8b 90 98 00 00 00 	mov    0x98(%r8),%rdx
  81eac8:	4c 89 bd 28 f4 ff ff 	mov    %r15,-0xbd8(%rbp)
  81eacf:	4c 89 9d 38 f4 ff ff 	mov    %r11,-0xbc8(%rbp)
  81ead6:	4c 89 95 c0 f5 ff ff 	mov    %r10,-0xa40(%rbp)
  81eadd:	48 89 bd 40 fa ff ff 	mov    %rdi,-0x5c0(%rbp)
  81eae4:	4c 89 b5 c8 f5 ff ff 	mov    %r14,-0xa38(%rbp)
  81eaeb:	49 8b 7d 50          	mov    0x50(%r13),%rdi
  81eaef:	48 89 8d c8 f9 ff ff 	mov    %rcx,-0x638(%rbp)
  81eaf6:	48 89 95 40 f8 ff ff 	mov    %rdx,-0x7c0(%rbp)
  81eafd:	4d 8b b8 80 00 00 00 	mov    0x80(%r8),%r15
  81eb04:	4d 8b 58 68          	mov    0x68(%r8),%r11
  81eb08:	4d 8b 50 50          	mov    0x50(%r8),%r10
  81eb0c:	4d 8b 70 38          	mov    0x38(%r8),%r14
  81eb10:	4d 8b 2c 24          	mov    (%r12),%r13
  81eb14:	49 8b 54 24 38       	mov    0x38(%r12),%rdx
  81eb19:	49 8b 4c 24 68       	mov    0x68(%r12),%rcx
  81eb1e:	4d 8b 44 24 50       	mov    0x50(%r12),%r8
  81eb23:	4c 8b a5 a8 f1 ff ff 	mov    -0xe58(%rbp),%r12
  81eb2a:	4c 89 9d 20 fa ff ff 	mov    %r11,-0x5e0(%rbp)
  81eb31:	4c 89 bd 48 f4 ff ff 	mov    %r15,-0xbb8(%rbp)
  81eb38:	4d 8b 1c 24          	mov    (%r12),%r11
  81eb3c:	4c 89 9d b8 f5 ff ff 	mov    %r11,-0xa48(%rbp)
  81eb43:	4d 8b 5c 24 38       	mov    0x38(%r12),%r11
  81eb48:	4c 8b bd b0 f1 ff ff 	mov    -0xe50(%rbp),%r15
  81eb4f:	4c 89 9d d0 f9 ff ff 	mov    %r11,-0x630(%rbp)
  81eb56:	4c 8b 9d a0 f1 ff ff 	mov    -0xe60(%rbp),%r11
  81eb5d:	4c 89 95 40 f4 ff ff 	mov    %r10,-0xbc0(%rbp)
  81eb64:	4c 89 b5 50 fa ff ff 	mov    %r14,-0x5b0(%rbp)
  81eb6b:	4c 89 ad f0 f4 ff ff 	mov    %r13,-0xb10(%rbp)
  81eb72:	48 89 95 68 fa ff ff 	mov    %rdx,-0x598(%rbp)
  81eb79:	48 89 8d c0 f8 ff ff 	mov    %rcx,-0x740(%rbp)
  81eb80:	4d 8b 2f             	mov    (%r15),%r13
  81eb83:	4d 8b 77 38          	mov    0x38(%r15),%r14
  81eb87:	49 8b 57 68          	mov    0x68(%r15),%rdx
  81eb8b:	4c 2b ea             	sub    %rdx,%r13
  81eb8e:	4d 8b 57 50          	mov    0x50(%r15),%r10
  81eb92:	49 8b 4c 24 68       	mov    0x68(%r12),%rcx
  81eb97:	4d 8b 7c 24 50       	mov    0x50(%r12),%r15
  81eb9c:	4d 8b 63 68          	mov    0x68(%r11),%r12
  81eba0:	48 89 8d 10 f8 ff ff 	mov    %rcx,-0x7f0(%rbp)
  81eba7:	4c 89 a5 18 f8 ff ff 	mov    %r12,-0x7e8(%rbp)
  81ebae:	49 8b 0b             	mov    (%r11),%rcx
  81ebb1:	4d 8b 63 50          	mov    0x50(%r11),%r12
  81ebb5:	4d 8b 5b 38          	mov    0x38(%r11),%r11
  81ebb9:	89 85 d0 f4 ff ff    	mov    %eax,-0xb30(%rbp)
  81ebbf:	48 63 c0             	movslq %eax,%rax
  81ebc2:	4c 89 9d c0 f9 ff ff 	mov    %r11,-0x640(%rbp)
  81ebc9:	48 89 85 28 fa ff ff 	mov    %rax,-0x5d8(%rbp)
  81ebd0:	48 63 85 b8 f3 ff ff 	movslq -0xc48(%rbp),%rax
  81ebd7:	4c 8b 9d 18 fa ff ff 	mov    -0x5e8(%rbp),%r11
  81ebde:	48 89 85 30 fa ff ff 	mov    %rax,-0x5d0(%rbp)
  81ebe5:	49 2b c3             	sub    %r11,%rax
  81ebe8:	48 ff c0             	inc    %rax
  81ebeb:	48 89 85 60 fa ff ff 	mov    %rax,-0x5a0(%rbp)
  81ebf2:	48 8b 85 c0 f3 ff ff 	mov    -0xc40(%rbp),%rax
  81ebf9:	48 89 8d b0 f5 ff ff 	mov    %rcx,-0xa50(%rbp)
  81ec00:	48 89 c1             	mov    %rax,%rcx
  81ec03:	49 0f af ca          	imul   %r10,%rcx
  81ec07:	c5 fd 10 0d 71 63 0a 	vmovupd 0xa6371(%rip),%ymm1        # 8c4f80 <var$630.126.450+0xc0>
  81ec0e:	00 
  81ec0f:	c5 7b 10 1d 01 86 0a 	vmovsd 0xa8601(%rip),%xmm11        # 8c7218 <__STRLITPACK_199.115+0x88>
  81ec16:	00 
  81ec17:	c5 fb 10 1d e1 85 0a 	vmovsd 0xa85e1(%rip),%xmm3        # 8c7200 <__STRLITPACK_199.115+0x70>
  81ec1e:	00 
  81ec1f:	c5 f9 10 15 29 81 0a 	vmovupd 0xa8129(%rip),%xmm2        # 8c6d50 <__STRLITPACK_124.84+0x50>
  81ec26:	00 
  81ec27:	c5 7b 59 25 f9 8d 0a 	vmulsd 0xa8df9(%rip),%xmm0,%xmm12        # 8c7a28 <__STRLITPACK_199.115+0x898>
  81ec2e:	00 
  81ec2f:	c5 23 59 d0          	vmulsd %xmm0,%xmm11,%xmm10
  81ec33:	4d 63 c9             	movslq %r9d,%r9
  81ec36:	48 f7 d9             	neg    %rcx
  81ec39:	48 89 95 08 f8 ff ff 	mov    %rdx,-0x7f8(%rbp)
  81ec40:	48 03 ca             	add    %rdx,%rcx
  81ec43:	4c 89 ca             	mov    %r9,%rdx
  81ec46:	4c 89 85 88 f5 ff ff 	mov    %r8,-0xa78(%rbp)
  81ec4d:	49 0f af d0          	imul   %r8,%rdx
  81ec51:	4d 89 c8             	mov    %r9,%r8
  81ec54:	4c 89 a5 a0 f5 ff ff 	mov    %r12,-0xa60(%rbp)
  81ec5b:	4d 0f af c4          	imul   %r12,%r8
  81ec5f:	4d 89 cc             	mov    %r9,%r12
  81ec62:	4d 0f af e7          	imul   %r15,%r12
  81ec66:	4c 89 8d 80 f4 ff ff 	mov    %r9,-0xb80(%rbp)
  81ec6d:	48 89 95 e8 f4 ff ff 	mov    %rdx,-0xb18(%rbp)
  81ec74:	4c 89 ca             	mov    %r9,%rdx
  81ec77:	4c 89 a5 d8 f1 ff ff 	mov    %r12,-0xe28(%rbp)
  81ec7e:	4d 89 cc             	mov    %r9,%r12
  81ec81:	4d 0f af ca          	imul   %r10,%r9
  81ec85:	48 0f af d6          	imul   %rsi,%rdx
  81ec89:	4c 0f af e7          	imul   %rdi,%r12
  81ec8d:	4c 89 85 98 f1 ff ff 	mov    %r8,-0xe68(%rbp)
  81ec94:	4c 8b 85 c8 f3 ff ff 	mov    -0xc38(%rbp),%r8
  81ec9b:	4c 89 95 98 f5 ff ff 	mov    %r10,-0xa68(%rbp)
  81eca2:	4d 89 c2             	mov    %r8,%r10
  81eca5:	49 f7 da             	neg    %r10
  81eca8:	4d 03 d3             	add    %r11,%r10
  81ecab:	4c 89 b5 b8 f9 ff ff 	mov    %r14,-0x648(%rbp)
  81ecb2:	4d 0f af d6          	imul   %r14,%r10
  81ecb6:	4c 89 8d 00 f3 ff ff 	mov    %r9,-0xd00(%rbp)
  81ecbd:	4d 8d 74 0d 00       	lea    0x0(%r13,%rcx,1),%r14
  81ecc2:	4d 03 f1             	add    %r9,%r14
  81ecc5:	49 89 c1             	mov    %rax,%r9
  81ecc8:	4c 0f af ce          	imul   %rsi,%r9
  81eccc:	4d 03 d6             	add    %r14,%r10
  81eccf:	4d 89 de             	mov    %r11,%r14
  81ecd2:	4c 89 95 48 f5 ff ff 	mov    %r10,-0xab8(%rbp)
  81ecd9:	4c 8b 95 c0 f5 ff ff 	mov    -0xa40(%rbp),%r10
  81ece0:	48 89 8d d0 f5 ff ff 	mov    %rcx,-0xa30(%rbp)
  81ece7:	4d 2b d1             	sub    %r9,%r10
  81ecea:	48 89 c1             	mov    %rax,%rcx
  81eced:	4c 2b ca             	sub    %rdx,%r9
  81ecf0:	48 0f af cf          	imul   %rdi,%rcx
  81ecf4:	48 89 b5 80 f5 ff ff 	mov    %rsi,-0xa80(%rbp)
  81ecfb:	4c 89 c6             	mov    %r8,%rsi
  81ecfe:	4c 89 8d 08 f3 ff ff 	mov    %r9,-0xcf8(%rbp)
  81ed05:	4c 8b 8d 40 fa ff ff 	mov    -0x5c0(%rbp),%r9
  81ed0c:	4c 89 ad 90 f1 ff ff 	mov    %r13,-0xe70(%rbp)
  81ed13:	4d 8d 2c 12          	lea    (%r10,%rdx,1),%r13
  81ed17:	4c 89 95 78 f4 ff ff 	mov    %r10,-0xb88(%rbp)
  81ed1e:	4d 89 da             	mov    %r11,%r10
  81ed21:	49 0f af f1          	imul   %r9,%rsi
  81ed25:	4d 0f af f1          	imul   %r9,%r14
  81ed29:	4d 89 c1             	mov    %r8,%r9
  81ed2c:	48 89 bd 78 f5 ff ff 	mov    %rdi,-0xa88(%rbp)
  81ed33:	48 8b bd c8 f9 ff ff 	mov    -0x638(%rbp),%rdi
  81ed3a:	4c 0f af cf          	imul   %rdi,%r9
  81ed3e:	4c 0f af d7          	imul   %rdi,%r10
  81ed42:	48 89 95 e0 f4 ff ff 	mov    %rdx,-0xb20(%rbp)
  81ed49:	48 8b 95 c8 f5 ff ff 	mov    -0xa38(%rbp),%rdx
  81ed50:	48 2b d1             	sub    %rcx,%rdx
  81ed53:	49 2b cc             	sub    %r12,%rcx
  81ed56:	4c 89 a5 d8 f4 ff ff 	mov    %r12,-0xb28(%rbp)
  81ed5d:	4c 89 8d 70 f4 ff ff 	mov    %r9,-0xb90(%rbp)
  81ed64:	4d 2b ca             	sub    %r10,%r9
  81ed67:	48 89 95 88 f4 ff ff 	mov    %rdx,-0xb78(%rbp)
  81ed6e:	48 89 8d 10 f3 ff ff 	mov    %rcx,-0xcf0(%rbp)
  81ed75:	4c 03 e2             	add    %rdx,%r12
  81ed78:	4d 2b e1             	sub    %r9,%r12
  81ed7b:	49 89 c1             	mov    %rax,%r9
  81ed7e:	4c 89 c2             	mov    %r8,%rdx
  81ed81:	4c 89 d9             	mov    %r11,%rcx
  81ed84:	4d 0f af cf          	imul   %r15,%r9
  81ed88:	4c 89 bd 90 f5 ff ff 	mov    %r15,-0xa70(%rbp)
  81ed8f:	4c 8b bd d0 f9 ff ff 	mov    -0x630(%rbp),%r15
  81ed96:	49 0f af d7          	imul   %r15,%rdx
  81ed9a:	49 0f af cf          	imul   %r15,%rcx
  81ed9e:	48 89 b5 68 f4 ff ff 	mov    %rsi,-0xb98(%rbp)
  81eda5:	49 2b f6             	sub    %r14,%rsi
  81eda8:	4c 89 95 60 f4 ff ff 	mov    %r10,-0xba0(%rbp)
  81edaf:	4c 2b ee             	sub    %rsi,%r13
  81edb2:	4c 8b 95 b8 f5 ff ff 	mov    -0xa48(%rbp),%r10
  81edb9:	4c 89 d6             	mov    %r10,%rsi
  81edbc:	48 8b bd 10 f8 ff ff 	mov    -0x7f0(%rbp),%rdi
  81edc3:	48 2b f7             	sub    %rdi,%rsi
  81edc6:	49 2b f9             	sub    %r9,%rdi
  81edc9:	4c 89 b5 58 f4 ff ff 	mov    %r14,-0xba8(%rbp)
  81edd0:	4c 8b b5 d8 f1 ff ff 	mov    -0xe28(%rbp),%r14
  81edd7:	4d 2b ce             	sub    %r14,%r9
  81edda:	4c 2b f2             	sub    %rdx,%r14
  81eddd:	48 2b d1             	sub    %rcx,%rdx
  81ede0:	49 03 d1             	add    %r9,%rdx
  81ede3:	48 f7 da             	neg    %rdx
  81ede6:	4c 89 ad 38 f5 ff ff 	mov    %r13,-0xac8(%rbp)
  81eded:	4c 8d 2c 3e          	lea    (%rsi,%rdi,1),%r13
  81edf1:	49 03 d2             	add    %r10,%rdx
  81edf4:	4d 03 ee             	add    %r14,%r13
  81edf7:	4c 89 a5 40 f5 ff ff 	mov    %r12,-0xac0(%rbp)
  81edfe:	49 89 c4             	mov    %rax,%r12
  81ee01:	4d 89 c6             	mov    %r8,%r14
  81ee04:	49 03 d7             	add    %r15,%rdx
  81ee07:	48 89 95 f0 f5 ff ff 	mov    %rdx,-0xa10(%rbp)
  81ee0e:	4c 03 e9             	add    %rcx,%r13
  81ee11:	48 8b 95 a0 f5 ff ff 	mov    -0xa60(%rbp),%rdx
  81ee18:	4c 8b 95 c0 f9 ff ff 	mov    -0x640(%rbp),%r10
  81ee1f:	4c 0f af e2          	imul   %rdx,%r12
  81ee23:	4d 0f af f2          	imul   %r10,%r14
  81ee27:	48 0f af 85 88 f5 ff 	imul   -0xa78(%rbp),%rax
  81ee2e:	ff 
  81ee2f:	4c 89 ad 50 f5 ff ff 	mov    %r13,-0xab0(%rbp)
  81ee36:	4d 89 dd             	mov    %r11,%r13
  81ee39:	4d 0f af ea          	imul   %r10,%r13
  81ee3d:	48 8b 8d b0 f5 ff ff 	mov    -0xa50(%rbp),%rcx
  81ee44:	48 89 bd a8 f5 ff ff 	mov    %rdi,-0xa58(%rbp)
  81ee4b:	48 89 cf             	mov    %rcx,%rdi
  81ee4e:	4c 89 8d 18 f3 ff ff 	mov    %r9,-0xce8(%rbp)
  81ee55:	4c 8b 8d 18 f8 ff ff 	mov    -0x7e8(%rbp),%r9
  81ee5c:	49 2b f9             	sub    %r9,%rdi
  81ee5f:	4c 8b bd 98 f1 ff ff 	mov    -0xe68(%rbp),%r15
  81ee66:	4d 2b cc             	sub    %r12,%r9
  81ee69:	4d 2b e7             	sub    %r15,%r12
  81ee6c:	4d 2b fe             	sub    %r14,%r15
  81ee6f:	49 f7 de             	neg    %r14
  81ee72:	4c 03 f2             	add    %rdx,%r14
  81ee75:	49 f7 de             	neg    %r14
  81ee78:	4e 8d 14 0f          	lea    (%rdi,%r9,1),%r10
  81ee7c:	4d 03 f4             	add    %r12,%r14
  81ee7f:	4d 03 d7             	add    %r15,%r10
  81ee82:	49 f7 de             	neg    %r14
  81ee85:	4d 03 d5             	add    %r13,%r10
  81ee88:	4c 03 f1             	add    %rcx,%r14
  81ee8b:	4d 03 f5             	add    %r13,%r14
  81ee8e:	4d 89 c5             	mov    %r8,%r13
  81ee91:	4c 0f af ad 68 fa ff 	imul   -0x598(%rbp),%r13
  81ee98:	ff 
  81ee99:	48 8b 8d e8 f4 ff ff 	mov    -0xb18(%rbp),%rcx
  81eea0:	49 c1 e0 03          	shl    $0x3,%r8
  81eea4:	4c 89 b5 e8 f5 ff ff 	mov    %r14,-0xa18(%rbp)
  81eeab:	49 89 ce             	mov    %rcx,%r14
  81eeae:	4c 89 ad a0 f4 ff ff 	mov    %r13,-0xb60(%rbp)
  81eeb5:	4d 2b f5             	sub    %r13,%r14
  81eeb8:	4d 89 dd             	mov    %r11,%r13
  81eebb:	49 c1 e3 03          	shl    $0x3,%r11
  81eebf:	4c 0f af ad 68 fa ff 	imul   -0x598(%rbp),%r13
  81eec6:	ff 
  81eec7:	48 8b 95 f0 f4 ff ff 	mov    -0xb10(%rbp),%rdx
  81eece:	4c 89 95 58 f5 ff ff 	mov    %r10,-0xaa8(%rbp)
  81eed5:	49 89 d2             	mov    %rdx,%r10
  81eed8:	4c 2b d0             	sub    %rax,%r10
  81eedb:	4c 89 ad b0 f4 ff ff 	mov    %r13,-0xb50(%rbp)
  81eee2:	4c 89 b5 b8 f4 ff ff 	mov    %r14,-0xb48(%rbp)
  81eee9:	48 89 85 c0 f4 ff ff 	mov    %rax,-0xb40(%rbp)
  81eef0:	c7 85 60 f6 ff ff 00 	movl   $0x0,-0x9a0(%rbp)
  81eef7:	00 00 00 
  81eefa:	4f 8d 3c 32          	lea    (%r10,%r14,1),%r15
  81eefe:	4c 89 bd a8 f4 ff ff 	mov    %r15,-0xb58(%rbp)
  81ef05:	4d 03 fd             	add    %r13,%r15
  81ef08:	4c 89 bd 60 f5 ff ff 	mov    %r15,-0xaa0(%rbp)
  81ef0f:	4c 8b bd c0 f8 ff ff 	mov    -0x740(%rbp),%r15
  81ef16:	4c 03 fa             	add    %rdx,%r15
  81ef19:	4c 2b f8             	sub    %rax,%r15
  81ef1c:	4d 03 fe             	add    %r14,%r15
  81ef1f:	4d 03 fd             	add    %r13,%r15
  81ef22:	4d 89 dd             	mov    %r11,%r13
  81ef25:	4c 89 bd 68 f5 ff ff 	mov    %r15,-0xa98(%rbp)
  81ef2c:	4d 2b d8             	sub    %r8,%r11
  81ef2f:	4c 8b bd d8 f3 ff ff 	mov    -0xc28(%rbp),%r15
  81ef36:	49 03 fb             	add    %r11,%rdi
  81ef39:	4c 2b ad d0 f3 ff ff 	sub    -0xc30(%rbp),%r13
  81ef40:	49 03 f3             	add    %r11,%rsi
  81ef43:	4c 89 ad 98 f4 ff ff 	mov    %r13,-0xb68(%rbp)
  81ef4a:	4c 03 cf             	add    %rdi,%r9
  81ef4d:	48 8b bd a8 f5 ff ff 	mov    -0xa58(%rbp),%rdi
  81ef54:	4e 8d 34 fd 08 00 00 	lea    0x8(,%r15,8),%r14
  81ef5b:	00 
  81ef5c:	4c 89 b5 38 fa ff ff 	mov    %r14,-0x5c8(%rbp)
  81ef63:	4f 8d 74 fd 00       	lea    0x0(%r13,%r15,8),%r14
  81ef68:	4c 89 b5 90 f4 ff ff 	mov    %r14,-0xb70(%rbp)
  81ef6f:	48 03 fe             	add    %rsi,%rdi
  81ef72:	4c 8b ad 40 f2 ff ff 	mov    -0xdc0(%rbp),%r13
  81ef79:	4d 03 d3             	add    %r11,%r10
  81ef7c:	4d 03 ee             	add    %r14,%r13
  81ef7f:	4c 03 d1             	add    %rcx,%r10
  81ef82:	4c 8b b5 b0 f5 ff ff 	mov    -0xa50(%rbp),%r14
  81ef89:	4d 03 f3             	add    %r11,%r14
  81ef8c:	4d 2b f4             	sub    %r12,%r14
  81ef8f:	4e 8d 24 1a          	lea    (%rdx,%r11,1),%r12
  81ef93:	48 8b 95 c0 f8 ff ff 	mov    -0x740(%rbp),%rdx
  81ef9a:	48 2b d0             	sub    %rax,%rdx
  81ef9d:	48 03 bd d8 f1 ff ff 	add    -0xe28(%rbp),%rdi
  81efa4:	49 03 d4             	add    %r12,%rdx
  81efa7:	48 8b b5 90 f1 ff ff 	mov    -0xe70(%rbp),%rsi
  81efae:	48 03 d1             	add    %rcx,%rdx
  81efb1:	49 03 f3             	add    %r11,%rsi
  81efb4:	48 8b 85 60 fa ff ff 	mov    -0x5a0(%rbp),%rax
  81efbb:	4c 8b 85 d0 f5 ff ff 	mov    -0xa30(%rbp),%r8
  81efc2:	89 c1                	mov    %eax,%ecx
  81efc4:	4c 89 ad 98 f9 ff ff 	mov    %r13,-0x668(%rbp)
  81efcb:	4c 03 c6             	add    %rsi,%r8
  81efce:	48 89 bd a8 f5 ff ff 	mov    %rdi,-0xa58(%rbp)
  81efd5:	83 e0 fe             	and    $0xfffffffe,%eax
  81efd8:	48 8b bd c8 f5 ff ff 	mov    -0xa38(%rbp),%rdi
  81efdf:	83 e1 fc             	and    $0xfffffffc,%ecx
  81efe2:	48 8b b5 c0 f5 ff ff 	mov    -0xa40(%rbp),%rsi
  81efe9:	49 03 fb             	add    %r11,%rdi
  81efec:	4c 8b ad b8 f5 ff ff 	mov    -0xa48(%rbp),%r13
  81eff3:	49 03 f3             	add    %r11,%rsi
  81eff6:	4d 03 eb             	add    %r11,%r13
  81eff9:	4c 03 8d 98 f1 ff ff 	add    -0xe68(%rbp),%r9
  81f000:	4c 03 85 00 f3 ff ff 	add    -0xd00(%rbp),%r8
  81f007:	48 2b bd 10 f3 ff ff 	sub    -0xcf0(%rbp),%rdi
  81f00e:	48 2b b5 08 f3 ff ff 	sub    -0xcf8(%rbp),%rsi
  81f015:	4c 2b ad 18 f3 ff ff 	sub    -0xce8(%rbp),%r13
  81f01c:	4c 03 b5 a0 f5 ff ff 	add    -0xa60(%rbp),%r14
  81f023:	48 63 c0             	movslq %eax,%rax
  81f026:	4c 89 a5 c8 f4 ff ff 	mov    %r12,-0xb38(%rbp)
  81f02d:	48 89 95 70 f5 ff ff 	mov    %rdx,-0xa90(%rbp)
  81f034:	48 63 c9             	movslq %ecx,%rcx
  81f037:	48 89 85 58 fa ff ff 	mov    %rax,-0x5a8(%rbp)
  81f03e:	4c 89 8d d8 f5 ff ff 	mov    %r9,-0xa28(%rbp)
  81f045:	48 89 8d c0 fa ff ff 	mov    %rcx,-0x540(%rbp)
  81f04c:	33 c9                	xor    %ecx,%ecx
  81f04e:	44 8b a5 78 f6 ff ff 	mov    -0x988(%rbp),%r12d
  81f055:	48 8b 95 f0 f5 ff ff 	mov    -0xa10(%rbp),%rdx
  81f05c:	44 8b 8d 60 f6 ff ff 	mov    -0x9a0(%rbp),%r9d
  81f063:	4c 89 b5 b0 f5 ff ff 	mov    %r14,-0xa50(%rbp)
  81f06a:	4c 89 ad b8 f5 ff ff 	mov    %r13,-0xa48(%rbp)
  81f071:	48 89 b5 c0 f5 ff ff 	mov    %rsi,-0xa40(%rbp)
  81f078:	48 89 bd c8 f5 ff ff 	mov    %rdi,-0xa38(%rbp)
  81f07f:	4c 89 85 d0 f5 ff ff 	mov    %r8,-0xa30(%rbp)
  81f086:	4c 89 95 e0 f5 ff ff 	mov    %r10,-0xa20(%rbp)
  81f08d:	4c 89 9d f8 f4 ff ff 	mov    %r11,-0xb08(%rbp)
  81f094:	8b 85 a0 f8 ff ff    	mov    -0x760(%rbp),%eax
  81f09a:	c4 c1 79 28 ea       	vmovapd %xmm10,%xmm5
  81f09f:	3b 85 a8 f8 ff ff    	cmp    -0x758(%rbp),%eax
  81f0a5:	74 05                	je     81f0ac <pre_step3d_mod_mp_pre_step3d_tile_+0xaafc>
  81f0a7:	c4 c1 78 28 ec       	vmovaps %xmm12,%xmm5
  81f0ac:	48 83 bd b8 f9 ff ff 	cmpq   $0x8,-0x648(%rbp)
  81f0b3:	08 
  81f0b4:	0f 85 30 04 00 00    	jne    81f4ea <pre_step3d_mod_mp_pre_step3d_tile_+0xaf3a>
  81f0ba:	48 83 bd 40 fa ff ff 	cmpq   $0x8,-0x5c0(%rbp)
  81f0c1:	08 
  81f0c2:	0f 85 22 04 00 00    	jne    81f4ea <pre_step3d_mod_mp_pre_step3d_tile_+0xaf3a>
  81f0c8:	48 83 bd c8 f9 ff ff 	cmpq   $0x8,-0x638(%rbp)
  81f0cf:	08 
  81f0d0:	0f 85 14 04 00 00    	jne    81f4ea <pre_step3d_mod_mp_pre_step3d_tile_+0xaf3a>
  81f0d6:	48 83 bd d0 f9 ff ff 	cmpq   $0x8,-0x630(%rbp)
  81f0dd:	08 
  81f0de:	0f 85 06 04 00 00    	jne    81f4ea <pre_step3d_mod_mp_pre_step3d_tile_+0xaf3a>
  81f0e4:	48 83 bd c0 f9 ff ff 	cmpq   $0x8,-0x640(%rbp)
  81f0eb:	08 
  81f0ec:	0f 85 f8 03 00 00    	jne    81f4ea <pre_step3d_mod_mp_pre_step3d_tile_+0xaf3a>
  81f0f2:	48 83 bd 68 fa ff ff 	cmpq   $0x8,-0x598(%rbp)
  81f0f9:	08 
  81f0fa:	0f 85 ea 03 00 00    	jne    81f4ea <pre_step3d_mod_mp_pre_step3d_tile_+0xaf3a>
  81f100:	45 33 e4             	xor    %r12d,%r12d
  81f103:	48 8b 85 98 f9 ff ff 	mov    -0x668(%rbp),%rax
  81f10a:	45 33 d2             	xor    %r10d,%r10d
  81f10d:	48 89 85 a8 f7 ff ff 	mov    %rax,-0x858(%rbp)
  81f114:	4c 89 95 b0 f7 ff ff 	mov    %r10,-0x850(%rbp)
  81f11b:	4c 89 95 a0 f7 ff ff 	mov    %r10,-0x860(%rbp)
  81f122:	48 83 bd 28 fa ff ff 	cmpq   $0x0,-0x5d8(%rbp)
  81f129:	00 
  81f12a:	0f 8e 12 09 00 00    	jle    81fa42 <pre_step3d_mod_mp_pre_step3d_tile_+0xb492>
  81f130:	48 8b bd 90 f5 ff ff 	mov    -0xa70(%rbp),%rdi
  81f137:	48 0f af f9          	imul   %rcx,%rdi
  81f13b:	c5 fd 10 1d 3d 5e 0a 	vmovupd 0xa5e3d(%rip),%ymm3        # 8c4f80 <var$630.126.450+0xc0>
  81f142:	00 
  81f143:	c5 fb 10 15 b5 80 0a 	vmovsd 0xa80b5(%rip),%xmm2        # 8c7200 <__STRLITPACK_199.115+0x70>
  81f14a:	00 
  81f14b:	c4 e2 7d 19 c5       	vbroadcastsd %xmm5,%ymm0
  81f150:	4c 8b 85 a8 f5 ff ff 	mov    -0xa58(%rbp),%r8
  81f157:	48 8b b5 88 f5 ff ff 	mov    -0xa78(%rbp),%rsi
  81f15e:	4c 8b 9d a0 f5 ff ff 	mov    -0xa60(%rbp),%r11
  81f165:	4c 8b b5 78 f5 ff ff 	mov    -0xa88(%rbp),%r14
  81f16c:	4d 8d 3c 38          	lea    (%r8,%rdi,1),%r15
  81f170:	4c 8b ad 80 f5 ff ff 	mov    -0xa80(%rbp),%r13
  81f177:	48 0f af f1          	imul   %rcx,%rsi
  81f17b:	4c 0f af d9          	imul   %rcx,%r11
  81f17f:	4c 0f af f1          	imul   %rcx,%r14
  81f183:	4c 0f af e9          	imul   %rcx,%r13
  81f187:	4c 8b 85 98 f5 ff ff 	mov    -0xa68(%rbp),%r8
  81f18e:	4c 0f af c1          	imul   %rcx,%r8
  81f192:	48 8b 95 e0 f5 ff ff 	mov    -0xa20(%rbp),%rdx
  81f199:	48 8b 85 d8 f5 ff ff 	mov    -0xa28(%rbp),%rax
  81f1a0:	48 03 bd b8 f5 ff ff 	add    -0xa48(%rbp),%rdi
  81f1a7:	4c 03 b5 c8 f5 ff ff 	add    -0xa38(%rbp),%r14
  81f1ae:	48 03 d6             	add    %rsi,%rdx
  81f1b1:	48 03 b5 70 f5 ff ff 	add    -0xa90(%rbp),%rsi
  81f1b8:	49 03 c3             	add    %r11,%rax
  81f1bb:	4c 03 9d b0 f5 ff ff 	add    -0xa50(%rbp),%r11
  81f1c2:	4c 03 ad c0 f5 ff ff 	add    -0xa40(%rbp),%r13
  81f1c9:	48 89 bd 40 f7 ff ff 	mov    %rdi,-0x8c0(%rbp)
  81f1d0:	48 89 b5 48 f7 ff ff 	mov    %rsi,-0x8b8(%rbp)
  81f1d7:	48 89 95 60 f7 ff ff 	mov    %rdx,-0x8a0(%rbp)
  81f1de:	48 89 8d 68 f6 ff ff 	mov    %rcx,-0x998(%rbp)
  81f1e5:	4c 03 85 d0 f5 ff ff 	add    -0xa30(%rbp),%r8
  81f1ec:	4c 89 d1             	mov    %r10,%rcx
  81f1ef:	48 8b b5 b0 f7 ff ff 	mov    -0x850(%rbp),%rsi
  81f1f6:	48 8b bd a8 f7 ff ff 	mov    -0x858(%rbp),%rdi
  81f1fd:	48 8b 95 60 fa ff ff 	mov    -0x5a0(%rbp),%rdx
  81f204:	4c 89 9d 38 f7 ff ff 	mov    %r11,-0x8c8(%rbp)
  81f20b:	4c 89 ad 68 f7 ff ff 	mov    %r13,-0x898(%rbp)
  81f212:	4c 89 b5 70 f7 ff ff 	mov    %r14,-0x890(%rbp)
  81f219:	4c 89 bd 50 f7 ff ff 	mov    %r15,-0x8b0(%rbp)
  81f220:	48 89 85 58 f7 ff ff 	mov    %rax,-0x8a8(%rbp)
  81f227:	4c 89 a5 38 f8 ff ff 	mov    %r12,-0x7c8(%rbp)
  81f22e:	44 89 8d 60 f6 ff ff 	mov    %r9d,-0x9a0(%rbp)
  81f235:	48 8b 85 30 fa ff ff 	mov    -0x5d0(%rbp),%rax
  81f23c:	48 3b 85 18 fa ff ff 	cmp    -0x5e8(%rbp),%rax
  81f243:	0f 8c 5b 02 00 00    	jl     81f4a4 <pre_step3d_mod_mp_pre_step3d_tile_+0xaef4>
  81f249:	48 83 fa 04          	cmp    $0x4,%rdx
  81f24d:	0f 8c 4d 59 00 00    	jl     824ba0 <pre_step3d_mod_mp_pre_step3d_tile_+0x105f0>
  81f253:	4c 8b a5 50 f7 ff ff 	mov    -0x8b0(%rbp),%r12
  81f25a:	45 33 ed             	xor    %r13d,%r13d
  81f25d:	4c 8b 8d 40 f7 ff ff 	mov    -0x8c0(%rbp),%r9
  81f264:	4c 8b bd 38 f7 ff ff 	mov    -0x8c8(%rbp),%r15
  81f26b:	4c 8b b5 58 f7 ff ff 	mov    -0x8a8(%rbp),%r14
  81f272:	4f 8d 1c 14          	lea    (%r12,%r10,1),%r11
  81f276:	4c 89 9d 98 f7 ff ff 	mov    %r11,-0x868(%rbp)
  81f27d:	4f 8d 24 11          	lea    (%r9,%r10,1),%r12
  81f281:	48 89 bd 78 f7 ff ff 	mov    %rdi,-0x888(%rbp)
  81f288:	4d 8d 0c 37          	lea    (%r15,%rsi,1),%r9
  81f28c:	4c 8b bd 48 f7 ff ff 	mov    -0x8b8(%rbp),%r15
  81f293:	4d 8d 1c 36          	lea    (%r14,%rsi,1),%r11
  81f297:	4c 8b b5 60 f7 ff ff 	mov    -0x8a0(%rbp),%r14
  81f29e:	48 8b 85 c0 fa ff ff 	mov    -0x540(%rbp),%rax
  81f2a5:	48 89 8d a0 f7 ff ff 	mov    %rcx,-0x860(%rbp)
  81f2ac:	4c 03 f9             	add    %rcx,%r15
  81f2af:	4c 89 bd 80 f7 ff ff 	mov    %r15,-0x880(%rbp)
  81f2b6:	4c 03 f1             	add    %rcx,%r14
  81f2b9:	48 89 b5 b0 f7 ff ff 	mov    %rsi,-0x850(%rbp)
  81f2c0:	49 89 c7             	mov    %rax,%r15
  81f2c3:	4c 89 95 e0 f7 ff ff 	mov    %r10,-0x820(%rbp)
  81f2ca:	48 89 bd a8 f7 ff ff 	mov    %rdi,-0x858(%rbp)
  81f2d1:	48 8b 95 78 f7 ff ff 	mov    -0x888(%rbp),%rdx
  81f2d8:	48 8b 8d 80 f7 ff ff 	mov    -0x880(%rbp),%rcx
  81f2df:	48 8b b5 98 f7 ff ff 	mov    -0x868(%rbp),%rsi
  81f2e6:	48 8b bd 68 f7 ff ff 	mov    -0x898(%rbp),%rdi
  81f2ed:	4c 8b 95 70 f7 ff ff 	mov    -0x890(%rbp),%r10
  81f2f4:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  81f2f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  81f300:	c4 81 7d 10 74 ec 08 	vmovupd 0x8(%r12,%r13,8),%ymm6
  81f307:	c4 21 7d 10 0c e9    	vmovupd (%rcx,%r13,8),%ymm9
  81f30d:	c4 a1 7d 59 24 ef    	vmulpd (%rdi,%r13,8),%ymm0,%ymm4
  81f313:	c4 81 7d 10 0c e8    	vmovupd (%r8,%r13,8),%ymm1
  81f319:	c4 a1 4d 5c 3c ee    	vsubpd (%rsi,%r13,8),%ymm6,%ymm7
  81f31f:	c4 01 35 5c 34 ee    	vsubpd (%r14,%r13,8),%ymm9,%ymm14
  81f325:	c4 01 5d 59 3c ea    	vmulpd (%r10,%r13,8),%ymm4,%ymm15
  81f32b:	c4 01 45 58 04 e9    	vaddpd (%r9,%r13,8),%ymm7,%ymm8
  81f331:	c4 01 3d 5c 2c eb    	vsubpd (%r11,%r13,8),%ymm8,%ymm13
  81f337:	49 83 c5 04          	add    $0x4,%r13
  81f33b:	c4 c1 15 58 e6       	vaddpd %ymm14,%ymm13,%ymm4
  81f340:	c5 85 59 f4          	vmulpd %ymm4,%ymm15,%ymm6
  81f344:	c5 f5 5c ce          	vsubpd %ymm6,%ymm1,%ymm1
  81f348:	c5 e5 5e f9          	vdivpd %ymm1,%ymm3,%ymm7
  81f34c:	c5 fd 11 7a 08       	vmovupd %ymm7,0x8(%rdx)
  81f351:	48 83 c2 20          	add    $0x20,%rdx
  81f355:	4d 3b ef             	cmp    %r15,%r13
  81f358:	72 a6                	jb     81f300 <pre_step3d_mod_mp_pre_step3d_tile_+0xad50>
  81f35a:	48 8b 8d a0 f7 ff ff 	mov    -0x860(%rbp),%rcx
  81f361:	48 8b b5 b0 f7 ff ff 	mov    -0x850(%rbp),%rsi
  81f368:	4c 8b 95 e0 f7 ff ff 	mov    -0x820(%rbp),%r10
  81f36f:	48 8b bd a8 f7 ff ff 	mov    -0x858(%rbp),%rdi
  81f376:	48 8b 95 60 fa ff ff 	mov    -0x5a0(%rbp),%rdx
  81f37d:	4c 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%r13
  81f384:	00 
  81f385:	48 3b c2             	cmp    %rdx,%rax
  81f388:	0f 83 16 01 00 00    	jae    81f4a4 <pre_step3d_mod_mp_pre_step3d_tile_+0xaef4>
  81f38e:	4c 8b 8d 40 f7 ff ff 	mov    -0x8c0(%rbp),%r9
  81f395:	4c 8d 24 c7          	lea    (%rdi,%rax,8),%r12
  81f399:	4c 8b bd 58 f7 ff ff 	mov    -0x8a8(%rbp),%r15
  81f3a0:	4c 8b 9d 50 f7 ff ff 	mov    -0x8b0(%rbp),%r11
  81f3a7:	48 89 8d a0 f7 ff ff 	mov    %rcx,-0x860(%rbp)
  81f3ae:	4f 8d 34 11          	lea    (%r9,%r10,1),%r14
  81f3b2:	4c 89 b5 88 f7 ff ff 	mov    %r14,-0x878(%rbp)
  81f3b9:	4d 8d 0c 37          	lea    (%r15,%rsi,1),%r9
  81f3bd:	4c 8b bd 60 f7 ff ff 	mov    -0x8a0(%rbp),%r15
  81f3c4:	4d 03 da             	add    %r10,%r11
  81f3c7:	4c 8b b5 38 f7 ff ff 	mov    -0x8c8(%rbp),%r14
  81f3ce:	48 89 b5 b0 f7 ff ff 	mov    %rsi,-0x850(%rbp)
  81f3d5:	4c 89 95 e0 f7 ff ff 	mov    %r10,-0x820(%rbp)
  81f3dc:	4c 03 f9             	add    %rcx,%r15
  81f3df:	4c 89 bd 90 f7 ff ff 	mov    %r15,-0x870(%rbp)
  81f3e6:	4c 03 f6             	add    %rsi,%r14
  81f3e9:	4c 8b bd 48 f7 ff ff 	mov    -0x8b8(%rbp),%r15
  81f3f0:	48 89 bd a8 f7 ff ff 	mov    %rdi,-0x858(%rbp)
  81f3f7:	48 8b b5 90 f7 ff ff 	mov    -0x870(%rbp),%rsi
  81f3fe:	48 8b bd 88 f7 ff ff 	mov    -0x878(%rbp),%rdi
  81f405:	4c 03 f9             	add    %rcx,%r15
  81f408:	4c 89 f9             	mov    %r15,%rcx
  81f40b:	4c 8b 95 68 f7 ff ff 	mov    -0x898(%rbp),%r10
  81f412:	4c 8b bd 70 f7 ff ff 	mov    -0x890(%rbp),%r15
  81f419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  81f420:	c4 c1 7b 10 64 3d 08 	vmovsd 0x8(%r13,%rdi,1),%xmm4
  81f427:	48 ff c0             	inc    %rax
  81f42a:	c4 41 7b 10 44 0d 00 	vmovsd 0x0(%r13,%rcx,1),%xmm8
  81f431:	c4 81 53 59 4c 15 00 	vmulsd 0x0(%r13,%r10,1),%xmm5,%xmm1
  81f438:	c4 81 5b 5c 74 1d 00 	vsubsd 0x0(%r13,%r11,1),%xmm4,%xmm6
  81f43f:	c4 41 3b 5c 6c 35 00 	vsubsd 0x0(%r13,%rsi,1),%xmm8,%xmm13
  81f446:	c4 01 73 59 74 3d 00 	vmulsd 0x0(%r13,%r15,1),%xmm1,%xmm14
  81f44d:	c4 81 4b 58 7c 35 00 	vaddsd 0x0(%r13,%r14,1),%xmm6,%xmm7
  81f454:	c4 81 7b 10 4c 05 00 	vmovsd 0x0(%r13,%r8,1),%xmm1
  81f45b:	c4 01 43 5c 4c 0d 00 	vsubsd 0x0(%r13,%r9,1),%xmm7,%xmm9
  81f462:	49 83 c5 08          	add    $0x8,%r13
  81f466:	c4 41 33 58 fd       	vaddsd %xmm13,%xmm9,%xmm15
  81f46b:	c4 c1 0b 59 e7       	vmulsd %xmm15,%xmm14,%xmm4
  81f470:	c5 f3 5c f4          	vsubsd %xmm4,%xmm1,%xmm6
  81f474:	c5 eb 5e fe          	vdivsd %xmm6,%xmm2,%xmm7
  81f478:	c4 c1 7b 11 7c 24 08 	vmovsd %xmm7,0x8(%r12)
  81f47f:	49 83 c4 08          	add    $0x8,%r12
  81f483:	48 3b c2             	cmp    %rdx,%rax
  81f486:	72 98                	jb     81f420 <pre_step3d_mod_mp_pre_step3d_tile_+0xae70>
  81f488:	48 8b 8d a0 f7 ff ff 	mov    -0x860(%rbp),%rcx
  81f48f:	48 8b b5 b0 f7 ff ff 	mov    -0x850(%rbp),%rsi
  81f496:	4c 8b 95 e0 f7 ff ff 	mov    -0x820(%rbp),%r10
  81f49d:	48 8b bd a8 f7 ff ff 	mov    -0x858(%rbp),%rdi
  81f4a4:	48 8b 85 38 f8 ff ff 	mov    -0x7c8(%rbp),%rax
  81f4ab:	48 ff c0             	inc    %rax
  81f4ae:	48 03 bd 38 fa ff ff 	add    -0x5c8(%rbp),%rdi
  81f4b5:	4c 03 85 08 f8 ff ff 	add    -0x7f8(%rbp),%r8
  81f4bc:	4c 03 95 10 f8 ff ff 	add    -0x7f0(%rbp),%r10
  81f4c3:	48 03 b5 18 f8 ff ff 	add    -0x7e8(%rbp),%rsi
  81f4ca:	48 03 8d c0 f8 ff ff 	add    -0x740(%rbp),%rcx
  81f4d1:	48 89 85 38 f8 ff ff 	mov    %rax,-0x7c8(%rbp)
  81f4d8:	48 3b 85 28 fa ff ff 	cmp    -0x5d8(%rbp),%rax
  81f4df:	0f 82 50 fd ff ff    	jb     81f235 <pre_step3d_mod_mp_pre_step3d_tile_+0xac85>
  81f4e5:	e9 4a 05 00 00       	jmpq   81fa34 <pre_step3d_mod_mp_pre_step3d_tile_+0xb484>
  81f4ea:	45 33 ed             	xor    %r13d,%r13d
  81f4ed:	33 f6                	xor    %esi,%esi
  81f4ef:	33 d2                	xor    %edx,%edx
  81f4f1:	48 8b 85 98 f9 ff ff 	mov    -0x668(%rbp),%rax
  81f4f8:	33 ff                	xor    %edi,%edi
  81f4fa:	48 83 bd 28 fa ff ff 	cmpq   $0x0,-0x5d8(%rbp)
  81f501:	00 
  81f502:	0f 8e 3a 05 00 00    	jle    81fa42 <pre_step3d_mod_mp_pre_step3d_tile_+0xb492>
  81f508:	4c 8b 85 80 f5 ff ff 	mov    -0xa80(%rbp),%r8
  81f50f:	4c 0f af c1          	imul   %rcx,%r8
  81f513:	4c 8b b5 90 f5 ff ff 	mov    -0xa70(%rbp),%r14
  81f51a:	4c 0f af f1          	imul   %rcx,%r14
  81f51e:	4c 8b 95 a0 f5 ff ff 	mov    -0xa60(%rbp),%r10
  81f525:	4c 0f af d1          	imul   %rcx,%r10
  81f529:	4c 03 85 38 f5 ff ff 	add    -0xac8(%rbp),%r8
  81f530:	4c 89 85 d8 f9 ff ff 	mov    %r8,-0x628(%rbp)
  81f537:	4c 8b 9d 98 f5 ff ff 	mov    -0xa68(%rbp),%r11
  81f53e:	4c 8b a5 88 f5 ff ff 	mov    -0xa78(%rbp),%r12
  81f545:	4c 8b 85 78 f5 ff ff 	mov    -0xa88(%rbp),%r8
  81f54c:	4c 0f af d9          	imul   %rcx,%r11
  81f550:	4c 0f af e1          	imul   %rcx,%r12
  81f554:	4c 0f af c1          	imul   %rcx,%r8
  81f558:	4c 8b bd 50 f5 ff ff 	mov    -0xab0(%rbp),%r15
  81f55f:	4c 03 9d 48 f5 ff ff 	add    -0xab8(%rbp),%r11
  81f566:	4c 03 85 40 f5 ff ff 	add    -0xac0(%rbp),%r8
  81f56d:	c5 fb 12 d5          	vmovddup %xmm5,%xmm2
  81f571:	4d 03 fe             	add    %r14,%r15
  81f574:	4c 89 bd e8 f6 ff ff 	mov    %r15,-0x918(%rbp)
  81f57b:	4c 8b bd 58 f5 ff ff 	mov    -0xaa8(%rbp),%r15
  81f582:	4c 03 b5 f0 f5 ff ff 	add    -0xa10(%rbp),%r14
  81f589:	4c 89 b5 00 f7 ff ff 	mov    %r14,-0x900(%rbp)
  81f590:	4c 89 85 e8 f9 ff ff 	mov    %r8,-0x618(%rbp)
  81f597:	4d 03 fa             	add    %r10,%r15
  81f59a:	4c 89 bd e0 f6 ff ff 	mov    %r15,-0x920(%rbp)
  81f5a1:	4c 8b bd 60 f5 ff ff 	mov    -0xaa0(%rbp),%r15
  81f5a8:	4c 03 95 e8 f5 ff ff 	add    -0xa18(%rbp),%r10
  81f5af:	4c 89 95 f8 f6 ff ff 	mov    %r10,-0x908(%rbp)
  81f5b6:	4c 89 9d e0 f9 ff ff 	mov    %r11,-0x620(%rbp)
  81f5bd:	4d 03 fc             	add    %r12,%r15
  81f5c0:	4c 03 a5 68 f5 ff ff 	add    -0xa98(%rbp),%r12
  81f5c7:	4c 89 bd d8 f6 ff ff 	mov    %r15,-0x928(%rbp)
  81f5ce:	4c 89 a5 f0 f6 ff ff 	mov    %r12,-0x910(%rbp)
  81f5d5:	4c 89 ad 30 f8 ff ff 	mov    %r13,-0x7d0(%rbp)
  81f5dc:	48 89 8d 68 f6 ff ff 	mov    %rcx,-0x998(%rbp)
  81f5e3:	44 89 8d 60 f6 ff ff 	mov    %r9d,-0x9a0(%rbp)
  81f5ea:	c5 f9 10 25 5e 77 0a 	vmovupd 0xa775e(%rip),%xmm4        # 8c6d50 <__STRLITPACK_124.84+0x50>
  81f5f1:	00 
  81f5f2:	c5 fb 10 1d 06 7c 0a 	vmovsd 0xa7c06(%rip),%xmm3        # 8c7200 <__STRLITPACK_199.115+0x70>
  81f5f9:	00 
  81f5fa:	48 8b 8d 30 fa ff ff 	mov    -0x5d0(%rbp),%rcx
  81f601:	48 3b 8d 18 fa ff ff 	cmp    -0x5e8(%rbp),%rcx
  81f608:	0f 8c d7 03 00 00    	jl     81f9e5 <pre_step3d_mod_mp_pre_step3d_tile_+0xb435>
  81f60e:	48 83 bd 60 fa ff ff 	cmpq   $0x2,-0x5a0(%rbp)
  81f615:	02 
  81f616:	0f 8c 10 63 00 00    	jl     82592c <pre_step3d_mod_mp_pre_step3d_tile_+0x1137c>
  81f61c:	4c 8b 85 e0 f6 ff ff 	mov    -0x920(%rbp),%r8
  81f623:	45 33 f6             	xor    %r14d,%r14d
  81f626:	4c 8b a5 d8 f6 ff ff 	mov    -0x928(%rbp),%r12
  81f62d:	4c 8b 95 f8 f6 ff ff 	mov    -0x908(%rbp),%r10
  81f634:	4c 8b bd 00 f7 ff ff 	mov    -0x900(%rbp),%r15
  81f63b:	4d 8d 0c 10          	lea    (%r8,%rdx,1),%r9
  81f63f:	4c 89 8d 20 f7 ff ff 	mov    %r9,-0x8e0(%rbp)
  81f646:	4d 8d 04 3c          	lea    (%r12,%rdi,1),%r8
  81f64a:	4c 8b 8d f0 f6 ff ff 	mov    -0x910(%rbp),%r9
  81f651:	45 33 e4             	xor    %r12d,%r12d
  81f654:	4c 8b ad e8 f6 ff ff 	mov    -0x918(%rbp),%r13
  81f65b:	4d 8d 1c 12          	lea    (%r10,%rdx,1),%r11
  81f65f:	4c 89 9d 08 fa ff ff 	mov    %r11,-0x5f8(%rbp)
  81f666:	45 33 db             	xor    %r11d,%r11d
  81f669:	48 8b 8d 58 fa ff ff 	mov    -0x5a8(%rbp),%rcx
  81f670:	4d 8d 14 39          	lea    (%r9,%rdi,1),%r10
  81f674:	4c 89 95 f8 f9 ff ff 	mov    %r10,-0x608(%rbp)
  81f67b:	45 33 d2             	xor    %r10d,%r10d
  81f67e:	45 33 c9             	xor    %r9d,%r9d
  81f681:	4c 03 fe             	add    %rsi,%r15
  81f684:	4c 89 85 10 f7 ff ff 	mov    %r8,-0x8f0(%rbp)
  81f68b:	45 33 c0             	xor    %r8d,%r8d
  81f68e:	4c 03 ee             	add    %rsi,%r13
  81f691:	48 89 85 08 f7 ff ff 	mov    %rax,-0x8f8(%rbp)
  81f698:	48 89 8d b8 f7 ff ff 	mov    %rcx,-0x848(%rbp)
  81f69f:	48 89 85 c0 f7 ff ff 	mov    %rax,-0x840(%rbp)
  81f6a6:	48 89 95 d0 f7 ff ff 	mov    %rdx,-0x830(%rbp)
  81f6ad:	48 89 b5 d8 f7 ff ff 	mov    %rsi,-0x828(%rbp)
  81f6b4:	4c 89 bd f0 f9 ff ff 	mov    %r15,-0x610(%rbp)
  81f6bb:	48 89 bd c8 f7 ff ff 	mov    %rdi,-0x838(%rbp)
  81f6c2:	48 8b 85 08 f7 ff ff 	mov    -0x8f8(%rbp),%rax
  81f6c9:	4c 89 c2             	mov    %r8,%rdx
  81f6cc:	48 8b 8d 10 f7 ff ff 	mov    -0x8f0(%rbp),%rcx
  81f6d3:	48 8b b5 20 f7 ff ff 	mov    -0x8e0(%rbp),%rsi
  81f6da:	4c 8b bd e0 f9 ff ff 	mov    -0x620(%rbp),%r15
  81f6e1:	49 83 c6 02          	add    $0x2,%r14
  81f6e5:	4b 8d 3c 27          	lea    (%r15,%r12,1),%rdi
  81f6e9:	4c 8b bd b8 f9 ff ff 	mov    -0x648(%rbp),%r15
  81f6f0:	c5 fb 10 37          	vmovsd (%rdi),%xmm6
  81f6f4:	c4 a1 49 16 0c 3f    	vmovhpd (%rdi,%r15,1),%xmm6,%xmm1
  81f6fa:	4f 8d 24 7c          	lea    (%r12,%r15,2),%r12
  81f6fe:	48 8b bd d8 f9 ff ff 	mov    -0x628(%rbp),%rdi
  81f705:	4e 8d 3c 1f          	lea    (%rdi,%r11,1),%r15
  81f709:	48 8b bd 40 fa ff ff 	mov    -0x5c0(%rbp),%rdi
  81f710:	c4 c1 7b 10 3f       	vmovsd (%r15),%xmm7
  81f715:	c4 41 41 16 04 3f    	vmovhpd (%r15,%rdi,1),%xmm7,%xmm8
  81f71b:	4d 8d 1c 7b          	lea    (%r11,%rdi,2),%r11
  81f71f:	4c 8b bd e8 f9 ff ff 	mov    -0x618(%rbp),%r15
  81f726:	c4 41 69 59 e8       	vmulpd %xmm8,%xmm2,%xmm13
  81f72b:	4b 8d 3c 17          	lea    (%r15,%r10,1),%rdi
  81f72f:	4c 8b bd c8 f9 ff ff 	mov    -0x638(%rbp),%r15
  81f736:	c5 7b 10 0f          	vmovsd (%rdi),%xmm9
  81f73a:	c4 21 31 16 34 3f    	vmovhpd (%rdi,%r15,1),%xmm9,%xmm14
  81f740:	4f 8d 14 7a          	lea    (%r10,%r15,2),%r10
  81f744:	48 8b bd f0 f9 ff ff 	mov    -0x610(%rbp),%rdi
  81f74b:	c4 c1 11 59 c6       	vmulpd %xmm14,%xmm13,%xmm0
  81f750:	4e 8d 3c 0f          	lea    (%rdi,%r9,1),%r15
  81f754:	48 8b bd d0 f9 ff ff 	mov    -0x630(%rbp),%rdi
  81f75b:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81f760:	c4 c1 01 16 3c 3f    	vmovhpd (%r15,%rdi,1),%xmm15,%xmm7
  81f766:	4f 8d 7c 0d 00       	lea    0x0(%r13,%r9,1),%r15
  81f76b:	c4 c1 7b 10 37       	vmovsd (%r15),%xmm6
  81f770:	4d 8d 0c 79          	lea    (%r9,%rdi,2),%r9
  81f774:	c4 41 49 16 04 3f    	vmovhpd (%r15,%rdi,1),%xmm6,%xmm8
  81f77a:	48 8b bd 08 fa ff ff 	mov    -0x5f8(%rbp),%rdi
  81f781:	4c 8b bd c0 f9 ff ff 	mov    -0x640(%rbp),%r15
  81f788:	c4 41 41 5c e8       	vsubpd %xmm8,%xmm7,%xmm13
  81f78d:	49 03 f8             	add    %r8,%rdi
  81f790:	c5 7b 10 0f          	vmovsd (%rdi),%xmm9
  81f794:	c4 21 31 16 34 3f    	vmovhpd (%rdi,%r15,1),%xmm9,%xmm14
  81f79a:	4a 8d 3c 06          	lea    (%rsi,%r8,1),%rdi
  81f79e:	c5 7b 10 3f          	vmovsd (%rdi),%xmm15
  81f7a2:	4f 8d 04 78          	lea    (%r8,%r15,2),%r8
  81f7a6:	c4 a1 01 16 3c 3f    	vmovhpd (%rdi,%r15,1),%xmm15,%xmm7
  81f7ac:	4c 8b bd f8 f9 ff ff 	mov    -0x608(%rbp),%r15
  81f7b3:	48 8b bd 68 fa ff ff 	mov    -0x598(%rbp),%rdi
  81f7ba:	c4 c1 11 58 f6       	vaddpd %xmm14,%xmm13,%xmm6
  81f7bf:	c5 49 5c ff          	vsubpd %xmm7,%xmm6,%xmm15
  81f7c3:	4c 03 fa             	add    %rdx,%r15
  81f7c6:	c4 41 7b 10 07       	vmovsd (%r15),%xmm8
  81f7cb:	c4 41 39 16 2c 3f    	vmovhpd (%r15,%rdi,1),%xmm8,%xmm13
  81f7d1:	4c 8d 3c 11          	lea    (%rcx,%rdx,1),%r15
  81f7d5:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  81f7da:	48 8d 14 7a          	lea    (%rdx,%rdi,2),%rdx
  81f7de:	c4 41 31 16 34 3f    	vmovhpd (%r15,%rdi,1),%xmm9,%xmm14
  81f7e4:	c4 c1 11 5c f6       	vsubpd %xmm14,%xmm13,%xmm6
  81f7e9:	c5 81 58 fe          	vaddpd %xmm6,%xmm15,%xmm7
  81f7ed:	c5 f9 59 c7          	vmulpd %xmm7,%xmm0,%xmm0
  81f7f1:	c5 f1 5c c8          	vsubpd %xmm0,%xmm1,%xmm1
  81f7f5:	c5 d9 5e c1          	vdivpd %xmm1,%xmm4,%xmm0
  81f7f9:	c5 f9 11 40 08       	vmovupd %xmm0,0x8(%rax)
  81f7fe:	48 83 c0 10          	add    $0x10,%rax
  81f802:	4c 3b b5 58 fa ff ff 	cmp    -0x5a8(%rbp),%r14
  81f809:	0f 82 cb fe ff ff    	jb     81f6da <pre_step3d_mod_mp_pre_step3d_tile_+0xb12a>
  81f80f:	48 8b 8d b8 f7 ff ff 	mov    -0x848(%rbp),%rcx
  81f816:	48 8b 85 c0 f7 ff ff 	mov    -0x840(%rbp),%rax
  81f81d:	48 8b bd c8 f7 ff ff 	mov    -0x838(%rbp),%rdi
  81f824:	48 8b 95 d0 f7 ff ff 	mov    -0x830(%rbp),%rdx
  81f82b:	48 8b b5 d8 f7 ff ff 	mov    -0x828(%rbp),%rsi
  81f832:	4c 8b b5 68 fa ff ff 	mov    -0x598(%rbp),%r14
  81f839:	4c 8b ad c0 f9 ff ff 	mov    -0x640(%rbp),%r13
  81f840:	4c 8b a5 d0 f9 ff ff 	mov    -0x630(%rbp),%r12
  81f847:	4c 8b 9d c8 f9 ff ff 	mov    -0x638(%rbp),%r11
  81f84e:	4c 8b 95 40 fa ff ff 	mov    -0x5c0(%rbp),%r10
  81f855:	4c 8b 8d b8 f9 ff ff 	mov    -0x648(%rbp),%r9
  81f85c:	4c 0f af f1          	imul   %rcx,%r14
  81f860:	4c 0f af e9          	imul   %rcx,%r13
  81f864:	4c 0f af e1          	imul   %rcx,%r12
  81f868:	4c 0f af d9          	imul   %rcx,%r11
  81f86c:	4c 0f af d1          	imul   %rcx,%r10
  81f870:	4c 0f af c9          	imul   %rcx,%r9
  81f874:	48 3b 8d 60 fa ff ff 	cmp    -0x5a0(%rbp),%rcx
  81f87b:	0f 83 64 01 00 00    	jae    81f9e5 <pre_step3d_mod_mp_pre_step3d_tile_+0xb435>
  81f881:	4c 8b 85 e8 f6 ff ff 	mov    -0x918(%rbp),%r8
  81f888:	48 89 85 c0 f7 ff ff 	mov    %rax,-0x840(%rbp)
  81f88f:	48 89 bd c8 f7 ff ff 	mov    %rdi,-0x838(%rbp)
  81f896:	48 89 95 d0 f7 ff ff 	mov    %rdx,-0x830(%rbp)
  81f89d:	4d 8d 3c 30          	lea    (%r8,%rsi,1),%r15
  81f8a1:	4c 89 bd 28 f7 ff ff 	mov    %r15,-0x8d8(%rbp)
  81f8a8:	4c 8b bd e0 f6 ff ff 	mov    -0x920(%rbp),%r15
  81f8af:	4c 8b 85 00 f7 ff ff 	mov    -0x900(%rbp),%r8
  81f8b6:	48 89 b5 d8 f7 ff ff 	mov    %rsi,-0x828(%rbp)
  81f8bd:	4c 03 fa             	add    %rdx,%r15
  81f8c0:	4c 89 bd 30 f7 ff ff 	mov    %r15,-0x8d0(%rbp)
  81f8c7:	4c 8b bd f8 f6 ff ff 	mov    -0x908(%rbp),%r15
  81f8ce:	4c 03 c6             	add    %rsi,%r8
  81f8d1:	4c 03 fa             	add    %rdx,%r15
  81f8d4:	4c 89 bd 10 fa ff ff 	mov    %r15,-0x5f0(%rbp)
  81f8db:	4c 8b bd d8 f6 ff ff 	mov    -0x928(%rbp),%r15
  81f8e2:	48 8b 95 28 f7 ff ff 	mov    -0x8d8(%rbp),%rdx
  81f8e9:	4c 03 ff             	add    %rdi,%r15
  81f8ec:	4c 89 bd 18 f7 ff ff 	mov    %r15,-0x8e8(%rbp)
  81f8f3:	4c 8b bd f0 f6 ff ff 	mov    -0x910(%rbp),%r15
  81f8fa:	4c 03 ff             	add    %rdi,%r15
  81f8fd:	4c 89 bd 00 fa ff ff 	mov    %r15,-0x600(%rbp)
  81f904:	48 8b bd 18 f7 ff ff 	mov    -0x8e8(%rbp),%rdi
  81f90b:	4c 8d 3c c8          	lea    (%rax,%rcx,8),%r15
  81f90f:	4c 89 fe             	mov    %r15,%rsi
  81f912:	48 8b 85 30 f7 ff ff 	mov    -0x8d0(%rbp),%rax
  81f919:	4c 8b bd d8 f9 ff ff 	mov    -0x628(%rbp),%r15
  81f920:	48 ff c1             	inc    %rcx
  81f923:	c4 81 7b 10 0c 04    	vmovsd (%r12,%r8,1),%xmm1
  81f929:	c4 c1 73 5c 34 14    	vsubsd (%r12,%rdx,1),%xmm1,%xmm6
  81f92f:	c4 81 53 59 04 3a    	vmulsd (%r10,%r15,1),%xmm5,%xmm0
  81f935:	4c 8b bd e8 f9 ff ff 	mov    -0x618(%rbp),%r15
  81f93c:	4c 03 95 40 fa ff ff 	add    -0x5c0(%rbp),%r10
  81f943:	4c 03 a5 d0 f9 ff ff 	add    -0x630(%rbp),%r12
  81f94a:	c4 01 7b 59 34 3b    	vmulsd (%r11,%r15,1),%xmm0,%xmm14
  81f950:	4c 8b bd 10 fa ff ff 	mov    -0x5f0(%rbp),%r15
  81f957:	4c 03 9d c8 f9 ff ff 	add    -0x638(%rbp),%r11
  81f95e:	c4 81 4b 58 7c 3d 00 	vaddsd 0x0(%r13,%r15,1),%xmm6,%xmm7
  81f965:	4c 8b bd 00 fa ff ff 	mov    -0x600(%rbp),%r15
  81f96c:	c4 41 43 5c 4c 05 00 	vsubsd 0x0(%r13,%rax,1),%xmm7,%xmm9
  81f973:	c4 01 7b 10 04 3e    	vmovsd (%r14,%r15,1),%xmm8
  81f979:	4c 8b bd e0 f9 ff ff 	mov    -0x620(%rbp),%r15
  81f980:	4c 03 ad c0 f9 ff ff 	add    -0x640(%rbp),%r13
  81f987:	c4 41 3b 5c 2c 3e    	vsubsd (%r14,%rdi,1),%xmm8,%xmm13
  81f98d:	c4 81 7b 10 04 39    	vmovsd (%r9,%r15,1),%xmm0
  81f993:	c4 41 33 58 fd       	vaddsd %xmm13,%xmm9,%xmm15
  81f998:	c4 c1 0b 59 cf       	vmulsd %xmm15,%xmm14,%xmm1
  81f99d:	4c 03 8d b8 f9 ff ff 	add    -0x648(%rbp),%r9
  81f9a4:	c5 fb 5c f1          	vsubsd %xmm1,%xmm0,%xmm6
  81f9a8:	c5 e3 5e fe          	vdivsd %xmm6,%xmm3,%xmm7
  81f9ac:	4c 03 b5 68 fa ff ff 	add    -0x598(%rbp),%r14
  81f9b3:	c5 fb 11 7e 08       	vmovsd %xmm7,0x8(%rsi)
  81f9b8:	48 83 c6 08          	add    $0x8,%rsi
  81f9bc:	48 3b 8d 60 fa ff ff 	cmp    -0x5a0(%rbp),%rcx
  81f9c3:	0f 82 50 ff ff ff    	jb     81f919 <pre_step3d_mod_mp_pre_step3d_tile_+0xb369>
  81f9c9:	48 8b 85 c0 f7 ff ff 	mov    -0x840(%rbp),%rax
  81f9d0:	48 8b bd c8 f7 ff ff 	mov    -0x838(%rbp),%rdi
  81f9d7:	48 8b 95 d0 f7 ff ff 	mov    -0x830(%rbp),%rdx
  81f9de:	48 8b b5 d8 f7 ff ff 	mov    -0x828(%rbp),%rsi
  81f9e5:	48 8b 8d e0 f9 ff ff 	mov    -0x620(%rbp),%rcx
  81f9ec:	4c 8b 85 30 f8 ff ff 	mov    -0x7d0(%rbp),%r8
  81f9f3:	49 ff c0             	inc    %r8
  81f9f6:	48 03 8d 08 f8 ff ff 	add    -0x7f8(%rbp),%rcx
  81f9fd:	48 03 b5 10 f8 ff ff 	add    -0x7f0(%rbp),%rsi
  81fa04:	48 03 95 18 f8 ff ff 	add    -0x7e8(%rbp),%rdx
  81fa0b:	48 03 bd c0 f8 ff ff 	add    -0x740(%rbp),%rdi
  81fa12:	48 03 85 38 fa ff ff 	add    -0x5c8(%rbp),%rax
  81fa19:	48 89 8d e0 f9 ff ff 	mov    %rcx,-0x620(%rbp)
  81fa20:	4c 89 85 30 f8 ff ff 	mov    %r8,-0x7d0(%rbp)
  81fa27:	4c 3b 85 28 fa ff ff 	cmp    -0x5d8(%rbp),%r8
  81fa2e:	0f 82 c6 fb ff ff    	jb     81f5fa <pre_step3d_mod_mp_pre_step3d_tile_+0xb04a>
  81fa34:	48 8b 8d 68 f6 ff ff 	mov    -0x998(%rbp),%rcx
  81fa3b:	44 8b 8d 60 f6 ff ff 	mov    -0x9a0(%rbp),%r9d
  81fa42:	33 c0                	xor    %eax,%eax
  81fa44:	48 83 bd b0 f8 ff ff 	cmpq   $0x0,-0x750(%rbp)
  81fa4b:	00 
  81fa4c:	0f 8e 84 5e 00 00    	jle    8258d6 <pre_step3d_mod_mp_pre_step3d_tile_+0x11326>
  81fa52:	44 8b 85 d0 f4 ff ff 	mov    -0xb30(%rbp),%r8d
  81fa59:	4c 8b bd 28 fa ff ff 	mov    -0x5d8(%rbp),%r15
  81fa60:	c4 41 31 57 c9       	vxorpd %xmm9,%xmm9,%xmm9
  81fa65:	48 8b 95 c0 f8 ff ff 	mov    -0x740(%rbp),%rdx
  81fa6c:	48 8b bd 80 f5 ff ff 	mov    -0xa80(%rbp),%rdi
  81fa73:	45 8d 58 fe          	lea    -0x2(%r8),%r11d
  81fa77:	4c 8b 85 40 f4 ff ff 	mov    -0xbc0(%rbp),%r8
  81fa7e:	4d 89 c6             	mov    %r8,%r14
  81fa81:	4c 0f af f1          	imul   %rcx,%r14
  81fa85:	48 0f af f9          	imul   %rcx,%rdi
  81fa89:	c5 fd 10 2d 4f 66 0a 	vmovupd 0xa664f(%rip),%ymm5        # 8c60e0 <var$630.126.450+0x1220>
  81fa90:	00 
  81fa91:	c5 f9 10 1d 07 6f 0a 	vmovupd 0xa6f07(%rip),%xmm3        # 8c69a0 <__STRLITPACK_19.34+0x10>
  81fa98:	00 
  81fa99:	c5 f9 10 35 1f 74 0a 	vmovupd 0xa741f(%rip),%xmm6        # 8c6ec0 <__STRLITPACK_54.50+0xa0>
  81faa0:	00 
  81faa1:	c5 f9 10 3d 27 74 0a 	vmovupd 0xa7427(%rip),%xmm7        # 8c6ed0 <__STRLITPACK_54.50+0xb0>
  81faa8:	00 
  81faa9:	c5 fb 10 25 7f 7f 0a 	vmovsd 0xa7f7f(%rip),%xmm4        # 8c7a30 <__STRLITPACK_199.115+0x8a0>
  81fab0:	00 
  81fab1:	4c 89 b5 90 f6 ff ff 	mov    %r14,-0x970(%rbp)
  81fab8:	4d 8d 6f ff          	lea    -0x1(%r15),%r13
  81fabc:	49 89 d6             	mov    %rdx,%r14
  81fabf:	4d 0f af f5          	imul   %r13,%r14
  81fac3:	c5 fd 10 15 35 66 0a 	vmovupd 0xa6635(%rip),%ymm2        # 8c6100 <var$630.126.450+0x1240>
  81faca:	00 
  81facb:	c5 7b 10 05 65 7f 0a 	vmovsd 0xa7f65(%rip),%xmm8        # 8c7a38 <__STRLITPACK_199.115+0x8a8>
  81fad2:	00 
  81fad3:	4c 8b 95 78 f5 ff ff 	mov    -0xa88(%rbp),%r10
  81fada:	48 89 85 68 f9 ff ff 	mov    %rax,-0x698(%rbp)
  81fae1:	4c 0f af d1          	imul   %rcx,%r10
  81fae5:	48 8b 85 88 f5 ff ff 	mov    -0xa78(%rbp),%rax
  81faec:	48 0f af c1          	imul   %rcx,%rax
  81faf0:	48 8b b5 38 f5 ff ff 	mov    -0xac8(%rbp),%rsi
  81faf7:	48 89 8d 68 f6 ff ff 	mov    %rcx,-0x998(%rbp)
  81fafe:	44 89 8d 60 f6 ff ff 	mov    %r9d,-0x9a0(%rbp)
  81fb05:	4c 8b 8d b0 f4 ff ff 	mov    -0xb50(%rbp),%r9
  81fb0c:	48 8d 0c 3e          	lea    (%rsi,%rdi,1),%rcx
  81fb10:	48 8b b5 40 f5 ff ff 	mov    -0xac0(%rbp),%rsi
  81fb17:	4d 03 f1             	add    %r9,%r14
  81fb1a:	48 89 8d c8 fa ff ff 	mov    %rcx,-0x538(%rbp)
  81fb21:	48 8b 8d 68 f5 ff ff 	mov    -0xa98(%rbp),%rcx
  81fb28:	4c 03 b5 a8 f4 ff ff 	add    -0xb58(%rbp),%r14
  81fb2f:	4c 89 95 88 f9 ff ff 	mov    %r10,-0x678(%rbp)
  81fb36:	4c 03 f0             	add    %rax,%r14
  81fb39:	48 89 bd 90 f9 ff ff 	mov    %rdi,-0x670(%rbp)
  81fb40:	4a 8d 3c 16          	lea    (%rsi,%r10,1),%rdi
  81fb44:	4c 8b 95 d8 f3 ff ff 	mov    -0xc28(%rbp),%r10
  81fb4b:	48 8d 34 01          	lea    (%rcx,%rax,1),%rsi
  81fb4f:	48 89 bd 80 f9 ff ff 	mov    %rdi,-0x680(%rbp)
  81fb56:	48 8b 8d 98 f4 ff ff 	mov    -0xb68(%rbp),%rcx
  81fb5d:	48 8b bd 30 f4 ff ff 	mov    -0xbd0(%rbp),%rdi
  81fb64:	4c 89 b5 98 fa ff ff 	mov    %r14,-0x568(%rbp)
  81fb6b:	4d 89 d6             	mov    %r10,%r14
  81fb6e:	49 c1 e6 04          	shl    $0x4,%r14
  81fb72:	48 89 b5 80 fa ff ff 	mov    %rsi,-0x580(%rbp)
  81fb79:	48 8d 34 39          	lea    (%rcx,%rdi,1),%rsi
  81fb7d:	4c 03 f1             	add    %rcx,%r14
  81fb80:	48 89 f9             	mov    %rdi,%rcx
  81fb83:	48 2b 8d d0 f3 ff ff 	sub    -0xc30(%rbp),%rcx
  81fb8a:	4c 03 f7             	add    %rdi,%r14
  81fb8d:	4c 89 ad b0 f3 ff ff 	mov    %r13,-0xc50(%rbp)
  81fb94:	48 89 b5 70 fa ff ff 	mov    %rsi,-0x590(%rbp)
  81fb9b:	4c 8b a5 80 f4 ff ff 	mov    -0xb80(%rbp),%r12
  81fba2:	4e 8d 14 d1          	lea    (%rcx,%r10,8),%r10
  81fba6:	4c 89 95 98 f3 ff ff 	mov    %r10,-0xc68(%rbp)
  81fbad:	4c 8b 95 38 fa ff ff 	mov    -0x5c8(%rbp),%r10
  81fbb4:	4c 89 d1             	mov    %r10,%rcx
  81fbb7:	49 0f af cd          	imul   %r13,%rcx
  81fbbb:	4d 0f af fa          	imul   %r10,%r15
  81fbbf:	4d 0f af e0          	imul   %r8,%r12
  81fbc3:	4c 8b ad 90 f4 ff ff 	mov    -0xb70(%rbp),%r13
  81fbca:	48 03 ce             	add    %rsi,%rcx
  81fbcd:	4c 03 fe             	add    %rsi,%r15
  81fbd0:	4c 8b 95 c0 f4 ff ff 	mov    -0xb40(%rbp),%r10
  81fbd7:	4d 63 db             	movslq %r11d,%r11
  81fbda:	4a 8d 34 2f          	lea    (%rdi,%r13,1),%rsi
  81fbde:	48 89 b5 78 fa ff ff 	mov    %rsi,-0x588(%rbp)
  81fbe5:	48 8d 34 12          	lea    (%rdx,%rdx,1),%rsi
  81fbe9:	49 2b f2             	sub    %r10,%rsi
  81fbec:	4d 89 e5             	mov    %r12,%r13
  81fbef:	48 03 b5 c8 f4 ff ff 	add    -0xb38(%rbp),%rsi
  81fbf6:	48 03 b5 e8 f4 ff ff 	add    -0xb18(%rbp),%rsi
  81fbfd:	48 8b bd f0 f4 ff ff 	mov    -0xb10(%rbp),%rdi
  81fc04:	48 03 f0             	add    %rax,%rsi
  81fc07:	48 89 b5 90 f1 ff ff 	mov    %rsi,-0xe70(%rbp)
  81fc0e:	48 8b b5 c0 f3 ff ff 	mov    -0xc40(%rbp),%rsi
  81fc15:	49 0f af f0          	imul   %r8,%rsi
  81fc19:	4c 89 9d 20 f8 ff ff 	mov    %r11,-0x7e0(%rbp)
  81fc20:	48 8d 14 57          	lea    (%rdi,%rdx,2),%rdx
  81fc24:	48 89 95 98 f1 ff ff 	mov    %rdx,-0xe68(%rbp)
  81fc2b:	49 2b d2             	sub    %r10,%rdx
  81fc2e:	48 03 95 b8 f4 ff ff 	add    -0xb48(%rbp),%rdx
  81fc35:	4d 8d 5b ff          	lea    -0x1(%r11),%r11
  81fc39:	49 03 d1             	add    %r9,%rdx
  81fc3c:	49 89 f0             	mov    %rsi,%r8
  81fc3f:	48 03 d0             	add    %rax,%rdx
  81fc42:	4d 2b c4             	sub    %r12,%r8
  81fc45:	48 89 95 58 f9 ff ff 	mov    %rdx,-0x6a8(%rbp)
  81fc4c:	48 8b 95 20 fa ff ff 	mov    -0x5e0(%rbp),%rdx
  81fc53:	4c 8b 8d 50 f4 ff ff 	mov    -0xbb0(%rbp),%r9
  81fc5a:	48 89 8d 90 fa ff ff 	mov    %rcx,-0x570(%rbp)
  81fc61:	4c 89 9d c8 f8 ff ff 	mov    %r11,-0x738(%rbp)
  81fc68:	48 8d 3c 12          	lea    (%rdx,%rdx,1),%rdi
  81fc6c:	49 89 fb             	mov    %rdi,%r11
  81fc6f:	48 f7 df             	neg    %rdi
  81fc72:	48 89 85 60 f9 ff ff 	mov    %rax,-0x6a0(%rbp)
  81fc79:	4c 89 c8             	mov    %r9,%rax
  81fc7c:	48 8b 8d 48 f4 ff ff 	mov    -0xbb8(%rbp),%rcx
  81fc83:	48 03 fa             	add    %rdx,%rdi
  81fc86:	48 2b 85 40 f8 ff ff 	sub    -0x7c0(%rbp),%rax
  81fc8d:	49 03 f8             	add    %r8,%rdi
  81fc90:	4c 89 b5 28 f8 ff ff 	mov    %r14,-0x7d8(%rbp)
  81fc97:	4c 2b de             	sub    %rsi,%r11
  81fc9a:	48 89 85 a0 f1 ff ff 	mov    %rax,-0xe60(%rbp)
  81fca1:	4c 8d 14 11          	lea    (%rcx,%rdx,1),%r10
  81fca5:	48 89 bd c8 f6 ff ff 	mov    %rdi,-0x938(%rbp)
  81fcac:	4c 8b b5 c8 f3 ff ff 	mov    -0xc38(%rbp),%r14
  81fcb3:	48 8b 85 50 fa ff ff 	mov    -0x5b0(%rbp),%rax
  81fcba:	48 8b bd 18 fa ff ff 	mov    -0x5e8(%rbp),%rdi
  81fcc1:	4c 0f af f0          	imul   %rax,%r14
  81fcc5:	48 0f af f8          	imul   %rax,%rdi
  81fcc9:	48 0f af 8d e8 f3 ff 	imul   -0xc18(%rbp),%rcx
  81fcd0:	ff 
  81fcd1:	4c 89 bd 88 fa ff ff 	mov    %r15,-0x578(%rbp)
  81fcd8:	49 89 d7             	mov    %rdx,%r15
  81fcdb:	4c 2b fe             	sub    %rsi,%r15
  81fcde:	4c 89 d0             	mov    %r10,%rax
  81fce1:	49 2b c7             	sub    %r15,%rax
  81fce4:	4d 2b ee             	sub    %r14,%r13
  81fce7:	4c 2b f7             	sub    %rdi,%r14
  81fcea:	48 f7 d8             	neg    %rax
  81fced:	4c 89 b5 c0 f1 ff ff 	mov    %r14,-0xe40(%rbp)
  81fcf4:	4c 8d 34 0f          	lea    (%rdi,%rcx,1),%r14
  81fcf8:	4d 03 f5             	add    %r13,%r14
  81fcfb:	49 03 c1             	add    %r9,%rax
  81fcfe:	49 03 c6             	add    %r14,%rax
  81fd01:	48 89 bd f8 f7 ff ff 	mov    %rdi,-0x808(%rbp)
  81fd08:	48 8b bd 90 f6 ff ff 	mov    -0x970(%rbp),%rdi
  81fd0f:	48 03 c7             	add    %rdi,%rax
  81fd12:	48 89 85 58 f8 ff ff 	mov    %rax,-0x7a8(%rbp)
  81fd19:	4c 89 d0             	mov    %r10,%rax
  81fd1c:	49 2b c3             	sub    %r11,%rax
  81fd1f:	48 f7 d8             	neg    %rax
  81fd22:	49 03 c1             	add    %r9,%rax
  81fd25:	49 03 c6             	add    %r14,%rax
  81fd28:	4c 89 a5 e8 f7 ff ff 	mov    %r12,-0x818(%rbp)
  81fd2f:	4c 03 e1             	add    %rcx,%r12
  81fd32:	48 89 8d c8 f1 ff ff 	mov    %rcx,-0xe38(%rbp)
  81fd39:	48 8d 0c 52          	lea    (%rdx,%rdx,2),%rcx
  81fd3d:	48 03 c7             	add    %rdi,%rax
  81fd40:	4d 03 dc             	add    %r12,%r11
  81fd43:	48 89 85 88 f8 ff ff 	mov    %rax,-0x778(%rbp)
  81fd4a:	48 89 c8             	mov    %rcx,%rax
  81fd4d:	4c 89 9d d0 f1 ff ff 	mov    %r11,-0xe30(%rbp)
  81fd54:	48 2b c6             	sub    %rsi,%rax
  81fd57:	4d 89 d3             	mov    %r10,%r11
  81fd5a:	48 f7 d9             	neg    %rcx
  81fd5d:	4c 2b d8             	sub    %rax,%r11
  81fd60:	49 03 c4             	add    %r12,%rax
  81fd63:	49 f7 db             	neg    %r11
  81fd66:	48 03 ca             	add    %rdx,%rcx
  81fd69:	4d 03 d9             	add    %r9,%r11
  81fd6c:	49 03 c8             	add    %r8,%rcx
  81fd6f:	4d 03 de             	add    %r14,%r11
  81fd72:	48 f7 d9             	neg    %rcx
  81fd75:	48 89 85 c0 f6 ff ff 	mov    %rax,-0x940(%rbp)
  81fd7c:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  81fd83:	00 
  81fd84:	4c 03 df             	add    %rdi,%r11
  81fd87:	4c 89 9d 60 f8 ff ff 	mov    %r11,-0x7a0(%rbp)
  81fd8e:	49 89 c3             	mov    %rax,%r11
  81fd91:	4c 2b de             	sub    %rsi,%r11
  81fd94:	48 03 f2             	add    %rdx,%rsi
  81fd97:	4c 89 95 a8 f1 ff ff 	mov    %r10,-0xe58(%rbp)
  81fd9e:	4d 2b d3             	sub    %r11,%r10
  81fda1:	4d 03 dc             	add    %r12,%r11
  81fda4:	4d 03 e7             	add    %r15,%r12
  81fda7:	4c 89 a5 d0 f6 ff ff 	mov    %r12,-0x930(%rbp)
  81fdae:	49 f7 da             	neg    %r10
  81fdb1:	4c 8b a5 c0 f4 ff ff 	mov    -0xb40(%rbp),%r12
  81fdb8:	4d 03 d1             	add    %r9,%r10
  81fdbb:	4c 2b a5 e8 f4 ff ff 	sub    -0xb18(%rbp),%r12
  81fdc2:	4d 03 f2             	add    %r10,%r14
  81fdc5:	4c 8b 8d a0 f4 ff ff 	mov    -0xb60(%rbp),%r9
  81fdcc:	49 2b f5             	sub    %r13,%rsi
  81fdcf:	4c 8b 95 98 f1 ff ff 	mov    -0xe68(%rbp),%r10
  81fdd6:	48 f7 de             	neg    %rsi
  81fdd9:	4c 2b 8d b0 f4 ff ff 	sub    -0xb50(%rbp),%r9
  81fde0:	4d 2b d4             	sub    %r12,%r10
  81fde3:	4d 2b d1             	sub    %r9,%r10
  81fde6:	48 f7 d8             	neg    %rax
  81fde9:	4c 89 bd b0 f1 ff ff 	mov    %r15,-0xe50(%rbp)
  81fdf0:	48 03 c2             	add    %rdx,%rax
  81fdf3:	4c 8b bd 48 f4 ff ff 	mov    -0xbb8(%rbp),%r15
  81fdfa:	49 03 c0             	add    %r8,%rax
  81fdfd:	4c 8b a5 68 fa ff ff 	mov    -0x598(%rbp),%r12
  81fe04:	48 f7 d8             	neg    %rax
  81fe07:	4c 89 9d b0 f6 ff ff 	mov    %r11,-0x950(%rbp)
  81fe0e:	4c 03 f7             	add    %rdi,%r14
  81fe11:	4c 8b 9d 40 f8 ff ff 	mov    -0x7c0(%rbp),%r11
  81fe18:	4d 2b df             	sub    %r15,%r11
  81fe1b:	4f 8d 0c 62          	lea    (%r10,%r12,2),%r9
  81fe1f:	4c 89 ad b8 f1 ff ff 	mov    %r13,-0xe48(%rbp)
  81fe26:	4c 8b ad a0 f1 ff ff 	mov    -0xe60(%rbp),%r13
  81fe2d:	4c 8b a5 28 fa ff ff 	mov    -0x5d8(%rbp),%r12
  81fe34:	4c 89 9d d8 f1 ff ff 	mov    %r11,-0xe28(%rbp)
  81fe3b:	4c 01 8d 60 f9 ff ff 	add    %r9,-0x6a0(%rbp)
  81fe42:	4f 8d 54 1d 00       	lea    0x0(%r13,%r11,1),%r10
  81fe47:	4c 03 ad f8 f4 ff ff 	add    -0xb08(%rbp),%r13
  81fe4e:	49 03 f2             	add    %r10,%rsi
  81fe51:	4c 89 ad a0 f1 ff ff 	mov    %r13,-0xe60(%rbp)
  81fe58:	4d 8d 6c 24 fe       	lea    -0x2(%r12),%r13
  81fe5d:	4c 0f af ea          	imul   %rdx,%r13
  81fe61:	4c 0f af e2          	imul   %rdx,%r12
  81fe65:	4c 8b 9d f8 f7 ff ff 	mov    -0x808(%rbp),%r11
  81fe6c:	4d 03 eb             	add    %r11,%r13
  81fe6f:	4c 8b 8d c8 f1 ff ff 	mov    -0xe38(%rbp),%r9
  81fe76:	4c 03 ee             	add    %rsi,%r13
  81fe79:	4d 03 e9             	add    %r9,%r13
  81fe7c:	4d 03 e3             	add    %r11,%r12
  81fe7f:	4c 03 ef             	add    %rdi,%r13
  81fe82:	49 03 ca             	add    %r10,%rcx
  81fe85:	4c 89 ad 68 f8 ff ff 	mov    %r13,-0x798(%rbp)
  81fe8c:	49 89 d5             	mov    %rdx,%r13
  81fe8f:	4c 0f af ad b0 f3 ff 	imul   -0xc50(%rbp),%r13
  81fe96:	ff 
  81fe97:	4d 03 eb             	add    %r11,%r13
  81fe9a:	49 03 c2             	add    %r10,%rax
  81fe9d:	4c 03 ee             	add    %rsi,%r13
  81fea0:	49 03 f4             	add    %r12,%rsi
  81fea3:	4c 8b a5 50 fa ff ff 	mov    -0x5b0(%rbp),%r12
  81feaa:	4d 03 e9             	add    %r9,%r13
  81fead:	4c 03 ef             	add    %rdi,%r13
  81feb0:	49 03 f1             	add    %r9,%rsi
  81feb3:	4c 89 ad 70 f8 ff ff 	mov    %r13,-0x790(%rbp)
  81feba:	48 03 f7             	add    %rdi,%rsi
  81febd:	4c 89 b5 a0 f6 ff ff 	mov    %r14,-0x960(%rbp)
  81fec4:	4f 8d 2c 61          	lea    (%r9,%r12,2),%r13
  81fec8:	49 f7 dd             	neg    %r13
  81fecb:	4c 8b 8d c0 f1 ff ff 	mov    -0xe40(%rbp),%r9
  81fed2:	4d 03 e9             	add    %r9,%r13
  81fed5:	49 2b cd             	sub    %r13,%rcx
  81fed8:	49 2b c5             	sub    %r13,%rax
  81fedb:	48 03 cf             	add    %rdi,%rcx
  81fede:	48 03 c7             	add    %rdi,%rax
  81fee1:	48 89 8d a8 f6 ff ff 	mov    %rcx,-0x958(%rbp)
  81fee8:	4d 03 c8             	add    %r8,%r9
  81feeb:	48 8b 8d 38 f4 ff ff 	mov    -0xbc8(%rbp),%rcx
  81fef2:	49 f7 d8             	neg    %r8
  81fef5:	48 89 85 b8 f6 ff ff 	mov    %rax,-0x948(%rbp)
  81fefc:	4d 03 c2             	add    %r10,%r8
  81feff:	4c 8b b5 c8 f6 ff ff 	mov    -0x938(%rbp),%r14
  81ff06:	4d 2b c5             	sub    %r13,%r8
  81ff09:	49 f7 de             	neg    %r14
  81ff0c:	48 8d 04 8d 00 00 00 	lea    0x0(,%rcx,4),%rax
  81ff13:	00 
  81ff14:	48 f7 d8             	neg    %rax
  81ff17:	4d 03 f2             	add    %r10,%r14
  81ff1a:	48 03 85 28 f4 ff ff 	add    -0xbd8(%rbp),%rax
  81ff21:	4d 2b f5             	sub    %r13,%r14
  81ff24:	48 8b 8d 40 f6 ff ff 	mov    -0x9c0(%rbp),%rcx
  81ff2b:	4f 8d 2c 7f          	lea    (%r15,%r15,2),%r13
  81ff2f:	4d 2b fd             	sub    %r13,%r15
  81ff32:	4c 03 f7             	add    %rdi,%r14
  81ff35:	4c 89 b5 c8 f6 ff ff 	mov    %r14,-0x938(%rbp)
  81ff3c:	49 f7 df             	neg    %r15
  81ff3f:	44 8b 34 88          	mov    (%rax,%rcx,4),%r14d
  81ff43:	4c 2b ea             	sub    %rdx,%r13
  81ff46:	48 8b 85 50 f4 ff ff 	mov    -0xbb0(%rbp),%rax
  81ff4d:	41 83 e6 01          	and    $0x1,%r14d
  81ff51:	4c 03 f8             	add    %rax,%r15
  81ff54:	4c 03 c7             	add    %rdi,%r8
  81ff57:	4d 2b f9             	sub    %r9,%r15
  81ff5a:	44 89 b5 b8 f8 ff ff 	mov    %r14d,-0x748(%rbp)
  81ff61:	48 8b 95 d8 f1 ff ff 	mov    -0xe28(%rbp),%rdx
  81ff68:	4c 8b b5 b0 f1 ff ff 	mov    -0xe50(%rbp),%r14
  81ff6f:	49 03 d5             	add    %r13,%rdx
  81ff72:	4d 03 ee             	add    %r14,%r13
  81ff75:	4f 8d 24 67          	lea    (%r15,%r12,2),%r12
  81ff79:	4d 03 d5             	add    %r13,%r10
  81ff7c:	4c 03 e7             	add    %rdi,%r12
  81ff7f:	4c 89 a5 f0 f7 ff ff 	mov    %r12,-0x810(%rbp)
  81ff86:	4c 8b a5 b8 f1 ff ff 	mov    -0xe48(%rbp),%r12
  81ff8d:	4d 03 e2             	add    %r10,%r12
  81ff90:	4d 03 dc             	add    %r12,%r11
  81ff93:	4c 03 df             	add    %rdi,%r11
  81ff96:	4c 89 9d f8 f7 ff ff 	mov    %r11,-0x808(%rbp)
  81ff9d:	4c 8b 9d 40 fa ff ff 	mov    -0x5c0(%rbp),%r11
  81ffa4:	4c 8b 95 58 f4 ff ff 	mov    -0xba8(%rbp),%r10
  81ffab:	4c 8b 8d a0 f1 ff ff 	mov    -0xe60(%rbp),%r9
  81ffb2:	4c 03 ca             	add    %rdx,%r9
  81ffb5:	4c 8b bd e0 f4 ff ff 	mov    -0xb20(%rbp),%r15
  81ffbc:	4d 03 f1             	add    %r9,%r14
  81ffbf:	4c 8b 8d c8 f9 ff ff 	mov    -0x638(%rbp),%r9
  81ffc6:	4f 8d 2c 5a          	lea    (%r10,%r11,2),%r13
  81ffca:	4c 8b 95 60 f4 ff ff 	mov    -0xba0(%rbp),%r10
  81ffd1:	4c 2b bd 68 f4 ff ff 	sub    -0xb98(%rbp),%r15
  81ffd8:	4c 03 bd 78 f4 ff ff 	add    -0xb88(%rbp),%r15
  81ffdf:	4d 03 fd             	add    %r13,%r15
  81ffe2:	4f 8d 1c 4a          	lea    (%r10,%r9,2),%r11
  81ffe6:	4c 8b ad d8 f4 ff ff 	mov    -0xb28(%rbp),%r13
  81ffed:	4c 8b 95 08 f4 ff ff 	mov    -0xbf8(%rbp),%r10
  81fff4:	49 f7 da             	neg    %r10
  81fff7:	4c 2b ad 70 f4 ff ff 	sub    -0xb90(%rbp),%r13
  81fffe:	4c 03 d1             	add    %rcx,%r10
  820001:	4c 03 ad 88 f4 ff ff 	add    -0xb78(%rbp),%r13
  820008:	4d 89 d1             	mov    %r10,%r9
  82000b:	4d 03 eb             	add    %r11,%r13
  82000e:	49 c1 e1 05          	shl    $0x5,%r9
  820012:	4c 8b a5 e8 f7 ff ff 	mov    -0x818(%rbp),%r12
  820019:	4d 03 ca             	add    %r10,%r9
  82001c:	4d 03 e6             	add    %r14,%r12
  82001f:	4c 8b b5 88 f9 ff ff 	mov    -0x678(%rbp),%r14
  820026:	4d 03 ee             	add    %r14,%r13
  820029:	4c 89 ad d0 fa ff ff 	mov    %r13,-0x530(%rbp)
  820030:	4c 03 e7             	add    %rdi,%r12
  820033:	4c 8b 95 18 f4 ff ff 	mov    -0xbe8(%rbp),%r10
  82003a:	4c 8b ad 20 f4 ff ff 	mov    -0xbe0(%rbp),%r13
  820041:	4d 0f af d5          	imul   %r13,%r10
  820045:	4c 0f af e9          	imul   %rcx,%r13
  820049:	48 8d 8d 90 f9 ff ff 	lea    -0x670(%rbp),%rcx
  820050:	48 8b 11             	mov    (%rcx),%rdx
  820053:	4c 03 fa             	add    %rdx,%r15
  820056:	4c 89 bd d8 fa ff ff 	mov    %r15,-0x528(%rbp)
  82005d:	4c 8b bd 00 f4 ff ff 	mov    -0xc00(%rbp),%r15
  820064:	48 03 95 c0 f5 ff ff 	add    -0xa40(%rbp),%rdx
  82006b:	48 89 11             	mov    %rdx,(%rcx)
  82006e:	4c 8b 9d f0 f3 ff ff 	mov    -0xc10(%rbp),%r11
  820075:	4a 8d 14 bd 00 00 00 	lea    0x0(,%r15,4),%rdx
  82007c:	00 
  82007d:	48 f7 da             	neg    %rdx
  820080:	4c 03 b5 c8 f5 ff ff 	add    -0xa38(%rbp),%r14
  820087:	48 03 95 f8 f3 ff ff 	add    -0xc08(%rbp),%rdx
  82008e:	4c 89 b5 88 f9 ff ff 	mov    %r14,-0x678(%rbp)
  820095:	49 c1 e1 05          	shl    $0x5,%r9
  820099:	4c 8b b5 10 f4 ff ff 	mov    -0xbf0(%rbp),%r14
  8200a0:	48 89 95 50 f6 ff ff 	mov    %rdx,-0x9b0(%rbp)
  8200a7:	4a 8d 14 9d 00 00 00 	lea    0x0(,%r11,4),%rdx
  8200ae:	00 
  8200af:	4c 89 8d 10 f6 ff ff 	mov    %r9,-0x9f0(%rbp)
  8200b6:	4d 89 f1             	mov    %r14,%r9
  8200b9:	4c 2b ca             	sub    %rdx,%r9
  8200bc:	49 2b d2             	sub    %r10,%rdx
  8200bf:	4d 2b d5             	sub    %r13,%r10
  8200c2:	49 03 d1             	add    %r9,%rdx
  8200c5:	8b 8d b8 f3 ff ff    	mov    -0xc48(%rbp),%ecx
  8200cb:	4d 2b ca             	sub    %r10,%r9
  8200ce:	49 f7 da             	neg    %r10
  8200d1:	49 03 d5             	add    %r13,%rdx
  8200d4:	4d 03 d6             	add    %r14,%r10
  8200d7:	4c 8b b5 f8 f4 ff ff 	mov    -0xb08(%rbp),%r14
  8200de:	4c 89 8d 38 f6 ff ff 	mov    %r9,-0x9c8(%rbp)
  8200e5:	44 8d 49 01          	lea    0x1(%rcx),%r9d
  8200e9:	44 89 8d 58 f6 ff ff 	mov    %r9d,-0x9a8(%rbp)
  8200f0:	8b 8d e0 f3 ff ff    	mov    -0xc20(%rbp),%ecx
  8200f6:	44 8b 8d 60 f6 ff ff 	mov    -0x9a0(%rbp),%r9d
  8200fd:	4c 8b ad 98 f8 ff ff 	mov    -0x768(%rbp),%r13
  820104:	49 d1 ed             	shr    %r13
  820107:	4c 8d bd 78 f8 ff ff 	lea    -0x788(%rbp),%r15
  82010e:	4d 89 2f             	mov    %r13,(%r15)
  820111:	4d 8d 2c 06          	lea    (%r14,%rax,1),%r13
  820115:	4c 2b ad a8 f1 ff ff 	sub    -0xe58(%rbp),%r13
  82011c:	46 8d 1c 09          	lea    (%rcx,%r9,1),%r11d
  820120:	44 89 9d 30 f5 ff ff 	mov    %r11d,-0xad0(%rbp)
  820127:	4c 8d 8d b0 f6 ff ff 	lea    -0x950(%rbp),%r9
  82012e:	49 8b 01             	mov    (%r9),%rax
  820131:	4c 8d b5 d0 f6 ff ff 	lea    -0x930(%rbp),%r14
  820138:	49 8b 0e             	mov    (%r14),%rcx
  82013b:	49 03 c5             	add    %r13,%rax
  82013e:	4c 8b 9d c0 f6 ff ff 	mov    -0x940(%rbp),%r11
  820145:	49 03 cd             	add    %r13,%rcx
  820148:	4d 03 dd             	add    %r13,%r11
  82014b:	48 03 c7             	add    %rdi,%rax
  82014e:	4c 03 ad d0 f1 ff ff 	add    -0xe30(%rbp),%r13
  820155:	48 03 cf             	add    %rdi,%rcx
  820158:	4c 03 df             	add    %rdi,%r11
  82015b:	49 03 fd             	add    %r13,%rdi
  82015e:	4c 89 9d c0 f6 ff ff 	mov    %r11,-0x940(%rbp)
  820165:	49 89 01             	mov    %rax,(%r9)
  820168:	49 89 0e             	mov    %rcx,(%r14)
  82016b:	4c 89 a5 e8 f7 ff ff 	mov    %r12,-0x818(%rbp)
  820172:	48 8b 85 68 f9 ff ff 	mov    -0x698(%rbp),%rax
  820179:	4d 8b 27             	mov    (%r15),%r12
  82017c:	4c 8b 9d 88 f8 ff ff 	mov    -0x778(%rbp),%r11
  820183:	48 89 bd 90 f6 ff ff 	mov    %rdi,-0x970(%rbp)
  82018a:	4c 89 95 48 f8 ff ff 	mov    %r10,-0x7b8(%rbp)
  820191:	4c 89 85 98 f6 ff ff 	mov    %r8,-0x968(%rbp)
  820198:	48 89 b5 50 f8 ff ff 	mov    %rsi,-0x7b0(%rbp)
  82019f:	48 83 bd 68 fa ff ff 	cmpq   $0x8,-0x598(%rbp)
  8201a6:	08 
  8201a7:	0f 85 fd 01 00 00    	jne    8203aa <pre_step3d_mod_mp_pre_step3d_tile_+0xbdfa>
  8201ad:	48 83 bd 50 fa ff ff 	cmpq   $0x8,-0x5b0(%rbp)
  8201b4:	08 
  8201b5:	0f 85 ef 01 00 00    	jne    8203aa <pre_step3d_mod_mp_pre_step3d_tile_+0xbdfa>
  8201bb:	45 33 c9             	xor    %r9d,%r9d
  8201be:	4c 8b 85 28 f8 ff ff 	mov    -0x7d8(%rbp),%r8
  8201c5:	33 f6                	xor    %esi,%esi
  8201c7:	48 8b bd 90 f1 ff ff 	mov    -0xe70(%rbp),%rdi
  8201ce:	48 83 bd 20 f8 ff ff 	cmpq   $0x2,-0x7e0(%rbp)
  8201d5:	02 
  8201d6:	0f 8c 30 57 00 00    	jl     82590c <pre_step3d_mod_mp_pre_step3d_tile_+0x1135c>
  8201dc:	4c 8b 95 40 f8 ff ff 	mov    -0x7c0(%rbp),%r10
  8201e3:	4c 0f af d0          	imul   %rax,%r10
  8201e7:	48 8b 8d b0 f6 ff ff 	mov    -0x950(%rbp),%rcx
  8201ee:	4c 8b ad d0 f6 ff ff 	mov    -0x930(%rbp),%r13
  8201f5:	4c 8b b5 c0 f6 ff ff 	mov    -0x940(%rbp),%r14
  8201fc:	48 89 95 80 f8 ff ff 	mov    %rdx,-0x780(%rbp)
  820203:	49 03 ca             	add    %r10,%rcx
  820206:	48 89 85 68 f9 ff ff 	mov    %rax,-0x698(%rbp)
  82020d:	4f 8d 7c 15 00       	lea    0x0(%r13,%r10,1),%r15
  820212:	4c 89 bd 50 f9 ff ff 	mov    %r15,-0x6b0(%rbp)
  820219:	4f 8d 2c 16          	lea    (%r14,%r10,1),%r13
  82021d:	4c 03 95 90 f6 ff ff 	add    -0x970(%rbp),%r10
  820224:	48 8b 95 60 fa ff ff 	mov    -0x5a0(%rbp),%rdx
  82022b:	4c 89 95 40 f9 ff ff 	mov    %r10,-0x6c0(%rbp)
  820232:	4c 89 ad 48 f9 ff ff 	mov    %r13,-0x6b8(%rbp)
  820239:	48 8b 85 30 fa ff ff 	mov    -0x5d0(%rbp),%rax
  820240:	48 3b 85 18 fa ff ff 	cmp    -0x5e8(%rbp),%rax
  820247:	0f 8c 33 01 00 00    	jl     820380 <pre_step3d_mod_mp_pre_step3d_tile_+0xbdd0>
  82024d:	48 83 fa 04          	cmp    $0x4,%rdx
  820251:	0f 8c ae 56 00 00    	jl     825905 <pre_step3d_mod_mp_pre_step3d_tile_+0x11355>
  820257:	4c 8b ad 50 f9 ff ff 	mov    -0x6b0(%rbp),%r13
  82025e:	45 33 ff             	xor    %r15d,%r15d
  820261:	4c 8b a5 48 f9 ff ff 	mov    -0x6b8(%rbp),%r12
  820268:	4c 8d 34 31          	lea    (%rcx,%rsi,1),%r14
  82026c:	4c 8b 95 40 f9 ff ff 	mov    -0x6c0(%rbp),%r10
  820273:	48 8b 85 c0 fa ff ff 	mov    -0x540(%rbp),%rax
  82027a:	4c 03 ee             	add    %rsi,%r13
  82027d:	48 89 c2             	mov    %rax,%rdx
  820280:	4c 03 e6             	add    %rsi,%r12
  820283:	4d 8d 1c 32          	lea    (%r10,%rsi,1),%r11
  820287:	4d 89 c2             	mov    %r8,%r10
  82028a:	c4 81 7d 10 04 fb    	vmovupd (%r11,%r15,8),%ymm0
  820290:	c4 01 7d 10 6c fd 00 	vmovupd 0x0(%r13,%r15,8),%ymm13
  820297:	c4 81 7d 58 0c fc    	vaddpd (%r12,%r15,8),%ymm0,%ymm1
  82029d:	c4 01 15 58 34 fe    	vaddpd (%r14,%r15,8),%ymm13,%ymm14
  8202a3:	c5 55 59 f9          	vmulpd %ymm1,%ymm5,%ymm15
  8202a7:	c4 c1 6d 59 c6       	vmulpd %ymm14,%ymm2,%ymm0
  8202ac:	c5 85 5c c8          	vsubpd %ymm0,%ymm15,%ymm1
  8202b0:	c4 21 75 59 2c ff    	vmulpd (%rdi,%r15,8),%ymm1,%ymm13
  8202b6:	49 83 c7 04          	add    $0x4,%r15
  8202ba:	c4 41 7d 11 6a 10    	vmovupd %ymm13,0x10(%r10)
  8202c0:	49 83 c2 20          	add    $0x20,%r10
  8202c4:	4c 3b fa             	cmp    %rdx,%r15
  8202c7:	72 c1                	jb     82028a <pre_step3d_mod_mp_pre_step3d_tile_+0xbcda>
  8202c9:	48 8b 95 60 fa ff ff 	mov    -0x5a0(%rbp),%rdx
  8202d0:	4c 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%r13
  8202d7:	00 
  8202d8:	48 3b c2             	cmp    %rdx,%rax
  8202db:	73 79                	jae    820356 <pre_step3d_mod_mp_pre_step3d_tile_+0xbda6>
  8202dd:	4c 8b 9d 50 f9 ff ff 	mov    -0x6b0(%rbp),%r11
  8202e4:	4d 8d 34 c0          	lea    (%r8,%rax,8),%r14
  8202e8:	4c 8b 95 48 f9 ff ff 	mov    -0x6b8(%rbp),%r10
  8202ef:	4c 8d 24 31          	lea    (%rcx,%rsi,1),%r12
  8202f3:	4c 8b bd 40 f9 ff ff 	mov    -0x6c0(%rbp),%r15
  8202fa:	4c 03 de             	add    %rsi,%r11
  8202fd:	4c 03 d6             	add    %rsi,%r10
  820300:	4c 03 fe             	add    %rsi,%r15
  820303:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  820308:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  82030f:	00 
  820310:	c4 81 7b 10 44 3d 00 	vmovsd 0x0(%r13,%r15,1),%xmm0
  820317:	48 ff c0             	inc    %rax
  82031a:	c4 01 7b 10 6c 1d 00 	vmovsd 0x0(%r13,%r11,1),%xmm13
  820321:	c4 81 7b 58 4c 15 00 	vaddsd 0x0(%r13,%r10,1),%xmm0,%xmm1
  820328:	c4 01 13 58 74 25 00 	vaddsd 0x0(%r13,%r12,1),%xmm13,%xmm14
  82032f:	c5 5b 59 f9          	vmulsd %xmm1,%xmm4,%xmm15
  820333:	c4 c1 3b 59 c6       	vmulsd %xmm14,%xmm8,%xmm0
  820338:	c5 83 5c c8          	vsubsd %xmm0,%xmm15,%xmm1
  82033c:	c4 41 73 59 6c 3d 00 	vmulsd 0x0(%r13,%rdi,1),%xmm1,%xmm13
  820343:	49 83 c5 08          	add    $0x8,%r13
  820347:	c4 41 7b 11 6e 10    	vmovsd %xmm13,0x10(%r14)
  82034d:	49 83 c6 08          	add    $0x8,%r14
  820351:	48 3b c2             	cmp    %rdx,%rax
  820354:	72 ba                	jb     820310 <pre_step3d_mod_mp_pre_step3d_tile_+0xbd60>
  820356:	49 ff c1             	inc    %r9
  820359:	4c 03 85 38 fa ff ff 	add    -0x5c8(%rbp),%r8
  820360:	48 03 bd c0 f8 ff ff 	add    -0x740(%rbp),%rdi
  820367:	48 03 b5 20 fa ff ff 	add    -0x5e0(%rbp),%rsi
  82036e:	4c 3b 8d c8 f8 ff ff 	cmp    -0x738(%rbp),%r9
  820375:	0f 82 be fe ff ff    	jb     820239 <pre_step3d_mod_mp_pre_step3d_tile_+0xbc89>
  82037b:	e9 27 48 00 00       	jmpq   824ba7 <pre_step3d_mod_mp_pre_step3d_tile_+0x105f7>
  820380:	49 ff c1             	inc    %r9
  820383:	4c 03 85 38 fa ff ff 	add    -0x5c8(%rbp),%r8
  82038a:	48 03 bd c0 f8 ff ff 	add    -0x740(%rbp),%rdi
  820391:	48 03 b5 20 fa ff ff 	add    -0x5e0(%rbp),%rsi
  820398:	4c 3b 8d c8 f8 ff ff 	cmp    -0x738(%rbp),%r9
  82039f:	0f 82 94 fe ff ff    	jb     820239 <pre_step3d_mod_mp_pre_step3d_tile_+0xbc89>
  8203a5:	e9 e7 4a 00 00       	jmpq   824e91 <pre_step3d_mod_mp_pre_step3d_tile_+0x108e1>
  8203aa:	33 ff                	xor    %edi,%edi
  8203ac:	45 33 c0             	xor    %r8d,%r8d
  8203af:	48 8b b5 28 f8 ff ff 	mov    -0x7d8(%rbp),%rsi
  8203b6:	33 c9                	xor    %ecx,%ecx
  8203b8:	48 83 bd 20 f8 ff ff 	cmpq   $0x2,-0x7e0(%rbp)
  8203bf:	02 
  8203c0:	0f 8c 46 55 00 00    	jl     82590c <pre_step3d_mod_mp_pre_step3d_tile_+0x1135c>
  8203c6:	4c 8b b5 40 f8 ff ff 	mov    -0x7c0(%rbp),%r14
  8203cd:	4c 0f af f0          	imul   %rax,%r14
  8203d1:	4c 8b 8d 60 f8 ff ff 	mov    -0x7a0(%rbp),%r9
  8203d8:	4f 8d 14 33          	lea    (%r11,%r14,1),%r10
  8203dc:	4c 8b bd a0 f6 ff ff 	mov    -0x960(%rbp),%r15
  8203e3:	4c 89 95 e8 f8 ff ff 	mov    %r10,-0x718(%rbp)
  8203ea:	4c 8b ad 58 f8 ff ff 	mov    -0x7a8(%rbp),%r13
  8203f1:	4f 8d 14 31          	lea    (%r9,%r14,1),%r10
  8203f5:	48 89 85 68 f9 ff ff 	mov    %rax,-0x698(%rbp)
  8203fc:	4f 8d 0c 37          	lea    (%r15,%r14,1),%r9
  820400:	4c 8b bd b8 f6 ff ff 	mov    -0x948(%rbp),%r15
  820407:	4c 89 8d 10 f9 ff ff 	mov    %r9,-0x6f0(%rbp)
  82040e:	4d 03 ee             	add    %r14,%r13
  820411:	4c 89 95 20 f9 ff ff 	mov    %r10,-0x6e0(%rbp)
  820418:	4c 89 ad 18 f9 ff ff 	mov    %r13,-0x6e8(%rbp)
  82041f:	4d 03 fe             	add    %r14,%r15
  820422:	4c 89 bd e0 f8 ff ff 	mov    %r15,-0x720(%rbp)
  820429:	4c 8b bd a8 f6 ff ff 	mov    -0x958(%rbp),%r15
  820430:	48 89 95 80 f8 ff ff 	mov    %rdx,-0x780(%rbp)
  820437:	4d 03 fe             	add    %r14,%r15
  82043a:	4c 89 bd d8 f8 ff ff 	mov    %r15,-0x728(%rbp)
  820441:	4c 8b bd c8 f6 ff ff 	mov    -0x938(%rbp),%r15
  820448:	4d 03 fe             	add    %r14,%r15
  82044b:	4c 03 b5 98 f6 ff ff 	add    -0x968(%rbp),%r14
  820452:	4c 89 bd d0 f8 ff ff 	mov    %r15,-0x730(%rbp)
  820459:	4c 89 b5 08 f9 ff ff 	mov    %r14,-0x6f8(%rbp)
  820460:	48 8b 85 30 fa ff ff 	mov    -0x5d0(%rbp),%rax
  820467:	48 3b 85 18 fa ff ff 	cmp    -0x5e8(%rbp),%rax
  82046e:	0f 8c 22 03 00 00    	jl     820796 <pre_step3d_mod_mp_pre_step3d_tile_+0xc1e6>
  820474:	48 83 bd 60 fa ff ff 	cmpq   $0x4,-0x5a0(%rbp)
  82047b:	04 
  82047c:	0f 8c a3 54 00 00    	jl     825925 <pre_step3d_mod_mp_pre_step3d_tile_+0x11375>
  820482:	48 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%rdx
  820489:	45 33 ff             	xor    %r15d,%r15d
  82048c:	4c 8b b5 58 f9 ff ff 	mov    -0x6a8(%rbp),%r14
  820493:	4c 8b ad 18 f9 ff ff 	mov    -0x6e8(%rbp),%r13
  82049a:	4c 8b a5 e8 f8 ff ff 	mov    -0x718(%rbp),%r12
  8204a1:	48 03 d1             	add    %rcx,%rdx
  8204a4:	48 89 95 b8 fa ff ff 	mov    %rdx,-0x548(%rbp)
  8204ab:	4d 03 f0             	add    %r8,%r14
  8204ae:	48 8b 95 d8 f8 ff ff 	mov    -0x728(%rbp),%rdx
  8204b5:	4c 03 e9             	add    %rcx,%r13
  8204b8:	4c 8b 9d 20 f9 ff ff 	mov    -0x6e0(%rbp),%r11
  8204bf:	4c 03 e1             	add    %rcx,%r12
  8204c2:	4c 8b 95 10 f9 ff ff 	mov    -0x6f0(%rbp),%r10
  8204c9:	4c 8b 8d 60 f9 ff ff 	mov    -0x6a0(%rbp),%r9
  8204d0:	48 03 d1             	add    %rcx,%rdx
  8204d3:	48 89 95 b0 fa ff ff 	mov    %rdx,-0x550(%rbp)
  8204da:	4c 03 d9             	add    %rcx,%r11
  8204dd:	48 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%rdx
  8204e4:	4c 03 d1             	add    %rcx,%r10
  8204e7:	48 8b 85 c0 fa ff ff 	mov    -0x540(%rbp),%rax
  8204ee:	4d 03 c8             	add    %r8,%r9
  8204f1:	48 89 b5 28 f9 ff ff 	mov    %rsi,-0x6d8(%rbp)
  8204f8:	48 89 85 30 f9 ff ff 	mov    %rax,-0x6d0(%rbp)
  8204ff:	48 03 d1             	add    %rcx,%rdx
  820502:	48 89 95 a8 fa ff ff 	mov    %rdx,-0x558(%rbp)
  820509:	48 8b 95 08 f9 ff ff 	mov    -0x6f8(%rbp),%rdx
  820510:	48 89 8d 38 f9 ff ff 	mov    %rcx,-0x6c8(%rbp)
  820517:	48 89 b5 f8 f8 ff ff 	mov    %rsi,-0x708(%rbp)
  82051e:	48 89 bd f0 f8 ff ff 	mov    %rdi,-0x710(%rbp)
  820525:	48 03 d1             	add    %rcx,%rdx
  820528:	48 89 95 a0 fa ff ff 	mov    %rdx,-0x560(%rbp)
  82052f:	33 d2                	xor    %edx,%edx
  820531:	4c 89 85 00 f9 ff ff 	mov    %r8,-0x700(%rbp)
  820538:	48 8b 85 28 f9 ff ff 	mov    -0x6d8(%rbp),%rax
  82053f:	48 89 d1             	mov    %rdx,%rcx
  820542:	48 8b b5 68 fa ff ff 	mov    -0x598(%rbp),%rsi
  820549:	48 8b bd 50 fa ff ff 	mov    -0x5b0(%rbp),%rdi
  820550:	49 83 c7 04          	add    $0x4,%r15
  820554:	4d 8d 04 16          	lea    (%r14,%rdx,1),%r8
  820558:	c4 41 7b 10 38       	vmovsd (%r8),%xmm15
  82055d:	c4 41 01 16 34 30    	vmovhpd (%r8,%rsi,1),%xmm15,%xmm14
  820563:	4d 8d 04 0c          	lea    (%r12,%rcx,1),%r8
  820567:	c4 c1 7b 10 08       	vmovsd (%r8),%xmm1
  82056c:	c4 41 71 16 2c 38    	vmovhpd (%r8,%rdi,1),%xmm1,%xmm13
  820572:	4d 8d 04 0b          	lea    (%r11,%rcx,1),%r8
  820576:	c4 c1 7b 10 00       	vmovsd (%r8),%xmm0
  82057b:	c4 41 79 16 3c 38    	vmovhpd (%r8,%rdi,1),%xmm0,%xmm15
  820581:	4d 8d 44 0d 00       	lea    0x0(%r13,%rcx,1),%r8
  820586:	c4 c1 11 58 cf       	vaddpd %xmm15,%xmm13,%xmm1
  82058b:	c4 c1 7b 10 00       	vmovsd (%r8),%xmm0
  820590:	c5 49 59 e9          	vmulpd %xmm1,%xmm6,%xmm13
  820594:	c4 c1 79 16 0c 38    	vmovhpd (%r8,%rdi,1),%xmm0,%xmm1
  82059a:	4d 8d 04 0a          	lea    (%r10,%rcx,1),%r8
  82059e:	c4 41 7b 10 38       	vmovsd (%r8),%xmm15
  8205a3:	c4 c1 01 16 04 38    	vmovhpd (%r8,%rdi,1),%xmm15,%xmm0
  8205a9:	4d 8d 04 11          	lea    (%r9,%rdx,1),%r8
  8205ad:	c5 71 58 f8          	vaddpd %xmm0,%xmm1,%xmm15
  8205b1:	c4 c1 41 59 cf       	vmulpd %xmm15,%xmm7,%xmm1
  8205b6:	c5 11 5c e9          	vsubpd %xmm1,%xmm13,%xmm13
  8205ba:	c4 41 09 59 f5       	vmulpd %xmm13,%xmm14,%xmm14
  8205bf:	c4 c1 7b 10 08       	vmovsd (%r8),%xmm1
  8205c4:	48 8d 14 b2          	lea    (%rdx,%rsi,4),%rdx
  8205c8:	c4 c1 71 16 0c 30    	vmovhpd (%r8,%rsi,1),%xmm1,%xmm1
  8205ce:	4c 8b 85 a8 fa ff ff 	mov    -0x558(%rbp),%r8
  8205d5:	c5 79 11 70 10       	vmovupd %xmm14,0x10(%rax)
  8205da:	4c 03 c1             	add    %rcx,%r8
  8205dd:	c4 c1 7b 10 00       	vmovsd (%r8),%xmm0
  8205e2:	c4 41 79 16 34 38    	vmovhpd (%r8,%rdi,1),%xmm0,%xmm14
  8205e8:	4c 8b 85 b0 fa ff ff 	mov    -0x550(%rbp),%r8
  8205ef:	4c 03 c1             	add    %rcx,%r8
  8205f2:	c4 41 7b 10 28       	vmovsd (%r8),%xmm13
  8205f7:	c4 41 11 16 3c 38    	vmovhpd (%r8,%rdi,1),%xmm13,%xmm15
  8205fd:	4c 8b 85 a0 fa ff ff 	mov    -0x560(%rbp),%r8
  820604:	c4 c1 09 58 c7       	vaddpd %xmm15,%xmm14,%xmm0
  820609:	c5 c9 59 c0          	vmulpd %xmm0,%xmm6,%xmm0
  82060d:	4c 03 c1             	add    %rcx,%r8
  820610:	c4 41 7b 10 28       	vmovsd (%r8),%xmm13
  820615:	c4 41 11 16 3c 38    	vmovhpd (%r8,%rdi,1),%xmm13,%xmm15
  82061b:	4c 8b 85 b8 fa ff ff 	mov    -0x548(%rbp),%r8
  820622:	4c 03 c1             	add    %rcx,%r8
  820625:	c4 41 7b 10 30       	vmovsd (%r8),%xmm14
  82062a:	48 8d 0c b9          	lea    (%rcx,%rdi,4),%rcx
  82062e:	c4 41 09 16 2c 38    	vmovhpd (%r8,%rdi,1),%xmm14,%xmm13
  820634:	c4 41 01 58 f5       	vaddpd %xmm13,%xmm15,%xmm14
  820639:	c4 41 41 59 fe       	vmulpd %xmm14,%xmm7,%xmm15
  82063e:	c4 c1 79 5c c7       	vsubpd %xmm15,%xmm0,%xmm0
  820643:	c5 f1 59 c8          	vmulpd %xmm0,%xmm1,%xmm1
  820647:	c5 f9 11 48 20       	vmovupd %xmm1,0x20(%rax)
  82064c:	48 83 c0 20          	add    $0x20,%rax
  820650:	4c 3b bd c0 fa ff ff 	cmp    -0x540(%rbp),%r15
  820657:	0f 82 f3 fe ff ff    	jb     820550 <pre_step3d_mod_mp_pre_step3d_tile_+0xbfa0>
  82065d:	48 8b 85 30 f9 ff ff 	mov    -0x6d0(%rbp),%rax
  820664:	48 8b 8d 38 f9 ff ff 	mov    -0x6c8(%rbp),%rcx
  82066b:	4c 8b 85 00 f9 ff ff 	mov    -0x700(%rbp),%r8
  820672:	48 8b b5 f8 f8 ff ff 	mov    -0x708(%rbp),%rsi
  820679:	48 8b bd f0 f8 ff ff 	mov    -0x710(%rbp),%rdi
  820680:	4c 8b ad 50 fa ff ff 	mov    -0x5b0(%rbp),%r13
  820687:	4c 8b bd 68 fa ff ff 	mov    -0x598(%rbp),%r15
  82068e:	4c 0f af e8          	imul   %rax,%r13
  820692:	4c 0f af f8          	imul   %rax,%r15
  820696:	48 3b 85 60 fa ff ff 	cmp    -0x5a0(%rbp),%rax
  82069d:	0f 83 c9 00 00 00    	jae    82076c <pre_step3d_mod_mp_pre_step3d_tile_+0xc1bc>
  8206a3:	4c 8b a5 58 f9 ff ff 	mov    -0x6a8(%rbp),%r12
  8206aa:	4c 8d 34 c6          	lea    (%rsi,%rax,8),%r14
  8206ae:	4c 8b 9d 18 f9 ff ff 	mov    -0x6e8(%rbp),%r11
  8206b5:	4c 8b 95 e8 f8 ff ff 	mov    -0x718(%rbp),%r10
  8206bc:	4c 8b 8d 20 f9 ff ff 	mov    -0x6e0(%rbp),%r9
  8206c3:	4d 03 e0             	add    %r8,%r12
  8206c6:	48 8b 95 10 f9 ff ff 	mov    -0x6f0(%rbp),%rdx
  8206cd:	4c 03 d9             	add    %rcx,%r11
  8206d0:	4c 89 85 00 f9 ff ff 	mov    %r8,-0x700(%rbp)
  8206d7:	4c 03 d1             	add    %rcx,%r10
  8206da:	48 89 b5 f8 f8 ff ff 	mov    %rsi,-0x708(%rbp)
  8206e1:	4c 03 c9             	add    %rcx,%r9
  8206e4:	48 89 bd f0 f8 ff ff 	mov    %rdi,-0x710(%rbp)
  8206eb:	48 03 d1             	add    %rcx,%rdx
  8206ee:	48 8b b5 60 fa ff ff 	mov    -0x5a0(%rbp),%rsi
  8206f5:	48 8b bd 68 fa ff ff 	mov    -0x598(%rbp),%rdi
  8206fc:	4c 8b 85 50 fa ff ff 	mov    -0x5b0(%rbp),%r8
  820703:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  820708:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  82070f:	00 
  820710:	c4 81 7b 10 44 15 00 	vmovsd 0x0(%r13,%r10,1),%xmm0
  820717:	48 ff c0             	inc    %rax
  82071a:	c4 01 7b 10 6c 1d 00 	vmovsd 0x0(%r13,%r11,1),%xmm13
  820721:	c4 81 7b 58 4c 0d 00 	vaddsd 0x0(%r13,%r9,1),%xmm0,%xmm1
  820728:	c4 41 13 58 74 15 00 	vaddsd 0x0(%r13,%rdx,1),%xmm13,%xmm14
  82072f:	c5 5b 59 f9          	vmulsd %xmm1,%xmm4,%xmm15
  820733:	c4 c1 3b 59 c6       	vmulsd %xmm14,%xmm8,%xmm0
  820738:	4d 03 e8             	add    %r8,%r13
  82073b:	c5 83 5c c8          	vsubsd %xmm0,%xmm15,%xmm1
  82073f:	c4 01 73 59 2c 27    	vmulsd (%r15,%r12,1),%xmm1,%xmm13
  820745:	4c 03 ff             	add    %rdi,%r15
  820748:	c4 41 7b 11 6e 10    	vmovsd %xmm13,0x10(%r14)
  82074e:	49 83 c6 08          	add    $0x8,%r14
  820752:	48 3b c6             	cmp    %rsi,%rax
  820755:	72 b9                	jb     820710 <pre_step3d_mod_mp_pre_step3d_tile_+0xc160>
  820757:	4c 8b 85 00 f9 ff ff 	mov    -0x700(%rbp),%r8
  82075e:	48 8b b5 f8 f8 ff ff 	mov    -0x708(%rbp),%rsi
  820765:	48 8b bd f0 f8 ff ff 	mov    -0x710(%rbp),%rdi
  82076c:	48 ff c7             	inc    %rdi
  82076f:	48 03 b5 38 fa ff ff 	add    -0x5c8(%rbp),%rsi
  820776:	4c 03 85 c0 f8 ff ff 	add    -0x740(%rbp),%r8
  82077d:	48 03 8d 20 fa ff ff 	add    -0x5e0(%rbp),%rcx
  820784:	48 3b bd c8 f8 ff ff 	cmp    -0x738(%rbp),%rdi
  82078b:	0f 82 cf fc ff ff    	jb     820460 <pre_step3d_mod_mp_pre_step3d_tile_+0xbeb0>
  820791:	e9 11 44 00 00       	jmpq   824ba7 <pre_step3d_mod_mp_pre_step3d_tile_+0x105f7>
  820796:	48 ff c7             	inc    %rdi
  820799:	48 03 b5 38 fa ff ff 	add    -0x5c8(%rbp),%rsi
  8207a0:	4c 03 85 c0 f8 ff ff 	add    -0x740(%rbp),%r8
  8207a7:	48 03 8d 20 fa ff ff 	add    -0x5e0(%rbp),%rcx
  8207ae:	48 3b bd c8 f8 ff ff 	cmp    -0x738(%rbp),%rdi
  8207b5:	0f 82 a5 fc ff ff    	jb     820460 <pre_step3d_mod_mp_pre_step3d_tile_+0xbeb0>
  8207bb:	e9 d1 46 00 00       	jmpq   824e91 <pre_step3d_mod_mp_pre_step3d_tile_+0x108e1>
  8207c0:	53                   	push   %rbx
  8207c1:	48 89 e3             	mov    %rsp,%rbx
  8207c4:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  8207c8:	55                   	push   %rbp
  8207c9:	55                   	push   %rbp
  8207ca:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  8207ce:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  8207d3:	48 89 e5             	mov    %rsp,%rbp
  8207d6:	48 81 ec 70 0e 00 00 	sub    $0xe70,%rsp
  8207dd:	4c 89 ad 28 f6 ff ff 	mov    %r13,-0x9d8(%rbp)
  8207e4:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
  8207e8:	4c 89 bd 18 f6 ff ff 	mov    %r15,-0x9e8(%rbp)
  8207ef:	4c 89 a5 30 f6 ff ff 	mov    %r12,-0x9d0(%rbp)
  8207f6:	4c 8b 7b 20          	mov    0x20(%rbx),%r15
  8207fa:	4c 8b 63 48          	mov    0x48(%rbx),%r12
  8207fe:	4c 89 b5 20 f6 ff ff 	mov    %r14,-0x9e0(%rbp)
  820805:	4c 8b 73 28          	mov    0x28(%rbx),%r14
  820809:	45 8b 6d 00          	mov    0x0(%r13),%r13d
  82080d:	44 89 ad d0 fc ff ff 	mov    %r13d,-0x330(%rbp)
  820814:	48 8b 43 18          	mov    0x18(%rbx),%rax
  820818:	4d 8b 2f             	mov    (%r15),%r13
  82081b:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  82081f:	4d 8b 24 24          	mov    (%r12),%r12
  820823:	4c 89 ad c8 f1 ff ff 	mov    %r13,-0xe38(%rbp)
  82082a:	4c 89 a5 10 f2 ff ff 	mov    %r12,-0xdf0(%rbp)
  820831:	4c 8b 2a             	mov    (%rdx),%r13
  820834:	4d 8b 26             	mov    (%r14),%r12
  820837:	48 8b 53 50          	mov    0x50(%rbx),%rdx
  82083b:	4c 8b 53 38          	mov    0x38(%rbx),%r10
  82083f:	4c 89 a5 e8 f1 ff ff 	mov    %r12,-0xe18(%rbp)
  820846:	4c 8b 20             	mov    (%rax),%r12
  820849:	48 63 06             	movslq (%rsi),%rax
  82084c:	49 63 31             	movslq (%r9),%rsi
  82084f:	48 89 85 b8 fb ff ff 	mov    %rax,-0x448(%rbp)
  820856:	48 63 02             	movslq (%rdx),%rax
  820859:	48 8b 53 58          	mov    0x58(%rbx),%rdx
  82085d:	48 89 b5 b0 fb ff ff 	mov    %rsi,-0x450(%rbp)
  820864:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
  820868:	48 8b 73 60          	mov    0x60(%rbx),%rsi
  82086c:	45 8b 12             	mov    (%r10),%r10d
  82086f:	45 8b 00             	mov    (%r8),%r8d
  820872:	4c 8b 73 78          	mov    0x78(%rbx),%r14
  820876:	44 89 95 d8 fc ff ff 	mov    %r10d,-0x328(%rbp)
  82087d:	44 89 85 68 f8 ff ff 	mov    %r8d,-0x798(%rbp)
  820884:	8b 09                	mov    (%rcx),%ecx
  820886:	48 89 85 08 f8 ff ff 	mov    %rax,-0x7f8(%rbp)
  82088d:	4c 8b 43 68          	mov    0x68(%rbx),%r8
  820891:	4c 8b 53 70          	mov    0x70(%rbx),%r10
  820895:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
  82089c:	8b 3f                	mov    (%rdi),%edi
  82089e:	89 8d 40 f8 ff ff    	mov    %ecx,-0x7c0(%rbp)
  8208a4:	48 63 0a             	movslq (%rdx),%rcx
  8208a7:	89 bd 20 f7 ff ff    	mov    %edi,-0x8e0(%rbp)
  8208ad:	4d 8b 1b             	mov    (%r11),%r11
  8208b0:	48 8b 3e             	mov    (%rsi),%rdi
  8208b3:	4d 8b 3e             	mov    (%r14),%r15
  8208b6:	48 89 8d 10 f8 ff ff 	mov    %rcx,-0x7f0(%rbp)
  8208bd:	4c 8d b3 88 00 00 00 	lea    0x88(%rbx),%r14
  8208c4:	49 8b 0e             	mov    (%r14),%rcx
  8208c7:	4c 89 9d d8 f1 ff ff 	mov    %r11,-0xe28(%rbp)
  8208ce:	48 89 bd f8 f1 ff ff 	mov    %rdi,-0xe08(%rbp)
  8208d5:	4d 8b 08             	mov    (%r8),%r9
  8208d8:	4d 8b 1a             	mov    (%r10),%r11
  8208db:	4c 89 bd d0 f1 ff ff 	mov    %r15,-0xe30(%rbp)
  8208e2:	48 8b 10             	mov    (%rax),%rdx
  8208e5:	49 8b 7e 08          	mov    0x8(%r14),%rdi
  8208e9:	4d 8b 7e 28          	mov    0x28(%r14),%r15
  8208ed:	4c 89 8d 08 f2 ff ff 	mov    %r9,-0xdf8(%rbp)
  8208f4:	4c 89 9d f0 f1 ff ff 	mov    %r11,-0xe10(%rbp)
  8208fb:	48 89 95 e0 f1 ff ff 	mov    %rdx,-0xe20(%rbp)
  820902:	48 8d 93 98 00 00 00 	lea    0x98(%rbx),%rdx
  820909:	4c 8b 0a             	mov    (%rdx),%r9
  82090c:	4c 8b 5a 08          	mov    0x8(%rdx),%r11
  820910:	48 8b 52 20          	mov    0x20(%rdx),%rdx
  820914:	48 8b 31             	mov    (%rcx),%rsi
  820917:	4c 63 07             	movslq (%rdi),%r8
  82091a:	49 63 07             	movslq (%r15),%rax
  82091d:	4c 8d bb c8 00 00 00 	lea    0xc8(%rbx),%r15
  820924:	49 8b 3f             	mov    (%r15),%rdi
  820927:	48 89 b5 00 f2 ff ff 	mov    %rsi,-0xe00(%rbp)
  82092e:	49 8b 77 f8          	mov    -0x8(%r15),%rsi
  820932:	4c 89 85 e8 f8 ff ff 	mov    %r8,-0x718(%rbp)
  820939:	4d 63 11             	movslq (%r9),%r10
  82093c:	4d 63 33             	movslq (%r11),%r14
  82093f:	48 89 85 a0 f1 ff ff 	mov    %rax,-0xe60(%rbp)
  820946:	33 c0                	xor    %eax,%eax
  820948:	48 63 0a             	movslq (%rdx),%rcx
  82094b:	48 89 bd b8 f1 ff ff 	mov    %rdi,-0xe48(%rbp)
  820952:	48 8d bd c8 f2 ff ff 	lea    -0xd38(%rbp),%rdi
  820959:	4d 8b 47 08          	mov    0x8(%r15),%r8
  82095d:	48 89 b5 b0 f1 ff ff 	mov    %rsi,-0xe50(%rbp)
  820964:	49 8b 77 10          	mov    0x10(%r15),%rsi
  820968:	4c 89 95 90 f1 ff ff 	mov    %r10,-0xe70(%rbp)
  82096f:	4c 89 b5 98 f1 ff ff 	mov    %r14,-0xe68(%rbp)
  820976:	48 89 8d a8 f1 ff ff 	mov    %rcx,-0xe58(%rbp)
  82097d:	4c 89 85 c0 f1 ff ff 	mov    %r8,-0xe40(%rbp)
  820984:	e8 27 db c5 ff       	callq  47e4b0 <_f90_dope_vector_init>
  820989:	48 89 85 08 f6 ff ff 	mov    %rax,-0x9f8(%rbp)
  820990:	48 83 c0 1f          	add    $0x1f,%rax
  820994:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  820998:	48 2b e0             	sub    %rax,%rsp
  82099b:	48 89 e0             	mov    %rsp,%rax
  82099e:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  8209a5:	48 89 c2             	mov    %rax,%rdx
  8209a8:	48 8d bd 30 f3 ff ff 	lea    -0xcd0(%rbp),%rdi
  8209af:	33 c0                	xor    %eax,%eax
  8209b1:	48 8b b5 c0 f1 ff ff 	mov    -0xe40(%rbp),%rsi
  8209b8:	48 89 57 98          	mov    %rdx,-0x68(%rdi)
  8209bc:	e8 ef da c5 ff       	callq  47e4b0 <_f90_dope_vector_init>
  8209c1:	48 89 85 38 f6 ff ff 	mov    %rax,-0x9c8(%rbp)
  8209c8:	48 83 c0 1f          	add    $0x1f,%rax
  8209cc:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  8209d0:	48 2b e0             	sub    %rax,%rsp
  8209d3:	48 89 e0             	mov    %rsp,%rax
  8209d6:	48 89 85 10 f6 ff ff 	mov    %rax,-0x9f0(%rbp)
  8209dd:	48 89 c2             	mov    %rax,%rdx
  8209e0:	48 8d bd 90 f3 ff ff 	lea    -0xc70(%rbp),%rdi
  8209e7:	33 c0                	xor    %eax,%eax
  8209e9:	48 8b b5 b8 f1 ff ff 	mov    -0xe48(%rbp),%rsi
  8209f0:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  8209f4:	e8 b7 da c5 ff       	callq  47e4b0 <_f90_dope_vector_init>
  8209f9:	48 89 85 48 f6 ff ff 	mov    %rax,-0x9b8(%rbp)
  820a00:	48 83 c0 1f          	add    $0x1f,%rax
  820a04:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  820a08:	48 2b e0             	sub    %rax,%rsp
  820a0b:	48 89 e0             	mov    %rsp,%rax
  820a0e:	48 89 85 40 f6 ff ff 	mov    %rax,-0x9c0(%rbp)
  820a15:	48 89 c2             	mov    %rax,%rdx
  820a18:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  820a1f:	33 c0                	xor    %eax,%eax
  820a21:	48 8b b5 b0 f1 ff ff 	mov    -0xe50(%rbp),%rsi
  820a28:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  820a2c:	e8 7f da c5 ff       	callq  47e4b0 <_f90_dope_vector_init>
  820a31:	48 89 85 58 f6 ff ff 	mov    %rax,-0x9a8(%rbp)
  820a38:	48 83 c0 1f          	add    $0x1f,%rax
  820a3c:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  820a40:	48 2b e0             	sub    %rax,%rsp
  820a43:	48 89 e0             	mov    %rsp,%rax
  820a46:	48 89 85 50 f6 ff ff 	mov    %rax,-0x9b0(%rbp)
  820a4d:	48 8b 05 8c b6 31 00 	mov    0x31b68c(%rip),%rax        # b3c0e0 <mod_param_mp_n_+0x40>
  820a54:	48 c1 e0 02          	shl    $0x2,%rax
  820a58:	4c 8b b5 50 f6 ff ff 	mov    -0x9b0(%rbp),%r14
  820a5f:	48 f7 d8             	neg    %rax
  820a62:	4c 89 b5 f0 f3 ff ff 	mov    %r14,-0xc10(%rbp)
  820a69:	4d 63 75 00          	movslq 0x0(%r13),%r14
  820a6d:	48 03 05 2c b6 31 00 	add    0x31b62c(%rip),%rax        # b3c0a0 <mod_param_mp_n_>
  820a74:	46 8b 3c b0          	mov    (%rax,%r14,4),%r15d
  820a78:	45 85 ff             	test   %r15d,%r15d
  820a7b:	0f 8e 10 3f 00 00    	jle    824991 <pre_step3d_mod_mp_pre_step3d_tile_+0x103e1>
  820a81:	48 83 c4 e0          	add    $0xffffffffffffffe0,%rsp
  820a85:	48 8d 85 54 f7 ff ff 	lea    -0x8ac(%rbp),%rax
  820a8c:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  820a92:	bf 1c 74 b3 00       	mov    $0xb3741c,%edi
  820a97:	ba 22 00 00 00       	mov    $0x22,%edx
  820a9c:	48 8d 8d 50 f7 ff ff 	lea    -0x8b0(%rbp),%rcx
  820aa3:	44 89 78 f8          	mov    %r15d,-0x8(%rax)
  820aa7:	4c 8d 85 48 f7 ff ff 	lea    -0x8b8(%rbp),%r8
  820aae:	48 89 04 24          	mov    %rax,(%rsp)
  820ab2:	4c 8d 8d 4c f7 ff ff 	lea    -0x8b4(%rbp),%r9
  820ab9:	44 89 6c 24 08       	mov    %r13d,0x8(%rsp)
  820abe:	44 89 6c 24 10       	mov    %r13d,0x10(%rsp)
  820ac3:	8b 70 cc             	mov    -0x34(%rax),%esi
  820ac6:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%rax)
  820acd:	44 89 68 f4          	mov    %r13d,-0xc(%rax)
  820ad1:	44 89 28             	mov    %r13d,(%rax)
  820ad4:	e8 57 d3 be ff       	callq  40de30 <__kmpc_for_static_init_4@plt>
  820ad9:	48 83 c4 20          	add    $0x20,%rsp
  820add:	4d 63 ff             	movslq %r15d,%r15
  820ae0:	48 63 85 48 f7 ff ff 	movslq -0x8b8(%rbp),%rax
  820ae7:	8b 95 4c f7 ff ff    	mov    -0x8b4(%rbp),%edx
  820aed:	48 89 85 e8 f5 ff ff 	mov    %rax,-0xa18(%rbp)
  820af4:	49 3b c7             	cmp    %r15,%rax
  820af7:	0f 8f 81 3e 00 00    	jg     82497e <pre_step3d_mod_mp_pre_step3d_tile_+0x103ce>
  820afd:	4c 8b 9d d0 f1 ff ff 	mov    -0xe30(%rbp),%r11
  820b04:	41 3b d7             	cmp    %r15d,%edx
  820b07:	48 8b 35 32 b5 31 00 	mov    0x31b532(%rip),%rsi        # b3c040 <mod_param_mp_nt_>
  820b0e:	48 8b 85 c8 f1 ff ff 	mov    -0xe38(%rbp),%rax
  820b15:	44 0f 4c fa          	cmovl  %edx,%r15d
  820b19:	4c 8b 8d d8 f1 ff ff 	mov    -0xe28(%rbp),%r9
  820b20:	49 63 3b             	movslq (%r11),%rdi
  820b23:	4e 8d 1c b6          	lea    (%rsi,%r14,4),%r11
  820b27:	48 8b b5 90 f3 ff ff 	mov    -0xc70(%rbp),%rsi
  820b2e:	48 89 b5 c0 f5 ff ff 	mov    %rsi,-0xa40(%rbp)
  820b35:	48 8b 15 24 d0 31 00 	mov    0x31d024(%rip),%rdx        # b3db60 <mod_scalars_mp_ewperiodic_>
  820b3c:	48 8b 0d 5d d0 31 00 	mov    0x31d05d(%rip),%rcx        # b3dba0 <mod_scalars_mp_ewperiodic_+0x40>
  820b43:	48 8b 35 d6 d9 31 00 	mov    0x31d9d6(%rip),%rsi        # b3e520 <mod_scalars_mp_ltracersrc_+0x40>
  820b4a:	4c 63 10             	movslq (%rax),%r10
  820b4d:	48 89 bd 28 f5 ff ff 	mov    %rdi,-0xad8(%rbp)
  820b54:	49 63 01             	movslq (%r9),%rax
  820b57:	48 89 95 e0 f5 ff ff 	mov    %rdx,-0xa20(%rbp)
  820b5e:	48 89 8d d8 f5 ff ff 	mov    %rcx,-0xa28(%rbp)
  820b65:	48 89 b5 98 f5 ff ff 	mov    %rsi,-0xa68(%rbp)
  820b6c:	48 8b 3d cd cc 31 00 	mov    0x31cccd(%rip),%rdi        # b3d840 <mod_scalars_mp_nsperiodic_+0x40>
  820b73:	4c 8b 8d 30 f3 ff ff 	mov    -0xcd0(%rbp),%r9
  820b7a:	48 8b 95 f0 f3 ff ff 	mov    -0xc10(%rbp),%rdx
  820b81:	48 8b 0d d8 d5 31 00 	mov    0x31d5d8(%rip),%rcx        # b3e160 <mod_scalars_mp_compositegrid_>
  820b88:	48 8b 35 11 2b 32 00 	mov    0x322b11(%rip),%rsi        # b436a0 <mod_scalars_mp_ntfirst_>
  820b8f:	48 89 bd c8 f5 ff ff 	mov    %rdi,-0xa38(%rbp)
  820b96:	4c 89 8d 00 f9 ff ff 	mov    %r9,-0x700(%rbp)
  820b9d:	48 89 95 f8 f8 ff ff 	mov    %rdx,-0x708(%rbp)
  820ba4:	48 89 8d b8 f5 ff ff 	mov    %rcx,-0xa48(%rbp)
  820bab:	48 89 b5 70 f5 ff ff 	mov    %rsi,-0xa90(%rbp)
  820bb2:	48 8b 3d f7 d5 31 00 	mov    0x31d5f7(%rip),%rdi        # b3e1b0 <mod_scalars_mp_compositegrid_+0x50>
  820bb9:	4c 8b 0d e0 d5 31 00 	mov    0x31d5e0(%rip),%r9        # b3e1a0 <mod_scalars_mp_compositegrid_+0x40>
  820bc0:	48 8b 15 49 d9 31 00 	mov    0x31d949(%rip),%rdx        # b3e510 <mod_scalars_mp_ltracersrc_+0x30>
  820bc7:	48 8b 0d 72 0a 32 00 	mov    0x320a72(%rip),%rcx        # b41640 <mod_scalars_mp_luvsrc_>
  820bce:	49 8b b4 24 80 00 00 	mov    0x80(%r12),%rsi
  820bd5:	00 
  820bd6:	48 89 bd a8 f5 ff ff 	mov    %rdi,-0xa58(%rbp)
  820bdd:	4c 89 8d a0 f5 ff ff 	mov    %r9,-0xa60(%rbp)
  820be4:	48 89 95 78 f8 ff ff 	mov    %rdx,-0x788(%rbp)
  820beb:	48 89 8d 90 f5 ff ff 	mov    %rcx,-0xa70(%rbp)
  820bf2:	48 89 b5 50 f5 ff ff 	mov    %rsi,-0xab0(%rbp)
  820bf9:	48 8b 3d e0 b6 31 00 	mov    0x31b6e0(%rip),%rdi        # b3c2e0 <mod_scalars_mp_iic_>
  820c00:	4c 8b 0d 19 b7 31 00 	mov    0x31b719(%rip),%r9        # b3c320 <mod_scalars_mp_iic_+0x40>
  820c07:	48 8b 15 d2 2a 32 00 	mov    0x322ad2(%rip),%rdx        # b436e0 <mod_scalars_mp_ntfirst_+0x40>
  820c0e:	48 8b 0d 2b a7 31 00 	mov    0x31a72b(%rip),%rcx        # b3b340 <mod_scalars_mp_dt_>
  820c15:	48 8b b5 f0 f1 ff ff 	mov    -0xe10(%rbp),%rsi
  820c1c:	48 89 bd 80 f5 ff ff 	mov    %rdi,-0xa80(%rbp)
  820c23:	4c 89 8d 78 f5 ff ff 	mov    %r9,-0xa88(%rbp)
  820c2a:	48 89 95 68 f5 ff ff 	mov    %rdx,-0xa98(%rbp)
  820c31:	48 89 8d 70 f8 ff ff 	mov    %rcx,-0x790(%rbp)
  820c38:	49 8b 3c 24          	mov    (%r12),%rdi
  820c3c:	4d 8b 8c 24 98 00 00 	mov    0x98(%r12),%r9
  820c43:	00 
  820c44:	49 8b 54 24 68       	mov    0x68(%r12),%rdx
  820c49:	49 8b 4c 24 50       	mov    0x50(%r12),%rcx
  820c4e:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  820c53:	4c 89 a5 10 fd ff ff 	mov    %r12,-0x2f0(%rbp)
  820c5a:	48 89 95 48 f5 ff ff 	mov    %rdx,-0xab8(%rbp)
  820c61:	4c 8b 26             	mov    (%rsi),%r12
  820c64:	48 8b 56 38          	mov    0x38(%rsi),%rdx
  820c68:	4c 89 a5 40 f5 ff ff 	mov    %r12,-0xac0(%rbp)
  820c6f:	48 89 95 08 fd ff ff 	mov    %rdx,-0x2f8(%rbp)
  820c76:	4c 8b a5 e0 f1 ff ff 	mov    -0xe20(%rbp),%r12
  820c7d:	48 8b 95 00 f2 ff ff 	mov    -0xe00(%rbp),%rdx
  820c84:	4c 89 8d f0 f8 ff ff 	mov    %r9,-0x710(%rbp)
  820c8b:	4c 8b 4e 50          	mov    0x50(%rsi),%r9
  820c8f:	48 89 8d f8 fb ff ff 	mov    %rcx,-0x408(%rbp)
  820c96:	4c 89 8d f0 fb ff ff 	mov    %r9,-0x410(%rbp)
  820c9d:	49 8b 0c 24          	mov    (%r12),%rcx
  820ca1:	4c 8b 0a             	mov    (%rdx),%r9
  820ca4:	4c 8b 05 55 cb 31 00 	mov    0x31cb55(%rip),%r8        # b3d800 <mod_scalars_mp_nsperiodic_>
  820cab:	48 89 bd 58 f5 ff ff 	mov    %rdi,-0xaa8(%rbp)
  820cb2:	48 8b 7e 68          	mov    0x68(%rsi),%rdi
  820cb6:	48 89 8d 20 f5 ff ff 	mov    %rcx,-0xae0(%rbp)
  820cbd:	4c 89 8d 18 f5 ff ff 	mov    %r9,-0xae8(%rbp)
  820cc4:	48 8b 72 50          	mov    0x50(%rdx),%rsi
  820cc8:	48 8b 4a 38          	mov    0x38(%rdx),%rcx
  820ccc:	4c 8b 0d 2d 2b 32 00 	mov    0x322b2d(%rip),%r9        # b43800 <mod_sources_mp_sources_+0x40>
  820cd3:	48 8b 15 5e d8 31 00 	mov    0x31d85e(%rip),%rdx        # b3e538 <mod_scalars_mp_ltracersrc_+0x58>
  820cda:	4c 89 85 d0 f5 ff ff 	mov    %r8,-0xa30(%rbp)
  820ce1:	4c 8b 05 d0 d4 31 00 	mov    0x31d4d0(%rip),%r8        # b3e1b8 <mod_scalars_mp_compositegrid_+0x58>
  820ce8:	4c 89 8d 00 f5 ff ff 	mov    %r9,-0xb00(%rbp)
  820cef:	48 89 95 f0 f4 ff ff 	mov    %rdx,-0xb10(%rbp)
  820cf6:	48 89 bd 38 f5 ff ff 	mov    %rdi,-0xac8(%rbp)
  820cfd:	4c 8b 8d 08 f2 ff ff 	mov    -0xdf8(%rbp),%r9
  820d04:	48 8b 95 10 f2 ff ff 	mov    -0xdf0(%rbp),%rdx
  820d0b:	49 8b 7c 24 38       	mov    0x38(%r12),%rdi
  820d10:	4c 89 85 b0 f5 ff ff 	mov    %r8,-0xa50(%rbp)
  820d17:	4c 8b 05 62 09 32 00 	mov    0x320962(%rip),%r8        # b41680 <mod_scalars_mp_luvsrc_+0x40>
  820d1e:	48 89 bd 00 fd ff ff 	mov    %rdi,-0x300(%rbp)
  820d25:	48 89 b5 e0 fb ff ff 	mov    %rsi,-0x420(%rbp)
  820d2c:	48 8b 3d 8d 2a 32 00 	mov    0x322a8d(%rip),%rdi        # b437c0 <mod_sources_mp_sources_>
  820d33:	48 8b 35 a6 d7 31 00 	mov    0x31d7a6(%rip),%rsi        # b3e4e0 <mod_scalars_mp_ltracersrc_>
  820d3a:	4c 89 85 88 f5 ff ff 	mov    %r8,-0xa78(%rbp)
  820d41:	4c 8b 05 38 a6 31 00 	mov    0x31a638(%rip),%r8        # b3b380 <mod_scalars_mp_dt_+0x40>
  820d48:	48 89 8d f8 fc ff ff 	mov    %rcx,-0x308(%rbp)
  820d4f:	48 89 bd f8 f5 ff ff 	mov    %rdi,-0xa08(%rbp)
  820d56:	48 89 b5 f8 f4 ff ff 	mov    %rsi,-0xb08(%rbp)
  820d5d:	48 8b 0d cc d7 31 00 	mov    0x31d7cc(%rip),%rcx        # b3e530 <mod_scalars_mp_ltracersrc_+0x50>
  820d64:	49 8b 79 50          	mov    0x50(%r9),%rdi
  820d68:	48 8b 72 68          	mov    0x68(%rdx),%rsi
  820d6c:	4c 89 85 60 f5 ff ff 	mov    %r8,-0xaa0(%rbp)
  820d73:	4d 8b 44 24 50       	mov    0x50(%r12),%r8
  820d78:	48 89 8d e8 f4 ff ff 	mov    %rcx,-0xb18(%rbp)
  820d7f:	48 89 bd 10 fc ff ff 	mov    %rdi,-0x3f0(%rbp)
  820d86:	48 89 b5 c8 f4 ff ff 	mov    %rsi,-0xb38(%rbp)
  820d8d:	48 8b 3a             	mov    (%rdx),%rdi
  820d90:	48 8b 4a 38          	mov    0x38(%rdx),%rcx
  820d94:	48 8b 72 50          	mov    0x50(%rdx),%rsi
  820d98:	4c 89 85 e8 fb ff ff 	mov    %r8,-0x418(%rbp)
  820d9f:	48 8b 15 5a d1 31 00 	mov    0x31d15a(%rip),%rdx        # b3df00 <mod_param_mp_domain_+0x40>
  820da6:	4c 8b 05 73 2a 32 00 	mov    0x322a73(%rip),%r8        # b43820 <mod_sources_mp_nsrc_>
  820dad:	48 89 95 c0 f4 ff ff 	mov    %rdx,-0xb40(%rbp)
  820db4:	4c 89 85 10 f5 ff ff 	mov    %r8,-0xaf0(%rbp)
  820dbb:	48 8b 95 f8 f1 ff ff 	mov    -0xe08(%rbp),%rdx
  820dc2:	4d 8b 01             	mov    (%r9),%r8
  820dc5:	4c 89 85 e0 f4 ff ff 	mov    %r8,-0xb20(%rbp)
  820dcc:	4c 8b 05 ed d0 31 00 	mov    0x31d0ed(%rip),%r8        # b3dec0 <mod_param_mp_domain_>
  820dd3:	4c 89 85 38 f7 ff ff 	mov    %r8,-0x8c8(%rbp)
  820dda:	4c 8b 42 50          	mov    0x50(%rdx),%r8
  820dde:	4c 89 85 d8 fb ff ff 	mov    %r8,-0x428(%rbp)
  820de5:	48 89 8d 08 fc ff ff 	mov    %rcx,-0x3f8(%rbp)
  820dec:	4c 8b 85 e8 f1 ff ff 	mov    -0xe18(%rbp),%r8
  820df3:	48 8b 0a             	mov    (%rdx),%rcx
  820df6:	4d 63 ff             	movslq %r15d,%r15
  820df9:	48 89 8d b8 f4 ff ff 	mov    %rcx,-0xb48(%rbp)
  820e00:	4c 8b 25 59 2a 32 00 	mov    0x322a59(%rip),%r12        # b43860 <mod_sources_mp_nsrc_+0x40>
  820e07:	48 8b 4a 38          	mov    0x38(%rdx),%rcx
  820e0b:	4c 2b bd e8 f5 ff ff 	sub    -0xa18(%rbp),%r15
  820e12:	4c 89 95 30 f5 ff ff 	mov    %r10,-0xad0(%rbp)
  820e19:	49 ff c7             	inc    %r15
  820e1c:	4c 89 a5 08 f5 ff ff 	mov    %r12,-0xaf8(%rbp)
  820e23:	48 89 8d d0 fb ff ff 	mov    %rcx,-0x430(%rbp)
  820e2a:	4c 8b 15 4f b2 31 00 	mov    0x31b24f(%rip),%r10        # b3c080 <mod_param_mp_nt_+0x40>
  820e31:	4d 8b 61 68          	mov    0x68(%r9),%r12
  820e35:	49 8b 10             	mov    (%r8),%rdx
  820e38:	49 8b 48 50          	mov    0x50(%r8),%rcx
  820e3c:	4d 8b 40 38          	mov    0x38(%r8),%r8
  820e40:	49 c1 e2 02          	shl    $0x2,%r10
  820e44:	4d 8b 49 38          	mov    0x38(%r9),%r9
  820e48:	49 f7 da             	neg    %r10
  820e4b:	48 89 95 b0 f4 ff ff 	mov    %rdx,-0xb50(%rbp)
  820e52:	48 89 bd d0 f4 ff ff 	mov    %rdi,-0xb30(%rbp)
  820e59:	4c 89 85 c0 fb ff ff 	mov    %r8,-0x440(%rbp)
  820e60:	45 33 c0             	xor    %r8d,%r8d
  820e63:	4c 89 bd 28 f7 ff ff 	mov    %r15,-0x8d8(%rbp)
  820e6a:	48 89 8d c8 fb ff ff 	mov    %rcx,-0x438(%rbp)
  820e71:	48 89 85 30 f7 ff ff 	mov    %rax,-0x8d0(%rbp)
  820e78:	48 89 b5 18 fc ff ff 	mov    %rsi,-0x3e8(%rbp)
  820e7f:	4c 89 8d 00 fc ff ff 	mov    %r9,-0x400(%rbp)
  820e86:	4c 89 a5 d8 f4 ff ff 	mov    %r12,-0xb28(%rbp)
  820e8d:	4c 89 b5 f0 f5 ff ff 	mov    %r14,-0xa10(%rbp)
  820e94:	8b bd 40 f8 ff ff    	mov    -0x7c0(%rbp),%edi
  820e9a:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  820ea0:	33 f6                	xor    %esi,%esi
  820ea2:	4b 63 0c 1a          	movslq (%r10,%r11,1),%rcx
  820ea6:	33 c0                	xor    %eax,%eax
  820ea8:	48 85 c9             	test   %rcx,%rcx
  820eab:	0f 8e bd 3a 00 00    	jle    82496e <pre_step3d_mod_mp_pre_step3d_tile_+0x103be>
  820eb1:	89 bd 40 f8 ff ff    	mov    %edi,-0x7c0(%rbp)
  820eb7:	48 63 ff             	movslq %edi,%rdi
  820eba:	4c 8b 8d f0 fb ff ff 	mov    -0x410(%rbp),%r9
  820ec1:	4c 0f af cf          	imul   %rdi,%r9
  820ec5:	4c 89 8d f8 f1 ff ff 	mov    %r9,-0xe08(%rbp)
  820ecc:	48 89 b5 38 f8 ff ff 	mov    %rsi,-0x7c8(%rbp)
  820ed3:	4c 8b 8d 18 fc ff ff 	mov    -0x3e8(%rbp),%r9
  820eda:	48 8b b5 e0 fb ff ff 	mov    -0x420(%rbp),%rsi
  820ee1:	4c 0f af cf          	imul   %rdi,%r9
  820ee5:	48 0f af f7          	imul   %rdi,%rsi
  820ee9:	48 89 85 20 fc ff ff 	mov    %rax,-0x3e0(%rbp)
  820ef0:	48 8b 85 10 fc ff ff 	mov    -0x3f0(%rbp),%rax
  820ef7:	48 0f af c7          	imul   %rdi,%rax
  820efb:	4c 8b ad e8 fb ff ff 	mov    -0x418(%rbp),%r13
  820f02:	4c 0f af ef          	imul   %rdi,%r13
  820f06:	4c 8b b5 c8 fb ff ff 	mov    -0x438(%rbp),%r14
  820f0d:	89 95 68 f8 ff ff    	mov    %edx,-0x798(%rbp)
  820f13:	48 63 d2             	movslq %edx,%rdx
  820f16:	4c 0f af f7          	imul   %rdi,%r14
  820f1a:	49 89 d4             	mov    %rdx,%r12
  820f1d:	4c 2b e7             	sub    %rdi,%r12
  820f20:	4c 89 8d 20 f9 ff ff 	mov    %r9,-0x6e0(%rbp)
  820f27:	48 89 b5 08 f2 ff ff 	mov    %rsi,-0xdf8(%rbp)
  820f2e:	48 8b b5 e8 f8 ff ff 	mov    -0x718(%rbp),%rsi
  820f35:	48 89 85 10 f2 ff ff 	mov    %rax,-0xdf0(%rbp)
  820f3c:	4d 8d 7c 24 03       	lea    0x3(%r12),%r15
  820f41:	4c 89 bd 80 f8 ff ff 	mov    %r15,-0x780(%rbp)
  820f48:	4d 8d 4f ff          	lea    -0x1(%r15),%r9
  820f4c:	49 ff c4             	inc    %r12
  820f4f:	4c 89 a5 60 fc ff ff 	mov    %r12,-0x3a0(%rbp)
  820f56:	4c 8b bd b0 fb ff ff 	mov    -0x450(%rbp),%r15
  820f5d:	4c 8b a5 90 f1 ff ff 	mov    -0xe70(%rbp),%r12
  820f64:	4c 2b e6             	sub    %rsi,%r12
  820f67:	48 8b 85 f8 fb ff ff 	mov    -0x408(%rbp),%rax
  820f6e:	4c 89 ad 00 f2 ff ff 	mov    %r13,-0xe00(%rbp)
  820f75:	49 89 c5             	mov    %rax,%r13
  820f78:	4c 89 8d 68 fc ff ff 	mov    %r9,-0x398(%rbp)
  820f7f:	4c 8d 0c fd 00 00 00 	lea    0x0(,%rdi,8),%r9
  820f86:	00 
  820f87:	4c 0f af ef          	imul   %rdi,%r13
  820f8b:	4c 89 b5 18 f2 ff ff 	mov    %r14,-0xde8(%rbp)
  820f92:	4d 8d 71 f8          	lea    -0x8(%r9),%r14
  820f96:	4c 89 9d 68 f6 ff ff 	mov    %r11,-0x998(%rbp)
  820f9d:	4a 8d 3c fd 00 00 00 	lea    0x0(,%r15,8),%rdi
  820fa4:	00 
  820fa5:	4d 89 e7             	mov    %r12,%r15
  820fa8:	49 c1 e7 04          	shl    $0x4,%r15
  820fac:	4c 89 bd a8 f6 ff ff 	mov    %r15,-0x958(%rbp)
  820fb3:	4d 8d 7c 24 01       	lea    0x1(%r12),%r15
  820fb8:	4d 0f af f7          	imul   %r15,%r14
  820fbc:	4d 0f af cf          	imul   %r15,%r9
  820fc0:	4c 89 b5 c0 f6 ff ff 	mov    %r14,-0x940(%rbp)
  820fc7:	4c 8d 1c d5 10 00 00 	lea    0x10(,%rdx,8),%r11
  820fce:	00 
  820fcf:	4d 8d 33             	lea    (%r11),%r14
  820fd2:	4d 0f af f7          	imul   %r15,%r14
  820fd6:	4c 89 95 60 f6 ff ff 	mov    %r10,-0x9a0(%rbp)
  820fdd:	49 8d 53 f8          	lea    -0x8(%r11),%rdx
  820fe1:	4c 8b 9d b8 fb ff ff 	mov    -0x448(%rbp),%r11
  820fe8:	4c 8b 95 b0 fb ff ff 	mov    -0x450(%rbp),%r10
  820fef:	45 2b da             	sub    %r10d,%r11d
  820ff2:	4d 63 db             	movslq %r11d,%r11
  820ff5:	4e 8d 14 e5 00 00 00 	lea    0x0(,%r12,8),%r10
  820ffc:	00 
  820ffd:	49 ff c3             	inc    %r11
  821000:	4c 89 9d f8 fa ff ff 	mov    %r11,-0x508(%rbp)
  821007:	4d 89 d3             	mov    %r10,%r11
  82100a:	49 f7 db             	neg    %r11
  82100d:	4c 89 bd 20 f2 ff ff 	mov    %r15,-0xde0(%rbp)
  821014:	49 0f af d7          	imul   %r15,%rdx
  821018:	4c 89 b5 d0 f6 ff ff 	mov    %r14,-0x930(%rbp)
  82101f:	4f 8d 3c e1          	lea    (%r9,%r12,8),%r15
  821023:	48 89 8d 00 f8 ff ff 	mov    %rcx,-0x800(%rbp)
  82102a:	4d 8d 62 08          	lea    0x8(%r10),%r12
  82102e:	48 89 bd 70 f7 ff ff 	mov    %rdi,-0x890(%rbp)
  821035:	4f 8d 34 0b          	lea    (%r11,%r9,1),%r14
  821039:	4c 89 b5 88 f6 ff ff 	mov    %r14,-0x978(%rbp)
  821040:	48 8d 0c f5 00 00 00 	lea    0x0(,%rsi,8),%rcx
  821047:	00 
  821048:	4c 8b b5 98 f1 ff ff 	mov    -0xe68(%rbp),%r14
  82104f:	48 2b f9             	sub    %rcx,%rdi
  821052:	4d 0f af f4          	imul   %r12,%r14
  821056:	48 8b b5 f8 f8 ff ff 	mov    -0x708(%rbp),%rsi
  82105d:	4d 2b de             	sub    %r14,%r11
  821060:	4c 89 9d e0 fc ff ff 	mov    %r11,-0x320(%rbp)
  821067:	49 89 f3             	mov    %rsi,%r11
  82106a:	4d 2b d6             	sub    %r14,%r10
  82106d:	4c 2b d9             	sub    %rcx,%r11
  821070:	4c 89 95 80 f9 ff ff 	mov    %r10,-0x680(%rbp)
  821077:	4d 2b de             	sub    %r14,%r11
  82107a:	4c 8b 95 c0 f5 ff ff 	mov    -0xa40(%rbp),%r10
  821081:	48 89 8d d8 fa ff ff 	mov    %rcx,-0x528(%rbp)
  821088:	4c 2b d1             	sub    %rcx,%r10
  82108b:	4c 89 c9             	mov    %r9,%rcx
  82108e:	4d 2b d6             	sub    %r14,%r10
  821091:	49 2b ce             	sub    %r14,%rcx
  821094:	48 89 8d 58 f9 ff ff 	mov    %rcx,-0x6a8(%rbp)
  82109b:	4c 89 a5 78 fc ff ff 	mov    %r12,-0x388(%rbp)
  8210a2:	4c 89 8d c0 f9 ff ff 	mov    %r9,-0x640(%rbp)
  8210a9:	4c 89 b5 b8 f9 ff ff 	mov    %r14,-0x648(%rbp)
  8210b0:	4c 8d 24 0f          	lea    (%rdi,%rcx,1),%r12
  8210b4:	48 8b 8d 48 f5 ff ff 	mov    -0xab8(%rbp),%rcx
  8210bb:	49 03 f9             	add    %r9,%rdi
  8210be:	49 89 c9             	mov    %rcx,%r9
  8210c1:	49 2b fe             	sub    %r14,%rdi
  8210c4:	4c 8b b5 a8 f1 ff ff 	mov    -0xe58(%rbp),%r14
  8210cb:	48 03 fe             	add    %rsi,%rdi
  8210ce:	4c 0f af 8d e8 f5 ff 	imul   -0xa18(%rbp),%r9
  8210d5:	ff 
  8210d6:	4c 0f af f0          	imul   %rax,%r14
  8210da:	4c 89 95 58 f4 ff ff 	mov    %r10,-0xba8(%rbp)
  8210e1:	4c 03 e6             	add    %rsi,%r12
  8210e4:	4c 8b 95 50 f5 ff ff 	mov    -0xab0(%rbp),%r10
  8210eb:	4c 89 e8             	mov    %r13,%rax
  8210ee:	4c 89 9d 50 f4 ff ff 	mov    %r11,-0xbb0(%rbp)
  8210f5:	49 89 cb             	mov    %rcx,%r11
  8210f8:	48 89 bd e0 fa ff ff 	mov    %rdi,-0x520(%rbp)
  8210ff:	4d 2b d9             	sub    %r9,%r11
  821102:	4d 2b ce             	sub    %r14,%r9
  821105:	49 8d 3c 0a          	lea    (%r10,%rcx,1),%rdi
  821109:	48 89 bd 30 f2 ff ff 	mov    %rdi,-0xdd0(%rbp)
  821110:	49 2b f9             	sub    %r9,%rdi
  821113:	4c 89 b5 88 f7 ff ff 	mov    %r14,-0x878(%rbp)
  82111a:	4d 2b f5             	sub    %r13,%r14
  82111d:	4c 89 b5 40 f2 ff ff 	mov    %r14,-0xdc0(%rbp)
  821124:	48 f7 df             	neg    %rdi
  821127:	4c 8b b5 10 fd ff ff 	mov    -0x2f0(%rbp),%r14
  82112e:	48 89 95 c8 f6 ff ff 	mov    %rdx,-0x938(%rbp)
  821135:	48 8b 95 58 f5 ff ff 	mov    -0xaa8(%rbp),%rdx
  82113c:	48 03 fa             	add    %rdx,%rdi
  82113f:	4c 89 a5 b0 f9 ff ff 	mov    %r12,-0x650(%rbp)
  821146:	49 89 d4             	mov    %rdx,%r12
  821149:	4c 89 f2             	mov    %r14,%rdx
  82114c:	4c 89 bd 80 f6 ff ff 	mov    %r15,-0x980(%rbp)
  821153:	4c 8b bd a0 f1 ff ff 	mov    -0xe60(%rbp),%r15
  82115a:	48 0f af 95 b0 fb ff 	imul   -0x450(%rbp),%rdx
  821161:	ff 
  821162:	4d 0f af fe          	imul   %r14,%r15
  821166:	49 0f af c8          	imul   %r8,%rcx
  82116a:	4c 89 bd 48 f2 ff ff 	mov    %r15,-0xdb8(%rbp)
  821171:	49 2b c7             	sub    %r15,%rax
  821174:	4c 2b fa             	sub    %rdx,%r15
  821177:	4c 89 bd a0 f9 ff ff 	mov    %r15,-0x660(%rbp)
  82117e:	4d 89 d7             	mov    %r10,%r15
  821181:	4c 0f af bd 30 f5 ff 	imul   -0xad0(%rbp),%r15
  821188:	ff 
  821189:	48 8b b5 f0 f8 ff ff 	mov    -0x710(%rbp),%rsi
  821190:	4c 2b e6             	sub    %rsi,%r12
  821193:	49 2b f2             	sub    %r10,%rsi
  821196:	49 03 d7             	add    %r15,%rdx
  821199:	4c 89 85 70 f6 ff ff 	mov    %r8,-0x990(%rbp)
  8211a0:	48 03 d0             	add    %rax,%rdx
  8211a3:	4c 8b 85 40 f2 ff ff 	mov    -0xdc0(%rbp),%r8
  8211aa:	48 03 d7             	add    %rdi,%rdx
  8211ad:	4c 89 ad 98 f8 ff ff 	mov    %r13,-0x768(%rbp)
  8211b4:	4d 03 ef             	add    %r15,%r13
  8211b7:	4c 89 a5 28 f2 ff ff 	mov    %r12,-0xdd8(%rbp)
  8211be:	4d 03 e9             	add    %r9,%r13
  8211c1:	4c 89 8d 38 f2 ff ff 	mov    %r9,-0xdc8(%rbp)
  8211c8:	4d 8d 0c 34          	lea    (%r12,%rsi,1),%r9
  8211cc:	4c 8b a5 a0 f9 ff ff 	mov    -0x660(%rbp),%r12
  8211d3:	4f 8d 14 03          	lea    (%r11,%r8,1),%r10
  8211d7:	48 89 bd 30 f9 ff ff 	mov    %rdi,-0x6d0(%rbp)
  8211de:	4b 8d 3c 3e          	lea    (%r14,%r15,1),%rdi
  8211e2:	4c 89 ad 58 f2 ff ff 	mov    %r13,-0xda8(%rbp)
  8211e9:	4d 89 e5             	mov    %r12,%r13
  8211ec:	49 f7 da             	neg    %r10
  8211ef:	4c 2b ef             	sub    %rdi,%r13
  8211f2:	4d 03 d1             	add    %r9,%r10
  8211f5:	49 f7 dd             	neg    %r13
  8211f8:	4d 03 ea             	add    %r10,%r13
  8211fb:	48 03 d1             	add    %rcx,%rdx
  8211fe:	4c 03 e9             	add    %rcx,%r13
  821201:	48 f7 df             	neg    %rdi
  821204:	4c 89 ad a8 f9 ff ff 	mov    %r13,-0x658(%rbp)
  82120b:	4c 8b ad a8 f1 ff ff 	mov    -0xe58(%rbp),%r13
  821212:	4c 0f af ad c8 fb ff 	imul   -0x438(%rbp),%r13
  821219:	ff 
  82121a:	4c 89 9d b0 f7 ff ff 	mov    %r11,-0x850(%rbp)
  821221:	48 89 b5 60 f2 ff ff 	mov    %rsi,-0xda0(%rbp)
  821228:	49 2b f3             	sub    %r11,%rsi
  82122b:	4d 89 f3             	mov    %r14,%r11
  82122e:	49 f7 db             	neg    %r11
  821231:	48 89 85 50 f2 ff ff 	mov    %rax,-0xdb0(%rbp)
  821238:	4d 03 df             	add    %r15,%r11
  82123b:	4c 89 e0             	mov    %r12,%rax
  82123e:	49 2b c3             	sub    %r11,%rax
  821241:	49 f7 db             	neg    %r11
  821244:	48 f7 d8             	neg    %rax
  821247:	49 03 c2             	add    %r10,%rax
  82124a:	48 89 95 58 fc ff ff 	mov    %rdx,-0x3a8(%rbp)
  821251:	48 03 c1             	add    %rcx,%rax
  821254:	48 8b 95 18 f2 ff ff 	mov    -0xde8(%rbp),%rdx
  82125b:	48 89 85 50 fc ff ff 	mov    %rax,-0x3b0(%rbp)
  821262:	4c 89 8d 68 f2 ff ff 	mov    %r9,-0xd98(%rbp)
  821269:	48 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%rax
  821270:	4c 8b 8d b0 f4 ff ff 	mov    -0xb50(%rbp),%r9
  821277:	4d 2b cd             	sub    %r13,%r9
  82127a:	4c 2b ea             	sub    %rdx,%r13
  82127d:	4c 89 ad 78 f2 ff ff 	mov    %r13,-0xd88(%rbp)
  821284:	4c 8b 85 a0 f1 ff ff 	mov    -0xe60(%rbp),%r8
  82128b:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  821292:	4c 0f af c0          	imul   %rax,%r8
  821296:	4c 0f af e8          	imul   %rax,%r13
  82129a:	48 89 b5 70 f2 ff ff 	mov    %rsi,-0xd90(%rbp)
  8212a1:	49 8d 34 11          	lea    (%r9,%rdx,1),%rsi
  8212a5:	49 2b d0             	sub    %r8,%rdx
  8212a8:	4d 2b c5             	sub    %r13,%r8
  8212ab:	49 2b f0             	sub    %r8,%rsi
  8212ae:	4f 8d 04 77          	lea    (%r15,%r14,2),%r8
  8212b2:	4d 2b e0             	sub    %r8,%r12
  8212b5:	4c 03 ca             	add    %rdx,%r9
  8212b8:	49 f7 dc             	neg    %r12
  8212bb:	49 8d 54 45 00       	lea    0x0(%r13,%rax,2),%rdx
  8212c0:	4d 03 e2             	add    %r10,%r12
  8212c3:	4c 03 ca             	add    %rdx,%r9
  8212c6:	4c 03 e1             	add    %rcx,%r12
  8212c9:	4c 89 a5 a0 f9 ff ff 	mov    %r12,-0x660(%rbp)
  8212d0:	4c 8b a5 f0 f5 ff ff 	mov    -0xa10(%rbp),%r12
  8212d7:	4c 2b a5 b0 f5 ff ff 	sub    -0xa50(%rbp),%r12
  8212de:	4c 0f af a5 a8 f5 ff 	imul   -0xa58(%rbp),%r12
  8212e5:	ff 
  8212e6:	48 89 b5 48 fc ff ff 	mov    %rsi,-0x3b8(%rbp)
  8212ed:	48 8b b5 10 f8 ff ff 	mov    -0x7f0(%rbp),%rsi
  8212f4:	48 2b b5 08 f8 ff ff 	sub    -0x7f8(%rbp),%rsi
  8212fb:	48 ff c6             	inc    %rsi
  8212fe:	48 89 b5 40 fc ff ff 	mov    %rsi,-0x3c0(%rbp)
  821305:	48 63 b5 d0 fc ff ff 	movslq -0x330(%rbp),%rsi
  82130c:	4c 89 8d 98 f9 ff ff 	mov    %r9,-0x668(%rbp)
  821313:	4c 8b 8d a0 f5 ff ff 	mov    -0xa60(%rbp),%r9
  82131a:	4c 89 a5 e0 f8 ff ff 	mov    %r12,-0x720(%rbp)
  821321:	4c 8d 24 f5 00 00 00 	lea    0x0(,%rsi,8),%r12
  821328:	00 
  821329:	48 8b 95 d8 fa ff ff 	mov    -0x528(%rbp),%rdx
  821330:	4c 2b e2             	sub    %rdx,%r12
  821333:	48 8b 85 f8 f8 ff ff 	mov    -0x708(%rbp),%rax
  82133a:	4e 8d 2c 8d 00 00 00 	lea    0x0(,%r9,4),%r13
  821341:	00 
  821342:	4c 8b 8d 88 f6 ff ff 	mov    -0x978(%rbp),%r9
  821349:	49 f7 dd             	neg    %r13
  82134c:	4c 03 ad b8 f5 ff ff 	add    -0xa48(%rbp),%r13
  821353:	48 f7 da             	neg    %rdx
  821356:	4c 89 ad d8 f8 ff ff 	mov    %r13,-0x728(%rbp)
  82135d:	4c 89 bd 78 f7 ff ff 	mov    %r15,-0x888(%rbp)
  821364:	4f 8d 2c 0c          	lea    (%r12,%r9,1),%r13
  821368:	4c 8b 8d b8 f9 ff ff 	mov    -0x648(%rbp),%r9
  82136f:	4d 2b e9             	sub    %r9,%r13
  821372:	4c 03 e8             	add    %rax,%r13
  821375:	4c 89 ad a0 f6 ff ff 	mov    %r13,-0x960(%rbp)
  82137c:	4c 8b ad c0 f9 ff ff 	mov    -0x640(%rbp),%r13
  821383:	4c 89 95 a8 f7 ff ff 	mov    %r10,-0x858(%rbp)
  82138a:	48 89 8d 60 f7 ff ff 	mov    %rcx,-0x8a0(%rbp)
  821391:	4c 89 85 b8 f7 ff ff 	mov    %r8,-0x848(%rbp)
  821398:	4d 03 ec             	add    %r12,%r13
  82139b:	4c 03 a5 80 f6 ff ff 	add    -0x980(%rbp),%r12
  8213a2:	4d 2b e9             	sub    %r9,%r13
  8213a5:	4d 2b e1             	sub    %r9,%r12
  8213a8:	4c 03 e8             	add    %rax,%r13
  8213ab:	4c 03 e0             	add    %rax,%r12
  8213ae:	4c 89 a5 90 f6 ff ff 	mov    %r12,-0x970(%rbp)
  8213b5:	4c 63 a5 d8 fc ff ff 	movslq -0x328(%rbp),%r12
  8213bc:	4c 89 ad 98 f6 ff ff 	mov    %r13,-0x968(%rbp)
  8213c3:	49 2b f4             	sub    %r12,%rsi
  8213c6:	4c 8b ad d0 fb ff ff 	mov    -0x430(%rbp),%r13
  8213cd:	4d 0f af ec          	imul   %r12,%r13
  8213d1:	4d 0f af f4          	imul   %r12,%r14
  8213d5:	4c 89 ad 80 f2 ff ff 	mov    %r13,-0xd80(%rbp)
  8213dc:	4c 8b ad 00 fc ff ff 	mov    -0x400(%rbp),%r13
  8213e3:	4d 0f af ec          	imul   %r12,%r13
  8213e7:	4c 89 ad 88 f2 ff ff 	mov    %r13,-0xd78(%rbp)
  8213ee:	4c 8b ad 08 fc ff ff 	mov    -0x3f8(%rbp),%r13
  8213f5:	4d 0f af ec          	imul   %r12,%r13
  8213f9:	4c 89 ad f0 f1 ff ff 	mov    %r13,-0xe10(%rbp)
  821400:	4c 8b ad 48 f2 ff ff 	mov    -0xdb8(%rbp),%r13
  821407:	4d 2b ee             	sub    %r14,%r13
  82140a:	4d 03 dd             	add    %r13,%r11
  82140d:	49 03 fd             	add    %r13,%rdi
  821410:	49 f7 db             	neg    %r11
  821413:	48 f7 df             	neg    %rdi
  821416:	4d 03 da             	add    %r10,%r11
  821419:	49 03 fa             	add    %r10,%rdi
  82141c:	4c 89 b5 28 f9 ff ff 	mov    %r14,-0x6d8(%rbp)
  821423:	4c 03 d9             	add    %rcx,%r11
  821426:	4c 89 9d d8 f7 ff ff 	mov    %r11,-0x828(%rbp)
  82142d:	4f 8d 1c 37          	lea    (%r15,%r14,1),%r11
  821431:	4c 8b b5 50 f2 ff ff 	mov    -0xdb0(%rbp),%r14
  821438:	48 03 f9             	add    %rcx,%rdi
  82143b:	4c 89 ad 90 f2 ff ff 	mov    %r13,-0xd70(%rbp)
  821442:	4d 2b e8             	sub    %r8,%r13
  821445:	48 89 bd e8 f7 ff ff 	mov    %rdi,-0x818(%rbp)
  82144c:	48 8d 7e 02          	lea    0x2(%rsi),%rdi
  821450:	48 89 bd f0 fc ff ff 	mov    %rdi,-0x310(%rbp)
  821457:	4f 8d 3c 1e          	lea    (%r14,%r11,1),%r15
  82145b:	4c 03 bd 30 f9 ff ff 	add    -0x6d0(%rbp),%r15
  821462:	4d 2b d5             	sub    %r13,%r10
  821465:	4c 03 f9             	add    %rcx,%r15
  821468:	4c 03 d1             	add    %rcx,%r10
  82146b:	4c 89 bd 88 f9 ff ff 	mov    %r15,-0x678(%rbp)
  821472:	4a 8d 0c e5 00 00 00 	lea    0x0(,%r12,8),%rcx
  821479:	00 
  82147a:	4c 8b bd c0 f5 ff ff 	mov    -0xa40(%rbp),%r15
  821481:	48 03 d1             	add    %rcx,%rdx
  821484:	48 8b bd c0 f6 ff ff 	mov    -0x940(%rbp),%rdi
  82148b:	4c 8d 34 f5 08 00 00 	lea    0x8(,%rsi,8),%r14
  821492:	00 
  821493:	48 89 8d b0 f1 ff ff 	mov    %rcx,-0xe50(%rbp)
  82149a:	48 ff c6             	inc    %rsi
  82149d:	48 8b 8d c0 f9 ff ff 	mov    -0x640(%rbp),%rcx
  8214a4:	4c 89 95 e0 f7 ff ff 	mov    %r10,-0x820(%rbp)
  8214ab:	4d 8d 14 3f          	lea    (%r15,%rdi,1),%r10
  8214af:	4c 89 9d 98 f2 ff ff 	mov    %r11,-0xd68(%rbp)
  8214b6:	4c 2b d1             	sub    %rcx,%r10
  8214b9:	4c 8b 9d 80 f6 ff ff 	mov    -0x980(%rbp),%r11
  8214c0:	4d 8d 04 0f          	lea    (%r15,%rcx,1),%r8
  8214c4:	4c 03 da             	add    %rdx,%r11
  8214c7:	4d 2b d7             	sub    %r15,%r10
  8214ca:	4d 2b d9             	sub    %r9,%r11
  8214cd:	4c 2b c7             	sub    %rdi,%r8
  8214d0:	4c 89 a5 90 f9 ff ff 	mov    %r12,-0x670(%rbp)
  8214d7:	4c 03 d8             	add    %rax,%r11
  8214da:	4c 8b a5 88 f6 ff ff 	mov    -0x978(%rbp),%r12
  8214e1:	4d 3b d6             	cmp    %r14,%r10
  8214e4:	4c 89 ad c8 f7 ff ff 	mov    %r13,-0x838(%rbp)
  8214eb:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  8214f1:	4c 89 9d 80 f6 ff ff 	mov    %r11,-0x980(%rbp)
  8214f8:	45 89 eb             	mov    %r13d,%r11d
  8214fb:	41 0f 9f c3          	setg   %r11b
  8214ff:	4c 03 e2             	add    %rdx,%r12
  821502:	4d 2b e1             	sub    %r9,%r12
  821505:	4d 2b c7             	sub    %r15,%r8
  821508:	4c 03 e0             	add    %rax,%r12
  82150b:	4d 3b c6             	cmp    %r14,%r8
  82150e:	4c 89 a5 88 f6 ff ff 	mov    %r12,-0x978(%rbp)
  821515:	45 89 ec             	mov    %r13d,%r12d
  821518:	41 0f 9f c4          	setg   %r12b
  82151c:	45 0b dc             	or     %r12d,%r11d
  82151f:	44 89 9d e0 f6 ff ff 	mov    %r11d,-0x920(%rbp)
  821526:	4c 8b 9d d0 f6 ff ff 	mov    -0x930(%rbp),%r11
  82152d:	4c 8b 95 c8 f6 ff ff 	mov    -0x938(%rbp),%r10
  821534:	4c 89 b5 e8 f6 ff ff 	mov    %r14,-0x918(%rbp)
  82153b:	48 89 b5 20 fd ff ff 	mov    %rsi,-0x2e0(%rbp)
  821542:	4f 8d 04 1f          	lea    (%r15,%r11,1),%r8
  821546:	4d 2b c2             	sub    %r10,%r8
  821549:	4f 8d 24 17          	lea    (%r15,%r10,1),%r12
  82154d:	4d 2b c7             	sub    %r15,%r8
  821550:	4d 2b e3             	sub    %r11,%r12
  821553:	4d 3b c6             	cmp    %r14,%r8
  821556:	45 89 e8             	mov    %r13d,%r8d
  821559:	48 8b b5 58 f9 ff ff 	mov    -0x6a8(%rbp),%rsi
  821560:	41 0f 9f c0          	setg   %r8b
  821564:	4d 2b e7             	sub    %r15,%r12
  821567:	4d 3b e6             	cmp    %r14,%r12
  82156a:	4d 89 dc             	mov    %r11,%r12
  82156d:	4d 89 d6             	mov    %r10,%r14
  821570:	41 0f 9f c5          	setg   %r13b
  821574:	4d 2b e1             	sub    %r9,%r12
  821577:	4c 03 e2             	add    %rdx,%r12
  82157a:	4c 03 d2             	add    %rdx,%r10
  82157d:	4d 03 e7             	add    %r15,%r12
  821580:	4d 2b d1             	sub    %r9,%r10
  821583:	4c 89 a5 00 f7 ff ff 	mov    %r12,-0x900(%rbp)
  82158a:	49 89 fc             	mov    %rdi,%r12
  82158d:	4d 2b e1             	sub    %r9,%r12
  821590:	4d 03 d7             	add    %r15,%r10
  821593:	4c 03 e2             	add    %rdx,%r12
  821596:	48 03 f2             	add    %rdx,%rsi
  821599:	4c 89 95 c8 f6 ff ff 	mov    %r10,-0x938(%rbp)
  8215a0:	4c 8d 14 0a          	lea    (%rdx,%rcx,1),%r10
  8215a4:	4d 03 e7             	add    %r15,%r12
  8215a7:	48 03 fa             	add    %rdx,%rdi
  8215aa:	4c 89 a5 f0 f6 ff ff 	mov    %r12,-0x910(%rbp)
  8215b1:	45 0b c5             	or     %r13d,%r8d
  8215b4:	4c 8b a5 e0 fc ff ff 	mov    -0x320(%rbp),%r12
  8215bb:	49 2b f9             	sub    %r9,%rdi
  8215be:	4d 03 e2             	add    %r10,%r12
  8215c1:	49 03 ff             	add    %r15,%rdi
  8215c4:	4c 8b ad 00 f9 ff ff 	mov    -0x700(%rbp),%r13
  8215cb:	4c 03 da             	add    %rdx,%r11
  8215ce:	48 89 bd c0 f6 ff ff 	mov    %rdi,-0x940(%rbp)
  8215d5:	4d 2b f1             	sub    %r9,%r14
  8215d8:	48 8b bd 80 f9 ff ff 	mov    -0x680(%rbp),%rdi
  8215df:	4d 2b d9             	sub    %r9,%r11
  8215e2:	49 03 fa             	add    %r10,%rdi
  8215e5:	4d 2b d1             	sub    %r9,%r10
  8215e8:	4c 03 f2             	add    %rdx,%r14
  8215eb:	4b 8d 4c 25 00       	lea    0x0(%r13,%r12,1),%rcx
  8215f0:	4d 03 e7             	add    %r15,%r12
  8215f3:	4d 03 df             	add    %r15,%r11
  8215f6:	4c 89 a5 e0 fc ff ff 	mov    %r12,-0x320(%rbp)
  8215fd:	4d 8d 24 37          	lea    (%r15,%rsi,1),%r12
  821601:	4c 89 a5 60 f9 ff ff 	mov    %r12,-0x6a0(%rbp)
  821608:	4d 03 f7             	add    %r15,%r14
  82160b:	4c 8b a5 08 f8 ff ff 	mov    -0x7f8(%rbp),%r12
  821612:	49 03 ff             	add    %r15,%rdi
  821615:	4c 89 9d d0 f6 ff ff 	mov    %r11,-0x930(%rbp)
  82161c:	4f 8d 5c 15 00       	lea    0x0(%r13,%r10,1),%r11
  821621:	4c 89 b5 f8 f6 ff ff 	mov    %r14,-0x908(%rbp)
  821628:	4f 8d 34 17          	lea    (%r15,%r10,1),%r14
  82162c:	4c 03 d0             	add    %rax,%r10
  82162f:	48 03 c6             	add    %rsi,%rax
  821632:	49 03 f5             	add    %r13,%rsi
  821635:	48 89 b5 58 f9 ff ff 	mov    %rsi,-0x6a8(%rbp)
  82163c:	4a 8d 34 e5 00 00 00 	lea    0x0(,%r12,8),%rsi
  821643:	00 
  821644:	4c 89 b5 08 f9 ff ff 	mov    %r14,-0x6f8(%rbp)
  82164b:	4c 8b b5 20 f2 ff ff 	mov    -0xde0(%rbp),%r14
  821652:	4c 0f af f6          	imul   %rsi,%r14
  821656:	4c 89 9d 78 f9 ff ff 	mov    %r11,-0x688(%rbp)
  82165d:	4d 89 f3             	mov    %r14,%r11
  821660:	4d 2b d9             	sub    %r9,%r11
  821663:	4c 03 da             	add    %rdx,%r11
  821666:	49 03 d6             	add    %r14,%rdx
  821669:	49 2b d1             	sub    %r9,%rdx
  82166c:	4d 03 df             	add    %r15,%r11
  82166f:	4c 8b 8d 20 fd ff ff 	mov    -0x2e0(%rbp),%r9
  821676:	49 03 d7             	add    %r15,%rdx
  821679:	44 89 8d 38 fc ff ff 	mov    %r9d,-0x3c8(%rbp)
  821680:	45 89 cf             	mov    %r9d,%r15d
  821683:	48 89 bd 80 f9 ff ff 	mov    %rdi,-0x680(%rbp)
  82168a:	41 83 e7 fe          	and    $0xfffffffe,%r15d
  82168e:	41 83 e1 fc          	and    $0xfffffffc,%r9d
  821692:	4d 63 c9             	movslq %r9d,%r9
  821695:	4c 89 8d 18 fd ff ff 	mov    %r9,-0x2e8(%rbp)
  82169c:	4c 8b 8d f8 fb ff ff 	mov    -0x408(%rbp),%r9
  8216a3:	4d 89 cd             	mov    %r9,%r13
  8216a6:	4d 0f af ec          	imul   %r12,%r13
  8216aa:	48 8b bd 88 f7 ff ff 	mov    -0x878(%rbp),%rdi
  8216b1:	4d 89 ee             	mov    %r13,%r14
  8216b4:	49 2b fd             	sub    %r13,%rdi
  8216b7:	49 f7 d9             	neg    %r9
  8216ba:	48 89 8d e8 fc ff ff 	mov    %rcx,-0x318(%rbp)
  8216c1:	48 8b 8d b0 f7 ff ff 	mov    -0x850(%rbp),%rcx
  8216c8:	48 03 cf             	add    %rdi,%rcx
  8216cb:	48 f7 d9             	neg    %rcx
  8216ce:	48 89 95 d8 fa ff ff 	mov    %rdx,-0x528(%rbp)
  8216d5:	48 8d b5 c8 f7 ff ff 	lea    -0x838(%rbp),%rsi
  8216dc:	48 8b 16             	mov    (%rsi),%rdx
  8216df:	48 03 8d 68 f2 ff ff 	add    -0xd98(%rbp),%rcx
  8216e6:	48 f7 da             	neg    %rdx
  8216e9:	4c 89 95 70 f9 ff ff 	mov    %r10,-0x690(%rbp)
  8216f0:	48 03 d1             	add    %rcx,%rdx
  8216f3:	4c 8b 95 48 f2 ff ff 	mov    -0xdb8(%rbp),%r10
  8216fa:	4d 2b f2             	sub    %r10,%r14
  8216fd:	44 89 85 d8 f6 ff ff 	mov    %r8d,-0x928(%rbp)
  821704:	49 f7 da             	neg    %r10
  821707:	4d 63 ff             	movslq %r15d,%r15
  82170a:	4d 03 d1             	add    %r9,%r10
  82170d:	4c 8b 85 98 f2 ff ff 	mov    -0xd68(%rbp),%r8
  821714:	4d 03 f0             	add    %r8,%r14
  821717:	4c 89 bd 30 fd ff ff 	mov    %r15,-0x2d0(%rbp)
  82171e:	4d 03 c2             	add    %r10,%r8
  821721:	4c 8b bd 60 f7 ff ff 	mov    -0x8a0(%rbp),%r15
  821728:	49 03 d7             	add    %r15,%rdx
  82172b:	48 89 16             	mov    %rdx,(%rsi)
  82172e:	49 03 c8             	add    %r8,%rcx
  821731:	48 8b 95 30 f9 ff ff 	mov    -0x6d0(%rbp),%rdx
  821738:	4c 03 f2             	add    %rdx,%r14
  82173b:	4c 8b 95 78 f7 ff ff 	mov    -0x888(%rbp),%r10
  821742:	4d 03 f7             	add    %r15,%r14
  821745:	4c 89 b5 d0 f7 ff ff 	mov    %r14,-0x830(%rbp)
  82174c:	4f 8d 34 29          	lea    (%r9,%r13,1),%r14
  821750:	4d 03 ea             	add    %r10,%r13
  821753:	49 03 cf             	add    %r15,%rcx
  821756:	4c 03 ad 38 f2 ff ff 	add    -0xdc8(%rbp),%r13
  82175d:	48 8b b5 90 f2 ff ff 	mov    -0xd70(%rbp),%rsi
  821764:	4c 2b f6             	sub    %rsi,%r14
  821767:	4c 89 ad 68 f7 ff ff 	mov    %r13,-0x898(%rbp)
  82176e:	4c 89 9d 50 f9 ff ff 	mov    %r11,-0x6b0(%rbp)
  821775:	4c 8b ad 98 f8 ff ff 	mov    -0x768(%rbp),%r13
  82177c:	4c 8b 9d b8 f7 ff ff 	mov    -0x848(%rbp),%r11
  821783:	4d 03 f3             	add    %r11,%r14
  821786:	4c 03 f2             	add    %rdx,%r14
  821789:	4d 03 f7             	add    %r15,%r14
  82178c:	4c 89 b5 c0 f7 ff ff 	mov    %r14,-0x840(%rbp)
  821793:	4f 8d 34 29          	lea    (%r9,%r13,1),%r14
  821797:	4c 2b f6             	sub    %rsi,%r14
  82179a:	4d 03 ca             	add    %r10,%r9
  82179d:	4d 03 de             	add    %r14,%r11
  8217a0:	49 2b f9             	sub    %r9,%rdi
  8217a3:	49 f7 d9             	neg    %r9
  8217a6:	4c 03 da             	add    %rdx,%r11
  8217a9:	48 89 85 68 f9 ff ff 	mov    %rax,-0x698(%rbp)
  8217b0:	4d 03 df             	add    %r15,%r11
  8217b3:	48 8b 85 a8 f7 ff ff 	mov    -0x858(%rbp),%rax
  8217ba:	49 03 c0             	add    %r8,%rax
  8217bd:	4c 03 8d 40 f2 ff ff 	add    -0xdc0(%rbp),%r9
  8217c4:	49 03 c7             	add    %r15,%rax
  8217c7:	4c 8b bd a8 f1 ff ff 	mov    -0xe58(%rbp),%r15
  8217ce:	4c 89 8d 80 f7 ff ff 	mov    %r9,-0x880(%rbp)
  8217d5:	4d 89 f9             	mov    %r15,%r9
  8217d8:	48 89 bd 88 f7 ff ff 	mov    %rdi,-0x878(%rbp)
  8217df:	48 8b bd d8 fb ff ff 	mov    -0x428(%rbp),%rdi
  8217e6:	4c 0f af cf          	imul   %rdi,%r9
  8217ea:	4c 0f af e7          	imul   %rdi,%r12
  8217ee:	4c 8b 85 a0 f1 ff ff 	mov    -0xe60(%rbp),%r8
  8217f5:	4c 8b ad b8 f4 ff ff 	mov    -0xb48(%rbp),%r13
  8217fc:	4c 89 9d b8 f7 ff ff 	mov    %r11,-0x848(%rbp)
  821803:	4d 2b e9             	sub    %r9,%r13
  821806:	4d 2b cc             	sub    %r12,%r9
  821809:	4c 89 8d a0 f2 ff ff 	mov    %r9,-0xd60(%rbp)
  821810:	4d 89 c1             	mov    %r8,%r9
  821813:	4c 8b 9d d0 fb ff ff 	mov    -0x430(%rbp),%r11
  82181a:	4d 0f af cb          	imul   %r11,%r9
  82181e:	8b bd 68 f8 ff ff    	mov    -0x798(%rbp),%edi
  821824:	4f 8d 74 25 00       	lea    0x0(%r13,%r12,1),%r14
  821829:	4d 2b e1             	sub    %r9,%r12
  82182c:	4d 03 ec             	add    %r12,%r13
  82182f:	4c 8b a5 80 f2 ff ff 	mov    -0xd80(%rbp),%r12
  821836:	4d 2b cc             	sub    %r12,%r9
  821839:	48 89 8d b0 f7 ff ff 	mov    %rcx,-0x850(%rbp)
  821840:	8d 4f 01             	lea    0x1(%rdi),%ecx
  821843:	48 8b bd d8 f4 ff ff 	mov    -0xb28(%rbp),%rdi
  82184a:	4f 8d 14 5c          	lea    (%r12,%r11,2),%r10
  82184e:	4d 03 ea             	add    %r10,%r13
  821851:	4d 89 fb             	mov    %r15,%r11
  821854:	4c 89 ad 48 f9 ff ff 	mov    %r13,-0x6b8(%rbp)
  82185b:	4d 2b f1             	sub    %r9,%r14
  82185e:	4c 8b ad e8 f5 ff ff 	mov    -0xa18(%rbp),%r13
  821865:	4d 89 ec             	mov    %r13,%r12
  821868:	4c 0f af e7          	imul   %rdi,%r12
  82186c:	4c 0f af 9d 10 fc ff 	imul   -0x3f0(%rbp),%r11
  821873:	ff 
  821874:	8b b5 40 f8 ff ff    	mov    -0x7c0(%rbp),%esi
  82187a:	4d 89 e2             	mov    %r12,%r10
  82187d:	48 89 85 a8 f7 ff ff 	mov    %rax,-0x858(%rbp)
  821884:	4d 2b d3             	sub    %r11,%r10
  821887:	4c 8b 8d e0 f4 ff ff 	mov    -0xb20(%rbp),%r9
  82188e:	4c 2b cf             	sub    %rdi,%r9
  821891:	8d 46 ff             	lea    -0x1(%rsi),%eax
  821894:	89 85 48 f8 ff ff    	mov    %eax,-0x7b8(%rbp)
  82189a:	4c 89 c6             	mov    %r8,%rsi
  82189d:	48 8b 85 00 fc ff ff 	mov    -0x400(%rbp),%rax
  8218a4:	4d 03 e1             	add    %r9,%r12
  8218a7:	48 0f af f0          	imul   %rax,%rsi
  8218ab:	4c 89 8d a8 f2 ff ff 	mov    %r9,-0xd58(%rbp)
  8218b2:	89 8d 50 f8 ff ff    	mov    %ecx,-0x7b0(%rbp)
  8218b8:	4b 8d 0c 11          	lea    (%r9,%r10,1),%rcx
  8218bc:	4c 8b 8d 70 f6 ff ff 	mov    -0x990(%rbp),%r9
  8218c3:	49 0f af f9          	imul   %r9,%rdi
  8218c7:	4c 89 b5 30 fc ff ff 	mov    %r14,-0x3d0(%rbp)
  8218ce:	4c 8b b5 10 f2 ff ff 	mov    -0xdf0(%rbp),%r14
  8218d5:	4d 2b de             	sub    %r14,%r11
  8218d8:	4c 2b f6             	sub    %rsi,%r14
  8218db:	4c 89 95 b0 f2 ff ff 	mov    %r10,-0xd50(%rbp)
  8218e2:	49 89 ca             	mov    %rcx,%r10
  8218e5:	49 03 ce             	add    %r14,%rcx
  8218e8:	4c 2b d6             	sub    %rsi,%r10
  8218eb:	4c 8b b5 88 f2 ff ff 	mov    -0xd78(%rbp),%r14
  8218f2:	49 2b f6             	sub    %r14,%rsi
  8218f5:	4c 03 de             	add    %rsi,%r11
  8218f8:	49 03 ce             	add    %r14,%rcx
  8218fb:	4d 2b e3             	sub    %r11,%r12
  8218fe:	48 03 cf             	add    %rdi,%rcx
  821901:	48 89 8d 40 f9 ff ff 	mov    %rcx,-0x6c0(%rbp)
  821908:	4c 03 d7             	add    %rdi,%r10
  82190b:	48 8b 8d 90 f5 ff ff 	mov    -0xa70(%rbp),%rcx
  821912:	4c 8b 9d f0 f5 ff ff 	mov    -0xa10(%rbp),%r11
  821919:	4c 8b b5 80 f5 ff ff 	mov    -0xa80(%rbp),%r14
  821920:	4d 8d 24 44          	lea    (%r12,%rax,2),%r12
  821924:	48 8b 85 88 f5 ff ff 	mov    -0xa78(%rbp),%rax
  82192b:	4c 03 e7             	add    %rdi,%r12
  82192e:	4c 89 a5 38 f9 ff ff 	mov    %r12,-0x6c8(%rbp)
  821935:	4a 8d 34 99          	lea    (%rcx,%r11,4),%rsi
  821939:	48 8b 8d 78 f5 ff ff 	mov    -0xa88(%rbp),%rcx
  821940:	4c 89 95 60 f4 ff ff 	mov    %r10,-0xba0(%rbp)
  821947:	4c 8d 24 85 00 00 00 	lea    0x0(,%rax,4),%r12
  82194e:	00 
  82194f:	49 f7 dc             	neg    %r12
  821952:	4f 8d 14 9e          	lea    (%r14,%r11,4),%r10
  821956:	4c 89 a5 c8 f8 ff ff 	mov    %r12,-0x738(%rbp)
  82195d:	4c 8d 24 8d 00 00 00 	lea    0x0(,%rcx,4),%r12
  821964:	00 
  821965:	49 f7 dc             	neg    %r12
  821968:	4c 89 a5 b8 f8 ff ff 	mov    %r12,-0x748(%rbp)
  82196f:	4c 8b a5 68 f5 ff ff 	mov    -0xa98(%rbp),%r12
  821976:	48 89 b5 d0 f8 ff ff 	mov    %rsi,-0x730(%rbp)
  82197d:	48 8b b5 70 f5 ff ff 	mov    -0xa90(%rbp),%rsi
  821984:	4c 89 95 c0 f8 ff ff 	mov    %r10,-0x740(%rbp)
  82198b:	4e 8d 34 a5 00 00 00 	lea    0x0(,%r12,4),%r14
  821992:	00 
  821993:	4d 89 fc             	mov    %r15,%r12
  821996:	49 f7 de             	neg    %r14
  821999:	4c 89 b5 a8 f8 ff ff 	mov    %r14,-0x758(%rbp)
  8219a0:	4a 8d 04 9e          	lea    (%rsi,%r11,4),%rax
  8219a4:	4c 8b b5 38 f5 ff ff 	mov    -0xac8(%rbp),%r14
  8219ab:	4c 0f af a5 f0 fb ff 	imul   -0x410(%rbp),%r12
  8219b2:	ff 
  8219b3:	4d 0f af ee          	imul   %r14,%r13
  8219b7:	48 89 85 b0 f8 ff ff 	mov    %rax,-0x750(%rbp)
  8219be:	4c 89 c0             	mov    %r8,%rax
  8219c1:	48 f7 d8             	neg    %rax
  8219c4:	4d 2b ec             	sub    %r12,%r13
  8219c7:	4c 8b 95 40 f5 ff ff 	mov    -0xac0(%rbp),%r10
  8219ce:	49 c1 e0 03          	shl    $0x3,%r8
  8219d2:	4d 2b d6             	sub    %r14,%r10
  8219d5:	4d 0f af f1          	imul   %r9,%r14
  8219d9:	4c 63 8d d8 fc ff ff 	movslq -0x328(%rbp),%r9
  8219e0:	49 03 c1             	add    %r9,%rax
  8219e3:	4c 8b a5 08 fd ff ff 	mov    -0x2f8(%rbp),%r12
  8219ea:	4f 8d 0c 2a          	lea    (%r10,%r13,1),%r9
  8219ee:	4c 0f af e0          	imul   %rax,%r12
  8219f2:	4c 03 8d f8 f1 ff ff 	add    -0xe08(%rbp),%r9
  8219f9:	4d 03 ce             	add    %r14,%r9
  8219fc:	4d 03 e1             	add    %r9,%r12
  8219ff:	4c 89 a5 f8 f7 ff ff 	mov    %r12,-0x808(%rbp)
  821a06:	4c 8b a5 50 f5 ff ff 	mov    -0xab0(%rbp),%r12
  821a0d:	4c 89 95 b8 f2 ff ff 	mov    %r10,-0xd48(%rbp)
  821a14:	4d 89 e2             	mov    %r12,%r10
  821a17:	4c 0f af 95 28 f5 ff 	imul   -0xad8(%rbp),%r10
  821a1e:	ff 
  821a1f:	4c 89 b5 c0 f1 ff ff 	mov    %r14,-0xe40(%rbp)
  821a26:	4c 8b b5 28 f9 ff ff 	mov    -0x6d8(%rbp),%r14
  821a2d:	4c 2b 9d 60 f5 ff ff 	sub    -0xaa0(%rbp),%r11
  821a34:	4c 89 9d a0 f8 ff ff 	mov    %r11,-0x760(%rbp)
  821a3b:	48 8b 8d 38 f2 ff ff 	mov    -0xdc8(%rbp),%rcx
  821a42:	4f 8d 1c 16          	lea    (%r14,%r10,1),%r11
  821a46:	4c 03 95 98 f8 ff ff 	add    -0x768(%rbp),%r10
  821a4d:	4c 03 d1             	add    %rcx,%r10
  821a50:	4c 89 95 90 f8 ff ff 	mov    %r10,-0x770(%rbp)
  821a57:	4d 89 fa             	mov    %r15,%r10
  821a5a:	4c 0f af 95 e8 fb ff 	imul   -0x418(%rbp),%r10
  821a61:	ff 
  821a62:	4c 0f af bd e0 fb ff 	imul   -0x420(%rbp),%r15
  821a69:	ff 
  821a6a:	48 8b b5 50 f2 ff ff 	mov    -0xdb0(%rbp),%rsi
  821a71:	4c 03 de             	add    %rsi,%r11
  821a74:	49 03 d3             	add    %r11,%rdx
  821a77:	4c 8b 9d 00 fd ff ff 	mov    -0x300(%rbp),%r11
  821a7e:	4c 0f af d8          	imul   %rax,%r11
  821a82:	48 0f af 85 f8 fc ff 	imul   -0x308(%rbp),%rax
  821a89:	ff 
  821a8a:	4c 8b 8d 60 f7 ff ff 	mov    -0x8a0(%rbp),%r9
  821a91:	49 03 d1             	add    %r9,%rdx
  821a94:	48 89 95 30 f9 ff ff 	mov    %rdx,-0x6d0(%rbp)
  821a9b:	48 8b 95 20 f5 ff ff 	mov    -0xae0(%rbp),%rdx
  821aa2:	49 2b d2             	sub    %r10,%rdx
  821aa5:	4c 89 ad c0 f2 ff ff 	mov    %r13,-0xd40(%rbp)
  821aac:	4c 8b ad 00 f2 ff ff 	mov    -0xe00(%rbp),%r13
  821ab3:	49 03 d5             	add    %r13,%rdx
  821ab6:	4d 2b d5             	sub    %r13,%r10
  821ab9:	4c 03 da             	add    %rdx,%r11
  821abc:	4c 8b ad 18 f5 ff ff 	mov    -0xae8(%rbp),%r13
  821ac3:	4c 89 ea             	mov    %r13,%rdx
  821ac6:	49 2b d7             	sub    %r15,%rdx
  821ac9:	4c 89 9d a0 f7 ff ff 	mov    %r11,-0x860(%rbp)
  821ad0:	4c 8b 9d 08 f2 ff ff 	mov    -0xdf8(%rbp),%r11
  821ad7:	49 03 d3             	add    %r11,%rdx
  821ada:	48 03 c2             	add    %rdx,%rax
  821add:	4d 2b fb             	sub    %r11,%r15
  821ae0:	48 89 85 98 f7 ff ff 	mov    %rax,-0x868(%rbp)
  821ae7:	4b 8d 04 64          	lea    (%r12,%r12,2),%rax
  821aeb:	48 2b 85 48 f5 ff ff 	sub    -0xab8(%rbp),%rax
  821af2:	4c 8b a5 60 f2 ff ff 	mov    -0xda0(%rbp),%r12
  821af9:	4c 03 e0             	add    %rax,%r12
  821afc:	48 03 c1             	add    %rcx,%rax
  821aff:	4c 8b 9d 68 f2 ff ff 	mov    -0xd98(%rbp),%r11
  821b06:	4c 03 d8             	add    %rax,%r11
  821b09:	49 03 f3             	add    %r11,%rsi
  821b0c:	4c 8b 9d b0 f1 ff ff 	mov    -0xe50(%rbp),%r11
  821b13:	4c 03 f6             	add    %rsi,%r14
  821b16:	4d 2b d8             	sub    %r8,%r11
  821b19:	4d 03 f1             	add    %r9,%r14
  821b1c:	48 8b b5 a8 f2 ff ff 	mov    -0xd58(%rbp),%rsi
  821b23:	49 03 f3             	add    %r11,%rsi
  821b26:	4c 89 b5 28 f9 ff ff 	mov    %r14,-0x6d8(%rbp)
  821b2d:	4c 8b b5 70 f7 ff ff 	mov    -0x890(%rbp),%r14
  821b34:	4d 03 eb             	add    %r11,%r13
  821b37:	4d 2b f0             	sub    %r8,%r14
  821b3a:	4d 2b ef             	sub    %r15,%r13
  821b3d:	4c 8b 85 b0 f2 ff ff 	mov    -0xd50(%rbp),%r8
  821b44:	4c 03 c6             	add    %rsi,%r8
  821b47:	4c 03 85 10 f2 ff ff 	add    -0xdf0(%rbp),%r8
  821b4e:	49 03 f8             	add    %r8,%rdi
  821b51:	48 89 bd d8 f1 ff ff 	mov    %rdi,-0xe28(%rbp)
  821b58:	48 8b bd b8 f2 ff ff 	mov    -0xd48(%rbp),%rdi
  821b5f:	49 03 fb             	add    %r11,%rdi
  821b62:	48 8b 85 c0 f2 ff ff 	mov    -0xd40(%rbp),%rax
  821b69:	48 03 c7             	add    %rdi,%rax
  821b6c:	48 8b bd b8 f4 ff ff 	mov    -0xb48(%rbp),%rdi
  821b73:	48 03 85 f8 f1 ff ff 	add    -0xe08(%rbp),%rax
  821b7a:	48 01 85 c0 f1 ff ff 	add    %rax,-0xe40(%rbp)
  821b81:	48 8b 85 80 f7 ff ff 	mov    -0x880(%rbp),%rax
  821b88:	4a 8d 14 1f          	lea    (%rdi,%r11,1),%rdx
  821b8c:	48 8b bd 28 f2 ff ff 	mov    -0xdd8(%rbp),%rdi
  821b93:	48 f7 d8             	neg    %rax
  821b96:	48 2b 95 a0 f2 ff ff 	sub    -0xd60(%rbp),%rdx
  821b9d:	48 89 95 e0 f1 ff ff 	mov    %rdx,-0xe20(%rbp)
  821ba4:	48 8b 95 70 f2 ff ff 	mov    -0xd90(%rbp),%rdx
  821bab:	4e 8d 04 1f          	lea    (%rdi,%r11,1),%r8
  821baf:	4d 03 e0             	add    %r8,%r12
  821bb2:	4c 03 c2             	add    %rdx,%r8
  821bb5:	49 03 cc             	add    %r12,%rcx
  821bb8:	49 03 fe             	add    %r14,%rdi
  821bbb:	48 8d b5 98 f8 ff ff 	lea    -0x768(%rbp),%rsi
  821bc2:	4c 8b 26             	mov    (%rsi),%r12
  821bc5:	48 03 d7             	add    %rdi,%rdx
  821bc8:	4c 03 e1             	add    %rcx,%r12
  821bcb:	49 03 c0             	add    %r8,%rax
  821bce:	48 8d bd 88 f7 ff ff 	lea    -0x878(%rbp),%rdi
  821bd5:	48 8b 0f             	mov    (%rdi),%rcx
  821bd8:	4d 03 e1             	add    %r9,%r12
  821bdb:	48 f7 d9             	neg    %rcx
  821bde:	49 03 c1             	add    %r9,%rax
  821be1:	49 03 c8             	add    %r8,%rcx
  821be4:	49 03 c9             	add    %r9,%rcx
  821be7:	48 89 0f             	mov    %rcx,(%rdi)
  821bea:	48 8b 8d 40 f2 ff ff 	mov    -0xdc0(%rbp),%rcx
  821bf1:	4c 2b c1             	sub    %rcx,%r8
  821bf4:	48 2b d1             	sub    %rcx,%rdx
  821bf7:	4c 89 26             	mov    %r12,(%rsi)
  821bfa:	4c 8b a5 78 f7 ff ff 	mov    -0x888(%rbp),%r12
  821c01:	4d 03 c4             	add    %r12,%r8
  821c04:	4c 03 e2             	add    %rdx,%r12
  821c07:	4d 03 c1             	add    %r9,%r8
  821c0a:	48 8b 95 b0 f4 ff ff 	mov    -0xb50(%rbp),%rdx
  821c11:	4d 03 e1             	add    %r9,%r12
  821c14:	4c 8b bd 20 f5 ff ff 	mov    -0xae0(%rbp),%r15
  821c1b:	48 8b b5 58 f5 ff ff 	mov    -0xaa8(%rbp),%rsi
  821c22:	48 8b bd 30 f2 ff ff 	mov    -0xdd0(%rbp),%rdi
  821c29:	4a 8d 0c 32          	lea    (%rdx,%r14,1),%rcx
  821c2d:	4c 03 f6             	add    %rsi,%r14
  821c30:	48 89 85 80 f7 ff ff 	mov    %rax,-0x880(%rbp)
  821c37:	4b 8d 04 1f          	lea    (%r15,%r11,1),%rax
  821c3b:	4c 2b f7             	sub    %rdi,%r14
  821c3e:	49 2b c2             	sub    %r10,%rax
  821c41:	4c 8b 95 58 f2 ff ff 	mov    -0xda8(%rbp),%r10
  821c48:	4d 03 f2             	add    %r10,%r14
  821c4b:	4d 03 f1             	add    %r9,%r14
  821c4e:	4c 89 b5 70 f7 ff ff 	mov    %r14,-0x890(%rbp)
  821c55:	4e 8d 34 1e          	lea    (%rsi,%r11,1),%r14
  821c59:	4c 2b f7             	sub    %rdi,%r14
  821c5c:	4c 89 9d b0 f1 ff ff 	mov    %r11,-0xe50(%rbp)
  821c63:	4d 03 d6             	add    %r14,%r10
  821c66:	4c 89 85 90 f7 ff ff 	mov    %r8,-0x870(%rbp)
  821c6d:	48 8d bd 90 f8 ff ff 	lea    -0x770(%rbp),%rdi
  821c74:	4c 8b 1f             	mov    (%rdi),%r11
  821c77:	48 8d b5 68 f7 ff ff 	lea    -0x898(%rbp),%rsi
  821c7e:	4c 8b 06             	mov    (%rsi),%r8
  821c81:	4d 03 de             	add    %r14,%r11
  821c84:	4d 03 c6             	add    %r14,%r8
  821c87:	4d 03 d9             	add    %r9,%r11
  821c8a:	48 2b 8d 78 f2 ff ff 	sub    -0xd88(%rbp),%rcx
  821c91:	4d 03 c1             	add    %r9,%r8
  821c94:	48 89 85 c8 f1 ff ff 	mov    %rax,-0xe38(%rbp)
  821c9b:	4d 03 ca             	add    %r10,%r9
  821c9e:	48 89 8d b8 f1 ff ff 	mov    %rcx,-0xe48(%rbp)
  821ca5:	4c 89 1f             	mov    %r11,(%rdi)
  821ca8:	4c 89 06             	mov    %r8,(%rsi)
  821cab:	c5 79 10 05 ed 4c 0a 	vmovupd 0xa4ced(%rip),%xmm8        # 8c69a0 <__STRLITPACK_19.34+0x10>
  821cb2:	00 
  821cb3:	c5 f9 10 3d 25 52 0a 	vmovupd 0xa5225(%rip),%xmm7        # 8c6ee0 <__STRLITPACK_54.50+0xc0>
  821cba:	00 
  821cbb:	c5 fb 10 2d 55 55 0a 	vmovsd 0xa5555(%rip),%xmm5        # 8c7218 <__STRLITPACK_199.115+0x88>
  821cc2:	00 
  821cc3:	c5 fb 10 35 75 5d 0a 	vmovsd 0xa5d75(%rip),%xmm6        # 8c7a40 <__STRLITPACK_199.115+0x8b0>
  821cca:	00 
  821ccb:	c5 7b 10 15 75 5d 0a 	vmovsd 0xa5d75(%rip),%xmm10        # 8c7a48 <__STRLITPACK_199.115+0x8b8>
  821cd2:	00 
  821cd3:	c5 fb 10 0d 75 5d 0a 	vmovsd 0xa5d75(%rip),%xmm1        # 8c7a50 <__STRLITPACK_199.115+0x8c0>
  821cda:	00 
  821cdb:	c5 fb 10 15 75 5d 0a 	vmovsd 0xa5d75(%rip),%xmm2        # 8c7a58 <__STRLITPACK_199.115+0x8c8>
  821ce2:	00 
  821ce3:	4c 89 ad d0 f1 ff ff 	mov    %r13,-0xe30(%rbp)
  821cea:	48 8b 85 20 fc ff ff 	mov    -0x3e0(%rbp),%rax
  821cf1:	48 8b b5 38 f8 ff ff 	mov    -0x7c8(%rbp),%rsi
  821cf8:	48 8b 8d 00 f8 ff ff 	mov    -0x800(%rbp),%rcx
  821cff:	4c 8b 95 60 f6 ff ff 	mov    -0x9a0(%rbp),%r10
  821d06:	4c 8b 9d 68 f6 ff ff 	mov    -0x998(%rbp),%r11
  821d0d:	4c 8b bd b8 f9 ff ff 	mov    -0x648(%rbp),%r15
  821d14:	4c 8b b5 d8 fa ff ff 	mov    -0x528(%rbp),%r14
  821d1b:	8b bd 40 f8 ff ff    	mov    -0x7c0(%rbp),%edi
  821d21:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  821d27:	4c 8b 85 70 f6 ff ff 	mov    -0x990(%rbp),%r8
  821d2e:	4c 89 a5 78 f7 ff ff 	mov    %r12,-0x888(%rbp)
  821d35:	4c 8b a5 f0 f5 ff ff 	mov    -0xa10(%rbp),%r12
  821d3c:	4c 89 8d 60 f7 ff ff 	mov    %r9,-0x8a0(%rbp)
  821d43:	4d 89 e1             	mov    %r12,%r9
  821d46:	4c 89 9d 68 f6 ff ff 	mov    %r11,-0x998(%rbp)
  821d4d:	4c 8b 9d e8 f4 ff ff 	mov    -0xb18(%rbp),%r11
  821d54:	4d 0f af cb          	imul   %r11,%r9
  821d58:	4c 0f af 9d f0 f4 ff 	imul   -0xb10(%rbp),%r11
  821d5f:	ff 
  821d60:	c5 fd 10 25 f8 35 0a 	vmovupd 0xa35f8(%rip),%ymm4        # 8c5360 <var$630.126.450+0x4a0>
  821d67:	00 
  821d68:	c5 fb 10 1d 90 54 0a 	vmovsd 0xa5490(%rip),%xmm3        # 8c7200 <__STRLITPACK_199.115+0x70>
  821d6f:	00 
  821d70:	c5 fd 10 05 a8 43 0a 	vmovupd 0xa43a8(%rip),%ymm0        # 8c6120 <var$630.126.450+0x1260>
  821d77:	00 
  821d78:	48 89 85 20 fc ff ff 	mov    %rax,-0x3e0(%rbp)
  821d7f:	48 8b 85 98 f5 ff ff 	mov    -0xa68(%rbp),%rax
  821d86:	4c 8b ad 10 f5 ff ff 	mov    -0xaf0(%rbp),%r13
  821d8d:	4c 89 bd b8 f9 ff ff 	mov    %r15,-0x648(%rbp)
  821d94:	4c 8b bd 08 f5 ff ff 	mov    -0xaf8(%rbp),%r15
  821d9b:	48 89 b5 38 f8 ff ff 	mov    %rsi,-0x7c8(%rbp)
  821da2:	48 8d 34 85 00 00 00 	lea    0x0(,%rax,4),%rsi
  821da9:	00 
  821daa:	4c 89 b5 d8 fa ff ff 	mov    %r14,-0x528(%rbp)
  821db1:	4f 8d 74 a5 00       	lea    0x0(%r13,%r12,4),%r14
  821db6:	4c 89 b5 18 f7 ff ff 	mov    %r14,-0x8e8(%rbp)
  821dbd:	4d 89 e6             	mov    %r12,%r14
  821dc0:	48 f7 de             	neg    %rsi
  821dc3:	4d 89 cd             	mov    %r9,%r13
  821dc6:	89 bd 40 f8 ff ff    	mov    %edi,-0x7c0(%rbp)
  821dcc:	4a 8d 3c bd 00 00 00 	lea    0x0(,%r15,4),%rdi
  821dd3:	00 
  821dd4:	48 89 8d 00 f8 ff ff 	mov    %rcx,-0x800(%rbp)
  821ddb:	4d 2b eb             	sub    %r11,%r13
  821dde:	48 8b 8d f8 f4 ff ff 	mov    -0xb08(%rbp),%rcx
  821de5:	48 03 f1             	add    %rcx,%rsi
  821de8:	4c 2b b5 00 f5 ff ff 	sub    -0xb00(%rbp),%r14
  821def:	48 f7 df             	neg    %rdi
  821df2:	4c 89 95 60 f6 ff ff 	mov    %r10,-0x9a0(%rbp)
  821df9:	4d 8d 14 81          	lea    (%r9,%rax,4),%r10
  821dfd:	48 89 bd 10 f7 ff ff 	mov    %rdi,-0x8f0(%rbp)
  821e04:	4c 89 f7             	mov    %r14,%rdi
  821e07:	4c 03 d6             	add    %rsi,%r10
  821e0a:	49 03 f5             	add    %r13,%rsi
  821e0d:	4c 03 e9             	add    %rcx,%r13
  821e10:	4d 2b d3             	sub    %r11,%r10
  821e13:	4c 89 ad 60 f8 ff ff 	mov    %r13,-0x7a0(%rbp)
  821e1a:	4c 8b ad e8 f5 ff ff 	mov    -0xa18(%rbp),%r13
  821e21:	48 c1 e7 05          	shl    $0x5,%rdi
  821e25:	49 03 fe             	add    %r14,%rdi
  821e28:	4c 89 95 58 f8 ff ff 	mov    %r10,-0x7a8(%rbp)
  821e2f:	48 c1 e7 05          	shl    $0x5,%rdi
  821e33:	4c 8b 95 c8 f4 ff ff 	mov    -0xb38(%rbp),%r10
  821e3a:	48 8b 8d a8 f1 ff ff 	mov    -0xe58(%rbp),%rcx
  821e41:	48 89 bd 88 f4 ff ff 	mov    %rdi,-0xb78(%rbp)
  821e48:	4b 8d 7c 05 00       	lea    0x0(%r13,%r8,1),%rdi
  821e4d:	4d 0f af ea          	imul   %r10,%r13
  821e51:	48 0f af 8d 18 fc ff 	imul   -0x3e8(%rbp),%rcx
  821e58:	ff 
  821e59:	48 89 b5 08 f7 ff ff 	mov    %rsi,-0x8f8(%rbp)
  821e60:	4c 89 e8             	mov    %r13,%rax
  821e63:	44 8b 9d d0 fc ff ff 	mov    -0x330(%rbp),%r11d
  821e6a:	48 2b c1             	sub    %rcx,%rax
  821e6d:	48 8b b5 d0 f4 ff ff 	mov    -0xb30(%rbp),%rsi
  821e74:	49 2b f2             	sub    %r10,%rsi
  821e77:	4c 8b 8d b0 f1 ff ff 	mov    -0xe50(%rbp),%r9
  821e7e:	45 8d 7b 01          	lea    0x1(%r11),%r15d
  821e82:	4c 03 ce             	add    %rsi,%r9
  821e85:	4c 03 c8             	add    %rax,%r9
  821e88:	48 03 c6             	add    %rsi,%rax
  821e8b:	49 03 f5             	add    %r13,%rsi
  821e8e:	4c 8b ad 08 fc ff ff 	mov    -0x3f8(%rbp),%r13
  821e95:	44 89 bd 70 fc ff ff 	mov    %r15d,-0x390(%rbp)
  821e9c:	4c 8b bd a0 f1 ff ff 	mov    -0xe60(%rbp),%r15
  821ea3:	4d 0f af fd          	imul   %r13,%r15
  821ea7:	4d 0f af d0          	imul   %r8,%r10
  821eab:	48 89 bd 70 f4 ff ff 	mov    %rdi,-0xb90(%rbp)
  821eb2:	48 8b bd 20 f9 ff ff 	mov    -0x6e0(%rbp),%rdi
  821eb9:	4c 03 cf             	add    %rdi,%r9
  821ebc:	48 2b cf             	sub    %rdi,%rcx
  821ebf:	49 2b ff             	sub    %r15,%rdi
  821ec2:	4c 8b b5 f0 f1 ff ff 	mov    -0xe10(%rbp),%r14
  821ec9:	48 03 f8             	add    %rax,%rdi
  821ecc:	49 2b c7             	sub    %r15,%rax
  821ecf:	4d 2b fe             	sub    %r14,%r15
  821ed2:	49 03 cf             	add    %r15,%rcx
  821ed5:	49 03 fe             	add    %r14,%rdi
  821ed8:	48 2b f1             	sub    %rcx,%rsi
  821edb:	49 03 fa             	add    %r10,%rdi
  821ede:	48 89 bd 20 f9 ff ff 	mov    %rdi,-0x6e0(%rbp)
  821ee5:	49 03 c2             	add    %r10,%rax
  821ee8:	48 8b bd c8 f5 ff ff 	mov    -0xa38(%rbp),%rdi
  821eef:	4d 03 ca             	add    %r10,%r9
  821ef2:	48 89 85 68 f4 ff ff 	mov    %rax,-0xb98(%rbp)
  821ef9:	48 8b 85 78 f8 ff ff 	mov    -0x788(%rbp),%rax
  821f00:	4a 8d 0c 6e          	lea    (%rsi,%r13,2),%rcx
  821f04:	48 d1 e8             	shr    %rax
  821f07:	4c 03 d1             	add    %rcx,%r10
  821f0a:	48 8b b5 d0 f5 ff ff 	mov    -0xa30(%rbp),%rsi
  821f11:	48 89 85 88 f8 ff ff 	mov    %rax,-0x778(%rbp)
  821f18:	48 8d 04 bd 00 00 00 	lea    0x0(,%rdi,4),%rax
  821f1f:	00 
  821f20:	48 f7 d8             	neg    %rax
  821f23:	48 89 85 28 f8 ff ff 	mov    %rax,-0x7d8(%rbp)
  821f2a:	8b 85 d8 fc ff ff    	mov    -0x328(%rbp),%eax
  821f30:	44 2b d8             	sub    %eax,%r11d
  821f33:	4c 89 8d b0 f1 ff ff 	mov    %r9,-0xe50(%rbp)
  821f3a:	4e 8d 0c a6          	lea    (%rsi,%r12,4),%r9
  821f3e:	4c 89 e6             	mov    %r12,%rsi
  821f41:	48 2b b5 c0 f4 ff ff 	sub    -0xb40(%rbp),%rsi
  821f48:	48 89 f1             	mov    %rsi,%rcx
  821f4b:	41 8d 7b 01          	lea    0x1(%r11),%edi
  821f4f:	48 c1 e1 05          	shl    $0x5,%rcx
  821f53:	41 83 c3 03          	add    $0x3,%r11d
  821f57:	48 c1 e6 0b          	shl    $0xb,%rsi
  821f5b:	89 bd 28 f3 ff ff    	mov    %edi,-0xcd8(%rbp)
  821f61:	8d 78 ff             	lea    -0x1(%rax),%edi
  821f64:	89 bd a8 fb ff ff    	mov    %edi,-0x458(%rbp)
  821f6a:	48 2b f1             	sub    %rcx,%rsi
  821f6d:	48 8b bd d8 f5 ff ff 	mov    -0xa28(%rbp),%rdi
  821f74:	48 8b 8d f0 fc ff ff 	mov    -0x310(%rbp),%rcx
  821f7b:	48 89 b5 40 f7 ff ff 	mov    %rsi,-0x8c0(%rbp)
  821f82:	83 e1 fc             	and    $0xfffffffc,%ecx
  821f85:	48 8d 04 bd 00 00 00 	lea    0x0(,%rdi,4),%rax
  821f8c:	00 
  821f8d:	48 63 c9             	movslq %ecx,%rcx
  821f90:	48 f7 d8             	neg    %rax
  821f93:	48 89 8d 28 fd ff ff 	mov    %rcx,-0x2d8(%rbp)
  821f9a:	89 d1                	mov    %edx,%ecx
  821f9c:	8b bd 40 f8 ff ff    	mov    -0x7c0(%rbp),%edi
  821fa2:	2b cf                	sub    %edi,%ecx
  821fa4:	48 8b b5 e0 f5 ff ff 	mov    -0xa20(%rbp),%rsi
  821fab:	ff c1                	inc    %ecx
  821fad:	4c 8b ad f8 fa ff ff 	mov    -0x508(%rbp),%r13
  821fb4:	44 89 ad 28 fc ff ff 	mov    %r13d,-0x3d8(%rbp)
  821fbb:	89 8d b8 f6 ff ff    	mov    %ecx,-0x948(%rbp)
  821fc1:	4e 8d 24 a6          	lea    (%rsi,%r12,4),%r12
  821fc5:	41 83 e5 fc          	and    $0xfffffffc,%r13d
  821fc9:	d1 e9                	shr    %ecx
  821fcb:	4d 63 ed             	movslq %r13d,%r13
  821fce:	89 8d b0 f6 ff ff    	mov    %ecx,-0x950(%rbp)
  821fd4:	4c 89 95 18 f9 ff ff 	mov    %r10,-0x6e8(%rbp)
  821fdb:	4c 89 8d 30 f8 ff ff 	mov    %r9,-0x7d0(%rbp)
  821fe2:	44 89 9d 58 f7 ff ff 	mov    %r11d,-0x8a8(%rbp)
  821fe9:	4c 89 a5 20 f8 ff ff 	mov    %r12,-0x7e0(%rbp)
  821ff0:	48 89 85 18 f8 ff ff 	mov    %rax,-0x7e8(%rbp)
  821ff7:	48 89 8d 78 f6 ff ff 	mov    %rcx,-0x988(%rbp)
  821ffe:	48 8b 85 20 fc ff ff 	mov    -0x3e0(%rbp),%rax
  822005:	48 8b b5 38 f8 ff ff 	mov    -0x7c8(%rbp),%rsi
  82200c:	4c 8b b5 d8 fa ff ff 	mov    -0x528(%rbp),%r14
  822013:	48 8b 8d 00 f8 ff ff 	mov    -0x800(%rbp),%rcx
  82201a:	4c 8b 9d 68 f6 ff ff 	mov    -0x998(%rbp),%r11
  822021:	4c 8b bd f8 f7 ff ff 	mov    -0x808(%rbp),%r15
  822028:	4c 89 ad 10 f9 ff ff 	mov    %r13,-0x6f0(%rbp)
  82202f:	4c 89 85 70 f6 ff ff 	mov    %r8,-0x990(%rbp)
  822036:	48 83 bd 10 fd ff ff 	cmpq   $0x8,-0x2f0(%rbp)
  82203d:	08 
  82203e:	74 2c                	je     82206c <pre_step3d_mod_mp_pre_step3d_tile_+0xdabc>
  822040:	48 89 b5 38 f8 ff ff 	mov    %rsi,-0x7c8(%rbp)
  822047:	48 89 8d 00 f8 ff ff 	mov    %rcx,-0x800(%rbp)
  82204e:	89 bd 40 f8 ff ff    	mov    %edi,-0x7c0(%rbp)
  822054:	c5 fb 10 05 bc 51 0a 	vmovsd 0xa51bc(%rip),%xmm0        # 8c7218 <__STRLITPACK_199.115+0x88>
  82205b:	00 
  82205c:	48 8b 8d 90 f8 ff ff 	mov    -0x770(%rbp),%rcx
  822063:	48 8b b5 98 f8 ff ff 	mov    -0x768(%rbp),%rsi
  82206a:	eb 38                	jmp    8220a4 <pre_step3d_mod_mp_pre_step3d_tile_+0xdaf4>
  82206c:	48 89 b5 38 f8 ff ff 	mov    %rsi,-0x7c8(%rbp)
  822073:	48 89 8d 00 f8 ff ff 	mov    %rcx,-0x800(%rbp)
  82207a:	89 bd 40 f8 ff ff    	mov    %edi,-0x7c0(%rbp)
  822080:	c5 fb 10 05 90 51 0a 	vmovsd 0xa5190(%rip),%xmm0        # 8c7218 <__STRLITPACK_199.115+0x88>
  822087:	00 
  822088:	48 8b 8d 90 f8 ff ff 	mov    -0x770(%rbp),%rcx
  82208f:	48 8b b5 98 f8 ff ff 	mov    -0x768(%rbp),%rsi
  822096:	48 83 bd c0 fb ff ff 	cmpq   $0x8,-0x440(%rbp)
  82209d:	08 
  82209e:	0f 84 62 03 00 00    	je     822406 <pre_step3d_mod_mp_pre_step3d_tile_+0xde56>
  8220a4:	45 33 c0             	xor    %r8d,%r8d
  8220a7:	45 33 c9             	xor    %r9d,%r9d
  8220aa:	45 33 d2             	xor    %r10d,%r10d
  8220ad:	33 ff                	xor    %edi,%edi
  8220af:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  8220b5:	0f 8c 77 04 00 00    	jl     822532 <pre_step3d_mod_mp_pre_step3d_tile_+0xdf82>
  8220bb:	48 89 85 20 fc ff ff 	mov    %rax,-0x3e0(%rbp)
  8220c2:	89 95 68 f8 ff ff    	mov    %edx,-0x798(%rbp)
  8220c8:	4c 8b ad f8 fa ff ff 	mov    -0x508(%rbp),%r13
  8220cf:	4c 8b a5 10 fd ff ff 	mov    -0x2f0(%rbp),%r12
  8220d6:	48 8b 85 b8 fb ff ff 	mov    -0x448(%rbp),%rax
  8220dd:	48 3b 85 b0 fb ff ff 	cmp    -0x450(%rbp),%rax
  8220e4:	0f 8c f2 02 00 00    	jl     8223dc <pre_step3d_mod_mp_pre_step3d_tile_+0xde2c>
  8220ea:	49 83 fd 04          	cmp    $0x4,%r13
  8220ee:	0f 8c 3f 38 00 00    	jl     825933 <pre_step3d_mod_mp_pre_step3d_tile_+0x11383>
  8220f4:	48 8b 85 e0 fa ff ff 	mov    -0x520(%rbp),%rax
  8220fb:	48 8d 14 38          	lea    (%rax,%rdi,1),%rdx
  8220ff:	48 89 95 e8 fa ff ff 	mov    %rdx,-0x518(%rbp)
  822106:	48 83 e2 0f          	and    $0xf,%rdx
  82210a:	85 d2                	test   %edx,%edx
  82210c:	74 0e                	je     82211c <pre_step3d_mod_mp_pre_step3d_tile_+0xdb6c>
  82210e:	f6 c2 07             	test   $0x7,%dl
  822111:	0f 85 1c 38 00 00    	jne    825933 <pre_step3d_mod_mp_pre_step3d_tile_+0x11383>
  822117:	ba 01 00 00 00       	mov    $0x1,%edx
  82211c:	41 89 d3             	mov    %edx,%r11d
  82211f:	49 8d 43 04          	lea    0x4(%r11),%rax
  822123:	4c 3b e8             	cmp    %rax,%r13
  822126:	0f 8c 07 38 00 00    	jl     825933 <pre_step3d_mod_mp_pre_step3d_tile_+0x11383>
  82212c:	4c 8b bd 58 fc ff ff 	mov    -0x3a8(%rbp),%r15
  822133:	33 f6                	xor    %esi,%esi
  822135:	48 8b 85 20 fc ff ff 	mov    -0x3e0(%rbp),%rax
  82213c:	8b 8d 28 fc ff ff    	mov    -0x3d8(%rbp),%ecx
  822142:	41 89 ce             	mov    %ecx,%r14d
  822145:	44 2b f2             	sub    %edx,%r14d
  822148:	41 83 e6 03          	and    $0x3,%r14d
  82214c:	4c 03 f8             	add    %rax,%r15
  82214f:	4d 03 f9             	add    %r9,%r15
  822152:	41 f7 de             	neg    %r14d
  822155:	4c 89 bd 40 fd ff ff 	mov    %r15,-0x2c0(%rbp)
  82215c:	44 03 f1             	add    %ecx,%r14d
  82215f:	4c 8b bd 50 fc ff ff 	mov    -0x3b0(%rbp),%r15
  822166:	33 c9                	xor    %ecx,%ecx
  822168:	4d 63 f6             	movslq %r14d,%r14
  82216b:	49 03 c7             	add    %r15,%rax
  82216e:	49 03 c1             	add    %r9,%rax
  822171:	48 89 85 88 fc ff ff 	mov    %rax,-0x378(%rbp)
  822178:	48 8b 85 48 fc ff ff 	mov    -0x3b8(%rbp),%rax
  82217f:	4e 8d 3c 10          	lea    (%rax,%r10,1),%r15
  822183:	4c 89 bd 80 fc ff ff 	mov    %r15,-0x380(%rbp)
  82218a:	85 d2                	test   %edx,%edx
  82218c:	76 6b                	jbe    8221f9 <pre_step3d_mod_mp_pre_step3d_tile_+0xdc49>
  82218e:	4c 89 8d 00 fb ff ff 	mov    %r9,-0x500(%rbp)
  822195:	4c 89 85 08 fb ff ff 	mov    %r8,-0x4f8(%rbp)
  82219c:	48 89 c8             	mov    %rcx,%rax
  82219f:	4c 89 fa             	mov    %r15,%rdx
  8221a2:	4c 8b 85 88 fc ff ff 	mov    -0x378(%rbp),%r8
  8221a9:	4c 8b 8d 40 fd ff ff 	mov    -0x2c0(%rbp),%r9
  8221b0:	4c 8b ad e8 fa ff ff 	mov    -0x518(%rbp),%r13
  8221b7:	4c 8b bd c0 fb ff ff 	mov    -0x440(%rbp),%r15
  8221be:	c4 a1 7b 10 0c 08    	vmovsd (%rax,%r9,1),%xmm1
  8221c4:	c4 a1 73 5c 14 00    	vsubsd (%rax,%r8,1),%xmm1,%xmm2
  8221ca:	49 03 c4             	add    %r12,%rax
  8221cd:	c5 eb 59 1c 11       	vmulsd (%rcx,%rdx,1),%xmm2,%xmm3
  8221d2:	49 03 cf             	add    %r15,%rcx
  8221d5:	c4 c1 7b 11 5c f5 00 	vmovsd %xmm3,0x0(%r13,%rsi,8)
  8221dc:	48 ff c6             	inc    %rsi
  8221df:	49 3b f3             	cmp    %r11,%rsi
  8221e2:	72 da                	jb     8221be <pre_step3d_mod_mp_pre_step3d_tile_+0xdc0e>
  8221e4:	4c 8b 8d 00 fb ff ff 	mov    -0x500(%rbp),%r9
  8221eb:	4c 8b 85 08 fb ff ff 	mov    -0x4f8(%rbp),%r8
  8221f2:	4c 8b ad f8 fa ff ff 	mov    -0x508(%rbp),%r13
  8221f9:	48 8b 8d b0 f9 ff ff 	mov    -0x650(%rbp),%rcx
  822200:	4c 89 e2             	mov    %r12,%rdx
  822203:	48 8b 85 20 fc ff ff 	mov    -0x3e0(%rbp),%rax
  82220a:	48 8b b5 c0 fb ff ff 	mov    -0x440(%rbp),%rsi
  822211:	4c 89 b5 38 fd ff ff 	mov    %r14,-0x2c8(%rbp)
  822218:	4c 8d 3c 39          	lea    (%rcx,%rdi,1),%r15
  82221c:	4c 89 bd c8 f9 ff ff 	mov    %r15,-0x638(%rbp)
  822223:	48 8b 8d a8 f9 ff ff 	mov    -0x658(%rbp),%rcx
  82222a:	4c 8b bd a0 f9 ff ff 	mov    -0x660(%rbp),%r15
  822231:	48 89 bd 10 fb ff ff 	mov    %rdi,-0x4f0(%rbp)
  822238:	4c 89 95 18 fb ff ff 	mov    %r10,-0x4e8(%rbp)
  82223f:	48 03 c8             	add    %rax,%rcx
  822242:	4c 89 8d 00 fb ff ff 	mov    %r9,-0x500(%rbp)
  822249:	49 03 c7             	add    %r15,%rax
  82224c:	4c 8b bd 98 f9 ff ff 	mov    -0x668(%rbp),%r15
  822253:	49 03 c9             	add    %r9,%rcx
  822256:	4c 89 85 08 fb ff ff 	mov    %r8,-0x4f8(%rbp)
  82225d:	49 03 c1             	add    %r9,%rax
  822260:	49 0f af f3          	imul   %r11,%rsi
  822264:	49 0f af d3          	imul   %r11,%rdx
  822268:	48 8b bd c8 f9 ff ff 	mov    -0x638(%rbp),%rdi
  82226f:	4d 03 fa             	add    %r10,%r15
  822272:	4d 89 fe             	mov    %r15,%r14
  822275:	4c 8b 85 80 fc ff ff 	mov    -0x380(%rbp),%r8
  82227c:	4c 8b 8d 88 fc ff ff 	mov    -0x378(%rbp),%r9
  822283:	4c 8b 95 e8 fa ff ff 	mov    -0x518(%rbp),%r10
  82228a:	4c 8b ad c0 fb ff ff 	mov    -0x440(%rbp),%r13
  822291:	4c 8b bd 40 fd ff ff 	mov    -0x2c0(%rbp),%r15
  822298:	4c 03 fa             	add    %rdx,%r15
  82229b:	c4 c1 7b 10 0f       	vmovsd (%r15),%xmm1
  8222a0:	c4 81 71 16 1c 27    	vmovhpd (%r15,%r12,1),%xmm1,%xmm3
  8222a6:	4d 8d 3c 11          	lea    (%r9,%rdx,1),%r15
  8222aa:	c4 c1 7b 10 17       	vmovsd (%r15),%xmm2
  8222af:	c4 81 69 16 24 27    	vmovhpd (%r15,%r12,1),%xmm2,%xmm4
  8222b5:	4d 8d 3c 30          	lea    (%r8,%rsi,1),%r15
  8222b9:	c4 c1 7b 10 2f       	vmovsd (%r15),%xmm5
  8222be:	c4 81 51 16 3c 2f    	vmovhpd (%r15,%r13,1),%xmm5,%xmm7
  8222c4:	4c 8d 3c 10          	lea    (%rax,%rdx,1),%r15
  8222c8:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  8222cd:	c4 01 31 16 24 27    	vmovhpd (%r15,%r12,1),%xmm9,%xmm12
  8222d3:	4c 8d 3c 11          	lea    (%rcx,%rdx,1),%r15
  8222d7:	c4 41 7b 10 1f       	vmovsd (%r15),%xmm11
  8222dc:	4a 8d 14 a2          	lea    (%rdx,%r12,4),%rdx
  8222e0:	c4 01 21 16 2c 27    	vmovhpd (%r15,%r12,1),%xmm11,%xmm13
  8222e6:	4d 8d 3c 36          	lea    (%r14,%rsi,1),%r15
  8222ea:	c5 e1 5c f4          	vsubpd %xmm4,%xmm3,%xmm6
  8222ee:	c4 41 19 5c fd       	vsubpd %xmm13,%xmm12,%xmm15
  8222f3:	c5 49 59 c7          	vmulpd %xmm7,%xmm6,%xmm8
  8222f7:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  8222fc:	4a 8d 34 ae          	lea    (%rsi,%r13,4),%rsi
  822300:	c4 81 09 16 0c 2f    	vmovhpd (%r15,%r13,1),%xmm14,%xmm1
  822306:	c5 81 59 d1          	vmulpd %xmm1,%xmm15,%xmm2
  82230a:	c4 01 79 11 04 da    	vmovupd %xmm8,(%r10,%r11,8)
  822310:	c4 a1 79 11 54 df 10 	vmovupd %xmm2,0x10(%rdi,%r11,8)
  822317:	49 83 c3 04          	add    $0x4,%r11
  82231b:	4c 3b 9d 38 fd ff ff 	cmp    -0x2c8(%rbp),%r11
  822322:	0f 82 69 ff ff ff    	jb     822291 <pre_step3d_mod_mp_pre_step3d_tile_+0xdce1>
  822328:	4c 8b b5 38 fd ff ff 	mov    -0x2c8(%rbp),%r14
  82232f:	48 8b bd 10 fb ff ff 	mov    -0x4f0(%rbp),%rdi
  822336:	4c 8b 95 18 fb ff ff 	mov    -0x4e8(%rbp),%r10
  82233d:	4c 8b 8d 00 fb ff ff 	mov    -0x500(%rbp),%r9
  822344:	4c 8b 85 08 fb ff ff 	mov    -0x4f8(%rbp),%r8
  82234b:	4c 8b ad f8 fa ff ff 	mov    -0x508(%rbp),%r13
  822352:	4d 89 e3             	mov    %r12,%r11
  822355:	48 8b b5 c0 fb ff ff 	mov    -0x440(%rbp),%rsi
  82235c:	4d 0f af de          	imul   %r14,%r11
  822360:	49 0f af f6          	imul   %r14,%rsi
  822364:	4d 3b f5             	cmp    %r13,%r14
  822367:	73 73                	jae    8223dc <pre_step3d_mod_mp_pre_step3d_tile_+0xde2c>
  822369:	48 8b 95 58 fc ff ff 	mov    -0x3a8(%rbp),%rdx
  822370:	48 8b 85 20 fc ff ff 	mov    -0x3e0(%rbp),%rax
  822377:	4c 8b bd 50 fc ff ff 	mov    -0x3b0(%rbp),%r15
  82237e:	48 8b 8d e0 fa ff ff 	mov    -0x520(%rbp),%rcx
  822385:	4c 89 85 08 fb ff ff 	mov    %r8,-0x4f8(%rbp)
  82238c:	48 03 d0             	add    %rax,%rdx
  82238f:	49 03 d1             	add    %r9,%rdx
  822392:	49 03 c7             	add    %r15,%rax
  822395:	4c 8b bd 48 fc ff ff 	mov    -0x3b8(%rbp),%r15
  82239c:	48 03 cf             	add    %rdi,%rcx
  82239f:	49 03 c1             	add    %r9,%rax
  8223a2:	4d 03 fa             	add    %r10,%r15
  8223a5:	4d 89 f8             	mov    %r15,%r8
  8223a8:	4c 8b bd c0 fb ff ff 	mov    -0x440(%rbp),%r15
  8223af:	c4 c1 7b 10 0c 13    	vmovsd (%r11,%rdx,1),%xmm1
  8223b5:	c4 c1 73 5c 14 03    	vsubsd (%r11,%rax,1),%xmm1,%xmm2
  8223bb:	4d 03 dc             	add    %r12,%r11
  8223be:	c4 a1 6b 59 1c 06    	vmulsd (%rsi,%r8,1),%xmm2,%xmm3
  8223c4:	49 03 f7             	add    %r15,%rsi
  8223c7:	c4 a1 7b 11 1c f1    	vmovsd %xmm3,(%rcx,%r14,8)
  8223cd:	49 ff c6             	inc    %r14
  8223d0:	4d 3b f5             	cmp    %r13,%r14
  8223d3:	72 da                	jb     8223af <pre_step3d_mod_mp_pre_step3d_tile_+0xddff>
  8223d5:	4c 8b 85 08 fb ff ff 	mov    -0x4f8(%rbp),%r8
  8223dc:	49 ff c0             	inc    %r8
  8223df:	4c 03 8d f8 fb ff ff 	add    -0x408(%rbp),%r9
  8223e6:	4c 03 95 c8 fb ff ff 	add    -0x438(%rbp),%r10
  8223ed:	48 03 bd 78 fc ff ff 	add    -0x388(%rbp),%rdi
  8223f4:	4c 3b 85 60 fc ff ff 	cmp    -0x3a0(%rbp),%r8
  8223fb:	0f 82 d5 fc ff ff    	jb     8220d6 <pre_step3d_mod_mp_pre_step3d_tile_+0xdb26>
  822401:	e9 11 01 00 00       	jmpq   822517 <pre_step3d_mod_mp_pre_step3d_tile_+0xdf67>
  822406:	45 33 d2             	xor    %r10d,%r10d
  822409:	4c 8b 85 e0 fa ff ff 	mov    -0x520(%rbp),%r8
  822410:	45 33 c9             	xor    %r9d,%r9d
  822413:	48 8b bd b8 f1 ff ff 	mov    -0xe48(%rbp),%rdi
  82241a:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  822420:	0f 8c 0c 01 00 00    	jl     822532 <pre_step3d_mod_mp_pre_step3d_tile_+0xdf82>
  822426:	48 89 85 20 fc ff ff 	mov    %rax,-0x3e0(%rbp)
  82242d:	89 95 68 f8 ff ff    	mov    %edx,-0x798(%rbp)
  822433:	4c 8b bd 38 f8 ff ff 	mov    -0x7c8(%rbp),%r15
  82243a:	4c 8b 9d 70 f7 ff ff 	mov    -0x890(%rbp),%r11
  822441:	4c 8b a5 78 f7 ff ff 	mov    -0x888(%rbp),%r12
  822448:	4c 8b ad f8 fa ff ff 	mov    -0x508(%rbp),%r13
  82244f:	4c 8b b5 b8 fb ff ff 	mov    -0x448(%rbp),%r14
  822456:	4c 3b b5 b0 fb ff ff 	cmp    -0x450(%rbp),%r14
  82245d:	0f 8c 8f 00 00 00    	jl     8224f2 <pre_step3d_mod_mp_pre_step3d_tile_+0xdf42>
  822463:	49 83 fd 04          	cmp    $0x4,%r13
  822467:	0f 8c 2e 36 00 00    	jl     825a9b <pre_step3d_mod_mp_pre_step3d_tile_+0x114eb>
  82246d:	48 8b 8d f0 f8 ff ff 	mov    -0x710(%rbp),%rcx
  822474:	33 d2                	xor    %edx,%edx
  822476:	49 0f af cf          	imul   %r15,%rcx
  82247a:	48 8b b5 10 f9 ff ff 	mov    -0x6f0(%rbp),%rsi
  822481:	49 8d 04 0b          	lea    (%r11,%rcx,1),%rax
  822485:	49 03 cc             	add    %r12,%rcx
  822488:	49 03 c1             	add    %r9,%rax
  82248b:	49 03 c9             	add    %r9,%rcx
  82248e:	49 89 f6             	mov    %rsi,%r14
  822491:	c5 fd 10 0c d0       	vmovupd (%rax,%rdx,8),%ymm1
  822496:	c5 f5 5c 54 d1 f8    	vsubpd -0x8(%rcx,%rdx,8),%ymm1,%ymm2
  82249c:	c5 ed 59 1c d7       	vmulpd (%rdi,%rdx,8),%ymm2,%ymm3
  8224a1:	c4 c1 7d 11 1c d0    	vmovupd %ymm3,(%r8,%rdx,8)
  8224a7:	48 83 c2 04          	add    $0x4,%rdx
  8224ab:	49 3b d6             	cmp    %r14,%rdx
  8224ae:	72 e1                	jb     822491 <pre_step3d_mod_mp_pre_step3d_tile_+0xdee1>
  8224b0:	4c 8b b5 b8 fb ff ff 	mov    -0x448(%rbp),%r14
  8224b7:	49 3b f5             	cmp    %r13,%rsi
  8224ba:	73 36                	jae    8224f2 <pre_step3d_mod_mp_pre_step3d_tile_+0xdf42>
  8224bc:	48 8b 85 f0 f8 ff ff 	mov    -0x710(%rbp),%rax
  8224c3:	49 0f af c7          	imul   %r15,%rax
  8224c7:	49 8d 14 03          	lea    (%r11,%rax,1),%rdx
  8224cb:	49 03 c4             	add    %r12,%rax
  8224ce:	49 03 d1             	add    %r9,%rdx
  8224d1:	49 03 c1             	add    %r9,%rax
  8224d4:	c5 fb 10 0c f2       	vmovsd (%rdx,%rsi,8),%xmm1
  8224d9:	c5 f3 5c 54 f0 f8    	vsubsd -0x8(%rax,%rsi,8),%xmm1,%xmm2
  8224df:	c5 eb 59 1c f7       	vmulsd (%rdi,%rsi,8),%xmm2,%xmm3
  8224e4:	c4 c1 7b 11 1c f0    	vmovsd %xmm3,(%r8,%rsi,8)
  8224ea:	48 ff c6             	inc    %rsi
  8224ed:	49 3b f5             	cmp    %r13,%rsi
  8224f0:	72 e2                	jb     8224d4 <pre_step3d_mod_mp_pre_step3d_tile_+0xdf24>
  8224f2:	49 ff c2             	inc    %r10
  8224f5:	4c 03 85 78 fc ff ff 	add    -0x388(%rbp),%r8
  8224fc:	4c 03 8d f8 fb ff ff 	add    -0x408(%rbp),%r9
  822503:	48 03 bd c8 fb ff ff 	add    -0x438(%rbp),%rdi
  82250a:	4c 3b 95 60 fc ff ff 	cmp    -0x3a0(%rbp),%r10
  822511:	0f 82 3f ff ff ff    	jb     822456 <pre_step3d_mod_mp_pre_step3d_tile_+0xdea6>
  822517:	48 8b 85 20 fc ff ff 	mov    -0x3e0(%rbp),%rax
  82251e:	48 8b 8d 90 f8 ff ff 	mov    -0x770(%rbp),%rcx
  822525:	48 8b b5 98 f8 ff ff 	mov    -0x768(%rbp),%rsi
  82252c:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  822532:	48 89 85 20 fc ff ff 	mov    %rax,-0x3e0(%rbp)
  822539:	89 95 68 f8 ff ff    	mov    %edx,-0x798(%rbp)
  82253f:	4c 8b a5 18 fd ff ff 	mov    -0x2e8(%rbp),%r12
  822546:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  82254d:	4c 8b b5 20 fd ff ff 	mov    -0x2e0(%rbp),%r14
  822554:	4c 8b bd 78 fc ff ff 	mov    -0x388(%rbp),%r15
  82255b:	48 8b 85 80 f8 ff ff 	mov    -0x780(%rbp),%rax
  822562:	48 8b 95 d8 f8 ff ff 	mov    -0x728(%rbp),%rdx
  822569:	48 8b 8d e0 f8 ff ff 	mov    -0x720(%rbp),%rcx
  822570:	f6 44 0a 04 01       	testb  $0x1,0x4(%rdx,%rcx,1)
  822575:	0f 85 49 01 00 00    	jne    8226c4 <pre_step3d_mod_mp_pre_step3d_tile_+0xe114>
  82257b:	48 8b 95 18 f8 ff ff 	mov    -0x7e8(%rbp),%rdx
  822582:	48 8b 8d 20 f8 ff ff 	mov    -0x7e0(%rbp),%rcx
  822589:	f6 04 0a 01          	testb  $0x1,(%rdx,%rcx,1)
  82258d:	0f 85 31 01 00 00    	jne    8226c4 <pre_step3d_mod_mp_pre_step3d_tile_+0xe114>
  822593:	48 8b 95 38 f7 ff ff 	mov    -0x8c8(%rbp),%rdx
  82259a:	48 8b 8d 40 f7 ff ff 	mov    -0x8c0(%rbp),%rcx
  8225a1:	4c 8b 84 0a 88 00 00 	mov    0x88(%rdx,%rcx,1),%r8
  8225a8:	00 
  8225a9:	49 f7 d8             	neg    %r8
  8225ac:	4c 03 85 30 f7 ff ff 	add    -0x8d0(%rbp),%r8
  8225b3:	4c 0f af 84 0a 80 00 	imul   0x80(%rdx,%rcx,1),%r8
  8225ba:	00 00 
  8225bc:	48 8b 7c 0a 48       	mov    0x48(%rdx,%rcx,1),%rdi
  8225c1:	42 f6 04 07 01       	testb  $0x1,(%rdi,%r8,1)
  8225c6:	0f 84 f8 00 00 00    	je     8226c4 <pre_step3d_mod_mp_pre_step3d_tile_+0xe114>
  8225cc:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  8225d2:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  8225d8:	0f 8c b0 00 00 00    	jl     82268e <pre_step3d_mod_mp_pre_step3d_tile_+0xe0de>
  8225de:	ba 01 00 00 00       	mov    $0x1,%edx
  8225e3:	45 33 db             	xor    %r11d,%r11d
  8225e6:	45 33 d2             	xor    %r10d,%r10d
  8225e9:	83 bd b0 f6 ff ff 00 	cmpl   $0x0,-0x950(%rbp)
  8225f0:	74 47                	je     822639 <pre_step3d_mod_mp_pre_step3d_tile_+0xe089>
  8225f2:	48 8b 95 78 f6 ff ff 	mov    -0x988(%rbp),%rdx
  8225f9:	48 8b 8d 80 f6 ff ff 	mov    -0x980(%rbp),%rcx
  822600:	48 8b bd 68 f9 ff ff 	mov    -0x698(%rbp),%rdi
  822607:	4c 8b 85 70 f9 ff ff 	mov    -0x690(%rbp),%r8
  82260e:	4c 8b 8d a8 f6 ff ff 	mov    -0x958(%rbp),%r9
  822615:	49 8b 34 3a          	mov    (%r10,%rdi,1),%rsi
  822619:	49 ff c3             	inc    %r11
  82261c:	4b 89 74 02 f8       	mov    %rsi,-0x8(%r10,%r8,1)
  822621:	49 8b 74 0a 08       	mov    0x8(%r10,%rcx,1),%rsi
  822626:	49 89 34 0a          	mov    %rsi,(%r10,%rcx,1)
  82262a:	4f 8d 54 0a 10       	lea    0x10(%r10,%r9,1),%r10
  82262f:	4c 3b da             	cmp    %rdx,%r11
  822632:	72 e1                	jb     822615 <pre_step3d_mod_mp_pre_step3d_tile_+0xe065>
  822634:	43 8d 54 1b 01       	lea    0x1(%r11,%r11,1),%edx
  822639:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  82263c:	3b 8d b8 f6 ff ff    	cmp    -0x948(%rbp),%ecx
  822642:	73 18                	jae    82265c <pre_step3d_mod_mp_pre_step3d_tile_+0xe0ac>
  822644:	48 63 d2             	movslq %edx,%rdx
  822647:	49 0f af d7          	imul   %r15,%rdx
  82264b:	48 8b bd 88 f6 ff ff 	mov    -0x978(%rbp),%rdi
  822652:	48 8b 4c 3a f8       	mov    -0x8(%rdx,%rdi,1),%rcx
  822657:	48 89 4c 3a f0       	mov    %rcx,-0x10(%rdx,%rdi,1)
  82265c:	48 8b 95 d8 f8 ff ff 	mov    -0x728(%rbp),%rdx
  822663:	48 8b 8d e0 f8 ff ff 	mov    -0x720(%rbp),%rcx
  82266a:	f6 44 0a 0c 01       	testb  $0x1,0xc(%rdx,%rcx,1)
  82266f:	0f 85 56 01 00 00    	jne    8227cb <pre_step3d_mod_mp_pre_step3d_tile_+0xe21b>
  822675:	48 8b 95 18 f8 ff ff 	mov    -0x7e8(%rbp),%rdx
  82267c:	48 8b 8d 20 f8 ff ff 	mov    -0x7e0(%rbp),%rcx
  822683:	f6 04 0a 01          	testb  $0x1,(%rdx,%rcx,1)
  822687:	74 6c                	je     8226f5 <pre_step3d_mod_mp_pre_step3d_tile_+0xe145>
  822689:	e9 3d 01 00 00       	jmpq   8227cb <pre_step3d_mod_mp_pre_step3d_tile_+0xe21b>
  82268e:	48 8b 95 d8 f8 ff ff 	mov    -0x728(%rbp),%rdx
  822695:	48 8b 8d e0 f8 ff ff 	mov    -0x720(%rbp),%rcx
  82269c:	f6 44 0a 0c 01       	testb  $0x1,0xc(%rdx,%rcx,1)
  8226a1:	75 14                	jne    8226b7 <pre_step3d_mod_mp_pre_step3d_tile_+0xe107>
  8226a3:	48 8b 95 18 f8 ff ff 	mov    -0x7e8(%rbp),%rdx
  8226aa:	48 8b 8d 20 f8 ff ff 	mov    -0x7e0(%rbp),%rcx
  8226b1:	f6 04 0a 01          	testb  $0x1,(%rdx,%rcx,1)
  8226b5:	74 3e                	je     8226f5 <pre_step3d_mod_mp_pre_step3d_tile_+0xe145>
  8226b7:	48 83 bd 08 fc ff ff 	cmpq   $0x8,-0x3f8(%rbp)
  8226be:	08 
  8226bf:	e9 0b 08 00 00       	jmpq   822ecf <pre_step3d_mod_mp_pre_step3d_tile_+0xe91f>
  8226c4:	48 8b 95 d8 f8 ff ff 	mov    -0x728(%rbp),%rdx
  8226cb:	48 8b 8d e0 f8 ff ff 	mov    -0x720(%rbp),%rcx
  8226d2:	f6 44 0a 0c 01       	testb  $0x1,0xc(%rdx,%rcx,1)
  8226d7:	0f 85 dc 00 00 00    	jne    8227b9 <pre_step3d_mod_mp_pre_step3d_tile_+0xe209>
  8226dd:	48 8b 95 18 f8 ff ff 	mov    -0x7e8(%rbp),%rdx
  8226e4:	48 8b 8d 20 f8 ff ff 	mov    -0x7e0(%rbp),%rcx
  8226eb:	f6 04 0a 01          	testb  $0x1,(%rdx,%rcx,1)
  8226ef:	0f 85 c4 00 00 00    	jne    8227b9 <pre_step3d_mod_mp_pre_step3d_tile_+0xe209>
  8226f5:	48 8b 95 38 f7 ff ff 	mov    -0x8c8(%rbp),%rdx
  8226fc:	48 8b 8d 40 f7 ff ff 	mov    -0x8c0(%rbp),%rcx
  822703:	4c 8b 44 0a 40       	mov    0x40(%rdx,%rcx,1),%r8
  822708:	49 f7 d8             	neg    %r8
  82270b:	4c 03 85 30 f7 ff ff 	add    -0x8d0(%rbp),%r8
  822712:	4c 0f af 44 0a 38    	imul   0x38(%rdx,%rcx,1),%r8
  822718:	48 8b 3c 0a          	mov    (%rdx,%rcx,1),%rdi
  82271c:	42 f6 04 07 01       	testb  $0x1,(%rdi,%r8,1)
  822721:	0f 84 92 00 00 00    	je     8227b9 <pre_step3d_mod_mp_pre_step3d_tile_+0xe209>
  822727:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  82272d:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  822733:	7c 77                	jl     8227ac <pre_step3d_mod_mp_pre_step3d_tile_+0xe1fc>
  822735:	bf 01 00 00 00       	mov    $0x1,%edi
  82273a:	33 c9                	xor    %ecx,%ecx
  82273c:	33 d2                	xor    %edx,%edx
  82273e:	83 bd b0 f6 ff ff 00 	cmpl   $0x0,-0x950(%rbp)
  822745:	74 41                	je     822788 <pre_step3d_mod_mp_pre_step3d_tile_+0xe1d8>
  822747:	4c 8b 8d 78 f6 ff ff 	mov    -0x988(%rbp),%r9
  82274e:	4c 8b 95 90 f6 ff ff 	mov    -0x970(%rbp),%r10
  822755:	4c 8b 9d 98 f6 ff ff 	mov    -0x968(%rbp),%r11
  82275c:	48 8b b5 a8 f6 ff ff 	mov    -0x958(%rbp),%rsi
  822763:	48 ff c1             	inc    %rcx
  822766:	4a 8b 7c 1a 08       	mov    0x8(%rdx,%r11,1),%rdi
  82276b:	4e 8b 44 12 10       	mov    0x10(%rdx,%r10,1),%r8
  822770:	4a 89 7c 1a 10       	mov    %rdi,0x10(%rdx,%r11,1)
  822775:	4e 89 44 12 18       	mov    %r8,0x18(%rdx,%r10,1)
  82277a:	48 8d 54 32 10       	lea    0x10(%rdx,%rsi,1),%rdx
  82277f:	49 3b c9             	cmp    %r9,%rcx
  822782:	72 df                	jb     822763 <pre_step3d_mod_mp_pre_step3d_tile_+0xe1b3>
  822784:	8d 7c 09 01          	lea    0x1(%rcx,%rcx,1),%edi
  822788:	8d 57 ff             	lea    -0x1(%rdi),%edx
  82278b:	3b 95 b8 f6 ff ff    	cmp    -0x948(%rbp),%edx
  822791:	73 38                	jae    8227cb <pre_step3d_mod_mp_pre_step3d_tile_+0xe21b>
  822793:	48 63 ff             	movslq %edi,%rdi
  822796:	49 0f af ff          	imul   %r15,%rdi
  82279a:	48 8b 8d a0 f6 ff ff 	mov    -0x960(%rbp),%rcx
  8227a1:	48 8b 14 0f          	mov    (%rdi,%rcx,1),%rdx
  8227a5:	48 89 54 0f 08       	mov    %rdx,0x8(%rdi,%rcx,1)
  8227aa:	eb 1f                	jmp    8227cb <pre_step3d_mod_mp_pre_step3d_tile_+0xe21b>
  8227ac:	48 83 bd 08 fc ff ff 	cmpq   $0x8,-0x3f8(%rbp)
  8227b3:	08 
  8227b4:	e9 16 07 00 00       	jmpq   822ecf <pre_step3d_mod_mp_pre_step3d_tile_+0xe91f>
  8227b9:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  8227bf:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  8227c5:	0f 8c ec fe ff ff    	jl     8226b7 <pre_step3d_mod_mp_pre_step3d_tile_+0xe107>
  8227cb:	33 c9                	xor    %ecx,%ecx
  8227cd:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  8227d4:	33 d2                	xor    %edx,%edx
  8227d6:	c5 fd 10 0d 82 2b 0a 	vmovupd 0xa2b82(%rip),%ymm1        # 8c5360 <var$630.126.450+0x4a0>
  8227dd:	00 
  8227de:	44 8b 8d 58 f7 ff ff 	mov    -0x8a8(%rbp),%r9d
  8227e5:	44 8b 95 70 fc ff ff 	mov    -0x390(%rbp),%r10d
  8227ec:	4c 8b 9d 68 f9 ff ff 	mov    -0x698(%rbp),%r11
  8227f3:	4c 8b a5 70 f9 ff ff 	mov    -0x690(%rbp),%r12
  8227fa:	4c 8b ad 78 f9 ff ff 	mov    -0x688(%rbp),%r13
  822801:	4c 8b bd f0 fc ff ff 	mov    -0x310(%rbp),%r15
  822808:	44 3b 95 a8 fb ff ff 	cmp    -0x458(%rbp),%r10d
  82280f:	0f 8c b1 00 00 00    	jl     8228c6 <pre_step3d_mod_mp_pre_step3d_tile_+0xe316>
  822815:	c4 a1 7b 10 14 1a    	vmovsd (%rdx,%r11,1),%xmm2
  82281b:	c4 a1 6b 58 5c 22 f8 	vaddsd -0x8(%rdx,%r12,1),%xmm2,%xmm3
  822822:	c5 fb 59 e3          	vmulsd %xmm3,%xmm0,%xmm4
  822826:	c4 a1 7b 11 64 2a f8 	vmovsd %xmm4,-0x8(%rdx,%r13,1)
  82282d:	41 83 f9 02          	cmp    $0x2,%r9d
  822831:	72 7c                	jb     8228af <pre_step3d_mod_mp_pre_step3d_tile_+0xe2ff>
  822833:	49 83 ff 04          	cmp    $0x4,%r15
  822837:	0f 8c 56 32 00 00    	jl     825a93 <pre_step3d_mod_mp_pre_step3d_tile_+0x114e3>
  82283d:	4c 8b b5 28 fd ff ff 	mov    -0x2d8(%rbp),%r14
  822844:	45 33 c0             	xor    %r8d,%r8d
  822847:	4d 89 f7             	mov    %r14,%r15
  82284a:	49 8d 7c 15 00       	lea    0x0(%r13,%rdx,1),%rdi
  82284f:	49 8d 34 14          	lea    (%r12,%rdx,1),%rsi
  822853:	49 8d 04 13          	lea    (%r11,%rdx,1),%rax
  822857:	c4 a1 7d 10 54 c0 08 	vmovupd 0x8(%rax,%r8,8),%ymm2
  82285e:	c4 a1 6d 58 1c c6    	vaddpd (%rsi,%r8,8),%ymm2,%ymm3
  822864:	c5 f5 59 e3          	vmulpd %ymm3,%ymm1,%ymm4
  822868:	c4 a1 7d 11 24 c7    	vmovupd %ymm4,(%rdi,%r8,8)
  82286e:	49 83 c0 04          	add    $0x4,%r8
  822872:	4d 3b c7             	cmp    %r15,%r8
  822875:	72 e0                	jb     822857 <pre_step3d_mod_mp_pre_step3d_tile_+0xe2a7>
  822877:	4c 8b bd f0 fc ff ff 	mov    -0x310(%rbp),%r15
  82287e:	4d 3b f7             	cmp    %r15,%r14
  822881:	73 2c                	jae    8228af <pre_step3d_mod_mp_pre_step3d_tile_+0xe2ff>
  822883:	49 8d 7c 15 00       	lea    0x0(%r13,%rdx,1),%rdi
  822888:	49 8d 34 14          	lea    (%r12,%rdx,1),%rsi
  82288c:	49 8d 04 13          	lea    (%r11,%rdx,1),%rax
  822890:	c4 a1 7b 10 54 f0 08 	vmovsd 0x8(%rax,%r14,8),%xmm2
  822897:	c4 a1 6b 58 1c f6    	vaddsd (%rsi,%r14,8),%xmm2,%xmm3
  82289d:	c5 fb 59 e3          	vmulsd %xmm3,%xmm0,%xmm4
  8228a1:	c4 a1 7b 11 24 f7    	vmovsd %xmm4,(%rdi,%r14,8)
  8228a7:	49 ff c6             	inc    %r14
  8228aa:	4d 3b f7             	cmp    %r15,%r14
  8228ad:	72 e1                	jb     822890 <pre_step3d_mod_mp_pre_step3d_tile_+0xe2e0>
  8228af:	48 ff c1             	inc    %rcx
  8228b2:	48 03 95 78 fc ff ff 	add    -0x388(%rbp),%rdx
  8228b9:	48 3b 8d 60 fc ff ff 	cmp    -0x3a0(%rbp),%rcx
  8228c0:	0f 82 42 ff ff ff    	jb     822808 <pre_step3d_mod_mp_pre_step3d_tile_+0xe258>
  8228c6:	4c 8b a5 18 fd ff ff 	mov    -0x2e8(%rbp),%r12
  8228cd:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  8228d4:	4c 8b b5 20 fd ff ff 	mov    -0x2e0(%rbp),%r14
  8228db:	4c 8b bd 78 fc ff ff 	mov    -0x388(%rbp),%r15
  8228e2:	48 8b 85 80 f8 ff ff 	mov    -0x780(%rbp),%rax
  8228e9:	48 83 bd 08 fc ff ff 	cmpq   $0x8,-0x3f8(%rbp)
  8228f0:	08 
  8228f1:	0f 85 e0 01 00 00    	jne    822ad7 <pre_step3d_mod_mp_pre_step3d_tile_+0xe527>
  8228f7:	48 83 bd 10 fd ff ff 	cmpq   $0x8,-0x2f0(%rbp)
  8228fe:	08 
  8228ff:	0f 85 bf 01 00 00    	jne    822ac4 <pre_step3d_mod_mp_pre_step3d_tile_+0xe514>
  822905:	33 ff                	xor    %edi,%edi
  822907:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  82290d:	45 33 c9             	xor    %r9d,%r9d
  822910:	4c 8b 85 b0 f1 ff ff 	mov    -0xe50(%rbp),%r8
  822917:	45 33 d2             	xor    %r10d,%r10d
  82291a:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  822920:	0f 8c b7 05 00 00    	jl     822edd <pre_step3d_mod_mp_pre_step3d_tile_+0xe92d>
  822926:	4c 8b 9d 20 fc ff ff 	mov    -0x3e0(%rbp),%r11
  82292d:	48 8b 95 60 f7 ff ff 	mov    -0x8a0(%rbp),%rdx
  822934:	48 8b 8d 90 f7 ff ff 	mov    -0x870(%rbp),%rcx
  82293b:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  822942:	c5 fd 10 15 d6 37 0a 	vmovupd 0xa37d6(%rip),%ymm2        # 8c6120 <var$630.126.450+0x1260>
  822949:	00 
  82294a:	49 03 d3             	add    %r11,%rdx
  82294d:	c5 fb 10 1d eb 50 0a 	vmovsd 0xa50eb(%rip),%xmm3        # 8c7a40 <__STRLITPACK_199.115+0x8b0>
  822954:	00 
  822955:	c5 fd 10 0d 03 2a 0a 	vmovupd 0xa2a03(%rip),%ymm1        # 8c5360 <var$630.126.450+0x4a0>
  82295c:	00 
  82295d:	48 89 95 d0 f9 ff ff 	mov    %rdx,-0x630(%rbp)
  822964:	49 03 cb             	add    %r11,%rcx
  822967:	48 8b 95 f0 fc ff ff 	mov    -0x310(%rbp),%rdx
  82296e:	8b 85 70 fc ff ff    	mov    -0x390(%rbp),%eax
  822974:	3b 85 d8 fc ff ff    	cmp    -0x328(%rbp),%eax
  82297a:	0f 8c f7 00 00 00    	jl     822a77 <pre_step3d_mod_mp_pre_step3d_tile_+0xe4c7>
  822980:	48 83 fa 04          	cmp    $0x4,%rdx
  822984:	0f 8c b1 2f 00 00    	jl     82593b <pre_step3d_mod_mp_pre_step3d_tile_+0x1138b>
  82298a:	4c 8b ad 78 f9 ff ff 	mov    -0x688(%rbp),%r13
  822991:	45 33 f6             	xor    %r14d,%r14d
  822994:	4c 8b a5 70 f9 ff ff 	mov    -0x690(%rbp),%r12
  82299b:	48 8b b5 58 f9 ff ff 	mov    -0x6a8(%rbp),%rsi
  8229a2:	4c 8b bd d0 f9 ff ff 	mov    -0x630(%rbp),%r15
  8229a9:	4d 03 e9             	add    %r9,%r13
  8229ac:	48 8b 85 28 fd ff ff 	mov    -0x2d8(%rbp),%rax
  8229b3:	4d 03 e1             	add    %r9,%r12
  8229b6:	48 89 c2             	mov    %rax,%rdx
  8229b9:	4e 8d 1c 0e          	lea    (%rsi,%r9,1),%r11
  8229bd:	4a 8d 34 11          	lea    (%rcx,%r10,1),%rsi
  8229c1:	4d 03 fa             	add    %r10,%r15
  8229c4:	c4 81 7d 10 6c f5 00 	vmovupd 0x0(%r13,%r14,8),%ymm5
  8229cb:	c4 a1 7d 10 64 f6 f8 	vmovupd -0x8(%rsi,%r14,8),%ymm4
  8229d2:	c4 01 75 59 0c f0    	vmulpd (%r8,%r14,8),%ymm1,%ymm9
  8229d8:	c4 81 55 5c 74 f3 f8 	vsubpd -0x8(%r11,%r14,8),%ymm5,%ymm6
  8229df:	c4 81 5d 58 3c f7    	vaddpd (%r15,%r14,8),%ymm4,%ymm7
  8229e5:	c5 6d 59 c6          	vmulpd %ymm6,%ymm2,%ymm8
  8229e9:	c4 41 45 5c d8       	vsubpd %ymm8,%ymm7,%ymm11
  8229ee:	c4 41 35 59 e3       	vmulpd %ymm11,%ymm9,%ymm12
  8229f3:	c4 01 7d 11 24 f4    	vmovupd %ymm12,(%r12,%r14,8)
  8229f9:	49 83 c6 04          	add    $0x4,%r14
  8229fd:	4c 3b f2             	cmp    %rdx,%r14
  822a00:	72 c2                	jb     8229c4 <pre_step3d_mod_mp_pre_step3d_tile_+0xe414>
  822a02:	48 8b 95 f0 fc ff ff 	mov    -0x310(%rbp),%rdx
  822a09:	48 3b c2             	cmp    %rdx,%rax
  822a0c:	73 69                	jae    822a77 <pre_step3d_mod_mp_pre_step3d_tile_+0xe4c7>
  822a0e:	4c 8b 9d 78 f9 ff ff 	mov    -0x688(%rbp),%r11
  822a15:	48 8b b5 70 f9 ff ff 	mov    -0x690(%rbp),%rsi
  822a1c:	4c 8b ad 58 f9 ff ff 	mov    -0x6a8(%rbp),%r13
  822a23:	4c 8b a5 d0 f9 ff ff 	mov    -0x630(%rbp),%r12
  822a2a:	4d 03 d9             	add    %r9,%r11
  822a2d:	49 03 f1             	add    %r9,%rsi
  822a30:	4f 8d 74 0d 00       	lea    0x0(%r13,%r9,1),%r14
  822a35:	4e 8d 2c 11          	lea    (%rcx,%r10,1),%r13
  822a39:	4d 03 e2             	add    %r10,%r12
  822a3c:	c4 c1 7b 10 2c c3    	vmovsd (%r11,%rax,8),%xmm5
  822a42:	c4 c1 7b 10 64 c5 f8 	vmovsd -0x8(%r13,%rax,8),%xmm4
  822a49:	c4 41 7b 59 0c c0    	vmulsd (%r8,%rax,8),%xmm0,%xmm9
  822a4f:	c4 c1 53 5c 74 c6 f8 	vsubsd -0x8(%r14,%rax,8),%xmm5,%xmm6
  822a56:	c4 c1 5b 58 3c c4    	vaddsd (%r12,%rax,8),%xmm4,%xmm7
  822a5c:	c5 63 59 c6          	vmulsd %xmm6,%xmm3,%xmm8
  822a60:	c4 41 43 5c d8       	vsubsd %xmm8,%xmm7,%xmm11
  822a65:	c4 41 33 59 e3       	vmulsd %xmm11,%xmm9,%xmm12
  822a6a:	c5 7b 11 24 c6       	vmovsd %xmm12,(%rsi,%rax,8)
  822a6f:	48 ff c0             	inc    %rax
  822a72:	48 3b c2             	cmp    %rdx,%rax
  822a75:	72 c5                	jb     822a3c <pre_step3d_mod_mp_pre_step3d_tile_+0xe48c>
  822a77:	48 ff c7             	inc    %rdi
  822a7a:	4c 03 8d 78 fc ff ff 	add    -0x388(%rbp),%r9
  822a81:	4c 03 85 18 fc ff ff 	add    -0x3e8(%rbp),%r8
  822a88:	4c 03 95 f8 fb ff ff 	add    -0x408(%rbp),%r10
  822a8f:	48 3b bd 60 fc ff ff 	cmp    -0x3a0(%rbp),%rdi
  822a96:	0f 82 d2 fe ff ff    	jb     82296e <pre_step3d_mod_mp_pre_step3d_tile_+0xe3be>
  822a9c:	4c 8b a5 18 fd ff ff 	mov    -0x2e8(%rbp),%r12
  822aa3:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  822aaa:	4c 8b b5 20 fd ff ff 	mov    -0x2e0(%rbp),%r14
  822ab1:	4c 8b bd 78 fc ff ff 	mov    -0x388(%rbp),%r15
  822ab8:	48 8b 85 80 f8 ff ff 	mov    -0x780(%rbp),%rax
  822abf:	e9 19 04 00 00       	jmpq   822edd <pre_step3d_mod_mp_pre_step3d_tile_+0xe92d>
  822ac4:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  822aca:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  822ad0:	7d 17                	jge    822ae9 <pre_step3d_mod_mp_pre_step3d_tile_+0xe539>
  822ad2:	e9 0e 05 00 00       	jmpq   822fe5 <pre_step3d_mod_mp_pre_step3d_tile_+0xea35>
  822ad7:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  822add:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  822ae3:	0f 8c e6 03 00 00    	jl     822ecf <pre_step3d_mod_mp_pre_step3d_tile_+0xe91f>
  822ae9:	4c 8b 9d e8 f7 ff ff 	mov    -0x818(%rbp),%r11
  822af0:	33 ff                	xor    %edi,%edi
  822af2:	48 8b 95 20 fc ff ff 	mov    -0x3e0(%rbp),%rdx
  822af9:	45 33 c0             	xor    %r8d,%r8d
  822afc:	4c 8b 95 e0 f7 ff ff 	mov    -0x820(%rbp),%r10
  822b03:	4c 8b 8d d8 f7 ff ff 	mov    -0x828(%rbp),%r9
  822b0a:	48 8b 8d 88 f9 ff ff 	mov    -0x678(%rbp),%rcx
  822b11:	4c 03 da             	add    %rdx,%r11
  822b14:	4c 8b a5 f0 fc ff ff 	mov    -0x310(%rbp),%r12
  822b1b:	4c 03 d2             	add    %rdx,%r10
  822b1e:	4c 89 95 e8 f9 ff ff 	mov    %r10,-0x618(%rbp)
  822b25:	4c 03 ca             	add    %rdx,%r9
  822b28:	4c 89 8d e0 f9 ff ff 	mov    %r9,-0x620(%rbp)
  822b2f:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
  822b33:	33 c9                	xor    %ecx,%ecx
  822b35:	48 89 b5 d8 f9 ff ff 	mov    %rsi,-0x628(%rbp)
  822b3c:	33 d2                	xor    %edx,%edx
  822b3e:	4c 89 9d f0 f9 ff ff 	mov    %r11,-0x610(%rbp)
  822b45:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  822b4c:	c5 fb 10 1d ec 4e 0a 	vmovsd 0xa4eec(%rip),%xmm3        # 8c7a40 <__STRLITPACK_199.115+0x8b0>
  822b53:	00 
  822b54:	c5 f9 10 0d 84 43 0a 	vmovupd 0xa4384(%rip),%xmm1        # 8c6ee0 <__STRLITPACK_54.50+0xc0>
  822b5b:	00 
  822b5c:	c5 f9 10 15 3c 3e 0a 	vmovupd 0xa3e3c(%rip),%xmm2        # 8c69a0 <__STRLITPACK_19.34+0x10>
  822b63:	00 
  822b64:	8b 85 70 fc ff ff    	mov    -0x390(%rbp),%eax
  822b6a:	3b 85 d8 fc ff ff    	cmp    -0x328(%rbp),%eax
  822b70:	0f 8c 11 03 00 00    	jl     822e87 <pre_step3d_mod_mp_pre_step3d_tile_+0xe8d7>
  822b76:	49 83 fc 04          	cmp    $0x4,%r12
  822b7a:	0f 8c 03 2f 00 00    	jl     825a83 <pre_step3d_mod_mp_pre_step3d_tile_+0x114d3>
  822b80:	48 8b b5 e8 f9 ff ff 	mov    -0x618(%rbp),%rsi
  822b87:	4c 8b b5 70 f9 ff ff 	mov    -0x690(%rbp),%r14
  822b8e:	4c 8b ad 68 f9 ff ff 	mov    -0x698(%rbp),%r13
  822b95:	4c 8b 9d 28 fd ff ff 	mov    -0x2d8(%rbp),%r11
  822b9c:	4c 8d 3c 16          	lea    (%rsi,%rdx,1),%r15
  822ba0:	48 8b b5 e0 f9 ff ff 	mov    -0x620(%rbp),%rsi
  822ba7:	4d 03 f0             	add    %r8,%r14
  822baa:	4c 89 bd 10 fa ff ff 	mov    %r15,-0x5f0(%rbp)
  822bb1:	4d 03 e8             	add    %r8,%r13
  822bb4:	4c 8b bd d8 f9 ff ff 	mov    -0x628(%rbp),%r15
  822bbb:	4c 8b 95 20 f9 ff ff 	mov    -0x6e0(%rbp),%r10
  822bc2:	48 8d 04 16          	lea    (%rsi,%rdx,1),%rax
  822bc6:	48 89 85 08 fa ff ff 	mov    %rax,-0x5f8(%rbp)
  822bcd:	48 8b 85 18 f9 ff ff 	mov    -0x6e8(%rbp),%rax
  822bd4:	49 8d 34 17          	lea    (%r15,%rdx,1),%rsi
  822bd8:	4c 8b 8d f0 f9 ff ff 	mov    -0x610(%rbp),%r9
  822bdf:	4c 03 d1             	add    %rcx,%r10
  822be2:	4c 89 9d 90 fc ff ff 	mov    %r11,-0x370(%rbp)
  822be9:	45 33 db             	xor    %r11d,%r11d
  822bec:	48 89 b5 58 fd ff ff 	mov    %rsi,-0x2a8(%rbp)
  822bf3:	4c 8d 3c 08          	lea    (%rax,%rcx,1),%r15
  822bf7:	48 8b 85 e8 f8 ff ff 	mov    -0x718(%rbp),%rax
  822bfe:	33 f6                	xor    %esi,%esi
  822c00:	4c 89 bd 00 fa ff ff 	mov    %r15,-0x600(%rbp)
  822c07:	4c 03 ca             	add    %rdx,%r9
  822c0a:	4c 8b bd b8 f9 ff ff 	mov    -0x648(%rbp),%r15
  822c11:	49 f7 df             	neg    %r15
  822c14:	48 c1 e0 03          	shl    $0x3,%rax
  822c18:	48 f7 d8             	neg    %rax
  822c1b:	48 03 85 c0 f9 ff ff 	add    -0x640(%rbp),%rax
  822c22:	49 03 c7             	add    %r15,%rax
  822c25:	4c 8b bd 90 f9 ff ff 	mov    -0x670(%rbp),%r15
  822c2c:	4c 89 85 f8 f9 ff ff 	mov    %r8,-0x608(%rbp)
  822c33:	4c 89 ad 50 fd ff ff 	mov    %r13,-0x2b0(%rbp)
  822c3a:	4a 8d 04 f8          	lea    (%rax,%r15,8),%rax
  822c3e:	4c 89 b5 48 fd ff ff 	mov    %r14,-0x2b8(%rbp)
  822c45:	48 89 95 20 fb ff ff 	mov    %rdx,-0x4e0(%rbp)
  822c4c:	48 89 8d 28 fb ff ff 	mov    %rcx,-0x4d8(%rbp)
  822c53:	4c 89 85 30 fb ff ff 	mov    %r8,-0x4d0(%rbp)
  822c5a:	48 89 bd 38 fb ff ff 	mov    %rdi,-0x4c8(%rbp)
  822c61:	48 03 85 00 f9 ff ff 	add    -0x700(%rbp),%rax
  822c68:	4c 8b b5 f8 f9 ff ff 	mov    -0x608(%rbp),%r14
  822c6f:	48 89 f2             	mov    %rsi,%rdx
  822c72:	48 8b 8d 00 fa ff ff 	mov    -0x600(%rbp),%rcx
  822c79:	48 8b bd 08 fa ff ff 	mov    -0x5f8(%rbp),%rdi
  822c80:	4c 8b 85 10 fa ff ff 	mov    -0x5f0(%rbp),%r8
  822c87:	4c 8b a5 08 fc ff ff 	mov    -0x3f8(%rbp),%r12
  822c8e:	4c 8b ad 10 fd ff ff 	mov    -0x2f0(%rbp),%r13
  822c95:	c4 c1 79 10 24 06    	vmovupd (%r14,%rax,1),%xmm4
  822c9b:	c4 c1 59 5c 6c 06 f8 	vsubpd -0x8(%r14,%rax,1),%xmm4,%xmm5
  822ca2:	c5 71 59 f5          	vmulpd %xmm5,%xmm1,%xmm14
  822ca6:	4d 8d 3c 32          	lea    (%r10,%rsi,1),%r15
  822caa:	c4 c1 7b 10 37       	vmovsd (%r15),%xmm6
  822caf:	c4 81 49 16 3c 27    	vmovhpd (%r15,%r12,1),%xmm6,%xmm7
  822cb5:	4c 8d 3c 17          	lea    (%rdi,%rdx,1),%r15
  822cb9:	c4 41 7b 10 07       	vmovsd (%r15),%xmm8
  822cbe:	c4 01 39 16 1c 2f    	vmovhpd (%r15,%r13,1),%xmm8,%xmm11
  822cc4:	4c 8b bd 58 fd ff ff 	mov    -0x2a8(%rbp),%r15
  822ccb:	c5 41 59 fa          	vmulpd %xmm2,%xmm7,%xmm15
  822ccf:	4c 03 fa             	add    %rdx,%r15
  822cd2:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  822cd7:	c4 01 31 16 24 2f    	vmovhpd (%r15,%r13,1),%xmm9,%xmm12
  822cdd:	c4 41 21 58 ec       	vaddpd %xmm12,%xmm11,%xmm13
  822ce2:	c4 c1 11 5c e6       	vsubpd %xmm14,%xmm13,%xmm4
  822ce7:	c5 81 59 ec          	vmulpd %xmm4,%xmm15,%xmm5
  822ceb:	4c 8b bd 48 fd ff ff 	mov    -0x2b8(%rbp),%r15
  822cf2:	c4 81 79 11 2c df    	vmovupd %xmm5,(%r15,%r11,8)
  822cf8:	c4 c1 79 10 74 06 10 	vmovupd 0x10(%r14,%rax,1),%xmm6
  822cff:	c4 c1 49 5c 7c 06 08 	vsubpd 0x8(%r14,%rax,1),%xmm6,%xmm7
  822d06:	c5 f1 59 e7          	vmulpd %xmm7,%xmm1,%xmm4
  822d0a:	49 83 c6 20          	add    $0x20,%r14
  822d0e:	4c 8d 3c 31          	lea    (%rcx,%rsi,1),%r15
  822d12:	c4 41 7b 10 07       	vmovsd (%r15),%xmm8
  822d17:	4a 8d 34 a6          	lea    (%rsi,%r12,4),%rsi
  822d1b:	c4 01 39 16 0c 27    	vmovhpd (%r15,%r12,1),%xmm8,%xmm9
  822d21:	4d 8d 3c 11          	lea    (%r9,%rdx,1),%r15
  822d25:	c4 41 7b 10 1f       	vmovsd (%r15),%xmm11
  822d2a:	c4 01 21 16 2c 2f    	vmovhpd (%r15,%r13,1),%xmm11,%xmm13
  822d30:	4d 8d 3c 10          	lea    (%r8,%rdx,1),%r15
  822d34:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  822d39:	4a 8d 14 aa          	lea    (%rdx,%r13,4),%rdx
  822d3d:	c4 01 19 16 34 2f    	vmovhpd (%r15,%r13,1),%xmm12,%xmm14
  822d43:	c4 41 11 58 fe       	vaddpd %xmm14,%xmm13,%xmm15
  822d48:	c5 b1 59 ea          	vmulpd %xmm2,%xmm9,%xmm5
  822d4c:	c5 81 5c f4          	vsubpd %xmm4,%xmm15,%xmm6
  822d50:	c5 d1 59 fe          	vmulpd %xmm6,%xmm5,%xmm7
  822d54:	4c 8b bd 50 fd ff ff 	mov    -0x2b0(%rbp),%r15
  822d5b:	c4 81 79 11 7c df 10 	vmovupd %xmm7,0x10(%r15,%r11,8)
  822d62:	49 83 c3 04          	add    $0x4,%r11
  822d66:	4c 3b 9d 28 fd ff ff 	cmp    -0x2d8(%rbp),%r11
  822d6d:	0f 82 22 ff ff ff    	jb     822c95 <pre_step3d_mod_mp_pre_step3d_tile_+0xe6e5>
  822d73:	48 8b 95 20 fb ff ff 	mov    -0x4e0(%rbp),%rdx
  822d7a:	48 8b 8d 28 fb ff ff 	mov    -0x4d8(%rbp),%rcx
  822d81:	4c 8b 85 30 fb ff ff 	mov    -0x4d0(%rbp),%r8
  822d88:	48 8b bd 38 fb ff ff 	mov    -0x4c8(%rbp),%rdi
  822d8f:	4c 8b a5 f0 fc ff ff 	mov    -0x310(%rbp),%r12
  822d96:	4c 8b ad 10 fd ff ff 	mov    -0x2f0(%rbp),%r13
  822d9d:	48 8b 85 90 fc ff ff 	mov    -0x370(%rbp),%rax
  822da4:	4c 8b 9d 08 fc ff ff 	mov    -0x3f8(%rbp),%r11
  822dab:	4c 0f af e8          	imul   %rax,%r13
  822daf:	4c 0f af d8          	imul   %rax,%r11
  822db3:	49 3b c4             	cmp    %r12,%rax
  822db6:	0f 83 cb 00 00 00    	jae    822e87 <pre_step3d_mod_mp_pre_step3d_tile_+0xe8d7>
  822dbc:	4c 8b 95 78 f9 ff ff 	mov    -0x688(%rbp),%r10
  822dc3:	4c 8b 8d 70 f9 ff ff 	mov    -0x690(%rbp),%r9
  822dca:	48 8b b5 58 f9 ff ff 	mov    -0x6a8(%rbp),%rsi
  822dd1:	48 8b 85 20 f9 ff ff 	mov    -0x6e0(%rbp),%rax
  822dd8:	4d 03 d0             	add    %r8,%r10
  822ddb:	4c 8b bd e0 f9 ff ff 	mov    -0x620(%rbp),%r15
  822de2:	4d 03 c8             	add    %r8,%r9
  822de5:	4c 8b b5 d8 f9 ff ff 	mov    -0x628(%rbp),%r14
  822dec:	49 03 f0             	add    %r8,%rsi
  822def:	48 89 8d 28 fb ff ff 	mov    %rcx,-0x4d8(%rbp)
  822df6:	48 03 c1             	add    %rcx,%rax
  822df9:	4c 89 85 30 fb ff ff 	mov    %r8,-0x4d0(%rbp)
  822e00:	4c 03 fa             	add    %rdx,%r15
  822e03:	48 89 bd 38 fb ff ff 	mov    %rdi,-0x4c8(%rbp)
  822e0a:	4c 03 f2             	add    %rdx,%r14
  822e0d:	48 8b 8d 90 fc ff ff 	mov    -0x370(%rbp),%rcx
  822e14:	48 8b bd 08 fc ff ff 	mov    -0x3f8(%rbp),%rdi
  822e1b:	4c 8b 85 10 fd ff ff 	mov    -0x2f0(%rbp),%r8
  822e22:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  822e29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  822e30:	c4 c1 7b 10 2c ca    	vmovsd (%r10,%rcx,8),%xmm5
  822e36:	c4 81 7b 10 64 3d 00 	vmovsd 0x0(%r13,%r15,1),%xmm4
  822e3d:	c4 41 7b 59 0c 03    	vmulsd (%r11,%rax,1),%xmm0,%xmm9
  822e43:	4c 03 df             	add    %rdi,%r11
  822e46:	c5 d3 5c 74 ce f8    	vsubsd -0x8(%rsi,%rcx,8),%xmm5,%xmm6
  822e4c:	c4 81 5b 58 7c 35 00 	vaddsd 0x0(%r13,%r14,1),%xmm4,%xmm7
  822e53:	c5 63 59 c6          	vmulsd %xmm6,%xmm3,%xmm8
  822e57:	4d 03 e8             	add    %r8,%r13
  822e5a:	c4 41 43 5c d8       	vsubsd %xmm8,%xmm7,%xmm11
  822e5f:	c4 41 33 59 e3       	vmulsd %xmm11,%xmm9,%xmm12
  822e64:	c4 41 7b 11 24 c9    	vmovsd %xmm12,(%r9,%rcx,8)
  822e6a:	48 ff c1             	inc    %rcx
  822e6d:	49 3b cc             	cmp    %r12,%rcx
  822e70:	72 be                	jb     822e30 <pre_step3d_mod_mp_pre_step3d_tile_+0xe880>
  822e72:	48 8b 8d 28 fb ff ff 	mov    -0x4d8(%rbp),%rcx
  822e79:	4c 8b 85 30 fb ff ff 	mov    -0x4d0(%rbp),%r8
  822e80:	48 8b bd 38 fb ff ff 	mov    -0x4c8(%rbp),%rdi
  822e87:	48 ff c7             	inc    %rdi
  822e8a:	4c 03 85 78 fc ff ff 	add    -0x388(%rbp),%r8
  822e91:	48 03 8d 18 fc ff ff 	add    -0x3e8(%rbp),%rcx
  822e98:	48 03 95 f8 fb ff ff 	add    -0x408(%rbp),%rdx
  822e9f:	48 3b bd 60 fc ff ff 	cmp    -0x3a0(%rbp),%rdi
  822ea6:	0f 82 b8 fc ff ff    	jb     822b64 <pre_step3d_mod_mp_pre_step3d_tile_+0xe5b4>
  822eac:	4c 8b a5 18 fd ff ff 	mov    -0x2e8(%rbp),%r12
  822eb3:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  822eba:	4c 8b b5 20 fd ff ff 	mov    -0x2e0(%rbp),%r14
  822ec1:	4c 8b bd 78 fc ff ff 	mov    -0x388(%rbp),%r15
  822ec8:	48 8b 85 80 f8 ff ff 	mov    -0x780(%rbp),%rax
  822ecf:	48 83 bd 10 fd ff ff 	cmpq   $0x8,-0x2f0(%rbp)
  822ed6:	08 
  822ed7:	0f 85 08 01 00 00    	jne    822fe5 <pre_step3d_mod_mp_pre_step3d_tile_+0xea35>
  822edd:	48 83 bd d0 fb ff ff 	cmpq   $0x8,-0x430(%rbp)
  822ee4:	08 
  822ee5:	0f 85 fa 00 00 00    	jne    822fe5 <pre_step3d_mod_mp_pre_step3d_tile_+0xea35>
  822eeb:	48 8b 95 10 f8 ff ff 	mov    -0x7f0(%rbp),%rdx
  822ef2:	33 c9                	xor    %ecx,%ecx
  822ef4:	4c 8b 85 e0 f1 ff ff 	mov    -0xe20(%rbp),%r8
  822efb:	45 33 c9             	xor    %r9d,%r9d
  822efe:	48 3b 95 08 f8 ff ff 	cmp    -0x7f8(%rbp),%rdx
  822f05:	48 8b 95 d8 fa ff ff 	mov    -0x528(%rbp),%rdx
  822f0c:	0f 8c 66 04 00 00    	jl     823378 <pre_step3d_mod_mp_pre_step3d_tile_+0xedc8>
  822f12:	4c 8b 95 88 f7 ff ff 	mov    -0x878(%rbp),%r10
  822f19:	4c 8b 9d 20 fc ff ff 	mov    -0x3e0(%rbp),%r11
  822f20:	48 8b bd 68 f7 ff ff 	mov    -0x898(%rbp),%rdi
  822f27:	4c 8b ad d8 fb ff ff 	mov    -0x428(%rbp),%r13
  822f2e:	44 8b bd d0 fc ff ff 	mov    -0x330(%rbp),%r15d
  822f35:	4d 03 d3             	add    %r11,%r10
  822f38:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  822f3f:	49 03 fb             	add    %r11,%rdi
  822f42:	44 3b bd d8 fc ff ff 	cmp    -0x328(%rbp),%r15d
  822f49:	7c 74                	jl     822fbf <pre_step3d_mod_mp_pre_step3d_tile_+0xea0f>
  822f4b:	49 83 fe 04          	cmp    $0x4,%r14
  822f4f:	0f 8c ed 29 00 00    	jl     825942 <pre_step3d_mod_mp_pre_step3d_tile_+0x11392>
  822f55:	4c 8b a5 18 fd ff ff 	mov    -0x2e8(%rbp),%r12
  822f5c:	45 33 db             	xor    %r11d,%r11d
  822f5f:	4d 89 e7             	mov    %r12,%r15
  822f62:	4a 8d 34 0f          	lea    (%rdi,%r9,1),%rsi
  822f66:	4b 8d 04 0a          	lea    (%r10,%r9,1),%rax
  822f6a:	c4 a1 7d 10 0c de    	vmovupd (%rsi,%r11,8),%ymm1
  822f70:	c4 a1 75 5c 14 d8    	vsubpd (%rax,%r11,8),%ymm1,%ymm2
  822f76:	c4 81 6d 59 1c d8    	vmulpd (%r8,%r11,8),%ymm2,%ymm3
  822f7c:	c4 a1 7d 11 1c da    	vmovupd %ymm3,(%rdx,%r11,8)
  822f82:	49 83 c3 04          	add    $0x4,%r11
  822f86:	4d 3b df             	cmp    %r15,%r11
  822f89:	72 df                	jb     822f6a <pre_step3d_mod_mp_pre_step3d_tile_+0xe9ba>
  822f8b:	44 8b bd d0 fc ff ff 	mov    -0x330(%rbp),%r15d
  822f92:	4d 3b e6             	cmp    %r14,%r12
  822f95:	73 28                	jae    822fbf <pre_step3d_mod_mp_pre_step3d_tile_+0xea0f>
  822f97:	4a 8d 34 0f          	lea    (%rdi,%r9,1),%rsi
  822f9b:	4b 8d 04 0a          	lea    (%r10,%r9,1),%rax
  822f9f:	c4 a1 7b 10 0c e6    	vmovsd (%rsi,%r12,8),%xmm1
  822fa5:	c4 a1 73 5c 14 e0    	vsubsd (%rax,%r12,8),%xmm1,%xmm2
  822fab:	c4 81 6b 59 1c e0    	vmulsd (%r8,%r12,8),%xmm2,%xmm3
  822fb1:	c4 a1 7b 11 1c e2    	vmovsd %xmm3,(%rdx,%r12,8)
  822fb7:	49 ff c4             	inc    %r12
  822fba:	4d 3b e6             	cmp    %r14,%r12
  822fbd:	72 e0                	jb     822f9f <pre_step3d_mod_mp_pre_step3d_tile_+0xe9ef>
  822fbf:	48 ff c1             	inc    %rcx
  822fc2:	4d 03 c5             	add    %r13,%r8
  822fc5:	48 03 95 78 fc ff ff 	add    -0x388(%rbp),%rdx
  822fcc:	4c 03 8d f8 fb ff ff 	add    -0x408(%rbp),%r9
  822fd3:	48 3b 8d 40 fc ff ff 	cmp    -0x3c0(%rbp),%rcx
  822fda:	0f 82 62 ff ff ff    	jb     822f42 <pre_step3d_mod_mp_pre_step3d_tile_+0xe992>
  822fe0:	e9 77 03 00 00       	jmpq   82335c <pre_step3d_mod_mp_pre_step3d_tile_+0xedac>
  822fe5:	48 8b 95 10 f8 ff ff 	mov    -0x7f0(%rbp),%rdx
  822fec:	45 33 c0             	xor    %r8d,%r8d
  822fef:	33 ff                	xor    %edi,%edi
  822ff1:	33 c9                	xor    %ecx,%ecx
  822ff3:	48 3b 95 08 f8 ff ff 	cmp    -0x7f8(%rbp),%rdx
  822ffa:	ba 00 00 00 00       	mov    $0x0,%edx
  822fff:	0f 8c 73 03 00 00    	jl     823378 <pre_step3d_mod_mp_pre_step3d_tile_+0xedc8>
  823005:	4c 8b 9d 20 fc ff ff 	mov    -0x3e0(%rbp),%r11
  82300c:	4c 8b 8d c8 f7 ff ff 	mov    -0x838(%rbp),%r9
  823013:	4c 8b 95 d0 f7 ff ff 	mov    -0x830(%rbp),%r10
  82301a:	48 8b b5 b0 f7 ff ff 	mov    -0x850(%rbp),%rsi
  823021:	4c 8b ad 10 fd ff ff 	mov    -0x2f0(%rbp),%r13
  823028:	4d 03 cb             	add    %r11,%r9
  82302b:	4c 89 8d a8 fa ff ff 	mov    %r9,-0x558(%rbp)
  823032:	4d 03 d3             	add    %r11,%r10
  823035:	4c 8b 8d c0 f7 ff ff 	mov    -0x840(%rbp),%r9
  82303c:	4c 89 95 a0 fc ff ff 	mov    %r10,-0x360(%rbp)
  823043:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  82304a:	4d 03 cb             	add    %r11,%r9
  82304d:	4c 89 8d 18 fa ff ff 	mov    %r9,-0x5e8(%rbp)
  823054:	4c 03 de             	add    %rsi,%r11
  823057:	4c 89 9d 98 fc ff ff 	mov    %r11,-0x368(%rbp)
  82305e:	8b 85 d0 fc ff ff    	mov    -0x330(%rbp),%eax
  823064:	3b 85 d8 fc ff ff    	cmp    -0x328(%rbp),%eax
  82306a:	0f 8c c7 02 00 00    	jl     823337 <pre_step3d_mod_mp_pre_step3d_tile_+0xed87>
  823070:	49 83 fe 04          	cmp    $0x4,%r14
  823074:	0f 8c 01 2a 00 00    	jl     825a7b <pre_step3d_mod_mp_pre_step3d_tile_+0x114cb>
  82307a:	48 8b 85 d8 fa ff ff 	mov    -0x528(%rbp),%rax
  823081:	48 03 c1             	add    %rcx,%rax
  823084:	48 89 85 f0 fa ff ff 	mov    %rax,-0x510(%rbp)
  82308b:	48 83 e0 0f          	and    $0xf,%rax
  82308f:	85 c0                	test   %eax,%eax
  823091:	74 0d                	je     8230a0 <pre_step3d_mod_mp_pre_step3d_tile_+0xeaf0>
  823093:	a8 07                	test   $0x7,%al
  823095:	0f 85 e0 29 00 00    	jne    825a7b <pre_step3d_mod_mp_pre_step3d_tile_+0x114cb>
  82309b:	b8 01 00 00 00       	mov    $0x1,%eax
  8230a0:	41 89 c3             	mov    %eax,%r11d
  8230a3:	49 8d 73 04          	lea    0x4(%r11),%rsi
  8230a7:	4c 3b f6             	cmp    %rsi,%r14
  8230aa:	0f 8c cb 29 00 00    	jl     825a7b <pre_step3d_mod_mp_pre_step3d_tile_+0x114cb>
  8230b0:	4c 8b bd a0 fc ff ff 	mov    -0x360(%rbp),%r15
  8230b7:	45 33 c9             	xor    %r9d,%r9d
  8230ba:	8b b5 38 fc ff ff    	mov    -0x3c8(%rbp),%esi
  8230c0:	41 89 f4             	mov    %esi,%r12d
  8230c3:	44 2b e0             	sub    %eax,%r12d
  8230c6:	45 33 d2             	xor    %r10d,%r10d
  8230c9:	41 83 e4 03          	and    $0x3,%r12d
  8230cd:	4d 03 f8             	add    %r8,%r15
  8230d0:	4c 89 bd 68 fd ff ff 	mov    %r15,-0x298(%rbp)
  8230d7:	41 f7 dc             	neg    %r12d
  8230da:	4c 8b bd 98 fc ff ff 	mov    -0x368(%rbp),%r15
  8230e1:	44 03 e6             	add    %esi,%r12d
  8230e4:	4d 63 e4             	movslq %r12d,%r12
  8230e7:	33 f6                	xor    %esi,%esi
  8230e9:	4d 03 f8             	add    %r8,%r15
  8230ec:	4c 89 bd b0 fc ff ff 	mov    %r15,-0x350(%rbp)
  8230f3:	4c 8b bd 30 fc ff ff 	mov    -0x3d0(%rbp),%r15
  8230fa:	4c 03 ff             	add    %rdi,%r15
  8230fd:	4c 89 bd a8 fc ff ff 	mov    %r15,-0x358(%rbp)
  823104:	85 c0                	test   %eax,%eax
  823106:	76 67                	jbe    82316f <pre_step3d_mod_mp_pre_step3d_tile_+0xebbf>
  823108:	4c 89 85 40 fb ff ff 	mov    %r8,-0x4c0(%rbp)
  82310f:	48 89 95 48 fb ff ff 	mov    %rdx,-0x4b8(%rbp)
  823116:	4c 89 f8             	mov    %r15,%rax
  823119:	48 8b 95 b0 fc ff ff 	mov    -0x350(%rbp),%rdx
  823120:	4c 8b 85 68 fd ff ff 	mov    -0x298(%rbp),%r8
  823127:	4c 8b b5 f0 fa ff ff 	mov    -0x510(%rbp),%r14
  82312e:	4c 8b bd d0 fb ff ff 	mov    -0x430(%rbp),%r15
  823135:	c4 a1 7b 10 0c 06    	vmovsd (%rsi,%r8,1),%xmm1
  82313b:	c5 f3 5c 14 16       	vsubsd (%rsi,%rdx,1),%xmm1,%xmm2
  823140:	49 03 f5             	add    %r13,%rsi
  823143:	c4 c1 6b 59 1c 02    	vmulsd (%r10,%rax,1),%xmm2,%xmm3
  823149:	4d 03 d7             	add    %r15,%r10
  82314c:	c4 81 7b 11 1c ce    	vmovsd %xmm3,(%r14,%r9,8)
  823152:	49 ff c1             	inc    %r9
  823155:	4d 3b cb             	cmp    %r11,%r9
  823158:	72 db                	jb     823135 <pre_step3d_mod_mp_pre_step3d_tile_+0xeb85>
  82315a:	4c 8b 85 40 fb ff ff 	mov    -0x4c0(%rbp),%r8
  823161:	48 8b 95 48 fb ff ff 	mov    -0x4b8(%rbp),%rdx
  823168:	4c 8b b5 20 fd ff ff 	mov    -0x2e0(%rbp),%r14
  82316f:	4c 8b bd 18 fa ff ff 	mov    -0x5e8(%rbp),%r15
  823176:	4d 89 e9             	mov    %r13,%r9
  823179:	48 8b b5 50 f9 ff ff 	mov    -0x6b0(%rbp),%rsi
  823180:	48 8b 85 a8 fa ff ff 	mov    -0x558(%rbp),%rax
  823187:	4c 8b 95 d0 fb ff ff 	mov    -0x430(%rbp),%r10
  82318e:	4d 03 f8             	add    %r8,%r15
  823191:	4c 89 bd 20 fa ff ff 	mov    %r15,-0x5e0(%rbp)
  823198:	48 03 f1             	add    %rcx,%rsi
  82319b:	4c 8b bd 48 f9 ff ff 	mov    -0x6b8(%rbp),%r15
  8231a2:	49 03 c0             	add    %r8,%rax
  8231a5:	4c 89 a5 60 fd ff ff 	mov    %r12,-0x2a0(%rbp)
  8231ac:	48 89 8d 50 fb ff ff 	mov    %rcx,-0x4b0(%rbp)
  8231b3:	48 89 bd 58 fb ff ff 	mov    %rdi,-0x4a8(%rbp)
  8231ba:	4c 03 ff             	add    %rdi,%r15
  8231bd:	4c 89 85 40 fb ff ff 	mov    %r8,-0x4c0(%rbp)
  8231c4:	48 89 95 48 fb ff ff 	mov    %rdx,-0x4b8(%rbp)
  8231cb:	4d 0f af d3          	imul   %r11,%r10
  8231cf:	4d 0f af cb          	imul   %r11,%r9
  8231d3:	4d 89 fe             	mov    %r15,%r14
  8231d6:	48 8b 95 20 fa ff ff 	mov    -0x5e0(%rbp),%rdx
  8231dd:	48 8b 8d a8 fc ff ff 	mov    -0x358(%rbp),%rcx
  8231e4:	48 8b bd b0 fc ff ff 	mov    -0x350(%rbp),%rdi
  8231eb:	4c 8b 85 f0 fa ff ff 	mov    -0x510(%rbp),%r8
  8231f2:	4c 8b a5 d0 fb ff ff 	mov    -0x430(%rbp),%r12
  8231f9:	4c 8b bd 68 fd ff ff 	mov    -0x298(%rbp),%r15
  823200:	4d 03 f9             	add    %r9,%r15
  823203:	c4 c1 7b 10 0f       	vmovsd (%r15),%xmm1
  823208:	c4 81 71 16 1c 2f    	vmovhpd (%r15,%r13,1),%xmm1,%xmm3
  82320e:	4e 8d 3c 0f          	lea    (%rdi,%r9,1),%r15
  823212:	c4 c1 7b 10 17       	vmovsd (%r15),%xmm2
  823217:	c4 81 69 16 24 2f    	vmovhpd (%r15,%r13,1),%xmm2,%xmm4
  82321d:	4e 8d 3c 11          	lea    (%rcx,%r10,1),%r15
  823221:	c4 c1 7b 10 2f       	vmovsd (%r15),%xmm5
  823226:	c4 81 51 16 3c 27    	vmovhpd (%r15,%r12,1),%xmm5,%xmm7
  82322c:	4e 8d 3c 08          	lea    (%rax,%r9,1),%r15
  823230:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  823235:	c4 01 31 16 24 2f    	vmovhpd (%r15,%r13,1),%xmm9,%xmm12
  82323b:	4e 8d 3c 0a          	lea    (%rdx,%r9,1),%r15
  82323f:	c4 41 7b 10 1f       	vmovsd (%r15),%xmm11
  823244:	4f 8d 0c a9          	lea    (%r9,%r13,4),%r9
  823248:	c4 01 21 16 2c 2f    	vmovhpd (%r15,%r13,1),%xmm11,%xmm13
  82324e:	4f 8d 3c 16          	lea    (%r14,%r10,1),%r15
  823252:	c5 e1 5c f4          	vsubpd %xmm4,%xmm3,%xmm6
  823256:	c4 41 19 5c fd       	vsubpd %xmm13,%xmm12,%xmm15
  82325b:	c5 49 59 c7          	vmulpd %xmm7,%xmm6,%xmm8
  82325f:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  823264:	4f 8d 14 a2          	lea    (%r10,%r12,4),%r10
  823268:	c4 81 09 16 0c 27    	vmovhpd (%r15,%r12,1),%xmm14,%xmm1
  82326e:	c5 81 59 d1          	vmulpd %xmm1,%xmm15,%xmm2
  823272:	c4 01 79 11 04 d8    	vmovupd %xmm8,(%r8,%r11,8)
  823278:	c4 a1 79 11 54 de 10 	vmovupd %xmm2,0x10(%rsi,%r11,8)
  82327f:	49 83 c3 04          	add    $0x4,%r11
  823283:	4c 3b 9d 60 fd ff ff 	cmp    -0x2a0(%rbp),%r11
  82328a:	0f 82 69 ff ff ff    	jb     8231f9 <pre_step3d_mod_mp_pre_step3d_tile_+0xec49>
  823290:	4c 8b a5 60 fd ff ff 	mov    -0x2a0(%rbp),%r12
  823297:	48 8b 8d 50 fb ff ff 	mov    -0x4b0(%rbp),%rcx
  82329e:	48 8b bd 58 fb ff ff 	mov    -0x4a8(%rbp),%rdi
  8232a5:	4c 8b 85 40 fb ff ff 	mov    -0x4c0(%rbp),%r8
  8232ac:	48 8b 95 48 fb ff ff 	mov    -0x4b8(%rbp),%rdx
  8232b3:	4c 8b b5 20 fd ff ff 	mov    -0x2e0(%rbp),%r14
  8232ba:	4d 89 eb             	mov    %r13,%r11
  8232bd:	4c 8b 8d d0 fb ff ff 	mov    -0x430(%rbp),%r9
  8232c4:	4d 0f af dc          	imul   %r12,%r11
  8232c8:	4d 0f af cc          	imul   %r12,%r9
  8232cc:	4d 3b e6             	cmp    %r14,%r12
  8232cf:	73 66                	jae    823337 <pre_step3d_mod_mp_pre_step3d_tile_+0xed87>
  8232d1:	4c 8b bd 30 fc ff ff 	mov    -0x3d0(%rbp),%r15
  8232d8:	48 8b b5 d8 fa ff ff 	mov    -0x528(%rbp),%rsi
  8232df:	48 8b 85 a0 fc ff ff 	mov    -0x360(%rbp),%rax
  8232e6:	4c 8b 95 98 fc ff ff 	mov    -0x368(%rbp),%r10
  8232ed:	4c 03 ff             	add    %rdi,%r15
  8232f0:	48 03 f1             	add    %rcx,%rsi
  8232f3:	48 89 95 48 fb ff ff 	mov    %rdx,-0x4b8(%rbp)
  8232fa:	49 03 c0             	add    %r8,%rax
  8232fd:	4c 89 fa             	mov    %r15,%rdx
  823300:	4d 03 d0             	add    %r8,%r10
  823303:	4c 8b bd d0 fb ff ff 	mov    -0x430(%rbp),%r15
  82330a:	c4 c1 7b 10 0c 03    	vmovsd (%r11,%rax,1),%xmm1
  823310:	c4 81 73 5c 14 13    	vsubsd (%r11,%r10,1),%xmm1,%xmm2
  823316:	4d 03 dd             	add    %r13,%r11
  823319:	c4 c1 6b 59 1c 11    	vmulsd (%r9,%rdx,1),%xmm2,%xmm3
  82331f:	4d 03 cf             	add    %r15,%r9
  823322:	c4 a1 7b 11 1c e6    	vmovsd %xmm3,(%rsi,%r12,8)
  823328:	49 ff c4             	inc    %r12
  82332b:	4d 3b e6             	cmp    %r14,%r12
  82332e:	72 da                	jb     82330a <pre_step3d_mod_mp_pre_step3d_tile_+0xed5a>
  823330:	48 8b 95 48 fb ff ff 	mov    -0x4b8(%rbp),%rdx
  823337:	48 ff c2             	inc    %rdx
  82333a:	4c 03 85 f8 fb ff ff 	add    -0x408(%rbp),%r8
  823341:	48 03 bd d8 fb ff ff 	add    -0x428(%rbp),%rdi
  823348:	48 03 8d 78 fc ff ff 	add    -0x388(%rbp),%rcx
  82334f:	48 3b 95 40 fc ff ff 	cmp    -0x3c0(%rbp),%rdx
  823356:	0f 82 02 fd ff ff    	jb     82305e <pre_step3d_mod_mp_pre_step3d_tile_+0xeaae>
  82335c:	4c 8b a5 18 fd ff ff 	mov    -0x2e8(%rbp),%r12
  823363:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  82336a:	4c 8b bd 78 fc ff ff 	mov    -0x388(%rbp),%r15
  823371:	48 8b 85 80 f8 ff ff 	mov    -0x780(%rbp),%rax
  823378:	48 8b 95 d8 f8 ff ff 	mov    -0x728(%rbp),%rdx
  82337f:	48 8b 8d e0 f8 ff ff 	mov    -0x720(%rbp),%rcx
  823386:	f6 44 0a 08 01       	testb  $0x1,0x8(%rdx,%rcx,1)
  82338b:	0f 85 af 00 00 00    	jne    823440 <pre_step3d_mod_mp_pre_step3d_tile_+0xee90>
  823391:	48 8b 95 28 f8 ff ff 	mov    -0x7d8(%rbp),%rdx
  823398:	48 8b 8d 30 f8 ff ff 	mov    -0x7d0(%rbp),%rcx
  82339f:	f6 04 0a 01          	testb  $0x1,(%rdx,%rcx,1)
  8233a3:	0f 85 97 00 00 00    	jne    823440 <pre_step3d_mod_mp_pre_step3d_tile_+0xee90>
  8233a9:	48 8b 95 38 f7 ff ff 	mov    -0x8c8(%rbp),%rdx
  8233b0:	48 8b 8d 40 f7 ff ff 	mov    -0x8c0(%rbp),%rcx
  8233b7:	4c 8b 84 0a 18 01 00 	mov    0x118(%rdx,%rcx,1),%r8
  8233be:	00 
  8233bf:	49 f7 d8             	neg    %r8
  8233c2:	4c 03 85 30 f7 ff ff 	add    -0x8d0(%rbp),%r8
  8233c9:	4c 0f af 84 0a 10 01 	imul   0x110(%rdx,%rcx,1),%r8
  8233d0:	00 00 
  8233d2:	48 8b bc 0a d8 00 00 	mov    0xd8(%rdx,%rcx,1),%rdi
  8233d9:	00 
  8233da:	42 f6 04 07 01       	testb  $0x1,(%rdi,%r8,1)
  8233df:	74 5f                	je     823440 <pre_step3d_mod_mp_pre_step3d_tile_+0xee90>
  8233e1:	8b 95 d0 fc ff ff    	mov    -0x330(%rbp),%edx
  8233e7:	3b 95 d8 fc ff ff    	cmp    -0x328(%rbp),%edx
  8233ed:	7c 6b                	jl     82345a <pre_step3d_mod_mp_pre_step3d_tile_+0xeeaa>
  8233ef:	83 bd 28 f3 ff ff 0c 	cmpl   $0xc,-0xcd8(%rbp)
  8233f6:	0f 8e 4e 25 00 00    	jle    82594a <pre_step3d_mod_mp_pre_step3d_tile_+0x1139a>
  8233fc:	83 bd e0 f6 ff ff 00 	cmpl   $0x0,-0x920(%rbp)
  823403:	0f 84 41 25 00 00    	je     82594a <pre_step3d_mod_mp_pre_step3d_tile_+0x1139a>
  823409:	4c 89 ee             	mov    %r13,%rsi
  82340c:	48 8b bd c0 f6 ff ff 	mov    -0x940(%rbp),%rdi
  823413:	48 8b 95 e8 f6 ff ff 	mov    -0x918(%rbp),%rdx
  82341a:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  823421:	c5 f8 77             	vzeroupper 
  823424:	e8 17 57 cb ff       	callq  4d8b40 <_intel_fast_memcpy>
  823429:	48 8b 85 80 f8 ff ff 	mov    -0x780(%rbp),%rax
  823430:	c5 fb 10 05 e0 3d 0a 	vmovsd 0xa3de0(%rip),%xmm0        # 8c7218 <__STRLITPACK_199.115+0x88>
  823437:	00 
  823438:	c5 7b 10 15 08 46 0a 	vmovsd 0xa4608(%rip),%xmm10        # 8c7a48 <__STRLITPACK_199.115+0x8b8>
  82343f:	00 
  823440:	48 8b 95 d8 f8 ff ff 	mov    -0x728(%rbp),%rdx
  823447:	48 8b 8d e0 f8 ff ff 	mov    -0x720(%rbp),%rcx
  82344e:	f6 44 0a 10 01       	testb  $0x1,0x10(%rdx,%rcx,1)
  823453:	74 1e                	je     823473 <pre_step3d_mod_mp_pre_step3d_tile_+0xeec3>
  823455:	e9 3f 01 00 00       	jmpq   823599 <pre_step3d_mod_mp_pre_step3d_tile_+0xefe9>
  82345a:	48 8b 95 d8 f8 ff ff 	mov    -0x728(%rbp),%rdx
  823461:	48 8b 8d e0 f8 ff ff 	mov    -0x720(%rbp),%rcx
  823468:	f6 44 0a 10 01       	testb  $0x1,0x10(%rdx,%rcx,1)
  82346d:	0f 85 3b 01 00 00    	jne    8235ae <pre_step3d_mod_mp_pre_step3d_tile_+0xeffe>
  823473:	48 8b 95 28 f8 ff ff 	mov    -0x7d8(%rbp),%rdx
  82347a:	48 8b 8d 30 f8 ff ff 	mov    -0x7d0(%rbp),%rcx
  823481:	f6 04 0a 01          	testb  $0x1,(%rdx,%rcx,1)
  823485:	0f 85 0e 01 00 00    	jne    823599 <pre_step3d_mod_mp_pre_step3d_tile_+0xefe9>
  82348b:	48 8b 95 38 f7 ff ff 	mov    -0x8c8(%rbp),%rdx
  823492:	48 8b 8d 40 f7 ff ff 	mov    -0x8c0(%rbp),%rcx
  823499:	4c 8b 84 0a d0 00 00 	mov    0xd0(%rdx,%rcx,1),%r8
  8234a0:	00 
  8234a1:	49 f7 d8             	neg    %r8
  8234a4:	4c 03 85 30 f7 ff ff 	add    -0x8d0(%rbp),%r8
  8234ab:	4c 0f af 84 0a c8 00 	imul   0xc8(%rdx,%rcx,1),%r8
  8234b2:	00 00 
  8234b4:	48 8b bc 0a 90 00 00 	mov    0x90(%rdx,%rcx,1),%rdi
  8234bb:	00 
  8234bc:	42 f6 04 07 01       	testb  $0x1,(%rdi,%r8,1)
  8234c1:	0f 84 d2 00 00 00    	je     823599 <pre_step3d_mod_mp_pre_step3d_tile_+0xefe9>
  8234c7:	8b 95 d0 fc ff ff    	mov    -0x330(%rbp),%edx
  8234cd:	3b 95 d8 fc ff ff    	cmp    -0x328(%rbp),%edx
  8234d3:	0f 8c 84 00 00 00    	jl     82355d <pre_step3d_mod_mp_pre_step3d_tile_+0xefad>
  8234d9:	83 bd 28 f3 ff ff 0c 	cmpl   $0xc,-0xcd8(%rbp)
  8234e0:	0f 8e c1 24 00 00    	jle    8259a7 <pre_step3d_mod_mp_pre_step3d_tile_+0x113f7>
  8234e6:	83 bd d8 f6 ff ff 00 	cmpl   $0x0,-0x928(%rbp)
  8234ed:	0f 84 b4 24 00 00    	je     8259a7 <pre_step3d_mod_mp_pre_step3d_tile_+0x113f7>
  8234f3:	c5 f8 77             	vzeroupper 
  8234f6:	48 8b bd d0 f6 ff ff 	mov    -0x930(%rbp),%rdi
  8234fd:	48 8b b5 c8 f6 ff ff 	mov    -0x938(%rbp),%rsi
  823504:	48 8b 95 e8 f6 ff ff 	mov    -0x918(%rbp),%rdx
  82350b:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  823512:	e8 29 56 cb ff       	callq  4d8b40 <_intel_fast_memcpy>
  823517:	48 8b 85 80 f8 ff ff 	mov    -0x780(%rbp),%rax
  82351e:	c5 fb 10 05 f2 3c 0a 	vmovsd 0xa3cf2(%rip),%xmm0        # 8c7218 <__STRLITPACK_199.115+0x88>
  823525:	00 
  823526:	c5 7b 10 15 1a 45 0a 	vmovsd 0xa451a(%rip),%xmm10        # 8c7a48 <__STRLITPACK_199.115+0x8b8>
  82352d:	00 
  82352e:	8b 95 50 f8 ff ff    	mov    -0x7b0(%rbp),%edx
  823534:	33 ff                	xor    %edi,%edi
  823536:	3b 95 48 f8 ff ff    	cmp    -0x7b8(%rbp),%edx
  82353c:	0f 8c 4d 01 00 00    	jl     82368f <pre_step3d_mod_mp_pre_step3d_tile_+0xf0df>
  823542:	c5 fd 10 0d 16 1e 0a 	vmovupd 0xa1e16(%rip),%ymm1        # 8c5360 <var$630.126.450+0x4a0>
  823549:	00 
  82354a:	48 8b 95 e0 fc ff ff 	mov    -0x320(%rbp),%rdx
  823551:	48 8b 8d e8 fc ff ff 	mov    -0x318(%rbp),%rcx
  823558:	e9 9f 00 00 00       	jmpq   8235fc <pre_step3d_mod_mp_pre_step3d_tile_+0xf04c>
  82355d:	8b 95 50 f8 ff ff    	mov    -0x7b0(%rbp),%edx
  823563:	3b 95 48 f8 ff ff    	cmp    -0x7b8(%rbp),%edx
  823569:	0f 8c 20 01 00 00    	jl     82368f <pre_step3d_mod_mp_pre_step3d_tile_+0xf0df>
  82356f:	bf 01 00 00 00       	mov    $0x1,%edi
  823574:	48 83 f8 01          	cmp    $0x1,%rax
  823578:	0f 86 11 01 00 00    	jbe    82368f <pre_step3d_mod_mp_pre_step3d_tile_+0xf0df>
  82357e:	c5 fd 10 0d da 1d 0a 	vmovupd 0xa1dda(%rip),%ymm1        # 8c5360 <var$630.126.450+0x4a0>
  823585:	00 
  823586:	48 8b 95 e0 fc ff ff 	mov    -0x320(%rbp),%rdx
  82358d:	48 8b 8d e8 fc ff ff 	mov    -0x318(%rbp),%rcx
  823594:	e9 dc 00 00 00       	jmpq   823675 <pre_step3d_mod_mp_pre_step3d_tile_+0xf0c5>
  823599:	8b 95 50 f8 ff ff    	mov    -0x7b0(%rbp),%edx
  82359f:	33 ff                	xor    %edi,%edi
  8235a1:	3b 95 48 f8 ff ff    	cmp    -0x7b8(%rbp),%edx
  8235a7:	7d 26                	jge    8235cf <pre_step3d_mod_mp_pre_step3d_tile_+0xf01f>
  8235a9:	e9 e1 00 00 00       	jmpq   82368f <pre_step3d_mod_mp_pre_step3d_tile_+0xf0df>
  8235ae:	8b 95 50 f8 ff ff    	mov    -0x7b0(%rbp),%edx
  8235b4:	3b 95 48 f8 ff ff    	cmp    -0x7b8(%rbp),%edx
  8235ba:	0f 8c cf 00 00 00    	jl     82368f <pre_step3d_mod_mp_pre_step3d_tile_+0xf0df>
  8235c0:	bf 01 00 00 00       	mov    $0x1,%edi
  8235c5:	48 83 f8 01          	cmp    $0x1,%rax
  8235c9:	0f 86 c0 00 00 00    	jbe    82368f <pre_step3d_mod_mp_pre_step3d_tile_+0xf0df>
  8235cf:	c5 fd 10 0d 89 1d 0a 	vmovupd 0xa1d89(%rip),%ymm1        # 8c5360 <var$630.126.450+0x4a0>
  8235d6:	00 
  8235d7:	48 8b 95 e0 fc ff ff 	mov    -0x320(%rbp),%rdx
  8235de:	48 8b 8d e8 fc ff ff 	mov    -0x318(%rbp),%rcx
  8235e5:	44 8b 85 d8 fc ff ff 	mov    -0x328(%rbp),%r8d
  8235ec:	44 8b 8d d0 fc ff ff 	mov    -0x330(%rbp),%r9d
  8235f3:	45 3b c8             	cmp    %r8d,%r9d
  8235f6:	0f 8c 87 00 00 00    	jl     823683 <pre_step3d_mod_mp_pre_step3d_tile_+0xf0d3>
  8235fc:	49 83 fe 04          	cmp    $0x4,%r14
  823600:	0f 8c 6d 24 00 00    	jl     825a73 <pre_step3d_mod_mp_pre_step3d_tile_+0x114c3>
  823606:	49 89 f9             	mov    %rdi,%r9
  823609:	4d 89 e0             	mov    %r12,%r8
  82360c:	4d 0f af cf          	imul   %r15,%r9
  823610:	33 f6                	xor    %esi,%esi
  823612:	4e 8d 1c 09          	lea    (%rcx,%r9,1),%r11
  823616:	4e 8d 14 0a          	lea    (%rdx,%r9,1),%r10
  82361a:	4d 03 cd             	add    %r13,%r9
  82361d:	c4 c1 7d 10 14 f1    	vmovupd (%r9,%rsi,8),%ymm2
  823623:	c4 c1 6d 58 5c f2 f8 	vaddpd -0x8(%r10,%rsi,8),%ymm2,%ymm3
  82362a:	c5 f5 59 e3          	vmulpd %ymm3,%ymm1,%ymm4
  82362e:	c4 c1 7d 11 64 f3 f8 	vmovupd %ymm4,-0x8(%r11,%rsi,8)
  823635:	48 83 c6 04          	add    $0x4,%rsi
  823639:	49 3b f4             	cmp    %r12,%rsi
  82363c:	72 df                	jb     82361d <pre_step3d_mod_mp_pre_step3d_tile_+0xf06d>
  82363e:	4d 3b c6             	cmp    %r14,%r8
  823641:	73 32                	jae    823675 <pre_step3d_mod_mp_pre_step3d_tile_+0xf0c5>
  823643:	49 89 f9             	mov    %rdi,%r9
  823646:	4d 0f af cf          	imul   %r15,%r9
  82364a:	4e 8d 1c 09          	lea    (%rcx,%r9,1),%r11
  82364e:	4e 8d 14 0a          	lea    (%rdx,%r9,1),%r10
  823652:	4d 03 cd             	add    %r13,%r9
  823655:	c4 81 7b 10 14 c1    	vmovsd (%r9,%r8,8),%xmm2
  82365b:	c4 81 6b 58 5c c2 f8 	vaddsd -0x8(%r10,%r8,8),%xmm2,%xmm3
  823662:	c5 fb 59 e3          	vmulsd %xmm3,%xmm0,%xmm4
  823666:	c4 81 7b 11 64 c3 f8 	vmovsd %xmm4,-0x8(%r11,%r8,8)
  82366d:	49 ff c0             	inc    %r8
  823670:	4d 3b c6             	cmp    %r14,%r8
  823673:	72 e0                	jb     823655 <pre_step3d_mod_mp_pre_step3d_tile_+0xf0a5>
  823675:	44 8b 85 d8 fc ff ff 	mov    -0x328(%rbp),%r8d
  82367c:	44 8b 8d d0 fc ff ff 	mov    -0x330(%rbp),%r9d
  823683:	48 ff c7             	inc    %rdi
  823686:	48 3b f8             	cmp    %rax,%rdi
  823689:	0f 82 64 ff ff ff    	jb     8235f3 <pre_step3d_mod_mp_pre_step3d_tile_+0xf043>
  82368f:	48 83 bd 00 fc ff ff 	cmpq   $0x8,-0x400(%rbp)
  823696:	08 
  823697:	0f 85 a0 01 00 00    	jne    82383d <pre_step3d_mod_mp_pre_step3d_tile_+0xf28d>
  82369d:	48 83 bd 10 fd ff ff 	cmpq   $0x8,-0x2f0(%rbp)
  8236a4:	08 
  8236a5:	0f 85 92 01 00 00    	jne    82383d <pre_step3d_mod_mp_pre_step3d_tile_+0xf28d>
  8236ab:	8b 95 50 f8 ff ff    	mov    -0x7b0(%rbp),%edx
  8236b1:	33 c9                	xor    %ecx,%ecx
  8236b3:	4c 8b 85 d8 f1 ff ff 	mov    -0xe28(%rbp),%r8
  8236ba:	45 33 c9             	xor    %r9d,%r9d
  8236bd:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  8236c3:	48 89 ca             	mov    %rcx,%rdx
  8236c6:	0f 8c 3b 05 00 00    	jl     823c07 <pre_step3d_mod_mp_pre_step3d_tile_+0xf657>
  8236cc:	4c 8b 9d 20 fc ff ff 	mov    -0x3e0(%rbp),%r11
  8236d3:	4c 8b 95 60 f7 ff ff 	mov    -0x8a0(%rbp),%r10
  8236da:	48 8b bd 80 f7 ff ff 	mov    -0x880(%rbp),%rdi
  8236e1:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  8236e8:	c5 fd 10 15 30 2a 0a 	vmovupd 0xa2a30(%rip),%ymm2        # 8c6120 <var$630.126.450+0x1260>
  8236ef:	00 
  8236f0:	4d 03 d3             	add    %r11,%r10
  8236f3:	c5 fb 10 1d 45 43 0a 	vmovsd 0xa4345(%rip),%xmm3        # 8c7a40 <__STRLITPACK_199.115+0x8b0>
  8236fa:	00 
  8236fb:	c5 fd 10 0d 5d 1c 0a 	vmovupd 0xa1c5d(%rip),%ymm1        # 8c5360 <var$630.126.450+0x4a0>
  823702:	00 
  823703:	4c 89 95 28 fa ff ff 	mov    %r10,-0x5d8(%rbp)
  82370a:	49 03 fb             	add    %r11,%rdi
  82370d:	8b 85 d0 fc ff ff    	mov    -0x330(%rbp),%eax
  823713:	3b 85 d8 fc ff ff    	cmp    -0x328(%rbp),%eax
  823719:	0f 8c f4 00 00 00    	jl     823813 <pre_step3d_mod_mp_pre_step3d_tile_+0xf263>
  82371f:	49 83 fe 04          	cmp    $0x4,%r14
  823723:	0f 8c db 22 00 00    	jl     825a04 <pre_step3d_mod_mp_pre_step3d_tile_+0x11454>
  823729:	4c 8b a5 e8 fc ff ff 	mov    -0x318(%rbp),%r12
  823730:	45 33 ed             	xor    %r13d,%r13d
  823733:	4c 8b 9d 08 f9 ff ff 	mov    -0x6f8(%rbp),%r11
  82373a:	48 8b b5 78 f9 ff ff 	mov    -0x688(%rbp),%rsi
  823741:	4c 8b bd 28 fa ff ff 	mov    -0x5d8(%rbp),%r15
  823748:	4c 03 e2             	add    %rdx,%r12
  82374b:	48 8b 85 18 fd ff ff 	mov    -0x2e8(%rbp),%rax
  823752:	4c 03 da             	add    %rdx,%r11
  823755:	49 89 c6             	mov    %rax,%r14
  823758:	4c 8d 14 16          	lea    (%rsi,%rdx,1),%r10
  82375c:	4a 8d 34 0f          	lea    (%rdi,%r9,1),%rsi
  823760:	4d 03 f9             	add    %r9,%r15
  823763:	c4 81 7d 10 2c ea    	vmovupd (%r10,%r13,8),%ymm5
  823769:	c4 a1 7d 10 24 ee    	vmovupd (%rsi,%r13,8),%ymm4
  82376f:	c4 01 75 59 0c e8    	vmulpd (%r8,%r13,8),%ymm1,%ymm9
  823775:	c4 81 55 5c 74 ec f8 	vsubpd -0x8(%r12,%r13,8),%ymm5,%ymm6
  82377c:	c4 81 5d 58 3c ef    	vaddpd (%r15,%r13,8),%ymm4,%ymm7
  823782:	c5 6d 59 c6          	vmulpd %ymm6,%ymm2,%ymm8
  823786:	c4 41 45 5c d8       	vsubpd %ymm8,%ymm7,%ymm11
  82378b:	c4 41 35 59 e3       	vmulpd %ymm11,%ymm9,%ymm12
  823790:	c4 01 7d 11 24 eb    	vmovupd %ymm12,(%r11,%r13,8)
  823796:	49 83 c5 04          	add    $0x4,%r13
  82379a:	4d 3b ee             	cmp    %r14,%r13
  82379d:	72 c4                	jb     823763 <pre_step3d_mod_mp_pre_step3d_tile_+0xf1b3>
  82379f:	4c 8b b5 20 fd ff ff 	mov    -0x2e0(%rbp),%r14
  8237a6:	49 3b c6             	cmp    %r14,%rax
  8237a9:	73 68                	jae    823813 <pre_step3d_mod_mp_pre_step3d_tile_+0xf263>
  8237ab:	4c 8b 95 e8 fc ff ff 	mov    -0x318(%rbp),%r10
  8237b2:	48 8b b5 08 f9 ff ff 	mov    -0x6f8(%rbp),%rsi
  8237b9:	4c 8b a5 78 f9 ff ff 	mov    -0x688(%rbp),%r12
  8237c0:	4c 8b 9d 28 fa ff ff 	mov    -0x5d8(%rbp),%r11
  8237c7:	4c 03 d2             	add    %rdx,%r10
  8237ca:	48 03 f2             	add    %rdx,%rsi
  8237cd:	4d 8d 2c 14          	lea    (%r12,%rdx,1),%r13
  8237d1:	4e 8d 24 0f          	lea    (%rdi,%r9,1),%r12
  8237d5:	4d 03 d9             	add    %r9,%r11
  8237d8:	c4 c1 7b 10 6c c5 00 	vmovsd 0x0(%r13,%rax,8),%xmm5
  8237df:	c4 c1 7b 10 24 c4    	vmovsd (%r12,%rax,8),%xmm4
  8237e5:	c4 41 7b 59 0c c0    	vmulsd (%r8,%rax,8),%xmm0,%xmm9
  8237eb:	c4 c1 53 5c 74 c2 f8 	vsubsd -0x8(%r10,%rax,8),%xmm5,%xmm6
  8237f2:	c4 c1 5b 58 3c c3    	vaddsd (%r11,%rax,8),%xmm4,%xmm7
  8237f8:	c5 63 59 c6          	vmulsd %xmm6,%xmm3,%xmm8
  8237fc:	c4 41 43 5c d8       	vsubsd %xmm8,%xmm7,%xmm11
  823801:	c4 41 33 59 e3       	vmulsd %xmm11,%xmm9,%xmm12
  823806:	c5 7b 11 24 c6       	vmovsd %xmm12,(%rsi,%rax,8)
  82380b:	48 ff c0             	inc    %rax
  82380e:	49 3b c6             	cmp    %r14,%rax
  823811:	72 c5                	jb     8237d8 <pre_step3d_mod_mp_pre_step3d_tile_+0xf228>
  823813:	48 ff c1             	inc    %rcx
  823816:	48 03 95 78 fc ff ff 	add    -0x388(%rbp),%rdx
  82381d:	4c 03 85 10 fc ff ff 	add    -0x3f0(%rbp),%r8
  823824:	4c 03 8d f8 fb ff ff 	add    -0x408(%rbp),%r9
  82382b:	48 3b 8d 68 fc ff ff 	cmp    -0x398(%rbp),%rcx
  823832:	0f 82 d5 fe ff ff    	jb     82370d <pre_step3d_mod_mp_pre_step3d_tile_+0xf15d>
  823838:	e9 ae 03 00 00       	jmpq   823beb <pre_step3d_mod_mp_pre_step3d_tile_+0xf63b>
  82383d:	33 c9                	xor    %ecx,%ecx
  82383f:	8b 95 50 f8 ff ff    	mov    -0x7b0(%rbp),%edx
  823845:	45 33 c0             	xor    %r8d,%r8d
  823848:	33 ff                	xor    %edi,%edi
  82384a:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  823850:	4c 89 c2             	mov    %r8,%rdx
  823853:	0f 8c ae 03 00 00    	jl     823c07 <pre_step3d_mod_mp_pre_step3d_tile_+0xf657>
  823859:	4c 8b 95 e0 f7 ff ff 	mov    -0x820(%rbp),%r10
  823860:	4c 8b 9d 20 fc ff ff 	mov    -0x3e0(%rbp),%r11
  823867:	48 8b b5 a8 f7 ff ff 	mov    -0x858(%rbp),%rsi
  82386e:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  823875:	c5 fb 10 2d c3 41 0a 	vmovsd 0xa41c3(%rip),%xmm5        # 8c7a40 <__STRLITPACK_199.115+0x8b0>
  82387c:	00 
  82387d:	4f 8d 0c 1a          	lea    (%r10,%r11,1),%r9
  823881:	4c 89 8d b0 fa ff ff 	mov    %r9,-0x550(%rbp)
  823888:	4c 8b 95 88 f9 ff ff 	mov    -0x678(%rbp),%r10
  82388f:	4c 8b 8d b8 f7 ff ff 	mov    -0x848(%rbp),%r9
  823896:	c5 f9 10 1d 42 36 0a 	vmovupd 0xa3642(%rip),%xmm3        # 8c6ee0 <__STRLITPACK_54.50+0xc0>
  82389d:	00 
  82389e:	c5 f9 10 25 fa 30 0a 	vmovupd 0xa30fa(%rip),%xmm4        # 8c69a0 <__STRLITPACK_19.34+0x10>
  8238a5:	00 
  8238a6:	4d 03 d3             	add    %r11,%r10
  8238a9:	4c 89 95 40 fa ff ff 	mov    %r10,-0x5c0(%rbp)
  8238b0:	4d 03 cb             	add    %r11,%r9
  8238b3:	4c 89 8d 38 fa ff ff 	mov    %r9,-0x5c8(%rbp)
  8238ba:	4c 03 de             	add    %rsi,%r11
  8238bd:	4c 89 9d 30 fa ff ff 	mov    %r11,-0x5d0(%rbp)
  8238c4:	8b 85 d0 fc ff ff    	mov    -0x330(%rbp),%eax
  8238ca:	3b 85 d8 fc ff ff    	cmp    -0x328(%rbp),%eax
  8238d0:	0f 8c f0 02 00 00    	jl     823bc6 <pre_step3d_mod_mp_pre_step3d_tile_+0xf616>
  8238d6:	49 83 fe 04          	cmp    $0x4,%r14
  8238da:	0f 8c 83 21 00 00    	jl     825a63 <pre_step3d_mod_mp_pre_step3d_tile_+0x114b3>
  8238e0:	48 8b 85 38 fa ff ff 	mov    -0x5c8(%rbp),%rax
  8238e7:	4c 8b ad 58 f9 ff ff 	mov    -0x6a8(%rbp),%r13
  8238ee:	4c 8b a5 40 f9 ff ff 	mov    -0x6c0(%rbp),%r12
  8238f5:	4c 8b bd 08 f9 ff ff 	mov    -0x6f8(%rbp),%r15
  8238fc:	48 03 c7             	add    %rdi,%rax
  8238ff:	48 89 85 88 fd ff ff 	mov    %rax,-0x278(%rbp)
  823906:	4d 03 e8             	add    %r8,%r13
  823909:	48 8b 85 b0 fa ff ff 	mov    -0x550(%rbp),%rax
  823910:	4c 03 e2             	add    %rdx,%r12
  823913:	4c 8b 9d 18 fd ff ff 	mov    -0x2e8(%rbp),%r11
  82391a:	4d 03 f8             	add    %r8,%r15
  82391d:	4c 8b 95 e8 fc ff ff 	mov    -0x318(%rbp),%r10
  823924:	4c 8b 8d 78 f9 ff ff 	mov    -0x688(%rbp),%r9
  82392b:	48 03 c7             	add    %rdi,%rax
  82392e:	48 89 85 60 fa ff ff 	mov    %rax,-0x5a0(%rbp)
  823935:	48 8b 85 30 fa ff ff 	mov    -0x5d0(%rbp),%rax
  82393c:	4d 03 d0             	add    %r8,%r10
  82393f:	48 8b b5 60 f9 ff ff 	mov    -0x6a0(%rbp),%rsi
  823946:	4d 03 c8             	add    %r8,%r9
  823949:	4c 89 9d b8 fc ff ff 	mov    %r11,-0x348(%rbp)
  823950:	45 33 db             	xor    %r11d,%r11d
  823953:	4c 89 a5 80 fd ff ff 	mov    %r12,-0x280(%rbp)
  82395a:	48 03 c7             	add    %rdi,%rax
  82395d:	48 89 85 58 fa ff ff 	mov    %rax,-0x5a8(%rbp)
  823964:	49 03 f0             	add    %r8,%rsi
  823967:	48 8b 85 40 fa ff ff 	mov    -0x5c0(%rbp),%rax
  82396e:	4c 89 ad 78 fd ff ff 	mov    %r13,-0x288(%rbp)
  823975:	48 89 bd 60 fb ff ff 	mov    %rdi,-0x4a0(%rbp)
  82397c:	48 89 95 68 fb ff ff 	mov    %rdx,-0x498(%rbp)
  823983:	48 03 c7             	add    %rdi,%rax
  823986:	48 89 85 50 fa ff ff 	mov    %rax,-0x5b0(%rbp)
  82398d:	48 8b 85 38 f9 ff ff 	mov    -0x6c8(%rbp),%rax
  823994:	4c 89 85 70 fb ff ff 	mov    %r8,-0x490(%rbp)
  82399b:	48 89 8d 78 fb ff ff 	mov    %rcx,-0x488(%rbp)
  8239a2:	4c 89 bd 70 fd ff ff 	mov    %r15,-0x290(%rbp)
  8239a9:	48 03 c2             	add    %rdx,%rax
  8239ac:	48 89 85 48 fa ff ff 	mov    %rax,-0x5b8(%rbp)
  8239b3:	33 c0                	xor    %eax,%eax
  8239b5:	48 89 c2             	mov    %rax,%rdx
  8239b8:	48 8b 8d 48 fa ff ff 	mov    -0x5b8(%rbp),%rcx
  8239bf:	48 8b bd 50 fa ff ff 	mov    -0x5b0(%rbp),%rdi
  8239c6:	4c 8b 85 58 fa ff ff 	mov    -0x5a8(%rbp),%r8
  8239cd:	4c 8b a5 60 fa ff ff 	mov    -0x5a0(%rbp),%r12
  8239d4:	4c 8b ad 00 fc ff ff 	mov    -0x400(%rbp),%r13
  8239db:	4c 8b b5 10 fd ff ff 	mov    -0x2f0(%rbp),%r14
  8239e2:	4c 8b bd 78 fd ff ff 	mov    -0x288(%rbp),%r15
  8239e9:	c4 81 79 10 34 d9    	vmovupd (%r9,%r11,8),%xmm6
  8239ef:	c4 01 79 10 44 df 10 	vmovupd 0x10(%r15,%r11,8),%xmm8
  8239f6:	c4 81 49 5c 7c da f8 	vsubpd -0x8(%r10,%r11,8),%xmm6,%xmm7
  8239fd:	c4 01 39 5c 4c da 08 	vsubpd 0x8(%r10,%r11,8),%xmm8,%xmm9
  823a04:	c5 e1 59 d7          	vmulpd %xmm7,%xmm3,%xmm2
  823a08:	c4 c1 61 59 c9       	vmulpd %xmm9,%xmm3,%xmm1
  823a0d:	4c 8b bd 80 fd ff ff 	mov    -0x280(%rbp),%r15
  823a14:	4c 03 f8             	add    %rax,%r15
  823a17:	c4 41 7b 10 1f       	vmovsd (%r15),%xmm11
  823a1c:	c4 01 21 16 24 2f    	vmovhpd (%r15,%r13,1),%xmm11,%xmm12
  823a22:	4d 8d 3c 10          	lea    (%r8,%rdx,1),%r15
  823a26:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  823a2b:	c4 01 11 16 3c 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm15
  823a31:	4c 8d 3c 17          	lea    (%rdi,%rdx,1),%r15
  823a35:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  823a3a:	c4 01 09 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm14,%xmm13
  823a40:	c4 41 01 58 f5       	vaddpd %xmm13,%xmm15,%xmm14
  823a45:	c5 99 59 f4          	vmulpd %xmm4,%xmm12,%xmm6
  823a49:	c5 89 5c d2          	vsubpd %xmm2,%xmm14,%xmm2
  823a4d:	c5 c9 59 fa          	vmulpd %xmm2,%xmm6,%xmm7
  823a51:	4c 8b bd 70 fd ff ff 	mov    -0x290(%rbp),%r15
  823a58:	c4 81 79 11 3c df    	vmovupd %xmm7,(%r15,%r11,8)
  823a5e:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
  823a62:	c4 41 7b 10 07       	vmovsd (%r15),%xmm8
  823a67:	4a 8d 04 a8          	lea    (%rax,%r13,4),%rax
  823a6b:	c4 01 39 16 0c 2f    	vmovhpd (%r15,%r13,1),%xmm8,%xmm9
  823a71:	4c 8b bd 88 fd ff ff 	mov    -0x278(%rbp),%r15
  823a78:	c5 b1 59 d4          	vmulpd %xmm4,%xmm9,%xmm2
  823a7c:	4c 03 fa             	add    %rdx,%r15
  823a7f:	c4 41 7b 10 1f       	vmovsd (%r15),%xmm11
  823a84:	c4 01 21 16 3c 37    	vmovhpd (%r15,%r14,1),%xmm11,%xmm15
  823a8a:	4d 8d 3c 14          	lea    (%r12,%rdx,1),%r15
  823a8e:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  823a93:	4a 8d 14 b2          	lea    (%rdx,%r14,4),%rdx
  823a97:	c4 01 19 16 1c 37    	vmovhpd (%r15,%r14,1),%xmm12,%xmm11
  823a9d:	c4 41 01 58 e3       	vaddpd %xmm11,%xmm15,%xmm12
  823aa2:	c5 99 5c c9          	vsubpd %xmm1,%xmm12,%xmm1
  823aa6:	c5 e9 59 c9          	vmulpd %xmm1,%xmm2,%xmm1
  823aaa:	c4 a1 79 11 4c de 10 	vmovupd %xmm1,0x10(%rsi,%r11,8)
  823ab1:	49 83 c3 04          	add    $0x4,%r11
  823ab5:	4c 3b 9d 18 fd ff ff 	cmp    -0x2e8(%rbp),%r11
  823abc:	0f 82 20 ff ff ff    	jb     8239e2 <pre_step3d_mod_mp_pre_step3d_tile_+0xf432>
  823ac2:	48 8b bd 60 fb ff ff 	mov    -0x4a0(%rbp),%rdi
  823ac9:	48 8b 95 68 fb ff ff 	mov    -0x498(%rbp),%rdx
  823ad0:	4c 8b 85 70 fb ff ff 	mov    -0x490(%rbp),%r8
  823ad7:	48 8b 8d 78 fb ff ff 	mov    -0x488(%rbp),%rcx
  823ade:	4c 8b b5 20 fd ff ff 	mov    -0x2e0(%rbp),%r14
  823ae5:	4c 8b a5 10 fd ff ff 	mov    -0x2f0(%rbp),%r12
  823aec:	48 8b 85 b8 fc ff ff 	mov    -0x348(%rbp),%rax
  823af3:	4c 8b 9d 00 fc ff ff 	mov    -0x400(%rbp),%r11
  823afa:	4c 0f af e0          	imul   %rax,%r12
  823afe:	4c 0f af d8          	imul   %rax,%r11
  823b02:	49 3b c6             	cmp    %r14,%rax
  823b05:	0f 83 bb 00 00 00    	jae    823bc6 <pre_step3d_mod_mp_pre_step3d_tile_+0xf616>
  823b0b:	4c 8b 95 e8 fc ff ff 	mov    -0x318(%rbp),%r10
  823b12:	4c 8b 8d 08 f9 ff ff 	mov    -0x6f8(%rbp),%r9
  823b19:	48 8b b5 78 f9 ff ff 	mov    -0x688(%rbp),%rsi
  823b20:	48 8b 85 40 f9 ff ff 	mov    -0x6c0(%rbp),%rax
  823b27:	4d 03 d0             	add    %r8,%r10
  823b2a:	4c 8b ad 30 fa ff ff 	mov    -0x5d0(%rbp),%r13
  823b31:	4d 03 c8             	add    %r8,%r9
  823b34:	4c 8b bd 40 fa ff ff 	mov    -0x5c0(%rbp),%r15
  823b3b:	49 03 f0             	add    %r8,%rsi
  823b3e:	48 89 95 68 fb ff ff 	mov    %rdx,-0x498(%rbp)
  823b45:	48 03 c2             	add    %rdx,%rax
  823b48:	4c 89 85 70 fb ff ff 	mov    %r8,-0x490(%rbp)
  823b4f:	4c 03 ef             	add    %rdi,%r13
  823b52:	48 89 8d 78 fb ff ff 	mov    %rcx,-0x488(%rbp)
  823b59:	4c 03 ff             	add    %rdi,%r15
  823b5c:	48 8b 95 b8 fc ff ff 	mov    -0x348(%rbp),%rdx
  823b63:	48 8b 8d 00 fc ff ff 	mov    -0x400(%rbp),%rcx
  823b6a:	4c 8b 85 10 fd ff ff 	mov    -0x2f0(%rbp),%r8
  823b71:	c5 fb 10 14 d6       	vmovsd (%rsi,%rdx,8),%xmm2
  823b76:	c4 81 7b 10 0c 2c    	vmovsd (%r12,%r13,1),%xmm1
  823b7c:	c4 41 7b 59 0c 03    	vmulsd (%r11,%rax,1),%xmm0,%xmm9
  823b82:	4c 03 d9             	add    %rcx,%r11
  823b85:	c4 c1 6b 5c 74 d2 f8 	vsubsd -0x8(%r10,%rdx,8),%xmm2,%xmm6
  823b8c:	c4 81 73 58 3c 3c    	vaddsd (%r12,%r15,1),%xmm1,%xmm7
  823b92:	c5 53 59 c6          	vmulsd %xmm6,%xmm5,%xmm8
  823b96:	4d 03 e0             	add    %r8,%r12
  823b99:	c4 41 43 5c d8       	vsubsd %xmm8,%xmm7,%xmm11
  823b9e:	c4 41 33 59 e3       	vmulsd %xmm11,%xmm9,%xmm12
  823ba3:	c4 41 7b 11 24 d1    	vmovsd %xmm12,(%r9,%rdx,8)
  823ba9:	48 ff c2             	inc    %rdx
  823bac:	49 3b d6             	cmp    %r14,%rdx
  823baf:	72 c0                	jb     823b71 <pre_step3d_mod_mp_pre_step3d_tile_+0xf5c1>
  823bb1:	48 8b 95 68 fb ff ff 	mov    -0x498(%rbp),%rdx
  823bb8:	4c 8b 85 70 fb ff ff 	mov    -0x490(%rbp),%r8
  823bbf:	48 8b 8d 78 fb ff ff 	mov    -0x488(%rbp),%rcx
  823bc6:	48 ff c1             	inc    %rcx
  823bc9:	4c 03 85 78 fc ff ff 	add    -0x388(%rbp),%r8
  823bd0:	48 03 95 10 fc ff ff 	add    -0x3f0(%rbp),%rdx
  823bd7:	48 03 bd f8 fb ff ff 	add    -0x408(%rbp),%rdi
  823bde:	48 3b 8d 68 fc ff ff 	cmp    -0x398(%rbp),%rcx
  823be5:	0f 82 d9 fc ff ff    	jb     8238c4 <pre_step3d_mod_mp_pre_step3d_tile_+0xf314>
  823beb:	4c 8b a5 18 fd ff ff 	mov    -0x2e8(%rbp),%r12
  823bf2:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  823bf9:	4c 8b bd 78 fc ff ff 	mov    -0x388(%rbp),%r15
  823c00:	48 8b 85 80 f8 ff ff 	mov    -0x780(%rbp),%rax
  823c07:	33 d2                	xor    %edx,%edx
  823c09:	48 83 bd 78 f8 ff ff 	cmpq   $0x0,-0x788(%rbp)
  823c10:	00 
  823c11:	7e 52                	jle    823c65 <pre_step3d_mod_mp_pre_step3d_tile_+0xf6b5>
  823c13:	bf 01 00 00 00       	mov    $0x1,%edi
  823c18:	33 c9                	xor    %ecx,%ecx
  823c1a:	48 83 bd 88 f8 ff ff 	cmpq   $0x0,-0x778(%rbp)
  823c21:	00 
  823c22:	74 2b                	je     823c4f <pre_step3d_mod_mp_pre_step3d_tile_+0xf69f>
  823c24:	48 8b bd 88 f8 ff ff 	mov    -0x778(%rbp),%rdi
  823c2b:	4c 8b 85 58 f8 ff ff 	mov    -0x7a8(%rbp),%r8
  823c32:	4c 8b 8d 60 f8 ff ff 	mov    -0x7a0(%rbp),%r9
  823c39:	41 0b 14 c8          	or     (%r8,%rcx,8),%edx
  823c3d:	41 0b 54 c9 04       	or     0x4(%r9,%rcx,8),%edx
  823c42:	48 ff c1             	inc    %rcx
  823c45:	48 3b cf             	cmp    %rdi,%rcx
  823c48:	72 ef                	jb     823c39 <pre_step3d_mod_mp_pre_step3d_tile_+0xf689>
  823c4a:	48 8d 7c 09 01       	lea    0x1(%rcx,%rcx,1),%rdi
  823c4f:	48 ff cf             	dec    %rdi
  823c52:	48 3b bd 78 f8 ff ff 	cmp    -0x788(%rbp),%rdi
  823c59:	73 0a                	jae    823c65 <pre_step3d_mod_mp_pre_step3d_tile_+0xf6b5>
  823c5b:	48 8b 8d 58 f8 ff ff 	mov    -0x7a8(%rbp),%rcx
  823c62:	0b 14 b9             	or     (%rcx,%rdi,4),%edx
  823c65:	48 8b bd d0 f8 ff ff 	mov    -0x730(%rbp),%rdi
  823c6c:	48 8b 8d c8 f8 ff ff 	mov    -0x738(%rbp),%rcx
  823c73:	f6 04 39 01          	testb  $0x1,(%rcx,%rdi,1)
  823c77:	0f 84 54 03 00 00    	je     823fd1 <pre_step3d_mod_mp_pre_step3d_tile_+0xfa21>
  823c7d:	f6 c2 01             	test   $0x1,%dl
  823c80:	0f 84 4b 03 00 00    	je     823fd1 <pre_step3d_mod_mp_pre_step3d_tile_+0xfa21>
  823c86:	48 8b 95 10 f7 ff ff 	mov    -0x8f0(%rbp),%rdx
  823c8d:	48 8b 8d 18 f7 ff ff 	mov    -0x8e8(%rbp),%rcx
  823c94:	44 8b 04 0a          	mov    (%rdx,%rcx,1),%r8d
  823c98:	45 85 c0             	test   %r8d,%r8d
  823c9b:	0f 8e 30 03 00 00    	jle    823fd1 <pre_step3d_mod_mp_pre_step3d_tile_+0xfa21>
  823ca1:	48 8b 95 08 f7 ff ff 	mov    -0x8f8(%rbp),%rdx
  823ca8:	48 8b 8d 38 f8 ff ff 	mov    -0x7c8(%rbp),%rcx
  823caf:	8b 7c 8a 04          	mov    0x4(%rdx,%rcx,4),%edi
  823cb3:	48 ff c1             	inc    %rcx
  823cb6:	48 89 8d 38 f8 ff ff 	mov    %rcx,-0x7c8(%rbp)
  823cbd:	f7 c7 01 00 00 00    	test   $0x1,%edi
  823cc3:	75 17                	jne    823cdc <pre_step3d_mod_mp_pre_step3d_tile_+0xf72c>
  823cc5:	48 8b 95 f0 f8 ff ff 	mov    -0x710(%rbp),%rdx
  823ccc:	48 8b 8d 20 fc ff ff 	mov    -0x3e0(%rbp),%rcx
  823cd3:	4c 8d 04 0a          	lea    (%rdx,%rcx,1),%r8
  823cd7:	e9 0e 03 00 00       	jmpq   823fea <pre_step3d_mod_mp_pre_step3d_tile_+0xfa3a>
  823cdc:	4c 8b 8d f0 f8 ff ff 	mov    -0x710(%rbp),%r9
  823ce3:	33 c9                	xor    %ecx,%ecx
  823ce5:	48 8b bd 20 fc ff ff 	mov    -0x3e0(%rbp),%rdi
  823cec:	48 8b 95 88 f4 ff ff 	mov    -0xb78(%rbp),%rdx
  823cf3:	48 8b b5 f8 f5 ff ff 	mov    -0xa08(%rbp),%rsi
  823cfa:	4d 63 c0             	movslq %r8d,%r8
  823cfd:	4c 8d a5 78 f4 ff ff 	lea    -0xb88(%rbp),%r12
  823d04:	4d 89 04 24          	mov    %r8,(%r12)
  823d08:	4d 8d 04 39          	lea    (%r9,%rdi,1),%r8
  823d0c:	48 8d bc 16 80 00 00 	lea    0x80(%rsi,%rdx,1),%rdi
  823d13:	00 
  823d14:	4c 8b 0f             	mov    (%rdi),%r9
  823d17:	4c 8b 57 08          	mov    0x8(%rdi),%r10
  823d1b:	4d 0f af d1          	imul   %r9,%r10
  823d1f:	48 8b 7f c8          	mov    -0x38(%rdi),%rdi
  823d23:	4c 8b 5c 16 40       	mov    0x40(%rsi,%rdx,1),%r11
  823d28:	49 2b fa             	sub    %r10,%rdi
  823d2b:	4c 8b 54 16 38       	mov    0x38(%rsi,%rdx,1),%r10
  823d30:	4d 0f af da          	imul   %r10,%r11
  823d34:	4c 8d b5 e8 f1 ff ff 	lea    -0xe18(%rbp),%r14
  823d3b:	49 89 0e             	mov    %rcx,(%r14)
  823d3e:	48 8b 14 16          	mov    (%rsi,%rdx,1),%rdx
  823d42:	4c 89 85 f0 f7 ff ff 	mov    %r8,-0x810(%rbp)
  823d49:	49 2b d3             	sub    %r11,%rdx
  823d4c:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  823d53:	49 8b 04 24          	mov    (%r12),%rax
  823d57:	49 89 c8             	mov    %rcx,%r8
  823d5a:	4d 8b 1e             	mov    (%r14),%r11
  823d5d:	4d 03 c2             	add    %r10,%r8
  823d60:	49 03 c9             	add    %r9,%rcx
  823d63:	49 ff c3             	inc    %r11
  823d66:	41 8b 34 10          	mov    (%r8,%rdx,1),%esi
  823d6a:	44 8b 24 39          	mov    (%rcx,%rdi,1),%r12d
  823d6e:	3b b5 d8 fc ff ff    	cmp    -0x328(%rbp),%esi
  823d74:	0f 8c 29 02 00 00    	jl     823fa3 <pre_step3d_mod_mp_pre_step3d_tile_+0xf9f3>
  823d7a:	3b b5 70 fc ff ff    	cmp    -0x390(%rbp),%esi
  823d80:	0f 8f 1d 02 00 00    	jg     823fa3 <pre_step3d_mod_mp_pre_step3d_tile_+0xf9f3>
  823d86:	44 3b a5 40 f8 ff ff 	cmp    -0x7c0(%rbp),%r12d
  823d8d:	0f 8c 10 02 00 00    	jl     823fa3 <pre_step3d_mod_mp_pre_step3d_tile_+0xf9f3>
  823d93:	44 3b a5 50 f8 ff ff 	cmp    -0x7b0(%rbp),%r12d
  823d9a:	0f 8f 03 02 00 00    	jg     823fa3 <pre_step3d_mod_mp_pre_step3d_tile_+0xf9f3>
  823da0:	4c 8b ad f8 f5 ff ff 	mov    -0xa08(%rbp),%r13
  823da7:	4c 8b b5 88 f4 ff ff 	mov    -0xb78(%rbp),%r14
  823dae:	4d 63 e4             	movslq %r12d,%r12
  823db1:	4c 89 a5 a8 f4 ff ff 	mov    %r12,-0xb58(%rbp)
  823db8:	4f 8b a4 35 60 02 00 	mov    0x260(%r13,%r14,1),%r12
  823dbf:	00 
  823dc0:	4c 89 a5 a0 f4 ff ff 	mov    %r12,-0xb60(%rbp)
  823dc7:	4f 8b a4 35 78 02 00 	mov    0x278(%r13,%r14,1),%r12
  823dce:	00 
  823dcf:	4c 89 a5 90 f4 ff ff 	mov    %r12,-0xb70(%rbp)
  823dd6:	4f 8b a4 35 90 02 00 	mov    0x290(%r13,%r14,1),%r12
  823ddd:	00 
  823dde:	4c 89 a5 98 f4 ff ff 	mov    %r12,-0xb68(%rbp)
  823de5:	4f 8b a4 35 d0 00 00 	mov    0xd0(%r13,%r14,1),%r12
  823dec:	00 
  823ded:	49 f7 dc             	neg    %r12
  823df0:	4d 03 e3             	add    %r11,%r12
  823df3:	4f 0f af a4 35 c8 00 	imul   0xc8(%r13,%r14,1),%r12
  823dfa:	00 00 
  823dfc:	4f 8b ac 35 90 00 00 	mov    0x90(%r13,%r14,1),%r13
  823e03:	00 
  823e04:	48 63 f6             	movslq %esi,%rsi
  823e07:	c4 01 7b 2c 74 25 00 	vcvttsd2si 0x0(%r13,%r12,1),%r14d
  823e0e:	4c 8b a5 a8 f4 ff ff 	mov    -0xb58(%rbp),%r12
  823e15:	45 85 f6             	test   %r14d,%r14d
  823e18:	0f 85 c5 00 00 00    	jne    823ee3 <pre_step3d_mod_mp_pre_step3d_tile_+0xf933>
  823e1e:	48 89 95 80 f4 ff ff 	mov    %rdx,-0xb80(%rbp)
  823e25:	48 89 85 78 f4 ff ff 	mov    %rax,-0xb88(%rbp)
  823e2c:	48 8b 95 08 fc ff ff 	mov    -0x3f8(%rbp),%rdx
  823e33:	48 8b 85 18 fc ff ff 	mov    -0x3e8(%rbp),%rax
  823e3a:	48 0f af d6          	imul   %rsi,%rdx
  823e3e:	49 0f af c4          	imul   %r12,%rax
  823e42:	4d 0f af e7          	imul   %r15,%r12
  823e46:	4c 8b b5 88 f4 ff ff 	mov    -0xb78(%rbp),%r14
  823e4d:	48 03 d0             	add    %rax,%rdx
  823e50:	4c 8b ad 68 f4 ff ff 	mov    -0xb98(%rbp),%r13
  823e57:	49 8d 34 f4          	lea    (%r12,%rsi,8),%rsi
  823e5b:	4c 8b a5 f8 f5 ff ff 	mov    -0xa08(%rbp),%r12
  823e62:	c4 a1 7b 10 0c 2a    	vmovsd (%rdx,%r13,1),%xmm1
  823e68:	4b 8b 84 34 80 02 00 	mov    0x280(%r12,%r14,1),%rax
  823e6f:	00 
  823e70:	48 f7 d8             	neg    %rax
  823e73:	4b 8b 94 34 98 02 00 	mov    0x298(%r12,%r14,1),%rdx
  823e7a:	00 
  823e7b:	48 03 85 70 f4 ff ff 	add    -0xb90(%rbp),%rax
  823e82:	48 f7 da             	neg    %rdx
  823e85:	48 03 95 38 f8 ff ff 	add    -0x7c8(%rbp),%rdx
  823e8c:	48 0f af 85 90 f4 ff 	imul   -0xb70(%rbp),%rax
  823e93:	ff 
  823e94:	48 0f af 95 98 f4 ff 	imul   -0xb68(%rbp),%rdx
  823e9b:	ff 
  823e9c:	4f 8b ac 34 68 02 00 	mov    0x268(%r12,%r14,1),%r13
  823ea3:	00 
  823ea4:	49 f7 dd             	neg    %r13
  823ea7:	4d 03 eb             	add    %r11,%r13
  823eaa:	4c 0f af ad a0 f4 ff 	imul   -0xb60(%rbp),%r13
  823eb1:	ff 
  823eb2:	4b 03 84 34 28 02 00 	add    0x228(%r12,%r14,1),%rax
  823eb9:	00 
  823eba:	48 03 d0             	add    %rax,%rdx
  823ebd:	4c 8b a5 50 f4 ff ff 	mov    -0xbb0(%rbp),%r12
  823ec4:	48 8b 85 78 f4 ff ff 	mov    -0xb88(%rbp),%rax
  823ecb:	c4 a1 73 59 14 2a    	vmulsd (%rdx,%r13,1),%xmm1,%xmm2
  823ed1:	c4 a1 7b 11 14 26    	vmovsd %xmm2,(%rsi,%r12,1)
  823ed7:	48 8b 95 80 f4 ff ff 	mov    -0xb80(%rbp),%rdx
  823ede:	e9 c0 00 00 00       	jmpq   823fa3 <pre_step3d_mod_mp_pre_step3d_tile_+0xf9f3>
  823ee3:	48 89 95 80 f4 ff ff 	mov    %rdx,-0xb80(%rbp)
  823eea:	48 89 85 78 f4 ff ff 	mov    %rax,-0xb88(%rbp)
  823ef1:	48 8b 95 00 fc ff ff 	mov    -0x400(%rbp),%rdx
  823ef8:	48 8b 85 10 fc ff ff 	mov    -0x3f0(%rbp),%rax
  823eff:	48 0f af d6          	imul   %rsi,%rdx
  823f03:	49 0f af c4          	imul   %r12,%rax
  823f07:	4d 0f af e7          	imul   %r15,%r12
  823f0b:	4c 8b b5 88 f4 ff ff 	mov    -0xb78(%rbp),%r14
  823f12:	48 03 d0             	add    %rax,%rdx
  823f15:	4c 8b ad 60 f4 ff ff 	mov    -0xba0(%rbp),%r13
  823f1c:	49 8d 34 f4          	lea    (%r12,%rsi,8),%rsi
  823f20:	4c 8b a5 f8 f5 ff ff 	mov    -0xa08(%rbp),%r12
  823f27:	c4 a1 7b 10 0c 2a    	vmovsd (%rdx,%r13,1),%xmm1
  823f2d:	4b 8b 84 34 80 02 00 	mov    0x280(%r12,%r14,1),%rax
  823f34:	00 
  823f35:	48 f7 d8             	neg    %rax
  823f38:	4b 8b 94 34 98 02 00 	mov    0x298(%r12,%r14,1),%rdx
  823f3f:	00 
  823f40:	48 03 85 70 f4 ff ff 	add    -0xb90(%rbp),%rax
  823f47:	48 f7 da             	neg    %rdx
  823f4a:	48 03 95 38 f8 ff ff 	add    -0x7c8(%rbp),%rdx
  823f51:	48 0f af 85 90 f4 ff 	imul   -0xb70(%rbp),%rax
  823f58:	ff 
  823f59:	48 0f af 95 98 f4 ff 	imul   -0xb68(%rbp),%rdx
  823f60:	ff 
  823f61:	4f 8b ac 34 68 02 00 	mov    0x268(%r12,%r14,1),%r13
  823f68:	00 
  823f69:	49 f7 dd             	neg    %r13
  823f6c:	4d 03 eb             	add    %r11,%r13
  823f6f:	4c 0f af ad a0 f4 ff 	imul   -0xb60(%rbp),%r13
  823f76:	ff 
  823f77:	4b 03 84 34 28 02 00 	add    0x228(%r12,%r14,1),%rax
  823f7e:	00 
  823f7f:	48 03 d0             	add    %rax,%rdx
  823f82:	4c 8b a5 58 f4 ff ff 	mov    -0xba8(%rbp),%r12
  823f89:	48 8b 85 78 f4 ff ff 	mov    -0xb88(%rbp),%rax
  823f90:	c4 a1 73 59 14 2a    	vmulsd (%rdx,%r13,1),%xmm1,%xmm2
  823f96:	c4 a1 7b 11 14 26    	vmovsd %xmm2,(%rsi,%r12,1)
  823f9c:	48 8b 95 80 f4 ff ff 	mov    -0xb80(%rbp),%rdx
  823fa3:	4c 3b d8             	cmp    %rax,%r11
  823fa6:	0f 82 b1 fd ff ff    	jb     823d5d <pre_step3d_mod_mp_pre_step3d_tile_+0xf7ad>
  823fac:	4c 8b 85 f0 f7 ff ff 	mov    -0x810(%rbp),%r8
  823fb3:	4c 8b a5 18 fd ff ff 	mov    -0x2e8(%rbp),%r12
  823fba:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  823fc1:	4c 8b b5 20 fd ff ff 	mov    -0x2e0(%rbp),%r14
  823fc8:	48 8b 85 80 f8 ff ff 	mov    -0x780(%rbp),%rax
  823fcf:	eb 19                	jmp    823fea <pre_step3d_mod_mp_pre_step3d_tile_+0xfa3a>
  823fd1:	48 8b 95 f0 f8 ff ff 	mov    -0x710(%rbp),%rdx
  823fd8:	48 8b 8d 20 fc ff ff 	mov    -0x3e0(%rbp),%rcx
  823fdf:	48 ff 85 38 f8 ff ff 	incq   -0x7c8(%rbp)
  823fe6:	4c 8d 04 0a          	lea    (%rdx,%rcx,1),%r8
  823fea:	48 8b 95 70 f8 ff ff 	mov    -0x790(%rbp),%rdx
  823ff1:	48 8b 8d a0 f8 ff ff 	mov    -0x760(%rbp),%rcx
  823ff8:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  823fff:	48 8b bd b8 f8 ff ff 	mov    -0x748(%rbp),%rdi
  824006:	c5 fb 10 0c ca       	vmovsd (%rdx,%rcx,8),%xmm1
  82400b:	4c 8b 9d a8 f8 ff ff 	mov    -0x758(%rbp),%r11
  824012:	48 8b 95 b0 f8 ff ff 	mov    -0x750(%rbp),%rdx
  824019:	46 8b 14 0f          	mov    (%rdi,%r9,1),%r10d
  82401d:	45 3b 14 13          	cmp    (%r11,%rdx,1),%r10d
  824021:	75 13                	jne    824036 <pre_step3d_mod_mp_pre_step3d_tile_+0xfa86>
  824023:	c5 7b 59 d9          	vmulsd %xmm1,%xmm0,%xmm11
  824027:	c5 7b 10 25 d1 31 0a 	vmovsd 0xa31d1(%rip),%xmm12        # 8c7200 <__STRLITPACK_199.115+0x70>
  82402e:	00 
  82402f:	c4 41 31 57 c9       	vxorpd %xmm9,%xmm9,%xmm9
  824034:	eb 14                	jmp    82404a <pre_step3d_mod_mp_pre_step3d_tile_+0xfa9a>
  824036:	c5 2b 59 d9          	vmulsd %xmm1,%xmm10,%xmm11
  82403a:	c5 7b 10 25 0e 3a 0a 	vmovsd 0xa3a0e(%rip),%xmm12        # 8c7a50 <__STRLITPACK_199.115+0x8c0>
  824041:	00 
  824042:	c5 7b 10 0d 0e 3a 0a 	vmovsd 0xa3a0e(%rip),%xmm9        # 8c7a58 <__STRLITPACK_199.115+0x8c8>
  824049:	00 
  82404a:	48 83 bd 08 fd ff ff 	cmpq   $0x8,-0x2f8(%rbp)
  824051:	08 
  824052:	0f 85 28 04 00 00    	jne    824480 <pre_step3d_mod_mp_pre_step3d_tile_+0xfed0>
  824058:	48 83 bd 10 fd ff ff 	cmpq   $0x8,-0x2f0(%rbp)
  82405f:	08 
  824060:	0f 85 ad 03 00 00    	jne    824413 <pre_step3d_mod_mp_pre_step3d_tile_+0xfe63>
  824066:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  82406d:	48 8b 85 20 fc ff ff 	mov    -0x3e0(%rbp),%rax
  824074:	48 8b 8d 90 f8 ff ff 	mov    -0x770(%rbp),%rcx
  82407b:	48 8b b5 98 f8 ff ff 	mov    -0x768(%rbp),%rsi
  824082:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  824088:	48 83 bd 00 fd ff ff 	cmpq   $0x8,-0x300(%rbp)
  82408f:	08 
  824090:	0f 85 2d 03 00 00    	jne    8243c3 <pre_step3d_mod_mp_pre_step3d_tile_+0xfe13>
  824096:	48 83 bd f8 fc ff ff 	cmpq   $0x8,-0x308(%rbp)
  82409d:	08 
  82409e:	0f 85 1f 03 00 00    	jne    8243c3 <pre_step3d_mod_mp_pre_step3d_tile_+0xfe13>
  8240a4:	45 33 e4             	xor    %r12d,%r12d
  8240a7:	45 33 c9             	xor    %r9d,%r9d
  8240aa:	4c 8b 95 c0 f1 ff ff 	mov    -0xe40(%rbp),%r10
  8240b1:	45 33 db             	xor    %r11d,%r11d
  8240b4:	4c 8b ad c8 f1 ff ff 	mov    -0xe38(%rbp),%r13
  8240bb:	48 8b bd d0 f1 ff ff 	mov    -0xe30(%rbp),%rdi
  8240c2:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  8240c8:	0f 8c be 02 00 00    	jl     82438c <pre_step3d_mod_mp_pre_step3d_tile_+0xfddc>
  8240ce:	89 95 68 f8 ff ff    	mov    %edx,-0x798(%rbp)
  8240d4:	4c 8d 3c 06          	lea    (%rsi,%rax,1),%r15
  8240d8:	c4 c2 7d 19 dc       	vbroadcastsd %xmm12,%ymm3
  8240dd:	4c 8d 34 01          	lea    (%rcx,%rax,1),%r14
  8240e1:	c4 c2 7d 19 c9       	vbroadcastsd %xmm9,%ymm1
  8240e6:	c4 c2 7d 19 d3       	vbroadcastsd %xmm11,%ymm2
  8240eb:	48 03 85 60 f7 ff ff 	add    -0x8a0(%rbp),%rax
  8240f2:	48 8b 95 20 fd ff ff 	mov    -0x2e0(%rbp),%rdx
  8240f9:	48 89 85 20 fc ff ff 	mov    %rax,-0x3e0(%rbp)
  824100:	4c 89 b5 68 fa ff ff 	mov    %r14,-0x598(%rbp)
  824107:	4c 89 bd 70 fa ff ff 	mov    %r15,-0x590(%rbp)
  82410e:	4c 89 85 f0 f7 ff ff 	mov    %r8,-0x810(%rbp)
  824115:	8b 85 d0 fc ff ff    	mov    -0x330(%rbp),%eax
  82411b:	3b 85 d8 fc ff ff    	cmp    -0x328(%rbp),%eax
  824121:	0f 8c 17 02 00 00    	jl     82433e <pre_step3d_mod_mp_pre_step3d_tile_+0xfd8e>
  824127:	48 83 fa 04          	cmp    $0x4,%rdx
  82412b:	0f 8c da 18 00 00    	jl     825a0b <pre_step3d_mod_mp_pre_step3d_tile_+0x1145b>
  824131:	48 8b 8d 08 f9 ff ff 	mov    -0x6f8(%rbp),%rcx
  824138:	45 33 c0             	xor    %r8d,%r8d
  82413b:	4c 8b bd 70 f9 ff ff 	mov    -0x690(%rbp),%r15
  824142:	48 8b b5 80 f9 ff ff 	mov    -0x680(%rbp),%rsi
  824149:	48 8b 85 18 fd ff ff 	mov    -0x2e8(%rbp),%rax
  824150:	4e 8d 34 09          	lea    (%rcx,%r9,1),%r14
  824154:	4c 89 b5 a0 fa ff ff 	mov    %r14,-0x560(%rbp)
  82415b:	4b 8d 0c 0f          	lea    (%r15,%r9,1),%rcx
  82415f:	4c 8b bd 70 fa ff ff 	mov    -0x590(%rbp),%r15
  824166:	49 03 f1             	add    %r9,%rsi
  824169:	4c 8b b5 68 f9 ff ff 	mov    -0x698(%rbp),%r14
  824170:	4c 89 9d 80 fb ff ff 	mov    %r11,-0x480(%rbp)
  824177:	4c 89 8d 88 fb ff ff 	mov    %r9,-0x478(%rbp)
  82417e:	4d 03 fb             	add    %r11,%r15
  824181:	4c 89 bd 88 fa ff ff 	mov    %r15,-0x578(%rbp)
  824188:	4d 03 f1             	add    %r9,%r14
  82418b:	4c 8b bd 20 fc ff ff 	mov    -0x3e0(%rbp),%r15
  824192:	4c 89 a5 90 fb ff ff 	mov    %r12,-0x470(%rbp)
  824199:	4c 8b a5 a0 fa ff ff 	mov    -0x560(%rbp),%r12
  8241a0:	4d 03 fb             	add    %r11,%r15
  8241a3:	4c 89 bd 80 fa ff ff 	mov    %r15,-0x580(%rbp)
  8241aa:	4c 8b bd 68 fa ff ff 	mov    -0x598(%rbp),%r15
  8241b1:	4c 8b 8d 80 fa ff ff 	mov    -0x580(%rbp),%r9
  8241b8:	4d 03 fb             	add    %r11,%r15
  8241bb:	4c 89 bd 78 fa ff ff 	mov    %r15,-0x588(%rbp)
  8241c2:	49 89 c7             	mov    %rax,%r15
  8241c5:	48 8b 95 78 fa ff ff 	mov    -0x588(%rbp),%rdx
  8241cc:	4c 8b 9d 88 fa ff ff 	mov    -0x578(%rbp),%r11
  8241d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  8241d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  8241df:	00 
  8241e0:	c4 01 7d 10 44 c6 08 	vmovupd 0x8(%r14,%r8,8),%ymm8
  8241e7:	c4 81 6d 59 7c c5 00 	vmulpd 0x0(%r13,%r8,8),%ymm2,%ymm7
  8241ee:	c4 81 65 59 24 c1    	vmulpd (%r9,%r8,8),%ymm3,%ymm4
  8241f4:	c4 a1 75 59 2c c2    	vmulpd (%rdx,%r8,8),%ymm1,%ymm5
  8241fa:	c4 21 3d 5c 2c c1    	vsubpd (%rcx,%r8,8),%ymm8,%ymm13
  824200:	c4 21 45 59 3c c7    	vmulpd (%rdi,%r8,8),%ymm7,%ymm15
  824206:	c4 21 15 58 74 c6 08 	vaddpd 0x8(%rsi,%r8,8),%ymm13,%ymm14
  82420d:	c5 dd 58 f5          	vaddpd %ymm5,%ymm4,%ymm6
  824211:	c4 81 0d 5c 3c c4    	vsubpd (%r12,%r8,8),%ymm14,%ymm7
  824217:	c4 81 4d 59 24 c2    	vmulpd (%r10,%r8,8),%ymm6,%ymm4
  82421d:	c5 85 59 ef          	vmulpd %ymm7,%ymm15,%ymm5
  824221:	c5 dd 5c f5          	vsubpd %ymm5,%ymm4,%ymm6
  824225:	c4 81 7d 11 34 c3    	vmovupd %ymm6,(%r11,%r8,8)
  82422b:	49 83 c0 04          	add    $0x4,%r8
  82422f:	4d 3b c7             	cmp    %r15,%r8
  824232:	72 ac                	jb     8241e0 <pre_step3d_mod_mp_pre_step3d_tile_+0xfc30>
  824234:	4c 8b 9d 80 fb ff ff 	mov    -0x480(%rbp),%r11
  82423b:	4c 8b 8d 88 fb ff ff 	mov    -0x478(%rbp),%r9
  824242:	4c 8b a5 90 fb ff ff 	mov    -0x470(%rbp),%r12
  824249:	48 8b 95 20 fd ff ff 	mov    -0x2e0(%rbp),%rdx
  824250:	48 3b c2             	cmp    %rdx,%rax
  824253:	0f 83 e5 00 00 00    	jae    82433e <pre_step3d_mod_mp_pre_step3d_tile_+0xfd8e>
  824259:	48 8b 8d 08 f9 ff ff 	mov    -0x6f8(%rbp),%rcx
  824260:	4c 8b 85 70 f9 ff ff 	mov    -0x690(%rbp),%r8
  824267:	4c 8b bd 68 f9 ff ff 	mov    -0x698(%rbp),%r15
  82426e:	48 8b b5 80 f9 ff ff 	mov    -0x680(%rbp),%rsi
  824275:	4e 8d 34 09          	lea    (%rcx,%r9,1),%r14
  824279:	4c 89 b5 90 fa ff ff 	mov    %r14,-0x570(%rbp)
  824280:	4b 8d 0c 08          	lea    (%r8,%r9,1),%rcx
  824284:	4c 8b 85 70 fa ff ff 	mov    -0x590(%rbp),%r8
  82428b:	4f 8d 34 0f          	lea    (%r15,%r9,1),%r14
  82428f:	4c 8b bd 20 fc ff ff 	mov    -0x3e0(%rbp),%r15
  824296:	49 03 f1             	add    %r9,%rsi
  824299:	4c 89 b5 98 fa ff ff 	mov    %r14,-0x568(%rbp)
  8242a0:	4c 89 8d 88 fb ff ff 	mov    %r9,-0x478(%rbp)
  8242a7:	4f 8d 34 18          	lea    (%r8,%r11,1),%r14
  8242ab:	4c 89 a5 90 fb ff ff 	mov    %r12,-0x470(%rbp)
  8242b2:	4f 8d 04 1f          	lea    (%r15,%r11,1),%r8
  8242b6:	4c 8b bd 68 fa ff ff 	mov    -0x598(%rbp),%r15
  8242bd:	4c 8b a5 98 fa ff ff 	mov    -0x568(%rbp),%r12
  8242c4:	4d 03 fb             	add    %r11,%r15
  8242c7:	4d 89 f9             	mov    %r15,%r9
  8242ca:	4c 8b bd 90 fa ff ff 	mov    -0x570(%rbp),%r15
  8242d1:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  8242d8:	00 
  8242d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  8242e0:	c4 41 7b 10 44 c4 08 	vmovsd 0x8(%r12,%rax,8),%xmm8
  8242e7:	c4 c1 23 59 7c c5 00 	vmulsd 0x0(%r13,%rax,8),%xmm11,%xmm7
  8242ee:	c5 3b 5c 2c c1       	vsubsd (%rcx,%rax,8),%xmm8,%xmm13
  8242f3:	c4 c1 1b 59 24 c0    	vmulsd (%r8,%rax,8),%xmm12,%xmm4
  8242f9:	c4 c1 33 59 2c c1    	vmulsd (%r9,%rax,8),%xmm9,%xmm5
  8242ff:	c5 43 59 3c c7       	vmulsd (%rdi,%rax,8),%xmm7,%xmm15
  824304:	c5 13 58 74 c6 08    	vaddsd 0x8(%rsi,%rax,8),%xmm13,%xmm14
  82430a:	c5 db 58 f5          	vaddsd %xmm5,%xmm4,%xmm6
  82430e:	c4 c1 0b 5c 3c c7    	vsubsd (%r15,%rax,8),%xmm14,%xmm7
  824314:	c4 c1 4b 59 24 c2    	vmulsd (%r10,%rax,8),%xmm6,%xmm4
  82431a:	c5 83 59 ef          	vmulsd %xmm7,%xmm15,%xmm5
  82431e:	c5 db 5c f5          	vsubsd %xmm5,%xmm4,%xmm6
  824322:	c4 c1 7b 11 34 c6    	vmovsd %xmm6,(%r14,%rax,8)
  824328:	48 ff c0             	inc    %rax
  82432b:	48 3b c2             	cmp    %rdx,%rax
  82432e:	72 b0                	jb     8242e0 <pre_step3d_mod_mp_pre_step3d_tile_+0xfd30>
  824330:	4c 8b 8d 88 fb ff ff 	mov    -0x478(%rbp),%r9
  824337:	4c 8b a5 90 fb ff ff 	mov    -0x470(%rbp),%r12
  82433e:	49 ff c4             	inc    %r12
  824341:	4c 03 8d 78 fc ff ff 	add    -0x388(%rbp),%r9
  824348:	4c 03 95 f0 fb ff ff 	add    -0x410(%rbp),%r10
  82434f:	4c 03 9d f8 fb ff ff 	add    -0x408(%rbp),%r11
  824356:	4c 03 ad e8 fb ff ff 	add    -0x418(%rbp),%r13
  82435d:	48 03 bd e0 fb ff ff 	add    -0x420(%rbp),%rdi
  824364:	4c 3b a5 60 fc ff ff 	cmp    -0x3a0(%rbp),%r12
  82436b:	0f 82 a4 fd ff ff    	jb     824115 <pre_step3d_mod_mp_pre_step3d_tile_+0xfb65>
  824371:	4c 8b 85 f0 f7 ff ff 	mov    -0x810(%rbp),%r8
  824378:	48 8b 8d 90 f8 ff ff 	mov    -0x770(%rbp),%rcx
  82437f:	48 8b b5 98 f8 ff ff 	mov    -0x768(%rbp),%rsi
  824386:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  82438c:	48 8b bd 00 f8 ff ff 	mov    -0x800(%rbp),%rdi
  824393:	4c 89 c0             	mov    %r8,%rax
  824396:	48 3b bd 38 f8 ff ff 	cmp    -0x7c8(%rbp),%rdi
  82439d:	0f 87 f3 dc ff ff    	ja     822096 <pre_step3d_mod_mp_pre_step3d_tile_+0xdae6>
  8243a3:	4c 8b 95 60 f6 ff ff 	mov    -0x9a0(%rbp),%r10
  8243aa:	4c 8b 9d 68 f6 ff ff 	mov    -0x998(%rbp),%r11
  8243b1:	4c 8b 85 70 f6 ff ff 	mov    -0x990(%rbp),%r8
  8243b8:	8b bd 40 f8 ff ff    	mov    -0x7c0(%rbp),%edi
  8243be:	e9 ab 05 00 00       	jmpq   82496e <pre_step3d_mod_mp_pre_step3d_tile_+0x103be>
  8243c3:	c5 fd 10 05 55 1d 0a 	vmovupd 0xa1d55(%rip),%ymm0        # 8c6120 <var$630.126.450+0x1260>
  8243ca:	00 
  8243cb:	c5 fb 10 1d 2d 2e 0a 	vmovsd 0xa2e2d(%rip),%xmm3        # 8c7200 <__STRLITPACK_199.115+0x70>
  8243d2:	00 
  8243d3:	c5 fb 10 15 7d 36 0a 	vmovsd 0xa367d(%rip),%xmm2        # 8c7a58 <__STRLITPACK_199.115+0x8c8>
  8243da:	00 
  8243db:	c5 fb 10 0d 6d 36 0a 	vmovsd 0xa366d(%rip),%xmm1        # 8c7a50 <__STRLITPACK_199.115+0x8c0>
  8243e2:	00 
  8243e3:	c5 fb 10 35 55 36 0a 	vmovsd 0xa3655(%rip),%xmm6        # 8c7a40 <__STRLITPACK_199.115+0x8b0>
  8243ea:	00 
  8243eb:	c5 fd 10 25 6d 0f 0a 	vmovupd 0xa0f6d(%rip),%ymm4        # 8c5360 <var$630.126.450+0x4a0>
  8243f2:	00 
  8243f3:	48 8b b5 38 f8 ff ff 	mov    -0x7c8(%rbp),%rsi
  8243fa:	4c 8b bd f8 f7 ff ff 	mov    -0x808(%rbp),%r15
  824401:	48 8b 8d 00 f8 ff ff 	mov    -0x800(%rbp),%rcx
  824408:	8b bd 40 f8 ff ff    	mov    -0x7c0(%rbp),%edi
  82440e:	e9 cc 00 00 00       	jmpq   8244df <pre_step3d_mod_mp_pre_step3d_tile_+0xff2f>
  824413:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  824419:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  82441f:	0f 8c ed 15 00 00    	jl     825a12 <pre_step3d_mod_mp_pre_step3d_tile_+0x11462>
  824425:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  82442c:	c5 fd 10 05 ec 1c 0a 	vmovupd 0xa1cec(%rip),%ymm0        # 8c6120 <var$630.126.450+0x1260>
  824433:	00 
  824434:	c5 fb 10 1d c4 2d 0a 	vmovsd 0xa2dc4(%rip),%xmm3        # 8c7200 <__STRLITPACK_199.115+0x70>
  82443b:	00 
  82443c:	c5 fb 10 15 14 36 0a 	vmovsd 0xa3614(%rip),%xmm2        # 8c7a58 <__STRLITPACK_199.115+0x8c8>
  824443:	00 
  824444:	c5 fb 10 0d 04 36 0a 	vmovsd 0xa3604(%rip),%xmm1        # 8c7a50 <__STRLITPACK_199.115+0x8c0>
  82444b:	00 
  82444c:	c5 fb 10 35 ec 35 0a 	vmovsd 0xa35ec(%rip),%xmm6        # 8c7a40 <__STRLITPACK_199.115+0x8b0>
  824453:	00 
  824454:	c5 fd 10 25 04 0f 0a 	vmovupd 0xa0f04(%rip),%ymm4        # 8c5360 <var$630.126.450+0x4a0>
  82445b:	00 
  82445c:	48 8b 85 20 fc ff ff 	mov    -0x3e0(%rbp),%rax
  824463:	48 8b b5 38 f8 ff ff 	mov    -0x7c8(%rbp),%rsi
  82446a:	4c 8b bd f8 f7 ff ff 	mov    -0x808(%rbp),%r15
  824471:	48 8b 8d 00 f8 ff ff 	mov    -0x800(%rbp),%rcx
  824478:	8b bd 40 f8 ff ff    	mov    -0x7c0(%rbp),%edi
  82447e:	eb 67                	jmp    8244e7 <pre_step3d_mod_mp_pre_step3d_tile_+0xff37>
  824480:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  824487:	c5 fd 10 05 91 1c 0a 	vmovupd 0xa1c91(%rip),%ymm0        # 8c6120 <var$630.126.450+0x1260>
  82448e:	00 
  82448f:	c5 fb 10 1d 69 2d 0a 	vmovsd 0xa2d69(%rip),%xmm3        # 8c7200 <__STRLITPACK_199.115+0x70>
  824496:	00 
  824497:	c5 fb 10 15 b9 35 0a 	vmovsd 0xa35b9(%rip),%xmm2        # 8c7a58 <__STRLITPACK_199.115+0x8c8>
  82449e:	00 
  82449f:	c5 fb 10 0d a9 35 0a 	vmovsd 0xa35a9(%rip),%xmm1        # 8c7a50 <__STRLITPACK_199.115+0x8c0>
  8244a6:	00 
  8244a7:	c5 fb 10 35 91 35 0a 	vmovsd 0xa3591(%rip),%xmm6        # 8c7a40 <__STRLITPACK_199.115+0x8b0>
  8244ae:	00 
  8244af:	c5 fd 10 25 a9 0e 0a 	vmovupd 0xa0ea9(%rip),%ymm4        # 8c5360 <var$630.126.450+0x4a0>
  8244b6:	00 
  8244b7:	48 8b 85 20 fc ff ff 	mov    -0x3e0(%rbp),%rax
  8244be:	48 8b b5 38 f8 ff ff 	mov    -0x7c8(%rbp),%rsi
  8244c5:	4c 8b bd f8 f7 ff ff 	mov    -0x808(%rbp),%r15
  8244cc:	48 8b 8d 00 f8 ff ff 	mov    -0x800(%rbp),%rcx
  8244d3:	8b bd 40 f8 ff ff    	mov    -0x7c0(%rbp),%edi
  8244d9:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  8244df:	3b d7                	cmp    %edi,%edx
  8244e1:	0f 8c 66 04 00 00    	jl     82494d <pre_step3d_mod_mp_pre_step3d_tile_+0x1039d>
  8244e7:	45 33 f6             	xor    %r14d,%r14d
  8244ea:	4d 89 fc             	mov    %r15,%r12
  8244ed:	4c 8b ad 98 f7 ff ff 	mov    -0x868(%rbp),%r13
  8244f4:	45 33 db             	xor    %r11d,%r11d
  8244f7:	4c 8b 8d a0 f7 ff ff 	mov    -0x860(%rbp),%r9
  8244fe:	45 33 d2             	xor    %r10d,%r10d
  824501:	c4 c1 7b 12 fc       	vmovddup %xmm12,%xmm7
  824506:	c4 41 7b 12 c1       	vmovddup %xmm9,%xmm8
  82450b:	c4 c1 7b 12 eb       	vmovddup %xmm11,%xmm5
  824510:	4c 89 ad 90 fd ff ff 	mov    %r13,-0x270(%rbp)
  824517:	4c 89 b5 c8 fc ff ff 	mov    %r14,-0x338(%rbp)
  82451e:	48 89 85 20 fc ff ff 	mov    %rax,-0x3e0(%rbp)
  824525:	4c 89 85 f0 f7 ff ff 	mov    %r8,-0x810(%rbp)
  82452c:	48 89 b5 38 f8 ff ff 	mov    %rsi,-0x7c8(%rbp)
  824533:	48 89 8d 00 f8 ff ff 	mov    %rcx,-0x800(%rbp)
  82453a:	89 bd 40 f8 ff ff    	mov    %edi,-0x7c0(%rbp)
  824540:	89 95 68 f8 ff ff    	mov    %edx,-0x798(%rbp)
  824546:	8b 85 d0 fc ff ff    	mov    -0x330(%rbp),%eax
  82454c:	3b 85 d8 fc ff ff    	cmp    -0x328(%rbp),%eax
  824552:	0f 8c 7e 03 00 00    	jl     8248d6 <pre_step3d_mod_mp_pre_step3d_tile_+0x10326>
  824558:	48 83 bd 10 fd ff ff 	cmpq   $0x0,-0x2f0(%rbp)
  82455f:	00 
  824560:	0f 84 ed 14 00 00    	je     825a53 <pre_step3d_mod_mp_pre_step3d_tile_+0x114a3>
  824566:	48 83 bd 20 fd ff ff 	cmpq   $0x2,-0x2e0(%rbp)
  82456d:	02 
  82456e:	0f 8c df 14 00 00    	jl     825a53 <pre_step3d_mod_mp_pre_step3d_tile_+0x114a3>
  824574:	48 8b 85 e8 f8 ff ff 	mov    -0x718(%rbp),%rax
  82457b:	48 8b 95 08 f9 ff ff 	mov    -0x6f8(%rbp),%rdx
  824582:	4c 8b b5 80 f9 ff ff 	mov    -0x680(%rbp),%r14
  824589:	4c 8b 85 30 f9 ff ff 	mov    -0x6d0(%rbp),%r8
  824590:	48 c1 e0 03          	shl    $0x3,%rax
  824594:	4c 8b bd 28 f9 ff ff 	mov    -0x6d8(%rbp),%r15
  82459b:	4a 8d 34 1a          	lea    (%rdx,%r11,1),%rsi
  82459f:	48 8b 95 20 fc ff ff 	mov    -0x3e0(%rbp),%rdx
  8245a6:	48 f7 d8             	neg    %rax
  8245a9:	48 03 85 f8 f8 ff ff 	add    -0x708(%rbp),%rax
  8245b0:	4f 8d 2c 1e          	lea    (%r14,%r11,1),%r13
  8245b4:	48 8b 8d 30 fd ff ff 	mov    -0x2d0(%rbp),%rcx
  8245bb:	48 8b bd 88 f9 ff ff 	mov    -0x678(%rbp),%rdi
  8245c2:	4c 89 ad c0 fa ff ff 	mov    %r13,-0x540(%rbp)
  8245c9:	4d 8d 2c 10          	lea    (%r8,%rdx,1),%r13
  8245cd:	48 03 85 c0 f9 ff ff 	add    -0x640(%rbp),%rax
  8245d4:	4d 8d 04 17          	lea    (%r15,%rdx,1),%r8
  8245d8:	4c 8b bd b8 f9 ff ff 	mov    -0x648(%rbp),%r15
  8245df:	4c 8d 34 17          	lea    (%rdi,%rdx,1),%r14
  8245e3:	49 f7 df             	neg    %r15
  8245e6:	4d 03 ea             	add    %r10,%r13
  8245e9:	48 89 8d c0 fc ff ff 	mov    %rcx,-0x340(%rbp)
  8245f0:	33 c9                	xor    %ecx,%ecx
  8245f2:	49 03 c7             	add    %r15,%rax
  8245f5:	4d 03 c2             	add    %r10,%r8
  8245f8:	48 89 b5 b8 fd ff ff 	mov    %rsi,-0x248(%rbp)
  8245ff:	33 f6                	xor    %esi,%esi
  824601:	4c 8b bd 90 f9 ff ff 	mov    -0x670(%rbp),%r15
  824608:	33 ff                	xor    %edi,%edi
  82460a:	33 d2                	xor    %edx,%edx
  82460c:	4d 03 f2             	add    %r10,%r14
  82460f:	4c 89 9d b8 fa ff ff 	mov    %r11,-0x548(%rbp)
  824616:	4a 8d 04 f8          	lea    (%rax,%r15,8),%rax
  82461a:	4c 89 85 a8 fd ff ff 	mov    %r8,-0x258(%rbp)
  824621:	4c 89 ad a0 fd ff ff 	mov    %r13,-0x260(%rbp)
  824628:	4c 89 95 98 fb ff ff 	mov    %r10,-0x468(%rbp)
  82462f:	4c 89 9d a0 fb ff ff 	mov    %r11,-0x460(%rbp)
  824636:	4c 89 b5 98 fd ff ff 	mov    %r14,-0x268(%rbp)
  82463d:	4c 8b ad b8 fa ff ff 	mov    -0x548(%rbp),%r13
  824644:	49 89 d2             	mov    %rdx,%r10
  824647:	4c 8b 85 c0 fa ff ff 	mov    -0x540(%rbp),%r8
  82464e:	4c 8b 9d 10 fd ff ff 	mov    -0x2f0(%rbp),%r11
  824655:	4c 8b bd 08 fd ff ff 	mov    -0x2f8(%rbp),%r15
  82465c:	4d 8d 34 34          	lea    (%r12,%rsi,1),%r14
  824660:	c4 41 7b 10 36       	vmovsd (%r14),%xmm14
  824665:	c4 01 09 16 2c 3e    	vmovhpd (%r14,%r15,1),%xmm14,%xmm13
  82466b:	4a 8d 34 7e          	lea    (%rsi,%r15,2),%rsi
  82466f:	4c 8b b5 98 fd ff ff 	mov    -0x268(%rbp),%r14
  824676:	4f 8d 3c 16          	lea    (%r14,%r10,1),%r15
  82467a:	4c 8b b5 a0 fd ff ff 	mov    -0x260(%rbp),%r14
  824681:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  824686:	c4 01 01 16 34 1f    	vmovhpd (%r15,%r11,1),%xmm15,%xmm14
  82468c:	c4 41 41 59 fe       	vmulpd %xmm14,%xmm7,%xmm15
  824691:	4f 8d 3c 16          	lea    (%r14,%r10,1),%r15
  824695:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  82469a:	4d 8d 34 39          	lea    (%r9,%rdi,1),%r14
  82469e:	c4 01 09 16 34 1f    	vmovhpd (%r15,%r11,1),%xmm14,%xmm14
  8246a4:	c4 41 39 59 f6       	vmulpd %xmm14,%xmm8,%xmm14
  8246a9:	c4 41 01 58 fe       	vaddpd %xmm14,%xmm15,%xmm15
  8246ae:	4c 8b bd 00 fd ff ff 	mov    -0x300(%rbp),%r15
  8246b5:	c4 41 11 59 ff       	vmulpd %xmm15,%xmm13,%xmm15
  8246ba:	c4 41 7b 10 2e       	vmovsd (%r14),%xmm13
  8246bf:	4a 8d 3c 7f          	lea    (%rdi,%r15,2),%rdi
  8246c3:	c4 01 11 16 2c 3e    	vmovhpd (%r14,%r15,1),%xmm13,%xmm13
  8246c9:	c4 41 51 59 f5       	vmulpd %xmm13,%xmm5,%xmm14
  8246ce:	4c 8b b5 90 fd ff ff 	mov    -0x270(%rbp),%r14
  8246d5:	4d 8d 3c 16          	lea    (%r14,%rdx,1),%r15
  8246d9:	4c 8b b5 f8 fc ff ff 	mov    -0x308(%rbp),%r14
  8246e0:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  8246e5:	c4 01 11 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm13
  8246eb:	4a 8d 14 72          	lea    (%rdx,%r14,2),%rdx
  8246ef:	c4 41 09 59 ed       	vmulpd %xmm13,%xmm14,%xmm13
  8246f4:	c4 41 79 10 74 05 08 	vmovupd 0x8(%r13,%rax,1),%xmm14
  8246fb:	c4 41 09 5c 74 05 00 	vsubpd 0x0(%r13,%rax,1),%xmm14,%xmm14
  824702:	c4 41 09 58 74 c8 08 	vaddpd 0x8(%r8,%rcx,8),%xmm14,%xmm14
  824709:	4c 8b bd b8 fd ff ff 	mov    -0x248(%rbp),%r15
  824710:	49 83 c5 10          	add    $0x10,%r13
  824714:	4c 8b b5 a8 fd ff ff 	mov    -0x258(%rbp),%r14
  82471b:	c4 41 09 5c 34 cf    	vsubpd (%r15,%rcx,8),%xmm14,%xmm14
  824721:	c4 41 11 59 ee       	vmulpd %xmm14,%xmm13,%xmm13
  824726:	c4 41 01 5c fd       	vsubpd %xmm13,%xmm15,%xmm15
  82472b:	48 83 c1 02          	add    $0x2,%rcx
  82472f:	4f 8d 3c 32          	lea    (%r10,%r14,1),%r15
  824733:	c4 41 7b 11 3f       	vmovsd %xmm15,(%r15)
  824738:	4f 8d 14 5a          	lea    (%r10,%r11,2),%r10
  82473c:	c4 01 79 17 3c 3b    	vmovhpd %xmm15,(%r11,%r15,1)
  824742:	48 3b 8d 30 fd ff ff 	cmp    -0x2d0(%rbp),%rcx
  824749:	0f 82 06 ff ff ff    	jb     824655 <pre_step3d_mod_mp_pre_step3d_tile_+0x100a5>
  82474f:	4c 8b 95 98 fb ff ff 	mov    -0x468(%rbp),%r10
  824756:	4c 8b 9d a0 fb ff ff 	mov    -0x460(%rbp),%r11
  82475d:	48 8b 85 c0 fc ff ff 	mov    -0x340(%rbp),%rax
  824764:	4c 8b ad 10 fd ff ff 	mov    -0x2f0(%rbp),%r13
  82476b:	4c 8b 85 f8 fc ff ff 	mov    -0x308(%rbp),%r8
  824772:	48 8b bd 00 fd ff ff 	mov    -0x300(%rbp),%rdi
  824779:	48 8b b5 08 fd ff ff 	mov    -0x2f8(%rbp),%rsi
  824780:	4c 0f af e8          	imul   %rax,%r13
  824784:	4c 0f af c0          	imul   %rax,%r8
  824788:	48 0f af f8          	imul   %rax,%rdi
  82478c:	48 0f af f0          	imul   %rax,%rsi
  824790:	48 3b 85 20 fd ff ff 	cmp    -0x2e0(%rbp),%rax
  824797:	0f 83 39 01 00 00    	jae    8248d6 <pre_step3d_mod_mp_pre_step3d_tile_+0x10326>
  82479d:	48 8b 95 08 f9 ff ff 	mov    -0x6f8(%rbp),%rdx
  8247a4:	4c 8b b5 80 f9 ff ff 	mov    -0x680(%rbp),%r14
  8247ab:	48 8b 85 68 f9 ff ff 	mov    -0x698(%rbp),%rax
  8247b2:	4c 89 95 98 fb ff ff 	mov    %r10,-0x468(%rbp)
  8247b9:	4e 8d 3c 1a          	lea    (%rdx,%r11,1),%r15
  8247bd:	4c 89 bd d0 fa ff ff 	mov    %r15,-0x530(%rbp)
  8247c4:	4b 8d 0c 1e          	lea    (%r14,%r11,1),%rcx
  8247c8:	48 89 8d c8 fa ff ff 	mov    %rcx,-0x538(%rbp)
  8247cf:	4a 8d 0c 18          	lea    (%rax,%r11,1),%rcx
  8247d3:	48 8b 95 88 f9 ff ff 	mov    -0x678(%rbp),%rdx
  8247da:	48 8b 85 20 fc ff ff 	mov    -0x3e0(%rbp),%rax
  8247e1:	4c 8b bd 30 f9 ff ff 	mov    -0x6d0(%rbp),%r15
  8247e8:	4c 8b b5 70 f9 ff ff 	mov    -0x690(%rbp),%r14
  8247ef:	48 89 8d c0 fd ff ff 	mov    %rcx,-0x240(%rbp)
  8247f6:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  8247fa:	4c 89 9d a0 fb ff ff 	mov    %r11,-0x460(%rbp)
  824801:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
  824805:	4c 8b bd 28 f9 ff ff 	mov    -0x6d8(%rbp),%r15
  82480c:	4d 03 f3             	add    %r11,%r14
  82480f:	4c 89 b5 b0 fd ff ff 	mov    %r14,-0x250(%rbp)
  824816:	49 03 ca             	add    %r10,%rcx
  824819:	4c 8b 9d c8 fa ff ff 	mov    -0x538(%rbp),%r11
  824820:	49 03 d2             	add    %r10,%rdx
  824823:	4c 8b b5 c0 fc ff ff 	mov    -0x340(%rbp),%r14
  82482a:	49 03 c7             	add    %r15,%rax
  82482d:	49 03 c2             	add    %r10,%rax
  824830:	4c 8b 95 d0 fa ff ff 	mov    -0x530(%rbp),%r10
  824837:	c4 41 1b 59 7c 0d 00 	vmulsd 0x0(%r13,%rcx,1),%xmm12,%xmm15
  82483e:	c4 41 33 59 74 15 00 	vmulsd 0x0(%r13,%rdx,1),%xmm9,%xmm14
  824845:	4c 8b bd 90 fd ff ff 	mov    -0x270(%rbp),%r15
  82484c:	c4 41 03 58 ee       	vaddsd %xmm14,%xmm15,%xmm13
  824851:	c4 21 23 59 3c 0f    	vmulsd (%rdi,%r9,1),%xmm11,%xmm15
  824857:	c4 21 13 59 34 26    	vmulsd (%rsi,%r12,1),%xmm13,%xmm14
  82485d:	c4 01 03 59 2c 38    	vmulsd (%r8,%r15,1),%xmm15,%xmm13
  824863:	4c 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15
  82486a:	48 03 b5 08 fd ff ff 	add    -0x2f8(%rbp),%rsi
  824871:	48 03 bd 00 fd ff ff 	add    -0x300(%rbp),%rdi
  824878:	c4 01 7b 10 7c f7 08 	vmovsd 0x8(%r15,%r14,8),%xmm15
  82487f:	4c 8b bd b0 fd ff ff 	mov    -0x250(%rbp),%r15
  824886:	4c 03 85 f8 fc ff ff 	add    -0x308(%rbp),%r8
  82488d:	c4 01 03 5c 3c f7    	vsubsd (%r15,%r14,8),%xmm15,%xmm15
  824893:	c4 01 03 58 7c f3 08 	vaddsd 0x8(%r11,%r14,8),%xmm15,%xmm15
  82489a:	c4 01 03 5c 3c f2    	vsubsd (%r10,%r14,8),%xmm15,%xmm15
  8248a0:	49 ff c6             	inc    %r14
  8248a3:	c4 41 13 59 ef       	vmulsd %xmm15,%xmm13,%xmm13
  8248a8:	c4 41 0b 5c f5       	vsubsd %xmm13,%xmm14,%xmm14
  8248ad:	c4 41 7b 11 74 05 00 	vmovsd %xmm14,0x0(%r13,%rax,1)
  8248b4:	4c 03 ad 10 fd ff ff 	add    -0x2f0(%rbp),%r13
  8248bb:	4c 3b b5 20 fd ff ff 	cmp    -0x2e0(%rbp),%r14
  8248c2:	0f 82 6f ff ff ff    	jb     824837 <pre_step3d_mod_mp_pre_step3d_tile_+0x10287>
  8248c8:	4c 8b 95 98 fb ff ff 	mov    -0x468(%rbp),%r10
  8248cf:	4c 8b 9d a0 fb ff ff 	mov    -0x460(%rbp),%r11
  8248d6:	48 8b 85 90 fd ff ff 	mov    -0x270(%rbp),%rax
  8248dd:	48 8b 95 c8 fc ff ff 	mov    -0x338(%rbp),%rdx
  8248e4:	48 ff c2             	inc    %rdx
  8248e7:	48 03 85 e0 fb ff ff 	add    -0x420(%rbp),%rax
  8248ee:	4c 03 9d 78 fc ff ff 	add    -0x388(%rbp),%r11
  8248f5:	4c 03 a5 f0 fb ff ff 	add    -0x410(%rbp),%r12
  8248fc:	4c 03 95 f8 fb ff ff 	add    -0x408(%rbp),%r10
  824903:	4c 03 8d e8 fb ff ff 	add    -0x418(%rbp),%r9
  82490a:	48 89 85 90 fd ff ff 	mov    %rax,-0x270(%rbp)
  824911:	48 89 95 c8 fc ff ff 	mov    %rdx,-0x338(%rbp)
  824918:	48 3b 95 60 fc ff ff 	cmp    -0x3a0(%rbp),%rdx
  82491f:	0f 82 21 fc ff ff    	jb     824546 <pre_step3d_mod_mp_pre_step3d_tile_+0xff96>
  824925:	4c 8b 85 f0 f7 ff ff 	mov    -0x810(%rbp),%r8
  82492c:	48 8b b5 38 f8 ff ff 	mov    -0x7c8(%rbp),%rsi
  824933:	4c 8b bd f8 f7 ff ff 	mov    -0x808(%rbp),%r15
  82493a:	48 8b 8d 00 f8 ff ff 	mov    -0x800(%rbp),%rcx
  824941:	8b bd 40 f8 ff ff    	mov    -0x7c0(%rbp),%edi
  824947:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  82494d:	4c 89 c0             	mov    %r8,%rax
  824950:	48 3b f1             	cmp    %rcx,%rsi
  824953:	0f 82 dd d6 ff ff    	jb     822036 <pre_step3d_mod_mp_pre_step3d_tile_+0xda86>
  824959:	4c 8b 95 60 f6 ff ff 	mov    -0x9a0(%rbp),%r10
  824960:	4c 8b 9d 68 f6 ff ff 	mov    -0x998(%rbp),%r11
  824967:	4c 8b 85 70 f6 ff ff 	mov    -0x990(%rbp),%r8
  82496e:	49 ff c0             	inc    %r8
  824971:	4c 3b 85 28 f7 ff ff 	cmp    -0x8d8(%rbp),%r8
  824978:	0f 82 22 c5 ff ff    	jb     820ea0 <pre_step3d_mod_mp_pre_step3d_tile_+0xc8f0>
  82497e:	bf 1c 74 b3 00       	mov    $0xb3741c,%edi
  824983:	8b b5 20 f7 ff ff    	mov    -0x8e0(%rbp),%esi
  824989:	c5 f8 77             	vzeroupper 
  82498c:	e8 6f 97 be ff       	callq  40e100 <__kmpc_for_static_fini@plt>
  824991:	48 8b 95 50 f6 ff ff 	mov    -0x9b0(%rbp),%rdx
  824998:	48 8b 85 58 f6 ff ff 	mov    -0x9a8(%rbp),%rax
  82499f:	48 83 c0 1f          	add    $0x1f,%rax
  8249a3:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  8249a7:	48 03 e0             	add    %rax,%rsp
  8249aa:	48 8b 95 40 f6 ff ff 	mov    -0x9c0(%rbp),%rdx
  8249b1:	48 8b 85 48 f6 ff ff 	mov    -0x9b8(%rbp),%rax
  8249b8:	48 83 c0 1f          	add    $0x1f,%rax
  8249bc:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  8249c0:	48 03 e0             	add    %rax,%rsp
  8249c3:	48 8b 95 10 f6 ff ff 	mov    -0x9f0(%rbp),%rdx
  8249ca:	48 8b 85 38 f6 ff ff 	mov    -0x9c8(%rbp),%rax
  8249d1:	48 83 c0 1f          	add    $0x1f,%rax
  8249d5:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  8249d9:	48 03 e0             	add    %rax,%rsp
  8249dc:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  8249e3:	48 8b 85 08 f6 ff ff 	mov    -0x9f8(%rbp),%rax
  8249ea:	48 83 c0 1f          	add    $0x1f,%rax
  8249ee:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  8249f2:	48 03 e0             	add    %rax,%rsp
  8249f5:	4c 8b bd 18 f6 ff ff 	mov    -0x9e8(%rbp),%r15
  8249fc:	4c 8b b5 20 f6 ff ff 	mov    -0x9e0(%rbp),%r14
  824a03:	4c 8b ad 28 f6 ff ff 	mov    -0x9d8(%rbp),%r13
  824a0a:	4c 8b a5 30 f6 ff ff 	mov    -0x9d0(%rbp),%r12
  824a11:	c9                   	leaveq 
  824a12:	48 89 dc             	mov    %rbx,%rsp
  824a15:	5b                   	pop    %rbx
  824a16:	c3                   	retq   
  824a17:	49 83 fe 04          	cmp    $0x4,%r14
  824a1b:	7c 5b                	jl     824a78 <pre_step3d_mod_mp_pre_step3d_tile_+0x104c8>
  824a1d:	48 8b 95 e8 f6 ff ff 	mov    -0x918(%rbp),%rdx
  824a24:	33 f6                	xor    %esi,%esi
  824a26:	48 8b 85 e0 f6 ff ff 	mov    -0x920(%rbp),%rax
  824a2d:	48 89 c7             	mov    %rax,%rdi
  824a30:	4a 8d 0c 3a          	lea    (%rdx,%r15,1),%rcx
  824a34:	4b 8d 14 3c          	lea    (%r12,%r15,1),%rdx
  824a38:	c5 fd 10 04 f1       	vmovupd (%rcx,%rsi,8),%ymm0
  824a3d:	c5 fd 11 04 f2       	vmovupd %ymm0,(%rdx,%rsi,8)
  824a42:	48 83 c6 04          	add    $0x4,%rsi
  824a46:	48 3b f7             	cmp    %rdi,%rsi
  824a49:	72 ed                	jb     824a38 <pre_step3d_mod_mp_pre_step3d_tile_+0x10488>
  824a4b:	49 3b c6             	cmp    %r14,%rax
  824a4e:	0f 83 91 09 ff ff    	jae    8153e5 <pre_step3d_mod_mp_pre_step3d_tile_+0xe35>
  824a54:	48 8b 95 e8 f6 ff ff 	mov    -0x918(%rbp),%rdx
  824a5b:	4a 8d 0c 3a          	lea    (%rdx,%r15,1),%rcx
  824a5f:	4b 8d 14 3c          	lea    (%r12,%r15,1),%rdx
  824a63:	48 8b 34 c1          	mov    (%rcx,%rax,8),%rsi
  824a67:	48 89 34 c2          	mov    %rsi,(%rdx,%rax,8)
  824a6b:	48 ff c0             	inc    %rax
  824a6e:	49 3b c6             	cmp    %r14,%rax
  824a71:	72 f0                	jb     824a63 <pre_step3d_mod_mp_pre_step3d_tile_+0x104b3>
  824a73:	e9 6d 09 ff ff       	jmpq   8153e5 <pre_step3d_mod_mp_pre_step3d_tile_+0xe35>
  824a78:	33 c0                	xor    %eax,%eax
  824a7a:	eb cf                	jmp    824a4b <pre_step3d_mod_mp_pre_step3d_tile_+0x1049b>
  824a7c:	45 33 ff             	xor    %r15d,%r15d
  824a7f:	e9 e7 06 ff ff       	jmpq   81516b <pre_step3d_mod_mp_pre_step3d_tile_+0xbbb>
  824a84:	33 c0                	xor    %eax,%eax
  824a86:	e9 e6 31 ff ff       	jmpq   817c71 <pre_step3d_mod_mp_pre_step3d_tile_+0x36c1>
  824a8b:	33 c0                	xor    %eax,%eax
  824a8d:	e9 f6 38 ff ff       	jmpq   818388 <pre_step3d_mod_mp_pre_step3d_tile_+0x3dd8>
  824a92:	33 c0                	xor    %eax,%eax
  824a94:	e9 f5 3f ff ff       	jmpq   818a8e <pre_step3d_mod_mp_pre_step3d_tile_+0x44de>
  824a99:	45 33 ed             	xor    %r13d,%r13d
  824a9c:	e9 9a 43 ff ff       	jmpq   818e3b <pre_step3d_mod_mp_pre_step3d_tile_+0x488b>
  824aa1:	33 c0                	xor    %eax,%eax
  824aa3:	e9 94 46 ff ff       	jmpq   81913c <pre_step3d_mod_mp_pre_step3d_tile_+0x4b8c>
  824aa8:	45 33 ed             	xor    %r13d,%r13d
  824aab:	e9 b9 49 ff ff       	jmpq   819469 <pre_step3d_mod_mp_pre_step3d_tile_+0x4eb9>
  824ab0:	33 c0                	xor    %eax,%eax
  824ab2:	e9 bc 4d ff ff       	jmpq   819873 <pre_step3d_mod_mp_pre_step3d_tile_+0x52c3>
  824ab7:	33 c0                	xor    %eax,%eax
  824ab9:	e9 04 56 ff ff       	jmpq   81a0c2 <pre_step3d_mod_mp_pre_step3d_tile_+0x5b12>
  824abe:	33 c0                	xor    %eax,%eax
  824ac0:	e9 65 5c ff ff       	jmpq   81a72a <pre_step3d_mod_mp_pre_step3d_tile_+0x617a>
  824ac5:	45 33 e4             	xor    %r12d,%r12d
  824ac8:	e9 8e 5f ff ff       	jmpq   81aa5b <pre_step3d_mod_mp_pre_step3d_tile_+0x64ab>
  824acd:	33 c0                	xor    %eax,%eax
  824acf:	e9 53 64 ff ff       	jmpq   81af27 <pre_step3d_mod_mp_pre_step3d_tile_+0x6977>
  824ad4:	45 33 ed             	xor    %r13d,%r13d
  824ad7:	e9 16 68 ff ff       	jmpq   81b2f2 <pre_step3d_mod_mp_pre_step3d_tile_+0x6d42>
  824adc:	33 c0                	xor    %eax,%eax
  824ade:	e9 2b 6b ff ff       	jmpq   81b60e <pre_step3d_mod_mp_pre_step3d_tile_+0x705e>
  824ae3:	45 33 f6             	xor    %r14d,%r14d
  824ae6:	e9 5c 6e ff ff       	jmpq   81b947 <pre_step3d_mod_mp_pre_step3d_tile_+0x7397>
  824aeb:	33 c0                	xor    %eax,%eax
  824aed:	e9 73 72 ff ff       	jmpq   81bd65 <pre_step3d_mod_mp_pre_step3d_tile_+0x77b5>
  824af2:	48 c7 85 98 f6 ff ff 	movq   $0x0,-0x968(%rbp)
  824af9:	00 00 00 00 
  824afd:	e9 5e 76 ff ff       	jmpq   81c160 <pre_step3d_mod_mp_pre_step3d_tile_+0x7bb0>
  824b02:	45 33 ff             	xor    %r15d,%r15d
  824b05:	e9 d7 61 ff ff       	jmpq   81ace1 <pre_step3d_mod_mp_pre_step3d_tile_+0x6731>
  824b0a:	45 33 ff             	xor    %r15d,%r15d
  824b0d:	e9 e7 5d ff ff       	jmpq   81a8f9 <pre_step3d_mod_mp_pre_step3d_tile_+0x6349>
  824b12:	48 c7 85 08 fc ff ff 	movq   $0x0,-0x3f8(%rbp)
  824b19:	00 00 00 00 
  824b1d:	e9 af 59 ff ff       	jmpq   81a4d1 <pre_step3d_mod_mp_pre_step3d_tile_+0x5f21>
  824b22:	48 c7 85 80 fa ff ff 	movq   $0x0,-0x580(%rbp)
  824b29:	00 00 00 00 
  824b2d:	e9 2d 51 ff ff       	jmpq   819c5f <pre_step3d_mod_mp_pre_step3d_tile_+0x56af>
  824b32:	48 c7 85 e8 f8 ff ff 	movq   $0x0,-0x718(%rbp)
  824b39:	00 00 00 00 
  824b3d:	e9 59 3c ff ff       	jmpq   81879b <pre_step3d_mod_mp_pre_step3d_tile_+0x41eb>
  824b42:	45 33 f6             	xor    %r14d,%r14d
  824b45:	e9 3b 35 ff ff       	jmpq   818085 <pre_step3d_mod_mp_pre_step3d_tile_+0x3ad5>
  824b4a:	33 c0                	xor    %eax,%eax
  824b4c:	e9 08 88 ff ff       	jmpq   81d359 <pre_step3d_mod_mp_pre_step3d_tile_+0x8da9>
  824b51:	3b bd d8 f4 ff ff    	cmp    -0xb28(%rbp),%edi
  824b57:	0f 84 07 8f ff ff    	je     81da64 <pre_step3d_mod_mp_pre_step3d_tile_+0x94b4>
  824b5d:	e9 3a 93 ff ff       	jmpq   81de9c <pre_step3d_mod_mp_pre_step3d_tile_+0x98ec>
  824b62:	33 c0                	xor    %eax,%eax
  824b64:	e9 d7 8f ff ff       	jmpq   81db40 <pre_step3d_mod_mp_pre_step3d_tile_+0x9590>
  824b69:	33 c0                	xor    %eax,%eax
  824b6b:	e9 c0 93 ff ff       	jmpq   81df30 <pre_step3d_mod_mp_pre_step3d_tile_+0x9980>
  824b70:	45 33 ed             	xor    %r13d,%r13d
  824b73:	e9 dd 96 ff ff       	jmpq   81e255 <pre_step3d_mod_mp_pre_step3d_tile_+0x9ca5>
  824b78:	45 33 d2             	xor    %r10d,%r10d
  824b7b:	e9 18 99 ff ff       	jmpq   81e498 <pre_step3d_mod_mp_pre_step3d_tile_+0x9ee8>
  824b80:	45 33 ed             	xor    %r13d,%r13d
  824b83:	e9 51 95 ff ff       	jmpq   81e0d9 <pre_step3d_mod_mp_pre_step3d_tile_+0x9b29>
  824b88:	45 33 db             	xor    %r11d,%r11d
  824b8b:	e9 63 92 ff ff       	jmpq   81ddf3 <pre_step3d_mod_mp_pre_step3d_tile_+0x9843>
  824b90:	45 33 f6             	xor    %r14d,%r14d
  824b93:	e9 2d 8d ff ff       	jmpq   81d8c5 <pre_step3d_mod_mp_pre_step3d_tile_+0x9315>
  824b98:	45 33 c0             	xor    %r8d,%r8d
  824b9b:	e9 a7 8b ff ff       	jmpq   81d747 <pre_step3d_mod_mp_pre_step3d_tile_+0x9197>
  824ba0:	33 c0                	xor    %eax,%eax
  824ba2:	e9 d6 a7 ff ff       	jmpq   81f37d <pre_step3d_mod_mp_pre_step3d_tile_+0xadcd>
  824ba7:	48 8b 85 68 f9 ff ff 	mov    -0x698(%rbp),%rax
  824bae:	4c 8b a5 78 f8 ff ff 	mov    -0x788(%rbp),%r12
  824bb5:	48 8b 95 80 f8 ff ff 	mov    -0x780(%rbp),%rdx
  824bbc:	4c 8b 9d 88 f8 ff ff 	mov    -0x778(%rbp),%r11
  824bc3:	48 83 bd 60 fa ff ff 	cmpq   $0x2,-0x5a0(%rbp)
  824bca:	02 
  824bcb:	0f 8c 2d 0d 00 00    	jl     8258fe <pre_step3d_mod_mp_pre_step3d_tile_+0x1134e>
  824bd1:	48 8b bd 40 f8 ff ff 	mov    -0x7c0(%rbp),%rdi
  824bd8:	45 33 ff             	xor    %r15d,%r15d
  824bdb:	48 0f af f8          	imul   %rax,%rdi
  824bdf:	48 8b b5 70 f8 ff ff 	mov    -0x790(%rbp),%rsi
  824be6:	4c 8b ad 58 f8 ff ff 	mov    -0x7a8(%rbp),%r13
  824bed:	4c 8b 95 60 f8 ff ff 	mov    -0x7a0(%rbp),%r10
  824bf4:	4c 8b 8d 68 f8 ff ff 	mov    -0x798(%rbp),%r9
  824bfb:	4c 8d 04 3e          	lea    (%rsi,%rdi,1),%r8
  824bff:	48 8b 8d 58 fa ff ff 	mov    -0x5a8(%rbp),%rcx
  824c06:	33 f6                	xor    %esi,%esi
  824c08:	4d 8d 74 3d 00       	lea    0x0(%r13,%rdi,1),%r14
  824c0d:	48 89 85 68 f9 ff ff 	mov    %rax,-0x698(%rbp)
  824c14:	4d 8d 2c 3b          	lea    (%r11,%rdi,1),%r13
  824c18:	48 89 8d 90 f8 ff ff 	mov    %rcx,-0x770(%rbp)
  824c1f:	4c 03 d7             	add    %rdi,%r10
  824c22:	48 89 95 80 f8 ff ff 	mov    %rdx,-0x780(%rbp)
  824c29:	4c 03 cf             	add    %rdi,%r9
  824c2c:	48 03 bd 50 f8 ff ff 	add    -0x7b0(%rbp),%rdi
  824c33:	48 89 f0             	mov    %rsi,%rax
  824c36:	48 8b 95 78 fa ff ff 	mov    -0x588(%rbp),%rdx
  824c3d:	48 8b 8d 68 fa ff ff 	mov    -0x598(%rbp),%rcx
  824c44:	4c 8b 9d 50 fa ff ff 	mov    -0x5b0(%rbp),%r11
  824c4b:	4c 8b a5 80 fa ff ff 	mov    -0x580(%rbp),%r12
  824c52:	4c 03 e6             	add    %rsi,%r12
  824c55:	c4 41 7b 10 2c 24    	vmovsd (%r12),%xmm13
  824c5b:	c4 c1 11 16 0c 0c    	vmovhpd (%r12,%rcx,1),%xmm13,%xmm1
  824c61:	4d 8d 24 06          	lea    (%r14,%rax,1),%r12
  824c65:	c4 41 7b 10 34 24    	vmovsd (%r12),%xmm14
  824c6b:	c4 01 09 16 3c 1c    	vmovhpd (%r12,%r11,1),%xmm14,%xmm15
  824c71:	4d 8d 64 05 00       	lea    0x0(%r13,%rax,1),%r12
  824c76:	c4 c1 7b 10 04 24    	vmovsd (%r12),%xmm0
  824c7c:	c4 01 79 16 2c 1c    	vmovhpd (%r12,%r11,1),%xmm0,%xmm13
  824c82:	4d 8d 24 02          	lea    (%r10,%rax,1),%r12
  824c86:	c4 41 61 59 f7       	vmulpd %xmm15,%xmm3,%xmm14
  824c8b:	c4 41 49 59 fd       	vmulpd %xmm13,%xmm6,%xmm15
  824c90:	c4 c1 7b 10 04 24    	vmovsd (%r12),%xmm0
  824c96:	c4 01 79 16 2c 1c    	vmovhpd (%r12,%r11,1),%xmm0,%xmm13
  824c9c:	c4 41 09 58 f7       	vaddpd %xmm15,%xmm14,%xmm14
  824ca1:	c4 41 41 59 fd       	vmulpd %xmm13,%xmm7,%xmm15
  824ca6:	c4 c1 09 5c c7       	vsubpd %xmm15,%xmm14,%xmm0
  824cab:	c5 f1 59 c8          	vmulpd %xmm0,%xmm1,%xmm1
  824caf:	4c 8b a5 70 fa ff ff 	mov    -0x590(%rbp),%r12
  824cb6:	c4 a1 79 11 4c fa 08 	vmovupd %xmm1,0x8(%rdx,%r15,8)
  824cbd:	c4 01 79 11 0c fc    	vmovupd %xmm9,(%r12,%r15,8)
  824cc3:	4c 8b a5 98 fa ff ff 	mov    -0x568(%rbp),%r12
  824cca:	4c 03 e6             	add    %rsi,%r12
  824ccd:	c4 c1 7b 10 04 24    	vmovsd (%r12),%xmm0
  824cd3:	48 8d 34 4e          	lea    (%rsi,%rcx,2),%rsi
  824cd7:	c4 c1 79 16 04 0c    	vmovhpd (%r12,%rcx,1),%xmm0,%xmm0
  824cdd:	4c 8d 24 07          	lea    (%rdi,%rax,1),%r12
  824ce1:	c4 c1 7b 10 0c 24    	vmovsd (%r12),%xmm1
  824ce7:	c4 01 71 16 2c 1c    	vmovhpd (%r12,%r11,1),%xmm1,%xmm13
  824ced:	4d 8d 24 00          	lea    (%r8,%rax,1),%r12
  824cf1:	c4 41 7b 10 34 24    	vmovsd (%r12),%xmm14
  824cf7:	c4 01 09 16 3c 1c    	vmovhpd (%r12,%r11,1),%xmm14,%xmm15
  824cfd:	4d 8d 24 01          	lea    (%r9,%rax,1),%r12
  824d01:	c4 c1 61 59 cd       	vmulpd %xmm13,%xmm3,%xmm1
  824d06:	c4 41 49 59 ef       	vmulpd %xmm15,%xmm6,%xmm13
  824d0b:	c4 41 7b 10 34 24    	vmovsd (%r12),%xmm14
  824d11:	4a 8d 04 58          	lea    (%rax,%r11,2),%rax
  824d15:	c4 01 09 16 3c 1c    	vmovhpd (%r12,%r11,1),%xmm14,%xmm15
  824d1b:	c4 c1 71 58 cd       	vaddpd %xmm13,%xmm1,%xmm1
  824d20:	c4 41 41 59 ef       	vmulpd %xmm15,%xmm7,%xmm13
  824d25:	c4 41 71 5c f5       	vsubpd %xmm13,%xmm1,%xmm14
  824d2a:	c4 c1 79 59 c6       	vmulpd %xmm14,%xmm0,%xmm0
  824d2f:	4c 8b a5 90 fa ff ff 	mov    -0x570(%rbp),%r12
  824d36:	c4 81 79 11 04 fc    	vmovupd %xmm0,(%r12,%r15,8)
  824d3c:	4c 8b a5 88 fa ff ff 	mov    -0x578(%rbp),%r12
  824d43:	c4 01 79 11 0c fc    	vmovupd %xmm9,(%r12,%r15,8)
  824d49:	49 83 c7 02          	add    $0x2,%r15
  824d4d:	4c 3b bd 58 fa ff ff 	cmp    -0x5a8(%rbp),%r15
  824d54:	0f 82 f1 fe ff ff    	jb     824c4b <pre_step3d_mod_mp_pre_step3d_tile_+0x1069b>
  824d5a:	48 8b 85 68 f9 ff ff 	mov    -0x698(%rbp),%rax
  824d61:	48 8b 8d 90 f8 ff ff 	mov    -0x770(%rbp),%rcx
  824d68:	4c 8b a5 78 f8 ff ff 	mov    -0x788(%rbp),%r12
  824d6f:	48 8b 95 80 f8 ff ff 	mov    -0x780(%rbp),%rdx
  824d76:	4c 8b 9d 88 f8 ff ff 	mov    -0x778(%rbp),%r11
  824d7d:	4c 8b bd 50 fa ff ff 	mov    -0x5b0(%rbp),%r15
  824d84:	4c 8b ad 68 fa ff ff 	mov    -0x598(%rbp),%r13
  824d8b:	4c 0f af f9          	imul   %rcx,%r15
  824d8f:	4c 0f af e9          	imul   %rcx,%r13
  824d93:	48 3b 8d 60 fa ff ff 	cmp    -0x5a0(%rbp),%rcx
  824d9a:	0f 83 0d 01 00 00    	jae    824ead <pre_step3d_mod_mp_pre_step3d_tile_+0x108fd>
  824da0:	48 8b b5 40 f8 ff ff 	mov    -0x7c0(%rbp),%rsi
  824da7:	48 0f af f0          	imul   %rax,%rsi
  824dab:	4c 8b 8d 58 f8 ff ff 	mov    -0x7a8(%rbp),%r9
  824db2:	4c 8b 85 60 f8 ff ff 	mov    -0x7a0(%rbp),%r8
  824db9:	48 8b bd 68 f8 ff ff 	mov    -0x798(%rbp),%rdi
  824dc0:	4c 8b b5 70 f8 ff ff 	mov    -0x790(%rbp),%r14
  824dc7:	4d 8d 14 31          	lea    (%r9,%rsi,1),%r10
  824dcb:	48 89 95 80 f8 ff ff 	mov    %rdx,-0x780(%rbp)
  824dd2:	4d 8d 0c 33          	lea    (%r11,%rsi,1),%r9
  824dd6:	48 89 85 68 f9 ff ff 	mov    %rax,-0x698(%rbp)
  824ddd:	4c 03 c6             	add    %rsi,%r8
  824de0:	48 8b 95 80 fa ff ff 	mov    -0x580(%rbp),%rdx
  824de7:	48 03 fe             	add    %rsi,%rdi
  824dea:	4c 8b 9d 98 fa ff ff 	mov    -0x568(%rbp),%r11
  824df1:	4c 03 f6             	add    %rsi,%r14
  824df4:	48 03 b5 50 f8 ff ff 	add    -0x7b0(%rbp),%rsi
  824dfb:	c4 81 23 59 04 17    	vmulsd (%r15,%r10,1),%xmm11,%xmm0
  824e01:	33 c0                	xor    %eax,%eax
  824e03:	c4 81 5b 59 0c 0f    	vmulsd (%r15,%r9,1),%xmm4,%xmm1
  824e09:	c4 01 3b 59 34 07    	vmulsd (%r15,%r8,1),%xmm8,%xmm14
  824e0f:	c5 7b 58 e9          	vaddsd %xmm1,%xmm0,%xmm13
  824e13:	c4 c1 23 59 0c 37    	vmulsd (%r15,%rsi,1),%xmm11,%xmm1
  824e19:	4c 8b a5 78 fa ff ff 	mov    -0x588(%rbp),%r12
  824e20:	c4 41 13 5c fe       	vsubsd %xmm14,%xmm13,%xmm15
  824e25:	c4 01 5b 59 2c 37    	vmulsd (%r15,%r14,1),%xmm4,%xmm13
  824e2b:	c4 c1 03 59 44 15 00 	vmulsd 0x0(%r13,%rdx,1),%xmm15,%xmm0
  824e32:	c4 41 73 58 f5       	vaddsd %xmm13,%xmm1,%xmm14
  824e37:	c4 41 3b 59 3c 3f    	vmulsd (%r15,%rdi,1),%xmm8,%xmm15
  824e3d:	c4 c1 7b 11 44 cc 08 	vmovsd %xmm0,0x8(%r12,%rcx,8)
  824e44:	c4 c1 0b 5c c7       	vsubsd %xmm15,%xmm14,%xmm0
  824e49:	4c 8b a5 70 fa ff ff 	mov    -0x590(%rbp),%r12
  824e50:	c4 81 7b 59 4c 1d 00 	vmulsd 0x0(%r13,%r11,1),%xmm0,%xmm1
  824e57:	49 89 04 cc          	mov    %rax,(%r12,%rcx,8)
  824e5b:	4c 8b a5 90 fa ff ff 	mov    -0x570(%rbp),%r12
  824e62:	4c 03 ad 68 fa ff ff 	add    -0x598(%rbp),%r13
  824e69:	4c 03 bd 50 fa ff ff 	add    -0x5b0(%rbp),%r15
  824e70:	c4 c1 7b 11 0c cc    	vmovsd %xmm1,(%r12,%rcx,8)
  824e76:	4c 8b a5 88 fa ff ff 	mov    -0x578(%rbp),%r12
  824e7d:	49 89 04 cc          	mov    %rax,(%r12,%rcx,8)
  824e81:	48 ff c1             	inc    %rcx
  824e84:	48 3b 8d 60 fa ff ff 	cmp    -0x5a0(%rbp),%rcx
  824e8b:	0f 82 6a ff ff ff    	jb     824dfb <pre_step3d_mod_mp_pre_step3d_tile_+0x1084b>
  824e91:	48 8b 85 68 f9 ff ff 	mov    -0x698(%rbp),%rax
  824e98:	4c 8b a5 78 f8 ff ff 	mov    -0x788(%rbp),%r12
  824e9f:	48 8b 95 80 f8 ff ff 	mov    -0x780(%rbp),%rdx
  824ea6:	4c 8b 9d 88 f8 ff ff 	mov    -0x778(%rbp),%r11
  824ead:	33 f6                	xor    %esi,%esi
  824eaf:	48 83 bd 98 f8 ff ff 	cmpq   $0x0,-0x768(%rbp)
  824eb6:	00 
  824eb7:	7e 36                	jle    824eef <pre_step3d_mod_mp_pre_step3d_tile_+0x1093f>
  824eb9:	bf 01 00 00 00       	mov    $0x1,%edi
  824ebe:	33 c9                	xor    %ecx,%ecx
  824ec0:	4d 85 e4             	test   %r12,%r12
  824ec3:	74 1b                	je     824ee0 <pre_step3d_mod_mp_pre_step3d_tile_+0x10930>
  824ec5:	48 8b bd 48 f8 ff ff 	mov    -0x7b8(%rbp),%rdi
  824ecc:	0b 34 ca             	or     (%rdx,%rcx,8),%esi
  824ecf:	0b 74 cf 04          	or     0x4(%rdi,%rcx,8),%esi
  824ed3:	48 ff c1             	inc    %rcx
  824ed6:	49 3b cc             	cmp    %r12,%rcx
  824ed9:	72 f1                	jb     824ecc <pre_step3d_mod_mp_pre_step3d_tile_+0x1091c>
  824edb:	48 8d 7c 09 01       	lea    0x1(%rcx,%rcx,1),%rdi
  824ee0:	48 ff cf             	dec    %rdi
  824ee3:	48 3b bd 98 f8 ff ff 	cmp    -0x768(%rbp),%rdi
  824eea:	73 03                	jae    824eef <pre_step3d_mod_mp_pre_step3d_tile_+0x1093f>
  824eec:	0b 34 ba             	or     (%rdx,%rdi,4),%esi
  824eef:	83 bd b8 f8 ff ff 00 	cmpl   $0x0,-0x748(%rbp)
  824ef6:	0f 84 f7 04 00 00    	je     8253f3 <pre_step3d_mod_mp_pre_step3d_tile_+0x10e43>
  824efc:	f7 c6 01 00 00 00    	test   $0x1,%esi
  824f02:	0f 84 eb 04 00 00    	je     8253f3 <pre_step3d_mod_mp_pre_step3d_tile_+0x10e43>
  824f08:	48 8b b5 40 f6 ff ff 	mov    -0x9c0(%rbp),%rsi
  824f0f:	4c 8d 68 01          	lea    0x1(%rax),%r13
  824f13:	48 8b 8d 50 f6 ff ff 	mov    -0x9b0(%rbp),%rcx
  824f1a:	48 c7 85 48 f6 ff ff 	movq   $0x0,-0x9b8(%rbp)
  824f21:	00 00 00 00 
  824f25:	48 63 0c b1          	movslq (%rcx,%rsi,4),%rcx
  824f29:	48 85 c9             	test   %rcx,%rcx
  824f2c:	0f 8e c5 04 00 00    	jle    8253f7 <pre_step3d_mod_mp_pre_step3d_tile_+0x10e47>
  824f32:	4c 8b 95 f8 f5 ff ff 	mov    -0xa08(%rbp),%r10
  824f39:	33 f6                	xor    %esi,%esi
  824f3b:	4c 8b 8d 10 f6 ff ff 	mov    -0x9f0(%rbp),%r9
  824f42:	4c 89 ad 00 f8 ff ff 	mov    %r13,-0x800(%rbp)
  824f49:	48 89 85 68 f9 ff ff 	mov    %rax,-0x698(%rbp)
  824f50:	4b 8b bc 0a 80 00 00 	mov    0x80(%r10,%r9,1),%rdi
  824f57:	00 
  824f58:	4f 8b 84 0a 88 00 00 	mov    0x88(%r10,%r9,1),%r8
  824f5f:	00 
  824f60:	4c 0f af c7          	imul   %rdi,%r8
  824f64:	48 89 bd 08 f6 ff ff 	mov    %rdi,-0x9f8(%rbp)
  824f6b:	4b 8b 7c 0a 38       	mov    0x38(%r10,%r9,1),%rdi
  824f70:	4f 8b 7c 0a 40       	mov    0x40(%r10,%r9,1),%r15
  824f75:	4c 0f af ff          	imul   %rdi,%r15
  824f79:	4f 8b 74 0a 48       	mov    0x48(%r10,%r9,1),%r14
  824f7e:	4f 8b 0c 0a          	mov    (%r10,%r9,1),%r9
  824f82:	4d 2b f0             	sub    %r8,%r14
  824f85:	4c 8b 95 38 f6 ff ff 	mov    -0x9c8(%rbp),%r10
  824f8c:	45 33 c0             	xor    %r8d,%r8d
  824f8f:	4c 89 b5 00 f6 ff ff 	mov    %r14,-0xa00(%rbp)
  824f96:	4d 2b cf             	sub    %r15,%r9
  824f99:	48 89 95 80 f8 ff ff 	mov    %rdx,-0x780(%rbp)
  824fa0:	45 8b 54 82 04       	mov    0x4(%r10,%rax,4),%r10d
  824fa5:	4d 89 f3             	mov    %r14,%r11
  824fa8:	41 83 e2 01          	and    $0x1,%r10d
  824fac:	4c 8b a5 08 f6 ff ff 	mov    -0x9f8(%rbp),%r12
  824fb3:	4c 8b ad 48 f6 ff ff 	mov    -0x9b8(%rbp),%r13
  824fba:	4c 03 c7             	add    %rdi,%r8
  824fbd:	49 03 f4             	add    %r12,%rsi
  824fc0:	49 8d 55 01          	lea    0x1(%r13),%rdx
  824fc4:	47 8b 34 08          	mov    (%r8,%r9,1),%r14d
  824fc8:	46 8b 3c 1e          	mov    (%rsi,%r11,1),%r15d
  824fcc:	45 85 d2             	test   %r10d,%r10d
  824fcf:	0f 84 ed 03 00 00    	je     8253c2 <pre_step3d_mod_mp_pre_step3d_tile_+0x10e12>
  824fd5:	49 63 c6             	movslq %r14d,%rax
  824fd8:	48 3b 85 18 fa ff ff 	cmp    -0x5e8(%rbp),%rax
  824fdf:	0f 8c dd 03 00 00    	jl     8253c2 <pre_step3d_mod_mp_pre_step3d_tile_+0x10e12>
  824fe5:	44 3b b5 58 f6 ff ff 	cmp    -0x9a8(%rbp),%r14d
  824fec:	0f 8f d0 03 00 00    	jg     8253c2 <pre_step3d_mod_mp_pre_step3d_tile_+0x10e12>
  824ff2:	44 3b bd 30 f5 ff ff 	cmp    -0xad0(%rbp),%r15d
  824ff9:	0f 85 c3 03 00 00    	jne    8253c2 <pre_step3d_mod_mp_pre_step3d_tile_+0x10e12>
  824fff:	4c 8b b5 f8 f5 ff ff 	mov    -0xa08(%rbp),%r14
  825006:	4c 8b bd 10 f6 ff ff 	mov    -0x9f0(%rbp),%r15
  82500d:	4f 8b b4 3e 00 02 00 	mov    0x200(%r14,%r15,1),%r14
  825014:	00 
  825015:	4c 89 b5 38 f3 ff ff 	mov    %r14,-0xcc8(%rbp)
  82501c:	49 83 fe 08          	cmp    $0x8,%r14
  825020:	0f 85 b2 01 00 00    	jne    8251d8 <pre_step3d_mod_mp_pre_step3d_tile_+0x10c28>
  825026:	4c 8b b5 f8 f5 ff ff 	mov    -0xa08(%rbp),%r14
  82502d:	4b 83 bc 3e 60 02 00 	cmpq   $0x8,0x260(%r14,%r15,1)
  825034:	00 08 
  825036:	0f 85 9c 01 00 00    	jne    8251d8 <pre_step3d_mod_mp_pre_step3d_tile_+0x10c28>
  82503c:	48 c7 85 30 f3 ff ff 	movq   $0x0,-0xcd0(%rbp)
  825043:	00 00 00 00 
  825047:	48 83 bd b0 f3 ff ff 	cmpq   $0x0,-0xc50(%rbp)
  82504e:	00 
  82504f:	0f 8e 6d 03 00 00    	jle    8253c2 <pre_step3d_mod_mp_pre_step3d_tile_+0x10e12>
  825055:	48 89 95 a0 f3 ff ff 	mov    %rdx,-0xc60(%rbp)
  82505c:	48 8b 95 98 f3 ff ff 	mov    -0xc68(%rbp),%rdx
  825063:	4d 89 f7             	mov    %r14,%r15
  825066:	4c 8b b5 10 f6 ff ff 	mov    -0x9f0(%rbp),%r14
  82506d:	4c 89 85 10 f3 ff ff 	mov    %r8,-0xcf0(%rbp)
  825074:	48 8d 44 c2 08       	lea    0x8(%rdx,%rax,8),%rax
  825079:	48 89 85 40 f3 ff ff 	mov    %rax,-0xcc0(%rbp)
  825080:	4b 8b 94 37 78 02 00 	mov    0x278(%r15,%r14,1),%rdx
  825087:	00 
  825088:	4f 8b 84 37 80 02 00 	mov    0x280(%r15,%r14,1),%r8
  82508f:	00 
  825090:	4c 0f af c2          	imul   %rdx,%r8
  825094:	4b 8b 84 37 68 02 00 	mov    0x268(%r15,%r14,1),%rax
  82509b:	00 
  82509c:	44 89 95 00 f3 ff ff 	mov    %r10d,-0xd00(%rbp)
  8250a3:	4f 8b 94 37 98 02 00 	mov    0x298(%r15,%r14,1),%r10
  8250aa:	00 
  8250ab:	49 f7 da             	neg    %r10
  8250ae:	4d 8d 04 c0          	lea    (%r8,%rax,8),%r8
  8250b2:	48 8b 85 68 f9 ff ff 	mov    -0x698(%rbp),%rax
  8250b9:	4c 89 8d 08 f3 ff ff 	mov    %r9,-0xcf8(%rbp)
  8250c0:	45 33 c9             	xor    %r9d,%r9d
  8250c3:	4c 89 8d 60 f3 ff ff 	mov    %r9,-0xca0(%rbp)
  8250ca:	4c 89 8d 68 f3 ff ff 	mov    %r9,-0xc98(%rbp)
  8250d1:	49 8d 44 02 01       	lea    0x1(%r10,%rax,1),%rax
  8250d6:	4b 0f af 84 37 90 02 	imul   0x290(%r15,%r14,1),%rax
  8250dd:	00 00 
  8250df:	4f 8b 94 37 28 02 00 	mov    0x228(%r15,%r14,1),%r10
  8250e6:	00 
  8250e7:	4d 2b d0             	sub    %r8,%r10
  8250ea:	4f 8b 8c 37 20 02 00 	mov    0x220(%r15,%r14,1),%r9
  8250f1:	00 
  8250f2:	48 89 95 78 f3 ff ff 	mov    %rdx,-0xc88(%rbp)
  8250f9:	48 89 bd 18 f3 ff ff 	mov    %rdi,-0xce8(%rbp)
  825100:	48 89 b5 20 f3 ff ff 	mov    %rsi,-0xce0(%rbp)
  825107:	4f 8d 04 ea          	lea    (%r10,%r13,8),%r8
  82510b:	49 03 c0             	add    %r8,%rax
  82510e:	4f 8b 84 37 18 02 00 	mov    0x218(%r15,%r14,1),%r8
  825115:	00 
  825116:	4d 0f af c8          	imul   %r8,%r9
  82511a:	4f 8b 94 37 08 02 00 	mov    0x208(%r15,%r14,1),%r10
  825121:	00 
  825122:	4f 8b b4 37 c8 01 00 	mov    0x1c8(%r15,%r14,1),%r14
  825129:	00 
  82512a:	4c 8d 3c 50          	lea    (%rax,%rdx,2),%r15
  82512e:	49 c1 e2 03          	shl    $0x3,%r10
  825132:	4d 2b f1             	sub    %r9,%r14
  825135:	4d 2b f2             	sub    %r10,%r14
  825138:	4c 89 85 90 f3 ff ff 	mov    %r8,-0xc70(%rbp)
  82513f:	48 89 8d 28 f3 ff ff 	mov    %rcx,-0xcd8(%rbp)
  825146:	4f 8d 2c ee          	lea    (%r14,%r13,8),%r13
  82514a:	48 8b 95 a0 f3 ff ff 	mov    -0xc60(%rbp),%rdx
  825151:	4f 8d 74 45 00       	lea    0x0(%r13,%r8,2),%r14
  825156:	48 8b 8d 40 f3 ff ff 	mov    -0xcc0(%rbp),%rcx
  82515d:	48 8b b5 68 f3 ff ff 	mov    -0xc98(%rbp),%rsi
  825164:	48 8b bd 90 f3 ff ff 	mov    -0xc70(%rbp),%rdi
  82516b:	4c 8b 85 60 f3 ff ff 	mov    -0xca0(%rbp),%r8
  825172:	4c 8b 8d 78 f3 ff ff 	mov    -0xc88(%rbp),%r9
  825179:	4c 8b 95 30 f3 ff ff 	mov    -0xcd0(%rbp),%r10
  825180:	4c 8b 9d b0 f3 ff ff 	mov    -0xc50(%rbp),%r11
  825187:	4c 8b a5 38 fa ff ff 	mov    -0x5c8(%rbp),%r12
  82518e:	66 90                	xchg   %ax,%ax
  825190:	48 03 f7             	add    %rdi,%rsi
  825193:	4d 03 c1             	add    %r9,%r8
  825196:	c4 c1 7b 10 4e 08    	vmovsd 0x8(%r14),%xmm1
  82519c:	49 ff c2             	inc    %r10
  82519f:	c4 41 73 59 77 08    	vmulsd 0x8(%r15),%xmm1,%xmm14
  8251a5:	4c 03 f7             	add    %rdi,%r14
  8251a8:	c4 a1 7b 10 44 2e 08 	vmovsd 0x8(%rsi,%r13,1),%xmm0
  8251af:	4d 03 f9             	add    %r9,%r15
  8251b2:	c4 41 7b 59 6c 00 08 	vmulsd 0x8(%r8,%rax,1),%xmm0,%xmm13
  8251b9:	c4 41 13 58 fe       	vaddsd %xmm14,%xmm13,%xmm15
  8251be:	c4 c1 23 59 c7       	vmulsd %xmm15,%xmm11,%xmm0
  8251c3:	c5 fb 58 09          	vaddsd (%rcx),%xmm0,%xmm1
  8251c7:	c5 fb 11 09          	vmovsd %xmm1,(%rcx)
  8251cb:	49 03 cc             	add    %r12,%rcx
  8251ce:	4d 3b d3             	cmp    %r11,%r10
  8251d1:	72 bd                	jb     825190 <pre_step3d_mod_mp_pre_step3d_tile_+0x10be0>
  8251d3:	e9 b2 01 00 00       	jmpq   82538a <pre_step3d_mod_mp_pre_step3d_tile_+0x10dda>
  8251d8:	48 c7 85 a8 f3 ff ff 	movq   $0x0,-0xc58(%rbp)
  8251df:	00 00 00 00 
  8251e3:	48 83 bd b0 f3 ff ff 	cmpq   $0x0,-0xc50(%rbp)
  8251ea:	00 
  8251eb:	0f 8e d1 01 00 00    	jle    8253c2 <pre_step3d_mod_mp_pre_step3d_tile_+0x10e12>
  8251f1:	4c 89 85 10 f3 ff ff 	mov    %r8,-0xcf0(%rbp)
  8251f8:	48 89 95 a0 f3 ff ff 	mov    %rdx,-0xc60(%rbp)
  8251ff:	48 8b 95 f8 f5 ff ff 	mov    -0xa08(%rbp),%rdx
  825206:	4d 89 f8             	mov    %r15,%r8
  825209:	4c 89 8d 08 f3 ff ff 	mov    %r9,-0xcf8(%rbp)
  825210:	44 89 95 00 f3 ff ff 	mov    %r10d,-0xd00(%rbp)
  825217:	4e 8b 8c 02 68 02 00 	mov    0x268(%rdx,%r8,1),%r9
  82521e:	00 
  82521f:	49 f7 d9             	neg    %r9
  825222:	4e 8b 94 02 78 02 00 	mov    0x278(%rdx,%r8,1),%r10
  825229:	00 
  82522a:	4c 8b bd 98 f3 ff ff 	mov    -0xc68(%rbp),%r15
  825231:	4c 89 95 58 f3 ff ff 	mov    %r10,-0xca8(%rbp)
  825238:	48 89 bd 18 f3 ff ff 	mov    %rdi,-0xce8(%rbp)
  82523f:	4f 8d 74 29 01       	lea    0x1(%r9,%r13,1),%r14
  825244:	4e 0f af b4 02 60 02 	imul   0x260(%rdx,%r8,1),%r14
  82524b:	00 00 
  82524d:	45 33 c9             	xor    %r9d,%r9d
  825250:	49 8d 44 c7 08       	lea    0x8(%r15,%rax,8),%rax
  825255:	48 89 85 48 f3 ff ff 	mov    %rax,-0xcb8(%rbp)
  82525c:	4f 8d 3c 12          	lea    (%r10,%r10,1),%r15
  825260:	4c 89 bd 50 f3 ff ff 	mov    %r15,-0xcb0(%rbp)
  825267:	4a 8b 84 02 80 02 00 	mov    0x280(%rdx,%r8,1),%rax
  82526e:	00 
  82526f:	4e 8b bc 02 98 02 00 	mov    0x298(%rdx,%r8,1),%r15
  825276:	00 
  825277:	49 0f af c2          	imul   %r10,%rax
  82527b:	49 f7 df             	neg    %r15
  82527e:	4c 03 bd 00 f8 ff ff 	add    -0x800(%rbp),%r15
  825285:	4e 0f af bc 02 90 02 	imul   0x290(%rdx,%r8,1),%r15
  82528c:	00 00 
  82528e:	4e 8b 94 02 28 02 00 	mov    0x228(%rdx,%r8,1),%r10
  825295:	00 
  825296:	4c 2b d0             	sub    %rax,%r10
  825299:	4d 03 f2             	add    %r10,%r14
  82529c:	4d 03 fe             	add    %r14,%r15
  82529f:	4e 8b b4 02 08 02 00 	mov    0x208(%rdx,%r8,1),%r14
  8252a6:	00 
  8252a7:	49 f7 de             	neg    %r14
  8252aa:	4c 89 8d 70 f3 ff ff 	mov    %r9,-0xc90(%rbp)
  8252b1:	4c 89 8d 80 f3 ff ff 	mov    %r9,-0xc80(%rbp)
  8252b8:	4e 8b 8c 02 20 02 00 	mov    0x220(%rdx,%r8,1),%r9
  8252bf:	00 
  8252c0:	4b 8d 44 2e 01       	lea    0x1(%r14,%r13,1),%rax
  8252c5:	4e 8b ac 02 18 02 00 	mov    0x218(%rdx,%r8,1),%r13
  8252cc:	00 
  8252cd:	4d 0f af cd          	imul   %r13,%r9
  8252d1:	48 0f af 85 38 f3 ff 	imul   -0xcc8(%rbp),%rax
  8252d8:	ff 
  8252d9:	4a 8b 94 02 c8 01 00 	mov    0x1c8(%rdx,%r8,1),%rdx
  8252e0:	00 
  8252e1:	4f 8d 54 2d 00       	lea    0x0(%r13,%r13,1),%r10
  8252e6:	4c 89 95 88 f3 ff ff 	mov    %r10,-0xc78(%rbp)
  8252ed:	49 2b d1             	sub    %r9,%rdx
  8252f0:	48 03 c2             	add    %rdx,%rax
  8252f3:	48 89 b5 20 f3 ff ff 	mov    %rsi,-0xce0(%rbp)
  8252fa:	48 89 8d 28 f3 ff ff 	mov    %rcx,-0xcd8(%rbp)
  825301:	48 8b 95 a0 f3 ff ff 	mov    -0xc60(%rbp),%rdx
  825308:	48 8b 8d 48 f3 ff ff 	mov    -0xcb8(%rbp),%rcx
  82530f:	4c 89 fe             	mov    %r15,%rsi
  825312:	48 8b bd 80 f3 ff ff 	mov    -0xc80(%rbp),%rdi
  825319:	4c 8b 85 88 f3 ff ff 	mov    -0xc78(%rbp),%r8
  825320:	4c 8b 8d 70 f3 ff ff 	mov    -0xc90(%rbp),%r9
  825327:	4c 8b 95 50 f3 ff ff 	mov    -0xcb0(%rbp),%r10
  82532e:	4c 8b 9d 58 f3 ff ff 	mov    -0xca8(%rbp),%r11
  825335:	4c 8b a5 a8 f3 ff ff 	mov    -0xc58(%rbp),%r12
  82533c:	4c 8b b5 b0 f3 ff ff 	mov    -0xc50(%rbp),%r14
  825343:	4c 8b bd 38 fa ff ff 	mov    -0x5c8(%rbp),%r15
  82534a:	49 03 fd             	add    %r13,%rdi
  82534d:	4d 03 cb             	add    %r11,%r9
  825350:	c4 c1 7b 10 0c 00    	vmovsd (%r8,%rax,1),%xmm1
  825356:	49 ff c4             	inc    %r12
  825359:	c4 41 73 59 34 32    	vmulsd (%r10,%rsi,1),%xmm1,%xmm14
  82535f:	4d 03 c5             	add    %r13,%r8
  825362:	c5 fb 10 04 07       	vmovsd (%rdi,%rax,1),%xmm0
  825367:	4d 03 d3             	add    %r11,%r10
  82536a:	c4 41 7b 59 2c 31    	vmulsd (%r9,%rsi,1),%xmm0,%xmm13
  825370:	c4 41 13 58 fe       	vaddsd %xmm14,%xmm13,%xmm15
  825375:	c4 c1 23 59 c7       	vmulsd %xmm15,%xmm11,%xmm0
  82537a:	c5 fb 58 09          	vaddsd (%rcx),%xmm0,%xmm1
  82537e:	c5 fb 11 09          	vmovsd %xmm1,(%rcx)
  825382:	49 03 cf             	add    %r15,%rcx
  825385:	4d 3b e6             	cmp    %r14,%r12
  825388:	72 c0                	jb     82534a <pre_step3d_mod_mp_pre_step3d_tile_+0x10d9a>
  82538a:	44 8b 95 00 f3 ff ff 	mov    -0xd00(%rbp),%r10d
  825391:	4c 8b 8d 08 f3 ff ff 	mov    -0xcf8(%rbp),%r9
  825398:	4c 8b 85 10 f3 ff ff 	mov    -0xcf0(%rbp),%r8
  82539f:	48 8b bd 18 f3 ff ff 	mov    -0xce8(%rbp),%rdi
  8253a6:	4c 8b 9d 00 f6 ff ff 	mov    -0xa00(%rbp),%r11
  8253ad:	48 8b b5 20 f3 ff ff 	mov    -0xce0(%rbp),%rsi
  8253b4:	4c 8b a5 08 f6 ff ff 	mov    -0x9f8(%rbp),%r12
  8253bb:	48 8b 8d 28 f3 ff ff 	mov    -0xcd8(%rbp),%rcx
  8253c2:	49 89 d5             	mov    %rdx,%r13
  8253c5:	48 3b d1             	cmp    %rcx,%rdx
  8253c8:	0f 82 ec fb ff ff    	jb     824fba <pre_step3d_mod_mp_pre_step3d_tile_+0x10a0a>
  8253ce:	48 8b 85 68 f9 ff ff 	mov    -0x698(%rbp),%rax
  8253d5:	4c 8b ad 00 f8 ff ff 	mov    -0x800(%rbp),%r13
  8253dc:	4c 8b a5 78 f8 ff ff 	mov    -0x788(%rbp),%r12
  8253e3:	48 8b 95 80 f8 ff ff 	mov    -0x780(%rbp),%rdx
  8253ea:	4c 8b 9d 88 f8 ff ff 	mov    -0x778(%rbp),%r11
  8253f1:	eb 04                	jmp    8253f7 <pre_step3d_mod_mp_pre_step3d_tile_+0x10e47>
  8253f3:	4c 8d 68 01          	lea    0x1(%rax),%r13
  8253f7:	8b 8d a0 f8 ff ff    	mov    -0x760(%rbp),%ecx
  8253fd:	c4 c1 79 28 c2       	vmovapd %xmm10,%xmm0
  825402:	3b 8d a8 f8 ff ff    	cmp    -0x758(%rbp),%ecx
  825408:	74 05                	je     82540f <pre_step3d_mod_mp_pre_step3d_tile_+0x10e5f>
  82540a:	c4 c1 78 28 c4       	vmovaps %xmm12,%xmm0
  82540f:	48 83 bd 40 fa ff ff 	cmpq   $0x8,-0x5c0(%rbp)
  825416:	08 
  825417:	0f 85 89 01 00 00    	jne    8255a6 <pre_step3d_mod_mp_pre_step3d_tile_+0x10ff6>
  82541d:	48 83 bd c8 f9 ff ff 	cmpq   $0x8,-0x638(%rbp)
  825424:	08 
  825425:	0f 85 7b 01 00 00    	jne    8255a6 <pre_step3d_mod_mp_pre_step3d_tile_+0x10ff6>
  82542b:	48 83 bd 50 fa ff ff 	cmpq   $0x8,-0x5b0(%rbp)
  825432:	08 
  825433:	0f 85 6d 01 00 00    	jne    8255a6 <pre_step3d_mod_mp_pre_step3d_tile_+0x10ff6>
  825439:	33 c9                	xor    %ecx,%ecx
  82543b:	33 f6                	xor    %esi,%esi
  82543d:	48 83 bd 28 fa ff ff 	cmpq   $0x0,-0x5d8(%rbp)
  825444:	00 
  825445:	0f 8e 6d 04 00 00    	jle    8258b8 <pre_step3d_mod_mp_pre_step3d_tile_+0x11308>
  82544b:	48 0f af 85 40 f8 ff 	imul   -0x7c0(%rbp),%rax
  825452:	ff 
  825453:	c4 62 7d 19 f0       	vbroadcastsd %xmm0,%ymm14
  825458:	4c 89 ad 00 f8 ff ff 	mov    %r13,-0x800(%rbp)
  82545f:	48 03 85 e8 f7 ff ff 	add    -0x818(%rbp),%rax
  825466:	4c 8b 9d 78 fa ff ff 	mov    -0x588(%rbp),%r11
  82546d:	4c 8b ad 70 fa ff ff 	mov    -0x590(%rbp),%r13
  825474:	4c 8b b5 98 f9 ff ff 	mov    -0x668(%rbp),%r14
  82547b:	4c 8b bd 60 fa ff ff 	mov    -0x5a0(%rbp),%r15
  825482:	48 89 95 80 f8 ff ff 	mov    %rdx,-0x780(%rbp)
  825489:	48 8b 95 30 fa ff ff 	mov    -0x5d0(%rbp),%rdx
  825490:	48 3b 95 18 fa ff ff 	cmp    -0x5e8(%rbp),%rdx
  825497:	0f 8c e6 00 00 00    	jl     825583 <pre_step3d_mod_mp_pre_step3d_tile_+0x10fd3>
  82549d:	49 83 ff 04          	cmp    $0x4,%r15
  8254a1:	0f 8c 47 04 00 00    	jl     8258ee <pre_step3d_mod_mp_pre_step3d_tile_+0x1133e>
  8254a7:	4c 8b a5 c0 fa ff ff 	mov    -0x540(%rbp),%r12
  8254ae:	45 33 c9             	xor    %r9d,%r9d
  8254b1:	48 89 c2             	mov    %rax,%rdx
  8254b4:	4d 8d 44 35 00       	lea    0x0(%r13,%rsi,1),%r8
  8254b9:	4c 8b ad 90 f9 ff ff 	mov    -0x670(%rbp),%r13
  8254c0:	49 8d 3c 33          	lea    (%r11,%rsi,1),%rdi
  8254c4:	4d 89 e7             	mov    %r12,%r15
  8254c7:	4d 8d 14 36          	lea    (%r14,%rsi,1),%r10
  8254cb:	4c 8b b5 88 f9 ff ff 	mov    -0x678(%rbp),%r14
  8254d2:	c4 01 0d 59 7c cd 00 	vmulpd 0x0(%r13,%r9,8),%ymm14,%ymm15
  8254d9:	c5 7d 10 2a          	vmovupd (%rdx),%ymm13
  8254dd:	c4 81 05 59 0c ce    	vmulpd (%r14,%r9,8),%ymm15,%ymm1
  8254e3:	c4 21 7d 10 7c cf 08 	vmovupd 0x8(%rdi,%r9,8),%ymm15
  8254ea:	c4 01 05 5c 3c c8    	vsubpd (%r8,%r9,8),%ymm15,%ymm15
  8254f0:	c4 c1 75 59 cf       	vmulpd %ymm15,%ymm1,%ymm1
  8254f5:	c5 15 5c e9          	vsubpd %ymm1,%ymm13,%ymm13
  8254f9:	c4 81 15 59 4c ca 08 	vmulpd 0x8(%r10,%r9,8),%ymm13,%ymm1
  825500:	49 83 c1 04          	add    $0x4,%r9
  825504:	c5 fd 11 0a          	vmovupd %ymm1,(%rdx)
  825508:	48 83 c2 20          	add    $0x20,%rdx
  82550c:	4d 3b cf             	cmp    %r15,%r9
  82550f:	72 c1                	jb     8254d2 <pre_step3d_mod_mp_pre_step3d_tile_+0x10f22>
  825511:	4c 8b ad 70 fa ff ff 	mov    -0x590(%rbp),%r13
  825518:	4c 8b b5 98 f9 ff ff 	mov    -0x668(%rbp),%r14
  82551f:	4c 8b bd 60 fa ff ff 	mov    -0x5a0(%rbp),%r15
  825526:	4d 3b e7             	cmp    %r15,%r12
  825529:	73 58                	jae    825583 <pre_step3d_mod_mp_pre_step3d_tile_+0x10fd3>
  82552b:	4c 8b 8d 90 f9 ff ff 	mov    -0x670(%rbp),%r9
  825532:	4d 8d 44 35 00       	lea    0x0(%r13,%rsi,1),%r8
  825537:	4c 8b 95 88 f9 ff ff 	mov    -0x678(%rbp),%r10
  82553e:	49 8d 3c 33          	lea    (%r11,%rsi,1),%rdi
  825542:	49 8d 14 36          	lea    (%r14,%rsi,1),%rdx
  825546:	c4 81 7b 59 0c e1    	vmulsd (%r9,%r12,8),%xmm0,%xmm1
  82554c:	c4 21 7b 10 6c e7 08 	vmovsd 0x8(%rdi,%r12,8),%xmm13
  825553:	c4 01 73 59 3c e2    	vmulsd (%r10,%r12,8),%xmm1,%xmm15
  825559:	c4 81 13 5c 0c e0    	vsubsd (%r8,%r12,8),%xmm13,%xmm1
  82555f:	c5 03 59 f9          	vmulsd %xmm1,%xmm15,%xmm15
  825563:	c4 21 7b 10 2c e0    	vmovsd (%rax,%r12,8),%xmm13
  825569:	c4 c1 13 5c cf       	vsubsd %xmm15,%xmm13,%xmm1
  82556e:	c4 21 73 59 6c e2 08 	vmulsd 0x8(%rdx,%r12,8),%xmm1,%xmm13
  825575:	c4 21 7b 11 2c e0    	vmovsd %xmm13,(%rax,%r12,8)
  82557b:	49 ff c4             	inc    %r12
  82557e:	4d 3b e7             	cmp    %r15,%r12
  825581:	72 c3                	jb     825546 <pre_step3d_mod_mp_pre_step3d_tile_+0x10f96>
  825583:	48 ff c1             	inc    %rcx
  825586:	48 03 b5 38 fa ff ff 	add    -0x5c8(%rbp),%rsi
  82558d:	48 03 85 20 fa ff ff 	add    -0x5e0(%rbp),%rax
  825594:	48 3b 8d 28 fa ff ff 	cmp    -0x5d8(%rbp),%rcx
  82559b:	0f 82 e8 fe ff ff    	jb     825489 <pre_step3d_mod_mp_pre_step3d_tile_+0x10ed9>
  8255a1:	e9 f6 02 00 00       	jmpq   82589c <pre_step3d_mod_mp_pre_step3d_tile_+0x112ec>
  8255a6:	33 ff                	xor    %edi,%edi
  8255a8:	33 f6                	xor    %esi,%esi
  8255aa:	33 c9                	xor    %ecx,%ecx
  8255ac:	48 83 bd 28 fa ff ff 	cmpq   $0x0,-0x5d8(%rbp)
  8255b3:	00 
  8255b4:	0f 8e fe 02 00 00    	jle    8258b8 <pre_step3d_mod_mp_pre_step3d_tile_+0x11308>
  8255ba:	48 0f af 85 40 f8 ff 	imul   -0x7c0(%rbp),%rax
  8255c1:	ff 
  8255c2:	4c 8b 85 f0 f7 ff ff 	mov    -0x810(%rbp),%r8
  8255c9:	4c 89 ad 00 f8 ff ff 	mov    %r13,-0x800(%rbp)
  8255d0:	c5 fb 12 c8          	vmovddup %xmm0,%xmm1
  8255d4:	48 89 bd 48 fa ff ff 	mov    %rdi,-0x5b8(%rbp)
  8255db:	4c 03 c0             	add    %rax,%r8
  8255de:	48 03 85 f8 f7 ff ff 	add    -0x808(%rbp),%rax
  8255e5:	4c 8b ad 60 fa ff ff 	mov    -0x5a0(%rbp),%r13
  8255ec:	4c 8b 9d 50 fa ff ff 	mov    -0x5b0(%rbp),%r11
  8255f3:	4c 8b a5 c8 f9 ff ff 	mov    -0x638(%rbp),%r12
  8255fa:	48 89 85 68 f9 ff ff 	mov    %rax,-0x698(%rbp)
  825601:	4c 89 85 70 f9 ff ff 	mov    %r8,-0x690(%rbp)
  825608:	48 89 95 80 f8 ff ff 	mov    %rdx,-0x780(%rbp)
  82560f:	48 8b 85 30 fa ff ff 	mov    -0x5d0(%rbp),%rax
  825616:	48 3b 85 18 fa ff ff 	cmp    -0x5e8(%rbp),%rax
  82561d:	0f 8c 4d 02 00 00    	jl     825870 <pre_step3d_mod_mp_pre_step3d_tile_+0x112c0>
  825623:	4d 85 db             	test   %r11,%r11
  825626:	0f 84 ca 02 00 00    	je     8258f6 <pre_step3d_mod_mp_pre_step3d_tile_+0x11346>
  82562c:	49 83 fd 04          	cmp    $0x4,%r13
  825630:	0f 8c c0 02 00 00    	jl     8258f6 <pre_step3d_mod_mp_pre_step3d_tile_+0x11346>
  825636:	48 8b 95 70 fa ff ff 	mov    -0x590(%rbp),%rdx
  82563d:	33 ff                	xor    %edi,%edi
  82563f:	4c 8b bd 70 f9 ff ff 	mov    -0x690(%rbp),%r15
  825646:	4c 8b 8d 78 fa ff ff 	mov    -0x588(%rbp),%r9
  82564d:	4c 8b 95 98 f9 ff ff 	mov    -0x668(%rbp),%r10
  825654:	4c 8d 04 32          	lea    (%rdx,%rsi,1),%r8
  825658:	48 8b 85 68 f9 ff ff 	mov    -0x698(%rbp),%rax
  82565f:	4c 03 f9             	add    %rcx,%r15
  825662:	4c 8b b5 c0 fa ff ff 	mov    -0x540(%rbp),%r14
  825669:	49 8d 14 31          	lea    (%r9,%rsi,1),%rdx
  82566d:	4c 89 85 78 f9 ff ff 	mov    %r8,-0x688(%rbp)
  825674:	4d 8d 0c 32          	lea    (%r10,%rsi,1),%r9
  825678:	45 33 d2             	xor    %r10d,%r10d
  82567b:	4c 89 b5 a0 f9 ff ff 	mov    %r14,-0x660(%rbp)
  825682:	45 33 c0             	xor    %r8d,%r8d
  825685:	48 89 8d a8 f9 ff ff 	mov    %rcx,-0x658(%rbp)
  82568c:	48 03 c1             	add    %rcx,%rax
  82568f:	48 89 b5 b0 f9 ff ff 	mov    %rsi,-0x650(%rbp)
  825696:	4c 89 f9             	mov    %r15,%rcx
  825699:	48 8b b5 78 f9 ff ff 	mov    -0x688(%rbp),%rsi
  8256a0:	4c 8b ad 80 f9 ff ff 	mov    -0x680(%rbp),%r13
  8256a7:	4c 8b b5 40 fa ff ff 	mov    -0x5c0(%rbp),%r14
  8256ae:	4c 8b bd c8 fa ff ff 	mov    -0x538(%rbp),%r15
  8256b5:	4d 03 fa             	add    %r10,%r15
  8256b8:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  8256bd:	c4 01 09 16 3c 37    	vmovhpd (%r15,%r14,1),%xmm14,%xmm15
  8256c3:	4f 8d 7c 05 00       	lea    0x0(%r13,%r8,1),%r15
  8256c8:	c4 41 71 59 f7       	vmulpd %xmm15,%xmm1,%xmm14
  8256cd:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  8256d2:	c4 01 11 16 3c 27    	vmovhpd (%r15,%r12,1),%xmm13,%xmm15
  8256d8:	c4 41 09 59 ef       	vmulpd %xmm15,%xmm14,%xmm13
  8256dd:	c5 7b 10 30          	vmovsd (%rax),%xmm14
  8256e1:	c4 21 09 16 3c 18    	vmovhpd (%rax,%r11,1),%xmm14,%xmm15
  8256e7:	c5 79 10 74 fa 08    	vmovupd 0x8(%rdx,%rdi,8),%xmm14
  8256ed:	c5 09 5c 34 fe       	vsubpd (%rsi,%rdi,8),%xmm14,%xmm14
  8256f2:	c4 41 11 59 ee       	vmulpd %xmm14,%xmm13,%xmm13
  8256f7:	c4 41 01 5c fd       	vsubpd %xmm13,%xmm15,%xmm15
  8256fc:	4c 8b bd d8 fa ff ff 	mov    -0x528(%rbp),%r15
  825703:	c4 41 01 59 6c f9 08 	vmulpd 0x8(%r9,%rdi,8),%xmm15,%xmm13
  82570a:	c5 7b 11 28          	vmovsd %xmm13,(%rax)
  82570e:	4d 03 fa             	add    %r10,%r15
  825711:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  825716:	4f 8d 14 b2          	lea    (%r10,%r14,4),%r10
  82571a:	c4 01 09 16 3c 37    	vmovhpd (%r15,%r14,1),%xmm14,%xmm15
  825720:	c4 41 71 59 f7       	vmulpd %xmm15,%xmm1,%xmm14
  825725:	4c 8b bd d0 fa ff ff 	mov    -0x530(%rbp),%r15
  82572c:	c4 41 79 17 2c 03    	vmovhpd %xmm13,(%r11,%rax,1)
  825732:	4a 8d 04 98          	lea    (%rax,%r11,4),%rax
  825736:	4d 03 f8             	add    %r8,%r15
  825739:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  82573e:	4f 8d 04 a0          	lea    (%r8,%r12,4),%r8
  825742:	c4 01 11 16 3c 27    	vmovhpd (%r15,%r12,1),%xmm13,%xmm15
  825748:	c4 41 09 59 f7       	vmulpd %xmm15,%xmm14,%xmm14
  82574d:	c5 79 10 7c fa 18    	vmovupd 0x18(%rdx,%rdi,8),%xmm15
  825753:	c5 01 5c 7c fe 10    	vsubpd 0x10(%rsi,%rdi,8),%xmm15,%xmm15
  825759:	c4 41 09 59 f7       	vmulpd %xmm15,%xmm14,%xmm14
  82575e:	c5 7b 10 29          	vmovsd (%rcx),%xmm13
  825762:	c4 21 11 16 2c 19    	vmovhpd (%rcx,%r11,1),%xmm13,%xmm13
  825768:	c4 41 11 5c ee       	vsubpd %xmm14,%xmm13,%xmm13
  82576d:	c4 41 11 59 74 f9 18 	vmulpd 0x18(%r9,%rdi,8),%xmm13,%xmm14
  825774:	48 83 c7 04          	add    $0x4,%rdi
  825778:	c5 7b 11 31          	vmovsd %xmm14,(%rcx)
  82577c:	c4 41 79 17 34 0b    	vmovhpd %xmm14,(%r11,%rcx,1)
  825782:	4a 8d 0c 99          	lea    (%rcx,%r11,4),%rcx
  825786:	48 3b bd c0 fa ff ff 	cmp    -0x540(%rbp),%rdi
  82578d:	0f 82 1b ff ff ff    	jb     8256ae <pre_step3d_mod_mp_pre_step3d_tile_+0x110fe>
  825793:	4c 8b b5 a0 f9 ff ff 	mov    -0x660(%rbp),%r14
  82579a:	48 8b 8d a8 f9 ff ff 	mov    -0x658(%rbp),%rcx
  8257a1:	48 8b b5 b0 f9 ff ff 	mov    -0x650(%rbp),%rsi
  8257a8:	4c 8b ad 60 fa ff ff 	mov    -0x5a0(%rbp),%r13
  8257af:	4c 89 d8             	mov    %r11,%rax
  8257b2:	4d 89 e1             	mov    %r12,%r9
  8257b5:	48 8b 95 40 fa ff ff 	mov    -0x5c0(%rbp),%rdx
  8257bc:	49 0f af c6          	imul   %r14,%rax
  8257c0:	4d 0f af ce          	imul   %r14,%r9
  8257c4:	49 0f af d6          	imul   %r14,%rdx
  8257c8:	4d 3b f5             	cmp    %r13,%r14
  8257cb:	0f 83 9f 00 00 00    	jae    825870 <pre_step3d_mod_mp_pre_step3d_tile_+0x112c0>
  8257d1:	4c 8b bd 68 f9 ff ff 	mov    -0x698(%rbp),%r15
  8257d8:	4c 8b 85 70 fa ff ff 	mov    -0x590(%rbp),%r8
  8257df:	48 8b bd 78 fa ff ff 	mov    -0x588(%rbp),%rdi
  8257e6:	4c 8b 95 98 f9 ff ff 	mov    -0x668(%rbp),%r10
  8257ed:	4c 03 f9             	add    %rcx,%r15
  8257f0:	48 89 8d a8 f9 ff ff 	mov    %rcx,-0x658(%rbp)
  8257f7:	4c 03 c6             	add    %rsi,%r8
  8257fa:	48 89 b5 b0 f9 ff ff 	mov    %rsi,-0x650(%rbp)
  825801:	48 03 fe             	add    %rsi,%rdi
  825804:	48 8b 8d 80 f9 ff ff 	mov    -0x680(%rbp),%rcx
  82580b:	4c 03 d6             	add    %rsi,%r10
  82580e:	48 8b b5 c8 fa ff ff 	mov    -0x538(%rbp),%rsi
  825815:	49 03 c7             	add    %r15,%rax
  825818:	4c 8b bd 40 fa ff ff 	mov    -0x5c0(%rbp),%r15
  82581f:	90                   	nop
  825820:	c5 7b 59 2c 32       	vmulsd (%rdx,%rsi,1),%xmm0,%xmm13
  825825:	49 03 d7             	add    %r15,%rdx
  825828:	c4 21 7b 10 74 f7 08 	vmovsd 0x8(%rdi,%r14,8),%xmm14
  82582f:	c4 41 13 59 3c 09    	vmulsd (%r9,%rcx,1),%xmm13,%xmm15
  825835:	4d 03 cc             	add    %r12,%r9
  825838:	c4 01 0b 5c 2c f0    	vsubsd (%r8,%r14,8),%xmm14,%xmm13
  82583e:	c4 41 03 59 fd       	vmulsd %xmm13,%xmm15,%xmm15
  825843:	c5 7b 10 30          	vmovsd (%rax),%xmm14
  825847:	c4 41 0b 5c ef       	vsubsd %xmm15,%xmm14,%xmm13
  82584c:	c4 01 13 59 74 f2 08 	vmulsd 0x8(%r10,%r14,8),%xmm13,%xmm14
  825853:	49 ff c6             	inc    %r14
  825856:	c5 7b 11 30          	vmovsd %xmm14,(%rax)
  82585a:	49 03 c3             	add    %r11,%rax
  82585d:	4d 3b f5             	cmp    %r13,%r14
  825860:	72 be                	jb     825820 <pre_step3d_mod_mp_pre_step3d_tile_+0x11270>
  825862:	48 8b 8d a8 f9 ff ff 	mov    -0x658(%rbp),%rcx
  825869:	48 8b b5 b0 f9 ff ff 	mov    -0x650(%rbp),%rsi
  825870:	48 8b 85 48 fa ff ff 	mov    -0x5b8(%rbp),%rax
  825877:	48 ff c0             	inc    %rax
  82587a:	48 03 b5 38 fa ff ff 	add    -0x5c8(%rbp),%rsi
  825881:	48 03 8d 20 fa ff ff 	add    -0x5e0(%rbp),%rcx
  825888:	48 89 85 48 fa ff ff 	mov    %rax,-0x5b8(%rbp)
  82588f:	48 3b 85 28 fa ff ff 	cmp    -0x5d8(%rbp),%rax
  825896:	0f 82 73 fd ff ff    	jb     82560f <pre_step3d_mod_mp_pre_step3d_tile_+0x1105f>
  82589c:	4c 8b ad 00 f8 ff ff 	mov    -0x800(%rbp),%r13
  8258a3:	4c 8b a5 78 f8 ff ff 	mov    -0x788(%rbp),%r12
  8258aa:	48 8b 95 80 f8 ff ff 	mov    -0x780(%rbp),%rdx
  8258b1:	4c 8b 9d 88 f8 ff ff 	mov    -0x778(%rbp),%r11
  8258b8:	4c 89 e8             	mov    %r13,%rax
  8258bb:	4c 3b ad b0 f8 ff ff 	cmp    -0x750(%rbp),%r13
  8258c2:	0f 82 d7 a8 ff ff    	jb     82019f <pre_step3d_mod_mp_pre_step3d_tile_+0xbbef>
  8258c8:	48 8b 8d 68 f6 ff ff 	mov    -0x998(%rbp),%rcx
  8258cf:	44 8b 8d 60 f6 ff ff 	mov    -0x9a0(%rbp),%r9d
  8258d6:	41 ff c1             	inc    %r9d
  8258d9:	48 ff c1             	inc    %rcx
  8258dc:	44 3b 8d 78 f6 ff ff 	cmp    -0x988(%rbp),%r9d
  8258e3:	0f 82 ab 97 ff ff    	jb     81f094 <pre_step3d_mod_mp_pre_step3d_tile_+0xaae4>
  8258e9:	e9 a4 8f ff ff       	jmpq   81e892 <pre_step3d_mod_mp_pre_step3d_tile_+0xa2e2>
  8258ee:	45 33 e4             	xor    %r12d,%r12d
  8258f1:	e9 30 fc ff ff       	jmpq   825526 <pre_step3d_mod_mp_pre_step3d_tile_+0x10f76>
  8258f6:	45 33 f6             	xor    %r14d,%r14d
  8258f9:	e9 b1 fe ff ff       	jmpq   8257af <pre_step3d_mod_mp_pre_step3d_tile_+0x111ff>
  8258fe:	33 c9                	xor    %ecx,%ecx
  825900:	e9 78 f4 ff ff       	jmpq   824d7d <pre_step3d_mod_mp_pre_step3d_tile_+0x107cd>
  825905:	33 c0                	xor    %eax,%eax
  825907:	e9 c4 a9 ff ff       	jmpq   8202d0 <pre_step3d_mod_mp_pre_step3d_tile_+0xbd20>
  82590c:	48 8b 8d 30 fa ff ff 	mov    -0x5d0(%rbp),%rcx
  825913:	48 3b 8d 18 fa ff ff 	cmp    -0x5e8(%rbp),%rcx
  82591a:	0f 8d a3 f2 ff ff    	jge    824bc3 <pre_step3d_mod_mp_pre_step3d_tile_+0x10613>
  825920:	e9 88 f5 ff ff       	jmpq   824ead <pre_step3d_mod_mp_pre_step3d_tile_+0x108fd>
  825925:	33 c0                	xor    %eax,%eax
  825927:	e9 54 ad ff ff       	jmpq   820680 <pre_step3d_mod_mp_pre_step3d_tile_+0xc0d0>
  82592c:	33 c9                	xor    %ecx,%ecx
  82592e:	e9 ff 9e ff ff       	jmpq   81f832 <pre_step3d_mod_mp_pre_step3d_tile_+0xb282>
  825933:	45 33 f6             	xor    %r14d,%r14d
  825936:	e9 17 ca ff ff       	jmpq   822352 <pre_step3d_mod_mp_pre_step3d_tile_+0xdda2>
  82593b:	33 c0                	xor    %eax,%eax
  82593d:	e9 c7 d0 ff ff       	jmpq   822a09 <pre_step3d_mod_mp_pre_step3d_tile_+0xe459>
  825942:	45 33 e4             	xor    %r12d,%r12d
  825945:	e9 48 d6 ff ff       	jmpq   822f92 <pre_step3d_mod_mp_pre_step3d_tile_+0xe9e2>
  82594a:	49 83 fe 04          	cmp    $0x4,%r14
  82594e:	7c 53                	jl     8259a3 <pre_step3d_mod_mp_pre_step3d_tile_+0x113f3>
  825950:	48 8b bd 60 f9 ff ff 	mov    -0x6a0(%rbp),%rdi
  825957:	4c 89 e2             	mov    %r12,%rdx
  82595a:	4c 8b 85 f0 f6 ff ff 	mov    -0x910(%rbp),%r8
  825961:	33 c9                	xor    %ecx,%ecx
  825963:	c5 fd 10 0c cf       	vmovupd (%rdi,%rcx,8),%ymm1
  825968:	c4 c1 7d 11 0c c8    	vmovupd %ymm1,(%r8,%rcx,8)
  82596e:	48 83 c1 04          	add    $0x4,%rcx
  825972:	49 3b cc             	cmp    %r12,%rcx
  825975:	72 ec                	jb     825963 <pre_step3d_mod_mp_pre_step3d_tile_+0x113b3>
  825977:	49 3b d6             	cmp    %r14,%rdx
  82597a:	0f 83 c0 da ff ff    	jae    823440 <pre_step3d_mod_mp_pre_step3d_tile_+0xee90>
  825980:	48 8b bd 60 f9 ff ff 	mov    -0x6a0(%rbp),%rdi
  825987:	4c 8b 85 f0 f6 ff ff 	mov    -0x910(%rbp),%r8
  82598e:	48 8b 0c d7          	mov    (%rdi,%rdx,8),%rcx
  825992:	49 89 0c d0          	mov    %rcx,(%r8,%rdx,8)
  825996:	48 ff c2             	inc    %rdx
  825999:	49 3b d6             	cmp    %r14,%rdx
  82599c:	72 f0                	jb     82598e <pre_step3d_mod_mp_pre_step3d_tile_+0x113de>
  82599e:	e9 9d da ff ff       	jmpq   823440 <pre_step3d_mod_mp_pre_step3d_tile_+0xee90>
  8259a3:	33 d2                	xor    %edx,%edx
  8259a5:	eb d0                	jmp    825977 <pre_step3d_mod_mp_pre_step3d_tile_+0x113c7>
  8259a7:	49 83 fe 04          	cmp    $0x4,%r14
  8259ab:	7c 53                	jl     825a00 <pre_step3d_mod_mp_pre_step3d_tile_+0x11450>
  8259ad:	48 8b bd f8 f6 ff ff 	mov    -0x908(%rbp),%rdi
  8259b4:	4c 89 e2             	mov    %r12,%rdx
  8259b7:	4c 8b 85 00 f7 ff ff 	mov    -0x900(%rbp),%r8
  8259be:	33 c9                	xor    %ecx,%ecx
  8259c0:	c5 fd 10 0c cf       	vmovupd (%rdi,%rcx,8),%ymm1
  8259c5:	c4 c1 7d 11 0c c8    	vmovupd %ymm1,(%r8,%rcx,8)
  8259cb:	48 83 c1 04          	add    $0x4,%rcx
  8259cf:	49 3b cc             	cmp    %r12,%rcx
  8259d2:	72 ec                	jb     8259c0 <pre_step3d_mod_mp_pre_step3d_tile_+0x11410>
  8259d4:	49 3b d6             	cmp    %r14,%rdx
  8259d7:	0f 83 51 db ff ff    	jae    82352e <pre_step3d_mod_mp_pre_step3d_tile_+0xef7e>
  8259dd:	48 8b bd f8 f6 ff ff 	mov    -0x908(%rbp),%rdi
  8259e4:	4c 8b 85 00 f7 ff ff 	mov    -0x900(%rbp),%r8
  8259eb:	48 8b 0c d7          	mov    (%rdi,%rdx,8),%rcx
  8259ef:	49 89 0c d0          	mov    %rcx,(%r8,%rdx,8)
  8259f3:	48 ff c2             	inc    %rdx
  8259f6:	49 3b d6             	cmp    %r14,%rdx
  8259f9:	72 f0                	jb     8259eb <pre_step3d_mod_mp_pre_step3d_tile_+0x1143b>
  8259fb:	e9 2e db ff ff       	jmpq   82352e <pre_step3d_mod_mp_pre_step3d_tile_+0xef7e>
  825a00:	33 d2                	xor    %edx,%edx
  825a02:	eb d0                	jmp    8259d4 <pre_step3d_mod_mp_pre_step3d_tile_+0x11424>
  825a04:	33 c0                	xor    %eax,%eax
  825a06:	e9 9b dd ff ff       	jmpq   8237a6 <pre_step3d_mod_mp_pre_step3d_tile_+0xf1f6>
  825a0b:	33 c0                	xor    %eax,%eax
  825a0d:	e9 3e e8 ff ff       	jmpq   824250 <pre_step3d_mod_mp_pre_step3d_tile_+0xfca0>
  825a12:	48 8b 95 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdx
  825a19:	4c 89 85 20 fc ff ff 	mov    %r8,-0x3e0(%rbp)
  825a20:	48 3b 95 00 f8 ff ff 	cmp    -0x800(%rbp),%rdx
  825a27:	0f 82 35 cb ff ff    	jb     822562 <pre_step3d_mod_mp_pre_step3d_tile_+0xdfb2>
  825a2d:	4c 8b 95 60 f6 ff ff 	mov    -0x9a0(%rbp),%r10
  825a34:	4c 8b 9d 68 f6 ff ff 	mov    -0x998(%rbp),%r11
  825a3b:	4c 8b 85 70 f6 ff ff 	mov    -0x990(%rbp),%r8
  825a42:	8b bd 40 f8 ff ff    	mov    -0x7c0(%rbp),%edi
  825a48:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  825a4e:	e9 1b ef ff ff       	jmpq   82496e <pre_step3d_mod_mp_pre_step3d_tile_+0x103be>
  825a53:	48 c7 85 c0 fc ff ff 	movq   $0x0,-0x340(%rbp)
  825a5a:	00 00 00 00 
  825a5e:	e9 fa ec ff ff       	jmpq   82475d <pre_step3d_mod_mp_pre_step3d_tile_+0x101ad>
  825a63:	48 c7 85 b8 fc ff ff 	movq   $0x0,-0x348(%rbp)
  825a6a:	00 00 00 00 
  825a6e:	e9 72 e0 ff ff       	jmpq   823ae5 <pre_step3d_mod_mp_pre_step3d_tile_+0xf535>
  825a73:	45 33 c0             	xor    %r8d,%r8d
  825a76:	e9 c3 db ff ff       	jmpq   82363e <pre_step3d_mod_mp_pre_step3d_tile_+0xf08e>
  825a7b:	45 33 e4             	xor    %r12d,%r12d
  825a7e:	e9 37 d8 ff ff       	jmpq   8232ba <pre_step3d_mod_mp_pre_step3d_tile_+0xed0a>
  825a83:	48 c7 85 90 fc ff ff 	movq   $0x0,-0x370(%rbp)
  825a8a:	00 00 00 00 
  825a8e:	e9 03 d3 ff ff       	jmpq   822d96 <pre_step3d_mod_mp_pre_step3d_tile_+0xe7e6>
  825a93:	45 33 f6             	xor    %r14d,%r14d
  825a96:	e9 e3 cd ff ff       	jmpq   82287e <pre_step3d_mod_mp_pre_step3d_tile_+0xe2ce>
  825a9b:	33 f6                	xor    %esi,%esi
  825a9d:	e9 15 ca ff ff       	jmpq   8224b7 <pre_step3d_mod_mp_pre_step3d_tile_+0xdf07>
  825aa2:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  825aa9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

