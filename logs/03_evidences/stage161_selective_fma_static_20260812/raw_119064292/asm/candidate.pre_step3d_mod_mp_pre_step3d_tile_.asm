00000000008144a0 <pre_step3d_mod_mp_pre_step3d_tile_>:
  8144a0:	53                   	push   %rbx
  8144a1:	48 89 e3             	mov    %rsp,%rbx
  8144a4:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  8144a8:	55                   	push   %rbp
  8144a9:	55                   	push   %rbp
  8144aa:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  8144ae:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  8144b3:	48 89 e5             	mov    %rsp,%rbp
  8144b6:	48 81 ec 70 0e 00 00 	sub    $0xe70,%rsp
  8144bd:	4c 89 a5 30 f6 ff ff 	mov    %r12,-0x9d0(%rbp)
  8144c4:	48 89 b5 70 f5 ff ff 	mov    %rsi,-0xa90(%rbp)
  8144cb:	4c 8b 63 10          	mov    0x10(%rbx),%r12
  8144cf:	48 8b 73 18          	mov    0x18(%rbx),%rsi
  8144d3:	4c 89 8d 88 f5 ff ff 	mov    %r9,-0xa78(%rbp)
  8144da:	44 8b 0a             	mov    (%rdx),%r9d
  8144dd:	44 89 8d 40 f5 ff ff 	mov    %r9d,-0xac0(%rbp)
  8144e4:	4c 89 a5 90 f5 ff ff 	mov    %r12,-0xa70(%rbp)
  8144eb:	4d 63 0c 24          	movslq (%r12),%r9
  8144ef:	4c 63 26             	movslq (%rsi),%r12
  8144f2:	48 89 8d 80 f5 ff ff 	mov    %rcx,-0xa80(%rbp)
  8144f9:	44 89 a5 bc f5 ff ff 	mov    %r12d,-0xa44(%rbp)
  814500:	4d 2b e1             	sub    %r9,%r12
  814503:	48 8b 4b 20          	mov    0x20(%rbx),%rcx
  814507:	4c 8b 53 28          	mov    0x28(%rbx),%r10
  81450b:	48 89 bd 78 f5 ff ff 	mov    %rdi,-0xa88(%rbp)
  814512:	48 63 07             	movslq (%rdi),%rax
  814515:	4c 89 e7             	mov    %r12,%rdi
  814518:	4c 89 85 b0 f5 ff ff 	mov    %r8,-0xa50(%rbp)
  81451f:	48 ff c7             	inc    %rdi
  814522:	45 8b 00             	mov    (%r8),%r8d
  814525:	44 89 85 44 f5 ff ff 	mov    %r8d,-0xabc(%rbp)
  81452c:	48 89 8d 50 f4 ff ff 	mov    %rcx,-0xbb0(%rbp)
  814533:	4c 63 01             	movslq (%rcx),%r8
  814536:	b9 00 00 00 00       	mov    $0x0,%ecx
  81453b:	48 89 b5 a0 f5 ff ff 	mov    %rsi,-0xa60(%rbp)
  814542:	48 0f 4e f9          	cmovle %rcx,%rdi
  814546:	49 63 32             	movslq (%r10),%rsi
  814549:	89 b5 c4 f5 ff ff    	mov    %esi,-0xa3c(%rbp)
  81454f:	49 2b f0             	sub    %r8,%rsi
  814552:	48 ff c6             	inc    %rsi
  814555:	4c 89 b5 20 f6 ff ff 	mov    %r14,-0x9e0(%rbp)
  81455c:	4c 8d 34 fd 00 00 00 	lea    0x0(,%rdi,8),%r14
  814563:	00 
  814564:	48 0f 4f ce          	cmovg  %rsi,%rcx
  814568:	4c 89 b5 10 f2 ff ff 	mov    %r14,-0xdf0(%rbp)
  81456f:	4c 0f af f1          	imul   %rcx,%r14
  814573:	4c 89 ad 28 f6 ff ff 	mov    %r13,-0x9d8(%rbp)
  81457a:	4c 8b 2d 5f 7b 32 00 	mov    0x327b5f(%rip),%r13        # b3c0e0 <mod_param_mp_n_+0x40>
  814581:	49 f7 dd             	neg    %r13
  814584:	4c 03 e8             	add    %rax,%r13
  814587:	4c 89 95 98 f5 ff ff 	mov    %r10,-0xa68(%rbp)
  81458e:	4c 8b 15 0b 7b 32 00 	mov    0x327b0b(%rip),%r10        # b3c0a0 <mod_param_mp_n_>
  814595:	48 89 95 a8 f5 ff ff 	mov    %rdx,-0xa58(%rbp)
  81459c:	4c 8b 9b 98 00 00 00 	mov    0x98(%rbx),%r11
  8145a3:	48 89 85 08 f2 ff ff 	mov    %rax,-0xdf8(%rbp)
  8145aa:	4c 89 f0             	mov    %r14,%rax
  8145ad:	4b 63 14 aa          	movslq (%r10,%r13,4),%rdx
  8145b1:	4c 89 bd 18 f6 ff ff 	mov    %r15,-0x9e8(%rbp)
  8145b8:	4c 89 9d 18 f2 ff ff 	mov    %r11,-0xde8(%rbp)
  8145bf:	44 89 8d b8 f5 ff ff 	mov    %r9d,-0xa48(%rbp)
  8145c6:	44 89 85 c0 f5 ff ff 	mov    %r8d,-0xa40(%rbp)
  8145cd:	89 95 48 f5 ff ff    	mov    %edx,-0xab8(%rbp)
  8145d3:	89 95 4c f5 ff ff    	mov    %edx,-0xab4(%rbp)
  8145d9:	89 95 50 f5 ff ff    	mov    %edx,-0xab0(%rbp)
  8145df:	48 89 a5 38 f5 ff ff 	mov    %rsp,-0xac8(%rbp)
  8145e6:	48 83 c0 1f          	add    $0x1f,%rax
  8145ea:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  8145ee:	48 2b e0             	sub    %rax,%rsp
  8145f1:	48 89 e0             	mov    %rsp,%rax
  8145f4:	48 89 85 20 f2 ff ff 	mov    %rax,-0xde0(%rbp)
  8145fb:	4c 89 f0             	mov    %r14,%rax
  8145fe:	41 ba 08 00 00 00    	mov    $0x8,%r10d
  814604:	4e 8d 24 e5 08 00 00 	lea    0x8(,%r12,8),%r12
  81460b:	00 
  81460c:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  814612:	48 c7 85 30 f2 ff ff 	movq   $0x0,-0xdd0(%rbp)
  814619:	00 00 00 00 
  81461d:	4c 89 8d 60 f2 ff ff 	mov    %r9,-0xda0(%rbp)
  814624:	48 89 bd 50 f2 ff ff 	mov    %rdi,-0xdb0(%rbp)
  81462b:	4c 89 a5 70 f2 ff ff 	mov    %r12,-0xd90(%rbp)
  814632:	4c 89 85 78 f2 ff ff 	mov    %r8,-0xd88(%rbp)
  814639:	48 89 8d 68 f2 ff ff 	mov    %rcx,-0xd98(%rbp)
  814640:	4c 89 95 28 f2 ff ff 	mov    %r10,-0xdd8(%rbp)
  814647:	4c 89 95 58 f2 ff ff 	mov    %r10,-0xda8(%rbp)
  81464e:	48 c7 85 40 f2 ff ff 	movq   $0x2,-0xdc0(%rbp)
  814655:	02 00 00 00 
  814659:	4c 89 ad 38 f2 ff ff 	mov    %r13,-0xdc8(%rbp)
  814660:	48 83 c0 1f          	add    $0x1f,%rax
  814664:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  814668:	48 2b e0             	sub    %rax,%rsp
  81466b:	48 89 e0             	mov    %rsp,%rax
  81466e:	48 89 85 80 f2 ff ff 	mov    %rax,-0xd80(%rbp)
  814675:	4c 89 f0             	mov    %r14,%rax
  814678:	41 ba 08 00 00 00    	mov    $0x8,%r10d
  81467e:	4c 89 95 88 f2 ff ff 	mov    %r10,-0xd78(%rbp)
  814685:	48 c7 85 a0 f2 ff ff 	movq   $0x2,-0xd60(%rbp)
  81468c:	02 00 00 00 
  814690:	48 c7 85 90 f2 ff ff 	movq   $0x0,-0xd70(%rbp)
  814697:	00 00 00 00 
  81469b:	4c 89 95 b8 f2 ff ff 	mov    %r10,-0xd48(%rbp)
  8146a2:	4c 89 8d c0 f2 ff ff 	mov    %r9,-0xd40(%rbp)
  8146a9:	48 89 bd b0 f2 ff ff 	mov    %rdi,-0xd50(%rbp)
  8146b0:	4c 89 a5 d0 f2 ff ff 	mov    %r12,-0xd30(%rbp)
  8146b7:	4c 89 85 d8 f2 ff ff 	mov    %r8,-0xd28(%rbp)
  8146be:	48 89 8d c8 f2 ff ff 	mov    %rcx,-0xd38(%rbp)
  8146c5:	4c 89 ad 98 f2 ff ff 	mov    %r13,-0xd68(%rbp)
  8146cc:	48 83 c0 1f          	add    $0x1f,%rax
  8146d0:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  8146d4:	48 2b e0             	sub    %rax,%rsp
  8146d7:	48 89 e0             	mov    %rsp,%rax
  8146da:	48 89 85 78 f4 ff ff 	mov    %rax,-0xb88(%rbp)
  8146e1:	4c 89 f0             	mov    %r14,%rax
  8146e4:	41 ba 08 00 00 00    	mov    $0x8,%r10d
  8146ea:	4c 89 95 80 f4 ff ff 	mov    %r10,-0xb80(%rbp)
  8146f1:	48 c7 85 98 f4 ff ff 	movq   $0x2,-0xb68(%rbp)
  8146f8:	02 00 00 00 
  8146fc:	48 c7 85 88 f4 ff ff 	movq   $0x0,-0xb78(%rbp)
  814703:	00 00 00 00 
  814707:	4c 89 95 b0 f4 ff ff 	mov    %r10,-0xb50(%rbp)
  81470e:	4c 89 8d b8 f4 ff ff 	mov    %r9,-0xb48(%rbp)
  814715:	48 89 bd a8 f4 ff ff 	mov    %rdi,-0xb58(%rbp)
  81471c:	4c 89 a5 c8 f4 ff ff 	mov    %r12,-0xb38(%rbp)
  814723:	4c 89 85 d0 f4 ff ff 	mov    %r8,-0xb30(%rbp)
  81472a:	48 89 8d c0 f4 ff ff 	mov    %rcx,-0xb40(%rbp)
  814731:	4c 89 ad 90 f4 ff ff 	mov    %r13,-0xb70(%rbp)
  814738:	48 83 c0 1f          	add    $0x1f,%rax
  81473c:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  814740:	48 2b e0             	sub    %rax,%rsp
  814743:	48 89 e0             	mov    %rsp,%rax
  814746:	48 89 85 d8 f4 ff ff 	mov    %rax,-0xb28(%rbp)
  81474d:	48 89 f8             	mov    %rdi,%rax
  814750:	48 0f af c1          	imul   %rcx,%rax
  814754:	41 bf 08 00 00 00    	mov    $0x8,%r15d
  81475a:	45 33 f6             	xor    %r14d,%r14d
  81475d:	4c 89 bd e0 f4 ff ff 	mov    %r15,-0xb20(%rbp)
  814764:	4c 89 bd 10 f5 ff ff 	mov    %r15,-0xaf0(%rbp)
  81476b:	49 89 d7             	mov    %rdx,%r15
  81476e:	49 ff c7             	inc    %r15
  814771:	4c 89 b5 e8 f4 ff ff 	mov    %r14,-0xb18(%rbp)
  814778:	4d 0f 4e fe          	cmovle %r14,%r15
  81477c:	48 c7 85 f8 f4 ff ff 	movq   $0x2,-0xb08(%rbp)
  814783:	02 00 00 00 
  814787:	4c 89 8d 18 f5 ff ff 	mov    %r9,-0xae8(%rbp)
  81478e:	48 89 bd 08 f5 ff ff 	mov    %rdi,-0xaf8(%rbp)
  814795:	4c 89 a5 28 f5 ff ff 	mov    %r12,-0xad8(%rbp)
  81479c:	4e 8d 34 fd 00 00 00 	lea    0x0(,%r15,8),%r14
  8147a3:	00 
  8147a4:	49 0f af c6          	imul   %r14,%rax
  8147a8:	4c 89 85 30 f5 ff ff 	mov    %r8,-0xad0(%rbp)
  8147af:	48 89 8d 20 f5 ff ff 	mov    %rcx,-0xae0(%rbp)
  8147b6:	4c 89 ad f0 f4 ff ff 	mov    %r13,-0xb10(%rbp)
  8147bd:	48 83 c0 1f          	add    $0x1f,%rax
  8147c1:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  8147c5:	48 2b e0             	sub    %rax,%rsp
  8147c8:	48 89 e0             	mov    %rsp,%rax
  8147cb:	4c 0f af f7          	imul   %rdi,%r14
  8147cf:	49 0f af f4          	imul   %r12,%rsi
  8147d3:	48 89 85 90 f1 ff ff 	mov    %rax,-0xe70(%rbp)
  8147da:	4c 89 f0             	mov    %r14,%rax
  8147dd:	4c 89 85 e8 f1 ff ff 	mov    %r8,-0xe18(%rbp)
  8147e4:	45 33 c0             	xor    %r8d,%r8d
  8147e7:	48 89 8d d8 f1 ff ff 	mov    %rcx,-0xe28(%rbp)
  8147ee:	b9 08 00 00 00       	mov    $0x8,%ecx
  8147f3:	48 89 8d 98 f1 ff ff 	mov    %rcx,-0xe68(%rbp)
  8147fa:	48 c7 85 b0 f1 ff ff 	movq   $0x3,-0xe50(%rbp)
  814801:	03 00 00 00 
  814805:	4c 89 85 a0 f1 ff ff 	mov    %r8,-0xe60(%rbp)
  81480c:	48 89 8d c8 f1 ff ff 	mov    %rcx,-0xe38(%rbp)
  814813:	4c 89 8d d0 f1 ff ff 	mov    %r9,-0xe30(%rbp)
  81481a:	48 89 bd c0 f1 ff ff 	mov    %rdi,-0xe40(%rbp)
  814821:	4c 89 a5 e0 f1 ff ff 	mov    %r12,-0xe20(%rbp)
  814828:	48 89 b5 f8 f1 ff ff 	mov    %rsi,-0xe08(%rbp)
  81482f:	4c 89 85 00 f2 ff ff 	mov    %r8,-0xe00(%rbp)
  814836:	4c 89 bd f0 f1 ff ff 	mov    %r15,-0xe10(%rbp)
  81483d:	4c 89 ad a8 f1 ff ff 	mov    %r13,-0xe58(%rbp)
  814844:	48 83 c0 1f          	add    $0x1f,%rax
  814848:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81484c:	48 2b e0             	sub    %rax,%rsp
  81484f:	48 89 e0             	mov    %rsp,%rax
  814852:	48 89 85 e0 f2 ff ff 	mov    %rax,-0xd20(%rbp)
  814859:	4c 89 f0             	mov    %r14,%rax
  81485c:	48 89 8d e8 f2 ff ff 	mov    %rcx,-0xd18(%rbp)
  814863:	48 c7 85 00 f3 ff ff 	movq   $0x2,-0xd00(%rbp)
  81486a:	02 00 00 00 
  81486e:	4c 89 85 f0 f2 ff ff 	mov    %r8,-0xd10(%rbp)
  814875:	48 89 8d 18 f3 ff ff 	mov    %rcx,-0xce8(%rbp)
  81487c:	4c 89 8d 20 f3 ff ff 	mov    %r9,-0xce0(%rbp)
  814883:	48 89 bd 10 f3 ff ff 	mov    %rdi,-0xcf0(%rbp)
  81488a:	4c 89 a5 30 f3 ff ff 	mov    %r12,-0xcd0(%rbp)
  814891:	4c 89 85 38 f3 ff ff 	mov    %r8,-0xcc8(%rbp)
  814898:	4c 89 bd 28 f3 ff ff 	mov    %r15,-0xcd8(%rbp)
  81489f:	4c 89 ad f8 f2 ff ff 	mov    %r13,-0xd08(%rbp)
  8148a6:	48 83 c0 1f          	add    $0x1f,%rax
  8148aa:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  8148ae:	48 2b e0             	sub    %rax,%rsp
  8148b1:	48 89 e0             	mov    %rsp,%rax
  8148b4:	48 89 85 40 f3 ff ff 	mov    %rax,-0xcc0(%rbp)
  8148bb:	48 8b 85 10 f2 ff ff 	mov    -0xdf0(%rbp),%rax
  8148c2:	49 0f af c7          	imul   %r15,%rax
  8148c6:	48 89 8d 48 f3 ff ff 	mov    %rcx,-0xcb8(%rbp)
  8148cd:	48 c7 85 60 f3 ff ff 	movq   $0x2,-0xca0(%rbp)
  8148d4:	02 00 00 00 
  8148d8:	4c 89 85 50 f3 ff ff 	mov    %r8,-0xcb0(%rbp)
  8148df:	48 89 8d 78 f3 ff ff 	mov    %rcx,-0xc88(%rbp)
  8148e6:	4c 89 8d 80 f3 ff ff 	mov    %r9,-0xc80(%rbp)
  8148ed:	48 89 bd 70 f3 ff ff 	mov    %rdi,-0xc90(%rbp)
  8148f4:	4c 89 a5 90 f3 ff ff 	mov    %r12,-0xc70(%rbp)
  8148fb:	4c 89 85 98 f3 ff ff 	mov    %r8,-0xc68(%rbp)
  814902:	4c 89 bd 88 f3 ff ff 	mov    %r15,-0xc78(%rbp)
  814909:	4c 89 ad 58 f3 ff ff 	mov    %r13,-0xca8(%rbp)
  814910:	48 83 c0 1f          	add    $0x1f,%rax
  814914:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  814918:	48 2b e0             	sub    %rax,%rsp
  81491b:	48 89 e0             	mov    %rsp,%rax
  81491e:	48 8b 0d bb 97 32 00 	mov    0x3297bb(%rip),%rcx        # b3e0e0 <mod_param_mp_bounds_+0x40>
  814925:	be 08 00 00 00       	mov    $0x8,%esi
  81492a:	48 f7 d9             	neg    %rcx
  81492d:	45 33 f6             	xor    %r14d,%r14d
  814930:	48 03 8d 08 f2 ff ff 	add    -0xdf8(%rbp),%rcx
  814937:	4c 89 8d e0 f3 ff ff 	mov    %r9,-0xc20(%rbp)
  81493e:	4c 69 c9 60 0f 00 00 	imul   $0xf60,%rcx,%r9
  814945:	4c 89 a5 f0 f3 ff ff 	mov    %r12,-0xc10(%rbp)
  81494c:	4c 8b 25 4d 97 32 00 	mov    0x32974d(%rip),%r12        # b3e0a0 <mod_param_mp_bounds_>
  814953:	48 89 b5 a8 f3 ff ff 	mov    %rsi,-0xc58(%rbp)
  81495a:	48 89 b5 d8 f3 ff ff 	mov    %rsi,-0xc28(%rbp)
  814961:	48 8b b5 70 f5 ff ff 	mov    -0xa90(%rbp),%rsi
  814968:	4f 8b 94 0c f0 01 00 	mov    0x1f0(%r12,%r9,1),%r10
  81496f:	00 
  814970:	49 f7 da             	neg    %r10
  814973:	48 89 bd d0 f3 ff ff 	mov    %rdi,-0xc30(%rbp)
  81497a:	48 63 3e             	movslq (%rsi),%rdi
  81497d:	4c 03 d7             	add    %rdi,%r10
  814980:	4f 0f af 94 0c e8 01 	imul   0x1e8(%r12,%r9,1),%r10
  814987:	00 00 
  814989:	4f 8b 84 0c b0 01 00 	mov    0x1b0(%r12,%r9,1),%r8
  814990:	00 
  814991:	48 89 85 a0 f3 ff ff 	mov    %rax,-0xc60(%rbp)
  814998:	4b 8b 84 0c a0 03 00 	mov    0x3a0(%r12,%r9,1),%rax
  81499f:	00 
  8149a0:	47 8b 1c 10          	mov    (%r8,%r10,1),%r11d
  8149a4:	48 f7 d8             	neg    %rax
  8149a7:	4f 8b 94 0c 38 02 00 	mov    0x238(%r12,%r9,1),%r10
  8149ae:	00 
  8149af:	48 03 c7             	add    %rdi,%rax
  8149b2:	49 f7 da             	neg    %r10
  8149b5:	4c 03 d7             	add    %rdi,%r10
  8149b8:	4f 0f af 94 0c 30 02 	imul   0x230(%r12,%r9,1),%r10
  8149bf:	00 00 
  8149c1:	4b 0f af 84 0c 98 03 	imul   0x398(%r12,%r9,1),%rax
  8149c8:	00 00 
  8149ca:	4f 8b 84 0c f8 01 00 	mov    0x1f8(%r12,%r9,1),%r8
  8149d1:	00 
  8149d2:	44 89 9d c8 f5 ff ff 	mov    %r11d,-0xa38(%rbp)
  8149d9:	4c 89 bd e8 f3 ff ff 	mov    %r15,-0xc18(%rbp)
  8149e0:	47 8b 1c 10          	mov    (%r8,%r10,1),%r11d
  8149e4:	4f 8b 84 0c 78 04 00 	mov    0x478(%r12,%r9,1),%r8
  8149eb:	00 
  8149ec:	49 f7 d8             	neg    %r8
  8149ef:	4c 03 c7             	add    %rdi,%r8
  8149f2:	4f 0f af 84 0c 70 04 	imul   0x470(%r12,%r9,1),%r8
  8149f9:	00 00 
  8149fb:	4f 8b bc 0c 60 03 00 	mov    0x360(%r12,%r9,1),%r15
  814a02:	00 
  814a03:	44 89 9d cc f5 ff ff 	mov    %r11d,-0xa34(%rbp)
  814a0a:	4f 8b 9c 0c 88 02 00 	mov    0x288(%r12,%r9,1),%r11
  814a11:	00 
  814a12:	41 8b 0c 07          	mov    (%r15,%rax,1),%ecx
  814a16:	89 8d 54 f5 ff ff    	mov    %ecx,-0xaac(%rbp)
  814a1c:	4b 8b 84 0c 80 02 00 	mov    0x280(%r12,%r9,1),%rax
  814a23:	00 
  814a24:	4b 8b 8c 0c 38 04 00 	mov    0x438(%r12,%r9,1),%rcx
  814a2b:	00 
  814a2c:	48 f7 d8             	neg    %rax
  814a2f:	48 03 c7             	add    %rdi,%rax
  814a32:	4b 0f af 84 0c 78 02 	imul   0x278(%r12,%r9,1),%rax
  814a39:	00 00 
  814a3b:	46 8b 14 01          	mov    (%rcx,%r8,1),%r10d
  814a3f:	4f 8b 84 0c 40 09 00 	mov    0x940(%r12,%r9,1),%r8
  814a46:	00 
  814a47:	49 f7 d8             	neg    %r8
  814a4a:	4c 03 c7             	add    %rdi,%r8
  814a4d:	4f 0f af 84 0c 38 09 	imul   0x938(%r12,%r9,1),%r8
  814a54:	00 00 
  814a56:	4f 8b bc 0c 40 02 00 	mov    0x240(%r12,%r9,1),%r15
  814a5d:	00 
  814a5e:	4b 8b 8c 0c c8 02 00 	mov    0x2c8(%r12,%r9,1),%rcx
  814a65:	00 
  814a66:	48 f7 d9             	neg    %rcx
  814a69:	49 63 04 07          	movslq (%r15,%rax,1),%rax
  814a6d:	48 03 cf             	add    %rdi,%rcx
  814a70:	4f 8b bc 0c 00 09 00 	mov    0x900(%r12,%r9,1),%r15
  814a77:	00 
  814a78:	4b 0f af 8c 0c c0 02 	imul   0x2c0(%r12,%r9,1),%rcx
  814a7f:	00 00 
  814a81:	44 89 95 58 f5 ff ff 	mov    %r10d,-0xaa8(%rbp)
  814a88:	47 8b 14 07          	mov    (%r15,%r8,1),%r10d
  814a8c:	4f 8b bc 0c 60 0a 00 	mov    0xa60(%r12,%r9,1),%r15
  814a93:	00 
  814a94:	49 f7 df             	neg    %r15
  814a97:	4c 03 ff             	add    %rdi,%r15
  814a9a:	4f 0f af bc 0c 58 0a 	imul   0xa58(%r12,%r9,1),%r15
  814aa1:	00 00 
  814aa3:	49 63 0c 0b          	movslq (%r11,%rcx,1),%rcx
  814aa7:	4f 8b 9c 0c 20 0a 00 	mov    0xa20(%r12,%r9,1),%r11
  814aae:	00 
  814aaf:	44 89 95 5c f5 ff ff 	mov    %r10d,-0xaa4(%rbp)
  814ab6:	4f 8b 94 0c 88 0b 00 	mov    0xb88(%r12,%r9,1),%r10
  814abd:	00 
  814abe:	47 8b 04 3b          	mov    (%r11,%r15,1),%r8d
  814ac2:	44 89 85 60 f5 ff ff 	mov    %r8d,-0xaa0(%rbp)
  814ac9:	4f 8b 9c 0c c8 0b 00 	mov    0xbc8(%r12,%r9,1),%r11
  814ad0:	00 
  814ad1:	4f 8b 84 0c e8 0c 00 	mov    0xce8(%r12,%r9,1),%r8
  814ad8:	00 
  814ad9:	49 f7 db             	neg    %r11
  814adc:	49 f7 d8             	neg    %r8
  814adf:	4c 03 df             	add    %rdi,%r11
  814ae2:	4c 03 c7             	add    %rdi,%r8
  814ae5:	4f 0f af 84 0c e0 0c 	imul   0xce0(%r12,%r9,1),%r8
  814aec:	00 00 
  814aee:	4f 0f af 9c 0c c0 0b 	imul   0xbc0(%r12,%r9,1),%r11
  814af5:	00 00 
  814af7:	4b 8b bc 0c a8 0c 00 	mov    0xca8(%r12,%r9,1),%rdi
  814afe:	00 
  814aff:	47 8b 3c 1a          	mov    (%r10,%r11,1),%r15d
  814b03:	48 c7 85 c0 f3 ff ff 	movq   $0x2,-0xc40(%rbp)
  814b0a:	02 00 00 00 
  814b0e:	46 8b 0c 07          	mov    (%rdi,%r8,1),%r9d
  814b12:	4c 89 b5 b0 f3 ff ff 	mov    %r14,-0xc50(%rbp)
  814b19:	4c 89 b5 f8 f3 ff ff 	mov    %r14,-0xc08(%rbp)
  814b20:	4c 89 ad b8 f3 ff ff 	mov    %r13,-0xc48(%rbp)
  814b27:	89 85 d8 f5 ff ff    	mov    %eax,-0xa28(%rbp)
  814b2d:	89 8d dc f5 ff ff    	mov    %ecx,-0xa24(%rbp)
  814b33:	44 89 bd 64 f5 ff ff 	mov    %r15d,-0xa9c(%rbp)
  814b3a:	44 89 8d 68 f5 ff ff 	mov    %r9d,-0xa98(%rbp)
  814b41:	48 ff ca             	dec    %rdx
  814b44:	0f 8e e6 07 00 00    	jle    815330 <pre_step3d_mod_mp_pre_step3d_tile_+0xe90>
  814b4a:	4c 8b 8d 18 f2 ff ff 	mov    -0xde8(%rbp),%r9
  814b51:	48 89 8d 78 f6 ff ff 	mov    %rcx,-0x988(%rbp)
  814b58:	4c 89 b5 60 f4 ff ff 	mov    %r14,-0xba0(%rbp)
  814b5f:	4d 8b 21             	mov    (%r9),%r12
  814b62:	4d 8b 59 68          	mov    0x68(%r9),%r11
  814b66:	4d 8b 41 50          	mov    0x50(%r9),%r8
  814b6a:	4d 8b 49 38          	mov    0x38(%r9),%r9
  814b6e:	4c 89 85 70 f6 ff ff 	mov    %r8,-0x990(%rbp)
  814b75:	4d 89 c8             	mov    %r9,%r8
  814b78:	49 f7 d8             	neg    %r8
  814b7b:	4c 89 8d 20 f4 ff ff 	mov    %r9,-0xbe0(%rbp)
  814b82:	4c 89 9d 70 f4 ff ff 	mov    %r11,-0xb90(%rbp)
  814b89:	4c 89 a5 10 f2 ff ff 	mov    %r12,-0xdf0(%rbp)
  814b90:	4c 89 b5 68 f4 ff ff 	mov    %r14,-0xb98(%rbp)
  814b97:	4b 8d 3c 04          	lea    (%r12,%r8,1),%rdi
  814b9b:	48 89 bd 10 f4 ff ff 	mov    %rdi,-0xbf0(%rbp)
  814ba2:	4b 8d 3c 1c          	lea    (%r12,%r11,1),%rdi
  814ba6:	4c 03 c7             	add    %rdi,%r8
  814ba9:	4d 8d 3c 39          	lea    (%r9,%rdi,1),%r15
  814bad:	4c 89 bd 08 f4 ff ff 	mov    %r15,-0xbf8(%rbp)
  814bb4:	4f 8d 3c 21          	lea    (%r9,%r12,1),%r15
  814bb8:	4c 89 bd 00 f4 ff ff 	mov    %r15,-0xc00(%rbp)
  814bbf:	4c 89 85 18 f4 ff ff 	mov    %r8,-0xbe8(%rbp)
  814bc6:	48 89 bd 08 f2 ff ff 	mov    %rdi,-0xdf8(%rbp)
  814bcd:	48 89 95 58 f4 ff ff 	mov    %rdx,-0xba8(%rbp)
  814bd4:	48 8b bd 78 f5 ff ff 	mov    -0xa88(%rbp),%rdi
  814bdb:	4c 8b ad 78 f4 ff ff 	mov    -0xb88(%rbp),%r13
  814be2:	48 3b 85 78 f6 ff ff 	cmp    -0x988(%rbp),%rax
  814be9:	0f 8f e2 04 00 00    	jg     8150d1 <pre_step3d_mod_mp_pre_step3d_tile_+0xc31>
  814bef:	4c 63 95 44 f5 ff ff 	movslq -0xabc(%rbp),%r10
  814bf6:	48 8b 95 70 f6 ff ff 	mov    -0x990(%rbp),%rdx
  814bfd:	4c 0f af d2          	imul   %rdx,%r10
  814c01:	4c 89 95 e8 f5 ff ff 	mov    %r10,-0xa18(%rbp)
  814c08:	4c 63 95 b8 f5 ff ff 	movslq -0xa48(%rbp),%r10
  814c0f:	4c 63 b5 bc f5 ff ff 	movslq -0xa44(%rbp),%r14
  814c16:	4d 2b f2             	sub    %r10,%r14
  814c19:	48 63 8d c0 f5 ff ff 	movslq -0xa40(%rbp),%rcx
  814c20:	4c 8b 0d b9 74 32 00 	mov    0x3274b9(%rip),%r9        # b3c0e0 <mod_param_mp_n_+0x40>
  814c27:	49 c1 e1 02          	shl    $0x2,%r9
  814c2b:	49 f7 d9             	neg    %r9
  814c2e:	4d 8d 7e 01          	lea    0x1(%r14),%r15
  814c32:	4c 8b a5 78 f6 ff ff 	mov    -0x988(%rbp),%r12
  814c39:	4e 8d 34 f5 08 00 00 	lea    0x8(,%r14,8),%r14
  814c40:	00 
  814c41:	4c 89 b5 80 f6 ff ff 	mov    %r14,-0x980(%rbp)
  814c48:	4c 2b e0             	sub    %rax,%r12
  814c4b:	49 0f af ce          	imul   %r14,%rcx
  814c4f:	4c 03 0d 4a 74 32 00 	add    0x32744a(%rip),%r9        # b3c0a0 <mod_param_mp_n_>
  814c56:	4c 8d 34 c5 00 00 00 	lea    0x0(,%rax,8),%r14
  814c5d:	00 
  814c5e:	4d 0f af f7          	imul   %r15,%r14
  814c62:	48 0f af c2          	imul   %rdx,%rax
  814c66:	4c 89 8d d0 f5 ff ff 	mov    %r9,-0xa30(%rbp)
  814c6d:	4c 89 f2             	mov    %r14,%rdx
  814c70:	44 8b 8d c8 f5 ff ff 	mov    -0xa38(%rbp),%r9d
  814c77:	48 2b d1             	sub    %rcx,%rdx
  814c7a:	44 89 8d 88 f6 ff ff 	mov    %r9d,-0x978(%rbp)
  814c81:	49 ff c4             	inc    %r12
  814c84:	4d 63 c9             	movslq %r9d,%r9
  814c87:	4c 63 07             	movslq (%rdi),%r8
  814c8a:	4c 89 85 68 f6 ff ff 	mov    %r8,-0x998(%rbp)
  814c91:	48 89 8d 18 f2 ff ff 	mov    %rcx,-0xde8(%rbp)
  814c98:	48 8b 8d 10 f2 ff ff 	mov    -0xdf0(%rbp),%rcx
  814c9f:	4f 8d 44 cd 00       	lea    0x0(%r13,%r9,8),%r8
  814ca4:	49 c1 e2 03          	shl    $0x3,%r10
  814ca8:	4d 89 c7             	mov    %r8,%r15
  814cab:	4d 2b fa             	sub    %r10,%r15
  814cae:	4c 03 fa             	add    %rdx,%r15
  814cb1:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
  814cb5:	48 8b 8d 60 f4 ff ff 	mov    -0xba0(%rbp),%rcx
  814cbc:	4c 89 bd e0 f5 ff ff 	mov    %r15,-0xa20(%rbp)
  814cc3:	4c 8b bd 08 f2 ff ff 	mov    -0xdf8(%rbp),%r15
  814cca:	44 8b 9d cc f5 ff ff 	mov    -0xa34(%rbp),%r11d
  814cd1:	48 03 c8             	add    %rax,%rcx
  814cd4:	4c 89 a5 78 f6 ff ff 	mov    %r12,-0x988(%rbp)
  814cdb:	4c 63 a5 40 f5 ff ff 	movslq -0xac0(%rbp),%r12
  814ce2:	44 89 9d 90 f6 ff ff 	mov    %r11d,-0x970(%rbp)
  814ce9:	4e 8d 1c cd 00 00 00 	lea    0x0(,%r9,8),%r11
  814cf0:	00 
  814cf1:	48 89 8d 28 f4 ff ff 	mov    %rcx,-0xbd8(%rbp)
  814cf8:	49 03 cf             	add    %r15,%rcx
  814cfb:	48 83 bd 20 f4 ff ff 	cmpq   $0x8,-0xbe0(%rbp)
  814d02:	08 
  814d03:	0f 84 68 02 00 00    	je     814f71 <pre_step3d_mod_mp_pre_step3d_tile_+0xad1>
  814d09:	4c 8b 9d 20 f4 ff ff 	mov    -0xbe0(%rbp),%r11
  814d10:	4d 2b d6             	sub    %r14,%r10
  814d13:	4d 0f af cb          	imul   %r11,%r9
  814d17:	4d 0f af e3          	imul   %r11,%r12
  814d1b:	4c 8b bd 10 f4 ff ff 	mov    -0xbf0(%rbp),%r15
  814d22:	4d 2b c2             	sub    %r10,%r8
  814d25:	44 8b b5 90 f6 ff ff 	mov    -0x970(%rbp),%r14d
  814d2c:	45 33 db             	xor    %r11d,%r11d
  814d2f:	44 2b b5 88 f6 ff ff 	sub    -0x978(%rbp),%r14d
  814d36:	41 ff c6             	inc    %r14d
  814d39:	4c 03 f8             	add    %rax,%r15
  814d3c:	4c 89 bd f0 f5 ff ff 	mov    %r15,-0xa10(%rbp)
  814d43:	4d 89 cf             	mov    %r9,%r15
  814d46:	4d 2b fc             	sub    %r12,%r15
  814d49:	45 89 f2             	mov    %r14d,%r10d
  814d4c:	4c 03 a5 e8 f5 ff ff 	add    -0xa18(%rbp),%r12
  814d53:	49 03 d7             	add    %r15,%rdx
  814d56:	4c 89 bd 00 f6 ff ff 	mov    %r15,-0xa00(%rbp)
  814d5d:	4d 2b cc             	sub    %r12,%r9
  814d60:	4c 8b bd 18 f4 ff ff 	mov    -0xbe8(%rbp),%r15
  814d67:	49 03 c9             	add    %r9,%rcx
  814d6a:	4c 8b a5 28 f4 ff ff 	mov    -0xbd8(%rbp),%r12
  814d71:	41 d1 ea             	shr    %r10d
  814d74:	44 89 95 98 f6 ff ff 	mov    %r10d,-0x968(%rbp)
  814d7b:	4c 89 95 f8 f5 ff ff 	mov    %r10,-0xa08(%rbp)
  814d82:	4d 03 fc             	add    %r12,%r15
  814d85:	4c 03 a5 08 f4 ff ff 	add    -0xbf8(%rbp),%r12
  814d8c:	45 33 d2             	xor    %r10d,%r10d
  814d8f:	48 03 85 00 f4 ff ff 	add    -0xc00(%rbp),%rax
  814d96:	4d 03 f9             	add    %r9,%r15
  814d99:	4c 2b 85 18 f2 ff ff 	sub    -0xde8(%rbp),%r8
  814da0:	4d 03 cc             	add    %r12,%r9
  814da3:	48 89 95 10 f6 ff ff 	mov    %rdx,-0x9f0(%rbp)
  814daa:	48 89 85 08 f6 ff ff 	mov    %rax,-0x9f8(%rbp)
  814db1:	48 89 8d 50 f6 ff ff 	mov    %rcx,-0x9b0(%rbp)
  814db8:	4c 89 8d 58 f6 ff ff 	mov    %r9,-0x9a8(%rbp)
  814dbf:	4c 89 bd 48 f6 ff ff 	mov    %r15,-0x9b8(%rbp)
  814dc6:	4c 89 85 60 f6 ff ff 	mov    %r8,-0x9a0(%rbp)
  814dcd:	44 89 b5 a0 f6 ff ff 	mov    %r14d,-0x960(%rbp)
  814dd4:	4c 89 ad 30 f4 ff ff 	mov    %r13,-0xbd0(%rbp)
  814ddb:	48 89 bd 38 f4 ff ff 	mov    %rdi,-0xbc8(%rbp)
  814de2:	48 89 b5 40 f4 ff ff 	mov    %rsi,-0xbc0(%rbp)
  814de9:	4c 89 d0             	mov    %r10,%rax
  814dec:	48 8b 95 20 f4 ff ff 	mov    -0xbe0(%rbp),%rdx
  814df3:	8b 8d 90 f6 ff ff    	mov    -0x970(%rbp),%ecx
  814df9:	3b 8d 88 f6 ff ff    	cmp    -0x978(%rbp),%ecx
  814dff:	0f 8c 49 01 00 00    	jl     814f4e <pre_step3d_mod_mp_pre_step3d_tile_+0xaae>
  814e05:	45 33 ff             	xor    %r15d,%r15d
  814e08:	be 01 00 00 00       	mov    $0x1,%esi
  814e0d:	45 33 f6             	xor    %r14d,%r14d
  814e10:	45 33 e4             	xor    %r12d,%r12d
  814e13:	83 bd 98 f6 ff ff 00 	cmpl   $0x0,-0x968(%rbp)
  814e1a:	0f 84 bc 00 00 00    	je     814edc <pre_step3d_mod_mp_pre_step3d_tile_+0xa3c>
  814e20:	4c 8b ad 68 f6 ff ff 	mov    -0x998(%rbp),%r13
  814e27:	48 8b bd d0 f5 ff ff 	mov    -0xa30(%rbp),%rdi
  814e2e:	4c 8b 8d e0 f5 ff ff 	mov    -0xa20(%rbp),%r9
  814e35:	4c 8b 85 60 f6 ff ff 	mov    -0x9a0(%rbp),%r8
  814e3c:	4e 63 2c af          	movslq (%rdi,%r13,4),%r13
  814e40:	4c 0f af ad 70 f4 ff 	imul   -0xb90(%rbp),%r13
  814e47:	ff 
  814e48:	49 f7 dd             	neg    %r13
  814e4b:	4d 03 ca             	add    %r10,%r9
  814e4e:	4c 03 ad e8 f5 ff ff 	add    -0xa18(%rbp),%r13
  814e55:	4d 03 c2             	add    %r10,%r8
  814e58:	48 8b bd 10 f6 ff ff 	mov    -0x9f0(%rbp),%rdi
  814e5f:	49 2b fd             	sub    %r13,%rdi
  814e62:	49 f7 dd             	neg    %r13
  814e65:	48 8b b5 58 f6 ff ff 	mov    -0x9a8(%rbp),%rsi
  814e6c:	48 03 f8             	add    %rax,%rdi
  814e6f:	48 8b 8d 50 f6 ff ff 	mov    -0x9b0(%rbp),%rcx
  814e76:	4c 03 ad 00 f6 ff ff 	add    -0xa00(%rbp),%r13
  814e7d:	4c 03 ad 08 f6 ff ff 	add    -0x9f8(%rbp),%r13
  814e84:	48 03 f0             	add    %rax,%rsi
  814e87:	4c 89 9d 40 f6 ff ff 	mov    %r11,-0x9c0(%rbp)
  814e8e:	4c 03 e8             	add    %rax,%r13
  814e91:	4c 8b 9d f8 f5 ff ff 	mov    -0xa08(%rbp),%r11
  814e98:	48 03 c8             	add    %rax,%rcx
  814e9b:	c4 a1 7b 10 04 67    	vmovsd (%rdi,%r12,2),%xmm0
  814ea1:	49 ff c7             	inc    %r15
  814ea4:	c4 81 7b 10 54 65 00 	vmovsd 0x0(%r13,%r12,2),%xmm2
  814eab:	c4 a1 7b 5c 0c 61    	vsubsd (%rcx,%r12,2),%xmm0,%xmm1
  814eb1:	c4 a1 6b 5c 1c 66    	vsubsd (%rsi,%r12,2),%xmm2,%xmm3
  814eb7:	c4 81 7b 11 0c 0e    	vmovsd %xmm1,(%r14,%r9,1)
  814ebd:	4c 03 e2             	add    %rdx,%r12
  814ec0:	c4 81 7b 11 5c 06 08 	vmovsd %xmm3,0x8(%r14,%r8,1)
  814ec7:	49 83 c6 10          	add    $0x10,%r14
  814ecb:	4d 3b fb             	cmp    %r11,%r15
  814ece:	72 cb                	jb     814e9b <pre_step3d_mod_mp_pre_step3d_tile_+0x9fb>
  814ed0:	4c 8b 9d 40 f6 ff ff 	mov    -0x9c0(%rbp),%r11
  814ed7:	43 8d 74 3f 01       	lea    0x1(%r15,%r15,1),%esi
  814edc:	8d 4e ff             	lea    -0x1(%rsi),%ecx
  814edf:	3b 8d a0 f6 ff ff    	cmp    -0x960(%rbp),%ecx
  814ee5:	73 67                	jae    814f4e <pre_step3d_mod_mp_pre_step3d_tile_+0xaae>
  814ee7:	4c 8b ad 68 f6 ff ff 	mov    -0x998(%rbp),%r13
  814eee:	48 89 d1             	mov    %rdx,%rcx
  814ef1:	4c 8b a5 d0 f5 ff ff 	mov    -0xa30(%rbp),%r12
  814ef8:	48 63 f6             	movslq %esi,%rsi
  814efb:	48 0f af ce          	imul   %rsi,%rcx
  814eff:	4f 63 34 ac          	movslq (%r12,%r13,4),%r14
  814f03:	4c 0f af b5 70 f4 ff 	imul   -0xb90(%rbp),%r14
  814f0a:	ff 
  814f0b:	4c 8b 85 f0 f5 ff ff 	mov    -0xa10(%rbp),%r8
  814f12:	4c 8b 8d 00 f6 ff ff 	mov    -0xa00(%rbp),%r9
  814f19:	48 8b bd 60 f6 ff ff 	mov    -0x9a0(%rbp),%rdi
  814f20:	4f 8d 3c 08          	lea    (%r8,%r9,1),%r15
  814f24:	4c 2b bd e8 f5 ff ff 	sub    -0xa18(%rbp),%r15
  814f2b:	48 8d 34 f7          	lea    (%rdi,%rsi,8),%rsi
  814f2f:	4d 03 fe             	add    %r14,%r15
  814f32:	4c 03 f9             	add    %rcx,%r15
  814f35:	48 03 8d 48 f6 ff ff 	add    -0x9b8(%rbp),%rcx
  814f3c:	c4 c1 7b 10 04 07    	vmovsd (%r15,%rax,1),%xmm0
  814f42:	c5 fb 5c 0c 01       	vsubsd (%rcx,%rax,1),%xmm0,%xmm1
  814f47:	c4 a1 7b 11 4c 16 f8 	vmovsd %xmm1,-0x8(%rsi,%r10,1)
  814f4e:	49 ff c3             	inc    %r11
  814f51:	4c 03 95 80 f6 ff ff 	add    -0x980(%rbp),%r10
  814f58:	48 03 85 70 f6 ff ff 	add    -0x990(%rbp),%rax
  814f5f:	4c 3b 9d 78 f6 ff ff 	cmp    -0x988(%rbp),%r11
  814f66:	0f 82 87 fe ff ff    	jb     814df3 <pre_step3d_mod_mp_pre_step3d_tile_+0x953>
  814f6c:	e9 4b 01 00 00       	jmpq   8150bc <pre_step3d_mod_mp_pre_step3d_tile_+0xc1c>
  814f71:	4c 63 85 90 f6 ff ff 	movslq -0x970(%rbp),%r8
  814f78:	4a 8d 04 e5 00 00 00 	lea    0x0(,%r12,8),%rax
  814f7f:	00 
  814f80:	4d 2b c1             	sub    %r9,%r8
  814f83:	48 f7 d8             	neg    %rax
  814f86:	4c 8b b5 e8 f5 ff ff 	mov    -0xa18(%rbp),%r14
  814f8d:	49 ff c0             	inc    %r8
  814f90:	45 89 c1             	mov    %r8d,%r9d
  814f93:	49 03 c3             	add    %r11,%rax
  814f96:	41 83 e1 fc          	and    $0xfffffffc,%r9d
  814f9a:	48 03 d0             	add    %rax,%rdx
  814f9d:	4d 63 c9             	movslq %r9d,%r9
  814fa0:	4f 8d 24 e6          	lea    (%r14,%r12,8),%r12
  814fa4:	45 33 d2             	xor    %r10d,%r10d
  814fa7:	4d 2b dc             	sub    %r12,%r11
  814faa:	48 89 95 10 f6 ff ff 	mov    %rdx,-0x9f0(%rbp)
  814fb1:	49 03 cb             	add    %r11,%rcx
  814fb4:	4c 89 ad 30 f4 ff ff 	mov    %r13,-0xbd0(%rbp)
  814fbb:	33 c0                	xor    %eax,%eax
  814fbd:	48 89 bd 38 f4 ff ff 	mov    %rdi,-0xbc8(%rbp)
  814fc4:	4c 89 8d 38 f6 ff ff 	mov    %r9,-0x9c8(%rbp)
  814fcb:	48 89 b5 40 f4 ff ff 	mov    %rsi,-0xbc0(%rbp)
  814fd2:	4c 89 f6             	mov    %r14,%rsi
  814fd5:	48 8b bd d0 f5 ff ff 	mov    -0xa30(%rbp),%rdi
  814fdc:	4c 8b ad e0 f5 ff ff 	mov    -0xa20(%rbp),%r13
  814fe3:	44 8b b5 90 f6 ff ff 	mov    -0x970(%rbp),%r14d
  814fea:	48 8b 95 68 f6 ff ff 	mov    -0x998(%rbp),%rdx
  814ff1:	44 3b b5 88 f6 ff ff 	cmp    -0x978(%rbp),%r14d
  814ff8:	0f 8c a0 00 00 00    	jl     81509e <pre_step3d_mod_mp_pre_step3d_tile_+0xbfe>
  814ffe:	49 83 f8 04          	cmp    $0x4,%r8
  815002:	0f 8c ee f8 00 00    	jl     8248f6 <pre_step3d_mod_mp_pre_step3d_tile_+0x10456>
  815008:	4c 63 0c 97          	movslq (%rdi,%rdx,4),%r9
  81500c:	45 33 e4             	xor    %r12d,%r12d
  81500f:	4c 0f af 8d 70 f4 ff 	imul   -0xb90(%rbp),%r9
  815016:	ff 
  815017:	49 f7 d9             	neg    %r9
  81501a:	4c 8d 1c 01          	lea    (%rcx,%rax,1),%r11
  81501e:	4c 03 ce             	add    %rsi,%r9
  815021:	49 f7 d9             	neg    %r9
  815024:	4c 03 8d 10 f6 ff ff 	add    -0x9f0(%rbp),%r9
  81502b:	4c 8b bd 38 f6 ff ff 	mov    -0x9c8(%rbp),%r15
  815032:	4c 03 c8             	add    %rax,%r9
  815035:	4c 89 fa             	mov    %r15,%rdx
  815038:	c4 81 7d 10 04 e1    	vmovupd (%r9,%r12,8),%ymm0
  81503e:	c4 81 7d 5c 0c e3    	vsubpd (%r11,%r12,8),%ymm0,%ymm1
  815044:	c4 81 7d 11 4c e5 00 	vmovupd %ymm1,0x0(%r13,%r12,8)
  81504b:	49 83 c4 04          	add    $0x4,%r12
  81504f:	4c 3b e2             	cmp    %rdx,%r12
  815052:	72 e4                	jb     815038 <pre_step3d_mod_mp_pre_step3d_tile_+0xb98>
  815054:	48 8b 95 68 f6 ff ff 	mov    -0x998(%rbp),%rdx
  81505b:	4d 3b f8             	cmp    %r8,%r15
  81505e:	73 3e                	jae    81509e <pre_step3d_mod_mp_pre_step3d_tile_+0xbfe>
  815060:	4c 63 0c 97          	movslq (%rdi,%rdx,4),%r9
  815064:	4c 8d 1c 01          	lea    (%rcx,%rax,1),%r11
  815068:	4c 0f af 8d 70 f4 ff 	imul   -0xb90(%rbp),%r9
  81506f:	ff 
  815070:	49 f7 d9             	neg    %r9
  815073:	4c 03 ce             	add    %rsi,%r9
  815076:	49 f7 d9             	neg    %r9
  815079:	4c 03 8d 10 f6 ff ff 	add    -0x9f0(%rbp),%r9
  815080:	4c 03 c8             	add    %rax,%r9
  815083:	c4 81 7b 10 04 f9    	vmovsd (%r9,%r15,8),%xmm0
  815089:	c4 81 7b 5c 0c fb    	vsubsd (%r11,%r15,8),%xmm0,%xmm1
  81508f:	c4 81 7b 11 4c fd 00 	vmovsd %xmm1,0x0(%r13,%r15,8)
  815096:	49 ff c7             	inc    %r15
  815099:	4d 3b f8             	cmp    %r8,%r15
  81509c:	72 e5                	jb     815083 <pre_step3d_mod_mp_pre_step3d_tile_+0xbe3>
  81509e:	49 ff c2             	inc    %r10
  8150a1:	4c 03 ad 80 f6 ff ff 	add    -0x980(%rbp),%r13
  8150a8:	48 03 85 70 f6 ff ff 	add    -0x990(%rbp),%rax
  8150af:	4c 3b 95 78 f6 ff ff 	cmp    -0x988(%rbp),%r10
  8150b6:	0f 82 35 ff ff ff    	jb     814ff1 <pre_step3d_mod_mp_pre_step3d_tile_+0xb51>
  8150bc:	4c 8b ad 30 f4 ff ff 	mov    -0xbd0(%rbp),%r13
  8150c3:	48 8b bd 38 f4 ff ff 	mov    -0xbc8(%rbp),%rdi
  8150ca:	48 8b b5 40 f4 ff ff 	mov    -0xbc0(%rbp),%rsi
  8150d1:	48 83 c4 c0          	add    $0xffffffffffffffc0,%rsp
  8150d5:	48 8b 85 90 f5 ff ff 	mov    -0xa70(%rbp),%rax
  8150dc:	4c 8b 8d d8 f4 ff ff 	mov    -0xb28(%rbp),%r9
  8150e3:	48 89 04 24          	mov    %rax,(%rsp)
  8150e7:	48 8b 95 a0 f5 ff ff 	mov    -0xa60(%rbp),%rdx
  8150ee:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  8150f3:	48 8b 8d 50 f4 ff ff 	mov    -0xbb0(%rbp),%rcx
  8150fa:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
  8150ff:	4c 8b 85 98 f5 ff ff 	mov    -0xa68(%rbp),%r8
  815106:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  81510b:	48 c7 44 24 20 80 33 	movq   $0x8c3380,0x20(%rsp)
  815112:	8c 00 
  815114:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
  815119:	4c 89 4c 24 30       	mov    %r9,0x30(%rsp)
  81511e:	48 8b 95 a8 f5 ff ff 	mov    -0xa58(%rbp),%rdx
  815125:	48 8b 8d 80 f5 ff ff 	mov    -0xa80(%rbp),%rcx
  81512c:	4c 8b 85 b0 f5 ff ff 	mov    -0xa50(%rbp),%r8
  815133:	4c 8b 8d 88 f5 ff ff 	mov    -0xa78(%rbp),%r9
  81513a:	c5 f8 77             	vzeroupper 
  81513d:	e8 1e eb ff ff       	callq  813c60 <lmd_swfrac_tile_>
  815142:	48 83 c4 40          	add    $0x40,%rsp
  815146:	48 63 95 dc f5 ff ff 	movslq -0xa24(%rbp),%rdx
  81514d:	45 33 ed             	xor    %r13d,%r13d
  815150:	48 63 85 d8 f5 ff ff 	movslq -0xa28(%rbp),%rax
  815157:	48 89 95 78 f6 ff ff 	mov    %rdx,-0x988(%rbp)
  81515e:	48 3b d0             	cmp    %rax,%rdx
  815161:	0f 8c 88 01 00 00    	jl     8152ef <pre_step3d_mod_mp_pre_step3d_tile_+0xe4f>
  815167:	44 8b b5 cc f5 ff ff 	mov    -0xa34(%rbp),%r14d
  81516e:	45 89 f7             	mov    %r14d,%r15d
  815171:	44 8b 9d c8 f5 ff ff 	mov    -0xa38(%rbp),%r11d
  815178:	45 2b fb             	sub    %r11d,%r15d
  81517b:	44 89 9d b8 f6 ff ff 	mov    %r11d,-0x948(%rbp)
  815182:	41 ff c7             	inc    %r15d
  815185:	44 89 b5 c0 f6 ff ff 	mov    %r14d,-0x940(%rbp)
  81518c:	4d 63 db             	movslq %r11d,%r11
  81518f:	4d 63 f6             	movslq %r14d,%r14
  815192:	4d 2b f3             	sub    %r11,%r14
  815195:	48 63 b5 b8 f5 ff ff 	movslq -0xa48(%rbp),%rsi
  81519c:	4c 63 a5 bc f5 ff ff 	movslq -0xa44(%rbp),%r12
  8151a3:	4c 2b e6             	sub    %rsi,%r12
  8151a6:	44 89 bd 48 f4 ff ff 	mov    %r15d,-0xbb8(%rbp)
  8151ad:	4e 8d 3c f5 08 00 00 	lea    0x8(,%r14,8),%r15
  8151b4:	00 
  8151b5:	49 ff c6             	inc    %r14
  8151b8:	4c 8b 95 90 f1 ff ff 	mov    -0xe70(%rbp),%r10
  8151bf:	45 89 f1             	mov    %r14d,%r9d
  8151c2:	49 89 d0             	mov    %rdx,%r8
  8151c5:	41 83 e1 fc          	and    $0xfffffffc,%r9d
  8151c9:	4c 2b c0             	sub    %rax,%r8
  8151cc:	4d 63 c9             	movslq %r9d,%r9
  8151cf:	49 ff c0             	inc    %r8
  8151d2:	4c 89 85 b0 f6 ff ff 	mov    %r8,-0x950(%rbp)
  8151d9:	4f 8d 04 da          	lea    (%r10,%r11,8),%r8
  8151dd:	4c 89 8d e0 f6 ff ff 	mov    %r9,-0x920(%rbp)
  8151e4:	4d 8d 54 24 01       	lea    0x1(%r12),%r10
  8151e9:	48 8b 95 d8 f4 ff ff 	mov    -0xb28(%rbp),%rdx
  8151f0:	4c 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%r9
  8151f7:	00 
  8151f8:	4d 0f af ca          	imul   %r10,%r9
  8151fc:	48 c1 e6 03          	shl    $0x3,%rsi
  815200:	4e 8d 24 e5 08 00 00 	lea    0x8(,%r12,8),%r12
  815207:	00 
  815208:	48 63 bd c0 f5 ff ff 	movslq -0xa40(%rbp),%rdi
  81520f:	4a 8d 14 da          	lea    (%rdx,%r11,8),%rdx
  815213:	48 63 8d c4 f5 ff ff 	movslq -0xa3c(%rbp),%rcx
  81521a:	49 89 d3             	mov    %rdx,%r11
  81521d:	4c 89 a5 a8 f6 ff ff 	mov    %r12,-0x958(%rbp)
  815224:	48 2b cf             	sub    %rdi,%rcx
  815227:	49 0f af fc          	imul   %r12,%rdi
  81522b:	49 89 f4             	mov    %rsi,%r12
  81522e:	48 2b d6             	sub    %rsi,%rdx
  815231:	4d 2b e1             	sub    %r9,%r12
  815234:	48 ff c1             	inc    %rcx
  815237:	4d 2b dc             	sub    %r12,%r11
  81523a:	49 f7 dc             	neg    %r12
  81523d:	4d 03 e0             	add    %r8,%r12
  815240:	4c 2b c6             	sub    %rsi,%r8
  815243:	48 8b b5 68 f4 ff ff 	mov    -0xb98(%rbp),%rsi
  81524a:	4c 2b cf             	sub    %rdi,%r9
  81524d:	4d 03 c1             	add    %r9,%r8
  815250:	4c 2b df             	sub    %rdi,%r11
  815253:	49 03 d1             	add    %r9,%rdx
  815256:	4c 89 bd c8 f6 ff ff 	mov    %r15,-0x938(%rbp)
  81525d:	48 8d 34 f5 08 00 00 	lea    0x8(,%rsi,8),%rsi
  815264:	00 
  815265:	4c 0f af d6          	imul   %rsi,%r10
  815269:	4c 0f af d1          	imul   %rcx,%r10
  81526d:	49 2b fa             	sub    %r10,%rdi
  815270:	4d 03 c2             	add    %r10,%r8
  815273:	4c 89 9d d0 f6 ff ff 	mov    %r11,-0x930(%rbp)
  81527a:	45 33 ff             	xor    %r15d,%r15d
  81527d:	4c 89 85 d8 f6 ff ff 	mov    %r8,-0x928(%rbp)
  815284:	4c 2b e7             	sub    %rdi,%r12
  815287:	48 89 95 e8 f6 ff ff 	mov    %rdx,-0x918(%rbp)
  81528e:	48 89 85 08 f6 ff ff 	mov    %rax,-0x9f8(%rbp)
  815295:	8b 85 c0 f6 ff ff    	mov    -0x940(%rbp),%eax
  81529b:	3b 85 b8 f6 ff ff    	cmp    -0x948(%rbp),%eax
  8152a1:	7c 32                	jl     8152d5 <pre_step3d_mod_mp_pre_step3d_tile_+0xe35>
  8152a3:	83 bd 48 f4 ff ff 0c 	cmpl   $0xc,-0xbb8(%rbp)
  8152aa:	0f 8e e1 f5 00 00    	jle    824891 <pre_step3d_mod_mp_pre_step3d_tile_+0x103f1>
  8152b0:	48 8b 85 d8 f6 ff ff 	mov    -0x928(%rbp),%rax
  8152b7:	48 8b 8d d0 f6 ff ff 	mov    -0x930(%rbp),%rcx
  8152be:	48 8b 95 c8 f6 ff ff 	mov    -0x938(%rbp),%rdx
  8152c5:	4a 8d 3c 38          	lea    (%rax,%r15,1),%rdi
  8152c9:	4a 8d 34 39          	lea    (%rcx,%r15,1),%rsi
  8152cd:	c5 f8 77             	vzeroupper 
  8152d0:	e8 6b 38 cc ff       	callq  4d8b40 <_intel_fast_memcpy>
  8152d5:	49 ff c5             	inc    %r13
  8152d8:	4c 03 bd a8 f6 ff ff 	add    -0x958(%rbp),%r15
  8152df:	4c 3b ad b0 f6 ff ff 	cmp    -0x950(%rbp),%r13
  8152e6:	72 ad                	jb     815295 <pre_step3d_mod_mp_pre_step3d_tile_+0xdf5>
  8152e8:	48 8b 85 08 f6 ff ff 	mov    -0x9f8(%rbp),%rax
  8152ef:	48 8b 95 60 f4 ff ff 	mov    -0xba0(%rbp),%rdx
  8152f6:	48 8b 8d 68 f4 ff ff 	mov    -0xb98(%rbp),%rcx
  8152fd:	48 ff c1             	inc    %rcx
  815300:	48 03 95 70 f4 ff ff 	add    -0xb90(%rbp),%rdx
  815307:	48 89 95 60 f4 ff ff 	mov    %rdx,-0xba0(%rbp)
  81530e:	48 89 8d 68 f4 ff ff 	mov    %rcx,-0xb98(%rbp)
  815315:	48 3b 8d 58 f4 ff ff 	cmp    -0xba8(%rbp),%rcx
  81531c:	73 0c                	jae    81532a <pre_step3d_mod_mp_pre_step3d_tile_+0xe8a>
  81531e:	48 8b b5 70 f5 ff ff 	mov    -0xa90(%rbp),%rsi
  815325:	e9 aa f8 ff ff       	jmpq   814bd4 <pre_step3d_mod_mp_pre_step3d_tile_+0x734>
  81532a:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  815330:	bf cc 73 b3 00       	mov    $0xb373cc,%edi
  815335:	c5 f8 77             	vzeroupper 
  815338:	e8 f3 88 bf ff       	callq  40dc30 <__kmpc_global_thread_num@plt>
  81533d:	89 85 6c f5 ff ff    	mov    %eax,-0xa94(%rbp)
  815343:	bf 1c 74 b3 00       	mov    $0xb3741c,%edi
  815348:	33 c0                	xor    %eax,%eax
  81534a:	e8 11 8a bf ff       	callq  40dd60 <__kmpc_ok_to_fork@plt>
  81534f:	85 c0                	test   %eax,%eax
  815351:	0f 84 3d 01 00 00    	je     815494 <pre_step3d_mod_mp_pre_step3d_tile_+0xff4>
  815357:	48 81 c4 20 ff ff ff 	add    $0xffffffffffffff20,%rsp
  81535e:	4c 8d 95 5c f5 ff ff 	lea    -0xaa4(%rbp),%r10
  815365:	ba bd 06 82 00       	mov    $0x8206bd,%edx
  81536a:	4d 8d 5a 04          	lea    0x4(%r10),%r11
  81536e:	4c 8d a3 00 01 00 00 	lea    0x100(%rbx),%r12
  815375:	4c 8d 73 38          	lea    0x38(%rbx),%r14
  815379:	4c 89 14 24          	mov    %r10,(%rsp)
  81537d:	4c 8d 7b 50          	lea    0x50(%rbx),%r15
  815381:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
  815386:	49 8d 42 14          	lea    0x14(%r10),%rax
  81538a:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
  81538f:	48 8d 70 58          	lea    0x58(%rax),%rsi
  815393:	4c 89 74 24 18       	mov    %r14,0x18(%rsp)
  815398:	48 8d 78 5c          	lea    0x5c(%rax),%rdi
  81539c:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
  8153a1:	4d 8d 54 24 80       	lea    -0x80(%r12),%r10
  8153a6:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  8153ab:	4c 8d 58 f4          	lea    -0xc(%rax),%r11
  8153af:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
  8153b4:	4c 8d 60 f8          	lea    -0x8(%rax),%r12
  8153b8:	48 89 7c 24 38       	mov    %rdi,0x38(%rsp)
  8153bd:	4c 8d 73 58          	lea    0x58(%rbx),%r14
  8153c1:	4c 89 54 24 40       	mov    %r10,0x40(%rsp)
  8153c6:	4d 8d 7a 08          	lea    0x8(%r10),%r15
  8153ca:	4c 89 5c 24 48       	mov    %r11,0x48(%rsp)
  8153cf:	48 8d 43 78          	lea    0x78(%rbx),%rax
  8153d3:	4c 89 64 24 50       	mov    %r12,0x50(%rsp)
  8153d8:	48 8d 73 40          	lea    0x40(%rbx),%rsi
  8153dc:	4c 89 74 24 58       	mov    %r14,0x58(%rsp)
  8153e1:	48 8d 7b 68          	lea    0x68(%rbx),%rdi
  8153e5:	4c 89 7c 24 60       	mov    %r15,0x60(%rsp)
  8153ea:	4c 8d 53 70          	lea    0x70(%rbx),%r10
  8153ee:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  8153f3:	4d 8d 5b 54          	lea    0x54(%r11),%r11
  8153f7:	48 89 74 24 70       	mov    %rsi,0x70(%rsp)
  8153fc:	4d 8d 63 04          	lea    0x4(%r11),%r12
  815400:	48 8d 74 24 78       	lea    0x78(%rsp),%rsi
  815405:	48 89 3e             	mov    %rdi,(%rsi)
  815408:	4d 8d 73 08          	lea    0x8(%r11),%r14
  81540c:	4c 89 56 08          	mov    %r10,0x8(%rsi)
  815410:	4d 8d 7b 0c          	lea    0xc(%r11),%r15
  815414:	4c 89 5e 10          	mov    %r11,0x10(%rsi)
  815418:	49 8d 43 88          	lea    -0x78(%r11),%rax
  81541c:	4c 8d 9c 24 90 00 00 	lea    0x90(%rsp),%r11
  815423:	00 
  815424:	4d 89 23             	mov    %r12,(%r11)
  815427:	48 8d 70 04          	lea    0x4(%rax),%rsi
  81542b:	4d 89 73 08          	mov    %r14,0x8(%r11)
  81542f:	48 8d bd 78 f4 ff ff 	lea    -0xb88(%rbp),%rdi
  815436:	4d 89 7b 10          	mov    %r15,0x10(%r11)
  81543a:	48 8d 48 38          	lea    0x38(%rax),%rcx
  81543e:	4c 8d bc 24 a8 00 00 	lea    0xa8(%rsp),%r15
  815445:	00 
  815446:	49 89 07             	mov    %rax,(%r15)
  815449:	4c 8d 41 60          	lea    0x60(%rcx),%r8
  81544d:	49 89 77 08          	mov    %rsi,0x8(%r15)
  815451:	4c 8d 49 64          	lea    0x64(%rcx),%r9
  815455:	49 89 7f 10          	mov    %rdi,0x10(%r15)
  815459:	bf 1c 74 b3 00       	mov    $0xb3741c,%edi
  81545e:	be 1e 00 00 00       	mov    $0x1e,%esi
  815463:	33 c0                	xor    %eax,%eax
  815465:	4c 8d 95 d8 f4 ff ff 	lea    -0xb28(%rbp),%r10
  81546c:	4d 89 57 18          	mov    %r10,0x18(%r15)
  815470:	4c 8d 9d 20 f2 ff ff 	lea    -0xde0(%rbp),%r11
  815477:	4d 89 5f 20          	mov    %r11,0x20(%r15)
  81547b:	4d 8d 63 60          	lea    0x60(%r11),%r12
  81547f:	4d 89 67 28          	mov    %r12,0x28(%r15)
  815483:	e8 28 87 bf ff       	callq  40dbb0 <__kmpc_fork_call@plt>
  815488:	48 81 c4 e0 00 00 00 	add    $0xe0,%rsp
  81548f:	e9 57 01 00 00       	jmpq   8155eb <pre_step3d_mod_mp_pre_step3d_tile_+0x114b>
  815494:	bf 1c 74 b3 00       	mov    $0xb3741c,%edi
  815499:	33 c0                	xor    %eax,%eax
  81549b:	8b b5 6c f5 ff ff    	mov    -0xa94(%rbp),%esi
  8154a1:	e8 aa 88 bf ff       	callq  40dd50 <__kmpc_serialized_parallel@plt>
  8154a6:	48 81 c4 30 ff ff ff 	add    $0xffffffffffffff30,%rsp
  8154ad:	48 8d 85 60 f5 ff ff 	lea    -0xaa0(%rbp),%rax
  8154b4:	be 08 4c b8 00       	mov    $0xb84c08,%esi
  8154b9:	4c 8d 93 00 01 00 00 	lea    0x100(%rbx),%r10
  8154c0:	4c 8d 5b 38          	lea    0x38(%rbx),%r11
  8154c4:	4c 8d 63 50          	lea    0x50(%rbx),%r12
  8154c8:	48 89 04 24          	mov    %rax,(%rsp)
  8154cc:	4c 8d 70 10          	lea    0x10(%rax),%r14
  8154d0:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
  8154d5:	4c 8d 78 68          	lea    0x68(%rax),%r15
  8154d9:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
  8154de:	48 8d 40 6c          	lea    0x6c(%rax),%rax
  8154e2:	4c 89 64 24 18       	mov    %r12,0x18(%rsp)
  8154e7:	4d 8d 52 80          	lea    -0x80(%r10),%r10
  8154eb:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
  8154f0:	4c 8d 58 98          	lea    -0x68(%rax),%r11
  8154f4:	4c 89 7c 24 28       	mov    %r15,0x28(%rsp)
  8154f9:	4c 8d 60 9c          	lea    -0x64(%rax),%r12
  8154fd:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  815502:	4c 8d 73 58          	lea    0x58(%rbx),%r14
  815506:	4c 89 54 24 38       	mov    %r10,0x38(%rsp)
  81550b:	4d 8d 7a 08          	lea    0x8(%r10),%r15
  81550f:	4c 89 5c 24 40       	mov    %r11,0x40(%rsp)
  815514:	48 8d 43 78          	lea    0x78(%rbx),%rax
  815518:	4c 89 64 24 48       	mov    %r12,0x48(%rsp)
  81551d:	4c 8d 53 40          	lea    0x40(%rbx),%r10
  815521:	4c 89 74 24 50       	mov    %r14,0x50(%rsp)
  815526:	4c 8d 5b 68          	lea    0x68(%rbx),%r11
  81552a:	4c 89 7c 24 58       	mov    %r15,0x58(%rsp)
  81552f:	4c 8d 63 70          	lea    0x70(%rbx),%r12
  815533:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
  815538:	4c 8d b5 b8 f5 ff ff 	lea    -0xa48(%rbp),%r14
  81553f:	4c 89 54 24 68       	mov    %r10,0x68(%rsp)
  815544:	4d 8d 7e 04          	lea    0x4(%r14),%r15
  815548:	4c 89 5c 24 70       	mov    %r11,0x70(%rsp)
  81554d:	49 8d 46 08          	lea    0x8(%r14),%rax
  815551:	4c 89 64 24 78       	mov    %r12,0x78(%rsp)
  815556:	4c 8d 50 04          	lea    0x4(%rax),%r10
  81555a:	4c 89 b4 24 80 00 00 	mov    %r14,0x80(%rsp)
  815561:	00 
  815562:	4c 8d 58 80          	lea    -0x80(%rax),%r11
  815566:	4c 8d b4 24 88 00 00 	lea    0x88(%rsp),%r14
  81556d:	00 
  81556e:	4d 89 3e             	mov    %r15,(%r14)
  815571:	48 8d 78 ac          	lea    -0x54(%rax),%rdi
  815575:	49 89 46 08          	mov    %rax,0x8(%r14)
  815579:	48 8d 50 b8          	lea    -0x48(%rax),%rdx
  81557d:	4d 89 56 10          	mov    %r10,0x10(%r14)
  815581:	48 8d 48 18          	lea    0x18(%rax),%rcx
  815585:	4c 8d 94 24 a0 00 00 	lea    0xa0(%rsp),%r10
  81558c:	00 
  81558d:	4d 89 1a             	mov    %r11,(%r10)
  815590:	4c 8d 40 1c          	lea    0x1c(%rax),%r8
  815594:	4c 8d 48 9c          	lea    -0x64(%rax),%r9
  815598:	4c 8d 60 84          	lea    -0x7c(%rax),%r12
  81559c:	4d 89 62 08          	mov    %r12,0x8(%r10)
  8155a0:	4c 8d b5 78 f4 ff ff 	lea    -0xb88(%rbp),%r14
  8155a7:	4d 89 72 10          	mov    %r14,0x10(%r10)
  8155ab:	4d 8d 7b 98          	lea    -0x68(%r11),%r15
  8155af:	4c 8d 9c 24 b8 00 00 	lea    0xb8(%rsp),%r11
  8155b6:	00 
  8155b7:	4d 89 3b             	mov    %r15,(%r11)
  8155ba:	48 8d 85 20 f2 ff ff 	lea    -0xde0(%rbp),%rax
  8155c1:	49 89 43 08          	mov    %rax,0x8(%r11)
  8155c5:	4c 8d 50 60          	lea    0x60(%rax),%r10
  8155c9:	4d 89 53 10          	mov    %r10,0x10(%r11)
  8155cd:	e8 eb b0 00 00       	callq  8206bd <pre_step3d_mod_mp_pre_step3d_tile_+0xc21d>
  8155d2:	48 81 c4 d0 00 00 00 	add    $0xd0,%rsp
  8155d9:	bf 1c 74 b3 00       	mov    $0xb3741c,%edi
  8155de:	33 c0                	xor    %eax,%eax
  8155e0:	8b b5 6c f5 ff ff    	mov    -0xa94(%rbp),%esi
  8155e6:	e8 d5 8a bf ff       	callq  40e0c0 <__kmpc_end_serialized_parallel@plt>
  8155eb:	bf 6c 74 b3 00       	mov    $0xb3746c,%edi
  8155f0:	33 c0                	xor    %eax,%eax
  8155f2:	e8 69 87 bf ff       	callq  40dd60 <__kmpc_ok_to_fork@plt>
  8155f7:	85 c0                	test   %eax,%eax
  8155f9:	0f 84 ea 00 00 00    	je     8156e9 <pre_step3d_mod_mp_pre_step3d_tile_+0x1249>
  8155ff:	48 81 c4 60 ff ff ff 	add    $0xffffffffffffff60,%rsp
  815606:	4c 8d 95 c8 f5 ff ff 	lea    -0xa38(%rbp),%r10
  81560d:	4d 8d 5a 04          	lea    0x4(%r10),%r11
  815611:	4c 8d 63 78          	lea    0x78(%rbx),%r12
  815615:	4c 8d 73 68          	lea    0x68(%rbx),%r14
  815619:	4c 89 14 24          	mov    %r10,(%rsp)
  81561d:	4c 8d 7b 70          	lea    0x70(%rbx),%r15
  815621:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
  815626:	49 8d 54 24 08       	lea    0x8(%r12),%rdx
  81562b:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
  815630:	48 8d 72 08          	lea    0x8(%rdx),%rsi
  815634:	4c 89 74 24 18       	mov    %r14,0x18(%rsp)
  815639:	48 8d 7a 68          	lea    0x68(%rdx),%rdi
  81563d:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
  815642:	48 8d 4e 78          	lea    0x78(%rsi),%rcx
  815646:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  81564b:	4c 8d 43 38          	lea    0x38(%rbx),%r8
  81564f:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
  815654:	49 8d 42 f0          	lea    -0x10(%r10),%rax
  815658:	48 89 7c 24 38       	mov    %rdi,0x38(%rsp)
  81565d:	4c 8d 48 04          	lea    0x4(%rax),%r9
  815661:	48 89 4c 24 40       	mov    %rcx,0x40(%rsp)
  815666:	4c 8d 50 90          	lea    -0x70(%rax),%r10
  81566a:	4c 89 44 24 48       	mov    %r8,0x48(%rsp)
  81566f:	4c 8d 58 88          	lea    -0x78(%rax),%r11
  815673:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  815678:	4c 8d 60 8c          	lea    -0x74(%rax),%r12
  81567c:	4c 89 4c 24 58       	mov    %r9,0x58(%rsp)
  815681:	4c 8d 70 94          	lea    -0x6c(%rax),%r14
  815685:	4c 89 54 24 60       	mov    %r10,0x60(%rsp)
  81568a:	4c 8d bd a0 f3 ff ff 	lea    -0xc60(%rbp),%r15
  815691:	4c 89 5c 24 68       	mov    %r11,0x68(%rsp)
  815696:	49 8d 77 a0          	lea    -0x60(%r15),%rsi
  81569a:	4c 89 64 24 70       	mov    %r12,0x70(%rsp)
  81569f:	48 8d 7e a0          	lea    -0x60(%rsi),%rdi
  8156a3:	4c 89 74 24 78       	mov    %r14,0x78(%rsp)
  8156a8:	ba 7b e5 81 00       	mov    $0x81e57b,%edx
  8156ad:	4c 8d b4 24 80 00 00 	lea    0x80(%rsp),%r14
  8156b4:	00 
  8156b5:	4d 89 3e             	mov    %r15,(%r14)
  8156b8:	48 8d 48 20          	lea    0x20(%rax),%rcx
  8156bc:	49 89 76 08          	mov    %rsi,0x8(%r14)
  8156c0:	be 16 00 00 00       	mov    $0x16,%esi
  8156c5:	49 89 7e 10          	mov    %rdi,0x10(%r14)
  8156c9:	bf 6c 74 b3 00       	mov    $0xb3746c,%edi
  8156ce:	33 c0                	xor    %eax,%eax
  8156d0:	4c 8d 41 04          	lea    0x4(%rcx),%r8
  8156d4:	4c 8d 49 a0          	lea    -0x60(%rcx),%r9
  8156d8:	e8 d3 84 bf ff       	callq  40dbb0 <__kmpc_fork_call@plt>
  8156dd:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
  8156e4:	e9 bb 00 00 00       	jmpq   8157a4 <pre_step3d_mod_mp_pre_step3d_tile_+0x1304>
  8156e9:	bf 6c 74 b3 00       	mov    $0xb3746c,%edi
  8156ee:	33 c0                	xor    %eax,%eax
  8156f0:	8b b5 6c f5 ff ff    	mov    -0xa94(%rbp),%esi
  8156f6:	e8 55 86 bf ff       	callq  40dd50 <__kmpc_serialized_parallel@plt>
  8156fb:	48 8d 85 e0 f2 ff ff 	lea    -0xd20(%rbp),%rax
  815702:	50                   	push   %rax
  815703:	4c 8d 50 60          	lea    0x60(%rax),%r10
  815707:	41 52                	push   %r10
  815709:	4d 8d 5a 60          	lea    0x60(%r10),%r11
  81570d:	41 53                	push   %r11
  81570f:	4c 8d a5 4c f5 ff ff 	lea    -0xab4(%rbp),%r12
  815716:	41 54                	push   %r12
  815718:	4d 8d 74 24 f8       	lea    -0x8(%r12),%r14
  81571d:	41 56                	push   %r14
  81571f:	4d 8d 7c 24 f4       	lea    -0xc(%r12),%r15
  815724:	41 57                	push   %r15
  815726:	49 8d 7c 24 fc       	lea    -0x4(%r12),%rdi
  81572b:	57                   	push   %rdi
  81572c:	48 8d 77 74          	lea    0x74(%rdi),%rsi
  815730:	56                   	push   %rsi
  815731:	be 0c 4c b8 00       	mov    $0xb84c0c,%esi
  815736:	48 8d 57 70          	lea    0x70(%rdi),%rdx
  81573a:	52                   	push   %rdx
  81573b:	48 8d 4b 38          	lea    0x38(%rbx),%rcx
  81573f:	51                   	push   %rcx
  815740:	4c 8d 83 00 01 00 00 	lea    0x100(%rbx),%r8
  815747:	41 50                	push   %r8
  815749:	49 8d 40 e8          	lea    -0x18(%r8),%rax
  81574d:	50                   	push   %rax
  81574e:	4c 8d 48 a0          	lea    -0x60(%rax),%r9
  815752:	41 51                	push   %r9
  815754:	4c 8d 50 98          	lea    -0x68(%rax),%r10
  815758:	41 52                	push   %r10
  81575a:	4c 8d 5b 70          	lea    0x70(%rbx),%r11
  81575e:	41 53                	push   %r11
  815760:	4c 8d 63 68          	lea    0x68(%rbx),%r12
  815764:	41 54                	push   %r12
  815766:	4c 8d 73 78          	lea    0x78(%rbx),%r14
  81576a:	41 56                	push   %r14
  81576c:	4c 8d 7a 14          	lea    0x14(%rdx),%r15
  815770:	41 57                	push   %r15
  815772:	48 8d 7a b4          	lea    -0x4c(%rdx),%rdi
  815776:	48 8d 52 20          	lea    0x20(%rdx),%rdx
  81577a:	48 8d 4a 04          	lea    0x4(%rdx),%rcx
  81577e:	4c 8d 42 a0          	lea    -0x60(%rdx),%r8
  815782:	4c 8d 4a f0          	lea    -0x10(%rdx),%r9
  815786:	e8 f0 8d 00 00       	callq  81e57b <pre_step3d_mod_mp_pre_step3d_tile_+0xa0db>
  81578b:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
  815792:	bf 6c 74 b3 00       	mov    $0xb3746c,%edi
  815797:	33 c0                	xor    %eax,%eax
  815799:	8b b5 6c f5 ff ff    	mov    -0xa94(%rbp),%esi
  81579f:	e8 1c 89 bf ff       	callq  40e0c0 <__kmpc_end_serialized_parallel@plt>
  8157a4:	bf bc 74 b3 00       	mov    $0xb374bc,%edi
  8157a9:	33 c0                	xor    %eax,%eax
  8157ab:	e8 b0 85 bf ff       	callq  40dd60 <__kmpc_ok_to_fork@plt>
  8157b0:	85 c0                	test   %eax,%eax
  8157b2:	0f 84 10 01 00 00    	je     8158c8 <pre_step3d_mod_mp_pre_step3d_tile_+0x1428>
  8157b8:	48 81 c4 50 ff ff ff 	add    $0xffffffffffffff50,%rsp
  8157bf:	4c 8d 95 c8 f5 ff ff 	lea    -0xa38(%rbp),%r10
  8157c6:	4c 8b 85 90 f1 ff ff 	mov    -0xe70(%rbp),%r8
  8157cd:	4d 8d 5a 04          	lea    0x4(%r10),%r11
  8157d1:	ba 15 c3 81 00       	mov    $0x81c315,%edx
  8157d6:	4c 8d a3 90 00 00 00 	lea    0x90(%rbx),%r12
  8157dd:	4d 8d 74 24 48       	lea    0x48(%r12),%r14
  8157e2:	4c 89 14 24          	mov    %r10,(%rsp)
  8157e6:	4d 8d 7c 24 70       	lea    0x70(%r12),%r15
  8157eb:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
  8157f0:	48 8d 73 38          	lea    0x38(%rbx),%rsi
  8157f4:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
  8157f9:	49 8d 7c 24 40       	lea    0x40(%r12),%rdi
  8157fe:	4c 89 74 24 18       	mov    %r14,0x18(%rsp)
  815803:	48 8d 4b 60          	lea    0x60(%rbx),%rcx
  815807:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
  81580c:	48 8d 41 40          	lea    0x40(%rcx),%rax
  815810:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
  815815:	4c 8d 48 18          	lea    0x18(%rax),%r9
  815819:	48 89 7c 24 30       	mov    %rdi,0x30(%rsp)
  81581e:	4c 8d 53 78          	lea    0x78(%rbx),%r10
  815822:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  815827:	4c 8d 5b 40          	lea    0x40(%rbx),%r11
  81582b:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
  815830:	4c 8d a5 40 f5 ff ff 	lea    -0xac0(%rbp),%r12
  815837:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  81583c:	4d 8d 74 24 04       	lea    0x4(%r12),%r14
  815841:	4c 89 4c 24 50       	mov    %r9,0x50(%rsp)
  815846:	4d 8d 7c 24 78       	lea    0x78(%r12),%r15
  81584b:	4c 89 54 24 58       	mov    %r10,0x58(%rsp)
  815850:	49 8d 74 24 7c       	lea    0x7c(%r12),%rsi
  815855:	4c 89 5c 24 60       	mov    %r11,0x60(%rsp)
  81585a:	48 8d 7e 90          	lea    -0x70(%rsi),%rdi
  81585e:	4c 89 64 24 68       	mov    %r12,0x68(%rsp)
  815863:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  815867:	4c 89 74 24 70       	mov    %r14,0x70(%rsp)
  81586c:	4c 8d 41 04          	lea    0x4(%rcx),%r8
  815870:	4c 89 7c 24 78       	mov    %r15,0x78(%rsp)
  815875:	48 8d 41 90          	lea    -0x70(%rcx),%rax
  815879:	4c 8d bc 24 80 00 00 	lea    0x80(%rsp),%r15
  815880:	00 
  815881:	49 89 37             	mov    %rsi,(%r15)
  815884:	4c 8d 8d e0 f2 ff ff 	lea    -0xd20(%rbp),%r9
  81588b:	49 89 7f 08          	mov    %rdi,0x8(%r15)
  81588f:	bf bc 74 b3 00       	mov    $0xb374bc,%edi
  815894:	49 89 4f 10          	mov    %rcx,0x10(%r15)
  815898:	be 19 00 00 00       	mov    $0x19,%esi
  81589d:	4d 89 47 18          	mov    %r8,0x18(%r15)
  8158a1:	48 8d 49 18          	lea    0x18(%rcx),%rcx
  8158a5:	49 89 47 20          	mov    %rax,0x20(%r15)
  8158a9:	4c 8d 41 04          	lea    0x4(%rcx),%r8
  8158ad:	4d 89 4f 28          	mov    %r9,0x28(%r15)
  8158b1:	4c 8d 48 28          	lea    0x28(%rax),%r9
  8158b5:	33 c0                	xor    %eax,%eax
  8158b7:	e8 f4 82 bf ff       	callq  40dbb0 <__kmpc_fork_call@plt>
  8158bc:	48 81 c4 b0 00 00 00 	add    $0xb0,%rsp
  8158c3:	e9 1d 01 00 00       	jmpq   8159e5 <pre_step3d_mod_mp_pre_step3d_tile_+0x1545>
  8158c8:	bf bc 74 b3 00       	mov    $0xb374bc,%edi
  8158cd:	33 c0                	xor    %eax,%eax
  8158cf:	8b b5 6c f5 ff ff    	mov    -0xa94(%rbp),%esi
  8158d5:	e8 76 84 bf ff       	callq  40dd50 <__kmpc_serialized_parallel@plt>
  8158da:	48 81 c4 50 ff ff ff 	add    $0xffffffffffffff50,%rsp
  8158e1:	48 8d 85 cc f5 ff ff 	lea    -0xa34(%rbp),%rax
  8158e8:	48 8b 8d 90 f1 ff ff 	mov    -0xe70(%rbp),%rcx
  8158ef:	4c 8d 93 90 00 00 00 	lea    0x90(%rbx),%r10
  8158f6:	be 10 4c b8 00       	mov    $0xb84c10,%esi
  8158fb:	4d 8d 5a 48          	lea    0x48(%r10),%r11
  8158ff:	4d 8d 62 70          	lea    0x70(%r10),%r12
  815903:	48 89 04 24          	mov    %rax,(%rsp)
  815907:	4c 8d 73 38          	lea    0x38(%rbx),%r14
  81590b:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
  815910:	4d 8d 7a 40          	lea    0x40(%r10),%r15
  815914:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
  815919:	48 8d 53 60          	lea    0x60(%rbx),%rdx
  81591d:	4c 89 64 24 18       	mov    %r12,0x18(%rsp)
  815922:	4c 8d 42 40          	lea    0x40(%rdx),%r8
  815926:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
  81592b:	48 8d 42 58          	lea    0x58(%rdx),%rax
  81592f:	4c 89 7c 24 28       	mov    %r15,0x28(%rsp)
  815934:	4c 8d 4b 78          	lea    0x78(%rbx),%r9
  815938:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  81593d:	4c 8d 53 40          	lea    0x40(%rbx),%r10
  815941:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  815946:	4c 8d 9d 40 f5 ff ff 	lea    -0xac0(%rbp),%r11
  81594d:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
  815952:	4d 8d 63 04          	lea    0x4(%r11),%r12
  815956:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  81595b:	4d 8d 73 78          	lea    0x78(%r11),%r14
  81595f:	4c 89 4c 24 50       	mov    %r9,0x50(%rsp)
  815964:	4d 8d 7b 7c          	lea    0x7c(%r11),%r15
  815968:	4c 89 54 24 58       	mov    %r10,0x58(%rsp)
  81596d:	49 8d 53 0c          	lea    0xc(%r11),%rdx
  815971:	4c 89 5c 24 60       	mov    %r11,0x60(%rsp)
  815976:	48 8d 4a 74          	lea    0x74(%rdx),%rcx
  81597a:	4c 89 64 24 68       	mov    %r12,0x68(%rsp)
  81597f:	4c 8d 42 78          	lea    0x78(%rdx),%r8
  815983:	4c 89 74 24 70       	mov    %r14,0x70(%rsp)
  815988:	48 8d 42 04          	lea    0x4(%rdx),%rax
  81598c:	4c 89 7c 24 78       	mov    %r15,0x78(%rsp)
  815991:	4c 8d 8d e0 f2 ff ff 	lea    -0xd20(%rbp),%r9
  815998:	4c 8d bc 24 80 00 00 	lea    0x80(%rsp),%r15
  81599f:	00 
  8159a0:	49 89 17             	mov    %rdx,(%r15)
  8159a3:	48 8d 78 1c          	lea    0x1c(%rax),%rdi
  8159a7:	49 89 4f 08          	mov    %rcx,0x8(%r15)
  8159ab:	48 8d 51 18          	lea    0x18(%rcx),%rdx
  8159af:	4d 89 47 10          	mov    %r8,0x10(%r15)
  8159b3:	48 8d 4a 04          	lea    0x4(%rdx),%rcx
  8159b7:	49 89 47 18          	mov    %rax,0x18(%r15)
  8159bb:	4c 8d 40 28          	lea    0x28(%rax),%r8
  8159bf:	4d 89 4f 20          	mov    %r9,0x20(%r15)
  8159c3:	4c 8d 48 78          	lea    0x78(%rax),%r9
  8159c7:	e8 49 69 00 00       	callq  81c315 <pre_step3d_mod_mp_pre_step3d_tile_+0x7e75>
  8159cc:	48 81 c4 b0 00 00 00 	add    $0xb0,%rsp
  8159d3:	bf bc 74 b3 00       	mov    $0xb374bc,%edi
  8159d8:	33 c0                	xor    %eax,%eax
  8159da:	8b b5 6c f5 ff ff    	mov    -0xa94(%rbp),%esi
  8159e0:	e8 db 86 bf ff       	callq  40e0c0 <__kmpc_end_serialized_parallel@plt>
  8159e5:	bf 0c 75 b3 00       	mov    $0xb3750c,%edi
  8159ea:	33 c0                	xor    %eax,%eax
  8159ec:	e8 6f 83 bf ff       	callq  40dd60 <__kmpc_ok_to_fork@plt>
  8159f1:	85 c0                	test   %eax,%eax
  8159f3:	0f 84 51 01 00 00    	je     815b4a <pre_step3d_mod_mp_pre_step3d_tile_+0x16aa>
  8159f9:	48 81 c4 20 ff ff ff 	add    $0xffffffffffffff20,%rsp
  815a00:	4c 8d 95 54 f5 ff ff 	lea    -0xaac(%rbp),%r10
  815a07:	ba 67 61 81 00       	mov    $0x816167,%edx
  815a0c:	4d 8d 5a 78          	lea    0x78(%r10),%r11
  815a10:	4c 8d a3 90 00 00 00 	lea    0x90(%rbx),%r12
  815a17:	4d 8d 74 24 78       	lea    0x78(%r12),%r14
  815a1c:	4c 89 14 24          	mov    %r10,(%rsp)
  815a20:	4c 8d 7b 38          	lea    0x38(%rbx),%r15
  815a24:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
  815a29:	49 8d 74 24 50       	lea    0x50(%r12),%rsi
  815a2e:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
  815a33:	48 8d 7e c8          	lea    -0x38(%rsi),%rdi
  815a37:	4c 89 74 24 18       	mov    %r14,0x18(%rsp)
  815a3c:	48 8d 4e e0          	lea    -0x20(%rsi),%rcx
  815a40:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
  815a45:	4c 8d 43 68          	lea    0x68(%rbx),%r8
  815a49:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
  815a4e:	48 8d 43 70          	lea    0x70(%rbx),%rax
  815a52:	48 89 7c 24 30       	mov    %rdi,0x30(%rsp)
  815a57:	4c 8d 4b 30          	lea    0x30(%rbx),%r9
  815a5b:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  815a60:	4c 8d 53 78          	lea    0x78(%rbx),%r10
  815a64:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
  815a69:	4c 8d 5b 40          	lea    0x40(%rbx),%r11
  815a6d:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  815a72:	4c 8d 61 30          	lea    0x30(%rcx),%r12
  815a76:	4c 89 4c 24 50       	mov    %r9,0x50(%rsp)
  815a7b:	4c 8d b5 58 f5 ff ff 	lea    -0xaa8(%rbp),%r14
  815a82:	4c 89 54 24 58       	mov    %r10,0x58(%rsp)
  815a87:	4d 8d 7e 70          	lea    0x70(%r14),%r15
  815a8b:	4c 89 5c 24 60       	mov    %r11,0x60(%rsp)
  815a90:	48 8d 71 50          	lea    0x50(%rcx),%rsi
  815a94:	4c 89 64 24 68       	mov    %r12,0x68(%rsp)
  815a99:	48 8d 78 40          	lea    0x40(%rax),%rdi
  815a9d:	4c 89 74 24 70       	mov    %r14,0x70(%rsp)
  815aa2:	48 8d 48 58          	lea    0x58(%rax),%rcx
  815aa6:	4c 89 7c 24 78       	mov    %r15,0x78(%rsp)
  815aab:	4c 8d 41 30          	lea    0x30(%rcx),%r8
  815aaf:	4c 8d bc 24 80 00 00 	lea    0x80(%rsp),%r15
  815ab6:	00 
  815ab7:	49 89 37             	mov    %rsi,(%r15)
  815aba:	49 8d 46 e8          	lea    -0x18(%r14),%rax
  815abe:	49 89 7f 08          	mov    %rdi,0x8(%r15)
  815ac2:	4c 8d 48 04          	lea    0x4(%rax),%r9
  815ac6:	49 89 4f 10          	mov    %rcx,0x10(%r15)
  815aca:	4c 8d 50 78          	lea    0x78(%rax),%r10
  815ace:	48 8d 8c 24 98 00 00 	lea    0x98(%rsp),%rcx
  815ad5:	00 
  815ad6:	4c 89 01             	mov    %r8,(%rcx)
  815ad9:	4c 8d 58 7c          	lea    0x7c(%rax),%r11
  815add:	48 89 41 08          	mov    %rax,0x8(%rcx)
  815ae1:	4c 8d 60 0c          	lea    0xc(%rax),%r12
  815ae5:	4c 89 49 10          	mov    %r9,0x10(%rcx)
  815ae9:	4c 8d 70 08          	lea    0x8(%rax),%r14
  815aed:	48 8d 84 24 b0 00 00 	lea    0xb0(%rsp),%rax
  815af4:	00 
  815af5:	4c 89 10             	mov    %r10,(%rax)
  815af8:	4c 8d bd 40 f3 ff ff 	lea    -0xcc0(%rbp),%r15
  815aff:	4c 89 58 08          	mov    %r11,0x8(%rax)
  815b03:	49 8d 77 a0          	lea    -0x60(%r15),%rsi
  815b07:	4c 89 60 10          	mov    %r12,0x10(%rax)
  815b0b:	bf 0c 75 b3 00       	mov    $0xb3750c,%edi
  815b10:	4c 8d a4 24 c8 00 00 	lea    0xc8(%rsp),%r12
  815b17:	00 
  815b18:	4d 89 34 24          	mov    %r14,(%r12)
  815b1c:	49 8d 4a 20          	lea    0x20(%r10),%rcx
  815b20:	4d 89 7c 24 08       	mov    %r15,0x8(%r12)
  815b25:	4c 8d 41 04          	lea    0x4(%rcx),%r8
  815b29:	49 89 74 24 10       	mov    %rsi,0x10(%r12)
  815b2e:	be 1f 00 00 00       	mov    $0x1f,%esi
  815b33:	33 c0                	xor    %eax,%eax
  815b35:	4c 8d 49 a0          	lea    -0x60(%rcx),%r9
  815b39:	e8 72 80 bf ff       	callq  40dbb0 <__kmpc_fork_call@plt>
  815b3e:	48 81 c4 e0 00 00 00 	add    $0xe0,%rsp
  815b45:	e9 5e 01 00 00       	jmpq   815ca8 <pre_step3d_mod_mp_pre_step3d_tile_+0x1808>
  815b4a:	bf 0c 75 b3 00       	mov    $0xb3750c,%edi
  815b4f:	33 c0                	xor    %eax,%eax
  815b51:	8b b5 6c f5 ff ff    	mov    -0xa94(%rbp),%esi
  815b57:	e8 f4 81 bf ff       	callq  40dd50 <__kmpc_serialized_parallel@plt>
  815b5c:	48 81 c4 20 ff ff ff 	add    $0xffffffffffffff20,%rsp
  815b63:	48 8d 85 cc f5 ff ff 	lea    -0xa34(%rbp),%rax
  815b6a:	be 14 4c b8 00       	mov    $0xb84c14,%esi
  815b6f:	4c 8d 93 90 00 00 00 	lea    0x90(%rbx),%r10
  815b76:	4d 8d 5a 78          	lea    0x78(%r10),%r11
  815b7a:	4c 8d 63 38          	lea    0x38(%rbx),%r12
  815b7e:	48 89 04 24          	mov    %rax,(%rsp)
  815b82:	4d 8d 72 50          	lea    0x50(%r10),%r14
  815b86:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
  815b8b:	4d 8d 7a 18          	lea    0x18(%r10),%r15
  815b8f:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
  815b94:	49 8d 52 30          	lea    0x30(%r10),%rdx
  815b98:	4c 89 64 24 18       	mov    %r12,0x18(%rsp)
  815b9d:	48 8d 4b 68          	lea    0x68(%rbx),%rcx
  815ba1:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
  815ba6:	48 8d 43 70          	lea    0x70(%rbx),%rax
  815baa:	4c 89 7c 24 28       	mov    %r15,0x28(%rsp)
  815baf:	4c 8d 43 30          	lea    0x30(%rbx),%r8
  815bb3:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  815bb8:	4c 8d 53 78          	lea    0x78(%rbx),%r10
  815bbc:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  815bc1:	4c 8d 5b 40          	lea    0x40(%rbx),%r11
  815bc5:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  815bca:	4c 8d 62 30          	lea    0x30(%rdx),%r12
  815bce:	4c 89 44 24 48       	mov    %r8,0x48(%rsp)
  815bd3:	4c 8d b5 58 f5 ff ff 	lea    -0xaa8(%rbp),%r14
  815bda:	4c 89 54 24 50       	mov    %r10,0x50(%rsp)
  815bdf:	4d 8d 7e 70          	lea    0x70(%r14),%r15
  815be3:	4c 89 5c 24 58       	mov    %r11,0x58(%rsp)
  815be8:	48 8d 52 50          	lea    0x50(%rdx),%rdx
  815bec:	4c 89 64 24 60       	mov    %r12,0x60(%rsp)
  815bf1:	48 8d 48 40          	lea    0x40(%rax),%rcx
  815bf5:	4c 89 74 24 68       	mov    %r14,0x68(%rsp)
  815bfa:	48 8d 40 58          	lea    0x58(%rax),%rax
  815bfe:	4c 89 7c 24 70       	mov    %r15,0x70(%rsp)
  815c03:	4c 8d 40 30          	lea    0x30(%rax),%r8
  815c07:	4c 8d 7c 24 78       	lea    0x78(%rsp),%r15
  815c0c:	49 89 17             	mov    %rdx,(%r15)
  815c0f:	4d 8d 56 e8          	lea    -0x18(%r14),%r10
  815c13:	49 89 4f 08          	mov    %rcx,0x8(%r15)
  815c17:	4d 8d 5a 04          	lea    0x4(%r10),%r11
  815c1b:	49 89 47 10          	mov    %rax,0x10(%r15)
  815c1f:	4d 8d 62 78          	lea    0x78(%r10),%r12
  815c23:	48 8d 84 24 90 00 00 	lea    0x90(%rsp),%rax
  815c2a:	00 
  815c2b:	4c 89 00             	mov    %r8,(%rax)
  815c2e:	4d 8d 72 7c          	lea    0x7c(%r10),%r14
  815c32:	4c 89 50 08          	mov    %r10,0x8(%rax)
  815c36:	4d 8d 7a 0c          	lea    0xc(%r10),%r15
  815c3a:	4c 89 58 10          	mov    %r11,0x10(%rax)
  815c3e:	49 8d 52 08          	lea    0x8(%r10),%rdx
  815c42:	4c 8d 94 24 a8 00 00 	lea    0xa8(%rsp),%r10
  815c49:	00 
  815c4a:	4d 89 22             	mov    %r12,(%r10)
  815c4d:	48 8d 8d 40 f3 ff ff 	lea    -0xcc0(%rbp),%rcx
  815c54:	4d 89 72 08          	mov    %r14,0x8(%r10)
  815c58:	48 8d 7a 24          	lea    0x24(%rdx),%rdi
  815c5c:	4d 89 7a 10          	mov    %r15,0x10(%r10)
  815c60:	4c 8d 4a 0c          	lea    0xc(%rdx),%r9
  815c64:	4c 8d bc 24 c0 00 00 	lea    0xc0(%rsp),%r15
  815c6b:	00 
  815c6c:	49 89 17             	mov    %rdx,(%r15)
  815c6f:	48 8d 57 6c          	lea    0x6c(%rdi),%rdx
  815c73:	49 89 4f 08          	mov    %rcx,0x8(%r15)
  815c77:	48 8d 4a 04          	lea    0x4(%rdx),%rcx
  815c7b:	4c 8d 42 a0          	lea    -0x60(%rdx),%r8
  815c7f:	48 8d 85 e0 f2 ff ff 	lea    -0xd20(%rbp),%rax
  815c86:	49 89 47 10          	mov    %rax,0x10(%r15)
  815c8a:	e8 d8 04 00 00       	callq  816167 <pre_step3d_mod_mp_pre_step3d_tile_+0x1cc7>
  815c8f:	48 81 c4 e0 00 00 00 	add    $0xe0,%rsp
  815c96:	bf 0c 75 b3 00       	mov    $0xb3750c,%edi
  815c9b:	33 c0                	xor    %eax,%eax
  815c9d:	8b b5 6c f5 ff ff    	mov    -0xa94(%rbp),%esi
  815ca3:	e8 18 84 bf ff       	callq  40e0c0 <__kmpc_end_serialized_parallel@plt>
  815ca8:	48 8b 15 d1 63 32 00 	mov    0x3263d1(%rip),%rdx        # b3c080 <mod_param_mp_nt_+0x40>
  815caf:	b8 01 00 00 00       	mov    $0x1,%eax
  815cb4:	48 c1 e2 02          	shl    $0x2,%rdx
  815cb8:	48 8b bd 78 f5 ff ff 	mov    -0xa88(%rbp),%rdi
  815cbf:	48 89 d1             	mov    %rdx,%rcx
  815cc2:	48 f7 d9             	neg    %rcx
  815cc5:	48 03 0d 74 63 32 00 	add    0x326374(%rip),%rcx        # b3c040 <mod_param_mp_nt_>
  815ccc:	48 63 37             	movslq (%rdi),%rsi
  815ccf:	c7 85 d0 f5 ff ff 00 	movl   $0x0,-0xa30(%rbp)
  815cd6:	00 00 00 
  815cd9:	c7 85 d4 f5 ff ff 01 	movl   $0x1,-0xa2c(%rbp)
  815ce0:	00 00 00 
  815ce3:	44 8b 24 b1          	mov    (%rcx,%rsi,4),%r12d
  815ce7:	45 85 e4             	test   %r12d,%r12d
  815cea:	0f 8e d3 02 00 00    	jle    815fc3 <pre_step3d_mod_mp_pre_step3d_tile_+0x1b23>
  815cf0:	4c 8b ad 50 f4 ff ff 	mov    -0xbb0(%rbp),%r13
  815cf7:	4c 8b b5 b0 f5 ff ff 	mov    -0xa50(%rbp),%r14
  815cfe:	4c 8b bd 88 f5 ff ff 	mov    -0xa78(%rbp),%r15
  815d05:	4c 8b 05 ac 70 32 00 	mov    0x3270ac(%rip),%r8        # b3cdb8 <mod_scalars_mp_ltracerclm_+0x58>
  815d0c:	49 f7 d8             	neg    %r8
  815d0f:	4c 03 c6             	add    %rsi,%r8
  815d12:	4c 0f af 05 96 70 32 	imul   0x327096(%rip),%r8        # b3cdb0 <mod_scalars_mp_ltracerclm_+0x50>
  815d19:	00 
  815d1a:	48 8b 0d 7f 70 32 00 	mov    0x32707f(%rip),%rcx        # b3cda0 <mod_scalars_mp_ltracerclm_+0x40>
  815d21:	48 c1 e1 02          	shl    $0x2,%rcx
  815d25:	4c 8b 15 34 70 32 00 	mov    0x327034(%rip),%r10        # b3cd60 <mod_scalars_mp_ltracerclm_>
  815d2c:	48 63 c0             	movslq %eax,%rax
  815d2f:	4c 2b d1             	sub    %rcx,%r10
  815d32:	4d 8d 1c 82          	lea    (%r10,%rax,4),%r11
  815d36:	43 f6 04 03 01       	testb  $0x1,(%r11,%r8,1)
  815d3b:	74 3b                	je     815d78 <pre_step3d_mod_mp_pre_step3d_tile_+0x18d8>
  815d3d:	4c 8b 1d 14 70 32 00 	mov    0x327014(%rip),%r11        # b3cd58 <mod_scalars_mp_lnudgetclm_+0x58>
  815d44:	49 f7 db             	neg    %r11
  815d47:	4c 03 de             	add    %rsi,%r11
  815d4a:	4c 0f af 1d fe 6f 32 	imul   0x326ffe(%rip),%r11        # b3cd50 <mod_scalars_mp_lnudgetclm_+0x50>
  815d51:	00 
  815d52:	48 8b 0d e7 6f 32 00 	mov    0x326fe7(%rip),%rcx        # b3cd40 <mod_scalars_mp_lnudgetclm_+0x40>
  815d59:	48 c1 e1 02          	shl    $0x2,%rcx
  815d5d:	4c 8b 15 9c 6f 32 00 	mov    0x326f9c(%rip),%r10        # b3cd00 <mod_scalars_mp_lnudgetclm_>
  815d64:	4c 2b d1             	sub    %rcx,%r10
  815d67:	49 8d 04 82          	lea    (%r10,%rax,4),%rax
  815d6b:	42 f6 04 18 01       	testb  $0x1,(%rax,%r11,1)
  815d70:	74 06                	je     815d78 <pre_step3d_mod_mp_pre_step3d_tile_+0x18d8>
  815d72:	ff 85 d0 f5 ff ff    	incl   -0xa30(%rbp)
  815d78:	48 8b 05 61 63 32 00 	mov    0x326361(%rip),%rax        # b3c0e0 <mod_param_mp_n_+0x40>
  815d7f:	48 83 c4 a0          	add    $0xffffffffffffffa0,%rsp
  815d83:	48 c1 e0 02          	shl    $0x2,%rax
  815d87:	4c 8b 15 12 63 32 00 	mov    0x326312(%rip),%r10        # b3c0a0 <mod_param_mp_n_>
  815d8e:	4c 2b d0             	sub    %rax,%r10
  815d91:	48 8b 05 a8 62 32 00 	mov    0x3262a8(%rip),%rax        # b3c040 <mod_param_mp_nt_>
  815d98:	48 2b c2             	sub    %rdx,%rax
  815d9b:	4c 89 34 24          	mov    %r14,(%rsp)
  815d9f:	4c 89 7c 24 08       	mov    %r15,0x8(%rsp)
  815da4:	4d 8d 1c b2          	lea    (%r10,%rsi,4),%r11
  815da8:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
  815dad:	4c 8b 5b 38          	mov    0x38(%rbx),%r11
  815db1:	48 8d 14 b0          	lea    (%rax,%rsi,4),%rdx
  815db5:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
  815dba:	48 8d 95 d4 f5 ff ff 	lea    -0xa2c(%rbp),%rdx
  815dc1:	48 8b 4a bc          	mov    -0x44(%rdx),%rcx
  815dc5:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  815dca:	48 8d 8d d0 f5 ff ff 	lea    -0xa30(%rbp),%rcx
  815dd1:	48 8b 72 cc          	mov    -0x34(%rdx),%rsi
  815dd5:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
  815dda:	4c 89 6c 24 30       	mov    %r13,0x30(%rsp)
  815ddf:	4c 8b 52 c4          	mov    -0x3c(%rdx),%r10
  815de3:	48 8b 83 00 01 00 00 	mov    0x100(%rbx),%rax
  815dea:	4c 89 54 24 38       	mov    %r10,0x38(%rsp)
  815def:	4c 89 5c 24 40       	mov    %r11,0x40(%rsp)
  815df4:	48 c7 44 24 48 88 33 	movq   $0x8c3388,0x48(%rsp)
  815dfb:	8c 00 
  815dfd:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  815e02:	48 8b 72 9c          	mov    -0x64(%rdx),%rsi
  815e06:	4c 8b 42 d4          	mov    -0x2c(%rdx),%r8
  815e0a:	4c 8b 4a ac          	mov    -0x54(%rdx),%r9
  815e0e:	e8 9d 77 e6 ff       	callq  67d5b0 <t3dbc_mod_mp_t3dbc_tile_>
  815e13:	48 83 c4 60          	add    $0x60,%rsp
  815e17:	48 8b bd 78 f5 ff ff 	mov    -0xa88(%rbp),%rdi
  815e1e:	48 8b 05 7b 7d 32 00 	mov    0x327d7b(%rip),%rax        # b3dba0 <mod_scalars_mp_ewperiodic_+0x40>
  815e25:	48 c1 e0 02          	shl    $0x2,%rax
  815e29:	48 8b 15 10 7a 32 00 	mov    0x327a10(%rip),%rdx        # b3d840 <mod_scalars_mp_nsperiodic_+0x40>
  815e30:	48 f7 d8             	neg    %rax
  815e33:	48 63 37             	movslq (%rdi),%rsi
  815e36:	48 c1 e2 02          	shl    $0x2,%rdx
  815e3a:	48 03 05 1f 7d 32 00 	add    0x327d1f(%rip),%rax        # b3db60 <mod_scalars_mp_ewperiodic_>
  815e41:	48 f7 da             	neg    %rdx
  815e44:	48 03 15 b5 79 32 00 	add    0x3279b5(%rip),%rdx        # b3d800 <mod_scalars_mp_nsperiodic_>
  815e4b:	48 8d 0c b5 00 00 00 	lea    0x0(,%rsi,4),%rcx
  815e52:	00 
  815e53:	44 8b 14 08          	mov    (%rax,%rcx,1),%r10d
  815e57:	44 0b 14 0a          	or     (%rdx,%rcx,1),%r10d
  815e5b:	41 f7 c2 01 00 00 00 	test   $0x1,%r10d
  815e62:	0f 84 1d 01 00 00    	je     815f85 <pre_step3d_mod_mp_pre_step3d_tile_+0x1ae5>
  815e68:	48 8b 83 00 01 00 00 	mov    0x100(%rbx),%rax
  815e6f:	33 d2                	xor    %edx,%edx
  815e71:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  815e77:	48 83 c4 e0          	add    $0xffffffffffffffe0,%rsp
  815e7b:	4c 89 95 40 f4 ff ff 	mov    %r10,-0xbc0(%rbp)
  815e82:	4d 89 f0             	mov    %r14,%r8
  815e85:	4c 8b 58 30          	mov    0x30(%rax),%r11
  815e89:	4d 85 db             	test   %r11,%r11
  815e8c:	4c 89 95 58 f4 ff ff 	mov    %r10,-0xba8(%rbp)
  815e93:	4d 89 f9             	mov    %r15,%r9
  815e96:	4c 89 95 70 f4 ff ff 	mov    %r10,-0xb90(%rbp)
  815e9d:	4c 0f 4e da          	cmovle %rdx,%r11
  815ea1:	4c 89 95 18 f4 ff ff 	mov    %r10,-0xbe8(%rbp)
  815ea8:	4c 8b 50 48          	mov    0x48(%rax),%r10
  815eac:	4d 85 d2             	test   %r10,%r10
  815eaf:	48 8b 48 60          	mov    0x60(%rax),%rcx
  815eb3:	4c 0f 4e d2          	cmovle %rdx,%r10
  815eb7:	48 85 c9             	test   %rcx,%rcx
  815eba:	48 89 95 10 f4 ff ff 	mov    %rdx,-0xbf0(%rbp)
  815ec1:	48 0f 4e ca          	cmovle %rdx,%rcx
  815ec5:	48 8b 50 50          	mov    0x50(%rax),%rdx
  815ec9:	48 89 95 50 f4 ff ff 	mov    %rdx,-0xbb0(%rbp)
  815ed0:	48 8b 50 68          	mov    0x68(%rax),%rdx
  815ed4:	48 89 8d 60 f4 ff ff 	mov    %rcx,-0xba0(%rbp)
  815edb:	48 89 95 68 f4 ff ff 	mov    %rdx,-0xb98(%rbp)
  815ee2:	48 8b 88 80 00 00 00 	mov    0x80(%rax),%rcx
  815ee9:	48 8b 10             	mov    (%rax),%rdx
  815eec:	4c 89 9d 30 f4 ff ff 	mov    %r11,-0xbd0(%rbp)
  815ef3:	4c 8b 58 38          	mov    0x38(%rax),%r11
  815ef7:	48 c7 04 24 8c 33 8c 	movq   $0x8c338c,(%rsp)
  815efe:	00 
  815eff:	48 8d 0c 4a          	lea    (%rdx,%rcx,2),%rcx
  815f03:	48 63 95 d4 f5 ff ff 	movslq -0xa2c(%rbp),%rdx
  815f0a:	48 ff ca             	dec    %rdx
  815f0d:	48 0f af 90 98 00 00 	imul   0x98(%rax),%rdx
  815f14:	00 
  815f15:	48 8b 05 c4 61 32 00 	mov    0x3261c4(%rip),%rax        # b3c0e0 <mod_param_mp_n_+0x40>
  815f1c:	48 03 ca             	add    %rdx,%rcx
  815f1f:	48 c1 e0 02          	shl    $0x2,%rax
  815f23:	48 8b 15 76 61 32 00 	mov    0x326176(%rip),%rdx        # b3c0a0 <mod_param_mp_n_>
  815f2a:	48 2b d0             	sub    %rax,%rdx
  815f2d:	48 8d 85 00 f4 ff ff 	lea    -0xc00(%rbp),%rax
  815f34:	48 89 08             	mov    %rcx,(%rax)
  815f37:	48 c7 40 08 08 00 00 	movq   $0x8,0x8(%rax)
  815f3e:	00 
  815f3f:	48 c7 40 20 03 00 00 	movq   $0x3,0x20(%rax)
  815f46:	00 
  815f47:	4c 89 50 48          	mov    %r10,0x48(%rax)
  815f4b:	48 8d 34 b2          	lea    (%rdx,%rsi,4),%rsi
  815f4f:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  815f54:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  815f59:	48 8b b5 70 f5 ff ff 	mov    -0xa90(%rbp),%rsi
  815f60:	48 8b 95 a8 f5 ff ff 	mov    -0xa58(%rbp),%rdx
  815f67:	48 8b 8d 80 f5 ff ff 	mov    -0xa80(%rbp),%rcx
  815f6e:	4c 89 58 38          	mov    %r11,0x38(%rax)
  815f72:	e8 49 42 df ff       	callq  60a1c0 <exchange_3d_mod_mp_exchange_r3d_tile_>
  815f77:	48 83 c4 20          	add    $0x20,%rsp
  815f7b:	48 8b bd 78 f5 ff ff 	mov    -0xa88(%rbp),%rdi
  815f82:	48 63 37             	movslq (%rdi),%rsi
  815f85:	8b 85 d4 f5 ff ff    	mov    -0xa2c(%rbp),%eax
  815f8b:	ff c0                	inc    %eax
  815f8d:	89 85 d4 f5 ff ff    	mov    %eax,-0xa2c(%rbp)
  815f93:	41 3b c4             	cmp    %r12d,%eax
  815f96:	7f 10                	jg     815fa8 <pre_step3d_mod_mp_pre_step3d_tile_+0x1b08>
  815f98:	48 8b 15 e1 60 32 00 	mov    0x3260e1(%rip),%rdx        # b3c080 <mod_param_mp_nt_+0x40>
  815f9f:	48 c1 e2 02          	shl    $0x2,%rdx
  815fa3:	e9 5d fd ff ff       	jmpq   815d05 <pre_step3d_mod_mp_pre_step3d_tile_+0x1865>
  815fa8:	48 8b 05 d1 60 32 00 	mov    0x3260d1(%rip),%rax        # b3c080 <mod_param_mp_nt_+0x40>
  815faf:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  815fb5:	48 c1 e0 02          	shl    $0x2,%rax
  815fb9:	48 8b 0d 80 60 32 00 	mov    0x326080(%rip),%rcx        # b3c040 <mod_param_mp_nt_>
  815fc0:	48 2b c8             	sub    %rax,%rcx
  815fc3:	4c 8b 15 76 78 32 00 	mov    0x327876(%rip),%r10        # b3d840 <mod_scalars_mp_nsperiodic_+0x40>
  815fca:	45 33 c0             	xor    %r8d,%r8d
  815fcd:	49 c1 e2 02          	shl    $0x2,%r10
  815fd1:	4c 8d 8d 90 f1 ff ff 	lea    -0xe70(%rbp),%r9
  815fd8:	4c 8b 1d 21 78 32 00 	mov    0x327821(%rip),%r11        # b3d800 <mod_scalars_mp_nsperiodic_>
  815fdf:	48 8d 0c b1          	lea    (%rcx,%rsi,4),%rcx
  815fe3:	4c 8b 35 b6 7b 32 00 	mov    0x327bb6(%rip),%r14        # b3dba0 <mod_scalars_mp_ewperiodic_+0x40>
  815fea:	4d 2b da             	sub    %r10,%r11
  815fed:	49 c1 e6 02          	shl    $0x2,%r14
  815ff1:	4c 8b 3d 68 7b 32 00 	mov    0x327b68(%rip),%r15        # b3db60 <mod_scalars_mp_ewperiodic_>
  815ff8:	4d 2b fe             	sub    %r14,%r15
  815ffb:	41 50                	push   %r8
  815ffd:	41 50                	push   %r8
  815fff:	41 51                	push   %r9
  816001:	48 8b 15 d8 60 32 00 	mov    0x3260d8(%rip),%rdx        # b3c0e0 <mod_param_mp_n_+0x40>
  816008:	4d 8d 24 b3          	lea    (%r11,%rsi,4),%r12
  81600c:	41 54                	push   %r12
  81600e:	48 c1 e2 02          	shl    $0x2,%rdx
  816012:	49 8d 04 b7          	lea    (%r15,%rsi,4),%rax
  816016:	50                   	push   %rax
  816017:	48 8b 83 00 01 00 00 	mov    0x100(%rbx),%rax
  81601e:	4c 8b 0d 7b 60 32 00 	mov    0x32607b(%rip),%r9        # b3c0a0 <mod_param_mp_n_>
  816025:	4c 2b ca             	sub    %rdx,%r9
  816028:	4c 8b 50 30          	mov    0x30(%rax),%r10
  81602c:	4d 85 d2             	test   %r10,%r10
  81602f:	68 88 23 cc 00       	pushq  $0xcc2388
  816034:	4c 8b 60 48          	mov    0x48(%rax),%r12
  816038:	4d 0f 4e d0          	cmovle %r8,%r10
  81603c:	51                   	push   %rcx
  81603d:	b9 8c 33 8c 00       	mov    $0x8c338c,%ecx
  816042:	4d 85 e4             	test   %r12,%r12
  816045:	51                   	push   %rcx
  816046:	48 8b 50 60          	mov    0x60(%rax),%rdx
  81604a:	49 8d 34 b1          	lea    (%r9,%rsi,4),%rsi
  81604e:	4d 0f 4e e0          	cmovle %r8,%r12
  816052:	48 85 d2             	test   %rdx,%rdx
  816055:	56                   	push   %rsi
  816056:	51                   	push   %rcx
  816057:	48 8b b0 90 00 00 00 	mov    0x90(%rax),%rsi
  81605e:	49 0f 4e d0          	cmovle %r8,%rdx
  816062:	48 85 f6             	test   %rsi,%rsi
  816065:	ff b5 88 f5 ff ff    	pushq  -0xa78(%rbp)
  81606b:	ff b5 b0 f5 ff ff    	pushq  -0xa50(%rbp)
  816071:	4c 89 85 a0 f1 ff ff 	mov    %r8,-0xe60(%rbp)
  816078:	49 0f 4e f0          	cmovle %r8,%rsi
  81607c:	48 89 95 f0 f1 ff ff 	mov    %rdx,-0xe10(%rbp)
  816083:	4c 8b 40 38          	mov    0x38(%rax),%r8
  816087:	4c 8b 58 50          	mov    0x50(%rax),%r11
  81608b:	4c 8b 70 68          	mov    0x68(%rax),%r14
  81608f:	4c 8b b8 98 00 00 00 	mov    0x98(%rax),%r15
  816096:	48 8b 90 80 00 00 00 	mov    0x80(%rax),%rdx
  81609d:	48 8b 00             	mov    (%rax),%rax
  8160a0:	4c 89 85 c8 f1 ff ff 	mov    %r8,-0xe38(%rbp)
  8160a7:	48 89 b5 08 f2 ff ff 	mov    %rsi,-0xdf8(%rbp)
  8160ae:	48 8b b5 70 f5 ff ff 	mov    -0xa90(%rbp),%rsi
  8160b5:	4c 8d 04 50          	lea    (%rax,%rdx,2),%r8
  8160b9:	ba e8 b6 b3 00       	mov    $0xb3b6e8,%edx
  8160be:	4c 89 85 90 f1 ff ff 	mov    %r8,-0xe70(%rbp)
  8160c5:	4c 8b 85 a8 f5 ff ff 	mov    -0xa58(%rbp),%r8
  8160cc:	4c 8b 8d 80 f5 ff ff 	mov    -0xa80(%rbp),%r9
  8160d3:	48 c7 85 98 f1 ff ff 	movq   $0x8,-0xe68(%rbp)
  8160da:	08 00 00 00 
  8160de:	48 c7 85 b0 f1 ff ff 	movq   $0x4,-0xe50(%rbp)
  8160e5:	04 00 00 00 
  8160e9:	4c 89 ad d0 f1 ff ff 	mov    %r13,-0xe30(%rbp)
  8160f0:	4c 89 95 c0 f1 ff ff 	mov    %r10,-0xe40(%rbp)
  8160f7:	4c 89 9d e0 f1 ff ff 	mov    %r11,-0xe20(%rbp)
  8160fe:	4c 89 ad e8 f1 ff ff 	mov    %r13,-0xe18(%rbp)
  816105:	4c 89 a5 d8 f1 ff ff 	mov    %r12,-0xe28(%rbp)
  81610c:	4c 89 b5 f8 f1 ff ff 	mov    %r14,-0xe08(%rbp)
  816113:	4c 89 ad 00 f2 ff ff 	mov    %r13,-0xe00(%rbp)
  81611a:	4c 89 bd 10 f2 ff ff 	mov    %r15,-0xdf0(%rbp)
  816121:	4c 89 ad 18 f2 ff ff 	mov    %r13,-0xde8(%rbp)
  816128:	4c 89 ad a8 f1 ff ff 	mov    %r13,-0xe58(%rbp)
  81612f:	e8 1c ee e2 ff       	callq  644f50 <mp_exchange_mod_mp_mp_exchange4d_>
  816134:	48 83 c4 60          	add    $0x60,%rsp
  816138:	48 8b 85 38 f5 ff ff 	mov    -0xac8(%rbp),%rax
  81613f:	48 89 c4             	mov    %rax,%rsp
  816142:	4c 8b bd 18 f6 ff ff 	mov    -0x9e8(%rbp),%r15
  816149:	4c 8b b5 20 f6 ff ff 	mov    -0x9e0(%rbp),%r14
  816150:	4c 8b ad 28 f6 ff ff 	mov    -0x9d8(%rbp),%r13
  816157:	4c 8b a5 30 f6 ff ff 	mov    -0x9d0(%rbp),%r12
  81615e:	48 89 ec             	mov    %rbp,%rsp
  816161:	5d                   	pop    %rbp
  816162:	48 89 dc             	mov    %rbx,%rsp
  816165:	5b                   	pop    %rbx
  816166:	c3                   	retq   
  816167:	53                   	push   %rbx
  816168:	48 89 e3             	mov    %rsp,%rbx
  81616b:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  81616f:	55                   	push   %rbp
  816170:	55                   	push   %rbp
  816171:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  816175:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  81617a:	48 89 e5             	mov    %rsp,%rbp
  81617d:	48 81 ec 70 0e 00 00 	sub    $0xe70,%rsp
  816184:	4c 89 a5 30 f6 ff ff 	mov    %r12,-0x9d0(%rbp)
  81618b:	4c 8b 63 10          	mov    0x10(%rbx),%r12
  81618f:	48 8b 43 38          	mov    0x38(%rbx),%rax
  816193:	4c 89 b5 20 f6 ff ff 	mov    %r14,-0x9e0(%rbp)
  81619a:	4d 63 24 24          	movslq (%r12),%r12
  81619e:	4c 89 a5 00 ff ff ff 	mov    %r12,-0x100(%rbp)
  8161a5:	44 8b 21             	mov    (%rcx),%r12d
  8161a8:	8b 0a                	mov    (%rdx),%ecx
  8161aa:	48 8b 53 50          	mov    0x50(%rbx),%rdx
  8161ae:	48 8b 00             	mov    (%rax),%rax
  8161b1:	48 89 85 10 f3 ff ff 	mov    %rax,-0xcf0(%rbp)
  8161b8:	49 63 01             	movslq (%r9),%rax
  8161bb:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
  8161c2:	48 8b 02             	mov    (%rdx),%rax
  8161c5:	48 89 85 f8 f2 ff ff 	mov    %rax,-0xd08(%rbp)
  8161cc:	48 8d 53 78          	lea    0x78(%rbx),%rdx
  8161d0:	48 8b 02             	mov    (%rdx),%rax
  8161d3:	4c 8b 52 a0          	mov    -0x60(%rdx),%r10
  8161d7:	4c 8b 72 b0          	mov    -0x50(%rdx),%r14
  8161db:	8b 00                	mov    (%rax),%eax
  8161dd:	89 85 d0 fb ff ff    	mov    %eax,-0x430(%rbp)
  8161e3:	48 8b 42 08          	mov    0x8(%rdx),%rax
  8161e7:	4c 89 ad 28 f6 ff ff 	mov    %r13,-0x9d8(%rbp)
  8161ee:	49 89 fd             	mov    %rdi,%r13
  8161f1:	48 8b 7a c8          	mov    -0x38(%rdx),%rdi
  8161f5:	48 63 00             	movslq (%rax),%rax
  8161f8:	48 89 85 00 fc ff ff 	mov    %rax,-0x400(%rbp)
  8161ff:	48 8b 42 10          	mov    0x10(%rdx),%rax
  816203:	4c 89 bd 18 f6 ff ff 	mov    %r15,-0x9e8(%rbp)
  81620a:	4c 8b 5a a8          	mov    -0x58(%rdx),%r11
  81620e:	48 8b 00             	mov    (%rax),%rax
  816211:	48 89 85 50 f3 ff ff 	mov    %rax,-0xcb0(%rbp)
  816218:	48 8b 42 18          	mov    0x18(%rdx),%rax
  81621c:	4c 8b 7a b8          	mov    -0x48(%rdx),%r15
  816220:	4d 8b 36             	mov    (%r14),%r14
  816223:	48 8b 00             	mov    (%rax),%rax
  816226:	48 89 85 00 f3 ff ff 	mov    %rax,-0xd00(%rbp)
  81622d:	48 8b 42 20          	mov    0x20(%rdx),%rax
  816231:	4d 8b 12             	mov    (%r10),%r10
  816234:	4d 8b 00             	mov    (%r8),%r8
  816237:	48 8b 00             	mov    (%rax),%rax
  81623a:	48 89 85 08 f3 ff ff 	mov    %rax,-0xcf8(%rbp)
  816241:	48 8b 42 28          	mov    0x28(%rdx),%rax
  816245:	48 8b 52 e0          	mov    -0x20(%rdx),%rdx
  816249:	4c 8d 4b 48          	lea    0x48(%rbx),%r9
  81624d:	49 8b 31             	mov    (%r9),%rsi
  816250:	48 8b 00             	mov    (%rax),%rax
  816253:	48 89 85 40 f3 ff ff 	mov    %rax,-0xcc0(%rbp)
  81625a:	49 8b 41 60          	mov    0x60(%r9),%rax
  81625e:	4c 89 b5 e0 f2 ff ff 	mov    %r14,-0xd20(%rbp)
  816265:	4c 89 95 28 f3 ff ff 	mov    %r10,-0xcd8(%rbp)
  81626c:	48 63 00             	movslq (%rax),%rax
  81626f:	48 89 85 f0 f1 ff ff 	mov    %rax,-0xe10(%rbp)
  816276:	49 8b 41 68          	mov    0x68(%r9),%rax
  81627a:	4c 89 85 d0 f2 ff ff 	mov    %r8,-0xd30(%rbp)
  816281:	4d 8b 41 18          	mov    0x18(%r9),%r8
  816285:	48 63 00             	movslq (%rax),%rax
  816288:	48 89 85 f8 f1 ff ff 	mov    %rax,-0xe08(%rbp)
  81628f:	49 8b 41 70          	mov    0x70(%r9),%rax
  816293:	4d 8b 51 20          	mov    0x20(%r9),%r10
  816297:	4d 8b 71 28          	mov    0x28(%r9),%r14
  81629b:	48 63 00             	movslq (%rax),%rax
  81629e:	48 89 85 80 f7 ff ff 	mov    %rax,-0x880(%rbp)
  8162a5:	49 8b 41 78          	mov    0x78(%r9),%rax
  8162a9:	48 8b 3f             	mov    (%rdi),%rdi
  8162ac:	48 89 bd 18 f3 ff ff 	mov    %rdi,-0xce8(%rbp)
  8162b3:	48 63 00             	movslq (%rax),%rax
  8162b6:	4d 8b 3f             	mov    (%r15),%r15
  8162b9:	4d 8b 1b             	mov    (%r11),%r11
  8162bc:	48 89 85 58 f3 ff ff 	mov    %rax,-0xca8(%rbp)
  8162c3:	48 8b 3a             	mov    (%rdx),%rdi
  8162c6:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
  8162cd:	48 8b 36             	mov    (%rsi),%rsi
  8162d0:	4c 89 bd 30 f3 ff ff 	mov    %r15,-0xcd0(%rbp)
  8162d7:	4c 89 9d 48 f3 ff ff 	mov    %r11,-0xcb8(%rbp)
  8162de:	48 89 bd d8 f2 ff ff 	mov    %rdi,-0xd28(%rbp)
  8162e5:	48 8d bd 90 f1 ff ff 	lea    -0xe70(%rbp),%rdi
  8162ec:	4d 8b 08             	mov    (%r8),%r9
  8162ef:	4d 8b 1a             	mov    (%r10),%r11
  8162f2:	4d 8b 3e             	mov    (%r14),%r15
  8162f5:	48 89 47 78          	mov    %rax,0x78(%rdi)
  8162f9:	33 c0                	xor    %eax,%eax
  8162fb:	48 89 b5 f0 f2 ff ff 	mov    %rsi,-0xd10(%rbp)
  816302:	48 8b b3 e0 00 00 00 	mov    0xe0(%rbx),%rsi
  816309:	45 8b 6d 00          	mov    0x0(%r13),%r13d
  81630d:	4c 89 8d 20 f3 ff ff 	mov    %r9,-0xce0(%rbp)
  816314:	4c 89 9d e8 f2 ff ff 	mov    %r11,-0xd18(%rbp)
  81631b:	4c 89 bd 38 f3 ff ff 	mov    %r15,-0xcc8(%rbp)
  816322:	89 4f 70             	mov    %ecx,0x70(%rdi)
  816325:	e8 86 81 c6 ff       	callq  47e4b0 <_f90_dope_vector_init>
  81632a:	8b 8d 00 f2 ff ff    	mov    -0xe00(%rbp),%ecx
  816330:	49 89 c7             	mov    %rax,%r15
  816333:	4c 89 f8             	mov    %r15,%rax
  816336:	48 83 c0 1f          	add    $0x1f,%rax
  81633a:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81633e:	48 2b e0             	sub    %rax,%rsp
  816341:	48 89 e0             	mov    %rsp,%rax
  816344:	48 89 85 08 f6 ff ff 	mov    %rax,-0x9f8(%rbp)
  81634b:	48 89 c2             	mov    %rax,%rdx
  81634e:	48 8d bd 10 f4 ff ff 	lea    -0xbf0(%rbp),%rdi
  816355:	33 c0                	xor    %eax,%eax
  816357:	48 8b b5 08 f2 ff ff 	mov    -0xdf8(%rbp),%rsi
  81635e:	48 89 95 90 f1 ff ff 	mov    %rdx,-0xe70(%rbp)
  816365:	89 8d 00 f2 ff ff    	mov    %ecx,-0xe00(%rbp)
  81636b:	e8 40 81 c6 ff       	callq  47e4b0 <_f90_dope_vector_init>
  816370:	8b 8d 00 f2 ff ff    	mov    -0xe00(%rbp),%ecx
  816376:	48 89 85 10 f6 ff ff 	mov    %rax,-0x9f0(%rbp)
  81637d:	48 83 c0 1f          	add    $0x1f,%rax
  816381:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  816385:	48 2b e0             	sub    %rax,%rsp
  816388:	48 89 e0             	mov    %rsp,%rax
  81638b:	49 89 c6             	mov    %rax,%r14
  81638e:	4c 89 b5 10 f4 ff ff 	mov    %r14,-0xbf0(%rbp)
  816395:	44 3b e1             	cmp    %ecx,%r12d
  816398:	0f 8c 2b 5f 00 00    	jl     81c2c9 <pre_step3d_mod_mp_pre_step3d_tile_+0x7e29>
  81639e:	48 83 c4 e0          	add    $0xffffffffffffffe0,%rsp
  8163a2:	bf 0c 75 b3 00       	mov    $0xb3750c,%edi
  8163a7:	89 8d 18 fd ff ff    	mov    %ecx,-0x2e8(%rbp)
  8163ad:	44 89 ee             	mov    %r13d,%esi
  8163b0:	ba 22 00 00 00       	mov    $0x22,%edx
  8163b5:	48 8d 8d 20 fd ff ff 	lea    -0x2e0(%rbp),%rcx
  8163bc:	41 bb 01 00 00 00    	mov    $0x1,%r11d
  8163c2:	4c 8d 85 18 fd ff ff 	lea    -0x2e8(%rbp),%r8
  8163c9:	44 89 61 fc          	mov    %r12d,-0x4(%rcx)
  8163cd:	4c 8d 8d 1c fd ff ff 	lea    -0x2e4(%rbp),%r9
  8163d4:	c7 01 00 00 00 00    	movl   $0x0,(%rcx)
  8163da:	4c 8d 95 24 fd ff ff 	lea    -0x2dc(%rbp),%r10
  8163e1:	4c 89 14 24          	mov    %r10,(%rsp)
  8163e5:	44 89 5c 24 08       	mov    %r11d,0x8(%rsp)
  8163ea:	44 89 59 04          	mov    %r11d,0x4(%rcx)
  8163ee:	44 89 5c 24 10       	mov    %r11d,0x10(%rsp)
  8163f3:	e8 38 7a bf ff       	callq  40de30 <__kmpc_for_static_init_4@plt>
  8163f8:	48 83 c4 20          	add    $0x20,%rsp
  8163fc:	8b 8d 18 fd ff ff    	mov    -0x2e8(%rbp),%ecx
  816402:	89 8d e0 f8 ff ff    	mov    %ecx,-0x720(%rbp)
  816408:	41 3b cc             	cmp    %r12d,%ecx
  81640b:	8b 8d 1c fd ff ff    	mov    -0x2e4(%rbp),%ecx
  816411:	0f 8f a2 5e 00 00    	jg     81c2b9 <pre_step3d_mod_mp_pre_step3d_tile_+0x7e19>
  816417:	41 3b cc             	cmp    %r12d,%ecx
  81641a:	48 8b bd d0 f2 ff ff 	mov    -0xd30(%rbp),%rdi
  816421:	44 0f 4c e1          	cmovl  %ecx,%r12d
  816425:	44 8b 85 e0 f8 ff ff 	mov    -0x720(%rbp),%r8d
  81642c:	45 2b e0             	sub    %r8d,%r12d
  81642f:	48 8b b5 d8 f2 ff ff 	mov    -0xd28(%rbp),%rsi
  816436:	41 ff c4             	inc    %r12d
  816439:	4c 89 b5 60 f5 ff ff 	mov    %r14,-0xaa0(%rbp)
  816440:	4c 8b b5 e0 f2 ff ff 	mov    -0xd20(%rbp),%r14
  816447:	44 89 a5 d8 fb ff ff 	mov    %r12d,-0x428(%rbp)
  81644e:	48 8b 0d 8b 5c 32 00 	mov    0x325c8b(%rip),%rcx        # b3c0e0 <mod_param_mp_n_+0x40>
  816455:	4c 8b 25 c4 5e 32 00 	mov    0x325ec4(%rip),%r12        # b3c320 <mod_scalars_mp_iic_+0x40>
  81645c:	48 c1 e1 02          	shl    $0x2,%rcx
  816460:	49 c1 e4 02          	shl    $0x2,%r12
  816464:	48 f7 d9             	neg    %rcx
  816467:	4c 89 bd 68 f5 ff ff 	mov    %r15,-0xa98(%rbp)
  81646e:	49 f7 dc             	neg    %r12
  816471:	4c 63 3f             	movslq (%rdi),%r15
  816474:	4c 63 16             	movslq (%rsi),%r10
  816477:	48 8b bd e8 f2 ff ff 	mov    -0xd18(%rbp),%rdi
  81647e:	49 63 06             	movslq (%r14),%rax
  816481:	4c 89 95 78 f4 ff ff 	mov    %r10,-0xb88(%rbp)
  816488:	48 03 0d 11 5c 32 00 	add    0x325c11(%rip),%rcx        # b3c0a0 <mod_param_mp_n_>
  81648f:	4c 03 25 4a 5e 32 00 	add    0x325e4a(%rip),%r12        # b3c2e0 <mod_scalars_mp_iic_>
  816496:	48 89 85 a8 f4 ff ff 	mov    %rax,-0xb58(%rbp)
  81649d:	4c 8b 95 48 f3 ff ff 	mov    -0xcb8(%rbp),%r10
  8164a4:	48 8b 05 35 d2 32 00 	mov    0x32d235(%rip),%rax        # b436e0 <mod_scalars_mp_ntfirst_+0x40>
  8164ab:	48 c1 e0 02          	shl    $0x2,%rax
  8164af:	4c 8d b5 80 f7 ff ff 	lea    -0x880(%rbp),%r14
  8164b6:	49 8b 36             	mov    (%r14),%rsi
  8164b9:	48 f7 d8             	neg    %rax
  8164bc:	48 63 17             	movslq (%rdi),%rdx
  8164bf:	44 89 ad 70 f5 ff ff 	mov    %r13d,-0xa90(%rbp)
  8164c6:	48 29 b5 58 f3 ff ff 	sub    %rsi,-0xca8(%rbp)
  8164cd:	48 c1 e6 03          	shl    $0x3,%rsi
  8164d1:	48 89 95 90 f4 ff ff 	mov    %rdx,-0xb70(%rbp)
  8164d8:	49 89 36             	mov    %rsi,(%r14)
  8164db:	4e 63 2c b9          	movslq (%rcx,%r15,4),%r13
  8164df:	47 8b 34 bc          	mov    (%r12,%r15,4),%r14d
  8164e3:	48 03 05 b6 d1 32 00 	add    0x32d1b6(%rip),%rax        # b436a0 <mod_scalars_mp_ntfirst_>
  8164ea:	49 8b 12             	mov    (%r10),%rdx
  8164ed:	4d 8b 62 38          	mov    0x38(%r10),%r12
  8164f1:	49 8b 72 68          	mov    0x68(%r10),%rsi
  8164f5:	49 8b 8a 80 00 00 00 	mov    0x80(%r10),%rcx
  8164fc:	48 2b d1             	sub    %rcx,%rdx
  8164ff:	4d 8b 4a 50          	mov    0x50(%r10),%r9
  816503:	4c 8b 95 38 f3 ff ff 	mov    -0xcc8(%rbp),%r10
  81650a:	48 8b 3d 6f 4e 32 00 	mov    0x324e6f(%rip),%rdi        # b3b380 <mod_scalars_mp_dt_+0x40>
  816511:	48 f7 df             	neg    %rdi
  816514:	49 03 ff             	add    %r15,%rdi
  816517:	46 8b 1c b8          	mov    (%rax,%r15,4),%r11d
  81651b:	4c 8b 3d 1e 4e 32 00 	mov    0x324e1e(%rip),%r15        # b3b340 <mod_scalars_mp_dt_>
  816522:	48 89 95 88 f2 ff ff 	mov    %rdx,-0xd78(%rbp)
  816529:	49 8b 92 80 00 00 00 	mov    0x80(%r10),%rdx
  816530:	48 89 95 68 f3 ff ff 	mov    %rdx,-0xc98(%rbp)
  816537:	48 8b 95 50 f3 ff ff 	mov    -0xcb0(%rbp),%rdx
  81653e:	c4 c1 7b 10 3c ff    	vmovsd (%r15,%rdi,8),%xmm7
  816544:	49 8b 3a             	mov    (%r10),%rdi
  816547:	c5 79 28 ff          	vmovapd %xmm7,%xmm15
  81654b:	48 8b 85 20 f3 ff ff 	mov    -0xce0(%rbp),%rax
  816552:	48 89 bd 60 f3 ff ff 	mov    %rdi,-0xca0(%rbp)
  816559:	48 8b 7a 68          	mov    0x68(%rdx),%rdi
  81655d:	48 89 bd 08 fc ff ff 	mov    %rdi,-0x3f8(%rbp)
  816564:	48 8b bd 40 f3 ff ff 	mov    -0xcc0(%rbp),%rdi
  81656b:	44 89 b5 e8 fb ff ff 	mov    %r14d,-0x418(%rbp)
  816572:	4c 8b 30             	mov    (%rax),%r14
  816575:	48 89 b5 20 ff ff ff 	mov    %rsi,-0xe0(%rbp)
  81657c:	4c 89 8d f8 fb ff ff 	mov    %r9,-0x408(%rbp)
  816583:	4c 89 b5 c0 f4 ff ff 	mov    %r14,-0xb40(%rbp)
  81658a:	49 8b 72 68          	mov    0x68(%r10),%rsi
  81658e:	4d 8b 4a 50          	mov    0x50(%r10),%r9
  816592:	4d 8b 72 38          	mov    0x38(%r10),%r14
  816596:	4c 8b 78 68          	mov    0x68(%rax),%r15
  81659a:	4c 8b 97 80 00 00 00 	mov    0x80(%rdi),%r10
  8165a1:	48 89 8d 78 f6 ff ff 	mov    %rcx,-0x988(%rbp)
  8165a8:	4c 89 bd 10 fd ff ff 	mov    %r15,-0x2f0(%rbp)
  8165af:	4c 89 95 50 f2 ff ff 	mov    %r10,-0xdb0(%rbp)
  8165b6:	4c 8b 78 50          	mov    0x50(%rax),%r15
  8165ba:	48 8b 48 38          	mov    0x38(%rax),%rcx
  8165be:	4c 8b 95 f0 f2 ff ff 	mov    -0xd10(%rbp),%r10
  8165c5:	48 8b 82 80 00 00 00 	mov    0x80(%rdx),%rax
  8165cc:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
  8165d3:	48 89 b5 78 fa ff ff 	mov    %rsi,-0x588(%rbp)
  8165da:	4c 89 8d d0 f4 ff ff 	mov    %r9,-0xb30(%rbp)
  8165e1:	48 8b 0a             	mov    (%rdx),%rcx
  8165e4:	48 89 85 00 f2 ff ff 	mov    %rax,-0xe00(%rbp)
  8165eb:	48 2b c8             	sub    %rax,%rcx
  8165ee:	48 8b 72 38          	mov    0x38(%rdx),%rsi
  8165f2:	4c 8b 0f             	mov    (%rdi),%r9
  8165f5:	48 8b 47 68          	mov    0x68(%rdi),%rax
  8165f9:	4c 89 b5 50 ff ff ff 	mov    %r14,-0xb0(%rbp)
  816600:	4c 8b 72 50          	mov    0x50(%rdx),%r14
  816604:	48 89 75 80          	mov    %rsi,-0x80(%rbp)
  816608:	4c 89 8d 40 f2 ff ff 	mov    %r9,-0xdc0(%rbp)
  81660f:	48 89 85 a0 f6 ff ff 	mov    %rax,-0x960(%rbp)
  816616:	48 8b 57 38          	mov    0x38(%rdi),%rdx
  81661a:	49 8b 32             	mov    (%r10),%rsi
  81661d:	49 8b 42 38          	mov    0x38(%r10),%rax
  816621:	4d 8b 4a 50          	mov    0x50(%r10),%r9
  816625:	4c 8b 95 00 f3 ff ff 	mov    -0xd00(%rbp),%r10
  81662c:	48 89 95 e8 fc ff ff 	mov    %rdx,-0x318(%rbp)
  816633:	48 8b 95 f8 f2 ff ff 	mov    -0xd08(%rbp),%rdx
  81663a:	48 89 8d 68 f2 ff ff 	mov    %rcx,-0xd98(%rbp)
  816641:	48 8b 4f 50          	mov    0x50(%rdi),%rcx
  816645:	48 89 85 78 fe ff ff 	mov    %rax,-0x188(%rbp)
  81664c:	49 8b 42 38          	mov    0x38(%r10),%rax
  816650:	48 89 8d 70 f4 ff ff 	mov    %rcx,-0xb90(%rbp)
  816657:	48 89 b5 00 f5 ff ff 	mov    %rsi,-0xb00(%rbp)
  81665e:	48 8b 0a             	mov    (%rdx),%rcx
  816661:	48 8b 72 38          	mov    0x38(%rdx),%rsi
  816665:	48 8b 7a 50          	mov    0x50(%rdx),%rdi
  816669:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  816670:	48 8b 95 08 f3 ff ff 	mov    -0xcf8(%rbp),%rdx
  816677:	48 8b 85 28 f3 ff ff 	mov    -0xcd8(%rbp),%rax
  81667e:	4c 89 8d e8 f6 ff ff 	mov    %r9,-0x918(%rbp)
  816685:	4d 8b 0a             	mov    (%r10),%r9
  816688:	48 89 bd e0 f6 ff ff 	mov    %rdi,-0x920(%rbp)
  81668f:	48 89 b5 80 fe ff ff 	mov    %rsi,-0x180(%rbp)
  816696:	4c 89 8d 28 f5 ff ff 	mov    %r9,-0xad8(%rbp)
  81669d:	48 8b 3a             	mov    (%rdx),%rdi
  8166a0:	4c 8b 4a 38          	mov    0x38(%rdx),%r9
  8166a4:	48 8b 72 50          	mov    0x50(%rdx),%rsi
  8166a8:	48 8b 50 38          	mov    0x38(%rax),%rdx
  8166ac:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  8166b0:	48 8b 95 30 f3 ff ff 	mov    -0xcd0(%rbp),%rdx
  8166b7:	48 89 8d 08 f5 ff ff 	mov    %rcx,-0xaf8(%rbp)
  8166be:	49 8b 4a 50          	mov    0x50(%r10),%rcx
  8166c2:	48 89 bd 20 f5 ff ff 	mov    %rdi,-0xae0(%rbp)
  8166c9:	4c 89 8d f8 f5 ff ff 	mov    %r9,-0xa08(%rbp)
  8166d0:	4c 8b 10             	mov    (%rax),%r10
  8166d3:	48 8b 78 68          	mov    0x68(%rax),%rdi
  8166d7:	4c 8b 48 50          	mov    0x50(%rax),%r9
  8166db:	48 8b 02             	mov    (%rdx),%rax
  8166de:	48 89 85 70 f3 ff ff 	mov    %rax,-0xc90(%rbp)
  8166e5:	48 8b 42 68          	mov    0x68(%rdx),%rax
  8166e9:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
  8166f0:	48 8b 42 50          	mov    0x50(%rdx),%rax
  8166f4:	48 8b 52 38          	mov    0x38(%rdx),%rdx
  8166f8:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  8166fc:	48 8b 95 10 f3 ff ff 	mov    -0xcf0(%rbp),%rdx
  816703:	4c 89 65 c8          	mov    %r12,-0x38(%rbp)
  816707:	45 33 e4             	xor    %r12d,%r12d
  81670a:	4c 89 a5 d8 f8 ff ff 	mov    %r12,-0x728(%rbp)
  816711:	4c 89 a5 d0 f8 ff ff 	mov    %r12,-0x730(%rbp)
  816718:	4c 8b 22             	mov    (%rdx),%r12
  81671b:	4c 89 a5 f0 f6 ff ff 	mov    %r12,-0x910(%rbp)
  816722:	4c 8b 62 38          	mov    0x38(%rdx),%r12
  816726:	4c 89 a5 70 fe ff ff 	mov    %r12,-0x190(%rbp)
  81672d:	4c 8b a5 18 f3 ff ff 	mov    -0xce8(%rbp),%r12
  816734:	48 89 85 f0 fb ff ff 	mov    %rax,-0x410(%rbp)
  81673b:	48 8b 42 50          	mov    0x50(%rdx),%rax
  81673f:	49 8b 14 24          	mov    (%r12),%rdx
  816743:	4c 89 95 20 f2 ff ff 	mov    %r10,-0xde0(%rbp)
  81674a:	4c 2b d7             	sub    %rdi,%r10
  81674d:	48 89 95 18 f7 ff ff 	mov    %rdx,-0x8e8(%rbp)
  816754:	49 8b 54 24 50       	mov    0x50(%r12),%rdx
  816759:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  81675e:	4c 89 ad 08 fd ff ff 	mov    %r13,-0x2f8(%rbp)
  816765:	4c 89 a5 68 fe ff ff 	mov    %r12,-0x198(%rbp)
  81676c:	4d 8d 65 ff          	lea    -0x1(%r13),%r12
  816770:	4c 8b ad 08 ff ff ff 	mov    -0xf8(%rbp),%r13
  816777:	44 89 9d e0 fb ff ff 	mov    %r11d,-0x420(%rbp)
  81677e:	45 8d 5b 01          	lea    0x1(%r11),%r11d
  816782:	41 f7 dd             	neg    %r13d
  816785:	44 89 9d f0 f8 ff ff 	mov    %r11d,-0x710(%rbp)
  81678c:	4c 8b 9d 00 ff ff ff 	mov    -0x100(%rbp),%r11
  816793:	4c 89 95 80 f3 ff ff 	mov    %r10,-0xc80(%rbp)
  81679a:	45 03 eb             	add    %r11d,%r13d
  81679d:	4c 89 a5 10 ff ff ff 	mov    %r12,-0xf0(%rbp)
  8167a4:	4d 8d 24 7a          	lea    (%r10,%rdi,2),%r12
  8167a8:	4c 8b 95 f8 f1 ff ff 	mov    -0xe08(%rbp),%r10
  8167af:	44 89 9d 78 f3 ff ff 	mov    %r11d,-0xc88(%rbp)
  8167b6:	4d 89 d3             	mov    %r10,%r11
  8167b9:	4d 0f af d9          	imul   %r9,%r11
  8167bd:	c5 fd 10 15 9b e9 0a 	vmovupd 0xae99b(%rip),%ymm2        # 8c5160 <var$630.126.450+0x4a0>
  8167c4:	00 
  8167c5:	c5 7b 10 25 33 08 0b 	vmovsd 0xb0833(%rip),%xmm12        # 8c7000 <__STRLITPACK_199.115+0x70>
  8167cc:	00 
  8167cd:	c5 f9 10 0d cb ff 0a 	vmovupd 0xaffcb(%rip),%xmm1        # 8c67a0 <__STRLITPACK_19.34+0x10>
  8167d4:	00 
  8167d5:	c5 fb 10 1d 3b 08 0b 	vmovsd 0xb083b(%rip),%xmm3        # 8c7018 <__STRLITPACK_199.115+0x88>
  8167dc:	00 
  8167dd:	c5 f9 10 2d 6b 03 0b 	vmovupd 0xb036b(%rip),%xmm5        # 8c6b50 <__STRLITPACK_124.84+0x50>
  8167e4:	00 
  8167e5:	4d 63 ed             	movslq %r13d,%r13
  8167e8:	c5 9b 5c 05 d8 d6 32 	vsubsd 0x32d6d8(%rip),%xmm12,%xmm0        # b43ec8 <mod_scalars_mp_lambda_>
  8167ef:	00 
  8167f0:	c5 fd 10 35 88 e5 0a 	vmovupd 0xae588(%rip),%ymm6        # 8c4d80 <var$630.126.450+0xc0>
  8167f7:	00 
  8167f8:	c5 43 59 0d 40 0b 0b 	vmulsd 0xb0b40(%rip),%xmm7,%xmm9        # 8c7340 <__STRLITPACK_199.115+0x3b0>
  8167ff:	00 
  816800:	c5 7b 59 c7          	vmulsd %xmm7,%xmm0,%xmm8
  816804:	4c 89 a5 88 f3 ff ff 	mov    %r12,-0xc78(%rbp)
  81680b:	49 ff c5             	inc    %r13
  81680e:	49 89 fc             	mov    %rdi,%r12
  816811:	c4 c1 79 28 c0       	vmovapd %xmm8,%xmm0
  816816:	4c 89 6d c0          	mov    %r13,-0x40(%rbp)
  81681a:	4c 8d 2c 3f          	lea    (%rdi,%rdi,1),%r13
  81681e:	4d 2b e3             	sub    %r11,%r12
  816821:	4c 89 a5 90 f3 ff ff 	mov    %r12,-0xc70(%rbp)
  816828:	4d 89 ec             	mov    %r13,%r12
  81682b:	4d 63 c0             	movslq %r8d,%r8
  81682e:	49 f7 dd             	neg    %r13
  816831:	48 89 bd 30 ff ff ff 	mov    %rdi,-0xd0(%rbp)
  816838:	4c 03 ef             	add    %rdi,%r13
  81683b:	4c 89 c7             	mov    %r8,%rdi
  81683e:	4d 2b e3             	sub    %r11,%r12
  816841:	48 0f af fe          	imul   %rsi,%rdi
  816845:	48 89 bd 38 f2 ff ff 	mov    %rdi,-0xdc8(%rbp)
  81684c:	4c 89 c7             	mov    %r8,%rdi
  81684f:	48 0f af f8          	imul   %rax,%rdi
  816853:	48 89 b5 f0 f4 ff ff 	mov    %rsi,-0xb10(%rbp)
  81685a:	4c 89 c6             	mov    %r8,%rsi
  81685d:	48 89 8d f8 f4 ff ff 	mov    %rcx,-0xb08(%rbp)
  816864:	48 0f af f1          	imul   %rcx,%rsi
  816868:	4c 89 c1             	mov    %r8,%rcx
  81686b:	49 0f af ce          	imul   %r14,%rcx
  81686f:	4c 89 b5 80 f5 ff ff 	mov    %r14,-0xa80(%rbp)
  816876:	4d 89 c6             	mov    %r8,%r14
  816879:	48 89 bd a0 f3 ff ff 	mov    %rdi,-0xc60(%rbp)
  816880:	4c 89 c7             	mov    %r8,%rdi
  816883:	4c 89 bd 58 f6 ff ff 	mov    %r15,-0x9a8(%rbp)
  81688a:	4d 0f af f7          	imul   %r15,%r14
  81688e:	49 0f af f9          	imul   %r9,%rdi
  816892:	4d 89 c7             	mov    %r8,%r15
  816895:	4c 2b df             	sub    %rdi,%r11
  816898:	4c 0f af fa          	imul   %rdx,%r15
  81689c:	48 89 8d 08 f2 ff ff 	mov    %rcx,-0xdf8(%rbp)
  8168a3:	4c 89 c1             	mov    %r8,%rcx
  8168a6:	48 0f af 8d e8 f6 ff 	imul   -0x918(%rbp),%rcx
  8168ad:	ff 
  8168ae:	4c 89 b5 90 f2 ff ff 	mov    %r14,-0xd70(%rbp)
  8168b5:	4d 89 c6             	mov    %r8,%r14
  8168b8:	4c 89 bd 98 f3 ff ff 	mov    %r15,-0xc68(%rbp)
  8168bf:	4d 03 eb             	add    %r11,%r13
  8168c2:	4c 8b bd f0 f1 ff ff 	mov    -0xe10(%rbp),%r15
  8168c9:	4c 0f af b5 e0 f6 ff 	imul   -0x920(%rbp),%r14
  8168d0:	ff 
  8168d1:	4c 89 ad f0 f5 ff ff 	mov    %r13,-0xa10(%rbp)
  8168d8:	4d 89 fd             	mov    %r15,%r13
  8168db:	4c 89 8d b8 f8 ff ff 	mov    %r9,-0x748(%rbp)
  8168e2:	4c 8b 4d d0          	mov    -0x30(%rbp),%r9
  8168e6:	4d 0f af e9          	imul   %r9,%r13
  8168ea:	48 89 85 d8 f6 ff ff 	mov    %rax,-0x928(%rbp)
  8168f1:	4c 89 c0             	mov    %r8,%rax
  8168f4:	48 89 8d 70 f2 ff ff 	mov    %rcx,-0xd90(%rbp)
  8168fb:	4c 89 c1             	mov    %r8,%rcx
  8168fe:	4d 2b c2             	sub    %r10,%r8
  816901:	4c 89 85 c0 f2 ff ff 	mov    %r8,-0xd40(%rbp)
  816908:	4c 8b 85 80 f3 ff ff 	mov    -0xc80(%rbp),%r8
  81690f:	4c 89 a5 e8 f5 ff ff 	mov    %r12,-0xa18(%rbp)
  816916:	4c 89 b5 78 f2 ff ff 	mov    %r14,-0xd88(%rbp)
  81691d:	48 89 bd b0 f5 ff ff 	mov    %rdi,-0xa50(%rbp)
  816924:	4f 8d 34 20          	lea    (%r8,%r12,1),%r14
  816928:	4c 8b a5 90 f3 ff ff 	mov    -0xc70(%rbp),%r12
  81692f:	49 2b fd             	sub    %r13,%rdi
  816932:	4c 03 f7             	add    %rdi,%r14
  816935:	4c 89 ad c0 f5 ff ff 	mov    %r13,-0xa40(%rbp)
  81693c:	48 89 95 d0 f6 ff ff 	mov    %rdx,-0x930(%rbp)
  816943:	4d 03 e0             	add    %r8,%r12
  816946:	4c 03 e7             	add    %rdi,%r12
  816949:	48 8b bd 08 ff ff ff 	mov    -0xf8(%rbp),%rdi
  816950:	49 89 f8             	mov    %rdi,%r8
  816953:	4d 0f af c1          	imul   %r9,%r8
  816957:	4d 2b e8             	sub    %r8,%r13
  81695a:	49 f7 d9             	neg    %r9
  81695d:	4d 03 eb             	add    %r11,%r13
  816960:	4c 89 a5 a8 f5 ff ff 	mov    %r12,-0xa58(%rbp)
  816967:	4d 03 e0             	add    %r8,%r12
  81696a:	4d 03 c6             	add    %r14,%r8
  81696d:	4c 89 85 90 f8 ff ff 	mov    %r8,-0x770(%rbp)
  816974:	4c 8b 85 20 f2 ff ff 	mov    -0xde0(%rbp),%r8
  81697b:	4d 2b c5             	sub    %r13,%r8
  81697e:	49 f7 dd             	neg    %r13
  816981:	4c 03 ad 88 f3 ff ff 	add    -0xc78(%rbp),%r13
  816988:	4d 03 c1             	add    %r9,%r8
  81698b:	4d 03 e9             	add    %r9,%r13
  81698e:	4d 89 d1             	mov    %r10,%r9
  816991:	48 8b 95 f8 fb ff ff 	mov    -0x408(%rbp),%rdx
  816998:	48 0f af c2          	imul   %rdx,%rax
  81699c:	4c 0f af ca          	imul   %rdx,%r9
  8169a0:	4c 89 a5 48 f8 ff ff 	mov    %r12,-0x7b8(%rbp)
  8169a7:	4c 8b a5 20 ff ff ff 	mov    -0xe0(%rbp),%r12
  8169ae:	4c 89 85 78 f8 ff ff 	mov    %r8,-0x788(%rbp)
  8169b5:	48 89 85 10 f2 ff ff 	mov    %rax,-0xdf0(%rbp)
  8169bc:	4c 89 8d 58 f2 ff ff 	mov    %r9,-0xda8(%rbp)
  8169c3:	4f 8d 04 24          	lea    (%r12,%r12,1),%r8
  8169c7:	49 f7 d8             	neg    %r8
  8169ca:	4c 2b c8             	sub    %rax,%r9
  8169cd:	4d 03 c4             	add    %r12,%r8
  8169d0:	4c 89 f8             	mov    %r15,%rax
  8169d3:	49 89 fc             	mov    %rdi,%r12
  8169d6:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  8169da:	48 0f af c2          	imul   %rdx,%rax
  8169de:	4c 0f af e2          	imul   %rdx,%r12
  8169e2:	4c 89 b5 88 f5 ff ff 	mov    %r14,-0xa78(%rbp)
  8169e9:	4c 8b b5 78 f6 ff ff 	mov    -0x988(%rbp),%r14
  8169f0:	48 89 85 48 f2 ff ff 	mov    %rax,-0xdb8(%rbp)
  8169f7:	49 2b c4             	sub    %r12,%rax
  8169fa:	4c 89 a5 28 f2 ff ff 	mov    %r12,-0xdd8(%rbp)
  816a01:	4d 89 f4             	mov    %r14,%r12
  816a04:	4c 89 9d c8 f2 ff ff 	mov    %r11,-0xd38(%rbp)
  816a0b:	49 03 c1             	add    %r9,%rax
  816a0e:	4c 8b 9d a8 f4 ff ff 	mov    -0xb58(%rbp),%r11
  816a15:	4d 0f af e3          	imul   %r11,%r12
  816a19:	4c 0f af b5 90 f4 ff 	imul   -0xb70(%rbp),%r14
  816a20:	ff 
  816a21:	4c 0f af 9d 00 f2 ff 	imul   -0xe00(%rbp),%r11
  816a28:	ff 
  816a29:	48 8b 95 88 f2 ff ff 	mov    -0xd78(%rbp),%rdx
  816a30:	4c 89 ad a8 f8 ff ff 	mov    %r13,-0x758(%rbp)
  816a37:	49 89 d5             	mov    %rdx,%r13
  816a3a:	4d 2b e8             	sub    %r8,%r13
  816a3d:	4d 03 c1             	add    %r9,%r8
  816a40:	4c 2b e8             	sub    %rax,%r13
  816a43:	48 f7 d8             	neg    %rax
  816a46:	48 03 c2             	add    %rdx,%rax
  816a49:	4d 03 ec             	add    %r12,%r13
  816a4c:	4c 89 8d a8 f3 ff ff 	mov    %r9,-0xc58(%rbp)
  816a53:	4c 89 a5 88 f6 ff ff 	mov    %r12,-0x978(%rbp)
  816a5a:	48 89 b5 30 f2 ff ff 	mov    %rsi,-0xdd0(%rbp)
  816a61:	48 8b b5 f0 fb ff ff 	mov    -0x410(%rbp),%rsi
  816a68:	4e 8d 0c 20          	lea    (%rax,%r12,1),%r9
  816a6c:	4d 89 d4             	mov    %r10,%r12
  816a6f:	49 03 c6             	add    %r14,%rax
  816a72:	4c 0f af e6          	imul   %rsi,%r12
  816a76:	48 0f af ce          	imul   %rsi,%rcx
  816a7a:	48 89 85 80 f6 ff ff 	mov    %rax,-0x980(%rbp)
  816a81:	4c 89 f8             	mov    %r15,%rax
  816a84:	4c 89 b5 78 f6 ff ff 	mov    %r14,-0x988(%rbp)
  816a8b:	4c 89 e6             	mov    %r12,%rsi
  816a8e:	4c 89 85 b0 f8 ff ff 	mov    %r8,-0x750(%rbp)
  816a95:	48 2b f1             	sub    %rcx,%rsi
  816a98:	4c 8b b5 70 f3 ff ff 	mov    -0xc90(%rbp),%r14
  816a9f:	4c 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%r8
  816aa6:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  816aaa:	48 0f af c2          	imul   %rdx,%rax
  816aae:	4c 89 9d a8 f4 ff ff 	mov    %r11,-0xb58(%rbp)
  816ab5:	4d 03 f0             	add    %r8,%r14
  816ab8:	4d 2b c4             	sub    %r12,%r8
  816abb:	49 f7 dc             	neg    %r12
  816abe:	4c 89 b5 c8 f5 ff ff 	mov    %r14,-0xa38(%rbp)
  816ac5:	4d 89 f3             	mov    %r14,%r11
  816ac8:	4d 03 e6             	add    %r14,%r12
  816acb:	49 89 fe             	mov    %rdi,%r14
  816ace:	4c 0f af f2          	imul   %rdx,%r14
  816ad2:	48 89 8d b8 f5 ff ff 	mov    %rcx,-0xa48(%rbp)
  816ad9:	48 2b c8             	sub    %rax,%rcx
  816adc:	4c 03 e1             	add    %rcx,%r12
  816adf:	4c 2b de             	sub    %rsi,%r11
  816ae2:	4c 89 a5 d8 f5 ff ff 	mov    %r12,-0xa28(%rbp)
  816ae9:	48 f7 da             	neg    %rdx
  816aec:	4c 89 8d 40 f8 ff ff 	mov    %r9,-0x7c0(%rbp)
  816af3:	4c 89 9d b8 f3 ff ff 	mov    %r11,-0xc48(%rbp)
  816afa:	48 89 85 c8 f3 ff ff 	mov    %rax,-0xc38(%rbp)
  816b01:	4d 03 e6             	add    %r14,%r12
  816b04:	49 f7 de             	neg    %r14
  816b07:	4c 89 a5 38 f8 ff ff 	mov    %r12,-0x7c8(%rbp)
  816b0e:	4c 03 f0             	add    %rax,%r14
  816b11:	4c 8b a5 58 f3 ff ff 	mov    -0xca8(%rbp),%r12
  816b18:	49 f7 de             	neg    %r14
  816b1b:	4d 03 f3             	add    %r11,%r14
  816b1e:	4c 8d 1c fd 00 00 00 	lea    0x0(,%rdi,8),%r11
  816b25:	00 
  816b26:	4c 03 f2             	add    %rdx,%r14
  816b29:	4c 89 d8             	mov    %r11,%rax
  816b2c:	48 8b 95 08 fd ff ff 	mov    -0x2f8(%rbp),%rdx
  816b33:	4e 8d 0c e5 08 00 00 	lea    0x8(,%r12,8),%r9
  816b3a:	00 
  816b3b:	49 0f af d1          	imul   %r9,%rdx
  816b3f:	4c 89 b5 a0 f8 ff ff 	mov    %r14,-0x760(%rbp)
  816b46:	4c 8b b5 90 f1 ff ff 	mov    -0xe70(%rbp),%r14
  816b4d:	48 2b 85 80 f7 ff ff 	sub    -0x880(%rbp),%rax
  816b54:	48 8b 8d 10 f4 ff ff 	mov    -0xbf0(%rbp),%rcx
  816b5b:	4c 89 85 c0 f3 ff ff 	mov    %r8,-0xc40(%rbp)
  816b62:	4d 8d 04 16          	lea    (%r14,%rdx,1),%r8
  816b66:	4c 89 ad 80 f8 ff ff 	mov    %r13,-0x780(%rbp)
  816b6d:	4e 8d 2c 00          	lea    (%rax,%r8,1),%r13
  816b71:	48 89 b5 b0 f3 ff ff 	mov    %rsi,-0xc50(%rbp)
  816b78:	48 8d 34 08          	lea    (%rax,%rcx,1),%rsi
  816b7c:	4c 89 ad 58 fe ff ff 	mov    %r13,-0x1a8(%rbp)
  816b83:	4a 8d 0c 30          	lea    (%rax,%r14,1),%rcx
  816b87:	4c 89 85 10 f5 ff ff 	mov    %r8,-0xaf0(%rbp)
  816b8e:	4a 8d 04 e0          	lea    (%rax,%r12,8),%rax
  816b92:	49 03 c6             	add    %r14,%rax
  816b95:	4d 89 f8             	mov    %r15,%r8
  816b98:	48 89 85 28 fc ff ff 	mov    %rax,-0x3d8(%rbp)
  816b9f:	4c 89 d0             	mov    %r10,%rax
  816ba2:	48 0f af 85 d8 f6 ff 	imul   -0x928(%rbp),%rax
  816ba9:	ff 
  816baa:	4c 8b ad 70 fe ff ff 	mov    -0x190(%rbp),%r13
  816bb1:	49 89 fe             	mov    %rdi,%r14
  816bb4:	4d 0f af c5          	imul   %r13,%r8
  816bb8:	4d 0f af f5          	imul   %r13,%r14
  816bbc:	48 89 b5 48 ff ff ff 	mov    %rsi,-0xb8(%rbp)
  816bc3:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
  816bc7:	48 89 95 18 f5 ff ff 	mov    %rdx,-0xae8(%rbp)
  816bce:	4c 89 d2             	mov    %r10,%rdx
  816bd1:	48 0f af 95 e8 f6 ff 	imul   -0x918(%rbp),%rdx
  816bd8:	ff 
  816bd9:	48 89 8d 60 fe ff ff 	mov    %rcx,-0x1a0(%rbp)
  816be0:	48 8b 8d f0 f6 ff ff 	mov    -0x910(%rbp),%rcx
  816be7:	48 2b c8             	sub    %rax,%rcx
  816bea:	4c 89 8d 18 ff ff ff 	mov    %r9,-0xe8(%rbp)
  816bf1:	4c 8b 8d a0 f3 ff ff 	mov    -0xc60(%rbp),%r9
  816bf8:	49 2b c1             	sub    %r9,%rax
  816bfb:	48 89 b5 50 fe ff ff 	mov    %rsi,-0x1b0(%rbp)
  816c02:	48 8b b5 00 f5 ff ff 	mov    -0xb00(%rbp),%rsi
  816c09:	4e 8d 24 09          	lea    (%rcx,%r9,1),%r12
  816c0d:	4d 2b c8             	sub    %r8,%r9
  816c10:	4d 2b c6             	sub    %r14,%r8
  816c13:	4d 2b e0             	sub    %r8,%r12
  816c16:	49 03 c9             	add    %r9,%rcx
  816c19:	4c 89 a5 c8 f6 ff ff 	mov    %r12,-0x938(%rbp)
  816c20:	4f 8d 24 6e          	lea    (%r14,%r13,2),%r12
  816c24:	49 03 cc             	add    %r12,%rcx
  816c27:	48 2b f2             	sub    %rdx,%rsi
  816c2a:	48 89 8d 60 f7 ff ff 	mov    %rcx,-0x8a0(%rbp)
  816c31:	4d 89 fc             	mov    %r15,%r12
  816c34:	48 8b 8d 70 f2 ff ff 	mov    -0xd90(%rbp),%rcx
  816c3b:	48 2b d1             	sub    %rcx,%rdx
  816c3e:	48 89 95 d0 f3 ff ff 	mov    %rdx,-0xc30(%rbp)
  816c45:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
  816c4c:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
  816c50:	4c 0f af e2          	imul   %rdx,%r12
  816c54:	49 2b cc             	sub    %r12,%rcx
  816c57:	48 89 b5 38 f5 ff ff 	mov    %rsi,-0xac8(%rbp)
  816c5e:	48 03 ce             	add    %rsi,%rcx
  816c61:	48 89 fe             	mov    %rdi,%rsi
  816c64:	48 0f af f2          	imul   %rdx,%rsi
  816c68:	4c 89 a5 a0 f2 ff ff 	mov    %r12,-0xd60(%rbp)
  816c6f:	4c 2b e6             	sub    %rsi,%r12
  816c72:	49 f7 dc             	neg    %r12
  816c75:	4c 8d 0c 32          	lea    (%rdx,%rsi,1),%r9
  816c79:	4c 89 b5 48 f5 ff ff 	mov    %r14,-0xab8(%rbp)
  816c80:	4d 03 e6             	add    %r14,%r12
  816c83:	49 89 d6             	mov    %rdx,%r14
  816c86:	48 8d 14 56          	lea    (%rsi,%rdx,2),%rdx
  816c8a:	49 f7 de             	neg    %r14
  816c8d:	4c 03 c9             	add    %rcx,%r9
  816c90:	4c 03 f6             	add    %rsi,%r14
  816c93:	48 03 d1             	add    %rcx,%rdx
  816c96:	48 89 8d 58 f5 ff ff 	mov    %rcx,-0xaa8(%rbp)
  816c9d:	4c 03 f1             	add    %rcx,%r14
  816ca0:	4c 89 d1             	mov    %r10,%rcx
  816ca3:	48 0f af 8d e0 f6 ff 	imul   -0x920(%rbp),%rcx
  816caa:	ff 
  816cab:	4c 89 a5 58 f7 ff ff 	mov    %r12,-0x8a8(%rbp)
  816cb2:	4c 89 8d 38 f7 ff ff 	mov    %r9,-0x8c8(%rbp)
  816cb9:	49 89 f9             	mov    %rdi,%r9
  816cbc:	4c 89 b5 50 f7 ff ff 	mov    %r14,-0x8b0(%rbp)
  816cc3:	4d 89 fe             	mov    %r15,%r14
  816cc6:	4c 8b a5 80 fe ff ff 	mov    -0x180(%rbp),%r12
  816ccd:	4d 0f af f4          	imul   %r12,%r14
  816cd1:	4d 0f af cc          	imul   %r12,%r9
  816cd5:	4c 8b 85 08 f5 ff ff 	mov    -0xaf8(%rbp),%r8
  816cdc:	4f 8d 2c 0c          	lea    (%r12,%r9,1),%r13
  816ce0:	4c 2b c1             	sub    %rcx,%r8
  816ce3:	48 89 95 28 f7 ff ff 	mov    %rdx,-0x8d8(%rbp)
  816cea:	48 8b 95 78 f2 ff ff 	mov    -0xd88(%rbp),%rdx
  816cf1:	4c 89 b5 a8 f2 ff ff 	mov    %r14,-0xd58(%rbp)
  816cf8:	48 2b ca             	sub    %rdx,%rcx
  816cfb:	48 89 8d d8 f3 ff ff 	mov    %rcx,-0xc28(%rbp)
  816d02:	4c 89 e1             	mov    %r12,%rcx
  816d05:	48 f7 d9             	neg    %rcx
  816d08:	49 8d 34 10          	lea    (%r8,%rdx,1),%rsi
  816d0c:	49 2b d6             	sub    %r14,%rdx
  816d0f:	4d 2b f1             	sub    %r9,%r14
  816d12:	49 f7 de             	neg    %r14
  816d15:	49 03 d0             	add    %r8,%rdx
  816d18:	48 89 b5 40 f5 ff ff 	mov    %rsi,-0xac0(%rbp)
  816d1f:	4c 03 f6             	add    %rsi,%r14
  816d22:	4c 89 d6             	mov    %r10,%rsi
  816d25:	4f 8d 24 61          	lea    (%r9,%r12,2),%r12
  816d29:	48 0f af b5 d0 f6 ff 	imul   -0x930(%rbp),%rsi
  816d30:	ff 
  816d31:	4c 0f af 95 58 f6 ff 	imul   -0x9a8(%rbp),%r10
  816d38:	ff 
  816d39:	4c 03 ea             	add    %rdx,%r13
  816d3c:	4c 03 e2             	add    %rdx,%r12
  816d3f:	4c 89 ad 30 f7 ff ff 	mov    %r13,-0x8d0(%rbp)
  816d46:	49 03 c9             	add    %r9,%rcx
  816d49:	4c 89 a5 20 f7 ff ff 	mov    %r12,-0x8e0(%rbp)
  816d50:	4d 89 fc             	mov    %r15,%r12
  816d53:	4c 8b ad 68 fe ff ff 	mov    -0x198(%rbp),%r13
  816d5a:	49 89 f9             	mov    %rdi,%r9
  816d5d:	4d 0f af e5          	imul   %r13,%r12
  816d61:	4d 0f af cd          	imul   %r13,%r9
  816d65:	48 89 95 50 f5 ff ff 	mov    %rdx,-0xab0(%rbp)
  816d6c:	48 03 ca             	add    %rdx,%rcx
  816d6f:	48 8b 95 18 f7 ff ff 	mov    -0x8e8(%rbp),%rdx
  816d76:	48 89 8d 40 f7 ff ff 	mov    %rcx,-0x8c0(%rbp)
  816d7d:	48 89 d1             	mov    %rdx,%rcx
  816d80:	48 2b ce             	sub    %rsi,%rcx
  816d83:	4c 89 85 30 f5 ff ff 	mov    %r8,-0xad0(%rbp)
  816d8a:	4c 8b 85 98 f3 ff ff 	mov    -0xc68(%rbp),%r8
  816d91:	4c 89 b5 48 f7 ff ff 	mov    %r14,-0x8b8(%rbp)
  816d98:	49 2b f0             	sub    %r8,%rsi
  816d9b:	c5 7b 12 d8          	vmovddup %xmm0,%xmm11
  816d9f:	c5 f9 10 25 f9 fe 0a 	vmovupd 0xafef9(%rip),%xmm4        # 8c6ca0 <__STRLITPACK_54.50+0x80>
  816da6:	00 
  816da7:	4e 8d 34 01          	lea    (%rcx,%r8,1),%r14
  816dab:	4d 2b c4             	sub    %r12,%r8
  816dae:	4d 2b e1             	sub    %r9,%r12
  816db1:	49 03 c8             	add    %r8,%rcx
  816db4:	4d 2b f4             	sub    %r12,%r14
  816db7:	4c 89 b5 c0 f6 ff ff 	mov    %r14,-0x940(%rbp)
  816dbe:	4f 8d 24 69          	lea    (%r9,%r13,2),%r12
  816dc2:	49 03 cc             	add    %r12,%rcx
  816dc5:	4d 89 d5             	mov    %r10,%r13
  816dc8:	48 89 8d 68 f7 ff ff 	mov    %rcx,-0x898(%rbp)
  816dcf:	49 f7 da             	neg    %r10
  816dd2:	48 8b 8d c0 f4 ff ff 	mov    -0xb40(%rbp),%rcx
  816dd9:	49 89 c8             	mov    %rcx,%r8
  816ddc:	4c 8b 8d 10 fd ff ff 	mov    -0x2f0(%rbp),%r9
  816de3:	4d 2b c1             	sub    %r9,%r8
  816de6:	4d 03 d1             	add    %r9,%r10
  816de9:	4d 89 fc             	mov    %r15,%r12
  816dec:	4c 89 95 a0 f4 ff ff 	mov    %r10,-0xb60(%rbp)
  816df3:	4c 89 85 e0 f3 ff ff 	mov    %r8,-0xc20(%rbp)
  816dfa:	4c 8b b5 90 f2 ff ff 	mov    -0xd70(%rbp),%r14
  816e01:	4d 2b ee             	sub    %r14,%r13
  816e04:	4c 89 ad b8 f2 ff ff 	mov    %r13,-0xd48(%rbp)
  816e0b:	4f 8d 0c 10          	lea    (%r8,%r10,1),%r9
  816e0f:	4c 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%r10
  816e16:	49 89 f8             	mov    %rdi,%r8
  816e19:	4d 0f af e2          	imul   %r10,%r12
  816e1d:	4d 0f af c2          	imul   %r10,%r8
  816e21:	4c 89 a5 b0 f2 ff ff 	mov    %r12,-0xd50(%rbp)
  816e28:	4d 2b f4             	sub    %r12,%r14
  816e2b:	4d 2b e0             	sub    %r8,%r12
  816e2e:	4d 03 f1             	add    %r9,%r14
  816e31:	4d 03 e5             	add    %r13,%r12
  816e34:	4d 03 c6             	add    %r14,%r8
  816e37:	49 f7 dc             	neg    %r12
  816e3a:	4c 03 e1             	add    %rcx,%r12
  816e3d:	4c 89 b5 b8 f4 ff ff 	mov    %r14,-0xb48(%rbp)
  816e44:	4c 89 a5 80 f2 ff ff 	mov    %r12,-0xd80(%rbp)
  816e4b:	4c 89 85 70 f6 ff ff 	mov    %r8,-0x990(%rbp)
  816e52:	4c 8b 85 c0 f2 ff ff 	mov    -0xd40(%rbp),%r8
  816e59:	4f 8d 34 14          	lea    (%r12,%r10,1),%r14
  816e5d:	49 f7 da             	neg    %r10
  816e60:	4d 03 d4             	add    %r12,%r10
  816e63:	4d 89 fc             	mov    %r15,%r12
  816e66:	49 f7 dc             	neg    %r12
  816e69:	4c 0f af 85 d0 f4 ff 	imul   -0xb30(%rbp),%r8
  816e70:	ff 
  816e71:	4c 89 95 68 f6 ff ff 	mov    %r10,-0x998(%rbp)
  816e78:	4e 8d 14 27          	lea    (%rdi,%r12,1),%r10
  816e7c:	4c 0f af 95 50 ff ff 	imul   -0xb0(%rbp),%r10
  816e83:	ff 
  816e84:	48 8b bd 60 f3 ff ff 	mov    -0xca0(%rbp),%rdi
  816e8b:	4d 89 c5             	mov    %r8,%r13
  816e8e:	4c 89 a5 80 f4 ff ff 	mov    %r12,-0xb80(%rbp)
  816e95:	49 89 fc             	mov    %rdi,%r12
  816e98:	4c 89 8d 60 f2 ff ff 	mov    %r9,-0xda0(%rbp)
  816e9f:	49 f7 dd             	neg    %r13
  816ea2:	4c 8b 8d 68 f3 ff ff 	mov    -0xc98(%rbp),%r9
  816ea9:	4d 2b e1             	sub    %r9,%r12
  816eac:	48 8b 8d 78 fa ff ff 	mov    -0x588(%rbp),%rcx
  816eb3:	4c 03 e1             	add    %rcx,%r12
  816eb6:	4d 2b e5             	sub    %r13,%r12
  816eb9:	4c 89 b5 50 f6 ff ff 	mov    %r14,-0x9b0(%rbp)
  816ec0:	4d 89 ce             	mov    %r9,%r14
  816ec3:	4d 03 d4             	add    %r12,%r10
  816ec6:	4c 8b a5 78 f4 ff ff 	mov    -0xb88(%rbp),%r12
  816ecd:	4d 0f af f4          	imul   %r12,%r14
  816ed1:	c5 79 10 2d d7 fd 0a 	vmovupd 0xafdd7(%rip),%xmm13        # 8c6cb0 <__STRLITPACK_54.50+0x90>
  816ed8:	00 
  816ed9:	4f 8d 2c 32          	lea    (%r10,%r14,1),%r13
  816edd:	4c 89 ad c8 f4 ff ff 	mov    %r13,-0xb38(%rbp)
  816ee4:	4d 89 e5             	mov    %r12,%r13
  816ee7:	49 f7 dd             	neg    %r13
  816eea:	49 83 c5 03          	add    $0x3,%r13
  816eee:	4d 89 ec             	mov    %r13,%r12
  816ef1:	4d 0f af e1          	imul   %r9,%r12
  816ef5:	4c 0f af ad 50 f2 ff 	imul   -0xdb0(%rbp),%r13
  816efc:	ff 
  816efd:	4d 03 d4             	add    %r12,%r10
  816f00:	4c 2b c9             	sub    %rcx,%r9
  816f03:	4c 89 95 e8 f4 ff ff 	mov    %r10,-0xb18(%rbp)
  816f0a:	4e 8d 14 fd 00 00 00 	lea    0x0(,%r15,8),%r10
  816f11:	00 
  816f12:	4d 2b da             	sub    %r10,%r11
  816f15:	4d 2b c8             	sub    %r8,%r9
  816f18:	49 03 fb             	add    %r11,%rdi
  816f1b:	49 03 d3             	add    %r11,%rdx
  816f1e:	4c 89 ad 88 f4 ff ff 	mov    %r13,-0xb78(%rbp)
  816f25:	49 2b f9             	sub    %r9,%rdi
  816f28:	4c 8b ad 20 f2 ff ff 	mov    -0xde0(%rbp),%r13
  816f2f:	4c 03 e7             	add    %rdi,%r12
  816f32:	4c 8b 85 80 f3 ff ff 	mov    -0xc80(%rbp),%r8
  816f39:	48 2b d6             	sub    %rsi,%rdx
  816f3c:	48 8b b5 70 f3 ff ff 	mov    -0xc90(%rbp),%rsi
  816f43:	4c 03 f7             	add    %rdi,%r14
  816f46:	4c 89 a5 e0 f4 ff ff 	mov    %r12,-0xb20(%rbp)
  816f4d:	4c 8b a5 e8 f5 ff ff 	mov    -0xa18(%rbp),%r12
  816f54:	4d 03 c3             	add    %r11,%r8
  816f57:	48 8b 8d c8 f5 ff ff 	mov    -0xa38(%rbp),%rcx
  816f5e:	4d 8d 0c 33          	lea    (%r11,%rsi,1),%r9
  816f62:	4c 89 b5 d8 f4 ff ff 	mov    %r14,-0xb28(%rbp)
  816f69:	4f 8d 34 2b          	lea    (%r11,%r13,1),%r14
  816f6d:	48 89 95 18 f7 ff ff 	mov    %rdx,-0x8e8(%rbp)
  816f74:	4c 89 b5 50 f8 ff ff 	mov    %r14,-0x7b0(%rbp)
  816f7b:	49 8d 3c 0b          	lea    (%r11,%rcx,1),%rdi
  816f7f:	48 8b 95 f0 f6 ff ff 	mov    -0x910(%rbp),%rdx
  816f86:	4c 2b b5 f0 f5 ff ff 	sub    -0xa10(%rbp),%r14
  816f8d:	49 03 d3             	add    %r11,%rdx
  816f90:	4c 89 b5 60 f8 ff ff 	mov    %r14,-0x7a0(%rbp)
  816f97:	4f 8d 34 04          	lea    (%r12,%r8,1),%r14
  816f9b:	4c 8b a5 30 f5 ff ff 	mov    -0xad0(%rbp),%r12
  816fa2:	48 2b d0             	sub    %rax,%rdx
  816fa5:	48 89 95 f0 f6 ff ff 	mov    %rdx,-0x910(%rbp)
  816fac:	48 8b 95 c0 f3 ff ff 	mov    -0xc40(%rbp),%rdx
  816fb3:	4c 03 ca             	add    %rdx,%r9
  816fb6:	48 8b 85 b0 f3 ff ff 	mov    -0xc50(%rbp),%rax
  816fbd:	48 2b f8             	sub    %rax,%rdi
  816fc0:	48 89 bd 68 f8 ff ff 	mov    %rdi,-0x798(%rbp)
  816fc7:	48 8b bd b8 f5 ff ff 	mov    -0xa48(%rbp),%rdi
  816fce:	4c 03 cf             	add    %rdi,%r9
  816fd1:	4c 03 85 90 f3 ff ff 	add    -0xc70(%rbp),%r8
  816fd8:	4c 89 8d 70 f8 ff ff 	mov    %r9,-0x790(%rbp)
  816fdf:	4c 8b 8d b0 f5 ff ff 	mov    -0xa50(%rbp),%r9
  816fe6:	4d 03 f1             	add    %r9,%r14
  816fe9:	4c 89 b5 58 f8 ff ff 	mov    %r14,-0x7a8(%rbp)
  816ff0:	4f 8d 34 1c          	lea    (%r12,%r11,1),%r14
  816ff4:	4d 03 c1             	add    %r9,%r8
  816ff7:	4c 8b 8d 08 f5 ff ff 	mov    -0xaf8(%rbp),%r9
  816ffe:	4c 03 b5 78 f2 ff ff 	add    -0xd88(%rbp),%r14
  817005:	4c 89 85 88 f8 ff ff 	mov    %r8,-0x778(%rbp)
  81700c:	4c 89 b5 10 f7 ff ff 	mov    %r14,-0x8f0(%rbp)
  817013:	4f 8d 24 0b          	lea    (%r11,%r9,1),%r12
  817017:	4c 8b 85 38 f5 ff ff 	mov    -0xac8(%rbp),%r8
  81701e:	4c 8b b5 00 f5 ff ff 	mov    -0xb00(%rbp),%r14
  817025:	4c 2b a5 d8 f3 ff ff 	sub    -0xc28(%rbp),%r12
  81702c:	4c 89 a5 08 f7 ff ff 	mov    %r12,-0x8f8(%rbp)
  817033:	4f 8d 24 18          	lea    (%r8,%r11,1),%r12
  817037:	4c 8b 85 e0 f3 ff ff 	mov    -0xc20(%rbp),%r8
  81703e:	4f 8d 0c 33          	lea    (%r11,%r14,1),%r9
  817042:	4c 8b b5 88 f2 ff ff 	mov    -0xd78(%rbp),%r14
  817049:	4c 03 a5 70 f2 ff ff 	add    -0xd90(%rbp),%r12
  817050:	4c 2b 8d d0 f3 ff ff 	sub    -0xc30(%rbp),%r9
  817057:	4c 89 a5 00 f7 ff ff 	mov    %r12,-0x900(%rbp)
  81705e:	4f 8d 24 18          	lea    (%r8,%r11,1),%r12
  817062:	4c 89 8d f8 f6 ff ff 	mov    %r9,-0x908(%rbp)
  817069:	4d 03 f3             	add    %r11,%r14
  81706c:	4c 03 9d c0 f4 ff ff 	add    -0xb40(%rbp),%r11
  817073:	4c 8d 85 b0 f8 ff ff 	lea    -0x750(%rbp),%r8
  81707a:	4d 8b 08             	mov    (%r8),%r9
  81707d:	4c 2b 9d b8 f2 ff ff 	sub    -0xd48(%rbp),%r11
  817084:	49 f7 d9             	neg    %r9
  817087:	4c 89 9d 90 f6 ff ff 	mov    %r11,-0x970(%rbp)
  81708e:	4d 03 ce             	add    %r14,%r9
  817091:	4c 03 a5 a0 f4 ff ff 	add    -0xb60(%rbp),%r12
  817098:	4c 2b b5 a8 f3 ff ff 	sub    -0xc58(%rbp),%r14
  81709f:	4c 8b 9d 78 f6 ff ff 	mov    -0x988(%rbp),%r11
  8170a6:	4c 03 a5 90 f2 ff ff 	add    -0xd70(%rbp),%r12
  8170ad:	4c 89 a5 60 f6 ff ff 	mov    %r12,-0x9a0(%rbp)
  8170b4:	4c 8b a5 88 f6 ff ff 	mov    -0x978(%rbp),%r12
  8170bb:	4d 03 cc             	add    %r12,%r9
  8170be:	4d 89 08             	mov    %r9,(%r8)
  8170c1:	4f 8d 0c 1e          	lea    (%r14,%r11,1),%r9
  8170c5:	4c 89 8d 48 f6 ff ff 	mov    %r9,-0x9b8(%rbp)
  8170cc:	4d 03 f4             	add    %r12,%r14
  8170cf:	4c 8b 8d 00 fc ff ff 	mov    -0x400(%rbp),%r9
  8170d6:	4d 89 cb             	mov    %r9,%r11
  8170d9:	4c 0f af 5d d0       	imul   -0x30(%rbp),%r11
  8170de:	4c 89 b5 98 f8 ff ff 	mov    %r14,-0x768(%rbp)
  8170e5:	4c 8b b5 b8 f8 ff ff 	mov    -0x748(%rbp),%r14
  8170ec:	4c 8b 85 c0 f5 ff ff 	mov    -0xa40(%rbp),%r8
  8170f3:	49 f7 de             	neg    %r14
  8170f6:	49 f7 d8             	neg    %r8
  8170f9:	4d 03 c6             	add    %r14,%r8
  8170fc:	44 8b a5 78 f3 ff ff 	mov    -0xc88(%rbp),%r12d
  817103:	49 f7 d8             	neg    %r8
  817106:	45 2b e1             	sub    %r9d,%r12d
  817109:	4d 63 e4             	movslq %r12d,%r12
  81710c:	4c 03 85 c8 f2 ff ff 	add    -0xd38(%rbp),%r8
  817113:	49 ff c4             	inc    %r12
  817116:	4c 89 a5 78 ff ff ff 	mov    %r12,-0x88(%rbp)
  81711d:	4c 8b a5 88 f3 ff ff 	mov    -0xc78(%rbp),%r12
  817124:	4d 2b e0             	sub    %r8,%r12
  817127:	49 f7 d8             	neg    %r8
  81712a:	4d 03 c5             	add    %r13,%r8
  81712d:	4d 03 c3             	add    %r11,%r8
  817130:	4c 01 9d a8 f5 ff ff 	add    %r11,-0xa58(%rbp)
  817137:	4c 01 9d 88 f5 ff ff 	add    %r11,-0xa78(%rbp)
  81713e:	4d 03 dc             	add    %r12,%r11
  817141:	4c 89 85 c0 f5 ff ff 	mov    %r8,-0xa40(%rbp)
  817148:	4c 89 9d d0 f5 ff ff 	mov    %r11,-0xa30(%rbp)
  81714f:	4d 89 cb             	mov    %r9,%r11
  817152:	4c 8b 85 f8 f1 ff ff 	mov    -0xe08(%rbp),%r8
  817159:	4c 89 b5 98 f5 ff ff 	mov    %r14,-0xa68(%rbp)
  817160:	4c 8b 75 80          	mov    -0x80(%rbp),%r14
  817164:	4c 0f af 85 80 f5 ff 	imul   -0xa80(%rbp),%r8
  81716b:	ff 
  81716c:	4d 0f af fe          	imul   %r14,%r15
  817170:	4d 0f af de          	imul   %r14,%r11
  817174:	4c 8b ad 08 fc ff ff 	mov    -0x3f8(%rbp),%r13
  81717b:	4c 8b b5 68 f2 ff ff 	mov    -0xd98(%rbp),%r14
  817182:	4c 89 85 e8 f3 ff ff 	mov    %r8,-0xc18(%rbp)
  817189:	4c 2b 85 08 f2 ff ff 	sub    -0xdf8(%rbp),%r8
  817190:	4f 8d 64 2d 00       	lea    0x0(%r13,%r13,1),%r12
  817195:	49 f7 dc             	neg    %r12
  817198:	4c 89 bd f8 f3 ff ff 	mov    %r15,-0xc08(%rbp)
  81719f:	4d 03 e5             	add    %r13,%r12
  8171a2:	4d 2b fb             	sub    %r11,%r15
  8171a5:	4d 89 f5             	mov    %r14,%r13
  8171a8:	4d 03 f8             	add    %r8,%r15
  8171ab:	4d 2b ec             	sub    %r12,%r13
  8171ae:	4c 89 9d 18 f2 ff ff 	mov    %r11,-0xde8(%rbp)
  8171b5:	4d 2b ef             	sub    %r15,%r13
  8171b8:	4c 8b 9d a8 f4 ff ff 	mov    -0xb58(%rbp),%r11
  8171bf:	49 f7 df             	neg    %r15
  8171c2:	4d 03 eb             	add    %r11,%r13
  8171c5:	4d 03 fe             	add    %r14,%r15
  8171c8:	4c 89 ad a0 f5 ff ff 	mov    %r13,-0xa60(%rbp)
  8171cf:	4d 89 cd             	mov    %r9,%r13
  8171d2:	4c 0f af 6d d8       	imul   -0x28(%rbp),%r13
  8171d7:	4c 89 85 f0 f3 ff ff 	mov    %r8,-0xc10(%rbp)
  8171de:	4d 03 e0             	add    %r8,%r12
  8171e1:	4c 89 bd b0 f4 ff ff 	mov    %r15,-0xb50(%rbp)
  8171e8:	4d 03 fb             	add    %r11,%r15
  8171eb:	4c 8b 9d f0 fb ff ff 	mov    -0x410(%rbp),%r11
  8171f2:	49 f7 dc             	neg    %r12
  8171f5:	4c 8b 85 c8 f3 ff ff 	mov    -0xc38(%rbp),%r8
  8171fc:	49 f7 db             	neg    %r11
  8171ff:	49 f7 d8             	neg    %r8
  817202:	4d 03 c3             	add    %r11,%r8
  817205:	4c 89 bd 78 f5 ff ff 	mov    %r15,-0xa88(%rbp)
  81720c:	4c 8b bd b8 f3 ff ff 	mov    -0xc48(%rbp),%r15
  817213:	4d 03 f8             	add    %r8,%r15
  817216:	4c 01 ad d8 f5 ff ff 	add    %r13,-0xa28(%rbp)
  81721d:	4d 03 ef             	add    %r15,%r13
  817220:	4c 8b 85 58 f3 ff ff 	mov    -0xca8(%rbp),%r8
  817227:	4e 8d 3c cd 00 00 00 	lea    0x0(,%r9,8),%r15
  81722e:	00 
  81722f:	4c 8b 8d 80 f7 ff ff 	mov    -0x880(%rbp),%r9
  817236:	49 f7 d9             	neg    %r9
  817239:	4d 03 cf             	add    %r15,%r9
  81723c:	4d 2b fa             	sub    %r10,%r15
  81723f:	49 03 cf             	add    %r15,%rcx
  817242:	49 03 f7             	add    %r15,%rsi
  817245:	48 2b c8             	sub    %rax,%rcx
  817248:	48 03 d6             	add    %rsi,%rdx
  81724b:	48 8d b5 20 f2 ff ff 	lea    -0xde0(%rbp),%rsi
  817252:	48 8b 06             	mov    (%rsi),%rax
  817255:	49 03 cb             	add    %r11,%rcx
  817258:	48 03 fa             	add    %rdx,%rdi
  81725b:	49 03 c7             	add    %r15,%rax
  81725e:	4c 8d 9d f0 f5 ff ff 	lea    -0xa10(%rbp),%r11
  817265:	49 8b 13             	mov    (%r11),%rdx
  817268:	4d 03 f7             	add    %r15,%r14
  81726b:	4c 8b 95 10 f4 ff ff 	mov    -0xbf0(%rbp),%r10
  817272:	48 f7 da             	neg    %rdx
  817275:	4c 89 ad 90 f5 ff ff 	mov    %r13,-0xa70(%rbp)
  81727c:	4d 03 d1             	add    %r9,%r10
  81727f:	48 89 8d c8 f5 ff ff 	mov    %rcx,-0xa38(%rbp)
  817286:	48 03 d0             	add    %rax,%rdx
  817289:	4c 8b ad 90 f1 ff ff 	mov    -0xe70(%rbp),%r13
  817290:	4d 03 e6             	add    %r14,%r12
  817293:	48 8b 8d 80 f3 ff ff 	mov    -0xc80(%rbp),%rcx
  81729a:	4c 01 8d 10 f5 ff ff 	add    %r9,-0xaf0(%rbp)
  8172a1:	49 03 cf             	add    %r15,%rcx
  8172a4:	4c 89 95 e0 fc ff ff 	mov    %r10,-0x320(%rbp)
  8172ab:	4f 8d 14 c1          	lea    (%r9,%r8,8),%r10
  8172af:	4d 03 cd             	add    %r13,%r9
  8172b2:	4d 03 ea             	add    %r10,%r13
  8172b5:	4c 8b 85 e0 f3 ff ff 	mov    -0xc20(%rbp),%r8
  8172bc:	4d 03 c7             	add    %r15,%r8
  8172bf:	48 89 06             	mov    %rax,(%rsi)
  8172c2:	48 89 bd b8 f5 ff ff 	mov    %rdi,-0xa48(%rbp)
  8172c9:	4c 8d 95 e8 f5 ff ff 	lea    -0xa18(%rbp),%r10
  8172d0:	49 8b 32             	mov    (%r10),%rsi
  8172d3:	48 8b 85 90 f3 ff ff 	mov    -0xc70(%rbp),%rax
  8172da:	48 03 f1             	add    %rcx,%rsi
  8172dd:	4c 01 8d 18 f5 ff ff 	add    %r9,-0xae8(%rbp)
  8172e4:	48 03 c1             	add    %rcx,%rax
  8172e7:	48 8b 8d 08 f5 ff ff 	mov    -0xaf8(%rbp),%rcx
  8172ee:	48 8b bd 00 f5 ff ff 	mov    -0xb00(%rbp),%rdi
  8172f5:	49 03 cf             	add    %r15,%rcx
  8172f8:	4c 89 8d 80 f7 ff ff 	mov    %r9,-0x880(%rbp)
  8172ff:	49 03 ff             	add    %r15,%rdi
  817302:	4c 8b 8d a0 f4 ff ff 	mov    -0xb60(%rbp),%r9
  817309:	4d 03 c8             	add    %r8,%r9
  81730c:	48 03 95 98 f5 ff ff 	add    -0xa68(%rbp),%rdx
  817313:	48 2b 8d d8 f3 ff ff 	sub    -0xc28(%rbp),%rcx
  81731a:	48 2b bd d0 f3 ff ff 	sub    -0xc30(%rbp),%rdi
  817321:	4c 03 8d 90 f2 ff ff 	add    -0xd70(%rbp),%r9
  817328:	49 89 13             	mov    %rdx,(%r11)
  81732b:	4c 8d 85 b0 f5 ff ff 	lea    -0xa50(%rbp),%r8
  817332:	49 8b 10             	mov    (%r8),%rdx
  817335:	48 03 f2             	add    %rdx,%rsi
  817338:	48 03 d0             	add    %rax,%rdx
  81733b:	4c 89 bd 98 f2 ff ff 	mov    %r15,-0xd68(%rbp)
  817342:	4c 89 ad 98 fa ff ff 	mov    %r13,-0x568(%rbp)
  817349:	49 89 10             	mov    %rdx,(%r8)
  81734c:	48 89 8d 08 f5 ff ff 	mov    %rcx,-0xaf8(%rbp)
  817353:	48 89 bd 00 f5 ff ff 	mov    %rdi,-0xb00(%rbp)
  81735a:	4c 89 b5 98 f4 ff ff 	mov    %r14,-0xb68(%rbp)
  817361:	4c 89 a5 e0 f5 ff ff 	mov    %r12,-0xa20(%rbp)
  817368:	c5 7b 10 35 a8 04 0b 	vmovsd 0xb04a8(%rip),%xmm14        # 8c7818 <__STRLITPACK_199.115+0x888>
  81736f:	00 
  817370:	c7 85 c8 f8 ff ff 00 	movl   $0x0,-0x738(%rbp)
  817377:	00 00 00 
  81737a:	c4 41 7b 12 d7       	vmovddup %xmm15,%xmm10
  81737f:	c5 79 11 9d 00 f4 ff 	vmovupd %xmm11,-0xc00(%rbp)
  817386:	ff 
  817387:	49 89 32             	mov    %rsi,(%r10)
  81738a:	4c 89 8d a0 f4 ff ff 	mov    %r9,-0xb60(%rbp)
  817391:	44 8b a5 d8 fb ff ff 	mov    -0x428(%rbp),%r12d
  817398:	4c 8b b5 60 f5 ff ff 	mov    -0xaa0(%rbp),%r14
  81739f:	4c 8b bd 68 f5 ff ff 	mov    -0xa98(%rbp),%r15
  8173a6:	44 8b ad 70 f5 ff ff 	mov    -0xa90(%rbp),%r13d
  8173ad:	48 8b 95 e8 f3 ff ff 	mov    -0xc18(%rbp),%rdx
  8173b4:	48 8b bd f8 f3 ff ff 	mov    -0xc08(%rbp),%rdi
  8173bb:	48 8b 8d f0 f3 ff ff 	mov    -0xc10(%rbp),%rcx
  8173c2:	4c 8b 9d 98 f4 ff ff 	mov    -0xb68(%rbp),%r11
  8173c9:	48 f7 da             	neg    %rdx
  8173cc:	4c 2b d9             	sub    %rcx,%r11
  8173cf:	48 8d b5 c0 f2 ff ff 	lea    -0xd40(%rbp),%rsi
  8173d6:	48 8b 0e             	mov    (%rsi),%rcx
  8173d9:	48 0f af 8d 70 f4 ff 	imul   -0xb90(%rbp),%rcx
  8173e0:	ff 
  8173e1:	c4 42 7d 19 df       	vbroadcastsd %xmm15,%ymm11
  8173e6:	c4 e2 7d 19 c0       	vbroadcastsd %xmm0,%ymm0
  8173eb:	c5 f9 10 95 00 f4 ff 	vmovupd -0xc00(%rbp),%xmm2
  8173f2:	ff 
  8173f3:	48 8d 85 f0 f2 ff ff 	lea    -0xd10(%rbp),%rax
  8173fa:	c5 7d 11 18          	vmovupd %ymm11,(%rax)
  8173fe:	4c 8d 85 d0 f2 ff ff 	lea    -0xd30(%rbp),%r8
  817405:	c4 c1 7d 11 00       	vmovupd %ymm0,(%r8)
  81740a:	c4 41 7b 12 d9       	vmovddup %xmm9,%xmm11
  81740f:	c4 c2 7d 19 c1       	vbroadcastsd %xmm9,%ymm0
  817414:	c5 fd 10 08          	vmovupd (%rax),%ymm1
  817418:	c4 c1 7d 10 20       	vmovupd (%r8),%ymm4
  81741d:	44 89 a5 d8 fb ff ff 	mov    %r12d,-0x428(%rbp)
  817424:	4c 8d 8d 80 f4 ff ff 	lea    -0xb80(%rbp),%r9
  81742b:	4d 8b 21             	mov    (%r9),%r12
  81742e:	48 8b 85 00 fc ff ff 	mov    -0x400(%rbp),%rax
  817435:	4c 03 e0             	add    %rax,%r12
  817438:	4c 0f af a5 e8 fc ff 	imul   -0x318(%rbp),%r12
  81743f:	ff 
  817440:	4c 89 b5 60 f5 ff ff 	mov    %r14,-0xaa0(%rbp)
  817447:	48 89 0e             	mov    %rcx,(%rsi)
  81744a:	44 89 ad 70 f5 ff ff 	mov    %r13d,-0xa90(%rbp)
  817451:	48 8b 8d 50 f2 ff ff 	mov    -0xdb0(%rbp),%rcx
  817458:	4c 8b b5 78 f4 ff ff 	mov    -0xb88(%rbp),%r14
  81745f:	48 8b b5 08 f2 ff ff 	mov    -0xdf8(%rbp),%rsi
  817466:	4c 8b ad 08 fc ff ff 	mov    -0x3f8(%rbp),%r13
  81746d:	48 2b f7             	sub    %rdi,%rsi
  817470:	4c 0f af f1          	imul   %rcx,%r14
  817474:	49 03 d5             	add    %r13,%rdx
  817477:	4c 8b 85 68 f2 ff ff 	mov    -0xd98(%rbp),%r8
  81747e:	48 03 d6             	add    %rsi,%rdx
  817481:	4d 2b c5             	sub    %r13,%r8
  817484:	4c 89 bd 68 f5 ff ff 	mov    %r15,-0xa98(%rbp)
  81748b:	4c 03 c2             	add    %rdx,%r8
  81748e:	4c 8b 7d 80          	mov    -0x80(%rbp),%r15
  817492:	48 8b 95 18 f2 ff ff 	mov    -0xde8(%rbp),%rdx
  817499:	4c 8b 95 90 f4 ff ff 	mov    -0xb70(%rbp),%r10
  8174a0:	4d 89 21             	mov    %r12,(%r9)
  8174a3:	4c 8b a5 80 f2 ff ff 	mov    -0xd80(%rbp),%r12
  8174aa:	4a 8d 34 7a          	lea    (%rdx,%r15,2),%rsi
  8174ae:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
  8174b5:	4c 03 c6             	add    %rsi,%r8
  8174b8:	4c 8b ad c8 f2 ff ff 	mov    -0xd38(%rbp),%r13
  8174bf:	48 8b b5 20 f2 ff ff 	mov    -0xde0(%rbp),%rsi
  8174c6:	4c 0f af 95 00 f2 ff 	imul   -0xe00(%rbp),%r10
  8174cd:	ff 
  8174ce:	49 2b f5             	sub    %r13,%rsi
  8174d1:	48 01 b5 98 f5 ff ff 	add    %rsi,-0xa68(%rbp)
  8174d8:	48 8b b5 58 f2 ff ff 	mov    -0xda8(%rbp),%rsi
  8174df:	4c 8b 8d 10 f2 ff ff 	mov    -0xdf0(%rbp),%r9
  8174e6:	48 f7 de             	neg    %rsi
  8174e9:	4c 89 b5 78 f4 ff ff 	mov    %r14,-0xb88(%rbp)
  8174f0:	4d 8d 34 54          	lea    (%r12,%rdx,2),%r14
  8174f4:	4c 8b a5 20 ff ff ff 	mov    -0xe0(%rbp),%r12
  8174fb:	49 03 f4             	add    %r12,%rsi
  8174fe:	4c 2b 8d 48 f2 ff ff 	sub    -0xdb8(%rbp),%r9
  817505:	4c 8b bd 88 f2 ff ff 	mov    -0xd78(%rbp),%r15
  81750c:	49 03 f1             	add    %r9,%rsi
  81750f:	4d 2b fc             	sub    %r12,%r15
  817512:	4c 8b 8d 28 f2 ff ff 	mov    -0xdd8(%rbp),%r9
  817519:	4c 03 fe             	add    %rsi,%r15
  81751c:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
  817520:	48 8b bd a8 f4 ff ff 	mov    -0xb58(%rbp),%rdi
  817527:	4c 8b a5 f8 f1 ff ff 	mov    -0xe08(%rbp),%r12
  81752e:	48 01 bd e0 f5 ff ff 	add    %rdi,-0xa20(%rbp)
  817535:	4d 8d 0c 71          	lea    (%r9,%rsi,2),%r9
  817539:	4d 03 f9             	add    %r9,%r15
  81753c:	4c 01 95 b0 f4 ff ff 	add    %r10,-0xb50(%rbp)
  817543:	4c 01 bd 78 f6 ff ff 	add    %r15,-0x988(%rbp)
  81754a:	4c 01 bd 88 f6 ff ff 	add    %r15,-0x978(%rbp)
  817551:	4e 8d 3c 1f          	lea    (%rdi,%r11,1),%r15
  817555:	4d 03 da             	add    %r10,%r11
  817558:	4d 03 d0             	add    %r8,%r10
  81755b:	49 03 f8             	add    %r8,%rdi
  81755e:	4d 89 e0             	mov    %r12,%r8
  817561:	4c 0f af 85 f8 f4 ff 	imul   -0xb08(%rbp),%r8
  817568:	ff 
  817569:	4c 0f af a5 f0 f4 ff 	imul   -0xb10(%rbp),%r12
  817570:	ff 
  817571:	48 89 bd a8 f4 ff ff 	mov    %rdi,-0xb58(%rbp)
  817578:	4c 29 ad 50 f8 ff ff 	sub    %r13,-0x7b0(%rbp)
  81757f:	4c 8d 8d 28 f5 ff ff 	lea    -0xad8(%rbp),%r9
  817586:	49 8b 39             	mov    (%r9),%rdi
  817589:	48 8b b5 98 f2 ff ff 	mov    -0xd68(%rbp),%rsi
  817590:	4c 8b ad 30 f2 ff ff 	mov    -0xdd0(%rbp),%r13
  817597:	4c 89 b5 98 f6 ff ff 	mov    %r14,-0x968(%rbp)
  81759e:	49 89 fe             	mov    %rdi,%r14
  8175a1:	4d 2b f0             	sub    %r8,%r14
  8175a4:	48 03 fe             	add    %rsi,%rdi
  8175a7:	4d 2b c5             	sub    %r13,%r8
  8175aa:	4c 89 9d 98 f4 ff ff 	mov    %r11,-0xb68(%rbp)
  8175b1:	49 2b f8             	sub    %r8,%rdi
  8175b4:	49 89 39             	mov    %rdi,(%r9)
  8175b7:	4c 8b 9d f0 f1 ff ff 	mov    -0xe10(%rbp),%r11
  8175be:	4d 89 d8             	mov    %r11,%r8
  8175c1:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  8175c8:	4f 8d 4c 35 00       	lea    0x0(%r13,%r14,1),%r9
  8175cd:	4c 89 bd 70 f3 ff ff 	mov    %r15,-0xc90(%rbp)
  8175d4:	49 89 c7             	mov    %rax,%r15
  8175d7:	4c 0f af c7          	imul   %rdi,%r8
  8175db:	4c 0f af ff          	imul   %rdi,%r15
  8175df:	4d 2b e8             	sub    %r8,%r13
  8175e2:	4d 2b c7             	sub    %r15,%r8
  8175e5:	4c 89 95 90 f4 ff ff 	mov    %r10,-0xb70(%rbp)
  8175ec:	4d 03 f5             	add    %r13,%r14
  8175ef:	4c 8b 95 f8 f5 ff ff 	mov    -0xa08(%rbp),%r10
  8175f6:	4d 8d 2c 7f          	lea    (%r15,%rdi,2),%r13
  8175fa:	48 89 c7             	mov    %rax,%rdi
  8175fd:	4d 03 f5             	add    %r13,%r14
  817600:	4d 0f af da          	imul   %r10,%r11
  817604:	49 0f af fa          	imul   %r10,%rdi
  817608:	4c 89 b5 68 f3 ff ff 	mov    %r14,-0xc98(%rbp)
  81760f:	4d 2b c8             	sub    %r8,%r9
  817612:	4c 8b b5 20 f5 ff ff 	mov    -0xae0(%rbp),%r14
  817619:	4e 8d 14 57          	lea    (%rdi,%r10,2),%r10
  81761d:	4c 89 8d 38 f3 ff ff 	mov    %r9,-0xcc8(%rbp)
  817624:	4d 89 f1             	mov    %r14,%r9
  817627:	4d 2b cc             	sub    %r12,%r9
  81762a:	4c 03 f6             	add    %rsi,%r14
  81762d:	4c 8b 85 38 f2 ff ff 	mov    -0xdc8(%rbp),%r8
  817634:	4d 2b e0             	sub    %r8,%r12
  817637:	4d 2b f4             	sub    %r12,%r14
  81763a:	4c 8b ad e8 f6 ff ff 	mov    -0x918(%rbp),%r13
  817641:	4f 8d 24 08          	lea    (%r8,%r9,1),%r12
  817645:	4d 2b c3             	sub    %r11,%r8
  817648:	4c 2b df             	sub    %rdi,%r11
  81764b:	4d 03 c8             	add    %r8,%r9
  81764e:	4d 2b e3             	sub    %r11,%r12
  817651:	4c 8b 9d 78 fe ff ff 	mov    -0x188(%rbp),%r11
  817658:	4d 03 ca             	add    %r10,%r9
  81765b:	4c 89 8d 60 f3 ff ff 	mov    %r9,-0xca0(%rbp)
  817662:	4d 89 d9             	mov    %r11,%r9
  817665:	4c 0f af c8          	imul   %rax,%r9
  817669:	4c 89 a5 30 f3 ff ff 	mov    %r12,-0xcd0(%rbp)
  817670:	4f 8d 14 59          	lea    (%r9,%r11,2),%r10
  817674:	49 f7 d9             	neg    %r9
  817677:	49 f7 dd             	neg    %r13
  81767a:	48 8b bd a0 f2 ff ff 	mov    -0xd60(%rbp),%rdi
  817681:	4c 03 cf             	add    %rdi,%r9
  817684:	4c 8b a5 48 f5 ff ff 	mov    -0xab8(%rbp),%r12
  81768b:	4d 89 e0             	mov    %r12,%r8
  81768e:	4d 2b c1             	sub    %r9,%r8
  817691:	48 f7 df             	neg    %rdi
  817694:	4c 89 85 58 f3 ff ff 	mov    %r8,-0xca8(%rbp)
  81769b:	49 03 fd             	add    %r13,%rdi
  81769e:	4c 8d 9d 38 f5 ff ff 	lea    -0xac8(%rbp),%r11
  8176a5:	4d 8b 03             	mov    (%r11),%r8
  8176a8:	4c 8b bd 70 f2 ff ff 	mov    -0xd90(%rbp),%r15
  8176af:	4d 03 fd             	add    %r13,%r15
  8176b2:	4c 89 b5 20 f5 ff ff 	mov    %r14,-0xae0(%rbp)
  8176b9:	4d 8d 34 30          	lea    (%r8,%rsi,1),%r14
  8176bd:	4d 03 c7             	add    %r15,%r8
  8176c0:	4d 03 f7             	add    %r15,%r14
  8176c3:	4d 2b c1             	sub    %r9,%r8
  8176c6:	4c 8b 8d 80 fe ff ff 	mov    -0x180(%rbp),%r9
  8176cd:	4d 89 03             	mov    %r8,(%r11)
  8176d0:	4d 89 c8             	mov    %r9,%r8
  8176d3:	4c 0f af c0          	imul   %rax,%r8
  8176d7:	4c 01 95 58 f5 ff ff 	add    %r10,-0xaa8(%rbp)
  8176de:	4c 03 d7             	add    %rdi,%r10
  8176e1:	4d 03 e2             	add    %r10,%r12
  8176e4:	4f 8d 1c 48          	lea    (%r8,%r9,2),%r11
  8176e8:	49 f7 d8             	neg    %r8
  8176eb:	4c 89 a5 48 f5 ff ff 	mov    %r12,-0xab8(%rbp)
  8176f2:	4c 8b 95 a8 f2 ff ff 	mov    -0xd58(%rbp),%r10
  8176f9:	4d 03 c2             	add    %r10,%r8
  8176fc:	4c 8d 8d 40 f5 ff ff 	lea    -0xac0(%rbp),%r9
  817703:	4d 8b 21             	mov    (%r9),%r12
  817706:	4c 89 e7             	mov    %r12,%rdi
  817709:	49 2b f8             	sub    %r8,%rdi
  81770c:	49 f7 da             	neg    %r10
  81770f:	48 89 bd 48 f3 ff ff 	mov    %rdi,-0xcb8(%rbp)
  817716:	48 8b bd 30 f5 ff ff 	mov    -0xad0(%rbp),%rdi
  81771d:	4c 8b ad e0 f6 ff ff 	mov    -0x920(%rbp),%r13
  817724:	49 f7 dd             	neg    %r13
  817727:	4c 8b bd 78 f2 ff ff 	mov    -0xd88(%rbp),%r15
  81772e:	4d 03 d5             	add    %r13,%r10
  817731:	4d 03 fd             	add    %r13,%r15
  817734:	4c 89 b5 50 f3 ff ff 	mov    %r14,-0xcb0(%rbp)
  81773b:	4c 8d 34 37          	lea    (%rdi,%rsi,1),%r14
  81773f:	49 03 ff             	add    %r15,%rdi
  817742:	4d 03 f7             	add    %r15,%r14
  817745:	49 2b f8             	sub    %r8,%rdi
  817748:	49 89 d0             	mov    %rdx,%r8
  81774b:	4c 0f af c0          	imul   %rax,%r8
  81774f:	4c 01 9d 50 f5 ff ff 	add    %r11,-0xab0(%rbp)
  817756:	4d 03 da             	add    %r10,%r11
  817759:	4d 03 e3             	add    %r11,%r12
  81775c:	4d 89 21             	mov    %r12,(%r9)
  81775f:	48 8b 85 b0 f2 ff ff 	mov    -0xd50(%rbp),%rax
  817766:	4c 8b a5 58 f6 ff ff 	mov    -0x9a8(%rbp),%r12
  81776d:	48 89 bd 30 f5 ff ff 	mov    %rdi,-0xad0(%rbp)
  817774:	48 89 c7             	mov    %rax,%rdi
  817777:	49 f7 dc             	neg    %r12
  81777a:	48 f7 d8             	neg    %rax
  81777d:	4c 8b 8d 90 f2 ff ff 	mov    -0xd70(%rbp),%r9
  817784:	49 2b f8             	sub    %r8,%rdi
  817787:	4d 03 cc             	add    %r12,%r9
  81778a:	49 03 c4             	add    %r12,%rax
  81778d:	4c 2b cf             	sub    %rdi,%r9
  817790:	48 f7 d8             	neg    %rax
  817793:	4c 8b 95 60 f2 ff ff 	mov    -0xda0(%rbp),%r10
  81779a:	4d 03 d1             	add    %r9,%r10
  81779d:	4c 8b 9d b8 f2 ff ff 	mov    -0xd48(%rbp),%r11
  8177a4:	49 03 c3             	add    %r11,%rax
  8177a7:	48 f7 d8             	neg    %rax
  8177aa:	49 03 fb             	add    %r11,%rdi
  8177ad:	4c 8b ad c0 f4 ff ff 	mov    -0xb40(%rbp),%r13
  8177b4:	49 03 c5             	add    %r13,%rax
  8177b7:	48 f7 df             	neg    %rdi
  8177ba:	4c 01 85 b8 f4 ff ff 	add    %r8,-0xb48(%rbp)
  8177c1:	4c 03 c0             	add    %rax,%r8
  8177c4:	4c 89 b5 40 f3 ff ff 	mov    %r14,-0xcc0(%rbp)
  8177cb:	49 8d 04 52          	lea    (%r10,%rdx,2),%rax
  8177cf:	48 89 85 28 f3 ff ff 	mov    %rax,-0xcd8(%rbp)
  8177d6:	49 03 fd             	add    %r13,%rdi
  8177d9:	48 8b 85 40 f2 ff ff 	mov    -0xdc0(%rbp),%rax
  8177e0:	4c 03 ee             	add    %rsi,%r13
  8177e3:	4c 8b b5 a0 f6 ff ff 	mov    -0x960(%rbp),%r14
  8177ea:	48 03 f0             	add    %rax,%rsi
  8177ed:	48 2b c1             	sub    %rcx,%rax
  8177f0:	49 2b ce             	sub    %r14,%rcx
  8177f3:	4c 8b bd c0 f2 ff ff 	mov    -0xd40(%rbp),%r15
  8177fa:	49 03 c6             	add    %r14,%rax
  8177fd:	49 2b cf             	sub    %r15,%rcx
  817800:	49 f7 df             	neg    %r15
  817803:	49 2b c7             	sub    %r15,%rax
  817806:	48 2b f1             	sub    %rcx,%rsi
  817809:	4c 8d bd 80 f4 ff ff 	lea    -0xb80(%rbp),%r15
  817810:	4d 8b 0f             	mov    (%r15),%r9
  817813:	48 8d 0c 57          	lea    (%rdi,%rdx,2),%rcx
  817817:	4c 03 c8             	add    %rax,%r9
  81781a:	4d 2b eb             	sub    %r11,%r13
  81781d:	4c 8d 9d 88 f4 ff ff 	lea    -0xb78(%rbp),%r11
  817824:	49 8b 13             	mov    (%r11),%rdx
  817827:	4d 03 ec             	add    %r12,%r13
  81782a:	4c 8d a5 78 f4 ff ff 	lea    -0xb88(%rbp),%r12
  817831:	49 8b 3c 24          	mov    (%r12),%rdi
  817835:	48 89 8d 20 f3 ff ff 	mov    %rcx,-0xce0(%rbp)
  81783c:	48 8d 85 e8 f8 ff ff 	lea    -0x718(%rbp),%rax
  817843:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  81784a:	4a 8d 0c 0a          	lea    (%rdx,%r9,1),%rcx
  81784e:	4c 03 cf             	add    %rdi,%r9
  817851:	48 03 fe             	add    %rsi,%rdi
  817854:	4d 89 0f             	mov    %r9,(%r15)
  817857:	48 03 d6             	add    %rsi,%rdx
  81785a:	4c 8b 4d c0          	mov    -0x40(%rbp),%r9
  81785e:	45 89 ca             	mov    %r9d,%r10d
  817861:	49 89 3c 24          	mov    %rdi,(%r12)
  817865:	41 83 e2 fc          	and    $0xfffffffc,%r10d
  817869:	48 8b bd 78 ff ff ff 	mov    -0x88(%rbp),%rdi
  817870:	41 83 e1 fe          	and    $0xfffffffe,%r9d
  817874:	89 fe                	mov    %edi,%esi
  817876:	83 e7 fe             	and    $0xfffffffe,%edi
  817879:	83 e6 fc             	and    $0xfffffffc,%esi
  81787c:	48 63 ff             	movslq %edi,%rdi
  81787f:	4d 63 d2             	movslq %r10d,%r10
  817882:	4d 63 c9             	movslq %r9d,%r9
  817885:	4c 89 ad c0 f4 ff ff 	mov    %r13,-0xb40(%rbp)
  81788c:	48 63 f6             	movslq %esi,%rsi
  81788f:	4c 89 4d e0          	mov    %r9,-0x20(%rbp)
  817893:	4c 89 55 a0          	mov    %r10,-0x60(%rbp)
  817897:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
  81789b:	4c 89 85 18 f3 ff ff 	mov    %r8,-0xce8(%rbp)
  8178a2:	49 89 13             	mov    %rdx,(%r11)
  8178a5:	48 89 b5 e0 fe ff ff 	mov    %rsi,-0x120(%rbp)
  8178ac:	44 8b a5 d8 fb ff ff 	mov    -0x428(%rbp),%r12d
  8178b3:	4c 8b b5 60 f5 ff ff 	mov    -0xaa0(%rbp),%r14
  8178ba:	4c 8b bd 68 f5 ff ff 	mov    -0xa98(%rbp),%r15
  8178c1:	44 8b ad 70 f5 ff ff 	mov    -0xa90(%rbp),%r13d
  8178c8:	48 8b 38             	mov    (%rax),%rdi
  8178cb:	44 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%r8d
  8178d2:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  8178d9:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  8178e0:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  8178e7:	48 89 8d 10 f3 ff ff 	mov    %rcx,-0xcf0(%rbp)
  8178ee:	48 83 7d d0 08       	cmpq   $0x8,-0x30(%rbp)
  8178f3:	0f 85 c8 03 00 00    	jne    817cc1 <pre_step3d_mod_mp_pre_step3d_tile_+0x3821>
  8178f9:	48 83 7d c8 08       	cmpq   $0x8,-0x38(%rbp)
  8178fe:	0f 85 bd 03 00 00    	jne    817cc1 <pre_step3d_mod_mp_pre_step3d_tile_+0x3821>
  817904:	48 83 7d d8 08       	cmpq   $0x8,-0x28(%rbp)
  817909:	0f 85 b2 03 00 00    	jne    817cc1 <pre_step3d_mod_mp_pre_step3d_tile_+0x3821>
  81790f:	48 8b 95 28 fc ff ff 	mov    -0x3d8(%rbp),%rdx
  817916:	33 c0                	xor    %eax,%eax
  817918:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  81791f:	48 89 95 20 fe ff ff 	mov    %rdx,-0x1e0(%rbp)
  817926:	48 89 85 18 fe ff ff 	mov    %rax,-0x1e8(%rbp)
  81792d:	48 89 85 10 fe ff ff 	mov    %rax,-0x1f0(%rbp)
  817934:	48 89 85 c0 f8 ff ff 	mov    %rax,-0x740(%rbp)
  81793b:	48 83 bd 10 ff ff ff 	cmpq   $0x0,-0xf0(%rbp)
  817942:	00 
  817943:	0f 8e d4 07 00 00    	jle    81811d <pre_step3d_mod_mp_pre_step3d_tile_+0x3c7d>
  817949:	4c 8b b5 b8 f8 ff ff 	mov    -0x748(%rbp),%r14
  817950:	4c 8b ad f8 fb ff ff 	mov    -0x408(%rbp),%r13
  817957:	4c 0f af f7          	imul   %rdi,%r14
  81795b:	4c 0f af ef          	imul   %rdi,%r13
  81795f:	48 8b b5 70 f8 ff ff 	mov    -0x790(%rbp),%rsi
  817966:	48 8b 8d 60 f8 ff ff 	mov    -0x7a0(%rbp),%rcx
  81796d:	48 8b 95 58 f8 ff ff 	mov    -0x7a8(%rbp),%rdx
  817974:	4c 8b a5 68 f8 ff ff 	mov    -0x798(%rbp),%r12
  81797b:	49 03 f1             	add    %r9,%rsi
  81797e:	48 8b 85 88 f8 ff ff 	mov    -0x778(%rbp),%rax
  817985:	49 03 ce             	add    %r14,%rcx
  817988:	4c 8b bd b0 f8 ff ff 	mov    -0x750(%rbp),%r15
  81798f:	49 03 d6             	add    %r14,%rdx
  817992:	48 89 95 48 fd ff ff 	mov    %rdx,-0x2b8(%rbp)
  817999:	4d 03 e1             	add    %r9,%r12
  81799c:	48 89 8d 50 fd ff ff 	mov    %rcx,-0x2b0(%rbp)
  8179a3:	49 03 c6             	add    %r14,%rax
  8179a6:	4c 03 b5 50 f8 ff ff 	add    -0x7b0(%rbp),%r14
  8179ad:	4d 03 fd             	add    %r13,%r15
  8179b0:	4c 03 ad 98 f8 ff ff 	add    -0x768(%rbp),%r13
  8179b7:	48 89 b5 58 fd ff ff 	mov    %rsi,-0x2a8(%rbp)
  8179be:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  8179c5:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  8179cc:	4c 89 b5 28 fd ff ff 	mov    %r14,-0x2d8(%rbp)
  8179d3:	4c 89 ad 30 fd ff ff 	mov    %r13,-0x2d0(%rbp)
  8179da:	4c 89 bd 38 fd ff ff 	mov    %r15,-0x2c8(%rbp)
  8179e1:	48 89 85 40 fd ff ff 	mov    %rax,-0x2c0(%rbp)
  8179e8:	4c 89 a5 60 fd ff ff 	mov    %r12,-0x2a0(%rbp)
  8179ef:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  8179f6:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  8179fd:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  817a04:	4c 8b 85 c0 f8 ff ff 	mov    -0x740(%rbp),%r8
  817a0b:	48 8b 8d 10 fe ff ff 	mov    -0x1f0(%rbp),%rcx
  817a12:	48 8b b5 18 fe ff ff 	mov    -0x1e8(%rbp),%rsi
  817a19:	48 8b bd 20 fe ff ff 	mov    -0x1e0(%rbp),%rdi
  817a20:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  817a24:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  817a2b:	48 3b 85 08 ff ff ff 	cmp    -0xf8(%rbp),%rax
  817a32:	0f 8c 4a 02 00 00    	jl     817c82 <pre_step3d_mod_mp_pre_step3d_tile_+0x37e2>
  817a38:	48 83 fa 04          	cmp    $0x4,%rdx
  817a3c:	0f 8c bc ce 00 00    	jl     8248fe <pre_step3d_mod_mp_pre_step3d_tile_+0x1045e>
  817a42:	4c 8b 8d 30 fd ff ff 	mov    -0x2d0(%rbp),%r9
  817a49:	45 33 f6             	xor    %r14d,%r14d
  817a4c:	4c 8b ad 28 fd ff ff 	mov    -0x2d8(%rbp),%r13
  817a53:	4c 8b a5 40 fd ff ff 	mov    -0x2c0(%rbp),%r12
  817a5a:	4c 8b 9d 50 fd ff ff 	mov    -0x2b0(%rbp),%r11
  817a61:	4d 8d 3c 09          	lea    (%r9,%rcx,1),%r15
  817a65:	4c 89 bd 98 fd ff ff 	mov    %r15,-0x268(%rbp)
  817a6c:	4c 03 ee             	add    %rsi,%r13
  817a6f:	4c 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%r15
  817a76:	4c 03 e6             	add    %rsi,%r12
  817a79:	4c 8b 95 48 fd ff ff 	mov    -0x2b8(%rbp),%r10
  817a80:	4c 03 de             	add    %rsi,%r11
  817a83:	4c 8b 8d 38 fd ff ff 	mov    -0x2c8(%rbp),%r9
  817a8a:	48 89 bd 68 fd ff ff 	mov    %rdi,-0x298(%rbp)
  817a91:	4d 03 f8             	add    %r8,%r15
  817a94:	4c 89 bd 80 fd ff ff 	mov    %r15,-0x280(%rbp)
  817a9b:	4c 03 d6             	add    %rsi,%r10
  817a9e:	4c 8b bd 58 fd ff ff 	mov    -0x2a8(%rbp),%r15
  817aa5:	4c 03 c9             	add    %rcx,%r9
  817aa8:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  817aac:	48 89 8d 10 fe ff ff 	mov    %rcx,-0x1f0(%rbp)
  817ab3:	48 89 b5 18 fe ff ff 	mov    %rsi,-0x1e8(%rbp)
  817aba:	4d 03 f8             	add    %r8,%r15
  817abd:	4c 89 bd 70 fd ff ff 	mov    %r15,-0x290(%rbp)
  817ac4:	49 89 c7             	mov    %rax,%r15
  817ac7:	48 89 bd 20 fe ff ff 	mov    %rdi,-0x1e0(%rbp)
  817ace:	48 8b 95 68 fd ff ff 	mov    -0x298(%rbp),%rdx
  817ad5:	48 8b 8d 70 fd ff ff 	mov    -0x290(%rbp),%rcx
  817adc:	48 8b b5 80 fd ff ff 	mov    -0x280(%rbp),%rsi
  817ae3:	48 8b bd 98 fd ff ff 	mov    -0x268(%rbp),%rdi
  817aea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  817af0:	c4 01 7d 10 2c f2    	vmovupd (%r10,%r14,8),%ymm13
  817af6:	c4 01 15 58 74 f3 f8 	vaddpd -0x8(%r11,%r14,8),%ymm13,%ymm14
  817afd:	c4 01 0d 5c 3c f4    	vsubpd (%r12,%r14,8),%ymm14,%ymm15
  817b03:	c4 01 05 5c 6c f5 f8 	vsubpd -0x8(%r13,%r14,8),%ymm15,%ymm13
  817b0a:	c4 01 7d 10 3c f1    	vmovupd (%r9,%r14,8),%ymm15
  817b10:	c4 41 4d 5e f5       	vdivpd %ymm13,%ymm6,%ymm14
  817b15:	c5 0d 59 ec          	vmulpd %ymm4,%ymm14,%ymm13
  817b19:	c4 21 05 5c 34 f7    	vsubpd (%rdi,%r14,8),%ymm15,%ymm14
  817b1f:	c4 21 7d 10 3c f1    	vmovupd (%rcx,%r14,8),%ymm15
  817b25:	c4 41 15 59 ee       	vmulpd %ymm14,%ymm13,%ymm13
  817b2a:	c4 21 05 58 74 f6 f8 	vaddpd -0x8(%rsi,%r14,8),%ymm15,%ymm14
  817b31:	c4 41 15 59 fe       	vmulpd %ymm14,%ymm13,%ymm15
  817b36:	49 83 c6 04          	add    $0x4,%r14
  817b3a:	c5 7d 11 7a 08       	vmovupd %ymm15,0x8(%rdx)
  817b3f:	48 83 c2 20          	add    $0x20,%rdx
  817b43:	4d 3b f7             	cmp    %r15,%r14
  817b46:	72 a8                	jb     817af0 <pre_step3d_mod_mp_pre_step3d_tile_+0x3650>
  817b48:	48 8b 8d 10 fe ff ff 	mov    -0x1f0(%rbp),%rcx
  817b4f:	48 8b b5 18 fe ff ff 	mov    -0x1e8(%rbp),%rsi
  817b56:	48 8b bd 20 fe ff ff 	mov    -0x1e0(%rbp),%rdi
  817b5d:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  817b61:	4c 8d 34 c5 00 00 00 	lea    0x0(,%rax,8),%r14
  817b68:	00 
  817b69:	48 3b c2             	cmp    %rdx,%rax
  817b6c:	0f 83 10 01 00 00    	jae    817c82 <pre_step3d_mod_mp_pre_step3d_tile_+0x37e2>
  817b72:	4c 8b bd 30 fd ff ff 	mov    -0x2d0(%rbp),%r15
  817b79:	4c 8d 2c c7          	lea    (%rdi,%rax,8),%r13
  817b7d:	4c 8b a5 28 fd ff ff 	mov    -0x2d8(%rbp),%r12
  817b84:	4c 8b 9d 40 fd ff ff 	mov    -0x2c0(%rbp),%r11
  817b8b:	4c 8b 95 50 fd ff ff 	mov    -0x2b0(%rbp),%r10
  817b92:	4c 03 f9             	add    %rcx,%r15
  817b95:	4c 89 bd 88 fd ff ff 	mov    %r15,-0x278(%rbp)
  817b9c:	4c 03 e6             	add    %rsi,%r12
  817b9f:	4c 8b bd 38 fd ff ff 	mov    -0x2c8(%rbp),%r15
  817ba6:	4c 03 de             	add    %rsi,%r11
  817ba9:	4c 8b 8d 48 fd ff ff 	mov    -0x2b8(%rbp),%r9
  817bb0:	4c 03 d6             	add    %rsi,%r10
  817bb3:	48 89 8d 10 fe ff ff 	mov    %rcx,-0x1f0(%rbp)
  817bba:	48 89 b5 18 fe ff ff 	mov    %rsi,-0x1e8(%rbp)
  817bc1:	4c 03 f9             	add    %rcx,%r15
  817bc4:	4c 89 bd 90 fd ff ff 	mov    %r15,-0x270(%rbp)
  817bcb:	4c 03 ce             	add    %rsi,%r9
  817bce:	4c 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%r15
  817bd5:	48 89 bd 20 fe ff ff 	mov    %rdi,-0x1e0(%rbp)
  817bdc:	48 8b bd 90 fd ff ff 	mov    -0x270(%rbp),%rdi
  817be3:	4d 03 f8             	add    %r8,%r15
  817be6:	4c 89 bd 78 fd ff ff 	mov    %r15,-0x288(%rbp)
  817bed:	4c 8b bd 58 fd ff ff 	mov    -0x2a8(%rbp),%r15
  817bf4:	48 8b b5 78 fd ff ff 	mov    -0x288(%rbp),%rsi
  817bfb:	4d 03 f8             	add    %r8,%r15
  817bfe:	4c 89 f9             	mov    %r15,%rcx
  817c01:	4c 8b bd 88 fd ff ff 	mov    -0x278(%rbp),%r15
  817c08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  817c0f:	00 
  817c10:	c4 41 7b 10 2c c1    	vmovsd (%r9,%rax,8),%xmm13
  817c16:	c4 41 13 58 74 c2 f8 	vaddsd -0x8(%r10,%rax,8),%xmm13,%xmm14
  817c1d:	c4 41 0b 5c 3c c3    	vsubsd (%r11,%rax,8),%xmm14,%xmm15
  817c23:	c4 41 03 5c 6c c4 f8 	vsubsd -0x8(%r12,%rax,8),%xmm15,%xmm13
  817c2a:	48 ff c0             	inc    %rax
  817c2d:	c4 41 1b 5e f5       	vdivsd %xmm13,%xmm12,%xmm14
  817c32:	c4 41 7b 10 3c 3e    	vmovsd (%r14,%rdi,1),%xmm15
  817c38:	c4 41 3b 59 ee       	vmulsd %xmm14,%xmm8,%xmm13
  817c3d:	c4 01 03 5c 34 3e    	vsubsd (%r14,%r15,1),%xmm15,%xmm14
  817c43:	c4 41 7b 10 3c 0e    	vmovsd (%r14,%rcx,1),%xmm15
  817c49:	c4 41 13 59 ee       	vmulsd %xmm14,%xmm13,%xmm13
  817c4e:	c4 41 03 58 74 36 f8 	vaddsd -0x8(%r14,%rsi,1),%xmm15,%xmm14
  817c55:	c4 41 13 59 fe       	vmulsd %xmm14,%xmm13,%xmm15
  817c5a:	49 83 c6 08          	add    $0x8,%r14
  817c5e:	c4 41 7b 11 7d 08    	vmovsd %xmm15,0x8(%r13)
  817c64:	49 83 c5 08          	add    $0x8,%r13
  817c68:	48 3b c2             	cmp    %rdx,%rax
  817c6b:	72 a3                	jb     817c10 <pre_step3d_mod_mp_pre_step3d_tile_+0x3770>
  817c6d:	48 8b 8d 10 fe ff ff 	mov    -0x1f0(%rbp),%rcx
  817c74:	48 8b b5 18 fe ff ff 	mov    -0x1e8(%rbp),%rsi
  817c7b:	48 8b bd 20 fe ff ff 	mov    -0x1e0(%rbp),%rdi
  817c82:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  817c89:	48 ff c0             	inc    %rax
  817c8c:	48 03 bd 18 ff ff ff 	add    -0xe8(%rbp),%rdi
  817c93:	48 03 b5 30 ff ff ff 	add    -0xd0(%rbp),%rsi
  817c9a:	48 03 8d 20 ff ff ff 	add    -0xe0(%rbp),%rcx
  817ca1:	4c 03 85 28 ff ff ff 	add    -0xd8(%rbp),%r8
  817ca8:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  817caf:	48 3b 85 10 ff ff ff 	cmp    -0xf0(%rbp),%rax
  817cb6:	0f 82 68 fd ff ff    	jb     817a24 <pre_step3d_mod_mp_pre_step3d_tile_+0x3584>
  817cbc:	e9 39 04 00 00       	jmpq   8180fa <pre_step3d_mod_mp_pre_step3d_tile_+0x3c5a>
  817cc1:	45 33 ed             	xor    %r13d,%r13d
  817cc4:	33 c9                	xor    %ecx,%ecx
  817cc6:	33 d2                	xor    %edx,%edx
  817cc8:	48 8b 85 28 fc ff ff 	mov    -0x3d8(%rbp),%rax
  817ccf:	33 f6                	xor    %esi,%esi
  817cd1:	48 83 bd 10 ff ff ff 	cmpq   $0x0,-0xf0(%rbp)
  817cd8:	00 
  817cd9:	0f 8e 3e 04 00 00    	jle    81811d <pre_step3d_mod_mp_pre_step3d_tile_+0x3c7d>
  817cdf:	4c 8b b5 b8 f8 ff ff 	mov    -0x748(%rbp),%r14
  817ce6:	4c 0f af f7          	imul   %rdi,%r14
  817cea:	4c 8b bd 48 f8 ff ff 	mov    -0x7b8(%rbp),%r15
  817cf1:	4c 8b a5 f8 fb ff ff 	mov    -0x408(%rbp),%r12
  817cf8:	4c 0f af e7          	imul   %rdi,%r12
  817cfc:	4c 89 ad 38 ff ff ff 	mov    %r13,-0xc8(%rbp)
  817d03:	4d 03 fe             	add    %r14,%r15
  817d06:	4c 89 bd 08 fe ff ff 	mov    %r15,-0x1f8(%rbp)
  817d0d:	4c 8b bd 90 f8 ff ff 	mov    -0x770(%rbp),%r15
  817d14:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  817d1b:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  817d22:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  817d29:	4d 03 fe             	add    %r14,%r15
  817d2c:	4c 89 bd 00 fe ff ff 	mov    %r15,-0x200(%rbp)
  817d33:	4c 8b bd 78 f8 ff ff 	mov    -0x788(%rbp),%r15
  817d3a:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  817d41:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  817d48:	4d 03 fe             	add    %r14,%r15
  817d4b:	4c 89 bd f8 fd ff ff 	mov    %r15,-0x208(%rbp)
  817d52:	4c 8b bd 80 f8 ff ff 	mov    -0x780(%rbp),%r15
  817d59:	4c 03 b5 a8 f8 ff ff 	add    -0x758(%rbp),%r14
  817d60:	4c 89 b5 a8 fd ff ff 	mov    %r14,-0x258(%rbp)
  817d67:	4d 03 fc             	add    %r12,%r15
  817d6a:	4c 89 bd f0 fd ff ff 	mov    %r15,-0x210(%rbp)
  817d71:	4c 8b bd 38 f8 ff ff 	mov    -0x7c8(%rbp),%r15
  817d78:	4c 03 a5 40 f8 ff ff 	add    -0x7c0(%rbp),%r12
  817d7f:	4c 89 a5 a0 fd ff ff 	mov    %r12,-0x260(%rbp)
  817d86:	4d 03 f9             	add    %r9,%r15
  817d89:	4c 89 bd e8 fd ff ff 	mov    %r15,-0x218(%rbp)
  817d90:	4c 8b bd a0 f8 ff ff 	mov    -0x760(%rbp),%r15
  817d97:	4d 03 f9             	add    %r9,%r15
  817d9a:	4c 89 bd e0 fd ff ff 	mov    %r15,-0x220(%rbp)
  817da1:	48 8b bd 00 ff ff ff 	mov    -0x100(%rbp),%rdi
  817da8:	48 3b bd 08 ff ff ff 	cmp    -0xf8(%rbp),%rdi
  817daf:	0f 8c 0b 03 00 00    	jl     8180c0 <pre_step3d_mod_mp_pre_step3d_tile_+0x3c20>
  817db5:	48 83 7d c0 02       	cmpq   $0x2,-0x40(%rbp)
  817dba:	0f 8c fc cb 00 00    	jl     8249bc <pre_step3d_mod_mp_pre_step3d_tile_+0x1051c>
  817dc0:	48 8b bd a0 fd ff ff 	mov    -0x260(%rbp),%rdi
  817dc7:	45 33 db             	xor    %r11d,%r11d
  817dca:	4c 8b bd 00 fe ff ff 	mov    -0x200(%rbp),%r15
  817dd1:	4c 8b 95 08 fe ff ff 	mov    -0x1f8(%rbp),%r10
  817dd8:	4c 8b 8d f8 fd ff ff 	mov    -0x208(%rbp),%r9
  817ddf:	4c 8d 2c 17          	lea    (%rdi,%rdx,1),%r13
  817de3:	48 8b bd e8 fd ff ff 	mov    -0x218(%rbp),%rdi
  817dea:	4c 03 f9             	add    %rcx,%r15
  817ded:	4c 89 6d f0          	mov    %r13,-0x10(%rbp)
  817df1:	4c 03 d1             	add    %rcx,%r10
  817df4:	4c 8b 85 a8 fd ff ff 	mov    -0x258(%rbp),%r8
  817dfb:	4c 03 c9             	add    %rcx,%r9
  817dfe:	4c 8b a5 f0 fd ff ff 	mov    -0x210(%rbp),%r12
  817e05:	4c 8d 2c 37          	lea    (%rdi,%rsi,1),%r13
  817e09:	48 8b bd e0 fd ff ff 	mov    -0x220(%rbp),%rdi
  817e10:	4c 89 ad c0 fd ff ff 	mov    %r13,-0x240(%rbp)
  817e17:	4c 03 c1             	add    %rcx,%r8
  817e1a:	4c 8b 75 e0          	mov    -0x20(%rbp),%r14
  817e1e:	4c 03 e2             	add    %rdx,%r12
  817e21:	48 89 85 b0 fd ff ff 	mov    %rax,-0x250(%rbp)
  817e28:	4c 8d 2c 37          	lea    (%rdi,%rsi,1),%r13
  817e2c:	4c 89 ad b8 fd ff ff 	mov    %r13,-0x248(%rbp)
  817e33:	45 33 ed             	xor    %r13d,%r13d
  817e36:	33 ff                	xor    %edi,%edi
  817e38:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
  817e3f:	48 89 b5 38 fe ff ff 	mov    %rsi,-0x1c8(%rbp)
  817e46:	48 89 95 40 fe ff ff 	mov    %rdx,-0x1c0(%rbp)
  817e4d:	48 89 8d 48 fe ff ff 	mov    %rcx,-0x1b8(%rbp)
  817e54:	4c 89 b5 28 fe ff ff 	mov    %r14,-0x1d8(%rbp)
  817e5b:	4c 89 7d e8          	mov    %r15,-0x18(%rbp)
  817e5f:	48 8b b5 b0 fd ff ff 	mov    -0x250(%rbp),%rsi
  817e66:	48 89 f8             	mov    %rdi,%rax
  817e69:	48 8b 95 b8 fd ff ff 	mov    -0x248(%rbp),%rdx
  817e70:	48 8b 8d c0 fd ff ff 	mov    -0x240(%rbp),%rcx
  817e77:	4c 8b 7d e8          	mov    -0x18(%rbp),%r15
  817e7b:	49 83 c3 02          	add    $0x2,%r11
  817e7f:	4c 8b 75 d0          	mov    -0x30(%rbp),%r14
  817e83:	4d 03 fd             	add    %r13,%r15
  817e86:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  817e8b:	c4 01 11 16 34 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm14
  817e91:	4f 8d 3c 28          	lea    (%r8,%r13,1),%r15
  817e95:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  817e9a:	c4 01 01 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm13
  817ea0:	4f 8d 3c 2a          	lea    (%r10,%r13,1),%r15
  817ea4:	c4 41 09 58 f5       	vaddpd %xmm13,%xmm14,%xmm14
  817ea9:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  817eae:	c4 01 01 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm13
  817eb4:	4f 8d 3c 29          	lea    (%r9,%r13,1),%r15
  817eb8:	c4 41 09 5c f5       	vsubpd %xmm13,%xmm14,%xmm14
  817ebd:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  817ec2:	4f 8d 6c 75 00       	lea    0x0(%r13,%r14,2),%r13
  817ec7:	c4 01 01 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm13
  817ecd:	4d 8d 34 3c          	lea    (%r12,%rdi,1),%r14
  817ed1:	c4 41 09 5c fd       	vsubpd %xmm13,%xmm14,%xmm15
  817ed6:	c4 41 51 5e f7       	vdivpd %xmm15,%xmm5,%xmm14
  817edb:	4c 8b 7d c8          	mov    -0x38(%rbp),%r15
  817edf:	c4 41 7b 10 2e       	vmovsd (%r14),%xmm13
  817ee4:	c5 09 59 f2          	vmulpd %xmm2,%xmm14,%xmm14
  817ee8:	c4 01 11 16 3c 3e    	vmovhpd (%r14,%r15,1),%xmm13,%xmm15
  817eee:	4c 8b 75 f0          	mov    -0x10(%rbp),%r14
  817ef2:	4c 03 f7             	add    %rdi,%r14
  817ef5:	c4 41 7b 10 2e       	vmovsd (%r14),%xmm13
  817efa:	4a 8d 3c 7f          	lea    (%rdi,%r15,2),%rdi
  817efe:	c4 01 11 16 2c 3e    	vmovhpd (%r14,%r15,1),%xmm13,%xmm13
  817f04:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
  817f08:	c4 41 01 5c fd       	vsubpd %xmm13,%xmm15,%xmm15
  817f0d:	4c 8b 75 d8          	mov    -0x28(%rbp),%r14
  817f11:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  817f16:	c4 41 09 59 f7       	vmulpd %xmm15,%xmm14,%xmm14
  817f1b:	c4 01 11 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm13
  817f21:	4c 8d 3c 02          	lea    (%rdx,%rax,1),%r15
  817f25:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  817f2a:	4a 8d 04 70          	lea    (%rax,%r14,2),%rax
  817f2e:	c4 01 01 16 3c 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm15
  817f34:	c4 41 11 58 ef       	vaddpd %xmm15,%xmm13,%xmm13
  817f39:	c4 41 09 59 f5       	vmulpd %xmm13,%xmm14,%xmm14
  817f3e:	c5 79 11 76 08       	vmovupd %xmm14,0x8(%rsi)
  817f43:	48 83 c6 10          	add    $0x10,%rsi
  817f47:	4c 3b 5d e0          	cmp    -0x20(%rbp),%r11
  817f4b:	0f 82 26 ff ff ff    	jb     817e77 <pre_step3d_mod_mp_pre_step3d_tile_+0x39d7>
  817f51:	4c 8b b5 28 fe ff ff 	mov    -0x1d8(%rbp),%r14
  817f58:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
  817f5f:	48 8b b5 38 fe ff ff 	mov    -0x1c8(%rbp),%rsi
  817f66:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
  817f6d:	48 8b 8d 48 fe ff ff 	mov    -0x1b8(%rbp),%rcx
  817f74:	4c 8b 6d d8          	mov    -0x28(%rbp),%r13
  817f78:	4c 8b 65 c8          	mov    -0x38(%rbp),%r12
  817f7c:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
  817f80:	4d 0f af ee          	imul   %r14,%r13
  817f84:	4d 0f af e6          	imul   %r14,%r12
  817f88:	4d 0f af de          	imul   %r14,%r11
  817f8c:	4c 3b 75 c0          	cmp    -0x40(%rbp),%r14
  817f90:	0f 83 2a 01 00 00    	jae    8180c0 <pre_step3d_mod_mp_pre_step3d_tile_+0x3c20>
  817f96:	4c 8b 8d 00 fe ff ff 	mov    -0x200(%rbp),%r9
  817f9d:	48 8b bd f8 fd ff ff 	mov    -0x208(%rbp),%rdi
  817fa4:	4c 8b bd a8 fd ff ff 	mov    -0x258(%rbp),%r15
  817fab:	4c 8b 95 08 fe ff ff 	mov    -0x1f8(%rbp),%r10
  817fb2:	4d 8d 04 09          	lea    (%r9,%rcx,1),%r8
  817fb6:	4c 89 85 d0 fd ff ff 	mov    %r8,-0x230(%rbp)
  817fbd:	4c 8d 0c 0f          	lea    (%rdi,%rcx,1),%r9
  817fc1:	48 8b bd f0 fd ff ff 	mov    -0x210(%rbp),%rdi
  817fc8:	4d 8d 04 0f          	lea    (%r15,%rcx,1),%r8
  817fcc:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
  817fd3:	4c 03 d1             	add    %rcx,%r10
  817fd6:	48 89 b5 38 fe ff ff 	mov    %rsi,-0x1c8(%rbp)
  817fdd:	48 89 95 40 fe ff ff 	mov    %rdx,-0x1c0(%rbp)
  817fe4:	4c 8d 3c 17          	lea    (%rdi,%rdx,1),%r15
  817fe8:	4c 89 bd d8 fd ff ff 	mov    %r15,-0x228(%rbp)
  817fef:	4c 8b bd e8 fd ff ff 	mov    -0x218(%rbp),%r15
  817ff6:	48 8b bd a0 fd ff ff 	mov    -0x260(%rbp),%rdi
  817ffd:	48 89 8d 48 fe ff ff 	mov    %rcx,-0x1b8(%rbp)
  818004:	4c 03 fe             	add    %rsi,%r15
  818007:	4c 89 bd c8 fd ff ff 	mov    %r15,-0x238(%rbp)
  81800e:	4c 8b bd e0 fd ff ff 	mov    -0x220(%rbp),%r15
  818015:	48 03 fa             	add    %rdx,%rdi
  818018:	48 8b 8d c8 fd ff ff 	mov    -0x238(%rbp),%rcx
  81801f:	4c 03 fe             	add    %rsi,%r15
  818022:	4c 89 fa             	mov    %r15,%rdx
  818025:	4e 8d 3c f0          	lea    (%rax,%r14,8),%r15
  818029:	4c 89 f8             	mov    %r15,%rax
  81802c:	48 8b b5 d8 fd ff ff 	mov    -0x228(%rbp),%rsi
  818033:	4c 8b bd d0 fd ff ff 	mov    -0x230(%rbp),%r15
  81803a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  818040:	c4 01 7b 10 2c 3b    	vmovsd (%r11,%r15,1),%xmm13
  818046:	49 ff c6             	inc    %r14
  818049:	c4 01 13 58 34 03    	vaddsd (%r11,%r8,1),%xmm13,%xmm14
  81804f:	c4 01 0b 5c 3c 13    	vsubsd (%r11,%r10,1),%xmm14,%xmm15
  818055:	c4 01 03 5c 2c 0b    	vsubsd (%r11,%r9,1),%xmm15,%xmm13
  81805b:	c4 41 1b 5e f5       	vdivsd %xmm13,%xmm12,%xmm14
  818060:	c4 41 7b 10 3c 34    	vmovsd (%r12,%rsi,1),%xmm15
  818066:	c4 41 3b 59 ee       	vmulsd %xmm14,%xmm8,%xmm13
  81806b:	c4 41 03 5c 34 3c    	vsubsd (%r12,%rdi,1),%xmm15,%xmm14
  818071:	c4 41 7b 10 7c 0d 00 	vmovsd 0x0(%r13,%rcx,1),%xmm15
  818078:	c4 41 13 59 ee       	vmulsd %xmm14,%xmm13,%xmm13
  81807d:	c4 41 03 58 74 15 00 	vaddsd 0x0(%r13,%rdx,1),%xmm15,%xmm14
  818084:	c4 41 13 59 fe       	vmulsd %xmm14,%xmm13,%xmm15
  818089:	4c 03 5d d0          	add    -0x30(%rbp),%r11
  81808d:	4c 03 65 c8          	add    -0x38(%rbp),%r12
  818091:	4c 03 6d d8          	add    -0x28(%rbp),%r13
  818095:	c5 7b 11 78 08       	vmovsd %xmm15,0x8(%rax)
  81809a:	48 83 c0 08          	add    $0x8,%rax
  81809e:	4c 3b 75 c0          	cmp    -0x40(%rbp),%r14
  8180a2:	72 9c                	jb     818040 <pre_step3d_mod_mp_pre_step3d_tile_+0x3ba0>
  8180a4:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
  8180ab:	48 8b b5 38 fe ff ff 	mov    -0x1c8(%rbp),%rsi
  8180b2:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
  8180b9:	48 8b 8d 48 fe ff ff 	mov    -0x1b8(%rbp),%rcx
  8180c0:	48 8b bd 38 ff ff ff 	mov    -0xc8(%rbp),%rdi
  8180c7:	48 ff c7             	inc    %rdi
  8180ca:	48 03 8d 30 ff ff ff 	add    -0xd0(%rbp),%rcx
  8180d1:	48 03 95 20 ff ff ff 	add    -0xe0(%rbp),%rdx
  8180d8:	48 03 b5 28 ff ff ff 	add    -0xd8(%rbp),%rsi
  8180df:	48 03 85 18 ff ff ff 	add    -0xe8(%rbp),%rax
  8180e6:	48 89 bd 38 ff ff ff 	mov    %rdi,-0xc8(%rbp)
  8180ed:	48 3b bd 10 ff ff ff 	cmp    -0xf0(%rbp),%rdi
  8180f4:	0f 82 a7 fc ff ff    	jb     817da1 <pre_step3d_mod_mp_pre_step3d_tile_+0x3901>
  8180fa:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  818101:	44 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%r8d
  818108:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  81810f:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  818116:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  81811d:	48 83 bd 70 fe ff ff 	cmpq   $0x8,-0x190(%rbp)
  818124:	08 
  818125:	0f 85 47 02 00 00    	jne    818372 <pre_step3d_mod_mp_pre_step3d_tile_+0x3ed2>
  81812b:	48 83 bd 68 fe ff ff 	cmpq   $0x8,-0x198(%rbp)
  818132:	08 
  818133:	0f 85 39 02 00 00    	jne    818372 <pre_step3d_mod_mp_pre_step3d_tile_+0x3ed2>
  818139:	48 83 bd 78 fe ff ff 	cmpq   $0x8,-0x188(%rbp)
  818140:	08 
  818141:	0f 85 2b 02 00 00    	jne    818372 <pre_step3d_mod_mp_pre_step3d_tile_+0x3ed2>
  818147:	48 83 bd 80 fe ff ff 	cmpq   $0x8,-0x180(%rbp)
  81814e:	08 
  81814f:	0f 85 1d 02 00 00    	jne    818372 <pre_step3d_mod_mp_pre_step3d_tile_+0x3ed2>
  818155:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  81815c:	48 3b 85 08 ff ff ff 	cmp    -0xf8(%rbp),%rax
  818163:	0f 8c ae 06 00 00    	jl     818817 <pre_step3d_mod_mp_pre_step3d_tile_+0x4377>
  818169:	48 83 7d c0 04       	cmpq   $0x4,-0x40(%rbp)
  81816e:	0f 8c 91 c7 00 00    	jl     824905 <pre_step3d_mod_mp_pre_step3d_tile_+0x10465>
  818174:	48 8b 95 e8 f6 ff ff 	mov    -0x918(%rbp),%rdx
  81817b:	45 33 f6             	xor    %r14d,%r14d
  81817e:	48 8b b5 e0 f6 ff ff 	mov    -0x920(%rbp),%rsi
  818185:	4c 8b ad d0 f6 ff ff 	mov    -0x930(%rbp),%r13
  81818c:	4c 8b bd d8 f6 ff ff 	mov    -0x928(%rbp),%r15
  818193:	48 0f af d7          	imul   %rdi,%rdx
  818197:	48 0f af f7          	imul   %rdi,%rsi
  81819b:	4c 0f af ef          	imul   %rdi,%r13
  81819f:	4c 0f af ff          	imul   %rdi,%r15
  8181a3:	4c 8b a5 10 f7 ff ff 	mov    -0x8f0(%rbp),%r12
  8181aa:	48 8b 8d 00 f7 ff ff 	mov    -0x900(%rbp),%rcx
  8181b1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  8181b5:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  8181bc:	4c 03 e6             	add    %rsi,%r12
  8181bf:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  8181c6:	48 03 ca             	add    %rdx,%rcx
  8181c9:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  8181d0:	4c 03 ad 18 f7 ff ff 	add    -0x8e8(%rbp),%r13
  8181d7:	48 03 b5 08 f7 ff ff 	add    -0x8f8(%rbp),%rsi
  8181de:	48 03 95 f8 f6 ff ff 	add    -0x908(%rbp),%rdx
  8181e5:	4c 03 bd f0 f6 ff ff 	add    -0x910(%rbp),%r15
  8181ec:	4c 8b 8d 50 fe ff ff 	mov    -0x1b0(%rbp),%r9
  8181f3:	4c 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%r10
  8181fa:	4c 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%r11
  818201:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  818208:	49 89 c0             	mov    %rax,%r8
  81820b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  818210:	c4 01 75 59 2c f7    	vmulpd (%r15,%r14,8),%ymm1,%ymm13
  818216:	c4 21 7d 10 34 f2    	vmovupd (%rdx,%r14,8),%ymm14
  81821c:	c4 01 7d 11 2c f2    	vmovupd %ymm13,(%r10,%r14,8)
  818222:	c4 21 7d 10 2c f6    	vmovupd (%rsi,%r14,8),%ymm13
  818228:	c4 21 0d 58 7c f1 f8 	vaddpd -0x8(%rcx,%r14,8),%ymm14,%ymm15
  81822f:	c4 41 7d 59 f7       	vmulpd %ymm15,%ymm0,%ymm14
  818234:	c4 01 15 58 7c f4 f8 	vaddpd -0x8(%r12,%r14,8),%ymm13,%ymm15
  81823b:	c4 41 0d 59 ef       	vmulpd %ymm15,%ymm14,%ymm13
  818240:	c4 01 75 59 74 f5 00 	vmulpd 0x0(%r13,%r14,8),%ymm1,%ymm14
  818247:	c4 01 7d 11 2c f3    	vmovupd %ymm13,(%r11,%r14,8)
  81824d:	c4 01 7d 11 34 f1    	vmovupd %ymm14,(%r9,%r14,8)
  818253:	49 83 c6 04          	add    $0x4,%r14
  818257:	4d 3b f0             	cmp    %r8,%r14
  81825a:	72 b4                	jb     818210 <pre_step3d_mod_mp_pre_step3d_tile_+0x3d70>
  81825c:	44 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%r8d
  818263:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  81826a:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  818271:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  818278:	48 3b 45 c0          	cmp    -0x40(%rbp),%rax
  81827c:	0f 83 95 05 00 00    	jae    818817 <pre_step3d_mod_mp_pre_step3d_tile_+0x4377>
  818282:	4c 8b ad e8 f6 ff ff 	mov    -0x918(%rbp),%r13
  818289:	48 8b 8d e0 f6 ff ff 	mov    -0x920(%rbp),%rcx
  818290:	4c 8b a5 d0 f6 ff ff 	mov    -0x930(%rbp),%r12
  818297:	4c 8b b5 d8 f6 ff ff 	mov    -0x928(%rbp),%r14
  81829e:	4c 0f af ef          	imul   %rdi,%r13
  8182a2:	48 0f af cf          	imul   %rdi,%rcx
  8182a6:	4c 0f af e7          	imul   %rdi,%r12
  8182aa:	4c 0f af f7          	imul   %rdi,%r14
  8182ae:	48 8b b5 10 f7 ff ff 	mov    -0x8f0(%rbp),%rsi
  8182b5:	48 8b 95 00 f7 ff ff 	mov    -0x900(%rbp),%rdx
  8182bc:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  8182c3:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  8182ca:	48 03 f1             	add    %rcx,%rsi
  8182cd:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  8182d4:	49 03 d5             	add    %r13,%rdx
  8182d7:	4c 03 a5 18 f7 ff ff 	add    -0x8e8(%rbp),%r12
  8182de:	48 03 8d 08 f7 ff ff 	add    -0x8f8(%rbp),%rcx
  8182e5:	4c 03 ad f8 f6 ff ff 	add    -0x908(%rbp),%r13
  8182ec:	4c 03 b5 f0 f6 ff ff 	add    -0x910(%rbp),%r14
  8182f3:	4c 8b 8d 50 fe ff ff 	mov    -0x1b0(%rbp),%r9
  8182fa:	4c 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%r10
  818301:	4c 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%r11
  818308:	4c 8b 7d c0          	mov    -0x40(%rbp),%r15
  81830c:	0f 1f 40 00          	nopl   0x0(%rax)
  818310:	c4 41 7b 10 74 c5 00 	vmovsd 0x0(%r13,%rax,8),%xmm14
  818317:	c4 41 43 59 2c c6    	vmulsd (%r14,%rax,8),%xmm7,%xmm13
  81831d:	c5 0b 58 7c c2 f8    	vaddsd -0x8(%rdx,%rax,8),%xmm14,%xmm15
  818323:	c4 41 7b 11 2c c2    	vmovsd %xmm13,(%r10,%rax,8)
  818329:	c5 7b 10 2c c1       	vmovsd (%rcx,%rax,8),%xmm13
  81832e:	c4 41 33 59 f7       	vmulsd %xmm15,%xmm9,%xmm14
  818333:	c5 13 58 7c c6 f8    	vaddsd -0x8(%rsi,%rax,8),%xmm13,%xmm15
  818339:	c4 41 0b 59 ef       	vmulsd %xmm15,%xmm14,%xmm13
  81833e:	c4 41 43 59 34 c4    	vmulsd (%r12,%rax,8),%xmm7,%xmm14
  818344:	c4 41 7b 11 2c c3    	vmovsd %xmm13,(%r11,%rax,8)
  81834a:	c4 41 7b 11 34 c1    	vmovsd %xmm14,(%r9,%rax,8)
  818350:	48 ff c0             	inc    %rax
  818353:	49 3b c7             	cmp    %r15,%rax
  818356:	72 b8                	jb     818310 <pre_step3d_mod_mp_pre_step3d_tile_+0x3e70>
  818358:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  81835f:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  818366:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  81836d:	e9 a5 04 00 00       	jmpq   818817 <pre_step3d_mod_mp_pre_step3d_tile_+0x4377>
  818372:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  818379:	48 3b 85 08 ff ff ff 	cmp    -0xf8(%rbp),%rax
  818380:	0f 8c 91 04 00 00    	jl     818817 <pre_step3d_mod_mp_pre_step3d_tile_+0x4377>
  818386:	48 83 7d c0 04       	cmpq   $0x4,-0x40(%rbp)
  81838b:	0f 8c 1b c6 00 00    	jl     8249ac <pre_step3d_mod_mp_pre_step3d_tile_+0x1050c>
  818391:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
  818395:	45 33 e4             	xor    %r12d,%r12d
  818398:	48 89 95 f8 f8 ff ff 	mov    %rdx,-0x708(%rbp)
  81839f:	48 8b 95 d8 f6 ff ff 	mov    -0x928(%rbp),%rdx
  8183a6:	48 0f af d7          	imul   %rdi,%rdx
  8183aa:	4c 8b b5 e8 f6 ff ff 	mov    -0x918(%rbp),%r14
  8183b1:	4c 0f af f7          	imul   %rdi,%r14
  8183b5:	4c 8b ad e0 f6 ff ff 	mov    -0x920(%rbp),%r13
  8183bc:	4c 0f af ef          	imul   %rdi,%r13
  8183c0:	48 8b 85 c8 f6 ff ff 	mov    -0x938(%rbp),%rax
  8183c7:	48 8b b5 38 f7 ff ff 	mov    -0x8c8(%rbp),%rsi
  8183ce:	4c 8b bd d0 f6 ff ff 	mov    -0x930(%rbp),%r15
  8183d5:	4c 0f af ff          	imul   %rdi,%r15
  8183d9:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  8183e0:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
  8183e4:	48 89 8d b8 fe ff ff 	mov    %rcx,-0x148(%rbp)
  8183eb:	4a 8d 04 36          	lea    (%rsi,%r14,1),%rax
  8183ef:	48 8b 8d 58 f7 ff ff 	mov    -0x8a8(%rbp),%rcx
  8183f6:	48 89 85 c0 fe ff ff 	mov    %rax,-0x140(%rbp)
  8183fd:	48 8b 85 50 f7 ff ff 	mov    -0x8b0(%rbp),%rax
  818404:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  81840b:	4a 8d 34 31          	lea    (%rcx,%r14,1),%rsi
  81840f:	48 89 b5 d0 fe ff ff 	mov    %rsi,-0x130(%rbp)
  818416:	48 8b b5 30 f7 ff ff 	mov    -0x8d0(%rbp),%rsi
  81841d:	4a 8d 0c 30          	lea    (%rax,%r14,1),%rcx
  818421:	48 89 8d d8 fe ff ff 	mov    %rcx,-0x128(%rbp)
  818428:	48 8b 8d 48 f7 ff ff 	mov    -0x8b8(%rbp),%rcx
  81842f:	4c 03 b5 28 f7 ff ff 	add    -0x8d8(%rbp),%r14
  818436:	4a 8d 04 2e          	lea    (%rsi,%r13,1),%rax
  81843a:	48 89 85 c8 fe ff ff 	mov    %rax,-0x138(%rbp)
  818441:	48 8b 85 40 f7 ff ff 	mov    -0x8c0(%rbp),%rax
  818448:	4a 8d 34 29          	lea    (%rcx,%r13,1),%rsi
  81844c:	48 89 b5 b0 fe ff ff 	mov    %rsi,-0x150(%rbp)
  818453:	48 8b b5 c0 f6 ff ff 	mov    -0x940(%rbp),%rsi
  81845a:	4c 89 b5 98 fe ff ff 	mov    %r14,-0x168(%rbp)
  818461:	4a 8d 0c 28          	lea    (%rax,%r13,1),%rcx
  818465:	48 89 8d a8 fe ff ff 	mov    %rcx,-0x158(%rbp)
  81846c:	33 c9                	xor    %ecx,%ecx
  81846e:	4c 03 ad 20 f7 ff ff 	add    -0x8e0(%rbp),%r13
  818475:	4a 8d 04 3e          	lea    (%rsi,%r15,1),%rax
  818479:	33 f6                	xor    %esi,%esi
  81847b:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
  818482:	33 c0                	xor    %eax,%eax
  818484:	4c 03 bd 68 f7 ff ff 	add    -0x898(%rbp),%r15
  81848b:	4c 89 ad 88 fe ff ff 	mov    %r13,-0x178(%rbp)
  818492:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  818499:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  8184a0:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  8184a7:	48 03 95 60 f7 ff ff 	add    -0x8a0(%rbp),%rdx
  8184ae:	49 89 c6             	mov    %rax,%r14
  8184b1:	48 8b bd 60 fe ff ff 	mov    -0x1a0(%rbp),%rdi
  8184b8:	4c 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%r8
  8184bf:	4c 8b 8d 68 fe ff ff 	mov    -0x198(%rbp),%r9
  8184c6:	4c 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%r10
  8184cd:	4c 8b 9d 80 fe ff ff 	mov    -0x180(%rbp),%r11
  8184d4:	4c 8b ad 78 fe ff ff 	mov    -0x188(%rbp),%r13
  8184db:	4c 89 bd 90 fe ff ff 	mov    %r15,-0x170(%rbp)
  8184e2:	4c 8b bd b8 fe ff ff 	mov    -0x148(%rbp),%r15
  8184e9:	4c 03 f9             	add    %rcx,%r15
  8184ec:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  8184f1:	c4 01 11 16 3c 17    	vmovhpd (%r15,%r10,1),%xmm13,%xmm15
  8184f7:	c4 41 29 59 f7       	vmulpd %xmm15,%xmm10,%xmm14
  8184fc:	4c 8b bd d0 fe ff ff 	mov    -0x130(%rbp),%r15
  818503:	c4 21 79 11 34 e7    	vmovupd %xmm14,(%rdi,%r12,8)
  818509:	4c 03 fe             	add    %rsi,%r15
  81850c:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  818511:	c4 01 11 16 34 2f    	vmovhpd (%r15,%r13,1),%xmm13,%xmm14
  818517:	4c 8b bd d8 fe ff ff 	mov    -0x128(%rbp),%r15
  81851e:	4c 03 fe             	add    %rsi,%r15
  818521:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  818526:	c4 01 01 16 2c 2f    	vmovhpd (%r15,%r13,1),%xmm15,%xmm13
  81852c:	c4 41 09 58 fd       	vaddpd %xmm13,%xmm14,%xmm15
  818531:	4c 8b bd b0 fe ff ff 	mov    -0x150(%rbp),%r15
  818538:	c4 41 21 59 f7       	vmulpd %xmm15,%xmm11,%xmm14
  81853d:	4c 03 f8             	add    %rax,%r15
  818540:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  818545:	c4 01 11 16 3c 1f    	vmovhpd (%r15,%r11,1),%xmm13,%xmm15
  81854b:	4c 8b bd a8 fe ff ff 	mov    -0x158(%rbp),%r15
  818552:	4c 03 f8             	add    %rax,%r15
  818555:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81855a:	c4 01 11 16 2c 1f    	vmovhpd (%r15,%r11,1),%xmm13,%xmm13
  818560:	c4 41 01 58 fd       	vaddpd %xmm13,%xmm15,%xmm15
  818565:	c4 41 09 59 f7       	vmulpd %xmm15,%xmm14,%xmm14
  81856a:	4c 8b bd a0 fe ff ff 	mov    -0x160(%rbp),%r15
  818571:	c4 01 79 11 34 e0    	vmovupd %xmm14,(%r8,%r12,8)
  818577:	4d 03 fe             	add    %r14,%r15
  81857a:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  81857f:	c4 01 09 16 2c 0f    	vmovhpd (%r15,%r9,1),%xmm14,%xmm13
  818585:	c4 41 29 59 fd       	vmulpd %xmm13,%xmm10,%xmm15
  81858a:	4c 8b bd 50 fe ff ff 	mov    -0x1b0(%rbp),%r15
  818591:	c4 01 79 11 3c e7    	vmovupd %xmm15,(%r15,%r12,8)
  818597:	4c 8d 3c 0a          	lea    (%rdx,%rcx,1),%r15
  81859b:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  8185a0:	4a 8d 0c 91          	lea    (%rcx,%r10,4),%rcx
  8185a4:	c4 01 09 16 2c 17    	vmovhpd (%r15,%r10,1),%xmm14,%xmm13
  8185aa:	c4 41 29 59 fd       	vmulpd %xmm13,%xmm10,%xmm15
  8185af:	4c 8b bd 98 fe ff ff 	mov    -0x168(%rbp),%r15
  8185b6:	c4 21 79 11 7c e7 10 	vmovupd %xmm15,0x10(%rdi,%r12,8)
  8185bd:	4c 03 fe             	add    %rsi,%r15
  8185c0:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  8185c5:	c4 01 09 16 3c 2f    	vmovhpd (%r15,%r13,1),%xmm14,%xmm15
  8185cb:	4c 8b bd c0 fe ff ff 	mov    -0x140(%rbp),%r15
  8185d2:	4c 03 fe             	add    %rsi,%r15
  8185d5:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  8185da:	4a 8d 34 ae          	lea    (%rsi,%r13,4),%rsi
  8185de:	c4 01 11 16 34 2f    	vmovhpd (%r15,%r13,1),%xmm13,%xmm14
  8185e4:	c4 41 01 58 ee       	vaddpd %xmm14,%xmm15,%xmm13
  8185e9:	4c 8b bd 88 fe ff ff 	mov    -0x178(%rbp),%r15
  8185f0:	c4 41 21 59 f5       	vmulpd %xmm13,%xmm11,%xmm14
  8185f5:	4c 03 f8             	add    %rax,%r15
  8185f8:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  8185fd:	c4 01 01 16 2c 1f    	vmovhpd (%r15,%r11,1),%xmm15,%xmm13
  818603:	4c 8b bd c8 fe ff ff 	mov    -0x138(%rbp),%r15
  81860a:	4c 03 f8             	add    %rax,%r15
  81860d:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  818612:	4a 8d 04 98          	lea    (%rax,%r11,4),%rax
  818616:	c4 01 01 16 3c 1f    	vmovhpd (%r15,%r11,1),%xmm15,%xmm15
  81861c:	c4 41 11 58 ef       	vaddpd %xmm15,%xmm13,%xmm13
  818621:	c4 41 09 59 f5       	vmulpd %xmm13,%xmm14,%xmm14
  818626:	90                   	nop
  818627:	4c 8b bd 90 fe ff ff 	mov    -0x170(%rbp),%r15
  81862e:	c4 01 79 11 74 e0 10 	vmovupd %xmm14,0x10(%r8,%r12,8)
  818635:	4d 03 fe             	add    %r14,%r15
  818638:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81863d:	4f 8d 34 8e          	lea    (%r14,%r9,4),%r14
  818641:	c4 01 11 16 34 0f    	vmovhpd (%r15,%r9,1),%xmm13,%xmm14
  818647:	c4 41 29 59 fe       	vmulpd %xmm14,%xmm10,%xmm15
  81864c:	4c 8b bd 58 fe ff ff 	mov    -0x1a8(%rbp),%r15
  818653:	c4 01 79 11 7c e7 10 	vmovupd %xmm15,0x10(%r15,%r12,8)
  81865a:	49 83 c4 04          	add    $0x4,%r12
  81865e:	4c 3b 65 a0          	cmp    -0x60(%rbp),%r12
  818662:	0f 82 7a fe ff ff    	jb     8184e2 <pre_step3d_mod_mp_pre_step3d_tile_+0x4042>
  818668:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  81866f:	44 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%r8d
  818676:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  81867d:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  818684:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  81868b:	48 8b 85 f8 f8 ff ff 	mov    -0x708(%rbp),%rax
  818692:	4c 8b ad 80 fe ff ff 	mov    -0x180(%rbp),%r13
  818699:	4c 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%r15
  8186a0:	4c 8b a5 68 fe ff ff 	mov    -0x198(%rbp),%r12
  8186a7:	48 8b b5 70 fe ff ff 	mov    -0x190(%rbp),%rsi
  8186ae:	4c 0f af e8          	imul   %rax,%r13
  8186b2:	4c 0f af f8          	imul   %rax,%r15
  8186b6:	4c 0f af e0          	imul   %rax,%r12
  8186ba:	48 0f af f0          	imul   %rax,%rsi
  8186be:	48 3b 45 c0          	cmp    -0x40(%rbp),%rax
  8186c2:	0f 83 4f 01 00 00    	jae    818817 <pre_step3d_mod_mp_pre_step3d_tile_+0x4377>
  8186c8:	48 8b 95 e8 f6 ff ff 	mov    -0x918(%rbp),%rdx
  8186cf:	48 0f af d7          	imul   %rdi,%rdx
  8186d3:	4c 8b b5 e0 f6 ff ff 	mov    -0x920(%rbp),%r14
  8186da:	4c 0f af f7          	imul   %rdi,%r14
  8186de:	48 8b 85 58 f7 ff ff 	mov    -0x8a8(%rbp),%rax
  8186e5:	48 8b 8d d8 f6 ff ff 	mov    -0x928(%rbp),%rcx
  8186ec:	48 0f af cf          	imul   %rdi,%rcx
  8186f0:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  8186f7:	48 03 c2             	add    %rdx,%rax
  8186fa:	48 89 85 70 f7 ff ff 	mov    %rax,-0x890(%rbp)
  818701:	48 8b 85 48 f7 ff ff 	mov    -0x8b8(%rbp),%rax
  818708:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  81870f:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  818716:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  81871d:	49 03 c6             	add    %r14,%rax
  818720:	48 89 85 78 f7 ff ff 	mov    %rax,-0x888(%rbp)
  818727:	48 8b 85 d0 f6 ff ff 	mov    -0x930(%rbp),%rax
  81872e:	48 0f af c7          	imul   %rdi,%rax
  818732:	48 03 8d c8 f6 ff ff 	add    -0x938(%rbp),%rcx
  818739:	48 03 95 50 f7 ff ff 	add    -0x8b0(%rbp),%rdx
  818740:	4c 03 b5 40 f7 ff ff 	add    -0x8c0(%rbp),%r14
  818747:	48 03 85 c0 f6 ff ff 	add    -0x940(%rbp),%rax
  81874e:	48 8b bd 78 f7 ff ff 	mov    -0x888(%rbp),%rdi
  818755:	4c 8b 85 70 f7 ff ff 	mov    -0x890(%rbp),%r8
  81875c:	4c 8b 8d f8 f8 ff ff 	mov    -0x708(%rbp),%r9
  818763:	4c 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%r10
  81876a:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  818771:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  818778:	00 
  818779:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  818780:	c4 01 7b 10 34 07    	vmovsd (%r15,%r8,1),%xmm14
  818786:	c5 43 59 2c 0e       	vmulsd (%rsi,%rcx,1),%xmm7,%xmm13
  81878b:	c4 41 0b 58 3c 17    	vaddsd (%r15,%rdx,1),%xmm14,%xmm15
  818791:	4c 8b 9d 60 fe ff ff 	mov    -0x1a0(%rbp),%r11
  818798:	c4 41 33 59 f7       	vmulsd %xmm15,%xmm9,%xmm14
  81879d:	c4 01 7b 11 2c cb    	vmovsd %xmm13,(%r11,%r9,8)
  8187a3:	c4 41 7b 10 6c 3d 00 	vmovsd 0x0(%r13,%rdi,1),%xmm13
  8187aa:	4c 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%r11
  8187b1:	48 03 b5 70 fe ff ff 	add    -0x190(%rbp),%rsi
  8187b8:	4c 03 bd 78 fe ff ff 	add    -0x188(%rbp),%r15
  8187bf:	c4 01 13 58 7c 35 00 	vaddsd 0x0(%r13,%r14,1),%xmm13,%xmm15
  8187c6:	c4 41 0b 59 ef       	vmulsd %xmm15,%xmm14,%xmm13
  8187cb:	c4 41 43 59 34 04    	vmulsd (%r12,%rax,1),%xmm7,%xmm14
  8187d1:	c4 01 7b 11 2c cb    	vmovsd %xmm13,(%r11,%r9,8)
  8187d7:	c4 01 7b 11 34 ca    	vmovsd %xmm14,(%r10,%r9,8)
  8187dd:	49 ff c1             	inc    %r9
  8187e0:	4c 03 ad 80 fe ff ff 	add    -0x180(%rbp),%r13
  8187e7:	4c 03 a5 68 fe ff ff 	add    -0x198(%rbp),%r12
  8187ee:	4c 3b 4d c0          	cmp    -0x40(%rbp),%r9
  8187f2:	72 8c                	jb     818780 <pre_step3d_mod_mp_pre_step3d_tile_+0x42e0>
  8187f4:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  8187fb:	44 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%r8d
  818802:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  818809:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  818810:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  818817:	8b 85 e8 fb ff ff    	mov    -0x418(%rbp),%eax
  81881d:	3b 85 e0 fb ff ff    	cmp    -0x420(%rbp),%eax
  818823:	0f 85 21 06 00 00    	jne    818e4a <pre_step3d_mod_mp_pre_step3d_tile_+0x49aa>
  818829:	48 83 7d c8 08       	cmpq   $0x8,-0x38(%rbp)
  81882e:	0f 85 0d 02 00 00    	jne    818a41 <pre_step3d_mod_mp_pre_step3d_tile_+0x45a1>
  818834:	48 83 bd 58 ff ff ff 	cmpq   $0x8,-0xa8(%rbp)
  81883b:	08 
  81883c:	0f 85 ff 01 00 00    	jne    818a41 <pre_step3d_mod_mp_pre_step3d_tile_+0x45a1>
  818842:	45 33 e4             	xor    %r12d,%r12d
  818845:	33 f6                	xor    %esi,%esi
  818847:	33 c9                	xor    %ecx,%ecx
  818849:	45 33 ed             	xor    %r13d,%r13d
  81884c:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  818853:	00 
  818854:	0f 8e 03 15 00 00    	jle    819d5d <pre_step3d_mod_mp_pre_step3d_tile_+0x58bd>
  81885a:	48 8b 95 f8 fb ff ff 	mov    -0x408(%rbp),%rdx
  818861:	4c 8b b5 58 f6 ff ff 	mov    -0x9a8(%rbp),%r14
  818868:	48 0f af d7          	imul   %rdi,%rdx
  81886c:	4c 0f af f7          	imul   %rdi,%r14
  818870:	c5 7d 10 25 e8 c8 0a 	vmovupd 0xac8e8(%rip),%ymm12        # 8c5160 <var$630.126.450+0x4a0>
  818877:	00 
  818878:	4c 8b bd 48 f6 ff ff 	mov    -0x9b8(%rbp),%r15
  81887f:	48 8b 85 60 f6 ff ff 	mov    -0x9a0(%rbp),%rax
  818886:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  81888d:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  818894:	4c 03 fa             	add    %rdx,%r15
  818897:	48 03 95 98 f8 ff ff 	add    -0x768(%rbp),%rdx
  81889e:	49 03 c6             	add    %r14,%rax
  8188a1:	4c 03 b5 90 f6 ff ff 	add    -0x970(%rbp),%r14
  8188a8:	48 89 95 38 fc ff ff 	mov    %rdx,-0x3c8(%rbp)
  8188af:	4c 89 b5 30 fc ff ff 	mov    %r14,-0x3d0(%rbp)
  8188b6:	4c 89 bd 40 fc ff ff 	mov    %r15,-0x3c0(%rbp)
  8188bd:	48 89 85 48 fc ff ff 	mov    %rax,-0x3b8(%rbp)
  8188c4:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  8188cb:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  8188d2:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  8188d9:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  8188dd:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  8188e4:	48 3b 85 08 ff ff ff 	cmp    -0xf8(%rbp),%rax
  8188eb:	0f 8c fb 00 00 00    	jl     8189ec <pre_step3d_mod_mp_pre_step3d_tile_+0x454c>
  8188f1:	48 83 fa 04          	cmp    $0x4,%rdx
  8188f5:	0f 8c 11 c0 00 00    	jl     82490c <pre_step3d_mod_mp_pre_step3d_tile_+0x1046c>
  8188fb:	4c 8b 9d 60 fe ff ff 	mov    -0x1a0(%rbp),%r11
  818902:	45 33 f6             	xor    %r14d,%r14d
  818905:	4c 8b 95 28 fc ff ff 	mov    -0x3d8(%rbp),%r10
  81890c:	4c 8b 8d 40 fc ff ff 	mov    -0x3c0(%rbp),%r9
  818913:	4c 8b 85 38 fc ff ff 	mov    -0x3c8(%rbp),%r8
  81891a:	4c 03 de             	add    %rsi,%r11
  81891d:	48 8b bd 30 fc ff ff 	mov    -0x3d0(%rbp),%rdi
  818924:	4c 03 d6             	add    %rsi,%r10
  818927:	4c 8b bd 48 fc ff ff 	mov    -0x3b8(%rbp),%r15
  81892e:	4c 03 c9             	add    %rcx,%r9
  818931:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  818935:	4c 03 c1             	add    %rcx,%r8
  818938:	48 89 c2             	mov    %rax,%rdx
  81893b:	49 03 fd             	add    %r13,%rdi
  81893e:	4d 03 fd             	add    %r13,%r15
  818941:	c4 01 7d 10 3c f7    	vmovupd (%r15,%r14,8),%ymm15
  818947:	c4 01 1d 59 34 f0    	vmulpd (%r8,%r14,8),%ymm12,%ymm14
  81894d:	c4 21 05 58 6c f7 f8 	vaddpd -0x8(%rdi,%r14,8),%ymm15,%ymm13
  818954:	c4 01 7d 10 7c f2 08 	vmovupd 0x8(%r10,%r14,8),%ymm15
  81895b:	c4 01 05 5c 3c f3    	vsubpd (%r11,%r14,8),%ymm15,%ymm15
  818961:	c4 42 95 a8 f7       	vfmadd213pd %ymm15,%ymm13,%ymm14
  818966:	c4 01 7d 11 34 f1    	vmovupd %ymm14,(%r9,%r14,8)
  81896c:	49 83 c6 04          	add    $0x4,%r14
  818970:	4c 3b f2             	cmp    %rdx,%r14
  818973:	72 cc                	jb     818941 <pre_step3d_mod_mp_pre_step3d_tile_+0x44a1>
  818975:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  818979:	48 3b c2             	cmp    %rdx,%rax
  81897c:	73 6e                	jae    8189ec <pre_step3d_mod_mp_pre_step3d_tile_+0x454c>
  81897e:	4c 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%r10
  818985:	4c 8b 8d 28 fc ff ff 	mov    -0x3d8(%rbp),%r9
  81898c:	4c 8b 85 40 fc ff ff 	mov    -0x3c0(%rbp),%r8
  818993:	48 8b bd 38 fc ff ff 	mov    -0x3c8(%rbp),%rdi
  81899a:	4c 03 d6             	add    %rsi,%r10
  81899d:	4c 8b b5 30 fc ff ff 	mov    -0x3d0(%rbp),%r14
  8189a4:	4c 03 ce             	add    %rsi,%r9
  8189a7:	4c 8b 9d 48 fc ff ff 	mov    -0x3b8(%rbp),%r11
  8189ae:	4c 03 c1             	add    %rcx,%r8
  8189b1:	48 03 f9             	add    %rcx,%rdi
  8189b4:	4d 03 f5             	add    %r13,%r14
  8189b7:	4d 03 dd             	add    %r13,%r11
  8189ba:	c4 41 7b 10 3c c3    	vmovsd (%r11,%rax,8),%xmm15
  8189c0:	c5 63 59 34 c7       	vmulsd (%rdi,%rax,8),%xmm3,%xmm14
  8189c5:	c4 41 03 58 6c c6 f8 	vaddsd -0x8(%r14,%rax,8),%xmm15,%xmm13
  8189cc:	c4 41 7b 10 7c c1 08 	vmovsd 0x8(%r9,%rax,8),%xmm15
  8189d3:	c4 41 03 5c 3c c2    	vsubsd (%r10,%rax,8),%xmm15,%xmm15
  8189d9:	c4 42 91 a9 f7       	vfmadd213sd %xmm15,%xmm13,%xmm14
  8189de:	c4 41 7b 11 34 c0    	vmovsd %xmm14,(%r8,%rax,8)
  8189e4:	48 ff c0             	inc    %rax
  8189e7:	48 3b c2             	cmp    %rdx,%rax
  8189ea:	72 ce                	jb     8189ba <pre_step3d_mod_mp_pre_step3d_tile_+0x451a>
  8189ec:	49 ff c4             	inc    %r12
  8189ef:	48 03 b5 18 ff ff ff 	add    -0xe8(%rbp),%rsi
  8189f6:	48 03 8d 20 ff ff ff 	add    -0xe0(%rbp),%rcx
  8189fd:	4c 03 ad 10 fd ff ff 	add    -0x2f0(%rbp),%r13
  818a04:	4c 3b a5 08 fd ff ff 	cmp    -0x2f8(%rbp),%r12
  818a0b:	0f 82 cc fe ff ff    	jb     8188dd <pre_step3d_mod_mp_pre_step3d_tile_+0x443d>
  818a11:	c5 7b 10 25 e7 e5 0a 	vmovsd 0xae5e7(%rip),%xmm12        # 8c7000 <__STRLITPACK_199.115+0x70>
  818a18:	00 
  818a19:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  818a20:	44 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%r8d
  818a27:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  818a2e:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  818a35:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  818a3c:	e9 1c 13 00 00       	jmpq   819d5d <pre_step3d_mod_mp_pre_step3d_tile_+0x58bd>
  818a41:	33 c9                	xor    %ecx,%ecx
  818a43:	33 d2                	xor    %edx,%edx
  818a45:	33 f6                	xor    %esi,%esi
  818a47:	33 c0                	xor    %eax,%eax
  818a49:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  818a50:	00 
  818a51:	0f 8e 06 13 00 00    	jle    819d5d <pre_step3d_mod_mp_pre_step3d_tile_+0x58bd>
  818a57:	4c 8b b5 f8 fb ff ff 	mov    -0x408(%rbp),%r14
  818a5e:	4c 0f af f7          	imul   %rdi,%r14
  818a62:	4c 8b ad 58 f6 ff ff 	mov    -0x9a8(%rbp),%r13
  818a69:	4c 0f af ef          	imul   %rdi,%r13
  818a6d:	4c 8b a5 40 f8 ff ff 	mov    -0x7c0(%rbp),%r12
  818a74:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  818a7b:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  818a82:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  818a89:	4f 8d 3c 34          	lea    (%r12,%r14,1),%r15
  818a8d:	4c 89 bd 98 fc ff ff 	mov    %r15,-0x368(%rbp)
  818a94:	4c 8b bd 70 f6 ff ff 	mov    -0x990(%rbp),%r15
  818a9b:	4c 8b a5 50 f6 ff ff 	mov    -0x9b0(%rbp),%r12
  818aa2:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  818aa9:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  818ab0:	4d 03 fd             	add    %r13,%r15
  818ab3:	4c 89 bd a0 fc ff ff 	mov    %r15,-0x360(%rbp)
  818aba:	4d 03 e5             	add    %r13,%r12
  818abd:	4c 8b bd 68 f6 ff ff 	mov    -0x998(%rbp),%r15
  818ac4:	4c 89 a5 68 fc ff ff 	mov    %r12,-0x398(%rbp)
  818acb:	c5 79 10 25 cd dc 0a 	vmovupd 0xadccd(%rip),%xmm12        # 8c67a0 <__STRLITPACK_19.34+0x10>
  818ad2:	00 
  818ad3:	4d 03 fd             	add    %r13,%r15
  818ad6:	4c 89 bd b0 fc ff ff 	mov    %r15,-0x350(%rbp)
  818add:	4c 8b bd 80 f6 ff ff 	mov    -0x980(%rbp),%r15
  818ae4:	4c 03 ad 98 f6 ff ff 	add    -0x968(%rbp),%r13
  818aeb:	4c 89 ad 60 fc ff ff 	mov    %r13,-0x3a0(%rbp)
  818af2:	4c 8b 6d c8          	mov    -0x38(%rbp),%r13
  818af6:	4d 03 fe             	add    %r14,%r15
  818af9:	4c 89 bd a8 fc ff ff 	mov    %r15,-0x358(%rbp)
  818b00:	4c 8b bd 78 f6 ff ff 	mov    -0x988(%rbp),%r15
  818b07:	4d 03 fe             	add    %r14,%r15
  818b0a:	4c 03 b5 88 f6 ff ff 	add    -0x978(%rbp),%r14
  818b11:	4c 89 bd 58 fc ff ff 	mov    %r15,-0x3a8(%rbp)
  818b18:	4c 89 b5 50 fc ff ff 	mov    %r14,-0x3b0(%rbp)
  818b1f:	4c 8b 7d c0          	mov    -0x40(%rbp),%r15
  818b23:	48 8b bd 00 ff ff ff 	mov    -0x100(%rbp),%rdi
  818b2a:	48 3b bd 08 ff ff ff 	cmp    -0xf8(%rbp),%rdi
  818b31:	0f 8c be 02 00 00    	jl     818df5 <pre_step3d_mod_mp_pre_step3d_tile_+0x4955>
  818b37:	4d 85 ed             	test   %r13,%r13
  818b3a:	0f 84 d3 bd 00 00    	je     824913 <pre_step3d_mod_mp_pre_step3d_tile_+0x10473>
  818b40:	49 83 ff 04          	cmp    $0x4,%r15
  818b44:	0f 8c c9 bd 00 00    	jl     824913 <pre_step3d_mod_mp_pre_step3d_tile_+0x10473>
  818b4a:	48 8b bd 68 fc ff ff 	mov    -0x398(%rbp),%rdi
  818b51:	45 33 db             	xor    %r11d,%r11d
  818b54:	4c 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%r10
  818b5b:	4c 8b 8d 28 fc ff ff 	mov    -0x3d8(%rbp),%r9
  818b62:	4c 8b 85 a8 fc ff ff 	mov    -0x358(%rbp),%r8
  818b69:	48 03 f8             	add    %rax,%rdi
  818b6c:	48 89 bd 80 fc ff ff 	mov    %rdi,-0x380(%rbp)
  818b73:	4c 03 d2             	add    %rdx,%r10
  818b76:	48 8b bd 60 fc ff ff 	mov    -0x3a0(%rbp),%rdi
  818b7d:	4c 03 ca             	add    %rdx,%r9
  818b80:	4c 8b a5 98 fc ff ff 	mov    -0x368(%rbp),%r12
  818b87:	4c 03 c6             	add    %rsi,%r8
  818b8a:	4c 8b 75 a0          	mov    -0x60(%rbp),%r14
  818b8e:	4c 89 b5 b8 fc ff ff 	mov    %r14,-0x348(%rbp)
  818b95:	48 03 f8             	add    %rax,%rdi
  818b98:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  818b9c:	4c 03 e6             	add    %rsi,%r12
  818b9f:	48 8b bd b0 fc ff ff 	mov    -0x350(%rbp),%rdi
  818ba6:	48 89 85 c0 fc ff ff 	mov    %rax,-0x340(%rbp)
  818bad:	48 89 b5 c8 fc ff ff 	mov    %rsi,-0x338(%rbp)
  818bb4:	48 89 95 d0 fc ff ff 	mov    %rdx,-0x330(%rbp)
  818bbb:	48 03 f8             	add    %rax,%rdi
  818bbe:	48 89 7d b0          	mov    %rdi,-0x50(%rbp)
  818bc2:	48 8b bd a0 fc ff ff 	mov    -0x360(%rbp),%rdi
  818bc9:	48 89 8d d8 fc ff ff 	mov    %rcx,-0x328(%rbp)
  818bd0:	48 8b 8d 80 fc ff ff 	mov    -0x380(%rbp),%rcx
  818bd7:	48 03 f8             	add    %rax,%rdi
  818bda:	48 89 bd 78 fc ff ff 	mov    %rdi,-0x388(%rbp)
  818be1:	48 8b bd 58 fc ff ff 	mov    -0x3a8(%rbp),%rdi
  818be8:	48 8b 95 78 fc ff ff 	mov    -0x388(%rbp),%rdx
  818bef:	48 03 fe             	add    %rsi,%rdi
  818bf2:	48 89 bd 70 fc ff ff 	mov    %rdi,-0x390(%rbp)
  818bf9:	48 8b bd 50 fc ff ff 	mov    -0x3b0(%rbp),%rdi
  818c00:	48 8b 85 70 fc ff ff 	mov    -0x390(%rbp),%rax
  818c07:	48 03 fe             	add    %rsi,%rdi
  818c0a:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
  818c0e:	33 ff                	xor    %edi,%edi
  818c10:	49 89 fe             	mov    %rdi,%r14
  818c13:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  818c1a:	4d 8d 3c 3c          	lea    (%r12,%rdi,1),%r15
  818c1e:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  818c23:	c4 01 01 16 2c 2f    	vmovhpd (%r15,%r13,1),%xmm15,%xmm13
  818c29:	4e 8d 3c 32          	lea    (%rdx,%r14,1),%r15
  818c2d:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  818c32:	c4 41 11 59 f4       	vmulpd %xmm12,%xmm13,%xmm14
  818c37:	c4 41 01 16 2c 37    	vmovhpd (%r15,%rsi,1),%xmm15,%xmm13
  818c3d:	4c 8b 7d b0          	mov    -0x50(%rbp),%r15
  818c41:	4d 03 fe             	add    %r14,%r15
  818c44:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  818c49:	c4 41 01 16 3c 37    	vmovhpd (%r15,%rsi,1),%xmm15,%xmm15
  818c4f:	4e 8d 3c 07          	lea    (%rdi,%r8,1),%r15
  818c53:	c4 41 11 58 ff       	vaddpd %xmm15,%xmm13,%xmm15
  818c58:	c4 01 79 10 6c d9 08 	vmovupd 0x8(%r9,%r11,8),%xmm13
  818c5f:	c4 01 11 5c 2c da    	vsubpd (%r10,%r11,8),%xmm13,%xmm13
  818c65:	c4 42 81 a8 f5       	vfmadd213pd %xmm13,%xmm15,%xmm14
  818c6a:	c4 41 7b 11 37       	vmovsd %xmm14,(%r15)
  818c6f:	c4 01 79 17 74 3d 00 	vmovhpd %xmm14,0x0(%r13,%r15,1)
  818c76:	4c 8b 7d a8          	mov    -0x58(%rbp),%r15
  818c7a:	4c 03 ff             	add    %rdi,%r15
  818c7d:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  818c82:	c4 01 09 16 3c 2f    	vmovhpd (%r15,%r13,1),%xmm14,%xmm15
  818c88:	4c 8b 7d b8          	mov    -0x48(%rbp),%r15
  818c8c:	c4 41 01 59 fc       	vmulpd %xmm12,%xmm15,%xmm15
  818c91:	4d 03 fe             	add    %r14,%r15
  818c94:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  818c99:	c4 41 11 16 34 37    	vmovhpd (%r15,%rsi,1),%xmm13,%xmm14
  818c9f:	4e 8d 3c 31          	lea    (%rcx,%r14,1),%r15
  818ca3:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  818ca8:	4d 8d 34 b6          	lea    (%r14,%rsi,4),%r14
  818cac:	c4 41 11 16 2c 37    	vmovhpd (%r15,%rsi,1),%xmm13,%xmm13
  818cb2:	4c 8d 3c 07          	lea    (%rdi,%rax,1),%r15
  818cb6:	c4 41 09 58 ed       	vaddpd %xmm13,%xmm14,%xmm13
  818cbb:	c4 01 79 10 74 d9 18 	vmovupd 0x18(%r9,%r11,8),%xmm14
  818cc2:	c4 01 09 5c 74 da 10 	vsubpd 0x10(%r10,%r11,8),%xmm14,%xmm14
  818cc9:	c4 42 91 a8 fe       	vfmadd213pd %xmm14,%xmm13,%xmm15
  818cce:	49 83 c3 04          	add    $0x4,%r11
  818cd2:	c4 41 7b 11 3f       	vmovsd %xmm15,(%r15)
  818cd7:	c4 01 79 17 7c 3d 00 	vmovhpd %xmm15,0x0(%r13,%r15,1)
  818cde:	4a 8d 3c af          	lea    (%rdi,%r13,4),%rdi
  818ce2:	4c 3b 5d a0          	cmp    -0x60(%rbp),%r11
  818ce6:	0f 82 2e ff ff ff    	jb     818c1a <pre_step3d_mod_mp_pre_step3d_tile_+0x477a>
  818cec:	4c 8b b5 b8 fc ff ff 	mov    -0x348(%rbp),%r14
  818cf3:	48 8b 85 c0 fc ff ff 	mov    -0x340(%rbp),%rax
  818cfa:	48 8b b5 c8 fc ff ff 	mov    -0x338(%rbp),%rsi
  818d01:	48 8b 95 d0 fc ff ff 	mov    -0x330(%rbp),%rdx
  818d08:	48 8b 8d d8 fc ff ff 	mov    -0x328(%rbp),%rcx
  818d0f:	4c 8b 7d c0          	mov    -0x40(%rbp),%r15
  818d13:	4d 89 e9             	mov    %r13,%r9
  818d16:	4c 8b 9d 58 ff ff ff 	mov    -0xa8(%rbp),%r11
  818d1d:	4d 0f af de          	imul   %r14,%r11
  818d21:	4d 0f af ce          	imul   %r14,%r9
  818d25:	4d 3b f7             	cmp    %r15,%r14
  818d28:	0f 83 c7 00 00 00    	jae    818df5 <pre_step3d_mod_mp_pre_step3d_tile_+0x4955>
  818d2e:	4c 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%r8
  818d35:	4c 8b a5 a8 fc ff ff 	mov    -0x358(%rbp),%r12
  818d3c:	4c 8b 95 28 fc ff ff 	mov    -0x3d8(%rbp),%r10
  818d43:	48 89 b5 c8 fc ff ff 	mov    %rsi,-0x338(%rbp)
  818d4a:	49 8d 3c 10          	lea    (%r8,%rdx,1),%rdi
  818d4e:	48 89 bd 90 fc ff ff 	mov    %rdi,-0x370(%rbp)
  818d55:	49 8d 3c 34          	lea    (%r12,%rsi,1),%rdi
  818d59:	4c 8b a5 b0 fc ff ff 	mov    -0x350(%rbp),%r12
  818d60:	4d 8d 04 12          	lea    (%r10,%rdx,1),%r8
  818d64:	4c 8b 95 98 fc ff ff 	mov    -0x368(%rbp),%r10
  818d6b:	48 89 95 d0 fc ff ff 	mov    %rdx,-0x330(%rbp)
  818d72:	48 89 8d d8 fc ff ff 	mov    %rcx,-0x328(%rbp)
  818d79:	4c 03 e0             	add    %rax,%r12
  818d7c:	4c 89 a5 88 fc ff ff 	mov    %r12,-0x378(%rbp)
  818d83:	4c 03 d6             	add    %rsi,%r10
  818d86:	4c 8b a5 a0 fc ff ff 	mov    -0x360(%rbp),%r12
  818d8d:	48 8b 8d 88 fc ff ff 	mov    -0x378(%rbp),%rcx
  818d94:	48 8b b5 90 fc ff ff 	mov    -0x370(%rbp),%rsi
  818d9b:	4c 03 e0             	add    %rax,%r12
  818d9e:	4c 89 e2             	mov    %r12,%rdx
  818da1:	4c 8b a5 58 ff ff ff 	mov    -0xa8(%rbp),%r12
  818da8:	c4 41 7b 10 3c 13    	vmovsd (%r11,%rdx,1),%xmm15
  818dae:	c4 01 63 59 34 11    	vmulsd (%r9,%r10,1),%xmm3,%xmm14
  818db4:	c4 41 03 58 2c 0b    	vaddsd (%r11,%rcx,1),%xmm15,%xmm13
  818dba:	c4 01 7b 10 7c f0 08 	vmovsd 0x8(%r8,%r14,8),%xmm15
  818dc1:	4d 03 dc             	add    %r12,%r11
  818dc4:	c4 21 03 5c 3c f6    	vsubsd (%rsi,%r14,8),%xmm15,%xmm15
  818dca:	49 ff c6             	inc    %r14
  818dcd:	c4 42 91 a9 f7       	vfmadd213sd %xmm15,%xmm13,%xmm14
  818dd2:	c4 41 7b 11 34 39    	vmovsd %xmm14,(%r9,%rdi,1)
  818dd8:	4d 03 cd             	add    %r13,%r9
  818ddb:	4d 3b f7             	cmp    %r15,%r14
  818dde:	72 c8                	jb     818da8 <pre_step3d_mod_mp_pre_step3d_tile_+0x4908>
  818de0:	48 8b b5 c8 fc ff ff 	mov    -0x338(%rbp),%rsi
  818de7:	48 8b 95 d0 fc ff ff 	mov    -0x330(%rbp),%rdx
  818dee:	48 8b 8d d8 fc ff ff 	mov    -0x328(%rbp),%rcx
  818df5:	48 ff c1             	inc    %rcx
  818df8:	48 03 95 18 ff ff ff 	add    -0xe8(%rbp),%rdx
  818dff:	48 03 b5 20 ff ff ff 	add    -0xe0(%rbp),%rsi
  818e06:	48 03 85 10 fd ff ff 	add    -0x2f0(%rbp),%rax
  818e0d:	48 3b 8d 08 fd ff ff 	cmp    -0x2f8(%rbp),%rcx
  818e14:	0f 82 09 fd ff ff    	jb     818b23 <pre_step3d_mod_mp_pre_step3d_tile_+0x4683>
  818e1a:	c5 7b 10 25 de e1 0a 	vmovsd 0xae1de(%rip),%xmm12        # 8c7000 <__STRLITPACK_199.115+0x70>
  818e21:	00 
  818e22:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  818e29:	44 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%r8d
  818e30:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  818e37:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  818e3e:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  818e45:	e9 13 0f 00 00       	jmpq   819d5d <pre_step3d_mod_mp_pre_step3d_tile_+0x58bd>
  818e4a:	3b 85 f0 f8 ff ff    	cmp    -0x710(%rbp),%eax
  818e50:	0f 85 7d 06 00 00    	jne    8194d3 <pre_step3d_mod_mp_pre_step3d_tile_+0x5033>
  818e56:	48 83 7d c8 08       	cmpq   $0x8,-0x38(%rbp)
  818e5b:	0f 85 ad 02 00 00    	jne    81910e <pre_step3d_mod_mp_pre_step3d_tile_+0x4c6e>
  818e61:	48 83 bd 58 ff ff ff 	cmpq   $0x8,-0xa8(%rbp)
  818e68:	08 
  818e69:	0f 85 9f 02 00 00    	jne    81910e <pre_step3d_mod_mp_pre_step3d_tile_+0x4c6e>
  818e6f:	48 83 bd 50 ff ff ff 	cmpq   $0x8,-0xb0(%rbp)
  818e76:	08 
  818e77:	0f 85 91 02 00 00    	jne    81910e <pre_step3d_mod_mp_pre_step3d_tile_+0x4c6e>
  818e7d:	45 33 e4             	xor    %r12d,%r12d
  818e80:	45 33 ed             	xor    %r13d,%r13d
  818e83:	45 33 f6             	xor    %r14d,%r14d
  818e86:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  818e8d:	00 
  818e8e:	0f 8e c9 0e 00 00    	jle    819d5d <pre_step3d_mod_mp_pre_step3d_tile_+0x58bd>
  818e94:	48 8b b5 98 f8 ff ff 	mov    -0x768(%rbp),%rsi
  818e9b:	48 8b 8d 58 f6 ff ff 	mov    -0x9a8(%rbp),%rcx
  818ea2:	48 0f af cf          	imul   %rdi,%rcx
  818ea6:	c5 7d 10 2d b2 c2 0a 	vmovupd 0xac2b2(%rip),%ymm13        # 8c5160 <var$630.126.450+0x4a0>
  818ead:	00 
  818eae:	48 8b 95 60 f6 ff ff 	mov    -0x9a0(%rbp),%rdx
  818eb5:	4e 8d 3c 1e          	lea    (%rsi,%r11,1),%r15
  818eb9:	48 8b b5 d0 f4 ff ff 	mov    -0xb30(%rbp),%rsi
  818ec0:	48 0f af f7          	imul   %rdi,%rsi
  818ec4:	48 8b 85 48 f6 ff ff 	mov    -0x9b8(%rbp),%rax
  818ecb:	48 03 d1             	add    %rcx,%rdx
  818ece:	48 03 8d 90 f6 ff ff 	add    -0x970(%rbp),%rcx
  818ed5:	48 89 8d 00 f9 ff ff 	mov    %rcx,-0x700(%rbp)
  818edc:	48 89 95 18 f9 ff ff 	mov    %rdx,-0x6e8(%rbp)
  818ee3:	49 03 c3             	add    %r11,%rax
  818ee6:	48 03 b5 e0 f4 ff ff 	add    -0xb20(%rbp),%rsi
  818eed:	4c 89 f2             	mov    %r14,%rdx
  818ef0:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  818ef4:	4c 89 bd 08 f9 ff ff 	mov    %r15,-0x6f8(%rbp)
  818efb:	48 89 85 10 f9 ff ff 	mov    %rax,-0x6f0(%rbp)
  818f02:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  818f09:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  818f10:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  818f17:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  818f1e:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  818f25:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  818f2c:	48 3b 85 08 ff ff ff 	cmp    -0xf8(%rbp),%rax
  818f33:	0f 8c 71 01 00 00    	jl     8190aa <pre_step3d_mod_mp_pre_step3d_tile_+0x4c0a>
  818f39:	48 83 f9 04          	cmp    $0x4,%rcx
  818f3d:	0f 8c d8 b9 00 00    	jl     82491b <pre_step3d_mod_mp_pre_step3d_tile_+0x1047b>
  818f43:	4c 8b bd 18 f9 ff ff 	mov    -0x6e8(%rbp),%r15
  818f4a:	4c 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%r10
  818f51:	4c 8b 8d 28 fc ff ff 	mov    -0x3d8(%rbp),%r9
  818f58:	4c 8b 85 10 f9 ff ff 	mov    -0x6f0(%rbp),%r8
  818f5f:	4c 03 fa             	add    %rdx,%r15
  818f62:	48 8b bd 08 f9 ff ff 	mov    -0x6f8(%rbp),%rdi
  818f69:	4d 03 d5             	add    %r13,%r10
  818f6c:	4c 8b 9d 00 f9 ff ff 	mov    -0x700(%rbp),%r11
  818f73:	4d 03 cd             	add    %r13,%r9
  818f76:	48 c7 85 20 f9 ff ff 	movq   $0x0,-0x6e0(%rbp)
  818f7d:	00 00 00 00 
  818f81:	4d 03 c6             	add    %r14,%r8
  818f84:	49 03 fe             	add    %r14,%rdi
  818f87:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  818f8b:	4c 03 da             	add    %rdx,%r11
  818f8e:	4c 89 a5 10 fa ff ff 	mov    %r12,-0x5f0(%rbp)
  818f95:	4c 89 ad 08 fa ff ff 	mov    %r13,-0x5f8(%rbp)
  818f9c:	49 89 c5             	mov    %rax,%r13
  818f9f:	4c 89 f9             	mov    %r15,%rcx
  818fa2:	4c 8b a5 20 f9 ff ff 	mov    -0x6e0(%rbp),%r12
  818fa9:	4c 8b bd 48 ff ff ff 	mov    -0xb8(%rbp),%r15
  818fb0:	c4 21 7d 10 3c e1    	vmovupd (%rcx,%r12,8),%ymm15
  818fb6:	c4 21 15 59 34 e7    	vmulpd (%rdi,%r12,8),%ymm13,%ymm14
  818fbc:	c4 81 7d 10 6c e1 08 	vmovupd 0x8(%r9,%r12,8),%ymm5
  818fc3:	c4 01 05 58 64 e3 f8 	vaddpd -0x8(%r11,%r12,8),%ymm15,%ymm12
  818fca:	c4 01 15 59 3c e7    	vmulpd (%r15,%r12,8),%ymm13,%ymm15
  818fd0:	c4 81 55 5c 2c e2    	vsubpd (%r10,%r12,8),%ymm5,%ymm5
  818fd6:	c4 21 05 59 3c e6    	vmulpd (%rsi,%r12,8),%ymm15,%ymm15
  818fdc:	c4 42 9d aa f7       	vfmsub213pd %ymm15,%ymm12,%ymm14
  818fe1:	c4 41 55 58 e6       	vaddpd %ymm14,%ymm5,%ymm12
  818fe6:	c4 01 7d 11 24 e0    	vmovupd %ymm12,(%r8,%r12,8)
  818fec:	49 83 c4 04          	add    $0x4,%r12
  818ff0:	4d 3b e5             	cmp    %r13,%r12
  818ff3:	72 bb                	jb     818fb0 <pre_step3d_mod_mp_pre_step3d_tile_+0x4b10>
  818ff5:	4c 8b ad 08 fa ff ff 	mov    -0x5f8(%rbp),%r13
  818ffc:	4c 8b a5 10 fa ff ff 	mov    -0x5f0(%rbp),%r12
  819003:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  819007:	48 3b c1             	cmp    %rcx,%rax
  81900a:	0f 83 9a 00 00 00    	jae    8190aa <pre_step3d_mod_mp_pre_step3d_tile_+0x4c0a>
  819010:	4c 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%r10
  819017:	4c 8b 8d 28 fc ff ff 	mov    -0x3d8(%rbp),%r9
  81901e:	4c 8b 85 10 f9 ff ff 	mov    -0x6f0(%rbp),%r8
  819025:	48 8b bd 08 f9 ff ff 	mov    -0x6f8(%rbp),%rdi
  81902c:	4d 03 d5             	add    %r13,%r10
  81902f:	4c 8b 9d 00 f9 ff ff 	mov    -0x700(%rbp),%r11
  819036:	4d 03 cd             	add    %r13,%r9
  819039:	4c 8b bd 18 f9 ff ff 	mov    -0x6e8(%rbp),%r15
  819040:	4d 03 c6             	add    %r14,%r8
  819043:	4c 89 a5 10 fa ff ff 	mov    %r12,-0x5f0(%rbp)
  81904a:	49 03 fe             	add    %r14,%rdi
  81904d:	4c 8b a5 48 ff ff ff 	mov    -0xb8(%rbp),%r12
  819054:	4c 03 da             	add    %rdx,%r11
  819057:	4c 03 fa             	add    %rdx,%r15
  81905a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  819060:	c4 c1 7b 10 2c c7    	vmovsd (%r15,%rax,8),%xmm5
  819066:	c5 63 59 24 c7       	vmulsd (%rdi,%rax,8),%xmm3,%xmm12
  81906b:	c4 41 53 58 74 c3 f8 	vaddsd -0x8(%r11,%rax,8),%xmm5,%xmm14
  819072:	c4 c1 1b 59 ee       	vmulsd %xmm14,%xmm12,%xmm5
  819077:	c4 41 63 59 24 c4    	vmulsd (%r12,%rax,8),%xmm3,%xmm12
  81907d:	c4 41 7b 10 7c c1 08 	vmovsd 0x8(%r9,%rax,8),%xmm15
  819084:	c4 62 d1 9d 24 c6    	vfnmadd132sd (%rsi,%rax,8),%xmm5,%xmm12
  81908a:	c4 41 03 5c 34 c2    	vsubsd (%r10,%rax,8),%xmm15,%xmm14
  819090:	c4 41 1b 58 fe       	vaddsd %xmm14,%xmm12,%xmm15
  819095:	c4 41 7b 11 3c c0    	vmovsd %xmm15,(%r8,%rax,8)
  81909b:	48 ff c0             	inc    %rax
  81909e:	48 3b c1             	cmp    %rcx,%rax
  8190a1:	72 bd                	jb     819060 <pre_step3d_mod_mp_pre_step3d_tile_+0x4bc0>
  8190a3:	4c 8b a5 10 fa ff ff 	mov    -0x5f0(%rbp),%r12
  8190aa:	49 ff c4             	inc    %r12
  8190ad:	4c 03 ad 18 ff ff ff 	add    -0xe8(%rbp),%r13
  8190b4:	4c 03 b5 20 ff ff ff 	add    -0xe0(%rbp),%r14
  8190bb:	48 03 95 10 fd ff ff 	add    -0x2f0(%rbp),%rdx
  8190c2:	48 03 b5 78 fa ff ff 	add    -0x588(%rbp),%rsi
  8190c9:	4c 3b a5 08 fd ff ff 	cmp    -0x2f8(%rbp),%r12
  8190d0:	0f 82 4f fe ff ff    	jb     818f25 <pre_step3d_mod_mp_pre_step3d_tile_+0x4a85>
  8190d6:	c5 f9 10 2d 72 da 0a 	vmovupd 0xada72(%rip),%xmm5        # 8c6b50 <__STRLITPACK_124.84+0x50>
  8190dd:	00 
  8190de:	c5 7b 10 25 1a df 0a 	vmovsd 0xadf1a(%rip),%xmm12        # 8c7000 <__STRLITPACK_199.115+0x70>
  8190e5:	00 
  8190e6:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  8190ed:	44 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%r8d
  8190f4:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  8190fb:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  819102:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  819109:	e9 4f 0c 00 00       	jmpq   819d5d <pre_step3d_mod_mp_pre_step3d_tile_+0x58bd>
  81910e:	45 33 ed             	xor    %r13d,%r13d
  819111:	33 c9                	xor    %ecx,%ecx
  819113:	33 d2                	xor    %edx,%edx
  819115:	33 f6                	xor    %esi,%esi
  819117:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  81911e:	00 
  81911f:	0f 8e 38 0c 00 00    	jle    819d5d <pre_step3d_mod_mp_pre_step3d_tile_+0x58bd>
  819125:	4c 8b b5 58 f6 ff ff 	mov    -0x9a8(%rbp),%r14
  81912c:	4c 0f af f7          	imul   %rdi,%r14
  819130:	48 8b 85 70 f6 ff ff 	mov    -0x990(%rbp),%rax
  819137:	4c 8b a5 40 f8 ff ff 	mov    -0x7c0(%rbp),%r12
  81913e:	4c 89 ad 80 fa ff ff 	mov    %r13,-0x580(%rbp)
  819145:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  81914c:	4e 8d 3c 30          	lea    (%rax,%r14,1),%r15
  819150:	48 8b 85 d0 f4 ff ff 	mov    -0xb30(%rbp),%rax
  819157:	4d 03 e3             	add    %r11,%r12
  81915a:	48 0f af c7          	imul   %rdi,%rax
  81915e:	4c 89 bd f8 f9 ff ff 	mov    %r15,-0x608(%rbp)
  819165:	4c 8b bd 80 f6 ff ff 	mov    -0x980(%rbp),%r15
  81916c:	4c 03 b5 68 f6 ff ff 	add    -0x998(%rbp),%r14
  819173:	4c 89 b5 30 f9 ff ff 	mov    %r14,-0x6d0(%rbp)
  81917a:	48 03 85 e8 f4 ff ff 	add    -0xb18(%rbp),%rax
  819181:	4d 03 fb             	add    %r11,%r15
  819184:	4c 8b 75 c0          	mov    -0x40(%rbp),%r14
  819188:	4c 89 bd 28 f9 ff ff 	mov    %r15,-0x6d8(%rbp)
  81918f:	4c 89 a5 38 f9 ff ff 	mov    %r12,-0x6c8(%rbp)
  819196:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  81919d:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  8191a4:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  8191ab:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  8191b2:	c5 79 10 35 e6 d5 0a 	vmovupd 0xad5e6(%rip),%xmm14        # 8c67a0 <__STRLITPACK_19.34+0x10>
  8191b9:	00 
  8191ba:	48 8b bd 00 ff ff ff 	mov    -0x100(%rbp),%rdi
  8191c1:	48 3b bd 08 ff ff ff 	cmp    -0xf8(%rbp),%rdi
  8191c8:	0f 8c 8b 02 00 00    	jl     819459 <pre_step3d_mod_mp_pre_step3d_tile_+0x4fb9>
  8191ce:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
  8191d3:	0f 84 49 b7 00 00    	je     824922 <pre_step3d_mod_mp_pre_step3d_tile_+0x10482>
  8191d9:	49 83 fe 02          	cmp    $0x2,%r14
  8191dd:	0f 8c 3f b7 00 00    	jl     824922 <pre_step3d_mod_mp_pre_step3d_tile_+0x10482>
  8191e3:	4c 8b 9d 30 f9 ff ff 	mov    -0x6d0(%rbp),%r11
  8191ea:	45 33 d2             	xor    %r10d,%r10d
  8191ed:	4c 8b bd 38 f9 ff ff 	mov    -0x6c8(%rbp),%r15
  8191f4:	4c 8b 8d 60 fe ff ff 	mov    -0x1a0(%rbp),%r9
  8191fb:	4c 8b 85 28 fc ff ff 	mov    -0x3d8(%rbp),%r8
  819202:	4d 8d 24 33          	lea    (%r11,%rsi,1),%r12
  819206:	4c 8b 9d f8 f9 ff ff 	mov    -0x608(%rbp),%r11
  81920d:	4c 03 fa             	add    %rdx,%r15
  819210:	48 8b bd 28 f9 ff ff 	mov    -0x6d8(%rbp),%rdi
  819217:	4c 03 c9             	add    %rcx,%r9
  81921a:	4c 89 a5 48 f9 ff ff 	mov    %r12,-0x6b8(%rbp)
  819221:	4c 03 c1             	add    %rcx,%r8
  819224:	4c 8b 6d e0          	mov    -0x20(%rbp),%r13
  819228:	4d 8d 24 33          	lea    (%r11,%rsi,1),%r12
  81922c:	45 33 db             	xor    %r11d,%r11d
  81922f:	48 03 fa             	add    %rdx,%rdi
  819232:	4c 89 a5 40 f9 ff ff 	mov    %r12,-0x6c0(%rbp)
  819239:	45 33 e4             	xor    %r12d,%r12d
  81923c:	4c 89 ad 18 fa ff ff 	mov    %r13,-0x5e8(%rbp)
  819243:	48 89 b5 20 fa ff ff 	mov    %rsi,-0x5e0(%rbp)
  81924a:	48 89 8d 30 fa ff ff 	mov    %rcx,-0x5d0(%rbp)
  819251:	4c 89 bd 60 ff ff ff 	mov    %r15,-0xa0(%rbp)
  819258:	48 89 95 28 fa ff ff 	mov    %rdx,-0x5d8(%rbp)
  81925f:	4d 89 e5             	mov    %r12,%r13
  819262:	48 8b 8d 40 f9 ff ff 	mov    -0x6c0(%rbp),%rcx
  819269:	48 8b b5 48 f9 ff ff 	mov    -0x6b8(%rbp),%rsi
  819270:	4c 8b 75 c8          	mov    -0x38(%rbp),%r14
  819274:	4c 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%r15
  81927b:	4b 8d 14 27          	lea    (%r15,%r12,1),%rdx
  81927f:	c5 7b 10 3a          	vmovsd (%rdx),%xmm15
  819283:	4e 8d 3c 29          	lea    (%rcx,%r13,1),%r15
  819287:	c4 21 01 16 2c 32    	vmovhpd (%rdx,%r14,1),%xmm15,%xmm13
  81928d:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
  819294:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  819299:	c4 41 11 59 ee       	vmulpd %xmm14,%xmm13,%xmm13
  81929e:	c4 c1 19 16 2c 17    	vmovhpd (%r15,%rdx,1),%xmm12,%xmm5
  8192a4:	4e 8d 3c 2e          	lea    (%rsi,%r13,1),%r15
  8192a8:	c4 c1 7b 10 37       	vmovsd (%r15),%xmm6
  8192ad:	4d 8d 6c 55 00       	lea    0x0(%r13,%rdx,2),%r13
  8192b2:	c4 41 49 16 3c 17    	vmovhpd (%r15,%rdx,1),%xmm6,%xmm15
  8192b8:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  8192bf:	c4 41 51 58 e7       	vaddpd %xmm15,%xmm5,%xmm12
  8192c4:	c4 a1 09 59 2c d2    	vmulpd (%rdx,%r10,8),%xmm14,%xmm5
  8192ca:	c4 81 79 10 74 d0 08 	vmovupd 0x8(%r8,%r10,8),%xmm6
  8192d1:	4c 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%r15
  8192d8:	4a 8d 14 18          	lea    (%rax,%r11,1),%rdx
  8192dc:	c5 7b 10 3a          	vmovsd (%rdx),%xmm15
  8192e0:	c4 81 49 5c 34 d1    	vsubpd (%r9,%r10,8),%xmm6,%xmm6
  8192e6:	c4 21 01 16 3c 3a    	vmovhpd (%rdx,%r15,1),%xmm15,%xmm15
  8192ec:	49 8d 14 3c          	lea    (%r12,%rdi,1),%rdx
  8192f0:	c4 c1 51 59 ef       	vmulpd %xmm15,%xmm5,%xmm5
  8192f5:	c4 62 99 aa ed       	vfmsub213pd %xmm5,%xmm12,%xmm13
  8192fa:	49 83 c2 02          	add    $0x2,%r10
  8192fe:	c4 41 49 58 e5       	vaddpd %xmm13,%xmm6,%xmm12
  819303:	c5 7b 11 22          	vmovsd %xmm12,(%rdx)
  819307:	4f 8d 1c 7b          	lea    (%r11,%r15,2),%r11
  81930b:	c4 41 79 17 24 16    	vmovhpd %xmm12,(%r14,%rdx,1)
  819311:	4f 8d 24 74          	lea    (%r12,%r14,2),%r12
  819315:	4c 3b 55 e0          	cmp    -0x20(%rbp),%r10
  819319:	0f 82 55 ff ff ff    	jb     819274 <pre_step3d_mod_mp_pre_step3d_tile_+0x4dd4>
  81931f:	4c 8b ad 18 fa ff ff 	mov    -0x5e8(%rbp),%r13
  819326:	48 8b b5 20 fa ff ff 	mov    -0x5e0(%rbp),%rsi
  81932d:	48 8b 95 28 fa ff ff 	mov    -0x5d8(%rbp),%rdx
  819334:	48 8b 8d 30 fa ff ff 	mov    -0x5d0(%rbp),%rcx
  81933b:	4c 8b 75 c0          	mov    -0x40(%rbp),%r14
  81933f:	4c 8b 9d 58 ff ff ff 	mov    -0xa8(%rbp),%r11
  819346:	4c 8b 55 c8          	mov    -0x38(%rbp),%r10
  81934a:	4c 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%r8
  819351:	4d 0f af dd          	imul   %r13,%r11
  819355:	4d 0f af d5          	imul   %r13,%r10
  819359:	4d 0f af c5          	imul   %r13,%r8
  81935d:	4d 3b ee             	cmp    %r14,%r13
  819360:	0f 83 f3 00 00 00    	jae    819459 <pre_step3d_mod_mp_pre_step3d_tile_+0x4fb9>
  819366:	4c 8b 8d 60 fe ff ff 	mov    -0x1a0(%rbp),%r9
  81936d:	4c 8b a5 28 fc ff ff 	mov    -0x3d8(%rbp),%r12
  819374:	4c 8b bd 28 f9 ff ff 	mov    -0x6d8(%rbp),%r15
  81937b:	48 89 b5 20 fa ff ff 	mov    %rsi,-0x5e0(%rbp)
  819382:	49 8d 3c 09          	lea    (%r9,%rcx,1),%rdi
  819386:	48 89 bd 58 f9 ff ff 	mov    %rdi,-0x6a8(%rbp)
  81938d:	4d 8d 0c 0c          	lea    (%r12,%rcx,1),%r9
  819391:	4c 8b a5 38 f9 ff ff 	mov    -0x6c8(%rbp),%r12
  819398:	49 8d 3c 17          	lea    (%r15,%rdx,1),%rdi
  81939c:	4c 8b bd 30 f9 ff ff 	mov    -0x6d0(%rbp),%r15
  8193a3:	48 89 bd 50 f9 ff ff 	mov    %rdi,-0x6b0(%rbp)
  8193aa:	48 89 95 28 fa ff ff 	mov    %rdx,-0x5d8(%rbp)
  8193b1:	49 8d 3c 14          	lea    (%r12,%rdx,1),%rdi
  8193b5:	48 89 8d 30 fa ff ff 	mov    %rcx,-0x5d0(%rbp)
  8193bc:	4d 8d 24 37          	lea    (%r15,%rsi,1),%r12
  8193c0:	4c 8b bd f8 f9 ff ff 	mov    -0x608(%rbp),%r15
  8193c7:	48 8b 8d 50 f9 ff ff 	mov    -0x6b0(%rbp),%rcx
  8193ce:	4c 03 fe             	add    %rsi,%r15
  8193d1:	4c 89 fa             	mov    %r15,%rdx
  8193d4:	48 8b b5 58 f9 ff ff 	mov    -0x6a8(%rbp),%rsi
  8193db:	4c 8b bd 48 ff ff ff 	mov    -0xb8(%rbp),%r15
  8193e2:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  8193e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  8193f0:	c4 c1 7b 10 2c 13    	vmovsd (%r11,%rdx,1),%xmm5
  8193f6:	c4 c1 63 59 34 3a    	vmulsd (%r10,%rdi,1),%xmm3,%xmm6
  8193fc:	c4 01 53 58 24 23    	vaddsd (%r11,%r12,1),%xmm5,%xmm12
  819402:	c4 81 63 59 2c ef    	vmulsd (%r15,%r13,8),%xmm3,%xmm5
  819408:	c4 41 4b 59 fc       	vmulsd %xmm12,%xmm6,%xmm15
  81940d:	c4 01 7b 10 6c e9 08 	vmovsd 0x8(%r9,%r13,8),%xmm13
  819414:	c4 c2 81 9d 2c 00    	vfnmadd132sd (%r8,%rax,1),%xmm15,%xmm5
  81941a:	c4 a1 13 5c 34 ee    	vsubsd (%rsi,%r13,8),%xmm13,%xmm6
  819420:	49 ff c5             	inc    %r13
  819423:	c5 53 58 e6          	vaddsd %xmm6,%xmm5,%xmm12
  819427:	c4 41 7b 11 24 0a    	vmovsd %xmm12,(%r10,%rcx,1)
  81942d:	4c 03 9d 58 ff ff ff 	add    -0xa8(%rbp),%r11
  819434:	4c 03 85 50 ff ff ff 	add    -0xb0(%rbp),%r8
  81943b:	4c 03 55 c8          	add    -0x38(%rbp),%r10
  81943f:	4d 3b ee             	cmp    %r14,%r13
  819442:	72 ac                	jb     8193f0 <pre_step3d_mod_mp_pre_step3d_tile_+0x4f50>
  819444:	48 8b b5 20 fa ff ff 	mov    -0x5e0(%rbp),%rsi
  81944b:	48 8b 95 28 fa ff ff 	mov    -0x5d8(%rbp),%rdx
  819452:	48 8b 8d 30 fa ff ff 	mov    -0x5d0(%rbp),%rcx
  819459:	48 8b bd 80 fa ff ff 	mov    -0x580(%rbp),%rdi
  819460:	48 ff c7             	inc    %rdi
  819463:	48 03 8d 18 ff ff ff 	add    -0xe8(%rbp),%rcx
  81946a:	48 03 95 20 ff ff ff 	add    -0xe0(%rbp),%rdx
  819471:	48 03 b5 10 fd ff ff 	add    -0x2f0(%rbp),%rsi
  819478:	48 03 85 78 fa ff ff 	add    -0x588(%rbp),%rax
  81947f:	48 89 bd 80 fa ff ff 	mov    %rdi,-0x580(%rbp)
  819486:	48 3b bd 08 fd ff ff 	cmp    -0x2f8(%rbp),%rdi
  81948d:	0f 82 27 fd ff ff    	jb     8191ba <pre_step3d_mod_mp_pre_step3d_tile_+0x4d1a>
  819493:	c5 fd 10 35 e5 b8 0a 	vmovupd 0xab8e5(%rip),%ymm6        # 8c4d80 <var$630.126.450+0xc0>
  81949a:	00 
  81949b:	c5 f9 10 2d ad d6 0a 	vmovupd 0xad6ad(%rip),%xmm5        # 8c6b50 <__STRLITPACK_124.84+0x50>
  8194a2:	00 
  8194a3:	c5 7b 10 25 55 db 0a 	vmovsd 0xadb55(%rip),%xmm12        # 8c7000 <__STRLITPACK_199.115+0x70>
  8194aa:	00 
  8194ab:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  8194b2:	44 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%r8d
  8194b9:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  8194c0:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  8194c7:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  8194ce:	e9 8a 08 00 00       	jmpq   819d5d <pre_step3d_mod_mp_pre_step3d_tile_+0x58bd>
  8194d3:	48 83 7d c8 08       	cmpq   $0x8,-0x38(%rbp)
  8194d8:	0f 85 f6 03 00 00    	jne    8198d4 <pre_step3d_mod_mp_pre_step3d_tile_+0x5434>
  8194de:	48 83 bd 58 ff ff ff 	cmpq   $0x8,-0xa8(%rbp)
  8194e5:	08 
  8194e6:	0f 85 e8 03 00 00    	jne    8198d4 <pre_step3d_mod_mp_pre_step3d_tile_+0x5434>
  8194ec:	48 83 bd 50 ff ff ff 	cmpq   $0x8,-0xb0(%rbp)
  8194f3:	08 
  8194f4:	0f 85 da 03 00 00    	jne    8198d4 <pre_step3d_mod_mp_pre_step3d_tile_+0x5434>
  8194fa:	45 33 ed             	xor    %r13d,%r13d
  8194fd:	45 33 e4             	xor    %r12d,%r12d
  819500:	4c 89 a5 40 fa ff ff 	mov    %r12,-0x5c0(%rbp)
  819507:	4c 89 a5 38 fa ff ff 	mov    %r12,-0x5c8(%rbp)
  81950e:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  819515:	00 
  819516:	0f 8e 41 08 00 00    	jle    819d5d <pre_step3d_mod_mp_pre_step3d_tile_+0x58bd>
  81951c:	48 8b b5 58 f6 ff ff 	mov    -0x9a8(%rbp),%rsi
  819523:	4c 8b b5 d0 f4 ff ff 	mov    -0xb30(%rbp),%r14
  81952a:	48 0f af f7          	imul   %rdi,%rsi
  81952e:	4c 0f af f7          	imul   %rdi,%r14
  819532:	c5 7d 10 25 66 c9 0a 	vmovupd 0xac966(%rip),%ymm12        # 8c5ea0 <var$630.126.450+0x11e0>
  819539:	00 
  81953a:	c5 7b 11 85 08 f2 ff 	vmovsd %xmm8,-0xdf8(%rbp)
  819541:	ff 
  819542:	c5 fb 11 bd 00 f2 ff 	vmovsd %xmm7,-0xe00(%rbp)
  819549:	ff 
  81954a:	c5 7b 11 8d 10 f2 ff 	vmovsd %xmm9,-0xdf0(%rbp)
  819551:	ff 
  819552:	c5 7b 10 2d c6 e2 0a 	vmovsd 0xae2c6(%rip),%xmm13        # 8c7820 <__STRLITPACK_199.115+0x890>
  819559:	00 
  81955a:	4c 8b bd 98 f8 ff ff 	mov    -0x768(%rbp),%r15
  819561:	48 8b 8d 60 f6 ff ff 	mov    -0x9a0(%rbp),%rcx
  819568:	48 8b 95 48 f6 ff ff 	mov    -0x9b8(%rbp),%rdx
  81956f:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  819576:	4b 8d 04 1f          	lea    (%r15,%r11,1),%rax
  81957a:	4c 8b bd e0 f4 ff ff 	mov    -0xb20(%rbp),%r15
  819581:	48 03 ce             	add    %rsi,%rcx
  819584:	48 03 b5 90 f6 ff ff 	add    -0x970(%rbp),%rsi
  81958b:	49 03 d3             	add    %r11,%rdx
  81958e:	48 89 b5 70 f9 ff ff 	mov    %rsi,-0x690(%rbp)
  819595:	48 89 95 80 f9 ff ff 	mov    %rdx,-0x680(%rbp)
  81959c:	4d 03 fe             	add    %r14,%r15
  81959f:	4c 03 b5 d8 f4 ff ff 	add    -0xb28(%rbp),%r14
  8195a6:	48 89 8d 88 f9 ff ff 	mov    %rcx,-0x678(%rbp)
  8195ad:	4c 89 b5 60 f9 ff ff 	mov    %r14,-0x6a0(%rbp)
  8195b4:	4c 89 bd 68 f9 ff ff 	mov    %r15,-0x698(%rbp)
  8195bb:	48 89 85 78 f9 ff ff 	mov    %rax,-0x688(%rbp)
  8195c2:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  8195c9:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  8195d0:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  8195d7:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  8195de:	c5 fd 10 3d da c8 0a 	vmovupd 0xac8da(%rip),%ymm7        # 8c5ec0 <var$630.126.450+0x1200>
  8195e5:	00 
  8195e6:	c5 7b 10 05 2a e2 0a 	vmovsd 0xae22a(%rip),%xmm8        # 8c7818 <__STRLITPACK_199.115+0x888>
  8195ed:	00 
  8195ee:	c5 7d 10 35 6a bb 0a 	vmovupd 0xabb6a(%rip),%ymm14        # 8c5160 <var$630.126.450+0x4a0>
  8195f5:	00 
  8195f6:	4c 89 e7             	mov    %r12,%rdi
  8195f9:	48 8b 95 38 fa ff ff 	mov    -0x5c8(%rbp),%rdx
  819600:	48 8b b5 40 fa ff ff 	mov    -0x5c0(%rbp),%rsi
  819607:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  81960b:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  819612:	48 3b 85 08 ff ff ff 	cmp    -0xf8(%rbp),%rax
  819619:	0f 8c 31 02 00 00    	jl     819850 <pre_step3d_mod_mp_pre_step3d_tile_+0x53b0>
  81961f:	48 83 f9 04          	cmp    $0x4,%rcx
  819623:	0f 8c 01 b3 00 00    	jl     82492a <pre_step3d_mod_mp_pre_step3d_tile_+0x1048a>
  819629:	4c 8b 85 78 f9 ff ff 	mov    -0x688(%rbp),%r8
  819630:	45 33 f6             	xor    %r14d,%r14d
  819633:	4c 8b 9d 60 fe ff ff 	mov    -0x1a0(%rbp),%r11
  81963a:	4c 8b 95 28 fc ff ff 	mov    -0x3d8(%rbp),%r10
  819641:	4c 8b 8d 80 f9 ff ff 	mov    -0x680(%rbp),%r9
  819648:	4d 8d 3c 30          	lea    (%r8,%rsi,1),%r15
  81964c:	4c 89 bd b0 f9 ff ff 	mov    %r15,-0x650(%rbp)
  819653:	4d 03 dc             	add    %r12,%r11
  819656:	4c 8b bd 70 f9 ff ff 	mov    -0x690(%rbp),%r15
  81965d:	4d 03 d4             	add    %r12,%r10
  819660:	4c 8b 85 88 f9 ff ff 	mov    -0x678(%rbp),%r8
  819667:	4c 03 ce             	add    %rsi,%r9
  81966a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  81966e:	48 89 95 38 fa ff ff 	mov    %rdx,-0x5c8(%rbp)
  819675:	4c 03 fa             	add    %rdx,%r15
  819678:	4c 89 bd 98 f9 ff ff 	mov    %r15,-0x668(%rbp)
  81967f:	4c 03 c2             	add    %rdx,%r8
  819682:	4c 8b bd 68 f9 ff ff 	mov    -0x698(%rbp),%r15
  819689:	48 89 b5 40 fa ff ff 	mov    %rsi,-0x5c0(%rbp)
  819690:	4c 89 a5 48 fa ff ff 	mov    %r12,-0x5b8(%rbp)
  819697:	4c 89 ad 50 fa ff ff 	mov    %r13,-0x5b0(%rbp)
  81969e:	4c 03 ff             	add    %rdi,%r15
  8196a1:	4c 89 bd 90 f9 ff ff 	mov    %r15,-0x670(%rbp)
  8196a8:	49 89 c5             	mov    %rax,%r13
  8196ab:	4c 8b bd 60 f9 ff ff 	mov    -0x6a0(%rbp),%r15
  8196b2:	48 8b 8d 90 f9 ff ff 	mov    -0x670(%rbp),%rcx
  8196b9:	48 8b b5 98 f9 ff ff 	mov    -0x668(%rbp),%rsi
  8196c0:	4c 8b a5 b0 f9 ff ff 	mov    -0x650(%rbp),%r12
  8196c7:	4c 03 ff             	add    %rdi,%r15
  8196ca:	4c 89 fa             	mov    %r15,%rdx
  8196cd:	4c 8b bd 48 ff ff ff 	mov    -0xb8(%rbp),%r15
  8196d4:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  8196d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  8196e0:	c4 01 7d 10 3c f0    	vmovupd (%r8,%r14,8),%ymm15
  8196e6:	c4 01 0d 59 0c f4    	vmulpd (%r12,%r14,8),%ymm14,%ymm9
  8196ec:	c4 81 7d 10 6c f2 08 	vmovupd 0x8(%r10,%r14,8),%ymm5
  8196f3:	c4 a1 05 58 74 f6 f8 	vaddpd -0x8(%rsi,%r14,8),%ymm15,%ymm6
  8196fa:	c4 21 45 59 3c f1    	vmulpd (%rcx,%r14,8),%ymm7,%ymm15
  819700:	c4 81 55 5c 2c f3    	vsubpd (%r11,%r14,8),%ymm5,%ymm5
  819706:	c4 22 9d ba 3c f2    	vfmsub231pd (%rdx,%r14,8),%ymm12,%ymm15
  81970c:	c4 01 05 59 3c f7    	vmulpd (%r15,%r14,8),%ymm15,%ymm15
  819712:	c4 42 cd a8 cf       	vfmadd213pd %ymm15,%ymm6,%ymm9
  819717:	c4 c1 55 58 f1       	vaddpd %ymm9,%ymm5,%ymm6
  81971c:	c4 81 7d 11 34 f1    	vmovupd %ymm6,(%r9,%r14,8)
  819722:	49 83 c6 04          	add    $0x4,%r14
  819726:	4d 3b f5             	cmp    %r13,%r14
  819729:	72 b5                	jb     8196e0 <pre_step3d_mod_mp_pre_step3d_tile_+0x5240>
  81972b:	48 8b 95 38 fa ff ff 	mov    -0x5c8(%rbp),%rdx
  819732:	48 8b b5 40 fa ff ff 	mov    -0x5c0(%rbp),%rsi
  819739:	4c 8b a5 48 fa ff ff 	mov    -0x5b8(%rbp),%r12
  819740:	4c 8b ad 50 fa ff ff 	mov    -0x5b0(%rbp),%r13
  819747:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  81974b:	48 3b c1             	cmp    %rcx,%rax
  81974e:	0f 83 fc 00 00 00    	jae    819850 <pre_step3d_mod_mp_pre_step3d_tile_+0x53b0>
  819754:	4c 8b 8d 78 f9 ff ff 	mov    -0x688(%rbp),%r9
  81975b:	4c 8b bd 88 f9 ff ff 	mov    -0x678(%rbp),%r15
  819762:	4c 8b b5 60 fe ff ff 	mov    -0x1a0(%rbp),%r14
  819769:	4c 8b 9d 28 fc ff ff 	mov    -0x3d8(%rbp),%r11
  819770:	4d 8d 04 31          	lea    (%r9,%rsi,1),%r8
  819774:	4c 89 85 a0 f9 ff ff 	mov    %r8,-0x660(%rbp)
  81977b:	4d 8d 0c 17          	lea    (%r15,%rdx,1),%r9
  81977f:	4c 8b 85 70 f9 ff ff 	mov    -0x690(%rbp),%r8
  819786:	4d 03 f4             	add    %r12,%r14
  819789:	4c 8b 95 80 f9 ff ff 	mov    -0x680(%rbp),%r10
  819790:	4d 03 dc             	add    %r12,%r11
  819793:	48 89 b5 40 fa ff ff 	mov    %rsi,-0x5c0(%rbp)
  81979a:	4c 89 a5 48 fa ff ff 	mov    %r12,-0x5b8(%rbp)
  8197a1:	4d 8d 3c 10          	lea    (%r8,%rdx,1),%r15
  8197a5:	4c 89 bd a8 f9 ff ff 	mov    %r15,-0x658(%rbp)
  8197ac:	4c 03 d6             	add    %rsi,%r10
  8197af:	4c 8b bd 60 f9 ff ff 	mov    -0x6a0(%rbp),%r15
  8197b6:	4c 8b 85 68 f9 ff ff 	mov    -0x698(%rbp),%r8
  8197bd:	4c 89 ad 50 fa ff ff 	mov    %r13,-0x5b0(%rbp)
  8197c4:	4c 8b a5 a8 f9 ff ff 	mov    -0x658(%rbp),%r12
  8197cb:	4c 03 ff             	add    %rdi,%r15
  8197ce:	4c 03 c7             	add    %rdi,%r8
  8197d1:	4c 89 fe             	mov    %r15,%rsi
  8197d4:	4c 8b ad a0 f9 ff ff 	mov    -0x660(%rbp),%r13
  8197db:	4c 8b bd 48 ff ff ff 	mov    -0xb8(%rbp),%r15
  8197e2:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  8197e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  8197f0:	c4 c1 7b 10 2c c1    	vmovsd (%r9,%rax,8),%xmm5
  8197f6:	c4 c1 63 59 74 c5 00 	vmulsd 0x0(%r13,%rax,8),%xmm3,%xmm6
  8197fd:	c4 41 53 58 4c c4 f8 	vaddsd -0x8(%r12,%rax,8),%xmm5,%xmm9
  819804:	c4 c1 13 59 2c c0    	vmulsd (%r8,%rax,8),%xmm13,%xmm5
  81980a:	c4 c1 4b 59 f1       	vmulsd %xmm9,%xmm6,%xmm6
  81980f:	c4 e2 b9 bb 2c c6    	vfmsub231sd (%rsi,%rax,8),%xmm8,%xmm5
  819815:	c4 41 7b 10 7c c3 08 	vmovsd 0x8(%r11,%rax,8),%xmm15
  81981c:	c4 c2 d1 b9 34 c7    	vfmadd231sd (%r15,%rax,8),%xmm5,%xmm6
  819822:	c4 41 03 5c 0c c6    	vsubsd (%r14,%rax,8),%xmm15,%xmm9
  819828:	c4 41 4b 58 f9       	vaddsd %xmm9,%xmm6,%xmm15
  81982d:	c4 41 7b 11 3c c2    	vmovsd %xmm15,(%r10,%rax,8)
  819833:	48 ff c0             	inc    %rax
  819836:	48 3b c1             	cmp    %rcx,%rax
  819839:	72 b5                	jb     8197f0 <pre_step3d_mod_mp_pre_step3d_tile_+0x5350>
  81983b:	48 8b b5 40 fa ff ff 	mov    -0x5c0(%rbp),%rsi
  819842:	4c 8b a5 48 fa ff ff 	mov    -0x5b8(%rbp),%r12
  819849:	4c 8b ad 50 fa ff ff 	mov    -0x5b0(%rbp),%r13
  819850:	49 ff c5             	inc    %r13
  819853:	4c 03 a5 18 ff ff ff 	add    -0xe8(%rbp),%r12
  81985a:	48 03 b5 20 ff ff ff 	add    -0xe0(%rbp),%rsi
  819861:	48 03 95 10 fd ff ff 	add    -0x2f0(%rbp),%rdx
  819868:	48 03 bd 78 fa ff ff 	add    -0x588(%rbp),%rdi
  81986f:	4c 3b ad 08 fd ff ff 	cmp    -0x2f8(%rbp),%r13
  819876:	0f 82 8f fd ff ff    	jb     81960b <pre_step3d_mod_mp_pre_step3d_tile_+0x516b>
  81987c:	c5 7b 10 8d 10 f2 ff 	vmovsd -0xdf0(%rbp),%xmm9
  819883:	ff 
  819884:	c5 7b 10 85 08 f2 ff 	vmovsd -0xdf8(%rbp),%xmm8
  81988b:	ff 
  81988c:	c5 fb 10 bd 00 f2 ff 	vmovsd -0xe00(%rbp),%xmm7
  819893:	ff 
  819894:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  81989b:	44 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%r8d
  8198a2:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  8198a9:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  8198b0:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  8198b7:	c5 fd 10 35 c1 b4 0a 	vmovupd 0xab4c1(%rip),%ymm6        # 8c4d80 <var$630.126.450+0xc0>
  8198be:	00 
  8198bf:	c5 f9 10 2d 89 d2 0a 	vmovupd 0xad289(%rip),%xmm5        # 8c6b50 <__STRLITPACK_124.84+0x50>
  8198c6:	00 
  8198c7:	c5 7b 10 25 31 d7 0a 	vmovsd 0xad731(%rip),%xmm12        # 8c7000 <__STRLITPACK_199.115+0x70>
  8198ce:	00 
  8198cf:	e9 89 04 00 00       	jmpq   819d5d <pre_step3d_mod_mp_pre_step3d_tile_+0x58bd>
  8198d4:	45 33 e4             	xor    %r12d,%r12d
  8198d7:	33 f6                	xor    %esi,%esi
  8198d9:	33 c9                	xor    %ecx,%ecx
  8198db:	33 d2                	xor    %edx,%edx
  8198dd:	33 c0                	xor    %eax,%eax
  8198df:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  8198e6:	00 
  8198e7:	0f 8e 70 04 00 00    	jle    819d5d <pre_step3d_mod_mp_pre_step3d_tile_+0x58bd>
  8198ed:	4c 8b b5 58 f6 ff ff 	mov    -0x9a8(%rbp),%r14
  8198f4:	4c 0f af f7          	imul   %rdi,%r14
  8198f8:	4c 8b ad d0 f4 ff ff 	mov    -0xb30(%rbp),%r13
  8198ff:	4c 0f af ef          	imul   %rdi,%r13
  819903:	4c 8b bd 40 f8 ff ff 	mov    -0x7c0(%rbp),%r15
  81990a:	c5 79 11 95 f0 f1 ff 	vmovupd %xmm10,-0xe10(%rbp)
  819911:	ff 
  819912:	c5 7b 11 8d 10 f2 ff 	vmovsd %xmm9,-0xdf0(%rbp)
  819919:	ff 
  81991a:	c5 7b 11 85 08 f2 ff 	vmovsd %xmm8,-0xdf8(%rbp)
  819921:	ff 
  819922:	4d 03 fb             	add    %r11,%r15
  819925:	4c 89 bd 00 fa ff ff 	mov    %r15,-0x600(%rbp)
  81992c:	4c 8b bd 70 f6 ff ff 	mov    -0x990(%rbp),%r15
  819933:	c5 fb 11 bd 00 f2 ff 	vmovsd %xmm7,-0xe00(%rbp)
  81993a:	ff 
  81993b:	4c 89 a5 90 fa ff ff 	mov    %r12,-0x570(%rbp)
  819942:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  819949:	4d 03 fe             	add    %r14,%r15
  81994c:	4c 89 bd f0 f9 ff ff 	mov    %r15,-0x610(%rbp)
  819953:	4c 8b bd c8 f4 ff ff 	mov    -0xb38(%rbp),%r15
  81995a:	4c 03 b5 68 f6 ff ff 	add    -0x998(%rbp),%r14
  819961:	4c 89 b5 c0 f9 ff ff 	mov    %r14,-0x640(%rbp)
  819968:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  81996f:	4d 03 fd             	add    %r13,%r15
  819972:	4c 89 bd e8 f9 ff ff 	mov    %r15,-0x618(%rbp)
  819979:	4c 8b bd 80 f6 ff ff 	mov    -0x980(%rbp),%r15
  819980:	4c 03 ad e8 f4 ff ff 	add    -0xb18(%rbp),%r13
  819987:	4c 89 ad b8 f9 ff ff 	mov    %r13,-0x648(%rbp)
  81998e:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  819995:	4d 03 fb             	add    %r11,%r15
  819998:	4c 89 bd e0 f9 ff ff 	mov    %r15,-0x620(%rbp)
  81999f:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  8199a6:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  8199ad:	c5 7b 10 0d 6b de 0a 	vmovsd 0xade6b(%rip),%xmm9        # 8c7820 <__STRLITPACK_199.115+0x890>
  8199b4:	00 
  8199b5:	c5 7b 10 15 5b de 0a 	vmovsd 0xade5b(%rip),%xmm10        # 8c7818 <__STRLITPACK_199.115+0x888>
  8199bc:	00 
  8199bd:	c5 79 10 35 eb d2 0a 	vmovupd 0xad2eb(%rip),%xmm14        # 8c6cb0 <__STRLITPACK_54.50+0x90>
  8199c4:	00 
  8199c5:	c5 79 10 25 d3 d2 0a 	vmovupd 0xad2d3(%rip),%xmm12        # 8c6ca0 <__STRLITPACK_54.50+0x80>
  8199cc:	00 
  8199cd:	c5 79 10 2d cb cd 0a 	vmovupd 0xacdcb(%rip),%xmm13        # 8c67a0 <__STRLITPACK_19.34+0x10>
  8199d4:	00 
  8199d5:	48 8b bd 00 ff ff ff 	mov    -0x100(%rbp),%rdi
  8199dc:	48 3b bd 08 ff ff ff 	cmp    -0xf8(%rbp),%rdi
  8199e3:	0f 8c df 02 00 00    	jl     819cc8 <pre_step3d_mod_mp_pre_step3d_tile_+0x5828>
  8199e9:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
  8199ee:	0f 84 a8 af 00 00    	je     82499c <pre_step3d_mod_mp_pre_step3d_tile_+0x104fc>
  8199f4:	48 83 7d c0 02       	cmpq   $0x2,-0x40(%rbp)
  8199f9:	0f 8c 9d af 00 00    	jl     82499c <pre_step3d_mod_mp_pre_step3d_tile_+0x104fc>
  8199ff:	48 8b bd b8 f9 ff ff 	mov    -0x648(%rbp),%rdi
  819a06:	4c 8b 6d e0          	mov    -0x20(%rbp),%r13
  819a0a:	4c 8b bd c0 f9 ff ff 	mov    -0x640(%rbp),%r15
  819a11:	4c 89 ad 88 fa ff ff 	mov    %r13,-0x578(%rbp)
  819a18:	4c 8d 04 07          	lea    (%rdi,%rax,1),%r8
  819a1c:	48 8b bd e0 f9 ff ff 	mov    -0x620(%rbp),%rdi
  819a23:	45 33 ed             	xor    %r13d,%r13d
  819a26:	4c 8b a5 60 fe ff ff 	mov    -0x1a0(%rbp),%r12
  819a2d:	4c 03 fa             	add    %rdx,%r15
  819a30:	4c 8b 9d 28 fc ff ff 	mov    -0x3d8(%rbp),%r11
  819a37:	4c 8b 95 00 fa ff ff 	mov    -0x600(%rbp),%r10
  819a3e:	4c 8b 8d f0 f9 ff ff 	mov    -0x610(%rbp),%r9
  819a45:	4c 03 e6             	add    %rsi,%r12
  819a48:	4c 8b b5 e8 f9 ff ff 	mov    -0x618(%rbp),%r14
  819a4f:	4c 03 de             	add    %rsi,%r11
  819a52:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  819a59:	4c 8d 04 0f          	lea    (%rdi,%rcx,1),%r8
  819a5d:	4c 89 85 c8 f9 ff ff 	mov    %r8,-0x638(%rbp)
  819a64:	45 33 c0             	xor    %r8d,%r8d
  819a67:	33 ff                	xor    %edi,%edi
  819a69:	4c 03 d1             	add    %rcx,%r10
  819a6c:	4c 03 ca             	add    %rdx,%r9
  819a6f:	4c 89 bd 68 ff ff ff 	mov    %r15,-0x98(%rbp)
  819a76:	4c 03 f0             	add    %rax,%r14
  819a79:	48 89 8d 68 fa ff ff 	mov    %rcx,-0x598(%rbp)
  819a80:	48 89 b5 70 fa ff ff 	mov    %rsi,-0x590(%rbp)
  819a87:	48 89 85 58 fa ff ff 	mov    %rax,-0x5a8(%rbp)
  819a8e:	48 89 95 60 fa ff ff 	mov    %rdx,-0x5a0(%rbp)
  819a95:	49 89 ff             	mov    %rdi,%r15
  819a98:	48 8b 8d c8 f9 ff ff 	mov    -0x638(%rbp),%rcx
  819a9f:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
  819aa3:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
  819aaa:	4b 8d 04 02          	lea    (%r10,%r8,1),%rax
  819aae:	c5 7b 10 38          	vmovsd (%rax),%xmm15
  819ab2:	c5 01 16 04 30       	vmovhpd (%rax,%rsi,1),%xmm15,%xmm8
  819ab7:	49 8d 04 39          	lea    (%r9,%rdi,1),%rax
  819abb:	c5 fb 10 38          	vmovsd (%rax),%xmm7
  819abf:	c5 c1 16 2c 10       	vmovhpd (%rax,%rdx,1),%xmm7,%xmm5
  819ac4:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  819acb:	c4 41 39 59 c5       	vmulpd %xmm13,%xmm8,%xmm8
  819ad0:	48 03 c7             	add    %rdi,%rax
  819ad3:	c5 fb 10 30          	vmovsd (%rax),%xmm6
  819ad7:	48 8d 3c 57          	lea    (%rdi,%rdx,2),%rdi
  819adb:	c5 49 16 3c 10       	vmovhpd (%rax,%rdx,1),%xmm6,%xmm15
  819ae0:	4b 8d 14 3e          	lea    (%r14,%r15,1),%rdx
  819ae4:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
  819aeb:	c4 c1 51 58 ff       	vaddpd %xmm15,%xmm5,%xmm7
  819af0:	c4 81 79 10 74 eb 08 	vmovupd 0x8(%r11,%r13,8),%xmm6
  819af7:	c5 fb 10 2a          	vmovsd (%rdx),%xmm5
  819afb:	c5 d1 16 2c 02       	vmovhpd (%rdx,%rax,1),%xmm5,%xmm5
  819b00:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  819b07:	c4 81 49 5c 34 ec    	vsubpd (%r12,%r13,8),%xmm6,%xmm6
  819b0d:	49 03 d7             	add    %r15,%rdx
  819b10:	c5 7b 10 3a          	vmovsd (%rdx),%xmm15
  819b14:	4d 8d 3c 47          	lea    (%r15,%rax,2),%r15
  819b18:	c5 01 16 3c 02       	vmovhpd (%rdx,%rax,1),%xmm15,%xmm15
  819b1d:	c4 41 09 59 ff       	vmulpd %xmm15,%xmm14,%xmm15
  819b22:	c4 42 d1 ba fc       	vfmsub231pd %xmm12,%xmm5,%xmm15
  819b27:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  819b2e:	c4 a1 01 59 2c e8    	vmulpd (%rax,%r13,8),%xmm15,%xmm5
  819b34:	c4 62 c1 a8 c5       	vfmadd213pd %xmm5,%xmm7,%xmm8
  819b39:	49 83 c5 02          	add    $0x2,%r13
  819b3d:	c4 c1 49 58 f8       	vaddpd %xmm8,%xmm6,%xmm7
  819b42:	49 8d 04 08          	lea    (%r8,%rcx,1),%rax
  819b46:	c5 fb 11 38          	vmovsd %xmm7,(%rax)
  819b4a:	4d 8d 04 70          	lea    (%r8,%rsi,2),%r8
  819b4e:	c5 f9 17 3c 06       	vmovhpd %xmm7,(%rsi,%rax,1)
  819b53:	4c 3b 6d e0          	cmp    -0x20(%rbp),%r13
  819b57:	0f 82 46 ff ff ff    	jb     819aa3 <pre_step3d_mod_mp_pre_step3d_tile_+0x5603>
  819b5d:	48 8b 85 58 fa ff ff 	mov    -0x5a8(%rbp),%rax
  819b64:	48 8b 95 60 fa ff ff 	mov    -0x5a0(%rbp),%rdx
  819b6b:	48 8b 8d 68 fa ff ff 	mov    -0x598(%rbp),%rcx
  819b72:	48 8b b5 70 fa ff ff 	mov    -0x590(%rbp),%rsi
  819b79:	48 8b bd 88 fa ff ff 	mov    -0x578(%rbp),%rdi
  819b80:	4c 8b ad 50 ff ff ff 	mov    -0xb0(%rbp),%r13
  819b87:	4c 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%r14
  819b8e:	4c 8b 65 c8          	mov    -0x38(%rbp),%r12
  819b92:	4c 0f af ef          	imul   %rdi,%r13
  819b96:	4c 0f af f7          	imul   %rdi,%r14
  819b9a:	4c 0f af e7          	imul   %rdi,%r12
  819b9e:	48 3b 7d c0          	cmp    -0x40(%rbp),%rdi
  819ba2:	0f 83 20 01 00 00    	jae    819cc8 <pre_step3d_mod_mp_pre_step3d_tile_+0x5828>
  819ba8:	4c 8b bd e8 f9 ff ff 	mov    -0x618(%rbp),%r15
  819baf:	4c 8b 9d 60 fe ff ff 	mov    -0x1a0(%rbp),%r11
  819bb6:	4c 8b 95 28 fc ff ff 	mov    -0x3d8(%rbp),%r10
  819bbd:	4c 8b 8d 00 fa ff ff 	mov    -0x600(%rbp),%r9
  819bc4:	4c 03 f8             	add    %rax,%r15
  819bc7:	4c 89 bd d8 f9 ff ff 	mov    %r15,-0x628(%rbp)
  819bce:	4c 03 de             	add    %rsi,%r11
  819bd1:	4c 8b bd b8 f9 ff ff 	mov    -0x648(%rbp),%r15
  819bd8:	4c 03 d6             	add    %rsi,%r10
  819bdb:	4c 8b 85 f0 f9 ff ff 	mov    -0x610(%rbp),%r8
  819be2:	4c 03 c9             	add    %rcx,%r9
  819be5:	48 8b bd c0 f9 ff ff 	mov    -0x640(%rbp),%rdi
  819bec:	48 89 85 58 fa ff ff 	mov    %rax,-0x5a8(%rbp)
  819bf3:	4c 03 f8             	add    %rax,%r15
  819bf6:	4c 89 bd d0 f9 ff ff 	mov    %r15,-0x630(%rbp)
  819bfd:	4c 03 c2             	add    %rdx,%r8
  819c00:	4c 8b bd e0 f9 ff ff 	mov    -0x620(%rbp),%r15
  819c07:	48 03 fa             	add    %rdx,%rdi
  819c0a:	48 89 95 60 fa ff ff 	mov    %rdx,-0x5a0(%rbp)
  819c11:	48 89 8d 68 fa ff ff 	mov    %rcx,-0x598(%rbp)
  819c18:	48 89 b5 70 fa ff ff 	mov    %rsi,-0x590(%rbp)
  819c1f:	4c 03 f9             	add    %rcx,%r15
  819c22:	4c 89 f8             	mov    %r15,%rax
  819c25:	48 8b 95 d0 f9 ff ff 	mov    -0x630(%rbp),%rdx
  819c2c:	48 8b 8d d8 f9 ff ff 	mov    -0x628(%rbp),%rcx
  819c33:	48 8b b5 88 fa ff ff 	mov    -0x578(%rbp),%rsi
  819c3a:	4c 8b bd 48 ff ff ff 	mov    -0xb8(%rbp),%r15
  819c41:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  819c48:	00 
  819c49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  819c50:	c4 81 7b 10 2c 06    	vmovsd (%r14,%r8,1),%xmm5
  819c56:	c4 81 63 59 34 0c    	vmulsd (%r12,%r9,1),%xmm3,%xmm6
  819c5c:	c4 c1 53 58 3c 3e    	vaddsd (%r14,%rdi,1),%xmm5,%xmm7
  819c62:	c4 41 33 59 7c 15 00 	vmulsd 0x0(%r13,%rdx,1),%xmm9,%xmm15
  819c69:	c5 cb 59 ef          	vmulsd %xmm7,%xmm6,%xmm5
  819c6d:	c4 42 a9 bb 7c 0d 00 	vfmsub231sd 0x0(%r13,%rcx,1),%xmm10,%xmm15
  819c74:	c4 41 7b 10 44 f2 08 	vmovsd 0x8(%r10,%rsi,8),%xmm8
  819c7b:	c4 c2 81 b9 2c f7    	vfmadd231sd (%r15,%rsi,8),%xmm15,%xmm5
  819c81:	c4 c1 3b 5c 34 f3    	vsubsd (%r11,%rsi,8),%xmm8,%xmm6
  819c87:	48 ff c6             	inc    %rsi
  819c8a:	c5 d3 58 fe          	vaddsd %xmm6,%xmm5,%xmm7
  819c8e:	c4 c1 7b 11 3c 04    	vmovsd %xmm7,(%r12,%rax,1)
  819c94:	4c 03 b5 58 ff ff ff 	add    -0xa8(%rbp),%r14
  819c9b:	4c 03 65 c8          	add    -0x38(%rbp),%r12
  819c9f:	4c 03 ad 50 ff ff ff 	add    -0xb0(%rbp),%r13
  819ca6:	48 3b 75 c0          	cmp    -0x40(%rbp),%rsi
  819caa:	72 a4                	jb     819c50 <pre_step3d_mod_mp_pre_step3d_tile_+0x57b0>
  819cac:	48 8b 85 58 fa ff ff 	mov    -0x5a8(%rbp),%rax
  819cb3:	48 8b 95 60 fa ff ff 	mov    -0x5a0(%rbp),%rdx
  819cba:	48 8b 8d 68 fa ff ff 	mov    -0x598(%rbp),%rcx
  819cc1:	48 8b b5 70 fa ff ff 	mov    -0x590(%rbp),%rsi
  819cc8:	48 8b bd 90 fa ff ff 	mov    -0x570(%rbp),%rdi
  819ccf:	48 ff c7             	inc    %rdi
  819cd2:	48 03 b5 18 ff ff ff 	add    -0xe8(%rbp),%rsi
  819cd9:	48 03 8d 20 ff ff ff 	add    -0xe0(%rbp),%rcx
  819ce0:	48 03 95 10 fd ff ff 	add    -0x2f0(%rbp),%rdx
  819ce7:	48 03 85 78 fa ff ff 	add    -0x588(%rbp),%rax
  819cee:	48 89 bd 90 fa ff ff 	mov    %rdi,-0x570(%rbp)
  819cf5:	48 3b bd 08 fd ff ff 	cmp    -0x2f8(%rbp),%rdi
  819cfc:	0f 82 d3 fc ff ff    	jb     8199d5 <pre_step3d_mod_mp_pre_step3d_tile_+0x5535>
  819d02:	c5 79 10 95 f0 f1 ff 	vmovupd -0xe10(%rbp),%xmm10
  819d09:	ff 
  819d0a:	c5 7b 10 8d 10 f2 ff 	vmovsd -0xdf0(%rbp),%xmm9
  819d11:	ff 
  819d12:	c5 7b 10 85 08 f2 ff 	vmovsd -0xdf8(%rbp),%xmm8
  819d19:	ff 
  819d1a:	c5 fb 10 bd 00 f2 ff 	vmovsd -0xe00(%rbp),%xmm7
  819d21:	ff 
  819d22:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  819d29:	44 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%r8d
  819d30:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  819d37:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  819d3e:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  819d45:	c5 fd 10 35 33 b0 0a 	vmovupd 0xab033(%rip),%ymm6        # 8c4d80 <var$630.126.450+0xc0>
  819d4c:	00 
  819d4d:	c5 f9 10 2d fb cd 0a 	vmovupd 0xacdfb(%rip),%xmm5        # 8c6b50 <__STRLITPACK_124.84+0x50>
  819d54:	00 
  819d55:	c5 7b 10 25 a3 d2 0a 	vmovsd 0xad2a3(%rip),%xmm12        # 8c7000 <__STRLITPACK_199.115+0x70>
  819d5c:	00 
  819d5d:	44 3b 95 d0 fb ff ff 	cmp    -0x430(%rbp),%r10d
  819d64:	0f 8c 16 25 00 00    	jl     81c280 <pre_step3d_mod_mp_pre_step3d_tile_+0x7de0>
  819d6a:	48 83 7d d0 08       	cmpq   $0x8,-0x30(%rbp)
  819d6f:	0f 85 c9 03 00 00    	jne    81a13e <pre_step3d_mod_mp_pre_step3d_tile_+0x5c9e>
  819d75:	48 83 7d 80 08       	cmpq   $0x8,-0x80(%rbp)
  819d7a:	0f 85 be 03 00 00    	jne    81a13e <pre_step3d_mod_mp_pre_step3d_tile_+0x5c9e>
  819d80:	48 83 7d d8 08       	cmpq   $0x8,-0x28(%rbp)
  819d85:	0f 85 b3 03 00 00    	jne    81a13e <pre_step3d_mod_mp_pre_step3d_tile_+0x5c9e>
  819d8b:	48 8b 95 98 fa ff ff 	mov    -0x568(%rbp),%rdx
  819d92:	33 c0                	xor    %eax,%eax
  819d94:	48 89 85 20 fc ff ff 	mov    %rax,-0x3e0(%rbp)
  819d9b:	48 89 95 98 fb ff ff 	mov    %rdx,-0x468(%rbp)
  819da2:	48 89 85 90 fb ff ff 	mov    %rax,-0x470(%rbp)
  819da9:	48 89 85 88 fb ff ff 	mov    %rax,-0x478(%rbp)
  819db0:	48 89 85 38 f2 ff ff 	mov    %rax,-0xdc8(%rbp)
  819db7:	48 83 bd 10 ff ff ff 	cmpq   $0x0,-0xf0(%rbp)
  819dbe:	00 
  819dbf:	0f 8e e9 07 00 00    	jle    81a5ae <pre_step3d_mod_mp_pre_step3d_tile_+0x610e>
  819dc5:	4c 8b b5 b8 f8 ff ff 	mov    -0x748(%rbp),%r14
  819dcc:	4c 8b ad 80 f5 ff ff 	mov    -0xa80(%rbp),%r13
  819dd3:	4c 0f af f7          	imul   %rdi,%r14
  819dd7:	4c 0f af ef          	imul   %rdi,%r13
  819ddb:	48 8b b5 b8 f5 ff ff 	mov    -0xa48(%rbp),%rsi
  819de2:	48 8b 8d f0 f5 ff ff 	mov    -0xa10(%rbp),%rcx
  819de9:	48 8b 95 e8 f5 ff ff 	mov    -0xa18(%rbp),%rdx
  819df0:	4c 8b a5 c8 f5 ff ff 	mov    -0xa38(%rbp),%r12
  819df7:	49 03 f1             	add    %r9,%rsi
  819dfa:	48 8b 85 b0 f5 ff ff 	mov    -0xa50(%rbp),%rax
  819e01:	49 03 ce             	add    %r14,%rcx
  819e04:	4c 8b bd e0 f5 ff ff 	mov    -0xa20(%rbp),%r15
  819e0b:	49 03 d6             	add    %r14,%rdx
  819e0e:	48 89 95 c0 fa ff ff 	mov    %rdx,-0x540(%rbp)
  819e15:	4d 03 e1             	add    %r9,%r12
  819e18:	48 89 8d c8 fa ff ff 	mov    %rcx,-0x538(%rbp)
  819e1f:	49 03 c6             	add    %r14,%rax
  819e22:	4c 03 b5 98 f5 ff ff 	add    -0xa68(%rbp),%r14
  819e29:	4d 03 fd             	add    %r13,%r15
  819e2c:	4c 03 ad 70 f3 ff ff 	add    -0xc90(%rbp),%r13
  819e33:	48 89 b5 d0 fa ff ff 	mov    %rsi,-0x530(%rbp)
  819e3a:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  819e41:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  819e48:	4c 89 b5 a0 fa ff ff 	mov    %r14,-0x560(%rbp)
  819e4f:	4c 89 ad a8 fa ff ff 	mov    %r13,-0x558(%rbp)
  819e56:	4c 89 bd b0 fa ff ff 	mov    %r15,-0x550(%rbp)
  819e5d:	48 89 85 b8 fa ff ff 	mov    %rax,-0x548(%rbp)
  819e64:	4c 89 a5 d8 fa ff ff 	mov    %r12,-0x528(%rbp)
  819e6b:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  819e72:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  819e79:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  819e80:	4c 8b 85 38 f2 ff ff 	mov    -0xdc8(%rbp),%r8
  819e87:	48 8b 8d 88 fb ff ff 	mov    -0x478(%rbp),%rcx
  819e8e:	48 8b b5 90 fb ff ff 	mov    -0x470(%rbp),%rsi
  819e95:	48 8b bd 98 fb ff ff 	mov    -0x468(%rbp),%rdi
  819e9c:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
  819ea3:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  819eaa:	48 3b 85 00 fc ff ff 	cmp    -0x400(%rbp),%rax
  819eb1:	0f 8c 48 02 00 00    	jl     81a0ff <pre_step3d_mod_mp_pre_step3d_tile_+0x5c5f>
  819eb7:	48 83 fa 04          	cmp    $0x4,%rdx
  819ebb:	0f 8c 70 aa 00 00    	jl     824931 <pre_step3d_mod_mp_pre_step3d_tile_+0x10491>
  819ec1:	4c 8b 8d a8 fa ff ff 	mov    -0x558(%rbp),%r9
  819ec8:	45 33 f6             	xor    %r14d,%r14d
  819ecb:	4c 8b ad b8 fa ff ff 	mov    -0x548(%rbp),%r13
  819ed2:	4c 8b a5 c8 fa ff ff 	mov    -0x538(%rbp),%r12
  819ed9:	4c 8b 9d c0 fa ff ff 	mov    -0x540(%rbp),%r11
  819ee0:	4d 8d 3c 09          	lea    (%r9,%rcx,1),%r15
  819ee4:	4c 89 bd 10 fb ff ff 	mov    %r15,-0x4f0(%rbp)
  819eeb:	4c 03 ee             	add    %rsi,%r13
  819eee:	4c 8b bd d8 fa ff ff 	mov    -0x528(%rbp),%r15
  819ef5:	4c 03 e6             	add    %rsi,%r12
  819ef8:	4c 8b 95 a0 fa ff ff 	mov    -0x560(%rbp),%r10
  819eff:	4c 03 de             	add    %rsi,%r11
  819f02:	4c 8b 8d b0 fa ff ff 	mov    -0x550(%rbp),%r9
  819f09:	48 89 bd e0 fa ff ff 	mov    %rdi,-0x520(%rbp)
  819f10:	4d 03 f8             	add    %r8,%r15
  819f13:	4c 89 bd f8 fa ff ff 	mov    %r15,-0x508(%rbp)
  819f1a:	4c 03 d6             	add    %rsi,%r10
  819f1d:	4c 8b bd d0 fa ff ff 	mov    -0x530(%rbp),%r15
  819f24:	4c 03 c9             	add    %rcx,%r9
  819f27:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  819f2e:	48 89 8d 88 fb ff ff 	mov    %rcx,-0x478(%rbp)
  819f35:	48 89 b5 90 fb ff ff 	mov    %rsi,-0x470(%rbp)
  819f3c:	4d 03 f8             	add    %r8,%r15
  819f3f:	4c 89 bd e8 fa ff ff 	mov    %r15,-0x518(%rbp)
  819f46:	49 89 c7             	mov    %rax,%r15
  819f49:	48 89 bd 98 fb ff ff 	mov    %rdi,-0x468(%rbp)
  819f50:	48 8b 95 e0 fa ff ff 	mov    -0x520(%rbp),%rdx
  819f57:	48 8b 8d e8 fa ff ff 	mov    -0x518(%rbp),%rcx
  819f5e:	48 8b b5 f8 fa ff ff 	mov    -0x508(%rbp),%rsi
  819f65:	48 8b bd 10 fb ff ff 	mov    -0x4f0(%rbp),%rdi
  819f6c:	0f 1f 40 00          	nopl   0x0(%rax)
  819f70:	c4 01 7d 10 2c f3    	vmovupd (%r11,%r14,8),%ymm13
  819f76:	c4 01 15 58 34 f4    	vaddpd (%r12,%r14,8),%ymm13,%ymm14
  819f7c:	c4 01 0d 5c 7c f5 00 	vsubpd 0x0(%r13,%r14,8),%ymm14,%ymm15
  819f83:	c4 01 05 5c 2c f2    	vsubpd (%r10,%r14,8),%ymm15,%ymm13
  819f89:	c4 01 7d 10 3c f1    	vmovupd (%r9,%r14,8),%ymm15
  819f8f:	c4 41 4d 5e f5       	vdivpd %ymm13,%ymm6,%ymm14
  819f94:	c5 0d 59 ec          	vmulpd %ymm4,%ymm14,%ymm13
  819f98:	c4 21 05 5c 34 f7    	vsubpd (%rdi,%r14,8),%ymm15,%ymm14
  819f9e:	c4 21 7d 10 3c f1    	vmovupd (%rcx,%r14,8),%ymm15
  819fa4:	c4 41 15 59 ee       	vmulpd %ymm14,%ymm13,%ymm13
  819fa9:	c4 21 05 58 34 f6    	vaddpd (%rsi,%r14,8),%ymm15,%ymm14
  819faf:	c4 41 15 59 fe       	vmulpd %ymm14,%ymm13,%ymm15
  819fb4:	49 83 c6 04          	add    $0x4,%r14
  819fb8:	c5 7d 11 7a 08       	vmovupd %ymm15,0x8(%rdx)
  819fbd:	48 83 c2 20          	add    $0x20,%rdx
  819fc1:	4d 3b f7             	cmp    %r15,%r14
  819fc4:	72 aa                	jb     819f70 <pre_step3d_mod_mp_pre_step3d_tile_+0x5ad0>
  819fc6:	48 8b 8d 88 fb ff ff 	mov    -0x478(%rbp),%rcx
  819fcd:	48 8b b5 90 fb ff ff 	mov    -0x470(%rbp),%rsi
  819fd4:	48 8b bd 98 fb ff ff 	mov    -0x468(%rbp),%rdi
  819fdb:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
  819fe2:	4c 8d 34 c5 00 00 00 	lea    0x0(,%rax,8),%r14
  819fe9:	00 
  819fea:	48 3b c2             	cmp    %rdx,%rax
  819fed:	0f 83 0c 01 00 00    	jae    81a0ff <pre_step3d_mod_mp_pre_step3d_tile_+0x5c5f>
  819ff3:	4c 8b bd a8 fa ff ff 	mov    -0x558(%rbp),%r15
  819ffa:	4c 8d 2c c7          	lea    (%rdi,%rax,8),%r13
  819ffe:	4c 8b a5 b8 fa ff ff 	mov    -0x548(%rbp),%r12
  81a005:	4c 8b 9d c8 fa ff ff 	mov    -0x538(%rbp),%r11
  81a00c:	4c 8b 95 c0 fa ff ff 	mov    -0x540(%rbp),%r10
  81a013:	4c 03 f9             	add    %rcx,%r15
  81a016:	4c 89 bd 00 fb ff ff 	mov    %r15,-0x500(%rbp)
  81a01d:	4c 03 e6             	add    %rsi,%r12
  81a020:	4c 8b bd b0 fa ff ff 	mov    -0x550(%rbp),%r15
  81a027:	4c 03 de             	add    %rsi,%r11
  81a02a:	4c 8b 8d a0 fa ff ff 	mov    -0x560(%rbp),%r9
  81a031:	4c 03 d6             	add    %rsi,%r10
  81a034:	48 89 8d 88 fb ff ff 	mov    %rcx,-0x478(%rbp)
  81a03b:	48 89 b5 90 fb ff ff 	mov    %rsi,-0x470(%rbp)
  81a042:	4c 03 f9             	add    %rcx,%r15
  81a045:	4c 89 bd 08 fb ff ff 	mov    %r15,-0x4f8(%rbp)
  81a04c:	4c 03 ce             	add    %rsi,%r9
  81a04f:	4c 8b bd d8 fa ff ff 	mov    -0x528(%rbp),%r15
  81a056:	48 89 bd 98 fb ff ff 	mov    %rdi,-0x468(%rbp)
  81a05d:	48 8b bd 08 fb ff ff 	mov    -0x4f8(%rbp),%rdi
  81a064:	4d 03 f8             	add    %r8,%r15
  81a067:	4c 89 bd f0 fa ff ff 	mov    %r15,-0x510(%rbp)
  81a06e:	4c 8b bd d0 fa ff ff 	mov    -0x530(%rbp),%r15
  81a075:	48 8b b5 f0 fa ff ff 	mov    -0x510(%rbp),%rsi
  81a07c:	4d 03 f8             	add    %r8,%r15
  81a07f:	4c 89 f9             	mov    %r15,%rcx
  81a082:	4c 8b bd 00 fb ff ff 	mov    -0x500(%rbp),%r15
  81a089:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  81a090:	c4 41 7b 10 2c c2    	vmovsd (%r10,%rax,8),%xmm13
  81a096:	c4 41 13 58 34 c3    	vaddsd (%r11,%rax,8),%xmm13,%xmm14
  81a09c:	c4 41 0b 5c 3c c4    	vsubsd (%r12,%rax,8),%xmm14,%xmm15
  81a0a2:	c4 41 03 5c 2c c1    	vsubsd (%r9,%rax,8),%xmm15,%xmm13
  81a0a8:	48 ff c0             	inc    %rax
  81a0ab:	c4 41 1b 5e f5       	vdivsd %xmm13,%xmm12,%xmm14
  81a0b0:	c4 41 7b 10 3c 3e    	vmovsd (%r14,%rdi,1),%xmm15
  81a0b6:	c4 41 3b 59 ee       	vmulsd %xmm14,%xmm8,%xmm13
  81a0bb:	c4 01 03 5c 34 3e    	vsubsd (%r14,%r15,1),%xmm15,%xmm14
  81a0c1:	c4 41 7b 10 3c 0e    	vmovsd (%r14,%rcx,1),%xmm15
  81a0c7:	c4 41 13 59 ee       	vmulsd %xmm14,%xmm13,%xmm13
  81a0cc:	c4 41 03 58 34 36    	vaddsd (%r14,%rsi,1),%xmm15,%xmm14
  81a0d2:	c4 41 13 59 fe       	vmulsd %xmm14,%xmm13,%xmm15
  81a0d7:	49 83 c6 08          	add    $0x8,%r14
  81a0db:	c4 41 7b 11 7d 08    	vmovsd %xmm15,0x8(%r13)
  81a0e1:	49 83 c5 08          	add    $0x8,%r13
  81a0e5:	48 3b c2             	cmp    %rdx,%rax
  81a0e8:	72 a6                	jb     81a090 <pre_step3d_mod_mp_pre_step3d_tile_+0x5bf0>
  81a0ea:	48 8b 8d 88 fb ff ff 	mov    -0x478(%rbp),%rcx
  81a0f1:	48 8b b5 90 fb ff ff 	mov    -0x470(%rbp),%rsi
  81a0f8:	48 8b bd 98 fb ff ff 	mov    -0x468(%rbp),%rdi
  81a0ff:	48 8b 85 20 fc ff ff 	mov    -0x3e0(%rbp),%rax
  81a106:	48 ff c0             	inc    %rax
  81a109:	48 03 bd 18 ff ff ff 	add    -0xe8(%rbp),%rdi
  81a110:	48 03 b5 30 ff ff ff 	add    -0xd0(%rbp),%rsi
  81a117:	48 03 8d 08 fc ff ff 	add    -0x3f8(%rbp),%rcx
  81a11e:	4c 03 85 28 ff ff ff 	add    -0xd8(%rbp),%r8
  81a125:	48 89 85 20 fc ff ff 	mov    %rax,-0x3e0(%rbp)
  81a12c:	48 3b 85 10 ff ff ff 	cmp    -0xf0(%rbp),%rax
  81a133:	0f 82 6a fd ff ff    	jb     819ea3 <pre_step3d_mod_mp_pre_step3d_tile_+0x5a03>
  81a139:	e9 4d 04 00 00       	jmpq   81a58b <pre_step3d_mod_mp_pre_step3d_tile_+0x60eb>
  81a13e:	45 33 e4             	xor    %r12d,%r12d
  81a141:	33 c9                	xor    %ecx,%ecx
  81a143:	33 d2                	xor    %edx,%edx
  81a145:	33 f6                	xor    %esi,%esi
  81a147:	33 c0                	xor    %eax,%eax
  81a149:	48 83 bd 10 ff ff ff 	cmpq   $0x0,-0xf0(%rbp)
  81a150:	00 
  81a151:	0f 8e 57 04 00 00    	jle    81a5ae <pre_step3d_mod_mp_pre_step3d_tile_+0x610e>
  81a157:	4c 8b b5 b8 f8 ff ff 	mov    -0x748(%rbp),%r14
  81a15e:	4c 0f af f7          	imul   %rdi,%r14
  81a162:	4c 8b bd a8 f5 ff ff 	mov    -0xa58(%rbp),%r15
  81a169:	4c 8b ad 80 f5 ff ff 	mov    -0xa80(%rbp),%r13
  81a170:	4c 0f af ef          	imul   %rdi,%r13
  81a174:	4c 89 a5 18 fc ff ff 	mov    %r12,-0x3e8(%rbp)
  81a17b:	4d 03 fe             	add    %r14,%r15
  81a17e:	4c 89 bd 58 fb ff ff 	mov    %r15,-0x4a8(%rbp)
  81a185:	4c 8b bd 88 f5 ff ff 	mov    -0xa78(%rbp),%r15
  81a18c:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  81a193:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  81a19a:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  81a1a1:	4d 03 fe             	add    %r14,%r15
  81a1a4:	4c 89 bd 80 fb ff ff 	mov    %r15,-0x480(%rbp)
  81a1ab:	4c 8b bd c0 f5 ff ff 	mov    -0xa40(%rbp),%r15
  81a1b2:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  81a1b9:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  81a1c0:	4d 03 fe             	add    %r14,%r15
  81a1c3:	4c 89 bd 60 fb ff ff 	mov    %r15,-0x4a0(%rbp)
  81a1ca:	4c 8b bd a0 f5 ff ff 	mov    -0xa60(%rbp),%r15
  81a1d1:	4c 03 b5 d0 f5 ff ff 	add    -0xa30(%rbp),%r14
  81a1d8:	4c 89 b5 20 fb ff ff 	mov    %r14,-0x4e0(%rbp)
  81a1df:	4d 03 fd             	add    %r13,%r15
  81a1e2:	4c 89 bd 68 fb ff ff 	mov    %r15,-0x498(%rbp)
  81a1e9:	4c 8b bd d8 f5 ff ff 	mov    -0xa28(%rbp),%r15
  81a1f0:	4c 03 ad 78 f5 ff ff 	add    -0xa88(%rbp),%r13
  81a1f7:	4c 89 ad 18 fb ff ff 	mov    %r13,-0x4e8(%rbp)
  81a1fe:	4d 03 f9             	add    %r9,%r15
  81a201:	4c 89 bd 70 fb ff ff 	mov    %r15,-0x490(%rbp)
  81a208:	4c 8b bd 90 f5 ff ff 	mov    -0xa70(%rbp),%r15
  81a20f:	4d 03 f9             	add    %r9,%r15
  81a212:	4c 89 bd 78 fb ff ff 	mov    %r15,-0x488(%rbp)
  81a219:	48 8b bd 00 ff ff ff 	mov    -0x100(%rbp),%rdi
  81a220:	48 3b bd 00 fc ff ff 	cmp    -0x400(%rbp),%rdi
  81a227:	0f 8c 24 03 00 00    	jl     81a551 <pre_step3d_mod_mp_pre_step3d_tile_+0x60b1>
  81a22d:	48 83 bd 78 ff ff ff 	cmpq   $0x2,-0x88(%rbp)
  81a234:	02 
  81a235:	0f 8c 51 a7 00 00    	jl     82498c <pre_step3d_mod_mp_pre_step3d_tile_+0x104ec>
  81a23b:	48 8b bd 70 fb ff ff 	mov    -0x490(%rbp),%rdi
  81a242:	4c 8b 5d 88          	mov    -0x78(%rbp),%r11
  81a246:	4c 8b bd 80 fb ff ff 	mov    -0x480(%rbp),%r15
  81a24d:	4c 8b b5 18 fb ff ff 	mov    -0x4e8(%rbp),%r14
  81a254:	4c 8d 2c 07          	lea    (%rdi,%rax,1),%r13
  81a258:	48 8b bd 78 fb ff ff 	mov    -0x488(%rbp),%rdi
  81a25f:	4c 89 ad 40 fb ff ff 	mov    %r13,-0x4c0(%rbp)
  81a266:	4c 03 fa             	add    %rdx,%r15
  81a269:	4c 89 9d 10 fc ff ff 	mov    %r11,-0x3f0(%rbp)
  81a270:	45 33 db             	xor    %r11d,%r11d
  81a273:	4c 8b 95 58 fb ff ff 	mov    -0x4a8(%rbp),%r10
  81a27a:	4c 8d 2c 07          	lea    (%rdi,%rax,1),%r13
  81a27e:	48 8b bd 98 fa ff ff 	mov    -0x568(%rbp),%rdi
  81a285:	4c 03 f6             	add    %rsi,%r14
  81a288:	4c 8b 8d 60 fb ff ff 	mov    -0x4a0(%rbp),%r9
  81a28f:	4c 8b 85 20 fb ff ff 	mov    -0x4e0(%rbp),%r8
  81a296:	4c 03 d2             	add    %rdx,%r10
  81a299:	4c 8b a5 68 fb ff ff 	mov    -0x498(%rbp),%r12
  81a2a0:	4c 89 ad 30 fb ff ff 	mov    %r13,-0x4d0(%rbp)
  81a2a7:	4c 8d 2c 0f          	lea    (%rdi,%rcx,1),%r13
  81a2ab:	4c 89 ad 28 fb ff ff 	mov    %r13,-0x4d8(%rbp)
  81a2b2:	45 33 ed             	xor    %r13d,%r13d
  81a2b5:	33 ff                	xor    %edi,%edi
  81a2b7:	4c 03 ca             	add    %rdx,%r9
  81a2ba:	4c 03 c2             	add    %rdx,%r8
  81a2bd:	48 89 85 a0 fb ff ff 	mov    %rax,-0x460(%rbp)
  81a2c4:	4c 03 e6             	add    %rsi,%r12
  81a2c7:	48 89 b5 a8 fb ff ff 	mov    %rsi,-0x458(%rbp)
  81a2ce:	48 89 95 b0 fb ff ff 	mov    %rdx,-0x450(%rbp)
  81a2d5:	48 89 8d b8 fb ff ff 	mov    %rcx,-0x448(%rbp)
  81a2dc:	4c 89 75 90          	mov    %r14,-0x70(%rbp)
  81a2e0:	4c 89 7d 98          	mov    %r15,-0x68(%rbp)
  81a2e4:	48 89 f8             	mov    %rdi,%rax
  81a2e7:	48 8b 95 28 fb ff ff 	mov    -0x4d8(%rbp),%rdx
  81a2ee:	48 8b 8d 30 fb ff ff 	mov    -0x4d0(%rbp),%rcx
  81a2f5:	48 8b b5 40 fb ff ff 	mov    -0x4c0(%rbp),%rsi
  81a2fc:	4c 8b 7d 98          	mov    -0x68(%rbp),%r15
  81a300:	4c 8b 75 d0          	mov    -0x30(%rbp),%r14
  81a304:	4d 03 fd             	add    %r13,%r15
  81a307:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81a30c:	c4 01 11 16 34 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm14
  81a312:	4f 8d 3c 28          	lea    (%r8,%r13,1),%r15
  81a316:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81a31b:	c4 01 01 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm13
  81a321:	4f 8d 3c 2a          	lea    (%r10,%r13,1),%r15
  81a325:	c4 41 09 58 f5       	vaddpd %xmm13,%xmm14,%xmm14
  81a32a:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81a32f:	c4 01 01 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm13
  81a335:	4f 8d 3c 29          	lea    (%r9,%r13,1),%r15
  81a339:	c4 41 09 5c f5       	vsubpd %xmm13,%xmm14,%xmm14
  81a33e:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81a343:	4f 8d 6c 75 00       	lea    0x0(%r13,%r14,2),%r13
  81a348:	c4 01 01 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm13
  81a34e:	4d 8d 34 3c          	lea    (%r12,%rdi,1),%r14
  81a352:	c4 41 09 5c fd       	vsubpd %xmm13,%xmm14,%xmm15
  81a357:	c4 41 51 5e f7       	vdivpd %xmm15,%xmm5,%xmm14
  81a35c:	4c 8b 7d 80          	mov    -0x80(%rbp),%r15
  81a360:	c4 41 7b 10 2e       	vmovsd (%r14),%xmm13
  81a365:	c5 09 59 f2          	vmulpd %xmm2,%xmm14,%xmm14
  81a369:	c4 01 11 16 3c 3e    	vmovhpd (%r14,%r15,1),%xmm13,%xmm15
  81a36f:	4c 8b 75 90          	mov    -0x70(%rbp),%r14
  81a373:	4c 03 f7             	add    %rdi,%r14
  81a376:	c4 41 7b 10 2e       	vmovsd (%r14),%xmm13
  81a37b:	4a 8d 3c 7f          	lea    (%rdi,%r15,2),%rdi
  81a37f:	c4 01 11 16 2c 3e    	vmovhpd (%r14,%r15,1),%xmm13,%xmm13
  81a385:	4c 8d 3c 06          	lea    (%rsi,%rax,1),%r15
  81a389:	c4 41 01 5c fd       	vsubpd %xmm13,%xmm15,%xmm15
  81a38e:	4c 8b 75 d8          	mov    -0x28(%rbp),%r14
  81a392:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81a397:	c4 41 09 59 f7       	vmulpd %xmm15,%xmm14,%xmm14
  81a39c:	c4 01 11 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm13
  81a3a2:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
  81a3a6:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81a3ab:	4a 8d 04 70          	lea    (%rax,%r14,2),%rax
  81a3af:	c4 01 01 16 3c 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm15
  81a3b5:	c4 41 11 58 ef       	vaddpd %xmm15,%xmm13,%xmm13
  81a3ba:	c4 41 09 59 f5       	vmulpd %xmm13,%xmm14,%xmm14
  81a3bf:	c4 21 79 11 74 da 08 	vmovupd %xmm14,0x8(%rdx,%r11,8)
  81a3c6:	49 83 c3 02          	add    $0x2,%r11
  81a3ca:	4c 3b 5d 88          	cmp    -0x78(%rbp),%r11
  81a3ce:	0f 82 28 ff ff ff    	jb     81a2fc <pre_step3d_mod_mp_pre_step3d_tile_+0x5e5c>
  81a3d4:	48 8b 85 a0 fb ff ff 	mov    -0x460(%rbp),%rax
  81a3db:	48 8b b5 a8 fb ff ff 	mov    -0x458(%rbp),%rsi
  81a3e2:	48 8b 95 b0 fb ff ff 	mov    -0x450(%rbp),%rdx
  81a3e9:	48 8b 8d b8 fb ff ff 	mov    -0x448(%rbp),%rcx
  81a3f0:	48 8b bd 10 fc ff ff 	mov    -0x3f0(%rbp),%rdi
  81a3f7:	4c 8b 75 d8          	mov    -0x28(%rbp),%r14
  81a3fb:	4c 8b 6d 80          	mov    -0x80(%rbp),%r13
  81a3ff:	4c 8b 65 d0          	mov    -0x30(%rbp),%r12
  81a403:	4c 0f af f7          	imul   %rdi,%r14
  81a407:	4c 0f af ef          	imul   %rdi,%r13
  81a40b:	4c 0f af e7          	imul   %rdi,%r12
  81a40f:	48 3b bd 78 ff ff ff 	cmp    -0x88(%rbp),%rdi
  81a416:	0f 83 35 01 00 00    	jae    81a551 <pre_step3d_mod_mp_pre_step3d_tile_+0x60b1>
  81a41c:	48 8b bd 20 fb ff ff 	mov    -0x4e0(%rbp),%rdi
  81a423:	4c 8b 9d 58 fb ff ff 	mov    -0x4a8(%rbp),%r11
  81a42a:	4c 8b 8d 80 fb ff ff 	mov    -0x480(%rbp),%r9
  81a431:	4c 8b 85 60 fb ff ff 	mov    -0x4a0(%rbp),%r8
  81a438:	4c 8d 3c 17          	lea    (%rdi,%rdx,1),%r15
  81a43c:	4c 89 bd 50 fb ff ff 	mov    %r15,-0x4b0(%rbp)
  81a443:	4d 8d 14 13          	lea    (%r11,%rdx,1),%r10
  81a447:	4c 8b bd 78 fb ff ff 	mov    -0x488(%rbp),%r15
  81a44e:	4d 8d 1c 11          	lea    (%r9,%rdx,1),%r11
  81a452:	4c 8b 8d 68 fb ff ff 	mov    -0x498(%rbp),%r9
  81a459:	48 8b bd 70 fb ff ff 	mov    -0x490(%rbp),%rdi
  81a460:	4c 89 95 48 fb ff ff 	mov    %r10,-0x4b8(%rbp)
  81a467:	4c 03 f8             	add    %rax,%r15
  81a46a:	4c 89 bd 38 fb ff ff 	mov    %r15,-0x4c8(%rbp)
  81a471:	4d 8d 14 10          	lea    (%r8,%rdx,1),%r10
  81a475:	4c 8b bd 98 fa ff ff 	mov    -0x568(%rbp),%r15
  81a47c:	4c 03 ce             	add    %rsi,%r9
  81a47f:	4c 8b 85 18 fb ff ff 	mov    -0x4e8(%rbp),%r8
  81a486:	48 03 f8             	add    %rax,%rdi
  81a489:	48 89 85 a0 fb ff ff 	mov    %rax,-0x460(%rbp)
  81a490:	48 89 b5 a8 fb ff ff 	mov    %rsi,-0x458(%rbp)
  81a497:	4c 03 f9             	add    %rcx,%r15
  81a49a:	4c 03 c6             	add    %rsi,%r8
  81a49d:	48 89 95 b0 fb ff ff 	mov    %rdx,-0x450(%rbp)
  81a4a4:	48 89 8d b8 fb ff ff 	mov    %rcx,-0x448(%rbp)
  81a4ab:	4c 89 f8             	mov    %r15,%rax
  81a4ae:	48 8b 95 38 fb ff ff 	mov    -0x4c8(%rbp),%rdx
  81a4b5:	48 8b 8d 50 fb ff ff 	mov    -0x4b0(%rbp),%rcx
  81a4bc:	48 8b b5 48 fb ff ff 	mov    -0x4b8(%rbp),%rsi
  81a4c3:	4c 8b bd 10 fc ff ff 	mov    -0x3f0(%rbp),%r15
  81a4ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  81a4d0:	c4 01 7b 10 2c 1c    	vmovsd (%r12,%r11,1),%xmm13
  81a4d6:	c4 41 13 58 34 0c    	vaddsd (%r12,%rcx,1),%xmm13,%xmm14
  81a4dc:	c4 41 0b 5c 3c 34    	vsubsd (%r12,%rsi,1),%xmm14,%xmm15
  81a4e2:	c4 01 03 5c 2c 14    	vsubsd (%r12,%r10,1),%xmm15,%xmm13
  81a4e8:	c4 41 1b 5e f5       	vdivsd %xmm13,%xmm12,%xmm14
  81a4ed:	c4 01 7b 10 7c 0d 00 	vmovsd 0x0(%r13,%r9,1),%xmm15
  81a4f4:	c4 41 3b 59 ee       	vmulsd %xmm14,%xmm8,%xmm13
  81a4f9:	c4 01 03 5c 74 05 00 	vsubsd 0x0(%r13,%r8,1),%xmm15,%xmm14
  81a500:	c4 41 7b 10 3c 3e    	vmovsd (%r14,%rdi,1),%xmm15
  81a506:	c4 41 13 59 ee       	vmulsd %xmm14,%xmm13,%xmm13
  81a50b:	c4 41 03 58 34 16    	vaddsd (%r14,%rdx,1),%xmm15,%xmm14
  81a511:	c4 41 13 59 fe       	vmulsd %xmm14,%xmm13,%xmm15
  81a516:	c4 21 7b 11 7c f8 08 	vmovsd %xmm15,0x8(%rax,%r15,8)
  81a51d:	49 ff c7             	inc    %r15
  81a520:	4c 03 65 d0          	add    -0x30(%rbp),%r12
  81a524:	4c 03 6d 80          	add    -0x80(%rbp),%r13
  81a528:	4c 03 75 d8          	add    -0x28(%rbp),%r14
  81a52c:	4c 3b bd 78 ff ff ff 	cmp    -0x88(%rbp),%r15
  81a533:	72 9b                	jb     81a4d0 <pre_step3d_mod_mp_pre_step3d_tile_+0x6030>
  81a535:	48 8b 85 a0 fb ff ff 	mov    -0x460(%rbp),%rax
  81a53c:	48 8b b5 a8 fb ff ff 	mov    -0x458(%rbp),%rsi
  81a543:	48 8b 95 b0 fb ff ff 	mov    -0x450(%rbp),%rdx
  81a54a:	48 8b 8d b8 fb ff ff 	mov    -0x448(%rbp),%rcx
  81a551:	48 8b bd 18 fc ff ff 	mov    -0x3e8(%rbp),%rdi
  81a558:	48 ff c7             	inc    %rdi
  81a55b:	48 03 8d 18 ff ff ff 	add    -0xe8(%rbp),%rcx
  81a562:	48 03 95 30 ff ff ff 	add    -0xd0(%rbp),%rdx
  81a569:	48 03 b5 08 fc ff ff 	add    -0x3f8(%rbp),%rsi
  81a570:	48 03 85 28 ff ff ff 	add    -0xd8(%rbp),%rax
  81a577:	48 89 bd 18 fc ff ff 	mov    %rdi,-0x3e8(%rbp)
  81a57e:	48 3b bd 10 ff ff ff 	cmp    -0xf0(%rbp),%rdi
  81a585:	0f 82 8e fc ff ff    	jb     81a219 <pre_step3d_mod_mp_pre_step3d_tile_+0x5d79>
  81a58b:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  81a592:	44 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%r8d
  81a599:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  81a5a0:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  81a5a7:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  81a5ae:	48 83 bd 00 f6 ff ff 	cmpq   $0x8,-0xa00(%rbp)
  81a5b5:	08 
  81a5b6:	0f 85 f6 00 00 00    	jne    81a6b2 <pre_step3d_mod_mp_pre_step3d_tile_+0x6212>
  81a5bc:	48 83 bd f8 f5 ff ff 	cmpq   $0x8,-0xa08(%rbp)
  81a5c3:	08 
  81a5c4:	0f 85 e8 00 00 00    	jne    81a6b2 <pre_step3d_mod_mp_pre_step3d_tile_+0x6212>
  81a5ca:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  81a5d1:	48 3b 85 00 fc ff ff 	cmp    -0x400(%rbp),%rax
  81a5d8:	0f 8c fa 06 00 00    	jl     81acd8 <pre_step3d_mod_mp_pre_step3d_tile_+0x6838>
  81a5de:	48 83 bd 78 ff ff ff 	cmpq   $0x4,-0x88(%rbp)
  81a5e5:	04 
  81a5e6:	0f 8c 4c a3 00 00    	jl     824938 <pre_step3d_mod_mp_pre_step3d_tile_+0x10498>
  81a5ec:	48 8b 8d f8 f4 ff ff 	mov    -0xb08(%rbp),%rcx
  81a5f3:	33 f6                	xor    %esi,%esi
  81a5f5:	48 8b 95 f0 f4 ff ff 	mov    -0xb10(%rbp),%rdx
  81a5fc:	48 0f af cf          	imul   %rdi,%rcx
  81a600:	48 0f af d7          	imul   %rdi,%rdx
  81a604:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  81a60b:	49 89 c4             	mov    %rax,%r12
  81a60e:	48 03 8d 28 f5 ff ff 	add    -0xad8(%rbp),%rcx
  81a615:	48 03 95 20 f5 ff ff 	add    -0xae0(%rbp),%rdx
  81a61c:	4c 8b ad 18 f5 ff ff 	mov    -0xae8(%rbp),%r13
  81a623:	4c 8b b5 80 f7 ff ff 	mov    -0x880(%rbp),%r14
  81a62a:	c5 75 59 2c f1       	vmulpd (%rcx,%rsi,8),%ymm1,%ymm13
  81a62f:	c5 75 59 34 f2       	vmulpd (%rdx,%rsi,8),%ymm1,%ymm14
  81a634:	c4 41 7d 11 2c f6    	vmovupd %ymm13,(%r14,%rsi,8)
  81a63a:	c4 41 7d 11 74 f5 00 	vmovupd %ymm14,0x0(%r13,%rsi,8)
  81a641:	48 83 c6 04          	add    $0x4,%rsi
  81a645:	49 3b f4             	cmp    %r12,%rsi
  81a648:	72 e0                	jb     81a62a <pre_step3d_mod_mp_pre_step3d_tile_+0x618a>
  81a64a:	48 3b 85 78 ff ff ff 	cmp    -0x88(%rbp),%rax
  81a651:	0f 83 6c 02 00 00    	jae    81a8c3 <pre_step3d_mod_mp_pre_step3d_tile_+0x6423>
  81a657:	48 8b 8d f8 f4 ff ff 	mov    -0xb08(%rbp),%rcx
  81a65e:	48 8b 95 f0 f4 ff ff 	mov    -0xb10(%rbp),%rdx
  81a665:	48 0f af cf          	imul   %rdi,%rcx
  81a669:	48 0f af d7          	imul   %rdi,%rdx
  81a66d:	48 03 8d 28 f5 ff ff 	add    -0xad8(%rbp),%rcx
  81a674:	48 03 95 20 f5 ff ff 	add    -0xae0(%rbp),%rdx
  81a67b:	48 8b b5 18 f5 ff ff 	mov    -0xae8(%rbp),%rsi
  81a682:	4c 8b a5 80 f7 ff ff 	mov    -0x880(%rbp),%r12
  81a689:	4c 8b ad 78 ff ff ff 	mov    -0x88(%rbp),%r13
  81a690:	c5 43 59 2c c1       	vmulsd (%rcx,%rax,8),%xmm7,%xmm13
  81a695:	c5 43 59 34 c2       	vmulsd (%rdx,%rax,8),%xmm7,%xmm14
  81a69a:	c4 41 7b 11 2c c4    	vmovsd %xmm13,(%r12,%rax,8)
  81a6a0:	c5 7b 11 34 c6       	vmovsd %xmm14,(%rsi,%rax,8)
  81a6a5:	48 ff c0             	inc    %rax
  81a6a8:	49 3b c5             	cmp    %r13,%rax
  81a6ab:	72 e3                	jb     81a690 <pre_step3d_mod_mp_pre_step3d_tile_+0x61f0>
  81a6ad:	e9 11 02 00 00       	jmpq   81a8c3 <pre_step3d_mod_mp_pre_step3d_tile_+0x6423>
  81a6b2:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  81a6b9:	48 3b 85 00 fc ff ff 	cmp    -0x400(%rbp),%rax
  81a6c0:	0f 8c 12 06 00 00    	jl     81acd8 <pre_step3d_mod_mp_pre_step3d_tile_+0x6838>
  81a6c6:	48 83 bd 78 ff ff ff 	cmpq   $0x4,-0x88(%rbp)
  81a6cd:	04 
  81a6ce:	0f 8c b0 a2 00 00    	jl     824984 <pre_step3d_mod_mp_pre_step3d_tile_+0x104e4>
  81a6d4:	48 8b b5 f8 f4 ff ff 	mov    -0xb08(%rbp),%rsi
  81a6db:	33 c9                	xor    %ecx,%ecx
  81a6dd:	4c 8b a5 f0 f4 ff ff 	mov    -0xb10(%rbp),%r12
  81a6e4:	45 33 ed             	xor    %r13d,%r13d
  81a6e7:	48 0f af f7          	imul   %rdi,%rsi
  81a6eb:	4c 0f af e7          	imul   %rdi,%r12
  81a6ef:	48 8b 95 38 f3 ff ff 	mov    -0xcc8(%rbp),%rdx
  81a6f6:	48 8b 85 30 f3 ff ff 	mov    -0xcd0(%rbp),%rax
  81a6fd:	4c 8b bd e0 fe ff ff 	mov    -0x120(%rbp),%r15
  81a704:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  81a70b:	48 03 d6             	add    %rsi,%rdx
  81a70e:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  81a715:	4e 8d 34 20          	lea    (%rax,%r12,1),%r14
  81a719:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  81a720:	33 c0                	xor    %eax,%eax
  81a722:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  81a729:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  81a730:	48 03 b5 68 f3 ff ff 	add    -0xc98(%rbp),%rsi
  81a737:	4c 03 a5 60 f3 ff ff 	add    -0xca0(%rbp),%r12
  81a73e:	48 8b bd 18 f5 ff ff 	mov    -0xae8(%rbp),%rdi
  81a745:	4c 8b 85 80 f7 ff ff 	mov    -0x880(%rbp),%r8
  81a74c:	4c 8b 8d 10 f5 ff ff 	mov    -0xaf0(%rbp),%r9
  81a753:	4c 8b 95 f8 f5 ff ff 	mov    -0xa08(%rbp),%r10
  81a75a:	4c 8b 9d 00 f6 ff ff 	mov    -0xa00(%rbp),%r11
  81a761:	4c 89 bd 28 f2 ff ff 	mov    %r15,-0xdd8(%rbp)
  81a768:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  81a76f:	00 
  81a770:	4e 8d 3c 2a          	lea    (%rdx,%r13,1),%r15
  81a774:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81a779:	c4 01 11 16 34 1f    	vmovhpd (%r15,%r11,1),%xmm13,%xmm14
  81a77f:	4d 8d 3c 06          	lea    (%r14,%rax,1),%r15
  81a783:	c4 41 29 59 fe       	vmulpd %xmm14,%xmm10,%xmm15
  81a788:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81a78d:	c4 01 11 16 34 17    	vmovhpd (%r15,%r10,1),%xmm13,%xmm14
  81a793:	4e 8d 3c 2e          	lea    (%rsi,%r13,1),%r15
  81a797:	c4 41 79 11 3c c8    	vmovupd %xmm15,(%r8,%rcx,8)
  81a79d:	c4 41 29 59 fe       	vmulpd %xmm14,%xmm10,%xmm15
  81a7a2:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81a7a7:	4f 8d 6c 9d 00       	lea    0x0(%r13,%r11,4),%r13
  81a7ac:	c4 01 11 16 34 1f    	vmovhpd (%r15,%r11,1),%xmm13,%xmm14
  81a7b2:	4d 8d 3c 04          	lea    (%r12,%rax,1),%r15
  81a7b6:	c5 79 11 3c cf       	vmovupd %xmm15,(%rdi,%rcx,8)
  81a7bb:	c4 41 29 59 fe       	vmulpd %xmm14,%xmm10,%xmm15
  81a7c0:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81a7c5:	4a 8d 04 90          	lea    (%rax,%r10,4),%rax
  81a7c9:	c4 01 11 16 34 17    	vmovhpd (%r15,%r10,1),%xmm13,%xmm14
  81a7cf:	c4 41 79 11 7c c8 10 	vmovupd %xmm15,0x10(%r8,%rcx,8)
  81a7d6:	c4 41 29 59 fe       	vmulpd %xmm14,%xmm10,%xmm15
  81a7db:	c4 41 79 11 7c c9 10 	vmovupd %xmm15,0x10(%r9,%rcx,8)
  81a7e2:	48 83 c1 04          	add    $0x4,%rcx
  81a7e6:	48 3b 8d e0 fe ff ff 	cmp    -0x120(%rbp),%rcx
  81a7ed:	72 81                	jb     81a770 <pre_step3d_mod_mp_pre_step3d_tile_+0x62d0>
  81a7ef:	4c 8b bd 28 f2 ff ff 	mov    -0xdd8(%rbp),%r15
  81a7f6:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  81a7fd:	44 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%r8d
  81a804:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  81a80b:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  81a812:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  81a819:	48 8b b5 f8 f5 ff ff 	mov    -0xa08(%rbp),%rsi
  81a820:	48 8b 85 00 f6 ff ff 	mov    -0xa00(%rbp),%rax
  81a827:	49 0f af f7          	imul   %r15,%rsi
  81a82b:	49 0f af c7          	imul   %r15,%rax
  81a82f:	4c 3b bd 78 ff ff ff 	cmp    -0x88(%rbp),%r15
  81a836:	0f 83 87 00 00 00    	jae    81a8c3 <pre_step3d_mod_mp_pre_step3d_tile_+0x6423>
  81a83c:	48 8b 95 f8 f4 ff ff 	mov    -0xb08(%rbp),%rdx
  81a843:	48 8b 8d f0 f4 ff ff 	mov    -0xb10(%rbp),%rcx
  81a84a:	48 0f af d7          	imul   %rdi,%rdx
  81a84e:	48 0f af cf          	imul   %rdi,%rcx
  81a852:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  81a859:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  81a860:	48 03 95 38 f3 ff ff 	add    -0xcc8(%rbp),%rdx
  81a867:	48 03 8d 30 f3 ff ff 	add    -0xcd0(%rbp),%rcx
  81a86e:	4c 8b 95 18 f5 ff ff 	mov    -0xae8(%rbp),%r10
  81a875:	4c 8b 9d 80 f7 ff ff 	mov    -0x880(%rbp),%r11
  81a87c:	4c 8b a5 78 ff ff ff 	mov    -0x88(%rbp),%r12
  81a883:	4c 8b ad f8 f5 ff ff 	mov    -0xa08(%rbp),%r13
  81a88a:	4c 8b b5 00 f6 ff ff 	mov    -0xa00(%rbp),%r14
  81a891:	c5 43 59 2c 10       	vmulsd (%rax,%rdx,1),%xmm7,%xmm13
  81a896:	49 03 c6             	add    %r14,%rax
  81a899:	c5 43 59 34 0e       	vmulsd (%rsi,%rcx,1),%xmm7,%xmm14
  81a89e:	c4 01 7b 11 2c fb    	vmovsd %xmm13,(%r11,%r15,8)
  81a8a4:	49 03 f5             	add    %r13,%rsi
  81a8a7:	c4 01 7b 11 34 fa    	vmovsd %xmm14,(%r10,%r15,8)
  81a8ad:	49 ff c7             	inc    %r15
  81a8b0:	4d 3b fc             	cmp    %r12,%r15
  81a8b3:	72 dc                	jb     81a891 <pre_step3d_mod_mp_pre_step3d_tile_+0x63f1>
  81a8b5:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  81a8bc:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  81a8c3:	48 83 bd 78 fe ff ff 	cmpq   $0x8,-0x188(%rbp)
  81a8ca:	08 
  81a8cb:	0f 85 33 01 00 00    	jne    81aa04 <pre_step3d_mod_mp_pre_step3d_tile_+0x6564>
  81a8d1:	48 83 bd 80 fe ff ff 	cmpq   $0x8,-0x180(%rbp)
  81a8d8:	08 
  81a8d9:	0f 85 25 01 00 00    	jne    81aa04 <pre_step3d_mod_mp_pre_step3d_tile_+0x6564>
  81a8df:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  81a8e6:	48 3b 85 00 fc ff ff 	cmp    -0x400(%rbp),%rax
  81a8ed:	0f 8c e5 03 00 00    	jl     81acd8 <pre_step3d_mod_mp_pre_step3d_tile_+0x6838>
  81a8f3:	48 83 bd 78 ff ff ff 	cmpq   $0x4,-0x88(%rbp)
  81a8fa:	04 
  81a8fb:	0f 8c 3e a0 00 00    	jl     82493f <pre_step3d_mod_mp_pre_step3d_tile_+0x1049f>
  81a901:	48 8b 95 e8 f6 ff ff 	mov    -0x918(%rbp),%rdx
  81a908:	33 c9                	xor    %ecx,%ecx
  81a90a:	48 8b b5 e0 f6 ff ff 	mov    -0x920(%rbp),%rsi
  81a911:	48 0f af d7          	imul   %rdi,%rdx
  81a915:	48 0f af f7          	imul   %rdi,%rsi
  81a919:	48 8b 85 08 f5 ff ff 	mov    -0xaf8(%rbp),%rax
  81a920:	4c 8b ad 00 f5 ff ff 	mov    -0xb00(%rbp),%r13
  81a927:	4c 8b a5 e0 fe ff ff 	mov    -0x120(%rbp),%r12
  81a92e:	4d 89 e6             	mov    %r12,%r14
  81a931:	4c 8b bd e0 fc ff ff 	mov    -0x320(%rbp),%r15
  81a938:	48 03 c6             	add    %rsi,%rax
  81a93b:	48 03 b5 40 f3 ff ff 	add    -0xcc0(%rbp),%rsi
  81a942:	4c 03 ea             	add    %rdx,%r13
  81a945:	48 03 95 50 f3 ff ff 	add    -0xcb0(%rbp),%rdx
  81a94c:	c4 41 7d 10 6c cd 00 	vmovupd 0x0(%r13,%rcx,8),%ymm13
  81a953:	c5 7d 10 3c c8       	vmovupd (%rax,%rcx,8),%ymm15
  81a958:	c5 15 58 34 ca       	vaddpd (%rdx,%rcx,8),%ymm13,%ymm14
  81a95d:	c4 41 7d 59 ee       	vmulpd %ymm14,%ymm0,%ymm13
  81a962:	c5 05 58 34 ce       	vaddpd (%rsi,%rcx,8),%ymm15,%ymm14
  81a967:	c4 41 15 59 fe       	vmulpd %ymm14,%ymm13,%ymm15
  81a96c:	c4 41 7d 11 3c cf    	vmovupd %ymm15,(%r15,%rcx,8)
  81a972:	48 83 c1 04          	add    $0x4,%rcx
  81a976:	49 3b ce             	cmp    %r14,%rcx
  81a979:	72 d1                	jb     81a94c <pre_step3d_mod_mp_pre_step3d_tile_+0x64ac>
  81a97b:	4c 3b a5 78 ff ff ff 	cmp    -0x88(%rbp),%r12
  81a982:	0f 83 50 03 00 00    	jae    81acd8 <pre_step3d_mod_mp_pre_step3d_tile_+0x6838>
  81a988:	48 8b 95 e8 f6 ff ff 	mov    -0x918(%rbp),%rdx
  81a98f:	48 8b 85 e0 f6 ff ff 	mov    -0x920(%rbp),%rax
  81a996:	48 0f af d7          	imul   %rdi,%rdx
  81a99a:	48 0f af c7          	imul   %rdi,%rax
  81a99e:	48 8b b5 08 f5 ff ff 	mov    -0xaf8(%rbp),%rsi
  81a9a5:	48 8b 8d 00 f5 ff ff 	mov    -0xb00(%rbp),%rcx
  81a9ac:	4c 8b ad e0 fc ff ff 	mov    -0x320(%rbp),%r13
  81a9b3:	4c 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%r14
  81a9ba:	48 03 f0             	add    %rax,%rsi
  81a9bd:	48 03 85 40 f3 ff ff 	add    -0xcc0(%rbp),%rax
  81a9c4:	48 03 ca             	add    %rdx,%rcx
  81a9c7:	48 03 95 50 f3 ff ff 	add    -0xcb0(%rbp),%rdx
  81a9ce:	c4 21 7b 10 2c e1    	vmovsd (%rcx,%r12,8),%xmm13
  81a9d4:	c4 21 7b 10 3c e6    	vmovsd (%rsi,%r12,8),%xmm15
  81a9da:	c4 21 13 58 34 e2    	vaddsd (%rdx,%r12,8),%xmm13,%xmm14
  81a9e0:	c4 41 33 59 ee       	vmulsd %xmm14,%xmm9,%xmm13
  81a9e5:	c4 21 03 58 34 e0    	vaddsd (%rax,%r12,8),%xmm15,%xmm14
  81a9eb:	c4 41 13 59 fe       	vmulsd %xmm14,%xmm13,%xmm15
  81a9f0:	c4 01 7b 11 7c e5 00 	vmovsd %xmm15,0x0(%r13,%r12,8)
  81a9f7:	49 ff c4             	inc    %r12
  81a9fa:	4d 3b e6             	cmp    %r14,%r12
  81a9fd:	72 cf                	jb     81a9ce <pre_step3d_mod_mp_pre_step3d_tile_+0x652e>
  81a9ff:	e9 d4 02 00 00       	jmpq   81acd8 <pre_step3d_mod_mp_pre_step3d_tile_+0x6838>
  81aa04:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  81aa0b:	48 3b 85 00 fc ff ff 	cmp    -0x400(%rbp),%rax
  81aa12:	0f 8c c0 02 00 00    	jl     81acd8 <pre_step3d_mod_mp_pre_step3d_tile_+0x6838>
  81aa18:	48 83 bd 78 ff ff ff 	cmpq   $0x4,-0x88(%rbp)
  81aa1f:	04 
  81aa20:	0f 8c 56 9f 00 00    	jl     82497c <pre_step3d_mod_mp_pre_step3d_tile_+0x104dc>
  81aa26:	4c 8b b5 e8 f6 ff ff 	mov    -0x918(%rbp),%r14
  81aa2d:	33 f6                	xor    %esi,%esi
  81aa2f:	4c 0f af f7          	imul   %rdi,%r14
  81aa33:	4c 8b a5 e0 f6 ff ff 	mov    -0x920(%rbp),%r12
  81aa3a:	4c 0f af e7          	imul   %rdi,%r12
  81aa3e:	48 8b 85 58 f3 ff ff 	mov    -0xca8(%rbp),%rax
  81aa45:	4c 8b ad 48 f5 ff ff 	mov    -0xab8(%rbp),%r13
  81aa4c:	48 8b 8d 58 f5 ff ff 	mov    -0xaa8(%rbp),%rcx
  81aa53:	4c 8b bd e0 fe ff ff 	mov    -0x120(%rbp),%r15
  81aa5a:	4a 8d 14 30          	lea    (%rax,%r14,1),%rdx
  81aa5e:	48 89 95 20 f2 ff ff 	mov    %rdx,-0xde0(%rbp)
  81aa65:	4b 8d 44 35 00       	lea    0x0(%r13,%r14,1),%rax
  81aa6a:	48 8b 95 50 f5 ff ff 	mov    -0xab0(%rbp),%rdx
  81aa71:	49 03 ce             	add    %r14,%rcx
  81aa74:	48 89 85 c0 fb ff ff 	mov    %rax,-0x440(%rbp)
  81aa7b:	48 8b 85 48 f3 ff ff 	mov    -0xcb8(%rbp),%rax
  81aa82:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  81aa89:	4e 8d 2c 22          	lea    (%rdx,%r12,1),%r13
  81aa8d:	4c 89 ad c8 fb ff ff 	mov    %r13,-0x438(%rbp)
  81aa94:	4c 8b ad 40 f5 ff ff 	mov    -0xac0(%rbp),%r13
  81aa9b:	4a 8d 14 20          	lea    (%rax,%r12,1),%rdx
  81aa9f:	48 89 95 18 f2 ff ff 	mov    %rdx,-0xde8(%rbp)
  81aaa6:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  81aaad:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  81aab4:	4b 8d 54 25 00       	lea    0x0(%r13,%r12,1),%rdx
  81aab9:	45 33 ed             	xor    %r13d,%r13d
  81aabc:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  81aac3:	33 c0                	xor    %eax,%eax
  81aac5:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  81aacc:	4c 03 b5 38 f5 ff ff 	add    -0xac8(%rbp),%r14
  81aad3:	4c 03 a5 30 f5 ff ff 	add    -0xad0(%rbp),%r12
  81aada:	48 8b bd 18 f2 ff ff 	mov    -0xde8(%rbp),%rdi
  81aae1:	4c 8b 85 20 f2 ff ff 	mov    -0xde0(%rbp),%r8
  81aae8:	4c 8b 8d e0 fc ff ff 	mov    -0x320(%rbp),%r9
  81aaef:	4c 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%r10
  81aaf6:	4c 8b 9d 78 fe ff ff 	mov    -0x188(%rbp),%r11
  81aafd:	4c 89 bd 30 f2 ff ff 	mov    %r15,-0xdd0(%rbp)
  81ab04:	4f 8d 3c 28          	lea    (%r8,%r13,1),%r15
  81ab08:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81ab0d:	c4 01 11 16 34 1f    	vmovhpd (%r15,%r11,1),%xmm13,%xmm14
  81ab13:	4f 8d 3c 2e          	lea    (%r14,%r13,1),%r15
  81ab17:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81ab1c:	c4 01 01 16 2c 1f    	vmovhpd (%r15,%r11,1),%xmm15,%xmm13
  81ab22:	4c 8d 3c 07          	lea    (%rdi,%rax,1),%r15
  81ab26:	c4 41 09 58 fd       	vaddpd %xmm13,%xmm14,%xmm15
  81ab2b:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81ab30:	c4 41 21 59 f7       	vmulpd %xmm15,%xmm11,%xmm14
  81ab35:	c4 01 11 16 3c 17    	vmovhpd (%r15,%r10,1),%xmm13,%xmm15
  81ab3b:	4d 8d 3c 04          	lea    (%r12,%rax,1),%r15
  81ab3f:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81ab44:	c4 01 11 16 2c 17    	vmovhpd (%r15,%r10,1),%xmm13,%xmm13
  81ab4a:	4e 8d 3c 29          	lea    (%rcx,%r13,1),%r15
  81ab4e:	c4 41 01 58 fd       	vaddpd %xmm13,%xmm15,%xmm15
  81ab53:	c4 41 09 59 f7       	vmulpd %xmm15,%xmm14,%xmm14
  81ab58:	c4 41 79 11 34 f1    	vmovupd %xmm14,(%r9,%rsi,8)
  81ab5e:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  81ab63:	c4 01 09 16 3c 1f    	vmovhpd (%r15,%r11,1),%xmm14,%xmm15
  81ab69:	4c 8b bd c0 fb ff ff 	mov    -0x440(%rbp),%r15
  81ab70:	4d 03 fd             	add    %r13,%r15
  81ab73:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81ab78:	4f 8d 6c 9d 00       	lea    0x0(%r13,%r11,4),%r13
  81ab7d:	c4 01 11 16 34 1f    	vmovhpd (%r15,%r11,1),%xmm13,%xmm14
  81ab83:	c4 41 01 58 ee       	vaddpd %xmm14,%xmm15,%xmm13
  81ab88:	4c 8b bd c8 fb ff ff 	mov    -0x438(%rbp),%r15
  81ab8f:	c4 41 21 59 f5       	vmulpd %xmm13,%xmm11,%xmm14
  81ab94:	4c 03 f8             	add    %rax,%r15
  81ab97:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81ab9c:	c4 01 01 16 2c 17    	vmovhpd (%r15,%r10,1),%xmm15,%xmm13
  81aba2:	4c 8d 3c 02          	lea    (%rdx,%rax,1),%r15
  81aba6:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81abab:	4a 8d 04 90          	lea    (%rax,%r10,4),%rax
  81abaf:	c4 01 01 16 3c 17    	vmovhpd (%r15,%r10,1),%xmm15,%xmm15
  81abb5:	c4 41 11 58 ef       	vaddpd %xmm15,%xmm13,%xmm13
  81abba:	c4 41 09 59 f5       	vmulpd %xmm13,%xmm14,%xmm14
  81abbf:	c4 41 79 11 74 f1 10 	vmovupd %xmm14,0x10(%r9,%rsi,8)
  81abc6:	48 83 c6 04          	add    $0x4,%rsi
  81abca:	48 3b b5 e0 fe ff ff 	cmp    -0x120(%rbp),%rsi
  81abd1:	0f 82 2d ff ff ff    	jb     81ab04 <pre_step3d_mod_mp_pre_step3d_tile_+0x6664>
  81abd7:	4c 8b bd 30 f2 ff ff 	mov    -0xdd0(%rbp),%r15
  81abde:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  81abe5:	44 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%r8d
  81abec:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  81abf3:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  81abfa:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  81ac01:	4c 8b ad 80 fe ff ff 	mov    -0x180(%rbp),%r13
  81ac08:	48 8b 8d 78 fe ff ff 	mov    -0x188(%rbp),%rcx
  81ac0f:	4d 0f af ef          	imul   %r15,%r13
  81ac13:	49 0f af cf          	imul   %r15,%rcx
  81ac17:	4c 3b bd 78 ff ff ff 	cmp    -0x88(%rbp),%r15
  81ac1e:	0f 83 b4 00 00 00    	jae    81acd8 <pre_step3d_mod_mp_pre_step3d_tile_+0x6838>
  81ac24:	48 8b 85 e8 f6 ff ff 	mov    -0x918(%rbp),%rax
  81ac2b:	4c 8b a5 e0 f6 ff ff 	mov    -0x920(%rbp),%r12
  81ac32:	48 0f af c7          	imul   %rdi,%rax
  81ac36:	4c 0f af e7          	imul   %rdi,%r12
  81ac3a:	48 8b 95 58 f3 ff ff 	mov    -0xca8(%rbp),%rdx
  81ac41:	48 8b b5 48 f3 ff ff 	mov    -0xcb8(%rbp),%rsi
  81ac48:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  81ac4f:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  81ac56:	48 03 d0             	add    %rax,%rdx
  81ac59:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  81ac60:	49 03 f4             	add    %r12,%rsi
  81ac63:	48 03 85 38 f5 ff ff 	add    -0xac8(%rbp),%rax
  81ac6a:	4c 03 a5 30 f5 ff ff 	add    -0xad0(%rbp),%r12
  81ac71:	4c 8b 8d e0 fc ff ff 	mov    -0x320(%rbp),%r9
  81ac78:	4c 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%r10
  81ac7f:	4c 8b 9d 80 fe ff ff 	mov    -0x180(%rbp),%r11
  81ac86:	4c 8b b5 78 fe ff ff 	mov    -0x188(%rbp),%r14
  81ac8d:	c5 7b 10 2c 11       	vmovsd (%rcx,%rdx,1),%xmm13
  81ac92:	c4 41 7b 10 7c 35 00 	vmovsd 0x0(%r13,%rsi,1),%xmm15
  81ac99:	c5 13 58 34 01       	vaddsd (%rcx,%rax,1),%xmm13,%xmm14
  81ac9e:	49 03 ce             	add    %r14,%rcx
  81aca1:	c4 41 33 59 ee       	vmulsd %xmm14,%xmm9,%xmm13
  81aca6:	c4 01 03 58 74 25 00 	vaddsd 0x0(%r13,%r12,1),%xmm15,%xmm14
  81acad:	c4 41 13 59 fe       	vmulsd %xmm14,%xmm13,%xmm15
  81acb2:	4d 03 eb             	add    %r11,%r13
  81acb5:	c4 01 7b 11 3c f9    	vmovsd %xmm15,(%r9,%r15,8)
  81acbb:	49 ff c7             	inc    %r15
  81acbe:	4d 3b fa             	cmp    %r10,%r15
  81acc1:	72 ca                	jb     81ac8d <pre_step3d_mod_mp_pre_step3d_tile_+0x67ed>
  81acc3:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  81acca:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  81acd1:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  81acd8:	8b 85 e8 fb ff ff    	mov    -0x418(%rbp),%eax
  81acde:	3b 85 e0 fb ff ff    	cmp    -0x420(%rbp),%eax
  81ace4:	0f 85 46 06 00 00    	jne    81b330 <pre_step3d_mod_mp_pre_step3d_tile_+0x6e90>
  81acea:	48 83 7d 80 08       	cmpq   $0x8,-0x80(%rbp)
  81acef:	0f 85 14 02 00 00    	jne    81af09 <pre_step3d_mod_mp_pre_step3d_tile_+0x6a69>
  81acf5:	48 83 bd 58 ff ff ff 	cmpq   $0x8,-0xa8(%rbp)
  81acfc:	08 
  81acfd:	0f 85 06 02 00 00    	jne    81af09 <pre_step3d_mod_mp_pre_step3d_tile_+0x6a69>
  81ad03:	45 33 ed             	xor    %r13d,%r13d
  81ad06:	45 33 e4             	xor    %r12d,%r12d
  81ad09:	33 f6                	xor    %esi,%esi
  81ad0b:	33 c9                	xor    %ecx,%ecx
  81ad0d:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  81ad14:	00 
  81ad15:	0f 8e 65 15 00 00    	jle    81c280 <pre_step3d_mod_mp_pre_step3d_tile_+0x7de0>
  81ad1b:	48 8b 95 80 f5 ff ff 	mov    -0xa80(%rbp),%rdx
  81ad22:	4c 8b b5 58 f6 ff ff 	mov    -0x9a8(%rbp),%r14
  81ad29:	48 0f af d7          	imul   %rdi,%rdx
  81ad2d:	4c 0f af f7          	imul   %rdi,%r14
  81ad31:	c5 7d 10 25 27 a4 0a 	vmovupd 0xaa427(%rip),%ymm12        # 8c5160 <var$630.126.450+0x4a0>
  81ad38:	00 
  81ad39:	4c 8b bd 70 f3 ff ff 	mov    -0xc90(%rbp),%r15
  81ad40:	48 8b 85 a0 f4 ff ff 	mov    -0xb60(%rbp),%rax
  81ad47:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  81ad4e:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  81ad55:	4c 03 fa             	add    %rdx,%r15
  81ad58:	48 03 95 98 f4 ff ff 	add    -0xb68(%rbp),%rdx
  81ad5f:	49 03 c6             	add    %r14,%rax
  81ad62:	4c 03 b5 c0 f4 ff ff 	add    -0xb40(%rbp),%r14
  81ad69:	48 89 95 88 f7 ff ff 	mov    %rdx,-0x878(%rbp)
  81ad70:	4c 89 b5 90 f7 ff ff 	mov    %r14,-0x870(%rbp)
  81ad77:	4c 89 bd 98 f7 ff ff 	mov    %r15,-0x868(%rbp)
  81ad7e:	48 89 85 a0 f7 ff ff 	mov    %rax,-0x860(%rbp)
  81ad85:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  81ad8c:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  81ad93:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  81ad9a:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
  81ada1:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  81ada8:	48 3b 85 00 fc ff ff 	cmp    -0x400(%rbp),%rax
  81adaf:	0f 8c ff 00 00 00    	jl     81aeb4 <pre_step3d_mod_mp_pre_step3d_tile_+0x6a14>
  81adb5:	48 83 fa 04          	cmp    $0x4,%rdx
  81adb9:	0f 8c 88 9b 00 00    	jl     824947 <pre_step3d_mod_mp_pre_step3d_tile_+0x104a7>
  81adbf:	4c 8b 9d 80 f7 ff ff 	mov    -0x880(%rbp),%r11
  81adc6:	45 33 f6             	xor    %r14d,%r14d
  81adc9:	4c 8b 95 98 fa ff ff 	mov    -0x568(%rbp),%r10
  81add0:	4c 8b 8d 88 f7 ff ff 	mov    -0x878(%rbp),%r9
  81add7:	4c 8b 85 98 f7 ff ff 	mov    -0x868(%rbp),%r8
  81adde:	4d 03 dc             	add    %r12,%r11
  81ade1:	48 8b bd 90 f7 ff ff 	mov    -0x870(%rbp),%rdi
  81ade8:	4d 03 d4             	add    %r12,%r10
  81adeb:	4c 8b bd a0 f7 ff ff 	mov    -0x860(%rbp),%r15
  81adf2:	4c 03 ce             	add    %rsi,%r9
  81adf5:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  81adfc:	4c 03 c6             	add    %rsi,%r8
  81adff:	48 89 c2             	mov    %rax,%rdx
  81ae02:	48 03 f9             	add    %rcx,%rdi
  81ae05:	4c 03 f9             	add    %rcx,%r15
  81ae08:	c4 01 7d 10 3c f7    	vmovupd (%r15,%r14,8),%ymm15
  81ae0e:	c4 01 1d 59 34 f0    	vmulpd (%r8,%r14,8),%ymm12,%ymm14
  81ae14:	c4 21 05 58 2c f7    	vaddpd (%rdi,%r14,8),%ymm15,%ymm13
  81ae1a:	c4 01 7d 10 7c f2 08 	vmovupd 0x8(%r10,%r14,8),%ymm15
  81ae21:	c4 01 05 5c 3c f3    	vsubpd (%r11,%r14,8),%ymm15,%ymm15
  81ae27:	c4 42 95 a8 f7       	vfmadd213pd %ymm15,%ymm13,%ymm14
  81ae2c:	c4 01 7d 11 34 f1    	vmovupd %ymm14,(%r9,%r14,8)
  81ae32:	49 83 c6 04          	add    $0x4,%r14
  81ae36:	4c 3b f2             	cmp    %rdx,%r14
  81ae39:	72 cd                	jb     81ae08 <pre_step3d_mod_mp_pre_step3d_tile_+0x6968>
  81ae3b:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
  81ae42:	48 3b c2             	cmp    %rdx,%rax
  81ae45:	73 6d                	jae    81aeb4 <pre_step3d_mod_mp_pre_step3d_tile_+0x6a14>
  81ae47:	4c 8b 95 80 f7 ff ff 	mov    -0x880(%rbp),%r10
  81ae4e:	4c 8b 8d 98 fa ff ff 	mov    -0x568(%rbp),%r9
  81ae55:	4c 8b 85 88 f7 ff ff 	mov    -0x878(%rbp),%r8
  81ae5c:	48 8b bd 98 f7 ff ff 	mov    -0x868(%rbp),%rdi
  81ae63:	4d 03 d4             	add    %r12,%r10
  81ae66:	4c 8b b5 90 f7 ff ff 	mov    -0x870(%rbp),%r14
  81ae6d:	4d 03 cc             	add    %r12,%r9
  81ae70:	4c 8b 9d a0 f7 ff ff 	mov    -0x860(%rbp),%r11
  81ae77:	4c 03 c6             	add    %rsi,%r8
  81ae7a:	48 03 fe             	add    %rsi,%rdi
  81ae7d:	4c 03 f1             	add    %rcx,%r14
  81ae80:	4c 03 d9             	add    %rcx,%r11
  81ae83:	c4 41 7b 10 3c c3    	vmovsd (%r11,%rax,8),%xmm15
  81ae89:	c5 63 59 34 c7       	vmulsd (%rdi,%rax,8),%xmm3,%xmm14
  81ae8e:	c4 41 03 58 2c c6    	vaddsd (%r14,%rax,8),%xmm15,%xmm13
  81ae94:	c4 41 7b 10 7c c1 08 	vmovsd 0x8(%r9,%rax,8),%xmm15
  81ae9b:	c4 41 03 5c 3c c2    	vsubsd (%r10,%rax,8),%xmm15,%xmm15
  81aea1:	c4 42 91 a9 f7       	vfmadd213sd %xmm15,%xmm13,%xmm14
  81aea6:	c4 41 7b 11 34 c0    	vmovsd %xmm14,(%r8,%rax,8)
  81aeac:	48 ff c0             	inc    %rax
  81aeaf:	48 3b c2             	cmp    %rdx,%rax
  81aeb2:	72 cf                	jb     81ae83 <pre_step3d_mod_mp_pre_step3d_tile_+0x69e3>
  81aeb4:	49 ff c5             	inc    %r13
  81aeb7:	4c 03 a5 18 ff ff ff 	add    -0xe8(%rbp),%r12
  81aebe:	48 03 b5 08 fc ff ff 	add    -0x3f8(%rbp),%rsi
  81aec5:	48 03 8d 10 fd ff ff 	add    -0x2f0(%rbp),%rcx
  81aecc:	4c 3b ad 08 fd ff ff 	cmp    -0x2f8(%rbp),%r13
  81aed3:	0f 82 c8 fe ff ff    	jb     81ada1 <pre_step3d_mod_mp_pre_step3d_tile_+0x6901>
  81aed9:	c5 7b 10 25 1f c1 0a 	vmovsd 0xac11f(%rip),%xmm12        # 8c7000 <__STRLITPACK_199.115+0x70>
  81aee0:	00 
  81aee1:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  81aee8:	44 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%r8d
  81aeef:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  81aef6:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  81aefd:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  81af04:	e9 77 13 00 00       	jmpq   81c280 <pre_step3d_mod_mp_pre_step3d_tile_+0x7de0>
  81af09:	33 c9                	xor    %ecx,%ecx
  81af0b:	33 d2                	xor    %edx,%edx
  81af0d:	33 f6                	xor    %esi,%esi
  81af0f:	33 c0                	xor    %eax,%eax
  81af11:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  81af18:	00 
  81af19:	0f 8e 61 13 00 00    	jle    81c280 <pre_step3d_mod_mp_pre_step3d_tile_+0x7de0>
  81af1f:	4c 8b ad 80 f5 ff ff 	mov    -0xa80(%rbp),%r13
  81af26:	4c 0f af ef          	imul   %rdi,%r13
  81af2a:	4c 8b b5 58 f6 ff ff 	mov    -0x9a8(%rbp),%r14
  81af31:	4c 0f af f7          	imul   %rdi,%r14
  81af35:	4c 8b a5 78 f5 ff ff 	mov    -0xa88(%rbp),%r12
  81af3c:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  81af43:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  81af4a:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  81af51:	4f 8d 3c 2c          	lea    (%r12,%r13,1),%r15
  81af55:	4c 89 bd f8 f7 ff ff 	mov    %r15,-0x808(%rbp)
  81af5c:	4c 8b bd 18 f3 ff ff 	mov    -0xce8(%rbp),%r15
  81af63:	4c 8b a5 b8 f4 ff ff 	mov    -0xb48(%rbp),%r12
  81af6a:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  81af71:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  81af78:	4d 03 fe             	add    %r14,%r15
  81af7b:	4c 89 bd f0 f7 ff ff 	mov    %r15,-0x810(%rbp)
  81af82:	4d 03 e6             	add    %r14,%r12
  81af85:	4c 8b bd b0 f4 ff ff 	mov    -0xb50(%rbp),%r15
  81af8c:	4c 89 a5 c0 f7 ff ff 	mov    %r12,-0x840(%rbp)
  81af93:	c5 79 10 25 05 b8 0a 	vmovupd 0xab805(%rip),%xmm12        # 8c67a0 <__STRLITPACK_19.34+0x10>
  81af9a:	00 
  81af9b:	4d 03 fd             	add    %r13,%r15
  81af9e:	4c 89 bd 08 f8 ff ff 	mov    %r15,-0x7f8(%rbp)
  81afa5:	4c 8b bd 90 f4 ff ff 	mov    -0xb70(%rbp),%r15
  81afac:	4d 03 fd             	add    %r13,%r15
  81afaf:	4c 89 bd 00 f8 ff ff 	mov    %r15,-0x800(%rbp)
  81afb6:	4c 8b bd 28 f3 ff ff 	mov    -0xcd8(%rbp),%r15
  81afbd:	4c 03 ad a8 f4 ff ff 	add    -0xb58(%rbp),%r13
  81afc4:	4c 89 ad b8 f7 ff ff 	mov    %r13,-0x848(%rbp)
  81afcb:	4c 8b 6d 80          	mov    -0x80(%rbp),%r13
  81afcf:	4d 03 fe             	add    %r14,%r15
  81afd2:	4c 03 b5 20 f3 ff ff 	add    -0xce0(%rbp),%r14
  81afd9:	4c 89 bd b0 f7 ff ff 	mov    %r15,-0x850(%rbp)
  81afe0:	4c 89 b5 a8 f7 ff ff 	mov    %r14,-0x858(%rbp)
  81afe7:	4c 8b bd 78 ff ff ff 	mov    -0x88(%rbp),%r15
  81afee:	48 8b bd 00 ff ff ff 	mov    -0x100(%rbp),%rdi
  81aff5:	48 3b bd 00 fc ff ff 	cmp    -0x400(%rbp),%rdi
  81affc:	0f 8c d9 02 00 00    	jl     81b2db <pre_step3d_mod_mp_pre_step3d_tile_+0x6e3b>
  81b002:	4d 85 ed             	test   %r13,%r13
  81b005:	0f 84 43 99 00 00    	je     82494e <pre_step3d_mod_mp_pre_step3d_tile_+0x104ae>
  81b00b:	49 83 ff 04          	cmp    $0x4,%r15
  81b00f:	0f 8c 39 99 00 00    	jl     82494e <pre_step3d_mod_mp_pre_step3d_tile_+0x104ae>
  81b015:	48 8b bd f0 f7 ff ff 	mov    -0x810(%rbp),%rdi
  81b01c:	45 33 db             	xor    %r11d,%r11d
  81b01f:	4c 8b 95 80 f7 ff ff 	mov    -0x880(%rbp),%r10
  81b026:	4c 8b 8d 98 fa ff ff 	mov    -0x568(%rbp),%r9
  81b02d:	4c 8b 85 08 f8 ff ff 	mov    -0x7f8(%rbp),%r8
  81b034:	48 03 f8             	add    %rax,%rdi
  81b037:	48 89 bd d8 f7 ff ff 	mov    %rdi,-0x828(%rbp)
  81b03e:	4c 03 d2             	add    %rdx,%r10
  81b041:	48 8b bd c0 f7 ff ff 	mov    -0x840(%rbp),%rdi
  81b048:	4c 03 ca             	add    %rdx,%r9
  81b04b:	4c 8b a5 f8 f7 ff ff 	mov    -0x808(%rbp),%r12
  81b052:	4c 03 c6             	add    %rsi,%r8
  81b055:	4c 8b b5 e0 fe ff ff 	mov    -0x120(%rbp),%r14
  81b05c:	4c 89 b5 10 f8 ff ff 	mov    %r14,-0x7f0(%rbp)
  81b063:	48 03 f8             	add    %rax,%rdi
  81b066:	48 89 bd f8 fe ff ff 	mov    %rdi,-0x108(%rbp)
  81b06d:	4c 03 e6             	add    %rsi,%r12
  81b070:	48 8b bd 00 f8 ff ff 	mov    -0x800(%rbp),%rdi
  81b077:	48 89 85 18 f8 ff ff 	mov    %rax,-0x7e8(%rbp)
  81b07e:	48 89 b5 20 f8 ff ff 	mov    %rsi,-0x7e0(%rbp)
  81b085:	48 89 95 28 f8 ff ff 	mov    %rdx,-0x7d8(%rbp)
  81b08c:	48 03 fe             	add    %rsi,%rdi
  81b08f:	48 89 bd f0 fe ff ff 	mov    %rdi,-0x110(%rbp)
  81b096:	48 8b bd b8 f7 ff ff 	mov    -0x848(%rbp),%rdi
  81b09d:	48 89 8d 30 f8 ff ff 	mov    %rcx,-0x7d0(%rbp)
  81b0a4:	48 8b 8d d8 f7 ff ff 	mov    -0x828(%rbp),%rcx
  81b0ab:	4c 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%r14
  81b0b2:	48 03 fe             	add    %rsi,%rdi
  81b0b5:	48 89 bd d0 f7 ff ff 	mov    %rdi,-0x830(%rbp)
  81b0bc:	48 8b bd b0 f7 ff ff 	mov    -0x850(%rbp),%rdi
  81b0c3:	48 8b 95 d0 f7 ff ff 	mov    -0x830(%rbp),%rdx
  81b0ca:	48 03 f8             	add    %rax,%rdi
  81b0cd:	48 89 bd c8 f7 ff ff 	mov    %rdi,-0x838(%rbp)
  81b0d4:	48 8b bd a8 f7 ff ff 	mov    -0x858(%rbp),%rdi
  81b0db:	48 03 f8             	add    %rax,%rdi
  81b0de:	48 89 bd e8 fe ff ff 	mov    %rdi,-0x118(%rbp)
  81b0e5:	33 ff                	xor    %edi,%edi
  81b0e7:	48 89 fe             	mov    %rdi,%rsi
  81b0ea:	48 8b 85 c8 f7 ff ff 	mov    -0x838(%rbp),%rax
  81b0f1:	4d 8d 3c 3c          	lea    (%r12,%rdi,1),%r15
  81b0f5:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81b0fa:	c4 01 01 16 2c 2f    	vmovhpd (%r15,%r13,1),%xmm15,%xmm13
  81b100:	4c 8b bd f8 fe ff ff 	mov    -0x108(%rbp),%r15
  81b107:	c4 41 11 59 f4       	vmulpd %xmm12,%xmm13,%xmm14
  81b10c:	4c 03 fe             	add    %rsi,%r15
  81b10f:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81b114:	c4 01 01 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm13
  81b11a:	4c 8d 3c 31          	lea    (%rcx,%rsi,1),%r15
  81b11e:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81b123:	c4 01 01 16 3c 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm15
  81b129:	4e 8d 3c 07          	lea    (%rdi,%r8,1),%r15
  81b12d:	c4 41 11 58 ff       	vaddpd %xmm15,%xmm13,%xmm15
  81b132:	c4 01 79 10 6c d9 08 	vmovupd 0x8(%r9,%r11,8),%xmm13
  81b139:	c4 01 11 5c 2c da    	vsubpd (%r10,%r11,8),%xmm13,%xmm13
  81b13f:	c4 42 81 a8 f5       	vfmadd213pd %xmm13,%xmm15,%xmm14
  81b144:	c4 41 7b 11 37       	vmovsd %xmm14,(%r15)
  81b149:	c4 01 79 17 74 3d 00 	vmovhpd %xmm14,0x0(%r13,%r15,1)
  81b150:	4c 8d 3c 3a          	lea    (%rdx,%rdi,1),%r15
  81b154:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  81b159:	c4 01 09 16 3c 2f    	vmovhpd (%r15,%r13,1),%xmm14,%xmm15
  81b15f:	4c 8b bd e8 fe ff ff 	mov    -0x118(%rbp),%r15
  81b166:	c4 41 01 59 fc       	vmulpd %xmm12,%xmm15,%xmm15
  81b16b:	4c 03 fe             	add    %rsi,%r15
  81b16e:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81b173:	c4 01 11 16 34 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm14
  81b179:	4c 8d 3c 30          	lea    (%rax,%rsi,1),%r15
  81b17d:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81b182:	4a 8d 34 b6          	lea    (%rsi,%r14,4),%rsi
  81b186:	c4 01 11 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm13
  81b18c:	c4 41 09 58 ed       	vaddpd %xmm13,%xmm14,%xmm13
  81b191:	c4 01 79 10 74 d9 18 	vmovupd 0x18(%r9,%r11,8),%xmm14
  81b198:	c4 01 09 5c 74 da 10 	vsubpd 0x10(%r10,%r11,8),%xmm14,%xmm14
  81b19f:	c4 42 91 a8 fe       	vfmadd213pd %xmm14,%xmm13,%xmm15
  81b1a4:	49 83 c3 04          	add    $0x4,%r11
  81b1a8:	4c 8b bd f0 fe ff ff 	mov    -0x110(%rbp),%r15
  81b1af:	4c 03 ff             	add    %rdi,%r15
  81b1b2:	c4 41 7b 11 3f       	vmovsd %xmm15,(%r15)
  81b1b7:	4a 8d 3c af          	lea    (%rdi,%r13,4),%rdi
  81b1bb:	c4 01 79 17 7c 3d 00 	vmovhpd %xmm15,0x0(%r13,%r15,1)
  81b1c2:	4c 3b 9d e0 fe ff ff 	cmp    -0x120(%rbp),%r11
  81b1c9:	0f 82 22 ff ff ff    	jb     81b0f1 <pre_step3d_mod_mp_pre_step3d_tile_+0x6c51>
  81b1cf:	4c 8b b5 10 f8 ff ff 	mov    -0x7f0(%rbp),%r14
  81b1d6:	48 8b 85 18 f8 ff ff 	mov    -0x7e8(%rbp),%rax
  81b1dd:	48 8b b5 20 f8 ff ff 	mov    -0x7e0(%rbp),%rsi
  81b1e4:	48 8b 95 28 f8 ff ff 	mov    -0x7d8(%rbp),%rdx
  81b1eb:	48 8b 8d 30 f8 ff ff 	mov    -0x7d0(%rbp),%rcx
  81b1f2:	4c 8b bd 78 ff ff ff 	mov    -0x88(%rbp),%r15
  81b1f9:	4d 89 e9             	mov    %r13,%r9
  81b1fc:	4c 8b 9d 58 ff ff ff 	mov    -0xa8(%rbp),%r11
  81b203:	4d 0f af de          	imul   %r14,%r11
  81b207:	4d 0f af ce          	imul   %r14,%r9
  81b20b:	4d 3b f7             	cmp    %r15,%r14
  81b20e:	0f 83 c7 00 00 00    	jae    81b2db <pre_step3d_mod_mp_pre_step3d_tile_+0x6e3b>
  81b214:	4c 8b 85 80 f7 ff ff 	mov    -0x880(%rbp),%r8
  81b21b:	4c 8b a5 08 f8 ff ff 	mov    -0x7f8(%rbp),%r12
  81b222:	4c 8b 95 98 fa ff ff 	mov    -0x568(%rbp),%r10
  81b229:	48 89 b5 20 f8 ff ff 	mov    %rsi,-0x7e0(%rbp)
  81b230:	49 8d 3c 10          	lea    (%r8,%rdx,1),%rdi
  81b234:	48 89 bd e8 f7 ff ff 	mov    %rdi,-0x818(%rbp)
  81b23b:	49 8d 3c 34          	lea    (%r12,%rsi,1),%rdi
  81b23f:	4c 8b a5 f0 f7 ff ff 	mov    -0x810(%rbp),%r12
  81b246:	4d 8d 04 12          	lea    (%r10,%rdx,1),%r8
  81b24a:	4c 8b 95 f8 f7 ff ff 	mov    -0x808(%rbp),%r10
  81b251:	48 89 95 28 f8 ff ff 	mov    %rdx,-0x7d8(%rbp)
  81b258:	48 89 8d 30 f8 ff ff 	mov    %rcx,-0x7d0(%rbp)
  81b25f:	4c 03 e0             	add    %rax,%r12
  81b262:	4c 89 a5 e0 f7 ff ff 	mov    %r12,-0x820(%rbp)
  81b269:	4c 03 d6             	add    %rsi,%r10
  81b26c:	4c 8b a5 c0 f7 ff ff 	mov    -0x840(%rbp),%r12
  81b273:	48 8b 8d e0 f7 ff ff 	mov    -0x820(%rbp),%rcx
  81b27a:	48 8b b5 e8 f7 ff ff 	mov    -0x818(%rbp),%rsi
  81b281:	4c 03 e0             	add    %rax,%r12
  81b284:	4c 89 e2             	mov    %r12,%rdx
  81b287:	4c 8b a5 58 ff ff ff 	mov    -0xa8(%rbp),%r12
  81b28e:	c4 41 7b 10 3c 13    	vmovsd (%r11,%rdx,1),%xmm15
  81b294:	c4 01 63 59 34 11    	vmulsd (%r9,%r10,1),%xmm3,%xmm14
  81b29a:	c4 41 03 58 2c 0b    	vaddsd (%r11,%rcx,1),%xmm15,%xmm13
  81b2a0:	c4 01 7b 10 7c f0 08 	vmovsd 0x8(%r8,%r14,8),%xmm15
  81b2a7:	4d 03 dc             	add    %r12,%r11
  81b2aa:	c4 21 03 5c 3c f6    	vsubsd (%rsi,%r14,8),%xmm15,%xmm15
  81b2b0:	49 ff c6             	inc    %r14
  81b2b3:	c4 42 91 a9 f7       	vfmadd213sd %xmm15,%xmm13,%xmm14
  81b2b8:	c4 41 7b 11 34 39    	vmovsd %xmm14,(%r9,%rdi,1)
  81b2be:	4d 03 cd             	add    %r13,%r9
  81b2c1:	4d 3b f7             	cmp    %r15,%r14
  81b2c4:	72 c8                	jb     81b28e <pre_step3d_mod_mp_pre_step3d_tile_+0x6dee>
  81b2c6:	48 8b b5 20 f8 ff ff 	mov    -0x7e0(%rbp),%rsi
  81b2cd:	48 8b 95 28 f8 ff ff 	mov    -0x7d8(%rbp),%rdx
  81b2d4:	48 8b 8d 30 f8 ff ff 	mov    -0x7d0(%rbp),%rcx
  81b2db:	48 ff c1             	inc    %rcx
  81b2de:	48 03 95 18 ff ff ff 	add    -0xe8(%rbp),%rdx
  81b2e5:	48 03 b5 08 fc ff ff 	add    -0x3f8(%rbp),%rsi
  81b2ec:	48 03 85 10 fd ff ff 	add    -0x2f0(%rbp),%rax
  81b2f3:	48 3b 8d 08 fd ff ff 	cmp    -0x2f8(%rbp),%rcx
  81b2fa:	0f 82 ee fc ff ff    	jb     81afee <pre_step3d_mod_mp_pre_step3d_tile_+0x6b4e>
  81b300:	c5 7b 10 25 f8 bc 0a 	vmovsd 0xabcf8(%rip),%xmm12        # 8c7000 <__STRLITPACK_199.115+0x70>
  81b307:	00 
  81b308:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  81b30f:	44 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%r8d
  81b316:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  81b31d:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  81b324:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  81b32b:	e9 50 0f 00 00       	jmpq   81c280 <pre_step3d_mod_mp_pre_step3d_tile_+0x7de0>
  81b330:	3b 85 f0 f8 ff ff    	cmp    -0x710(%rbp),%eax
  81b336:	0f 85 97 06 00 00    	jne    81b9d3 <pre_step3d_mod_mp_pre_step3d_tile_+0x7533>
  81b33c:	48 83 7d 80 08       	cmpq   $0x8,-0x80(%rbp)
  81b341:	0f 85 c7 02 00 00    	jne    81b60e <pre_step3d_mod_mp_pre_step3d_tile_+0x716e>
  81b347:	48 83 bd 58 ff ff ff 	cmpq   $0x8,-0xa8(%rbp)
  81b34e:	08 
  81b34f:	0f 85 b9 02 00 00    	jne    81b60e <pre_step3d_mod_mp_pre_step3d_tile_+0x716e>
  81b355:	48 83 bd e8 fc ff ff 	cmpq   $0x8,-0x318(%rbp)
  81b35c:	08 
  81b35d:	0f 85 ab 02 00 00    	jne    81b60e <pre_step3d_mod_mp_pre_step3d_tile_+0x716e>
  81b363:	45 33 ed             	xor    %r13d,%r13d
  81b366:	45 33 e4             	xor    %r12d,%r12d
  81b369:	45 33 f6             	xor    %r14d,%r14d
  81b36c:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  81b373:	00 
  81b374:	0f 8e 06 0f 00 00    	jle    81c280 <pre_step3d_mod_mp_pre_step3d_tile_+0x7de0>
  81b37a:	48 8b 95 80 f5 ff ff 	mov    -0xa80(%rbp),%rdx
  81b381:	48 0f af d7          	imul   %rdi,%rdx
  81b385:	c5 7d 10 2d d3 9d 0a 	vmovupd 0xa9dd3(%rip),%ymm13        # 8c5160 <var$630.126.450+0x4a0>
  81b38c:	00 
  81b38d:	48 8b b5 70 f3 ff ff 	mov    -0xc90(%rbp),%rsi
  81b394:	48 8b 8d 58 f6 ff ff 	mov    -0x9a8(%rbp),%rcx
  81b39b:	48 0f af cf          	imul   %rdi,%rcx
  81b39f:	48 8b 85 a0 f4 ff ff 	mov    -0xb60(%rbp),%rax
  81b3a6:	4c 8d 3c 16          	lea    (%rsi,%rdx,1),%r15
  81b3aa:	48 8b b5 70 f4 ff ff 	mov    -0xb90(%rbp),%rsi
  81b3b1:	48 0f af f7          	imul   %rdi,%rsi
  81b3b5:	48 03 95 98 f4 ff ff 	add    -0xb68(%rbp),%rdx
  81b3bc:	48 03 c1             	add    %rcx,%rax
  81b3bf:	48 03 8d c0 f4 ff ff 	add    -0xb40(%rbp),%rcx
  81b3c6:	48 89 95 40 f2 ff ff 	mov    %rdx,-0xdc0(%rbp)
  81b3cd:	48 89 8d 48 f2 ff ff 	mov    %rcx,-0xdb8(%rbp)
  81b3d4:	48 03 b5 88 f4 ff ff 	add    -0xb78(%rbp),%rsi
  81b3db:	4c 89 f2             	mov    %r14,%rdx
  81b3de:	48 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%rcx
  81b3e5:	4c 89 bd 50 f2 ff ff 	mov    %r15,-0xdb0(%rbp)
  81b3ec:	48 89 85 58 f2 ff ff 	mov    %rax,-0xda8(%rbp)
  81b3f3:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  81b3fa:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  81b401:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  81b408:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  81b40f:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  81b416:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  81b41d:	48 3b 85 00 fc ff ff 	cmp    -0x400(%rbp),%rax
  81b424:	0f 8c 80 01 00 00    	jl     81b5aa <pre_step3d_mod_mp_pre_step3d_tile_+0x710a>
  81b42a:	48 83 f9 04          	cmp    $0x4,%rcx
  81b42e:	0f 8c 22 95 00 00    	jl     824956 <pre_step3d_mod_mp_pre_step3d_tile_+0x104b6>
  81b434:	4c 8b bd 58 f2 ff ff 	mov    -0xda8(%rbp),%r15
  81b43b:	4c 8b 95 80 f7 ff ff 	mov    -0x880(%rbp),%r10
  81b442:	4c 8b 8d 98 fa ff ff 	mov    -0x568(%rbp),%r9
  81b449:	4c 8b 85 40 f2 ff ff 	mov    -0xdc0(%rbp),%r8
  81b450:	4c 03 fa             	add    %rdx,%r15
  81b453:	48 8b bd 50 f2 ff ff 	mov    -0xdb0(%rbp),%rdi
  81b45a:	4d 03 d4             	add    %r12,%r10
  81b45d:	4c 8b 9d 48 f2 ff ff 	mov    -0xdb8(%rbp),%r11
  81b464:	4d 03 cc             	add    %r12,%r9
  81b467:	48 c7 85 60 f2 ff ff 	movq   $0x0,-0xda0(%rbp)
  81b46e:	00 00 00 00 
  81b472:	4d 03 c6             	add    %r14,%r8
  81b475:	49 03 fe             	add    %r14,%rdi
  81b478:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  81b47f:	4c 03 da             	add    %rdx,%r11
  81b482:	4c 89 a5 b0 f3 ff ff 	mov    %r12,-0xc50(%rbp)
  81b489:	4c 89 ad b8 f3 ff ff 	mov    %r13,-0xc48(%rbp)
  81b490:	49 89 c5             	mov    %rax,%r13
  81b493:	4c 89 f9             	mov    %r15,%rcx
  81b496:	4c 8b a5 60 f2 ff ff 	mov    -0xda0(%rbp),%r12
  81b49d:	4c 8b bd e0 fc ff ff 	mov    -0x320(%rbp),%r15
  81b4a4:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  81b4a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  81b4b0:	c4 21 7d 10 3c e1    	vmovupd (%rcx,%r12,8),%ymm15
  81b4b6:	c4 21 15 59 34 e7    	vmulpd (%rdi,%r12,8),%ymm13,%ymm14
  81b4bc:	c4 81 7d 10 6c e1 08 	vmovupd 0x8(%r9,%r12,8),%ymm5
  81b4c3:	c4 01 05 58 24 e3    	vaddpd (%r11,%r12,8),%ymm15,%ymm12
  81b4c9:	c4 01 15 59 3c e7    	vmulpd (%r15,%r12,8),%ymm13,%ymm15
  81b4cf:	c4 81 55 5c 2c e2    	vsubpd (%r10,%r12,8),%ymm5,%ymm5
  81b4d5:	c4 21 05 59 3c e6    	vmulpd (%rsi,%r12,8),%ymm15,%ymm15
  81b4db:	c4 42 9d aa f7       	vfmsub213pd %ymm15,%ymm12,%ymm14
  81b4e0:	c4 41 55 58 e6       	vaddpd %ymm14,%ymm5,%ymm12
  81b4e5:	c4 01 7d 11 24 e0    	vmovupd %ymm12,(%r8,%r12,8)
  81b4eb:	49 83 c4 04          	add    $0x4,%r12
  81b4ef:	4d 3b e5             	cmp    %r13,%r12
  81b4f2:	72 bc                	jb     81b4b0 <pre_step3d_mod_mp_pre_step3d_tile_+0x7010>
  81b4f4:	4c 8b a5 b0 f3 ff ff 	mov    -0xc50(%rbp),%r12
  81b4fb:	4c 8b ad b8 f3 ff ff 	mov    -0xc48(%rbp),%r13
  81b502:	48 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%rcx
  81b509:	48 3b c1             	cmp    %rcx,%rax
  81b50c:	0f 83 98 00 00 00    	jae    81b5aa <pre_step3d_mod_mp_pre_step3d_tile_+0x710a>
  81b512:	4c 8b 95 80 f7 ff ff 	mov    -0x880(%rbp),%r10
  81b519:	4c 8b 8d 98 fa ff ff 	mov    -0x568(%rbp),%r9
  81b520:	4c 8b 85 40 f2 ff ff 	mov    -0xdc0(%rbp),%r8
  81b527:	48 8b bd 50 f2 ff ff 	mov    -0xdb0(%rbp),%rdi
  81b52e:	4d 03 d4             	add    %r12,%r10
  81b531:	4c 8b 9d 48 f2 ff ff 	mov    -0xdb8(%rbp),%r11
  81b538:	4d 03 cc             	add    %r12,%r9
  81b53b:	4c 8b bd 58 f2 ff ff 	mov    -0xda8(%rbp),%r15
  81b542:	4d 03 c6             	add    %r14,%r8
  81b545:	4c 89 ad b8 f3 ff ff 	mov    %r13,-0xc48(%rbp)
  81b54c:	49 03 fe             	add    %r14,%rdi
  81b54f:	4c 8b ad e0 fc ff ff 	mov    -0x320(%rbp),%r13
  81b556:	4c 03 da             	add    %rdx,%r11
  81b559:	4c 03 fa             	add    %rdx,%r15
  81b55c:	0f 1f 40 00          	nopl   0x0(%rax)
  81b560:	c4 c1 7b 10 2c c7    	vmovsd (%r15,%rax,8),%xmm5
  81b566:	c5 63 59 24 c7       	vmulsd (%rdi,%rax,8),%xmm3,%xmm12
  81b56b:	c4 41 53 58 34 c3    	vaddsd (%r11,%rax,8),%xmm5,%xmm14
  81b571:	c4 c1 1b 59 ee       	vmulsd %xmm14,%xmm12,%xmm5
  81b576:	c4 41 63 59 64 c5 00 	vmulsd 0x0(%r13,%rax,8),%xmm3,%xmm12
  81b57d:	c4 41 7b 10 7c c1 08 	vmovsd 0x8(%r9,%rax,8),%xmm15
  81b584:	c4 62 d1 9d 24 c6    	vfnmadd132sd (%rsi,%rax,8),%xmm5,%xmm12
  81b58a:	c4 41 03 5c 34 c2    	vsubsd (%r10,%rax,8),%xmm15,%xmm14
  81b590:	c4 41 1b 58 fe       	vaddsd %xmm14,%xmm12,%xmm15
  81b595:	c4 41 7b 11 3c c0    	vmovsd %xmm15,(%r8,%rax,8)
  81b59b:	48 ff c0             	inc    %rax
  81b59e:	48 3b c1             	cmp    %rcx,%rax
  81b5a1:	72 bd                	jb     81b560 <pre_step3d_mod_mp_pre_step3d_tile_+0x70c0>
  81b5a3:	4c 8b ad b8 f3 ff ff 	mov    -0xc48(%rbp),%r13
  81b5aa:	49 ff c5             	inc    %r13
  81b5ad:	4c 03 a5 18 ff ff ff 	add    -0xe8(%rbp),%r12
  81b5b4:	4c 03 b5 08 fc ff ff 	add    -0x3f8(%rbp),%r14
  81b5bb:	48 03 95 10 fd ff ff 	add    -0x2f0(%rbp),%rdx
  81b5c2:	48 03 b5 a0 f6 ff ff 	add    -0x960(%rbp),%rsi
  81b5c9:	4c 3b ad 08 fd ff ff 	cmp    -0x2f8(%rbp),%r13
  81b5d0:	0f 82 40 fe ff ff    	jb     81b416 <pre_step3d_mod_mp_pre_step3d_tile_+0x6f76>
  81b5d6:	c5 f9 10 2d 72 b5 0a 	vmovupd 0xab572(%rip),%xmm5        # 8c6b50 <__STRLITPACK_124.84+0x50>
  81b5dd:	00 
  81b5de:	c5 7b 10 25 1a ba 0a 	vmovsd 0xaba1a(%rip),%xmm12        # 8c7000 <__STRLITPACK_199.115+0x70>
  81b5e5:	00 
  81b5e6:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  81b5ed:	44 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%r8d
  81b5f4:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  81b5fb:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  81b602:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  81b609:	e9 72 0c 00 00       	jmpq   81c280 <pre_step3d_mod_mp_pre_step3d_tile_+0x7de0>
  81b60e:	45 33 ed             	xor    %r13d,%r13d
  81b611:	33 c9                	xor    %ecx,%ecx
  81b613:	33 d2                	xor    %edx,%edx
  81b615:	33 f6                	xor    %esi,%esi
  81b617:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  81b61e:	00 
  81b61f:	0f 8e 5b 0c 00 00    	jle    81c280 <pre_step3d_mod_mp_pre_step3d_tile_+0x7de0>
  81b625:	4c 8b bd 58 f6 ff ff 	mov    -0x9a8(%rbp),%r15
  81b62c:	4c 0f af ff          	imul   %rdi,%r15
  81b630:	48 8b 85 b8 f4 ff ff 	mov    -0xb48(%rbp),%rax
  81b637:	4c 8b b5 80 f5 ff ff 	mov    -0xa80(%rbp),%r14
  81b63e:	4c 0f af f7          	imul   %rdi,%r14
  81b642:	4c 8b a5 78 f5 ff ff 	mov    -0xa88(%rbp),%r12
  81b649:	49 03 c7             	add    %r15,%rax
  81b64c:	48 89 85 a0 f3 ff ff 	mov    %rax,-0xc60(%rbp)
  81b653:	48 8b 85 70 f4 ff ff 	mov    -0xb90(%rbp),%rax
  81b65a:	48 0f af c7          	imul   %rdi,%rax
  81b65e:	4c 03 bd 18 f3 ff ff 	add    -0xce8(%rbp),%r15
  81b665:	4d 03 e6             	add    %r14,%r12
  81b668:	4c 03 b5 b0 f4 ff ff 	add    -0xb50(%rbp),%r14
  81b66f:	4c 89 b5 68 f2 ff ff 	mov    %r14,-0xd98(%rbp)
  81b676:	48 03 85 10 f3 ff ff 	add    -0xcf0(%rbp),%rax
  81b67d:	4c 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%r14
  81b684:	4c 89 bd 70 f2 ff ff 	mov    %r15,-0xd90(%rbp)
  81b68b:	4c 89 a5 78 f2 ff ff 	mov    %r12,-0xd88(%rbp)
  81b692:	4c 89 ad a8 f6 ff ff 	mov    %r13,-0x958(%rbp)
  81b699:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  81b6a0:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  81b6a7:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  81b6ae:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  81b6b5:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  81b6bc:	c5 79 10 35 dc b0 0a 	vmovupd 0xab0dc(%rip),%xmm14        # 8c67a0 <__STRLITPACK_19.34+0x10>
  81b6c3:	00 
  81b6c4:	48 8b bd 00 ff ff ff 	mov    -0x100(%rbp),%rdi
  81b6cb:	48 3b bd 00 fc ff ff 	cmp    -0x400(%rbp),%rdi
  81b6d2:	0f 8c 81 02 00 00    	jl     81b959 <pre_step3d_mod_mp_pre_step3d_tile_+0x74b9>
  81b6d8:	48 83 7d 80 00       	cmpq   $0x0,-0x80(%rbp)
  81b6dd:	0f 84 7a 92 00 00    	je     82495d <pre_step3d_mod_mp_pre_step3d_tile_+0x104bd>
  81b6e3:	49 83 fe 02          	cmp    $0x2,%r14
  81b6e7:	0f 8c 70 92 00 00    	jl     82495d <pre_step3d_mod_mp_pre_step3d_tile_+0x104bd>
  81b6ed:	4c 8b 9d 70 f2 ff ff 	mov    -0xd90(%rbp),%r11
  81b6f4:	45 33 d2             	xor    %r10d,%r10d
  81b6f7:	4c 8b bd 78 f2 ff ff 	mov    -0xd88(%rbp),%r15
  81b6fe:	4c 8b 8d 80 f7 ff ff 	mov    -0x880(%rbp),%r9
  81b705:	4c 8b 85 98 fa ff ff 	mov    -0x568(%rbp),%r8
  81b70c:	4d 8d 24 33          	lea    (%r11,%rsi,1),%r12
  81b710:	4c 8b 9d a0 f3 ff ff 	mov    -0xc60(%rbp),%r11
  81b717:	4c 03 fa             	add    %rdx,%r15
  81b71a:	48 8b bd 68 f2 ff ff 	mov    -0xd98(%rbp),%rdi
  81b721:	4c 03 c9             	add    %rcx,%r9
  81b724:	4c 89 a5 88 f2 ff ff 	mov    %r12,-0xd78(%rbp)
  81b72b:	4c 03 c1             	add    %rcx,%r8
  81b72e:	4c 8b 6d 88          	mov    -0x78(%rbp),%r13
  81b732:	4d 8d 24 33          	lea    (%r11,%rsi,1),%r12
  81b736:	45 33 db             	xor    %r11d,%r11d
  81b739:	48 03 fa             	add    %rdx,%rdi
  81b73c:	4c 89 a5 80 f2 ff ff 	mov    %r12,-0xd80(%rbp)
  81b743:	45 33 e4             	xor    %r12d,%r12d
  81b746:	4c 89 ad c0 f3 ff ff 	mov    %r13,-0xc40(%rbp)
  81b74d:	48 89 b5 c8 f3 ff ff 	mov    %rsi,-0xc38(%rbp)
  81b754:	48 89 8d d8 f3 ff ff 	mov    %rcx,-0xc28(%rbp)
  81b75b:	4c 89 bd f0 fc ff ff 	mov    %r15,-0x310(%rbp)
  81b762:	48 89 95 d0 f3 ff ff 	mov    %rdx,-0xc30(%rbp)
  81b769:	4d 89 e5             	mov    %r12,%r13
  81b76c:	48 8b 8d 80 f2 ff ff 	mov    -0xd80(%rbp),%rcx
  81b773:	48 8b b5 88 f2 ff ff 	mov    -0xd78(%rbp),%rsi
  81b77a:	4c 8b 75 80          	mov    -0x80(%rbp),%r14
  81b77e:	4c 8b bd f0 fc ff ff 	mov    -0x310(%rbp),%r15
  81b785:	4b 8d 14 27          	lea    (%r15,%r12,1),%rdx
  81b789:	c5 7b 10 3a          	vmovsd (%rdx),%xmm15
  81b78d:	4e 8d 3c 29          	lea    (%rcx,%r13,1),%r15
  81b791:	c4 21 01 16 2c 32    	vmovhpd (%rdx,%r14,1),%xmm15,%xmm13
  81b797:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
  81b79e:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81b7a3:	c4 41 11 59 ee       	vmulpd %xmm14,%xmm13,%xmm13
  81b7a8:	c4 c1 19 16 2c 17    	vmovhpd (%r15,%rdx,1),%xmm12,%xmm5
  81b7ae:	4e 8d 3c 2e          	lea    (%rsi,%r13,1),%r15
  81b7b2:	c4 c1 7b 10 37       	vmovsd (%r15),%xmm6
  81b7b7:	4d 8d 6c 55 00       	lea    0x0(%r13,%rdx,2),%r13
  81b7bc:	c4 41 49 16 3c 17    	vmovhpd (%r15,%rdx,1),%xmm6,%xmm15
  81b7c2:	48 8b 95 e0 fc ff ff 	mov    -0x320(%rbp),%rdx
  81b7c9:	c4 41 51 58 e7       	vaddpd %xmm15,%xmm5,%xmm12
  81b7ce:	c4 a1 09 59 2c d2    	vmulpd (%rdx,%r10,8),%xmm14,%xmm5
  81b7d4:	c4 81 79 10 74 d0 08 	vmovupd 0x8(%r8,%r10,8),%xmm6
  81b7db:	4c 8b bd e8 fc ff ff 	mov    -0x318(%rbp),%r15
  81b7e2:	4a 8d 14 18          	lea    (%rax,%r11,1),%rdx
  81b7e6:	c5 7b 10 3a          	vmovsd (%rdx),%xmm15
  81b7ea:	c4 81 49 5c 34 d1    	vsubpd (%r9,%r10,8),%xmm6,%xmm6
  81b7f0:	c4 21 01 16 3c 3a    	vmovhpd (%rdx,%r15,1),%xmm15,%xmm15
  81b7f6:	49 8d 14 3c          	lea    (%r12,%rdi,1),%rdx
  81b7fa:	c4 c1 51 59 ef       	vmulpd %xmm15,%xmm5,%xmm5
  81b7ff:	c4 62 99 aa ed       	vfmsub213pd %xmm5,%xmm12,%xmm13
  81b804:	49 83 c2 02          	add    $0x2,%r10
  81b808:	c4 41 49 58 e5       	vaddpd %xmm13,%xmm6,%xmm12
  81b80d:	c5 7b 11 22          	vmovsd %xmm12,(%rdx)
  81b811:	4f 8d 1c 7b          	lea    (%r11,%r15,2),%r11
  81b815:	c4 41 79 17 24 16    	vmovhpd %xmm12,(%r14,%rdx,1)
  81b81b:	4f 8d 24 74          	lea    (%r12,%r14,2),%r12
  81b81f:	4c 3b 55 88          	cmp    -0x78(%rbp),%r10
  81b823:	0f 82 55 ff ff ff    	jb     81b77e <pre_step3d_mod_mp_pre_step3d_tile_+0x72de>
  81b829:	4c 8b ad c0 f3 ff ff 	mov    -0xc40(%rbp),%r13
  81b830:	48 8b b5 c8 f3 ff ff 	mov    -0xc38(%rbp),%rsi
  81b837:	48 8b 95 d0 f3 ff ff 	mov    -0xc30(%rbp),%rdx
  81b83e:	48 8b 8d d8 f3 ff ff 	mov    -0xc28(%rbp),%rcx
  81b845:	4c 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%r14
  81b84c:	4c 8b 9d 58 ff ff ff 	mov    -0xa8(%rbp),%r11
  81b853:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  81b857:	4c 8b 85 e8 fc ff ff 	mov    -0x318(%rbp),%r8
  81b85e:	4d 0f af dd          	imul   %r13,%r11
  81b862:	4d 0f af d5          	imul   %r13,%r10
  81b866:	4d 0f af c5          	imul   %r13,%r8
  81b86a:	4d 3b ee             	cmp    %r14,%r13
  81b86d:	0f 83 e6 00 00 00    	jae    81b959 <pre_step3d_mod_mp_pre_step3d_tile_+0x74b9>
  81b873:	4c 8b 8d 80 f7 ff ff 	mov    -0x880(%rbp),%r9
  81b87a:	4c 8b a5 98 fa ff ff 	mov    -0x568(%rbp),%r12
  81b881:	4c 8b bd 68 f2 ff ff 	mov    -0xd98(%rbp),%r15
  81b888:	48 89 b5 c8 f3 ff ff 	mov    %rsi,-0xc38(%rbp)
  81b88f:	49 8d 3c 09          	lea    (%r9,%rcx,1),%rdi
  81b893:	48 89 bd 98 f2 ff ff 	mov    %rdi,-0xd68(%rbp)
  81b89a:	4d 8d 0c 0c          	lea    (%r12,%rcx,1),%r9
  81b89e:	4c 8b a5 78 f2 ff ff 	mov    -0xd88(%rbp),%r12
  81b8a5:	49 8d 3c 17          	lea    (%r15,%rdx,1),%rdi
  81b8a9:	4c 8b bd 70 f2 ff ff 	mov    -0xd90(%rbp),%r15
  81b8b0:	48 89 bd 90 f2 ff ff 	mov    %rdi,-0xd70(%rbp)
  81b8b7:	48 89 95 d0 f3 ff ff 	mov    %rdx,-0xc30(%rbp)
  81b8be:	49 8d 3c 14          	lea    (%r12,%rdx,1),%rdi
  81b8c2:	48 89 8d d8 f3 ff ff 	mov    %rcx,-0xc28(%rbp)
  81b8c9:	4d 8d 24 37          	lea    (%r15,%rsi,1),%r12
  81b8cd:	4c 8b bd a0 f3 ff ff 	mov    -0xc60(%rbp),%r15
  81b8d4:	48 8b 8d 90 f2 ff ff 	mov    -0xd70(%rbp),%rcx
  81b8db:	4c 03 fe             	add    %rsi,%r15
  81b8de:	4c 89 fa             	mov    %r15,%rdx
  81b8e1:	48 8b b5 98 f2 ff ff 	mov    -0xd68(%rbp),%rsi
  81b8e8:	4c 8b bd e0 fc ff ff 	mov    -0x320(%rbp),%r15
  81b8ef:	90                   	nop
  81b8f0:	c4 c1 7b 10 2c 13    	vmovsd (%r11,%rdx,1),%xmm5
  81b8f6:	c4 c1 63 59 34 3a    	vmulsd (%r10,%rdi,1),%xmm3,%xmm6
  81b8fc:	c4 01 53 58 24 23    	vaddsd (%r11,%r12,1),%xmm5,%xmm12
  81b902:	c4 81 63 59 2c ef    	vmulsd (%r15,%r13,8),%xmm3,%xmm5
  81b908:	c4 41 4b 59 fc       	vmulsd %xmm12,%xmm6,%xmm15
  81b90d:	c4 01 7b 10 6c e9 08 	vmovsd 0x8(%r9,%r13,8),%xmm13
  81b914:	c4 c2 81 9d 2c 00    	vfnmadd132sd (%r8,%rax,1),%xmm15,%xmm5
  81b91a:	c4 a1 13 5c 34 ee    	vsubsd (%rsi,%r13,8),%xmm13,%xmm6
  81b920:	49 ff c5             	inc    %r13
  81b923:	c5 53 58 e6          	vaddsd %xmm6,%xmm5,%xmm12
  81b927:	c4 41 7b 11 24 0a    	vmovsd %xmm12,(%r10,%rcx,1)
  81b92d:	4c 03 9d 58 ff ff ff 	add    -0xa8(%rbp),%r11
  81b934:	4c 03 85 e8 fc ff ff 	add    -0x318(%rbp),%r8
  81b93b:	4c 03 55 80          	add    -0x80(%rbp),%r10
  81b93f:	4d 3b ee             	cmp    %r14,%r13
  81b942:	72 ac                	jb     81b8f0 <pre_step3d_mod_mp_pre_step3d_tile_+0x7450>
  81b944:	48 8b b5 c8 f3 ff ff 	mov    -0xc38(%rbp),%rsi
  81b94b:	48 8b 95 d0 f3 ff ff 	mov    -0xc30(%rbp),%rdx
  81b952:	48 8b 8d d8 f3 ff ff 	mov    -0xc28(%rbp),%rcx
  81b959:	48 8b bd a8 f6 ff ff 	mov    -0x958(%rbp),%rdi
  81b960:	48 ff c7             	inc    %rdi
  81b963:	48 03 8d 18 ff ff ff 	add    -0xe8(%rbp),%rcx
  81b96a:	48 03 95 08 fc ff ff 	add    -0x3f8(%rbp),%rdx
  81b971:	48 03 b5 10 fd ff ff 	add    -0x2f0(%rbp),%rsi
  81b978:	48 03 85 a0 f6 ff ff 	add    -0x960(%rbp),%rax
  81b97f:	48 89 bd a8 f6 ff ff 	mov    %rdi,-0x958(%rbp)
  81b986:	48 3b bd 08 fd ff ff 	cmp    -0x2f8(%rbp),%rdi
  81b98d:	0f 82 31 fd ff ff    	jb     81b6c4 <pre_step3d_mod_mp_pre_step3d_tile_+0x7224>
  81b993:	c5 fd 10 35 e5 93 0a 	vmovupd 0xa93e5(%rip),%ymm6        # 8c4d80 <var$630.126.450+0xc0>
  81b99a:	00 
  81b99b:	c5 f9 10 2d ad b1 0a 	vmovupd 0xab1ad(%rip),%xmm5        # 8c6b50 <__STRLITPACK_124.84+0x50>
  81b9a2:	00 
  81b9a3:	c5 7b 10 25 55 b6 0a 	vmovsd 0xab655(%rip),%xmm12        # 8c7000 <__STRLITPACK_199.115+0x70>
  81b9aa:	00 
  81b9ab:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  81b9b2:	44 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%r8d
  81b9b9:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  81b9c0:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  81b9c7:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  81b9ce:	e9 ad 08 00 00       	jmpq   81c280 <pre_step3d_mod_mp_pre_step3d_tile_+0x7de0>
  81b9d3:	48 83 7d 80 08       	cmpq   $0x8,-0x80(%rbp)
  81b9d8:	0f 85 05 04 00 00    	jne    81bde3 <pre_step3d_mod_mp_pre_step3d_tile_+0x7943>
  81b9de:	48 83 bd 58 ff ff ff 	cmpq   $0x8,-0xa8(%rbp)
  81b9e5:	08 
  81b9e6:	0f 85 f7 03 00 00    	jne    81bde3 <pre_step3d_mod_mp_pre_step3d_tile_+0x7943>
  81b9ec:	48 83 bd e8 fc ff ff 	cmpq   $0x8,-0x318(%rbp)
  81b9f3:	08 
  81b9f4:	0f 85 e9 03 00 00    	jne    81bde3 <pre_step3d_mod_mp_pre_step3d_tile_+0x7943>
  81b9fa:	45 33 ed             	xor    %r13d,%r13d
  81b9fd:	45 33 e4             	xor    %r12d,%r12d
  81ba00:	4c 89 a5 e8 f3 ff ff 	mov    %r12,-0xc18(%rbp)
  81ba07:	4c 89 a5 e0 f3 ff ff 	mov    %r12,-0xc20(%rbp)
  81ba0e:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  81ba15:	00 
  81ba16:	0f 8e 64 08 00 00    	jle    81c280 <pre_step3d_mod_mp_pre_step3d_tile_+0x7de0>
  81ba1c:	48 8b 8d 80 f5 ff ff 	mov    -0xa80(%rbp),%rcx
  81ba23:	48 0f af cf          	imul   %rdi,%rcx
  81ba27:	c5 7d 10 25 71 a4 0a 	vmovupd 0xaa471(%rip),%ymm12        # 8c5ea0 <var$630.126.450+0x11e0>
  81ba2e:	00 
  81ba2f:	c5 7b 11 85 08 f2 ff 	vmovsd %xmm8,-0xdf8(%rbp)
  81ba36:	ff 
  81ba37:	c5 fb 11 bd 00 f2 ff 	vmovsd %xmm7,-0xe00(%rbp)
  81ba3e:	ff 
  81ba3f:	c5 7b 11 8d 10 f2 ff 	vmovsd %xmm9,-0xdf0(%rbp)
  81ba46:	ff 
  81ba47:	c5 7b 10 2d d1 bd 0a 	vmovsd 0xabdd1(%rip),%xmm13        # 8c7820 <__STRLITPACK_199.115+0x890>
  81ba4e:	00 
  81ba4f:	48 8b b5 58 f6 ff ff 	mov    -0x9a8(%rbp),%rsi
  81ba56:	4c 8b b5 70 f4 ff ff 	mov    -0xb90(%rbp),%r14
  81ba5d:	48 0f af f7          	imul   %rdi,%rsi
  81ba61:	4c 0f af f7          	imul   %rdi,%r14
  81ba65:	c5 fd 10 3d 53 a4 0a 	vmovupd 0xaa453(%rip),%ymm7        # 8c5ec0 <var$630.126.450+0x1200>
  81ba6c:	00 
  81ba6d:	c5 7b 10 05 a3 bd 0a 	vmovsd 0xabda3(%rip),%xmm8        # 8c7818 <__STRLITPACK_199.115+0x888>
  81ba74:	00 
  81ba75:	c5 7d 10 35 e3 96 0a 	vmovupd 0xa96e3(%rip),%ymm14        # 8c5160 <var$630.126.450+0x4a0>
  81ba7c:	00 
  81ba7d:	4c 8b bd 70 f3 ff ff 	mov    -0xc90(%rbp),%r15
  81ba84:	48 8b 95 a0 f4 ff ff 	mov    -0xb60(%rbp),%rdx
  81ba8b:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  81ba92:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  81ba99:	49 8d 04 0f          	lea    (%r15,%rcx,1),%rax
  81ba9d:	4c 8b bd 88 f4 ff ff 	mov    -0xb78(%rbp),%r15
  81baa4:	48 03 d6             	add    %rsi,%rdx
  81baa7:	48 03 b5 c0 f4 ff ff 	add    -0xb40(%rbp),%rsi
  81baae:	48 03 8d 98 f4 ff ff 	add    -0xb68(%rbp),%rcx
  81bab5:	48 89 8d b0 f2 ff ff 	mov    %rcx,-0xd50(%rbp)
  81babc:	4d 03 fe             	add    %r14,%r15
  81babf:	4c 03 b5 78 f4 ff ff 	add    -0xb88(%rbp),%r14
  81bac6:	48 89 b5 b8 f2 ff ff 	mov    %rsi,-0xd48(%rbp)
  81bacd:	48 89 95 c8 f2 ff ff 	mov    %rdx,-0xd38(%rbp)
  81bad4:	4c 89 b5 a0 f2 ff ff 	mov    %r14,-0xd60(%rbp)
  81badb:	4c 89 bd a8 f2 ff ff 	mov    %r15,-0xd58(%rbp)
  81bae2:	48 89 85 c0 f2 ff ff 	mov    %rax,-0xd40(%rbp)
  81bae9:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  81baf0:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  81baf7:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  81bafe:	4c 89 e7             	mov    %r12,%rdi
  81bb01:	48 8b 95 e0 f3 ff ff 	mov    -0xc20(%rbp),%rdx
  81bb08:	48 8b b5 e8 f3 ff ff 	mov    -0xc18(%rbp),%rsi
  81bb0f:	48 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%rcx
  81bb16:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  81bb1d:	48 3b 85 00 fc ff ff 	cmp    -0x400(%rbp),%rax
  81bb24:	0f 8c 35 02 00 00    	jl     81bd5f <pre_step3d_mod_mp_pre_step3d_tile_+0x78bf>
  81bb2a:	48 83 f9 04          	cmp    $0x4,%rcx
  81bb2e:	0f 8c 31 8e 00 00    	jl     824965 <pre_step3d_mod_mp_pre_step3d_tile_+0x104c5>
  81bb34:	4c 8b 8d b0 f2 ff ff 	mov    -0xd50(%rbp),%r9
  81bb3b:	45 33 f6             	xor    %r14d,%r14d
  81bb3e:	4c 8b bd c0 f2 ff ff 	mov    -0xd40(%rbp),%r15
  81bb45:	4c 8b 9d 80 f7 ff ff 	mov    -0x880(%rbp),%r11
  81bb4c:	4c 8b 95 98 fa ff ff 	mov    -0x568(%rbp),%r10
  81bb53:	4d 8d 04 31          	lea    (%r9,%rsi,1),%r8
  81bb57:	4c 89 85 f0 f2 ff ff 	mov    %r8,-0xd10(%rbp)
  81bb5e:	4d 8d 0c 37          	lea    (%r15,%rsi,1),%r9
  81bb62:	4c 8b bd c8 f2 ff ff 	mov    -0xd38(%rbp),%r15
  81bb69:	4d 03 dc             	add    %r12,%r11
  81bb6c:	4c 8b 85 b8 f2 ff ff 	mov    -0xd48(%rbp),%r8
  81bb73:	4d 03 d4             	add    %r12,%r10
  81bb76:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  81bb7d:	48 89 95 e0 f3 ff ff 	mov    %rdx,-0xc20(%rbp)
  81bb84:	4c 03 fa             	add    %rdx,%r15
  81bb87:	4c 89 bd d8 f2 ff ff 	mov    %r15,-0xd28(%rbp)
  81bb8e:	4c 03 c2             	add    %rdx,%r8
  81bb91:	4c 8b bd a8 f2 ff ff 	mov    -0xd58(%rbp),%r15
  81bb98:	48 89 b5 e8 f3 ff ff 	mov    %rsi,-0xc18(%rbp)
  81bb9f:	4c 89 a5 f0 f3 ff ff 	mov    %r12,-0xc10(%rbp)
  81bba6:	4c 89 ad f8 f3 ff ff 	mov    %r13,-0xc08(%rbp)
  81bbad:	4c 03 ff             	add    %rdi,%r15
  81bbb0:	4c 89 bd d0 f2 ff ff 	mov    %r15,-0xd30(%rbp)
  81bbb7:	49 89 c5             	mov    %rax,%r13
  81bbba:	4c 8b bd a0 f2 ff ff 	mov    -0xd60(%rbp),%r15
  81bbc1:	48 8b 8d d0 f2 ff ff 	mov    -0xd30(%rbp),%rcx
  81bbc8:	48 8b b5 d8 f2 ff ff 	mov    -0xd28(%rbp),%rsi
  81bbcf:	4c 8b a5 f0 f2 ff ff 	mov    -0xd10(%rbp),%r12
  81bbd6:	4c 03 ff             	add    %rdi,%r15
  81bbd9:	4c 89 fa             	mov    %r15,%rdx
  81bbdc:	4c 8b bd e0 fc ff ff 	mov    -0x320(%rbp),%r15
  81bbe3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  81bbe8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  81bbef:	00 
  81bbf0:	c4 21 7d 10 3c f6    	vmovupd (%rsi,%r14,8),%ymm15
  81bbf6:	c4 01 0d 59 0c f1    	vmulpd (%r9,%r14,8),%ymm14,%ymm9
  81bbfc:	c4 81 7d 10 6c f2 08 	vmovupd 0x8(%r10,%r14,8),%ymm5
  81bc03:	c4 81 05 58 34 f0    	vaddpd (%r8,%r14,8),%ymm15,%ymm6
  81bc09:	c4 21 45 59 3c f1    	vmulpd (%rcx,%r14,8),%ymm7,%ymm15
  81bc0f:	c4 81 55 5c 2c f3    	vsubpd (%r11,%r14,8),%ymm5,%ymm5
  81bc15:	c4 22 9d ba 3c f2    	vfmsub231pd (%rdx,%r14,8),%ymm12,%ymm15
  81bc1b:	c4 01 05 59 3c f7    	vmulpd (%r15,%r14,8),%ymm15,%ymm15
  81bc21:	c4 42 cd a8 cf       	vfmadd213pd %ymm15,%ymm6,%ymm9
  81bc26:	c4 c1 55 58 f1       	vaddpd %ymm9,%ymm5,%ymm6
  81bc2b:	c4 81 7d 11 34 f4    	vmovupd %ymm6,(%r12,%r14,8)
  81bc31:	49 83 c6 04          	add    $0x4,%r14
  81bc35:	4d 3b f5             	cmp    %r13,%r14
  81bc38:	72 b6                	jb     81bbf0 <pre_step3d_mod_mp_pre_step3d_tile_+0x7750>
  81bc3a:	48 8b 95 e0 f3 ff ff 	mov    -0xc20(%rbp),%rdx
  81bc41:	48 8b b5 e8 f3 ff ff 	mov    -0xc18(%rbp),%rsi
  81bc48:	4c 8b a5 f0 f3 ff ff 	mov    -0xc10(%rbp),%r12
  81bc4f:	4c 8b ad f8 f3 ff ff 	mov    -0xc08(%rbp),%r13
  81bc56:	48 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%rcx
  81bc5d:	48 3b c1             	cmp    %rcx,%rax
  81bc60:	0f 83 f9 00 00 00    	jae    81bd5f <pre_step3d_mod_mp_pre_step3d_tile_+0x78bf>
  81bc66:	4c 8b 8d c0 f2 ff ff 	mov    -0xd40(%rbp),%r9
  81bc6d:	4c 8b bd b8 f2 ff ff 	mov    -0xd48(%rbp),%r15
  81bc74:	4c 8b b5 80 f7 ff ff 	mov    -0x880(%rbp),%r14
  81bc7b:	4c 8b 9d 98 fa ff ff 	mov    -0x568(%rbp),%r11
  81bc82:	4d 8d 04 31          	lea    (%r9,%rsi,1),%r8
  81bc86:	4c 89 85 e0 f2 ff ff 	mov    %r8,-0xd20(%rbp)
  81bc8d:	4d 8d 0c 17          	lea    (%r15,%rdx,1),%r9
  81bc91:	4c 8b 85 c8 f2 ff ff 	mov    -0xd38(%rbp),%r8
  81bc98:	4d 03 f4             	add    %r12,%r14
  81bc9b:	4c 8b 95 b0 f2 ff ff 	mov    -0xd50(%rbp),%r10
  81bca2:	4d 03 dc             	add    %r12,%r11
  81bca5:	48 89 b5 e8 f3 ff ff 	mov    %rsi,-0xc18(%rbp)
  81bcac:	4c 89 a5 f0 f3 ff ff 	mov    %r12,-0xc10(%rbp)
  81bcb3:	4d 8d 3c 10          	lea    (%r8,%rdx,1),%r15
  81bcb7:	4c 89 bd e8 f2 ff ff 	mov    %r15,-0xd18(%rbp)
  81bcbe:	4c 03 d6             	add    %rsi,%r10
  81bcc1:	4c 8b bd a0 f2 ff ff 	mov    -0xd60(%rbp),%r15
  81bcc8:	4c 8b 85 a8 f2 ff ff 	mov    -0xd58(%rbp),%r8
  81bccf:	4c 89 ad f8 f3 ff ff 	mov    %r13,-0xc08(%rbp)
  81bcd6:	4c 8b a5 e8 f2 ff ff 	mov    -0xd18(%rbp),%r12
  81bcdd:	4c 03 ff             	add    %rdi,%r15
  81bce0:	4c 03 c7             	add    %rdi,%r8
  81bce3:	4c 89 fe             	mov    %r15,%rsi
  81bce6:	4c 8b ad e0 f2 ff ff 	mov    -0xd20(%rbp),%r13
  81bced:	4c 8b bd e0 fc ff ff 	mov    -0x320(%rbp),%r15
  81bcf4:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  81bcf9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  81bd00:	c4 c1 7b 10 2c c4    	vmovsd (%r12,%rax,8),%xmm5
  81bd06:	c4 c1 63 59 74 c5 00 	vmulsd 0x0(%r13,%rax,8),%xmm3,%xmm6
  81bd0d:	c4 41 53 58 0c c1    	vaddsd (%r9,%rax,8),%xmm5,%xmm9
  81bd13:	c4 c1 13 59 2c c0    	vmulsd (%r8,%rax,8),%xmm13,%xmm5
  81bd19:	c4 c1 4b 59 f1       	vmulsd %xmm9,%xmm6,%xmm6
  81bd1e:	c4 e2 b9 bb 2c c6    	vfmsub231sd (%rsi,%rax,8),%xmm8,%xmm5
  81bd24:	c4 41 7b 10 7c c3 08 	vmovsd 0x8(%r11,%rax,8),%xmm15
  81bd2b:	c4 c2 d1 b9 34 c7    	vfmadd231sd (%r15,%rax,8),%xmm5,%xmm6
  81bd31:	c4 41 03 5c 0c c6    	vsubsd (%r14,%rax,8),%xmm15,%xmm9
  81bd37:	c4 41 4b 58 f9       	vaddsd %xmm9,%xmm6,%xmm15
  81bd3c:	c4 41 7b 11 3c c2    	vmovsd %xmm15,(%r10,%rax,8)
  81bd42:	48 ff c0             	inc    %rax
  81bd45:	48 3b c1             	cmp    %rcx,%rax
  81bd48:	72 b6                	jb     81bd00 <pre_step3d_mod_mp_pre_step3d_tile_+0x7860>
  81bd4a:	48 8b b5 e8 f3 ff ff 	mov    -0xc18(%rbp),%rsi
  81bd51:	4c 8b a5 f0 f3 ff ff 	mov    -0xc10(%rbp),%r12
  81bd58:	4c 8b ad f8 f3 ff ff 	mov    -0xc08(%rbp),%r13
  81bd5f:	49 ff c5             	inc    %r13
  81bd62:	4c 03 a5 18 ff ff ff 	add    -0xe8(%rbp),%r12
  81bd69:	48 03 b5 08 fc ff ff 	add    -0x3f8(%rbp),%rsi
  81bd70:	48 03 95 10 fd ff ff 	add    -0x2f0(%rbp),%rdx
  81bd77:	48 03 bd a0 f6 ff ff 	add    -0x960(%rbp),%rdi
  81bd7e:	4c 3b ad 08 fd ff ff 	cmp    -0x2f8(%rbp),%r13
  81bd85:	0f 82 8b fd ff ff    	jb     81bb16 <pre_step3d_mod_mp_pre_step3d_tile_+0x7676>
  81bd8b:	c5 7b 10 8d 10 f2 ff 	vmovsd -0xdf0(%rbp),%xmm9
  81bd92:	ff 
  81bd93:	c5 7b 10 85 08 f2 ff 	vmovsd -0xdf8(%rbp),%xmm8
  81bd9a:	ff 
  81bd9b:	c5 fb 10 bd 00 f2 ff 	vmovsd -0xe00(%rbp),%xmm7
  81bda2:	ff 
  81bda3:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  81bdaa:	44 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%r8d
  81bdb1:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  81bdb8:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  81bdbf:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  81bdc6:	c5 fd 10 35 b2 8f 0a 	vmovupd 0xa8fb2(%rip),%ymm6        # 8c4d80 <var$630.126.450+0xc0>
  81bdcd:	00 
  81bdce:	c5 f9 10 2d 7a ad 0a 	vmovupd 0xaad7a(%rip),%xmm5        # 8c6b50 <__STRLITPACK_124.84+0x50>
  81bdd5:	00 
  81bdd6:	c5 7b 10 25 22 b2 0a 	vmovsd 0xab222(%rip),%xmm12        # 8c7000 <__STRLITPACK_199.115+0x70>
  81bddd:	00 
  81bdde:	e9 9d 04 00 00       	jmpq   81c280 <pre_step3d_mod_mp_pre_step3d_tile_+0x7de0>
  81bde3:	45 33 e4             	xor    %r12d,%r12d
  81bde6:	33 c9                	xor    %ecx,%ecx
  81bde8:	33 d2                	xor    %edx,%edx
  81bdea:	33 c0                	xor    %eax,%eax
  81bdec:	48 89 85 00 f4 ff ff 	mov    %rax,-0xc00(%rbp)
  81bdf3:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
  81bdfa:	00 
  81bdfb:	0f 8e 7f 04 00 00    	jle    81c280 <pre_step3d_mod_mp_pre_step3d_tile_+0x7de0>
  81be01:	4c 8b b5 80 f5 ff ff 	mov    -0xa80(%rbp),%r14
  81be08:	4c 0f af f7          	imul   %rdi,%r14
  81be0c:	4c 8b ad 58 f6 ff ff 	mov    -0x9a8(%rbp),%r13
  81be13:	4c 0f af ef          	imul   %rdi,%r13
  81be17:	48 8b b5 70 f4 ff ff 	mov    -0xb90(%rbp),%rsi
  81be1e:	48 0f af f7          	imul   %rdi,%rsi
  81be22:	4c 8b bd 78 f5 ff ff 	mov    -0xa88(%rbp),%r15
  81be29:	c5 79 11 95 f0 f1 ff 	vmovupd %xmm10,-0xe10(%rbp)
  81be30:	ff 
  81be31:	c5 7b 11 8d 10 f2 ff 	vmovsd %xmm9,-0xdf0(%rbp)
  81be38:	ff 
  81be39:	c5 7b 11 85 08 f2 ff 	vmovsd %xmm8,-0xdf8(%rbp)
  81be40:	ff 
  81be41:	4d 03 fe             	add    %r14,%r15
  81be44:	4c 89 bd 90 f3 ff ff 	mov    %r15,-0xc70(%rbp)
  81be4b:	4c 8b bd b8 f4 ff ff 	mov    -0xb48(%rbp),%r15
  81be52:	4c 03 b5 b0 f4 ff ff 	add    -0xb50(%rbp),%r14
  81be59:	4c 89 b5 f8 f2 ff ff 	mov    %r14,-0xd08(%rbp)
  81be60:	c5 fb 11 bd 00 f2 ff 	vmovsd %xmm7,-0xe00(%rbp)
  81be67:	ff 
  81be68:	4d 03 fd             	add    %r13,%r15
  81be6b:	4c 89 bd 98 f3 ff ff 	mov    %r15,-0xc68(%rbp)
  81be72:	4c 8b bd 10 f3 ff ff 	mov    -0xcf0(%rbp),%r15
  81be79:	4c 03 ad 18 f3 ff ff 	add    -0xce8(%rbp),%r13
  81be80:	49 89 c6             	mov    %rax,%r14
  81be83:	4c 89 ad 08 f3 ff ff 	mov    %r13,-0xcf8(%rbp)
  81be8a:	4c 03 fe             	add    %rsi,%r15
  81be8d:	48 03 b5 80 f4 ff ff 	add    -0xb80(%rbp),%rsi
  81be94:	4c 89 bd a8 f3 ff ff 	mov    %r15,-0xc58(%rbp)
  81be9b:	48 89 b5 00 f3 ff ff 	mov    %rsi,-0xd00(%rbp)
  81bea2:	4c 89 a5 b8 f6 ff ff 	mov    %r12,-0x948(%rbp)
  81bea9:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  81beb0:	44 89 85 c8 f8 ff ff 	mov    %r8d,-0x738(%rbp)
  81beb7:	4c 89 8d d0 f8 ff ff 	mov    %r9,-0x730(%rbp)
  81bebe:	4c 89 9d d8 f8 ff ff 	mov    %r11,-0x728(%rbp)
  81bec5:	44 89 95 e0 f8 ff ff 	mov    %r10d,-0x720(%rbp)
  81becc:	c5 7b 10 0d 4c b9 0a 	vmovsd 0xab94c(%rip),%xmm9        # 8c7820 <__STRLITPACK_199.115+0x890>
  81bed3:	00 
  81bed4:	c5 7b 10 15 3c b9 0a 	vmovsd 0xab93c(%rip),%xmm10        # 8c7818 <__STRLITPACK_199.115+0x888>
  81bedb:	00 
  81bedc:	c5 79 10 35 cc ad 0a 	vmovupd 0xaadcc(%rip),%xmm14        # 8c6cb0 <__STRLITPACK_54.50+0x90>
  81bee3:	00 
  81bee4:	c5 79 10 25 b4 ad 0a 	vmovupd 0xaadb4(%rip),%xmm12        # 8c6ca0 <__STRLITPACK_54.50+0x80>
  81beeb:	00 
  81beec:	c5 79 10 2d ac a8 0a 	vmovupd 0xaa8ac(%rip),%xmm13        # 8c67a0 <__STRLITPACK_19.34+0x10>
  81bef3:	00 
  81bef4:	48 8b b5 00 ff ff ff 	mov    -0x100(%rbp),%rsi
  81befb:	48 3b b5 00 fc ff ff 	cmp    -0x400(%rbp),%rsi
  81bf02:	0f 8c e3 02 00 00    	jl     81c1eb <pre_step3d_mod_mp_pre_step3d_tile_+0x7d4b>
  81bf08:	48 83 7d 80 00       	cmpq   $0x0,-0x80(%rbp)
  81bf0d:	0f 84 59 8a 00 00    	je     82496c <pre_step3d_mod_mp_pre_step3d_tile_+0x104cc>
  81bf13:	48 83 bd 78 ff ff ff 	cmpq   $0x2,-0x88(%rbp)
  81bf1a:	02 
  81bf1b:	0f 8c 4b 8a 00 00    	jl     82496c <pre_step3d_mod_mp_pre_step3d_tile_+0x104cc>
  81bf21:	48 8b b5 00 f3 ff ff 	mov    -0xd00(%rbp),%rsi
  81bf28:	4c 8b 65 88          	mov    -0x78(%rbp),%r12
  81bf2c:	4c 8b bd 08 f3 ff ff 	mov    -0xcf8(%rbp),%r15
  81bf33:	4c 89 a5 b0 f6 ff ff 	mov    %r12,-0x950(%rbp)
  81bf3a:	4a 8d 3c 36          	lea    (%rsi,%r14,1),%rdi
  81bf3e:	48 8b b5 f8 f2 ff ff 	mov    -0xd08(%rbp),%rsi
  81bf45:	45 33 e4             	xor    %r12d,%r12d
  81bf48:	4c 8b 9d 80 f7 ff ff 	mov    -0x880(%rbp),%r11
  81bf4f:	4c 03 f8             	add    %rax,%r15
  81bf52:	4c 8b 95 98 fa ff ff 	mov    -0x568(%rbp),%r10
  81bf59:	4c 8b 8d 90 f3 ff ff 	mov    -0xc70(%rbp),%r9
  81bf60:	4c 8b 85 98 f3 ff ff 	mov    -0xc68(%rbp),%r8
  81bf67:	4c 03 d9             	add    %rcx,%r11
  81bf6a:	4c 8b ad a8 f3 ff ff 	mov    -0xc58(%rbp),%r13
  81bf71:	4c 03 d1             	add    %rcx,%r10
  81bf74:	48 89 bd 00 fd ff ff 	mov    %rdi,-0x300(%rbp)
  81bf7b:	48 8d 3c 16          	lea    (%rsi,%rdx,1),%rdi
  81bf7f:	48 89 bd 78 f3 ff ff 	mov    %rdi,-0xc88(%rbp)
  81bf86:	33 ff                	xor    %edi,%edi
  81bf88:	33 f6                	xor    %esi,%esi
  81bf8a:	4c 03 ca             	add    %rdx,%r9
  81bf8d:	4c 03 c0             	add    %rax,%r8
  81bf90:	4c 89 bd f8 fc ff ff 	mov    %r15,-0x308(%rbp)
  81bf97:	4d 03 ee             	add    %r14,%r13
  81bf9a:	4c 89 b5 00 f4 ff ff 	mov    %r14,-0xc00(%rbp)
  81bfa1:	48 89 8d 40 f6 ff ff 	mov    %rcx,-0x9c0(%rbp)
  81bfa8:	48 89 85 08 f4 ff ff 	mov    %rax,-0xbf8(%rbp)
  81bfaf:	48 89 95 38 f6 ff ff 	mov    %rdx,-0x9c8(%rbp)
  81bfb6:	49 89 f7             	mov    %rsi,%r15
  81bfb9:	48 8b 8d 78 f3 ff ff 	mov    -0xc88(%rbp),%rcx
  81bfc0:	4c 8b 75 80          	mov    -0x80(%rbp),%r14
  81bfc4:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
  81bfcb:	49 8d 04 39          	lea    (%r9,%rdi,1),%rax
  81bfcf:	c5 7b 10 38          	vmovsd (%rax),%xmm15
  81bfd3:	c4 21 01 16 04 30    	vmovhpd (%rax,%r14,1),%xmm15,%xmm8
  81bfd9:	49 8d 04 30          	lea    (%r8,%rsi,1),%rax
  81bfdd:	c5 fb 10 38          	vmovsd (%rax),%xmm7
  81bfe1:	c5 c1 16 2c 10       	vmovhpd (%rax,%rdx,1),%xmm7,%xmm5
  81bfe6:	48 8b 85 f8 fc ff ff 	mov    -0x308(%rbp),%rax
  81bfed:	c4 41 39 59 c5       	vmulpd %xmm13,%xmm8,%xmm8
  81bff2:	48 03 c6             	add    %rsi,%rax
  81bff5:	c5 fb 10 30          	vmovsd (%rax),%xmm6
  81bff9:	48 8d 34 56          	lea    (%rsi,%rdx,2),%rsi
  81bffd:	c5 49 16 3c 10       	vmovhpd (%rax,%rdx,1),%xmm6,%xmm15
  81c002:	48 8b 95 00 fd ff ff 	mov    -0x300(%rbp),%rdx
  81c009:	48 8b 85 e8 fc ff ff 	mov    -0x318(%rbp),%rax
  81c010:	c4 c1 51 58 ff       	vaddpd %xmm15,%xmm5,%xmm7
  81c015:	c4 81 79 10 74 e2 08 	vmovupd 0x8(%r10,%r12,8),%xmm6
  81c01c:	c4 81 49 5c 34 e3    	vsubpd (%r11,%r12,8),%xmm6,%xmm6
  81c022:	49 03 d7             	add    %r15,%rdx
  81c025:	c5 fb 10 2a          	vmovsd (%rdx),%xmm5
  81c029:	c5 d1 16 2c 02       	vmovhpd (%rdx,%rax,1),%xmm5,%xmm5
  81c02e:	4b 8d 54 3d 00       	lea    0x0(%r13,%r15,1),%rdx
  81c033:	c5 7b 10 3a          	vmovsd (%rdx),%xmm15
  81c037:	4d 8d 3c 47          	lea    (%r15,%rax,2),%r15
  81c03b:	c5 01 16 3c 02       	vmovhpd (%rdx,%rax,1),%xmm15,%xmm15
  81c040:	c4 41 09 59 ff       	vmulpd %xmm15,%xmm14,%xmm15
  81c045:	c4 42 d1 ba fc       	vfmsub231pd %xmm12,%xmm5,%xmm15
  81c04a:	48 8b 85 e0 fc ff ff 	mov    -0x320(%rbp),%rax
  81c051:	c4 a1 01 59 2c e0    	vmulpd (%rax,%r12,8),%xmm15,%xmm5
  81c057:	c4 62 c1 a8 c5       	vfmadd213pd %xmm5,%xmm7,%xmm8
  81c05c:	49 83 c4 02          	add    $0x2,%r12
  81c060:	c4 c1 49 58 f8       	vaddpd %xmm8,%xmm6,%xmm7
  81c065:	48 8d 04 0f          	lea    (%rdi,%rcx,1),%rax
  81c069:	c5 fb 11 38          	vmovsd %xmm7,(%rax)
  81c06d:	4a 8d 3c 77          	lea    (%rdi,%r14,2),%rdi
  81c071:	c4 c1 79 17 3c 06    	vmovhpd %xmm7,(%r14,%rax,1)
  81c077:	4c 3b 65 88          	cmp    -0x78(%rbp),%r12
  81c07b:	0f 82 43 ff ff ff    	jb     81bfc4 <pre_step3d_mod_mp_pre_step3d_tile_+0x7b24>
  81c081:	4c 8b b5 00 f4 ff ff 	mov    -0xc00(%rbp),%r14
  81c088:	48 8b 85 08 f4 ff ff 	mov    -0xbf8(%rbp),%rax
  81c08f:	48 8b 95 38 f6 ff ff 	mov    -0x9c8(%rbp),%rdx
  81c096:	48 8b 8d 40 f6 ff ff 	mov    -0x9c0(%rbp),%rcx
  81c09d:	48 8b b5 b0 f6 ff ff 	mov    -0x950(%rbp),%rsi
  81c0a4:	4c 8b a5 e8 fc ff ff 	mov    -0x318(%rbp),%r12
  81c0ab:	4c 8b ad 58 ff ff ff 	mov    -0xa8(%rbp),%r13
  81c0b2:	4c 8b 5d 80          	mov    -0x80(%rbp),%r11
  81c0b6:	4c 0f af e6          	imul   %rsi,%r12
  81c0ba:	4c 0f af ee          	imul   %rsi,%r13
  81c0be:	4c 0f af de          	imul   %rsi,%r11
  81c0c2:	48 3b b5 78 ff ff ff 	cmp    -0x88(%rbp),%rsi
  81c0c9:	0f 83 1c 01 00 00    	jae    81c1eb <pre_step3d_mod_mp_pre_step3d_tile_+0x7d4b>
  81c0cf:	4c 8b bd a8 f3 ff ff 	mov    -0xc58(%rbp),%r15
  81c0d6:	4c 8b 95 80 f7 ff ff 	mov    -0x880(%rbp),%r10
  81c0dd:	4c 8b 8d 98 fa ff ff 	mov    -0x568(%rbp),%r9
  81c0e4:	4c 8b 85 90 f3 ff ff 	mov    -0xc70(%rbp),%r8
  81c0eb:	4d 03 fe             	add    %r14,%r15
  81c0ee:	4c 89 bd 88 f3 ff ff 	mov    %r15,-0xc78(%rbp)
  81c0f5:	4c 03 d1             	add    %rcx,%r10
  81c0f8:	4c 8b bd 00 f3 ff ff 	mov    -0xd00(%rbp),%r15
  81c0ff:	4c 03 c9             	add    %rcx,%r9
  81c102:	48 8b bd 98 f3 ff ff 	mov    -0xc68(%rbp),%rdi
  81c109:	4c 03 c2             	add    %rdx,%r8
  81c10c:	48 8b b5 08 f3 ff ff 	mov    -0xcf8(%rbp),%rsi
  81c113:	4c 89 b5 00 f4 ff ff 	mov    %r14,-0xc00(%rbp)
  81c11a:	4d 03 fe             	add    %r14,%r15
  81c11d:	4c 89 bd 80 f3 ff ff 	mov    %r15,-0xc80(%rbp)
  81c124:	48 03 f8             	add    %rax,%rdi
  81c127:	4c 8b bd f8 f2 ff ff 	mov    -0xd08(%rbp),%r15
  81c12e:	48 03 f0             	add    %rax,%rsi
  81c131:	48 89 85 08 f4 ff ff 	mov    %rax,-0xbf8(%rbp)
  81c138:	48 89 95 38 f6 ff ff 	mov    %rdx,-0x9c8(%rbp)
  81c13f:	48 89 8d 40 f6 ff ff 	mov    %rcx,-0x9c0(%rbp)
  81c146:	4c 03 fa             	add    %rdx,%r15
  81c149:	4c 89 f8             	mov    %r15,%rax
  81c14c:	48 8b 95 80 f3 ff ff 	mov    -0xc80(%rbp),%rdx
  81c153:	48 8b 8d 88 f3 ff ff 	mov    -0xc78(%rbp),%rcx
  81c15a:	4c 8b b5 b0 f6 ff ff 	mov    -0x950(%rbp),%r14
  81c161:	4c 8b bd e0 fc ff ff 	mov    -0x320(%rbp),%r15
  81c168:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  81c16f:	00 
  81c170:	c4 c1 7b 10 6c 3d 00 	vmovsd 0x0(%r13,%rdi,1),%xmm5
  81c177:	c4 81 63 59 34 03    	vmulsd (%r11,%r8,1),%xmm3,%xmm6
  81c17d:	c4 c1 53 58 7c 35 00 	vaddsd 0x0(%r13,%rsi,1),%xmm5,%xmm7
  81c184:	c4 41 33 59 3c 0c    	vmulsd (%r12,%rcx,1),%xmm9,%xmm15
  81c18a:	c5 cb 59 ef          	vmulsd %xmm7,%xmm6,%xmm5
  81c18e:	c4 42 a9 bb 3c 14    	vfmsub231sd (%r12,%rdx,1),%xmm10,%xmm15
  81c194:	c4 01 7b 10 44 f1 08 	vmovsd 0x8(%r9,%r14,8),%xmm8
  81c19b:	c4 82 81 b9 2c f7    	vfmadd231sd (%r15,%r14,8),%xmm15,%xmm5
  81c1a1:	c4 81 3b 5c 34 f2    	vsubsd (%r10,%r14,8),%xmm8,%xmm6
  81c1a7:	49 ff c6             	inc    %r14
  81c1aa:	c5 d3 58 fe          	vaddsd %xmm6,%xmm5,%xmm7
  81c1ae:	c4 c1 7b 11 3c 03    	vmovsd %xmm7,(%r11,%rax,1)
  81c1b4:	4c 03 ad 58 ff ff ff 	add    -0xa8(%rbp),%r13
  81c1bb:	4c 03 5d 80          	add    -0x80(%rbp),%r11
  81c1bf:	4c 03 a5 e8 fc ff ff 	add    -0x318(%rbp),%r12
  81c1c6:	4c 3b b5 78 ff ff ff 	cmp    -0x88(%rbp),%r14
  81c1cd:	72 a1                	jb     81c170 <pre_step3d_mod_mp_pre_step3d_tile_+0x7cd0>
  81c1cf:	4c 8b b5 00 f4 ff ff 	mov    -0xc00(%rbp),%r14
  81c1d6:	48 8b 85 08 f4 ff ff 	mov    -0xbf8(%rbp),%rax
  81c1dd:	48 8b 95 38 f6 ff ff 	mov    -0x9c8(%rbp),%rdx
  81c1e4:	48 8b 8d 40 f6 ff ff 	mov    -0x9c0(%rbp),%rcx
  81c1eb:	48 8b b5 b8 f6 ff ff 	mov    -0x948(%rbp),%rsi
  81c1f2:	48 ff c6             	inc    %rsi
  81c1f5:	48 03 8d 18 ff ff ff 	add    -0xe8(%rbp),%rcx
  81c1fc:	48 03 95 08 fc ff ff 	add    -0x3f8(%rbp),%rdx
  81c203:	48 03 85 10 fd ff ff 	add    -0x2f0(%rbp),%rax
  81c20a:	4c 03 b5 a0 f6 ff ff 	add    -0x960(%rbp),%r14
  81c211:	48 89 b5 b8 f6 ff ff 	mov    %rsi,-0x948(%rbp)
  81c218:	48 3b b5 08 fd ff ff 	cmp    -0x2f8(%rbp),%rsi
  81c21f:	0f 82 cf fc ff ff    	jb     81bef4 <pre_step3d_mod_mp_pre_step3d_tile_+0x7a54>
  81c225:	c5 79 10 95 f0 f1 ff 	vmovupd -0xe10(%rbp),%xmm10
  81c22c:	ff 
  81c22d:	c5 7b 10 8d 10 f2 ff 	vmovsd -0xdf0(%rbp),%xmm9
  81c234:	ff 
  81c235:	c5 7b 10 85 08 f2 ff 	vmovsd -0xdf8(%rbp),%xmm8
  81c23c:	ff 
  81c23d:	c5 fb 10 bd 00 f2 ff 	vmovsd -0xe00(%rbp),%xmm7
  81c244:	ff 
  81c245:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  81c24c:	44 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%r8d
  81c253:	4c 8b 8d d0 f8 ff ff 	mov    -0x730(%rbp),%r9
  81c25a:	4c 8b 9d d8 f8 ff ff 	mov    -0x728(%rbp),%r11
  81c261:	44 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10d
  81c268:	c5 fd 10 35 10 8b 0a 	vmovupd 0xa8b10(%rip),%ymm6        # 8c4d80 <var$630.126.450+0xc0>
  81c26f:	00 
  81c270:	c5 f9 10 2d d8 a8 0a 	vmovupd 0xaa8d8(%rip),%xmm5        # 8c6b50 <__STRLITPACK_124.84+0x50>
  81c277:	00 
  81c278:	c5 7b 10 25 80 ad 0a 	vmovsd 0xaad80(%rip),%xmm12        # 8c7000 <__STRLITPACK_199.115+0x70>
  81c27f:	00 
  81c280:	41 ff c0             	inc    %r8d
  81c283:	48 ff c7             	inc    %rdi
  81c286:	4c 03 8d f0 fb ff ff 	add    -0x410(%rbp),%r9
  81c28d:	41 ff c2             	inc    %r10d
  81c290:	4c 03 9d f8 fb ff ff 	add    -0x408(%rbp),%r11
  81c297:	44 3b 85 d8 fb ff ff 	cmp    -0x428(%rbp),%r8d
  81c29e:	0f 82 4a b6 ff ff    	jb     8178ee <pre_step3d_mod_mp_pre_step3d_tile_+0x344e>
  81c2a4:	4c 8b b5 60 f5 ff ff 	mov    -0xaa0(%rbp),%r14
  81c2ab:	4c 8b bd 68 f5 ff ff 	mov    -0xa98(%rbp),%r15
  81c2b2:	44 8b ad 70 f5 ff ff 	mov    -0xa90(%rbp),%r13d
  81c2b9:	bf 0c 75 b3 00       	mov    $0xb3750c,%edi
  81c2be:	44 89 ee             	mov    %r13d,%esi
  81c2c1:	c5 f8 77             	vzeroupper 
  81c2c4:	e8 37 1e bf ff       	callq  40e100 <__kmpc_for_static_fini@plt>
  81c2c9:	4c 89 f2             	mov    %r14,%rdx
  81c2cc:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  81c2d3:	48 83 c0 1f          	add    $0x1f,%rax
  81c2d7:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81c2db:	48 03 e0             	add    %rax,%rsp
  81c2de:	4c 89 f8             	mov    %r15,%rax
  81c2e1:	48 8b 95 08 f6 ff ff 	mov    -0x9f8(%rbp),%rdx
  81c2e8:	48 83 c0 1f          	add    $0x1f,%rax
  81c2ec:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81c2f0:	48 03 e0             	add    %rax,%rsp
  81c2f3:	4c 8b bd 18 f6 ff ff 	mov    -0x9e8(%rbp),%r15
  81c2fa:	4c 8b b5 20 f6 ff ff 	mov    -0x9e0(%rbp),%r14
  81c301:	4c 8b ad 28 f6 ff ff 	mov    -0x9d8(%rbp),%r13
  81c308:	4c 8b a5 30 f6 ff ff 	mov    -0x9d0(%rbp),%r12
  81c30f:	c9                   	leaveq 
  81c310:	48 89 dc             	mov    %rbx,%rsp
  81c313:	5b                   	pop    %rbx
  81c314:	c3                   	retq   
  81c315:	53                   	push   %rbx
  81c316:	48 89 e3             	mov    %rsp,%rbx
  81c319:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  81c31d:	55                   	push   %rbp
  81c31e:	55                   	push   %rbp
  81c31f:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  81c323:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  81c328:	48 89 e5             	mov    %rsp,%rbp
  81c32b:	48 81 ec 70 0e 00 00 	sub    $0xe70,%rsp
  81c332:	48 89 fe             	mov    %rdi,%rsi
  81c335:	4c 89 ad 28 f6 ff ff 	mov    %r13,-0x9d8(%rbp)
  81c33c:	4c 8b 6b 38          	mov    0x38(%rbx),%r13
  81c340:	4c 89 bd 18 f6 ff ff 	mov    %r15,-0x9e8(%rbp)
  81c347:	4c 89 a5 30 f6 ff ff 	mov    %r12,-0x9d0(%rbp)
  81c34e:	4c 8b 63 10          	mov    0x10(%rbx),%r12
  81c352:	4c 8b 7b 40          	mov    0x40(%rbx),%r15
  81c356:	4c 89 b5 20 f6 ff ff 	mov    %r14,-0x9e0(%rbp)
  81c35d:	4c 8b 73 30          	mov    0x30(%rbx),%r14
  81c361:	48 8b 43 28          	mov    0x28(%rbx),%rax
  81c365:	4d 8b 6d 00          	mov    0x0(%r13),%r13
  81c369:	4c 89 ad e8 f1 ff ff 	mov    %r13,-0xe18(%rbp)
  81c370:	4d 8b 3f             	mov    (%r15),%r15
  81c373:	4d 63 2c 24          	movslq (%r12),%r13
  81c377:	4c 89 bd e0 f1 ff ff 	mov    %r15,-0xe20(%rbp)
  81c37e:	4c 89 ad b8 f6 ff ff 	mov    %r13,-0x948(%rbp)
  81c385:	4d 8b 3e             	mov    (%r14),%r15
  81c388:	44 8b 29             	mov    (%rcx),%r13d
  81c38b:	4c 8b 30             	mov    (%rax),%r14
  81c38e:	48 8b 4b 50          	mov    0x50(%rbx),%rcx
  81c392:	4c 8b 53 18          	mov    0x18(%rbx),%r10
  81c396:	4c 89 b5 00 f2 ff ff 	mov    %r14,-0xe00(%rbp)
  81c39d:	4d 63 31             	movslq (%r9),%r14
  81c3a0:	4c 89 b5 c0 f6 ff ff 	mov    %r14,-0x940(%rbp)
  81c3a7:	4d 8b 30             	mov    (%r8),%r14
  81c3aa:	4c 8b 01             	mov    (%rcx),%r8
  81c3ad:	48 8b 4b 60          	mov    0x60(%rbx),%rcx
  81c3b1:	4c 8b 5b 20          	mov    0x20(%rbx),%r11
  81c3b5:	4d 8b 12             	mov    (%r10),%r10
  81c3b8:	4c 8b 63 58          	mov    0x58(%rbx),%r12
  81c3bc:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
  81c3c0:	4c 89 95 d8 f1 ff ff 	mov    %r10,-0xe28(%rbp)
  81c3c7:	4c 89 85 f8 f1 ff ff 	mov    %r8,-0xe08(%rbp)
  81c3ce:	4c 8b 43 70          	mov    0x70(%rbx),%r8
  81c3d2:	4c 8b 53 78          	mov    0x78(%rbx),%r10
  81c3d6:	48 89 bd b0 f1 ff ff 	mov    %rdi,-0xe50(%rbp)
  81c3dd:	8b 3e                	mov    (%rsi),%edi
  81c3df:	48 8b 31             	mov    (%rcx),%rsi
  81c3e2:	89 bd b0 f3 ff ff    	mov    %edi,-0xc50(%rbp)
  81c3e8:	4d 8b 1b             	mov    (%r11),%r11
  81c3eb:	49 8b 04 24          	mov    (%r12),%rax
  81c3ef:	48 89 b5 08 f2 ff ff 	mov    %rsi,-0xdf8(%rbp)
  81c3f6:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
  81c3fa:	48 8b b3 88 00 00 00 	mov    0x88(%rbx),%rsi
  81c401:	4c 89 9d d0 f1 ff ff 	mov    %r11,-0xe30(%rbp)
  81c408:	48 89 85 f0 f1 ff ff 	mov    %rax,-0xe10(%rbp)
  81c40f:	4d 63 08             	movslq (%r8),%r9
  81c412:	4d 63 1a             	movslq (%r10),%r11
  81c415:	4c 8d 93 80 00 00 00 	lea    0x80(%rbx),%r10
  81c41c:	49 8b 02             	mov    (%r10),%rax
  81c41f:	4d 8b 42 18          	mov    0x18(%r10),%r8
  81c423:	4d 8b 52 20          	mov    0x20(%r10),%r10
  81c427:	4c 8b 27             	mov    (%rdi),%r12
  81c42a:	48 63 3e             	movslq (%rsi),%rdi
  81c42d:	4c 89 8d b8 f1 ff ff 	mov    %r9,-0xe48(%rbp)
  81c434:	4c 89 9d a8 f1 ff ff 	mov    %r11,-0xe58(%rbp)
  81c43b:	8b 12                	mov    (%rdx),%edx
  81c43d:	48 63 08             	movslq (%rax),%rcx
  81c440:	33 c0                	xor    %eax,%eax
  81c442:	48 89 bd a0 f1 ff ff 	mov    %rdi,-0xe60(%rbp)
  81c449:	48 8d bd 70 f2 ff ff 	lea    -0xd90(%rbp),%rdi
  81c450:	4d 63 08             	movslq (%r8),%r9
  81c453:	4d 63 1a             	movslq (%r10),%r11
  81c456:	48 8b b3 b0 00 00 00 	mov    0xb0(%rbx),%rsi
  81c45d:	48 89 8d c0 f1 ff ff 	mov    %rcx,-0xe40(%rbp)
  81c464:	4c 89 8d 98 f1 ff ff 	mov    %r9,-0xe68(%rbp)
  81c46b:	4c 89 9d 90 f1 ff ff 	mov    %r11,-0xe70(%rbp)
  81c472:	89 95 c8 f1 ff ff    	mov    %edx,-0xe38(%rbp)
  81c478:	e8 33 20 c6 ff       	callq  47e4b0 <_f90_dope_vector_init>
  81c47d:	8b 95 c8 f1 ff ff    	mov    -0xe38(%rbp),%edx
  81c483:	48 89 85 98 f3 ff ff 	mov    %rax,-0xc68(%rbp)
  81c48a:	48 83 c0 1f          	add    $0x1f,%rax
  81c48e:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81c492:	48 2b e0             	sub    %rax,%rsp
  81c495:	48 89 e0             	mov    %rsp,%rax
  81c498:	48 89 85 a0 f3 ff ff 	mov    %rax,-0xc60(%rbp)
  81c49f:	48 89 85 70 f2 ff ff 	mov    %rax,-0xd90(%rbp)
  81c4a6:	44 3b ea             	cmp    %edx,%r13d
  81c4a9:	0f 8c 91 20 00 00    	jl     81e540 <pre_step3d_mod_mp_pre_step3d_tile_+0xa0a0>
  81c4af:	48 83 c4 e0          	add    $0xffffffffffffffe0,%rsp
  81c4b3:	48 8d 85 dc f3 ff ff 	lea    -0xc24(%rbp),%rax
  81c4ba:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  81c4c0:	bf bc 74 b3 00       	mov    $0xb374bc,%edi
  81c4c5:	89 50 f4             	mov    %edx,-0xc(%rax)
  81c4c8:	ba 22 00 00 00       	mov    $0x22,%edx
  81c4cd:	44 89 68 f8          	mov    %r13d,-0x8(%rax)
  81c4d1:	48 8d 8d d8 f3 ff ff 	lea    -0xc28(%rbp),%rcx
  81c4d8:	48 89 04 24          	mov    %rax,(%rsp)
  81c4dc:	4c 8d 85 d0 f3 ff ff 	lea    -0xc30(%rbp),%r8
  81c4e3:	44 89 54 24 08       	mov    %r10d,0x8(%rsp)
  81c4e8:	4c 8d 8d d4 f3 ff ff 	lea    -0xc2c(%rbp),%r9
  81c4ef:	44 89 54 24 10       	mov    %r10d,0x10(%rsp)
  81c4f4:	8b 70 d4             	mov    -0x2c(%rax),%esi
  81c4f7:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%rax)
  81c4fe:	44 89 10             	mov    %r10d,(%rax)
  81c501:	e8 2a 19 bf ff       	callq  40de30 <__kmpc_for_static_init_4@plt>
  81c506:	48 83 c4 20          	add    $0x20,%rsp
  81c50a:	4d 63 ed             	movslq %r13d,%r13
  81c50d:	48 63 85 d0 f3 ff ff 	movslq -0xc30(%rbp),%rax
  81c514:	8b 95 d4 f3 ff ff    	mov    -0xc2c(%rbp),%edx
  81c51a:	48 89 85 d0 f2 ff ff 	mov    %rax,-0xd30(%rbp)
  81c521:	49 3b c5             	cmp    %r13,%rax
  81c524:	0f 8f 03 20 00 00    	jg     81e52d <pre_step3d_mod_mp_pre_step3d_tile_+0xa08d>
  81c52a:	41 3b d5             	cmp    %r13d,%edx
  81c52d:	4c 8b 0d 4c fb 31 00 	mov    0x31fb4c(%rip),%r9        # b3c080 <mod_param_mp_nt_+0x40>
  81c534:	44 0f 4c ea          	cmovl  %edx,%r13d
  81c538:	8b 15 e2 29 3d 00    	mov    0x3d29e2(%rip),%edx        # beef20 <mod_scalars_mp_itemp_>
  81c53e:	89 95 d8 f4 ff ff    	mov    %edx,-0xb28(%rbp)
  81c544:	48 8b 95 00 f2 ff ff 	mov    -0xe00(%rbp),%rdx
  81c54b:	49 c1 e1 02          	shl    $0x2,%r9
  81c54f:	4c 8b 15 8a fb 31 00 	mov    0x31fb8a(%rip),%r10        # b3c0e0 <mod_param_mp_n_+0x40>
  81c556:	49 f7 d9             	neg    %r9
  81c559:	48 8b 35 20 ee 31 00 	mov    0x31ee20(%rip),%rsi        # b3b380 <mod_scalars_mp_dt_+0x40>
  81c560:	48 f7 de             	neg    %rsi
  81c563:	4c 89 95 20 f3 ff ff 	mov    %r10,-0xce0(%rbp)
  81c56a:	49 63 06             	movslq (%r14),%rax
  81c56d:	48 03 f0             	add    %rax,%rsi
  81c570:	4c 8b 95 08 f2 ff ff 	mov    -0xdf8(%rbp),%r10
  81c577:	4d 63 34 24          	movslq (%r12),%r14
  81c57b:	4c 03 0d be fa 31 00 	add    0x31fabe(%rip),%r9        # b3c040 <mod_param_mp_nt_>
  81c582:	4c 8b 62 38          	mov    0x38(%rdx),%r12
  81c586:	48 8b 3d b3 ed 31 00 	mov    0x31edb3(%rip),%rdi        # b3b340 <mod_scalars_mp_dt_>
  81c58d:	4c 8b 1d 0c fb 31 00 	mov    0x31fb0c(%rip),%r11        # b3c0a0 <mod_param_mp_n_>
  81c594:	4c 89 a5 48 f7 ff ff 	mov    %r12,-0x8b8(%rbp)
  81c59b:	4c 8b a5 f0 f1 ff ff 	mov    -0xe10(%rbp),%r12
  81c5a2:	4c 89 9d 08 f3 ff ff 	mov    %r11,-0xcf8(%rbp)
  81c5a9:	4d 8b 5a 68          	mov    0x68(%r10),%r11
  81c5ad:	45 8b 04 81          	mov    (%r9,%rax,4),%r8d
  81c5b1:	48 8b 8d 70 f2 ff ff 	mov    -0xd90(%rbp),%rcx
  81c5b8:	4c 89 b5 f0 f2 ff ff 	mov    %r14,-0xd10(%rbp)
  81c5bf:	4c 89 9d e0 f6 ff ff 	mov    %r11,-0x920(%rbp)
  81c5c6:	44 89 85 e0 f4 ff ff 	mov    %r8d,-0xb20(%rbp)
  81c5cd:	c5 7b 10 0c f7       	vmovsd (%rdi,%rsi,8),%xmm9
  81c5d2:	48 89 8d 50 f3 ff ff 	mov    %rcx,-0xcb0(%rbp)
  81c5d9:	4d 8b 32             	mov    (%r10),%r14
  81c5dc:	4d 8b 4a 38          	mov    0x38(%r10),%r9
  81c5e0:	4d 8b 5a 50          	mov    0x50(%r10),%r11
  81c5e4:	4c 8b 02             	mov    (%rdx),%r8
  81c5e7:	48 8b ba 98 00 00 00 	mov    0x98(%rdx),%rdi
  81c5ee:	48 8b b2 80 00 00 00 	mov    0x80(%rdx),%rsi
  81c5f5:	48 8b 4a 68          	mov    0x68(%rdx),%rcx
  81c5f9:	4c 8b 52 50          	mov    0x50(%rdx),%r10
  81c5fd:	49 8b 54 24 68       	mov    0x68(%r12),%rdx
  81c602:	48 89 95 e0 f3 ff ff 	mov    %rdx,-0xc20(%rbp)
  81c609:	48 8b 95 e8 f1 ff ff 	mov    -0xe18(%rbp),%rdx
  81c610:	48 89 bd 38 f4 ff ff 	mov    %rdi,-0xbc8(%rbp)
  81c617:	48 89 8d d8 f6 ff ff 	mov    %rcx,-0x928(%rbp)
  81c61e:	48 8b bd f8 f1 ff ff 	mov    -0xe08(%rbp),%rdi
  81c625:	49 8b 0c 24          	mov    (%r12),%rcx
  81c629:	48 89 8d 28 f3 ff ff 	mov    %rcx,-0xcd8(%rbp)
  81c630:	48 8b 4a 50          	mov    0x50(%rdx),%rcx
  81c634:	4c 89 8d 40 f7 ff ff 	mov    %r9,-0x8c0(%rbp)
  81c63b:	48 89 8d 10 f3 ff ff 	mov    %rcx,-0xcf0(%rbp)
  81c642:	4c 8b 0f             	mov    (%rdi),%r9
  81c645:	48 8b 8d e0 f1 ff ff 	mov    -0xe20(%rbp),%rcx
  81c64c:	4c 89 85 e8 f2 ff ff 	mov    %r8,-0xd18(%rbp)
  81c653:	48 89 b5 38 f3 ff ff 	mov    %rsi,-0xcc8(%rbp)
  81c65a:	4c 89 8d 18 f3 ff ff 	mov    %r9,-0xce8(%rbp)
  81c661:	4c 8b 4f 68          	mov    0x68(%rdi),%r9
  81c665:	4c 8b 47 50          	mov    0x50(%rdi),%r8
  81c669:	48 8b 77 38          	mov    0x38(%rdi),%rsi
  81c66d:	49 8b 7c 24 38       	mov    0x38(%r12),%rdi
  81c672:	48 89 b5 c8 f4 ff ff 	mov    %rsi,-0xb38(%rbp)
  81c679:	48 89 bd d0 f4 ff ff 	mov    %rdi,-0xb30(%rbp)
  81c680:	48 8b 32             	mov    (%rdx),%rsi
  81c683:	48 8b 39             	mov    (%rcx),%rdi
  81c686:	48 89 b5 00 f3 ff ff 	mov    %rsi,-0xd00(%rbp)
  81c68d:	48 89 bd f8 f2 ff ff 	mov    %rdi,-0xd08(%rbp)
  81c694:	48 8b 71 50          	mov    0x50(%rcx),%rsi
  81c698:	48 8b 79 38          	mov    0x38(%rcx),%rdi
  81c69c:	48 8b 8d d8 f1 ff ff 	mov    -0xe28(%rbp),%rcx
  81c6a3:	4c 89 85 e0 f2 ff ff 	mov    %r8,-0xd20(%rbp)
  81c6aa:	4d 8b 44 24 50       	mov    0x50(%r12),%r8
  81c6af:	4c 8b 62 38          	mov    0x38(%rdx),%r12
  81c6b3:	4c 89 a5 c0 f3 ff ff 	mov    %r12,-0xc40(%rbp)
  81c6ba:	4c 8b 61 68          	mov    0x68(%rcx),%r12
  81c6be:	4c 89 a5 d0 f6 ff ff 	mov    %r12,-0x930(%rbp)
  81c6c5:	4c 8b a5 d0 f1 ff ff 	mov    -0xe30(%rbp),%r12
  81c6cc:	48 8b 11             	mov    (%rcx),%rdx
  81c6cf:	c5 7b 10 15 29 a9 0a 	vmovsd 0xaa929(%rip),%xmm10        # 8c7000 <__STRLITPACK_199.115+0x70>
  81c6d6:	00 
  81c6d7:	48 89 95 30 f3 ff ff 	mov    %rdx,-0xcd0(%rbp)
  81c6de:	49 8b 14 24          	mov    (%r12),%rdx
  81c6e2:	48 89 95 48 f3 ff ff 	mov    %rdx,-0xcb8(%rbp)
  81c6e9:	49 8b 94 24 80 00 00 	mov    0x80(%r12),%rdx
  81c6f0:	00 
  81c6f1:	4d 63 ed             	movslq %r13d,%r13
  81c6f4:	c5 ab 5c 05 cc 77 32 	vsubsd 0x3277cc(%rip),%xmm10,%xmm0        # b43ec8 <mod_scalars_mp_lambda_>
  81c6fb:	00 
  81c6fc:	48 89 95 40 f4 ff ff 	mov    %rdx,-0xbc0(%rbp)
  81c703:	49 8b 54 24 68       	mov    0x68(%r12),%rdx
  81c708:	4d 63 3f             	movslq (%r15),%r15
  81c70b:	4c 2b ad d0 f2 ff ff 	sub    -0xd30(%rbp),%r13
  81c712:	48 89 b5 40 f3 ff ff 	mov    %rsi,-0xcc0(%rbp)
  81c719:	49 ff c5             	inc    %r13
  81c71c:	48 89 95 c8 f6 ff ff 	mov    %rdx,-0x938(%rbp)
  81c723:	4c 89 bd d8 f2 ff ff 	mov    %r15,-0xd28(%rbp)
  81c72a:	48 8b 71 50          	mov    0x50(%rcx),%rsi
  81c72e:	49 8b 54 24 50       	mov    0x50(%r12),%rdx
  81c733:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  81c738:	44 8b 3d 51 83 36 00 	mov    0x368351(%rip),%r15d        # b84a90 <mod_param_mp_nat_>
  81c73f:	48 8b 49 38          	mov    0x38(%rcx),%rcx
  81c743:	48 c7 85 a8 f3 ff ff 	movq   $0x0,-0xc58(%rbp)
  81c74a:	00 00 00 00 
  81c74e:	4c 89 ad b8 f3 ff ff 	mov    %r13,-0xc48(%rbp)
  81c755:	48 89 95 58 f3 ff ff 	mov    %rdx,-0xca8(%rbp)
  81c75c:	4c 89 8d e8 f3 ff ff 	mov    %r9,-0xc18(%rbp)
  81c763:	c5 b3 59 d8          	vmulsd %xmm0,%xmm9,%xmm3
  81c767:	4c 89 a5 50 f7 ff ff 	mov    %r12,-0x8b0(%rbp)
  81c76e:	48 89 8d 58 f7 ff ff 	mov    %rcx,-0x8a8(%rbp)
  81c775:	48 89 b5 60 f3 ff ff 	mov    %rsi,-0xca0(%rbp)
  81c77c:	48 89 bd c8 f3 ff ff 	mov    %rdi,-0xc38(%rbp)
  81c783:	4c 89 85 68 f3 ff ff 	mov    %r8,-0xc98(%rbp)
  81c78a:	4c 89 95 70 f3 ff ff 	mov    %r10,-0xc90(%rbp)
  81c791:	4c 89 9d 78 f3 ff ff 	mov    %r11,-0xc88(%rbp)
  81c798:	4c 89 b5 80 f3 ff ff 	mov    %r14,-0xc80(%rbp)
  81c79f:	44 89 bd 88 f3 ff ff 	mov    %r15d,-0xc78(%rbp)
  81c7a6:	48 89 85 90 f3 ff ff 	mov    %rax,-0xc70(%rbp)
  81c7ad:	44 8b ad e0 f4 ff ff 	mov    -0xb20(%rbp),%r13d
  81c7b4:	48 8b 95 a8 f3 ff ff 	mov    -0xc58(%rbp),%rdx
  81c7bb:	4c 8b 8d b8 f6 ff ff 	mov    -0x948(%rbp),%r9
  81c7c2:	45 33 c0             	xor    %r8d,%r8d
  81c7c5:	45 85 ed             	test   %r13d,%r13d
  81c7c8:	0f 8e 4f 1d 00 00    	jle    81e51d <pre_step3d_mod_mp_pre_step3d_tile_+0xa07d>
  81c7ce:	48 8b 85 20 f3 ff ff 	mov    -0xce0(%rbp),%rax
  81c7d5:	48 8b b5 90 f3 ff ff 	mov    -0xc70(%rbp),%rsi
  81c7dc:	4c 89 8d b8 f6 ff ff 	mov    %r9,-0x948(%rbp)
  81c7e3:	44 89 ad e0 f4 ff ff 	mov    %r13d,-0xb20(%rbp)
  81c7ea:	4c 8d 24 85 00 00 00 	lea    0x0(,%rax,4),%r12
  81c7f1:	00 
  81c7f2:	49 f7 dc             	neg    %r12
  81c7f5:	4c 03 a5 08 f3 ff ff 	add    -0xcf8(%rbp),%r12
  81c7fc:	4c 8b ad a8 f1 ff ff 	mov    -0xe58(%rbp),%r13
  81c803:	4d 89 eb             	mov    %r13,%r11
  81c806:	4c 8b bd 60 f3 ff ff 	mov    -0xca0(%rbp),%r15
  81c80d:	49 63 0c b4          	movslq (%r12,%rsi,4),%rcx
  81c811:	4c 8b a5 c0 f6 ff ff 	mov    -0x940(%rbp),%r12
  81c818:	45 2b cc             	sub    %r12d,%r9d
  81c81b:	41 ff c1             	inc    %r9d
  81c81e:	48 8d 41 ff          	lea    -0x1(%rcx),%rax
  81c822:	4c 8b b5 b8 f1 ff ff 	mov    -0xe48(%rbp),%r14
  81c829:	44 89 85 c0 f4 ff ff 	mov    %r8d,-0xb40(%rbp)
  81c830:	4d 89 f8             	mov    %r15,%r8
  81c833:	44 89 8d 28 f7 ff ff 	mov    %r9d,-0x8d8(%rbp)
  81c83a:	41 83 e1 fc          	and    $0xfffffffc,%r9d
  81c83e:	44 89 8d 00 f6 ff ff 	mov    %r9d,-0xa00(%rbp)
  81c845:	48 8d b5 58 f7 ff ff 	lea    -0x8a8(%rbp),%rsi
  81c84c:	4c 8b 0e             	mov    (%rsi),%r9
  81c84f:	4c 0f af 85 d0 f2 ff 	imul   -0xd30(%rbp),%r8
  81c856:	ff 
  81c857:	4c 0f af 36          	imul   (%rsi),%r14
  81c85b:	4d 0f af df          	imul   %r15,%r11
  81c85f:	4d 0f af cc          	imul   %r12,%r9
  81c863:	4c 0f af fa          	imul   %rdx,%r15
  81c867:	c5 fd 10 2d 11 85 0a 	vmovupd 0xa8511(%rip),%ymm5        # 8c4d80 <var$630.126.450+0xc0>
  81c86e:	00 
  81c86f:	c5 f9 10 25 d9 a2 0a 	vmovupd 0xaa2d9(%rip),%xmm4        # 8c6b50 <__STRLITPACK_124.84+0x50>
  81c876:	00 
  81c877:	c5 fb 12 fb          	vmovddup %xmm3,%xmm7
  81c87b:	c4 c1 7b 12 f1       	vmovddup %xmm9,%xmm6
  81c880:	c4 42 7d 19 c1       	vbroadcastsd %xmm9,%ymm8
  81c885:	c4 e2 7d 19 d3       	vbroadcastsd %xmm3,%ymm2
  81c88a:	48 89 8d 20 f7 ff ff 	mov    %rcx,-0x8e0(%rbp)
  81c891:	48 8b 8d d0 f6 ff ff 	mov    -0x930(%rbp),%rcx
  81c898:	48 8b bd 30 f3 ff ff 	mov    -0xcd0(%rbp),%rdi
  81c89f:	49 89 fa             	mov    %rdi,%r10
  81c8a2:	4c 2b d1             	sub    %rcx,%r10
  81c8a5:	48 89 ce             	mov    %rcx,%rsi
  81c8a8:	48 89 85 10 f7 ff ff 	mov    %rax,-0x8f0(%rbp)
  81c8af:	48 8d 04 09          	lea    (%rcx,%rcx,1),%rax
  81c8b3:	4c 89 85 e0 f1 ff ff 	mov    %r8,-0xe20(%rbp)
  81c8ba:	49 2b c3             	sub    %r11,%rax
  81c8bd:	49 2b f3             	sub    %r11,%rsi
  81c8c0:	4d 2b d8             	sub    %r8,%r11
  81c8c3:	4d 2b c6             	sub    %r14,%r8
  81c8c6:	4d 2b f1             	sub    %r9,%r14
  81c8c9:	4d 03 de             	add    %r14,%r11
  81c8cc:	49 8d 0c 4a          	lea    (%r10,%rcx,2),%rcx
  81c8d0:	4c 8b a5 58 f7 ff ff 	mov    -0x8a8(%rbp),%r12
  81c8d7:	49 2b fb             	sub    %r11,%rdi
  81c8da:	49 2b cb             	sub    %r11,%rcx
  81c8dd:	4d 89 e6             	mov    %r12,%r14
  81c8e0:	4c 89 95 d0 f1 ff ff 	mov    %r10,-0xe30(%rbp)
  81c8e7:	48 89 b5 d8 f1 ff ff 	mov    %rsi,-0xe28(%rbp)
  81c8ee:	49 03 f2             	add    %r10,%rsi
  81c8f1:	49 03 f0             	add    %r8,%rsi
  81c8f4:	4c 03 d0             	add    %rax,%r10
  81c8f7:	4d 03 c2             	add    %r10,%r8
  81c8fa:	4e 8d 1c 3f          	lea    (%rdi,%r15,1),%r11
  81c8fe:	4c 89 9d e0 f5 ff ff 	mov    %r11,-0xa20(%rbp)
  81c905:	4a 8d 3c 67          	lea    (%rdi,%r12,2),%rdi
  81c909:	49 03 f1             	add    %r9,%rsi
  81c90c:	4e 8d 1c 39          	lea    (%rcx,%r15,1),%r11
  81c910:	4d 03 c1             	add    %r9,%r8
  81c913:	4a 8d 0c 71          	lea    (%rcx,%r14,2),%rcx
  81c917:	4c 89 bd 60 f6 ff ff 	mov    %r15,-0x9a0(%rbp)
  81c91e:	49 03 ff             	add    %r15,%rdi
  81c921:	49 03 cf             	add    %r15,%rcx
  81c924:	49 03 f7             	add    %r15,%rsi
  81c927:	4d 03 c7             	add    %r15,%r8
  81c92a:	4d 89 ef             	mov    %r13,%r15
  81c92d:	48 89 b5 10 f6 ff ff 	mov    %rsi,-0x9f0(%rbp)
  81c934:	48 8b b5 58 f3 ff ff 	mov    -0xca8(%rbp),%rsi
  81c93b:	4c 0f af fe          	imul   %rsi,%r15
  81c93f:	48 89 8d f8 f5 ff ff 	mov    %rcx,-0xa08(%rbp)
  81c946:	48 8b 8d c8 f6 ff ff 	mov    -0x938(%rbp),%rcx
  81c94d:	49 89 cc             	mov    %rcx,%r12
  81c950:	4c 8b b5 48 f3 ff ff 	mov    -0xcb8(%rbp),%r14
  81c957:	4d 2b e7             	sub    %r15,%r12
  81c95a:	4c 2b b5 40 f4 ff ff 	sub    -0xbc0(%rbp),%r14
  81c961:	4c 89 9d e8 f5 ff ff 	mov    %r11,-0xa18(%rbp)
  81c968:	4d 03 e6             	add    %r14,%r12
  81c96b:	48 89 bd f0 f5 ff ff 	mov    %rdi,-0xa10(%rbp)
  81c972:	4c 03 f1             	add    %rcx,%r14
  81c975:	48 8b 8d d0 f2 ff ff 	mov    -0xd30(%rbp),%rcx
  81c97c:	49 89 ca             	mov    %rcx,%r10
  81c97f:	4c 8b 9d b8 f1 ff ff 	mov    -0xe48(%rbp),%r11
  81c986:	48 8b bd 50 f7 ff ff 	mov    -0x8b0(%rbp),%rdi
  81c98d:	4c 89 85 40 f6 ff ff 	mov    %r8,-0x9c0(%rbp)
  81c994:	4d 89 d8             	mov    %r11,%r8
  81c997:	4c 0f af d6          	imul   %rsi,%r10
  81c99b:	4c 0f af c7          	imul   %rdi,%r8
  81c99f:	48 0f af f2          	imul   %rdx,%rsi
  81c9a3:	48 89 85 38 f6 ff ff 	mov    %rax,-0x9c8(%rbp)
  81c9aa:	4d 2b fa             	sub    %r10,%r15
  81c9ad:	48 8b 85 c0 f6 ff ff 	mov    -0x940(%rbp),%rax
  81c9b4:	4d 2b d0             	sub    %r8,%r10
  81c9b7:	49 89 c1             	mov    %rax,%r9
  81c9ba:	4c 0f af cf          	imul   %rdi,%r9
  81c9be:	4d 2b c1             	sub    %r9,%r8
  81c9c1:	4c 89 bd e8 f1 ff ff 	mov    %r15,-0xe18(%rbp)
  81c9c8:	4d 03 c7             	add    %r15,%r8
  81c9cb:	4d 2b f0             	sub    %r8,%r14
  81c9ce:	4f 8d 3c 14          	lea    (%r12,%r10,1),%r15
  81c9d2:	4d 03 f9             	add    %r9,%r15
  81c9d5:	4d 8d 0c 79          	lea    (%r9,%rdi,2),%r9
  81c9d9:	4d 03 d1             	add    %r9,%r10
  81c9dc:	4c 03 f6             	add    %rsi,%r14
  81c9df:	4d 03 e2             	add    %r10,%r12
  81c9e2:	4c 03 fe             	add    %rsi,%r15
  81c9e5:	4c 8b 95 70 f3 ff ff 	mov    -0xc90(%rbp),%r10
  81c9ec:	4c 03 e6             	add    %rsi,%r12
  81c9ef:	4d 0f af ea          	imul   %r10,%r13
  81c9f3:	4c 89 b5 60 f4 ff ff 	mov    %r14,-0xba0(%rbp)
  81c9fa:	4c 8b 85 d8 f6 ff ff 	mov    -0x928(%rbp),%r8
  81ca01:	4c 89 c7             	mov    %r8,%rdi
  81ca04:	4c 8b b5 38 f3 ff ff 	mov    -0xcc8(%rbp),%r14
  81ca0b:	49 2b fd             	sub    %r13,%rdi
  81ca0e:	4c 89 a5 80 f4 ff ff 	mov    %r12,-0xb80(%rbp)
  81ca15:	4c 8b a5 e8 f2 ff ff 	mov    -0xd18(%rbp),%r12
  81ca1c:	4c 2b a5 38 f4 ff ff 	sub    -0xbc8(%rbp),%r12
  81ca23:	4c 89 a5 50 f4 ff ff 	mov    %r12,-0xbb0(%rbp)
  81ca2a:	4f 8d 24 06          	lea    (%r14,%r8,1),%r12
  81ca2e:	48 89 b5 98 f4 ff ff 	mov    %rsi,-0xb68(%rbp)
  81ca35:	4c 89 e6             	mov    %r12,%rsi
  81ca38:	4c 89 bd 78 f4 ff ff 	mov    %r15,-0xb88(%rbp)
  81ca3f:	4f 8d 3c 00          	lea    (%r8,%r8,1),%r15
  81ca43:	48 89 bd 90 f4 ff ff 	mov    %rdi,-0xb70(%rbp)
  81ca4a:	48 2b f7             	sub    %rdi,%rsi
  81ca4d:	4c 89 ff             	mov    %r15,%rdi
  81ca50:	49 f7 df             	neg    %r15
  81ca53:	4d 03 f8             	add    %r8,%r15
  81ca56:	49 89 c8             	mov    %rcx,%r8
  81ca59:	4d 0f af c2          	imul   %r10,%r8
  81ca5d:	4c 0f af d2          	imul   %rdx,%r10
  81ca61:	49 2b fd             	sub    %r13,%rdi
  81ca64:	4d 2b e8             	sub    %r8,%r13
  81ca67:	4c 89 ad 00 f2 ff ff 	mov    %r13,-0xe00(%rbp)
  81ca6e:	4d 03 fd             	add    %r13,%r15
  81ca71:	49 89 c5             	mov    %rax,%r13
  81ca74:	48 f7 de             	neg    %rsi
  81ca77:	4c 8b 8d 48 f7 ff ff 	mov    -0x8b8(%rbp),%r9
  81ca7e:	4d 0f af d9          	imul   %r9,%r11
  81ca82:	4d 0f af e9          	imul   %r9,%r13
  81ca86:	4d 89 f1             	mov    %r14,%r9
  81ca89:	4c 0f af 8d d8 f2 ff 	imul   -0xd28(%rbp),%r9
  81ca90:	ff 
  81ca91:	4c 89 bd 58 f4 ff ff 	mov    %r15,-0xba8(%rbp)
  81ca98:	4d 89 c7             	mov    %r8,%r15
  81ca9b:	4c 89 ad 10 f2 ff ff 	mov    %r13,-0xdf0(%rbp)
  81caa2:	4d 2b fb             	sub    %r11,%r15
  81caa5:	4d 2b dd             	sub    %r13,%r11
  81caa8:	4d 03 e9             	add    %r9,%r13
  81caab:	4d 03 ef             	add    %r15,%r13
  81caae:	4c 89 a5 f0 f1 ff ff 	mov    %r12,-0xe10(%rbp)
  81cab5:	4c 2b e7             	sub    %rdi,%r12
  81cab8:	48 03 b5 e8 f2 ff ff 	add    -0xd18(%rbp),%rsi
  81cabf:	49 f7 dc             	neg    %r12
  81cac2:	4c 03 a5 e8 f2 ff ff 	add    -0xd18(%rbp),%r12
  81cac9:	4c 89 85 f8 f1 ff ff 	mov    %r8,-0xe08(%rbp)
  81cad0:	4d 03 e5             	add    %r13,%r12
  81cad3:	4c 89 9d 18 f2 ff ff 	mov    %r11,-0xde8(%rbp)
  81cada:	4f 8d 1c 08          	lea    (%r8,%r9,1),%r11
  81cade:	48 89 b5 48 f4 ff ff 	mov    %rsi,-0xbb8(%rbp)
  81cae5:	4d 8d 44 35 00       	lea    0x0(%r13,%rsi,1),%r8
  81caea:	4c 8b ad b0 f1 ff ff 	mov    -0xe50(%rbp),%r13
  81caf1:	49 03 fb             	add    %r11,%rdi
  81caf4:	48 8b b5 c0 f1 ff ff 	mov    -0xe40(%rbp),%rsi
  81cafb:	4d 03 e2             	add    %r10,%r12
  81cafe:	48 89 bd 20 f2 ff ff 	mov    %rdi,-0xde0(%rbp)
  81cb05:	4d 03 c2             	add    %r10,%r8
  81cb08:	4c 89 bd 08 f2 ff ff 	mov    %r15,-0xdf8(%rbp)
  81cb0f:	49 8d 7c c5 00       	lea    0x0(%r13,%rax,8),%rdi
  81cb14:	4c 8b ad a0 f1 ff ff 	mov    -0xe60(%rbp),%r13
  81cb1b:	4c 8d 3c f5 00 00 00 	lea    0x0(,%rsi,8),%r15
  81cb22:	00 
  81cb23:	4c 2b ee             	sub    %rsi,%r13
  81cb26:	4c 89 a5 a0 f4 ff ff 	mov    %r12,-0xb60(%rbp)
  81cb2d:	4c 8d 24 c5 00 00 00 	lea    0x0(,%rax,8),%r12
  81cb34:	00 
  81cb35:	4c 89 a5 28 f2 ff ff 	mov    %r12,-0xdd8(%rbp)
  81cb3c:	4d 2b e7             	sub    %r15,%r12
  81cb3f:	49 f7 df             	neg    %r15
  81cb42:	48 89 bd 10 f5 ff ff 	mov    %rdi,-0xaf0(%rbp)
  81cb49:	4a 8d 34 ed 08 00 00 	lea    0x8(,%r13,8),%rsi
  81cb50:	00 
  81cb51:	4c 03 ff             	add    %rdi,%r15
  81cb54:	48 8b bd 20 f7 ff ff 	mov    -0x8e0(%rbp),%rdi
  81cb5b:	48 0f af fe          	imul   %rsi,%rdi
  81cb5f:	4c 89 bd 30 f2 ff ff 	mov    %r15,-0xdd0(%rbp)
  81cb66:	4c 8b bd 50 f3 ff ff 	mov    -0xcb0(%rbp),%r15
  81cb6d:	4c 03 9d 90 f4 ff ff 	add    -0xb70(%rbp),%r11
  81cb74:	4c 89 85 68 f4 ff ff 	mov    %r8,-0xb98(%rbp)
  81cb7b:	4c 89 9d 70 f4 ff ff 	mov    %r11,-0xb90(%rbp)
  81cb82:	4f 8d 04 27          	lea    (%r15,%r12,1),%r8
  81cb86:	4c 89 85 50 f6 ff ff 	mov    %r8,-0x9b0(%rbp)
  81cb8d:	4d 8d 1c 3f          	lea    (%r15,%rdi,1),%r11
  81cb91:	4d 03 dc             	add    %r12,%r11
  81cb94:	49 03 f8             	add    %r8,%rdi
  81cb97:	4c 89 ad 58 f6 ff ff 	mov    %r13,-0x9a8(%rbp)
  81cb9e:	4f 8d 04 ec          	lea    (%r12,%r13,8),%r8
  81cba2:	4c 8b a5 98 f1 ff ff 	mov    -0xe68(%rbp),%r12
  81cba9:	49 89 d5             	mov    %rdx,%r13
  81cbac:	4c 0f af e6          	imul   %rsi,%r12
  81cbb0:	4c 0f af ee          	imul   %rsi,%r13
  81cbb4:	48 89 bd 20 f4 ff ff 	mov    %rdi,-0xbe0(%rbp)
  81cbbb:	48 89 cf             	mov    %rcx,%rdi
  81cbbe:	48 0f af fe          	imul   %rsi,%rdi
  81cbc2:	4c 89 a5 38 f2 ff ff 	mov    %r12,-0xdc8(%rbp)
  81cbc9:	4d 03 c7             	add    %r15,%r8
  81cbcc:	48 89 b5 30 f7 ff ff 	mov    %rsi,-0x8d0(%rbp)
  81cbd3:	4c 8b a5 48 f7 ff ff 	mov    -0x8b8(%rbp),%r12
  81cbda:	48 8b b5 38 f4 ff ff 	mov    -0xbc8(%rbp),%rsi
  81cbe1:	49 2b f6             	sub    %r14,%rsi
  81cbe4:	4c 8b bd 50 f4 ff ff 	mov    -0xbb0(%rbp),%r15
  81cbeb:	4c 03 fe             	add    %rsi,%r15
  81cbee:	48 8b b5 58 f4 ff ff 	mov    -0xba8(%rbp),%rsi
  81cbf5:	48 f7 de             	neg    %rsi
  81cbf8:	4c 89 ad 48 f5 ff ff 	mov    %r13,-0xab8(%rbp)
  81cbff:	49 03 f7             	add    %r15,%rsi
  81cc02:	49 89 f6             	mov    %rsi,%r14
  81cc05:	4f 8d 2c 61          	lea    (%r9,%r12,2),%r13
  81cc09:	49 f7 dd             	neg    %r13
  81cc0c:	48 89 bd 40 f2 ff ff 	mov    %rdi,-0xdc0(%rbp)
  81cc13:	48 8b bd 18 f2 ff ff 	mov    -0xde8(%rbp),%rdi
  81cc1a:	4c 2b f7             	sub    %rdi,%r14
  81cc1d:	4c 2b bd 00 f2 ff ff 	sub    -0xe00(%rbp),%r15
  81cc24:	4c 03 ef             	add    %rdi,%r13
  81cc27:	48 f7 df             	neg    %rdi
  81cc2a:	4d 03 f1             	add    %r9,%r14
  81cc2d:	49 03 ff             	add    %r15,%rdi
  81cc30:	49 2b f5             	sub    %r13,%rsi
  81cc33:	4c 03 cf             	add    %rdi,%r9
  81cc36:	4d 2b fd             	sub    %r13,%r15
  81cc39:	4c 8b a5 b8 f6 ff ff 	mov    -0x948(%rbp),%r12
  81cc40:	4d 03 ca             	add    %r10,%r9
  81cc43:	4c 2b e0             	sub    %rax,%r12
  81cc46:	49 03 f2             	add    %r10,%rsi
  81cc49:	48 8b bd b8 f1 ff ff 	mov    -0xe48(%rbp),%rdi
  81cc50:	4d 03 fa             	add    %r10,%r15
  81cc53:	4c 89 8d b0 f4 ff ff 	mov    %r9,-0xb50(%rbp)
  81cc5a:	49 ff c4             	inc    %r12
  81cc5d:	48 89 b5 58 f4 ff ff 	mov    %rsi,-0xba8(%rbp)
  81cc64:	49 89 fd             	mov    %rdi,%r13
  81cc67:	4c 63 8d 28 f7 ff ff 	movslq -0x8d8(%rbp),%r9
  81cc6e:	4d 03 f2             	add    %r10,%r14
  81cc71:	48 8b b5 a8 f1 ff ff 	mov    -0xe58(%rbp),%rsi
  81cc78:	4c 89 bd 50 f4 ff ff 	mov    %r15,-0xbb0(%rbp)
  81cc7f:	4c 89 9d f0 f3 ff ff 	mov    %r11,-0xc10(%rbp)
  81cc86:	49 89 cb             	mov    %rcx,%r11
  81cc89:	4c 89 a5 60 f7 ff ff 	mov    %r12,-0x8a0(%rbp)
  81cc90:	49 89 f4             	mov    %rsi,%r12
  81cc93:	4c 8b bd c8 f4 ff ff 	mov    -0xb38(%rbp),%r15
  81cc9a:	4c 89 8d 68 f6 ff ff 	mov    %r9,-0x998(%rbp)
  81cca1:	4c 8b 8d e0 f2 ff ff 	mov    -0xd20(%rbp),%r9
  81cca8:	4d 0f af e1          	imul   %r9,%r12
  81ccac:	4d 0f af d9          	imul   %r9,%r11
  81ccb0:	4d 0f af ef          	imul   %r15,%r13
  81ccb4:	49 0f af c7          	imul   %r15,%rax
  81ccb8:	4c 0f af ca          	imul   %rdx,%r9
  81ccbc:	4c 89 95 a8 f4 ff ff 	mov    %r10,-0xb58(%rbp)
  81ccc3:	4c 89 b5 88 f4 ff ff 	mov    %r14,-0xb78(%rbp)
  81ccca:	4c 63 95 00 f6 ff ff 	movslq -0xa00(%rbp),%r10
  81ccd1:	4c 8b b5 18 f3 ff ff 	mov    -0xce8(%rbp),%r14
  81ccd8:	4c 89 85 08 f6 ff ff 	mov    %r8,-0x9f8(%rbp)
  81ccdf:	4d 89 f0             	mov    %r14,%r8
  81cce2:	4c 89 95 a0 f7 ff ff 	mov    %r10,-0x860(%rbp)
  81cce9:	4c 8b 95 e8 f3 ff ff 	mov    -0xc18(%rbp),%r10
  81ccf0:	4d 2b c2             	sub    %r10,%r8
  81ccf3:	4c 89 9d 58 f2 ff ff 	mov    %r11,-0xda8(%rbp)
  81ccfa:	4d 2b d4             	sub    %r12,%r10
  81ccfd:	4d 2b e3             	sub    %r11,%r12
  81cd00:	4d 2b dd             	sub    %r13,%r11
  81cd03:	4c 2b e8             	sub    %rax,%r13
  81cd06:	4d 03 e5             	add    %r13,%r12
  81cd09:	49 89 f5             	mov    %rsi,%r13
  81cd0c:	49 f7 dc             	neg    %r12
  81cd0f:	4d 03 e6             	add    %r14,%r12
  81cd12:	4c 89 85 48 f2 ff ff 	mov    %r8,-0xdb8(%rbp)
  81cd19:	4d 03 c2             	add    %r10,%r8
  81cd1c:	4d 03 c3             	add    %r11,%r8
  81cd1f:	4c 03 c0             	add    %rax,%r8
  81cd22:	4c 89 95 50 f2 ff ff 	mov    %r10,-0xdb0(%rbp)
  81cd29:	4b 8d 04 7c          	lea    (%r12,%r15,2),%rax
  81cd2d:	49 03 c1             	add    %r9,%rax
  81cd30:	49 89 ca             	mov    %rcx,%r10
  81cd33:	48 89 85 f8 f3 ff ff 	mov    %rax,-0xc08(%rbp)
  81cd3a:	48 89 f8             	mov    %rdi,%rax
  81cd3d:	4c 8b 9d d0 f4 ff ff 	mov    -0xb30(%rbp),%r11
  81cd44:	4d 03 c1             	add    %r9,%r8
  81cd47:	4c 89 8d 08 f4 ff ff 	mov    %r9,-0xbf8(%rbp)
  81cd4e:	4c 8b 8d 68 f3 ff ff 	mov    -0xc98(%rbp),%r9
  81cd55:	4c 8b a5 c0 f6 ff ff 	mov    -0x940(%rbp),%r12
  81cd5c:	4d 0f af e9          	imul   %r9,%r13
  81cd60:	4d 0f af d1          	imul   %r9,%r10
  81cd64:	49 0f af c3          	imul   %r11,%rax
  81cd68:	4d 0f af e3          	imul   %r11,%r12
  81cd6c:	4c 0f af ca          	imul   %rdx,%r9
  81cd70:	4c 8b bd 28 f3 ff ff 	mov    -0xcd8(%rbp),%r15
  81cd77:	4c 89 85 18 f4 ff ff 	mov    %r8,-0xbe8(%rbp)
  81cd7e:	4d 89 f8             	mov    %r15,%r8
  81cd81:	4c 8b b5 e0 f3 ff ff 	mov    -0xc20(%rbp),%r14
  81cd88:	4d 2b c6             	sub    %r14,%r8
  81cd8b:	4c 89 95 68 f2 ff ff 	mov    %r10,-0xd98(%rbp)
  81cd92:	4d 2b f5             	sub    %r13,%r14
  81cd95:	4d 2b ea             	sub    %r10,%r13
  81cd98:	4c 2b d0             	sub    %rax,%r10
  81cd9b:	49 2b c4             	sub    %r12,%rax
  81cd9e:	4c 03 e8             	add    %rax,%r13
  81cda1:	48 8b 85 20 f7 ff ff 	mov    -0x8e0(%rbp),%rax
  81cda8:	49 f7 dd             	neg    %r13
  81cdab:	4d 03 ef             	add    %r15,%r13
  81cdae:	83 e0 fe             	and    $0xfffffffe,%eax
  81cdb1:	48 98                	cltq   
  81cdb3:	48 89 85 18 f7 ff ff 	mov    %rax,-0x8e8(%rbp)
  81cdba:	48 89 f0             	mov    %rsi,%rax
  81cdbd:	4c 8b bd 78 f3 ff ff 	mov    -0xc88(%rbp),%r15
  81cdc4:	49 0f af c7          	imul   %r15,%rax
  81cdc8:	49 0f af cf          	imul   %r15,%rcx
  81cdcc:	4c 0f af fa          	imul   %rdx,%r15
  81cdd0:	4c 89 b5 60 f2 ff ff 	mov    %r14,-0xda0(%rbp)
  81cdd7:	4d 03 f0             	add    %r8,%r14
  81cdda:	4d 03 f2             	add    %r10,%r14
  81cddd:	48 f7 d8             	neg    %rax
  81cde0:	4d 03 f4             	add    %r12,%r14
  81cde3:	4f 8d 64 5d 00       	lea    0x0(%r13,%r11,2),%r12
  81cde8:	4d 03 e1             	add    %r9,%r12
  81cdeb:	4d 03 f1             	add    %r9,%r14
  81cdee:	4c 89 a5 00 f4 ff ff 	mov    %r12,-0xc00(%rbp)
  81cdf5:	49 89 fc             	mov    %rdi,%r12
  81cdf8:	4c 8b 95 38 f3 ff ff 	mov    -0xcc8(%rbp),%r10
  81cdff:	49 f7 dc             	neg    %r12
  81ce02:	4c 0f af 95 f0 f2 ff 	imul   -0xd10(%rbp),%r10
  81ce09:	ff 
  81ce0a:	4c 03 a5 c0 f6 ff ff 	add    -0x940(%rbp),%r12
  81ce11:	48 c1 e7 03          	shl    $0x3,%rdi
  81ce15:	4c 0f af a5 40 f7 ff 	imul   -0x8c0(%rbp),%r12
  81ce1c:	ff 
  81ce1d:	4c 89 b5 28 f4 ff ff 	mov    %r14,-0xbd8(%rbp)
  81ce24:	4c 8b b5 80 f3 ff ff 	mov    -0xc80(%rbp),%r14
  81ce2b:	4c 8b ad e0 f6 ff ff 	mov    -0x920(%rbp),%r13
  81ce32:	4d 2b f5             	sub    %r13,%r14
  81ce35:	49 03 c5             	add    %r13,%rax
  81ce38:	48 89 95 a8 f3 ff ff 	mov    %rdx,-0xc58(%rbp)
  81ce3f:	4c 8b ad 10 f2 ff ff 	mov    -0xdf0(%rbp),%r13
  81ce46:	4d 03 ea             	add    %r10,%r13
  81ce49:	4c 8b 9d 08 f2 ff ff 	mov    -0xdf8(%rbp),%r11
  81ce50:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  81ce54:	48 03 d1             	add    %rcx,%rdx
  81ce57:	4d 03 dd             	add    %r13,%r11
  81ce5a:	49 03 d7             	add    %r15,%rdx
  81ce5d:	4c 03 e2             	add    %rdx,%r12
  81ce60:	48 8b 95 f8 f1 ff ff 	mov    -0xe08(%rbp),%rdx
  81ce67:	4c 89 a5 48 f6 ff ff 	mov    %r12,-0x9b8(%rbp)
  81ce6e:	49 03 d2             	add    %r10,%rdx
  81ce71:	4c 8d 95 48 f4 ff ff 	lea    -0xbb8(%rbp),%r10
  81ce78:	4d 8b 22             	mov    (%r10),%r12
  81ce7b:	4d 03 e3             	add    %r11,%r12
  81ce7e:	4c 8b ad 90 f4 ff ff 	mov    -0xb70(%rbp),%r13
  81ce85:	4c 03 ea             	add    %rdx,%r13
  81ce88:	48 8b 95 a8 f4 ff ff 	mov    -0xb58(%rbp),%rdx
  81ce8f:	4c 03 e2             	add    %rdx,%r12
  81ce92:	4d 89 22             	mov    %r12,(%r10)
  81ce95:	4c 8b a5 28 f2 ff ff 	mov    -0xdd8(%rbp),%r12
  81ce9c:	4c 2b e7             	sub    %rdi,%r12
  81ce9f:	48 8b bd d0 f1 ff ff 	mov    -0xe30(%rbp),%rdi
  81cea6:	4d 03 f4             	add    %r12,%r14
  81cea9:	49 03 fc             	add    %r12,%rdi
  81ceac:	49 03 c6             	add    %r14,%rax
  81ceaf:	4c 8d b5 38 f6 ff ff 	lea    -0x9c8(%rbp),%r14
  81ceb6:	4d 8b 1e             	mov    (%r14),%r11
  81ceb9:	4d 03 c4             	add    %r12,%r8
  81cebc:	4c 03 df             	add    %rdi,%r11
  81cebf:	48 03 c1             	add    %rcx,%rax
  81cec2:	4c 8b 95 d8 f1 ff ff 	mov    -0xe28(%rbp),%r10
  81cec9:	4c 03 f8             	add    %rax,%r15
  81cecc:	4c 03 d7             	add    %rdi,%r10
  81cecf:	48 8b bd e0 f1 ff ff 	mov    -0xe20(%rbp),%rdi
  81ced6:	4c 03 df             	add    %rdi,%r11
  81ced9:	49 03 fa             	add    %r10,%rdi
  81cedc:	4c 8b 95 60 f6 ff ff 	mov    -0x9a0(%rbp),%r10
  81cee3:	4d 03 da             	add    %r10,%r11
  81cee6:	48 8b 8d e8 f2 ff ff 	mov    -0xd18(%rbp),%rcx
  81ceed:	4c 03 d7             	add    %rdi,%r10
  81cef0:	4d 89 1e             	mov    %r11,(%r14)
  81cef3:	4c 8b 9d 60 f2 ff ff 	mov    -0xda0(%rbp),%r11
  81cefa:	4d 03 d8             	add    %r8,%r11
  81cefd:	4a 8d 3c 21          	lea    (%rcx,%r12,1),%rdi
  81cf01:	4c 03 9d 68 f2 ff ff 	add    -0xd98(%rbp),%r11
  81cf08:	4c 8b 85 48 f2 ff ff 	mov    -0xdb8(%rbp),%r8
  81cf0f:	4d 03 cb             	add    %r11,%r9
  81cf12:	4d 03 c4             	add    %r12,%r8
  81cf15:	4c 89 8d 10 f4 ff ff 	mov    %r9,-0xbf0(%rbp)
  81cf1c:	4c 8b 8d 50 f2 ff ff 	mov    -0xdb0(%rbp),%r9
  81cf23:	4d 03 c8             	add    %r8,%r9
  81cf26:	48 2b bd f0 f1 ff ff 	sub    -0xe10(%rbp),%rdi
  81cf2d:	4c 03 8d 58 f2 ff ff 	add    -0xda8(%rbp),%r9
  81cf34:	4c 03 ef             	add    %rdi,%r13
  81cf37:	4c 8d 85 70 f4 ff ff 	lea    -0xb90(%rbp),%r8
  81cf3e:	49 8b 00             	mov    (%r8),%rax
  81cf41:	4c 03 ea             	add    %rdx,%r13
  81cf44:	48 03 c7             	add    %rdi,%rax
  81cf47:	4c 01 8d 08 f4 ff ff 	add    %r9,-0xbf8(%rbp)
  81cf4e:	49 89 f1             	mov    %rsi,%r9
  81cf51:	48 03 c2             	add    %rdx,%rax
  81cf54:	49 89 00             	mov    %rax,(%r8)
  81cf57:	48 8b 85 10 f3 ff ff 	mov    -0xcf0(%rbp),%rax
  81cf5e:	4c 0f af c8          	imul   %rax,%r9
  81cf62:	48 03 bd 20 f2 ff ff 	add    -0xde0(%rbp),%rdi
  81cf69:	48 03 d7             	add    %rdi,%rdx
  81cf6c:	48 8b bd d0 f2 ff ff 	mov    -0xd30(%rbp),%rdi
  81cf73:	49 89 f8             	mov    %rdi,%r8
  81cf76:	4c 89 ad 90 f4 ff ff 	mov    %r13,-0xb70(%rbp)
  81cf7d:	4c 8b ad b8 f1 ff ff 	mov    -0xe48(%rbp),%r13
  81cf84:	4c 8b 9d c0 f3 ff ff 	mov    -0xc40(%rbp),%r11
  81cf8b:	4c 89 95 60 f6 ff ff 	mov    %r10,-0x9a0(%rbp)
  81cf92:	4d 89 ea             	mov    %r13,%r10
  81cf95:	4c 0f af c0          	imul   %rax,%r8
  81cf99:	4d 0f af d3          	imul   %r11,%r10
  81cf9d:	48 8b 8d c0 f6 ff ff 	mov    -0x940(%rbp),%rcx
  81cfa4:	49 0f af cb          	imul   %r11,%rcx
  81cfa8:	48 89 95 a8 f4 ff ff 	mov    %rdx,-0xb58(%rbp)
  81cfaf:	48 8b 95 a8 f3 ff ff 	mov    -0xc58(%rbp),%rdx
  81cfb6:	48 0f af c2          	imul   %rdx,%rax
  81cfba:	4c 8b b5 00 f3 ff ff 	mov    -0xd00(%rbp),%r14
  81cfc1:	4c 89 bd c8 f1 ff ff 	mov    %r15,-0xe38(%rbp)
  81cfc8:	4d 89 f7             	mov    %r14,%r15
  81cfcb:	4d 2b f9             	sub    %r9,%r15
  81cfce:	4d 2b c8             	sub    %r8,%r9
  81cfd1:	4d 03 f4             	add    %r12,%r14
  81cfd4:	4d 2b f1             	sub    %r9,%r14
  81cfd7:	4c 03 f0             	add    %rax,%r14
  81cfda:	4c 89 b5 00 f5 ff ff 	mov    %r14,-0xb00(%rbp)
  81cfe1:	4f 8d 0c 07          	lea    (%r15,%r8,1),%r9
  81cfe5:	4d 2b c2             	sub    %r10,%r8
  81cfe8:	4c 2b d1             	sub    %rcx,%r10
  81cfeb:	4d 03 f8             	add    %r8,%r15
  81cfee:	4a 8d 0c 59          	lea    (%rcx,%r11,2),%rcx
  81cff2:	4c 8b 85 40 f3 ff ff 	mov    -0xcc0(%rbp),%r8
  81cff9:	4d 2b ca             	sub    %r10,%r9
  81cffc:	49 0f af f0          	imul   %r8,%rsi
  81d000:	49 0f af f8          	imul   %r8,%rdi
  81d004:	4c 0f af c2          	imul   %rdx,%r8
  81d008:	4c 03 f9             	add    %rcx,%r15
  81d00b:	4c 03 c8             	add    %rax,%r9
  81d00e:	49 03 c7             	add    %r15,%rax
  81d011:	48 89 85 e8 f4 ff ff 	mov    %rax,-0xb18(%rbp)
  81d018:	48 8b 85 c8 f3 ff ff 	mov    -0xc38(%rbp),%rax
  81d01f:	4c 8b bd c0 f6 ff ff 	mov    -0x940(%rbp),%r15
  81d026:	4c 0f af e8          	imul   %rax,%r13
  81d02a:	4c 0f af f8          	imul   %rax,%r15
  81d02e:	4c 8b 95 f8 f2 ff ff 	mov    -0xd08(%rbp),%r10
  81d035:	4c 89 d1             	mov    %r10,%rcx
  81d038:	48 2b ce             	sub    %rsi,%rcx
  81d03b:	48 2b f7             	sub    %rdi,%rsi
  81d03e:	4c 89 8d f8 f4 ff ff 	mov    %r9,-0xb08(%rbp)
  81d045:	4f 8d 1c 22          	lea    (%r10,%r12,1),%r11
  81d049:	4c 2b de             	sub    %rsi,%r11
  81d04c:	4c 8b 95 38 f2 ff ff 	mov    -0xdc8(%rbp),%r10
  81d053:	4d 03 d8             	add    %r8,%r11
  81d056:	48 8d 95 10 f5 ff ff 	lea    -0xaf0(%rbp),%rdx
  81d05d:	4c 8b 0a             	mov    (%rdx),%r9
  81d060:	48 8d 34 39          	lea    (%rcx,%rdi,1),%rsi
  81d064:	49 2b fd             	sub    %r13,%rdi
  81d067:	4d 2b ef             	sub    %r15,%r13
  81d06a:	49 2b f5             	sub    %r13,%rsi
  81d06d:	48 03 cf             	add    %rdi,%rcx
  81d070:	49 03 f0             	add    %r8,%rsi
  81d073:	48 89 b5 f0 f4 ff ff 	mov    %rsi,-0xb10(%rbp)
  81d07a:	49 8d 34 47          	lea    (%r15,%rax,2),%rsi
  81d07e:	48 03 ce             	add    %rsi,%rcx
  81d081:	48 8b b5 90 f1 ff ff 	mov    -0xe70(%rbp),%rsi
  81d088:	4c 03 c1             	add    %rcx,%r8
  81d08b:	48 2b b5 98 f1 ff ff 	sub    -0xe68(%rbp),%rsi
  81d092:	48 ff c6             	inc    %rsi
  81d095:	48 0f af b5 30 f7 ff 	imul   -0x8d0(%rbp),%rsi
  81d09c:	ff 
  81d09d:	48 8b 8d c0 f1 ff ff 	mov    -0xe40(%rbp),%rcx
  81d0a4:	4c 89 9d 08 f5 ff ff 	mov    %r11,-0xaf8(%rbp)
  81d0ab:	4c 89 85 38 f7 ff ff 	mov    %r8,-0x8c8(%rbp)
  81d0b2:	4c 8b 9d 30 f2 ff ff 	mov    -0xdd0(%rbp),%r11
  81d0b9:	49 8d 3c ca          	lea    (%r10,%rcx,8),%rdi
  81d0bd:	4c 2b cf             	sub    %rdi,%r9
  81d0c0:	4c 2b d6             	sub    %rsi,%r10
  81d0c3:	48 8b bd 40 f4 ff ff 	mov    -0xbc0(%rbp),%rdi
  81d0ca:	4c 03 ce             	add    %rsi,%r9
  81d0cd:	48 8b 8d 60 f7 ff ff 	mov    -0x8a0(%rbp),%rcx
  81d0d4:	4d 2b da             	sub    %r10,%r11
  81d0d7:	48 2b bd c8 f6 ff ff 	sub    -0x938(%rbp),%rdi
  81d0de:	89 c8                	mov    %ecx,%eax
  81d0e0:	4c 8b 85 e8 f1 ff ff 	mov    -0xe18(%rbp),%r8
  81d0e7:	83 e0 fc             	and    $0xfffffffc,%eax
  81d0ea:	4c 03 a5 48 f3 ff ff 	add    -0xcb8(%rbp),%r12
  81d0f1:	4c 03 c7             	add    %rdi,%r8
  81d0f4:	4c 8b ad 40 f2 ff ff 	mov    -0xdc0(%rbp),%r13
  81d0fb:	4d 03 cd             	add    %r13,%r9
  81d0fe:	4d 03 eb             	add    %r11,%r13
  81d101:	4d 2b e0             	sub    %r8,%r12
  81d104:	48 98                	cltq   
  81d106:	4c 8d 85 48 f5 ff ff 	lea    -0xab8(%rbp),%r8
  81d10d:	4d 8b 30             	mov    (%r8),%r14
  81d110:	4d 03 ce             	add    %r14,%r9
  81d113:	4c 01 a5 98 f4 ff ff 	add    %r12,-0xb68(%rbp)
  81d11a:	4d 03 f5             	add    %r13,%r14
  81d11d:	4c 89 0a             	mov    %r9,(%rdx)
  81d120:	4d 89 30             	mov    %r14,(%r8)
  81d123:	44 8b 85 c0 f4 ff ff 	mov    -0xb40(%rbp),%r8d
  81d12a:	44 8b ad e0 f4 ff ff 	mov    -0xb20(%rbp),%r13d
  81d131:	4c 8b 8d b8 f6 ff ff 	mov    -0x948(%rbp),%r9
  81d138:	48 89 85 b0 f6 ff ff 	mov    %rax,-0x950(%rbp)
  81d13f:	89 8d 30 f5 ff ff    	mov    %ecx,-0xad0(%rbp)
  81d145:	48 89 b5 38 f5 ff ff 	mov    %rsi,-0xac8(%rbp)
  81d14c:	44 8b a5 88 f3 ff ff 	mov    -0xc78(%rbp),%r12d
  81d153:	41 8d 78 01          	lea    0x1(%r8),%edi
  81d157:	44 3b e7             	cmp    %edi,%r12d
  81d15a:	44 0f 4d e7          	cmovge %edi,%r12d
  81d15e:	4d 63 e4             	movslq %r12d,%r12
  81d161:	48 83 bd 58 f7 ff ff 	cmpq   $0x8,-0x8a8(%rbp)
  81d168:	08 
  81d169:	0f 85 d4 01 00 00    	jne    81d343 <pre_step3d_mod_mp_pre_step3d_tile_+0x8ea3>
  81d16f:	48 83 bd 50 f7 ff ff 	cmpq   $0x8,-0x8b0(%rbp)
  81d176:	08 
  81d177:	0f 85 c6 01 00 00    	jne    81d343 <pre_step3d_mod_mp_pre_step3d_tile_+0x8ea3>
  81d17d:	48 83 bd 48 f7 ff ff 	cmpq   $0x8,-0x8b8(%rbp)
  81d184:	08 
  81d185:	0f 85 b8 01 00 00    	jne    81d343 <pre_step3d_mod_mp_pre_step3d_tile_+0x8ea3>
  81d18b:	33 f6                	xor    %esi,%esi
  81d18d:	33 c9                	xor    %ecx,%ecx
  81d18f:	4c 8b 95 08 f6 ff ff 	mov    -0x9f8(%rbp),%r10
  81d196:	45 33 db             	xor    %r11d,%r11d
  81d199:	48 83 bd 10 f7 ff ff 	cmpq   $0x0,-0x8f0(%rbp)
  81d1a0:	00 
  81d1a1:	0f 8e 24 78 00 00    	jle    8249cb <pre_step3d_mod_mp_pre_step3d_tile_+0x1052b>
  81d1a7:	49 63 d0             	movslq %r8d,%rdx
  81d1aa:	48 0f af 95 38 f4 ff 	imul   -0xbc8(%rbp),%rdx
  81d1b1:	ff 
  81d1b2:	4c 0f af a5 40 f4 ff 	imul   -0xbc0(%rbp),%r12
  81d1b9:	ff 
  81d1ba:	48 8b 85 70 f4 ff ff 	mov    -0xb90(%rbp),%rax
  81d1c1:	4c 03 a5 98 f4 ff ff 	add    -0xb68(%rbp),%r12
  81d1c8:	89 bd b8 f4 ff ff    	mov    %edi,-0xb48(%rbp)
  81d1ce:	44 89 85 c0 f4 ff ff 	mov    %r8d,-0xb40(%rbp)
  81d1d5:	48 03 c2             	add    %rdx,%rax
  81d1d8:	48 03 95 a8 f4 ff ff 	add    -0xb58(%rbp),%rdx
  81d1df:	48 89 95 50 f5 ff ff 	mov    %rdx,-0xab0(%rbp)
  81d1e6:	48 89 85 58 f5 ff ff 	mov    %rax,-0xaa8(%rbp)
  81d1ed:	4c 89 8d b8 f6 ff ff 	mov    %r9,-0x948(%rbp)
  81d1f4:	48 8b 95 60 f7 ff ff 	mov    -0x8a0(%rbp),%rdx
  81d1fb:	48 8b 85 b8 f6 ff ff 	mov    -0x948(%rbp),%rax
  81d202:	48 3b 85 c0 f6 ff ff 	cmp    -0x940(%rbp),%rax
  81d209:	0f 8c 03 01 00 00    	jl     81d312 <pre_step3d_mod_mp_pre_step3d_tile_+0x8e72>
  81d20f:	48 83 fa 04          	cmp    $0x4,%rdx
  81d213:	0f 8c ab 77 00 00    	jl     8249c4 <pre_step3d_mod_mp_pre_step3d_tile_+0x10524>
  81d219:	4c 8b 8d 60 f6 ff ff 	mov    -0x9a0(%rbp),%r9
  81d220:	45 33 ed             	xor    %r13d,%r13d
  81d223:	4c 8b 85 38 f6 ff ff 	mov    -0x9c8(%rbp),%r8
  81d22a:	48 8b bd 58 f5 ff ff 	mov    -0xaa8(%rbp),%rdi
  81d231:	4c 8b b5 50 f5 ff ff 	mov    -0xab0(%rbp),%r14
  81d238:	4c 03 c9             	add    %rcx,%r9
  81d23b:	48 8b 85 b0 f6 ff ff 	mov    -0x950(%rbp),%rax
  81d242:	4c 03 c1             	add    %rcx,%r8
  81d245:	48 89 c2             	mov    %rax,%rdx
  81d248:	49 03 fb             	add    %r11,%rdi
  81d24b:	4f 8d 3c 1e          	lea    (%r14,%r11,1),%r15
  81d24f:	4d 89 d6             	mov    %r10,%r14
  81d252:	c4 81 7d 10 04 e8    	vmovupd (%r8,%r13,8),%ymm0
  81d258:	c4 01 7d 10 2c ef    	vmovupd (%r15,%r13,8),%ymm13
  81d25e:	c4 81 7d 5c 0c e9    	vsubpd (%r9,%r13,8),%ymm0,%ymm1
  81d264:	c4 21 15 5c 3c ef    	vsubpd (%rdi,%r13,8),%ymm13,%ymm15
  81d26a:	c5 55 5e d9          	vdivpd %ymm1,%ymm5,%ymm11
  81d26e:	c5 25 59 e2          	vmulpd %ymm2,%ymm11,%ymm12
  81d272:	c4 01 1d 59 34 ec    	vmulpd (%r12,%r13,8),%ymm12,%ymm14
  81d278:	49 83 c5 04          	add    $0x4,%r13
  81d27c:	c4 c1 0d 59 c7       	vmulpd %ymm15,%ymm14,%ymm0
  81d281:	c4 c1 7d 11 46 08    	vmovupd %ymm0,0x8(%r14)
  81d287:	49 83 c6 20          	add    $0x20,%r14
  81d28b:	4c 3b ea             	cmp    %rdx,%r13
  81d28e:	72 c2                	jb     81d252 <pre_step3d_mod_mp_pre_step3d_tile_+0x8db2>
  81d290:	48 8b 95 60 f7 ff ff 	mov    -0x8a0(%rbp),%rdx
  81d297:	4c 8d 34 c5 00 00 00 	lea    0x0(,%rax,8),%r14
  81d29e:	00 
  81d29f:	48 3b c2             	cmp    %rdx,%rax
  81d2a2:	73 6e                	jae    81d312 <pre_step3d_mod_mp_pre_step3d_tile_+0x8e72>
  81d2a4:	4c 8b 8d 60 f6 ff ff 	mov    -0x9a0(%rbp),%r9
  81d2ab:	4d 8d 2c c2          	lea    (%r10,%rax,8),%r13
  81d2af:	4c 8b 85 38 f6 ff ff 	mov    -0x9c8(%rbp),%r8
  81d2b6:	48 8b bd 58 f5 ff ff 	mov    -0xaa8(%rbp),%rdi
  81d2bd:	4c 8b bd 50 f5 ff ff 	mov    -0xab0(%rbp),%r15
  81d2c4:	4c 03 c9             	add    %rcx,%r9
  81d2c7:	4c 03 c1             	add    %rcx,%r8
  81d2ca:	49 03 fb             	add    %r11,%rdi
  81d2cd:	4d 03 fb             	add    %r11,%r15
  81d2d0:	c4 c1 7b 10 04 c0    	vmovsd (%r8,%rax,8),%xmm0
  81d2d6:	c4 01 7b 10 2c 3e    	vmovsd (%r14,%r15,1),%xmm13
  81d2dc:	c4 c1 7b 5c 0c c1    	vsubsd (%r9,%rax,8),%xmm0,%xmm1
  81d2e2:	48 ff c0             	inc    %rax
  81d2e5:	c4 41 13 5c 3c 3e    	vsubsd (%r14,%rdi,1),%xmm13,%xmm15
  81d2eb:	c5 2b 5e d9          	vdivsd %xmm1,%xmm10,%xmm11
  81d2ef:	c4 41 63 59 e3       	vmulsd %xmm11,%xmm3,%xmm12
  81d2f4:	c4 01 1b 59 34 26    	vmulsd (%r14,%r12,1),%xmm12,%xmm14
  81d2fa:	49 83 c6 08          	add    $0x8,%r14
  81d2fe:	c4 c1 0b 59 c7       	vmulsd %xmm15,%xmm14,%xmm0
  81d303:	c4 c1 7b 11 45 08    	vmovsd %xmm0,0x8(%r13)
  81d309:	49 83 c5 08          	add    $0x8,%r13
  81d30d:	48 3b c2             	cmp    %rdx,%rax
  81d310:	72 be                	jb     81d2d0 <pre_step3d_mod_mp_pre_step3d_tile_+0x8e30>
  81d312:	48 ff c6             	inc    %rsi
  81d315:	4c 03 95 30 f7 ff ff 	add    -0x8d0(%rbp),%r10
  81d31c:	48 03 8d d0 f6 ff ff 	add    -0x930(%rbp),%rcx
  81d323:	4c 03 a5 c8 f6 ff ff 	add    -0x938(%rbp),%r12
  81d32a:	4c 03 9d d8 f6 ff ff 	add    -0x928(%rbp),%r11
  81d331:	48 3b b5 10 f7 ff ff 	cmp    -0x8f0(%rbp),%rsi
  81d338:	0f 82 bd fe ff ff    	jb     81d1fb <pre_step3d_mod_mp_pre_step3d_tile_+0x8d5b>
  81d33e:	e9 30 06 00 00       	jmpq   81d973 <pre_step3d_mod_mp_pre_step3d_tile_+0x94d3>
  81d343:	45 33 f6             	xor    %r14d,%r14d
  81d346:	33 c0                	xor    %eax,%eax
  81d348:	45 33 ed             	xor    %r13d,%r13d
  81d34b:	4c 8b 95 08 f6 ff ff 	mov    -0x9f8(%rbp),%r10
  81d352:	45 33 db             	xor    %r11d,%r11d
  81d355:	48 83 bd 10 f7 ff ff 	cmpq   $0x0,-0x8f0(%rbp)
  81d35c:	00 
  81d35d:	0f 8e 6a 0a 00 00    	jle    81ddcd <pre_step3d_mod_mp_pre_step3d_tile_+0x992d>
  81d363:	49 63 c8             	movslq %r8d,%rcx
  81d366:	48 0f af 8d 38 f4 ff 	imul   -0xbc8(%rbp),%rcx
  81d36d:	ff 
  81d36e:	4c 0f af a5 40 f4 ff 	imul   -0xbc0(%rbp),%r12
  81d375:	ff 
  81d376:	4c 8b bd 68 f4 ff ff 	mov    -0xb98(%rbp),%r15
  81d37d:	48 8b b5 78 f4 ff ff 	mov    -0xb88(%rbp),%rsi
  81d384:	48 8b 95 60 f4 ff ff 	mov    -0xba0(%rbp),%rdx
  81d38b:	4c 89 95 f0 f6 ff ff 	mov    %r10,-0x910(%rbp)
  81d392:	4c 03 f9             	add    %rcx,%r15
  81d395:	4c 89 bd d8 f5 ff ff 	mov    %r15,-0xa28(%rbp)
  81d39c:	49 03 f4             	add    %r12,%rsi
  81d39f:	4c 8b bd a0 f4 ff ff 	mov    -0xb60(%rbp),%r15
  81d3a6:	49 03 d4             	add    %r12,%rdx
  81d3a9:	4c 03 a5 80 f4 ff ff 	add    -0xb80(%rbp),%r12
  81d3b0:	4c 89 a5 68 f5 ff ff 	mov    %r12,-0xa98(%rbp)
  81d3b7:	48 89 95 70 f5 ff ff 	mov    %rdx,-0xa90(%rbp)
  81d3be:	4c 03 f9             	add    %rcx,%r15
  81d3c1:	4c 89 bd d0 f5 ff ff 	mov    %r15,-0xa30(%rbp)
  81d3c8:	4c 8b bd 88 f4 ff ff 	mov    -0xb78(%rbp),%r15
  81d3cf:	48 89 b5 e8 f6 ff ff 	mov    %rsi,-0x918(%rbp)
  81d3d6:	4c 89 9d f8 f6 ff ff 	mov    %r11,-0x908(%rbp)
  81d3dd:	4c 89 ad 00 f7 ff ff 	mov    %r13,-0x900(%rbp)
  81d3e4:	4c 03 f9             	add    %rcx,%r15
  81d3e7:	4c 89 bd c8 f5 ff ff 	mov    %r15,-0xa38(%rbp)
  81d3ee:	4c 8b bd 58 f4 ff ff 	mov    -0xba8(%rbp),%r15
  81d3f5:	4c 89 b5 08 f7 ff ff 	mov    %r14,-0x8f8(%rbp)
  81d3fc:	89 bd b8 f4 ff ff    	mov    %edi,-0xb48(%rbp)
  81d402:	44 89 85 c0 f4 ff ff 	mov    %r8d,-0xb40(%rbp)
  81d409:	4c 03 f9             	add    %rcx,%r15
  81d40c:	4c 89 bd c0 f5 ff ff 	mov    %r15,-0xa40(%rbp)
  81d413:	4c 8b bd b0 f4 ff ff 	mov    -0xb50(%rbp),%r15
  81d41a:	4c 89 8d b8 f6 ff ff 	mov    %r9,-0x948(%rbp)
  81d421:	4c 03 f9             	add    %rcx,%r15
  81d424:	48 03 8d 50 f4 ff ff 	add    -0xbb0(%rbp),%rcx
  81d42b:	4c 89 bd b8 f5 ff ff 	mov    %r15,-0xa48(%rbp)
  81d432:	48 89 8d 60 f5 ff ff 	mov    %rcx,-0xaa0(%rbp)
  81d439:	48 8b 95 b8 f6 ff ff 	mov    -0x948(%rbp),%rdx
  81d440:	48 3b 95 c0 f6 ff ff 	cmp    -0x940(%rbp),%rdx
  81d447:	0f 8c c2 04 00 00    	jl     81d90f <pre_step3d_mod_mp_pre_step3d_tile_+0x946f>
  81d44d:	83 bd 28 f7 ff ff 04 	cmpl   $0x4,-0x8d8(%rbp)
  81d454:	0f 8c b8 75 00 00    	jl     824a12 <pre_step3d_mod_mp_pre_step3d_tile_+0x10572>
  81d45a:	4c 8b a5 d8 f5 ff ff 	mov    -0xa28(%rbp),%r12
  81d461:	33 ff                	xor    %edi,%edi
  81d463:	48 8b 95 f8 f6 ff ff 	mov    -0x908(%rbp),%rdx
  81d46a:	4c 8b ad d0 f5 ff ff 	mov    -0xa30(%rbp),%r13
  81d471:	48 8b 8d f0 f5 ff ff 	mov    -0xa10(%rbp),%rcx
  81d478:	4c 8b bd f8 f5 ff ff 	mov    -0xa08(%rbp),%r15
  81d47f:	4d 8d 0c 14          	lea    (%r12,%rdx,1),%r9
  81d483:	4c 8b 95 70 f5 ff ff 	mov    -0xa90(%rbp),%r10
  81d48a:	4d 8d 64 15 00       	lea    0x0(%r13,%rdx,1),%r12
  81d48f:	4c 8b b5 00 f7 ff ff 	mov    -0x900(%rbp),%r14
  81d496:	4c 89 8d 98 f7 ff ff 	mov    %r9,-0x868(%rbp)
  81d49d:	4c 8d 0c 01          	lea    (%rcx,%rax,1),%r9
  81d4a1:	48 8b 8d 68 f5 ff ff 	mov    -0xa98(%rbp),%rcx
  81d4a8:	4d 8d 2c 07          	lea    (%r15,%rax,1),%r13
  81d4ac:	4c 8b bd c0 f5 ff ff 	mov    -0xa40(%rbp),%r15
  81d4b3:	4d 03 d6             	add    %r14,%r10
  81d4b6:	48 8b b5 40 f6 ff ff 	mov    -0x9c0(%rbp),%rsi
  81d4bd:	4c 8b 9d 10 f6 ff ff 	mov    -0x9f0(%rbp),%r11
  81d4c4:	4c 03 f1             	add    %rcx,%r14
  81d4c7:	44 8b 85 00 f6 ff ff 	mov    -0xa00(%rbp),%r8d
  81d4ce:	49 8d 0c 17          	lea    (%r15,%rdx,1),%rcx
  81d4d2:	4c 8b bd 60 f5 ff ff 	mov    -0xaa0(%rbp),%r15
  81d4d9:	48 03 f0             	add    %rax,%rsi
  81d4dc:	48 89 8d 90 f7 ff ff 	mov    %rcx,-0x870(%rbp)
  81d4e3:	33 c9                	xor    %ecx,%ecx
  81d4e5:	44 89 85 70 f6 ff ff 	mov    %r8d,-0x990(%rbp)
  81d4ec:	4c 03 d8             	add    %rax,%r11
  81d4ef:	4c 89 b5 70 f7 ff ff 	mov    %r14,-0x890(%rbp)
  81d4f6:	49 03 d7             	add    %r15,%rdx
  81d4f9:	4c 8b bd f0 f6 ff ff 	mov    -0x910(%rbp),%r15
  81d500:	48 89 95 78 f5 ff ff 	mov    %rdx,-0xa88(%rbp)
  81d507:	33 d2                	xor    %edx,%edx
  81d509:	4c 89 ad 80 f7 ff ff 	mov    %r13,-0x880(%rbp)
  81d510:	4c 89 95 68 f7 ff ff 	mov    %r10,-0x898(%rbp)
  81d517:	48 89 b5 78 f7 ff ff 	mov    %rsi,-0x888(%rbp)
  81d51e:	48 89 85 78 f6 ff ff 	mov    %rax,-0x988(%rbp)
  81d525:	4d 89 f8             	mov    %r15,%r8
  81d528:	48 89 d0             	mov    %rdx,%rax
  81d52b:	48 8b b5 78 f5 ff ff 	mov    -0xa88(%rbp),%rsi
  81d532:	4c 8b 95 50 f7 ff ff 	mov    -0x8b0(%rbp),%r10
  81d539:	4c 8b ad 58 f7 ff ff 	mov    -0x8a8(%rbp),%r13
  81d540:	4c 8b b5 48 f7 ff ff 	mov    -0x8b8(%rbp),%r14
  81d547:	4c 8b bd 78 f7 ff ff 	mov    -0x888(%rbp),%r15
  81d54e:	48 83 c7 04          	add    $0x4,%rdi
  81d552:	4c 03 f9             	add    %rcx,%r15
  81d555:	c4 c1 7b 10 07       	vmovsd (%r15),%xmm0
  81d55a:	c4 01 79 16 1c 2f    	vmovhpd (%r15,%r13,1),%xmm0,%xmm11
  81d560:	4d 8d 3c 0b          	lea    (%r11,%rcx,1),%r15
  81d564:	c4 c1 7b 10 0f       	vmovsd (%r15),%xmm1
  81d569:	c4 01 71 16 24 2f    	vmovhpd (%r15,%r13,1),%xmm1,%xmm12
  81d56f:	c4 41 21 5c ec       	vsubpd %xmm12,%xmm11,%xmm13
  81d574:	c4 41 59 5e f5       	vdivpd %xmm13,%xmm4,%xmm14
  81d579:	4c 8b bd 68 f7 ff ff 	mov    -0x898(%rbp),%r15
  81d580:	c5 89 59 c7          	vmulpd %xmm7,%xmm14,%xmm0
  81d584:	4c 03 fa             	add    %rdx,%r15
  81d587:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81d58c:	c4 81 01 16 0c 17    	vmovhpd (%r15,%r10,1),%xmm15,%xmm1
  81d592:	4d 8d 3c 04          	lea    (%r12,%rax,1),%r15
  81d596:	c4 41 7b 10 1f       	vmovsd (%r15),%xmm11
  81d59b:	c4 01 21 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm11,%xmm13
  81d5a1:	4c 8b bd 98 f7 ff ff 	mov    -0x868(%rbp),%r15
  81d5a8:	c5 79 59 f9          	vmulpd %xmm1,%xmm0,%xmm15
  81d5ac:	4c 03 f8             	add    %rax,%r15
  81d5af:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81d5b4:	c4 01 19 16 34 37    	vmovhpd (%r15,%r14,1),%xmm12,%xmm14
  81d5ba:	4c 8b bd 80 f7 ff ff 	mov    -0x880(%rbp),%r15
  81d5c1:	c4 c1 11 5c c6       	vsubpd %xmm14,%xmm13,%xmm0
  81d5c6:	c5 81 59 c8          	vmulpd %xmm0,%xmm15,%xmm1
  81d5ca:	c4 c1 79 11 48 08    	vmovupd %xmm1,0x8(%r8)
  81d5d0:	4c 03 f9             	add    %rcx,%r15
  81d5d3:	c4 41 7b 10 1f       	vmovsd (%r15),%xmm11
  81d5d8:	c4 01 21 16 2c 2f    	vmovhpd (%r15,%r13,1),%xmm11,%xmm13
  81d5de:	4d 8d 3c 09          	lea    (%r9,%rcx,1),%r15
  81d5e2:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81d5e7:	4a 8d 0c a9          	lea    (%rcx,%r13,4),%rcx
  81d5eb:	c4 01 19 16 34 2f    	vmovhpd (%r15,%r13,1),%xmm12,%xmm14
  81d5f1:	c4 41 11 5c fe       	vsubpd %xmm14,%xmm13,%xmm15
  81d5f6:	c4 c1 59 5e c7       	vdivpd %xmm15,%xmm4,%xmm0
  81d5fb:	4c 8b bd 70 f7 ff ff 	mov    -0x890(%rbp),%r15
  81d602:	c5 79 59 df          	vmulpd %xmm7,%xmm0,%xmm11
  81d606:	4c 03 fa             	add    %rdx,%r15
  81d609:	c4 c1 7b 10 0f       	vmovsd (%r15),%xmm1
  81d60e:	4a 8d 14 92          	lea    (%rdx,%r10,4),%rdx
  81d612:	c4 01 71 16 24 17    	vmovhpd (%r15,%r10,1),%xmm1,%xmm12
  81d618:	4c 8b bd 90 f7 ff ff 	mov    -0x870(%rbp),%r15
  81d61f:	c4 c1 21 59 c4       	vmulpd %xmm12,%xmm11,%xmm0
  81d624:	4c 03 f8             	add    %rax,%r15
  81d627:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81d62c:	c4 01 11 16 3c 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm15
  81d632:	4c 8d 3c 06          	lea    (%rsi,%rax,1),%r15
  81d636:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  81d63b:	4a 8d 04 b0          	lea    (%rax,%r14,4),%rax
  81d63f:	c4 01 09 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm14,%xmm13
  81d645:	c4 c1 01 5c cd       	vsubpd %xmm13,%xmm15,%xmm1
  81d64a:	c5 79 59 d9          	vmulpd %xmm1,%xmm0,%xmm11
  81d64e:	c4 41 79 11 58 18    	vmovupd %xmm11,0x18(%r8)
  81d654:	49 83 c0 20          	add    $0x20,%r8
  81d658:	48 3b bd a0 f7 ff ff 	cmp    -0x860(%rbp),%rdi
  81d65f:	0f 82 e2 fe ff ff    	jb     81d547 <pre_step3d_mod_mp_pre_step3d_tile_+0x90a7>
  81d665:	44 8b 85 70 f6 ff ff 	mov    -0x990(%rbp),%r8d
  81d66c:	48 8b 85 78 f6 ff ff 	mov    -0x988(%rbp),%rax
  81d673:	41 8d 50 01          	lea    0x1(%r8),%edx
  81d677:	3b 95 28 f7 ff ff    	cmp    -0x8d8(%rbp),%edx
  81d67d:	0f 87 8c 02 00 00    	ja     81d90f <pre_step3d_mod_mp_pre_step3d_tile_+0x946f>
  81d683:	4d 63 c0             	movslq %r8d,%r8
  81d686:	4c 8b bd 68 f6 ff ff 	mov    -0x998(%rbp),%r15
  81d68d:	4d 2b f8             	sub    %r8,%r15
  81d690:	49 83 ff 02          	cmp    $0x2,%r15
  81d694:	0f 8c 70 73 00 00    	jl     824a0a <pre_step3d_mod_mp_pre_step3d_tile_+0x1056a>
  81d69a:	4d 89 c4             	mov    %r8,%r12
  81d69d:	45 33 c9             	xor    %r9d,%r9d
  81d6a0:	4c 0f af a5 58 f7 ff 	imul   -0x8a8(%rbp),%r12
  81d6a7:	ff 
  81d6a8:	48 8b bd e0 f5 ff ff 	mov    -0xa20(%rbp),%rdi
  81d6af:	45 89 fe             	mov    %r15d,%r14d
  81d6b2:	4c 8b 9d e8 f5 ff ff 	mov    -0xa18(%rbp),%r11
  81d6b9:	41 83 e6 fe          	and    $0xfffffffe,%r14d
  81d6bd:	48 8b 95 48 f7 ff ff 	mov    -0x8b8(%rbp),%rdx
  81d6c4:	49 0f af d0          	imul   %r8,%rdx
  81d6c8:	4c 8b ad f0 f6 ff ff 	mov    -0x910(%rbp),%r13
  81d6cf:	48 03 f8             	add    %rax,%rdi
  81d6d2:	49 03 fc             	add    %r12,%rdi
  81d6d5:	4c 03 d8             	add    %rax,%r11
  81d6d8:	4d 03 dc             	add    %r12,%r11
  81d6db:	4d 89 c4             	mov    %r8,%r12
  81d6de:	4c 0f af a5 50 f7 ff 	imul   -0x8b0(%rbp),%r12
  81d6e5:	ff 
  81d6e6:	48 8b b5 b8 f5 ff ff 	mov    -0xa48(%rbp),%rsi
  81d6ed:	4b 8d 4c c5 00       	lea    0x0(%r13,%r8,8),%rcx
  81d6f2:	48 89 8d 80 f5 ff ff 	mov    %rcx,-0xa80(%rbp)
  81d6f9:	48 8b 8d f8 f6 ff ff 	mov    -0x908(%rbp),%rcx
  81d700:	4c 8b 95 c8 f5 ff ff 	mov    -0xa38(%rbp),%r10
  81d707:	4c 89 bd 88 f7 ff ff 	mov    %r15,-0x878(%rbp)
  81d70e:	4d 63 f6             	movslq %r14d,%r14
  81d711:	4c 8d 2c 0e          	lea    (%rsi,%rcx,1),%r13
  81d715:	4c 03 a5 e8 f6 ff ff 	add    -0x918(%rbp),%r12
  81d71c:	4c 03 d1             	add    %rcx,%r10
  81d71f:	33 c9                	xor    %ecx,%ecx
  81d721:	4c 03 ea             	add    %rdx,%r13
  81d724:	33 f6                	xor    %esi,%esi
  81d726:	4c 03 d2             	add    %rdx,%r10
  81d729:	4c 8b bd 80 f5 ff ff 	mov    -0xa80(%rbp),%r15
  81d730:	33 d2                	xor    %edx,%edx
  81d732:	4c 89 85 80 f6 ff ff 	mov    %r8,-0x980(%rbp)
  81d739:	48 89 85 78 f6 ff ff 	mov    %rax,-0x988(%rbp)
  81d740:	4c 8b 85 58 f7 ff ff 	mov    -0x8a8(%rbp),%r8
  81d747:	49 8d 04 33          	lea    (%r11,%rsi,1),%rax
  81d74b:	c5 fb 10 00          	vmovsd (%rax),%xmm0
  81d74f:	c4 21 79 16 1c 00    	vmovhpd (%rax,%r8,1),%xmm0,%xmm11
  81d755:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  81d759:	c5 fb 10 08          	vmovsd (%rax),%xmm1
  81d75d:	4a 8d 34 46          	lea    (%rsi,%r8,2),%rsi
  81d761:	c4 21 71 16 24 00    	vmovhpd (%rax,%r8,1),%xmm1,%xmm12
  81d767:	4d 8d 04 0c          	lea    (%r12,%rcx,1),%r8
  81d76b:	c4 41 21 5c ec       	vsubpd %xmm12,%xmm11,%xmm13
  81d770:	c4 41 59 5e f5       	vdivpd %xmm13,%xmm4,%xmm14
  81d775:	c5 89 59 c7          	vmulpd %xmm7,%xmm14,%xmm0
  81d779:	48 8b 85 50 f7 ff ff 	mov    -0x8b0(%rbp),%rax
  81d780:	c4 41 7b 10 38       	vmovsd (%r8),%xmm15
  81d785:	c4 c1 01 16 0c 00    	vmovhpd (%r8,%rax,1),%xmm15,%xmm1
  81d78b:	48 8d 0c 41          	lea    (%rcx,%rax,2),%rcx
  81d78f:	48 8b 85 48 f7 ff ff 	mov    -0x8b8(%rbp),%rax
  81d796:	4d 8d 04 12          	lea    (%r10,%rdx,1),%r8
  81d79a:	c4 41 7b 10 18       	vmovsd (%r8),%xmm11
  81d79f:	c5 79 59 f9          	vmulpd %xmm1,%xmm0,%xmm15
  81d7a3:	c4 41 21 16 2c 00    	vmovhpd (%r8,%rax,1),%xmm11,%xmm13
  81d7a9:	4d 8d 44 15 00       	lea    0x0(%r13,%rdx,1),%r8
  81d7ae:	c4 41 7b 10 20       	vmovsd (%r8),%xmm12
  81d7b3:	48 8d 14 42          	lea    (%rdx,%rax,2),%rdx
  81d7b7:	c4 41 19 16 34 00    	vmovhpd (%r8,%rax,1),%xmm12,%xmm14
  81d7bd:	c4 c1 11 5c c6       	vsubpd %xmm14,%xmm13,%xmm0
  81d7c2:	c5 81 59 c8          	vmulpd %xmm0,%xmm15,%xmm1
  81d7c6:	c4 81 79 11 4c cf 08 	vmovupd %xmm1,0x8(%r15,%r9,8)
  81d7cd:	49 83 c1 02          	add    $0x2,%r9
  81d7d1:	4d 3b ce             	cmp    %r14,%r9
  81d7d4:	0f 82 66 ff ff ff    	jb     81d740 <pre_step3d_mod_mp_pre_step3d_tile_+0x92a0>
  81d7da:	4c 8b bd 88 f7 ff ff 	mov    -0x878(%rbp),%r15
  81d7e1:	4c 8b 85 80 f6 ff ff 	mov    -0x980(%rbp),%r8
  81d7e8:	48 8b 85 78 f6 ff ff 	mov    -0x988(%rbp),%rax
  81d7ef:	4c 8b 9d 48 f7 ff ff 	mov    -0x8b8(%rbp),%r11
  81d7f6:	4c 8b 95 58 f7 ff ff 	mov    -0x8a8(%rbp),%r10
  81d7fd:	4c 8b 8d 50 f7 ff ff 	mov    -0x8b0(%rbp),%r9
  81d804:	4d 0f af de          	imul   %r14,%r11
  81d808:	4d 0f af d6          	imul   %r14,%r10
  81d80c:	4d 0f af ce          	imul   %r14,%r9
  81d810:	4d 3b f7             	cmp    %r15,%r14
  81d813:	0f 83 f6 00 00 00    	jae    81d90f <pre_step3d_mod_mp_pre_step3d_tile_+0x946f>
  81d819:	4c 89 c6             	mov    %r8,%rsi
  81d81c:	48 0f af b5 58 f7 ff 	imul   -0x8a8(%rbp),%rsi
  81d823:	ff 
  81d824:	48 8b bd e0 f5 ff ff 	mov    -0xa20(%rbp),%rdi
  81d82b:	4c 8b a5 e8 f5 ff ff 	mov    -0xa18(%rbp),%r12
  81d832:	48 8b 8d f0 f6 ff ff 	mov    -0x910(%rbp),%rcx
  81d839:	48 8b 95 f8 f6 ff ff 	mov    -0x908(%rbp),%rdx
  81d840:	48 03 f8             	add    %rax,%rdi
  81d843:	48 03 fe             	add    %rsi,%rdi
  81d846:	4c 03 e0             	add    %rax,%r12
  81d849:	4c 03 e6             	add    %rsi,%r12
  81d84c:	4c 89 c6             	mov    %r8,%rsi
  81d84f:	48 0f af b5 50 f7 ff 	imul   -0x8b0(%rbp),%rsi
  81d856:	ff 
  81d857:	4c 89 bd 88 f7 ff ff 	mov    %r15,-0x878(%rbp)
  81d85e:	4e 8d 2c c1          	lea    (%rcx,%r8,8),%r13
  81d862:	4c 0f af 85 48 f7 ff 	imul   -0x8b8(%rbp),%r8
  81d869:	ff 
  81d86a:	4c 89 ad 88 f5 ff ff 	mov    %r13,-0xa78(%rbp)
  81d871:	48 8b 8d b8 f5 ff ff 	mov    -0xa48(%rbp),%rcx
  81d878:	4c 8b ad c8 f5 ff ff 	mov    -0xa38(%rbp),%r13
  81d87f:	48 89 85 78 f6 ff ff 	mov    %rax,-0x988(%rbp)
  81d886:	48 03 b5 e8 f6 ff ff 	add    -0x918(%rbp),%rsi
  81d88d:	48 03 ca             	add    %rdx,%rcx
  81d890:	48 8b 85 88 f5 ff ff 	mov    -0xa78(%rbp),%rax
  81d897:	49 03 d5             	add    %r13,%rdx
  81d89a:	4c 8b ad 58 f7 ff ff 	mov    -0x8a8(%rbp),%r13
  81d8a1:	49 03 c8             	add    %r8,%rcx
  81d8a4:	4c 8b bd 48 f7 ff ff 	mov    -0x8b8(%rbp),%r15
  81d8ab:	49 03 d0             	add    %r8,%rdx
  81d8ae:	4c 8b 85 50 f7 ff ff 	mov    -0x8b0(%rbp),%r8
  81d8b5:	0f 1f 40 00          	nopl   0x0(%rax)
  81d8b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  81d8c0:	c4 81 7b 10 04 22    	vmovsd (%r10,%r12,1),%xmm0
  81d8c6:	c4 41 7b 10 2c 13    	vmovsd (%r11,%rdx,1),%xmm13
  81d8cc:	c4 c1 7b 5c 0c 3a    	vsubsd (%r10,%rdi,1),%xmm0,%xmm1
  81d8d2:	4d 03 d5             	add    %r13,%r10
  81d8d5:	c4 41 13 5c 3c 0b    	vsubsd (%r11,%rcx,1),%xmm13,%xmm15
  81d8db:	c5 2b 5e d9          	vdivsd %xmm1,%xmm10,%xmm11
  81d8df:	c4 41 63 59 e3       	vmulsd %xmm11,%xmm3,%xmm12
  81d8e4:	4d 03 df             	add    %r15,%r11
  81d8e7:	c4 41 1b 59 34 31    	vmulsd (%r9,%rsi,1),%xmm12,%xmm14
  81d8ed:	4d 03 c8             	add    %r8,%r9
  81d8f0:	c4 c1 0b 59 c7       	vmulsd %xmm15,%xmm14,%xmm0
  81d8f5:	c4 a1 7b 11 44 f0 08 	vmovsd %xmm0,0x8(%rax,%r14,8)
  81d8fc:	49 ff c6             	inc    %r14
  81d8ff:	4c 3b b5 88 f7 ff ff 	cmp    -0x878(%rbp),%r14
  81d906:	72 b8                	jb     81d8c0 <pre_step3d_mod_mp_pre_step3d_tile_+0x9420>
  81d908:	48 8b 85 78 f6 ff ff 	mov    -0x988(%rbp),%rax
  81d90f:	48 8b 8d f8 f6 ff ff 	mov    -0x908(%rbp),%rcx
  81d916:	48 8b b5 f0 f6 ff ff 	mov    -0x910(%rbp),%rsi
  81d91d:	48 8b 95 c8 f6 ff ff 	mov    -0x938(%rbp),%rdx
  81d924:	48 8b bd 08 f7 ff ff 	mov    -0x8f8(%rbp),%rdi
  81d92b:	48 ff c7             	inc    %rdi
  81d92e:	48 03 8d d8 f6 ff ff 	add    -0x928(%rbp),%rcx
  81d935:	48 03 b5 30 f7 ff ff 	add    -0x8d0(%rbp),%rsi
  81d93c:	48 03 85 d0 f6 ff ff 	add    -0x930(%rbp),%rax
  81d943:	48 01 95 e8 f6 ff ff 	add    %rdx,-0x918(%rbp)
  81d94a:	48 01 95 00 f7 ff ff 	add    %rdx,-0x900(%rbp)
  81d951:	48 89 8d f8 f6 ff ff 	mov    %rcx,-0x908(%rbp)
  81d958:	48 89 b5 f0 f6 ff ff 	mov    %rsi,-0x910(%rbp)
  81d95f:	48 89 bd 08 f7 ff ff 	mov    %rdi,-0x8f8(%rbp)
  81d966:	48 3b bd 10 f7 ff ff 	cmp    -0x8f0(%rbp),%rdi
  81d96d:	0f 82 c6 fa ff ff    	jb     81d439 <pre_step3d_mod_mp_pre_step3d_tile_+0x8f99>
  81d973:	8b bd b8 f4 ff ff    	mov    -0xb48(%rbp),%edi
  81d979:	44 8b 85 c0 f4 ff ff 	mov    -0xb40(%rbp),%r8d
  81d980:	4c 8b 8d b8 f6 ff ff 	mov    -0x948(%rbp),%r9
  81d987:	3b bd d8 f4 ff ff    	cmp    -0xb28(%rbp),%edi
  81d98d:	0f 85 3a 04 00 00    	jne    81ddcd <pre_step3d_mod_mp_pre_step3d_tile_+0x992d>
  81d993:	48 83 bd c0 f3 ff ff 	cmpq   $0x8,-0xc40(%rbp)
  81d99a:	08 
  81d99b:	0f 85 55 01 00 00    	jne    81daf6 <pre_step3d_mod_mp_pre_step3d_tile_+0x9656>
  81d9a1:	48 83 bd c8 f3 ff ff 	cmpq   $0x8,-0xc38(%rbp)
  81d9a8:	08 
  81d9a9:	0f 85 47 01 00 00    	jne    81daf6 <pre_step3d_mod_mp_pre_step3d_tile_+0x9656>
  81d9af:	4c 8b ad 08 f6 ff ff 	mov    -0x9f8(%rbp),%r13
  81d9b6:	45 33 e4             	xor    %r12d,%r12d
  81d9b9:	4c 8b 9d 48 f5 ff ff 	mov    -0xab8(%rbp),%r11
  81d9c0:	48 83 bd 10 f7 ff ff 	cmpq   $0x0,-0x8f0(%rbp)
  81d9c7:	00 
  81d9c8:	0f 8e ff 03 00 00    	jle    81ddcd <pre_step3d_mod_mp_pre_step3d_tile_+0x992d>
  81d9ce:	89 bd b8 f4 ff ff    	mov    %edi,-0xb48(%rbp)
  81d9d4:	44 89 85 c0 f4 ff ff 	mov    %r8d,-0xb40(%rbp)
  81d9db:	48 8b 95 b0 f6 ff ff 	mov    -0x950(%rbp),%rdx
  81d9e2:	48 8b 8d 38 f5 ff ff 	mov    -0xac8(%rbp),%rcx
  81d9e9:	48 8b b5 60 f7 ff ff 	mov    -0x8a0(%rbp),%rsi
  81d9f0:	48 8b bd 30 f7 ff ff 	mov    -0x8d0(%rbp),%rdi
  81d9f7:	4c 8b 85 10 f7 ff ff 	mov    -0x8f0(%rbp),%r8
  81d9fe:	4c 8b 95 c0 f6 ff ff 	mov    -0x940(%rbp),%r10
  81da05:	4d 3b ca             	cmp    %r10,%r9
  81da08:	0f 8c c4 00 00 00    	jl     81dad2 <pre_step3d_mod_mp_pre_step3d_tile_+0x9632>
  81da0e:	48 83 fe 04          	cmp    $0x4,%rsi
  81da12:	0f 8c c4 6f 00 00    	jl     8249dc <pre_step3d_mod_mp_pre_step3d_tile_+0x1053c>
  81da18:	4c 89 8d b8 f6 ff ff 	mov    %r9,-0x948(%rbp)
  81da1f:	48 89 d0             	mov    %rdx,%rax
  81da22:	4c 8b 8d 08 f5 ff ff 	mov    -0xaf8(%rbp),%r9
  81da29:	45 33 ff             	xor    %r15d,%r15d
  81da2c:	4c 8b 95 00 f5 ff ff 	mov    -0xb00(%rbp),%r10
  81da33:	4d 89 ee             	mov    %r13,%r14
  81da36:	c4 81 3d 59 04 fa    	vmulpd (%r10,%r15,8),%ymm8,%ymm0
  81da3c:	c4 81 7d 10 0c fb    	vmovupd (%r11,%r15,8),%ymm1
  81da42:	c4 01 7d 59 1c f9    	vmulpd (%r9,%r15,8),%ymm0,%ymm11
  81da48:	c4 42 f5 a8 5e 08    	vfmadd213pd 0x8(%r14),%ymm1,%ymm11
  81da4e:	49 83 c7 04          	add    $0x4,%r15
  81da52:	c4 41 7d 11 5e 08    	vmovupd %ymm11,0x8(%r14)
  81da58:	49 83 c6 20          	add    $0x20,%r14
  81da5c:	4c 3b fa             	cmp    %rdx,%r15
  81da5f:	72 d5                	jb     81da36 <pre_step3d_mod_mp_pre_step3d_tile_+0x9596>
  81da61:	4c 8b 95 c0 f6 ff ff 	mov    -0x940(%rbp),%r10
  81da68:	4c 8b 8d b8 f6 ff ff 	mov    -0x948(%rbp),%r9
  81da6f:	4c 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%r15
  81da76:	00 
  81da77:	48 3b c6             	cmp    %rsi,%rax
  81da7a:	73 56                	jae    81dad2 <pre_step3d_mod_mp_pre_step3d_tile_+0x9632>
  81da7c:	4c 89 8d b8 f6 ff ff 	mov    %r9,-0x948(%rbp)
  81da83:	4d 8d 74 c5 00       	lea    0x0(%r13,%rax,8),%r14
  81da88:	4c 8b 8d 08 f5 ff ff 	mov    -0xaf8(%rbp),%r9
  81da8f:	4c 8b 95 00 f5 ff ff 	mov    -0xb00(%rbp),%r10
  81da96:	c4 81 33 59 04 17    	vmulsd (%r15,%r10,1),%xmm9,%xmm0
  81da9c:	48 ff c0             	inc    %rax
  81da9f:	c4 01 7b 59 1c 0f    	vmulsd (%r15,%r9,1),%xmm0,%xmm11
  81daa5:	c4 81 7b 10 0c 1f    	vmovsd (%r15,%r11,1),%xmm1
  81daab:	49 83 c7 08          	add    $0x8,%r15
  81daaf:	c4 42 f1 a9 5e 08    	vfmadd213sd 0x8(%r14),%xmm1,%xmm11
  81dab5:	c4 41 7b 11 5e 08    	vmovsd %xmm11,0x8(%r14)
  81dabb:	49 83 c6 08          	add    $0x8,%r14
  81dabf:	48 3b c6             	cmp    %rsi,%rax
  81dac2:	72 d2                	jb     81da96 <pre_step3d_mod_mp_pre_step3d_tile_+0x95f6>
  81dac4:	4c 8b 95 c0 f6 ff ff 	mov    -0x940(%rbp),%r10
  81dacb:	4c 8b 8d b8 f6 ff ff 	mov    -0x948(%rbp),%r9
  81dad2:	49 ff c4             	inc    %r12
  81dad5:	4c 03 ef             	add    %rdi,%r13
  81dad8:	4c 03 d9             	add    %rcx,%r11
  81dadb:	4d 3b e0             	cmp    %r8,%r12
  81dade:	0f 82 21 ff ff ff    	jb     81da05 <pre_step3d_mod_mp_pre_step3d_tile_+0x9565>
  81dae4:	8b bd b8 f4 ff ff    	mov    -0xb48(%rbp),%edi
  81daea:	44 8b 85 c0 f4 ff ff 	mov    -0xb40(%rbp),%r8d
  81daf1:	e9 d7 02 00 00       	jmpq   81ddcd <pre_step3d_mod_mp_pre_step3d_tile_+0x992d>
  81daf6:	33 c9                	xor    %ecx,%ecx
  81daf8:	48 8b 85 08 f6 ff ff 	mov    -0x9f8(%rbp),%rax
  81daff:	33 d2                	xor    %edx,%edx
  81db01:	48 83 bd 10 f7 ff ff 	cmpq   $0x0,-0x8f0(%rbp)
  81db08:	00 
  81db09:	0f 8e be 02 00 00    	jle    81ddcd <pre_step3d_mod_mp_pre_step3d_tile_+0x992d>
  81db0f:	89 bd b8 f4 ff ff    	mov    %edi,-0xb48(%rbp)
  81db15:	44 89 85 c0 f4 ff ff 	mov    %r8d,-0xb40(%rbp)
  81db1c:	4c 89 8d b8 f6 ff ff 	mov    %r9,-0x948(%rbp)
  81db23:	4c 8b ad 60 f7 ff ff 	mov    -0x8a0(%rbp),%r13
  81db2a:	4c 8b b5 c8 f3 ff ff 	mov    -0xc38(%rbp),%r14
  81db31:	4c 8b a5 c0 f3 ff ff 	mov    -0xc40(%rbp),%r12
  81db38:	48 8b b5 b8 f6 ff ff 	mov    -0x948(%rbp),%rsi
  81db3f:	48 3b b5 c0 f6 ff ff 	cmp    -0x940(%rbp),%rsi
  81db46:	0f 8c 4f 02 00 00    	jl     81dd9b <pre_step3d_mod_mp_pre_step3d_tile_+0x98fb>
  81db4c:	49 83 fd 04          	cmp    $0x4,%r13
  81db50:	0f 8c ac 6e 00 00    	jl     824a02 <pre_step3d_mod_mp_pre_step3d_tile_+0x10562>
  81db56:	48 8d 70 08          	lea    0x8(%rax),%rsi
  81db5a:	48 83 e6 0f          	and    $0xf,%rsi
  81db5e:	85 f6                	test   %esi,%esi
  81db60:	74 11                	je     81db73 <pre_step3d_mod_mp_pre_step3d_tile_+0x96d3>
  81db62:	f7 c6 07 00 00 00    	test   $0x7,%esi
  81db68:	0f 85 94 6e 00 00    	jne    824a02 <pre_step3d_mod_mp_pre_step3d_tile_+0x10562>
  81db6e:	be 01 00 00 00       	mov    $0x1,%esi
  81db73:	41 89 f2             	mov    %esi,%r10d
  81db76:	49 8d 7a 04          	lea    0x4(%r10),%rdi
  81db7a:	4c 3b ef             	cmp    %rdi,%r13
  81db7d:	0f 8c 7f 6e 00 00    	jl     824a02 <pre_step3d_mod_mp_pre_step3d_tile_+0x10562>
  81db83:	8b bd 30 f5 ff ff    	mov    -0xad0(%rbp),%edi
  81db89:	41 89 fb             	mov    %edi,%r11d
  81db8c:	44 2b de             	sub    %esi,%r11d
  81db8f:	45 33 c0             	xor    %r8d,%r8d
  81db92:	41 83 e3 03          	and    $0x3,%r11d
  81db96:	45 33 c9             	xor    %r9d,%r9d
  81db99:	4c 8b bd 48 f5 ff ff 	mov    -0xab8(%rbp),%r15
  81dba0:	41 f7 db             	neg    %r11d
  81dba3:	44 03 df             	add    %edi,%r11d
  81dba6:	33 ff                	xor    %edi,%edi
  81dba8:	4d 63 db             	movslq %r11d,%r11
  81dbab:	4c 03 fa             	add    %rdx,%r15
  81dbae:	4c 89 bd 40 f5 ff ff 	mov    %r15,-0xac0(%rbp)
  81dbb5:	85 f6                	test   %esi,%esi
  81dbb7:	76 6c                	jbe    81dc25 <pre_step3d_mod_mp_pre_step3d_tile_+0x9785>
  81dbb9:	48 89 95 18 f5 ff ff 	mov    %rdx,-0xae8(%rbp)
  81dbc0:	48 89 8d 20 f5 ff ff 	mov    %rcx,-0xae0(%rbp)
  81dbc7:	48 89 fa             	mov    %rdi,%rdx
  81dbca:	48 89 c1             	mov    %rax,%rcx
  81dbcd:	4c 89 fe             	mov    %r15,%rsi
  81dbd0:	4c 8b ad f0 f4 ff ff 	mov    -0xb10(%rbp),%r13
  81dbd7:	4c 8b bd f8 f4 ff ff 	mov    -0xb08(%rbp),%r15
  81dbde:	c4 81 33 59 04 39    	vmulsd (%r9,%r15,1),%xmm9,%xmm0
  81dbe4:	49 ff c0             	inc    %r8
  81dbe7:	c4 21 7b 59 1c 2f    	vmulsd (%rdi,%r13,1),%xmm0,%xmm11
  81dbed:	4d 03 cc             	add    %r12,%r9
  81dbf0:	c5 fb 10 0c 32       	vmovsd (%rdx,%rsi,1),%xmm1
  81dbf5:	49 03 fe             	add    %r14,%rdi
  81dbf8:	c4 62 f1 a9 59 08    	vfmadd213sd 0x8(%rcx),%xmm1,%xmm11
  81dbfe:	48 83 c2 08          	add    $0x8,%rdx
  81dc02:	c5 7b 11 59 08       	vmovsd %xmm11,0x8(%rcx)
  81dc07:	48 83 c1 08          	add    $0x8,%rcx
  81dc0b:	4d 3b c2             	cmp    %r10,%r8
  81dc0e:	72 ce                	jb     81dbde <pre_step3d_mod_mp_pre_step3d_tile_+0x973e>
  81dc10:	48 8b 95 18 f5 ff ff 	mov    -0xae8(%rbp),%rdx
  81dc17:	48 8b 8d 20 f5 ff ff 	mov    -0xae0(%rbp),%rcx
  81dc1e:	4c 8b ad 60 f7 ff ff 	mov    -0x8a0(%rbp),%r13
  81dc25:	48 8b b5 10 f5 ff ff 	mov    -0xaf0(%rbp),%rsi
  81dc2c:	4d 89 f0             	mov    %r14,%r8
  81dc2f:	4c 89 e7             	mov    %r12,%rdi
  81dc32:	4e 8d 0c d0          	lea    (%rax,%r10,8),%r9
  81dc36:	48 89 85 28 f5 ff ff 	mov    %rax,-0xad8(%rbp)
  81dc3d:	48 89 95 18 f5 ff ff 	mov    %rdx,-0xae8(%rbp)
  81dc44:	48 03 f2             	add    %rdx,%rsi
  81dc47:	48 89 8d 20 f5 ff ff 	mov    %rcx,-0xae0(%rbp)
  81dc4e:	4d 0f af c2          	imul   %r10,%r8
  81dc52:	49 0f af fa          	imul   %r10,%rdi
  81dc56:	48 8b 85 40 f5 ff ff 	mov    -0xac0(%rbp),%rax
  81dc5d:	48 8b 95 e8 f4 ff ff 	mov    -0xb18(%rbp),%rdx
  81dc64:	48 8b 8d f0 f4 ff ff 	mov    -0xb10(%rbp),%rcx
  81dc6b:	4c 8b ad f8 f4 ff ff 	mov    -0xb08(%rbp),%r13
  81dc72:	c4 a1 79 10 04 d0    	vmovupd (%rax,%r10,8),%xmm0
  81dc78:	c4 a1 79 10 4c d6 10 	vmovupd 0x10(%rsi,%r10,8),%xmm1
  81dc7f:	49 83 c2 04          	add    $0x4,%r10
  81dc83:	4d 8d 7c 3d 00       	lea    0x0(%r13,%rdi,1),%r15
  81dc88:	c4 41 7b 10 1f       	vmovsd (%r15),%xmm11
  81dc8d:	c4 01 21 16 24 27    	vmovhpd (%r15,%r12,1),%xmm11,%xmm12
  81dc93:	4e 8d 3c 01          	lea    (%rcx,%r8,1),%r15
  81dc97:	c4 41 49 59 f4       	vmulpd %xmm12,%xmm6,%xmm14
  81dc9c:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81dca1:	c4 01 11 16 3c 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm15
  81dca7:	4c 8d 3c 3a          	lea    (%rdx,%rdi,1),%r15
  81dcab:	c4 41 09 59 df       	vmulpd %xmm15,%xmm14,%xmm11
  81dcb0:	c4 42 f9 a8 59 08    	vfmadd213pd 0x8(%r9),%xmm0,%xmm11
  81dcb6:	4a 8d 3c a7          	lea    (%rdi,%r12,4),%rdi
  81dcba:	c4 c1 7b 10 07       	vmovsd (%r15),%xmm0
  81dcbf:	c4 01 79 16 24 27    	vmovhpd (%r15,%r12,1),%xmm0,%xmm12
  81dcc5:	c4 41 49 59 f4       	vmulpd %xmm12,%xmm6,%xmm14
  81dcca:	4c 8b bd 38 f7 ff ff 	mov    -0x8c8(%rbp),%r15
  81dcd1:	c4 41 79 11 59 08    	vmovupd %xmm11,0x8(%r9)
  81dcd7:	4d 03 f8             	add    %r8,%r15
  81dcda:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  81dcdf:	4f 8d 04 b0          	lea    (%r8,%r14,4),%r8
  81dce3:	c4 01 11 16 3c 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm15
  81dce9:	c4 c1 09 59 c7       	vmulpd %xmm15,%xmm14,%xmm0
  81dcee:	c4 c2 f1 a8 41 18    	vfmadd213pd 0x18(%r9),%xmm1,%xmm0
  81dcf4:	c4 c1 79 11 41 18    	vmovupd %xmm0,0x18(%r9)
  81dcfa:	49 83 c1 20          	add    $0x20,%r9
  81dcfe:	4d 3b d3             	cmp    %r11,%r10
  81dd01:	0f 82 6b ff ff ff    	jb     81dc72 <pre_step3d_mod_mp_pre_step3d_tile_+0x97d2>
  81dd07:	48 8b 85 28 f5 ff ff 	mov    -0xad8(%rbp),%rax
  81dd0e:	48 8b 95 18 f5 ff ff 	mov    -0xae8(%rbp),%rdx
  81dd15:	48 8b 8d 20 f5 ff ff 	mov    -0xae0(%rbp),%rcx
  81dd1c:	4c 8b ad 60 f7 ff ff 	mov    -0x8a0(%rbp),%r13
  81dd23:	4d 89 f0             	mov    %r14,%r8
  81dd26:	4d 89 e2             	mov    %r12,%r10
  81dd29:	4d 0f af c3          	imul   %r11,%r8
  81dd2d:	4d 0f af d3          	imul   %r11,%r10
  81dd31:	4e 8d 0c dd 00 00 00 	lea    0x0(,%r11,8),%r9
  81dd38:	00 
  81dd39:	4d 3b dd             	cmp    %r13,%r11
  81dd3c:	73 5d                	jae    81dd9b <pre_step3d_mod_mp_pre_step3d_tile_+0x98fb>
  81dd3e:	48 8b bd 48 f5 ff ff 	mov    -0xab8(%rbp),%rdi
  81dd45:	4a 8d 34 d8          	lea    (%rax,%r11,8),%rsi
  81dd49:	48 89 8d 20 f5 ff ff 	mov    %rcx,-0xae0(%rbp)
  81dd50:	48 8b 8d f0 f4 ff ff 	mov    -0xb10(%rbp),%rcx
  81dd57:	4c 8b bd f8 f4 ff ff 	mov    -0xb08(%rbp),%r15
  81dd5e:	48 03 fa             	add    %rdx,%rdi
  81dd61:	c4 81 33 59 04 3a    	vmulsd (%r10,%r15,1),%xmm9,%xmm0
  81dd67:	49 ff c3             	inc    %r11
  81dd6a:	c4 41 7b 59 1c 08    	vmulsd (%r8,%rcx,1),%xmm0,%xmm11
  81dd70:	4d 03 d4             	add    %r12,%r10
  81dd73:	c4 c1 7b 10 0c 39    	vmovsd (%r9,%rdi,1),%xmm1
  81dd79:	4d 03 c6             	add    %r14,%r8
  81dd7c:	c4 62 f1 a9 5e 08    	vfmadd213sd 0x8(%rsi),%xmm1,%xmm11
  81dd82:	49 83 c1 08          	add    $0x8,%r9
  81dd86:	c5 7b 11 5e 08       	vmovsd %xmm11,0x8(%rsi)
  81dd8b:	48 83 c6 08          	add    $0x8,%rsi
  81dd8f:	4d 3b dd             	cmp    %r13,%r11
  81dd92:	72 cd                	jb     81dd61 <pre_step3d_mod_mp_pre_step3d_tile_+0x98c1>
  81dd94:	48 8b 8d 20 f5 ff ff 	mov    -0xae0(%rbp),%rcx
  81dd9b:	48 ff c1             	inc    %rcx
  81dd9e:	48 03 95 38 f5 ff ff 	add    -0xac8(%rbp),%rdx
  81dda5:	48 03 85 30 f7 ff ff 	add    -0x8d0(%rbp),%rax
  81ddac:	48 3b 8d 10 f7 ff ff 	cmp    -0x8f0(%rbp),%rcx
  81ddb3:	0f 82 7f fd ff ff    	jb     81db38 <pre_step3d_mod_mp_pre_step3d_tile_+0x9698>
  81ddb9:	8b bd b8 f4 ff ff    	mov    -0xb48(%rbp),%edi
  81ddbf:	44 8b 85 c0 f4 ff ff 	mov    -0xb40(%rbp),%r8d
  81ddc6:	4c 8b 8d b8 f6 ff ff 	mov    -0x948(%rbp),%r9
  81ddcd:	48 83 bd c8 f4 ff ff 	cmpq   $0x8,-0xb38(%rbp)
  81ddd4:	08 
  81ddd5:	0f 85 ef 00 00 00    	jne    81deca <pre_step3d_mod_mp_pre_step3d_tile_+0x9a2a>
  81dddb:	48 83 bd d0 f4 ff ff 	cmpq   $0x8,-0xb30(%rbp)
  81dde2:	08 
  81dde3:	0f 85 e1 00 00 00    	jne    81deca <pre_step3d_mod_mp_pre_step3d_tile_+0x9a2a>
  81dde9:	4c 3b 8d c0 f6 ff ff 	cmp    -0x940(%rbp),%r9
  81ddf0:	0f 8c 9b 02 00 00    	jl     81e091 <pre_step3d_mod_mp_pre_step3d_tile_+0x9bf1>
  81ddf6:	48 83 bd 60 f7 ff ff 	cmpq   $0x4,-0x8a0(%rbp)
  81ddfd:	04 
  81ddfe:	0f 8c df 6b 00 00    	jl     8249e3 <pre_step3d_mod_mp_pre_step3d_tile_+0x10543>
  81de04:	49 63 d0             	movslq %r8d,%rdx
  81de07:	33 f6                	xor    %esi,%esi
  81de09:	48 8b 8d e0 f3 ff ff 	mov    -0xc20(%rbp),%rcx
  81de10:	48 0f af ca          	imul   %rdx,%rcx
  81de14:	48 0f af 95 e8 f3 ff 	imul   -0xc18(%rbp),%rdx
  81de1b:	ff 
  81de1c:	48 8b 85 b0 f6 ff ff 	mov    -0x950(%rbp),%rax
  81de23:	49 89 c2             	mov    %rax,%r10
  81de26:	48 03 8d 10 f4 ff ff 	add    -0xbf0(%rbp),%rcx
  81de2d:	48 03 95 08 f4 ff ff 	add    -0xbf8(%rbp),%rdx
  81de34:	4c 8b 9d 20 f4 ff ff 	mov    -0xbe0(%rbp),%r11
  81de3b:	4c 8b a5 50 f6 ff ff 	mov    -0x9b0(%rbp),%r12
  81de42:	c5 bd 59 04 f2       	vmulpd (%rdx,%rsi,8),%ymm8,%ymm0
  81de47:	c5 bd 59 0c f1       	vmulpd (%rcx,%rsi,8),%ymm8,%ymm1
  81de4c:	c4 c1 7d 11 04 f4    	vmovupd %ymm0,(%r12,%rsi,8)
  81de52:	c4 c1 7d 11 0c f3    	vmovupd %ymm1,(%r11,%rsi,8)
  81de58:	48 83 c6 04          	add    $0x4,%rsi
  81de5c:	49 3b f2             	cmp    %r10,%rsi
  81de5f:	72 e1                	jb     81de42 <pre_step3d_mod_mp_pre_step3d_tile_+0x99a2>
  81de61:	48 3b 85 60 f7 ff ff 	cmp    -0x8a0(%rbp),%rax
  81de68:	0f 83 23 02 00 00    	jae    81e091 <pre_step3d_mod_mp_pre_step3d_tile_+0x9bf1>
  81de6e:	49 63 d0             	movslq %r8d,%rdx
  81de71:	48 8b 8d e0 f3 ff ff 	mov    -0xc20(%rbp),%rcx
  81de78:	48 0f af ca          	imul   %rdx,%rcx
  81de7c:	48 0f af 95 e8 f3 ff 	imul   -0xc18(%rbp),%rdx
  81de83:	ff 
  81de84:	48 03 8d 10 f4 ff ff 	add    -0xbf0(%rbp),%rcx
  81de8b:	48 03 95 08 f4 ff ff 	add    -0xbf8(%rbp),%rdx
  81de92:	48 8b b5 60 f7 ff ff 	mov    -0x8a0(%rbp),%rsi
  81de99:	4c 8b 95 20 f4 ff ff 	mov    -0xbe0(%rbp),%r10
  81dea0:	4c 8b 9d 50 f6 ff ff 	mov    -0x9b0(%rbp),%r11
  81dea7:	c5 b3 59 04 c2       	vmulsd (%rdx,%rax,8),%xmm9,%xmm0
  81deac:	c5 b3 59 0c c1       	vmulsd (%rcx,%rax,8),%xmm9,%xmm1
  81deb1:	c4 c1 7b 11 04 c3    	vmovsd %xmm0,(%r11,%rax,8)
  81deb7:	c4 c1 7b 11 0c c2    	vmovsd %xmm1,(%r10,%rax,8)
  81debd:	48 ff c0             	inc    %rax
  81dec0:	48 3b c6             	cmp    %rsi,%rax
  81dec3:	72 e2                	jb     81dea7 <pre_step3d_mod_mp_pre_step3d_tile_+0x9a07>
  81dec5:	e9 c7 01 00 00       	jmpq   81e091 <pre_step3d_mod_mp_pre_step3d_tile_+0x9bf1>
  81deca:	4c 3b 8d c0 f6 ff ff 	cmp    -0x940(%rbp),%r9
  81ded1:	0f 8c ba 01 00 00    	jl     81e091 <pre_step3d_mod_mp_pre_step3d_tile_+0x9bf1>
  81ded7:	48 83 bd 60 f7 ff ff 	cmpq   $0x4,-0x8a0(%rbp)
  81dede:	04 
  81dedf:	0f 8c 15 6b 00 00    	jl     8249fa <pre_step3d_mod_mp_pre_step3d_tile_+0x1055a>
  81dee5:	4d 63 d0             	movslq %r8d,%r10
  81dee8:	33 c9                	xor    %ecx,%ecx
  81deea:	48 8b b5 e8 f3 ff ff 	mov    -0xc18(%rbp),%rsi
  81def1:	45 33 db             	xor    %r11d,%r11d
  81def4:	49 0f af f2          	imul   %r10,%rsi
  81def8:	4c 0f af 95 e0 f3 ff 	imul   -0xc20(%rbp),%r10
  81deff:	ff 
  81df00:	48 8b 95 18 f4 ff ff 	mov    -0xbe8(%rbp),%rdx
  81df07:	48 8b 85 28 f4 ff ff 	mov    -0xbd8(%rbp),%rax
  81df0e:	4c 8b ad b0 f6 ff ff 	mov    -0x950(%rbp),%r13
  81df15:	4c 89 ad 30 f4 ff ff 	mov    %r13,-0xbd0(%rbp)
  81df1c:	48 03 d6             	add    %rsi,%rdx
  81df1f:	89 bd b8 f4 ff ff    	mov    %edi,-0xb48(%rbp)
  81df25:	4e 8d 24 10          	lea    (%rax,%r10,1),%r12
  81df29:	44 89 85 c0 f4 ff ff 	mov    %r8d,-0xb40(%rbp)
  81df30:	33 c0                	xor    %eax,%eax
  81df32:	4c 89 8d b8 f6 ff ff 	mov    %r9,-0x948(%rbp)
  81df39:	48 03 b5 f8 f3 ff ff 	add    -0xc08(%rbp),%rsi
  81df40:	4c 03 95 00 f4 ff ff 	add    -0xc00(%rbp),%r10
  81df47:	48 8b bd 20 f4 ff ff 	mov    -0xbe0(%rbp),%rdi
  81df4e:	4c 8b 85 f0 f3 ff ff 	mov    -0xc10(%rbp),%r8
  81df55:	4c 8b 8d 50 f6 ff ff 	mov    -0x9b0(%rbp),%r9
  81df5c:	4c 8b ad d0 f4 ff ff 	mov    -0xb30(%rbp),%r13
  81df63:	4c 8b b5 c8 f4 ff ff 	mov    -0xb38(%rbp),%r14
  81df6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  81df70:	4e 8d 3c 1a          	lea    (%rdx,%r11,1),%r15
  81df74:	c4 c1 7b 10 07       	vmovsd (%r15),%xmm0
  81df79:	c4 81 79 16 0c 37    	vmovhpd (%r15,%r14,1),%xmm0,%xmm1
  81df7f:	4d 8d 3c 04          	lea    (%r12,%rax,1),%r15
  81df83:	c5 49 59 d9          	vmulpd %xmm1,%xmm6,%xmm11
  81df87:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  81df8c:	c4 01 19 16 2c 2f    	vmovhpd (%r15,%r13,1),%xmm12,%xmm13
  81df92:	4e 8d 3c 1e          	lea    (%rsi,%r11,1),%r15
  81df96:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81df9b:	4f 8d 1c b3          	lea    (%r11,%r14,4),%r11
  81df9f:	c4 81 01 16 04 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm0
  81dfa5:	4d 8d 3c 02          	lea    (%r10,%rax,1),%r15
  81dfa9:	c4 41 79 11 1c c9    	vmovupd %xmm11,(%r9,%rcx,8)
  81dfaf:	c4 41 49 59 f5       	vmulpd %xmm13,%xmm6,%xmm14
  81dfb4:	c5 c9 59 c8          	vmulpd %xmm0,%xmm6,%xmm1
  81dfb8:	c5 79 11 34 cf       	vmovupd %xmm14,(%rdi,%rcx,8)
  81dfbd:	c4 c1 79 11 4c c9 10 	vmovupd %xmm1,0x10(%r9,%rcx,8)
  81dfc4:	c4 41 7b 10 1f       	vmovsd (%r15),%xmm11
  81dfc9:	4a 8d 04 a8          	lea    (%rax,%r13,4),%rax
  81dfcd:	c4 01 21 16 24 2f    	vmovhpd (%r15,%r13,1),%xmm11,%xmm12
  81dfd3:	c4 41 49 59 ec       	vmulpd %xmm12,%xmm6,%xmm13
  81dfd8:	c4 41 79 11 6c c8 10 	vmovupd %xmm13,0x10(%r8,%rcx,8)
  81dfdf:	48 83 c1 04          	add    $0x4,%rcx
  81dfe3:	48 3b 8d b0 f6 ff ff 	cmp    -0x950(%rbp),%rcx
  81dfea:	72 84                	jb     81df70 <pre_step3d_mod_mp_pre_step3d_tile_+0x9ad0>
  81dfec:	4c 8b ad 30 f4 ff ff 	mov    -0xbd0(%rbp),%r13
  81dff3:	8b bd b8 f4 ff ff    	mov    -0xb48(%rbp),%edi
  81dff9:	44 8b 85 c0 f4 ff ff 	mov    -0xb40(%rbp),%r8d
  81e000:	4c 8b 8d b8 f6 ff ff 	mov    -0x948(%rbp),%r9
  81e007:	48 8b b5 d0 f4 ff ff 	mov    -0xb30(%rbp),%rsi
  81e00e:	48 8b 8d c8 f4 ff ff 	mov    -0xb38(%rbp),%rcx
  81e015:	49 0f af f5          	imul   %r13,%rsi
  81e019:	49 0f af cd          	imul   %r13,%rcx
  81e01d:	4c 3b ad 60 f7 ff ff 	cmp    -0x8a0(%rbp),%r13
  81e024:	73 6b                	jae    81e091 <pre_step3d_mod_mp_pre_step3d_tile_+0x9bf1>
  81e026:	49 63 c0             	movslq %r8d,%rax
  81e029:	48 8b 95 e8 f3 ff ff 	mov    -0xc18(%rbp),%rdx
  81e030:	48 0f af d0          	imul   %rax,%rdx
  81e034:	48 0f af 85 e0 f3 ff 	imul   -0xc20(%rbp),%rax
  81e03b:	ff 
  81e03c:	48 03 95 18 f4 ff ff 	add    -0xbe8(%rbp),%rdx
  81e043:	48 03 85 28 f4 ff ff 	add    -0xbd8(%rbp),%rax
  81e04a:	4c 8b 95 60 f7 ff ff 	mov    -0x8a0(%rbp),%r10
  81e051:	4c 8b 9d 20 f4 ff ff 	mov    -0xbe0(%rbp),%r11
  81e058:	4c 8b a5 50 f6 ff ff 	mov    -0x9b0(%rbp),%r12
  81e05f:	4c 8b b5 d0 f4 ff ff 	mov    -0xb30(%rbp),%r14
  81e066:	4c 8b bd c8 f4 ff ff 	mov    -0xb38(%rbp),%r15
  81e06d:	c5 b3 59 04 11       	vmulsd (%rcx,%rdx,1),%xmm9,%xmm0
  81e072:	49 03 cf             	add    %r15,%rcx
  81e075:	c5 b3 59 0c 06       	vmulsd (%rsi,%rax,1),%xmm9,%xmm1
  81e07a:	c4 81 7b 11 04 ec    	vmovsd %xmm0,(%r12,%r13,8)
  81e080:	49 03 f6             	add    %r14,%rsi
  81e083:	c4 81 7b 11 0c eb    	vmovsd %xmm1,(%r11,%r13,8)
  81e089:	49 ff c5             	inc    %r13
  81e08c:	4d 3b ea             	cmp    %r10,%r13
  81e08f:	72 dc                	jb     81e06d <pre_step3d_mod_mp_pre_step3d_tile_+0x9bcd>
  81e091:	48 83 bd 40 f7 ff ff 	cmpq   $0x8,-0x8c0(%rbp)
  81e098:	08 
  81e099:	0f 85 5f 01 00 00    	jne    81e1fe <pre_step3d_mod_mp_pre_step3d_tile_+0x9d5e>
  81e09f:	48 83 bd 48 f7 ff ff 	cmpq   $0x8,-0x8b8(%rbp)
  81e0a6:	08 
  81e0a7:	0f 85 51 01 00 00    	jne    81e1fe <pre_step3d_mod_mp_pre_step3d_tile_+0x9d5e>
  81e0ad:	33 d2                	xor    %edx,%edx
  81e0af:	45 33 d2             	xor    %r10d,%r10d
  81e0b2:	48 8b 8d c8 f1 ff ff 	mov    -0xe38(%rbp),%rcx
  81e0b9:	33 f6                	xor    %esi,%esi
  81e0bb:	48 83 bd 20 f7 ff ff 	cmpq   $0x0,-0x8e0(%rbp)
  81e0c2:	00 
  81e0c3:	0f 8e 37 04 00 00    	jle    81e500 <pre_step3d_mod_mp_pre_step3d_tile_+0xa060>
  81e0c9:	4d 63 c0             	movslq %r8d,%r8
  81e0cc:	4c 0f af 85 38 f4 ff 	imul   -0xbc8(%rbp),%r8
  81e0d3:	ff 
  81e0d4:	48 8b 85 90 f4 ff ff 	mov    -0xb70(%rbp),%rax
  81e0db:	4c 8b b5 08 f6 ff ff 	mov    -0x9f8(%rbp),%r14
  81e0e2:	4c 8b bd 60 f7 ff ff 	mov    -0x8a0(%rbp),%r15
  81e0e9:	89 bd b8 f4 ff ff    	mov    %edi,-0xb48(%rbp)
  81e0ef:	49 03 c0             	add    %r8,%rax
  81e0f2:	4c 03 85 70 f4 ff ff 	add    -0xb90(%rbp),%r8
  81e0f9:	4c 89 85 90 f5 ff ff 	mov    %r8,-0xa70(%rbp)
  81e100:	4c 89 8d b8 f6 ff ff 	mov    %r9,-0x948(%rbp)
  81e107:	48 8b bd b8 f6 ff ff 	mov    -0x948(%rbp),%rdi
  81e10e:	48 3b bd c0 f6 ff ff 	cmp    -0x940(%rbp),%rdi
  81e115:	0f 8c ac 00 00 00    	jl     81e1c7 <pre_step3d_mod_mp_pre_step3d_tile_+0x9d27>
  81e11b:	49 83 ff 04          	cmp    $0x4,%r15
  81e11f:	0f 8c c5 68 00 00    	jl     8249ea <pre_step3d_mod_mp_pre_step3d_tile_+0x1054a>
  81e125:	4c 8b 85 50 f6 ff ff 	mov    -0x9b0(%rbp),%r8
  81e12c:	45 33 e4             	xor    %r12d,%r12d
  81e12f:	48 8b bd 90 f5 ff ff 	mov    -0xa70(%rbp),%rdi
  81e136:	4f 8d 0c 16          	lea    (%r14,%r10,1),%r9
  81e13a:	4c 8b ad b0 f6 ff ff 	mov    -0x950(%rbp),%r13
  81e141:	4d 89 ef             	mov    %r13,%r15
  81e144:	4f 8d 1c 10          	lea    (%r8,%r10,1),%r11
  81e148:	4c 8d 04 30          	lea    (%rax,%rsi,1),%r8
  81e14c:	48 03 fe             	add    %rsi,%rdi
  81e14f:	c4 81 7d 10 44 e1 08 	vmovupd 0x8(%r9,%r12,8),%ymm0
  81e156:	c4 a1 7d 10 0c e7    	vmovupd (%rdi,%r12,8),%ymm1
  81e15c:	c4 01 7d 5c 1c e3    	vsubpd (%r11,%r12,8),%ymm0,%ymm11
  81e162:	c4 22 f5 b8 1c e1    	vfmadd231pd (%rcx,%r12,8),%ymm1,%ymm11
  81e168:	c4 01 7d 11 1c e0    	vmovupd %ymm11,(%r8,%r12,8)
  81e16e:	49 83 c4 04          	add    $0x4,%r12
  81e172:	4d 3b e7             	cmp    %r15,%r12
  81e175:	72 d8                	jb     81e14f <pre_step3d_mod_mp_pre_step3d_tile_+0x9caf>
  81e177:	4c 8b bd 60 f7 ff ff 	mov    -0x8a0(%rbp),%r15
  81e17e:	4d 3b ef             	cmp    %r15,%r13
  81e181:	73 44                	jae    81e1c7 <pre_step3d_mod_mp_pre_step3d_tile_+0x9d27>
  81e183:	4c 8b 85 50 f6 ff ff 	mov    -0x9b0(%rbp),%r8
  81e18a:	4f 8d 0c 16          	lea    (%r14,%r10,1),%r9
  81e18e:	48 8b bd 90 f5 ff ff 	mov    -0xa70(%rbp),%rdi
  81e195:	4f 8d 1c 10          	lea    (%r8,%r10,1),%r11
  81e199:	4c 8d 04 30          	lea    (%rax,%rsi,1),%r8
  81e19d:	48 03 fe             	add    %rsi,%rdi
  81e1a0:	c4 81 7b 10 44 e9 08 	vmovsd 0x8(%r9,%r13,8),%xmm0
  81e1a7:	c4 a1 7b 10 0c ef    	vmovsd (%rdi,%r13,8),%xmm1
  81e1ad:	c4 01 7b 5c 1c eb    	vsubsd (%r11,%r13,8),%xmm0,%xmm11
  81e1b3:	c4 22 f1 b9 1c e9    	vfmadd231sd (%rcx,%r13,8),%xmm1,%xmm11
  81e1b9:	c4 01 7b 11 1c e8    	vmovsd %xmm11,(%r8,%r13,8)
  81e1bf:	49 ff c5             	inc    %r13
  81e1c2:	4d 3b ef             	cmp    %r15,%r13
  81e1c5:	72 d9                	jb     81e1a0 <pre_step3d_mod_mp_pre_step3d_tile_+0x9d00>
  81e1c7:	48 ff c2             	inc    %rdx
  81e1ca:	4c 03 95 30 f7 ff ff 	add    -0x8d0(%rbp),%r10
  81e1d1:	48 03 8d e0 f6 ff ff 	add    -0x920(%rbp),%rcx
  81e1d8:	48 03 b5 d8 f6 ff ff 	add    -0x928(%rbp),%rsi
  81e1df:	48 3b 95 20 f7 ff ff 	cmp    -0x8e0(%rbp),%rdx
  81e1e6:	0f 82 1b ff ff ff    	jb     81e107 <pre_step3d_mod_mp_pre_step3d_tile_+0x9c67>
  81e1ec:	8b bd b8 f4 ff ff    	mov    -0xb48(%rbp),%edi
  81e1f2:	4c 8b 8d b8 f6 ff ff 	mov    -0x948(%rbp),%r9
  81e1f9:	e9 02 03 00 00       	jmpq   81e500 <pre_step3d_mod_mp_pre_step3d_tile_+0xa060>
  81e1fe:	48 83 bd 20 f7 ff ff 	cmpq   $0x0,-0x8e0(%rbp)
  81e205:	00 
  81e206:	0f 8e f4 02 00 00    	jle    81e500 <pre_step3d_mod_mp_pre_step3d_tile_+0xa060>
  81e20c:	48 83 bd d8 f6 ff ff 	cmpq   $0x0,-0x928(%rbp)
  81e213:	00 
  81e214:	0f 84 d8 67 00 00    	je     8249f2 <pre_step3d_mod_mp_pre_step3d_tile_+0x10552>
  81e21a:	48 83 bd 20 f7 ff ff 	cmpq   $0x2,-0x8e0(%rbp)
  81e221:	02 
  81e222:	0f 8c ca 67 00 00    	jl     8249f2 <pre_step3d_mod_mp_pre_step3d_tile_+0x10552>
  81e228:	4d 63 d8             	movslq %r8d,%r11
  81e22b:	33 d2                	xor    %edx,%edx
  81e22d:	4c 0f af 9d 38 f4 ff 	imul   -0xbc8(%rbp),%r11
  81e234:	ff 
  81e235:	48 8b 85 68 f4 ff ff 	mov    -0xb98(%rbp),%rax
  81e23c:	33 c9                	xor    %ecx,%ecx
  81e23e:	4c 8b 95 18 f7 ff ff 	mov    -0x8e8(%rbp),%r10
  81e245:	33 f6                	xor    %esi,%esi
  81e247:	4c 89 8d b8 f6 ff ff 	mov    %r9,-0x948(%rbp)
  81e24e:	4c 89 95 a0 f6 ff ff 	mov    %r10,-0x960(%rbp)
  81e255:	4e 8d 24 18          	lea    (%rax,%r11,1),%r12
  81e259:	4c 03 9d 48 f4 ff ff 	add    -0xbb8(%rbp),%r11
  81e260:	33 c0                	xor    %eax,%eax
  81e262:	4c 89 9d a0 f5 ff ff 	mov    %r11,-0xa60(%rbp)
  81e269:	4c 89 a5 98 f5 ff ff 	mov    %r12,-0xa68(%rbp)
  81e270:	89 bd b8 f4 ff ff    	mov    %edi,-0xb48(%rbp)
  81e276:	44 89 85 c0 f4 ff ff 	mov    %r8d,-0xb40(%rbp)
  81e27d:	4c 8b 8d d8 f6 ff ff 	mov    -0x928(%rbp),%r9
  81e284:	4c 8b 9d e0 f6 ff ff 	mov    -0x920(%rbp),%r11
  81e28b:	45 33 ed             	xor    %r13d,%r13d
  81e28e:	48 8b bd b8 f6 ff ff 	mov    -0x948(%rbp),%rdi
  81e295:	45 33 ff             	xor    %r15d,%r15d
  81e298:	45 33 c0             	xor    %r8d,%r8d
  81e29b:	48 3b bd c0 f6 ff ff 	cmp    -0x940(%rbp),%rdi
  81e2a2:	0f 8c dc 00 00 00    	jl     81e384 <pre_step3d_mod_mp_pre_step3d_tile_+0x9ee4>
  81e2a8:	48 8b bd 50 f6 ff ff 	mov    -0x9b0(%rbp),%rdi
  81e2af:	4c 8b a5 48 f6 ff ff 	mov    -0x9b8(%rbp),%r12
  81e2b6:	4c 8b 95 98 f5 ff ff 	mov    -0xa68(%rbp),%r10
  81e2bd:	4c 8b b5 a0 f5 ff ff 	mov    -0xa60(%rbp),%r14
  81e2c4:	48 03 f9             	add    %rcx,%rdi
  81e2c7:	48 89 85 98 f6 ff ff 	mov    %rax,-0x968(%rbp)
  81e2ce:	4c 03 e6             	add    %rsi,%r12
  81e2d1:	48 89 95 88 f6 ff ff 	mov    %rdx,-0x978(%rbp)
  81e2d8:	4c 03 d0             	add    %rax,%r10
  81e2db:	48 89 b5 90 f6 ff ff 	mov    %rsi,-0x970(%rbp)
  81e2e2:	4c 03 f0             	add    %rax,%r14
  81e2e5:	48 8b 85 08 f6 ff ff 	mov    -0x9f8(%rbp),%rax
  81e2ec:	48 8b 95 58 f6 ff ff 	mov    -0x9a8(%rbp),%rdx
  81e2f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  81e2f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  81e2ff:	00 
  81e300:	4b 8d 34 3c          	lea    (%r12,%r15,1),%rsi
  81e304:	4c 03 bd 40 f7 ff ff 	add    -0x8c0(%rbp),%r15
  81e30b:	c5 fb 10 0e          	vmovsd (%rsi),%xmm1
  81e30f:	c4 a1 71 16 04 1e    	vmovhpd (%rsi,%r11,1),%xmm1,%xmm0
  81e315:	4b 8d 34 02          	lea    (%r10,%r8,1),%rsi
  81e319:	c5 7b 10 1e          	vmovsd (%rsi),%xmm11
  81e31d:	c4 a1 21 16 0c 0e    	vmovhpd (%rsi,%r9,1),%xmm11,%xmm1
  81e323:	48 8d 74 08 08       	lea    0x8(%rax,%rcx,1),%rsi
  81e328:	4a 8d 34 ee          	lea    (%rsi,%r13,8),%rsi
  81e32c:	c5 7b 10 26          	vmovsd (%rsi),%xmm12
  81e330:	c5 19 16 74 d6 08    	vmovhpd 0x8(%rsi,%rdx,8),%xmm12,%xmm14
  81e336:	4a 8d 34 ef          	lea    (%rdi,%r13,8),%rsi
  81e33a:	c5 7b 10 2e          	vmovsd (%rsi),%xmm13
  81e33e:	49 ff c5             	inc    %r13
  81e341:	c5 11 16 7c d6 08    	vmovhpd 0x8(%rsi,%rdx,8),%xmm13,%xmm15
  81e347:	4b 8d 34 30          	lea    (%r8,%r14,1),%rsi
  81e34b:	c4 41 09 5c df       	vsubpd %xmm15,%xmm14,%xmm11
  81e350:	c4 62 f1 b8 d8       	vfmadd231pd %xmm0,%xmm1,%xmm11
  81e355:	c5 7b 11 1e          	vmovsd %xmm11,(%rsi)
  81e359:	4c 03 85 48 f7 ff ff 	add    -0x8b8(%rbp),%r8
  81e360:	c4 41 79 17 1c 31    	vmovhpd %xmm11,(%r9,%rsi,1)
  81e366:	4c 3b ad 60 f7 ff ff 	cmp    -0x8a0(%rbp),%r13
  81e36d:	72 91                	jb     81e300 <pre_step3d_mod_mp_pre_step3d_tile_+0x9e60>
  81e36f:	48 8b 85 98 f6 ff ff 	mov    -0x968(%rbp),%rax
  81e376:	48 8b b5 90 f6 ff ff 	mov    -0x970(%rbp),%rsi
  81e37d:	48 8b 95 88 f6 ff ff 	mov    -0x978(%rbp),%rdx
  81e384:	48 8b bd 30 f7 ff ff 	mov    -0x8d0(%rbp),%rdi
  81e38b:	48 83 c2 02          	add    $0x2,%rdx
  81e38f:	4a 8d 34 5e          	lea    (%rsi,%r11,2),%rsi
  81e393:	4a 8d 04 48          	lea    (%rax,%r9,2),%rax
  81e397:	48 8d 0c 79          	lea    (%rcx,%rdi,2),%rcx
  81e39b:	48 3b 95 18 f7 ff ff 	cmp    -0x8e8(%rbp),%rdx
  81e3a2:	0f 82 e3 fe ff ff    	jb     81e28b <pre_step3d_mod_mp_pre_step3d_tile_+0x9deb>
  81e3a8:	4c 8b 95 a0 f6 ff ff 	mov    -0x960(%rbp),%r10
  81e3af:	8b bd b8 f4 ff ff    	mov    -0xb48(%rbp),%edi
  81e3b5:	44 8b 85 c0 f4 ff ff 	mov    -0xb40(%rbp),%r8d
  81e3bc:	4c 8b 8d b8 f6 ff ff 	mov    -0x948(%rbp),%r9
  81e3c3:	48 8b 8d d8 f6 ff ff 	mov    -0x928(%rbp),%rcx
  81e3ca:	48 8b 85 e0 f6 ff ff 	mov    -0x920(%rbp),%rax
  81e3d1:	48 8b 95 30 f7 ff ff 	mov    -0x8d0(%rbp),%rdx
  81e3d8:	49 0f af ca          	imul   %r10,%rcx
  81e3dc:	49 0f af c2          	imul   %r10,%rax
  81e3e0:	49 0f af d2          	imul   %r10,%rdx
  81e3e4:	4c 3b 95 20 f7 ff ff 	cmp    -0x8e0(%rbp),%r10
  81e3eb:	0f 83 0f 01 00 00    	jae    81e500 <pre_step3d_mod_mp_pre_step3d_tile_+0xa060>
  81e3f1:	4d 63 c0             	movslq %r8d,%r8
  81e3f4:	4c 0f af 85 38 f4 ff 	imul   -0xbc8(%rbp),%r8
  81e3fb:	ff 
  81e3fc:	48 8b b5 68 f4 ff ff 	mov    -0xb98(%rbp),%rsi
  81e403:	89 bd b8 f4 ff ff    	mov    %edi,-0xb48(%rbp)
  81e409:	49 03 f0             	add    %r8,%rsi
  81e40c:	4c 03 85 48 f4 ff ff 	add    -0xbb8(%rbp),%r8
  81e413:	4c 89 85 a8 f5 ff ff 	mov    %r8,-0xa58(%rbp)
  81e41a:	48 89 b5 b0 f5 ff ff 	mov    %rsi,-0xa50(%rbp)
  81e421:	45 33 f6             	xor    %r14d,%r14d
  81e424:	45 33 ff             	xor    %r15d,%r15d
  81e427:	45 33 db             	xor    %r11d,%r11d
  81e42a:	4c 3b 8d c0 f6 ff ff 	cmp    -0x940(%rbp),%r9
  81e431:	0f 8c 9e 00 00 00    	jl     81e4d5 <pre_step3d_mod_mp_pre_step3d_tile_+0xa035>
  81e437:	4c 8b 85 50 f6 ff ff 	mov    -0x9b0(%rbp),%r8
  81e43e:	48 8b bd 08 f6 ff ff 	mov    -0x9f8(%rbp),%rdi
  81e445:	48 8b b5 48 f6 ff ff 	mov    -0x9b8(%rbp),%rsi
  81e44c:	4c 8b a5 a8 f5 ff ff 	mov    -0xa58(%rbp),%r12
  81e453:	4c 03 c2             	add    %rdx,%r8
  81e456:	4c 8b ad b0 f5 ff ff 	mov    -0xa50(%rbp),%r13
  81e45d:	48 03 fa             	add    %rdx,%rdi
  81e460:	48 89 8d a8 f6 ff ff 	mov    %rcx,-0x958(%rbp)
  81e467:	48 03 f0             	add    %rax,%rsi
  81e46a:	4c 89 95 a0 f6 ff ff 	mov    %r10,-0x960(%rbp)
  81e471:	4c 03 e1             	add    %rcx,%r12
  81e474:	4c 89 8d b8 f6 ff ff 	mov    %r9,-0x948(%rbp)
  81e47b:	4c 03 e9             	add    %rcx,%r13
  81e47e:	48 8b 8d 60 f7 ff ff 	mov    -0x8a0(%rbp),%rcx
  81e485:	4c 8b 8d 48 f7 ff ff 	mov    -0x8b8(%rbp),%r9
  81e48c:	4c 8b 95 40 f7 ff ff 	mov    -0x8c0(%rbp),%r10
  81e493:	c4 a1 7b 10 44 f7 08 	vmovsd 0x8(%rdi,%r14,8),%xmm0
  81e49a:	c4 81 7b 10 0c 2b    	vmovsd (%r11,%r13,1),%xmm1
  81e4a0:	c4 01 7b 5c 1c f0    	vsubsd (%r8,%r14,8),%xmm0,%xmm11
  81e4a6:	49 ff c6             	inc    %r14
  81e4a9:	c4 42 f1 b9 1c 37    	vfmadd231sd (%r15,%rsi,1),%xmm1,%xmm11
  81e4af:	4d 03 fa             	add    %r10,%r15
  81e4b2:	c4 01 7b 11 1c 23    	vmovsd %xmm11,(%r11,%r12,1)
  81e4b8:	4d 03 d9             	add    %r9,%r11
  81e4bb:	4c 3b f1             	cmp    %rcx,%r14
  81e4be:	72 d3                	jb     81e493 <pre_step3d_mod_mp_pre_step3d_tile_+0x9ff3>
  81e4c0:	48 8b 8d a8 f6 ff ff 	mov    -0x958(%rbp),%rcx
  81e4c7:	4c 8b 95 a0 f6 ff ff 	mov    -0x960(%rbp),%r10
  81e4ce:	4c 8b 8d b8 f6 ff ff 	mov    -0x948(%rbp),%r9
  81e4d5:	49 ff c2             	inc    %r10
  81e4d8:	48 03 95 30 f7 ff ff 	add    -0x8d0(%rbp),%rdx
  81e4df:	48 03 85 e0 f6 ff ff 	add    -0x920(%rbp),%rax
  81e4e6:	48 03 8d d8 f6 ff ff 	add    -0x928(%rbp),%rcx
  81e4ed:	4c 3b 95 20 f7 ff ff 	cmp    -0x8e0(%rbp),%r10
  81e4f4:	0f 82 27 ff ff ff    	jb     81e421 <pre_step3d_mod_mp_pre_step3d_tile_+0x9f81>
  81e4fa:	8b bd b8 f4 ff ff    	mov    -0xb48(%rbp),%edi
  81e500:	41 89 f8             	mov    %edi,%r8d
  81e503:	3b bd e0 f4 ff ff    	cmp    -0xb20(%rbp),%edi
  81e509:	0f 82 3d ec ff ff    	jb     81d14c <pre_step3d_mod_mp_pre_step3d_tile_+0x8cac>
  81e50f:	44 8b ad e0 f4 ff ff 	mov    -0xb20(%rbp),%r13d
  81e516:	48 8b 95 a8 f3 ff ff 	mov    -0xc58(%rbp),%rdx
  81e51d:	48 ff c2             	inc    %rdx
  81e520:	48 3b 95 b8 f3 ff ff 	cmp    -0xc48(%rbp),%rdx
  81e527:	0f 82 95 e2 ff ff    	jb     81c7c2 <pre_step3d_mod_mp_pre_step3d_tile_+0x8322>
  81e52d:	bf bc 74 b3 00       	mov    $0xb374bc,%edi
  81e532:	8b b5 b0 f3 ff ff    	mov    -0xc50(%rbp),%esi
  81e538:	c5 f8 77             	vzeroupper 
  81e53b:	e8 c0 fb be ff       	callq  40e100 <__kmpc_for_static_fini@plt>
  81e540:	48 8b 95 a0 f3 ff ff 	mov    -0xc60(%rbp),%rdx
  81e547:	48 8b 85 98 f3 ff ff 	mov    -0xc68(%rbp),%rax
  81e54e:	48 83 c0 1f          	add    $0x1f,%rax
  81e552:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81e556:	48 03 e0             	add    %rax,%rsp
  81e559:	4c 8b bd 18 f6 ff ff 	mov    -0x9e8(%rbp),%r15
  81e560:	4c 8b b5 20 f6 ff ff 	mov    -0x9e0(%rbp),%r14
  81e567:	4c 8b ad 28 f6 ff ff 	mov    -0x9d8(%rbp),%r13
  81e56e:	4c 8b a5 30 f6 ff ff 	mov    -0x9d0(%rbp),%r12
  81e575:	c9                   	leaveq 
  81e576:	48 89 dc             	mov    %rbx,%rsp
  81e579:	5b                   	pop    %rbx
  81e57a:	c3                   	retq   
  81e57b:	53                   	push   %rbx
  81e57c:	48 89 e3             	mov    %rsp,%rbx
  81e57f:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  81e583:	55                   	push   %rbp
  81e584:	55                   	push   %rbp
  81e585:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  81e589:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  81e58e:	48 89 e5             	mov    %rsp,%rbp
  81e591:	48 81 ec 70 0e 00 00 	sub    $0xe70,%rsp
  81e598:	4c 89 a5 30 f6 ff ff 	mov    %r12,-0x9d0(%rbp)
  81e59f:	4c 8b 63 48          	mov    0x48(%rbx),%r12
  81e5a3:	48 8b 43 18          	mov    0x18(%rbx),%rax
  81e5a7:	4c 89 ad 28 f6 ff ff 	mov    %r13,-0x9d8(%rbp)
  81e5ae:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
  81e5b2:	4d 8b 24 24          	mov    (%r12),%r12
  81e5b6:	4c 89 bd 18 f6 ff ff 	mov    %r15,-0x9e8(%rbp)
  81e5bd:	4c 8b 7b 38          	mov    0x38(%rbx),%r15
  81e5c1:	4c 89 a5 c0 f1 ff ff 	mov    %r12,-0xe40(%rbp)
  81e5c8:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  81e5cc:	4c 8b 20             	mov    (%rax),%r12
  81e5cf:	4c 89 a5 b0 f1 ff ff 	mov    %r12,-0xe50(%rbp)
  81e5d6:	44 8b 21             	mov    (%rcx),%r12d
  81e5d9:	4d 8b 6d 00          	mov    0x0(%r13),%r13
  81e5dd:	48 8b 4b 58          	mov    0x58(%rbx),%rcx
  81e5e1:	4d 8b 3f             	mov    (%r15),%r15
  81e5e4:	4c 89 ad b8 f1 ff ff 	mov    %r13,-0xe48(%rbp)
  81e5eb:	44 8b 2e             	mov    (%rsi),%r13d
  81e5ee:	4c 89 bd a0 f1 ff ff 	mov    %r15,-0xe60(%rbp)
  81e5f5:	4c 89 b5 20 f6 ff ff 	mov    %r14,-0x9e0(%rbp)
  81e5fc:	4d 63 39             	movslq (%r9),%r15
  81e5ff:	4c 8b 73 30          	mov    0x30(%rbx),%r14
  81e603:	4c 8b 53 28          	mov    0x28(%rbx),%r10
  81e607:	8b 3f                	mov    (%rdi),%edi
  81e609:	44 89 ad b8 f3 ff ff 	mov    %r13d,-0xc48(%rbp)
  81e610:	4d 8b 28             	mov    (%r8),%r13
  81e613:	4c 89 bd 20 fa ff ff 	mov    %r15,-0x5e0(%rbp)
  81e61a:	4c 63 01             	movslq (%rcx),%r8
  81e61d:	44 8b 3a             	mov    (%rdx),%r15d
  81e620:	48 8b 4b 70          	mov    0x70(%rbx),%rcx
  81e624:	48 8b 53 50          	mov    0x50(%rbx),%rdx
  81e628:	89 bd 70 f6 ff ff    	mov    %edi,-0x990(%rbp)
  81e62e:	4c 8b 5b 20          	mov    0x20(%rbx),%r11
  81e632:	48 8b 43 60          	mov    0x60(%rbx),%rax
  81e636:	48 8b 7b 78          	mov    0x78(%rbx),%rdi
  81e63a:	4d 8b 36             	mov    (%r14),%r14
  81e63d:	4d 8b 12             	mov    (%r10),%r10
  81e640:	4c 89 b5 a8 f1 ff ff 	mov    %r14,-0xe58(%rbp)
  81e647:	48 63 31             	movslq (%rcx),%rsi
  81e64a:	4c 89 95 c8 f1 ff ff 	mov    %r10,-0xe38(%rbp)
  81e651:	4c 8b 32             	mov    (%rdx),%r14
  81e654:	4c 89 85 d0 f3 ff ff 	mov    %r8,-0xc30(%rbp)
  81e65b:	4d 8b 1b             	mov    (%r11),%r11
  81e65e:	48 63 10             	movslq (%rax),%rdx
  81e661:	33 c0                	xor    %eax,%eax
  81e663:	4c 63 07             	movslq (%rdi),%r8
  81e666:	48 8d bd e0 f1 ff ff 	lea    -0xe20(%rbp),%rdi
  81e66d:	48 8d 8b 88 00 00 00 	lea    0x88(%rbx),%rcx
  81e674:	4c 8b 09             	mov    (%rcx),%r9
  81e677:	4c 8b 51 08          	mov    0x8(%rcx),%r10
  81e67b:	48 89 b5 c8 f3 ff ff 	mov    %rsi,-0xc38(%rbp)
  81e682:	48 8b 71 10          	mov    0x10(%rcx),%rsi
  81e686:	4c 89 5f f0          	mov    %r11,-0x10(%rdi)
  81e68a:	48 89 95 d8 f3 ff ff 	mov    %rdx,-0xc28(%rbp)
  81e691:	4c 89 85 c0 f3 ff ff 	mov    %r8,-0xc40(%rbp)
  81e698:	4c 89 4f b0          	mov    %r9,-0x50(%rdi)
  81e69c:	4c 89 57 b8          	mov    %r10,-0x48(%rdi)
  81e6a0:	e8 0b fe c5 ff       	callq  47e4b0 <_f90_dope_vector_init>
  81e6a5:	48 89 85 08 f5 ff ff 	mov    %rax,-0xaf8(%rbp)
  81e6ac:	48 83 c0 1f          	add    $0x1f,%rax
  81e6b0:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81e6b4:	48 2b e0             	sub    %rax,%rsp
  81e6b7:	48 89 e0             	mov    %rsp,%rax
  81e6ba:	48 89 85 00 f5 ff ff 	mov    %rax,-0xb00(%rbp)
  81e6c1:	48 89 c2             	mov    %rax,%rdx
  81e6c4:	48 8d bd 40 f2 ff ff 	lea    -0xdc0(%rbp),%rdi
  81e6cb:	33 c0                	xor    %eax,%eax
  81e6cd:	48 8b b5 98 f1 ff ff 	mov    -0xe68(%rbp),%rsi
  81e6d4:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  81e6d8:	e8 d3 fd c5 ff       	callq  47e4b0 <_f90_dope_vector_init>
  81e6dd:	48 89 85 18 f5 ff ff 	mov    %rax,-0xae8(%rbp)
  81e6e4:	48 83 c0 1f          	add    $0x1f,%rax
  81e6e8:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81e6ec:	48 2b e0             	sub    %rax,%rsp
  81e6ef:	48 89 e0             	mov    %rsp,%rax
  81e6f2:	48 89 85 10 f5 ff ff 	mov    %rax,-0xaf0(%rbp)
  81e6f9:	48 89 c2             	mov    %rax,%rdx
  81e6fc:	48 8d bd a0 f2 ff ff 	lea    -0xd60(%rbp),%rdi
  81e703:	33 c0                	xor    %eax,%eax
  81e705:	48 8b b5 90 f1 ff ff 	mov    -0xe70(%rbp),%rsi
  81e70c:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  81e710:	e8 9b fd c5 ff       	callq  47e4b0 <_f90_dope_vector_init>
  81e715:	48 89 85 20 f5 ff ff 	mov    %rax,-0xae0(%rbp)
  81e71c:	48 83 c0 1f          	add    $0x1f,%rax
  81e720:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81e724:	48 2b e0             	sub    %rax,%rsp
  81e727:	48 89 e0             	mov    %rsp,%rax
  81e72a:	48 89 85 28 f5 ff ff 	mov    %rax,-0xad8(%rbp)
  81e731:	48 89 85 a0 f2 ff ff 	mov    %rax,-0xd60(%rbp)
  81e738:	45 3b e7             	cmp    %r15d,%r12d
  81e73b:	0f 8c 8a 00 00 00    	jl     81e7cb <pre_step3d_mod_mp_pre_step3d_tile_+0xa32b>
  81e741:	48 83 c4 e0          	add    $0xffffffffffffffe0,%rsp
  81e745:	48 8d 85 8c f6 ff ff 	lea    -0x974(%rbp),%rax
  81e74c:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  81e752:	bf 6c 74 b3 00       	mov    $0xb3746c,%edi
  81e757:	ba 22 00 00 00       	mov    $0x22,%edx
  81e75c:	48 8d 8d 88 f6 ff ff 	lea    -0x978(%rbp),%rcx
  81e763:	44 89 78 f4          	mov    %r15d,-0xc(%rax)
  81e767:	4c 8d 85 80 f6 ff ff 	lea    -0x980(%rbp),%r8
  81e76e:	48 89 04 24          	mov    %rax,(%rsp)
  81e772:	4c 8d 8d 84 f6 ff ff 	lea    -0x97c(%rbp),%r9
  81e779:	44 89 54 24 08       	mov    %r10d,0x8(%rsp)
  81e77e:	44 89 54 24 10       	mov    %r10d,0x10(%rsp)
  81e783:	8b 70 e4             	mov    -0x1c(%rax),%esi
  81e786:	44 89 60 f8          	mov    %r12d,-0x8(%rax)
  81e78a:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%rax)
  81e791:	44 89 10             	mov    %r10d,(%rax)
  81e794:	e8 97 f6 be ff       	callq  40de30 <__kmpc_for_static_init_4@plt>
  81e799:	48 83 c4 20          	add    $0x20,%rsp
  81e79d:	8b 85 80 f6 ff ff    	mov    -0x980(%rbp),%eax
  81e7a3:	89 85 e0 f3 ff ff    	mov    %eax,-0xc20(%rbp)
  81e7a9:	41 3b c4             	cmp    %r12d,%eax
  81e7ac:	8b 85 84 f6 ff ff    	mov    -0x97c(%rbp),%eax
  81e7b2:	0f 8e 80 00 00 00    	jle    81e838 <pre_step3d_mod_mp_pre_step3d_tile_+0xa398>
  81e7b8:	bf 6c 74 b3 00       	mov    $0xb3746c,%edi
  81e7bd:	8b b5 70 f6 ff ff    	mov    -0x990(%rbp),%esi
  81e7c3:	c5 f8 77             	vzeroupper 
  81e7c6:	e8 35 f9 be ff       	callq  40e100 <__kmpc_for_static_fini@plt>
  81e7cb:	48 8b 95 28 f5 ff ff 	mov    -0xad8(%rbp),%rdx
  81e7d2:	48 8b 85 20 f5 ff ff 	mov    -0xae0(%rbp),%rax
  81e7d9:	48 83 c0 1f          	add    $0x1f,%rax
  81e7dd:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81e7e1:	48 03 e0             	add    %rax,%rsp
  81e7e4:	48 8b 95 10 f5 ff ff 	mov    -0xaf0(%rbp),%rdx
  81e7eb:	48 8b 85 18 f5 ff ff 	mov    -0xae8(%rbp),%rax
  81e7f2:	48 83 c0 1f          	add    $0x1f,%rax
  81e7f6:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81e7fa:	48 03 e0             	add    %rax,%rsp
  81e7fd:	48 8b 95 00 f5 ff ff 	mov    -0xb00(%rbp),%rdx
  81e804:	48 8b 85 08 f5 ff ff 	mov    -0xaf8(%rbp),%rax
  81e80b:	48 83 c0 1f          	add    $0x1f,%rax
  81e80f:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  81e813:	48 03 e0             	add    %rax,%rsp
  81e816:	4c 8b bd 18 f6 ff ff 	mov    -0x9e8(%rbp),%r15
  81e81d:	4c 8b b5 20 f6 ff ff 	mov    -0x9e0(%rbp),%r14
  81e824:	4c 8b ad 28 f6 ff ff 	mov    -0x9d8(%rbp),%r13
  81e82b:	4c 8b a5 30 f6 ff ff 	mov    -0x9d0(%rbp),%r12
  81e832:	c9                   	leaveq 
  81e833:	48 89 dc             	mov    %rbx,%rsp
  81e836:	5b                   	pop    %rbx
  81e837:	c3                   	retq   
  81e838:	4c 8b 05 a1 d8 31 00 	mov    0x31d8a1(%rip),%r8        # b3c0e0 <mod_param_mp_n_+0x40>
  81e83f:	41 3b c4             	cmp    %r12d,%eax
  81e842:	4d 63 5d 00          	movslq 0x0(%r13),%r11
  81e846:	44 0f 4c e0          	cmovl  %eax,%r12d
  81e84a:	49 c1 e0 02          	shl    $0x2,%r8
  81e84e:	49 f7 d8             	neg    %r8
  81e851:	4c 03 05 48 d8 31 00 	add    0x31d848(%rip),%r8        # b3c0a0 <mod_param_mp_n_>
  81e858:	48 8b 35 21 d8 31 00 	mov    0x31d821(%rip),%rsi        # b3c080 <mod_param_mp_nt_+0x40>
  81e85f:	48 c1 e6 02          	shl    $0x2,%rsi
  81e863:	43 8b 04 98          	mov    (%r8,%r11,4),%eax
  81e867:	48 f7 de             	neg    %rsi
  81e86a:	4c 8b 05 0f cb 31 00 	mov    0x31cb0f(%rip),%r8        # b3b380 <mod_scalars_mp_dt_+0x40>
  81e871:	49 f7 d8             	neg    %r8
  81e874:	4c 8b 95 d0 f3 ff ff 	mov    -0xc30(%rbp),%r10
  81e87b:	4d 03 c3             	add    %r11,%r8
  81e87e:	4c 29 95 d8 f3 ff ff 	sub    %r10,-0xc28(%rbp)
  81e885:	49 c1 e2 03          	shl    $0x3,%r10
  81e889:	4c 89 95 d0 f3 ff ff 	mov    %r10,-0xc30(%rbp)
  81e890:	4c 8b 15 a9 ca 31 00 	mov    0x31caa9(%rip),%r10        # b3b340 <mod_scalars_mp_dt_>
  81e897:	48 03 35 a2 d7 31 00 	add    0x31d7a2(%rip),%rsi        # b3c040 <mod_param_mp_nt_>
  81e89e:	48 8b 0d 7b da 31 00 	mov    0x31da7b(%rip),%rcx        # b3c320 <mod_scalars_mp_iic_+0x40>
  81e8a5:	48 c1 e1 02          	shl    $0x2,%rcx
  81e8a9:	48 f7 d9             	neg    %rcx
  81e8ac:	c4 81 7b 10 04 c2    	vmovsd (%r10,%r8,8),%xmm0
  81e8b2:	4c 8b 85 d0 f1 ff ff 	mov    -0xe30(%rbp),%r8
  81e8b9:	4d 63 0e             	movslq (%r14),%r9
  81e8bc:	4a 63 3c 9e          	movslq (%rsi,%r11,4),%rdi
  81e8c0:	48 03 0d 19 da 31 00 	add    0x31da19(%rip),%rcx        # b3c2e0 <mod_scalars_mp_iic_>
  81e8c7:	4c 89 8d e8 f3 ff ff 	mov    %r9,-0xc18(%rbp)
  81e8ce:	48 89 bd a8 f8 ff ff 	mov    %rdi,-0x758(%rbp)
  81e8d5:	44 8b 8d e0 f3 ff ff 	mov    -0xc20(%rbp),%r9d
  81e8dc:	45 2b e1             	sub    %r9d,%r12d
  81e8df:	48 8b 35 7a 4f 32 00 	mov    0x324f7a(%rip),%rsi        # b43860 <mod_sources_mp_nsrc_+0x40>
  81e8e6:	41 ff c4             	inc    %r12d
  81e8e9:	48 8b 3d d0 4e 32 00 	mov    0x324ed0(%rip),%rdi        # b437c0 <mod_sources_mp_sources_>
  81e8f0:	48 8b 15 e9 4d 32 00 	mov    0x324de9(%rip),%rdx        # b436e0 <mod_scalars_mp_ntfirst_+0x40>
  81e8f7:	48 c1 e2 02          	shl    $0x2,%rdx
  81e8fb:	48 89 b5 00 f4 ff ff 	mov    %rsi,-0xc00(%rbp)
  81e902:	48 f7 da             	neg    %rdx
  81e905:	48 89 bd f8 f5 ff ff 	mov    %rdi,-0xa08(%rbp)
  81e90c:	4d 8b 10             	mov    (%r8),%r10
  81e90f:	49 8b 78 38          	mov    0x38(%r8),%rdi
  81e913:	49 8b 70 50          	mov    0x50(%r8),%rsi
  81e917:	44 89 a5 78 f6 ff ff 	mov    %r12d,-0x988(%rbp)
  81e91e:	4c 8b 2d eb fb 31 00 	mov    0x31fbeb(%rip),%r13        # b3e510 <mod_scalars_mp_ltracersrc_+0x30>
  81e925:	4c 8b 85 c0 f1 ff ff 	mov    -0xe40(%rbp),%r8
  81e92c:	46 8b 24 99          	mov    (%rcx,%r11,4),%r12d
  81e930:	4c 89 ad 90 f8 ff ff 	mov    %r13,-0x770(%rbp)
  81e937:	48 03 15 62 4d 32 00 	add    0x324d62(%rip),%rdx        # b436a0 <mod_scalars_mp_ntfirst_>
  81e93e:	44 89 a5 98 f8 ff ff 	mov    %r12d,-0x768(%rbp)
  81e945:	4c 8b 2d 94 fb 31 00 	mov    0x31fb94(%rip),%r13        # b3e4e0 <mod_scalars_mp_ltracersrc_>
  81e94c:	4c 8b 25 dd fb 31 00 	mov    0x31fbdd(%rip),%r12        # b3e530 <mod_scalars_mp_ltracersrc_+0x50>
  81e953:	4c 89 ad 10 f4 ff ff 	mov    %r13,-0xbf0(%rbp)
  81e95a:	4c 89 a5 20 f4 ff ff 	mov    %r12,-0xbe0(%rbp)
  81e961:	4c 8b ad c8 f1 ff ff 	mov    -0xe38(%rbp),%r13
  81e968:	4c 8b 35 b1 fb 31 00 	mov    0x31fbb1(%rip),%r14        # b3e520 <mod_scalars_mp_ltracersrc_+0x40>
  81e96f:	4d 8b 20             	mov    (%r8),%r12
  81e972:	4c 89 9d 40 f6 ff ff 	mov    %r11,-0x9c0(%rbp)
  81e979:	4c 89 b5 f0 f3 ff ff 	mov    %r14,-0xc10(%rbp)
  81e980:	46 8b 3c 9a          	mov    (%rdx,%r11,4),%r15d
  81e984:	4c 89 a5 50 f4 ff ff 	mov    %r12,-0xbb0(%rbp)
  81e98b:	4c 8b 1d 8e 4e 32 00 	mov    0x324e8e(%rip),%r11        # b43820 <mod_sources_mp_nsrc_>
  81e992:	4c 8b 35 67 4e 32 00 	mov    0x324e67(%rip),%r14        # b43800 <mod_sources_mp_sources_+0x40>
  81e999:	4c 8b a5 b8 f1 ff ff 	mov    -0xe48(%rbp),%r12
  81e9a0:	48 8b 95 e0 f1 ff ff 	mov    -0xe20(%rbp),%rdx
  81e9a7:	48 8b 0d 8a fb 31 00 	mov    0x31fb8a(%rip),%rcx        # b3e538 <mod_scalars_mp_ltracersrc_+0x58>
  81e9ae:	44 89 bd a0 f8 ff ff 	mov    %r15d,-0x760(%rbp)
  81e9b5:	4c 89 9d f8 f3 ff ff 	mov    %r11,-0xc08(%rbp)
  81e9bc:	4c 89 b5 08 f4 ff ff 	mov    %r14,-0xbf8(%rbp)
  81e9c3:	48 89 8d 18 f4 ff ff 	mov    %rcx,-0xbe8(%rbp)
  81e9ca:	48 89 95 30 f4 ff ff 	mov    %rdx,-0xbd0(%rbp)
  81e9d1:	4c 8b 3d 08 2c 32 00 	mov    0x322c08(%rip),%r15        # b415e0 <mod_scalars_mp_lwsrc_>
  81e9d8:	4c 8b 1d 41 2c 32 00 	mov    0x322c41(%rip),%r11        # b41620 <mod_scalars_mp_lwsrc_+0x40>
  81e9df:	4d 8b 75 00          	mov    0x0(%r13),%r14
  81e9e3:	49 8b 4d 38          	mov    0x38(%r13),%rcx
  81e9e7:	49 8b 90 98 00 00 00 	mov    0x98(%r8),%rdx
  81e9ee:	4c 89 bd 28 f4 ff ff 	mov    %r15,-0xbd8(%rbp)
  81e9f5:	4c 89 9d 38 f4 ff ff 	mov    %r11,-0xbc8(%rbp)
  81e9fc:	4c 89 95 c0 f5 ff ff 	mov    %r10,-0xa40(%rbp)
  81ea03:	48 89 bd 48 fa ff ff 	mov    %rdi,-0x5b8(%rbp)
  81ea0a:	4c 89 b5 c8 f5 ff ff 	mov    %r14,-0xa38(%rbp)
  81ea11:	49 8b 7d 50          	mov    0x50(%r13),%rdi
  81ea15:	48 89 8d c0 f9 ff ff 	mov    %rcx,-0x640(%rbp)
  81ea1c:	48 89 95 30 f8 ff ff 	mov    %rdx,-0x7d0(%rbp)
  81ea23:	4d 8b b8 80 00 00 00 	mov    0x80(%r8),%r15
  81ea2a:	4d 8b 58 68          	mov    0x68(%r8),%r11
  81ea2e:	4d 8b 50 50          	mov    0x50(%r8),%r10
  81ea32:	4d 8b 70 38          	mov    0x38(%r8),%r14
  81ea36:	4d 8b 2c 24          	mov    (%r12),%r13
  81ea3a:	49 8b 54 24 38       	mov    0x38(%r12),%rdx
  81ea3f:	49 8b 4c 24 68       	mov    0x68(%r12),%rcx
  81ea44:	4d 8b 44 24 50       	mov    0x50(%r12),%r8
  81ea49:	4c 8b a5 a8 f1 ff ff 	mov    -0xe58(%rbp),%r12
  81ea50:	4c 89 9d 28 fa ff ff 	mov    %r11,-0x5d8(%rbp)
  81ea57:	4c 89 bd 48 f4 ff ff 	mov    %r15,-0xbb8(%rbp)
  81ea5e:	4d 8b 1c 24          	mov    (%r12),%r11
  81ea62:	4c 89 9d b8 f5 ff ff 	mov    %r11,-0xa48(%rbp)
  81ea69:	4d 8b 5c 24 38       	mov    0x38(%r12),%r11
  81ea6e:	4c 8b bd b0 f1 ff ff 	mov    -0xe50(%rbp),%r15
  81ea75:	4c 89 9d c8 f9 ff ff 	mov    %r11,-0x638(%rbp)
  81ea7c:	4c 8b 9d a0 f1 ff ff 	mov    -0xe60(%rbp),%r11
  81ea83:	4c 89 95 40 f4 ff ff 	mov    %r10,-0xbc0(%rbp)
  81ea8a:	4c 89 b5 58 fa ff ff 	mov    %r14,-0x5a8(%rbp)
  81ea91:	4c 89 ad f0 f4 ff ff 	mov    %r13,-0xb10(%rbp)
  81ea98:	48 89 95 70 fa ff ff 	mov    %rdx,-0x590(%rbp)
  81ea9f:	48 89 8d b8 f8 ff ff 	mov    %rcx,-0x748(%rbp)
  81eaa6:	4d 8b 2f             	mov    (%r15),%r13
  81eaa9:	4d 8b 77 38          	mov    0x38(%r15),%r14
  81eaad:	49 8b 57 68          	mov    0x68(%r15),%rdx
  81eab1:	4c 2b ea             	sub    %rdx,%r13
  81eab4:	4d 8b 57 50          	mov    0x50(%r15),%r10
  81eab8:	49 8b 4c 24 68       	mov    0x68(%r12),%rcx
  81eabd:	4d 8b 7c 24 50       	mov    0x50(%r12),%r15
  81eac2:	4d 8b 63 68          	mov    0x68(%r11),%r12
  81eac6:	48 89 8d 00 f8 ff ff 	mov    %rcx,-0x800(%rbp)
  81eacd:	4c 89 a5 08 f8 ff ff 	mov    %r12,-0x7f8(%rbp)
  81ead4:	49 8b 0b             	mov    (%r11),%rcx
  81ead7:	4d 8b 63 50          	mov    0x50(%r11),%r12
  81eadb:	4d 8b 5b 38          	mov    0x38(%r11),%r11
  81eadf:	89 85 d0 f4 ff ff    	mov    %eax,-0xb30(%rbp)
  81eae5:	48 63 c0             	movslq %eax,%rax
  81eae8:	4c 89 9d b8 f9 ff ff 	mov    %r11,-0x648(%rbp)
  81eaef:	48 89 85 30 fa ff ff 	mov    %rax,-0x5d0(%rbp)
  81eaf6:	48 63 85 b8 f3 ff ff 	movslq -0xc48(%rbp),%rax
  81eafd:	4c 8b 9d 20 fa ff ff 	mov    -0x5e0(%rbp),%r11
  81eb04:	48 89 85 38 fa ff ff 	mov    %rax,-0x5c8(%rbp)
  81eb0b:	49 2b c3             	sub    %r11,%rax
  81eb0e:	48 ff c0             	inc    %rax
  81eb11:	48 89 85 68 fa ff ff 	mov    %rax,-0x598(%rbp)
  81eb18:	48 8b 85 c0 f3 ff ff 	mov    -0xc40(%rbp),%rax
  81eb1f:	48 89 8d b0 f5 ff ff 	mov    %rcx,-0xa50(%rbp)
  81eb26:	48 89 c1             	mov    %rax,%rcx
  81eb29:	49 0f af ca          	imul   %r10,%rcx
  81eb2d:	c5 fd 10 0d 4b 62 0a 	vmovupd 0xa624b(%rip),%ymm1        # 8c4d80 <var$630.126.450+0xc0>
  81eb34:	00 
  81eb35:	c5 7b 10 25 db 84 0a 	vmovsd 0xa84db(%rip),%xmm12        # 8c7018 <__STRLITPACK_199.115+0x88>
  81eb3c:	00 
  81eb3d:	c5 fb 10 1d bb 84 0a 	vmovsd 0xa84bb(%rip),%xmm3        # 8c7000 <__STRLITPACK_199.115+0x70>
  81eb44:	00 
  81eb45:	c5 f9 10 15 03 80 0a 	vmovupd 0xa8003(%rip),%xmm2        # 8c6b50 <__STRLITPACK_124.84+0x50>
  81eb4c:	00 
  81eb4d:	c5 7b 59 1d d3 8c 0a 	vmulsd 0xa8cd3(%rip),%xmm0,%xmm11        # 8c7828 <__STRLITPACK_199.115+0x898>
  81eb54:	00 
  81eb55:	c5 1b 59 d0          	vmulsd %xmm0,%xmm12,%xmm10
  81eb59:	4d 63 c9             	movslq %r9d,%r9
  81eb5c:	48 f7 d9             	neg    %rcx
  81eb5f:	48 89 95 f8 f7 ff ff 	mov    %rdx,-0x808(%rbp)
  81eb66:	48 03 ca             	add    %rdx,%rcx
  81eb69:	4c 89 ca             	mov    %r9,%rdx
  81eb6c:	4c 89 85 88 f5 ff ff 	mov    %r8,-0xa78(%rbp)
  81eb73:	49 0f af d0          	imul   %r8,%rdx
  81eb77:	4d 89 c8             	mov    %r9,%r8
  81eb7a:	4c 89 a5 a0 f5 ff ff 	mov    %r12,-0xa60(%rbp)
  81eb81:	4d 0f af c4          	imul   %r12,%r8
  81eb85:	4d 89 cc             	mov    %r9,%r12
  81eb88:	4d 0f af e7          	imul   %r15,%r12
  81eb8c:	4c 89 8d 80 f4 ff ff 	mov    %r9,-0xb80(%rbp)
  81eb93:	48 89 95 e8 f4 ff ff 	mov    %rdx,-0xb18(%rbp)
  81eb9a:	4c 89 ca             	mov    %r9,%rdx
  81eb9d:	4c 89 a5 d8 f1 ff ff 	mov    %r12,-0xe28(%rbp)
  81eba4:	4d 89 cc             	mov    %r9,%r12
  81eba7:	4d 0f af ca          	imul   %r10,%r9
  81ebab:	48 0f af d6          	imul   %rsi,%rdx
  81ebaf:	4c 0f af e7          	imul   %rdi,%r12
  81ebb3:	4c 89 85 98 f1 ff ff 	mov    %r8,-0xe68(%rbp)
  81ebba:	4c 8b 85 c8 f3 ff ff 	mov    -0xc38(%rbp),%r8
  81ebc1:	4c 89 95 98 f5 ff ff 	mov    %r10,-0xa68(%rbp)
  81ebc8:	4d 89 c2             	mov    %r8,%r10
  81ebcb:	49 f7 da             	neg    %r10
  81ebce:	4d 03 d3             	add    %r11,%r10
  81ebd1:	4c 89 b5 b0 f9 ff ff 	mov    %r14,-0x650(%rbp)
  81ebd8:	4d 0f af d6          	imul   %r14,%r10
  81ebdc:	4c 89 8d 00 f3 ff ff 	mov    %r9,-0xd00(%rbp)
  81ebe3:	4d 8d 74 0d 00       	lea    0x0(%r13,%rcx,1),%r14
  81ebe8:	4d 03 f1             	add    %r9,%r14
  81ebeb:	49 89 c1             	mov    %rax,%r9
  81ebee:	4c 0f af ce          	imul   %rsi,%r9
  81ebf2:	4d 03 d6             	add    %r14,%r10
  81ebf5:	4d 89 de             	mov    %r11,%r14
  81ebf8:	4c 89 95 48 f5 ff ff 	mov    %r10,-0xab8(%rbp)
  81ebff:	4c 8b 95 c0 f5 ff ff 	mov    -0xa40(%rbp),%r10
  81ec06:	48 89 8d d0 f5 ff ff 	mov    %rcx,-0xa30(%rbp)
  81ec0d:	4d 2b d1             	sub    %r9,%r10
  81ec10:	48 89 c1             	mov    %rax,%rcx
  81ec13:	4c 2b ca             	sub    %rdx,%r9
  81ec16:	48 0f af cf          	imul   %rdi,%rcx
  81ec1a:	48 89 b5 80 f5 ff ff 	mov    %rsi,-0xa80(%rbp)
  81ec21:	4c 89 c6             	mov    %r8,%rsi
  81ec24:	4c 89 8d 08 f3 ff ff 	mov    %r9,-0xcf8(%rbp)
  81ec2b:	4c 8b 8d 48 fa ff ff 	mov    -0x5b8(%rbp),%r9
  81ec32:	4c 89 ad 90 f1 ff ff 	mov    %r13,-0xe70(%rbp)
  81ec39:	4d 8d 2c 12          	lea    (%r10,%rdx,1),%r13
  81ec3d:	4c 89 95 78 f4 ff ff 	mov    %r10,-0xb88(%rbp)
  81ec44:	4d 89 da             	mov    %r11,%r10
  81ec47:	49 0f af f1          	imul   %r9,%rsi
  81ec4b:	4d 0f af f1          	imul   %r9,%r14
  81ec4f:	4d 89 c1             	mov    %r8,%r9
  81ec52:	48 89 bd 78 f5 ff ff 	mov    %rdi,-0xa88(%rbp)
  81ec59:	48 8b bd c0 f9 ff ff 	mov    -0x640(%rbp),%rdi
  81ec60:	4c 0f af cf          	imul   %rdi,%r9
  81ec64:	4c 0f af d7          	imul   %rdi,%r10
  81ec68:	48 89 95 e0 f4 ff ff 	mov    %rdx,-0xb20(%rbp)
  81ec6f:	48 8b 95 c8 f5 ff ff 	mov    -0xa38(%rbp),%rdx
  81ec76:	48 2b d1             	sub    %rcx,%rdx
  81ec79:	49 2b cc             	sub    %r12,%rcx
  81ec7c:	4c 89 a5 d8 f4 ff ff 	mov    %r12,-0xb28(%rbp)
  81ec83:	4c 89 8d 70 f4 ff ff 	mov    %r9,-0xb90(%rbp)
  81ec8a:	4d 2b ca             	sub    %r10,%r9
  81ec8d:	48 89 95 88 f4 ff ff 	mov    %rdx,-0xb78(%rbp)
  81ec94:	48 89 8d 10 f3 ff ff 	mov    %rcx,-0xcf0(%rbp)
  81ec9b:	4c 03 e2             	add    %rdx,%r12
  81ec9e:	4d 2b e1             	sub    %r9,%r12
  81eca1:	49 89 c1             	mov    %rax,%r9
  81eca4:	4c 89 c2             	mov    %r8,%rdx
  81eca7:	4c 89 d9             	mov    %r11,%rcx
  81ecaa:	4d 0f af cf          	imul   %r15,%r9
  81ecae:	4c 89 bd 90 f5 ff ff 	mov    %r15,-0xa70(%rbp)
  81ecb5:	4c 8b bd c8 f9 ff ff 	mov    -0x638(%rbp),%r15
  81ecbc:	49 0f af d7          	imul   %r15,%rdx
  81ecc0:	49 0f af cf          	imul   %r15,%rcx
  81ecc4:	48 89 b5 68 f4 ff ff 	mov    %rsi,-0xb98(%rbp)
  81eccb:	49 2b f6             	sub    %r14,%rsi
  81ecce:	4c 89 95 60 f4 ff ff 	mov    %r10,-0xba0(%rbp)
  81ecd5:	4c 2b ee             	sub    %rsi,%r13
  81ecd8:	4c 8b 95 b8 f5 ff ff 	mov    -0xa48(%rbp),%r10
  81ecdf:	4c 89 d6             	mov    %r10,%rsi
  81ece2:	48 8b bd 00 f8 ff ff 	mov    -0x800(%rbp),%rdi
  81ece9:	48 2b f7             	sub    %rdi,%rsi
  81ecec:	49 2b f9             	sub    %r9,%rdi
  81ecef:	4c 89 b5 58 f4 ff ff 	mov    %r14,-0xba8(%rbp)
  81ecf6:	4c 8b b5 d8 f1 ff ff 	mov    -0xe28(%rbp),%r14
  81ecfd:	4d 2b ce             	sub    %r14,%r9
  81ed00:	4c 2b f2             	sub    %rdx,%r14
  81ed03:	48 2b d1             	sub    %rcx,%rdx
  81ed06:	49 03 d1             	add    %r9,%rdx
  81ed09:	48 f7 da             	neg    %rdx
  81ed0c:	4c 89 ad 38 f5 ff ff 	mov    %r13,-0xac8(%rbp)
  81ed13:	4c 8d 2c 3e          	lea    (%rsi,%rdi,1),%r13
  81ed17:	49 03 d2             	add    %r10,%rdx
  81ed1a:	4d 03 ee             	add    %r14,%r13
  81ed1d:	4c 89 a5 40 f5 ff ff 	mov    %r12,-0xac0(%rbp)
  81ed24:	49 89 c4             	mov    %rax,%r12
  81ed27:	4d 89 c6             	mov    %r8,%r14
  81ed2a:	49 03 d7             	add    %r15,%rdx
  81ed2d:	48 89 95 f0 f5 ff ff 	mov    %rdx,-0xa10(%rbp)
  81ed34:	4c 03 e9             	add    %rcx,%r13
  81ed37:	48 8b 95 a0 f5 ff ff 	mov    -0xa60(%rbp),%rdx
  81ed3e:	4c 8b 95 b8 f9 ff ff 	mov    -0x648(%rbp),%r10
  81ed45:	4c 0f af e2          	imul   %rdx,%r12
  81ed49:	4d 0f af f2          	imul   %r10,%r14
  81ed4d:	48 0f af 85 88 f5 ff 	imul   -0xa78(%rbp),%rax
  81ed54:	ff 
  81ed55:	4c 89 ad 50 f5 ff ff 	mov    %r13,-0xab0(%rbp)
  81ed5c:	4d 89 dd             	mov    %r11,%r13
  81ed5f:	4d 0f af ea          	imul   %r10,%r13
  81ed63:	48 8b 8d b0 f5 ff ff 	mov    -0xa50(%rbp),%rcx
  81ed6a:	48 89 bd a8 f5 ff ff 	mov    %rdi,-0xa58(%rbp)
  81ed71:	48 89 cf             	mov    %rcx,%rdi
  81ed74:	4c 89 8d 18 f3 ff ff 	mov    %r9,-0xce8(%rbp)
  81ed7b:	4c 8b 8d 08 f8 ff ff 	mov    -0x7f8(%rbp),%r9
  81ed82:	49 2b f9             	sub    %r9,%rdi
  81ed85:	4c 8b bd 98 f1 ff ff 	mov    -0xe68(%rbp),%r15
  81ed8c:	4d 2b cc             	sub    %r12,%r9
  81ed8f:	4d 2b e7             	sub    %r15,%r12
  81ed92:	4d 2b fe             	sub    %r14,%r15
  81ed95:	49 f7 de             	neg    %r14
  81ed98:	4c 03 f2             	add    %rdx,%r14
  81ed9b:	49 f7 de             	neg    %r14
  81ed9e:	4e 8d 14 0f          	lea    (%rdi,%r9,1),%r10
  81eda2:	4d 03 f4             	add    %r12,%r14
  81eda5:	4d 03 d7             	add    %r15,%r10
  81eda8:	49 f7 de             	neg    %r14
  81edab:	4d 03 d5             	add    %r13,%r10
  81edae:	4c 03 f1             	add    %rcx,%r14
  81edb1:	4d 03 f5             	add    %r13,%r14
  81edb4:	4d 89 c5             	mov    %r8,%r13
  81edb7:	4c 0f af ad 70 fa ff 	imul   -0x590(%rbp),%r13
  81edbe:	ff 
  81edbf:	48 8b 8d e8 f4 ff ff 	mov    -0xb18(%rbp),%rcx
  81edc6:	49 c1 e0 03          	shl    $0x3,%r8
  81edca:	4c 89 b5 e8 f5 ff ff 	mov    %r14,-0xa18(%rbp)
  81edd1:	49 89 ce             	mov    %rcx,%r14
  81edd4:	4c 89 ad a0 f4 ff ff 	mov    %r13,-0xb60(%rbp)
  81eddb:	4d 2b f5             	sub    %r13,%r14
  81edde:	4d 89 dd             	mov    %r11,%r13
  81ede1:	49 c1 e3 03          	shl    $0x3,%r11
  81ede5:	4c 0f af ad 70 fa ff 	imul   -0x590(%rbp),%r13
  81edec:	ff 
  81eded:	48 8b 95 f0 f4 ff ff 	mov    -0xb10(%rbp),%rdx
  81edf4:	4c 89 95 58 f5 ff ff 	mov    %r10,-0xaa8(%rbp)
  81edfb:	49 89 d2             	mov    %rdx,%r10
  81edfe:	4c 2b d0             	sub    %rax,%r10
  81ee01:	4c 89 ad b0 f4 ff ff 	mov    %r13,-0xb50(%rbp)
  81ee08:	4c 89 b5 b8 f4 ff ff 	mov    %r14,-0xb48(%rbp)
  81ee0f:	48 89 85 c0 f4 ff ff 	mov    %rax,-0xb40(%rbp)
  81ee16:	c7 85 60 f6 ff ff 00 	movl   $0x0,-0x9a0(%rbp)
  81ee1d:	00 00 00 
  81ee20:	4f 8d 3c 32          	lea    (%r10,%r14,1),%r15
  81ee24:	4c 89 bd a8 f4 ff ff 	mov    %r15,-0xb58(%rbp)
  81ee2b:	4d 03 fd             	add    %r13,%r15
  81ee2e:	4c 89 bd 60 f5 ff ff 	mov    %r15,-0xaa0(%rbp)
  81ee35:	4c 8b bd b8 f8 ff ff 	mov    -0x748(%rbp),%r15
  81ee3c:	4c 03 fa             	add    %rdx,%r15
  81ee3f:	4c 2b f8             	sub    %rax,%r15
  81ee42:	4d 03 fe             	add    %r14,%r15
  81ee45:	4d 03 fd             	add    %r13,%r15
  81ee48:	4d 89 dd             	mov    %r11,%r13
  81ee4b:	4c 89 bd 68 f5 ff ff 	mov    %r15,-0xa98(%rbp)
  81ee52:	4d 2b d8             	sub    %r8,%r11
  81ee55:	4c 8b bd d8 f3 ff ff 	mov    -0xc28(%rbp),%r15
  81ee5c:	49 03 fb             	add    %r11,%rdi
  81ee5f:	4c 2b ad d0 f3 ff ff 	sub    -0xc30(%rbp),%r13
  81ee66:	49 03 f3             	add    %r11,%rsi
  81ee69:	4c 89 ad 98 f4 ff ff 	mov    %r13,-0xb68(%rbp)
  81ee70:	4c 03 cf             	add    %rdi,%r9
  81ee73:	48 8b bd a8 f5 ff ff 	mov    -0xa58(%rbp),%rdi
  81ee7a:	4e 8d 34 fd 08 00 00 	lea    0x8(,%r15,8),%r14
  81ee81:	00 
  81ee82:	4c 89 b5 40 fa ff ff 	mov    %r14,-0x5c0(%rbp)
  81ee89:	4f 8d 74 fd 00       	lea    0x0(%r13,%r15,8),%r14
  81ee8e:	4c 89 b5 90 f4 ff ff 	mov    %r14,-0xb70(%rbp)
  81ee95:	48 03 fe             	add    %rsi,%rdi
  81ee98:	4c 8b ad 40 f2 ff ff 	mov    -0xdc0(%rbp),%r13
  81ee9f:	4d 03 d3             	add    %r11,%r10
  81eea2:	4d 03 ee             	add    %r14,%r13
  81eea5:	4c 03 d1             	add    %rcx,%r10
  81eea8:	4c 8b b5 b0 f5 ff ff 	mov    -0xa50(%rbp),%r14
  81eeaf:	4d 03 f3             	add    %r11,%r14
  81eeb2:	4d 2b f4             	sub    %r12,%r14
  81eeb5:	4e 8d 24 1a          	lea    (%rdx,%r11,1),%r12
  81eeb9:	48 8b 95 b8 f8 ff ff 	mov    -0x748(%rbp),%rdx
  81eec0:	48 2b d0             	sub    %rax,%rdx
  81eec3:	48 03 bd d8 f1 ff ff 	add    -0xe28(%rbp),%rdi
  81eeca:	49 03 d4             	add    %r12,%rdx
  81eecd:	48 8b b5 90 f1 ff ff 	mov    -0xe70(%rbp),%rsi
  81eed4:	48 03 d1             	add    %rcx,%rdx
  81eed7:	49 03 f3             	add    %r11,%rsi
  81eeda:	48 8b 85 68 fa ff ff 	mov    -0x598(%rbp),%rax
  81eee1:	4c 8b 85 d0 f5 ff ff 	mov    -0xa30(%rbp),%r8
  81eee8:	89 c1                	mov    %eax,%ecx
  81eeea:	4c 89 ad 90 f9 ff ff 	mov    %r13,-0x670(%rbp)
  81eef1:	4c 03 c6             	add    %rsi,%r8
  81eef4:	48 89 bd a8 f5 ff ff 	mov    %rdi,-0xa58(%rbp)
  81eefb:	83 e0 fe             	and    $0xfffffffe,%eax
  81eefe:	48 8b bd c8 f5 ff ff 	mov    -0xa38(%rbp),%rdi
  81ef05:	83 e1 fc             	and    $0xfffffffc,%ecx
  81ef08:	48 8b b5 c0 f5 ff ff 	mov    -0xa40(%rbp),%rsi
  81ef0f:	49 03 fb             	add    %r11,%rdi
  81ef12:	4c 8b ad b8 f5 ff ff 	mov    -0xa48(%rbp),%r13
  81ef19:	49 03 f3             	add    %r11,%rsi
  81ef1c:	4d 03 eb             	add    %r11,%r13
  81ef1f:	4c 03 8d 98 f1 ff ff 	add    -0xe68(%rbp),%r9
  81ef26:	4c 03 85 00 f3 ff ff 	add    -0xd00(%rbp),%r8
  81ef2d:	48 2b bd 10 f3 ff ff 	sub    -0xcf0(%rbp),%rdi
  81ef34:	48 2b b5 08 f3 ff ff 	sub    -0xcf8(%rbp),%rsi
  81ef3b:	4c 2b ad 18 f3 ff ff 	sub    -0xce8(%rbp),%r13
  81ef42:	4c 03 b5 a0 f5 ff ff 	add    -0xa60(%rbp),%r14
  81ef49:	48 63 c0             	movslq %eax,%rax
  81ef4c:	4c 89 a5 c8 f4 ff ff 	mov    %r12,-0xb38(%rbp)
  81ef53:	48 89 95 70 f5 ff ff 	mov    %rdx,-0xa90(%rbp)
  81ef5a:	48 63 c9             	movslq %ecx,%rcx
  81ef5d:	48 89 85 60 fa ff ff 	mov    %rax,-0x5a0(%rbp)
  81ef64:	4c 89 8d d8 f5 ff ff 	mov    %r9,-0xa28(%rbp)
  81ef6b:	48 89 8d c8 fa ff ff 	mov    %rcx,-0x538(%rbp)
  81ef72:	33 c9                	xor    %ecx,%ecx
  81ef74:	44 8b a5 78 f6 ff ff 	mov    -0x988(%rbp),%r12d
  81ef7b:	48 8b 95 f0 f5 ff ff 	mov    -0xa10(%rbp),%rdx
  81ef82:	44 8b 8d 60 f6 ff ff 	mov    -0x9a0(%rbp),%r9d
  81ef89:	4c 89 b5 b0 f5 ff ff 	mov    %r14,-0xa50(%rbp)
  81ef90:	4c 89 ad b8 f5 ff ff 	mov    %r13,-0xa48(%rbp)
  81ef97:	48 89 b5 c0 f5 ff ff 	mov    %rsi,-0xa40(%rbp)
  81ef9e:	48 89 bd c8 f5 ff ff 	mov    %rdi,-0xa38(%rbp)
  81efa5:	4c 89 85 d0 f5 ff ff 	mov    %r8,-0xa30(%rbp)
  81efac:	4c 89 95 e0 f5 ff ff 	mov    %r10,-0xa20(%rbp)
  81efb3:	4c 89 9d f8 f4 ff ff 	mov    %r11,-0xb08(%rbp)
  81efba:	8b 85 98 f8 ff ff    	mov    -0x768(%rbp),%eax
  81efc0:	c4 c1 79 28 ea       	vmovapd %xmm10,%xmm5
  81efc5:	3b 85 a0 f8 ff ff    	cmp    -0x760(%rbp),%eax
  81efcb:	74 05                	je     81efd2 <pre_step3d_mod_mp_pre_step3d_tile_+0xab32>
  81efcd:	c4 c1 78 28 eb       	vmovaps %xmm11,%xmm5
  81efd2:	48 83 bd b0 f9 ff ff 	cmpq   $0x8,-0x650(%rbp)
  81efd9:	08 
  81efda:	0f 85 22 04 00 00    	jne    81f402 <pre_step3d_mod_mp_pre_step3d_tile_+0xaf62>
  81efe0:	48 83 bd 48 fa ff ff 	cmpq   $0x8,-0x5b8(%rbp)
  81efe7:	08 
  81efe8:	0f 85 14 04 00 00    	jne    81f402 <pre_step3d_mod_mp_pre_step3d_tile_+0xaf62>
  81efee:	48 83 bd c0 f9 ff ff 	cmpq   $0x8,-0x640(%rbp)
  81eff5:	08 
  81eff6:	0f 85 06 04 00 00    	jne    81f402 <pre_step3d_mod_mp_pre_step3d_tile_+0xaf62>
  81effc:	48 83 bd c8 f9 ff ff 	cmpq   $0x8,-0x638(%rbp)
  81f003:	08 
  81f004:	0f 85 f8 03 00 00    	jne    81f402 <pre_step3d_mod_mp_pre_step3d_tile_+0xaf62>
  81f00a:	48 83 bd b8 f9 ff ff 	cmpq   $0x8,-0x648(%rbp)
  81f011:	08 
  81f012:	0f 85 ea 03 00 00    	jne    81f402 <pre_step3d_mod_mp_pre_step3d_tile_+0xaf62>
  81f018:	48 83 bd 70 fa ff ff 	cmpq   $0x8,-0x590(%rbp)
  81f01f:	08 
  81f020:	0f 85 dc 03 00 00    	jne    81f402 <pre_step3d_mod_mp_pre_step3d_tile_+0xaf62>
  81f026:	45 33 e4             	xor    %r12d,%r12d
  81f029:	48 8b 85 90 f9 ff ff 	mov    -0x670(%rbp),%rax
  81f030:	45 33 d2             	xor    %r10d,%r10d
  81f033:	48 89 85 98 f7 ff ff 	mov    %rax,-0x868(%rbp)
  81f03a:	4c 89 95 a0 f7 ff ff 	mov    %r10,-0x860(%rbp)
  81f041:	4c 89 95 90 f7 ff ff 	mov    %r10,-0x870(%rbp)
  81f048:	48 83 bd 30 fa ff ff 	cmpq   $0x0,-0x5d0(%rbp)
  81f04f:	00 
  81f050:	0f 8e fd 08 00 00    	jle    81f953 <pre_step3d_mod_mp_pre_step3d_tile_+0xb4b3>
  81f056:	48 8b bd 90 f5 ff ff 	mov    -0xa70(%rbp),%rdi
  81f05d:	48 0f af f9          	imul   %rcx,%rdi
  81f061:	c5 fd 10 15 17 5d 0a 	vmovupd 0xa5d17(%rip),%ymm2        # 8c4d80 <var$630.126.450+0xc0>
  81f068:	00 
  81f069:	c5 fb 10 0d 8f 7f 0a 	vmovsd 0xa7f8f(%rip),%xmm1        # 8c7000 <__STRLITPACK_199.115+0x70>
  81f070:	00 
  81f071:	c4 e2 7d 19 c5       	vbroadcastsd %xmm5,%ymm0
  81f076:	4c 8b 85 a8 f5 ff ff 	mov    -0xa58(%rbp),%r8
  81f07d:	48 8b b5 88 f5 ff ff 	mov    -0xa78(%rbp),%rsi
  81f084:	4c 8b 9d a0 f5 ff ff 	mov    -0xa60(%rbp),%r11
  81f08b:	4c 8b b5 78 f5 ff ff 	mov    -0xa88(%rbp),%r14
  81f092:	4d 8d 3c 38          	lea    (%r8,%rdi,1),%r15
  81f096:	4c 8b ad 80 f5 ff ff 	mov    -0xa80(%rbp),%r13
  81f09d:	48 0f af f1          	imul   %rcx,%rsi
  81f0a1:	4c 0f af d9          	imul   %rcx,%r11
  81f0a5:	4c 0f af f1          	imul   %rcx,%r14
  81f0a9:	4c 0f af e9          	imul   %rcx,%r13
  81f0ad:	4c 8b 85 98 f5 ff ff 	mov    -0xa68(%rbp),%r8
  81f0b4:	4c 0f af c1          	imul   %rcx,%r8
  81f0b8:	48 8b 95 e0 f5 ff ff 	mov    -0xa20(%rbp),%rdx
  81f0bf:	48 8b 85 d8 f5 ff ff 	mov    -0xa28(%rbp),%rax
  81f0c6:	48 03 bd b8 f5 ff ff 	add    -0xa48(%rbp),%rdi
  81f0cd:	4c 03 b5 c8 f5 ff ff 	add    -0xa38(%rbp),%r14
  81f0d4:	48 03 d6             	add    %rsi,%rdx
  81f0d7:	48 03 b5 70 f5 ff ff 	add    -0xa90(%rbp),%rsi
  81f0de:	49 03 c3             	add    %r11,%rax
  81f0e1:	4c 03 9d b0 f5 ff ff 	add    -0xa50(%rbp),%r11
  81f0e8:	4c 03 ad c0 f5 ff ff 	add    -0xa40(%rbp),%r13
  81f0ef:	48 89 bd 30 f7 ff ff 	mov    %rdi,-0x8d0(%rbp)
  81f0f6:	48 89 b5 38 f7 ff ff 	mov    %rsi,-0x8c8(%rbp)
  81f0fd:	48 89 95 50 f7 ff ff 	mov    %rdx,-0x8b0(%rbp)
  81f104:	48 89 8d 68 f6 ff ff 	mov    %rcx,-0x998(%rbp)
  81f10b:	4c 03 85 d0 f5 ff ff 	add    -0xa30(%rbp),%r8
  81f112:	4c 89 d1             	mov    %r10,%rcx
  81f115:	48 8b b5 a0 f7 ff ff 	mov    -0x860(%rbp),%rsi
  81f11c:	48 8b bd 98 f7 ff ff 	mov    -0x868(%rbp),%rdi
  81f123:	48 8b 95 68 fa ff ff 	mov    -0x598(%rbp),%rdx
  81f12a:	4c 89 9d 28 f7 ff ff 	mov    %r11,-0x8d8(%rbp)
  81f131:	4c 89 ad 58 f7 ff ff 	mov    %r13,-0x8a8(%rbp)
  81f138:	4c 89 b5 60 f7 ff ff 	mov    %r14,-0x8a0(%rbp)
  81f13f:	4c 89 bd 40 f7 ff ff 	mov    %r15,-0x8c0(%rbp)
  81f146:	48 89 85 48 f7 ff ff 	mov    %rax,-0x8b8(%rbp)
  81f14d:	4c 89 a5 28 f8 ff ff 	mov    %r12,-0x7d8(%rbp)
  81f154:	44 89 8d 60 f6 ff ff 	mov    %r9d,-0x9a0(%rbp)
  81f15b:	48 8b 85 38 fa ff ff 	mov    -0x5c8(%rbp),%rax
  81f162:	48 3b 85 20 fa ff ff 	cmp    -0x5e0(%rbp),%rax
  81f169:	0f 8c 4d 02 00 00    	jl     81f3bc <pre_step3d_mod_mp_pre_step3d_tile_+0xaf1c>
  81f16f:	48 83 fa 04          	cmp    $0x4,%rdx
  81f173:	0f 8c a1 58 00 00    	jl     824a1a <pre_step3d_mod_mp_pre_step3d_tile_+0x1057a>
  81f179:	4c 8b a5 40 f7 ff ff 	mov    -0x8c0(%rbp),%r12
  81f180:	45 33 ed             	xor    %r13d,%r13d
  81f183:	4c 8b 8d 30 f7 ff ff 	mov    -0x8d0(%rbp),%r9
  81f18a:	4c 8b bd 28 f7 ff ff 	mov    -0x8d8(%rbp),%r15
  81f191:	4c 8b b5 48 f7 ff ff 	mov    -0x8b8(%rbp),%r14
  81f198:	4f 8d 1c 14          	lea    (%r12,%r10,1),%r11
  81f19c:	4c 89 9d 88 f7 ff ff 	mov    %r11,-0x878(%rbp)
  81f1a3:	4f 8d 24 11          	lea    (%r9,%r10,1),%r12
  81f1a7:	48 89 bd 68 f7 ff ff 	mov    %rdi,-0x898(%rbp)
  81f1ae:	4d 8d 0c 37          	lea    (%r15,%rsi,1),%r9
  81f1b2:	4c 8b bd 38 f7 ff ff 	mov    -0x8c8(%rbp),%r15
  81f1b9:	4d 8d 1c 36          	lea    (%r14,%rsi,1),%r11
  81f1bd:	4c 8b b5 50 f7 ff ff 	mov    -0x8b0(%rbp),%r14
  81f1c4:	48 8b 85 c8 fa ff ff 	mov    -0x538(%rbp),%rax
  81f1cb:	48 89 8d 90 f7 ff ff 	mov    %rcx,-0x870(%rbp)
  81f1d2:	4c 03 f9             	add    %rcx,%r15
  81f1d5:	4c 89 bd 70 f7 ff ff 	mov    %r15,-0x890(%rbp)
  81f1dc:	4c 03 f1             	add    %rcx,%r14
  81f1df:	48 89 b5 a0 f7 ff ff 	mov    %rsi,-0x860(%rbp)
  81f1e6:	49 89 c7             	mov    %rax,%r15
  81f1e9:	4c 89 95 d0 f7 ff ff 	mov    %r10,-0x830(%rbp)
  81f1f0:	48 89 bd 98 f7 ff ff 	mov    %rdi,-0x868(%rbp)
  81f1f7:	48 8b 95 68 f7 ff ff 	mov    -0x898(%rbp),%rdx
  81f1fe:	48 8b 8d 70 f7 ff ff 	mov    -0x890(%rbp),%rcx
  81f205:	48 8b b5 88 f7 ff ff 	mov    -0x878(%rbp),%rsi
  81f20c:	48 8b bd 58 f7 ff ff 	mov    -0x8a8(%rbp),%rdi
  81f213:	4c 8b 95 60 f7 ff ff 	mov    -0x8a0(%rbp),%r10
  81f21a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  81f220:	c4 81 7d 10 64 ec 08 	vmovupd 0x8(%r12,%r13,8),%ymm4
  81f227:	c4 21 7d 10 04 e9    	vmovupd (%rcx,%r13,8),%ymm8
  81f22d:	c4 a1 7d 59 1c ef    	vmulpd (%rdi,%r13,8),%ymm0,%ymm3
  81f233:	c4 a1 5d 5c 34 ee    	vsubpd (%rsi,%r13,8),%ymm4,%ymm6
  81f239:	c4 01 3d 5c 2c ee    	vsubpd (%r14,%r13,8),%ymm8,%ymm13
  81f23f:	c4 01 65 59 3c ea    	vmulpd (%r10,%r13,8),%ymm3,%ymm15
  81f245:	c4 81 4d 58 3c e9    	vaddpd (%r9,%r13,8),%ymm6,%ymm7
  81f24b:	c4 01 45 5c 0c eb    	vsubpd (%r11,%r13,8),%ymm7,%ymm9
  81f251:	c4 41 35 58 f5       	vaddpd %ymm13,%ymm9,%ymm14
  81f256:	c4 02 8d ac 3c e8    	vfnmadd213pd (%r8,%r13,8),%ymm14,%ymm15
  81f25c:	49 83 c5 04          	add    $0x4,%r13
  81f260:	c4 c1 6d 5e df       	vdivpd %ymm15,%ymm2,%ymm3
  81f265:	c5 fd 11 5a 08       	vmovupd %ymm3,0x8(%rdx)
  81f26a:	48 83 c2 20          	add    $0x20,%rdx
  81f26e:	4d 3b ef             	cmp    %r15,%r13
  81f271:	72 ad                	jb     81f220 <pre_step3d_mod_mp_pre_step3d_tile_+0xad80>
  81f273:	48 8b 8d 90 f7 ff ff 	mov    -0x870(%rbp),%rcx
  81f27a:	48 8b b5 a0 f7 ff ff 	mov    -0x860(%rbp),%rsi
  81f281:	4c 8b 95 d0 f7 ff ff 	mov    -0x830(%rbp),%r10
  81f288:	48 8b bd 98 f7 ff ff 	mov    -0x868(%rbp),%rdi
  81f28f:	48 8b 95 68 fa ff ff 	mov    -0x598(%rbp),%rdx
  81f296:	4c 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%r13
  81f29d:	00 
  81f29e:	48 3b c2             	cmp    %rdx,%rax
  81f2a1:	0f 83 15 01 00 00    	jae    81f3bc <pre_step3d_mod_mp_pre_step3d_tile_+0xaf1c>
  81f2a7:	4c 8b 8d 30 f7 ff ff 	mov    -0x8d0(%rbp),%r9
  81f2ae:	4c 8d 24 c7          	lea    (%rdi,%rax,8),%r12
  81f2b2:	4c 8b bd 48 f7 ff ff 	mov    -0x8b8(%rbp),%r15
  81f2b9:	4c 8b 9d 40 f7 ff ff 	mov    -0x8c0(%rbp),%r11
  81f2c0:	48 89 8d 90 f7 ff ff 	mov    %rcx,-0x870(%rbp)
  81f2c7:	4f 8d 34 11          	lea    (%r9,%r10,1),%r14
  81f2cb:	4c 89 b5 78 f7 ff ff 	mov    %r14,-0x888(%rbp)
  81f2d2:	4d 8d 0c 37          	lea    (%r15,%rsi,1),%r9
  81f2d6:	4c 8b bd 50 f7 ff ff 	mov    -0x8b0(%rbp),%r15
  81f2dd:	4d 03 da             	add    %r10,%r11
  81f2e0:	4c 8b b5 28 f7 ff ff 	mov    -0x8d8(%rbp),%r14
  81f2e7:	48 89 b5 a0 f7 ff ff 	mov    %rsi,-0x860(%rbp)
  81f2ee:	4c 89 95 d0 f7 ff ff 	mov    %r10,-0x830(%rbp)
  81f2f5:	4c 03 f9             	add    %rcx,%r15
  81f2f8:	4c 89 bd 80 f7 ff ff 	mov    %r15,-0x880(%rbp)
  81f2ff:	4c 03 f6             	add    %rsi,%r14
  81f302:	4c 8b bd 38 f7 ff ff 	mov    -0x8c8(%rbp),%r15
  81f309:	48 89 bd 98 f7 ff ff 	mov    %rdi,-0x868(%rbp)
  81f310:	48 8b b5 80 f7 ff ff 	mov    -0x880(%rbp),%rsi
  81f317:	48 8b bd 78 f7 ff ff 	mov    -0x888(%rbp),%rdi
  81f31e:	4c 03 f9             	add    %rcx,%r15
  81f321:	4c 89 f9             	mov    %r15,%rcx
  81f324:	4c 8b 95 58 f7 ff ff 	mov    -0x8a8(%rbp),%r10
  81f32b:	4c 8b bd 60 f7 ff ff 	mov    -0x8a0(%rbp),%r15
  81f332:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  81f339:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  81f340:	c4 c1 7b 10 64 3d 08 	vmovsd 0x8(%r13,%rdi,1),%xmm4
  81f347:	48 ff c0             	inc    %rax
  81f34a:	c4 41 7b 10 44 0d 00 	vmovsd 0x0(%r13,%rcx,1),%xmm8
  81f351:	c4 81 53 59 5c 15 00 	vmulsd 0x0(%r13,%r10,1),%xmm5,%xmm3
  81f358:	c4 81 5b 5c 74 1d 00 	vsubsd 0x0(%r13,%r11,1),%xmm4,%xmm6
  81f35f:	c4 41 3b 5c 6c 35 00 	vsubsd 0x0(%r13,%rsi,1),%xmm8,%xmm13
  81f366:	c4 01 63 59 7c 3d 00 	vmulsd 0x0(%r13,%r15,1),%xmm3,%xmm15
  81f36d:	c4 81 4b 58 7c 35 00 	vaddsd 0x0(%r13,%r14,1),%xmm6,%xmm7
  81f374:	c4 01 43 5c 4c 0d 00 	vsubsd 0x0(%r13,%r9,1),%xmm7,%xmm9
  81f37b:	c4 41 33 58 f5       	vaddsd %xmm13,%xmm9,%xmm14
  81f380:	c4 02 89 ad 7c 05 00 	vfnmadd213sd 0x0(%r13,%r8,1),%xmm14,%xmm15
  81f387:	49 83 c5 08          	add    $0x8,%r13
  81f38b:	c4 c1 73 5e df       	vdivsd %xmm15,%xmm1,%xmm3
  81f390:	c4 c1 7b 11 5c 24 08 	vmovsd %xmm3,0x8(%r12)
  81f397:	49 83 c4 08          	add    $0x8,%r12
  81f39b:	48 3b c2             	cmp    %rdx,%rax
  81f39e:	72 a0                	jb     81f340 <pre_step3d_mod_mp_pre_step3d_tile_+0xaea0>
  81f3a0:	48 8b 8d 90 f7 ff ff 	mov    -0x870(%rbp),%rcx
  81f3a7:	48 8b b5 a0 f7 ff ff 	mov    -0x860(%rbp),%rsi
  81f3ae:	4c 8b 95 d0 f7 ff ff 	mov    -0x830(%rbp),%r10
  81f3b5:	48 8b bd 98 f7 ff ff 	mov    -0x868(%rbp),%rdi
  81f3bc:	48 8b 85 28 f8 ff ff 	mov    -0x7d8(%rbp),%rax
  81f3c3:	48 ff c0             	inc    %rax
  81f3c6:	48 03 bd 40 fa ff ff 	add    -0x5c0(%rbp),%rdi
  81f3cd:	4c 03 85 f8 f7 ff ff 	add    -0x808(%rbp),%r8
  81f3d4:	4c 03 95 00 f8 ff ff 	add    -0x800(%rbp),%r10
  81f3db:	48 03 b5 08 f8 ff ff 	add    -0x7f8(%rbp),%rsi
  81f3e2:	48 03 8d b8 f8 ff ff 	add    -0x748(%rbp),%rcx
  81f3e9:	48 89 85 28 f8 ff ff 	mov    %rax,-0x7d8(%rbp)
  81f3f0:	48 3b 85 30 fa ff ff 	cmp    -0x5d0(%rbp),%rax
  81f3f7:	0f 82 5e fd ff ff    	jb     81f15b <pre_step3d_mod_mp_pre_step3d_tile_+0xacbb>
  81f3fd:	e9 43 05 00 00       	jmpq   81f945 <pre_step3d_mod_mp_pre_step3d_tile_+0xb4a5>
  81f402:	45 33 ed             	xor    %r13d,%r13d
  81f405:	33 f6                	xor    %esi,%esi
  81f407:	33 d2                	xor    %edx,%edx
  81f409:	48 8b 85 90 f9 ff ff 	mov    -0x670(%rbp),%rax
  81f410:	33 ff                	xor    %edi,%edi
  81f412:	48 83 bd 30 fa ff ff 	cmpq   $0x0,-0x5d0(%rbp)
  81f419:	00 
  81f41a:	0f 8e 33 05 00 00    	jle    81f953 <pre_step3d_mod_mp_pre_step3d_tile_+0xb4b3>
  81f420:	4c 8b 85 80 f5 ff ff 	mov    -0xa80(%rbp),%r8
  81f427:	4c 0f af c1          	imul   %rcx,%r8
  81f42b:	4c 8b b5 90 f5 ff ff 	mov    -0xa70(%rbp),%r14
  81f432:	4c 0f af f1          	imul   %rcx,%r14
  81f436:	4c 8b 95 a0 f5 ff ff 	mov    -0xa60(%rbp),%r10
  81f43d:	4c 0f af d1          	imul   %rcx,%r10
  81f441:	4c 03 85 38 f5 ff ff 	add    -0xac8(%rbp),%r8
  81f448:	4c 89 85 d0 f9 ff ff 	mov    %r8,-0x630(%rbp)
  81f44f:	4c 8b 9d 98 f5 ff ff 	mov    -0xa68(%rbp),%r11
  81f456:	4c 8b a5 88 f5 ff ff 	mov    -0xa78(%rbp),%r12
  81f45d:	4c 8b 85 78 f5 ff ff 	mov    -0xa88(%rbp),%r8
  81f464:	4c 0f af d9          	imul   %rcx,%r11
  81f468:	4c 0f af e1          	imul   %rcx,%r12
  81f46c:	4c 0f af c1          	imul   %rcx,%r8
  81f470:	4c 8b bd 50 f5 ff ff 	mov    -0xab0(%rbp),%r15
  81f477:	4c 03 9d 48 f5 ff ff 	add    -0xab8(%rbp),%r11
  81f47e:	4c 03 85 40 f5 ff ff 	add    -0xac0(%rbp),%r8
  81f485:	c5 fb 12 d5          	vmovddup %xmm5,%xmm2
  81f489:	4d 03 fe             	add    %r14,%r15
  81f48c:	4c 89 bd e8 f6 ff ff 	mov    %r15,-0x918(%rbp)
  81f493:	4c 8b bd 58 f5 ff ff 	mov    -0xaa8(%rbp),%r15
  81f49a:	4c 03 b5 f0 f5 ff ff 	add    -0xa10(%rbp),%r14
  81f4a1:	4c 89 b5 00 f7 ff ff 	mov    %r14,-0x900(%rbp)
  81f4a8:	4c 89 85 d8 f9 ff ff 	mov    %r8,-0x628(%rbp)
  81f4af:	4d 03 fa             	add    %r10,%r15
  81f4b2:	4c 89 bd e0 f6 ff ff 	mov    %r15,-0x920(%rbp)
  81f4b9:	4c 8b bd 60 f5 ff ff 	mov    -0xaa0(%rbp),%r15
  81f4c0:	4c 03 95 e8 f5 ff ff 	add    -0xa18(%rbp),%r10
  81f4c7:	4c 89 95 f8 f6 ff ff 	mov    %r10,-0x908(%rbp)
  81f4ce:	4c 89 9d e0 f9 ff ff 	mov    %r11,-0x620(%rbp)
  81f4d5:	4d 03 fc             	add    %r12,%r15
  81f4d8:	4c 03 a5 68 f5 ff ff 	add    -0xa98(%rbp),%r12
  81f4df:	4c 89 bd d8 f6 ff ff 	mov    %r15,-0x928(%rbp)
  81f4e6:	4c 89 a5 f0 f6 ff ff 	mov    %r12,-0x910(%rbp)
  81f4ed:	4c 89 ad 20 f8 ff ff 	mov    %r13,-0x7e0(%rbp)
  81f4f4:	48 89 8d 68 f6 ff ff 	mov    %rcx,-0x998(%rbp)
  81f4fb:	44 89 8d 60 f6 ff ff 	mov    %r9d,-0x9a0(%rbp)
  81f502:	c5 f9 10 25 46 76 0a 	vmovupd 0xa7646(%rip),%xmm4        # 8c6b50 <__STRLITPACK_124.84+0x50>
  81f509:	00 
  81f50a:	c5 fb 10 1d ee 7a 0a 	vmovsd 0xa7aee(%rip),%xmm3        # 8c7000 <__STRLITPACK_199.115+0x70>
  81f511:	00 
  81f512:	48 8b 8d 38 fa ff ff 	mov    -0x5c8(%rbp),%rcx
  81f519:	48 3b 8d 20 fa ff ff 	cmp    -0x5e0(%rbp),%rcx
  81f520:	0f 8c d0 03 00 00    	jl     81f8f6 <pre_step3d_mod_mp_pre_step3d_tile_+0xb456>
  81f526:	48 83 bd 68 fa ff ff 	cmpq   $0x2,-0x598(%rbp)
  81f52d:	02 
  81f52e:	0f 8c 1b 62 00 00    	jl     82574f <pre_step3d_mod_mp_pre_step3d_tile_+0x112af>
  81f534:	4c 8b 85 e0 f6 ff ff 	mov    -0x920(%rbp),%r8
  81f53b:	45 33 f6             	xor    %r14d,%r14d
  81f53e:	4c 8b a5 d8 f6 ff ff 	mov    -0x928(%rbp),%r12
  81f545:	4c 8b 95 f8 f6 ff ff 	mov    -0x908(%rbp),%r10
  81f54c:	4c 8b bd 00 f7 ff ff 	mov    -0x900(%rbp),%r15
  81f553:	4d 8d 0c 10          	lea    (%r8,%rdx,1),%r9
  81f557:	4c 89 8d 10 fa ff ff 	mov    %r9,-0x5f0(%rbp)
  81f55e:	4d 8d 04 3c          	lea    (%r12,%rdi,1),%r8
  81f562:	4c 8b 8d f0 f6 ff ff 	mov    -0x910(%rbp),%r9
  81f569:	45 33 e4             	xor    %r12d,%r12d
  81f56c:	4c 8b ad e8 f6 ff ff 	mov    -0x918(%rbp),%r13
  81f573:	4d 8d 1c 12          	lea    (%r10,%rdx,1),%r11
  81f577:	4c 89 9d 00 fa ff ff 	mov    %r11,-0x600(%rbp)
  81f57e:	45 33 db             	xor    %r11d,%r11d
  81f581:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
  81f588:	4d 8d 14 39          	lea    (%r9,%rdi,1),%r10
  81f58c:	4c 89 95 10 f7 ff ff 	mov    %r10,-0x8f0(%rbp)
  81f593:	45 33 d2             	xor    %r10d,%r10d
  81f596:	45 33 c9             	xor    %r9d,%r9d
  81f599:	4c 03 fe             	add    %rsi,%r15
  81f59c:	4c 89 85 18 f7 ff ff 	mov    %r8,-0x8e8(%rbp)
  81f5a3:	45 33 c0             	xor    %r8d,%r8d
  81f5a6:	4c 03 ee             	add    %rsi,%r13
  81f5a9:	48 89 85 08 f7 ff ff 	mov    %rax,-0x8f8(%rbp)
  81f5b0:	48 89 8d a8 f7 ff ff 	mov    %rcx,-0x858(%rbp)
  81f5b7:	48 89 85 b0 f7 ff ff 	mov    %rax,-0x850(%rbp)
  81f5be:	48 89 95 c0 f7 ff ff 	mov    %rdx,-0x840(%rbp)
  81f5c5:	48 89 b5 c8 f7 ff ff 	mov    %rsi,-0x838(%rbp)
  81f5cc:	4c 89 bd e8 f9 ff ff 	mov    %r15,-0x618(%rbp)
  81f5d3:	48 89 bd b8 f7 ff ff 	mov    %rdi,-0x848(%rbp)
  81f5da:	48 8b 85 08 f7 ff ff 	mov    -0x8f8(%rbp),%rax
  81f5e1:	4c 89 c2             	mov    %r8,%rdx
  81f5e4:	48 8b 8d 10 f7 ff ff 	mov    -0x8f0(%rbp),%rcx
  81f5eb:	48 8b b5 18 f7 ff ff 	mov    -0x8e8(%rbp),%rsi
  81f5f2:	4c 8b bd e0 f9 ff ff 	mov    -0x620(%rbp),%r15
  81f5f9:	49 83 c6 02          	add    $0x2,%r14
  81f5fd:	4b 8d 3c 27          	lea    (%r15,%r12,1),%rdi
  81f601:	4c 8b bd b0 f9 ff ff 	mov    -0x650(%rbp),%r15
  81f608:	c5 fb 10 37          	vmovsd (%rdi),%xmm6
  81f60c:	c4 a1 49 16 0c 3f    	vmovhpd (%rdi,%r15,1),%xmm6,%xmm1
  81f612:	4f 8d 24 7c          	lea    (%r12,%r15,2),%r12
  81f616:	48 8b bd d0 f9 ff ff 	mov    -0x630(%rbp),%rdi
  81f61d:	4e 8d 3c 1f          	lea    (%rdi,%r11,1),%r15
  81f621:	48 8b bd 48 fa ff ff 	mov    -0x5b8(%rbp),%rdi
  81f628:	c4 c1 7b 10 3f       	vmovsd (%r15),%xmm7
  81f62d:	c4 41 41 16 04 3f    	vmovhpd (%r15,%rdi,1),%xmm7,%xmm8
  81f633:	4d 8d 1c 7b          	lea    (%r11,%rdi,2),%r11
  81f637:	4c 8b bd d8 f9 ff ff 	mov    -0x628(%rbp),%r15
  81f63e:	c4 41 69 59 e8       	vmulpd %xmm8,%xmm2,%xmm13
  81f643:	4b 8d 3c 17          	lea    (%r15,%r10,1),%rdi
  81f647:	4c 8b bd c0 f9 ff ff 	mov    -0x640(%rbp),%r15
  81f64e:	c5 7b 10 0f          	vmovsd (%rdi),%xmm9
  81f652:	c4 21 31 16 34 3f    	vmovhpd (%rdi,%r15,1),%xmm9,%xmm14
  81f658:	4f 8d 14 7a          	lea    (%r10,%r15,2),%r10
  81f65c:	48 8b bd e8 f9 ff ff 	mov    -0x618(%rbp),%rdi
  81f663:	c4 c1 11 59 c6       	vmulpd %xmm14,%xmm13,%xmm0
  81f668:	4e 8d 3c 0f          	lea    (%rdi,%r9,1),%r15
  81f66c:	48 8b bd c8 f9 ff ff 	mov    -0x638(%rbp),%rdi
  81f673:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  81f678:	c4 c1 01 16 3c 3f    	vmovhpd (%r15,%rdi,1),%xmm15,%xmm7
  81f67e:	4f 8d 7c 0d 00       	lea    0x0(%r13,%r9,1),%r15
  81f683:	c4 c1 7b 10 37       	vmovsd (%r15),%xmm6
  81f688:	4d 8d 0c 79          	lea    (%r9,%rdi,2),%r9
  81f68c:	c4 41 49 16 04 3f    	vmovhpd (%r15,%rdi,1),%xmm6,%xmm8
  81f692:	48 8b bd 00 fa ff ff 	mov    -0x600(%rbp),%rdi
  81f699:	4c 8b bd b8 f9 ff ff 	mov    -0x648(%rbp),%r15
  81f6a0:	c4 41 41 5c e8       	vsubpd %xmm8,%xmm7,%xmm13
  81f6a5:	49 03 f8             	add    %r8,%rdi
  81f6a8:	c5 7b 10 0f          	vmovsd (%rdi),%xmm9
  81f6ac:	c4 21 31 16 34 3f    	vmovhpd (%rdi,%r15,1),%xmm9,%xmm14
  81f6b2:	48 8b bd 10 fa ff ff 	mov    -0x5f0(%rbp),%rdi
  81f6b9:	c4 c1 11 58 f6       	vaddpd %xmm14,%xmm13,%xmm6
  81f6be:	49 03 f8             	add    %r8,%rdi
  81f6c1:	c5 7b 10 3f          	vmovsd (%rdi),%xmm15
  81f6c5:	4f 8d 04 78          	lea    (%r8,%r15,2),%r8
  81f6c9:	c4 a1 01 16 3c 3f    	vmovhpd (%rdi,%r15,1),%xmm15,%xmm7
  81f6cf:	4c 8d 3c 11          	lea    (%rcx,%rdx,1),%r15
  81f6d3:	48 8b bd 70 fa ff ff 	mov    -0x590(%rbp),%rdi
  81f6da:	c4 41 7b 10 07       	vmovsd (%r15),%xmm8
  81f6df:	c5 49 5c ff          	vsubpd %xmm7,%xmm6,%xmm15
  81f6e3:	c4 41 39 16 2c 3f    	vmovhpd (%r15,%rdi,1),%xmm8,%xmm13
  81f6e9:	4c 8d 3c 16          	lea    (%rsi,%rdx,1),%r15
  81f6ed:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  81f6f2:	48 8d 14 7a          	lea    (%rdx,%rdi,2),%rdx
  81f6f6:	c4 41 31 16 34 3f    	vmovhpd (%r15,%rdi,1),%xmm9,%xmm14
  81f6fc:	c4 c1 11 5c f6       	vsubpd %xmm14,%xmm13,%xmm6
  81f701:	c5 81 58 fe          	vaddpd %xmm6,%xmm15,%xmm7
  81f705:	c4 e2 c1 ac c1       	vfnmadd213pd %xmm1,%xmm7,%xmm0
  81f70a:	c5 d9 5e c0          	vdivpd %xmm0,%xmm4,%xmm0
  81f70e:	c5 f9 11 40 08       	vmovupd %xmm0,0x8(%rax)
  81f713:	48 83 c0 10          	add    $0x10,%rax
  81f717:	4c 3b b5 60 fa ff ff 	cmp    -0x5a0(%rbp),%r14
  81f71e:	0f 82 ce fe ff ff    	jb     81f5f2 <pre_step3d_mod_mp_pre_step3d_tile_+0xb152>
  81f724:	48 8b 8d a8 f7 ff ff 	mov    -0x858(%rbp),%rcx
  81f72b:	48 8b 85 b0 f7 ff ff 	mov    -0x850(%rbp),%rax
  81f732:	48 8b bd b8 f7 ff ff 	mov    -0x848(%rbp),%rdi
  81f739:	48 8b 95 c0 f7 ff ff 	mov    -0x840(%rbp),%rdx
  81f740:	48 8b b5 c8 f7 ff ff 	mov    -0x838(%rbp),%rsi
  81f747:	4c 8b ad 70 fa ff ff 	mov    -0x590(%rbp),%r13
  81f74e:	4c 8b a5 b8 f9 ff ff 	mov    -0x648(%rbp),%r12
  81f755:	4c 8b 9d c8 f9 ff ff 	mov    -0x638(%rbp),%r11
  81f75c:	4c 8b 95 c0 f9 ff ff 	mov    -0x640(%rbp),%r10
  81f763:	4c 8b 8d 48 fa ff ff 	mov    -0x5b8(%rbp),%r9
  81f76a:	4c 8b 85 b0 f9 ff ff 	mov    -0x650(%rbp),%r8
  81f771:	4c 0f af e9          	imul   %rcx,%r13
  81f775:	4c 0f af e1          	imul   %rcx,%r12
  81f779:	4c 0f af d9          	imul   %rcx,%r11
  81f77d:	4c 0f af d1          	imul   %rcx,%r10
  81f781:	4c 0f af c9          	imul   %rcx,%r9
  81f785:	4c 0f af c1          	imul   %rcx,%r8
  81f789:	48 3b 8d 68 fa ff ff 	cmp    -0x598(%rbp),%rcx
  81f790:	0f 83 60 01 00 00    	jae    81f8f6 <pre_step3d_mod_mp_pre_step3d_tile_+0xb456>
  81f796:	4c 8b b5 e8 f6 ff ff 	mov    -0x918(%rbp),%r14
  81f79d:	48 89 85 b0 f7 ff ff 	mov    %rax,-0x850(%rbp)
  81f7a4:	48 89 bd b8 f7 ff ff 	mov    %rdi,-0x848(%rbp)
  81f7ab:	48 89 95 c0 f7 ff ff 	mov    %rdx,-0x840(%rbp)
  81f7b2:	4d 8d 3c 36          	lea    (%r14,%rsi,1),%r15
  81f7b6:	4c 8b b5 00 f7 ff ff 	mov    -0x900(%rbp),%r14
  81f7bd:	4c 89 bd 20 f7 ff ff 	mov    %r15,-0x8e0(%rbp)
  81f7c4:	48 89 b5 c8 f7 ff ff 	mov    %rsi,-0x838(%rbp)
  81f7cb:	4d 8d 3c 36          	lea    (%r14,%rsi,1),%r15
  81f7cf:	4c 89 bd 18 fa ff ff 	mov    %r15,-0x5e8(%rbp)
  81f7d6:	4c 8b bd f8 f6 ff ff 	mov    -0x908(%rbp),%r15
  81f7dd:	4c 8b b5 e0 f6 ff ff 	mov    -0x920(%rbp),%r14
  81f7e4:	4c 03 fa             	add    %rdx,%r15
  81f7e7:	4c 89 bd 08 fa ff ff 	mov    %r15,-0x5f8(%rbp)
  81f7ee:	4c 8b bd d8 f6 ff ff 	mov    -0x928(%rbp),%r15
  81f7f5:	4c 03 f2             	add    %rdx,%r14
  81f7f8:	4c 89 b5 f0 f9 ff ff 	mov    %r14,-0x610(%rbp)
  81f7ff:	4c 8b b5 d0 f9 ff ff 	mov    -0x630(%rbp),%r14
  81f806:	4c 03 ff             	add    %rdi,%r15
  81f809:	4c 89 bd f8 f9 ff ff 	mov    %r15,-0x608(%rbp)
  81f810:	4c 8b bd f0 f6 ff ff 	mov    -0x910(%rbp),%r15
  81f817:	4c 03 ff             	add    %rdi,%r15
  81f81a:	4c 89 fe             	mov    %r15,%rsi
  81f81d:	4c 8d 3c c8          	lea    (%rax,%rcx,8),%r15
  81f821:	4c 89 fa             	mov    %r15,%rdx
  81f824:	48 8b 85 20 f7 ff ff 	mov    -0x8e0(%rbp),%rax
  81f82b:	48 8b bd d8 f9 ff ff 	mov    -0x628(%rbp),%rdi
  81f832:	4c 8b bd 18 fa ff ff 	mov    -0x5e8(%rbp),%r15
  81f839:	48 ff c1             	inc    %rcx
  81f83c:	c4 41 7b 10 44 35 00 	vmovsd 0x0(%r13,%rsi,1),%xmm8
  81f843:	c4 81 53 59 04 31    	vmulsd (%r9,%r14,1),%xmm5,%xmm0
  81f849:	c4 81 7b 10 0c 3b    	vmovsd (%r11,%r15,1),%xmm1
  81f84f:	4c 8b bd 08 fa ff ff 	mov    -0x5f8(%rbp),%r15
  81f856:	c4 41 7b 59 3c 3a    	vmulsd (%r10,%rdi,1),%xmm0,%xmm15
  81f85c:	c4 c1 73 5c 34 03    	vsubsd (%r11,%rax,1),%xmm1,%xmm6
  81f862:	4c 03 8d 48 fa ff ff 	add    -0x5b8(%rbp),%r9
  81f869:	4c 03 95 c0 f9 ff ff 	add    -0x640(%rbp),%r10
  81f870:	4c 03 9d c8 f9 ff ff 	add    -0x638(%rbp),%r11
  81f877:	c4 81 4b 58 3c 3c    	vaddsd (%r12,%r15,1),%xmm6,%xmm7
  81f87d:	4c 8b bd f0 f9 ff ff 	mov    -0x610(%rbp),%r15
  81f884:	c4 01 43 5c 0c 3c    	vsubsd (%r12,%r15,1),%xmm7,%xmm9
  81f88a:	4c 8b bd f8 f9 ff ff 	mov    -0x608(%rbp),%r15
  81f891:	4c 03 a5 b8 f9 ff ff 	add    -0x648(%rbp),%r12
  81f898:	c4 01 3b 5c 6c 3d 00 	vsubsd 0x0(%r13,%r15,1),%xmm8,%xmm13
  81f89f:	4c 8b bd e0 f9 ff ff 	mov    -0x620(%rbp),%r15
  81f8a6:	c4 41 33 58 f5       	vaddsd %xmm13,%xmm9,%xmm14
  81f8ab:	c4 02 89 ad 3c 38    	vfnmadd213sd (%r8,%r15,1),%xmm14,%xmm15
  81f8b1:	c4 c1 63 5e c7       	vdivsd %xmm15,%xmm3,%xmm0
  81f8b6:	c5 fb 11 42 08       	vmovsd %xmm0,0x8(%rdx)
  81f8bb:	48 83 c2 08          	add    $0x8,%rdx
  81f8bf:	4c 03 85 b0 f9 ff ff 	add    -0x650(%rbp),%r8
  81f8c6:	4c 03 ad 70 fa ff ff 	add    -0x590(%rbp),%r13
  81f8cd:	48 3b 8d 68 fa ff ff 	cmp    -0x598(%rbp),%rcx
  81f8d4:	0f 82 58 ff ff ff    	jb     81f832 <pre_step3d_mod_mp_pre_step3d_tile_+0xb392>
  81f8da:	48 8b 85 b0 f7 ff ff 	mov    -0x850(%rbp),%rax
  81f8e1:	48 8b bd b8 f7 ff ff 	mov    -0x848(%rbp),%rdi
  81f8e8:	48 8b 95 c0 f7 ff ff 	mov    -0x840(%rbp),%rdx
  81f8ef:	48 8b b5 c8 f7 ff ff 	mov    -0x838(%rbp),%rsi
  81f8f6:	48 8b 8d e0 f9 ff ff 	mov    -0x620(%rbp),%rcx
  81f8fd:	4c 8b 85 20 f8 ff ff 	mov    -0x7e0(%rbp),%r8
  81f904:	49 ff c0             	inc    %r8
  81f907:	48 03 8d f8 f7 ff ff 	add    -0x808(%rbp),%rcx
  81f90e:	48 03 b5 00 f8 ff ff 	add    -0x800(%rbp),%rsi
  81f915:	48 03 95 08 f8 ff ff 	add    -0x7f8(%rbp),%rdx
  81f91c:	48 03 bd b8 f8 ff ff 	add    -0x748(%rbp),%rdi
  81f923:	48 03 85 40 fa ff ff 	add    -0x5c0(%rbp),%rax
  81f92a:	48 89 8d e0 f9 ff ff 	mov    %rcx,-0x620(%rbp)
  81f931:	4c 89 85 20 f8 ff ff 	mov    %r8,-0x7e0(%rbp)
  81f938:	4c 3b 85 30 fa ff ff 	cmp    -0x5d0(%rbp),%r8
  81f93f:	0f 82 cd fb ff ff    	jb     81f512 <pre_step3d_mod_mp_pre_step3d_tile_+0xb072>
  81f945:	48 8b 8d 68 f6 ff ff 	mov    -0x998(%rbp),%rcx
  81f94c:	44 8b 8d 60 f6 ff ff 	mov    -0x9a0(%rbp),%r9d
  81f953:	33 c0                	xor    %eax,%eax
  81f955:	48 83 bd a8 f8 ff ff 	cmpq   $0x0,-0x758(%rbp)
  81f95c:	00 
  81f95d:	0f 8e 96 5d 00 00    	jle    8256f9 <pre_step3d_mod_mp_pre_step3d_tile_+0x11259>
  81f963:	44 8b 85 d0 f4 ff ff 	mov    -0xb30(%rbp),%r8d
  81f96a:	4c 8b bd 30 fa ff ff 	mov    -0x5d0(%rbp),%r15
  81f971:	c4 41 31 57 c9       	vxorpd %xmm9,%xmm9,%xmm9
  81f976:	48 8b 95 b8 f8 ff ff 	mov    -0x748(%rbp),%rdx
  81f97d:	48 8b bd 80 f5 ff ff 	mov    -0xa80(%rbp),%rdi
  81f984:	45 8d 58 fe          	lea    -0x2(%r8),%r11d
  81f988:	4c 8b 85 40 f4 ff ff 	mov    -0xbc0(%rbp),%r8
  81f98f:	4d 89 c6             	mov    %r8,%r14
  81f992:	4c 0f af f1          	imul   %rcx,%r14
  81f996:	48 0f af f9          	imul   %rcx,%rdi
  81f99a:	c5 fd 10 2d 3e 65 0a 	vmovupd 0xa653e(%rip),%ymm5        # 8c5ee0 <var$630.126.450+0x1220>
  81f9a1:	00 
  81f9a2:	c5 f9 10 1d f6 6d 0a 	vmovupd 0xa6df6(%rip),%xmm3        # 8c67a0 <__STRLITPACK_19.34+0x10>
  81f9a9:	00 
  81f9aa:	c5 f9 10 35 0e 73 0a 	vmovupd 0xa730e(%rip),%xmm6        # 8c6cc0 <__STRLITPACK_54.50+0xa0>
  81f9b1:	00 
  81f9b2:	c5 f9 10 3d 16 73 0a 	vmovupd 0xa7316(%rip),%xmm7        # 8c6cd0 <__STRLITPACK_54.50+0xb0>
  81f9b9:	00 
  81f9ba:	c5 fb 10 25 6e 7e 0a 	vmovsd 0xa7e6e(%rip),%xmm4        # 8c7830 <__STRLITPACK_199.115+0x8a0>
  81f9c1:	00 
  81f9c2:	4c 89 b5 90 f6 ff ff 	mov    %r14,-0x970(%rbp)
  81f9c9:	4d 8d 6f ff          	lea    -0x1(%r15),%r13
  81f9cd:	49 89 d6             	mov    %rdx,%r14
  81f9d0:	4d 0f af f5          	imul   %r13,%r14
  81f9d4:	c5 fd 10 15 24 65 0a 	vmovupd 0xa6524(%rip),%ymm2        # 8c5f00 <var$630.126.450+0x1240>
  81f9db:	00 
  81f9dc:	c5 7b 10 05 54 7e 0a 	vmovsd 0xa7e54(%rip),%xmm8        # 8c7838 <__STRLITPACK_199.115+0x8a8>
  81f9e3:	00 
  81f9e4:	4c 8b 95 78 f5 ff ff 	mov    -0xa88(%rbp),%r10
  81f9eb:	48 89 85 60 f9 ff ff 	mov    %rax,-0x6a0(%rbp)
  81f9f2:	4c 0f af d1          	imul   %rcx,%r10
  81f9f6:	48 8b 85 88 f5 ff ff 	mov    -0xa78(%rbp),%rax
  81f9fd:	48 0f af c1          	imul   %rcx,%rax
  81fa01:	48 8b b5 38 f5 ff ff 	mov    -0xac8(%rbp),%rsi
  81fa08:	48 89 8d 68 f6 ff ff 	mov    %rcx,-0x998(%rbp)
  81fa0f:	44 89 8d 60 f6 ff ff 	mov    %r9d,-0x9a0(%rbp)
  81fa16:	4c 8b 8d b0 f4 ff ff 	mov    -0xb50(%rbp),%r9
  81fa1d:	48 8d 0c 3e          	lea    (%rsi,%rdi,1),%rcx
  81fa21:	48 8b b5 40 f5 ff ff 	mov    -0xac0(%rbp),%rsi
  81fa28:	4d 03 f1             	add    %r9,%r14
  81fa2b:	48 89 8d d0 fa ff ff 	mov    %rcx,-0x530(%rbp)
  81fa32:	48 8b 8d 68 f5 ff ff 	mov    -0xa98(%rbp),%rcx
  81fa39:	4c 03 b5 a8 f4 ff ff 	add    -0xb58(%rbp),%r14
  81fa40:	4c 89 95 80 f9 ff ff 	mov    %r10,-0x680(%rbp)
  81fa47:	4c 03 f0             	add    %rax,%r14
  81fa4a:	48 89 bd 88 f9 ff ff 	mov    %rdi,-0x678(%rbp)
  81fa51:	4a 8d 3c 16          	lea    (%rsi,%r10,1),%rdi
  81fa55:	4c 8b 95 d8 f3 ff ff 	mov    -0xc28(%rbp),%r10
  81fa5c:	48 8d 34 01          	lea    (%rcx,%rax,1),%rsi
  81fa60:	48 89 bd d8 fa ff ff 	mov    %rdi,-0x528(%rbp)
  81fa67:	48 8b 8d 98 f4 ff ff 	mov    -0xb68(%rbp),%rcx
  81fa6e:	48 8b bd 30 f4 ff ff 	mov    -0xbd0(%rbp),%rdi
  81fa75:	4c 89 b5 a0 fa ff ff 	mov    %r14,-0x560(%rbp)
  81fa7c:	4d 89 d6             	mov    %r10,%r14
  81fa7f:	49 c1 e6 04          	shl    $0x4,%r14
  81fa83:	48 89 b5 90 fa ff ff 	mov    %rsi,-0x570(%rbp)
  81fa8a:	48 8d 34 39          	lea    (%rcx,%rdi,1),%rsi
  81fa8e:	4c 03 f1             	add    %rcx,%r14
  81fa91:	48 89 f9             	mov    %rdi,%rcx
  81fa94:	48 2b 8d d0 f3 ff ff 	sub    -0xc30(%rbp),%rcx
  81fa9b:	4c 03 f7             	add    %rdi,%r14
  81fa9e:	4c 89 ad b0 f3 ff ff 	mov    %r13,-0xc50(%rbp)
  81faa5:	48 89 b5 78 fa ff ff 	mov    %rsi,-0x588(%rbp)
  81faac:	4c 8b a5 80 f4 ff ff 	mov    -0xb80(%rbp),%r12
  81fab3:	4e 8d 14 d1          	lea    (%rcx,%r10,8),%r10
  81fab7:	4c 89 95 98 f3 ff ff 	mov    %r10,-0xc68(%rbp)
  81fabe:	4c 8b 95 40 fa ff ff 	mov    -0x5c0(%rbp),%r10
  81fac5:	4c 89 d1             	mov    %r10,%rcx
  81fac8:	49 0f af cd          	imul   %r13,%rcx
  81facc:	4d 0f af fa          	imul   %r10,%r15
  81fad0:	4d 0f af e0          	imul   %r8,%r12
  81fad4:	4c 8b ad 90 f4 ff ff 	mov    -0xb70(%rbp),%r13
  81fadb:	48 03 ce             	add    %rsi,%rcx
  81fade:	4c 03 fe             	add    %rsi,%r15
  81fae1:	4c 8b 95 c0 f4 ff ff 	mov    -0xb40(%rbp),%r10
  81fae8:	4d 63 db             	movslq %r11d,%r11
  81faeb:	4a 8d 34 2f          	lea    (%rdi,%r13,1),%rsi
  81faef:	48 89 b5 88 fa ff ff 	mov    %rsi,-0x578(%rbp)
  81faf6:	48 8d 34 12          	lea    (%rdx,%rdx,1),%rsi
  81fafa:	49 2b f2             	sub    %r10,%rsi
  81fafd:	4d 89 e5             	mov    %r12,%r13
  81fb00:	48 03 b5 c8 f4 ff ff 	add    -0xb38(%rbp),%rsi
  81fb07:	48 03 b5 e8 f4 ff ff 	add    -0xb18(%rbp),%rsi
  81fb0e:	48 8b bd f0 f4 ff ff 	mov    -0xb10(%rbp),%rdi
  81fb15:	48 03 f0             	add    %rax,%rsi
  81fb18:	48 89 b5 90 f1 ff ff 	mov    %rsi,-0xe70(%rbp)
  81fb1f:	48 8b b5 c0 f3 ff ff 	mov    -0xc40(%rbp),%rsi
  81fb26:	49 0f af f0          	imul   %r8,%rsi
  81fb2a:	4c 89 9d 10 f8 ff ff 	mov    %r11,-0x7f0(%rbp)
  81fb31:	48 8d 14 57          	lea    (%rdi,%rdx,2),%rdx
  81fb35:	48 89 95 98 f1 ff ff 	mov    %rdx,-0xe68(%rbp)
  81fb3c:	49 2b d2             	sub    %r10,%rdx
  81fb3f:	48 03 95 b8 f4 ff ff 	add    -0xb48(%rbp),%rdx
  81fb46:	4d 8d 5b ff          	lea    -0x1(%r11),%r11
  81fb4a:	49 03 d1             	add    %r9,%rdx
  81fb4d:	49 89 f0             	mov    %rsi,%r8
  81fb50:	48 03 d0             	add    %rax,%rdx
  81fb53:	4d 2b c4             	sub    %r12,%r8
  81fb56:	48 89 95 50 f9 ff ff 	mov    %rdx,-0x6b0(%rbp)
  81fb5d:	48 8b 95 28 fa ff ff 	mov    -0x5d8(%rbp),%rdx
  81fb64:	4c 8b 8d 50 f4 ff ff 	mov    -0xbb0(%rbp),%r9
  81fb6b:	48 89 8d 98 fa ff ff 	mov    %rcx,-0x568(%rbp)
  81fb72:	4c 89 9d c0 f8 ff ff 	mov    %r11,-0x740(%rbp)
  81fb79:	48 8d 3c 12          	lea    (%rdx,%rdx,1),%rdi
  81fb7d:	49 89 fb             	mov    %rdi,%r11
  81fb80:	48 f7 df             	neg    %rdi
  81fb83:	48 89 85 58 f9 ff ff 	mov    %rax,-0x6a8(%rbp)
  81fb8a:	4c 89 c8             	mov    %r9,%rax
  81fb8d:	48 8b 8d 48 f4 ff ff 	mov    -0xbb8(%rbp),%rcx
  81fb94:	48 03 fa             	add    %rdx,%rdi
  81fb97:	48 2b 85 30 f8 ff ff 	sub    -0x7d0(%rbp),%rax
  81fb9e:	49 03 f8             	add    %r8,%rdi
  81fba1:	4c 89 b5 18 f8 ff ff 	mov    %r14,-0x7e8(%rbp)
  81fba8:	4c 2b de             	sub    %rsi,%r11
  81fbab:	48 89 85 a0 f1 ff ff 	mov    %rax,-0xe60(%rbp)
  81fbb2:	4c 8d 14 11          	lea    (%rcx,%rdx,1),%r10
  81fbb6:	48 89 bd c8 f6 ff ff 	mov    %rdi,-0x938(%rbp)
  81fbbd:	4c 8b b5 c8 f3 ff ff 	mov    -0xc38(%rbp),%r14
  81fbc4:	48 8b 85 58 fa ff ff 	mov    -0x5a8(%rbp),%rax
  81fbcb:	48 8b bd 20 fa ff ff 	mov    -0x5e0(%rbp),%rdi
  81fbd2:	4c 0f af f0          	imul   %rax,%r14
  81fbd6:	48 0f af f8          	imul   %rax,%rdi
  81fbda:	48 0f af 8d e8 f3 ff 	imul   -0xc18(%rbp),%rcx
  81fbe1:	ff 
  81fbe2:	4c 89 bd 48 f8 ff ff 	mov    %r15,-0x7b8(%rbp)
  81fbe9:	49 89 d7             	mov    %rdx,%r15
  81fbec:	4c 2b fe             	sub    %rsi,%r15
  81fbef:	4c 89 d0             	mov    %r10,%rax
  81fbf2:	49 2b c7             	sub    %r15,%rax
  81fbf5:	4d 2b ee             	sub    %r14,%r13
  81fbf8:	4c 2b f7             	sub    %rdi,%r14
  81fbfb:	48 f7 d8             	neg    %rax
  81fbfe:	4c 89 b5 c0 f1 ff ff 	mov    %r14,-0xe40(%rbp)
  81fc05:	4c 8d 34 0f          	lea    (%rdi,%rcx,1),%r14
  81fc09:	4d 03 f5             	add    %r13,%r14
  81fc0c:	49 03 c1             	add    %r9,%rax
  81fc0f:	49 03 c6             	add    %r14,%rax
  81fc12:	48 89 bd e8 f7 ff ff 	mov    %rdi,-0x818(%rbp)
  81fc19:	48 8b bd 90 f6 ff ff 	mov    -0x970(%rbp),%rdi
  81fc20:	48 03 c7             	add    %rdi,%rax
  81fc23:	48 89 85 50 f8 ff ff 	mov    %rax,-0x7b0(%rbp)
  81fc2a:	4c 89 d0             	mov    %r10,%rax
  81fc2d:	49 2b c3             	sub    %r11,%rax
  81fc30:	48 f7 d8             	neg    %rax
  81fc33:	49 03 c1             	add    %r9,%rax
  81fc36:	49 03 c6             	add    %r14,%rax
  81fc39:	4c 89 a5 d8 f7 ff ff 	mov    %r12,-0x828(%rbp)
  81fc40:	4c 03 e1             	add    %rcx,%r12
  81fc43:	48 89 8d c8 f1 ff ff 	mov    %rcx,-0xe38(%rbp)
  81fc4a:	48 8d 0c 52          	lea    (%rdx,%rdx,2),%rcx
  81fc4e:	48 03 c7             	add    %rdi,%rax
  81fc51:	4d 03 dc             	add    %r12,%r11
  81fc54:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  81fc5b:	48 89 c8             	mov    %rcx,%rax
  81fc5e:	4c 89 9d d0 f1 ff ff 	mov    %r11,-0xe30(%rbp)
  81fc65:	48 2b c6             	sub    %rsi,%rax
  81fc68:	4d 89 d3             	mov    %r10,%r11
  81fc6b:	48 f7 d9             	neg    %rcx
  81fc6e:	4c 2b d8             	sub    %rax,%r11
  81fc71:	49 03 c4             	add    %r12,%rax
  81fc74:	49 f7 db             	neg    %r11
  81fc77:	48 03 ca             	add    %rdx,%rcx
  81fc7a:	4d 03 d9             	add    %r9,%r11
  81fc7d:	49 03 c8             	add    %r8,%rcx
  81fc80:	4d 03 de             	add    %r14,%r11
  81fc83:	48 f7 d9             	neg    %rcx
  81fc86:	48 89 85 c0 f6 ff ff 	mov    %rax,-0x940(%rbp)
  81fc8d:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  81fc94:	00 
  81fc95:	4c 03 df             	add    %rdi,%r11
  81fc98:	4c 89 9d 58 f8 ff ff 	mov    %r11,-0x7a8(%rbp)
  81fc9f:	49 89 c3             	mov    %rax,%r11
  81fca2:	4c 2b de             	sub    %rsi,%r11
  81fca5:	48 03 f2             	add    %rdx,%rsi
  81fca8:	4c 89 95 a8 f1 ff ff 	mov    %r10,-0xe58(%rbp)
  81fcaf:	4d 2b d3             	sub    %r11,%r10
  81fcb2:	4d 03 dc             	add    %r12,%r11
  81fcb5:	4d 03 e7             	add    %r15,%r12
  81fcb8:	4c 89 a5 d0 f6 ff ff 	mov    %r12,-0x930(%rbp)
  81fcbf:	49 f7 da             	neg    %r10
  81fcc2:	4c 8b a5 c0 f4 ff ff 	mov    -0xb40(%rbp),%r12
  81fcc9:	4d 03 d1             	add    %r9,%r10
  81fccc:	4c 2b a5 e8 f4 ff ff 	sub    -0xb18(%rbp),%r12
  81fcd3:	4d 03 f2             	add    %r10,%r14
  81fcd6:	4c 8b 8d a0 f4 ff ff 	mov    -0xb60(%rbp),%r9
  81fcdd:	49 2b f5             	sub    %r13,%rsi
  81fce0:	4c 8b 95 98 f1 ff ff 	mov    -0xe68(%rbp),%r10
  81fce7:	48 f7 de             	neg    %rsi
  81fcea:	4c 2b 8d b0 f4 ff ff 	sub    -0xb50(%rbp),%r9
  81fcf1:	4d 2b d4             	sub    %r12,%r10
  81fcf4:	4d 2b d1             	sub    %r9,%r10
  81fcf7:	48 f7 d8             	neg    %rax
  81fcfa:	4c 89 bd b0 f1 ff ff 	mov    %r15,-0xe50(%rbp)
  81fd01:	48 03 c2             	add    %rdx,%rax
  81fd04:	4c 8b bd 48 f4 ff ff 	mov    -0xbb8(%rbp),%r15
  81fd0b:	49 03 c0             	add    %r8,%rax
  81fd0e:	4c 8b a5 70 fa ff ff 	mov    -0x590(%rbp),%r12
  81fd15:	48 f7 d8             	neg    %rax
  81fd18:	4c 89 9d b0 f6 ff ff 	mov    %r11,-0x950(%rbp)
  81fd1f:	4c 03 f7             	add    %rdi,%r14
  81fd22:	4c 8b 9d 30 f8 ff ff 	mov    -0x7d0(%rbp),%r11
  81fd29:	4d 2b df             	sub    %r15,%r11
  81fd2c:	4f 8d 0c 62          	lea    (%r10,%r12,2),%r9
  81fd30:	4c 89 ad b8 f1 ff ff 	mov    %r13,-0xe48(%rbp)
  81fd37:	4c 8b ad a0 f1 ff ff 	mov    -0xe60(%rbp),%r13
  81fd3e:	4c 8b a5 30 fa ff ff 	mov    -0x5d0(%rbp),%r12
  81fd45:	4c 89 9d d8 f1 ff ff 	mov    %r11,-0xe28(%rbp)
  81fd4c:	4c 01 8d 58 f9 ff ff 	add    %r9,-0x6a8(%rbp)
  81fd53:	4f 8d 54 1d 00       	lea    0x0(%r13,%r11,1),%r10
  81fd58:	4c 03 ad f8 f4 ff ff 	add    -0xb08(%rbp),%r13
  81fd5f:	49 03 f2             	add    %r10,%rsi
  81fd62:	4c 89 ad a0 f1 ff ff 	mov    %r13,-0xe60(%rbp)
  81fd69:	4d 8d 6c 24 fe       	lea    -0x2(%r12),%r13
  81fd6e:	4c 0f af ea          	imul   %rdx,%r13
  81fd72:	4c 0f af e2          	imul   %rdx,%r12
  81fd76:	4c 8b 9d e8 f7 ff ff 	mov    -0x818(%rbp),%r11
  81fd7d:	4d 03 eb             	add    %r11,%r13
  81fd80:	4c 8b 8d c8 f1 ff ff 	mov    -0xe38(%rbp),%r9
  81fd87:	4c 03 ee             	add    %rsi,%r13
  81fd8a:	4d 03 e9             	add    %r9,%r13
  81fd8d:	4d 03 e3             	add    %r11,%r12
  81fd90:	4c 03 ef             	add    %rdi,%r13
  81fd93:	49 03 ca             	add    %r10,%rcx
  81fd96:	4c 89 ad 60 f8 ff ff 	mov    %r13,-0x7a0(%rbp)
  81fd9d:	49 89 d5             	mov    %rdx,%r13
  81fda0:	4c 0f af ad b0 f3 ff 	imul   -0xc50(%rbp),%r13
  81fda7:	ff 
  81fda8:	4d 03 eb             	add    %r11,%r13
  81fdab:	49 03 c2             	add    %r10,%rax
  81fdae:	4c 03 ee             	add    %rsi,%r13
  81fdb1:	49 03 f4             	add    %r12,%rsi
  81fdb4:	4c 8b a5 58 fa ff ff 	mov    -0x5a8(%rbp),%r12
  81fdbb:	4d 03 e9             	add    %r9,%r13
  81fdbe:	4c 03 ef             	add    %rdi,%r13
  81fdc1:	49 03 f1             	add    %r9,%rsi
  81fdc4:	4c 89 ad 68 f8 ff ff 	mov    %r13,-0x798(%rbp)
  81fdcb:	48 03 f7             	add    %rdi,%rsi
  81fdce:	4c 89 b5 a0 f6 ff ff 	mov    %r14,-0x960(%rbp)
  81fdd5:	4f 8d 2c 61          	lea    (%r9,%r12,2),%r13
  81fdd9:	49 f7 dd             	neg    %r13
  81fddc:	4c 8b 8d c0 f1 ff ff 	mov    -0xe40(%rbp),%r9
  81fde3:	4d 03 e9             	add    %r9,%r13
  81fde6:	49 2b cd             	sub    %r13,%rcx
  81fde9:	49 2b c5             	sub    %r13,%rax
  81fdec:	48 03 cf             	add    %rdi,%rcx
  81fdef:	48 03 c7             	add    %rdi,%rax
  81fdf2:	48 89 8d a8 f6 ff ff 	mov    %rcx,-0x958(%rbp)
  81fdf9:	4d 03 c8             	add    %r8,%r9
  81fdfc:	48 8b 8d 38 f4 ff ff 	mov    -0xbc8(%rbp),%rcx
  81fe03:	49 f7 d8             	neg    %r8
  81fe06:	48 89 85 b8 f6 ff ff 	mov    %rax,-0x948(%rbp)
  81fe0d:	4d 03 c2             	add    %r10,%r8
  81fe10:	4c 8b b5 c8 f6 ff ff 	mov    -0x938(%rbp),%r14
  81fe17:	4d 2b c5             	sub    %r13,%r8
  81fe1a:	49 f7 de             	neg    %r14
  81fe1d:	48 8d 04 8d 00 00 00 	lea    0x0(,%rcx,4),%rax
  81fe24:	00 
  81fe25:	48 f7 d8             	neg    %rax
  81fe28:	4d 03 f2             	add    %r10,%r14
  81fe2b:	48 03 85 28 f4 ff ff 	add    -0xbd8(%rbp),%rax
  81fe32:	4d 2b f5             	sub    %r13,%r14
  81fe35:	48 8b 8d 40 f6 ff ff 	mov    -0x9c0(%rbp),%rcx
  81fe3c:	4f 8d 2c 7f          	lea    (%r15,%r15,2),%r13
  81fe40:	4d 2b fd             	sub    %r13,%r15
  81fe43:	4c 03 f7             	add    %rdi,%r14
  81fe46:	4c 89 b5 c8 f6 ff ff 	mov    %r14,-0x938(%rbp)
  81fe4d:	49 f7 df             	neg    %r15
  81fe50:	44 8b 34 88          	mov    (%rax,%rcx,4),%r14d
  81fe54:	4c 2b ea             	sub    %rdx,%r13
  81fe57:	48 8b 85 50 f4 ff ff 	mov    -0xbb0(%rbp),%rax
  81fe5e:	41 83 e6 01          	and    $0x1,%r14d
  81fe62:	4c 03 f8             	add    %rax,%r15
  81fe65:	4c 03 c7             	add    %rdi,%r8
  81fe68:	4d 2b f9             	sub    %r9,%r15
  81fe6b:	44 89 b5 b0 f8 ff ff 	mov    %r14d,-0x750(%rbp)
  81fe72:	48 8b 95 d8 f1 ff ff 	mov    -0xe28(%rbp),%rdx
  81fe79:	4c 8b b5 b0 f1 ff ff 	mov    -0xe50(%rbp),%r14
  81fe80:	49 03 d5             	add    %r13,%rdx
  81fe83:	4d 03 ee             	add    %r14,%r13
  81fe86:	4f 8d 24 67          	lea    (%r15,%r12,2),%r12
  81fe8a:	4d 03 d5             	add    %r13,%r10
  81fe8d:	4c 03 e7             	add    %rdi,%r12
  81fe90:	4c 89 a5 e0 f7 ff ff 	mov    %r12,-0x820(%rbp)
  81fe97:	4c 8b a5 b8 f1 ff ff 	mov    -0xe48(%rbp),%r12
  81fe9e:	4d 03 e2             	add    %r10,%r12
  81fea1:	4d 03 dc             	add    %r12,%r11
  81fea4:	4c 03 df             	add    %rdi,%r11
  81fea7:	4c 89 9d e8 f7 ff ff 	mov    %r11,-0x818(%rbp)
  81feae:	4c 8b 9d 48 fa ff ff 	mov    -0x5b8(%rbp),%r11
  81feb5:	4c 8b 95 58 f4 ff ff 	mov    -0xba8(%rbp),%r10
  81febc:	4c 8b 8d a0 f1 ff ff 	mov    -0xe60(%rbp),%r9
  81fec3:	4c 03 ca             	add    %rdx,%r9
  81fec6:	4c 8b bd e0 f4 ff ff 	mov    -0xb20(%rbp),%r15
  81fecd:	4d 03 f1             	add    %r9,%r14
  81fed0:	4c 8b 8d c0 f9 ff ff 	mov    -0x640(%rbp),%r9
  81fed7:	4f 8d 2c 5a          	lea    (%r10,%r11,2),%r13
  81fedb:	4c 8b 95 60 f4 ff ff 	mov    -0xba0(%rbp),%r10
  81fee2:	4c 2b bd 68 f4 ff ff 	sub    -0xb98(%rbp),%r15
  81fee9:	4c 03 bd 78 f4 ff ff 	add    -0xb88(%rbp),%r15
  81fef0:	4d 03 fd             	add    %r13,%r15
  81fef3:	4f 8d 1c 4a          	lea    (%r10,%r9,2),%r11
  81fef7:	4c 8b ad d8 f4 ff ff 	mov    -0xb28(%rbp),%r13
  81fefe:	4c 8b 95 08 f4 ff ff 	mov    -0xbf8(%rbp),%r10
  81ff05:	49 f7 da             	neg    %r10
  81ff08:	4c 2b ad 70 f4 ff ff 	sub    -0xb90(%rbp),%r13
  81ff0f:	4c 03 d1             	add    %rcx,%r10
  81ff12:	4c 03 ad 88 f4 ff ff 	add    -0xb78(%rbp),%r13
  81ff19:	4d 89 d1             	mov    %r10,%r9
  81ff1c:	4d 03 eb             	add    %r11,%r13
  81ff1f:	49 c1 e1 05          	shl    $0x5,%r9
  81ff23:	4c 8b a5 d8 f7 ff ff 	mov    -0x828(%rbp),%r12
  81ff2a:	4d 03 ca             	add    %r10,%r9
  81ff2d:	4d 03 e6             	add    %r14,%r12
  81ff30:	4c 8b b5 80 f9 ff ff 	mov    -0x680(%rbp),%r14
  81ff37:	4d 03 ee             	add    %r14,%r13
  81ff3a:	4c 89 ad e0 fa ff ff 	mov    %r13,-0x520(%rbp)
  81ff41:	4c 03 e7             	add    %rdi,%r12
  81ff44:	4c 8b 95 18 f4 ff ff 	mov    -0xbe8(%rbp),%r10
  81ff4b:	4c 8b ad 20 f4 ff ff 	mov    -0xbe0(%rbp),%r13
  81ff52:	4d 0f af d5          	imul   %r13,%r10
  81ff56:	4c 0f af e9          	imul   %rcx,%r13
  81ff5a:	48 8d 8d 88 f9 ff ff 	lea    -0x678(%rbp),%rcx
  81ff61:	48 8b 11             	mov    (%rcx),%rdx
  81ff64:	4c 03 fa             	add    %rdx,%r15
  81ff67:	4c 89 bd 78 f9 ff ff 	mov    %r15,-0x688(%rbp)
  81ff6e:	4c 8b bd 00 f4 ff ff 	mov    -0xc00(%rbp),%r15
  81ff75:	48 03 95 c0 f5 ff ff 	add    -0xa40(%rbp),%rdx
  81ff7c:	48 89 11             	mov    %rdx,(%rcx)
  81ff7f:	4c 8b 9d f0 f3 ff ff 	mov    -0xc10(%rbp),%r11
  81ff86:	4a 8d 14 bd 00 00 00 	lea    0x0(,%r15,4),%rdx
  81ff8d:	00 
  81ff8e:	48 f7 da             	neg    %rdx
  81ff91:	4c 03 b5 c8 f5 ff ff 	add    -0xa38(%rbp),%r14
  81ff98:	48 03 95 f8 f3 ff ff 	add    -0xc08(%rbp),%rdx
  81ff9f:	4c 89 b5 80 f9 ff ff 	mov    %r14,-0x680(%rbp)
  81ffa6:	49 c1 e1 05          	shl    $0x5,%r9
  81ffaa:	4c 8b b5 10 f4 ff ff 	mov    -0xbf0(%rbp),%r14
  81ffb1:	48 89 95 50 f6 ff ff 	mov    %rdx,-0x9b0(%rbp)
  81ffb8:	4a 8d 14 9d 00 00 00 	lea    0x0(,%r11,4),%rdx
  81ffbf:	00 
  81ffc0:	4c 89 8d 10 f6 ff ff 	mov    %r9,-0x9f0(%rbp)
  81ffc7:	4d 89 f1             	mov    %r14,%r9
  81ffca:	4c 2b ca             	sub    %rdx,%r9
  81ffcd:	49 2b d2             	sub    %r10,%rdx
  81ffd0:	4d 2b d5             	sub    %r13,%r10
  81ffd3:	49 03 d1             	add    %r9,%rdx
  81ffd6:	8b 8d b8 f3 ff ff    	mov    -0xc48(%rbp),%ecx
  81ffdc:	4d 2b ca             	sub    %r10,%r9
  81ffdf:	49 f7 da             	neg    %r10
  81ffe2:	49 03 d5             	add    %r13,%rdx
  81ffe5:	4d 03 d6             	add    %r14,%r10
  81ffe8:	4c 8b b5 f8 f4 ff ff 	mov    -0xb08(%rbp),%r14
  81ffef:	4c 89 8d 38 f6 ff ff 	mov    %r9,-0x9c8(%rbp)
  81fff6:	44 8d 49 01          	lea    0x1(%rcx),%r9d
  81fffa:	44 89 8d 58 f6 ff ff 	mov    %r9d,-0x9a8(%rbp)
  820001:	8b 8d e0 f3 ff ff    	mov    -0xc20(%rbp),%ecx
  820007:	44 8b 8d 60 f6 ff ff 	mov    -0x9a0(%rbp),%r9d
  82000e:	4c 8b ad 90 f8 ff ff 	mov    -0x770(%rbp),%r13
  820015:	49 d1 ed             	shr    %r13
  820018:	4c 8d bd 70 f8 ff ff 	lea    -0x790(%rbp),%r15
  82001f:	4d 89 2f             	mov    %r13,(%r15)
  820022:	4d 8d 2c 06          	lea    (%r14,%rax,1),%r13
  820026:	4c 2b ad a8 f1 ff ff 	sub    -0xe58(%rbp),%r13
  82002d:	46 8d 1c 09          	lea    (%rcx,%r9,1),%r11d
  820031:	44 89 9d 30 f5 ff ff 	mov    %r11d,-0xad0(%rbp)
  820038:	4c 8d 8d b0 f6 ff ff 	lea    -0x950(%rbp),%r9
  82003f:	49 8b 01             	mov    (%r9),%rax
  820042:	4c 8d b5 d0 f6 ff ff 	lea    -0x930(%rbp),%r14
  820049:	49 8b 0e             	mov    (%r14),%rcx
  82004c:	49 03 c5             	add    %r13,%rax
  82004f:	4c 8b 9d c0 f6 ff ff 	mov    -0x940(%rbp),%r11
  820056:	49 03 cd             	add    %r13,%rcx
  820059:	4d 03 dd             	add    %r13,%r11
  82005c:	48 03 c7             	add    %rdi,%rax
  82005f:	4c 03 ad d0 f1 ff ff 	add    -0xe30(%rbp),%r13
  820066:	48 03 cf             	add    %rdi,%rcx
  820069:	4c 03 df             	add    %rdi,%r11
  82006c:	49 03 fd             	add    %r13,%rdi
  82006f:	4c 89 9d c0 f6 ff ff 	mov    %r11,-0x940(%rbp)
  820076:	49 89 01             	mov    %rax,(%r9)
  820079:	49 89 0e             	mov    %rcx,(%r14)
  82007c:	4c 89 a5 d8 f7 ff ff 	mov    %r12,-0x828(%rbp)
  820083:	48 8b 85 60 f9 ff ff 	mov    -0x6a0(%rbp),%rax
  82008a:	4d 8b 27             	mov    (%r15),%r12
  82008d:	4c 8b 9d 80 f8 ff ff 	mov    -0x780(%rbp),%r11
  820094:	48 89 bd 90 f6 ff ff 	mov    %rdi,-0x970(%rbp)
  82009b:	4c 89 95 38 f8 ff ff 	mov    %r10,-0x7c8(%rbp)
  8200a2:	4c 89 85 98 f6 ff ff 	mov    %r8,-0x968(%rbp)
  8200a9:	48 89 b5 40 f8 ff ff 	mov    %rsi,-0x7c0(%rbp)
  8200b0:	48 83 bd 70 fa ff ff 	cmpq   $0x8,-0x590(%rbp)
  8200b7:	08 
  8200b8:	0f 85 f9 01 00 00    	jne    8202b7 <pre_step3d_mod_mp_pre_step3d_tile_+0xbe17>
  8200be:	48 83 bd 58 fa ff ff 	cmpq   $0x8,-0x5a8(%rbp)
  8200c5:	08 
  8200c6:	0f 85 eb 01 00 00    	jne    8202b7 <pre_step3d_mod_mp_pre_step3d_tile_+0xbe17>
  8200cc:	45 33 c9             	xor    %r9d,%r9d
  8200cf:	4c 8b 85 18 f8 ff ff 	mov    -0x7e8(%rbp),%r8
  8200d6:	33 f6                	xor    %esi,%esi
  8200d8:	48 8b bd 90 f1 ff ff 	mov    -0xe70(%rbp),%rdi
  8200df:	48 83 bd 10 f8 ff ff 	cmpq   $0x2,-0x7f0(%rbp)
  8200e6:	02 
  8200e7:	0f 8c 42 56 00 00    	jl     82572f <pre_step3d_mod_mp_pre_step3d_tile_+0x1128f>
  8200ed:	4c 8b 95 30 f8 ff ff 	mov    -0x7d0(%rbp),%r10
  8200f4:	4c 0f af d0          	imul   %rax,%r10
  8200f8:	48 8b 8d b0 f6 ff ff 	mov    -0x950(%rbp),%rcx
  8200ff:	4c 8b ad d0 f6 ff ff 	mov    -0x930(%rbp),%r13
  820106:	4c 8b b5 c0 f6 ff ff 	mov    -0x940(%rbp),%r14
  82010d:	48 89 95 78 f8 ff ff 	mov    %rdx,-0x788(%rbp)
  820114:	49 03 ca             	add    %r10,%rcx
  820117:	48 89 85 60 f9 ff ff 	mov    %rax,-0x6a0(%rbp)
  82011e:	4f 8d 7c 15 00       	lea    0x0(%r13,%r10,1),%r15
  820123:	4c 89 bd 48 f9 ff ff 	mov    %r15,-0x6b8(%rbp)
  82012a:	4f 8d 2c 16          	lea    (%r14,%r10,1),%r13
  82012e:	4c 03 95 90 f6 ff ff 	add    -0x970(%rbp),%r10
  820135:	48 8b 95 68 fa ff ff 	mov    -0x598(%rbp),%rdx
  82013c:	4c 89 95 38 f9 ff ff 	mov    %r10,-0x6c8(%rbp)
  820143:	4c 89 ad 40 f9 ff ff 	mov    %r13,-0x6c0(%rbp)
  82014a:	48 8b 85 38 fa ff ff 	mov    -0x5c8(%rbp),%rax
  820151:	48 3b 85 20 fa ff ff 	cmp    -0x5e0(%rbp),%rax
  820158:	0f 8c 2f 01 00 00    	jl     82028d <pre_step3d_mod_mp_pre_step3d_tile_+0xbded>
  82015e:	48 83 fa 04          	cmp    $0x4,%rdx
  820162:	0f 8c c0 55 00 00    	jl     825728 <pre_step3d_mod_mp_pre_step3d_tile_+0x11288>
  820168:	4c 8b ad 48 f9 ff ff 	mov    -0x6b8(%rbp),%r13
  82016f:	45 33 ff             	xor    %r15d,%r15d
  820172:	4c 8b a5 40 f9 ff ff 	mov    -0x6c0(%rbp),%r12
  820179:	4c 8d 34 31          	lea    (%rcx,%rsi,1),%r14
  82017d:	4c 8b 95 38 f9 ff ff 	mov    -0x6c8(%rbp),%r10
  820184:	48 8b 85 c8 fa ff ff 	mov    -0x538(%rbp),%rax
  82018b:	4c 03 ee             	add    %rsi,%r13
  82018e:	48 89 c2             	mov    %rax,%rdx
  820191:	4c 03 e6             	add    %rsi,%r12
  820194:	4d 8d 1c 32          	lea    (%r10,%rsi,1),%r11
  820198:	4d 89 c2             	mov    %r8,%r10
  82019b:	c4 81 7d 10 4c fd 00 	vmovupd 0x0(%r13,%r15,8),%ymm1
  8201a2:	c4 81 7d 10 04 fb    	vmovupd (%r11,%r15,8),%ymm0
  8201a8:	c4 01 75 58 2c fe    	vaddpd (%r14,%r15,8),%ymm1,%ymm13
  8201ae:	c4 01 7d 58 34 fc    	vaddpd (%r12,%r15,8),%ymm0,%ymm14
  8201b4:	c4 41 6d 59 fd       	vmulpd %ymm13,%ymm2,%ymm15
  8201b9:	c4 62 8d ba fd       	vfmsub231pd %ymm5,%ymm14,%ymm15
  8201be:	c4 a1 05 59 04 ff    	vmulpd (%rdi,%r15,8),%ymm15,%ymm0
  8201c4:	49 83 c7 04          	add    $0x4,%r15
  8201c8:	c4 c1 7d 11 42 10    	vmovupd %ymm0,0x10(%r10)
  8201ce:	49 83 c2 20          	add    $0x20,%r10
  8201d2:	4c 3b fa             	cmp    %rdx,%r15
  8201d5:	72 c4                	jb     82019b <pre_step3d_mod_mp_pre_step3d_tile_+0xbcfb>
  8201d7:	48 8b 95 68 fa ff ff 	mov    -0x598(%rbp),%rdx
  8201de:	4c 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%r13
  8201e5:	00 
  8201e6:	48 3b c2             	cmp    %rdx,%rax
  8201e9:	73 78                	jae    820263 <pre_step3d_mod_mp_pre_step3d_tile_+0xbdc3>
  8201eb:	4c 8b 9d 48 f9 ff ff 	mov    -0x6b8(%rbp),%r11
  8201f2:	4d 8d 34 c0          	lea    (%r8,%rax,8),%r14
  8201f6:	4c 8b 95 40 f9 ff ff 	mov    -0x6c0(%rbp),%r10
  8201fd:	4c 8d 24 31          	lea    (%rcx,%rsi,1),%r12
  820201:	4c 8b bd 38 f9 ff ff 	mov    -0x6c8(%rbp),%r15
  820208:	4c 03 de             	add    %rsi,%r11
  82020b:	4c 03 d6             	add    %rsi,%r10
  82020e:	4c 03 fe             	add    %rsi,%r15
  820211:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  820218:	00 
  820219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  820220:	c4 81 7b 10 4c 1d 00 	vmovsd 0x0(%r13,%r11,1),%xmm1
  820227:	48 ff c0             	inc    %rax
  82022a:	c4 81 7b 10 44 3d 00 	vmovsd 0x0(%r13,%r15,1),%xmm0
  820231:	c4 01 73 58 6c 25 00 	vaddsd 0x0(%r13,%r12,1),%xmm1,%xmm13
  820238:	c4 01 7b 58 74 15 00 	vaddsd 0x0(%r13,%r10,1),%xmm0,%xmm14
  82023f:	c4 41 3b 59 fd       	vmulsd %xmm13,%xmm8,%xmm15
  820244:	c4 62 89 bb fc       	vfmsub231sd %xmm4,%xmm14,%xmm15
  820249:	c4 c1 03 59 44 3d 00 	vmulsd 0x0(%r13,%rdi,1),%xmm15,%xmm0
  820250:	49 83 c5 08          	add    $0x8,%r13
  820254:	c4 c1 7b 11 46 10    	vmovsd %xmm0,0x10(%r14)
  82025a:	49 83 c6 08          	add    $0x8,%r14
  82025e:	48 3b c2             	cmp    %rdx,%rax
  820261:	72 bd                	jb     820220 <pre_step3d_mod_mp_pre_step3d_tile_+0xbd80>
  820263:	49 ff c1             	inc    %r9
  820266:	4c 03 85 40 fa ff ff 	add    -0x5c0(%rbp),%r8
  82026d:	48 03 bd b8 f8 ff ff 	add    -0x748(%rbp),%rdi
  820274:	48 03 b5 28 fa ff ff 	add    -0x5d8(%rbp),%rsi
  82027b:	4c 3b 8d c0 f8 ff ff 	cmp    -0x740(%rbp),%r9
  820282:	0f 82 c2 fe ff ff    	jb     82014a <pre_step3d_mod_mp_pre_step3d_tile_+0xbcaa>
  820288:	e9 94 47 00 00       	jmpq   824a21 <pre_step3d_mod_mp_pre_step3d_tile_+0x10581>
  82028d:	49 ff c1             	inc    %r9
  820290:	4c 03 85 40 fa ff ff 	add    -0x5c0(%rbp),%r8
  820297:	48 03 bd b8 f8 ff ff 	add    -0x748(%rbp),%rdi
  82029e:	48 03 b5 28 fa ff ff 	add    -0x5d8(%rbp),%rsi
  8202a5:	4c 3b 8d c0 f8 ff ff 	cmp    -0x740(%rbp),%r9
  8202ac:	0f 82 98 fe ff ff    	jb     82014a <pre_step3d_mod_mp_pre_step3d_tile_+0xbcaa>
  8202b2:	e9 35 4a 00 00       	jmpq   824cec <pre_step3d_mod_mp_pre_step3d_tile_+0x1084c>
  8202b7:	33 ff                	xor    %edi,%edi
  8202b9:	45 33 c0             	xor    %r8d,%r8d
  8202bc:	48 8b b5 18 f8 ff ff 	mov    -0x7e8(%rbp),%rsi
  8202c3:	33 c9                	xor    %ecx,%ecx
  8202c5:	48 83 bd 10 f8 ff ff 	cmpq   $0x2,-0x7f0(%rbp)
  8202cc:	02 
  8202cd:	0f 8c 5c 54 00 00    	jl     82572f <pre_step3d_mod_mp_pre_step3d_tile_+0x1128f>
  8202d3:	4c 8b b5 30 f8 ff ff 	mov    -0x7d0(%rbp),%r14
  8202da:	4c 0f af f0          	imul   %rax,%r14
  8202de:	4c 8b 8d 58 f8 ff ff 	mov    -0x7a8(%rbp),%r9
  8202e5:	4f 8d 14 33          	lea    (%r11,%r14,1),%r10
  8202e9:	4c 8b bd a0 f6 ff ff 	mov    -0x960(%rbp),%r15
  8202f0:	4c 89 95 e0 f8 ff ff 	mov    %r10,-0x720(%rbp)
  8202f7:	4c 8b ad 50 f8 ff ff 	mov    -0x7b0(%rbp),%r13
  8202fe:	4f 8d 14 31          	lea    (%r9,%r14,1),%r10
  820302:	48 89 85 60 f9 ff ff 	mov    %rax,-0x6a0(%rbp)
  820309:	4f 8d 0c 37          	lea    (%r15,%r14,1),%r9
  82030d:	4c 8b bd b8 f6 ff ff 	mov    -0x948(%rbp),%r15
  820314:	4c 89 8d 08 f9 ff ff 	mov    %r9,-0x6f8(%rbp)
  82031b:	4d 03 ee             	add    %r14,%r13
  82031e:	4c 89 95 18 f9 ff ff 	mov    %r10,-0x6e8(%rbp)
  820325:	4c 89 ad 10 f9 ff ff 	mov    %r13,-0x6f0(%rbp)
  82032c:	4d 03 fe             	add    %r14,%r15
  82032f:	4c 89 bd d8 f8 ff ff 	mov    %r15,-0x728(%rbp)
  820336:	4c 8b bd a8 f6 ff ff 	mov    -0x958(%rbp),%r15
  82033d:	48 89 95 78 f8 ff ff 	mov    %rdx,-0x788(%rbp)
  820344:	4d 03 fe             	add    %r14,%r15
  820347:	4c 89 bd d0 f8 ff ff 	mov    %r15,-0x730(%rbp)
  82034e:	4c 8b bd c8 f6 ff ff 	mov    -0x938(%rbp),%r15
  820355:	4d 03 fe             	add    %r14,%r15
  820358:	4c 03 b5 98 f6 ff ff 	add    -0x968(%rbp),%r14
  82035f:	4c 89 bd c8 f8 ff ff 	mov    %r15,-0x738(%rbp)
  820366:	4c 89 b5 00 f9 ff ff 	mov    %r14,-0x700(%rbp)
  82036d:	48 8b 85 38 fa ff ff 	mov    -0x5c8(%rbp),%rax
  820374:	48 3b 85 20 fa ff ff 	cmp    -0x5e0(%rbp),%rax
  82037b:	0f 8c 12 03 00 00    	jl     820693 <pre_step3d_mod_mp_pre_step3d_tile_+0xc1f3>
  820381:	48 83 bd 68 fa ff ff 	cmpq   $0x4,-0x598(%rbp)
  820388:	04 
  820389:	0f 8c b9 53 00 00    	jl     825748 <pre_step3d_mod_mp_pre_step3d_tile_+0x112a8>
  82038f:	48 8b 95 d8 f8 ff ff 	mov    -0x728(%rbp),%rdx
  820396:	45 33 ff             	xor    %r15d,%r15d
  820399:	4c 8b b5 50 f9 ff ff 	mov    -0x6b0(%rbp),%r14
  8203a0:	4c 8b ad 10 f9 ff ff 	mov    -0x6f0(%rbp),%r13
  8203a7:	4c 8b a5 e0 f8 ff ff 	mov    -0x720(%rbp),%r12
  8203ae:	48 03 d1             	add    %rcx,%rdx
  8203b1:	48 89 95 c0 fa ff ff 	mov    %rdx,-0x540(%rbp)
  8203b8:	4d 03 f0             	add    %r8,%r14
  8203bb:	48 8b 95 d0 f8 ff ff 	mov    -0x730(%rbp),%rdx
  8203c2:	4c 03 e9             	add    %rcx,%r13
  8203c5:	4c 8b 9d 18 f9 ff ff 	mov    -0x6e8(%rbp),%r11
  8203cc:	4c 03 e1             	add    %rcx,%r12
  8203cf:	4c 8b 95 08 f9 ff ff 	mov    -0x6f8(%rbp),%r10
  8203d6:	4c 8b 8d 58 f9 ff ff 	mov    -0x6a8(%rbp),%r9
  8203dd:	48 03 d1             	add    %rcx,%rdx
  8203e0:	48 89 95 b8 fa ff ff 	mov    %rdx,-0x548(%rbp)
  8203e7:	4c 03 d9             	add    %rcx,%r11
  8203ea:	48 8b 95 c8 f8 ff ff 	mov    -0x738(%rbp),%rdx
  8203f1:	4c 03 d1             	add    %rcx,%r10
  8203f4:	48 8b 85 c8 fa ff ff 	mov    -0x538(%rbp),%rax
  8203fb:	4d 03 c8             	add    %r8,%r9
  8203fe:	48 89 b5 20 f9 ff ff 	mov    %rsi,-0x6e0(%rbp)
  820405:	48 89 85 28 f9 ff ff 	mov    %rax,-0x6d8(%rbp)
  82040c:	48 03 d1             	add    %rcx,%rdx
  82040f:	48 89 95 b0 fa ff ff 	mov    %rdx,-0x550(%rbp)
  820416:	48 8b 95 00 f9 ff ff 	mov    -0x700(%rbp),%rdx
  82041d:	48 89 8d 30 f9 ff ff 	mov    %rcx,-0x6d0(%rbp)
  820424:	48 89 b5 f0 f8 ff ff 	mov    %rsi,-0x710(%rbp)
  82042b:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  820432:	48 03 d1             	add    %rcx,%rdx
  820435:	48 89 95 a8 fa ff ff 	mov    %rdx,-0x558(%rbp)
  82043c:	33 d2                	xor    %edx,%edx
  82043e:	4c 89 85 f8 f8 ff ff 	mov    %r8,-0x708(%rbp)
  820445:	48 8b 85 20 f9 ff ff 	mov    -0x6e0(%rbp),%rax
  82044c:	48 89 d1             	mov    %rdx,%rcx
  82044f:	48 8b b5 70 fa ff ff 	mov    -0x590(%rbp),%rsi
  820456:	48 8b bd 58 fa ff ff 	mov    -0x5a8(%rbp),%rdi
  82045d:	49 83 c7 04          	add    $0x4,%r15
  820461:	4d 8d 04 16          	lea    (%r14,%rdx,1),%r8
  820465:	c4 41 7b 10 38       	vmovsd (%r8),%xmm15
  82046a:	c4 41 01 16 34 30    	vmovhpd (%r8,%rsi,1),%xmm15,%xmm14
  820470:	4d 8d 04 0c          	lea    (%r12,%rcx,1),%r8
  820474:	c4 c1 7b 10 08       	vmovsd (%r8),%xmm1
  820479:	c4 41 71 16 2c 38    	vmovhpd (%r8,%rdi,1),%xmm1,%xmm13
  82047f:	4d 8d 04 0b          	lea    (%r11,%rcx,1),%r8
  820483:	c4 c1 7b 10 00       	vmovsd (%r8),%xmm0
  820488:	c4 41 79 16 3c 38    	vmovhpd (%r8,%rdi,1),%xmm0,%xmm15
  82048e:	4d 8d 44 0d 00       	lea    0x0(%r13,%rcx,1),%r8
  820493:	c4 c1 7b 10 08       	vmovsd (%r8),%xmm1
  820498:	c4 41 11 58 ef       	vaddpd %xmm15,%xmm13,%xmm13
  82049d:	c4 41 71 16 3c 38    	vmovhpd (%r8,%rdi,1),%xmm1,%xmm15
  8204a3:	4d 8d 04 0a          	lea    (%r10,%rcx,1),%r8
  8204a7:	c4 c1 7b 10 00       	vmovsd (%r8),%xmm0
  8204ac:	c4 c1 79 16 0c 38    	vmovhpd (%r8,%rdi,1),%xmm0,%xmm1
  8204b2:	4d 8d 04 11          	lea    (%r9,%rdx,1),%r8
  8204b6:	c5 81 58 c1          	vaddpd %xmm1,%xmm15,%xmm0
  8204ba:	c5 c1 59 c8          	vmulpd %xmm0,%xmm7,%xmm1
  8204be:	c4 e2 91 ba ce       	vfmsub231pd %xmm6,%xmm13,%xmm1
  8204c3:	48 8d 14 b2          	lea    (%rdx,%rsi,4),%rdx
  8204c7:	c5 09 59 f1          	vmulpd %xmm1,%xmm14,%xmm14
  8204cb:	c4 c1 7b 10 08       	vmovsd (%r8),%xmm1
  8204d0:	c4 c1 71 16 0c 30    	vmovhpd (%r8,%rsi,1),%xmm1,%xmm1
  8204d6:	4c 8b 85 b0 fa ff ff 	mov    -0x550(%rbp),%r8
  8204dd:	c5 79 11 70 10       	vmovupd %xmm14,0x10(%rax)
  8204e2:	4c 03 c1             	add    %rcx,%r8
  8204e5:	c4 c1 7b 10 00       	vmovsd (%r8),%xmm0
  8204ea:	c4 41 79 16 34 38    	vmovhpd (%r8,%rdi,1),%xmm0,%xmm14
  8204f0:	4c 8b 85 b8 fa ff ff 	mov    -0x548(%rbp),%r8
  8204f7:	4c 03 c1             	add    %rcx,%r8
  8204fa:	c4 41 7b 10 28       	vmovsd (%r8),%xmm13
  8204ff:	c4 41 11 16 3c 38    	vmovhpd (%r8,%rdi,1),%xmm13,%xmm15
  820505:	4c 8b 85 a8 fa ff ff 	mov    -0x558(%rbp),%r8
  82050c:	c4 c1 09 58 c7       	vaddpd %xmm15,%xmm14,%xmm0
  820511:	4c 03 c1             	add    %rcx,%r8
  820514:	c4 41 7b 10 28       	vmovsd (%r8),%xmm13
  820519:	c4 41 11 16 3c 38    	vmovhpd (%r8,%rdi,1),%xmm13,%xmm15
  82051f:	4c 8b 85 c0 fa ff ff 	mov    -0x540(%rbp),%r8
  820526:	4c 03 c1             	add    %rcx,%r8
  820529:	c4 41 7b 10 30       	vmovsd (%r8),%xmm14
  82052e:	48 8d 0c b9          	lea    (%rcx,%rdi,4),%rcx
  820532:	c4 41 09 16 2c 38    	vmovhpd (%r8,%rdi,1),%xmm14,%xmm13
  820538:	c4 41 01 58 f5       	vaddpd %xmm13,%xmm15,%xmm14
  82053d:	c4 41 41 59 fe       	vmulpd %xmm14,%xmm7,%xmm15
  820542:	c4 62 f9 ba fe       	vfmsub231pd %xmm6,%xmm0,%xmm15
  820547:	c4 c1 71 59 c7       	vmulpd %xmm15,%xmm1,%xmm0
  82054c:	c5 f9 11 40 20       	vmovupd %xmm0,0x20(%rax)
  820551:	48 83 c0 20          	add    $0x20,%rax
  820555:	4c 3b bd c8 fa ff ff 	cmp    -0x538(%rbp),%r15
  82055c:	0f 82 fb fe ff ff    	jb     82045d <pre_step3d_mod_mp_pre_step3d_tile_+0xbfbd>
  820562:	48 8b 85 28 f9 ff ff 	mov    -0x6d8(%rbp),%rax
  820569:	48 8b 8d 30 f9 ff ff 	mov    -0x6d0(%rbp),%rcx
  820570:	4c 8b 85 f8 f8 ff ff 	mov    -0x708(%rbp),%r8
  820577:	48 8b b5 f0 f8 ff ff 	mov    -0x710(%rbp),%rsi
  82057e:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  820585:	4c 8b ad 58 fa ff ff 	mov    -0x5a8(%rbp),%r13
  82058c:	4c 8b bd 70 fa ff ff 	mov    -0x590(%rbp),%r15
  820593:	4c 0f af e8          	imul   %rax,%r13
  820597:	4c 0f af f8          	imul   %rax,%r15
  82059b:	48 3b 85 68 fa ff ff 	cmp    -0x598(%rbp),%rax
  8205a2:	0f 83 c1 00 00 00    	jae    820669 <pre_step3d_mod_mp_pre_step3d_tile_+0xc1c9>
  8205a8:	4c 8b a5 50 f9 ff ff 	mov    -0x6b0(%rbp),%r12
  8205af:	4c 8d 34 c6          	lea    (%rsi,%rax,8),%r14
  8205b3:	4c 8b 9d 10 f9 ff ff 	mov    -0x6f0(%rbp),%r11
  8205ba:	4c 8b 95 e0 f8 ff ff 	mov    -0x720(%rbp),%r10
  8205c1:	4c 8b 8d 18 f9 ff ff 	mov    -0x6e8(%rbp),%r9
  8205c8:	4d 03 e0             	add    %r8,%r12
  8205cb:	48 8b 95 08 f9 ff ff 	mov    -0x6f8(%rbp),%rdx
  8205d2:	4c 03 d9             	add    %rcx,%r11
  8205d5:	4c 89 85 f8 f8 ff ff 	mov    %r8,-0x708(%rbp)
  8205dc:	4c 03 d1             	add    %rcx,%r10
  8205df:	48 89 b5 f0 f8 ff ff 	mov    %rsi,-0x710(%rbp)
  8205e6:	4c 03 c9             	add    %rcx,%r9
  8205e9:	48 89 bd e8 f8 ff ff 	mov    %rdi,-0x718(%rbp)
  8205f0:	48 03 d1             	add    %rcx,%rdx
  8205f3:	48 8b b5 68 fa ff ff 	mov    -0x598(%rbp),%rsi
  8205fa:	48 8b bd 70 fa ff ff 	mov    -0x590(%rbp),%rdi
  820601:	4c 8b 85 58 fa ff ff 	mov    -0x5a8(%rbp),%r8
  820608:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  82060f:	00 
  820610:	c4 81 7b 10 4c 1d 00 	vmovsd 0x0(%r13,%r11,1),%xmm1
  820617:	48 ff c0             	inc    %rax
  82061a:	c4 81 7b 10 44 15 00 	vmovsd 0x0(%r13,%r10,1),%xmm0
  820621:	c4 41 73 58 6c 15 00 	vaddsd 0x0(%r13,%rdx,1),%xmm1,%xmm13
  820628:	c4 01 7b 58 74 0d 00 	vaddsd 0x0(%r13,%r9,1),%xmm0,%xmm14
  82062f:	c4 41 3b 59 fd       	vmulsd %xmm13,%xmm8,%xmm15
  820634:	c4 62 89 bb fc       	vfmsub231sd %xmm4,%xmm14,%xmm15
  820639:	4d 03 e8             	add    %r8,%r13
  82063c:	c4 81 03 59 04 27    	vmulsd (%r15,%r12,1),%xmm15,%xmm0
  820642:	4c 03 ff             	add    %rdi,%r15
  820645:	c4 c1 7b 11 46 10    	vmovsd %xmm0,0x10(%r14)
  82064b:	49 83 c6 08          	add    $0x8,%r14
  82064f:	48 3b c6             	cmp    %rsi,%rax
  820652:	72 bc                	jb     820610 <pre_step3d_mod_mp_pre_step3d_tile_+0xc170>
  820654:	4c 8b 85 f8 f8 ff ff 	mov    -0x708(%rbp),%r8
  82065b:	48 8b b5 f0 f8 ff ff 	mov    -0x710(%rbp),%rsi
  820662:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  820669:	48 ff c7             	inc    %rdi
  82066c:	48 03 b5 40 fa ff ff 	add    -0x5c0(%rbp),%rsi
  820673:	4c 03 85 b8 f8 ff ff 	add    -0x748(%rbp),%r8
  82067a:	48 03 8d 28 fa ff ff 	add    -0x5d8(%rbp),%rcx
  820681:	48 3b bd c0 f8 ff ff 	cmp    -0x740(%rbp),%rdi
  820688:	0f 82 df fc ff ff    	jb     82036d <pre_step3d_mod_mp_pre_step3d_tile_+0xbecd>
  82068e:	e9 8e 43 00 00       	jmpq   824a21 <pre_step3d_mod_mp_pre_step3d_tile_+0x10581>
  820693:	48 ff c7             	inc    %rdi
  820696:	48 03 b5 40 fa ff ff 	add    -0x5c0(%rbp),%rsi
  82069d:	4c 03 85 b8 f8 ff ff 	add    -0x748(%rbp),%r8
  8206a4:	48 03 8d 28 fa ff ff 	add    -0x5d8(%rbp),%rcx
  8206ab:	48 3b bd c0 f8 ff ff 	cmp    -0x740(%rbp),%rdi
  8206b2:	0f 82 b5 fc ff ff    	jb     82036d <pre_step3d_mod_mp_pre_step3d_tile_+0xbecd>
  8206b8:	e9 2f 46 00 00       	jmpq   824cec <pre_step3d_mod_mp_pre_step3d_tile_+0x1084c>
  8206bd:	53                   	push   %rbx
  8206be:	48 89 e3             	mov    %rsp,%rbx
  8206c1:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  8206c5:	55                   	push   %rbp
  8206c6:	55                   	push   %rbp
  8206c7:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  8206cb:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  8206d0:	48 89 e5             	mov    %rsp,%rbp
  8206d3:	48 81 ec 70 0e 00 00 	sub    $0xe70,%rsp
  8206da:	4c 89 ad 28 f6 ff ff 	mov    %r13,-0x9d8(%rbp)
  8206e1:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
  8206e5:	4c 89 bd 18 f6 ff ff 	mov    %r15,-0x9e8(%rbp)
  8206ec:	4c 89 a5 30 f6 ff ff 	mov    %r12,-0x9d0(%rbp)
  8206f3:	4c 8b 7b 20          	mov    0x20(%rbx),%r15
  8206f7:	4c 8b 63 48          	mov    0x48(%rbx),%r12
  8206fb:	4c 89 b5 20 f6 ff ff 	mov    %r14,-0x9e0(%rbp)
  820702:	4c 8b 73 28          	mov    0x28(%rbx),%r14
  820706:	45 8b 6d 00          	mov    0x0(%r13),%r13d
  82070a:	44 89 ad d0 fc ff ff 	mov    %r13d,-0x330(%rbp)
  820711:	48 8b 43 18          	mov    0x18(%rbx),%rax
  820715:	4d 8b 2f             	mov    (%r15),%r13
  820718:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  82071c:	4d 8b 24 24          	mov    (%r12),%r12
  820720:	4c 89 ad c8 f1 ff ff 	mov    %r13,-0xe38(%rbp)
  820727:	4c 89 a5 10 f2 ff ff 	mov    %r12,-0xdf0(%rbp)
  82072e:	4c 8b 2a             	mov    (%rdx),%r13
  820731:	4d 8b 26             	mov    (%r14),%r12
  820734:	48 8b 53 50          	mov    0x50(%rbx),%rdx
  820738:	4c 8b 53 38          	mov    0x38(%rbx),%r10
  82073c:	4c 89 a5 e8 f1 ff ff 	mov    %r12,-0xe18(%rbp)
  820743:	4c 8b 20             	mov    (%rax),%r12
  820746:	48 63 06             	movslq (%rsi),%rax
  820749:	49 63 31             	movslq (%r9),%rsi
  82074c:	48 89 85 c0 fb ff ff 	mov    %rax,-0x440(%rbp)
  820753:	48 63 02             	movslq (%rdx),%rax
  820756:	48 8b 53 58          	mov    0x58(%rbx),%rdx
  82075a:	48 89 b5 b8 fb ff ff 	mov    %rsi,-0x448(%rbp)
  820761:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
  820765:	48 8b 73 60          	mov    0x60(%rbx),%rsi
  820769:	45 8b 12             	mov    (%r10),%r10d
  82076c:	45 8b 00             	mov    (%r8),%r8d
  82076f:	4c 8b 73 78          	mov    0x78(%rbx),%r14
  820773:	44 89 95 d8 fc ff ff 	mov    %r10d,-0x328(%rbp)
  82077a:	44 89 85 68 f8 ff ff 	mov    %r8d,-0x798(%rbp)
  820781:	8b 09                	mov    (%rcx),%ecx
  820783:	48 89 85 08 f8 ff ff 	mov    %rax,-0x7f8(%rbp)
  82078a:	4c 8b 43 68          	mov    0x68(%rbx),%r8
  82078e:	4c 8b 53 70          	mov    0x70(%rbx),%r10
  820792:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
  820799:	8b 3f                	mov    (%rdi),%edi
  82079b:	89 8d 40 f8 ff ff    	mov    %ecx,-0x7c0(%rbp)
  8207a1:	48 63 0a             	movslq (%rdx),%rcx
  8207a4:	89 bd 20 f7 ff ff    	mov    %edi,-0x8e0(%rbp)
  8207aa:	4d 8b 1b             	mov    (%r11),%r11
  8207ad:	48 8b 3e             	mov    (%rsi),%rdi
  8207b0:	4d 8b 3e             	mov    (%r14),%r15
  8207b3:	48 89 8d 10 f8 ff ff 	mov    %rcx,-0x7f0(%rbp)
  8207ba:	4c 8d b3 88 00 00 00 	lea    0x88(%rbx),%r14
  8207c1:	49 8b 0e             	mov    (%r14),%rcx
  8207c4:	4c 89 9d d8 f1 ff ff 	mov    %r11,-0xe28(%rbp)
  8207cb:	48 89 bd f8 f1 ff ff 	mov    %rdi,-0xe08(%rbp)
  8207d2:	4d 8b 08             	mov    (%r8),%r9
  8207d5:	4d 8b 1a             	mov    (%r10),%r11
  8207d8:	4c 89 bd d0 f1 ff ff 	mov    %r15,-0xe30(%rbp)
  8207df:	48 8b 10             	mov    (%rax),%rdx
  8207e2:	49 8b 7e 08          	mov    0x8(%r14),%rdi
  8207e6:	4d 8b 7e 28          	mov    0x28(%r14),%r15
  8207ea:	4c 89 8d 08 f2 ff ff 	mov    %r9,-0xdf8(%rbp)
  8207f1:	4c 89 9d f0 f1 ff ff 	mov    %r11,-0xe10(%rbp)
  8207f8:	48 89 95 e0 f1 ff ff 	mov    %rdx,-0xe20(%rbp)
  8207ff:	48 8d 93 98 00 00 00 	lea    0x98(%rbx),%rdx
  820806:	4c 8b 0a             	mov    (%rdx),%r9
  820809:	4c 8b 5a 08          	mov    0x8(%rdx),%r11
  82080d:	48 8b 52 20          	mov    0x20(%rdx),%rdx
  820811:	48 8b 31             	mov    (%rcx),%rsi
  820814:	4c 63 07             	movslq (%rdi),%r8
  820817:	49 63 07             	movslq (%r15),%rax
  82081a:	4c 8d bb c8 00 00 00 	lea    0xc8(%rbx),%r15
  820821:	49 8b 3f             	mov    (%r15),%rdi
  820824:	48 89 b5 00 f2 ff ff 	mov    %rsi,-0xe00(%rbp)
  82082b:	49 8b 77 f8          	mov    -0x8(%r15),%rsi
  82082f:	4c 89 85 e8 f8 ff ff 	mov    %r8,-0x718(%rbp)
  820836:	4d 63 11             	movslq (%r9),%r10
  820839:	4d 63 33             	movslq (%r11),%r14
  82083c:	48 89 85 a0 f1 ff ff 	mov    %rax,-0xe60(%rbp)
  820843:	33 c0                	xor    %eax,%eax
  820845:	48 63 0a             	movslq (%rdx),%rcx
  820848:	48 89 bd b8 f1 ff ff 	mov    %rdi,-0xe48(%rbp)
  82084f:	48 8d bd c8 f2 ff ff 	lea    -0xd38(%rbp),%rdi
  820856:	4d 8b 47 08          	mov    0x8(%r15),%r8
  82085a:	48 89 b5 b0 f1 ff ff 	mov    %rsi,-0xe50(%rbp)
  820861:	49 8b 77 10          	mov    0x10(%r15),%rsi
  820865:	4c 89 95 90 f1 ff ff 	mov    %r10,-0xe70(%rbp)
  82086c:	4c 89 b5 98 f1 ff ff 	mov    %r14,-0xe68(%rbp)
  820873:	48 89 8d a8 f1 ff ff 	mov    %rcx,-0xe58(%rbp)
  82087a:	4c 89 85 c0 f1 ff ff 	mov    %r8,-0xe40(%rbp)
  820881:	e8 2a dc c5 ff       	callq  47e4b0 <_f90_dope_vector_init>
  820886:	48 89 85 08 f6 ff ff 	mov    %rax,-0x9f8(%rbp)
  82088d:	48 83 c0 1f          	add    $0x1f,%rax
  820891:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  820895:	48 2b e0             	sub    %rax,%rsp
  820898:	48 89 e0             	mov    %rsp,%rax
  82089b:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  8208a2:	48 89 c2             	mov    %rax,%rdx
  8208a5:	48 8d bd 30 f3 ff ff 	lea    -0xcd0(%rbp),%rdi
  8208ac:	33 c0                	xor    %eax,%eax
  8208ae:	48 8b b5 c0 f1 ff ff 	mov    -0xe40(%rbp),%rsi
  8208b5:	48 89 57 98          	mov    %rdx,-0x68(%rdi)
  8208b9:	e8 f2 db c5 ff       	callq  47e4b0 <_f90_dope_vector_init>
  8208be:	48 89 85 38 f6 ff ff 	mov    %rax,-0x9c8(%rbp)
  8208c5:	48 83 c0 1f          	add    $0x1f,%rax
  8208c9:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  8208cd:	48 2b e0             	sub    %rax,%rsp
  8208d0:	48 89 e0             	mov    %rsp,%rax
  8208d3:	48 89 85 10 f6 ff ff 	mov    %rax,-0x9f0(%rbp)
  8208da:	48 89 c2             	mov    %rax,%rdx
  8208dd:	48 8d bd 90 f3 ff ff 	lea    -0xc70(%rbp),%rdi
  8208e4:	33 c0                	xor    %eax,%eax
  8208e6:	48 8b b5 b8 f1 ff ff 	mov    -0xe48(%rbp),%rsi
  8208ed:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  8208f1:	e8 ba db c5 ff       	callq  47e4b0 <_f90_dope_vector_init>
  8208f6:	48 89 85 48 f6 ff ff 	mov    %rax,-0x9b8(%rbp)
  8208fd:	48 83 c0 1f          	add    $0x1f,%rax
  820901:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  820905:	48 2b e0             	sub    %rax,%rsp
  820908:	48 89 e0             	mov    %rsp,%rax
  82090b:	48 89 85 40 f6 ff ff 	mov    %rax,-0x9c0(%rbp)
  820912:	48 89 c2             	mov    %rax,%rdx
  820915:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  82091c:	33 c0                	xor    %eax,%eax
  82091e:	48 8b b5 b0 f1 ff ff 	mov    -0xe50(%rbp),%rsi
  820925:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  820929:	e8 82 db c5 ff       	callq  47e4b0 <_f90_dope_vector_init>
  82092e:	48 89 85 58 f6 ff ff 	mov    %rax,-0x9a8(%rbp)
  820935:	48 83 c0 1f          	add    $0x1f,%rax
  820939:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  82093d:	48 2b e0             	sub    %rax,%rsp
  820940:	48 89 e0             	mov    %rsp,%rax
  820943:	48 89 85 50 f6 ff ff 	mov    %rax,-0x9b0(%rbp)
  82094a:	48 8b 05 8f b7 31 00 	mov    0x31b78f(%rip),%rax        # b3c0e0 <mod_param_mp_n_+0x40>
  820951:	48 c1 e0 02          	shl    $0x2,%rax
  820955:	4c 8b b5 50 f6 ff ff 	mov    -0x9b0(%rbp),%r14
  82095c:	48 f7 d8             	neg    %rax
  82095f:	4c 89 b5 f0 f3 ff ff 	mov    %r14,-0xc10(%rbp)
  820966:	4d 63 75 00          	movslq 0x0(%r13),%r14
  82096a:	48 03 05 2f b7 31 00 	add    0x31b72f(%rip),%rax        # b3c0a0 <mod_param_mp_n_>
  820971:	46 8b 3c b0          	mov    (%rax,%r14,4),%r15d
  820975:	45 85 ff             	test   %r15d,%r15d
  820978:	0f 8e 8d 3e 00 00    	jle    82480b <pre_step3d_mod_mp_pre_step3d_tile_+0x1036b>
  82097e:	48 83 c4 e0          	add    $0xffffffffffffffe0,%rsp
  820982:	48 8d 85 54 f7 ff ff 	lea    -0x8ac(%rbp),%rax
  820989:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  82098f:	bf 1c 74 b3 00       	mov    $0xb3741c,%edi
  820994:	ba 22 00 00 00       	mov    $0x22,%edx
  820999:	48 8d 8d 50 f7 ff ff 	lea    -0x8b0(%rbp),%rcx
  8209a0:	44 89 78 f8          	mov    %r15d,-0x8(%rax)
  8209a4:	4c 8d 85 48 f7 ff ff 	lea    -0x8b8(%rbp),%r8
  8209ab:	48 89 04 24          	mov    %rax,(%rsp)
  8209af:	4c 8d 8d 4c f7 ff ff 	lea    -0x8b4(%rbp),%r9
  8209b6:	44 89 6c 24 08       	mov    %r13d,0x8(%rsp)
  8209bb:	44 89 6c 24 10       	mov    %r13d,0x10(%rsp)
  8209c0:	8b 70 cc             	mov    -0x34(%rax),%esi
  8209c3:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%rax)
  8209ca:	44 89 68 f4          	mov    %r13d,-0xc(%rax)
  8209ce:	44 89 28             	mov    %r13d,(%rax)
  8209d1:	e8 5a d4 be ff       	callq  40de30 <__kmpc_for_static_init_4@plt>
  8209d6:	48 83 c4 20          	add    $0x20,%rsp
  8209da:	4d 63 ff             	movslq %r15d,%r15
  8209dd:	48 63 85 48 f7 ff ff 	movslq -0x8b8(%rbp),%rax
  8209e4:	8b 95 4c f7 ff ff    	mov    -0x8b4(%rbp),%edx
  8209ea:	48 89 85 e8 f5 ff ff 	mov    %rax,-0xa18(%rbp)
  8209f1:	49 3b c7             	cmp    %r15,%rax
  8209f4:	0f 8f fe 3d 00 00    	jg     8247f8 <pre_step3d_mod_mp_pre_step3d_tile_+0x10358>
  8209fa:	4c 8b 9d d0 f1 ff ff 	mov    -0xe30(%rbp),%r11
  820a01:	41 3b d7             	cmp    %r15d,%edx
  820a04:	48 8b 35 35 b6 31 00 	mov    0x31b635(%rip),%rsi        # b3c040 <mod_param_mp_nt_>
  820a0b:	48 8b 85 c8 f1 ff ff 	mov    -0xe38(%rbp),%rax
  820a12:	44 0f 4c fa          	cmovl  %edx,%r15d
  820a16:	4c 8b 8d d8 f1 ff ff 	mov    -0xe28(%rbp),%r9
  820a1d:	49 63 3b             	movslq (%r11),%rdi
  820a20:	4e 8d 1c b6          	lea    (%rsi,%r14,4),%r11
  820a24:	48 8b b5 90 f3 ff ff 	mov    -0xc70(%rbp),%rsi
  820a2b:	48 89 b5 c0 f5 ff ff 	mov    %rsi,-0xa40(%rbp)
  820a32:	48 8b 15 27 d1 31 00 	mov    0x31d127(%rip),%rdx        # b3db60 <mod_scalars_mp_ewperiodic_>
  820a39:	48 8b 0d 60 d1 31 00 	mov    0x31d160(%rip),%rcx        # b3dba0 <mod_scalars_mp_ewperiodic_+0x40>
  820a40:	48 8b 35 d9 da 31 00 	mov    0x31dad9(%rip),%rsi        # b3e520 <mod_scalars_mp_ltracersrc_+0x40>
  820a47:	4c 63 10             	movslq (%rax),%r10
  820a4a:	48 89 bd 28 f5 ff ff 	mov    %rdi,-0xad8(%rbp)
  820a51:	49 63 01             	movslq (%r9),%rax
  820a54:	48 89 95 e0 f5 ff ff 	mov    %rdx,-0xa20(%rbp)
  820a5b:	48 89 8d d8 f5 ff ff 	mov    %rcx,-0xa28(%rbp)
  820a62:	48 89 b5 98 f5 ff ff 	mov    %rsi,-0xa68(%rbp)
  820a69:	48 8b 3d d0 cd 31 00 	mov    0x31cdd0(%rip),%rdi        # b3d840 <mod_scalars_mp_nsperiodic_+0x40>
  820a70:	4c 8b 8d 30 f3 ff ff 	mov    -0xcd0(%rbp),%r9
  820a77:	48 8b 95 f0 f3 ff ff 	mov    -0xc10(%rbp),%rdx
  820a7e:	48 8b 0d db d6 31 00 	mov    0x31d6db(%rip),%rcx        # b3e160 <mod_scalars_mp_compositegrid_>
  820a85:	48 8b 35 14 2c 32 00 	mov    0x322c14(%rip),%rsi        # b436a0 <mod_scalars_mp_ntfirst_>
  820a8c:	48 89 bd c8 f5 ff ff 	mov    %rdi,-0xa38(%rbp)
  820a93:	4c 89 8d 00 f9 ff ff 	mov    %r9,-0x700(%rbp)
  820a9a:	48 89 95 f8 f8 ff ff 	mov    %rdx,-0x708(%rbp)
  820aa1:	48 89 8d b8 f5 ff ff 	mov    %rcx,-0xa48(%rbp)
  820aa8:	48 89 b5 70 f5 ff ff 	mov    %rsi,-0xa90(%rbp)
  820aaf:	48 8b 3d fa d6 31 00 	mov    0x31d6fa(%rip),%rdi        # b3e1b0 <mod_scalars_mp_compositegrid_+0x50>
  820ab6:	4c 8b 0d e3 d6 31 00 	mov    0x31d6e3(%rip),%r9        # b3e1a0 <mod_scalars_mp_compositegrid_+0x40>
  820abd:	48 8b 15 4c da 31 00 	mov    0x31da4c(%rip),%rdx        # b3e510 <mod_scalars_mp_ltracersrc_+0x30>
  820ac4:	48 8b 0d 75 0b 32 00 	mov    0x320b75(%rip),%rcx        # b41640 <mod_scalars_mp_luvsrc_>
  820acb:	49 8b b4 24 80 00 00 	mov    0x80(%r12),%rsi
  820ad2:	00 
  820ad3:	48 89 bd a8 f5 ff ff 	mov    %rdi,-0xa58(%rbp)
  820ada:	4c 89 8d a0 f5 ff ff 	mov    %r9,-0xa60(%rbp)
  820ae1:	48 89 95 78 f8 ff ff 	mov    %rdx,-0x788(%rbp)
  820ae8:	48 89 8d 90 f5 ff ff 	mov    %rcx,-0xa70(%rbp)
  820aef:	48 89 b5 50 f5 ff ff 	mov    %rsi,-0xab0(%rbp)
  820af6:	48 8b 3d e3 b7 31 00 	mov    0x31b7e3(%rip),%rdi        # b3c2e0 <mod_scalars_mp_iic_>
  820afd:	4c 8b 0d 1c b8 31 00 	mov    0x31b81c(%rip),%r9        # b3c320 <mod_scalars_mp_iic_+0x40>
  820b04:	48 8b 15 d5 2b 32 00 	mov    0x322bd5(%rip),%rdx        # b436e0 <mod_scalars_mp_ntfirst_+0x40>
  820b0b:	48 8b 0d 2e a8 31 00 	mov    0x31a82e(%rip),%rcx        # b3b340 <mod_scalars_mp_dt_>
  820b12:	48 8b b5 f0 f1 ff ff 	mov    -0xe10(%rbp),%rsi
  820b19:	48 89 bd 80 f5 ff ff 	mov    %rdi,-0xa80(%rbp)
  820b20:	4c 89 8d 78 f5 ff ff 	mov    %r9,-0xa88(%rbp)
  820b27:	48 89 95 68 f5 ff ff 	mov    %rdx,-0xa98(%rbp)
  820b2e:	48 89 8d 70 f8 ff ff 	mov    %rcx,-0x790(%rbp)
  820b35:	49 8b 3c 24          	mov    (%r12),%rdi
  820b39:	4d 8b 8c 24 98 00 00 	mov    0x98(%r12),%r9
  820b40:	00 
  820b41:	49 8b 54 24 68       	mov    0x68(%r12),%rdx
  820b46:	49 8b 4c 24 50       	mov    0x50(%r12),%rcx
  820b4b:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  820b50:	4c 89 a5 10 fd ff ff 	mov    %r12,-0x2f0(%rbp)
  820b57:	48 89 95 48 f5 ff ff 	mov    %rdx,-0xab8(%rbp)
  820b5e:	4c 8b 26             	mov    (%rsi),%r12
  820b61:	48 8b 56 38          	mov    0x38(%rsi),%rdx
  820b65:	4c 89 a5 40 f5 ff ff 	mov    %r12,-0xac0(%rbp)
  820b6c:	48 89 95 08 fd ff ff 	mov    %rdx,-0x2f8(%rbp)
  820b73:	4c 8b a5 e0 f1 ff ff 	mov    -0xe20(%rbp),%r12
  820b7a:	48 8b 95 00 f2 ff ff 	mov    -0xe00(%rbp),%rdx
  820b81:	4c 89 8d f0 f8 ff ff 	mov    %r9,-0x710(%rbp)
  820b88:	4c 8b 4e 50          	mov    0x50(%rsi),%r9
  820b8c:	48 89 8d 00 fc ff ff 	mov    %rcx,-0x400(%rbp)
  820b93:	4c 89 8d f8 fb ff ff 	mov    %r9,-0x408(%rbp)
  820b9a:	49 8b 0c 24          	mov    (%r12),%rcx
  820b9e:	4c 8b 0a             	mov    (%rdx),%r9
  820ba1:	4c 8b 05 58 cc 31 00 	mov    0x31cc58(%rip),%r8        # b3d800 <mod_scalars_mp_nsperiodic_>
  820ba8:	48 89 bd 58 f5 ff ff 	mov    %rdi,-0xaa8(%rbp)
  820baf:	48 8b 7e 68          	mov    0x68(%rsi),%rdi
  820bb3:	48 89 8d 20 f5 ff ff 	mov    %rcx,-0xae0(%rbp)
  820bba:	4c 89 8d 18 f5 ff ff 	mov    %r9,-0xae8(%rbp)
  820bc1:	48 8b 72 50          	mov    0x50(%rdx),%rsi
  820bc5:	48 8b 4a 38          	mov    0x38(%rdx),%rcx
  820bc9:	4c 8b 0d 30 2c 32 00 	mov    0x322c30(%rip),%r9        # b43800 <mod_sources_mp_sources_+0x40>
  820bd0:	48 8b 15 61 d9 31 00 	mov    0x31d961(%rip),%rdx        # b3e538 <mod_scalars_mp_ltracersrc_+0x58>
  820bd7:	4c 89 85 d0 f5 ff ff 	mov    %r8,-0xa30(%rbp)
  820bde:	4c 8b 05 d3 d5 31 00 	mov    0x31d5d3(%rip),%r8        # b3e1b8 <mod_scalars_mp_compositegrid_+0x58>
  820be5:	4c 89 8d 00 f5 ff ff 	mov    %r9,-0xb00(%rbp)
  820bec:	48 89 95 f0 f4 ff ff 	mov    %rdx,-0xb10(%rbp)
  820bf3:	48 89 bd 38 f5 ff ff 	mov    %rdi,-0xac8(%rbp)
  820bfa:	4c 8b 8d 08 f2 ff ff 	mov    -0xdf8(%rbp),%r9
  820c01:	48 8b 95 10 f2 ff ff 	mov    -0xdf0(%rbp),%rdx
  820c08:	49 8b 7c 24 38       	mov    0x38(%r12),%rdi
  820c0d:	4c 89 85 b0 f5 ff ff 	mov    %r8,-0xa50(%rbp)
  820c14:	4c 8b 05 65 0a 32 00 	mov    0x320a65(%rip),%r8        # b41680 <mod_scalars_mp_luvsrc_+0x40>
  820c1b:	48 89 bd 00 fd ff ff 	mov    %rdi,-0x300(%rbp)
  820c22:	48 89 b5 e8 fb ff ff 	mov    %rsi,-0x418(%rbp)
  820c29:	48 8b 3d 90 2b 32 00 	mov    0x322b90(%rip),%rdi        # b437c0 <mod_sources_mp_sources_>
  820c30:	48 8b 35 a9 d8 31 00 	mov    0x31d8a9(%rip),%rsi        # b3e4e0 <mod_scalars_mp_ltracersrc_>
  820c37:	4c 89 85 88 f5 ff ff 	mov    %r8,-0xa78(%rbp)
  820c3e:	4c 8b 05 3b a7 31 00 	mov    0x31a73b(%rip),%r8        # b3b380 <mod_scalars_mp_dt_+0x40>
  820c45:	48 89 8d f8 fc ff ff 	mov    %rcx,-0x308(%rbp)
  820c4c:	48 89 bd f8 f5 ff ff 	mov    %rdi,-0xa08(%rbp)
  820c53:	48 89 b5 f8 f4 ff ff 	mov    %rsi,-0xb08(%rbp)
  820c5a:	48 8b 0d cf d8 31 00 	mov    0x31d8cf(%rip),%rcx        # b3e530 <mod_scalars_mp_ltracersrc_+0x50>
  820c61:	49 8b 79 50          	mov    0x50(%r9),%rdi
  820c65:	48 8b 72 68          	mov    0x68(%rdx),%rsi
  820c69:	4c 89 85 60 f5 ff ff 	mov    %r8,-0xaa0(%rbp)
  820c70:	4d 8b 44 24 50       	mov    0x50(%r12),%r8
  820c75:	48 89 8d e8 f4 ff ff 	mov    %rcx,-0xb18(%rbp)
  820c7c:	48 89 bd 18 fc ff ff 	mov    %rdi,-0x3e8(%rbp)
  820c83:	48 89 b5 c8 f4 ff ff 	mov    %rsi,-0xb38(%rbp)
  820c8a:	48 8b 3a             	mov    (%rdx),%rdi
  820c8d:	48 8b 4a 38          	mov    0x38(%rdx),%rcx
  820c91:	48 8b 72 50          	mov    0x50(%rdx),%rsi
  820c95:	4c 89 85 f0 fb ff ff 	mov    %r8,-0x410(%rbp)
  820c9c:	48 8b 15 5d d2 31 00 	mov    0x31d25d(%rip),%rdx        # b3df00 <mod_param_mp_domain_+0x40>
  820ca3:	4c 8b 05 76 2b 32 00 	mov    0x322b76(%rip),%r8        # b43820 <mod_sources_mp_nsrc_>
  820caa:	48 89 95 c0 f4 ff ff 	mov    %rdx,-0xb40(%rbp)
  820cb1:	4c 89 85 10 f5 ff ff 	mov    %r8,-0xaf0(%rbp)
  820cb8:	48 8b 95 f8 f1 ff ff 	mov    -0xe08(%rbp),%rdx
  820cbf:	4d 8b 01             	mov    (%r9),%r8
  820cc2:	4c 89 85 e0 f4 ff ff 	mov    %r8,-0xb20(%rbp)
  820cc9:	4c 8b 05 f0 d1 31 00 	mov    0x31d1f0(%rip),%r8        # b3dec0 <mod_param_mp_domain_>
  820cd0:	4c 89 85 38 f7 ff ff 	mov    %r8,-0x8c8(%rbp)
  820cd7:	4c 8b 42 50          	mov    0x50(%rdx),%r8
  820cdb:	4c 89 85 e0 fb ff ff 	mov    %r8,-0x420(%rbp)
  820ce2:	48 89 8d 10 fc ff ff 	mov    %rcx,-0x3f0(%rbp)
  820ce9:	4c 8b 85 e8 f1 ff ff 	mov    -0xe18(%rbp),%r8
  820cf0:	48 8b 0a             	mov    (%rdx),%rcx
  820cf3:	4d 63 ff             	movslq %r15d,%r15
  820cf6:	48 89 8d b8 f4 ff ff 	mov    %rcx,-0xb48(%rbp)
  820cfd:	4c 8b 25 5c 2b 32 00 	mov    0x322b5c(%rip),%r12        # b43860 <mod_sources_mp_nsrc_+0x40>
  820d04:	48 8b 4a 38          	mov    0x38(%rdx),%rcx
  820d08:	4c 2b bd e8 f5 ff ff 	sub    -0xa18(%rbp),%r15
  820d0f:	4c 89 95 30 f5 ff ff 	mov    %r10,-0xad0(%rbp)
  820d16:	49 ff c7             	inc    %r15
  820d19:	4c 89 a5 08 f5 ff ff 	mov    %r12,-0xaf8(%rbp)
  820d20:	48 89 8d d8 fb ff ff 	mov    %rcx,-0x428(%rbp)
  820d27:	4c 8b 15 52 b3 31 00 	mov    0x31b352(%rip),%r10        # b3c080 <mod_param_mp_nt_+0x40>
  820d2e:	4d 8b 61 68          	mov    0x68(%r9),%r12
  820d32:	49 8b 10             	mov    (%r8),%rdx
  820d35:	49 8b 48 50          	mov    0x50(%r8),%rcx
  820d39:	4d 8b 40 38          	mov    0x38(%r8),%r8
  820d3d:	49 c1 e2 02          	shl    $0x2,%r10
  820d41:	4d 8b 49 38          	mov    0x38(%r9),%r9
  820d45:	49 f7 da             	neg    %r10
  820d48:	48 89 95 b0 f4 ff ff 	mov    %rdx,-0xb50(%rbp)
  820d4f:	48 89 b5 20 fc ff ff 	mov    %rsi,-0x3e0(%rbp)
  820d56:	4c 89 85 c8 fb ff ff 	mov    %r8,-0x438(%rbp)
  820d5d:	45 33 c0             	xor    %r8d,%r8d
  820d60:	4c 89 bd 28 f7 ff ff 	mov    %r15,-0x8d8(%rbp)
  820d67:	48 89 8d d0 fb ff ff 	mov    %rcx,-0x430(%rbp)
  820d6e:	48 89 85 30 f7 ff ff 	mov    %rax,-0x8d0(%rbp)
  820d75:	48 89 bd d0 f4 ff ff 	mov    %rdi,-0xb30(%rbp)
  820d7c:	4c 89 8d 08 fc ff ff 	mov    %r9,-0x3f8(%rbp)
  820d83:	4c 89 a5 d8 f4 ff ff 	mov    %r12,-0xb28(%rbp)
  820d8a:	4c 89 b5 f0 f5 ff ff 	mov    %r14,-0xa10(%rbp)
  820d91:	8b 95 40 f8 ff ff    	mov    -0x7c0(%rbp),%edx
  820d97:	8b b5 68 f8 ff ff    	mov    -0x798(%rbp),%esi
  820d9d:	33 c9                	xor    %ecx,%ecx
  820d9f:	4b 63 3c 1a          	movslq (%r10,%r11,1),%rdi
  820da3:	33 c0                	xor    %eax,%eax
  820da5:	48 85 ff             	test   %rdi,%rdi
  820da8:	0f 8e 3a 3a 00 00    	jle    8247e8 <pre_step3d_mod_mp_pre_step3d_tile_+0x10348>
  820dae:	89 95 40 f8 ff ff    	mov    %edx,-0x7c0(%rbp)
  820db4:	48 63 d2             	movslq %edx,%rdx
  820db7:	4c 8b a5 18 fc ff ff 	mov    -0x3e8(%rbp),%r12
  820dbe:	4c 8b b5 20 fc ff ff 	mov    -0x3e0(%rbp),%r14
  820dc5:	4c 0f af e2          	imul   %rdx,%r12
  820dc9:	4c 0f af f2          	imul   %rdx,%r14
  820dcd:	48 89 bd 00 f8 ff ff 	mov    %rdi,-0x800(%rbp)
  820dd4:	48 8b bd f0 fb ff ff 	mov    -0x410(%rbp),%rdi
  820ddb:	48 0f af fa          	imul   %rdx,%rdi
  820ddf:	48 89 85 28 fc ff ff 	mov    %rax,-0x3d8(%rbp)
  820de6:	48 8b 85 d0 fb ff ff 	mov    -0x430(%rbp),%rax
  820ded:	48 0f af c2          	imul   %rdx,%rax
  820df1:	4c 89 a5 10 f2 ff ff 	mov    %r12,-0xdf0(%rbp)
  820df8:	4c 89 b5 20 f9 ff ff 	mov    %r14,-0x6e0(%rbp)
  820dff:	4c 8b a5 c0 fb ff ff 	mov    -0x440(%rbp),%r12
  820e06:	4c 8b b5 b8 fb ff ff 	mov    -0x448(%rbp),%r14
  820e0d:	45 2b e6             	sub    %r14d,%r12d
  820e10:	89 b5 68 f8 ff ff    	mov    %esi,-0x798(%rbp)
  820e16:	48 63 f6             	movslq %esi,%rsi
  820e19:	4d 63 e4             	movslq %r12d,%r12
  820e1c:	49 89 f7             	mov    %rsi,%r15
  820e1f:	49 ff c4             	inc    %r12
  820e22:	4c 2b fa             	sub    %rdx,%r15
  820e25:	48 89 bd 00 f2 ff ff 	mov    %rdi,-0xe00(%rbp)
  820e2c:	4c 89 a5 f8 fa ff ff 	mov    %r12,-0x508(%rbp)
  820e33:	48 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%rdi
  820e3a:	4c 8b a5 90 f1 ff ff 	mov    -0xe70(%rbp),%r12
  820e41:	4c 2b e7             	sub    %rdi,%r12
  820e44:	48 89 85 18 f2 ff ff 	mov    %rax,-0xde8(%rbp)
  820e4b:	4c 89 e0             	mov    %r12,%rax
  820e4e:	4c 89 9d 68 f6 ff ff 	mov    %r11,-0x998(%rbp)
  820e55:	4d 8d 5f 03          	lea    0x3(%r15),%r11
  820e59:	4c 89 95 60 f6 ff ff 	mov    %r10,-0x9a0(%rbp)
  820e60:	4d 8d 57 02          	lea    0x2(%r15),%r10
  820e64:	48 c1 e0 04          	shl    $0x4,%rax
  820e68:	49 ff c7             	inc    %r15
  820e6b:	4c 8b 8d e8 fb ff ff 	mov    -0x418(%rbp),%r9
  820e72:	4c 89 bd 68 fc ff ff 	mov    %r15,-0x398(%rbp)
  820e79:	4c 8d 3c d5 f8 ff ff 	lea    -0x8(,%rdx,8),%r15
  820e80:	ff 
  820e81:	48 89 85 a8 f6 ff ff 	mov    %rax,-0x958(%rbp)
  820e88:	49 8d 44 24 01       	lea    0x1(%r12),%rax
  820e8d:	4c 0f af ca          	imul   %rdx,%r9
  820e91:	4c 0f af f8          	imul   %rax,%r15
  820e95:	4c 89 8d 08 f2 ff ff 	mov    %r9,-0xdf8(%rbp)
  820e9c:	4c 8d 0c d5 00 00 00 	lea    0x0(,%rdx,8),%r9
  820ea3:	00 
  820ea4:	4c 89 bd c0 f6 ff ff 	mov    %r15,-0x940(%rbp)
  820eab:	4c 8d 34 f5 10 00 00 	lea    0x10(,%rsi,8),%r14
  820eb2:	00 
  820eb3:	4d 8d 3e             	lea    (%r14),%r15
  820eb6:	4c 0f af c8          	imul   %rax,%r9
  820eba:	4c 0f af f8          	imul   %rax,%r15
  820ebe:	4c 89 9d 80 f8 ff ff 	mov    %r11,-0x780(%rbp)
  820ec5:	49 8d 76 f8          	lea    -0x8(%r14),%rsi
  820ec9:	48 0f af f0          	imul   %rax,%rsi
  820ecd:	4c 8b 9d b8 fb ff ff 	mov    -0x448(%rbp),%r11
  820ed4:	4c 89 95 70 fc ff ff 	mov    %r10,-0x390(%rbp)
  820edb:	48 89 b5 c8 f6 ff ff 	mov    %rsi,-0x938(%rbp)
  820ee2:	4b 8d 34 e1          	lea    (%r9,%r12,8),%rsi
  820ee6:	4c 89 bd d0 f6 ff ff 	mov    %r15,-0x930(%rbp)
  820eed:	4e 8d 14 dd 00 00 00 	lea    0x0(,%r11,8),%r10
  820ef4:	00 
  820ef5:	4c 8b ad f8 fb ff ff 	mov    -0x408(%rbp),%r13
  820efc:	4e 8d 1c e5 00 00 00 	lea    0x0(,%r12,8),%r11
  820f03:	00 
  820f04:	4d 89 de             	mov    %r11,%r14
  820f07:	4d 8d 63 08          	lea    0x8(%r11),%r12
  820f0b:	49 f7 de             	neg    %r14
  820f0e:	4c 0f af ea          	imul   %rdx,%r13
  820f12:	48 89 8d 38 f8 ff ff 	mov    %rcx,-0x7c8(%rbp)
  820f19:	4f 8d 3c 0e          	lea    (%r14,%r9,1),%r15
  820f1d:	4c 89 bd 88 f6 ff ff 	mov    %r15,-0x978(%rbp)
  820f24:	4c 8b bd 98 f1 ff ff 	mov    -0xe68(%rbp),%r15
  820f2b:	4d 0f af fc          	imul   %r12,%r15
  820f2f:	48 8b 8d 00 fc ff ff 	mov    -0x400(%rbp),%rcx
  820f36:	4d 2b f7             	sub    %r15,%r14
  820f39:	4c 89 ad f8 f1 ff ff 	mov    %r13,-0xe08(%rbp)
  820f40:	49 89 cd             	mov    %rcx,%r13
  820f43:	48 89 85 20 f2 ff ff 	mov    %rax,-0xde0(%rbp)
  820f4a:	4d 2b df             	sub    %r15,%r11
  820f4d:	48 8b 85 f8 f8 ff ff 	mov    -0x708(%rbp),%rax
  820f54:	4c 0f af ea          	imul   %rdx,%r13
  820f58:	4c 89 b5 e0 fc ff ff 	mov    %r14,-0x320(%rbp)
  820f5f:	48 8d 14 fd 00 00 00 	lea    0x0(,%rdi,8),%rdx
  820f66:	00 
  820f67:	49 89 c6             	mov    %rax,%r14
  820f6a:	4c 89 9d 80 f9 ff ff 	mov    %r11,-0x680(%rbp)
  820f71:	4c 2b f2             	sub    %rdx,%r14
  820f74:	4c 8b 9d c0 f5 ff ff 	mov    -0xa40(%rbp),%r11
  820f7b:	4d 2b f7             	sub    %r15,%r14
  820f7e:	4c 89 95 70 f7 ff ff 	mov    %r10,-0x890(%rbp)
  820f85:	4c 2b d2             	sub    %rdx,%r10
  820f88:	48 89 95 d8 fa ff ff 	mov    %rdx,-0x528(%rbp)
  820f8f:	4c 2b da             	sub    %rdx,%r11
  820f92:	4c 89 ca             	mov    %r9,%rdx
  820f95:	4d 2b df             	sub    %r15,%r11
  820f98:	49 2b d7             	sub    %r15,%rdx
  820f9b:	48 89 b5 80 f6 ff ff 	mov    %rsi,-0x980(%rbp)
  820fa2:	48 8b b5 48 f5 ff ff 	mov    -0xab8(%rbp),%rsi
  820fa9:	4c 89 bd b8 f9 ff ff 	mov    %r15,-0x648(%rbp)
  820fb0:	4c 89 8d c0 f9 ff ff 	mov    %r9,-0x640(%rbp)
  820fb7:	49 8d 3c 12          	lea    (%r10,%rdx,1),%rdi
  820fbb:	4d 03 d1             	add    %r9,%r10
  820fbe:	48 03 f8             	add    %rax,%rdi
  820fc1:	4d 2b d7             	sub    %r15,%r10
  820fc4:	4c 03 d0             	add    %rax,%r10
  820fc7:	48 89 f0             	mov    %rsi,%rax
  820fca:	4c 8b bd a8 f1 ff ff 	mov    -0xe58(%rbp),%r15
  820fd1:	48 0f af 85 e8 f5 ff 	imul   -0xa18(%rbp),%rax
  820fd8:	ff 
  820fd9:	4c 0f af f9          	imul   %rcx,%r15
  820fdd:	4c 89 95 e0 fa ff ff 	mov    %r10,-0x520(%rbp)
  820fe4:	4c 8b 95 50 f5 ff ff 	mov    -0xab0(%rbp),%r10
  820feb:	4c 89 9d 58 f4 ff ff 	mov    %r11,-0xba8(%rbp)
  820ff2:	49 89 f3             	mov    %rsi,%r11
  820ff5:	4c 2b d8             	sub    %rax,%r11
  820ff8:	49 2b c7             	sub    %r15,%rax
  820ffb:	4c 89 b5 50 f4 ff ff 	mov    %r14,-0xbb0(%rbp)
  821002:	4d 8d 0c 32          	lea    (%r10,%rsi,1),%r9
  821006:	4c 89 c9             	mov    %r9,%rcx
  821009:	48 2b c8             	sub    %rax,%rcx
  82100c:	48 f7 d9             	neg    %rcx
  82100f:	4c 8b b5 58 f5 ff ff 	mov    -0xaa8(%rbp),%r14
  821016:	49 03 ce             	add    %r14,%rcx
  821019:	4c 89 a5 80 fc ff ff 	mov    %r12,-0x380(%rbp)
  821020:	4d 89 f4             	mov    %r14,%r12
  821023:	4c 8b b5 10 fd ff ff 	mov    -0x2f0(%rbp),%r14
  82102a:	4c 89 8d 30 f2 ff ff 	mov    %r9,-0xdd0(%rbp)
  821031:	4d 89 f1             	mov    %r14,%r9
  821034:	4c 89 bd 88 f7 ff ff 	mov    %r15,-0x878(%rbp)
  82103b:	4d 2b fd             	sub    %r13,%r15
  82103e:	4c 89 bd 40 f2 ff ff 	mov    %r15,-0xdc0(%rbp)
  821045:	4c 8b bd a0 f1 ff ff 	mov    -0xe60(%rbp),%r15
  82104c:	4c 0f af 8d b8 fb ff 	imul   -0x448(%rbp),%r9
  821053:	ff 
  821054:	4d 0f af fe          	imul   %r14,%r15
  821058:	49 0f af f0          	imul   %r8,%rsi
  82105c:	48 89 95 58 f9 ff ff 	mov    %rdx,-0x6a8(%rbp)
  821063:	4c 89 ea             	mov    %r13,%rdx
  821066:	4c 89 bd 48 f2 ff ff 	mov    %r15,-0xdb8(%rbp)
  82106d:	49 2b d7             	sub    %r15,%rdx
  821070:	4d 2b f9             	sub    %r9,%r15
  821073:	4c 89 bd a0 f9 ff ff 	mov    %r15,-0x660(%rbp)
  82107a:	4d 89 d7             	mov    %r10,%r15
  82107d:	4c 0f af bd 30 f5 ff 	imul   -0xad0(%rbp),%r15
  821084:	ff 
  821085:	48 89 bd b0 f9 ff ff 	mov    %rdi,-0x650(%rbp)
  82108c:	4d 03 cf             	add    %r15,%r9
  82108f:	48 8b bd f0 f8 ff ff 	mov    -0x710(%rbp),%rdi
  821096:	4c 2b e7             	sub    %rdi,%r12
  821099:	49 2b fa             	sub    %r10,%rdi
  82109c:	4c 03 ca             	add    %rdx,%r9
  82109f:	4c 89 85 70 f6 ff ff 	mov    %r8,-0x990(%rbp)
  8210a6:	4c 03 c9             	add    %rcx,%r9
  8210a9:	4c 8b 85 40 f2 ff ff 	mov    -0xdc0(%rbp),%r8
  8210b0:	4c 03 ce             	add    %rsi,%r9
  8210b3:	4c 89 a5 28 f2 ff ff 	mov    %r12,-0xdd8(%rbp)
  8210ba:	4c 89 8d 60 fc ff ff 	mov    %r9,-0x3a0(%rbp)
  8210c1:	4d 8d 0c 3c          	lea    (%r12,%rdi,1),%r9
  8210c5:	4c 8b a5 a0 f9 ff ff 	mov    -0x660(%rbp),%r12
  8210cc:	4f 8d 14 03          	lea    (%r11,%r8,1),%r10
  8210d0:	4c 89 ad 98 f8 ff ff 	mov    %r13,-0x768(%rbp)
  8210d7:	49 f7 da             	neg    %r10
  8210da:	48 89 8d 30 f9 ff ff 	mov    %rcx,-0x6d0(%rbp)
  8210e1:	4b 8d 4c 3d 00       	lea    0x0(%r13,%r15,1),%rcx
  8210e6:	48 89 95 50 f2 ff ff 	mov    %rdx,-0xdb0(%rbp)
  8210ed:	4b 8d 14 3e          	lea    (%r14,%r15,1),%rdx
  8210f1:	4d 89 e5             	mov    %r12,%r13
  8210f4:	4d 03 d1             	add    %r9,%r10
  8210f7:	4c 2b ea             	sub    %rdx,%r13
  8210fa:	48 03 c8             	add    %rax,%rcx
  8210fd:	49 f7 dd             	neg    %r13
  821100:	48 f7 da             	neg    %rdx
  821103:	4d 03 ea             	add    %r10,%r13
  821106:	4c 03 ee             	add    %rsi,%r13
  821109:	4c 89 ad a8 f9 ff ff 	mov    %r13,-0x658(%rbp)
  821110:	4c 8b ad a8 f1 ff ff 	mov    -0xe58(%rbp),%r13
  821117:	4c 0f af ad d0 fb ff 	imul   -0x430(%rbp),%r13
  82111e:	ff 
  82111f:	4c 89 9d b0 f7 ff ff 	mov    %r11,-0x850(%rbp)
  821126:	48 89 bd 60 f2 ff ff 	mov    %rdi,-0xda0(%rbp)
  82112d:	49 2b fb             	sub    %r11,%rdi
  821130:	4d 89 f3             	mov    %r14,%r11
  821133:	49 f7 db             	neg    %r11
  821136:	48 89 85 38 f2 ff ff 	mov    %rax,-0xdc8(%rbp)
  82113d:	4d 03 df             	add    %r15,%r11
  821140:	4c 89 e0             	mov    %r12,%rax
  821143:	49 2b c3             	sub    %r11,%rax
  821146:	49 f7 db             	neg    %r11
  821149:	48 f7 d8             	neg    %rax
  82114c:	49 03 c2             	add    %r10,%rax
  82114f:	48 03 c6             	add    %rsi,%rax
  821152:	48 89 85 58 fc ff ff 	mov    %rax,-0x3a8(%rbp)
  821159:	48 8b 85 c8 fb ff ff 	mov    -0x438(%rbp),%rax
  821160:	48 89 8d 58 f2 ff ff 	mov    %rcx,-0xda8(%rbp)
  821167:	48 8b 8d 18 f2 ff ff 	mov    -0xde8(%rbp),%rcx
  82116e:	4c 8b 85 a0 f1 ff ff 	mov    -0xe60(%rbp),%r8
  821175:	4c 89 8d 68 f2 ff ff 	mov    %r9,-0xd98(%rbp)
  82117c:	4c 0f af c0          	imul   %rax,%r8
  821180:	4c 8b 8d b0 f4 ff ff 	mov    -0xb50(%rbp),%r9
  821187:	4d 2b cd             	sub    %r13,%r9
  82118a:	4c 2b e9             	sub    %rcx,%r13
  82118d:	4c 89 ad 78 f2 ff ff 	mov    %r13,-0xd88(%rbp)
  821194:	4c 8b ad b8 fb ff ff 	mov    -0x448(%rbp),%r13
  82119b:	4c 0f af e8          	imul   %rax,%r13
  82119f:	48 89 bd 70 f2 ff ff 	mov    %rdi,-0xd90(%rbp)
  8211a6:	49 8d 3c 09          	lea    (%r9,%rcx,1),%rdi
  8211aa:	49 2b c8             	sub    %r8,%rcx
  8211ad:	4d 2b c5             	sub    %r13,%r8
  8211b0:	4c 03 c9             	add    %rcx,%r9
  8211b3:	49 8d 4c 45 00       	lea    0x0(%r13,%rax,2),%rcx
  8211b8:	4c 03 c9             	add    %rcx,%r9
  8211bb:	49 2b f8             	sub    %r8,%rdi
  8211be:	4c 89 8d 98 f9 ff ff 	mov    %r9,-0x668(%rbp)
  8211c5:	4f 8d 04 77          	lea    (%r15,%r14,2),%r8
  8211c9:	4c 8b 8d f0 f5 ff ff 	mov    -0xa10(%rbp),%r9
  8211d0:	4d 2b e0             	sub    %r8,%r12
  8211d3:	4c 2b 8d b0 f5 ff ff 	sub    -0xa50(%rbp),%r9
  8211da:	49 f7 dc             	neg    %r12
  8211dd:	4c 0f af 8d a8 f5 ff 	imul   -0xa58(%rbp),%r9
  8211e4:	ff 
  8211e5:	4d 03 e2             	add    %r10,%r12
  8211e8:	4c 03 e6             	add    %rsi,%r12
  8211eb:	48 89 bd 50 fc ff ff 	mov    %rdi,-0x3b0(%rbp)
  8211f2:	4c 89 a5 a0 f9 ff ff 	mov    %r12,-0x660(%rbp)
  8211f9:	4c 8b a5 a0 f5 ff ff 	mov    -0xa60(%rbp),%r12
  821200:	48 63 bd d0 fc ff ff 	movslq -0x330(%rbp),%rdi
  821207:	4c 89 8d e0 f8 ff ff 	mov    %r9,-0x720(%rbp)
  82120e:	48 8b 8d d8 fa ff ff 	mov    -0x528(%rbp),%rcx
  821215:	4e 8d 0c a5 00 00 00 	lea    0x0(,%r12,4),%r9
  82121c:	00 
  82121d:	48 8b 85 88 f6 ff ff 	mov    -0x978(%rbp),%rax
  821224:	4c 8d 24 fd 00 00 00 	lea    0x0(,%rdi,8),%r12
  82122b:	00 
  82122c:	4c 2b e1             	sub    %rcx,%r12
  82122f:	49 f7 d9             	neg    %r9
  821232:	4c 8b ad 10 f8 ff ff 	mov    -0x7f0(%rbp),%r13
  821239:	48 f7 d9             	neg    %rcx
  82123c:	4c 2b ad 08 f8 ff ff 	sub    -0x7f8(%rbp),%r13
  821243:	4c 03 8d b8 f5 ff ff 	add    -0xa48(%rbp),%r9
  82124a:	49 ff c5             	inc    %r13
  82124d:	4c 89 ad 48 fc ff ff 	mov    %r13,-0x3b8(%rbp)
  821254:	4d 8d 2c 04          	lea    (%r12,%rax,1),%r13
  821258:	4c 89 8d d8 f8 ff ff 	mov    %r9,-0x728(%rbp)
  82125f:	4c 8b 8d b8 f9 ff ff 	mov    -0x648(%rbp),%r9
  821266:	4d 2b e9             	sub    %r9,%r13
  821269:	48 8b 85 f8 f8 ff ff 	mov    -0x708(%rbp),%rax
  821270:	4c 03 e8             	add    %rax,%r13
  821273:	4c 89 ad a0 f6 ff ff 	mov    %r13,-0x960(%rbp)
  82127a:	4c 8b ad c0 f9 ff ff 	mov    -0x640(%rbp),%r13
  821281:	4c 89 bd 78 f7 ff ff 	mov    %r15,-0x888(%rbp)
  821288:	4c 89 95 a8 f7 ff ff 	mov    %r10,-0x858(%rbp)
  82128f:	48 89 b5 60 f7 ff ff 	mov    %rsi,-0x8a0(%rbp)
  821296:	4d 03 ec             	add    %r12,%r13
  821299:	4c 03 a5 80 f6 ff ff 	add    -0x980(%rbp),%r12
  8212a0:	4d 2b e9             	sub    %r9,%r13
  8212a3:	4d 2b e1             	sub    %r9,%r12
  8212a6:	4c 03 e8             	add    %rax,%r13
  8212a9:	4c 03 e0             	add    %rax,%r12
  8212ac:	4c 89 a5 90 f6 ff ff 	mov    %r12,-0x970(%rbp)
  8212b3:	4c 63 a5 d8 fc ff ff 	movslq -0x328(%rbp),%r12
  8212ba:	4c 89 ad 98 f6 ff ff 	mov    %r13,-0x968(%rbp)
  8212c1:	49 2b fc             	sub    %r12,%rdi
  8212c4:	4c 8b ad d8 fb ff ff 	mov    -0x428(%rbp),%r13
  8212cb:	4d 0f af ec          	imul   %r12,%r13
  8212cf:	4d 0f af f4          	imul   %r12,%r14
  8212d3:	4c 89 ad 80 f2 ff ff 	mov    %r13,-0xd80(%rbp)
  8212da:	4c 8b ad 08 fc ff ff 	mov    -0x3f8(%rbp),%r13
  8212e1:	4d 0f af ec          	imul   %r12,%r13
  8212e5:	4c 89 ad 88 f2 ff ff 	mov    %r13,-0xd78(%rbp)
  8212ec:	4c 8b ad 10 fc ff ff 	mov    -0x3f0(%rbp),%r13
  8212f3:	4d 0f af ec          	imul   %r12,%r13
  8212f7:	4c 89 ad f0 f1 ff ff 	mov    %r13,-0xe10(%rbp)
  8212fe:	4c 8b ad 48 f2 ff ff 	mov    -0xdb8(%rbp),%r13
  821305:	4d 2b ee             	sub    %r14,%r13
  821308:	4d 03 dd             	add    %r13,%r11
  82130b:	49 03 d5             	add    %r13,%rdx
  82130e:	49 f7 db             	neg    %r11
  821311:	48 f7 da             	neg    %rdx
  821314:	4d 03 da             	add    %r10,%r11
  821317:	49 03 d2             	add    %r10,%rdx
  82131a:	4c 89 b5 28 f9 ff ff 	mov    %r14,-0x6d8(%rbp)
  821321:	4c 03 de             	add    %rsi,%r11
  821324:	4c 89 9d d8 f7 ff ff 	mov    %r11,-0x828(%rbp)
  82132b:	4f 8d 1c 37          	lea    (%r15,%r14,1),%r11
  82132f:	4c 8b b5 50 f2 ff ff 	mov    -0xdb0(%rbp),%r14
  821336:	48 03 d6             	add    %rsi,%rdx
  821339:	4c 89 ad 90 f2 ff ff 	mov    %r13,-0xd70(%rbp)
  821340:	4d 2b e8             	sub    %r8,%r13
  821343:	48 89 95 e8 f7 ff ff 	mov    %rdx,-0x818(%rbp)
  82134a:	48 8d 57 02          	lea    0x2(%rdi),%rdx
  82134e:	48 89 95 f0 fc ff ff 	mov    %rdx,-0x310(%rbp)
  821355:	4f 8d 3c 1e          	lea    (%r14,%r11,1),%r15
  821359:	4c 03 bd 30 f9 ff ff 	add    -0x6d0(%rbp),%r15
  821360:	4d 2b d5             	sub    %r13,%r10
  821363:	4c 03 fe             	add    %rsi,%r15
  821366:	4c 03 d6             	add    %rsi,%r10
  821369:	4c 89 bd 88 f9 ff ff 	mov    %r15,-0x678(%rbp)
  821370:	4a 8d 34 e5 00 00 00 	lea    0x0(,%r12,8),%rsi
  821377:	00 
  821378:	4c 8b bd c0 f5 ff ff 	mov    -0xa40(%rbp),%r15
  82137f:	48 03 ce             	add    %rsi,%rcx
  821382:	48 8b 95 c0 f6 ff ff 	mov    -0x940(%rbp),%rdx
  821389:	4c 8d 34 fd 08 00 00 	lea    0x8(,%rdi,8),%r14
  821390:	00 
  821391:	48 89 b5 b0 f1 ff ff 	mov    %rsi,-0xe50(%rbp)
  821398:	48 ff c7             	inc    %rdi
  82139b:	48 8b b5 c0 f9 ff ff 	mov    -0x640(%rbp),%rsi
  8213a2:	4c 89 95 e0 f7 ff ff 	mov    %r10,-0x820(%rbp)
  8213a9:	4d 8d 14 17          	lea    (%r15,%rdx,1),%r10
  8213ad:	4c 89 9d 98 f2 ff ff 	mov    %r11,-0xd68(%rbp)
  8213b4:	4c 2b d6             	sub    %rsi,%r10
  8213b7:	4c 8b 9d 80 f6 ff ff 	mov    -0x980(%rbp),%r11
  8213be:	4d 2b d7             	sub    %r15,%r10
  8213c1:	4c 03 d9             	add    %rcx,%r11
  8213c4:	4c 89 85 b8 f7 ff ff 	mov    %r8,-0x848(%rbp)
  8213cb:	4d 8d 04 37          	lea    (%r15,%rsi,1),%r8
  8213cf:	4d 2b d9             	sub    %r9,%r11
  8213d2:	4c 2b c2             	sub    %rdx,%r8
  8213d5:	4c 89 a5 90 f9 ff ff 	mov    %r12,-0x670(%rbp)
  8213dc:	4c 03 d8             	add    %rax,%r11
  8213df:	4c 8b a5 88 f6 ff ff 	mov    -0x978(%rbp),%r12
  8213e6:	4d 3b d6             	cmp    %r14,%r10
  8213e9:	4c 89 ad c8 f7 ff ff 	mov    %r13,-0x838(%rbp)
  8213f0:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  8213f6:	4c 89 9d 80 f6 ff ff 	mov    %r11,-0x980(%rbp)
  8213fd:	45 89 eb             	mov    %r13d,%r11d
  821400:	41 0f 9f c3          	setg   %r11b
  821404:	4c 03 e1             	add    %rcx,%r12
  821407:	4d 2b e1             	sub    %r9,%r12
  82140a:	4d 2b c7             	sub    %r15,%r8
  82140d:	4c 03 e0             	add    %rax,%r12
  821410:	4d 3b c6             	cmp    %r14,%r8
  821413:	4c 89 a5 88 f6 ff ff 	mov    %r12,-0x978(%rbp)
  82141a:	45 89 ec             	mov    %r13d,%r12d
  82141d:	41 0f 9f c4          	setg   %r12b
  821421:	45 0b dc             	or     %r12d,%r11d
  821424:	44 89 9d e0 f6 ff ff 	mov    %r11d,-0x920(%rbp)
  82142b:	4c 8b 9d d0 f6 ff ff 	mov    -0x930(%rbp),%r11
  821432:	4c 8b 95 c8 f6 ff ff 	mov    -0x938(%rbp),%r10
  821439:	4c 89 b5 e8 f6 ff ff 	mov    %r14,-0x918(%rbp)
  821440:	48 89 bd 20 fd ff ff 	mov    %rdi,-0x2e0(%rbp)
  821447:	4f 8d 04 1f          	lea    (%r15,%r11,1),%r8
  82144b:	4d 2b c2             	sub    %r10,%r8
  82144e:	4f 8d 24 17          	lea    (%r15,%r10,1),%r12
  821452:	4d 2b c7             	sub    %r15,%r8
  821455:	4d 2b e3             	sub    %r11,%r12
  821458:	4d 3b c6             	cmp    %r14,%r8
  82145b:	45 89 e8             	mov    %r13d,%r8d
  82145e:	48 8b bd 58 f9 ff ff 	mov    -0x6a8(%rbp),%rdi
  821465:	41 0f 9f c0          	setg   %r8b
  821469:	4d 2b e7             	sub    %r15,%r12
  82146c:	4d 3b e6             	cmp    %r14,%r12
  82146f:	4d 89 dc             	mov    %r11,%r12
  821472:	4d 89 d6             	mov    %r10,%r14
  821475:	41 0f 9f c5          	setg   %r13b
  821479:	4d 2b e1             	sub    %r9,%r12
  82147c:	4c 03 e1             	add    %rcx,%r12
  82147f:	4c 03 d1             	add    %rcx,%r10
  821482:	4d 03 e7             	add    %r15,%r12
  821485:	4d 2b d1             	sub    %r9,%r10
  821488:	4c 89 a5 00 f7 ff ff 	mov    %r12,-0x900(%rbp)
  82148f:	49 89 d4             	mov    %rdx,%r12
  821492:	4d 2b e1             	sub    %r9,%r12
  821495:	4d 03 d7             	add    %r15,%r10
  821498:	4c 03 e1             	add    %rcx,%r12
  82149b:	48 03 f9             	add    %rcx,%rdi
  82149e:	4c 89 95 c8 f6 ff ff 	mov    %r10,-0x938(%rbp)
  8214a5:	4c 8d 14 31          	lea    (%rcx,%rsi,1),%r10
  8214a9:	4d 03 e7             	add    %r15,%r12
  8214ac:	48 03 d1             	add    %rcx,%rdx
  8214af:	4c 89 a5 f0 f6 ff ff 	mov    %r12,-0x910(%rbp)
  8214b6:	45 0b c5             	or     %r13d,%r8d
  8214b9:	4c 8b a5 e0 fc ff ff 	mov    -0x320(%rbp),%r12
  8214c0:	49 2b d1             	sub    %r9,%rdx
  8214c3:	4d 03 e2             	add    %r10,%r12
  8214c6:	49 03 d7             	add    %r15,%rdx
  8214c9:	4c 8b ad 00 f9 ff ff 	mov    -0x700(%rbp),%r13
  8214d0:	4c 03 d9             	add    %rcx,%r11
  8214d3:	48 89 95 c0 f6 ff ff 	mov    %rdx,-0x940(%rbp)
  8214da:	4d 2b f1             	sub    %r9,%r14
  8214dd:	48 8b 95 80 f9 ff ff 	mov    -0x680(%rbp),%rdx
  8214e4:	4d 2b d9             	sub    %r9,%r11
  8214e7:	49 03 d2             	add    %r10,%rdx
  8214ea:	4d 2b d1             	sub    %r9,%r10
  8214ed:	4c 03 f1             	add    %rcx,%r14
  8214f0:	4b 8d 74 25 00       	lea    0x0(%r13,%r12,1),%rsi
  8214f5:	4d 03 e7             	add    %r15,%r12
  8214f8:	4d 03 df             	add    %r15,%r11
  8214fb:	4c 89 a5 e0 fc ff ff 	mov    %r12,-0x320(%rbp)
  821502:	4d 8d 24 3f          	lea    (%r15,%rdi,1),%r12
  821506:	4c 89 a5 60 f9 ff ff 	mov    %r12,-0x6a0(%rbp)
  82150d:	4d 03 f7             	add    %r15,%r14
  821510:	4c 8b a5 08 f8 ff ff 	mov    -0x7f8(%rbp),%r12
  821517:	49 03 d7             	add    %r15,%rdx
  82151a:	4c 89 9d d0 f6 ff ff 	mov    %r11,-0x930(%rbp)
  821521:	4f 8d 5c 15 00       	lea    0x0(%r13,%r10,1),%r11
  821526:	4c 89 b5 f8 f6 ff ff 	mov    %r14,-0x908(%rbp)
  82152d:	4f 8d 34 17          	lea    (%r15,%r10,1),%r14
  821531:	4c 03 d0             	add    %rax,%r10
  821534:	48 03 c7             	add    %rdi,%rax
  821537:	49 03 fd             	add    %r13,%rdi
  82153a:	48 89 bd 58 f9 ff ff 	mov    %rdi,-0x6a8(%rbp)
  821541:	4a 8d 3c e5 00 00 00 	lea    0x0(,%r12,8),%rdi
  821548:	00 
  821549:	4c 89 b5 08 f9 ff ff 	mov    %r14,-0x6f8(%rbp)
  821550:	4c 8b b5 20 f2 ff ff 	mov    -0xde0(%rbp),%r14
  821557:	4c 0f af f7          	imul   %rdi,%r14
  82155b:	4c 89 9d 78 f9 ff ff 	mov    %r11,-0x688(%rbp)
  821562:	4d 89 f3             	mov    %r14,%r11
  821565:	4d 2b d9             	sub    %r9,%r11
  821568:	4c 03 d9             	add    %rcx,%r11
  82156b:	49 03 ce             	add    %r14,%rcx
  82156e:	49 2b c9             	sub    %r9,%rcx
  821571:	4d 03 df             	add    %r15,%r11
  821574:	4c 8b 8d 20 fd ff ff 	mov    -0x2e0(%rbp),%r9
  82157b:	49 03 cf             	add    %r15,%rcx
  82157e:	44 89 8d 40 fc ff ff 	mov    %r9d,-0x3c0(%rbp)
  821585:	45 89 cf             	mov    %r9d,%r15d
  821588:	48 89 95 80 f9 ff ff 	mov    %rdx,-0x680(%rbp)
  82158f:	41 83 e7 fe          	and    $0xfffffffe,%r15d
  821593:	41 83 e1 fc          	and    $0xfffffffc,%r9d
  821597:	4d 63 c9             	movslq %r9d,%r9
  82159a:	4c 89 8d 18 fd ff ff 	mov    %r9,-0x2e8(%rbp)
  8215a1:	4c 8b 8d 00 fc ff ff 	mov    -0x400(%rbp),%r9
  8215a8:	4d 89 cd             	mov    %r9,%r13
  8215ab:	4d 0f af ec          	imul   %r12,%r13
  8215af:	48 8b 95 88 f7 ff ff 	mov    -0x878(%rbp),%rdx
  8215b6:	4d 89 ee             	mov    %r13,%r14
  8215b9:	49 2b d5             	sub    %r13,%rdx
  8215bc:	49 f7 d9             	neg    %r9
  8215bf:	48 89 b5 e8 fc ff ff 	mov    %rsi,-0x318(%rbp)
  8215c6:	48 8b b5 b0 f7 ff ff 	mov    -0x850(%rbp),%rsi
  8215cd:	48 03 f2             	add    %rdx,%rsi
  8215d0:	48 f7 de             	neg    %rsi
  8215d3:	48 89 8d d8 fa ff ff 	mov    %rcx,-0x528(%rbp)
  8215da:	48 8d bd c8 f7 ff ff 	lea    -0x838(%rbp),%rdi
  8215e1:	48 8b 0f             	mov    (%rdi),%rcx
  8215e4:	48 03 b5 68 f2 ff ff 	add    -0xd98(%rbp),%rsi
  8215eb:	48 f7 d9             	neg    %rcx
  8215ee:	4c 89 95 70 f9 ff ff 	mov    %r10,-0x690(%rbp)
  8215f5:	48 03 ce             	add    %rsi,%rcx
  8215f8:	4c 8b 95 48 f2 ff ff 	mov    -0xdb8(%rbp),%r10
  8215ff:	4d 2b f2             	sub    %r10,%r14
  821602:	44 89 85 d8 f6 ff ff 	mov    %r8d,-0x928(%rbp)
  821609:	49 f7 da             	neg    %r10
  82160c:	4d 63 ff             	movslq %r15d,%r15
  82160f:	4d 03 d1             	add    %r9,%r10
  821612:	4c 8b 85 98 f2 ff ff 	mov    -0xd68(%rbp),%r8
  821619:	4d 03 f0             	add    %r8,%r14
  82161c:	4c 89 bd 30 fd ff ff 	mov    %r15,-0x2d0(%rbp)
  821623:	4d 03 c2             	add    %r10,%r8
  821626:	4c 8b bd 60 f7 ff ff 	mov    -0x8a0(%rbp),%r15
  82162d:	49 03 cf             	add    %r15,%rcx
  821630:	48 89 0f             	mov    %rcx,(%rdi)
  821633:	49 03 f0             	add    %r8,%rsi
  821636:	48 8b 8d 30 f9 ff ff 	mov    -0x6d0(%rbp),%rcx
  82163d:	4c 03 f1             	add    %rcx,%r14
  821640:	4c 8b 95 78 f7 ff ff 	mov    -0x888(%rbp),%r10
  821647:	4d 03 f7             	add    %r15,%r14
  82164a:	4c 89 b5 d0 f7 ff ff 	mov    %r14,-0x830(%rbp)
  821651:	4f 8d 34 29          	lea    (%r9,%r13,1),%r14
  821655:	4d 03 ea             	add    %r10,%r13
  821658:	49 03 f7             	add    %r15,%rsi
  82165b:	4c 03 ad 38 f2 ff ff 	add    -0xdc8(%rbp),%r13
  821662:	48 8b bd 90 f2 ff ff 	mov    -0xd70(%rbp),%rdi
  821669:	4c 2b f7             	sub    %rdi,%r14
  82166c:	4c 89 ad 68 f7 ff ff 	mov    %r13,-0x898(%rbp)
  821673:	4c 89 9d 50 f9 ff ff 	mov    %r11,-0x6b0(%rbp)
  82167a:	4c 8b ad 98 f8 ff ff 	mov    -0x768(%rbp),%r13
  821681:	4c 8b 9d b8 f7 ff ff 	mov    -0x848(%rbp),%r11
  821688:	4d 03 f3             	add    %r11,%r14
  82168b:	4c 03 f1             	add    %rcx,%r14
  82168e:	4d 03 f7             	add    %r15,%r14
  821691:	4c 89 b5 c0 f7 ff ff 	mov    %r14,-0x840(%rbp)
  821698:	4f 8d 34 29          	lea    (%r9,%r13,1),%r14
  82169c:	4c 2b f7             	sub    %rdi,%r14
  82169f:	4d 03 ca             	add    %r10,%r9
  8216a2:	4d 03 de             	add    %r14,%r11
  8216a5:	49 2b d1             	sub    %r9,%rdx
  8216a8:	49 f7 d9             	neg    %r9
  8216ab:	4c 03 d9             	add    %rcx,%r11
  8216ae:	48 89 85 68 f9 ff ff 	mov    %rax,-0x698(%rbp)
  8216b5:	4d 03 df             	add    %r15,%r11
  8216b8:	48 8b 85 a8 f7 ff ff 	mov    -0x858(%rbp),%rax
  8216bf:	49 03 c0             	add    %r8,%rax
  8216c2:	4c 03 8d 40 f2 ff ff 	add    -0xdc0(%rbp),%r9
  8216c9:	49 03 c7             	add    %r15,%rax
  8216cc:	4c 8b bd a8 f1 ff ff 	mov    -0xe58(%rbp),%r15
  8216d3:	4c 89 8d 80 f7 ff ff 	mov    %r9,-0x880(%rbp)
  8216da:	4d 89 f9             	mov    %r15,%r9
  8216dd:	48 89 95 88 f7 ff ff 	mov    %rdx,-0x878(%rbp)
  8216e4:	48 8b 95 e0 fb ff ff 	mov    -0x420(%rbp),%rdx
  8216eb:	4c 0f af ca          	imul   %rdx,%r9
  8216ef:	4c 0f af e2          	imul   %rdx,%r12
  8216f3:	4c 8b 85 a0 f1 ff ff 	mov    -0xe60(%rbp),%r8
  8216fa:	4c 8b ad b8 f4 ff ff 	mov    -0xb48(%rbp),%r13
  821701:	4c 89 9d b8 f7 ff ff 	mov    %r11,-0x848(%rbp)
  821708:	4d 2b e9             	sub    %r9,%r13
  82170b:	4d 2b cc             	sub    %r12,%r9
  82170e:	4c 89 8d a0 f2 ff ff 	mov    %r9,-0xd60(%rbp)
  821715:	4d 89 c1             	mov    %r8,%r9
  821718:	4c 8b 9d d8 fb ff ff 	mov    -0x428(%rbp),%r11
  82171f:	4d 0f af cb          	imul   %r11,%r9
  821723:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  821729:	4f 8d 74 25 00       	lea    0x0(%r13,%r12,1),%r14
  82172e:	4d 2b e1             	sub    %r9,%r12
  821731:	4d 03 ec             	add    %r12,%r13
  821734:	4c 8b a5 80 f2 ff ff 	mov    -0xd80(%rbp),%r12
  82173b:	4d 2b cc             	sub    %r12,%r9
  82173e:	48 89 b5 b0 f7 ff ff 	mov    %rsi,-0x850(%rbp)
  821745:	8d 72 01             	lea    0x1(%rdx),%esi
  821748:	48 8b 95 d8 f4 ff ff 	mov    -0xb28(%rbp),%rdx
  82174f:	4f 8d 14 5c          	lea    (%r12,%r11,2),%r10
  821753:	4d 03 ea             	add    %r10,%r13
  821756:	4d 89 fb             	mov    %r15,%r11
  821759:	4c 89 ad 48 f9 ff ff 	mov    %r13,-0x6b8(%rbp)
  821760:	4d 2b f1             	sub    %r9,%r14
  821763:	4c 8b ad e8 f5 ff ff 	mov    -0xa18(%rbp),%r13
  82176a:	4d 89 ec             	mov    %r13,%r12
  82176d:	4c 0f af e2          	imul   %rdx,%r12
  821771:	4c 0f af 9d 18 fc ff 	imul   -0x3e8(%rbp),%r11
  821778:	ff 
  821779:	8b bd 40 f8 ff ff    	mov    -0x7c0(%rbp),%edi
  82177f:	4d 89 e2             	mov    %r12,%r10
  821782:	48 89 85 a8 f7 ff ff 	mov    %rax,-0x858(%rbp)
  821789:	4d 2b d3             	sub    %r11,%r10
  82178c:	4c 8b 8d e0 f4 ff ff 	mov    -0xb20(%rbp),%r9
  821793:	4c 2b ca             	sub    %rdx,%r9
  821796:	8d 47 ff             	lea    -0x1(%rdi),%eax
  821799:	89 85 48 f8 ff ff    	mov    %eax,-0x7b8(%rbp)
  82179f:	4c 89 c7             	mov    %r8,%rdi
  8217a2:	48 8b 85 08 fc ff ff 	mov    -0x3f8(%rbp),%rax
  8217a9:	4d 03 e1             	add    %r9,%r12
  8217ac:	48 0f af f8          	imul   %rax,%rdi
  8217b0:	4c 89 8d a8 f2 ff ff 	mov    %r9,-0xd58(%rbp)
  8217b7:	89 b5 50 f8 ff ff    	mov    %esi,-0x7b0(%rbp)
  8217bd:	4b 8d 34 11          	lea    (%r9,%r10,1),%rsi
  8217c1:	4c 8b 8d 70 f6 ff ff 	mov    -0x990(%rbp),%r9
  8217c8:	49 0f af d1          	imul   %r9,%rdx
  8217cc:	4c 89 b5 38 fc ff ff 	mov    %r14,-0x3c8(%rbp)
  8217d3:	4c 8b b5 10 f2 ff ff 	mov    -0xdf0(%rbp),%r14
  8217da:	4d 2b de             	sub    %r14,%r11
  8217dd:	4c 2b f7             	sub    %rdi,%r14
  8217e0:	4c 89 95 b0 f2 ff ff 	mov    %r10,-0xd50(%rbp)
  8217e7:	49 89 f2             	mov    %rsi,%r10
  8217ea:	49 03 f6             	add    %r14,%rsi
  8217ed:	4c 2b d7             	sub    %rdi,%r10
  8217f0:	4c 8b b5 88 f2 ff ff 	mov    -0xd78(%rbp),%r14
  8217f7:	49 2b fe             	sub    %r14,%rdi
  8217fa:	4c 03 df             	add    %rdi,%r11
  8217fd:	49 03 f6             	add    %r14,%rsi
  821800:	4d 2b e3             	sub    %r11,%r12
  821803:	48 03 f2             	add    %rdx,%rsi
  821806:	48 89 b5 40 f9 ff ff 	mov    %rsi,-0x6c0(%rbp)
  82180d:	4c 03 d2             	add    %rdx,%r10
  821810:	48 8b b5 90 f5 ff ff 	mov    -0xa70(%rbp),%rsi
  821817:	4c 8b 9d f0 f5 ff ff 	mov    -0xa10(%rbp),%r11
  82181e:	4c 8b b5 80 f5 ff ff 	mov    -0xa80(%rbp),%r14
  821825:	4d 8d 24 44          	lea    (%r12,%rax,2),%r12
  821829:	48 8b 85 88 f5 ff ff 	mov    -0xa78(%rbp),%rax
  821830:	4c 03 e2             	add    %rdx,%r12
  821833:	4c 89 a5 38 f9 ff ff 	mov    %r12,-0x6c8(%rbp)
  82183a:	4a 8d 3c 9e          	lea    (%rsi,%r11,4),%rdi
  82183e:	48 8b b5 78 f5 ff ff 	mov    -0xa88(%rbp),%rsi
  821845:	4c 89 95 60 f4 ff ff 	mov    %r10,-0xba0(%rbp)
  82184c:	4c 8d 24 85 00 00 00 	lea    0x0(,%rax,4),%r12
  821853:	00 
  821854:	49 f7 dc             	neg    %r12
  821857:	4f 8d 14 9e          	lea    (%r14,%r11,4),%r10
  82185b:	4c 89 a5 c8 f8 ff ff 	mov    %r12,-0x738(%rbp)
  821862:	4c 8d 24 b5 00 00 00 	lea    0x0(,%rsi,4),%r12
  821869:	00 
  82186a:	49 f7 dc             	neg    %r12
  82186d:	4c 89 a5 b8 f8 ff ff 	mov    %r12,-0x748(%rbp)
  821874:	4c 8b a5 68 f5 ff ff 	mov    -0xa98(%rbp),%r12
  82187b:	48 89 bd d0 f8 ff ff 	mov    %rdi,-0x730(%rbp)
  821882:	48 8b bd 70 f5 ff ff 	mov    -0xa90(%rbp),%rdi
  821889:	4c 89 95 c0 f8 ff ff 	mov    %r10,-0x740(%rbp)
  821890:	4e 8d 34 a5 00 00 00 	lea    0x0(,%r12,4),%r14
  821897:	00 
  821898:	4d 89 fc             	mov    %r15,%r12
  82189b:	49 f7 de             	neg    %r14
  82189e:	4c 89 b5 a8 f8 ff ff 	mov    %r14,-0x758(%rbp)
  8218a5:	4a 8d 04 9f          	lea    (%rdi,%r11,4),%rax
  8218a9:	4c 8b b5 38 f5 ff ff 	mov    -0xac8(%rbp),%r14
  8218b0:	4c 0f af a5 f8 fb ff 	imul   -0x408(%rbp),%r12
  8218b7:	ff 
  8218b8:	4d 0f af ee          	imul   %r14,%r13
  8218bc:	48 89 85 b0 f8 ff ff 	mov    %rax,-0x750(%rbp)
  8218c3:	4c 89 c0             	mov    %r8,%rax
  8218c6:	48 f7 d8             	neg    %rax
  8218c9:	4d 2b ec             	sub    %r12,%r13
  8218cc:	4c 8b 95 40 f5 ff ff 	mov    -0xac0(%rbp),%r10
  8218d3:	49 c1 e0 03          	shl    $0x3,%r8
  8218d7:	4d 2b d6             	sub    %r14,%r10
  8218da:	4d 0f af f1          	imul   %r9,%r14
  8218de:	4c 63 8d d8 fc ff ff 	movslq -0x328(%rbp),%r9
  8218e5:	49 03 c1             	add    %r9,%rax
  8218e8:	4c 8b a5 08 fd ff ff 	mov    -0x2f8(%rbp),%r12
  8218ef:	4f 8d 0c 2a          	lea    (%r10,%r13,1),%r9
  8218f3:	4c 0f af e0          	imul   %rax,%r12
  8218f7:	4c 03 8d f8 f1 ff ff 	add    -0xe08(%rbp),%r9
  8218fe:	4d 03 ce             	add    %r14,%r9
  821901:	4d 03 e1             	add    %r9,%r12
  821904:	4c 89 a5 f8 f7 ff ff 	mov    %r12,-0x808(%rbp)
  82190b:	4c 8b a5 50 f5 ff ff 	mov    -0xab0(%rbp),%r12
  821912:	4c 89 95 b8 f2 ff ff 	mov    %r10,-0xd48(%rbp)
  821919:	4d 89 e2             	mov    %r12,%r10
  82191c:	4c 0f af 95 28 f5 ff 	imul   -0xad8(%rbp),%r10
  821923:	ff 
  821924:	4c 89 b5 c0 f1 ff ff 	mov    %r14,-0xe40(%rbp)
  82192b:	4c 8b b5 28 f9 ff ff 	mov    -0x6d8(%rbp),%r14
  821932:	4c 2b 9d 60 f5 ff ff 	sub    -0xaa0(%rbp),%r11
  821939:	4c 89 9d a0 f8 ff ff 	mov    %r11,-0x760(%rbp)
  821940:	48 8b b5 38 f2 ff ff 	mov    -0xdc8(%rbp),%rsi
  821947:	4f 8d 1c 16          	lea    (%r14,%r10,1),%r11
  82194b:	4c 03 95 98 f8 ff ff 	add    -0x768(%rbp),%r10
  821952:	4c 03 d6             	add    %rsi,%r10
  821955:	4c 89 95 90 f8 ff ff 	mov    %r10,-0x770(%rbp)
  82195c:	4d 89 fa             	mov    %r15,%r10
  82195f:	4c 0f af 95 f0 fb ff 	imul   -0x410(%rbp),%r10
  821966:	ff 
  821967:	4c 0f af bd e8 fb ff 	imul   -0x418(%rbp),%r15
  82196e:	ff 
  82196f:	48 8b bd 50 f2 ff ff 	mov    -0xdb0(%rbp),%rdi
  821976:	4c 03 df             	add    %rdi,%r11
  821979:	49 03 cb             	add    %r11,%rcx
  82197c:	4c 8b 9d 00 fd ff ff 	mov    -0x300(%rbp),%r11
  821983:	4c 0f af d8          	imul   %rax,%r11
  821987:	48 0f af 85 f8 fc ff 	imul   -0x308(%rbp),%rax
  82198e:	ff 
  82198f:	4c 8b 8d 60 f7 ff ff 	mov    -0x8a0(%rbp),%r9
  821996:	49 03 c9             	add    %r9,%rcx
  821999:	48 89 8d 30 f9 ff ff 	mov    %rcx,-0x6d0(%rbp)
  8219a0:	48 8b 8d 20 f5 ff ff 	mov    -0xae0(%rbp),%rcx
  8219a7:	49 2b ca             	sub    %r10,%rcx
  8219aa:	4c 89 ad c0 f2 ff ff 	mov    %r13,-0xd40(%rbp)
  8219b1:	4c 8b ad 00 f2 ff ff 	mov    -0xe00(%rbp),%r13
  8219b8:	49 03 cd             	add    %r13,%rcx
  8219bb:	4d 2b d5             	sub    %r13,%r10
  8219be:	4c 03 d9             	add    %rcx,%r11
  8219c1:	4c 8b ad 18 f5 ff ff 	mov    -0xae8(%rbp),%r13
  8219c8:	4c 89 e9             	mov    %r13,%rcx
  8219cb:	49 2b cf             	sub    %r15,%rcx
  8219ce:	4c 89 9d a0 f7 ff ff 	mov    %r11,-0x860(%rbp)
  8219d5:	4c 8b 9d 08 f2 ff ff 	mov    -0xdf8(%rbp),%r11
  8219dc:	49 03 cb             	add    %r11,%rcx
  8219df:	48 03 c1             	add    %rcx,%rax
  8219e2:	4d 2b fb             	sub    %r11,%r15
  8219e5:	48 89 85 98 f7 ff ff 	mov    %rax,-0x868(%rbp)
  8219ec:	4b 8d 04 64          	lea    (%r12,%r12,2),%rax
  8219f0:	48 2b 85 48 f5 ff ff 	sub    -0xab8(%rbp),%rax
  8219f7:	4c 8b a5 60 f2 ff ff 	mov    -0xda0(%rbp),%r12
  8219fe:	4c 03 e0             	add    %rax,%r12
  821a01:	48 03 c6             	add    %rsi,%rax
  821a04:	4c 8b 9d 68 f2 ff ff 	mov    -0xd98(%rbp),%r11
  821a0b:	4c 03 d8             	add    %rax,%r11
  821a0e:	49 03 fb             	add    %r11,%rdi
  821a11:	4c 8b 9d b0 f1 ff ff 	mov    -0xe50(%rbp),%r11
  821a18:	4c 03 f7             	add    %rdi,%r14
  821a1b:	4d 2b d8             	sub    %r8,%r11
  821a1e:	4d 03 f1             	add    %r9,%r14
  821a21:	48 8b 85 a8 f2 ff ff 	mov    -0xd58(%rbp),%rax
  821a28:	49 03 c3             	add    %r11,%rax
  821a2b:	48 8b 8d b0 f2 ff ff 	mov    -0xd50(%rbp),%rcx
  821a32:	48 03 c8             	add    %rax,%rcx
  821a35:	4d 03 eb             	add    %r11,%r13
  821a38:	48 03 8d 10 f2 ff ff 	add    -0xdf0(%rbp),%rcx
  821a3f:	4d 2b ef             	sub    %r15,%r13
  821a42:	48 03 d1             	add    %rcx,%rdx
  821a45:	48 89 95 d8 f1 ff ff 	mov    %rdx,-0xe28(%rbp)
  821a4c:	48 8b 95 b8 f2 ff ff 	mov    -0xd48(%rbp),%rdx
  821a53:	49 03 d3             	add    %r11,%rdx
  821a56:	48 8b bd c0 f2 ff ff 	mov    -0xd40(%rbp),%rdi
  821a5d:	48 03 fa             	add    %rdx,%rdi
  821a60:	48 8b 95 b8 f4 ff ff 	mov    -0xb48(%rbp),%rdx
  821a67:	4c 89 b5 28 f9 ff ff 	mov    %r14,-0x6d8(%rbp)
  821a6e:	4c 8b b5 70 f7 ff ff 	mov    -0x890(%rbp),%r14
  821a75:	4d 2b f0             	sub    %r8,%r14
  821a78:	4e 8d 04 1a          	lea    (%rdx,%r11,1),%r8
  821a7c:	48 8b 95 28 f2 ff ff 	mov    -0xdd8(%rbp),%rdx
  821a83:	4c 2b 85 a0 f2 ff ff 	sub    -0xd60(%rbp),%r8
  821a8a:	4c 89 85 e0 f1 ff ff 	mov    %r8,-0xe20(%rbp)
  821a91:	48 8b 8d 70 f2 ff ff 	mov    -0xd90(%rbp),%rcx
  821a98:	4e 8d 04 1a          	lea    (%rdx,%r11,1),%r8
  821a9c:	4d 03 e0             	add    %r8,%r12
  821a9f:	4c 03 c1             	add    %rcx,%r8
  821aa2:	49 03 f4             	add    %r12,%rsi
  821aa5:	49 03 d6             	add    %r14,%rdx
  821aa8:	4c 8b a5 98 f8 ff ff 	mov    -0x768(%rbp),%r12
  821aaf:	48 03 ca             	add    %rdx,%rcx
  821ab2:	4c 03 e6             	add    %rsi,%r12
  821ab5:	48 8b b5 88 f7 ff ff 	mov    -0x878(%rbp),%rsi
  821abc:	4d 03 e1             	add    %r9,%r12
  821abf:	48 f7 de             	neg    %rsi
  821ac2:	48 8b 95 b0 f4 ff ff 	mov    -0xb50(%rbp),%rdx
  821ac9:	49 03 f0             	add    %r8,%rsi
  821acc:	48 8b 85 80 f7 ff ff 	mov    -0x880(%rbp),%rax
  821ad3:	49 03 f1             	add    %r9,%rsi
  821ad6:	48 f7 d8             	neg    %rax
  821ad9:	4c 8b bd 20 f5 ff ff 	mov    -0xae0(%rbp),%r15
  821ae0:	49 03 c0             	add    %r8,%rax
  821ae3:	48 89 b5 88 f7 ff ff 	mov    %rsi,-0x878(%rbp)
  821aea:	49 03 c1             	add    %r9,%rax
  821aed:	48 8b b5 40 f2 ff ff 	mov    -0xdc0(%rbp),%rsi
  821af4:	4c 2b c6             	sub    %rsi,%r8
  821af7:	48 2b ce             	sub    %rsi,%rcx
  821afa:	48 8b b5 58 f5 ff ff 	mov    -0xaa8(%rbp),%rsi
  821b01:	48 03 bd f8 f1 ff ff 	add    -0xe08(%rbp),%rdi
  821b08:	4c 89 a5 98 f8 ff ff 	mov    %r12,-0x768(%rbp)
  821b0f:	4c 8b a5 78 f7 ff ff 	mov    -0x888(%rbp),%r12
  821b16:	4d 03 c4             	add    %r12,%r8
  821b19:	4c 03 e1             	add    %rcx,%r12
  821b1c:	4a 8d 0c 32          	lea    (%rdx,%r14,1),%rcx
  821b20:	4c 03 f6             	add    %rsi,%r14
  821b23:	4d 03 c1             	add    %r9,%r8
  821b26:	48 01 bd c0 f1 ff ff 	add    %rdi,-0xe40(%rbp)
  821b2d:	4d 03 e1             	add    %r9,%r12
  821b30:	48 8b bd 30 f2 ff ff 	mov    -0xdd0(%rbp),%rdi
  821b37:	4c 2b f7             	sub    %rdi,%r14
  821b3a:	48 89 85 80 f7 ff ff 	mov    %rax,-0x880(%rbp)
  821b41:	4b 8d 04 1f          	lea    (%r15,%r11,1),%rax
  821b45:	49 2b c2             	sub    %r10,%rax
  821b48:	4c 8b 95 58 f2 ff ff 	mov    -0xda8(%rbp),%r10
  821b4f:	4d 03 f2             	add    %r10,%r14
  821b52:	4d 03 f1             	add    %r9,%r14
  821b55:	4c 89 b5 70 f7 ff ff 	mov    %r14,-0x890(%rbp)
  821b5c:	4e 8d 34 1e          	lea    (%rsi,%r11,1),%r14
  821b60:	4c 2b f7             	sub    %rdi,%r14
  821b63:	4c 89 9d b0 f1 ff ff 	mov    %r11,-0xe50(%rbp)
  821b6a:	4d 03 d6             	add    %r14,%r10
  821b6d:	4c 89 85 90 f7 ff ff 	mov    %r8,-0x870(%rbp)
  821b74:	48 8d bd 90 f8 ff ff 	lea    -0x770(%rbp),%rdi
  821b7b:	4c 8b 1f             	mov    (%rdi),%r11
  821b7e:	48 8d b5 68 f7 ff ff 	lea    -0x898(%rbp),%rsi
  821b85:	4c 8b 06             	mov    (%rsi),%r8
  821b88:	4d 03 de             	add    %r14,%r11
  821b8b:	4d 03 c6             	add    %r14,%r8
  821b8e:	4d 03 d9             	add    %r9,%r11
  821b91:	48 2b 8d 78 f2 ff ff 	sub    -0xd88(%rbp),%rcx
  821b98:	4d 03 c1             	add    %r9,%r8
  821b9b:	48 89 85 c8 f1 ff ff 	mov    %rax,-0xe38(%rbp)
  821ba2:	4d 03 ca             	add    %r10,%r9
  821ba5:	48 89 8d b8 f1 ff ff 	mov    %rcx,-0xe48(%rbp)
  821bac:	4c 89 1f             	mov    %r11,(%rdi)
  821baf:	4c 89 06             	mov    %r8,(%rsi)
  821bb2:	c5 79 10 05 e6 4b 0a 	vmovupd 0xa4be6(%rip),%xmm8        # 8c67a0 <__STRLITPACK_19.34+0x10>
  821bb9:	00 
  821bba:	c5 f9 10 35 1e 51 0a 	vmovupd 0xa511e(%rip),%xmm6        # 8c6ce0 <__STRLITPACK_54.50+0xc0>
  821bc1:	00 
  821bc2:	c5 fb 10 0d 4e 54 0a 	vmovsd 0xa544e(%rip),%xmm1        # 8c7018 <__STRLITPACK_199.115+0x88>
  821bc9:	00 
  821bca:	c5 fb 10 05 6e 5c 0a 	vmovsd 0xa5c6e(%rip),%xmm0        # 8c7840 <__STRLITPACK_199.115+0x8b0>
  821bd1:	00 
  821bd2:	c5 7b 10 25 6e 5c 0a 	vmovsd 0xa5c6e(%rip),%xmm12        # 8c7848 <__STRLITPACK_199.115+0x8b8>
  821bd9:	00 
  821bda:	c5 fb 10 15 6e 5c 0a 	vmovsd 0xa5c6e(%rip),%xmm2        # 8c7850 <__STRLITPACK_199.115+0x8c0>
  821be1:	00 
  821be2:	c5 fb 10 1d 6e 5c 0a 	vmovsd 0xa5c6e(%rip),%xmm3        # 8c7858 <__STRLITPACK_199.115+0x8c8>
  821be9:	00 
  821bea:	4c 89 ad d0 f1 ff ff 	mov    %r13,-0xe30(%rbp)
  821bf1:	48 8b 85 28 fc ff ff 	mov    -0x3d8(%rbp),%rax
  821bf8:	48 8b 8d 38 f8 ff ff 	mov    -0x7c8(%rbp),%rcx
  821bff:	48 8b bd 00 f8 ff ff 	mov    -0x800(%rbp),%rdi
  821c06:	4c 8b 95 60 f6 ff ff 	mov    -0x9a0(%rbp),%r10
  821c0d:	4c 8b 9d 68 f6 ff ff 	mov    -0x998(%rbp),%r11
  821c14:	4c 8b bd b8 f9 ff ff 	mov    -0x648(%rbp),%r15
  821c1b:	4c 8b b5 d8 fa ff ff 	mov    -0x528(%rbp),%r14
  821c22:	8b 95 40 f8 ff ff    	mov    -0x7c0(%rbp),%edx
  821c28:	8b b5 68 f8 ff ff    	mov    -0x798(%rbp),%esi
  821c2e:	4c 8b 85 70 f6 ff ff 	mov    -0x990(%rbp),%r8
  821c35:	4c 89 a5 78 f7 ff ff 	mov    %r12,-0x888(%rbp)
  821c3c:	4c 8b a5 f0 f5 ff ff 	mov    -0xa10(%rbp),%r12
  821c43:	4c 89 8d 60 f7 ff ff 	mov    %r9,-0x8a0(%rbp)
  821c4a:	4d 89 e1             	mov    %r12,%r9
  821c4d:	4c 89 9d 68 f6 ff ff 	mov    %r11,-0x998(%rbp)
  821c54:	4c 8b 9d e8 f4 ff ff 	mov    -0xb18(%rbp),%r11
  821c5b:	4d 0f af cb          	imul   %r11,%r9
  821c5f:	4c 0f af 9d f0 f4 ff 	imul   -0xb10(%rbp),%r11
  821c66:	ff 
  821c67:	c5 fd 10 2d f1 34 0a 	vmovupd 0xa34f1(%rip),%ymm5        # 8c5160 <var$630.126.450+0x4a0>
  821c6e:	00 
  821c6f:	c5 fb 10 25 89 53 0a 	vmovsd 0xa5389(%rip),%xmm4        # 8c7000 <__STRLITPACK_199.115+0x70>
  821c76:	00 
  821c77:	c5 fd 10 3d a1 42 0a 	vmovupd 0xa42a1(%rip),%ymm7        # 8c5f20 <var$630.126.450+0x1260>
  821c7e:	00 
  821c7f:	48 89 85 28 fc ff ff 	mov    %rax,-0x3d8(%rbp)
  821c86:	48 8b 85 98 f5 ff ff 	mov    -0xa68(%rbp),%rax
  821c8d:	4c 8b ad 10 f5 ff ff 	mov    -0xaf0(%rbp),%r13
  821c94:	4c 89 bd b8 f9 ff ff 	mov    %r15,-0x648(%rbp)
  821c9b:	4c 8b bd 08 f5 ff ff 	mov    -0xaf8(%rbp),%r15
  821ca2:	48 89 bd 00 f8 ff ff 	mov    %rdi,-0x800(%rbp)
  821ca9:	48 8d 3c 85 00 00 00 	lea    0x0(,%rax,4),%rdi
  821cb0:	00 
  821cb1:	4c 89 b5 d8 fa ff ff 	mov    %r14,-0x528(%rbp)
  821cb8:	4f 8d 74 a5 00       	lea    0x0(%r13,%r12,4),%r14
  821cbd:	4c 89 b5 18 f7 ff ff 	mov    %r14,-0x8e8(%rbp)
  821cc4:	4d 89 e6             	mov    %r12,%r14
  821cc7:	48 f7 df             	neg    %rdi
  821cca:	4d 89 cd             	mov    %r9,%r13
  821ccd:	89 95 40 f8 ff ff    	mov    %edx,-0x7c0(%rbp)
  821cd3:	4a 8d 14 bd 00 00 00 	lea    0x0(,%r15,4),%rdx
  821cda:	00 
  821cdb:	48 89 8d 38 f8 ff ff 	mov    %rcx,-0x7c8(%rbp)
  821ce2:	4d 2b eb             	sub    %r11,%r13
  821ce5:	48 8b 8d f8 f4 ff ff 	mov    -0xb08(%rbp),%rcx
  821cec:	48 03 f9             	add    %rcx,%rdi
  821cef:	4c 2b b5 00 f5 ff ff 	sub    -0xb00(%rbp),%r14
  821cf6:	48 f7 da             	neg    %rdx
  821cf9:	4c 89 95 60 f6 ff ff 	mov    %r10,-0x9a0(%rbp)
  821d00:	4d 8d 14 81          	lea    (%r9,%rax,4),%r10
  821d04:	48 89 95 10 f7 ff ff 	mov    %rdx,-0x8f0(%rbp)
  821d0b:	4c 89 f2             	mov    %r14,%rdx
  821d0e:	4c 03 d7             	add    %rdi,%r10
  821d11:	49 03 fd             	add    %r13,%rdi
  821d14:	4c 03 e9             	add    %rcx,%r13
  821d17:	4d 2b d3             	sub    %r11,%r10
  821d1a:	4c 89 ad 60 f8 ff ff 	mov    %r13,-0x7a0(%rbp)
  821d21:	4c 8b ad e8 f5 ff ff 	mov    -0xa18(%rbp),%r13
  821d28:	48 c1 e2 05          	shl    $0x5,%rdx
  821d2c:	49 03 d6             	add    %r14,%rdx
  821d2f:	4c 89 95 58 f8 ff ff 	mov    %r10,-0x7a8(%rbp)
  821d36:	48 c1 e2 05          	shl    $0x5,%rdx
  821d3a:	4c 8b 95 c8 f4 ff ff 	mov    -0xb38(%rbp),%r10
  821d41:	48 8b 8d a8 f1 ff ff 	mov    -0xe58(%rbp),%rcx
  821d48:	48 89 95 88 f4 ff ff 	mov    %rdx,-0xb78(%rbp)
  821d4f:	4b 8d 54 05 00       	lea    0x0(%r13,%r8,1),%rdx
  821d54:	4d 0f af ea          	imul   %r10,%r13
  821d58:	48 0f af 8d 20 fc ff 	imul   -0x3e0(%rbp),%rcx
  821d5f:	ff 
  821d60:	48 89 bd 08 f7 ff ff 	mov    %rdi,-0x8f8(%rbp)
  821d67:	4c 89 e8             	mov    %r13,%rax
  821d6a:	44 8b 9d d0 fc ff ff 	mov    -0x330(%rbp),%r11d
  821d71:	48 2b c1             	sub    %rcx,%rax
  821d74:	48 8b bd d0 f4 ff ff 	mov    -0xb30(%rbp),%rdi
  821d7b:	49 2b fa             	sub    %r10,%rdi
  821d7e:	4c 8b 8d b0 f1 ff ff 	mov    -0xe50(%rbp),%r9
  821d85:	45 8d 7b 01          	lea    0x1(%r11),%r15d
  821d89:	4c 03 cf             	add    %rdi,%r9
  821d8c:	4c 03 c8             	add    %rax,%r9
  821d8f:	48 03 c7             	add    %rdi,%rax
  821d92:	49 03 fd             	add    %r13,%rdi
  821d95:	4c 8b ad 10 fc ff ff 	mov    -0x3f0(%rbp),%r13
  821d9c:	44 89 bd 78 fc ff ff 	mov    %r15d,-0x388(%rbp)
  821da3:	4c 8b bd a0 f1 ff ff 	mov    -0xe60(%rbp),%r15
  821daa:	4d 0f af fd          	imul   %r13,%r15
  821dae:	4d 0f af d0          	imul   %r8,%r10
  821db2:	48 89 95 70 f4 ff ff 	mov    %rdx,-0xb90(%rbp)
  821db9:	48 8b 95 20 f9 ff ff 	mov    -0x6e0(%rbp),%rdx
  821dc0:	4c 03 ca             	add    %rdx,%r9
  821dc3:	48 2b ca             	sub    %rdx,%rcx
  821dc6:	49 2b d7             	sub    %r15,%rdx
  821dc9:	4c 8b b5 f0 f1 ff ff 	mov    -0xe10(%rbp),%r14
  821dd0:	48 03 d0             	add    %rax,%rdx
  821dd3:	49 2b c7             	sub    %r15,%rax
  821dd6:	4d 2b fe             	sub    %r14,%r15
  821dd9:	49 03 cf             	add    %r15,%rcx
  821ddc:	49 03 d6             	add    %r14,%rdx
  821ddf:	48 2b f9             	sub    %rcx,%rdi
  821de2:	49 03 d2             	add    %r10,%rdx
  821de5:	48 89 95 20 f9 ff ff 	mov    %rdx,-0x6e0(%rbp)
  821dec:	49 03 c2             	add    %r10,%rax
  821def:	48 8b 95 c8 f5 ff ff 	mov    -0xa38(%rbp),%rdx
  821df6:	4d 03 ca             	add    %r10,%r9
  821df9:	48 89 85 68 f4 ff ff 	mov    %rax,-0xb98(%rbp)
  821e00:	48 8b 85 78 f8 ff ff 	mov    -0x788(%rbp),%rax
  821e07:	4a 8d 0c 6f          	lea    (%rdi,%r13,2),%rcx
  821e0b:	48 d1 e8             	shr    %rax
  821e0e:	4c 03 d1             	add    %rcx,%r10
  821e11:	48 8b bd d0 f5 ff ff 	mov    -0xa30(%rbp),%rdi
  821e18:	48 89 85 88 f8 ff ff 	mov    %rax,-0x778(%rbp)
  821e1f:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  821e26:	00 
  821e27:	48 f7 d8             	neg    %rax
  821e2a:	48 89 85 28 f8 ff ff 	mov    %rax,-0x7d8(%rbp)
  821e31:	8b 85 d8 fc ff ff    	mov    -0x328(%rbp),%eax
  821e37:	44 2b d8             	sub    %eax,%r11d
  821e3a:	4c 89 8d b0 f1 ff ff 	mov    %r9,-0xe50(%rbp)
  821e41:	4e 8d 0c a7          	lea    (%rdi,%r12,4),%r9
  821e45:	4c 89 e7             	mov    %r12,%rdi
  821e48:	48 2b bd c0 f4 ff ff 	sub    -0xb40(%rbp),%rdi
  821e4f:	48 89 f9             	mov    %rdi,%rcx
  821e52:	41 8d 53 01          	lea    0x1(%r11),%edx
  821e56:	48 c1 e1 05          	shl    $0x5,%rcx
  821e5a:	41 83 c3 03          	add    $0x3,%r11d
  821e5e:	48 c1 e7 0b          	shl    $0xb,%rdi
  821e62:	89 95 28 f3 ff ff    	mov    %edx,-0xcd8(%rbp)
  821e68:	8d 50 ff             	lea    -0x1(%rax),%edx
  821e6b:	89 95 b0 fb ff ff    	mov    %edx,-0x450(%rbp)
  821e71:	48 2b f9             	sub    %rcx,%rdi
  821e74:	48 8b 95 d8 f5 ff ff 	mov    -0xa28(%rbp),%rdx
  821e7b:	48 8b 8d f0 fc ff ff 	mov    -0x310(%rbp),%rcx
  821e82:	48 89 bd 40 f7 ff ff 	mov    %rdi,-0x8c0(%rbp)
  821e89:	83 e1 fc             	and    $0xfffffffc,%ecx
  821e8c:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  821e93:	00 
  821e94:	48 63 c9             	movslq %ecx,%rcx
  821e97:	48 f7 d8             	neg    %rax
  821e9a:	48 89 8d 28 fd ff ff 	mov    %rcx,-0x2d8(%rbp)
  821ea1:	89 f1                	mov    %esi,%ecx
  821ea3:	8b 95 40 f8 ff ff    	mov    -0x7c0(%rbp),%edx
  821ea9:	2b ca                	sub    %edx,%ecx
  821eab:	48 8b bd e0 f5 ff ff 	mov    -0xa20(%rbp),%rdi
  821eb2:	ff c1                	inc    %ecx
  821eb4:	4c 8b ad f8 fa ff ff 	mov    -0x508(%rbp),%r13
  821ebb:	44 89 ad 30 fc ff ff 	mov    %r13d,-0x3d0(%rbp)
  821ec2:	89 8d b8 f6 ff ff    	mov    %ecx,-0x948(%rbp)
  821ec8:	4e 8d 24 a7          	lea    (%rdi,%r12,4),%r12
  821ecc:	41 83 e5 fc          	and    $0xfffffffc,%r13d
  821ed0:	d1 e9                	shr    %ecx
  821ed2:	4d 63 ed             	movslq %r13d,%r13
  821ed5:	89 8d b0 f6 ff ff    	mov    %ecx,-0x950(%rbp)
  821edb:	4c 89 95 18 f9 ff ff 	mov    %r10,-0x6e8(%rbp)
  821ee2:	4c 89 8d 30 f8 ff ff 	mov    %r9,-0x7d0(%rbp)
  821ee9:	44 89 9d 58 f7 ff ff 	mov    %r11d,-0x8a8(%rbp)
  821ef0:	4c 89 a5 20 f8 ff ff 	mov    %r12,-0x7e0(%rbp)
  821ef7:	48 89 85 18 f8 ff ff 	mov    %rax,-0x7e8(%rbp)
  821efe:	48 89 8d 78 f6 ff ff 	mov    %rcx,-0x988(%rbp)
  821f05:	48 8b 85 28 fc ff ff 	mov    -0x3d8(%rbp),%rax
  821f0c:	48 8b 8d 38 f8 ff ff 	mov    -0x7c8(%rbp),%rcx
  821f13:	4c 8b b5 d8 fa ff ff 	mov    -0x528(%rbp),%r14
  821f1a:	48 8b bd 00 f8 ff ff 	mov    -0x800(%rbp),%rdi
  821f21:	4c 8b 9d 68 f6 ff ff 	mov    -0x998(%rbp),%r11
  821f28:	4c 8b bd f8 f7 ff ff 	mov    -0x808(%rbp),%r15
  821f2f:	4c 89 ad 10 f9 ff ff 	mov    %r13,-0x6f0(%rbp)
  821f36:	4c 89 85 70 f6 ff ff 	mov    %r8,-0x990(%rbp)
  821f3d:	48 83 bd 10 fd ff ff 	cmpq   $0x8,-0x2f0(%rbp)
  821f44:	08 
  821f45:	74 2c                	je     821f73 <pre_step3d_mod_mp_pre_step3d_tile_+0xdad3>
  821f47:	48 89 8d 38 f8 ff ff 	mov    %rcx,-0x7c8(%rbp)
  821f4e:	89 95 40 f8 ff ff    	mov    %edx,-0x7c0(%rbp)
  821f54:	48 89 bd 00 f8 ff ff 	mov    %rdi,-0x800(%rbp)
  821f5b:	c5 fb 10 05 b5 50 0a 	vmovsd 0xa50b5(%rip),%xmm0        # 8c7018 <__STRLITPACK_199.115+0x88>
  821f62:	00 
  821f63:	48 8b 95 90 f8 ff ff 	mov    -0x770(%rbp),%rdx
  821f6a:	48 8b 8d 98 f8 ff ff 	mov    -0x768(%rbp),%rcx
  821f71:	eb 38                	jmp    821fab <pre_step3d_mod_mp_pre_step3d_tile_+0xdb0b>
  821f73:	48 89 8d 38 f8 ff ff 	mov    %rcx,-0x7c8(%rbp)
  821f7a:	89 95 40 f8 ff ff    	mov    %edx,-0x7c0(%rbp)
  821f80:	48 89 bd 00 f8 ff ff 	mov    %rdi,-0x800(%rbp)
  821f87:	c5 fb 10 05 89 50 0a 	vmovsd 0xa5089(%rip),%xmm0        # 8c7018 <__STRLITPACK_199.115+0x88>
  821f8e:	00 
  821f8f:	48 8b 95 90 f8 ff ff 	mov    -0x770(%rbp),%rdx
  821f96:	48 8b 8d 98 f8 ff ff 	mov    -0x768(%rbp),%rcx
  821f9d:	48 83 bd c8 fb ff ff 	cmpq   $0x8,-0x438(%rbp)
  821fa4:	08 
  821fa5:	0f 84 62 03 00 00    	je     82230d <pre_step3d_mod_mp_pre_step3d_tile_+0xde6d>
  821fab:	45 33 c0             	xor    %r8d,%r8d
  821fae:	45 33 c9             	xor    %r9d,%r9d
  821fb1:	45 33 d2             	xor    %r10d,%r10d
  821fb4:	33 ff                	xor    %edi,%edi
  821fb6:	3b b5 40 f8 ff ff    	cmp    -0x7c0(%rbp),%esi
  821fbc:	0f 8c 77 04 00 00    	jl     822439 <pre_step3d_mod_mp_pre_step3d_tile_+0xdf99>
  821fc2:	48 89 85 28 fc ff ff 	mov    %rax,-0x3d8(%rbp)
  821fc9:	89 b5 68 f8 ff ff    	mov    %esi,-0x798(%rbp)
  821fcf:	4c 8b ad f8 fa ff ff 	mov    -0x508(%rbp),%r13
  821fd6:	4c 8b a5 10 fd ff ff 	mov    -0x2f0(%rbp),%r12
  821fdd:	48 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%rax
  821fe4:	48 3b 85 b8 fb ff ff 	cmp    -0x448(%rbp),%rax
  821feb:	0f 8c f2 02 00 00    	jl     8222e3 <pre_step3d_mod_mp_pre_step3d_tile_+0xde43>
  821ff1:	49 83 fd 04          	cmp    $0x4,%r13
  821ff5:	0f 8c 5b 37 00 00    	jl     825756 <pre_step3d_mod_mp_pre_step3d_tile_+0x112b6>
  821ffb:	48 8b 85 e0 fa ff ff 	mov    -0x520(%rbp),%rax
  822002:	48 8d 14 38          	lea    (%rax,%rdi,1),%rdx
  822006:	48 89 95 e8 fa ff ff 	mov    %rdx,-0x518(%rbp)
  82200d:	48 83 e2 0f          	and    $0xf,%rdx
  822011:	85 d2                	test   %edx,%edx
  822013:	74 0e                	je     822023 <pre_step3d_mod_mp_pre_step3d_tile_+0xdb83>
  822015:	f6 c2 07             	test   $0x7,%dl
  822018:	0f 85 38 37 00 00    	jne    825756 <pre_step3d_mod_mp_pre_step3d_tile_+0x112b6>
  82201e:	ba 01 00 00 00       	mov    $0x1,%edx
  822023:	41 89 d3             	mov    %edx,%r11d
  822026:	49 8d 43 04          	lea    0x4(%r11),%rax
  82202a:	4c 3b e8             	cmp    %rax,%r13
  82202d:	0f 8c 23 37 00 00    	jl     825756 <pre_step3d_mod_mp_pre_step3d_tile_+0x112b6>
  822033:	4c 8b bd 60 fc ff ff 	mov    -0x3a0(%rbp),%r15
  82203a:	33 f6                	xor    %esi,%esi
  82203c:	48 8b 85 28 fc ff ff 	mov    -0x3d8(%rbp),%rax
  822043:	8b 8d 30 fc ff ff    	mov    -0x3d0(%rbp),%ecx
  822049:	41 89 ce             	mov    %ecx,%r14d
  82204c:	44 2b f2             	sub    %edx,%r14d
  82204f:	41 83 e6 03          	and    $0x3,%r14d
  822053:	4c 03 f8             	add    %rax,%r15
  822056:	4d 03 f9             	add    %r9,%r15
  822059:	41 f7 de             	neg    %r14d
  82205c:	4c 89 bd 40 fd ff ff 	mov    %r15,-0x2c0(%rbp)
  822063:	44 03 f1             	add    %ecx,%r14d
  822066:	4c 8b bd 58 fc ff ff 	mov    -0x3a8(%rbp),%r15
  82206d:	33 c9                	xor    %ecx,%ecx
  82206f:	4d 63 f6             	movslq %r14d,%r14
  822072:	49 03 c7             	add    %r15,%rax
  822075:	49 03 c1             	add    %r9,%rax
  822078:	48 89 85 90 fc ff ff 	mov    %rax,-0x370(%rbp)
  82207f:	48 8b 85 50 fc ff ff 	mov    -0x3b0(%rbp),%rax
  822086:	4e 8d 3c 10          	lea    (%rax,%r10,1),%r15
  82208a:	4c 89 bd 88 fc ff ff 	mov    %r15,-0x378(%rbp)
  822091:	85 d2                	test   %edx,%edx
  822093:	76 6b                	jbe    822100 <pre_step3d_mod_mp_pre_step3d_tile_+0xdc60>
  822095:	4c 89 8d 00 fb ff ff 	mov    %r9,-0x500(%rbp)
  82209c:	4c 89 85 08 fb ff ff 	mov    %r8,-0x4f8(%rbp)
  8220a3:	48 89 c8             	mov    %rcx,%rax
  8220a6:	4c 89 fa             	mov    %r15,%rdx
  8220a9:	4c 8b 85 90 fc ff ff 	mov    -0x370(%rbp),%r8
  8220b0:	4c 8b 8d 40 fd ff ff 	mov    -0x2c0(%rbp),%r9
  8220b7:	4c 8b ad e8 fa ff ff 	mov    -0x518(%rbp),%r13
  8220be:	4c 8b bd c8 fb ff ff 	mov    -0x438(%rbp),%r15
  8220c5:	c4 a1 7b 10 0c 08    	vmovsd (%rax,%r9,1),%xmm1
  8220cb:	c4 a1 73 5c 14 00    	vsubsd (%rax,%r8,1),%xmm1,%xmm2
  8220d1:	49 03 c4             	add    %r12,%rax
  8220d4:	c5 eb 59 1c 11       	vmulsd (%rcx,%rdx,1),%xmm2,%xmm3
  8220d9:	49 03 cf             	add    %r15,%rcx
  8220dc:	c4 c1 7b 11 5c f5 00 	vmovsd %xmm3,0x0(%r13,%rsi,8)
  8220e3:	48 ff c6             	inc    %rsi
  8220e6:	49 3b f3             	cmp    %r11,%rsi
  8220e9:	72 da                	jb     8220c5 <pre_step3d_mod_mp_pre_step3d_tile_+0xdc25>
  8220eb:	4c 8b 8d 00 fb ff ff 	mov    -0x500(%rbp),%r9
  8220f2:	4c 8b 85 08 fb ff ff 	mov    -0x4f8(%rbp),%r8
  8220f9:	4c 8b ad f8 fa ff ff 	mov    -0x508(%rbp),%r13
  822100:	48 8b 8d b0 f9 ff ff 	mov    -0x650(%rbp),%rcx
  822107:	4c 89 e2             	mov    %r12,%rdx
  82210a:	48 8b 85 28 fc ff ff 	mov    -0x3d8(%rbp),%rax
  822111:	48 8b b5 c8 fb ff ff 	mov    -0x438(%rbp),%rsi
  822118:	4c 89 b5 38 fd ff ff 	mov    %r14,-0x2c8(%rbp)
  82211f:	4c 8d 3c 39          	lea    (%rcx,%rdi,1),%r15
  822123:	4c 89 bd c8 f9 ff ff 	mov    %r15,-0x638(%rbp)
  82212a:	48 8b 8d a8 f9 ff ff 	mov    -0x658(%rbp),%rcx
  822131:	4c 8b bd a0 f9 ff ff 	mov    -0x660(%rbp),%r15
  822138:	48 89 bd 10 fb ff ff 	mov    %rdi,-0x4f0(%rbp)
  82213f:	4c 89 95 18 fb ff ff 	mov    %r10,-0x4e8(%rbp)
  822146:	48 03 c8             	add    %rax,%rcx
  822149:	4c 89 8d 00 fb ff ff 	mov    %r9,-0x500(%rbp)
  822150:	49 03 c7             	add    %r15,%rax
  822153:	4c 8b bd 98 f9 ff ff 	mov    -0x668(%rbp),%r15
  82215a:	49 03 c9             	add    %r9,%rcx
  82215d:	4c 89 85 08 fb ff ff 	mov    %r8,-0x4f8(%rbp)
  822164:	49 03 c1             	add    %r9,%rax
  822167:	49 0f af f3          	imul   %r11,%rsi
  82216b:	49 0f af d3          	imul   %r11,%rdx
  82216f:	48 8b bd c8 f9 ff ff 	mov    -0x638(%rbp),%rdi
  822176:	4d 03 fa             	add    %r10,%r15
  822179:	4d 89 fe             	mov    %r15,%r14
  82217c:	4c 8b 85 88 fc ff ff 	mov    -0x378(%rbp),%r8
  822183:	4c 8b 8d 90 fc ff ff 	mov    -0x370(%rbp),%r9
  82218a:	4c 8b 95 e8 fa ff ff 	mov    -0x518(%rbp),%r10
  822191:	4c 8b ad c8 fb ff ff 	mov    -0x438(%rbp),%r13
  822198:	4c 8b bd 40 fd ff ff 	mov    -0x2c0(%rbp),%r15
  82219f:	4c 03 fa             	add    %rdx,%r15
  8221a2:	c4 c1 7b 10 0f       	vmovsd (%r15),%xmm1
  8221a7:	c4 81 71 16 1c 27    	vmovhpd (%r15,%r12,1),%xmm1,%xmm3
  8221ad:	4d 8d 3c 11          	lea    (%r9,%rdx,1),%r15
  8221b1:	c4 c1 7b 10 17       	vmovsd (%r15),%xmm2
  8221b6:	c4 81 69 16 24 27    	vmovhpd (%r15,%r12,1),%xmm2,%xmm4
  8221bc:	4d 8d 3c 30          	lea    (%r8,%rsi,1),%r15
  8221c0:	c4 c1 7b 10 2f       	vmovsd (%r15),%xmm5
  8221c5:	c4 81 51 16 3c 2f    	vmovhpd (%r15,%r13,1),%xmm5,%xmm7
  8221cb:	4c 8d 3c 10          	lea    (%rax,%rdx,1),%r15
  8221cf:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  8221d4:	c4 01 31 16 1c 27    	vmovhpd (%r15,%r12,1),%xmm9,%xmm11
  8221da:	4c 8d 3c 11          	lea    (%rcx,%rdx,1),%r15
  8221de:	c4 41 7b 10 17       	vmovsd (%r15),%xmm10
  8221e3:	4a 8d 14 a2          	lea    (%rdx,%r12,4),%rdx
  8221e7:	c4 01 29 16 2c 27    	vmovhpd (%r15,%r12,1),%xmm10,%xmm13
  8221ed:	4d 8d 3c 36          	lea    (%r14,%rsi,1),%r15
  8221f1:	c5 e1 5c f4          	vsubpd %xmm4,%xmm3,%xmm6
  8221f5:	c4 41 21 5c fd       	vsubpd %xmm13,%xmm11,%xmm15
  8221fa:	c5 49 59 c7          	vmulpd %xmm7,%xmm6,%xmm8
  8221fe:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  822203:	4a 8d 34 ae          	lea    (%rsi,%r13,4),%rsi
  822207:	c4 81 09 16 0c 2f    	vmovhpd (%r15,%r13,1),%xmm14,%xmm1
  82220d:	c5 81 59 d1          	vmulpd %xmm1,%xmm15,%xmm2
  822211:	c4 01 79 11 04 da    	vmovupd %xmm8,(%r10,%r11,8)
  822217:	c4 a1 79 11 54 df 10 	vmovupd %xmm2,0x10(%rdi,%r11,8)
  82221e:	49 83 c3 04          	add    $0x4,%r11
  822222:	4c 3b 9d 38 fd ff ff 	cmp    -0x2c8(%rbp),%r11
  822229:	0f 82 69 ff ff ff    	jb     822198 <pre_step3d_mod_mp_pre_step3d_tile_+0xdcf8>
  82222f:	4c 8b b5 38 fd ff ff 	mov    -0x2c8(%rbp),%r14
  822236:	48 8b bd 10 fb ff ff 	mov    -0x4f0(%rbp),%rdi
  82223d:	4c 8b 95 18 fb ff ff 	mov    -0x4e8(%rbp),%r10
  822244:	4c 8b 8d 00 fb ff ff 	mov    -0x500(%rbp),%r9
  82224b:	4c 8b 85 08 fb ff ff 	mov    -0x4f8(%rbp),%r8
  822252:	4c 8b ad f8 fa ff ff 	mov    -0x508(%rbp),%r13
  822259:	4d 89 e3             	mov    %r12,%r11
  82225c:	48 8b b5 c8 fb ff ff 	mov    -0x438(%rbp),%rsi
  822263:	4d 0f af de          	imul   %r14,%r11
  822267:	49 0f af f6          	imul   %r14,%rsi
  82226b:	4d 3b f5             	cmp    %r13,%r14
  82226e:	73 73                	jae    8222e3 <pre_step3d_mod_mp_pre_step3d_tile_+0xde43>
  822270:	48 8b 95 60 fc ff ff 	mov    -0x3a0(%rbp),%rdx
  822277:	48 8b 85 28 fc ff ff 	mov    -0x3d8(%rbp),%rax
  82227e:	4c 8b bd 58 fc ff ff 	mov    -0x3a8(%rbp),%r15
  822285:	48 8b 8d e0 fa ff ff 	mov    -0x520(%rbp),%rcx
  82228c:	4c 89 85 08 fb ff ff 	mov    %r8,-0x4f8(%rbp)
  822293:	48 03 d0             	add    %rax,%rdx
  822296:	49 03 d1             	add    %r9,%rdx
  822299:	49 03 c7             	add    %r15,%rax
  82229c:	4c 8b bd 50 fc ff ff 	mov    -0x3b0(%rbp),%r15
  8222a3:	48 03 cf             	add    %rdi,%rcx
  8222a6:	49 03 c1             	add    %r9,%rax
  8222a9:	4d 03 fa             	add    %r10,%r15
  8222ac:	4d 89 f8             	mov    %r15,%r8
  8222af:	4c 8b bd c8 fb ff ff 	mov    -0x438(%rbp),%r15
  8222b6:	c4 c1 7b 10 0c 13    	vmovsd (%r11,%rdx,1),%xmm1
  8222bc:	c4 c1 73 5c 14 03    	vsubsd (%r11,%rax,1),%xmm1,%xmm2
  8222c2:	4d 03 dc             	add    %r12,%r11
  8222c5:	c4 a1 6b 59 1c 06    	vmulsd (%rsi,%r8,1),%xmm2,%xmm3
  8222cb:	49 03 f7             	add    %r15,%rsi
  8222ce:	c4 a1 7b 11 1c f1    	vmovsd %xmm3,(%rcx,%r14,8)
  8222d4:	49 ff c6             	inc    %r14
  8222d7:	4d 3b f5             	cmp    %r13,%r14
  8222da:	72 da                	jb     8222b6 <pre_step3d_mod_mp_pre_step3d_tile_+0xde16>
  8222dc:	4c 8b 85 08 fb ff ff 	mov    -0x4f8(%rbp),%r8
  8222e3:	49 ff c0             	inc    %r8
  8222e6:	4c 03 8d 00 fc ff ff 	add    -0x400(%rbp),%r9
  8222ed:	4c 03 95 d0 fb ff ff 	add    -0x430(%rbp),%r10
  8222f4:	48 03 bd 80 fc ff ff 	add    -0x380(%rbp),%rdi
  8222fb:	4c 3b 85 68 fc ff ff 	cmp    -0x398(%rbp),%r8
  822302:	0f 82 d5 fc ff ff    	jb     821fdd <pre_step3d_mod_mp_pre_step3d_tile_+0xdb3d>
  822308:	e9 11 01 00 00       	jmpq   82241e <pre_step3d_mod_mp_pre_step3d_tile_+0xdf7e>
  82230d:	45 33 d2             	xor    %r10d,%r10d
  822310:	4c 8b 85 e0 fa ff ff 	mov    -0x520(%rbp),%r8
  822317:	45 33 c9             	xor    %r9d,%r9d
  82231a:	48 8b bd b8 f1 ff ff 	mov    -0xe48(%rbp),%rdi
  822321:	3b b5 40 f8 ff ff    	cmp    -0x7c0(%rbp),%esi
  822327:	0f 8c 0c 01 00 00    	jl     822439 <pre_step3d_mod_mp_pre_step3d_tile_+0xdf99>
  82232d:	48 89 85 28 fc ff ff 	mov    %rax,-0x3d8(%rbp)
  822334:	89 b5 68 f8 ff ff    	mov    %esi,-0x798(%rbp)
  82233a:	4c 8b bd 38 f8 ff ff 	mov    -0x7c8(%rbp),%r15
  822341:	4c 8b 9d 70 f7 ff ff 	mov    -0x890(%rbp),%r11
  822348:	4c 8b a5 78 f7 ff ff 	mov    -0x888(%rbp),%r12
  82234f:	4c 8b ad f8 fa ff ff 	mov    -0x508(%rbp),%r13
  822356:	4c 8b b5 c0 fb ff ff 	mov    -0x440(%rbp),%r14
  82235d:	4c 3b b5 b8 fb ff ff 	cmp    -0x448(%rbp),%r14
  822364:	0f 8c 8f 00 00 00    	jl     8223f9 <pre_step3d_mod_mp_pre_step3d_tile_+0xdf59>
  82236a:	49 83 fd 04          	cmp    $0x4,%r13
  82236e:	0f 8c 41 35 00 00    	jl     8258b5 <pre_step3d_mod_mp_pre_step3d_tile_+0x11415>
  822374:	48 8b 8d f0 f8 ff ff 	mov    -0x710(%rbp),%rcx
  82237b:	33 d2                	xor    %edx,%edx
  82237d:	49 0f af cf          	imul   %r15,%rcx
  822381:	48 8b b5 10 f9 ff ff 	mov    -0x6f0(%rbp),%rsi
  822388:	49 8d 04 0b          	lea    (%r11,%rcx,1),%rax
  82238c:	49 03 cc             	add    %r12,%rcx
  82238f:	49 03 c1             	add    %r9,%rax
  822392:	49 03 c9             	add    %r9,%rcx
  822395:	49 89 f6             	mov    %rsi,%r14
  822398:	c5 fd 10 0c d0       	vmovupd (%rax,%rdx,8),%ymm1
  82239d:	c5 f5 5c 54 d1 f8    	vsubpd -0x8(%rcx,%rdx,8),%ymm1,%ymm2
  8223a3:	c5 ed 59 1c d7       	vmulpd (%rdi,%rdx,8),%ymm2,%ymm3
  8223a8:	c4 c1 7d 11 1c d0    	vmovupd %ymm3,(%r8,%rdx,8)
  8223ae:	48 83 c2 04          	add    $0x4,%rdx
  8223b2:	49 3b d6             	cmp    %r14,%rdx
  8223b5:	72 e1                	jb     822398 <pre_step3d_mod_mp_pre_step3d_tile_+0xdef8>
  8223b7:	4c 8b b5 c0 fb ff ff 	mov    -0x440(%rbp),%r14
  8223be:	49 3b f5             	cmp    %r13,%rsi
  8223c1:	73 36                	jae    8223f9 <pre_step3d_mod_mp_pre_step3d_tile_+0xdf59>
  8223c3:	48 8b 85 f0 f8 ff ff 	mov    -0x710(%rbp),%rax
  8223ca:	49 0f af c7          	imul   %r15,%rax
  8223ce:	49 8d 14 03          	lea    (%r11,%rax,1),%rdx
  8223d2:	49 03 c4             	add    %r12,%rax
  8223d5:	49 03 d1             	add    %r9,%rdx
  8223d8:	49 03 c1             	add    %r9,%rax
  8223db:	c5 fb 10 0c f2       	vmovsd (%rdx,%rsi,8),%xmm1
  8223e0:	c5 f3 5c 54 f0 f8    	vsubsd -0x8(%rax,%rsi,8),%xmm1,%xmm2
  8223e6:	c5 eb 59 1c f7       	vmulsd (%rdi,%rsi,8),%xmm2,%xmm3
  8223eb:	c4 c1 7b 11 1c f0    	vmovsd %xmm3,(%r8,%rsi,8)
  8223f1:	48 ff c6             	inc    %rsi
  8223f4:	49 3b f5             	cmp    %r13,%rsi
  8223f7:	72 e2                	jb     8223db <pre_step3d_mod_mp_pre_step3d_tile_+0xdf3b>
  8223f9:	49 ff c2             	inc    %r10
  8223fc:	4c 03 85 80 fc ff ff 	add    -0x380(%rbp),%r8
  822403:	4c 03 8d 00 fc ff ff 	add    -0x400(%rbp),%r9
  82240a:	48 03 bd d0 fb ff ff 	add    -0x430(%rbp),%rdi
  822411:	4c 3b 95 68 fc ff ff 	cmp    -0x398(%rbp),%r10
  822418:	0f 82 3f ff ff ff    	jb     82235d <pre_step3d_mod_mp_pre_step3d_tile_+0xdebd>
  82241e:	48 8b 85 28 fc ff ff 	mov    -0x3d8(%rbp),%rax
  822425:	48 8b 95 90 f8 ff ff 	mov    -0x770(%rbp),%rdx
  82242c:	48 8b 8d 98 f8 ff ff 	mov    -0x768(%rbp),%rcx
  822433:	8b b5 68 f8 ff ff    	mov    -0x798(%rbp),%esi
  822439:	48 89 85 28 fc ff ff 	mov    %rax,-0x3d8(%rbp)
  822440:	89 b5 68 f8 ff ff    	mov    %esi,-0x798(%rbp)
  822446:	4c 8b a5 18 fd ff ff 	mov    -0x2e8(%rbp),%r12
  82244d:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  822454:	4c 8b b5 20 fd ff ff 	mov    -0x2e0(%rbp),%r14
  82245b:	4c 8b bd 80 fc ff ff 	mov    -0x380(%rbp),%r15
  822462:	48 8b 85 80 f8 ff ff 	mov    -0x780(%rbp),%rax
  822469:	48 8b 95 d8 f8 ff ff 	mov    -0x728(%rbp),%rdx
  822470:	48 8b 8d e0 f8 ff ff 	mov    -0x720(%rbp),%rcx
  822477:	f6 44 0a 04 01       	testb  $0x1,0x4(%rdx,%rcx,1)
  82247c:	0f 85 49 01 00 00    	jne    8225cb <pre_step3d_mod_mp_pre_step3d_tile_+0xe12b>
  822482:	48 8b 95 18 f8 ff ff 	mov    -0x7e8(%rbp),%rdx
  822489:	48 8b 8d 20 f8 ff ff 	mov    -0x7e0(%rbp),%rcx
  822490:	f6 04 0a 01          	testb  $0x1,(%rdx,%rcx,1)
  822494:	0f 85 31 01 00 00    	jne    8225cb <pre_step3d_mod_mp_pre_step3d_tile_+0xe12b>
  82249a:	48 8b 95 38 f7 ff ff 	mov    -0x8c8(%rbp),%rdx
  8224a1:	48 8b 8d 40 f7 ff ff 	mov    -0x8c0(%rbp),%rcx
  8224a8:	4c 8b 84 0a 88 00 00 	mov    0x88(%rdx,%rcx,1),%r8
  8224af:	00 
  8224b0:	49 f7 d8             	neg    %r8
  8224b3:	4c 03 85 30 f7 ff ff 	add    -0x8d0(%rbp),%r8
  8224ba:	4c 0f af 84 0a 80 00 	imul   0x80(%rdx,%rcx,1),%r8
  8224c1:	00 00 
  8224c3:	48 8b 7c 0a 48       	mov    0x48(%rdx,%rcx,1),%rdi
  8224c8:	42 f6 04 07 01       	testb  $0x1,(%rdi,%r8,1)
  8224cd:	0f 84 f8 00 00 00    	je     8225cb <pre_step3d_mod_mp_pre_step3d_tile_+0xe12b>
  8224d3:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  8224d9:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  8224df:	0f 8c b0 00 00 00    	jl     822595 <pre_step3d_mod_mp_pre_step3d_tile_+0xe0f5>
  8224e5:	ba 01 00 00 00       	mov    $0x1,%edx
  8224ea:	45 33 db             	xor    %r11d,%r11d
  8224ed:	45 33 d2             	xor    %r10d,%r10d
  8224f0:	83 bd b0 f6 ff ff 00 	cmpl   $0x0,-0x950(%rbp)
  8224f7:	74 47                	je     822540 <pre_step3d_mod_mp_pre_step3d_tile_+0xe0a0>
  8224f9:	48 8b 95 78 f6 ff ff 	mov    -0x988(%rbp),%rdx
  822500:	48 8b 8d 80 f6 ff ff 	mov    -0x980(%rbp),%rcx
  822507:	48 8b bd 68 f9 ff ff 	mov    -0x698(%rbp),%rdi
  82250e:	4c 8b 85 70 f9 ff ff 	mov    -0x690(%rbp),%r8
  822515:	4c 8b 8d a8 f6 ff ff 	mov    -0x958(%rbp),%r9
  82251c:	49 8b 34 3a          	mov    (%r10,%rdi,1),%rsi
  822520:	49 ff c3             	inc    %r11
  822523:	4b 89 74 02 f8       	mov    %rsi,-0x8(%r10,%r8,1)
  822528:	49 8b 74 0a 08       	mov    0x8(%r10,%rcx,1),%rsi
  82252d:	49 89 34 0a          	mov    %rsi,(%r10,%rcx,1)
  822531:	4f 8d 54 0a 10       	lea    0x10(%r10,%r9,1),%r10
  822536:	4c 3b da             	cmp    %rdx,%r11
  822539:	72 e1                	jb     82251c <pre_step3d_mod_mp_pre_step3d_tile_+0xe07c>
  82253b:	43 8d 54 1b 01       	lea    0x1(%r11,%r11,1),%edx
  822540:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  822543:	3b 8d b8 f6 ff ff    	cmp    -0x948(%rbp),%ecx
  822549:	73 18                	jae    822563 <pre_step3d_mod_mp_pre_step3d_tile_+0xe0c3>
  82254b:	48 63 d2             	movslq %edx,%rdx
  82254e:	49 0f af d7          	imul   %r15,%rdx
  822552:	48 8b bd 88 f6 ff ff 	mov    -0x978(%rbp),%rdi
  822559:	48 8b 4c 3a f8       	mov    -0x8(%rdx,%rdi,1),%rcx
  82255e:	48 89 4c 3a f0       	mov    %rcx,-0x10(%rdx,%rdi,1)
  822563:	48 8b 95 d8 f8 ff ff 	mov    -0x728(%rbp),%rdx
  82256a:	48 8b 8d e0 f8 ff ff 	mov    -0x720(%rbp),%rcx
  822571:	f6 44 0a 0c 01       	testb  $0x1,0xc(%rdx,%rcx,1)
  822576:	0f 85 56 01 00 00    	jne    8226d2 <pre_step3d_mod_mp_pre_step3d_tile_+0xe232>
  82257c:	48 8b 95 18 f8 ff ff 	mov    -0x7e8(%rbp),%rdx
  822583:	48 8b 8d 20 f8 ff ff 	mov    -0x7e0(%rbp),%rcx
  82258a:	f6 04 0a 01          	testb  $0x1,(%rdx,%rcx,1)
  82258e:	74 6c                	je     8225fc <pre_step3d_mod_mp_pre_step3d_tile_+0xe15c>
  822590:	e9 3d 01 00 00       	jmpq   8226d2 <pre_step3d_mod_mp_pre_step3d_tile_+0xe232>
  822595:	48 8b 95 d8 f8 ff ff 	mov    -0x728(%rbp),%rdx
  82259c:	48 8b 8d e0 f8 ff ff 	mov    -0x720(%rbp),%rcx
  8225a3:	f6 44 0a 0c 01       	testb  $0x1,0xc(%rdx,%rcx,1)
  8225a8:	75 14                	jne    8225be <pre_step3d_mod_mp_pre_step3d_tile_+0xe11e>
  8225aa:	48 8b 95 18 f8 ff ff 	mov    -0x7e8(%rbp),%rdx
  8225b1:	48 8b 8d 20 f8 ff ff 	mov    -0x7e0(%rbp),%rcx
  8225b8:	f6 04 0a 01          	testb  $0x1,(%rdx,%rcx,1)
  8225bc:	74 3e                	je     8225fc <pre_step3d_mod_mp_pre_step3d_tile_+0xe15c>
  8225be:	48 83 bd 10 fc ff ff 	cmpq   $0x8,-0x3f0(%rbp)
  8225c5:	08 
  8225c6:	e9 ea 07 00 00       	jmpq   822db5 <pre_step3d_mod_mp_pre_step3d_tile_+0xe915>
  8225cb:	48 8b 95 d8 f8 ff ff 	mov    -0x728(%rbp),%rdx
  8225d2:	48 8b 8d e0 f8 ff ff 	mov    -0x720(%rbp),%rcx
  8225d9:	f6 44 0a 0c 01       	testb  $0x1,0xc(%rdx,%rcx,1)
  8225de:	0f 85 dc 00 00 00    	jne    8226c0 <pre_step3d_mod_mp_pre_step3d_tile_+0xe220>
  8225e4:	48 8b 95 18 f8 ff ff 	mov    -0x7e8(%rbp),%rdx
  8225eb:	48 8b 8d 20 f8 ff ff 	mov    -0x7e0(%rbp),%rcx
  8225f2:	f6 04 0a 01          	testb  $0x1,(%rdx,%rcx,1)
  8225f6:	0f 85 c4 00 00 00    	jne    8226c0 <pre_step3d_mod_mp_pre_step3d_tile_+0xe220>
  8225fc:	48 8b 95 38 f7 ff ff 	mov    -0x8c8(%rbp),%rdx
  822603:	48 8b 8d 40 f7 ff ff 	mov    -0x8c0(%rbp),%rcx
  82260a:	4c 8b 44 0a 40       	mov    0x40(%rdx,%rcx,1),%r8
  82260f:	49 f7 d8             	neg    %r8
  822612:	4c 03 85 30 f7 ff ff 	add    -0x8d0(%rbp),%r8
  822619:	4c 0f af 44 0a 38    	imul   0x38(%rdx,%rcx,1),%r8
  82261f:	48 8b 3c 0a          	mov    (%rdx,%rcx,1),%rdi
  822623:	42 f6 04 07 01       	testb  $0x1,(%rdi,%r8,1)
  822628:	0f 84 92 00 00 00    	je     8226c0 <pre_step3d_mod_mp_pre_step3d_tile_+0xe220>
  82262e:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  822634:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  82263a:	7c 77                	jl     8226b3 <pre_step3d_mod_mp_pre_step3d_tile_+0xe213>
  82263c:	bf 01 00 00 00       	mov    $0x1,%edi
  822641:	33 c9                	xor    %ecx,%ecx
  822643:	33 d2                	xor    %edx,%edx
  822645:	83 bd b0 f6 ff ff 00 	cmpl   $0x0,-0x950(%rbp)
  82264c:	74 41                	je     82268f <pre_step3d_mod_mp_pre_step3d_tile_+0xe1ef>
  82264e:	4c 8b 8d 78 f6 ff ff 	mov    -0x988(%rbp),%r9
  822655:	4c 8b 95 90 f6 ff ff 	mov    -0x970(%rbp),%r10
  82265c:	4c 8b 9d 98 f6 ff ff 	mov    -0x968(%rbp),%r11
  822663:	48 8b b5 a8 f6 ff ff 	mov    -0x958(%rbp),%rsi
  82266a:	48 ff c1             	inc    %rcx
  82266d:	4a 8b 7c 1a 08       	mov    0x8(%rdx,%r11,1),%rdi
  822672:	4e 8b 44 12 10       	mov    0x10(%rdx,%r10,1),%r8
  822677:	4a 89 7c 1a 10       	mov    %rdi,0x10(%rdx,%r11,1)
  82267c:	4e 89 44 12 18       	mov    %r8,0x18(%rdx,%r10,1)
  822681:	48 8d 54 32 10       	lea    0x10(%rdx,%rsi,1),%rdx
  822686:	49 3b c9             	cmp    %r9,%rcx
  822689:	72 df                	jb     82266a <pre_step3d_mod_mp_pre_step3d_tile_+0xe1ca>
  82268b:	8d 7c 09 01          	lea    0x1(%rcx,%rcx,1),%edi
  82268f:	8d 57 ff             	lea    -0x1(%rdi),%edx
  822692:	3b 95 b8 f6 ff ff    	cmp    -0x948(%rbp),%edx
  822698:	73 38                	jae    8226d2 <pre_step3d_mod_mp_pre_step3d_tile_+0xe232>
  82269a:	48 63 ff             	movslq %edi,%rdi
  82269d:	49 0f af ff          	imul   %r15,%rdi
  8226a1:	48 8b 8d a0 f6 ff ff 	mov    -0x960(%rbp),%rcx
  8226a8:	48 8b 14 0f          	mov    (%rdi,%rcx,1),%rdx
  8226ac:	48 89 54 0f 08       	mov    %rdx,0x8(%rdi,%rcx,1)
  8226b1:	eb 1f                	jmp    8226d2 <pre_step3d_mod_mp_pre_step3d_tile_+0xe232>
  8226b3:	48 83 bd 10 fc ff ff 	cmpq   $0x8,-0x3f0(%rbp)
  8226ba:	08 
  8226bb:	e9 f5 06 00 00       	jmpq   822db5 <pre_step3d_mod_mp_pre_step3d_tile_+0xe915>
  8226c0:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  8226c6:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  8226cc:	0f 8c ec fe ff ff    	jl     8225be <pre_step3d_mod_mp_pre_step3d_tile_+0xe11e>
  8226d2:	33 c9                	xor    %ecx,%ecx
  8226d4:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  8226db:	33 d2                	xor    %edx,%edx
  8226dd:	c5 fd 10 0d 7b 2a 0a 	vmovupd 0xa2a7b(%rip),%ymm1        # 8c5160 <var$630.126.450+0x4a0>
  8226e4:	00 
  8226e5:	44 8b 8d 58 f7 ff ff 	mov    -0x8a8(%rbp),%r9d
  8226ec:	44 8b 95 78 fc ff ff 	mov    -0x388(%rbp),%r10d
  8226f3:	4c 8b 9d 68 f9 ff ff 	mov    -0x698(%rbp),%r11
  8226fa:	4c 8b a5 70 f9 ff ff 	mov    -0x690(%rbp),%r12
  822701:	4c 8b ad 78 f9 ff ff 	mov    -0x688(%rbp),%r13
  822708:	4c 8b bd f0 fc ff ff 	mov    -0x310(%rbp),%r15
  82270f:	44 3b 95 b0 fb ff ff 	cmp    -0x450(%rbp),%r10d
  822716:	0f 8c b1 00 00 00    	jl     8227cd <pre_step3d_mod_mp_pre_step3d_tile_+0xe32d>
  82271c:	c4 a1 7b 10 14 1a    	vmovsd (%rdx,%r11,1),%xmm2
  822722:	c4 a1 6b 58 5c 22 f8 	vaddsd -0x8(%rdx,%r12,1),%xmm2,%xmm3
  822729:	c5 fb 59 e3          	vmulsd %xmm3,%xmm0,%xmm4
  82272d:	c4 a1 7b 11 64 2a f8 	vmovsd %xmm4,-0x8(%rdx,%r13,1)
  822734:	41 83 f9 02          	cmp    $0x2,%r9d
  822738:	72 7c                	jb     8227b6 <pre_step3d_mod_mp_pre_step3d_tile_+0xe316>
  82273a:	49 83 ff 04          	cmp    $0x4,%r15
  82273e:	0f 8c 69 31 00 00    	jl     8258ad <pre_step3d_mod_mp_pre_step3d_tile_+0x1140d>
  822744:	4c 8b b5 28 fd ff ff 	mov    -0x2d8(%rbp),%r14
  82274b:	45 33 c0             	xor    %r8d,%r8d
  82274e:	4d 89 f7             	mov    %r14,%r15
  822751:	49 8d 7c 15 00       	lea    0x0(%r13,%rdx,1),%rdi
  822756:	49 8d 34 14          	lea    (%r12,%rdx,1),%rsi
  82275a:	49 8d 04 13          	lea    (%r11,%rdx,1),%rax
  82275e:	c4 a1 7d 10 54 c0 08 	vmovupd 0x8(%rax,%r8,8),%ymm2
  822765:	c4 a1 6d 58 1c c6    	vaddpd (%rsi,%r8,8),%ymm2,%ymm3
  82276b:	c5 f5 59 e3          	vmulpd %ymm3,%ymm1,%ymm4
  82276f:	c4 a1 7d 11 24 c7    	vmovupd %ymm4,(%rdi,%r8,8)
  822775:	49 83 c0 04          	add    $0x4,%r8
  822779:	4d 3b c7             	cmp    %r15,%r8
  82277c:	72 e0                	jb     82275e <pre_step3d_mod_mp_pre_step3d_tile_+0xe2be>
  82277e:	4c 8b bd f0 fc ff ff 	mov    -0x310(%rbp),%r15
  822785:	4d 3b f7             	cmp    %r15,%r14
  822788:	73 2c                	jae    8227b6 <pre_step3d_mod_mp_pre_step3d_tile_+0xe316>
  82278a:	49 8d 7c 15 00       	lea    0x0(%r13,%rdx,1),%rdi
  82278f:	49 8d 34 14          	lea    (%r12,%rdx,1),%rsi
  822793:	49 8d 04 13          	lea    (%r11,%rdx,1),%rax
  822797:	c4 a1 7b 10 54 f0 08 	vmovsd 0x8(%rax,%r14,8),%xmm2
  82279e:	c4 a1 6b 58 1c f6    	vaddsd (%rsi,%r14,8),%xmm2,%xmm3
  8227a4:	c5 fb 59 e3          	vmulsd %xmm3,%xmm0,%xmm4
  8227a8:	c4 a1 7b 11 24 f7    	vmovsd %xmm4,(%rdi,%r14,8)
  8227ae:	49 ff c6             	inc    %r14
  8227b1:	4d 3b f7             	cmp    %r15,%r14
  8227b4:	72 e1                	jb     822797 <pre_step3d_mod_mp_pre_step3d_tile_+0xe2f7>
  8227b6:	48 ff c1             	inc    %rcx
  8227b9:	48 03 95 80 fc ff ff 	add    -0x380(%rbp),%rdx
  8227c0:	48 3b 8d 68 fc ff ff 	cmp    -0x398(%rbp),%rcx
  8227c7:	0f 82 42 ff ff ff    	jb     82270f <pre_step3d_mod_mp_pre_step3d_tile_+0xe26f>
  8227cd:	4c 8b a5 18 fd ff ff 	mov    -0x2e8(%rbp),%r12
  8227d4:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  8227db:	4c 8b b5 20 fd ff ff 	mov    -0x2e0(%rbp),%r14
  8227e2:	4c 8b bd 80 fc ff ff 	mov    -0x380(%rbp),%r15
  8227e9:	48 8b 85 80 f8 ff ff 	mov    -0x780(%rbp),%rax
  8227f0:	48 83 bd 10 fc ff ff 	cmpq   $0x8,-0x3f0(%rbp)
  8227f7:	08 
  8227f8:	0f 85 d8 01 00 00    	jne    8229d6 <pre_step3d_mod_mp_pre_step3d_tile_+0xe536>
  8227fe:	48 83 bd 10 fd ff ff 	cmpq   $0x8,-0x2f0(%rbp)
  822805:	08 
  822806:	0f 85 b7 01 00 00    	jne    8229c3 <pre_step3d_mod_mp_pre_step3d_tile_+0xe523>
  82280c:	33 ff                	xor    %edi,%edi
  82280e:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  822814:	45 33 c9             	xor    %r9d,%r9d
  822817:	4c 8b 85 b0 f1 ff ff 	mov    -0xe50(%rbp),%r8
  82281e:	45 33 d2             	xor    %r10d,%r10d
  822821:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  822827:	0f 8c 96 05 00 00    	jl     822dc3 <pre_step3d_mod_mp_pre_step3d_tile_+0xe923>
  82282d:	4c 8b 9d 28 fc ff ff 	mov    -0x3d8(%rbp),%r11
  822834:	48 8b 95 60 f7 ff ff 	mov    -0x8a0(%rbp),%rdx
  82283b:	48 8b 8d 90 f7 ff ff 	mov    -0x870(%rbp),%rcx
  822842:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  822849:	c5 fd 10 15 cf 36 0a 	vmovupd 0xa36cf(%rip),%ymm2        # 8c5f20 <var$630.126.450+0x1260>
  822850:	00 
  822851:	49 03 d3             	add    %r11,%rdx
  822854:	c5 fb 10 1d e4 4f 0a 	vmovsd 0xa4fe4(%rip),%xmm3        # 8c7840 <__STRLITPACK_199.115+0x8b0>
  82285b:	00 
  82285c:	c5 fd 10 0d fc 28 0a 	vmovupd 0xa28fc(%rip),%ymm1        # 8c5160 <var$630.126.450+0x4a0>
  822863:	00 
  822864:	48 89 95 d0 f9 ff ff 	mov    %rdx,-0x630(%rbp)
  82286b:	49 03 cb             	add    %r11,%rcx
  82286e:	48 8b 95 f0 fc ff ff 	mov    -0x310(%rbp),%rdx
  822875:	8b 85 78 fc ff ff    	mov    -0x388(%rbp),%eax
  82287b:	3b 85 d8 fc ff ff    	cmp    -0x328(%rbp),%eax
  822881:	0f 8c ef 00 00 00    	jl     822976 <pre_step3d_mod_mp_pre_step3d_tile_+0xe4d6>
  822887:	48 83 fa 04          	cmp    $0x4,%rdx
  82288b:	0f 8c cd 2e 00 00    	jl     82575e <pre_step3d_mod_mp_pre_step3d_tile_+0x112be>
  822891:	4c 8b ad 78 f9 ff ff 	mov    -0x688(%rbp),%r13
  822898:	45 33 f6             	xor    %r14d,%r14d
  82289b:	4c 8b a5 70 f9 ff ff 	mov    -0x690(%rbp),%r12
  8228a2:	48 8b b5 58 f9 ff ff 	mov    -0x6a8(%rbp),%rsi
  8228a9:	4c 8b bd d0 f9 ff ff 	mov    -0x630(%rbp),%r15
  8228b0:	4d 03 e9             	add    %r9,%r13
  8228b3:	48 8b 85 28 fd ff ff 	mov    -0x2d8(%rbp),%rax
  8228ba:	4d 03 e1             	add    %r9,%r12
  8228bd:	48 89 c2             	mov    %rax,%rdx
  8228c0:	4e 8d 1c 0e          	lea    (%rsi,%r9,1),%r11
  8228c4:	4a 8d 34 11          	lea    (%rcx,%r10,1),%rsi
  8228c8:	4d 03 fa             	add    %r10,%r15
  8228cb:	c4 a1 7d 10 64 f6 f8 	vmovupd -0x8(%rsi,%r14,8),%ymm4
  8228d2:	c4 81 7d 10 6c f5 00 	vmovupd 0x0(%r13,%r14,8),%ymm5
  8228d9:	c4 81 75 59 3c f0    	vmulpd (%r8,%r14,8),%ymm1,%ymm7
  8228df:	c4 01 5d 58 04 f7    	vaddpd (%r15,%r14,8),%ymm4,%ymm8
  8228e5:	c4 81 55 5c 74 f3 f8 	vsubpd -0x8(%r11,%r14,8),%ymm5,%ymm6
  8228ec:	c4 62 cd bc c2       	vfnmadd231pd %ymm2,%ymm6,%ymm8
  8228f1:	c4 41 45 59 c8       	vmulpd %ymm8,%ymm7,%ymm9
  8228f6:	c4 01 7d 11 0c f4    	vmovupd %ymm9,(%r12,%r14,8)
  8228fc:	49 83 c6 04          	add    $0x4,%r14
  822900:	4c 3b f2             	cmp    %rdx,%r14
  822903:	72 c6                	jb     8228cb <pre_step3d_mod_mp_pre_step3d_tile_+0xe42b>
  822905:	48 8b 95 f0 fc ff ff 	mov    -0x310(%rbp),%rdx
  82290c:	48 3b c2             	cmp    %rdx,%rax
  82290f:	73 65                	jae    822976 <pre_step3d_mod_mp_pre_step3d_tile_+0xe4d6>
  822911:	4c 8b 9d 78 f9 ff ff 	mov    -0x688(%rbp),%r11
  822918:	48 8b b5 70 f9 ff ff 	mov    -0x690(%rbp),%rsi
  82291f:	4c 8b ad 58 f9 ff ff 	mov    -0x6a8(%rbp),%r13
  822926:	4c 8b a5 d0 f9 ff ff 	mov    -0x630(%rbp),%r12
  82292d:	4d 03 d9             	add    %r9,%r11
  822930:	49 03 f1             	add    %r9,%rsi
  822933:	4f 8d 74 0d 00       	lea    0x0(%r13,%r9,1),%r14
  822938:	4e 8d 2c 11          	lea    (%rcx,%r10,1),%r13
  82293c:	4d 03 e2             	add    %r10,%r12
  82293f:	c4 c1 7b 10 24 c3    	vmovsd (%r11,%rax,8),%xmm4
  822945:	c4 c1 7b 10 6c c5 f8 	vmovsd -0x8(%r13,%rax,8),%xmm5
  82294c:	c4 c1 7b 59 3c c0    	vmulsd (%r8,%rax,8),%xmm0,%xmm7
  822952:	c4 c1 5b 5c 74 c6 f8 	vsubsd -0x8(%r14,%rax,8),%xmm4,%xmm6
  822959:	c4 41 53 58 04 c4    	vaddsd (%r12,%rax,8),%xmm5,%xmm8
  82295f:	c4 62 c9 bd c3       	vfnmadd231sd %xmm3,%xmm6,%xmm8
  822964:	c4 41 43 59 c8       	vmulsd %xmm8,%xmm7,%xmm9
  822969:	c5 7b 11 0c c6       	vmovsd %xmm9,(%rsi,%rax,8)
  82296e:	48 ff c0             	inc    %rax
  822971:	48 3b c2             	cmp    %rdx,%rax
  822974:	72 c9                	jb     82293f <pre_step3d_mod_mp_pre_step3d_tile_+0xe49f>
  822976:	48 ff c7             	inc    %rdi
  822979:	4c 03 8d 80 fc ff ff 	add    -0x380(%rbp),%r9
  822980:	4c 03 85 20 fc ff ff 	add    -0x3e0(%rbp),%r8
  822987:	4c 03 95 00 fc ff ff 	add    -0x400(%rbp),%r10
  82298e:	48 3b bd 68 fc ff ff 	cmp    -0x398(%rbp),%rdi
  822995:	0f 82 da fe ff ff    	jb     822875 <pre_step3d_mod_mp_pre_step3d_tile_+0xe3d5>
  82299b:	4c 8b a5 18 fd ff ff 	mov    -0x2e8(%rbp),%r12
  8229a2:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  8229a9:	4c 8b b5 20 fd ff ff 	mov    -0x2e0(%rbp),%r14
  8229b0:	4c 8b bd 80 fc ff ff 	mov    -0x380(%rbp),%r15
  8229b7:	48 8b 85 80 f8 ff ff 	mov    -0x780(%rbp),%rax
  8229be:	e9 00 04 00 00       	jmpq   822dc3 <pre_step3d_mod_mp_pre_step3d_tile_+0xe923>
  8229c3:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  8229c9:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  8229cf:	7d 17                	jge    8229e8 <pre_step3d_mod_mp_pre_step3d_tile_+0xe548>
  8229d1:	e9 f5 04 00 00       	jmpq   822ecb <pre_step3d_mod_mp_pre_step3d_tile_+0xea2b>
  8229d6:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  8229dc:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  8229e2:	0f 8c cd 03 00 00    	jl     822db5 <pre_step3d_mod_mp_pre_step3d_tile_+0xe915>
  8229e8:	4c 8b 9d e8 f7 ff ff 	mov    -0x818(%rbp),%r11
  8229ef:	33 ff                	xor    %edi,%edi
  8229f1:	48 8b 95 28 fc ff ff 	mov    -0x3d8(%rbp),%rdx
  8229f8:	45 33 c0             	xor    %r8d,%r8d
  8229fb:	4c 8b 95 e0 f7 ff ff 	mov    -0x820(%rbp),%r10
  822a02:	4c 8b 8d d8 f7 ff ff 	mov    -0x828(%rbp),%r9
  822a09:	48 8b 8d 88 f9 ff ff 	mov    -0x678(%rbp),%rcx
  822a10:	4c 03 da             	add    %rdx,%r11
  822a13:	4c 8b a5 f0 fc ff ff 	mov    -0x310(%rbp),%r12
  822a1a:	4c 03 d2             	add    %rdx,%r10
  822a1d:	4c 89 95 e8 f9 ff ff 	mov    %r10,-0x618(%rbp)
  822a24:	4c 03 ca             	add    %rdx,%r9
  822a27:	4c 89 8d e0 f9 ff ff 	mov    %r9,-0x620(%rbp)
  822a2e:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
  822a32:	33 c9                	xor    %ecx,%ecx
  822a34:	48 89 b5 d8 f9 ff ff 	mov    %rsi,-0x628(%rbp)
  822a3b:	33 d2                	xor    %edx,%edx
  822a3d:	4c 89 9d f0 f9 ff ff 	mov    %r11,-0x610(%rbp)
  822a44:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  822a4b:	c5 fb 10 1d ed 4d 0a 	vmovsd 0xa4ded(%rip),%xmm3        # 8c7840 <__STRLITPACK_199.115+0x8b0>
  822a52:	00 
  822a53:	c5 f9 10 0d 85 42 0a 	vmovupd 0xa4285(%rip),%xmm1        # 8c6ce0 <__STRLITPACK_54.50+0xc0>
  822a5a:	00 
  822a5b:	c5 f9 10 15 3d 3d 0a 	vmovupd 0xa3d3d(%rip),%xmm2        # 8c67a0 <__STRLITPACK_19.34+0x10>
  822a62:	00 
  822a63:	8b 85 78 fc ff ff    	mov    -0x388(%rbp),%eax
  822a69:	3b 85 d8 fc ff ff    	cmp    -0x328(%rbp),%eax
  822a6f:	0f 8c f8 02 00 00    	jl     822d6d <pre_step3d_mod_mp_pre_step3d_tile_+0xe8cd>
  822a75:	49 83 fc 04          	cmp    $0x4,%r12
  822a79:	0f 8c 1e 2e 00 00    	jl     82589d <pre_step3d_mod_mp_pre_step3d_tile_+0x113fd>
  822a7f:	48 8b b5 e8 f9 ff ff 	mov    -0x618(%rbp),%rsi
  822a86:	4c 8b b5 20 f9 ff ff 	mov    -0x6e0(%rbp),%r14
  822a8d:	4c 8b ad f0 f9 ff ff 	mov    -0x610(%rbp),%r13
  822a94:	4c 8b 9d 28 fd ff ff 	mov    -0x2d8(%rbp),%r11
  822a9b:	4c 8d 3c 16          	lea    (%rsi,%rdx,1),%r15
  822a9f:	48 8b b5 e0 f9 ff ff 	mov    -0x620(%rbp),%rsi
  822aa6:	4c 03 f1             	add    %rcx,%r14
  822aa9:	4c 89 bd 58 fd ff ff 	mov    %r15,-0x2a8(%rbp)
  822ab0:	4c 03 ea             	add    %rdx,%r13
  822ab3:	4c 8b bd d8 f9 ff ff 	mov    -0x628(%rbp),%r15
  822aba:	4c 8b 95 70 f9 ff ff 	mov    -0x690(%rbp),%r10
  822ac1:	48 8d 04 16          	lea    (%rsi,%rdx,1),%rax
  822ac5:	48 89 85 10 fa ff ff 	mov    %rax,-0x5f0(%rbp)
  822acc:	48 8b 85 18 f9 ff ff 	mov    -0x6e8(%rbp),%rax
  822ad3:	49 8d 34 17          	lea    (%r15,%rdx,1),%rsi
  822ad7:	4c 8b 8d 68 f9 ff ff 	mov    -0x698(%rbp),%r9
  822ade:	4d 03 d0             	add    %r8,%r10
  822ae1:	4c 89 9d 98 fc ff ff 	mov    %r11,-0x368(%rbp)
  822ae8:	45 33 db             	xor    %r11d,%r11d
  822aeb:	48 89 b5 08 fa ff ff 	mov    %rsi,-0x5f8(%rbp)
  822af2:	4c 8d 3c 08          	lea    (%rax,%rcx,1),%r15
  822af6:	48 8b 85 e8 f8 ff ff 	mov    -0x718(%rbp),%rax
  822afd:	33 f6                	xor    %esi,%esi
  822aff:	4c 89 bd 00 fa ff ff 	mov    %r15,-0x600(%rbp)
  822b06:	4d 03 c8             	add    %r8,%r9
  822b09:	4c 8b bd b8 f9 ff ff 	mov    -0x648(%rbp),%r15
  822b10:	49 f7 df             	neg    %r15
  822b13:	48 c1 e0 03          	shl    $0x3,%rax
  822b17:	48 f7 d8             	neg    %rax
  822b1a:	48 03 85 c0 f9 ff ff 	add    -0x640(%rbp),%rax
  822b21:	49 03 c7             	add    %r15,%rax
  822b24:	4c 8b bd 90 f9 ff ff 	mov    -0x670(%rbp),%r15
  822b2b:	4c 89 85 f8 f9 ff ff 	mov    %r8,-0x608(%rbp)
  822b32:	4c 89 ad 50 fd ff ff 	mov    %r13,-0x2b0(%rbp)
  822b39:	4a 8d 04 f8          	lea    (%rax,%r15,8),%rax
  822b3d:	4c 89 b5 48 fd ff ff 	mov    %r14,-0x2b8(%rbp)
  822b44:	48 89 95 20 fb ff ff 	mov    %rdx,-0x4e0(%rbp)
  822b4b:	48 89 8d 28 fb ff ff 	mov    %rcx,-0x4d8(%rbp)
  822b52:	4c 89 85 30 fb ff ff 	mov    %r8,-0x4d0(%rbp)
  822b59:	48 89 bd 38 fb ff ff 	mov    %rdi,-0x4c8(%rbp)
  822b60:	48 03 85 00 f9 ff ff 	add    -0x700(%rbp),%rax
  822b67:	4c 8b b5 f8 f9 ff ff 	mov    -0x608(%rbp),%r14
  822b6e:	48 89 f2             	mov    %rsi,%rdx
  822b71:	48 8b 8d 00 fa ff ff 	mov    -0x600(%rbp),%rcx
  822b78:	48 8b bd 08 fa ff ff 	mov    -0x5f8(%rbp),%rdi
  822b7f:	4c 8b 85 10 fa ff ff 	mov    -0x5f0(%rbp),%r8
  822b86:	4c 8b a5 10 fc ff ff 	mov    -0x3f0(%rbp),%r12
  822b8d:	4c 8b ad 10 fd ff ff 	mov    -0x2f0(%rbp),%r13
  822b94:	4c 8b bd 48 fd ff ff 	mov    -0x2b8(%rbp),%r15
  822b9b:	c4 c1 79 10 24 06    	vmovupd (%r14,%rax,1),%xmm4
  822ba1:	c4 41 59 5c 5c 06 f8 	vsubpd -0x8(%r14,%rax,1),%xmm4,%xmm11
  822ba8:	4c 03 fe             	add    %rsi,%r15
  822bab:	c4 c1 7b 10 2f       	vmovsd (%r15),%xmm5
  822bb0:	c4 81 51 16 34 27    	vmovhpd (%r15,%r12,1),%xmm5,%xmm6
  822bb6:	4d 8d 3c 10          	lea    (%r8,%rdx,1),%r15
  822bba:	c4 c1 7b 10 3f       	vmovsd (%r15),%xmm7
  822bbf:	c4 01 41 16 0c 2f    	vmovhpd (%r15,%r13,1),%xmm7,%xmm9
  822bc5:	4c 8d 3c 17          	lea    (%rdi,%rdx,1),%r15
  822bc9:	c4 41 7b 10 07       	vmovsd (%r15),%xmm8
  822bce:	c4 01 39 16 14 2f    	vmovhpd (%r15,%r13,1),%xmm8,%xmm10
  822bd4:	4c 8d 3c 31          	lea    (%rcx,%rsi,1),%r15
  822bd8:	c4 41 31 58 f2       	vaddpd %xmm10,%xmm9,%xmm14
  822bdd:	c5 49 59 ea          	vmulpd %xmm2,%xmm6,%xmm13
  822be1:	c4 62 a1 bc f1       	vfnmadd231pd %xmm1,%xmm11,%xmm14
  822be6:	c4 c1 7b 10 2f       	vmovsd (%r15),%xmm5
  822beb:	c4 81 51 16 34 27    	vmovhpd (%r15,%r12,1),%xmm5,%xmm6
  822bf1:	c4 41 11 59 fe       	vmulpd %xmm14,%xmm13,%xmm15
  822bf6:	c5 49 59 ea          	vmulpd %xmm2,%xmm6,%xmm13
  822bfa:	c4 01 79 11 3c da    	vmovupd %xmm15,(%r10,%r11,8)
  822c00:	4c 8b bd 50 fd ff ff 	mov    -0x2b0(%rbp),%r15
  822c07:	4a 8d 34 a6          	lea    (%rsi,%r12,4),%rsi
  822c0b:	c4 c1 79 10 64 06 10 	vmovupd 0x10(%r14,%rax,1),%xmm4
  822c12:	c4 41 59 5c 5c 06 08 	vsubpd 0x8(%r14,%rax,1),%xmm4,%xmm11
  822c19:	49 83 c6 20          	add    $0x20,%r14
  822c1d:	4c 03 fa             	add    %rdx,%r15
  822c20:	c4 c1 7b 10 3f       	vmovsd (%r15),%xmm7
  822c25:	c4 01 41 16 0c 2f    	vmovhpd (%r15,%r13,1),%xmm7,%xmm9
  822c2b:	4c 8b bd 58 fd ff ff 	mov    -0x2a8(%rbp),%r15
  822c32:	4c 03 fa             	add    %rdx,%r15
  822c35:	c4 41 7b 10 07       	vmovsd (%r15),%xmm8
  822c3a:	4a 8d 14 aa          	lea    (%rdx,%r13,4),%rdx
  822c3e:	c4 01 39 16 14 2f    	vmovhpd (%r15,%r13,1),%xmm8,%xmm10
  822c44:	c4 41 31 58 f2       	vaddpd %xmm10,%xmm9,%xmm14
  822c49:	c4 62 a1 bc f1       	vfnmadd231pd %xmm1,%xmm11,%xmm14
  822c4e:	c4 41 11 59 fe       	vmulpd %xmm14,%xmm13,%xmm15
  822c53:	c4 01 79 11 7c d9 10 	vmovupd %xmm15,0x10(%r9,%r11,8)
  822c5a:	49 83 c3 04          	add    $0x4,%r11
  822c5e:	4c 3b 9d 28 fd ff ff 	cmp    -0x2d8(%rbp),%r11
  822c65:	0f 82 29 ff ff ff    	jb     822b94 <pre_step3d_mod_mp_pre_step3d_tile_+0xe6f4>
  822c6b:	48 8b 95 20 fb ff ff 	mov    -0x4e0(%rbp),%rdx
  822c72:	48 8b 8d 28 fb ff ff 	mov    -0x4d8(%rbp),%rcx
  822c79:	4c 8b 85 30 fb ff ff 	mov    -0x4d0(%rbp),%r8
  822c80:	48 8b bd 38 fb ff ff 	mov    -0x4c8(%rbp),%rdi
  822c87:	4c 8b a5 f0 fc ff ff 	mov    -0x310(%rbp),%r12
  822c8e:	4c 8b ad 10 fd ff ff 	mov    -0x2f0(%rbp),%r13
  822c95:	48 8b 85 98 fc ff ff 	mov    -0x368(%rbp),%rax
  822c9c:	4c 8b 9d 10 fc ff ff 	mov    -0x3f0(%rbp),%r11
  822ca3:	4c 0f af e8          	imul   %rax,%r13
  822ca7:	4c 0f af d8          	imul   %rax,%r11
  822cab:	49 3b c4             	cmp    %r12,%rax
  822cae:	0f 83 b9 00 00 00    	jae    822d6d <pre_step3d_mod_mp_pre_step3d_tile_+0xe8cd>
  822cb4:	4c 8b 95 78 f9 ff ff 	mov    -0x688(%rbp),%r10
  822cbb:	4c 8b 8d 70 f9 ff ff 	mov    -0x690(%rbp),%r9
  822cc2:	48 8b b5 58 f9 ff ff 	mov    -0x6a8(%rbp),%rsi
  822cc9:	48 8b 85 20 f9 ff ff 	mov    -0x6e0(%rbp),%rax
  822cd0:	4d 03 d0             	add    %r8,%r10
  822cd3:	4c 8b bd e0 f9 ff ff 	mov    -0x620(%rbp),%r15
  822cda:	4d 03 c8             	add    %r8,%r9
  822cdd:	4c 8b b5 d8 f9 ff ff 	mov    -0x628(%rbp),%r14
  822ce4:	49 03 f0             	add    %r8,%rsi
  822ce7:	48 89 8d 28 fb ff ff 	mov    %rcx,-0x4d8(%rbp)
  822cee:	48 03 c1             	add    %rcx,%rax
  822cf1:	4c 89 85 30 fb ff ff 	mov    %r8,-0x4d0(%rbp)
  822cf8:	4c 03 fa             	add    %rdx,%r15
  822cfb:	48 89 bd 38 fb ff ff 	mov    %rdi,-0x4c8(%rbp)
  822d02:	4c 03 f2             	add    %rdx,%r14
  822d05:	48 8b 8d 98 fc ff ff 	mov    -0x368(%rbp),%rcx
  822d0c:	48 8b bd 10 fc ff ff 	mov    -0x3f0(%rbp),%rdi
  822d13:	4c 8b 85 10 fd ff ff 	mov    -0x2f0(%rbp),%r8
  822d1a:	c4 c1 7b 10 24 ca    	vmovsd (%r10,%rcx,8),%xmm4
  822d20:	c4 81 7b 10 6c 3d 00 	vmovsd 0x0(%r13,%r15,1),%xmm5
  822d27:	c4 c1 7b 59 3c 03    	vmulsd (%r11,%rax,1),%xmm0,%xmm7
  822d2d:	4c 03 df             	add    %rdi,%r11
  822d30:	c5 db 5c 74 ce f8    	vsubsd -0x8(%rsi,%rcx,8),%xmm4,%xmm6
  822d36:	c4 01 53 58 44 35 00 	vaddsd 0x0(%r13,%r14,1),%xmm5,%xmm8
  822d3d:	c4 62 c9 bd c3       	vfnmadd231sd %xmm3,%xmm6,%xmm8
  822d42:	4d 03 e8             	add    %r8,%r13
  822d45:	c4 41 43 59 c8       	vmulsd %xmm8,%xmm7,%xmm9
  822d4a:	c4 41 7b 11 0c c9    	vmovsd %xmm9,(%r9,%rcx,8)
  822d50:	48 ff c1             	inc    %rcx
  822d53:	49 3b cc             	cmp    %r12,%rcx
  822d56:	72 c2                	jb     822d1a <pre_step3d_mod_mp_pre_step3d_tile_+0xe87a>
  822d58:	48 8b 8d 28 fb ff ff 	mov    -0x4d8(%rbp),%rcx
  822d5f:	4c 8b 85 30 fb ff ff 	mov    -0x4d0(%rbp),%r8
  822d66:	48 8b bd 38 fb ff ff 	mov    -0x4c8(%rbp),%rdi
  822d6d:	48 ff c7             	inc    %rdi
  822d70:	4c 03 85 80 fc ff ff 	add    -0x380(%rbp),%r8
  822d77:	48 03 8d 20 fc ff ff 	add    -0x3e0(%rbp),%rcx
  822d7e:	48 03 95 00 fc ff ff 	add    -0x400(%rbp),%rdx
  822d85:	48 3b bd 68 fc ff ff 	cmp    -0x398(%rbp),%rdi
  822d8c:	0f 82 d1 fc ff ff    	jb     822a63 <pre_step3d_mod_mp_pre_step3d_tile_+0xe5c3>
  822d92:	4c 8b a5 18 fd ff ff 	mov    -0x2e8(%rbp),%r12
  822d99:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  822da0:	4c 8b b5 20 fd ff ff 	mov    -0x2e0(%rbp),%r14
  822da7:	4c 8b bd 80 fc ff ff 	mov    -0x380(%rbp),%r15
  822dae:	48 8b 85 80 f8 ff ff 	mov    -0x780(%rbp),%rax
  822db5:	48 83 bd 10 fd ff ff 	cmpq   $0x8,-0x2f0(%rbp)
  822dbc:	08 
  822dbd:	0f 85 08 01 00 00    	jne    822ecb <pre_step3d_mod_mp_pre_step3d_tile_+0xea2b>
  822dc3:	48 83 bd d8 fb ff ff 	cmpq   $0x8,-0x428(%rbp)
  822dca:	08 
  822dcb:	0f 85 fa 00 00 00    	jne    822ecb <pre_step3d_mod_mp_pre_step3d_tile_+0xea2b>
  822dd1:	48 8b 95 10 f8 ff ff 	mov    -0x7f0(%rbp),%rdx
  822dd8:	33 c9                	xor    %ecx,%ecx
  822dda:	4c 8b 85 e0 f1 ff ff 	mov    -0xe20(%rbp),%r8
  822de1:	45 33 c9             	xor    %r9d,%r9d
  822de4:	48 3b 95 08 f8 ff ff 	cmp    -0x7f8(%rbp),%rdx
  822deb:	48 8b 95 d8 fa ff ff 	mov    -0x528(%rbp),%rdx
  822df2:	0f 8c 66 04 00 00    	jl     82325e <pre_step3d_mod_mp_pre_step3d_tile_+0xedbe>
  822df8:	4c 8b 95 88 f7 ff ff 	mov    -0x878(%rbp),%r10
  822dff:	4c 8b 9d 28 fc ff ff 	mov    -0x3d8(%rbp),%r11
  822e06:	48 8b bd 68 f7 ff ff 	mov    -0x898(%rbp),%rdi
  822e0d:	4c 8b ad e0 fb ff ff 	mov    -0x420(%rbp),%r13
  822e14:	44 8b bd d0 fc ff ff 	mov    -0x330(%rbp),%r15d
  822e1b:	4d 03 d3             	add    %r11,%r10
  822e1e:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  822e25:	49 03 fb             	add    %r11,%rdi
  822e28:	44 3b bd d8 fc ff ff 	cmp    -0x328(%rbp),%r15d
  822e2f:	7c 74                	jl     822ea5 <pre_step3d_mod_mp_pre_step3d_tile_+0xea05>
  822e31:	49 83 fe 04          	cmp    $0x4,%r14
  822e35:	0f 8c 2a 29 00 00    	jl     825765 <pre_step3d_mod_mp_pre_step3d_tile_+0x112c5>
  822e3b:	4c 8b a5 18 fd ff ff 	mov    -0x2e8(%rbp),%r12
  822e42:	45 33 db             	xor    %r11d,%r11d
  822e45:	4d 89 e7             	mov    %r12,%r15
  822e48:	4a 8d 34 0f          	lea    (%rdi,%r9,1),%rsi
  822e4c:	4b 8d 04 0a          	lea    (%r10,%r9,1),%rax
  822e50:	c4 a1 7d 10 0c de    	vmovupd (%rsi,%r11,8),%ymm1
  822e56:	c4 a1 75 5c 14 d8    	vsubpd (%rax,%r11,8),%ymm1,%ymm2
  822e5c:	c4 81 6d 59 1c d8    	vmulpd (%r8,%r11,8),%ymm2,%ymm3
  822e62:	c4 a1 7d 11 1c da    	vmovupd %ymm3,(%rdx,%r11,8)
  822e68:	49 83 c3 04          	add    $0x4,%r11
  822e6c:	4d 3b df             	cmp    %r15,%r11
  822e6f:	72 df                	jb     822e50 <pre_step3d_mod_mp_pre_step3d_tile_+0xe9b0>
  822e71:	44 8b bd d0 fc ff ff 	mov    -0x330(%rbp),%r15d
  822e78:	4d 3b e6             	cmp    %r14,%r12
  822e7b:	73 28                	jae    822ea5 <pre_step3d_mod_mp_pre_step3d_tile_+0xea05>
  822e7d:	4a 8d 34 0f          	lea    (%rdi,%r9,1),%rsi
  822e81:	4b 8d 04 0a          	lea    (%r10,%r9,1),%rax
  822e85:	c4 a1 7b 10 0c e6    	vmovsd (%rsi,%r12,8),%xmm1
  822e8b:	c4 a1 73 5c 14 e0    	vsubsd (%rax,%r12,8),%xmm1,%xmm2
  822e91:	c4 81 6b 59 1c e0    	vmulsd (%r8,%r12,8),%xmm2,%xmm3
  822e97:	c4 a1 7b 11 1c e2    	vmovsd %xmm3,(%rdx,%r12,8)
  822e9d:	49 ff c4             	inc    %r12
  822ea0:	4d 3b e6             	cmp    %r14,%r12
  822ea3:	72 e0                	jb     822e85 <pre_step3d_mod_mp_pre_step3d_tile_+0xe9e5>
  822ea5:	48 ff c1             	inc    %rcx
  822ea8:	4d 03 c5             	add    %r13,%r8
  822eab:	48 03 95 80 fc ff ff 	add    -0x380(%rbp),%rdx
  822eb2:	4c 03 8d 00 fc ff ff 	add    -0x400(%rbp),%r9
  822eb9:	48 3b 8d 48 fc ff ff 	cmp    -0x3b8(%rbp),%rcx
  822ec0:	0f 82 62 ff ff ff    	jb     822e28 <pre_step3d_mod_mp_pre_step3d_tile_+0xe988>
  822ec6:	e9 77 03 00 00       	jmpq   823242 <pre_step3d_mod_mp_pre_step3d_tile_+0xeda2>
  822ecb:	48 8b 95 10 f8 ff ff 	mov    -0x7f0(%rbp),%rdx
  822ed2:	45 33 c0             	xor    %r8d,%r8d
  822ed5:	33 ff                	xor    %edi,%edi
  822ed7:	33 c9                	xor    %ecx,%ecx
  822ed9:	48 3b 95 08 f8 ff ff 	cmp    -0x7f8(%rbp),%rdx
  822ee0:	ba 00 00 00 00       	mov    $0x0,%edx
  822ee5:	0f 8c 73 03 00 00    	jl     82325e <pre_step3d_mod_mp_pre_step3d_tile_+0xedbe>
  822eeb:	4c 8b 9d 28 fc ff ff 	mov    -0x3d8(%rbp),%r11
  822ef2:	4c 8b 8d c8 f7 ff ff 	mov    -0x838(%rbp),%r9
  822ef9:	4c 8b 95 d0 f7 ff ff 	mov    -0x830(%rbp),%r10
  822f00:	48 8b b5 b0 f7 ff ff 	mov    -0x850(%rbp),%rsi
  822f07:	4c 8b ad 10 fd ff ff 	mov    -0x2f0(%rbp),%r13
  822f0e:	4d 03 cb             	add    %r11,%r9
  822f11:	4c 89 8d a0 fa ff ff 	mov    %r9,-0x560(%rbp)
  822f18:	4d 03 d3             	add    %r11,%r10
  822f1b:	4c 8b 8d c0 f7 ff ff 	mov    -0x840(%rbp),%r9
  822f22:	4c 89 95 a8 fc ff ff 	mov    %r10,-0x358(%rbp)
  822f29:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  822f30:	4d 03 cb             	add    %r11,%r9
  822f33:	4c 89 8d 18 fa ff ff 	mov    %r9,-0x5e8(%rbp)
  822f3a:	4c 03 de             	add    %rsi,%r11
  822f3d:	4c 89 9d a0 fc ff ff 	mov    %r11,-0x360(%rbp)
  822f44:	8b 85 d0 fc ff ff    	mov    -0x330(%rbp),%eax
  822f4a:	3b 85 d8 fc ff ff    	cmp    -0x328(%rbp),%eax
  822f50:	0f 8c c7 02 00 00    	jl     82321d <pre_step3d_mod_mp_pre_step3d_tile_+0xed7d>
  822f56:	49 83 fe 04          	cmp    $0x4,%r14
  822f5a:	0f 8c 35 29 00 00    	jl     825895 <pre_step3d_mod_mp_pre_step3d_tile_+0x113f5>
  822f60:	48 8b 85 d8 fa ff ff 	mov    -0x528(%rbp),%rax
  822f67:	48 03 c1             	add    %rcx,%rax
  822f6a:	48 89 85 f0 fa ff ff 	mov    %rax,-0x510(%rbp)
  822f71:	48 83 e0 0f          	and    $0xf,%rax
  822f75:	85 c0                	test   %eax,%eax
  822f77:	74 0d                	je     822f86 <pre_step3d_mod_mp_pre_step3d_tile_+0xeae6>
  822f79:	a8 07                	test   $0x7,%al
  822f7b:	0f 85 14 29 00 00    	jne    825895 <pre_step3d_mod_mp_pre_step3d_tile_+0x113f5>
  822f81:	b8 01 00 00 00       	mov    $0x1,%eax
  822f86:	41 89 c3             	mov    %eax,%r11d
  822f89:	49 8d 73 04          	lea    0x4(%r11),%rsi
  822f8d:	4c 3b f6             	cmp    %rsi,%r14
  822f90:	0f 8c ff 28 00 00    	jl     825895 <pre_step3d_mod_mp_pre_step3d_tile_+0x113f5>
  822f96:	4c 8b bd a8 fc ff ff 	mov    -0x358(%rbp),%r15
  822f9d:	45 33 c9             	xor    %r9d,%r9d
  822fa0:	8b b5 40 fc ff ff    	mov    -0x3c0(%rbp),%esi
  822fa6:	41 89 f4             	mov    %esi,%r12d
  822fa9:	44 2b e0             	sub    %eax,%r12d
  822fac:	45 33 d2             	xor    %r10d,%r10d
  822faf:	41 83 e4 03          	and    $0x3,%r12d
  822fb3:	4d 03 f8             	add    %r8,%r15
  822fb6:	4c 89 bd 68 fd ff ff 	mov    %r15,-0x298(%rbp)
  822fbd:	41 f7 dc             	neg    %r12d
  822fc0:	4c 8b bd a0 fc ff ff 	mov    -0x360(%rbp),%r15
  822fc7:	44 03 e6             	add    %esi,%r12d
  822fca:	4d 63 e4             	movslq %r12d,%r12
  822fcd:	33 f6                	xor    %esi,%esi
  822fcf:	4d 03 f8             	add    %r8,%r15
  822fd2:	4c 89 bd b8 fc ff ff 	mov    %r15,-0x348(%rbp)
  822fd9:	4c 8b bd 38 fc ff ff 	mov    -0x3c8(%rbp),%r15
  822fe0:	4c 03 ff             	add    %rdi,%r15
  822fe3:	4c 89 bd b0 fc ff ff 	mov    %r15,-0x350(%rbp)
  822fea:	85 c0                	test   %eax,%eax
  822fec:	76 67                	jbe    823055 <pre_step3d_mod_mp_pre_step3d_tile_+0xebb5>
  822fee:	4c 89 85 40 fb ff ff 	mov    %r8,-0x4c0(%rbp)
  822ff5:	48 89 95 48 fb ff ff 	mov    %rdx,-0x4b8(%rbp)
  822ffc:	4c 89 f8             	mov    %r15,%rax
  822fff:	48 8b 95 b8 fc ff ff 	mov    -0x348(%rbp),%rdx
  823006:	4c 8b 85 68 fd ff ff 	mov    -0x298(%rbp),%r8
  82300d:	4c 8b b5 f0 fa ff ff 	mov    -0x510(%rbp),%r14
  823014:	4c 8b bd d8 fb ff ff 	mov    -0x428(%rbp),%r15
  82301b:	c4 a1 7b 10 0c 06    	vmovsd (%rsi,%r8,1),%xmm1
  823021:	c5 f3 5c 14 16       	vsubsd (%rsi,%rdx,1),%xmm1,%xmm2
  823026:	49 03 f5             	add    %r13,%rsi
  823029:	c4 c1 6b 59 1c 02    	vmulsd (%r10,%rax,1),%xmm2,%xmm3
  82302f:	4d 03 d7             	add    %r15,%r10
  823032:	c4 81 7b 11 1c ce    	vmovsd %xmm3,(%r14,%r9,8)
  823038:	49 ff c1             	inc    %r9
  82303b:	4d 3b cb             	cmp    %r11,%r9
  82303e:	72 db                	jb     82301b <pre_step3d_mod_mp_pre_step3d_tile_+0xeb7b>
  823040:	4c 8b 85 40 fb ff ff 	mov    -0x4c0(%rbp),%r8
  823047:	48 8b 95 48 fb ff ff 	mov    -0x4b8(%rbp),%rdx
  82304e:	4c 8b b5 20 fd ff ff 	mov    -0x2e0(%rbp),%r14
  823055:	4c 8b bd 18 fa ff ff 	mov    -0x5e8(%rbp),%r15
  82305c:	4d 89 e9             	mov    %r13,%r9
  82305f:	48 8b b5 50 f9 ff ff 	mov    -0x6b0(%rbp),%rsi
  823066:	48 8b 85 a0 fa ff ff 	mov    -0x560(%rbp),%rax
  82306d:	4c 8b 95 d8 fb ff ff 	mov    -0x428(%rbp),%r10
  823074:	4d 03 f8             	add    %r8,%r15
  823077:	4c 89 bd 20 fa ff ff 	mov    %r15,-0x5e0(%rbp)
  82307e:	48 03 f1             	add    %rcx,%rsi
  823081:	4c 8b bd 48 f9 ff ff 	mov    -0x6b8(%rbp),%r15
  823088:	49 03 c0             	add    %r8,%rax
  82308b:	4c 89 a5 60 fd ff ff 	mov    %r12,-0x2a0(%rbp)
  823092:	48 89 8d 50 fb ff ff 	mov    %rcx,-0x4b0(%rbp)
  823099:	48 89 bd 58 fb ff ff 	mov    %rdi,-0x4a8(%rbp)
  8230a0:	4c 03 ff             	add    %rdi,%r15
  8230a3:	4c 89 85 40 fb ff ff 	mov    %r8,-0x4c0(%rbp)
  8230aa:	48 89 95 48 fb ff ff 	mov    %rdx,-0x4b8(%rbp)
  8230b1:	4d 0f af d3          	imul   %r11,%r10
  8230b5:	4d 0f af cb          	imul   %r11,%r9
  8230b9:	4d 89 fe             	mov    %r15,%r14
  8230bc:	48 8b 95 20 fa ff ff 	mov    -0x5e0(%rbp),%rdx
  8230c3:	48 8b 8d b0 fc ff ff 	mov    -0x350(%rbp),%rcx
  8230ca:	48 8b bd b8 fc ff ff 	mov    -0x348(%rbp),%rdi
  8230d1:	4c 8b 85 f0 fa ff ff 	mov    -0x510(%rbp),%r8
  8230d8:	4c 8b a5 d8 fb ff ff 	mov    -0x428(%rbp),%r12
  8230df:	4c 8b bd 68 fd ff ff 	mov    -0x298(%rbp),%r15
  8230e6:	4d 03 f9             	add    %r9,%r15
  8230e9:	c4 c1 7b 10 0f       	vmovsd (%r15),%xmm1
  8230ee:	c4 81 71 16 1c 2f    	vmovhpd (%r15,%r13,1),%xmm1,%xmm3
  8230f4:	4e 8d 3c 0f          	lea    (%rdi,%r9,1),%r15
  8230f8:	c4 c1 7b 10 17       	vmovsd (%r15),%xmm2
  8230fd:	c4 81 69 16 24 2f    	vmovhpd (%r15,%r13,1),%xmm2,%xmm4
  823103:	4e 8d 3c 11          	lea    (%rcx,%r10,1),%r15
  823107:	c4 c1 7b 10 2f       	vmovsd (%r15),%xmm5
  82310c:	c4 81 51 16 3c 27    	vmovhpd (%r15,%r12,1),%xmm5,%xmm7
  823112:	4e 8d 3c 08          	lea    (%rax,%r9,1),%r15
  823116:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  82311b:	c4 01 31 16 1c 2f    	vmovhpd (%r15,%r13,1),%xmm9,%xmm11
  823121:	4e 8d 3c 0a          	lea    (%rdx,%r9,1),%r15
  823125:	c4 41 7b 10 17       	vmovsd (%r15),%xmm10
  82312a:	4f 8d 0c a9          	lea    (%r9,%r13,4),%r9
  82312e:	c4 01 29 16 2c 2f    	vmovhpd (%r15,%r13,1),%xmm10,%xmm13
  823134:	4f 8d 3c 16          	lea    (%r14,%r10,1),%r15
  823138:	c5 e1 5c f4          	vsubpd %xmm4,%xmm3,%xmm6
  82313c:	c4 41 21 5c fd       	vsubpd %xmm13,%xmm11,%xmm15
  823141:	c5 49 59 c7          	vmulpd %xmm7,%xmm6,%xmm8
  823145:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  82314a:	4f 8d 14 a2          	lea    (%r10,%r12,4),%r10
  82314e:	c4 81 09 16 0c 27    	vmovhpd (%r15,%r12,1),%xmm14,%xmm1
  823154:	c5 81 59 d1          	vmulpd %xmm1,%xmm15,%xmm2
  823158:	c4 01 79 11 04 d8    	vmovupd %xmm8,(%r8,%r11,8)
  82315e:	c4 a1 79 11 54 de 10 	vmovupd %xmm2,0x10(%rsi,%r11,8)
  823165:	49 83 c3 04          	add    $0x4,%r11
  823169:	4c 3b 9d 60 fd ff ff 	cmp    -0x2a0(%rbp),%r11
  823170:	0f 82 69 ff ff ff    	jb     8230df <pre_step3d_mod_mp_pre_step3d_tile_+0xec3f>
  823176:	4c 8b a5 60 fd ff ff 	mov    -0x2a0(%rbp),%r12
  82317d:	48 8b 8d 50 fb ff ff 	mov    -0x4b0(%rbp),%rcx
  823184:	48 8b bd 58 fb ff ff 	mov    -0x4a8(%rbp),%rdi
  82318b:	4c 8b 85 40 fb ff ff 	mov    -0x4c0(%rbp),%r8
  823192:	48 8b 95 48 fb ff ff 	mov    -0x4b8(%rbp),%rdx
  823199:	4c 8b b5 20 fd ff ff 	mov    -0x2e0(%rbp),%r14
  8231a0:	4d 89 eb             	mov    %r13,%r11
  8231a3:	4c 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9
  8231aa:	4d 0f af dc          	imul   %r12,%r11
  8231ae:	4d 0f af cc          	imul   %r12,%r9
  8231b2:	4d 3b e6             	cmp    %r14,%r12
  8231b5:	73 66                	jae    82321d <pre_step3d_mod_mp_pre_step3d_tile_+0xed7d>
  8231b7:	4c 8b bd 38 fc ff ff 	mov    -0x3c8(%rbp),%r15
  8231be:	48 8b b5 d8 fa ff ff 	mov    -0x528(%rbp),%rsi
  8231c5:	48 8b 85 a8 fc ff ff 	mov    -0x358(%rbp),%rax
  8231cc:	4c 8b 95 a0 fc ff ff 	mov    -0x360(%rbp),%r10
  8231d3:	4c 03 ff             	add    %rdi,%r15
  8231d6:	48 03 f1             	add    %rcx,%rsi
  8231d9:	48 89 95 48 fb ff ff 	mov    %rdx,-0x4b8(%rbp)
  8231e0:	49 03 c0             	add    %r8,%rax
  8231e3:	4c 89 fa             	mov    %r15,%rdx
  8231e6:	4d 03 d0             	add    %r8,%r10
  8231e9:	4c 8b bd d8 fb ff ff 	mov    -0x428(%rbp),%r15
  8231f0:	c4 c1 7b 10 0c 03    	vmovsd (%r11,%rax,1),%xmm1
  8231f6:	c4 81 73 5c 14 13    	vsubsd (%r11,%r10,1),%xmm1,%xmm2
  8231fc:	4d 03 dd             	add    %r13,%r11
  8231ff:	c4 c1 6b 59 1c 11    	vmulsd (%r9,%rdx,1),%xmm2,%xmm3
  823205:	4d 03 cf             	add    %r15,%r9
  823208:	c4 a1 7b 11 1c e6    	vmovsd %xmm3,(%rsi,%r12,8)
  82320e:	49 ff c4             	inc    %r12
  823211:	4d 3b e6             	cmp    %r14,%r12
  823214:	72 da                	jb     8231f0 <pre_step3d_mod_mp_pre_step3d_tile_+0xed50>
  823216:	48 8b 95 48 fb ff ff 	mov    -0x4b8(%rbp),%rdx
  82321d:	48 ff c2             	inc    %rdx
  823220:	4c 03 85 00 fc ff ff 	add    -0x400(%rbp),%r8
  823227:	48 03 bd e0 fb ff ff 	add    -0x420(%rbp),%rdi
  82322e:	48 03 8d 80 fc ff ff 	add    -0x380(%rbp),%rcx
  823235:	48 3b 95 48 fc ff ff 	cmp    -0x3b8(%rbp),%rdx
  82323c:	0f 82 02 fd ff ff    	jb     822f44 <pre_step3d_mod_mp_pre_step3d_tile_+0xeaa4>
  823242:	4c 8b a5 18 fd ff ff 	mov    -0x2e8(%rbp),%r12
  823249:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  823250:	4c 8b bd 80 fc ff ff 	mov    -0x380(%rbp),%r15
  823257:	48 8b 85 80 f8 ff ff 	mov    -0x780(%rbp),%rax
  82325e:	48 8b 95 d8 f8 ff ff 	mov    -0x728(%rbp),%rdx
  823265:	48 8b 8d e0 f8 ff ff 	mov    -0x720(%rbp),%rcx
  82326c:	f6 44 0a 08 01       	testb  $0x1,0x8(%rdx,%rcx,1)
  823271:	0f 85 af 00 00 00    	jne    823326 <pre_step3d_mod_mp_pre_step3d_tile_+0xee86>
  823277:	48 8b 95 28 f8 ff ff 	mov    -0x7d8(%rbp),%rdx
  82327e:	48 8b 8d 30 f8 ff ff 	mov    -0x7d0(%rbp),%rcx
  823285:	f6 04 0a 01          	testb  $0x1,(%rdx,%rcx,1)
  823289:	0f 85 97 00 00 00    	jne    823326 <pre_step3d_mod_mp_pre_step3d_tile_+0xee86>
  82328f:	48 8b 95 38 f7 ff ff 	mov    -0x8c8(%rbp),%rdx
  823296:	48 8b 8d 40 f7 ff ff 	mov    -0x8c0(%rbp),%rcx
  82329d:	4c 8b 84 0a 18 01 00 	mov    0x118(%rdx,%rcx,1),%r8
  8232a4:	00 
  8232a5:	49 f7 d8             	neg    %r8
  8232a8:	4c 03 85 30 f7 ff ff 	add    -0x8d0(%rbp),%r8
  8232af:	4c 0f af 84 0a 10 01 	imul   0x110(%rdx,%rcx,1),%r8
  8232b6:	00 00 
  8232b8:	48 8b bc 0a d8 00 00 	mov    0xd8(%rdx,%rcx,1),%rdi
  8232bf:	00 
  8232c0:	42 f6 04 07 01       	testb  $0x1,(%rdi,%r8,1)
  8232c5:	74 5f                	je     823326 <pre_step3d_mod_mp_pre_step3d_tile_+0xee86>
  8232c7:	8b 95 d0 fc ff ff    	mov    -0x330(%rbp),%edx
  8232cd:	3b 95 d8 fc ff ff    	cmp    -0x328(%rbp),%edx
  8232d3:	7c 6b                	jl     823340 <pre_step3d_mod_mp_pre_step3d_tile_+0xeea0>
  8232d5:	83 bd 28 f3 ff ff 0c 	cmpl   $0xc,-0xcd8(%rbp)
  8232dc:	0f 8e 8b 24 00 00    	jle    82576d <pre_step3d_mod_mp_pre_step3d_tile_+0x112cd>
  8232e2:	83 bd e0 f6 ff ff 00 	cmpl   $0x0,-0x920(%rbp)
  8232e9:	0f 84 7e 24 00 00    	je     82576d <pre_step3d_mod_mp_pre_step3d_tile_+0x112cd>
  8232ef:	4c 89 ee             	mov    %r13,%rsi
  8232f2:	48 8b bd c0 f6 ff ff 	mov    -0x940(%rbp),%rdi
  8232f9:	48 8b 95 e8 f6 ff ff 	mov    -0x918(%rbp),%rdx
  823300:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  823307:	c5 f8 77             	vzeroupper 
  82330a:	e8 31 58 cb ff       	callq  4d8b40 <_intel_fast_memcpy>
  82330f:	48 8b 85 80 f8 ff ff 	mov    -0x780(%rbp),%rax
  823316:	c5 fb 10 05 fa 3c 0a 	vmovsd 0xa3cfa(%rip),%xmm0        # 8c7018 <__STRLITPACK_199.115+0x88>
  82331d:	00 
  82331e:	c5 7b 10 25 22 45 0a 	vmovsd 0xa4522(%rip),%xmm12        # 8c7848 <__STRLITPACK_199.115+0x8b8>
  823325:	00 
  823326:	48 8b 95 d8 f8 ff ff 	mov    -0x728(%rbp),%rdx
  82332d:	48 8b 8d e0 f8 ff ff 	mov    -0x720(%rbp),%rcx
  823334:	f6 44 0a 10 01       	testb  $0x1,0x10(%rdx,%rcx,1)
  823339:	74 1e                	je     823359 <pre_step3d_mod_mp_pre_step3d_tile_+0xeeb9>
  82333b:	e9 3f 01 00 00       	jmpq   82347f <pre_step3d_mod_mp_pre_step3d_tile_+0xefdf>
  823340:	48 8b 95 d8 f8 ff ff 	mov    -0x728(%rbp),%rdx
  823347:	48 8b 8d e0 f8 ff ff 	mov    -0x720(%rbp),%rcx
  82334e:	f6 44 0a 10 01       	testb  $0x1,0x10(%rdx,%rcx,1)
  823353:	0f 85 3b 01 00 00    	jne    823494 <pre_step3d_mod_mp_pre_step3d_tile_+0xeff4>
  823359:	48 8b 95 28 f8 ff ff 	mov    -0x7d8(%rbp),%rdx
  823360:	48 8b 8d 30 f8 ff ff 	mov    -0x7d0(%rbp),%rcx
  823367:	f6 04 0a 01          	testb  $0x1,(%rdx,%rcx,1)
  82336b:	0f 85 0e 01 00 00    	jne    82347f <pre_step3d_mod_mp_pre_step3d_tile_+0xefdf>
  823371:	48 8b 95 38 f7 ff ff 	mov    -0x8c8(%rbp),%rdx
  823378:	48 8b 8d 40 f7 ff ff 	mov    -0x8c0(%rbp),%rcx
  82337f:	4c 8b 84 0a d0 00 00 	mov    0xd0(%rdx,%rcx,1),%r8
  823386:	00 
  823387:	49 f7 d8             	neg    %r8
  82338a:	4c 03 85 30 f7 ff ff 	add    -0x8d0(%rbp),%r8
  823391:	4c 0f af 84 0a c8 00 	imul   0xc8(%rdx,%rcx,1),%r8
  823398:	00 00 
  82339a:	48 8b bc 0a 90 00 00 	mov    0x90(%rdx,%rcx,1),%rdi
  8233a1:	00 
  8233a2:	42 f6 04 07 01       	testb  $0x1,(%rdi,%r8,1)
  8233a7:	0f 84 d2 00 00 00    	je     82347f <pre_step3d_mod_mp_pre_step3d_tile_+0xefdf>
  8233ad:	8b 95 d0 fc ff ff    	mov    -0x330(%rbp),%edx
  8233b3:	3b 95 d8 fc ff ff    	cmp    -0x328(%rbp),%edx
  8233b9:	0f 8c 84 00 00 00    	jl     823443 <pre_step3d_mod_mp_pre_step3d_tile_+0xefa3>
  8233bf:	83 bd 28 f3 ff ff 0c 	cmpl   $0xc,-0xcd8(%rbp)
  8233c6:	0f 8e fe 23 00 00    	jle    8257ca <pre_step3d_mod_mp_pre_step3d_tile_+0x1132a>
  8233cc:	83 bd d8 f6 ff ff 00 	cmpl   $0x0,-0x928(%rbp)
  8233d3:	0f 84 f1 23 00 00    	je     8257ca <pre_step3d_mod_mp_pre_step3d_tile_+0x1132a>
  8233d9:	c5 f8 77             	vzeroupper 
  8233dc:	48 8b bd d0 f6 ff ff 	mov    -0x930(%rbp),%rdi
  8233e3:	48 8b b5 c8 f6 ff ff 	mov    -0x938(%rbp),%rsi
  8233ea:	48 8b 95 e8 f6 ff ff 	mov    -0x918(%rbp),%rdx
  8233f1:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  8233f8:	e8 43 57 cb ff       	callq  4d8b40 <_intel_fast_memcpy>
  8233fd:	48 8b 85 80 f8 ff ff 	mov    -0x780(%rbp),%rax
  823404:	c5 fb 10 05 0c 3c 0a 	vmovsd 0xa3c0c(%rip),%xmm0        # 8c7018 <__STRLITPACK_199.115+0x88>
  82340b:	00 
  82340c:	c5 7b 10 25 34 44 0a 	vmovsd 0xa4434(%rip),%xmm12        # 8c7848 <__STRLITPACK_199.115+0x8b8>
  823413:	00 
  823414:	8b 95 50 f8 ff ff    	mov    -0x7b0(%rbp),%edx
  82341a:	33 ff                	xor    %edi,%edi
  82341c:	3b 95 48 f8 ff ff    	cmp    -0x7b8(%rbp),%edx
  823422:	0f 8c 4d 01 00 00    	jl     823575 <pre_step3d_mod_mp_pre_step3d_tile_+0xf0d5>
  823428:	c5 fd 10 0d 30 1d 0a 	vmovupd 0xa1d30(%rip),%ymm1        # 8c5160 <var$630.126.450+0x4a0>
  82342f:	00 
  823430:	48 8b 95 e0 fc ff ff 	mov    -0x320(%rbp),%rdx
  823437:	48 8b 8d e8 fc ff ff 	mov    -0x318(%rbp),%rcx
  82343e:	e9 9f 00 00 00       	jmpq   8234e2 <pre_step3d_mod_mp_pre_step3d_tile_+0xf042>
  823443:	8b 95 50 f8 ff ff    	mov    -0x7b0(%rbp),%edx
  823449:	3b 95 48 f8 ff ff    	cmp    -0x7b8(%rbp),%edx
  82344f:	0f 8c 20 01 00 00    	jl     823575 <pre_step3d_mod_mp_pre_step3d_tile_+0xf0d5>
  823455:	bf 01 00 00 00       	mov    $0x1,%edi
  82345a:	48 83 f8 01          	cmp    $0x1,%rax
  82345e:	0f 86 11 01 00 00    	jbe    823575 <pre_step3d_mod_mp_pre_step3d_tile_+0xf0d5>
  823464:	c5 fd 10 0d f4 1c 0a 	vmovupd 0xa1cf4(%rip),%ymm1        # 8c5160 <var$630.126.450+0x4a0>
  82346b:	00 
  82346c:	48 8b 95 e0 fc ff ff 	mov    -0x320(%rbp),%rdx
  823473:	48 8b 8d e8 fc ff ff 	mov    -0x318(%rbp),%rcx
  82347a:	e9 dc 00 00 00       	jmpq   82355b <pre_step3d_mod_mp_pre_step3d_tile_+0xf0bb>
  82347f:	8b 95 50 f8 ff ff    	mov    -0x7b0(%rbp),%edx
  823485:	33 ff                	xor    %edi,%edi
  823487:	3b 95 48 f8 ff ff    	cmp    -0x7b8(%rbp),%edx
  82348d:	7d 26                	jge    8234b5 <pre_step3d_mod_mp_pre_step3d_tile_+0xf015>
  82348f:	e9 e1 00 00 00       	jmpq   823575 <pre_step3d_mod_mp_pre_step3d_tile_+0xf0d5>
  823494:	8b 95 50 f8 ff ff    	mov    -0x7b0(%rbp),%edx
  82349a:	3b 95 48 f8 ff ff    	cmp    -0x7b8(%rbp),%edx
  8234a0:	0f 8c cf 00 00 00    	jl     823575 <pre_step3d_mod_mp_pre_step3d_tile_+0xf0d5>
  8234a6:	bf 01 00 00 00       	mov    $0x1,%edi
  8234ab:	48 83 f8 01          	cmp    $0x1,%rax
  8234af:	0f 86 c0 00 00 00    	jbe    823575 <pre_step3d_mod_mp_pre_step3d_tile_+0xf0d5>
  8234b5:	c5 fd 10 0d a3 1c 0a 	vmovupd 0xa1ca3(%rip),%ymm1        # 8c5160 <var$630.126.450+0x4a0>
  8234bc:	00 
  8234bd:	48 8b 95 e0 fc ff ff 	mov    -0x320(%rbp),%rdx
  8234c4:	48 8b 8d e8 fc ff ff 	mov    -0x318(%rbp),%rcx
  8234cb:	44 8b 85 d8 fc ff ff 	mov    -0x328(%rbp),%r8d
  8234d2:	44 8b 8d d0 fc ff ff 	mov    -0x330(%rbp),%r9d
  8234d9:	45 3b c8             	cmp    %r8d,%r9d
  8234dc:	0f 8c 87 00 00 00    	jl     823569 <pre_step3d_mod_mp_pre_step3d_tile_+0xf0c9>
  8234e2:	49 83 fe 04          	cmp    $0x4,%r14
  8234e6:	0f 8c a1 23 00 00    	jl     82588d <pre_step3d_mod_mp_pre_step3d_tile_+0x113ed>
  8234ec:	49 89 f9             	mov    %rdi,%r9
  8234ef:	4d 89 e0             	mov    %r12,%r8
  8234f2:	4d 0f af cf          	imul   %r15,%r9
  8234f6:	33 f6                	xor    %esi,%esi
  8234f8:	4e 8d 1c 09          	lea    (%rcx,%r9,1),%r11
  8234fc:	4e 8d 14 0a          	lea    (%rdx,%r9,1),%r10
  823500:	4d 03 cd             	add    %r13,%r9
  823503:	c4 c1 7d 10 14 f1    	vmovupd (%r9,%rsi,8),%ymm2
  823509:	c4 c1 6d 58 5c f2 f8 	vaddpd -0x8(%r10,%rsi,8),%ymm2,%ymm3
  823510:	c5 f5 59 e3          	vmulpd %ymm3,%ymm1,%ymm4
  823514:	c4 c1 7d 11 64 f3 f8 	vmovupd %ymm4,-0x8(%r11,%rsi,8)
  82351b:	48 83 c6 04          	add    $0x4,%rsi
  82351f:	49 3b f4             	cmp    %r12,%rsi
  823522:	72 df                	jb     823503 <pre_step3d_mod_mp_pre_step3d_tile_+0xf063>
  823524:	4d 3b c6             	cmp    %r14,%r8
  823527:	73 32                	jae    82355b <pre_step3d_mod_mp_pre_step3d_tile_+0xf0bb>
  823529:	49 89 f9             	mov    %rdi,%r9
  82352c:	4d 0f af cf          	imul   %r15,%r9
  823530:	4e 8d 1c 09          	lea    (%rcx,%r9,1),%r11
  823534:	4e 8d 14 0a          	lea    (%rdx,%r9,1),%r10
  823538:	4d 03 cd             	add    %r13,%r9
  82353b:	c4 81 7b 10 14 c1    	vmovsd (%r9,%r8,8),%xmm2
  823541:	c4 81 6b 58 5c c2 f8 	vaddsd -0x8(%r10,%r8,8),%xmm2,%xmm3
  823548:	c5 fb 59 e3          	vmulsd %xmm3,%xmm0,%xmm4
  82354c:	c4 81 7b 11 64 c3 f8 	vmovsd %xmm4,-0x8(%r11,%r8,8)
  823553:	49 ff c0             	inc    %r8
  823556:	4d 3b c6             	cmp    %r14,%r8
  823559:	72 e0                	jb     82353b <pre_step3d_mod_mp_pre_step3d_tile_+0xf09b>
  82355b:	44 8b 85 d8 fc ff ff 	mov    -0x328(%rbp),%r8d
  823562:	44 8b 8d d0 fc ff ff 	mov    -0x330(%rbp),%r9d
  823569:	48 ff c7             	inc    %rdi
  82356c:	48 3b f8             	cmp    %rax,%rdi
  82356f:	0f 82 64 ff ff ff    	jb     8234d9 <pre_step3d_mod_mp_pre_step3d_tile_+0xf039>
  823575:	48 83 bd 08 fc ff ff 	cmpq   $0x8,-0x3f8(%rbp)
  82357c:	08 
  82357d:	0f 85 98 01 00 00    	jne    82371b <pre_step3d_mod_mp_pre_step3d_tile_+0xf27b>
  823583:	48 83 bd 10 fd ff ff 	cmpq   $0x8,-0x2f0(%rbp)
  82358a:	08 
  82358b:	0f 85 8a 01 00 00    	jne    82371b <pre_step3d_mod_mp_pre_step3d_tile_+0xf27b>
  823591:	8b 95 50 f8 ff ff    	mov    -0x7b0(%rbp),%edx
  823597:	33 c9                	xor    %ecx,%ecx
  823599:	4c 8b 85 d8 f1 ff ff 	mov    -0xe28(%rbp),%r8
  8235a0:	45 33 c9             	xor    %r9d,%r9d
  8235a3:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  8235a9:	48 89 ca             	mov    %rcx,%rdx
  8235ac:	0f 8c 1a 05 00 00    	jl     823acc <pre_step3d_mod_mp_pre_step3d_tile_+0xf62c>
  8235b2:	4c 8b 9d 28 fc ff ff 	mov    -0x3d8(%rbp),%r11
  8235b9:	4c 8b 95 60 f7 ff ff 	mov    -0x8a0(%rbp),%r10
  8235c0:	48 8b bd 80 f7 ff ff 	mov    -0x880(%rbp),%rdi
  8235c7:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  8235ce:	c5 fd 10 15 4a 29 0a 	vmovupd 0xa294a(%rip),%ymm2        # 8c5f20 <var$630.126.450+0x1260>
  8235d5:	00 
  8235d6:	4d 03 d3             	add    %r11,%r10
  8235d9:	c5 fb 10 1d 5f 42 0a 	vmovsd 0xa425f(%rip),%xmm3        # 8c7840 <__STRLITPACK_199.115+0x8b0>
  8235e0:	00 
  8235e1:	c5 fd 10 0d 77 1b 0a 	vmovupd 0xa1b77(%rip),%ymm1        # 8c5160 <var$630.126.450+0x4a0>
  8235e8:	00 
  8235e9:	4c 89 95 28 fa ff ff 	mov    %r10,-0x5d8(%rbp)
  8235f0:	49 03 fb             	add    %r11,%rdi
  8235f3:	8b 85 d0 fc ff ff    	mov    -0x330(%rbp),%eax
  8235f9:	3b 85 d8 fc ff ff    	cmp    -0x328(%rbp),%eax
  8235ff:	0f 8c ec 00 00 00    	jl     8236f1 <pre_step3d_mod_mp_pre_step3d_tile_+0xf251>
  823605:	49 83 fe 04          	cmp    $0x4,%r14
  823609:	0f 8c 18 22 00 00    	jl     825827 <pre_step3d_mod_mp_pre_step3d_tile_+0x11387>
  82360f:	4c 8b a5 e8 fc ff ff 	mov    -0x318(%rbp),%r12
  823616:	45 33 ed             	xor    %r13d,%r13d
  823619:	4c 8b 9d 08 f9 ff ff 	mov    -0x6f8(%rbp),%r11
  823620:	48 8b b5 78 f9 ff ff 	mov    -0x688(%rbp),%rsi
  823627:	4c 8b bd 28 fa ff ff 	mov    -0x5d8(%rbp),%r15
  82362e:	4c 03 e2             	add    %rdx,%r12
  823631:	48 8b 85 18 fd ff ff 	mov    -0x2e8(%rbp),%rax
  823638:	4c 03 da             	add    %rdx,%r11
  82363b:	49 89 c6             	mov    %rax,%r14
  82363e:	4c 8d 14 16          	lea    (%rsi,%rdx,1),%r10
  823642:	4a 8d 34 0f          	lea    (%rdi,%r9,1),%rsi
  823646:	4d 03 f9             	add    %r9,%r15
  823649:	c4 a1 7d 10 24 ee    	vmovupd (%rsi,%r13,8),%ymm4
  82364f:	c4 81 7d 10 2c ea    	vmovupd (%r10,%r13,8),%ymm5
  823655:	c4 81 75 59 3c e8    	vmulpd (%r8,%r13,8),%ymm1,%ymm7
  82365b:	c4 01 5d 58 04 ef    	vaddpd (%r15,%r13,8),%ymm4,%ymm8
  823661:	c4 81 55 5c 74 ec f8 	vsubpd -0x8(%r12,%r13,8),%ymm5,%ymm6
  823668:	c4 62 cd bc c2       	vfnmadd231pd %ymm2,%ymm6,%ymm8
  82366d:	c4 41 45 59 c8       	vmulpd %ymm8,%ymm7,%ymm9
  823672:	c4 01 7d 11 0c eb    	vmovupd %ymm9,(%r11,%r13,8)
  823678:	49 83 c5 04          	add    $0x4,%r13
  82367c:	4d 3b ee             	cmp    %r14,%r13
  82367f:	72 c8                	jb     823649 <pre_step3d_mod_mp_pre_step3d_tile_+0xf1a9>
  823681:	4c 8b b5 20 fd ff ff 	mov    -0x2e0(%rbp),%r14
  823688:	49 3b c6             	cmp    %r14,%rax
  82368b:	73 64                	jae    8236f1 <pre_step3d_mod_mp_pre_step3d_tile_+0xf251>
  82368d:	4c 8b 95 e8 fc ff ff 	mov    -0x318(%rbp),%r10
  823694:	48 8b b5 08 f9 ff ff 	mov    -0x6f8(%rbp),%rsi
  82369b:	4c 8b a5 78 f9 ff ff 	mov    -0x688(%rbp),%r12
  8236a2:	4c 8b 9d 28 fa ff ff 	mov    -0x5d8(%rbp),%r11
  8236a9:	4c 03 d2             	add    %rdx,%r10
  8236ac:	48 03 f2             	add    %rdx,%rsi
  8236af:	4d 8d 2c 14          	lea    (%r12,%rdx,1),%r13
  8236b3:	4e 8d 24 0f          	lea    (%rdi,%r9,1),%r12
  8236b7:	4d 03 d9             	add    %r9,%r11
  8236ba:	c4 c1 7b 10 64 c5 00 	vmovsd 0x0(%r13,%rax,8),%xmm4
  8236c1:	c4 c1 7b 10 2c c4    	vmovsd (%r12,%rax,8),%xmm5
  8236c7:	c4 c1 7b 59 3c c0    	vmulsd (%r8,%rax,8),%xmm0,%xmm7
  8236cd:	c4 c1 5b 5c 74 c2 f8 	vsubsd -0x8(%r10,%rax,8),%xmm4,%xmm6
  8236d4:	c4 41 53 58 04 c3    	vaddsd (%r11,%rax,8),%xmm5,%xmm8
  8236da:	c4 62 c9 bd c3       	vfnmadd231sd %xmm3,%xmm6,%xmm8
  8236df:	c4 41 43 59 c8       	vmulsd %xmm8,%xmm7,%xmm9
  8236e4:	c5 7b 11 0c c6       	vmovsd %xmm9,(%rsi,%rax,8)
  8236e9:	48 ff c0             	inc    %rax
  8236ec:	49 3b c6             	cmp    %r14,%rax
  8236ef:	72 c9                	jb     8236ba <pre_step3d_mod_mp_pre_step3d_tile_+0xf21a>
  8236f1:	48 ff c1             	inc    %rcx
  8236f4:	48 03 95 80 fc ff ff 	add    -0x380(%rbp),%rdx
  8236fb:	4c 03 85 18 fc ff ff 	add    -0x3e8(%rbp),%r8
  823702:	4c 03 8d 00 fc ff ff 	add    -0x400(%rbp),%r9
  823709:	48 3b 8d 70 fc ff ff 	cmp    -0x390(%rbp),%rcx
  823710:	0f 82 dd fe ff ff    	jb     8235f3 <pre_step3d_mod_mp_pre_step3d_tile_+0xf153>
  823716:	e9 95 03 00 00       	jmpq   823ab0 <pre_step3d_mod_mp_pre_step3d_tile_+0xf610>
  82371b:	33 ff                	xor    %edi,%edi
  82371d:	8b 95 50 f8 ff ff    	mov    -0x7b0(%rbp),%edx
  823723:	33 c9                	xor    %ecx,%ecx
  823725:	45 33 c0             	xor    %r8d,%r8d
  823728:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  82372e:	48 89 ca             	mov    %rcx,%rdx
  823731:	0f 8c 95 03 00 00    	jl     823acc <pre_step3d_mod_mp_pre_step3d_tile_+0xf62c>
  823737:	4c 8b 95 e0 f7 ff ff 	mov    -0x820(%rbp),%r10
  82373e:	4c 8b 9d 28 fc ff ff 	mov    -0x3d8(%rbp),%r11
  823745:	48 8b b5 a8 f7 ff ff 	mov    -0x858(%rbp),%rsi
  82374c:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  823753:	c5 fb 10 25 e5 40 0a 	vmovsd 0xa40e5(%rip),%xmm4        # 8c7840 <__STRLITPACK_199.115+0x8b0>
  82375a:	00 
  82375b:	4f 8d 0c 1a          	lea    (%r10,%r11,1),%r9
  82375f:	4c 89 8d a8 fa ff ff 	mov    %r9,-0x558(%rbp)
  823766:	4c 8b 95 88 f9 ff ff 	mov    -0x678(%rbp),%r10
  82376d:	4c 8b 8d b8 f7 ff ff 	mov    -0x848(%rbp),%r9
  823774:	c5 f9 10 15 64 35 0a 	vmovupd 0xa3564(%rip),%xmm2        # 8c6ce0 <__STRLITPACK_54.50+0xc0>
  82377b:	00 
  82377c:	c5 f9 10 1d 1c 30 0a 	vmovupd 0xa301c(%rip),%xmm3        # 8c67a0 <__STRLITPACK_19.34+0x10>
  823783:	00 
  823784:	4d 03 d3             	add    %r11,%r10
  823787:	4c 89 95 40 fa ff ff 	mov    %r10,-0x5c0(%rbp)
  82378e:	4d 03 cb             	add    %r11,%r9
  823791:	4c 89 8d 38 fa ff ff 	mov    %r9,-0x5c8(%rbp)
  823798:	4c 03 de             	add    %rsi,%r11
  82379b:	4c 89 9d 30 fa ff ff 	mov    %r11,-0x5d0(%rbp)
  8237a2:	8b 85 d0 fc ff ff    	mov    -0x330(%rbp),%eax
  8237a8:	3b 85 d8 fc ff ff    	cmp    -0x328(%rbp),%eax
  8237ae:	0f 8c d7 02 00 00    	jl     823a8b <pre_step3d_mod_mp_pre_step3d_tile_+0xf5eb>
  8237b4:	49 83 fe 04          	cmp    $0x4,%r14
  8237b8:	0f 8c bf 20 00 00    	jl     82587d <pre_step3d_mod_mp_pre_step3d_tile_+0x113dd>
  8237be:	48 8b 85 38 fa ff ff 	mov    -0x5c8(%rbp),%rax
  8237c5:	4c 8b ad 60 f9 ff ff 	mov    -0x6a0(%rbp),%r13
  8237cc:	4c 8b bd 78 f9 ff ff 	mov    -0x688(%rbp),%r15
  8237d3:	4c 8b a5 18 fd ff ff 	mov    -0x2e8(%rbp),%r12
  8237da:	49 03 c0             	add    %r8,%rax
  8237dd:	48 89 85 58 fa ff ff 	mov    %rax,-0x5a8(%rbp)
  8237e4:	4c 03 e9             	add    %rcx,%r13
  8237e7:	48 8b 85 a8 fa ff ff 	mov    -0x558(%rbp),%rax
  8237ee:	4c 03 f9             	add    %rcx,%r15
  8237f1:	4c 8b 9d e8 fc ff ff 	mov    -0x318(%rbp),%r11
  8237f8:	4c 8b 95 08 f9 ff ff 	mov    -0x6f8(%rbp),%r10
  8237ff:	4c 8b 8d 58 f9 ff ff 	mov    -0x6a8(%rbp),%r9
  823806:	49 03 c0             	add    %r8,%rax
  823809:	48 89 85 50 fa ff ff 	mov    %rax,-0x5b0(%rbp)
  823810:	4c 03 d9             	add    %rcx,%r11
  823813:	48 8b 85 30 fa ff ff 	mov    -0x5d0(%rbp),%rax
  82381a:	4c 03 d1             	add    %rcx,%r10
  82381d:	48 8b b5 40 f9 ff ff 	mov    -0x6c0(%rbp),%rsi
  823824:	4c 03 c9             	add    %rcx,%r9
  823827:	4c 89 a5 c0 fc ff ff 	mov    %r12,-0x340(%rbp)
  82382e:	45 33 e4             	xor    %r12d,%r12d
  823831:	4c 89 ad 78 fd ff ff 	mov    %r13,-0x288(%rbp)
  823838:	49 03 c0             	add    %r8,%rax
  82383b:	48 89 85 48 fa ff ff 	mov    %rax,-0x5b8(%rbp)
  823842:	48 03 f2             	add    %rdx,%rsi
  823845:	48 8b 85 40 fa ff ff 	mov    -0x5c0(%rbp),%rax
  82384c:	4c 89 85 60 fb ff ff 	mov    %r8,-0x4a0(%rbp)
  823853:	48 89 95 68 fb ff ff 	mov    %rdx,-0x498(%rbp)
  82385a:	48 89 8d 70 fb ff ff 	mov    %rcx,-0x490(%rbp)
  823861:	49 03 c0             	add    %r8,%rax
  823864:	48 89 85 88 fd ff ff 	mov    %rax,-0x278(%rbp)
  82386b:	48 8b 85 38 f9 ff ff 	mov    -0x6c8(%rbp),%rax
  823872:	48 89 bd 78 fb ff ff 	mov    %rdi,-0x488(%rbp)
  823879:	4c 89 bd 70 fd ff ff 	mov    %r15,-0x290(%rbp)
  823880:	48 8b 8d 48 fa ff ff 	mov    -0x5b8(%rbp),%rcx
  823887:	48 03 c2             	add    %rdx,%rax
  82388a:	48 89 85 80 fd ff ff 	mov    %rax,-0x280(%rbp)
  823891:	33 c0                	xor    %eax,%eax
  823893:	48 89 c2             	mov    %rax,%rdx
  823896:	48 8b bd 50 fa ff ff 	mov    -0x5b0(%rbp),%rdi
  82389d:	4c 8b 85 58 fa ff ff 	mov    -0x5a8(%rbp),%r8
  8238a4:	4c 8b ad 08 fc ff ff 	mov    -0x3f8(%rbp),%r13
  8238ab:	4c 8b b5 10 fd ff ff 	mov    -0x2f0(%rbp),%r14
  8238b2:	4c 8b bd 70 fd ff ff 	mov    -0x290(%rbp),%r15
  8238b9:	c4 81 79 10 74 e1 10 	vmovupd 0x10(%r9,%r12,8),%xmm6
  8238c0:	c4 81 79 10 2c e7    	vmovupd (%r15,%r12,8),%xmm5
  8238c6:	c4 81 49 5c 4c e3 08 	vsubpd 0x8(%r11,%r12,8),%xmm6,%xmm1
  8238cd:	c4 01 51 5c 74 e3 f8 	vsubpd -0x8(%r11,%r12,8),%xmm5,%xmm14
  8238d4:	4c 8d 3c 06          	lea    (%rsi,%rax,1),%r15
  8238d8:	c4 c1 7b 10 3f       	vmovsd (%r15),%xmm7
  8238dd:	c4 01 41 16 04 2f    	vmovhpd (%r15,%r13,1),%xmm7,%xmm8
  8238e3:	4c 8d 3c 11          	lea    (%rcx,%rdx,1),%r15
  8238e7:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  8238ec:	c4 01 31 16 1c 37    	vmovhpd (%r15,%r14,1),%xmm9,%xmm11
  8238f2:	4c 8b bd 88 fd ff ff 	mov    -0x278(%rbp),%r15
  8238f9:	c5 39 59 fb          	vmulpd %xmm3,%xmm8,%xmm15
  8238fd:	4c 03 fa             	add    %rdx,%r15
  823900:	c4 41 7b 10 17       	vmovsd (%r15),%xmm10
  823905:	c4 01 29 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm10,%xmm13
  82390b:	4c 8b bd 80 fd ff ff 	mov    -0x280(%rbp),%r15
  823912:	c4 c1 21 58 ed       	vaddpd %xmm13,%xmm11,%xmm5
  823917:	c4 e2 89 bc ea       	vfnmadd231pd %xmm2,%xmm14,%xmm5
  82391c:	4c 03 f8             	add    %rax,%r15
  82391f:	c4 c1 7b 10 3f       	vmovsd (%r15),%xmm7
  823924:	c4 01 41 16 04 2f    	vmovhpd (%r15,%r13,1),%xmm7,%xmm8
  82392a:	c5 39 59 f3          	vmulpd %xmm3,%xmm8,%xmm14
  82392e:	c5 81 59 f5          	vmulpd %xmm5,%xmm15,%xmm6
  823932:	c4 81 79 11 34 e2    	vmovupd %xmm6,(%r10,%r12,8)
  823938:	4d 8d 3c 10          	lea    (%r8,%rdx,1),%r15
  82393c:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  823941:	4a 8d 04 a8          	lea    (%rax,%r13,4),%rax
  823945:	c4 01 31 16 1c 37    	vmovhpd (%r15,%r14,1),%xmm9,%xmm11
  82394b:	4c 8d 3c 17          	lea    (%rdi,%rdx,1),%r15
  82394f:	c4 41 7b 10 17       	vmovsd (%r15),%xmm10
  823954:	4a 8d 14 b2          	lea    (%rdx,%r14,4),%rdx
  823958:	c4 01 29 16 2c 37    	vmovhpd (%r15,%r14,1),%xmm10,%xmm13
  82395e:	c4 c1 21 58 ed       	vaddpd %xmm13,%xmm11,%xmm5
  823963:	c4 e2 f1 bc ea       	vfnmadd231pd %xmm2,%xmm1,%xmm5
  823968:	c5 89 59 cd          	vmulpd %xmm5,%xmm14,%xmm1
  82396c:	4c 8b bd 78 fd ff ff 	mov    -0x288(%rbp),%r15
  823973:	c4 81 79 11 4c e7 10 	vmovupd %xmm1,0x10(%r15,%r12,8)
  82397a:	49 83 c4 04          	add    $0x4,%r12
  82397e:	4c 3b a5 18 fd ff ff 	cmp    -0x2e8(%rbp),%r12
  823985:	0f 82 27 ff ff ff    	jb     8238b2 <pre_step3d_mod_mp_pre_step3d_tile_+0xf412>
  82398b:	4c 8b 85 60 fb ff ff 	mov    -0x4a0(%rbp),%r8
  823992:	48 8b 95 68 fb ff ff 	mov    -0x498(%rbp),%rdx
  823999:	48 8b 8d 70 fb ff ff 	mov    -0x490(%rbp),%rcx
  8239a0:	48 8b bd 78 fb ff ff 	mov    -0x488(%rbp),%rdi
  8239a7:	4c 8b b5 20 fd ff ff 	mov    -0x2e0(%rbp),%r14
  8239ae:	4c 8b a5 10 fd ff ff 	mov    -0x2f0(%rbp),%r12
  8239b5:	48 8b 85 c0 fc ff ff 	mov    -0x340(%rbp),%rax
  8239bc:	4c 8b 9d 08 fc ff ff 	mov    -0x3f8(%rbp),%r11
  8239c3:	4c 0f af e0          	imul   %rax,%r12
  8239c7:	4c 0f af d8          	imul   %rax,%r11
  8239cb:	49 3b c6             	cmp    %r14,%rax
  8239ce:	0f 83 b7 00 00 00    	jae    823a8b <pre_step3d_mod_mp_pre_step3d_tile_+0xf5eb>
  8239d4:	4c 8b 95 e8 fc ff ff 	mov    -0x318(%rbp),%r10
  8239db:	4c 8b 8d 08 f9 ff ff 	mov    -0x6f8(%rbp),%r9
  8239e2:	48 8b b5 78 f9 ff ff 	mov    -0x688(%rbp),%rsi
  8239e9:	48 8b 85 40 f9 ff ff 	mov    -0x6c0(%rbp),%rax
  8239f0:	4c 03 d1             	add    %rcx,%r10
  8239f3:	4c 8b ad 30 fa ff ff 	mov    -0x5d0(%rbp),%r13
  8239fa:	4c 03 c9             	add    %rcx,%r9
  8239fd:	4c 8b bd 40 fa ff ff 	mov    -0x5c0(%rbp),%r15
  823a04:	48 03 f1             	add    %rcx,%rsi
  823a07:	48 89 95 68 fb ff ff 	mov    %rdx,-0x498(%rbp)
  823a0e:	48 03 c2             	add    %rdx,%rax
  823a11:	48 89 8d 70 fb ff ff 	mov    %rcx,-0x490(%rbp)
  823a18:	4d 03 e8             	add    %r8,%r13
  823a1b:	48 89 bd 78 fb ff ff 	mov    %rdi,-0x488(%rbp)
  823a22:	4d 03 f8             	add    %r8,%r15
  823a25:	48 8b 95 c0 fc ff ff 	mov    -0x340(%rbp),%rdx
  823a2c:	48 8b 8d 08 fc ff ff 	mov    -0x3f8(%rbp),%rcx
  823a33:	48 8b bd 10 fd ff ff 	mov    -0x2f0(%rbp),%rdi
  823a3a:	c5 fb 10 0c d6       	vmovsd (%rsi,%rdx,8),%xmm1
  823a3f:	c4 81 7b 10 2c 2c    	vmovsd (%r12,%r13,1),%xmm5
  823a45:	c4 c1 7b 59 3c 03    	vmulsd (%r11,%rax,1),%xmm0,%xmm7
  823a4b:	4c 03 d9             	add    %rcx,%r11
  823a4e:	c4 c1 73 5c 74 d2 f8 	vsubsd -0x8(%r10,%rdx,8),%xmm1,%xmm6
  823a55:	c4 01 53 58 04 3c    	vaddsd (%r12,%r15,1),%xmm5,%xmm8
  823a5b:	c4 62 c9 bd c4       	vfnmadd231sd %xmm4,%xmm6,%xmm8
  823a60:	4c 03 e7             	add    %rdi,%r12
  823a63:	c4 41 43 59 c8       	vmulsd %xmm8,%xmm7,%xmm9
  823a68:	c4 41 7b 11 0c d1    	vmovsd %xmm9,(%r9,%rdx,8)
  823a6e:	48 ff c2             	inc    %rdx
  823a71:	49 3b d6             	cmp    %r14,%rdx
  823a74:	72 c4                	jb     823a3a <pre_step3d_mod_mp_pre_step3d_tile_+0xf59a>
  823a76:	48 8b 95 68 fb ff ff 	mov    -0x498(%rbp),%rdx
  823a7d:	48 8b 8d 70 fb ff ff 	mov    -0x490(%rbp),%rcx
  823a84:	48 8b bd 78 fb ff ff 	mov    -0x488(%rbp),%rdi
  823a8b:	48 ff c7             	inc    %rdi
  823a8e:	48 03 8d 80 fc ff ff 	add    -0x380(%rbp),%rcx
  823a95:	48 03 95 18 fc ff ff 	add    -0x3e8(%rbp),%rdx
  823a9c:	4c 03 85 00 fc ff ff 	add    -0x400(%rbp),%r8
  823aa3:	48 3b bd 70 fc ff ff 	cmp    -0x390(%rbp),%rdi
  823aaa:	0f 82 f2 fc ff ff    	jb     8237a2 <pre_step3d_mod_mp_pre_step3d_tile_+0xf302>
  823ab0:	4c 8b a5 18 fd ff ff 	mov    -0x2e8(%rbp),%r12
  823ab7:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  823abe:	4c 8b bd 80 fc ff ff 	mov    -0x380(%rbp),%r15
  823ac5:	48 8b 85 80 f8 ff ff 	mov    -0x780(%rbp),%rax
  823acc:	33 d2                	xor    %edx,%edx
  823ace:	48 83 bd 78 f8 ff ff 	cmpq   $0x0,-0x788(%rbp)
  823ad5:	00 
  823ad6:	7e 52                	jle    823b2a <pre_step3d_mod_mp_pre_step3d_tile_+0xf68a>
  823ad8:	bf 01 00 00 00       	mov    $0x1,%edi
  823add:	33 c9                	xor    %ecx,%ecx
  823adf:	48 83 bd 88 f8 ff ff 	cmpq   $0x0,-0x778(%rbp)
  823ae6:	00 
  823ae7:	74 2b                	je     823b14 <pre_step3d_mod_mp_pre_step3d_tile_+0xf674>
  823ae9:	48 8b bd 88 f8 ff ff 	mov    -0x778(%rbp),%rdi
  823af0:	4c 8b 85 58 f8 ff ff 	mov    -0x7a8(%rbp),%r8
  823af7:	4c 8b 8d 60 f8 ff ff 	mov    -0x7a0(%rbp),%r9
  823afe:	41 0b 14 c8          	or     (%r8,%rcx,8),%edx
  823b02:	41 0b 54 c9 04       	or     0x4(%r9,%rcx,8),%edx
  823b07:	48 ff c1             	inc    %rcx
  823b0a:	48 3b cf             	cmp    %rdi,%rcx
  823b0d:	72 ef                	jb     823afe <pre_step3d_mod_mp_pre_step3d_tile_+0xf65e>
  823b0f:	48 8d 7c 09 01       	lea    0x1(%rcx,%rcx,1),%rdi
  823b14:	48 ff cf             	dec    %rdi
  823b17:	48 3b bd 78 f8 ff ff 	cmp    -0x788(%rbp),%rdi
  823b1e:	73 0a                	jae    823b2a <pre_step3d_mod_mp_pre_step3d_tile_+0xf68a>
  823b20:	48 8b 8d 58 f8 ff ff 	mov    -0x7a8(%rbp),%rcx
  823b27:	0b 14 b9             	or     (%rcx,%rdi,4),%edx
  823b2a:	48 8b bd d0 f8 ff ff 	mov    -0x730(%rbp),%rdi
  823b31:	48 8b 8d c8 f8 ff ff 	mov    -0x738(%rbp),%rcx
  823b38:	f6 04 39 01          	testb  $0x1,(%rcx,%rdi,1)
  823b3c:	0f 84 54 03 00 00    	je     823e96 <pre_step3d_mod_mp_pre_step3d_tile_+0xf9f6>
  823b42:	f6 c2 01             	test   $0x1,%dl
  823b45:	0f 84 4b 03 00 00    	je     823e96 <pre_step3d_mod_mp_pre_step3d_tile_+0xf9f6>
  823b4b:	48 8b 95 10 f7 ff ff 	mov    -0x8f0(%rbp),%rdx
  823b52:	48 8b 8d 18 f7 ff ff 	mov    -0x8e8(%rbp),%rcx
  823b59:	44 8b 04 0a          	mov    (%rdx,%rcx,1),%r8d
  823b5d:	45 85 c0             	test   %r8d,%r8d
  823b60:	0f 8e 30 03 00 00    	jle    823e96 <pre_step3d_mod_mp_pre_step3d_tile_+0xf9f6>
  823b66:	48 8b 95 08 f7 ff ff 	mov    -0x8f8(%rbp),%rdx
  823b6d:	48 8b 8d 38 f8 ff ff 	mov    -0x7c8(%rbp),%rcx
  823b74:	8b 7c 8a 04          	mov    0x4(%rdx,%rcx,4),%edi
  823b78:	48 ff c1             	inc    %rcx
  823b7b:	48 89 8d 38 f8 ff ff 	mov    %rcx,-0x7c8(%rbp)
  823b82:	f7 c7 01 00 00 00    	test   $0x1,%edi
  823b88:	75 17                	jne    823ba1 <pre_step3d_mod_mp_pre_step3d_tile_+0xf701>
  823b8a:	48 8b 95 f0 f8 ff ff 	mov    -0x710(%rbp),%rdx
  823b91:	48 8b 8d 28 fc ff ff 	mov    -0x3d8(%rbp),%rcx
  823b98:	4c 8d 04 0a          	lea    (%rdx,%rcx,1),%r8
  823b9c:	e9 0e 03 00 00       	jmpq   823eaf <pre_step3d_mod_mp_pre_step3d_tile_+0xfa0f>
  823ba1:	4c 8b 8d f0 f8 ff ff 	mov    -0x710(%rbp),%r9
  823ba8:	33 c9                	xor    %ecx,%ecx
  823baa:	48 8b bd 28 fc ff ff 	mov    -0x3d8(%rbp),%rdi
  823bb1:	48 8b 95 88 f4 ff ff 	mov    -0xb78(%rbp),%rdx
  823bb8:	48 8b b5 f8 f5 ff ff 	mov    -0xa08(%rbp),%rsi
  823bbf:	4d 63 c0             	movslq %r8d,%r8
  823bc2:	4c 8d a5 78 f4 ff ff 	lea    -0xb88(%rbp),%r12
  823bc9:	4d 89 04 24          	mov    %r8,(%r12)
  823bcd:	4d 8d 04 39          	lea    (%r9,%rdi,1),%r8
  823bd1:	48 8d bc 16 80 00 00 	lea    0x80(%rsi,%rdx,1),%rdi
  823bd8:	00 
  823bd9:	4c 8b 0f             	mov    (%rdi),%r9
  823bdc:	4c 8b 57 08          	mov    0x8(%rdi),%r10
  823be0:	4d 0f af d1          	imul   %r9,%r10
  823be4:	48 8b 7f c8          	mov    -0x38(%rdi),%rdi
  823be8:	4c 8b 5c 16 40       	mov    0x40(%rsi,%rdx,1),%r11
  823bed:	49 2b fa             	sub    %r10,%rdi
  823bf0:	4c 8b 54 16 38       	mov    0x38(%rsi,%rdx,1),%r10
  823bf5:	4d 0f af da          	imul   %r10,%r11
  823bf9:	4c 8d b5 e8 f1 ff ff 	lea    -0xe18(%rbp),%r14
  823c00:	49 89 0e             	mov    %rcx,(%r14)
  823c03:	48 8b 14 16          	mov    (%rsi,%rdx,1),%rdx
  823c07:	4c 89 85 f0 f7 ff ff 	mov    %r8,-0x810(%rbp)
  823c0e:	49 2b d3             	sub    %r11,%rdx
  823c11:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  823c18:	49 8b 04 24          	mov    (%r12),%rax
  823c1c:	49 89 c8             	mov    %rcx,%r8
  823c1f:	4d 8b 1e             	mov    (%r14),%r11
  823c22:	4d 03 c2             	add    %r10,%r8
  823c25:	49 03 c9             	add    %r9,%rcx
  823c28:	49 ff c3             	inc    %r11
  823c2b:	41 8b 34 10          	mov    (%r8,%rdx,1),%esi
  823c2f:	44 8b 24 39          	mov    (%rcx,%rdi,1),%r12d
  823c33:	3b b5 d8 fc ff ff    	cmp    -0x328(%rbp),%esi
  823c39:	0f 8c 29 02 00 00    	jl     823e68 <pre_step3d_mod_mp_pre_step3d_tile_+0xf9c8>
  823c3f:	3b b5 78 fc ff ff    	cmp    -0x388(%rbp),%esi
  823c45:	0f 8f 1d 02 00 00    	jg     823e68 <pre_step3d_mod_mp_pre_step3d_tile_+0xf9c8>
  823c4b:	44 3b a5 40 f8 ff ff 	cmp    -0x7c0(%rbp),%r12d
  823c52:	0f 8c 10 02 00 00    	jl     823e68 <pre_step3d_mod_mp_pre_step3d_tile_+0xf9c8>
  823c58:	44 3b a5 50 f8 ff ff 	cmp    -0x7b0(%rbp),%r12d
  823c5f:	0f 8f 03 02 00 00    	jg     823e68 <pre_step3d_mod_mp_pre_step3d_tile_+0xf9c8>
  823c65:	4c 8b ad f8 f5 ff ff 	mov    -0xa08(%rbp),%r13
  823c6c:	4c 8b b5 88 f4 ff ff 	mov    -0xb78(%rbp),%r14
  823c73:	4d 63 e4             	movslq %r12d,%r12
  823c76:	4c 89 a5 a8 f4 ff ff 	mov    %r12,-0xb58(%rbp)
  823c7d:	4f 8b a4 35 60 02 00 	mov    0x260(%r13,%r14,1),%r12
  823c84:	00 
  823c85:	4c 89 a5 a0 f4 ff ff 	mov    %r12,-0xb60(%rbp)
  823c8c:	4f 8b a4 35 78 02 00 	mov    0x278(%r13,%r14,1),%r12
  823c93:	00 
  823c94:	4c 89 a5 90 f4 ff ff 	mov    %r12,-0xb70(%rbp)
  823c9b:	4f 8b a4 35 90 02 00 	mov    0x290(%r13,%r14,1),%r12
  823ca2:	00 
  823ca3:	4c 89 a5 98 f4 ff ff 	mov    %r12,-0xb68(%rbp)
  823caa:	4f 8b a4 35 d0 00 00 	mov    0xd0(%r13,%r14,1),%r12
  823cb1:	00 
  823cb2:	49 f7 dc             	neg    %r12
  823cb5:	4d 03 e3             	add    %r11,%r12
  823cb8:	4f 0f af a4 35 c8 00 	imul   0xc8(%r13,%r14,1),%r12
  823cbf:	00 00 
  823cc1:	4f 8b ac 35 90 00 00 	mov    0x90(%r13,%r14,1),%r13
  823cc8:	00 
  823cc9:	48 63 f6             	movslq %esi,%rsi
  823ccc:	c4 01 7b 2c 74 25 00 	vcvttsd2si 0x0(%r13,%r12,1),%r14d
  823cd3:	4c 8b a5 a8 f4 ff ff 	mov    -0xb58(%rbp),%r12
  823cda:	45 85 f6             	test   %r14d,%r14d
  823cdd:	0f 85 c5 00 00 00    	jne    823da8 <pre_step3d_mod_mp_pre_step3d_tile_+0xf908>
  823ce3:	48 89 95 80 f4 ff ff 	mov    %rdx,-0xb80(%rbp)
  823cea:	48 89 85 78 f4 ff ff 	mov    %rax,-0xb88(%rbp)
  823cf1:	48 8b 95 10 fc ff ff 	mov    -0x3f0(%rbp),%rdx
  823cf8:	48 8b 85 20 fc ff ff 	mov    -0x3e0(%rbp),%rax
  823cff:	48 0f af d6          	imul   %rsi,%rdx
  823d03:	49 0f af c4          	imul   %r12,%rax
  823d07:	4d 0f af e7          	imul   %r15,%r12
  823d0b:	4c 8b b5 88 f4 ff ff 	mov    -0xb78(%rbp),%r14
  823d12:	48 03 d0             	add    %rax,%rdx
  823d15:	4c 8b ad 68 f4 ff ff 	mov    -0xb98(%rbp),%r13
  823d1c:	49 8d 34 f4          	lea    (%r12,%rsi,8),%rsi
  823d20:	4c 8b a5 f8 f5 ff ff 	mov    -0xa08(%rbp),%r12
  823d27:	c4 a1 7b 10 0c 2a    	vmovsd (%rdx,%r13,1),%xmm1
  823d2d:	4b 8b 84 34 80 02 00 	mov    0x280(%r12,%r14,1),%rax
  823d34:	00 
  823d35:	48 f7 d8             	neg    %rax
  823d38:	4b 8b 94 34 98 02 00 	mov    0x298(%r12,%r14,1),%rdx
  823d3f:	00 
  823d40:	48 03 85 70 f4 ff ff 	add    -0xb90(%rbp),%rax
  823d47:	48 f7 da             	neg    %rdx
  823d4a:	48 03 95 38 f8 ff ff 	add    -0x7c8(%rbp),%rdx
  823d51:	48 0f af 85 90 f4 ff 	imul   -0xb70(%rbp),%rax
  823d58:	ff 
  823d59:	48 0f af 95 98 f4 ff 	imul   -0xb68(%rbp),%rdx
  823d60:	ff 
  823d61:	4f 8b ac 34 68 02 00 	mov    0x268(%r12,%r14,1),%r13
  823d68:	00 
  823d69:	49 f7 dd             	neg    %r13
  823d6c:	4d 03 eb             	add    %r11,%r13
  823d6f:	4c 0f af ad a0 f4 ff 	imul   -0xb60(%rbp),%r13
  823d76:	ff 
  823d77:	4b 03 84 34 28 02 00 	add    0x228(%r12,%r14,1),%rax
  823d7e:	00 
  823d7f:	48 03 d0             	add    %rax,%rdx
  823d82:	4c 8b a5 50 f4 ff ff 	mov    -0xbb0(%rbp),%r12
  823d89:	48 8b 85 78 f4 ff ff 	mov    -0xb88(%rbp),%rax
  823d90:	c4 a1 73 59 14 2a    	vmulsd (%rdx,%r13,1),%xmm1,%xmm2
  823d96:	c4 a1 7b 11 14 26    	vmovsd %xmm2,(%rsi,%r12,1)
  823d9c:	48 8b 95 80 f4 ff ff 	mov    -0xb80(%rbp),%rdx
  823da3:	e9 c0 00 00 00       	jmpq   823e68 <pre_step3d_mod_mp_pre_step3d_tile_+0xf9c8>
  823da8:	48 89 95 80 f4 ff ff 	mov    %rdx,-0xb80(%rbp)
  823daf:	48 89 85 78 f4 ff ff 	mov    %rax,-0xb88(%rbp)
  823db6:	48 8b 95 08 fc ff ff 	mov    -0x3f8(%rbp),%rdx
  823dbd:	48 8b 85 18 fc ff ff 	mov    -0x3e8(%rbp),%rax
  823dc4:	48 0f af d6          	imul   %rsi,%rdx
  823dc8:	49 0f af c4          	imul   %r12,%rax
  823dcc:	4d 0f af e7          	imul   %r15,%r12
  823dd0:	4c 8b b5 88 f4 ff ff 	mov    -0xb78(%rbp),%r14
  823dd7:	48 03 d0             	add    %rax,%rdx
  823dda:	4c 8b ad 60 f4 ff ff 	mov    -0xba0(%rbp),%r13
  823de1:	49 8d 34 f4          	lea    (%r12,%rsi,8),%rsi
  823de5:	4c 8b a5 f8 f5 ff ff 	mov    -0xa08(%rbp),%r12
  823dec:	c4 a1 7b 10 0c 2a    	vmovsd (%rdx,%r13,1),%xmm1
  823df2:	4b 8b 84 34 80 02 00 	mov    0x280(%r12,%r14,1),%rax
  823df9:	00 
  823dfa:	48 f7 d8             	neg    %rax
  823dfd:	4b 8b 94 34 98 02 00 	mov    0x298(%r12,%r14,1),%rdx
  823e04:	00 
  823e05:	48 03 85 70 f4 ff ff 	add    -0xb90(%rbp),%rax
  823e0c:	48 f7 da             	neg    %rdx
  823e0f:	48 03 95 38 f8 ff ff 	add    -0x7c8(%rbp),%rdx
  823e16:	48 0f af 85 90 f4 ff 	imul   -0xb70(%rbp),%rax
  823e1d:	ff 
  823e1e:	48 0f af 95 98 f4 ff 	imul   -0xb68(%rbp),%rdx
  823e25:	ff 
  823e26:	4f 8b ac 34 68 02 00 	mov    0x268(%r12,%r14,1),%r13
  823e2d:	00 
  823e2e:	49 f7 dd             	neg    %r13
  823e31:	4d 03 eb             	add    %r11,%r13
  823e34:	4c 0f af ad a0 f4 ff 	imul   -0xb60(%rbp),%r13
  823e3b:	ff 
  823e3c:	4b 03 84 34 28 02 00 	add    0x228(%r12,%r14,1),%rax
  823e43:	00 
  823e44:	48 03 d0             	add    %rax,%rdx
  823e47:	4c 8b a5 58 f4 ff ff 	mov    -0xba8(%rbp),%r12
  823e4e:	48 8b 85 78 f4 ff ff 	mov    -0xb88(%rbp),%rax
  823e55:	c4 a1 73 59 14 2a    	vmulsd (%rdx,%r13,1),%xmm1,%xmm2
  823e5b:	c4 a1 7b 11 14 26    	vmovsd %xmm2,(%rsi,%r12,1)
  823e61:	48 8b 95 80 f4 ff ff 	mov    -0xb80(%rbp),%rdx
  823e68:	4c 3b d8             	cmp    %rax,%r11
  823e6b:	0f 82 b1 fd ff ff    	jb     823c22 <pre_step3d_mod_mp_pre_step3d_tile_+0xf782>
  823e71:	4c 8b 85 f0 f7 ff ff 	mov    -0x810(%rbp),%r8
  823e78:	4c 8b a5 18 fd ff ff 	mov    -0x2e8(%rbp),%r12
  823e7f:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  823e86:	4c 8b b5 20 fd ff ff 	mov    -0x2e0(%rbp),%r14
  823e8d:	48 8b 85 80 f8 ff ff 	mov    -0x780(%rbp),%rax
  823e94:	eb 19                	jmp    823eaf <pre_step3d_mod_mp_pre_step3d_tile_+0xfa0f>
  823e96:	48 8b 95 f0 f8 ff ff 	mov    -0x710(%rbp),%rdx
  823e9d:	48 8b 8d 28 fc ff ff 	mov    -0x3d8(%rbp),%rcx
  823ea4:	48 ff 85 38 f8 ff ff 	incq   -0x7c8(%rbp)
  823eab:	4c 8d 04 0a          	lea    (%rdx,%rcx,1),%r8
  823eaf:	48 8b 95 70 f8 ff ff 	mov    -0x790(%rbp),%rdx
  823eb6:	48 8b 8d a0 f8 ff ff 	mov    -0x760(%rbp),%rcx
  823ebd:	4c 8b 8d c0 f8 ff ff 	mov    -0x740(%rbp),%r9
  823ec4:	48 8b bd b8 f8 ff ff 	mov    -0x748(%rbp),%rdi
  823ecb:	c5 fb 10 0c ca       	vmovsd (%rdx,%rcx,8),%xmm1
  823ed0:	4c 8b 9d a8 f8 ff ff 	mov    -0x758(%rbp),%r11
  823ed7:	48 8b 95 b0 f8 ff ff 	mov    -0x750(%rbp),%rdx
  823ede:	46 8b 14 0f          	mov    (%rdi,%r9,1),%r10d
  823ee2:	45 3b 14 13          	cmp    (%r11,%rdx,1),%r10d
  823ee6:	75 13                	jne    823efb <pre_step3d_mod_mp_pre_step3d_tile_+0xfa5b>
  823ee8:	c5 7b 59 d9          	vmulsd %xmm1,%xmm0,%xmm11
  823eec:	c5 7b 10 2d 0c 31 0a 	vmovsd 0xa310c(%rip),%xmm13        # 8c7000 <__STRLITPACK_199.115+0x70>
  823ef3:	00 
  823ef4:	c4 41 29 57 d2       	vxorpd %xmm10,%xmm10,%xmm10
  823ef9:	eb 14                	jmp    823f0f <pre_step3d_mod_mp_pre_step3d_tile_+0xfa6f>
  823efb:	c5 1b 59 d9          	vmulsd %xmm1,%xmm12,%xmm11
  823eff:	c5 7b 10 2d 49 39 0a 	vmovsd 0xa3949(%rip),%xmm13        # 8c7850 <__STRLITPACK_199.115+0x8c0>
  823f06:	00 
  823f07:	c5 7b 10 15 49 39 0a 	vmovsd 0xa3949(%rip),%xmm10        # 8c7858 <__STRLITPACK_199.115+0x8c8>
  823f0e:	00 
  823f0f:	48 83 bd 08 fd ff ff 	cmpq   $0x8,-0x2f8(%rbp)
  823f16:	08 
  823f17:	0f 85 02 04 00 00    	jne    82431f <pre_step3d_mod_mp_pre_step3d_tile_+0xfe7f>
  823f1d:	48 83 bd 10 fd ff ff 	cmpq   $0x8,-0x2f0(%rbp)
  823f24:	08 
  823f25:	0f 85 89 03 00 00    	jne    8242b4 <pre_step3d_mod_mp_pre_step3d_tile_+0xfe14>
  823f2b:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  823f32:	48 8b 85 28 fc ff ff 	mov    -0x3d8(%rbp),%rax
  823f39:	48 8b 95 90 f8 ff ff 	mov    -0x770(%rbp),%rdx
  823f40:	48 8b 8d 98 f8 ff ff 	mov    -0x768(%rbp),%rcx
  823f47:	8b b5 68 f8 ff ff    	mov    -0x798(%rbp),%esi
  823f4d:	48 83 bd 00 fd ff ff 	cmpq   $0x8,-0x300(%rbp)
  823f54:	08 
  823f55:	0f 85 11 03 00 00    	jne    82426c <pre_step3d_mod_mp_pre_step3d_tile_+0xfdcc>
  823f5b:	48 83 bd f8 fc ff ff 	cmpq   $0x8,-0x308(%rbp)
  823f62:	08 
  823f63:	0f 85 03 03 00 00    	jne    82426c <pre_step3d_mod_mp_pre_step3d_tile_+0xfdcc>
  823f69:	45 33 e4             	xor    %r12d,%r12d
  823f6c:	45 33 c9             	xor    %r9d,%r9d
  823f6f:	4c 8b 95 c0 f1 ff ff 	mov    -0xe40(%rbp),%r10
  823f76:	45 33 db             	xor    %r11d,%r11d
  823f79:	4c 8b ad c8 f1 ff ff 	mov    -0xe38(%rbp),%r13
  823f80:	48 8b bd d0 f1 ff ff 	mov    -0xe30(%rbp),%rdi
  823f87:	3b b5 40 f8 ff ff    	cmp    -0x7c0(%rbp),%esi
  823f8d:	0f 8c a2 02 00 00    	jl     824235 <pre_step3d_mod_mp_pre_step3d_tile_+0xfd95>
  823f93:	c4 c2 7d 19 d5       	vbroadcastsd %xmm13,%ymm2
  823f98:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
  823f9c:	c4 c2 7d 19 ca       	vbroadcastsd %xmm10,%ymm1
  823fa1:	c4 c2 7d 19 db       	vbroadcastsd %xmm11,%ymm3
  823fa6:	4c 89 bd 68 fa ff ff 	mov    %r15,-0x598(%rbp)
  823fad:	4c 8d 34 02          	lea    (%rdx,%rax,1),%r14
  823fb1:	48 03 85 60 f7 ff ff 	add    -0x8a0(%rbp),%rax
  823fb8:	48 8b 95 20 fd ff ff 	mov    -0x2e0(%rbp),%rdx
  823fbf:	48 89 85 28 fc ff ff 	mov    %rax,-0x3d8(%rbp)
  823fc6:	4c 89 b5 60 fa ff ff 	mov    %r14,-0x5a0(%rbp)
  823fcd:	4c 89 85 f0 f7 ff ff 	mov    %r8,-0x810(%rbp)
  823fd4:	89 b5 68 f8 ff ff    	mov    %esi,-0x798(%rbp)
  823fda:	8b 85 d0 fc ff ff    	mov    -0x330(%rbp),%eax
  823fe0:	3b 85 d8 fc ff ff    	cmp    -0x328(%rbp),%eax
  823fe6:	0f 8c fb 01 00 00    	jl     8241e7 <pre_step3d_mod_mp_pre_step3d_tile_+0xfd47>
  823fec:	48 83 fa 04          	cmp    $0x4,%rdx
  823ff0:	0f 8c 38 18 00 00    	jl     82582e <pre_step3d_mod_mp_pre_step3d_tile_+0x1138e>
  823ff6:	48 8b 8d 08 f9 ff ff 	mov    -0x6f8(%rbp),%rcx
  823ffd:	45 33 c0             	xor    %r8d,%r8d
  824000:	4c 8b bd 70 f9 ff ff 	mov    -0x690(%rbp),%r15
  824007:	48 8b b5 80 f9 ff ff 	mov    -0x680(%rbp),%rsi
  82400e:	48 8b 85 18 fd ff ff 	mov    -0x2e8(%rbp),%rax
  824015:	4e 8d 34 09          	lea    (%rcx,%r9,1),%r14
  824019:	4c 89 b5 98 fa ff ff 	mov    %r14,-0x568(%rbp)
  824020:	4b 8d 0c 0f          	lea    (%r15,%r9,1),%rcx
  824024:	4c 8b bd 68 fa ff ff 	mov    -0x598(%rbp),%r15
  82402b:	49 03 f1             	add    %r9,%rsi
  82402e:	4c 8b b5 68 f9 ff ff 	mov    -0x698(%rbp),%r14
  824035:	4c 89 9d 80 fb ff ff 	mov    %r11,-0x480(%rbp)
  82403c:	4c 89 8d 88 fb ff ff 	mov    %r9,-0x478(%rbp)
  824043:	4d 03 fb             	add    %r11,%r15
  824046:	4c 89 bd 80 fa ff ff 	mov    %r15,-0x580(%rbp)
  82404d:	4d 03 f1             	add    %r9,%r14
  824050:	4c 8b bd 28 fc ff ff 	mov    -0x3d8(%rbp),%r15
  824057:	4c 89 a5 90 fb ff ff 	mov    %r12,-0x470(%rbp)
  82405e:	4c 8b a5 98 fa ff ff 	mov    -0x568(%rbp),%r12
  824065:	4d 03 fb             	add    %r11,%r15
  824068:	4c 89 bd 78 fa ff ff 	mov    %r15,-0x588(%rbp)
  82406f:	4c 8b bd 60 fa ff ff 	mov    -0x5a0(%rbp),%r15
  824076:	4c 8b 8d 78 fa ff ff 	mov    -0x588(%rbp),%r9
  82407d:	4d 03 fb             	add    %r11,%r15
  824080:	4c 89 bd 70 fa ff ff 	mov    %r15,-0x590(%rbp)
  824087:	49 89 c7             	mov    %rax,%r15
  82408a:	48 8b 95 70 fa ff ff 	mov    -0x590(%rbp),%rdx
  824091:	4c 8b 9d 80 fa ff ff 	mov    -0x580(%rbp),%r11
  824098:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  82409f:	00 
  8240a0:	c4 81 7d 10 6c c6 08 	vmovupd 0x8(%r14,%r8,8),%ymm5
  8240a7:	c4 81 65 59 64 c5 00 	vmulpd 0x0(%r13,%r8,8),%ymm3,%ymm4
  8240ae:	c4 21 75 59 34 c2    	vmulpd (%rdx,%r8,8),%ymm1,%ymm14
  8240b4:	c4 a1 55 5c 34 c1    	vsubpd (%rcx,%r8,8),%ymm5,%ymm6
  8240ba:	c4 21 5d 59 04 c7    	vmulpd (%rdi,%r8,8),%ymm4,%ymm8
  8240c0:	c4 02 ed b8 34 c1    	vfmadd231pd (%r9,%r8,8),%ymm2,%ymm14
  8240c6:	c4 a1 4d 58 7c c6 08 	vaddpd 0x8(%rsi,%r8,8),%ymm6,%ymm7
  8240cd:	c4 01 45 5c 0c c4    	vsubpd (%r12,%r8,8),%ymm7,%ymm9
  8240d3:	c4 41 3d 59 f9       	vmulpd %ymm9,%ymm8,%ymm15
  8240d8:	c4 02 8d ba 3c c2    	vfmsub231pd (%r10,%r8,8),%ymm14,%ymm15
  8240de:	c4 01 7d 11 3c c3    	vmovupd %ymm15,(%r11,%r8,8)
  8240e4:	49 83 c0 04          	add    $0x4,%r8
  8240e8:	4d 3b c7             	cmp    %r15,%r8
  8240eb:	72 b3                	jb     8240a0 <pre_step3d_mod_mp_pre_step3d_tile_+0xfc00>
  8240ed:	4c 8b 9d 80 fb ff ff 	mov    -0x480(%rbp),%r11
  8240f4:	4c 8b 8d 88 fb ff ff 	mov    -0x478(%rbp),%r9
  8240fb:	4c 8b a5 90 fb ff ff 	mov    -0x470(%rbp),%r12
  824102:	48 8b 95 20 fd ff ff 	mov    -0x2e0(%rbp),%rdx
  824109:	48 3b c2             	cmp    %rdx,%rax
  82410c:	0f 83 d5 00 00 00    	jae    8241e7 <pre_step3d_mod_mp_pre_step3d_tile_+0xfd47>
  824112:	48 8b 8d 08 f9 ff ff 	mov    -0x6f8(%rbp),%rcx
  824119:	4c 8b 85 70 f9 ff ff 	mov    -0x690(%rbp),%r8
  824120:	4c 8b bd 68 f9 ff ff 	mov    -0x698(%rbp),%r15
  824127:	48 8b b5 80 f9 ff ff 	mov    -0x680(%rbp),%rsi
  82412e:	4e 8d 34 09          	lea    (%rcx,%r9,1),%r14
  824132:	4c 89 b5 88 fa ff ff 	mov    %r14,-0x578(%rbp)
  824139:	4b 8d 0c 08          	lea    (%r8,%r9,1),%rcx
  82413d:	4c 8b 85 68 fa ff ff 	mov    -0x598(%rbp),%r8
  824144:	4f 8d 34 0f          	lea    (%r15,%r9,1),%r14
  824148:	4c 8b bd 28 fc ff ff 	mov    -0x3d8(%rbp),%r15
  82414f:	49 03 f1             	add    %r9,%rsi
  824152:	4c 89 b5 90 fa ff ff 	mov    %r14,-0x570(%rbp)
  824159:	4c 89 8d 88 fb ff ff 	mov    %r9,-0x478(%rbp)
  824160:	4f 8d 34 18          	lea    (%r8,%r11,1),%r14
  824164:	4c 89 a5 90 fb ff ff 	mov    %r12,-0x470(%rbp)
  82416b:	4f 8d 04 1f          	lea    (%r15,%r11,1),%r8
  82416f:	4c 8b bd 60 fa ff ff 	mov    -0x5a0(%rbp),%r15
  824176:	4c 8b a5 90 fa ff ff 	mov    -0x570(%rbp),%r12
  82417d:	4d 03 fb             	add    %r11,%r15
  824180:	4d 89 f9             	mov    %r15,%r9
  824183:	4c 8b bd 88 fa ff ff 	mov    -0x578(%rbp),%r15
  82418a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  824190:	c4 c1 7b 10 6c c4 08 	vmovsd 0x8(%r12,%rax,8),%xmm5
  824197:	c4 c1 23 59 64 c5 00 	vmulsd 0x0(%r13,%rax,8),%xmm11,%xmm4
  82419e:	c5 d3 5c 34 c1       	vsubsd (%rcx,%rax,8),%xmm5,%xmm6
  8241a3:	c4 41 2b 59 34 c1    	vmulsd (%r9,%rax,8),%xmm10,%xmm14
  8241a9:	c5 5b 59 04 c7       	vmulsd (%rdi,%rax,8),%xmm4,%xmm8
  8241ae:	c5 cb 58 7c c6 08    	vaddsd 0x8(%rsi,%rax,8),%xmm6,%xmm7
  8241b4:	c4 42 91 b9 34 c0    	vfmadd231sd (%r8,%rax,8),%xmm13,%xmm14
  8241ba:	c4 41 43 5c 0c c7    	vsubsd (%r15,%rax,8),%xmm7,%xmm9
  8241c0:	c4 41 3b 59 f9       	vmulsd %xmm9,%xmm8,%xmm15
  8241c5:	c4 42 89 bb 3c c2    	vfmsub231sd (%r10,%rax,8),%xmm14,%xmm15
  8241cb:	c4 41 7b 11 3c c6    	vmovsd %xmm15,(%r14,%rax,8)
  8241d1:	48 ff c0             	inc    %rax
  8241d4:	48 3b c2             	cmp    %rdx,%rax
  8241d7:	72 b7                	jb     824190 <pre_step3d_mod_mp_pre_step3d_tile_+0xfcf0>
  8241d9:	4c 8b 8d 88 fb ff ff 	mov    -0x478(%rbp),%r9
  8241e0:	4c 8b a5 90 fb ff ff 	mov    -0x470(%rbp),%r12
  8241e7:	49 ff c4             	inc    %r12
  8241ea:	4c 03 8d 80 fc ff ff 	add    -0x380(%rbp),%r9
  8241f1:	4c 03 95 f8 fb ff ff 	add    -0x408(%rbp),%r10
  8241f8:	4c 03 9d 00 fc ff ff 	add    -0x400(%rbp),%r11
  8241ff:	4c 03 ad f0 fb ff ff 	add    -0x410(%rbp),%r13
  824206:	48 03 bd e8 fb ff ff 	add    -0x418(%rbp),%rdi
  82420d:	4c 3b a5 68 fc ff ff 	cmp    -0x398(%rbp),%r12
  824214:	0f 82 c0 fd ff ff    	jb     823fda <pre_step3d_mod_mp_pre_step3d_tile_+0xfb3a>
  82421a:	4c 8b 85 f0 f7 ff ff 	mov    -0x810(%rbp),%r8
  824221:	48 8b 95 90 f8 ff ff 	mov    -0x770(%rbp),%rdx
  824228:	48 8b 8d 98 f8 ff ff 	mov    -0x768(%rbp),%rcx
  82422f:	8b b5 68 f8 ff ff    	mov    -0x798(%rbp),%esi
  824235:	48 8b bd 00 f8 ff ff 	mov    -0x800(%rbp),%rdi
  82423c:	4c 89 c0             	mov    %r8,%rax
  82423f:	48 3b bd 38 f8 ff ff 	cmp    -0x7c8(%rbp),%rdi
  824246:	0f 87 51 dd ff ff    	ja     821f9d <pre_step3d_mod_mp_pre_step3d_tile_+0xdafd>
  82424c:	4c 8b 95 60 f6 ff ff 	mov    -0x9a0(%rbp),%r10
  824253:	4c 8b 9d 68 f6 ff ff 	mov    -0x998(%rbp),%r11
  82425a:	4c 8b 85 70 f6 ff ff 	mov    -0x990(%rbp),%r8
  824261:	8b 95 40 f8 ff ff    	mov    -0x7c0(%rbp),%edx
  824267:	e9 7c 05 00 00       	jmpq   8247e8 <pre_step3d_mod_mp_pre_step3d_tile_+0x10348>
  82426c:	c5 fd 10 3d ac 1c 0a 	vmovupd 0xa1cac(%rip),%ymm7        # 8c5f20 <var$630.126.450+0x1260>
  824273:	00 
  824274:	c5 fb 10 25 84 2d 0a 	vmovsd 0xa2d84(%rip),%xmm4        # 8c7000 <__STRLITPACK_199.115+0x70>
  82427b:	00 
  82427c:	c5 fb 10 1d d4 35 0a 	vmovsd 0xa35d4(%rip),%xmm3        # 8c7858 <__STRLITPACK_199.115+0x8c8>
  824283:	00 
  824284:	c5 fb 10 15 c4 35 0a 	vmovsd 0xa35c4(%rip),%xmm2        # 8c7850 <__STRLITPACK_199.115+0x8c0>
  82428b:	00 
  82428c:	c5 fd 10 2d cc 0e 0a 	vmovupd 0xa0ecc(%rip),%ymm5        # 8c5160 <var$630.126.450+0x4a0>
  824293:	00 
  824294:	48 8b 8d 38 f8 ff ff 	mov    -0x7c8(%rbp),%rcx
  82429b:	4c 8b bd f8 f7 ff ff 	mov    -0x808(%rbp),%r15
  8242a2:	48 8b bd 00 f8 ff ff 	mov    -0x800(%rbp),%rdi
  8242a9:	8b 95 40 f8 ff ff    	mov    -0x7c0(%rbp),%edx
  8242af:	e9 c2 00 00 00       	jmpq   824376 <pre_step3d_mod_mp_pre_step3d_tile_+0xfed6>
  8242b4:	8b 95 68 f8 ff ff    	mov    -0x798(%rbp),%edx
  8242ba:	3b 95 40 f8 ff ff    	cmp    -0x7c0(%rbp),%edx
  8242c0:	0f 8c 6f 15 00 00    	jl     825835 <pre_step3d_mod_mp_pre_step3d_tile_+0x11395>
  8242c6:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  8242cd:	c5 fd 10 3d 4b 1c 0a 	vmovupd 0xa1c4b(%rip),%ymm7        # 8c5f20 <var$630.126.450+0x1260>
  8242d4:	00 
  8242d5:	c5 fb 10 25 23 2d 0a 	vmovsd 0xa2d23(%rip),%xmm4        # 8c7000 <__STRLITPACK_199.115+0x70>
  8242dc:	00 
  8242dd:	c5 fb 10 1d 73 35 0a 	vmovsd 0xa3573(%rip),%xmm3        # 8c7858 <__STRLITPACK_199.115+0x8c8>
  8242e4:	00 
  8242e5:	c5 fb 10 15 63 35 0a 	vmovsd 0xa3563(%rip),%xmm2        # 8c7850 <__STRLITPACK_199.115+0x8c0>
  8242ec:	00 
  8242ed:	c5 fd 10 2d 6b 0e 0a 	vmovupd 0xa0e6b(%rip),%ymm5        # 8c5160 <var$630.126.450+0x4a0>
  8242f4:	00 
  8242f5:	48 8b 85 28 fc ff ff 	mov    -0x3d8(%rbp),%rax
  8242fc:	48 8b 8d 38 f8 ff ff 	mov    -0x7c8(%rbp),%rcx
  824303:	4c 8b bd f8 f7 ff ff 	mov    -0x808(%rbp),%r15
  82430a:	48 8b bd 00 f8 ff ff 	mov    -0x800(%rbp),%rdi
  824311:	8b 95 40 f8 ff ff    	mov    -0x7c0(%rbp),%edx
  824317:	8b b5 68 f8 ff ff    	mov    -0x798(%rbp),%esi
  82431d:	eb 5f                	jmp    82437e <pre_step3d_mod_mp_pre_step3d_tile_+0xfede>
  82431f:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  824326:	c5 fd 10 3d f2 1b 0a 	vmovupd 0xa1bf2(%rip),%ymm7        # 8c5f20 <var$630.126.450+0x1260>
  82432d:	00 
  82432e:	c5 fb 10 25 ca 2c 0a 	vmovsd 0xa2cca(%rip),%xmm4        # 8c7000 <__STRLITPACK_199.115+0x70>
  824335:	00 
  824336:	c5 fb 10 1d 1a 35 0a 	vmovsd 0xa351a(%rip),%xmm3        # 8c7858 <__STRLITPACK_199.115+0x8c8>
  82433d:	00 
  82433e:	c5 fb 10 15 0a 35 0a 	vmovsd 0xa350a(%rip),%xmm2        # 8c7850 <__STRLITPACK_199.115+0x8c0>
  824345:	00 
  824346:	c5 fd 10 2d 12 0e 0a 	vmovupd 0xa0e12(%rip),%ymm5        # 8c5160 <var$630.126.450+0x4a0>
  82434d:	00 
  82434e:	48 8b 85 28 fc ff ff 	mov    -0x3d8(%rbp),%rax
  824355:	48 8b 8d 38 f8 ff ff 	mov    -0x7c8(%rbp),%rcx
  82435c:	4c 8b bd f8 f7 ff ff 	mov    -0x808(%rbp),%r15
  824363:	48 8b bd 00 f8 ff ff 	mov    -0x800(%rbp),%rdi
  82436a:	8b 95 40 f8 ff ff    	mov    -0x7c0(%rbp),%edx
  824370:	8b b5 68 f8 ff ff    	mov    -0x798(%rbp),%esi
  824376:	3b f2                	cmp    %edx,%esi
  824378:	0f 8c 49 04 00 00    	jl     8247c7 <pre_step3d_mod_mp_pre_step3d_tile_+0x10327>
  82437e:	45 33 f6             	xor    %r14d,%r14d
  824381:	4d 89 fc             	mov    %r15,%r12
  824384:	45 33 d2             	xor    %r10d,%r10d
  824387:	c4 41 7b 12 c5       	vmovddup %xmm13,%xmm8
  82438c:	45 33 db             	xor    %r11d,%r11d
  82438f:	c4 41 7b 12 ca       	vmovddup %xmm10,%xmm9
  824394:	c4 c1 7b 12 f3       	vmovddup %xmm11,%xmm6
  824399:	4c 8b ad a0 f7 ff ff 	mov    -0x860(%rbp),%r13
  8243a0:	4c 8b 8d 98 f7 ff ff 	mov    -0x868(%rbp),%r9
  8243a7:	4c 89 b5 c8 fc ff ff 	mov    %r14,-0x338(%rbp)
  8243ae:	48 89 85 28 fc ff ff 	mov    %rax,-0x3d8(%rbp)
  8243b5:	4c 89 85 f0 f7 ff ff 	mov    %r8,-0x810(%rbp)
  8243bc:	48 89 8d 38 f8 ff ff 	mov    %rcx,-0x7c8(%rbp)
  8243c3:	48 89 bd 00 f8 ff ff 	mov    %rdi,-0x800(%rbp)
  8243ca:	89 95 40 f8 ff ff    	mov    %edx,-0x7c0(%rbp)
  8243d0:	89 b5 68 f8 ff ff    	mov    %esi,-0x798(%rbp)
  8243d6:	8b 85 d0 fc ff ff    	mov    -0x330(%rbp),%eax
  8243dc:	3b 85 d8 fc ff ff    	cmp    -0x328(%rbp),%eax
  8243e2:	0f 8c 76 03 00 00    	jl     82475e <pre_step3d_mod_mp_pre_step3d_tile_+0x102be>
  8243e8:	48 83 bd 10 fd ff ff 	cmpq   $0x0,-0x2f0(%rbp)
  8243ef:	00 
  8243f0:	0f 84 80 14 00 00    	je     825876 <pre_step3d_mod_mp_pre_step3d_tile_+0x113d6>
  8243f6:	48 83 bd 20 fd ff ff 	cmpq   $0x2,-0x2e0(%rbp)
  8243fd:	02 
  8243fe:	0f 8c 72 14 00 00    	jl     825876 <pre_step3d_mod_mp_pre_step3d_tile_+0x113d6>
  824404:	48 8b bd 08 f9 ff ff 	mov    -0x6f8(%rbp),%rdi
  82440b:	33 f6                	xor    %esi,%esi
  82440d:	4c 8b b5 80 f9 ff ff 	mov    -0x680(%rbp),%r14
  824414:	4c 8b bd 88 f9 ff ff 	mov    -0x678(%rbp),%r15
  82441b:	48 8b 85 30 fd ff ff 	mov    -0x2d0(%rbp),%rax
  824422:	4a 8d 0c 17          	lea    (%rdi,%r10,1),%rcx
  824426:	48 89 8d a8 fd ff ff 	mov    %rcx,-0x258(%rbp)
  82442d:	4f 8d 04 16          	lea    (%r14,%r10,1),%r8
  824431:	48 8b 8d 28 fc ff ff 	mov    -0x3d8(%rbp),%rcx
  824438:	4c 89 85 b0 fd ff ff 	mov    %r8,-0x250(%rbp)
  82443f:	4c 8b 85 30 f9 ff ff 	mov    -0x6d0(%rbp),%r8
  824446:	48 8b bd 28 f9 ff ff 	mov    -0x6d8(%rbp),%rdi
  82444d:	4d 8d 34 0f          	lea    (%r15,%rcx,1),%r14
  824451:	4c 8b bd e8 f8 ff ff 	mov    -0x718(%rbp),%r15
  824458:	4d 03 f3             	add    %r11,%r14
  82445b:	4c 89 95 b0 fa ff ff 	mov    %r10,-0x550(%rbp)
  824462:	4c 03 c1             	add    %rcx,%r8
  824465:	4d 03 c3             	add    %r11,%r8
  824468:	48 03 f9             	add    %rcx,%rdi
  82446b:	33 c9                	xor    %ecx,%ecx
  82446d:	49 03 fb             	add    %r11,%rdi
  824470:	33 d2                	xor    %edx,%edx
  824472:	48 89 95 c8 fa ff ff 	mov    %rdx,-0x538(%rbp)
  824479:	48 89 95 b8 fa ff ff 	mov    %rdx,-0x548(%rbp)
  824480:	4a 8d 14 fd 00 00 00 	lea    0x0(,%r15,8),%rdx
  824487:	00 
  824488:	48 f7 da             	neg    %rdx
  82448b:	48 03 95 f8 f8 ff ff 	add    -0x708(%rbp),%rdx
  824492:	4c 8b bd b8 f9 ff ff 	mov    -0x648(%rbp),%r15
  824499:	48 03 95 c0 f9 ff ff 	add    -0x640(%rbp),%rdx
  8244a0:	49 f7 df             	neg    %r15
  8244a3:	49 03 d7             	add    %r15,%rdx
  8244a6:	4c 8b bd 90 f9 ff ff 	mov    -0x670(%rbp),%r15
  8244ad:	48 89 85 98 fb ff ff 	mov    %rax,-0x468(%rbp)
  8244b4:	48 89 bd a0 fd ff ff 	mov    %rdi,-0x260(%rbp)
  8244bb:	4a 8d 14 fa          	lea    (%rdx,%r15,8),%rdx
  8244bf:	4c 89 85 98 fd ff ff 	mov    %r8,-0x268(%rbp)
  8244c6:	4c 89 9d a0 fb ff ff 	mov    %r11,-0x460(%rbp)
  8244cd:	4c 89 95 a8 fb ff ff 	mov    %r10,-0x458(%rbp)
  8244d4:	4c 89 b5 90 fd ff ff 	mov    %r14,-0x270(%rbp)
  8244db:	4c 8b 9d b0 fa ff ff 	mov    -0x550(%rbp),%r11
  8244e2:	4c 8b 85 b8 fa ff ff 	mov    -0x548(%rbp),%r8
  8244e9:	48 8b 85 c8 fa ff ff 	mov    -0x538(%rbp),%rax
  8244f0:	48 89 cf             	mov    %rcx,%rdi
  8244f3:	4c 8b 95 10 fd ff ff 	mov    -0x2f0(%rbp),%r10
  8244fa:	4c 8b bd 08 fd ff ff 	mov    -0x2f8(%rbp),%r15
  824501:	4d 8d 34 0c          	lea    (%r12,%rcx,1),%r14
  824505:	c4 c1 7b 10 06       	vmovsd (%r14),%xmm0
  82450a:	c4 81 79 16 04 3e    	vmovhpd (%r14,%r15,1),%xmm0,%xmm0
  824510:	4a 8d 0c 79          	lea    (%rcx,%r15,2),%rcx
  824514:	4c 8b b5 90 fd ff ff 	mov    -0x270(%rbp),%r14
  82451b:	4f 8d 3c 06          	lea    (%r14,%r8,1),%r15
  82451f:	4c 8b b5 98 fd ff ff 	mov    -0x268(%rbp),%r14
  824526:	c4 c1 7b 10 0f       	vmovsd (%r15),%xmm1
  82452b:	c4 01 71 16 34 17    	vmovhpd (%r15,%r10,1),%xmm1,%xmm14
  824531:	4f 8d 3c 06          	lea    (%r14,%r8,1),%r15
  824535:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  82453a:	4d 8d 74 3d 00       	lea    0x0(%r13,%rdi,1),%r14
  82453f:	c4 81 01 16 0c 17    	vmovhpd (%r15,%r10,1),%xmm15,%xmm1
  824545:	c5 b1 59 c9          	vmulpd %xmm1,%xmm9,%xmm1
  824549:	4c 8b bd 00 fd ff ff 	mov    -0x300(%rbp),%r15
  824550:	c4 c2 89 b8 c8       	vfmadd231pd %xmm8,%xmm14,%xmm1
  824555:	c4 41 7b 10 36       	vmovsd (%r14),%xmm14
  82455a:	c4 01 09 16 3c 3e    	vmovhpd (%r14,%r15,1),%xmm14,%xmm15
  824560:	c4 41 49 59 ff       	vmulpd %xmm15,%xmm6,%xmm15
  824565:	4a 8d 3c 7f          	lea    (%rdi,%r15,2),%rdi
  824569:	4c 8b bd f8 fc ff ff 	mov    -0x308(%rbp),%r15
  824570:	4d 8d 34 01          	lea    (%r9,%rax,1),%r14
  824574:	c4 41 7b 10 36       	vmovsd (%r14),%xmm14
  824579:	c4 01 09 16 34 3e    	vmovhpd (%r14,%r15,1),%xmm14,%xmm14
  82457f:	4a 8d 04 78          	lea    (%rax,%r15,2),%rax
  824583:	c4 41 01 59 f6       	vmulpd %xmm14,%xmm15,%xmm14
  824588:	c4 41 79 10 7c 13 08 	vmovupd 0x8(%r11,%rdx,1),%xmm15
  82458f:	c4 41 01 5c 3c 13    	vsubpd (%r11,%rdx,1),%xmm15,%xmm15
  824595:	4c 8b b5 b0 fd ff ff 	mov    -0x250(%rbp),%r14
  82459c:	49 83 c3 10          	add    $0x10,%r11
  8245a0:	4c 8b bd a8 fd ff ff 	mov    -0x258(%rbp),%r15
  8245a7:	c4 41 01 58 7c f6 08 	vaddpd 0x8(%r14,%rsi,8),%xmm15,%xmm15
  8245ae:	c4 41 01 5c 3c f7    	vsubpd (%r15,%rsi,8),%xmm15,%xmm15
  8245b4:	c4 41 09 59 f7       	vmulpd %xmm15,%xmm14,%xmm14
  8245b9:	c4 62 f1 ba f0       	vfmsub231pd %xmm0,%xmm1,%xmm14
  8245be:	48 83 c6 02          	add    $0x2,%rsi
  8245c2:	4c 8b b5 a0 fd ff ff 	mov    -0x260(%rbp),%r14
  8245c9:	4f 8d 3c 30          	lea    (%r8,%r14,1),%r15
  8245cd:	c4 41 7b 11 37       	vmovsd %xmm14,(%r15)
  8245d2:	4f 8d 04 50          	lea    (%r8,%r10,2),%r8
  8245d6:	c4 01 79 17 34 3a    	vmovhpd %xmm14,(%r10,%r15,1)
  8245dc:	48 3b b5 30 fd ff ff 	cmp    -0x2d0(%rbp),%rsi
  8245e3:	0f 82 11 ff ff ff    	jb     8244fa <pre_step3d_mod_mp_pre_step3d_tile_+0x1005a>
  8245e9:	48 8b 85 98 fb ff ff 	mov    -0x468(%rbp),%rax
  8245f0:	4c 8b 9d a0 fb ff ff 	mov    -0x460(%rbp),%r11
  8245f7:	4c 8b 95 a8 fb ff ff 	mov    -0x458(%rbp),%r10
  8245fe:	4c 8b 85 10 fd ff ff 	mov    -0x2f0(%rbp),%r8
  824605:	48 8b bd f8 fc ff ff 	mov    -0x308(%rbp),%rdi
  82460c:	4c 8b b5 00 fd ff ff 	mov    -0x300(%rbp),%r14
  824613:	48 8b 8d 08 fd ff ff 	mov    -0x2f8(%rbp),%rcx
  82461a:	4c 0f af c0          	imul   %rax,%r8
  82461e:	48 0f af f8          	imul   %rax,%rdi
  824622:	4c 0f af f0          	imul   %rax,%r14
  824626:	48 0f af c8          	imul   %rax,%rcx
  82462a:	48 3b 85 20 fd ff ff 	cmp    -0x2e0(%rbp),%rax
  824631:	0f 83 27 01 00 00    	jae    82475e <pre_step3d_mod_mp_pre_step3d_tile_+0x102be>
  824637:	48 8b b5 80 f9 ff ff 	mov    -0x680(%rbp),%rsi
  82463e:	48 8b 95 08 f9 ff ff 	mov    -0x6f8(%rbp),%rdx
  824645:	4c 89 9d a0 fb ff ff 	mov    %r11,-0x460(%rbp)
  82464c:	4c 89 95 a8 fb ff ff 	mov    %r10,-0x458(%rbp)
  824653:	4e 8d 3c 16          	lea    (%rsi,%r10,1),%r15
  824657:	4c 89 bd c0 fd ff ff 	mov    %r15,-0x240(%rbp)
  82465e:	4a 8d 34 12          	lea    (%rdx,%r10,1),%rsi
  824662:	48 89 b5 d0 fa ff ff 	mov    %rsi,-0x530(%rbp)
  824669:	4c 8b bd 70 f9 ff ff 	mov    -0x690(%rbp),%r15
  824670:	48 8b b5 68 f9 ff ff 	mov    -0x698(%rbp),%rsi
  824677:	4b 8d 14 17          	lea    (%r15,%r10,1),%rdx
  82467b:	48 89 95 c0 fa ff ff 	mov    %rdx,-0x540(%rbp)
  824682:	48 8b 95 28 fc ff ff 	mov    -0x3d8(%rbp),%rdx
  824689:	4e 8d 3c 16          	lea    (%rsi,%r10,1),%r15
  82468d:	4c 89 bd b8 fd ff ff 	mov    %r15,-0x248(%rbp)
  824694:	4c 8b bd 30 f9 ff ff 	mov    -0x6d0(%rbp),%r15
  82469b:	48 8b b5 88 f9 ff ff 	mov    -0x678(%rbp),%rsi
  8246a2:	4c 8b 95 c0 fa ff ff 	mov    -0x540(%rbp),%r10
  8246a9:	4c 03 fa             	add    %rdx,%r15
  8246ac:	4d 03 fb             	add    %r11,%r15
  8246af:	48 03 f2             	add    %rdx,%rsi
  8246b2:	4c 89 bd c8 fd ff ff 	mov    %r15,-0x238(%rbp)
  8246b9:	49 03 f3             	add    %r11,%rsi
  8246bc:	4c 8b bd 28 f9 ff ff 	mov    -0x6d8(%rbp),%r15
  8246c3:	49 03 d7             	add    %r15,%rdx
  8246c6:	49 03 d3             	add    %r11,%rdx
  8246c9:	4c 8b 9d d0 fa ff ff 	mov    -0x530(%rbp),%r11
  8246d0:	4c 8b bd c8 fd ff ff 	mov    -0x238(%rbp),%r15
  8246d7:	c4 01 23 59 34 2e    	vmulsd (%r14,%r13,1),%xmm11,%xmm14
  8246dd:	c4 81 2b 59 0c 38    	vmulsd (%r8,%r15,1),%xmm10,%xmm1
  8246e3:	c4 a1 0b 59 04 0f    	vmulsd (%rdi,%r9,1),%xmm14,%xmm0
  8246e9:	c4 c2 91 b9 0c 30    	vfmadd231sd (%r8,%rsi,1),%xmm13,%xmm1
  8246ef:	4c 8b bd b8 fd ff ff 	mov    -0x248(%rbp),%r15
  8246f6:	4c 03 b5 00 fd ff ff 	add    -0x300(%rbp),%r14
  8246fd:	48 03 bd f8 fc ff ff 	add    -0x308(%rbp),%rdi
  824704:	c4 41 7b 10 7c c7 08 	vmovsd 0x8(%r15,%rax,8),%xmm15
  82470b:	4c 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15
  824712:	c4 41 03 5c 34 c2    	vsubsd (%r10,%rax,8),%xmm15,%xmm14
  824718:	c4 41 0b 58 7c c7 08 	vaddsd 0x8(%r15,%rax,8),%xmm14,%xmm15
  82471f:	c4 41 03 5c 34 c3    	vsubsd (%r11,%rax,8),%xmm15,%xmm14
  824725:	48 ff c0             	inc    %rax
  824728:	c4 c1 7b 59 c6       	vmulsd %xmm14,%xmm0,%xmm0
  82472d:	c4 a2 f1 bb 04 21    	vfmsub231sd (%rcx,%r12,1),%xmm1,%xmm0
  824733:	c4 c1 7b 11 04 10    	vmovsd %xmm0,(%r8,%rdx,1)
  824739:	48 03 8d 08 fd ff ff 	add    -0x2f8(%rbp),%rcx
  824740:	4c 03 85 10 fd ff ff 	add    -0x2f0(%rbp),%r8
  824747:	48 3b 85 20 fd ff ff 	cmp    -0x2e0(%rbp),%rax
  82474e:	72 80                	jb     8246d0 <pre_step3d_mod_mp_pre_step3d_tile_+0x10230>
  824750:	4c 8b 9d a0 fb ff ff 	mov    -0x460(%rbp),%r11
  824757:	4c 8b 95 a8 fb ff ff 	mov    -0x458(%rbp),%r10
  82475e:	48 8b 85 c8 fc ff ff 	mov    -0x338(%rbp),%rax
  824765:	48 ff c0             	inc    %rax
  824768:	4c 03 95 80 fc ff ff 	add    -0x380(%rbp),%r10
  82476f:	4c 03 a5 f8 fb ff ff 	add    -0x408(%rbp),%r12
  824776:	4c 03 9d 00 fc ff ff 	add    -0x400(%rbp),%r11
  82477d:	4c 03 ad f0 fb ff ff 	add    -0x410(%rbp),%r13
  824784:	4c 03 8d e8 fb ff ff 	add    -0x418(%rbp),%r9
  82478b:	48 89 85 c8 fc ff ff 	mov    %rax,-0x338(%rbp)
  824792:	48 3b 85 68 fc ff ff 	cmp    -0x398(%rbp),%rax
  824799:	0f 82 37 fc ff ff    	jb     8243d6 <pre_step3d_mod_mp_pre_step3d_tile_+0xff36>
  82479f:	4c 8b 85 f0 f7 ff ff 	mov    -0x810(%rbp),%r8
  8247a6:	48 8b 8d 38 f8 ff ff 	mov    -0x7c8(%rbp),%rcx
  8247ad:	4c 8b bd f8 f7 ff ff 	mov    -0x808(%rbp),%r15
  8247b4:	48 8b bd 00 f8 ff ff 	mov    -0x800(%rbp),%rdi
  8247bb:	8b 95 40 f8 ff ff    	mov    -0x7c0(%rbp),%edx
  8247c1:	8b b5 68 f8 ff ff    	mov    -0x798(%rbp),%esi
  8247c7:	4c 89 c0             	mov    %r8,%rax
  8247ca:	48 3b cf             	cmp    %rdi,%rcx
  8247cd:	0f 82 6a d7 ff ff    	jb     821f3d <pre_step3d_mod_mp_pre_step3d_tile_+0xda9d>
  8247d3:	4c 8b 95 60 f6 ff ff 	mov    -0x9a0(%rbp),%r10
  8247da:	4c 8b 9d 68 f6 ff ff 	mov    -0x998(%rbp),%r11
  8247e1:	4c 8b 85 70 f6 ff ff 	mov    -0x990(%rbp),%r8
  8247e8:	49 ff c0             	inc    %r8
  8247eb:	4c 3b 85 28 f7 ff ff 	cmp    -0x8d8(%rbp),%r8
  8247f2:	0f 82 a5 c5 ff ff    	jb     820d9d <pre_step3d_mod_mp_pre_step3d_tile_+0xc8fd>
  8247f8:	bf 1c 74 b3 00       	mov    $0xb3741c,%edi
  8247fd:	8b b5 20 f7 ff ff    	mov    -0x8e0(%rbp),%esi
  824803:	c5 f8 77             	vzeroupper 
  824806:	e8 f5 98 be ff       	callq  40e100 <__kmpc_for_static_fini@plt>
  82480b:	48 8b 95 50 f6 ff ff 	mov    -0x9b0(%rbp),%rdx
  824812:	48 8b 85 58 f6 ff ff 	mov    -0x9a8(%rbp),%rax
  824819:	48 83 c0 1f          	add    $0x1f,%rax
  82481d:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  824821:	48 03 e0             	add    %rax,%rsp
  824824:	48 8b 95 40 f6 ff ff 	mov    -0x9c0(%rbp),%rdx
  82482b:	48 8b 85 48 f6 ff ff 	mov    -0x9b8(%rbp),%rax
  824832:	48 83 c0 1f          	add    $0x1f,%rax
  824836:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  82483a:	48 03 e0             	add    %rax,%rsp
  82483d:	48 8b 95 10 f6 ff ff 	mov    -0x9f0(%rbp),%rdx
  824844:	48 8b 85 38 f6 ff ff 	mov    -0x9c8(%rbp),%rax
  82484b:	48 83 c0 1f          	add    $0x1f,%rax
  82484f:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  824853:	48 03 e0             	add    %rax,%rsp
  824856:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  82485d:	48 8b 85 08 f6 ff ff 	mov    -0x9f8(%rbp),%rax
  824864:	48 83 c0 1f          	add    $0x1f,%rax
  824868:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  82486c:	48 03 e0             	add    %rax,%rsp
  82486f:	4c 8b bd 18 f6 ff ff 	mov    -0x9e8(%rbp),%r15
  824876:	4c 8b b5 20 f6 ff ff 	mov    -0x9e0(%rbp),%r14
  82487d:	4c 8b ad 28 f6 ff ff 	mov    -0x9d8(%rbp),%r13
  824884:	4c 8b a5 30 f6 ff ff 	mov    -0x9d0(%rbp),%r12
  82488b:	c9                   	leaveq 
  82488c:	48 89 dc             	mov    %rbx,%rsp
  82488f:	5b                   	pop    %rbx
  824890:	c3                   	retq   
  824891:	49 83 fe 04          	cmp    $0x4,%r14
  824895:	7c 5b                	jl     8248f2 <pre_step3d_mod_mp_pre_step3d_tile_+0x10452>
  824897:	48 8b 95 e8 f6 ff ff 	mov    -0x918(%rbp),%rdx
  82489e:	33 f6                	xor    %esi,%esi
  8248a0:	48 8b 85 e0 f6 ff ff 	mov    -0x920(%rbp),%rax
  8248a7:	48 89 c7             	mov    %rax,%rdi
  8248aa:	4a 8d 0c 3a          	lea    (%rdx,%r15,1),%rcx
  8248ae:	4b 8d 14 3c          	lea    (%r12,%r15,1),%rdx
  8248b2:	c5 fd 10 04 f1       	vmovupd (%rcx,%rsi,8),%ymm0
  8248b7:	c5 fd 11 04 f2       	vmovupd %ymm0,(%rdx,%rsi,8)
  8248bc:	48 83 c6 04          	add    $0x4,%rsi
  8248c0:	48 3b f7             	cmp    %rdi,%rsi
  8248c3:	72 ed                	jb     8248b2 <pre_step3d_mod_mp_pre_step3d_tile_+0x10412>
  8248c5:	49 3b c6             	cmp    %r14,%rax
  8248c8:	0f 83 07 0a ff ff    	jae    8152d5 <pre_step3d_mod_mp_pre_step3d_tile_+0xe35>
  8248ce:	48 8b 95 e8 f6 ff ff 	mov    -0x918(%rbp),%rdx
  8248d5:	4a 8d 0c 3a          	lea    (%rdx,%r15,1),%rcx
  8248d9:	4b 8d 14 3c          	lea    (%r12,%r15,1),%rdx
  8248dd:	48 8b 34 c1          	mov    (%rcx,%rax,8),%rsi
  8248e1:	48 89 34 c2          	mov    %rsi,(%rdx,%rax,8)
  8248e5:	48 ff c0             	inc    %rax
  8248e8:	49 3b c6             	cmp    %r14,%rax
  8248eb:	72 f0                	jb     8248dd <pre_step3d_mod_mp_pre_step3d_tile_+0x1043d>
  8248ed:	e9 e3 09 ff ff       	jmpq   8152d5 <pre_step3d_mod_mp_pre_step3d_tile_+0xe35>
  8248f2:	33 c0                	xor    %eax,%eax
  8248f4:	eb cf                	jmp    8248c5 <pre_step3d_mod_mp_pre_step3d_tile_+0x10425>
  8248f6:	45 33 ff             	xor    %r15d,%r15d
  8248f9:	e9 5d 07 ff ff       	jmpq   81505b <pre_step3d_mod_mp_pre_step3d_tile_+0xbbb>
  8248fe:	33 c0                	xor    %eax,%eax
  824900:	e9 5c 32 ff ff       	jmpq   817b61 <pre_step3d_mod_mp_pre_step3d_tile_+0x36c1>
  824905:	33 c0                	xor    %eax,%eax
  824907:	e9 6c 39 ff ff       	jmpq   818278 <pre_step3d_mod_mp_pre_step3d_tile_+0x3dd8>
  82490c:	33 c0                	xor    %eax,%eax
  82490e:	e9 66 40 ff ff       	jmpq   818979 <pre_step3d_mod_mp_pre_step3d_tile_+0x44d9>
  824913:	45 33 f6             	xor    %r14d,%r14d
  824916:	e9 f8 43 ff ff       	jmpq   818d13 <pre_step3d_mod_mp_pre_step3d_tile_+0x4873>
  82491b:	33 c0                	xor    %eax,%eax
  82491d:	e9 e5 46 ff ff       	jmpq   819007 <pre_step3d_mod_mp_pre_step3d_tile_+0x4b67>
  824922:	45 33 ed             	xor    %r13d,%r13d
  824925:	e9 15 4a ff ff       	jmpq   81933f <pre_step3d_mod_mp_pre_step3d_tile_+0x4e9f>
  82492a:	33 c0                	xor    %eax,%eax
  82492c:	e9 1a 4e ff ff       	jmpq   81974b <pre_step3d_mod_mp_pre_step3d_tile_+0x52ab>
  824931:	33 c0                	xor    %eax,%eax
  824933:	e9 aa 56 ff ff       	jmpq   819fe2 <pre_step3d_mod_mp_pre_step3d_tile_+0x5b42>
  824938:	33 c0                	xor    %eax,%eax
  82493a:	e9 0b 5d ff ff       	jmpq   81a64a <pre_step3d_mod_mp_pre_step3d_tile_+0x61aa>
  82493f:	45 33 e4             	xor    %r12d,%r12d
  824942:	e9 34 60 ff ff       	jmpq   81a97b <pre_step3d_mod_mp_pre_step3d_tile_+0x64db>
  824947:	33 c0                	xor    %eax,%eax
  824949:	e9 f4 64 ff ff       	jmpq   81ae42 <pre_step3d_mod_mp_pre_step3d_tile_+0x69a2>
  82494e:	45 33 f6             	xor    %r14d,%r14d
  824951:	e9 a3 68 ff ff       	jmpq   81b1f9 <pre_step3d_mod_mp_pre_step3d_tile_+0x6d59>
  824956:	33 c0                	xor    %eax,%eax
  824958:	e9 ac 6b ff ff       	jmpq   81b509 <pre_step3d_mod_mp_pre_step3d_tile_+0x7069>
  82495d:	45 33 ed             	xor    %r13d,%r13d
  824960:	e9 e7 6e ff ff       	jmpq   81b84c <pre_step3d_mod_mp_pre_step3d_tile_+0x73ac>
  824965:	33 c0                	xor    %eax,%eax
  824967:	e9 f1 72 ff ff       	jmpq   81bc5d <pre_step3d_mod_mp_pre_step3d_tile_+0x77bd>
  82496c:	48 c7 85 b0 f6 ff ff 	movq   $0x0,-0x950(%rbp)
  824973:	00 00 00 00 
  824977:	e9 21 77 ff ff       	jmpq   81c09d <pre_step3d_mod_mp_pre_step3d_tile_+0x7bfd>
  82497c:	45 33 ff             	xor    %r15d,%r15d
  82497f:	e9 7d 62 ff ff       	jmpq   81ac01 <pre_step3d_mod_mp_pre_step3d_tile_+0x6761>
  824984:	45 33 ff             	xor    %r15d,%r15d
  824987:	e9 8d 5e ff ff       	jmpq   81a819 <pre_step3d_mod_mp_pre_step3d_tile_+0x6379>
  82498c:	48 c7 85 10 fc ff ff 	movq   $0x0,-0x3f0(%rbp)
  824993:	00 00 00 00 
  824997:	e9 54 5a ff ff       	jmpq   81a3f0 <pre_step3d_mod_mp_pre_step3d_tile_+0x5f50>
  82499c:	48 c7 85 88 fa ff ff 	movq   $0x0,-0x578(%rbp)
  8249a3:	00 00 00 00 
  8249a7:	e9 cd 51 ff ff       	jmpq   819b79 <pre_step3d_mod_mp_pre_step3d_tile_+0x56d9>
  8249ac:	48 c7 85 f8 f8 ff ff 	movq   $0x0,-0x708(%rbp)
  8249b3:	00 00 00 00 
  8249b7:	e9 cf 3c ff ff       	jmpq   81868b <pre_step3d_mod_mp_pre_step3d_tile_+0x41eb>
  8249bc:	45 33 f6             	xor    %r14d,%r14d
  8249bf:	e9 b0 35 ff ff       	jmpq   817f74 <pre_step3d_mod_mp_pre_step3d_tile_+0x3ad4>
  8249c4:	33 c0                	xor    %eax,%eax
  8249c6:	e9 cc 88 ff ff       	jmpq   81d297 <pre_step3d_mod_mp_pre_step3d_tile_+0x8df7>
  8249cb:	3b bd d8 f4 ff ff    	cmp    -0xb28(%rbp),%edi
  8249d1:	0f 84 bc 8f ff ff    	je     81d993 <pre_step3d_mod_mp_pre_step3d_tile_+0x94f3>
  8249d7:	e9 f1 93 ff ff       	jmpq   81ddcd <pre_step3d_mod_mp_pre_step3d_tile_+0x992d>
  8249dc:	33 c0                	xor    %eax,%eax
  8249de:	e9 8c 90 ff ff       	jmpq   81da6f <pre_step3d_mod_mp_pre_step3d_tile_+0x95cf>
  8249e3:	33 c0                	xor    %eax,%eax
  8249e5:	e9 77 94 ff ff       	jmpq   81de61 <pre_step3d_mod_mp_pre_step3d_tile_+0x99c1>
  8249ea:	45 33 ed             	xor    %r13d,%r13d
  8249ed:	e9 8c 97 ff ff       	jmpq   81e17e <pre_step3d_mod_mp_pre_step3d_tile_+0x9cde>
  8249f2:	45 33 d2             	xor    %r10d,%r10d
  8249f5:	e9 c9 99 ff ff       	jmpq   81e3c3 <pre_step3d_mod_mp_pre_step3d_tile_+0x9f23>
  8249fa:	45 33 ed             	xor    %r13d,%r13d
  8249fd:	e9 05 96 ff ff       	jmpq   81e007 <pre_step3d_mod_mp_pre_step3d_tile_+0x9b67>
  824a02:	45 33 db             	xor    %r11d,%r11d
  824a05:	e9 19 93 ff ff       	jmpq   81dd23 <pre_step3d_mod_mp_pre_step3d_tile_+0x9883>
  824a0a:	45 33 f6             	xor    %r14d,%r14d
  824a0d:	e9 dd 8d ff ff       	jmpq   81d7ef <pre_step3d_mod_mp_pre_step3d_tile_+0x934f>
  824a12:	45 33 c0             	xor    %r8d,%r8d
  824a15:	e9 59 8c ff ff       	jmpq   81d673 <pre_step3d_mod_mp_pre_step3d_tile_+0x91d3>
  824a1a:	33 c0                	xor    %eax,%eax
  824a1c:	e9 75 a8 ff ff       	jmpq   81f296 <pre_step3d_mod_mp_pre_step3d_tile_+0xadf6>
  824a21:	48 8b 85 60 f9 ff ff 	mov    -0x6a0(%rbp),%rax
  824a28:	4c 8b a5 70 f8 ff ff 	mov    -0x790(%rbp),%r12
  824a2f:	48 8b 95 78 f8 ff ff 	mov    -0x788(%rbp),%rdx
  824a36:	4c 8b 9d 80 f8 ff ff 	mov    -0x780(%rbp),%r11
  824a3d:	48 83 bd 68 fa ff ff 	cmpq   $0x2,-0x598(%rbp)
  824a44:	02 
  824a45:	0f 8c d6 0c 00 00    	jl     825721 <pre_step3d_mod_mp_pre_step3d_tile_+0x11281>
  824a4b:	48 8b bd 30 f8 ff ff 	mov    -0x7d0(%rbp),%rdi
  824a52:	45 33 ff             	xor    %r15d,%r15d
  824a55:	48 0f af f8          	imul   %rax,%rdi
  824a59:	48 8b b5 68 f8 ff ff 	mov    -0x798(%rbp),%rsi
  824a60:	4c 8b ad 50 f8 ff ff 	mov    -0x7b0(%rbp),%r13
  824a67:	4c 8b 95 58 f8 ff ff 	mov    -0x7a8(%rbp),%r10
  824a6e:	4c 8b 8d 60 f8 ff ff 	mov    -0x7a0(%rbp),%r9
  824a75:	4c 8d 04 3e          	lea    (%rsi,%rdi,1),%r8
  824a79:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
  824a80:	33 f6                	xor    %esi,%esi
  824a82:	4d 8d 74 3d 00       	lea    0x0(%r13,%rdi,1),%r14
  824a87:	48 89 85 60 f9 ff ff 	mov    %rax,-0x6a0(%rbp)
  824a8e:	4d 8d 2c 3b          	lea    (%r11,%rdi,1),%r13
  824a92:	48 89 8d 88 f8 ff ff 	mov    %rcx,-0x778(%rbp)
  824a99:	4c 03 d7             	add    %rdi,%r10
  824a9c:	48 89 95 78 f8 ff ff 	mov    %rdx,-0x788(%rbp)
  824aa3:	4c 03 cf             	add    %rdi,%r9
  824aa6:	48 03 bd 40 f8 ff ff 	add    -0x7c0(%rbp),%rdi
  824aad:	48 89 f0             	mov    %rsi,%rax
  824ab0:	48 8b 95 48 f8 ff ff 	mov    -0x7b8(%rbp),%rdx
  824ab7:	48 8b 8d 70 fa ff ff 	mov    -0x590(%rbp),%rcx
  824abe:	4c 8b 9d 58 fa ff ff 	mov    -0x5a8(%rbp),%r11
  824ac5:	4c 8b a5 90 fa ff ff 	mov    -0x570(%rbp),%r12
  824acc:	4c 03 e6             	add    %rsi,%r12
  824acf:	c4 41 7b 10 2c 24    	vmovsd (%r12),%xmm13
  824ad5:	c4 c1 11 16 0c 0c    	vmovhpd (%r12,%rcx,1),%xmm13,%xmm1
  824adb:	4d 8d 24 06          	lea    (%r14,%rax,1),%r12
  824adf:	c4 41 7b 10 34 24    	vmovsd (%r12),%xmm14
  824ae5:	c4 01 09 16 2c 1c    	vmovhpd (%r12,%r11,1),%xmm14,%xmm13
  824aeb:	4d 8d 64 05 00       	lea    0x0(%r13,%rax,1),%r12
  824af0:	c4 41 7b 10 3c 24    	vmovsd (%r12),%xmm15
  824af6:	c4 81 01 16 04 1c    	vmovhpd (%r12,%r11,1),%xmm15,%xmm0
  824afc:	4d 8d 24 02          	lea    (%r10,%rax,1),%r12
  824b00:	c5 c9 59 c0          	vmulpd %xmm0,%xmm6,%xmm0
  824b04:	c4 e2 91 b8 c3       	vfmadd231pd %xmm3,%xmm13,%xmm0
  824b09:	c4 41 7b 10 34 24    	vmovsd (%r12),%xmm14
  824b0f:	c4 01 09 16 3c 1c    	vmovhpd (%r12,%r11,1),%xmm14,%xmm15
  824b15:	c4 e2 81 bc c7       	vfnmadd231pd %xmm7,%xmm15,%xmm0
  824b1a:	c5 f1 59 c8          	vmulpd %xmm0,%xmm1,%xmm1
  824b1e:	4c 8b a5 88 fa ff ff 	mov    -0x578(%rbp),%r12
  824b25:	c4 81 79 11 4c fc 08 	vmovupd %xmm1,0x8(%r12,%r15,8)
  824b2c:	4c 8b a5 78 fa ff ff 	mov    -0x588(%rbp),%r12
  824b33:	c4 01 79 11 0c fc    	vmovupd %xmm9,(%r12,%r15,8)
  824b39:	4c 8b a5 a0 fa ff ff 	mov    -0x560(%rbp),%r12
  824b40:	4c 03 e6             	add    %rsi,%r12
  824b43:	c4 c1 7b 10 04 24    	vmovsd (%r12),%xmm0
  824b49:	48 8d 34 4e          	lea    (%rsi,%rcx,2),%rsi
  824b4d:	c4 c1 79 16 04 0c    	vmovhpd (%r12,%rcx,1),%xmm0,%xmm0
  824b53:	4c 8d 24 07          	lea    (%rdi,%rax,1),%r12
  824b57:	c4 c1 7b 10 0c 24    	vmovsd (%r12),%xmm1
  824b5d:	c4 01 71 16 3c 1c    	vmovhpd (%r12,%r11,1),%xmm1,%xmm15
  824b63:	4d 8d 24 00          	lea    (%r8,%rax,1),%r12
  824b67:	c4 41 7b 10 2c 24    	vmovsd (%r12),%xmm13
  824b6d:	c4 01 11 16 34 1c    	vmovhpd (%r12,%r11,1),%xmm13,%xmm14
  824b73:	4d 8d 24 01          	lea    (%r9,%rax,1),%r12
  824b77:	c4 41 49 59 ee       	vmulpd %xmm14,%xmm6,%xmm13
  824b7c:	c4 62 81 b8 eb       	vfmadd231pd %xmm3,%xmm15,%xmm13
  824b81:	4a 8d 04 58          	lea    (%rax,%r11,2),%rax
  824b85:	c4 41 7b 10 3c 24    	vmovsd (%r12),%xmm15
  824b8b:	c4 81 01 16 0c 1c    	vmovhpd (%r12,%r11,1),%xmm15,%xmm1
  824b91:	c4 62 f1 bc ef       	vfnmadd231pd %xmm7,%xmm1,%xmm13
  824b96:	c4 c1 79 59 c5       	vmulpd %xmm13,%xmm0,%xmm0
  824b9b:	4c 8b a5 98 fa ff ff 	mov    -0x568(%rbp),%r12
  824ba2:	c4 81 79 11 04 fc    	vmovupd %xmm0,(%r12,%r15,8)
  824ba8:	c4 21 79 11 0c fa    	vmovupd %xmm9,(%rdx,%r15,8)
  824bae:	49 83 c7 02          	add    $0x2,%r15
  824bb2:	4c 3b bd 60 fa ff ff 	cmp    -0x5a0(%rbp),%r15
  824bb9:	0f 82 06 ff ff ff    	jb     824ac5 <pre_step3d_mod_mp_pre_step3d_tile_+0x10625>
  824bbf:	48 8b 85 60 f9 ff ff 	mov    -0x6a0(%rbp),%rax
  824bc6:	48 8b 8d 88 f8 ff ff 	mov    -0x778(%rbp),%rcx
  824bcd:	4c 8b a5 70 f8 ff ff 	mov    -0x790(%rbp),%r12
  824bd4:	48 8b 95 78 f8 ff ff 	mov    -0x788(%rbp),%rdx
  824bdb:	4c 8b 9d 80 f8 ff ff 	mov    -0x780(%rbp),%r11
  824be2:	4c 8b b5 58 fa ff ff 	mov    -0x5a8(%rbp),%r14
  824be9:	4c 8b 95 70 fa ff ff 	mov    -0x590(%rbp),%r10
  824bf0:	4c 0f af f1          	imul   %rcx,%r14
  824bf4:	4c 0f af d1          	imul   %rcx,%r10
  824bf8:	48 3b 8d 68 fa ff ff 	cmp    -0x598(%rbp),%rcx
  824bff:	0f 83 03 01 00 00    	jae    824d08 <pre_step3d_mod_mp_pre_step3d_tile_+0x10868>
  824c05:	48 8b b5 30 f8 ff ff 	mov    -0x7d0(%rbp),%rsi
  824c0c:	48 0f af f0          	imul   %rax,%rsi
  824c10:	4c 8b bd 58 f8 ff ff 	mov    -0x7a8(%rbp),%r15
  824c17:	4c 8b 85 50 f8 ff ff 	mov    -0x7b0(%rbp),%r8
  824c1e:	48 8b bd 60 f8 ff ff 	mov    -0x7a0(%rbp),%rdi
  824c25:	4c 8b ad 68 f8 ff ff 	mov    -0x798(%rbp),%r13
  824c2c:	4c 03 fe             	add    %rsi,%r15
  824c2f:	48 89 95 78 f8 ff ff 	mov    %rdx,-0x788(%rbp)
  824c36:	4d 8d 0c 30          	lea    (%r8,%rsi,1),%r9
  824c3a:	48 89 85 60 f9 ff ff 	mov    %rax,-0x6a0(%rbp)
  824c41:	4d 8d 04 33          	lea    (%r11,%rsi,1),%r8
  824c45:	4c 89 bd 80 fa ff ff 	mov    %r15,-0x580(%rbp)
  824c4c:	48 03 fe             	add    %rsi,%rdi
  824c4f:	48 8b 95 88 fa ff ff 	mov    -0x578(%rbp),%rdx
  824c56:	4c 03 ee             	add    %rsi,%r13
  824c59:	48 03 b5 40 f8 ff ff 	add    -0x7c0(%rbp),%rsi
  824c60:	4c 8b 9d 48 f8 ff ff 	mov    -0x7b8(%rbp),%r11
  824c67:	4c 8b a5 a0 fa ff ff 	mov    -0x560(%rbp),%r12
  824c6e:	66 90                	xchg   %ax,%ax
  824c70:	c4 81 5b 59 04 06    	vmulsd (%r14,%r8,1),%xmm4,%xmm0
  824c76:	c4 01 5b 59 2c 2e    	vmulsd (%r14,%r13,1),%xmm4,%xmm13
  824c7c:	c4 82 99 b9 04 0e    	vfmadd231sd (%r14,%r9,1),%xmm12,%xmm0
  824c82:	c4 42 99 b9 2c 36    	vfmadd231sd (%r14,%rsi,1),%xmm12,%xmm13
  824c88:	4c 8b bd 80 fa ff ff 	mov    -0x580(%rbp),%r15
  824c8f:	48 8b 85 90 fa ff ff 	mov    -0x570(%rbp),%rax
  824c96:	c4 42 b9 bd 2c 3e    	vfnmadd231sd (%r14,%rdi,1),%xmm8,%xmm13
  824c9c:	c4 82 b9 bd 04 3e    	vfnmadd231sd (%r14,%r15,1),%xmm8,%xmm0
  824ca2:	c4 01 13 59 34 22    	vmulsd (%r10,%r12,1),%xmm13,%xmm14
  824ca8:	c4 c1 7b 59 0c 02    	vmulsd (%r10,%rax,1),%xmm0,%xmm1
  824cae:	4c 8b bd 78 fa ff ff 	mov    -0x588(%rbp),%r15
  824cb5:	33 c0                	xor    %eax,%eax
  824cb7:	c5 fb 11 4c ca 08    	vmovsd %xmm1,0x8(%rdx,%rcx,8)
  824cbd:	4c 03 95 70 fa ff ff 	add    -0x590(%rbp),%r10
  824cc4:	49 89 04 cf          	mov    %rax,(%r15,%rcx,8)
  824cc8:	4c 8b bd 98 fa ff ff 	mov    -0x568(%rbp),%r15
  824ccf:	4c 03 b5 58 fa ff ff 	add    -0x5a8(%rbp),%r14
  824cd6:	c4 41 7b 11 34 cf    	vmovsd %xmm14,(%r15,%rcx,8)
  824cdc:	49 89 04 cb          	mov    %rax,(%r11,%rcx,8)
  824ce0:	48 ff c1             	inc    %rcx
  824ce3:	48 3b 8d 68 fa ff ff 	cmp    -0x598(%rbp),%rcx
  824cea:	72 84                	jb     824c70 <pre_step3d_mod_mp_pre_step3d_tile_+0x107d0>
  824cec:	48 8b 85 60 f9 ff ff 	mov    -0x6a0(%rbp),%rax
  824cf3:	4c 8b a5 70 f8 ff ff 	mov    -0x790(%rbp),%r12
  824cfa:	48 8b 95 78 f8 ff ff 	mov    -0x788(%rbp),%rdx
  824d01:	4c 8b 9d 80 f8 ff ff 	mov    -0x780(%rbp),%r11
  824d08:	33 f6                	xor    %esi,%esi
  824d0a:	48 83 bd 90 f8 ff ff 	cmpq   $0x0,-0x770(%rbp)
  824d11:	00 
  824d12:	7e 36                	jle    824d4a <pre_step3d_mod_mp_pre_step3d_tile_+0x108aa>
  824d14:	bf 01 00 00 00       	mov    $0x1,%edi
  824d19:	33 c9                	xor    %ecx,%ecx
  824d1b:	4d 85 e4             	test   %r12,%r12
  824d1e:	74 1b                	je     824d3b <pre_step3d_mod_mp_pre_step3d_tile_+0x1089b>
  824d20:	48 8b bd 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdi
  824d27:	0b 34 ca             	or     (%rdx,%rcx,8),%esi
  824d2a:	0b 74 cf 04          	or     0x4(%rdi,%rcx,8),%esi
  824d2e:	48 ff c1             	inc    %rcx
  824d31:	49 3b cc             	cmp    %r12,%rcx
  824d34:	72 f1                	jb     824d27 <pre_step3d_mod_mp_pre_step3d_tile_+0x10887>
  824d36:	48 8d 7c 09 01       	lea    0x1(%rcx,%rcx,1),%rdi
  824d3b:	48 ff cf             	dec    %rdi
  824d3e:	48 3b bd 90 f8 ff ff 	cmp    -0x770(%rbp),%rdi
  824d45:	73 03                	jae    824d4a <pre_step3d_mod_mp_pre_step3d_tile_+0x108aa>
  824d47:	0b 34 ba             	or     (%rdx,%rdi,4),%esi
  824d4a:	83 bd b0 f8 ff ff 00 	cmpl   $0x0,-0x750(%rbp)
  824d51:	0f 84 e4 04 00 00    	je     82523b <pre_step3d_mod_mp_pre_step3d_tile_+0x10d9b>
  824d57:	f7 c6 01 00 00 00    	test   $0x1,%esi
  824d5d:	0f 84 d8 04 00 00    	je     82523b <pre_step3d_mod_mp_pre_step3d_tile_+0x10d9b>
  824d63:	48 8b b5 40 f6 ff ff 	mov    -0x9c0(%rbp),%rsi
  824d6a:	4c 8d 68 01          	lea    0x1(%rax),%r13
  824d6e:	48 8b 8d 50 f6 ff ff 	mov    -0x9b0(%rbp),%rcx
  824d75:	48 c7 85 48 f6 ff ff 	movq   $0x0,-0x9b8(%rbp)
  824d7c:	00 00 00 00 
  824d80:	48 63 0c b1          	movslq (%rcx,%rsi,4),%rcx
  824d84:	48 85 c9             	test   %rcx,%rcx
  824d87:	0f 8e b2 04 00 00    	jle    82523f <pre_step3d_mod_mp_pre_step3d_tile_+0x10d9f>
  824d8d:	4c 8b 95 f8 f5 ff ff 	mov    -0xa08(%rbp),%r10
  824d94:	33 f6                	xor    %esi,%esi
  824d96:	4c 8b 8d 10 f6 ff ff 	mov    -0x9f0(%rbp),%r9
  824d9d:	4c 89 ad f0 f7 ff ff 	mov    %r13,-0x810(%rbp)
  824da4:	48 89 85 60 f9 ff ff 	mov    %rax,-0x6a0(%rbp)
  824dab:	4b 8b bc 0a 80 00 00 	mov    0x80(%r10,%r9,1),%rdi
  824db2:	00 
  824db3:	4f 8b 84 0a 88 00 00 	mov    0x88(%r10,%r9,1),%r8
  824dba:	00 
  824dbb:	4c 0f af c7          	imul   %rdi,%r8
  824dbf:	48 89 bd 08 f6 ff ff 	mov    %rdi,-0x9f8(%rbp)
  824dc6:	4b 8b 7c 0a 38       	mov    0x38(%r10,%r9,1),%rdi
  824dcb:	4f 8b 7c 0a 40       	mov    0x40(%r10,%r9,1),%r15
  824dd0:	4c 0f af ff          	imul   %rdi,%r15
  824dd4:	4f 8b 74 0a 48       	mov    0x48(%r10,%r9,1),%r14
  824dd9:	4f 8b 0c 0a          	mov    (%r10,%r9,1),%r9
  824ddd:	4d 2b f0             	sub    %r8,%r14
  824de0:	4c 8b 95 38 f6 ff ff 	mov    -0x9c8(%rbp),%r10
  824de7:	45 33 c0             	xor    %r8d,%r8d
  824dea:	4c 89 b5 00 f6 ff ff 	mov    %r14,-0xa00(%rbp)
  824df1:	4d 2b cf             	sub    %r15,%r9
  824df4:	48 89 95 78 f8 ff ff 	mov    %rdx,-0x788(%rbp)
  824dfb:	45 8b 54 82 04       	mov    0x4(%r10,%rax,4),%r10d
  824e00:	4d 89 f3             	mov    %r14,%r11
  824e03:	41 83 e2 01          	and    $0x1,%r10d
  824e07:	4c 8b a5 08 f6 ff ff 	mov    -0x9f8(%rbp),%r12
  824e0e:	4c 8b ad 48 f6 ff ff 	mov    -0x9b8(%rbp),%r13
  824e15:	4c 03 c7             	add    %rdi,%r8
  824e18:	49 03 f4             	add    %r12,%rsi
  824e1b:	49 8d 55 01          	lea    0x1(%r13),%rdx
  824e1f:	47 8b 34 08          	mov    (%r8,%r9,1),%r14d
  824e23:	46 8b 3c 1e          	mov    (%rsi,%r11,1),%r15d
  824e27:	45 85 d2             	test   %r10d,%r10d
  824e2a:	0f 84 da 03 00 00    	je     82520a <pre_step3d_mod_mp_pre_step3d_tile_+0x10d6a>
  824e30:	49 63 c6             	movslq %r14d,%rax
  824e33:	48 3b 85 20 fa ff ff 	cmp    -0x5e0(%rbp),%rax
  824e3a:	0f 8c ca 03 00 00    	jl     82520a <pre_step3d_mod_mp_pre_step3d_tile_+0x10d6a>
  824e40:	44 3b b5 58 f6 ff ff 	cmp    -0x9a8(%rbp),%r14d
  824e47:	0f 8f bd 03 00 00    	jg     82520a <pre_step3d_mod_mp_pre_step3d_tile_+0x10d6a>
  824e4d:	44 3b bd 30 f5 ff ff 	cmp    -0xad0(%rbp),%r15d
  824e54:	0f 85 b0 03 00 00    	jne    82520a <pre_step3d_mod_mp_pre_step3d_tile_+0x10d6a>
  824e5a:	4c 8b b5 f8 f5 ff ff 	mov    -0xa08(%rbp),%r14
  824e61:	4c 8b bd 10 f6 ff ff 	mov    -0x9f0(%rbp),%r15
  824e68:	4f 8b b4 3e 00 02 00 	mov    0x200(%r14,%r15,1),%r14
  824e6f:	00 
  824e70:	4c 89 b5 38 f3 ff ff 	mov    %r14,-0xcc8(%rbp)
  824e77:	49 83 fe 08          	cmp    $0x8,%r14
  824e7b:	0f 85 a7 01 00 00    	jne    825028 <pre_step3d_mod_mp_pre_step3d_tile_+0x10b88>
  824e81:	4c 8b b5 f8 f5 ff ff 	mov    -0xa08(%rbp),%r14
  824e88:	4b 83 bc 3e 60 02 00 	cmpq   $0x8,0x260(%r14,%r15,1)
  824e8f:	00 08 
  824e91:	0f 85 91 01 00 00    	jne    825028 <pre_step3d_mod_mp_pre_step3d_tile_+0x10b88>
  824e97:	48 c7 85 30 f3 ff ff 	movq   $0x0,-0xcd0(%rbp)
  824e9e:	00 00 00 00 
  824ea2:	48 83 bd b0 f3 ff ff 	cmpq   $0x0,-0xc50(%rbp)
  824ea9:	00 
  824eaa:	0f 8e 5a 03 00 00    	jle    82520a <pre_step3d_mod_mp_pre_step3d_tile_+0x10d6a>
  824eb0:	48 89 95 a0 f3 ff ff 	mov    %rdx,-0xc60(%rbp)
  824eb7:	48 8b 95 98 f3 ff ff 	mov    -0xc68(%rbp),%rdx
  824ebe:	4d 89 f7             	mov    %r14,%r15
  824ec1:	4c 8b b5 10 f6 ff ff 	mov    -0x9f0(%rbp),%r14
  824ec8:	4c 89 85 10 f3 ff ff 	mov    %r8,-0xcf0(%rbp)
  824ecf:	48 8d 44 c2 08       	lea    0x8(%rdx,%rax,8),%rax
  824ed4:	48 89 85 40 f3 ff ff 	mov    %rax,-0xcc0(%rbp)
  824edb:	4b 8b 94 37 78 02 00 	mov    0x278(%r15,%r14,1),%rdx
  824ee2:	00 
  824ee3:	4f 8b 84 37 80 02 00 	mov    0x280(%r15,%r14,1),%r8
  824eea:	00 
  824eeb:	4c 0f af c2          	imul   %rdx,%r8
  824eef:	4b 8b 84 37 68 02 00 	mov    0x268(%r15,%r14,1),%rax
  824ef6:	00 
  824ef7:	44 89 95 00 f3 ff ff 	mov    %r10d,-0xd00(%rbp)
  824efe:	4f 8b 94 37 98 02 00 	mov    0x298(%r15,%r14,1),%r10
  824f05:	00 
  824f06:	49 f7 da             	neg    %r10
  824f09:	4d 8d 04 c0          	lea    (%r8,%rax,8),%r8
  824f0d:	48 8b 85 60 f9 ff ff 	mov    -0x6a0(%rbp),%rax
  824f14:	4c 89 8d 08 f3 ff ff 	mov    %r9,-0xcf8(%rbp)
  824f1b:	45 33 c9             	xor    %r9d,%r9d
  824f1e:	4c 89 8d 60 f3 ff ff 	mov    %r9,-0xca0(%rbp)
  824f25:	4c 89 8d 68 f3 ff ff 	mov    %r9,-0xc98(%rbp)
  824f2c:	49 8d 44 02 01       	lea    0x1(%r10,%rax,1),%rax
  824f31:	4b 0f af 84 37 90 02 	imul   0x290(%r15,%r14,1),%rax
  824f38:	00 00 
  824f3a:	4f 8b 94 37 28 02 00 	mov    0x228(%r15,%r14,1),%r10
  824f41:	00 
  824f42:	4d 2b d0             	sub    %r8,%r10
  824f45:	4f 8b 8c 37 20 02 00 	mov    0x220(%r15,%r14,1),%r9
  824f4c:	00 
  824f4d:	48 89 95 78 f3 ff ff 	mov    %rdx,-0xc88(%rbp)
  824f54:	48 89 bd 18 f3 ff ff 	mov    %rdi,-0xce8(%rbp)
  824f5b:	48 89 b5 20 f3 ff ff 	mov    %rsi,-0xce0(%rbp)
  824f62:	4f 8d 04 ea          	lea    (%r10,%r13,8),%r8
  824f66:	49 03 c0             	add    %r8,%rax
  824f69:	4f 8b 84 37 18 02 00 	mov    0x218(%r15,%r14,1),%r8
  824f70:	00 
  824f71:	4d 0f af c8          	imul   %r8,%r9
  824f75:	4f 8b 94 37 08 02 00 	mov    0x208(%r15,%r14,1),%r10
  824f7c:	00 
  824f7d:	4f 8b b4 37 c8 01 00 	mov    0x1c8(%r15,%r14,1),%r14
  824f84:	00 
  824f85:	4c 8d 3c 50          	lea    (%rax,%rdx,2),%r15
  824f89:	49 c1 e2 03          	shl    $0x3,%r10
  824f8d:	4d 2b f1             	sub    %r9,%r14
  824f90:	4d 2b f2             	sub    %r10,%r14
  824f93:	4c 89 85 90 f3 ff ff 	mov    %r8,-0xc70(%rbp)
  824f9a:	48 89 8d 28 f3 ff ff 	mov    %rcx,-0xcd8(%rbp)
  824fa1:	4f 8d 2c ee          	lea    (%r14,%r13,8),%r13
  824fa5:	48 8b 95 a0 f3 ff ff 	mov    -0xc60(%rbp),%rdx
  824fac:	4f 8d 74 45 00       	lea    0x0(%r13,%r8,2),%r14
  824fb1:	48 8b 8d 40 f3 ff ff 	mov    -0xcc0(%rbp),%rcx
  824fb8:	48 8b b5 68 f3 ff ff 	mov    -0xc98(%rbp),%rsi
  824fbf:	48 8b bd 90 f3 ff ff 	mov    -0xc70(%rbp),%rdi
  824fc6:	4c 8b 85 60 f3 ff ff 	mov    -0xca0(%rbp),%r8
  824fcd:	4c 8b 8d 78 f3 ff ff 	mov    -0xc88(%rbp),%r9
  824fd4:	4c 8b 95 30 f3 ff ff 	mov    -0xcd0(%rbp),%r10
  824fdb:	4c 8b 9d b0 f3 ff ff 	mov    -0xc50(%rbp),%r11
  824fe2:	4c 8b a5 40 fa ff ff 	mov    -0x5c0(%rbp),%r12
  824fe9:	c4 c1 7b 10 46 08    	vmovsd 0x8(%r14),%xmm0
  824fef:	4d 03 c1             	add    %r9,%r8
  824ff2:	c4 41 7b 59 6f 08    	vmulsd 0x8(%r15),%xmm0,%xmm13
  824ff8:	48 03 f7             	add    %rdi,%rsi
  824ffb:	c4 c1 7b 10 4c 00 08 	vmovsd 0x8(%r8,%rax,1),%xmm1
  825002:	49 ff c2             	inc    %r10
  825005:	c4 22 f1 b9 6c 2e 08 	vfmadd231sd 0x8(%rsi,%r13,1),%xmm1,%xmm13
  82500c:	4c 03 f7             	add    %rdi,%r14
  82500f:	c4 62 99 a9 29       	vfmadd213sd (%rcx),%xmm12,%xmm13
  825014:	4d 03 f9             	add    %r9,%r15
  825017:	c5 7b 11 29          	vmovsd %xmm13,(%rcx)
  82501b:	49 03 cc             	add    %r12,%rcx
  82501e:	4d 3b d3             	cmp    %r11,%r10
  825021:	72 c6                	jb     824fe9 <pre_step3d_mod_mp_pre_step3d_tile_+0x10b49>
  825023:	e9 aa 01 00 00       	jmpq   8251d2 <pre_step3d_mod_mp_pre_step3d_tile_+0x10d32>
  825028:	48 c7 85 a8 f3 ff ff 	movq   $0x0,-0xc58(%rbp)
  82502f:	00 00 00 00 
  825033:	48 83 bd b0 f3 ff ff 	cmpq   $0x0,-0xc50(%rbp)
  82503a:	00 
  82503b:	0f 8e c9 01 00 00    	jle    82520a <pre_step3d_mod_mp_pre_step3d_tile_+0x10d6a>
  825041:	4c 89 85 10 f3 ff ff 	mov    %r8,-0xcf0(%rbp)
  825048:	48 89 95 a0 f3 ff ff 	mov    %rdx,-0xc60(%rbp)
  82504f:	48 8b 95 f8 f5 ff ff 	mov    -0xa08(%rbp),%rdx
  825056:	4d 89 f8             	mov    %r15,%r8
  825059:	4c 89 8d 08 f3 ff ff 	mov    %r9,-0xcf8(%rbp)
  825060:	44 89 95 00 f3 ff ff 	mov    %r10d,-0xd00(%rbp)
  825067:	4e 8b 8c 02 68 02 00 	mov    0x268(%rdx,%r8,1),%r9
  82506e:	00 
  82506f:	49 f7 d9             	neg    %r9
  825072:	4e 8b 94 02 78 02 00 	mov    0x278(%rdx,%r8,1),%r10
  825079:	00 
  82507a:	4c 8b bd 98 f3 ff ff 	mov    -0xc68(%rbp),%r15
  825081:	4c 89 95 58 f3 ff ff 	mov    %r10,-0xca8(%rbp)
  825088:	48 89 bd 18 f3 ff ff 	mov    %rdi,-0xce8(%rbp)
  82508f:	4f 8d 74 29 01       	lea    0x1(%r9,%r13,1),%r14
  825094:	4e 0f af b4 02 60 02 	imul   0x260(%rdx,%r8,1),%r14
  82509b:	00 00 
  82509d:	45 33 c9             	xor    %r9d,%r9d
  8250a0:	49 8d 44 c7 08       	lea    0x8(%r15,%rax,8),%rax
  8250a5:	48 89 85 48 f3 ff ff 	mov    %rax,-0xcb8(%rbp)
  8250ac:	4f 8d 3c 12          	lea    (%r10,%r10,1),%r15
  8250b0:	4c 89 bd 50 f3 ff ff 	mov    %r15,-0xcb0(%rbp)
  8250b7:	4a 8b 84 02 80 02 00 	mov    0x280(%rdx,%r8,1),%rax
  8250be:	00 
  8250bf:	4e 8b bc 02 98 02 00 	mov    0x298(%rdx,%r8,1),%r15
  8250c6:	00 
  8250c7:	49 0f af c2          	imul   %r10,%rax
  8250cb:	49 f7 df             	neg    %r15
  8250ce:	4c 03 bd f0 f7 ff ff 	add    -0x810(%rbp),%r15
  8250d5:	4e 0f af bc 02 90 02 	imul   0x290(%rdx,%r8,1),%r15
  8250dc:	00 00 
  8250de:	4e 8b 94 02 28 02 00 	mov    0x228(%rdx,%r8,1),%r10
  8250e5:	00 
  8250e6:	4c 2b d0             	sub    %rax,%r10
  8250e9:	4d 03 f2             	add    %r10,%r14
  8250ec:	4d 03 fe             	add    %r14,%r15
  8250ef:	4e 8b b4 02 08 02 00 	mov    0x208(%rdx,%r8,1),%r14
  8250f6:	00 
  8250f7:	49 f7 de             	neg    %r14
  8250fa:	4c 89 8d 70 f3 ff ff 	mov    %r9,-0xc90(%rbp)
  825101:	4c 89 8d 80 f3 ff ff 	mov    %r9,-0xc80(%rbp)
  825108:	4e 8b 8c 02 20 02 00 	mov    0x220(%rdx,%r8,1),%r9
  82510f:	00 
  825110:	4b 8d 44 2e 01       	lea    0x1(%r14,%r13,1),%rax
  825115:	4e 8b ac 02 18 02 00 	mov    0x218(%rdx,%r8,1),%r13
  82511c:	00 
  82511d:	4d 0f af cd          	imul   %r13,%r9
  825121:	48 0f af 85 38 f3 ff 	imul   -0xcc8(%rbp),%rax
  825128:	ff 
  825129:	4a 8b 94 02 c8 01 00 	mov    0x1c8(%rdx,%r8,1),%rdx
  825130:	00 
  825131:	4f 8d 54 2d 00       	lea    0x0(%r13,%r13,1),%r10
  825136:	4c 89 95 88 f3 ff ff 	mov    %r10,-0xc78(%rbp)
  82513d:	49 2b d1             	sub    %r9,%rdx
  825140:	48 03 c2             	add    %rdx,%rax
  825143:	48 89 b5 20 f3 ff ff 	mov    %rsi,-0xce0(%rbp)
  82514a:	48 89 8d 28 f3 ff ff 	mov    %rcx,-0xcd8(%rbp)
  825151:	48 8b 95 a0 f3 ff ff 	mov    -0xc60(%rbp),%rdx
  825158:	48 8b 8d 48 f3 ff ff 	mov    -0xcb8(%rbp),%rcx
  82515f:	4c 89 fe             	mov    %r15,%rsi
  825162:	48 8b bd 80 f3 ff ff 	mov    -0xc80(%rbp),%rdi
  825169:	4c 8b 85 88 f3 ff ff 	mov    -0xc78(%rbp),%r8
  825170:	4c 8b 8d 70 f3 ff ff 	mov    -0xc90(%rbp),%r9
  825177:	4c 8b 95 50 f3 ff ff 	mov    -0xcb0(%rbp),%r10
  82517e:	4c 8b 9d 58 f3 ff ff 	mov    -0xca8(%rbp),%r11
  825185:	4c 8b a5 a8 f3 ff ff 	mov    -0xc58(%rbp),%r12
  82518c:	4c 8b b5 b0 f3 ff ff 	mov    -0xc50(%rbp),%r14
  825193:	4c 8b bd 40 fa ff ff 	mov    -0x5c0(%rbp),%r15
  82519a:	c4 c1 7b 10 04 00    	vmovsd (%r8,%rax,1),%xmm0
  8251a0:	4d 03 cb             	add    %r11,%r9
  8251a3:	c4 41 7b 59 2c 32    	vmulsd (%r10,%rsi,1),%xmm0,%xmm13
  8251a9:	49 03 fd             	add    %r13,%rdi
  8251ac:	c4 c1 7b 10 0c 31    	vmovsd (%r9,%rsi,1),%xmm1
  8251b2:	49 ff c4             	inc    %r12
  8251b5:	c4 62 f1 b9 2c 07    	vfmadd231sd (%rdi,%rax,1),%xmm1,%xmm13
  8251bb:	4d 03 c5             	add    %r13,%r8
  8251be:	c4 62 99 a9 29       	vfmadd213sd (%rcx),%xmm12,%xmm13
  8251c3:	4d 03 d3             	add    %r11,%r10
  8251c6:	c5 7b 11 29          	vmovsd %xmm13,(%rcx)
  8251ca:	49 03 cf             	add    %r15,%rcx
  8251cd:	4d 3b e6             	cmp    %r14,%r12
  8251d0:	72 c8                	jb     82519a <pre_step3d_mod_mp_pre_step3d_tile_+0x10cfa>
  8251d2:	44 8b 95 00 f3 ff ff 	mov    -0xd00(%rbp),%r10d
  8251d9:	4c 8b 8d 08 f3 ff ff 	mov    -0xcf8(%rbp),%r9
  8251e0:	4c 8b 85 10 f3 ff ff 	mov    -0xcf0(%rbp),%r8
  8251e7:	48 8b bd 18 f3 ff ff 	mov    -0xce8(%rbp),%rdi
  8251ee:	4c 8b 9d 00 f6 ff ff 	mov    -0xa00(%rbp),%r11
  8251f5:	48 8b b5 20 f3 ff ff 	mov    -0xce0(%rbp),%rsi
  8251fc:	4c 8b a5 08 f6 ff ff 	mov    -0x9f8(%rbp),%r12
  825203:	48 8b 8d 28 f3 ff ff 	mov    -0xcd8(%rbp),%rcx
  82520a:	49 89 d5             	mov    %rdx,%r13
  82520d:	48 3b d1             	cmp    %rcx,%rdx
  825210:	0f 82 ff fb ff ff    	jb     824e15 <pre_step3d_mod_mp_pre_step3d_tile_+0x10975>
  825216:	48 8b 85 60 f9 ff ff 	mov    -0x6a0(%rbp),%rax
  82521d:	4c 8b ad f0 f7 ff ff 	mov    -0x810(%rbp),%r13
  825224:	4c 8b a5 70 f8 ff ff 	mov    -0x790(%rbp),%r12
  82522b:	48 8b 95 78 f8 ff ff 	mov    -0x788(%rbp),%rdx
  825232:	4c 8b 9d 80 f8 ff ff 	mov    -0x780(%rbp),%r11
  825239:	eb 04                	jmp    82523f <pre_step3d_mod_mp_pre_step3d_tile_+0x10d9f>
  82523b:	4c 8d 68 01          	lea    0x1(%rax),%r13
  82523f:	8b 8d 98 f8 ff ff    	mov    -0x768(%rbp),%ecx
  825245:	c4 c1 79 28 c2       	vmovapd %xmm10,%xmm0
  82524a:	3b 8d a0 f8 ff ff    	cmp    -0x760(%rbp),%ecx
  825250:	74 05                	je     825257 <pre_step3d_mod_mp_pre_step3d_tile_+0x10db7>
  825252:	c4 c1 78 28 c3       	vmovaps %xmm11,%xmm0
  825257:	48 83 bd 48 fa ff ff 	cmpq   $0x8,-0x5b8(%rbp)
  82525e:	08 
  82525f:	0f 85 78 01 00 00    	jne    8253dd <pre_step3d_mod_mp_pre_step3d_tile_+0x10f3d>
  825265:	48 83 bd c0 f9 ff ff 	cmpq   $0x8,-0x640(%rbp)
  82526c:	08 
  82526d:	0f 85 6a 01 00 00    	jne    8253dd <pre_step3d_mod_mp_pre_step3d_tile_+0x10f3d>
  825273:	48 83 bd 58 fa ff ff 	cmpq   $0x8,-0x5a8(%rbp)
  82527a:	08 
  82527b:	0f 85 5c 01 00 00    	jne    8253dd <pre_step3d_mod_mp_pre_step3d_tile_+0x10f3d>
  825281:	33 c9                	xor    %ecx,%ecx
  825283:	33 f6                	xor    %esi,%esi
  825285:	48 83 bd 30 fa ff ff 	cmpq   $0x0,-0x5d0(%rbp)
  82528c:	00 
  82528d:	0f 8e 48 04 00 00    	jle    8256db <pre_step3d_mod_mp_pre_step3d_tile_+0x1123b>
  825293:	48 0f af 85 30 f8 ff 	imul   -0x7d0(%rbp),%rax
  82529a:	ff 
  82529b:	c4 e2 7d 19 c8       	vbroadcastsd %xmm0,%ymm1
  8252a0:	4c 89 ad f0 f7 ff ff 	mov    %r13,-0x810(%rbp)
  8252a7:	48 03 85 d8 f7 ff ff 	add    -0x828(%rbp),%rax
  8252ae:	4c 8b 9d 88 fa ff ff 	mov    -0x578(%rbp),%r11
  8252b5:	4c 8b ad 78 fa ff ff 	mov    -0x588(%rbp),%r13
  8252bc:	4c 8b b5 90 f9 ff ff 	mov    -0x670(%rbp),%r14
  8252c3:	4c 8b bd 68 fa ff ff 	mov    -0x598(%rbp),%r15
  8252ca:	48 89 95 78 f8 ff ff 	mov    %rdx,-0x788(%rbp)
  8252d1:	48 8b 95 38 fa ff ff 	mov    -0x5c8(%rbp),%rdx
  8252d8:	48 3b 95 20 fa ff ff 	cmp    -0x5e0(%rbp),%rdx
  8252df:	0f 8c d5 00 00 00    	jl     8253ba <pre_step3d_mod_mp_pre_step3d_tile_+0x10f1a>
  8252e5:	49 83 ff 04          	cmp    $0x4,%r15
  8252e9:	0f 8c 22 04 00 00    	jl     825711 <pre_step3d_mod_mp_pre_step3d_tile_+0x11271>
  8252ef:	4c 8b a5 c8 fa ff ff 	mov    -0x538(%rbp),%r12
  8252f6:	45 33 c9             	xor    %r9d,%r9d
  8252f9:	48 89 c2             	mov    %rax,%rdx
  8252fc:	4d 8d 44 35 00       	lea    0x0(%r13,%rsi,1),%r8
  825301:	4c 8b ad 88 f9 ff ff 	mov    -0x678(%rbp),%r13
  825308:	49 8d 3c 33          	lea    (%r11,%rsi,1),%rdi
  82530c:	4d 89 e7             	mov    %r12,%r15
  82530f:	4d 8d 14 36          	lea    (%r14,%rsi,1),%r10
  825313:	4c 8b b5 80 f9 ff ff 	mov    -0x680(%rbp),%r14
  82531a:	c4 01 75 59 6c cd 00 	vmulpd 0x0(%r13,%r9,8),%ymm1,%ymm13
  825321:	c4 21 7d 10 74 cf 08 	vmovupd 0x8(%rdi,%r9,8),%ymm14
  825328:	c4 01 15 59 2c ce    	vmulpd (%r14,%r9,8),%ymm13,%ymm13
  82532e:	c4 01 0d 5c 3c c8    	vsubpd (%r8,%r9,8),%ymm14,%ymm15
  825334:	c4 62 85 ac 2a       	vfnmadd213pd (%rdx),%ymm15,%ymm13
  825339:	c4 01 15 59 74 ca 08 	vmulpd 0x8(%r10,%r9,8),%ymm13,%ymm14
  825340:	49 83 c1 04          	add    $0x4,%r9
  825344:	c5 7d 11 32          	vmovupd %ymm14,(%rdx)
  825348:	48 83 c2 20          	add    $0x20,%rdx
  82534c:	4d 3b cf             	cmp    %r15,%r9
  82534f:	72 c9                	jb     82531a <pre_step3d_mod_mp_pre_step3d_tile_+0x10e7a>
  825351:	4c 8b ad 78 fa ff ff 	mov    -0x588(%rbp),%r13
  825358:	4c 8b b5 90 f9 ff ff 	mov    -0x670(%rbp),%r14
  82535f:	4c 8b bd 68 fa ff ff 	mov    -0x598(%rbp),%r15
  825366:	4d 3b e7             	cmp    %r15,%r12
  825369:	73 4f                	jae    8253ba <pre_step3d_mod_mp_pre_step3d_tile_+0x10f1a>
  82536b:	4c 8b 8d 88 f9 ff ff 	mov    -0x678(%rbp),%r9
  825372:	4d 8d 44 35 00       	lea    0x0(%r13,%rsi,1),%r8
  825377:	4c 8b 95 80 f9 ff ff 	mov    -0x680(%rbp),%r10
  82537e:	49 8d 3c 33          	lea    (%r11,%rsi,1),%rdi
  825382:	49 8d 14 36          	lea    (%r14,%rsi,1),%rdx
  825386:	c4 01 7b 59 2c e1    	vmulsd (%r9,%r12,8),%xmm0,%xmm13
  82538c:	c4 21 7b 10 74 e7 08 	vmovsd 0x8(%rdi,%r12,8),%xmm14
  825393:	c4 01 13 59 2c e2    	vmulsd (%r10,%r12,8),%xmm13,%xmm13
  825399:	c4 01 0b 5c 3c e0    	vsubsd (%r8,%r12,8),%xmm14,%xmm15
  82539f:	c4 22 81 ad 2c e0    	vfnmadd213sd (%rax,%r12,8),%xmm15,%xmm13
  8253a5:	c4 21 13 59 74 e2 08 	vmulsd 0x8(%rdx,%r12,8),%xmm13,%xmm14
  8253ac:	c4 21 7b 11 34 e0    	vmovsd %xmm14,(%rax,%r12,8)
  8253b2:	49 ff c4             	inc    %r12
  8253b5:	4d 3b e7             	cmp    %r15,%r12
  8253b8:	72 cc                	jb     825386 <pre_step3d_mod_mp_pre_step3d_tile_+0x10ee6>
  8253ba:	48 ff c1             	inc    %rcx
  8253bd:	48 03 b5 40 fa ff ff 	add    -0x5c0(%rbp),%rsi
  8253c4:	48 03 85 28 fa ff ff 	add    -0x5d8(%rbp),%rax
  8253cb:	48 3b 8d 30 fa ff ff 	cmp    -0x5d0(%rbp),%rcx
  8253d2:	0f 82 f9 fe ff ff    	jb     8252d1 <pre_step3d_mod_mp_pre_step3d_tile_+0x10e31>
  8253d8:	e9 e2 02 00 00       	jmpq   8256bf <pre_step3d_mod_mp_pre_step3d_tile_+0x1121f>
  8253dd:	33 ff                	xor    %edi,%edi
  8253df:	33 f6                	xor    %esi,%esi
  8253e1:	33 c9                	xor    %ecx,%ecx
  8253e3:	48 83 bd 30 fa ff ff 	cmpq   $0x0,-0x5d0(%rbp)
  8253ea:	00 
  8253eb:	0f 8e ea 02 00 00    	jle    8256db <pre_step3d_mod_mp_pre_step3d_tile_+0x1123b>
  8253f1:	48 0f af 85 30 f8 ff 	imul   -0x7d0(%rbp),%rax
  8253f8:	ff 
  8253f9:	4c 8b 85 e0 f7 ff ff 	mov    -0x820(%rbp),%r8
  825400:	4c 89 ad f0 f7 ff ff 	mov    %r13,-0x810(%rbp)
  825407:	c5 fb 12 c8          	vmovddup %xmm0,%xmm1
  82540b:	48 89 bd 50 fa ff ff 	mov    %rdi,-0x5b0(%rbp)
  825412:	4c 03 c0             	add    %rax,%r8
  825415:	48 03 85 e8 f7 ff ff 	add    -0x818(%rbp),%rax
  82541c:	4c 8b ad 68 fa ff ff 	mov    -0x598(%rbp),%r13
  825423:	4c 8b 9d 58 fa ff ff 	mov    -0x5a8(%rbp),%r11
  82542a:	4c 8b a5 c0 f9 ff ff 	mov    -0x640(%rbp),%r12
  825431:	48 89 85 60 f9 ff ff 	mov    %rax,-0x6a0(%rbp)
  825438:	4c 89 85 68 f9 ff ff 	mov    %r8,-0x698(%rbp)
  82543f:	48 89 95 78 f8 ff ff 	mov    %rdx,-0x788(%rbp)
  825446:	48 8b 85 38 fa ff ff 	mov    -0x5c8(%rbp),%rax
  82544d:	48 3b 85 20 fa ff ff 	cmp    -0x5e0(%rbp),%rax
  825454:	0f 8c 39 02 00 00    	jl     825693 <pre_step3d_mod_mp_pre_step3d_tile_+0x111f3>
  82545a:	4d 85 db             	test   %r11,%r11
  82545d:	0f 84 b6 02 00 00    	je     825719 <pre_step3d_mod_mp_pre_step3d_tile_+0x11279>
  825463:	49 83 fd 04          	cmp    $0x4,%r13
  825467:	0f 8c ac 02 00 00    	jl     825719 <pre_step3d_mod_mp_pre_step3d_tile_+0x11279>
  82546d:	48 8b 95 78 fa ff ff 	mov    -0x588(%rbp),%rdx
  825474:	33 ff                	xor    %edi,%edi
  825476:	4c 8b bd 68 f9 ff ff 	mov    -0x698(%rbp),%r15
  82547d:	4c 8b 8d 88 fa ff ff 	mov    -0x578(%rbp),%r9
  825484:	4c 8b 95 90 f9 ff ff 	mov    -0x670(%rbp),%r10
  82548b:	4c 8d 04 32          	lea    (%rdx,%rsi,1),%r8
  82548f:	48 8b 85 60 f9 ff ff 	mov    -0x6a0(%rbp),%rax
  825496:	4c 03 f9             	add    %rcx,%r15
  825499:	4c 8b b5 c8 fa ff ff 	mov    -0x538(%rbp),%r14
  8254a0:	49 8d 14 31          	lea    (%r9,%rsi,1),%rdx
  8254a4:	4c 89 85 70 f9 ff ff 	mov    %r8,-0x690(%rbp)
  8254ab:	4d 8d 0c 32          	lea    (%r10,%rsi,1),%r9
  8254af:	45 33 d2             	xor    %r10d,%r10d
  8254b2:	4c 89 b5 98 f9 ff ff 	mov    %r14,-0x668(%rbp)
  8254b9:	45 33 c0             	xor    %r8d,%r8d
  8254bc:	48 89 8d a0 f9 ff ff 	mov    %rcx,-0x660(%rbp)
  8254c3:	48 03 c1             	add    %rcx,%rax
  8254c6:	48 89 b5 a8 f9 ff ff 	mov    %rsi,-0x658(%rbp)
  8254cd:	4c 89 f9             	mov    %r15,%rcx
  8254d0:	48 8b b5 70 f9 ff ff 	mov    -0x690(%rbp),%rsi
  8254d7:	4c 8b ad 78 f9 ff ff 	mov    -0x688(%rbp),%r13
  8254de:	4c 8b b5 48 fa ff ff 	mov    -0x5b8(%rbp),%r14
  8254e5:	4c 8b bd d0 fa ff ff 	mov    -0x530(%rbp),%r15
  8254ec:	4d 03 fa             	add    %r10,%r15
  8254ef:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  8254f4:	c4 01 11 16 3c 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm15
  8254fa:	c4 41 71 59 ef       	vmulpd %xmm15,%xmm1,%xmm13
  8254ff:	4c 8b bd d8 fa ff ff 	mov    -0x528(%rbp),%r15
  825506:	4d 03 f8             	add    %r8,%r15
  825509:	c4 41 7b 10 37       	vmovsd (%r15),%xmm14
  82550e:	c4 01 09 16 3c 27    	vmovhpd (%r15,%r12,1),%xmm14,%xmm15
  825514:	4f 8d 7c 15 00       	lea    0x0(%r13,%r10,1),%r15
  825519:	c4 41 11 59 f7       	vmulpd %xmm15,%xmm13,%xmm14
  82551e:	c5 7b 10 28          	vmovsd (%rax),%xmm13
  825522:	4f 8d 14 b2          	lea    (%r10,%r14,4),%r10
  825526:	c4 21 11 16 3c 18    	vmovhpd (%rax,%r11,1),%xmm13,%xmm15
  82552c:	c5 79 10 6c fa 08    	vmovupd 0x8(%rdx,%rdi,8),%xmm13
  825532:	c5 11 5c 2c fe       	vsubpd (%rsi,%rdi,8),%xmm13,%xmm13
  825537:	c4 42 91 ac f7       	vfnmadd213pd %xmm15,%xmm13,%xmm14
  82553c:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  825541:	c4 41 09 59 74 f9 08 	vmulpd 0x8(%r9,%rdi,8),%xmm14,%xmm14
  825548:	c5 7b 11 30          	vmovsd %xmm14,(%rax)
  82554c:	c4 41 79 17 34 03    	vmovhpd %xmm14,(%r11,%rax,1)
  825552:	4a 8d 04 98          	lea    (%rax,%r11,4),%rax
  825556:	c4 01 01 16 34 37    	vmovhpd (%r15,%r14,1),%xmm15,%xmm14
  82555c:	c4 41 71 59 fe       	vmulpd %xmm14,%xmm1,%xmm15
  825561:	4c 8b bd e0 fa ff ff 	mov    -0x520(%rbp),%r15
  825568:	4d 03 f8             	add    %r8,%r15
  82556b:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  825570:	4f 8d 04 a0          	lea    (%r8,%r12,4),%r8
  825574:	c4 01 11 16 34 27    	vmovhpd (%r15,%r12,1),%xmm13,%xmm14
  82557a:	c4 41 01 59 f6       	vmulpd %xmm14,%xmm15,%xmm14
  82557f:	c5 79 10 7c fa 18    	vmovupd 0x18(%rdx,%rdi,8),%xmm15
  825585:	c5 01 5c 7c fe 10    	vsubpd 0x10(%rsi,%rdi,8),%xmm15,%xmm15
  82558b:	c5 7b 10 29          	vmovsd (%rcx),%xmm13
  82558f:	c4 21 11 16 2c 19    	vmovhpd (%rcx,%r11,1),%xmm13,%xmm13
  825595:	c4 42 81 ac f5       	vfnmadd213pd %xmm13,%xmm15,%xmm14
  82559a:	c4 41 09 59 6c f9 18 	vmulpd 0x18(%r9,%rdi,8),%xmm14,%xmm13
  8255a1:	48 83 c7 04          	add    $0x4,%rdi
  8255a5:	c5 7b 11 29          	vmovsd %xmm13,(%rcx)
  8255a9:	c4 41 79 17 2c 0b    	vmovhpd %xmm13,(%r11,%rcx,1)
  8255af:	4a 8d 0c 99          	lea    (%rcx,%r11,4),%rcx
  8255b3:	48 3b bd c8 fa ff ff 	cmp    -0x538(%rbp),%rdi
  8255ba:	0f 82 25 ff ff ff    	jb     8254e5 <pre_step3d_mod_mp_pre_step3d_tile_+0x11045>
  8255c0:	4c 8b b5 98 f9 ff ff 	mov    -0x668(%rbp),%r14
  8255c7:	48 8b 8d a0 f9 ff ff 	mov    -0x660(%rbp),%rcx
  8255ce:	48 8b b5 a8 f9 ff ff 	mov    -0x658(%rbp),%rsi
  8255d5:	4c 8b ad 68 fa ff ff 	mov    -0x598(%rbp),%r13
  8255dc:	4c 89 d8             	mov    %r11,%rax
  8255df:	4d 89 e1             	mov    %r12,%r9
  8255e2:	48 8b 95 48 fa ff ff 	mov    -0x5b8(%rbp),%rdx
  8255e9:	49 0f af c6          	imul   %r14,%rax
  8255ed:	4d 0f af ce          	imul   %r14,%r9
  8255f1:	49 0f af d6          	imul   %r14,%rdx
  8255f5:	4d 3b f5             	cmp    %r13,%r14
  8255f8:	0f 83 95 00 00 00    	jae    825693 <pre_step3d_mod_mp_pre_step3d_tile_+0x111f3>
  8255fe:	4c 8b bd 60 f9 ff ff 	mov    -0x6a0(%rbp),%r15
  825605:	4c 8b 85 78 fa ff ff 	mov    -0x588(%rbp),%r8
  82560c:	48 8b bd 88 fa ff ff 	mov    -0x578(%rbp),%rdi
  825613:	4c 8b 95 90 f9 ff ff 	mov    -0x670(%rbp),%r10
  82561a:	4c 03 f9             	add    %rcx,%r15
  82561d:	48 89 8d a0 f9 ff ff 	mov    %rcx,-0x660(%rbp)
  825624:	4c 03 c6             	add    %rsi,%r8
  825627:	48 89 b5 a8 f9 ff ff 	mov    %rsi,-0x658(%rbp)
  82562e:	48 03 fe             	add    %rsi,%rdi
  825631:	48 8b 8d d8 fa ff ff 	mov    -0x528(%rbp),%rcx
  825638:	4c 03 d6             	add    %rsi,%r10
  82563b:	48 8b b5 d0 fa ff ff 	mov    -0x530(%rbp),%rsi
  825642:	49 03 c7             	add    %r15,%rax
  825645:	4c 8b bd 48 fa ff ff 	mov    -0x5b8(%rbp),%r15
  82564c:	c5 7b 59 2c 32       	vmulsd (%rdx,%rsi,1),%xmm0,%xmm13
  825651:	49 03 d7             	add    %r15,%rdx
  825654:	c4 21 7b 10 74 f7 08 	vmovsd 0x8(%rdi,%r14,8),%xmm14
  82565b:	c4 41 13 59 2c 09    	vmulsd (%r9,%rcx,1),%xmm13,%xmm13
  825661:	4d 03 cc             	add    %r12,%r9
  825664:	c4 01 0b 5c 3c f0    	vsubsd (%r8,%r14,8),%xmm14,%xmm15
  82566a:	c4 62 81 ad 28       	vfnmadd213sd (%rax),%xmm15,%xmm13
  82566f:	c4 01 13 59 74 f2 08 	vmulsd 0x8(%r10,%r14,8),%xmm13,%xmm14
  825676:	49 ff c6             	inc    %r14
  825679:	c5 7b 11 30          	vmovsd %xmm14,(%rax)
  82567d:	49 03 c3             	add    %r11,%rax
  825680:	4d 3b f5             	cmp    %r13,%r14
  825683:	72 c7                	jb     82564c <pre_step3d_mod_mp_pre_step3d_tile_+0x111ac>
  825685:	48 8b 8d a0 f9 ff ff 	mov    -0x660(%rbp),%rcx
  82568c:	48 8b b5 a8 f9 ff ff 	mov    -0x658(%rbp),%rsi
  825693:	48 8b 85 50 fa ff ff 	mov    -0x5b0(%rbp),%rax
  82569a:	48 ff c0             	inc    %rax
  82569d:	48 03 b5 40 fa ff ff 	add    -0x5c0(%rbp),%rsi
  8256a4:	48 03 8d 28 fa ff ff 	add    -0x5d8(%rbp),%rcx
  8256ab:	48 89 85 50 fa ff ff 	mov    %rax,-0x5b0(%rbp)
  8256b2:	48 3b 85 30 fa ff ff 	cmp    -0x5d0(%rbp),%rax
  8256b9:	0f 82 87 fd ff ff    	jb     825446 <pre_step3d_mod_mp_pre_step3d_tile_+0x10fa6>
  8256bf:	4c 8b ad f0 f7 ff ff 	mov    -0x810(%rbp),%r13
  8256c6:	4c 8b a5 70 f8 ff ff 	mov    -0x790(%rbp),%r12
  8256cd:	48 8b 95 78 f8 ff ff 	mov    -0x788(%rbp),%rdx
  8256d4:	4c 8b 9d 80 f8 ff ff 	mov    -0x780(%rbp),%r11
  8256db:	4c 89 e8             	mov    %r13,%rax
  8256de:	4c 3b ad a8 f8 ff ff 	cmp    -0x758(%rbp),%r13
  8256e5:	0f 82 c5 a9 ff ff    	jb     8200b0 <pre_step3d_mod_mp_pre_step3d_tile_+0xbc10>
  8256eb:	48 8b 8d 68 f6 ff ff 	mov    -0x998(%rbp),%rcx
  8256f2:	44 8b 8d 60 f6 ff ff 	mov    -0x9a0(%rbp),%r9d
  8256f9:	41 ff c1             	inc    %r9d
  8256fc:	48 ff c1             	inc    %rcx
  8256ff:	44 3b 8d 78 f6 ff ff 	cmp    -0x988(%rbp),%r9d
  825706:	0f 82 ae 98 ff ff    	jb     81efba <pre_step3d_mod_mp_pre_step3d_tile_+0xab1a>
  82570c:	e9 a7 90 ff ff       	jmpq   81e7b8 <pre_step3d_mod_mp_pre_step3d_tile_+0xa318>
  825711:	45 33 e4             	xor    %r12d,%r12d
  825714:	e9 4d fc ff ff       	jmpq   825366 <pre_step3d_mod_mp_pre_step3d_tile_+0x10ec6>
  825719:	45 33 f6             	xor    %r14d,%r14d
  82571c:	e9 bb fe ff ff       	jmpq   8255dc <pre_step3d_mod_mp_pre_step3d_tile_+0x1113c>
  825721:	33 c9                	xor    %ecx,%ecx
  825723:	e9 ba f4 ff ff       	jmpq   824be2 <pre_step3d_mod_mp_pre_step3d_tile_+0x10742>
  825728:	33 c0                	xor    %eax,%eax
  82572a:	e9 af aa ff ff       	jmpq   8201de <pre_step3d_mod_mp_pre_step3d_tile_+0xbd3e>
  82572f:	48 8b 8d 38 fa ff ff 	mov    -0x5c8(%rbp),%rcx
  825736:	48 3b 8d 20 fa ff ff 	cmp    -0x5e0(%rbp),%rcx
  82573d:	0f 8d fa f2 ff ff    	jge    824a3d <pre_step3d_mod_mp_pre_step3d_tile_+0x1059d>
  825743:	e9 c0 f5 ff ff       	jmpq   824d08 <pre_step3d_mod_mp_pre_step3d_tile_+0x10868>
  825748:	33 c0                	xor    %eax,%eax
  82574a:	e9 36 ae ff ff       	jmpq   820585 <pre_step3d_mod_mp_pre_step3d_tile_+0xc0e5>
  82574f:	33 c9                	xor    %ecx,%ecx
  825751:	e9 f1 9f ff ff       	jmpq   81f747 <pre_step3d_mod_mp_pre_step3d_tile_+0xb2a7>
  825756:	45 33 f6             	xor    %r14d,%r14d
  825759:	e9 fb ca ff ff       	jmpq   822259 <pre_step3d_mod_mp_pre_step3d_tile_+0xddb9>
  82575e:	33 c0                	xor    %eax,%eax
  825760:	e9 a7 d1 ff ff       	jmpq   82290c <pre_step3d_mod_mp_pre_step3d_tile_+0xe46c>
  825765:	45 33 e4             	xor    %r12d,%r12d
  825768:	e9 0b d7 ff ff       	jmpq   822e78 <pre_step3d_mod_mp_pre_step3d_tile_+0xe9d8>
  82576d:	49 83 fe 04          	cmp    $0x4,%r14
  825771:	7c 53                	jl     8257c6 <pre_step3d_mod_mp_pre_step3d_tile_+0x11326>
  825773:	48 8b bd 60 f9 ff ff 	mov    -0x6a0(%rbp),%rdi
  82577a:	4c 89 e2             	mov    %r12,%rdx
  82577d:	4c 8b 85 f0 f6 ff ff 	mov    -0x910(%rbp),%r8
  825784:	33 c9                	xor    %ecx,%ecx
  825786:	c5 fd 10 0c cf       	vmovupd (%rdi,%rcx,8),%ymm1
  82578b:	c4 c1 7d 11 0c c8    	vmovupd %ymm1,(%r8,%rcx,8)
  825791:	48 83 c1 04          	add    $0x4,%rcx
  825795:	49 3b cc             	cmp    %r12,%rcx
  825798:	72 ec                	jb     825786 <pre_step3d_mod_mp_pre_step3d_tile_+0x112e6>
  82579a:	49 3b d6             	cmp    %r14,%rdx
  82579d:	0f 83 83 db ff ff    	jae    823326 <pre_step3d_mod_mp_pre_step3d_tile_+0xee86>
  8257a3:	48 8b bd 60 f9 ff ff 	mov    -0x6a0(%rbp),%rdi
  8257aa:	4c 8b 85 f0 f6 ff ff 	mov    -0x910(%rbp),%r8
  8257b1:	48 8b 0c d7          	mov    (%rdi,%rdx,8),%rcx
  8257b5:	49 89 0c d0          	mov    %rcx,(%r8,%rdx,8)
  8257b9:	48 ff c2             	inc    %rdx
  8257bc:	49 3b d6             	cmp    %r14,%rdx
  8257bf:	72 f0                	jb     8257b1 <pre_step3d_mod_mp_pre_step3d_tile_+0x11311>
  8257c1:	e9 60 db ff ff       	jmpq   823326 <pre_step3d_mod_mp_pre_step3d_tile_+0xee86>
  8257c6:	33 d2                	xor    %edx,%edx
  8257c8:	eb d0                	jmp    82579a <pre_step3d_mod_mp_pre_step3d_tile_+0x112fa>
  8257ca:	49 83 fe 04          	cmp    $0x4,%r14
  8257ce:	7c 53                	jl     825823 <pre_step3d_mod_mp_pre_step3d_tile_+0x11383>
  8257d0:	48 8b bd f8 f6 ff ff 	mov    -0x908(%rbp),%rdi
  8257d7:	4c 89 e2             	mov    %r12,%rdx
  8257da:	4c 8b 85 00 f7 ff ff 	mov    -0x900(%rbp),%r8
  8257e1:	33 c9                	xor    %ecx,%ecx
  8257e3:	c5 fd 10 0c cf       	vmovupd (%rdi,%rcx,8),%ymm1
  8257e8:	c4 c1 7d 11 0c c8    	vmovupd %ymm1,(%r8,%rcx,8)
  8257ee:	48 83 c1 04          	add    $0x4,%rcx
  8257f2:	49 3b cc             	cmp    %r12,%rcx
  8257f5:	72 ec                	jb     8257e3 <pre_step3d_mod_mp_pre_step3d_tile_+0x11343>
  8257f7:	49 3b d6             	cmp    %r14,%rdx
  8257fa:	0f 83 14 dc ff ff    	jae    823414 <pre_step3d_mod_mp_pre_step3d_tile_+0xef74>
  825800:	48 8b bd f8 f6 ff ff 	mov    -0x908(%rbp),%rdi
  825807:	4c 8b 85 00 f7 ff ff 	mov    -0x900(%rbp),%r8
  82580e:	48 8b 0c d7          	mov    (%rdi,%rdx,8),%rcx
  825812:	49 89 0c d0          	mov    %rcx,(%r8,%rdx,8)
  825816:	48 ff c2             	inc    %rdx
  825819:	49 3b d6             	cmp    %r14,%rdx
  82581c:	72 f0                	jb     82580e <pre_step3d_mod_mp_pre_step3d_tile_+0x1136e>
  82581e:	e9 f1 db ff ff       	jmpq   823414 <pre_step3d_mod_mp_pre_step3d_tile_+0xef74>
  825823:	33 d2                	xor    %edx,%edx
  825825:	eb d0                	jmp    8257f7 <pre_step3d_mod_mp_pre_step3d_tile_+0x11357>
  825827:	33 c0                	xor    %eax,%eax
  825829:	e9 5a de ff ff       	jmpq   823688 <pre_step3d_mod_mp_pre_step3d_tile_+0xf1e8>
  82582e:	33 c0                	xor    %eax,%eax
  825830:	e9 d4 e8 ff ff       	jmpq   824109 <pre_step3d_mod_mp_pre_step3d_tile_+0xfc69>
  825835:	48 8b 95 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdx
  82583c:	4c 89 85 28 fc ff ff 	mov    %r8,-0x3d8(%rbp)
  825843:	48 3b 95 00 f8 ff ff 	cmp    -0x800(%rbp),%rdx
  82584a:	0f 82 19 cc ff ff    	jb     822469 <pre_step3d_mod_mp_pre_step3d_tile_+0xdfc9>
  825850:	4c 8b 95 60 f6 ff ff 	mov    -0x9a0(%rbp),%r10
  825857:	4c 8b 9d 68 f6 ff ff 	mov    -0x998(%rbp),%r11
  82585e:	4c 8b 85 70 f6 ff ff 	mov    -0x990(%rbp),%r8
  825865:	8b 95 40 f8 ff ff    	mov    -0x7c0(%rbp),%edx
  82586b:	8b b5 68 f8 ff ff    	mov    -0x798(%rbp),%esi
  825871:	e9 72 ef ff ff       	jmpq   8247e8 <pre_step3d_mod_mp_pre_step3d_tile_+0x10348>
  825876:	33 c0                	xor    %eax,%eax
  825878:	e9 81 ed ff ff       	jmpq   8245fe <pre_step3d_mod_mp_pre_step3d_tile_+0x1015e>
  82587d:	48 c7 85 c0 fc ff ff 	movq   $0x0,-0x340(%rbp)
  825884:	00 00 00 00 
  825888:	e9 21 e1 ff ff       	jmpq   8239ae <pre_step3d_mod_mp_pre_step3d_tile_+0xf50e>
  82588d:	45 33 c0             	xor    %r8d,%r8d
  825890:	e9 8f dc ff ff       	jmpq   823524 <pre_step3d_mod_mp_pre_step3d_tile_+0xf084>
  825895:	45 33 e4             	xor    %r12d,%r12d
  825898:	e9 03 d9 ff ff       	jmpq   8231a0 <pre_step3d_mod_mp_pre_step3d_tile_+0xed00>
  82589d:	48 c7 85 98 fc ff ff 	movq   $0x0,-0x368(%rbp)
  8258a4:	00 00 00 00 
  8258a8:	e9 e1 d3 ff ff       	jmpq   822c8e <pre_step3d_mod_mp_pre_step3d_tile_+0xe7ee>
  8258ad:	45 33 f6             	xor    %r14d,%r14d
  8258b0:	e9 d0 ce ff ff       	jmpq   822785 <pre_step3d_mod_mp_pre_step3d_tile_+0xe2e5>
  8258b5:	33 f6                	xor    %esi,%esi
  8258b7:	e9 02 cb ff ff       	jmpq   8223be <pre_step3d_mod_mp_pre_step3d_tile_+0xdf1e>
  8258bc:	0f 1f 40 00          	nopl   0x0(%rax)

