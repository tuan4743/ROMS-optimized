0000000000807ea0 <t3dmix_mod_mp_t3dmix4_tile_>:
  807ea0:	53                   	push   %rbx
  807ea1:	48 89 e3             	mov    %rsp,%rbx
  807ea4:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  807ea8:	55                   	push   %rbp
  807ea9:	55                   	push   %rbp
  807eaa:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  807eae:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  807eb3:	48 89 e5             	mov    %rsp,%rbp
  807eb6:	48 81 ec 70 0d 00 00 	sub    $0xd70,%rsp
  807ebd:	4c 89 b5 38 f7 ff ff 	mov    %r14,-0x8c8(%rbp)
  807ec4:	4c 8b 73 18          	mov    0x18(%rbx),%r14
  807ec8:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
  807ecc:	48 89 b5 b8 f3 ff ff 	mov    %rsi,-0xc48(%rbp)
  807ed3:	4d 63 36             	movslq (%r14),%r14
  807ed6:	48 63 09             	movslq (%rcx),%rcx
  807ed9:	44 89 b5 dc f3 ff ff 	mov    %r14d,-0xc24(%rbp)
  807ee0:	4c 2b f1             	sub    %rcx,%r14
  807ee3:	48 8b 73 28          	mov    0x28(%rbx),%rsi
  807ee7:	48 89 bd b0 f3 ff ff 	mov    %rdi,-0xc50(%rbp)
  807eee:	4c 89 f7             	mov    %r14,%rdi
  807ef1:	48 8b 43 20          	mov    0x20(%rbx),%rax
  807ef5:	48 ff c7             	inc    %rdi
  807ef8:	45 8b 18             	mov    (%r8),%r11d
  807efb:	4c 63 06             	movslq (%rsi),%r8
  807efe:	be 00 00 00 00       	mov    $0x0,%esi
  807f03:	48 0f 4e fe          	cmovle %rsi,%rdi
  807f07:	44 8b 12             	mov    (%rdx),%r10d
  807f0a:	48 63 10             	movslq (%rax),%rdx
  807f0d:	44 89 85 e4 f3 ff ff 	mov    %r8d,-0xc1c(%rbp)
  807f14:	4c 2b c2             	sub    %rdx,%r8
  807f17:	49 ff c0             	inc    %r8
  807f1a:	4c 8d 0c fd 00 00 00 	lea    0x0(,%rdi,8),%r9
  807f21:	00 
  807f22:	4c 89 bd 30 f7 ff ff 	mov    %r15,-0x8d0(%rbp)
  807f29:	4c 0f 4e c6          	cmovle %rsi,%r8
  807f2d:	4d 0f af c8          	imul   %r8,%r9
  807f31:	4c 89 c8             	mov    %r9,%rax
  807f34:	4c 89 ad 40 f7 ff ff 	mov    %r13,-0x8c0(%rbp)
  807f3b:	4c 89 a5 48 f7 ff ff 	mov    %r12,-0x8b8(%rbp)
  807f42:	49 89 e4             	mov    %rsp,%r12
  807f45:	44 89 95 d0 f3 ff ff 	mov    %r10d,-0xc30(%rbp)
  807f4c:	44 89 9d d4 f3 ff ff 	mov    %r11d,-0xc2c(%rbp)
  807f53:	89 8d d8 f3 ff ff    	mov    %ecx,-0xc28(%rbp)
  807f59:	89 95 e0 f3 ff ff    	mov    %edx,-0xc20(%rbp)
  807f5f:	48 83 c0 1f          	add    $0x1f,%rax
  807f63:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  807f67:	48 2b e0             	sub    %rax,%rsp
  807f6a:	48 89 e0             	mov    %rsp,%rax
  807f6d:	48 89 85 90 f2 ff ff 	mov    %rax,-0xd70(%rbp)
  807f74:	4c 89 c8             	mov    %r9,%rax
  807f77:	41 bd 08 00 00 00    	mov    $0x8,%r13d
  807f7d:	4e 8d 3c f5 08 00 00 	lea    0x8(,%r14,8),%r15
  807f84:	00 
  807f85:	41 be 01 00 00 00    	mov    $0x1,%r14d
  807f8b:	4c 89 ad 98 f2 ff ff 	mov    %r13,-0xd68(%rbp)
  807f92:	48 c7 85 b0 f2 ff ff 	movq   $0x2,-0xd50(%rbp)
  807f99:	02 00 00 00 
  807f9d:	48 89 b5 a0 f2 ff ff 	mov    %rsi,-0xd60(%rbp)
  807fa4:	4c 89 ad c8 f2 ff ff 	mov    %r13,-0xd38(%rbp)
  807fab:	48 89 8d d0 f2 ff ff 	mov    %rcx,-0xd30(%rbp)
  807fb2:	48 89 bd c0 f2 ff ff 	mov    %rdi,-0xd40(%rbp)
  807fb9:	4c 89 bd e0 f2 ff ff 	mov    %r15,-0xd20(%rbp)
  807fc0:	48 89 95 e8 f2 ff ff 	mov    %rdx,-0xd18(%rbp)
  807fc7:	4c 89 85 d8 f2 ff ff 	mov    %r8,-0xd28(%rbp)
  807fce:	4c 89 b5 a8 f2 ff ff 	mov    %r14,-0xd58(%rbp)
  807fd5:	48 83 c0 1f          	add    $0x1f,%rax
  807fd9:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  807fdd:	48 2b e0             	sub    %rax,%rsp
  807fe0:	48 89 e0             	mov    %rsp,%rax
  807fe3:	48 89 85 f0 f2 ff ff 	mov    %rax,-0xd10(%rbp)
  807fea:	4c 89 c8             	mov    %r9,%rax
  807fed:	4c 89 ad f8 f2 ff ff 	mov    %r13,-0xd08(%rbp)
  807ff4:	48 c7 85 10 f3 ff ff 	movq   $0x2,-0xcf0(%rbp)
  807ffb:	02 00 00 00 
  807fff:	48 89 b5 00 f3 ff ff 	mov    %rsi,-0xd00(%rbp)
  808006:	4c 89 ad 28 f3 ff ff 	mov    %r13,-0xcd8(%rbp)
  80800d:	48 89 8d 30 f3 ff ff 	mov    %rcx,-0xcd0(%rbp)
  808014:	48 89 bd 20 f3 ff ff 	mov    %rdi,-0xce0(%rbp)
  80801b:	4c 89 bd 40 f3 ff ff 	mov    %r15,-0xcc0(%rbp)
  808022:	48 89 95 48 f3 ff ff 	mov    %rdx,-0xcb8(%rbp)
  808029:	4c 89 85 38 f3 ff ff 	mov    %r8,-0xcc8(%rbp)
  808030:	4c 89 b5 08 f3 ff ff 	mov    %r14,-0xcf8(%rbp)
  808037:	48 83 c0 1f          	add    $0x1f,%rax
  80803b:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  80803f:	48 2b e0             	sub    %rax,%rsp
  808042:	48 89 e0             	mov    %rsp,%rax
  808045:	4c 8b 8d b0 f3 ff ff 	mov    -0xc50(%rbp),%r9
  80804c:	48 89 b5 60 f3 ff ff 	mov    %rsi,-0xca0(%rbp)
  808053:	48 8b 35 86 60 33 00 	mov    0x336086(%rip),%rsi        # b3e0e0 <mod_param_mp_bounds_+0x40>
  80805a:	4d 63 09             	movslq (%r9),%r9
  80805d:	48 f7 de             	neg    %rsi
  808060:	49 03 f1             	add    %r9,%rsi
  808063:	48 89 95 a8 f3 ff ff 	mov    %rdx,-0xc58(%rbp)
  80806a:	48 69 d6 60 0f 00 00 	imul   $0xf60,%rsi,%rdx
  808071:	4c 89 ad 58 f3 ff ff 	mov    %r13,-0xca8(%rbp)
  808078:	4c 89 ad 88 f3 ff ff 	mov    %r13,-0xc78(%rbp)
  80807f:	4c 8b 2d 1a 60 33 00 	mov    0x33601a(%rip),%r13        # b3e0a0 <mod_param_mp_bounds_>
  808086:	48 89 bd 80 f3 ff ff 	mov    %rdi,-0xc80(%rbp)
  80808d:	48 8b bd b8 f3 ff ff 	mov    -0xc48(%rbp),%rdi
  808094:	4d 8b 94 15 f0 01 00 	mov    0x1f0(%r13,%rdx,1),%r10
  80809b:	00 
  80809c:	49 f7 da             	neg    %r10
  80809f:	4c 89 85 98 f3 ff ff 	mov    %r8,-0xc68(%rbp)
  8080a6:	4c 63 07             	movslq (%rdi),%r8
  8080a9:	4d 03 d0             	add    %r8,%r10
  8080ac:	4d 0f af 94 15 e8 01 	imul   0x1e8(%r13,%rdx,1),%r10
  8080b3:	00 00 
  8080b5:	48 89 8d 90 f3 ff ff 	mov    %rcx,-0xc70(%rbp)
  8080bc:	49 8b 8c 15 b0 01 00 	mov    0x1b0(%r13,%rdx,1),%rcx
  8080c3:	00 
  8080c4:	4c 89 b5 68 f3 ff ff 	mov    %r14,-0xc98(%rbp)
  8080cb:	4d 8b b4 15 38 02 00 	mov    0x238(%r13,%rdx,1),%r14
  8080d2:	00 
  8080d3:	42 8b 3c 11          	mov    (%rcx,%r10,1),%edi
  8080d7:	49 f7 de             	neg    %r14
  8080da:	49 8b 8c 15 80 02 00 	mov    0x280(%r13,%rdx,1),%rcx
  8080e1:	00 
  8080e2:	4d 03 f0             	add    %r8,%r14
  8080e5:	4d 8b 94 15 c8 02 00 	mov    0x2c8(%r13,%rdx,1),%r10
  8080ec:	00 
  8080ed:	48 f7 d9             	neg    %rcx
  8080f0:	49 f7 da             	neg    %r10
  8080f3:	49 03 c8             	add    %r8,%rcx
  8080f6:	4d 03 d0             	add    %r8,%r10
  8080f9:	4d 0f af 94 15 c0 02 	imul   0x2c0(%r13,%rdx,1),%r10
  808100:	00 00 
  808102:	4d 0f af b4 15 30 02 	imul   0x230(%r13,%rdx,1),%r14
  808109:	00 00 
  80810b:	49 0f af 8c 15 78 02 	imul   0x278(%r13,%rdx,1),%rcx
  808112:	00 00 
  808114:	4c 8b 05 85 5a 33 00 	mov    0x335a85(%rip),%r8        # b3dba0 <mod_scalars_mp_ewperiodic_+0x40>
  80811b:	49 c1 e0 02          	shl    $0x2,%r8
  80811f:	4c 89 bd a0 f3 ff ff 	mov    %r15,-0xc60(%rbp)
  808126:	49 f7 d8             	neg    %r8
  808129:	4d 8b 9c 15 f8 01 00 	mov    0x1f8(%r13,%rdx,1),%r11
  808130:	00 
  808131:	4d 8b bc 15 40 02 00 	mov    0x240(%r13,%rdx,1),%r15
  808138:	00 
  808139:	49 8b 94 15 88 02 00 	mov    0x288(%r13,%rdx,1),%rdx
  808140:	00 
  808141:	4c 03 05 18 5a 33 00 	add    0x335a18(%rip),%r8        # b3db60 <mod_scalars_mp_ewperiodic_>
  808148:	43 8b 34 33          	mov    (%r11,%r14,1),%esi
  80814c:	41 8b 0c 0f          	mov    (%r15,%rcx,1),%ecx
  808150:	42 8b 14 12          	mov    (%rdx,%r10,1),%edx
  808154:	89 bd e8 f3 ff ff    	mov    %edi,-0xc18(%rbp)
  80815a:	ff cf                	dec    %edi
  80815c:	48 c7 85 70 f3 ff ff 	movq   $0x2,-0xc90(%rbp)
  808163:	02 00 00 00 
  808167:	48 89 85 50 f3 ff ff 	mov    %rax,-0xcb0(%rbp)
  80816e:	89 b5 ec f3 ff ff    	mov    %esi,-0xc14(%rbp)
  808174:	89 8d f0 f3 ff ff    	mov    %ecx,-0xc10(%rbp)
  80817a:	89 95 f4 f3 ff ff    	mov    %edx,-0xc0c(%rbp)
  808180:	43 f6 04 88 01       	testb  $0x1,(%r8,%r9,4)
  808185:	74 10                	je     808197 <t3dmix_mod_mp_t3dmix4_tile_+0x2f7>
  808187:	ff c6                	inc    %esi
  808189:	89 bd c0 f3 ff ff    	mov    %edi,-0xc40(%rbp)
  80818f:	89 b5 c4 f3 ff ff    	mov    %esi,-0xc3c(%rbp)
  808195:	eb 3c                	jmp    8081d3 <t3dmix_mod_mp_t3dmix4_tile_+0x333>
  808197:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  80819d:	83 ff 01             	cmp    $0x1,%edi
  8081a0:	44 0f 4f c7          	cmovg  %edi,%r8d
  8081a4:	ff c6                	inc    %esi
  8081a6:	48 8b 3d d3 5e 33 00 	mov    0x335ed3(%rip),%rdi        # b3e080 <mod_param_mp_lm_+0x40>
  8081ad:	48 c1 e7 02          	shl    $0x2,%rdi
  8081b1:	48 f7 df             	neg    %rdi
  8081b4:	48 03 3d 85 5e 33 00 	add    0x335e85(%rip),%rdi        # b3e040 <mod_param_mp_lm_>
  8081bb:	44 89 85 c0 f3 ff ff 	mov    %r8d,-0xc40(%rbp)
  8081c2:	46 8b 14 8f          	mov    (%rdi,%r9,4),%r10d
  8081c6:	44 3b d6             	cmp    %esi,%r10d
  8081c9:	41 0f 4c f2          	cmovl  %r10d,%esi
  8081cd:	89 b5 c4 f3 ff ff    	mov    %esi,-0xc3c(%rbp)
  8081d3:	48 8b 35 66 56 33 00 	mov    0x335666(%rip),%rsi        # b3d840 <mod_scalars_mp_nsperiodic_+0x40>
  8081da:	ff c9                	dec    %ecx
  8081dc:	48 c1 e6 02          	shl    $0x2,%rsi
  8081e0:	48 f7 de             	neg    %rsi
  8081e3:	48 03 35 16 56 33 00 	add    0x335616(%rip),%rsi        # b3d800 <mod_scalars_mp_nsperiodic_>
  8081ea:	42 f6 04 8e 01       	testb  $0x1,(%rsi,%r9,4)
  8081ef:	74 10                	je     808201 <t3dmix_mod_mp_t3dmix4_tile_+0x361>
  8081f1:	ff c2                	inc    %edx
  8081f3:	89 8d c8 f3 ff ff    	mov    %ecx,-0xc38(%rbp)
  8081f9:	89 95 cc f3 ff ff    	mov    %edx,-0xc34(%rbp)
  8081ff:	eb 37                	jmp    808238 <t3dmix_mod_mp_t3dmix4_tile_+0x398>
  808201:	be 01 00 00 00       	mov    $0x1,%esi
  808206:	83 f9 01             	cmp    $0x1,%ecx
  808209:	0f 4f f1             	cmovg  %ecx,%esi
  80820c:	ff c2                	inc    %edx
  80820e:	48 8b 0d 0b 5e 33 00 	mov    0x335e0b(%rip),%rcx        # b3e020 <mod_param_mp_mm_+0x40>
  808215:	48 c1 e1 02          	shl    $0x2,%rcx
  808219:	48 f7 d9             	neg    %rcx
  80821c:	48 03 0d bd 5d 33 00 	add    0x335dbd(%rip),%rcx        # b3dfe0 <mod_param_mp_mm_>
  808223:	89 b5 c8 f3 ff ff    	mov    %esi,-0xc38(%rbp)
  808229:	42 8b 3c 89          	mov    (%rcx,%r9,4),%edi
  80822d:	3b fa                	cmp    %edx,%edi
  80822f:	0f 4c d7             	cmovl  %edi,%edx
  808232:	89 95 cc f3 ff ff    	mov    %edx,-0xc34(%rbp)
  808238:	bf 3c 73 b3 00       	mov    $0xb3733c,%edi
  80823d:	e8 ee 59 c0 ff       	callq  40dc30 <__kmpc_global_thread_num@plt>
  808242:	89 85 f8 f3 ff ff    	mov    %eax,-0xc08(%rbp)
  808248:	bf 84 73 b3 00       	mov    $0xb37384,%edi
  80824d:	33 c0                	xor    %eax,%eax
  80824f:	e8 0c 5b c0 ff       	callq  40dd60 <__kmpc_ok_to_fork@plt>
  808254:	85 c0                	test   %eax,%eax
  808256:	0f 84 4b 01 00 00    	je     8083a7 <t3dmix_mod_mp_t3dmix4_tile_+0x507>
  80825c:	48 81 c4 10 ff ff ff 	add    $0xffffffffffffff10,%rsp
  808263:	4c 8d 95 c0 f3 ff ff 	lea    -0xc40(%rbp),%r10
  80826a:	ba 28 85 80 00       	mov    $0x808528,%edx
  80826f:	4d 8d 5a 04          	lea    0x4(%r10),%r11
  808273:	33 c0                	xor    %eax,%eax
  808275:	4c 8d ab 90 00 00 00 	lea    0x90(%rbx),%r13
  80827c:	4c 8d 73 70          	lea    0x70(%rbx),%r14
  808280:	4c 89 14 24          	mov    %r10,(%rsp)
  808284:	4c 8d 7b 48          	lea    0x48(%rbx),%r15
  808288:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
  80828d:	48 8d 73 58          	lea    0x58(%rbx),%rsi
  808291:	4c 89 6c 24 10       	mov    %r13,0x10(%rsp)
  808296:	48 8d 7b 68          	lea    0x68(%rbx),%rdi
  80829a:	4c 89 74 24 18       	mov    %r14,0x18(%rsp)
  80829f:	4c 8d 56 48          	lea    0x48(%rsi),%r10
  8082a3:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
  8082a8:	4c 8d 5b 30          	lea    0x30(%rbx),%r11
  8082ac:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
  8082b1:	4c 8d 6e 40          	lea    0x40(%rsi),%r13
  8082b5:	48 89 7c 24 30       	mov    %rdi,0x30(%rsp)
  8082ba:	4c 8d 73 78          	lea    0x78(%rbx),%r14
  8082be:	4c 89 54 24 38       	mov    %r10,0x38(%rsp)
  8082c3:	4c 8d 7b 50          	lea    0x50(%rbx),%r15
  8082c7:	4c 89 5c 24 40       	mov    %r11,0x40(%rsp)
  8082cc:	48 8d 73 60          	lea    0x60(%rbx),%rsi
  8082d0:	4c 89 6c 24 48       	mov    %r13,0x48(%rsp)
  8082d5:	48 8d 8d b0 f3 ff ff 	lea    -0xc50(%rbp),%rcx
  8082dc:	4c 89 74 24 50       	mov    %r14,0x50(%rsp)
  8082e1:	4c 8d 41 18          	lea    0x18(%rcx),%r8
  8082e5:	4c 89 7c 24 58       	mov    %r15,0x58(%rsp)
  8082ea:	4c 8d 49 1c          	lea    0x1c(%rcx),%r9
  8082ee:	4c 8d 7c 24 60       	lea    0x60(%rsp),%r15
  8082f3:	49 89 37             	mov    %rsi,(%r15)
  8082f6:	48 8d 76 20          	lea    0x20(%rsi),%rsi
  8082fa:	49 89 77 08          	mov    %rsi,0x8(%r15)
  8082fe:	48 8d 76 08          	lea    0x8(%rsi),%rsi
  808302:	49 89 77 10          	mov    %rsi,0x10(%r15)
  808306:	48 8d 71 08          	lea    0x8(%rcx),%rsi
  80830a:	49 89 77 18          	mov    %rsi,0x18(%r15)
  80830e:	48 8d 71 38          	lea    0x38(%rcx),%rsi
  808312:	49 89 77 20          	mov    %rsi,0x20(%r15)
  808316:	48 8d 71 3c          	lea    0x3c(%rcx),%rsi
  80831a:	49 89 77 28          	mov    %rsi,0x28(%r15)
  80831e:	48 8d 71 40          	lea    0x40(%rcx),%rsi
  808322:	49 89 77 30          	mov    %rsi,0x30(%r15)
  808326:	48 8d 71 44          	lea    0x44(%rcx),%rsi
  80832a:	49 89 77 38          	mov    %rsi,0x38(%r15)
  80832e:	48 8d 73 40          	lea    0x40(%rbx),%rsi
  808332:	49 89 77 40          	mov    %rsi,0x40(%r15)
  808336:	48 8d 71 20          	lea    0x20(%rcx),%rsi
  80833a:	49 89 77 48          	mov    %rsi,0x48(%r15)
  80833e:	48 8d 71 24          	lea    0x24(%rcx),%rsi
  808342:	49 89 77 50          	mov    %rsi,0x50(%r15)
  808346:	48 8d 71 28          	lea    0x28(%rcx),%rsi
  80834a:	49 89 77 58          	mov    %rsi,0x58(%r15)
  80834e:	48 8d 71 2c          	lea    0x2c(%rcx),%rsi
  808352:	49 89 77 60          	mov    %rsi,0x60(%r15)
  808356:	48 8d 71 30          	lea    0x30(%rcx),%rsi
  80835a:	49 89 77 68          	mov    %rsi,0x68(%r15)
  80835e:	48 8d 71 34          	lea    0x34(%rcx),%rsi
  808362:	49 89 77 70          	mov    %rsi,0x70(%r15)
  808366:	48 8d b5 f0 f2 ff ff 	lea    -0xd10(%rbp),%rsi
  80836d:	49 89 77 78          	mov    %rsi,0x78(%r15)
  808371:	48 8d 71 a0          	lea    -0x60(%rcx),%rsi
  808375:	48 89 b4 24 e0 00 00 	mov    %rsi,0xe0(%rsp)
  80837c:	00 
  80837d:	48 8d b5 90 f2 ff ff 	lea    -0xd70(%rbp),%rsi
  808384:	48 89 b4 24 e8 00 00 	mov    %rsi,0xe8(%rsp)
  80838b:	00 
  80838c:	bf 84 73 b3 00       	mov    $0xb37384,%edi
  808391:	be 21 00 00 00       	mov    $0x21,%esi
  808396:	e8 15 58 c0 ff       	callq  40dbb0 <__kmpc_fork_call@plt>
  80839b:	48 81 c4 f0 00 00 00 	add    $0xf0,%rsp
  8083a2:	e9 56 01 00 00       	jmpq   8084fd <t3dmix_mod_mp_t3dmix4_tile_+0x65d>
  8083a7:	bf 84 73 b3 00       	mov    $0xb37384,%edi
  8083ac:	33 c0                	xor    %eax,%eax
  8083ae:	8b b5 f8 f3 ff ff    	mov    -0xc08(%rbp),%esi
  8083b4:	e8 97 59 c0 ff       	callq  40dd50 <__kmpc_serialized_parallel@plt>
  8083b9:	48 81 c4 10 ff ff ff 	add    $0xffffffffffffff10,%rsp
  8083c0:	4c 8d 95 c4 f3 ff ff 	lea    -0xc3c(%rbp),%r10
  8083c7:	be 04 4c b8 00       	mov    $0xb84c04,%esi
  8083cc:	4c 8d 9b 90 00 00 00 	lea    0x90(%rbx),%r11
  8083d3:	4c 8d 6b 70          	lea    0x70(%rbx),%r13
  8083d7:	4c 8d 73 48          	lea    0x48(%rbx),%r14
  8083db:	4c 89 14 24          	mov    %r10,(%rsp)
  8083df:	4c 8d 7b 58          	lea    0x58(%rbx),%r15
  8083e3:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
  8083e8:	4c 8d 53 68          	lea    0x68(%rbx),%r10
  8083ec:	4c 89 6c 24 10       	mov    %r13,0x10(%rsp)
  8083f1:	48 8d bd f8 f3 ff ff 	lea    -0xc08(%rbp),%rdi
  8083f8:	4c 89 74 24 18       	mov    %r14,0x18(%rsp)
  8083fd:	48 8d 57 b8          	lea    -0x48(%rdi),%rdx
  808401:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
  808406:	48 8d 4a 18          	lea    0x18(%rdx),%rcx
  80840a:	4c 8d 7c 24 28       	lea    0x28(%rsp),%r15
  80840f:	4d 89 17             	mov    %r10,(%r15)
  808412:	4d 8d 52 38          	lea    0x38(%r10),%r10
  808416:	4d 89 57 08          	mov    %r10,0x8(%r15)
  80841a:	4c 8d 53 30          	lea    0x30(%rbx),%r10
  80841e:	4d 89 57 10          	mov    %r10,0x10(%r15)
  808422:	4d 8d 52 68          	lea    0x68(%r10),%r10
  808426:	4d 89 57 18          	mov    %r10,0x18(%r15)
  80842a:	4c 8d 53 78          	lea    0x78(%rbx),%r10
  80842e:	4d 89 57 20          	mov    %r10,0x20(%r15)
  808432:	4c 8d 53 50          	lea    0x50(%rbx),%r10
  808436:	4d 89 57 28          	mov    %r10,0x28(%r15)
  80843a:	4c 8d 53 60          	lea    0x60(%rbx),%r10
  80843e:	4d 89 57 30          	mov    %r10,0x30(%r15)
  808442:	4d 8d 52 20          	lea    0x20(%r10),%r10
  808446:	4d 89 57 38          	mov    %r10,0x38(%r15)
  80844a:	4d 8d 52 08          	lea    0x8(%r10),%r10
  80844e:	4d 89 57 40          	mov    %r10,0x40(%r15)
  808452:	4c 8d 52 08          	lea    0x8(%rdx),%r10
  808456:	4d 89 57 48          	mov    %r10,0x48(%r15)
  80845a:	4c 8d 52 38          	lea    0x38(%rdx),%r10
  80845e:	4d 89 57 50          	mov    %r10,0x50(%r15)
  808462:	4c 8d 52 3c          	lea    0x3c(%rdx),%r10
  808466:	4d 89 57 58          	mov    %r10,0x58(%r15)
  80846a:	4c 8d 52 40          	lea    0x40(%rdx),%r10
  80846e:	4d 89 57 60          	mov    %r10,0x60(%r15)
  808472:	4c 8d 52 44          	lea    0x44(%rdx),%r10
  808476:	4d 89 57 68          	mov    %r10,0x68(%r15)
  80847a:	4c 8d 53 40          	lea    0x40(%rbx),%r10
  80847e:	4d 89 57 70          	mov    %r10,0x70(%r15)
  808482:	4c 8d 52 20          	lea    0x20(%rdx),%r10
  808486:	4d 89 57 78          	mov    %r10,0x78(%r15)
  80848a:	4c 8d 52 24          	lea    0x24(%rdx),%r10
  80848e:	4c 8d b4 24 a8 00 00 	lea    0xa8(%rsp),%r14
  808495:	00 
  808496:	4d 89 16             	mov    %r10,(%r14)
  808499:	4c 8d 52 28          	lea    0x28(%rdx),%r10
  80849d:	4d 89 56 08          	mov    %r10,0x8(%r14)
  8084a1:	4c 8d 52 2c          	lea    0x2c(%rdx),%r10
  8084a5:	4d 89 56 10          	mov    %r10,0x10(%r14)
  8084a9:	4c 8d 42 1c          	lea    0x1c(%rdx),%r8
  8084ad:	4c 8d 4a 10          	lea    0x10(%rdx),%r9
  8084b1:	4c 8d 52 30          	lea    0x30(%rdx),%r10
  8084b5:	4d 89 56 18          	mov    %r10,0x18(%r14)
  8084b9:	4c 8d 52 34          	lea    0x34(%rdx),%r10
  8084bd:	4d 89 56 20          	mov    %r10,0x20(%r14)
  8084c1:	4c 8d 95 f0 f2 ff ff 	lea    -0xd10(%rbp),%r10
  8084c8:	4d 89 56 28          	mov    %r10,0x28(%r14)
  8084cc:	4c 8d 52 a0          	lea    -0x60(%rdx),%r10
  8084d0:	4d 89 56 30          	mov    %r10,0x30(%r14)
  8084d4:	4c 8d 95 90 f2 ff ff 	lea    -0xd70(%rbp),%r10
  8084db:	4d 89 56 38          	mov    %r10,0x38(%r14)
  8084df:	e8 44 00 00 00       	callq  808528 <t3dmix_mod_mp_t3dmix4_tile_+0x688>
  8084e4:	48 81 c4 f0 00 00 00 	add    $0xf0,%rsp
  8084eb:	bf 84 73 b3 00       	mov    $0xb37384,%edi
  8084f0:	33 c0                	xor    %eax,%eax
  8084f2:	8b b5 f8 f3 ff ff    	mov    -0xc08(%rbp),%esi
  8084f8:	e8 c3 5b c0 ff       	callq  40e0c0 <__kmpc_end_serialized_parallel@plt>
  8084fd:	4c 89 e0             	mov    %r12,%rax
  808500:	48 89 c4             	mov    %rax,%rsp
  808503:	4c 8b bd 30 f7 ff ff 	mov    -0x8d0(%rbp),%r15
  80850a:	4c 8b b5 38 f7 ff ff 	mov    -0x8c8(%rbp),%r14
  808511:	4c 8b ad 40 f7 ff ff 	mov    -0x8c0(%rbp),%r13
  808518:	4c 8b a5 48 f7 ff ff 	mov    -0x8b8(%rbp),%r12
  80851f:	48 89 ec             	mov    %rbp,%rsp
  808522:	5d                   	pop    %rbp
  808523:	48 89 dc             	mov    %rbx,%rsp
  808526:	5b                   	pop    %rbx
  808527:	c3                   	retq   
  808528:	53                   	push   %rbx
  808529:	48 89 e3             	mov    %rsp,%rbx
  80852c:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  808530:	55                   	push   %rbp
  808531:	55                   	push   %rbp
  808532:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  808536:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  80853b:	48 89 e5             	mov    %rsp,%rbp
  80853e:	48 81 ec 70 0d 00 00 	sub    $0xd70,%rsp
  808545:	4c 89 a5 48 f7 ff ff 	mov    %r12,-0x8b8(%rbp)
  80854c:	4c 8b 63 48          	mov    0x48(%rbx),%r12
  808550:	4c 89 b5 38 f7 ff ff 	mov    %r14,-0x8c8(%rbp)
  808557:	4c 8b 73 40          	mov    0x40(%rbx),%r14
  80855b:	48 8b 73 38          	mov    0x38(%rbx),%rsi
  80855f:	4c 89 ad 40 f7 ff ff 	mov    %r13,-0x8c0(%rbp)
  808566:	4c 8b 6b 10          	mov    0x10(%rbx),%r13
  80856a:	4d 8b 24 24          	mov    (%r12),%r12
  80856e:	48 8b 43 30          	mov    0x30(%rbx),%rax
  808572:	4c 89 a5 e8 f2 ff ff 	mov    %r12,-0xd18(%rbp)
  808579:	4d 8b 26             	mov    (%r14),%r12
  80857c:	4c 8b 36             	mov    (%rsi),%r14
  80857f:	4c 89 b5 20 f3 ff ff 	mov    %r14,-0xce0(%rbp)
  808586:	45 8b 75 00          	mov    0x0(%r13),%r14d
  80858a:	48 8b 00             	mov    (%rax),%rax
  80858d:	4c 89 bd 30 f7 ff ff 	mov    %r15,-0x8d0(%rbp)
  808594:	4c 8b 5b 20          	mov    0x20(%rbx),%r11
  808598:	4c 8b 53 18          	mov    0x18(%rbx),%r10
  80859c:	4c 8b 7b 28          	mov    0x28(%rbx),%r15
  8085a0:	8b 3f                	mov    (%rdi),%edi
  8085a2:	8b 09                	mov    (%rcx),%ecx
  8085a4:	44 89 b5 a0 fd ff ff 	mov    %r14d,-0x260(%rbp)
  8085ab:	4c 8b 32             	mov    (%rdx),%r14
  8085ae:	48 89 85 10 f3 ff ff 	mov    %rax,-0xcf0(%rbp)
  8085b5:	48 8b 53 50          	mov    0x50(%rbx),%rdx
  8085b9:	48 8b 43 58          	mov    0x58(%rbx),%rax
  8085bd:	89 bd 40 f8 ff ff    	mov    %edi,-0x7c0(%rbp)
  8085c3:	45 8b 29             	mov    (%r9),%r13d
  8085c6:	89 8d 18 fa ff ff    	mov    %ecx,-0x5e8(%rbp)
  8085cc:	48 8b 4b 60          	mov    0x60(%rbx),%rcx
  8085d0:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
  8085d4:	4c 8b 4b 70          	mov    0x70(%rbx),%r9
  8085d8:	4d 8b 1b             	mov    (%r11),%r11
  8085db:	49 8b 37             	mov    (%r15),%rsi
  8085de:	4d 8b 12             	mov    (%r10),%r10
  8085e1:	45 8b 00             	mov    (%r8),%r8d
  8085e4:	44 89 ad 98 fd ff ff 	mov    %r13d,-0x268(%rbp)
  8085eb:	4c 8b 2a             	mov    (%rdx),%r13
  8085ee:	4c 89 9d 00 f3 ff ff 	mov    %r11,-0xd00(%rbp)
  8085f5:	48 8b 10             	mov    (%rax),%rdx
  8085f8:	48 89 b5 08 f3 ff ff 	mov    %rsi,-0xcf8(%rbp)
  8085ff:	4c 89 95 28 f3 ff ff 	mov    %r10,-0xcd8(%rbp)
  808606:	44 89 85 20 fa ff ff 	mov    %r8d,-0x5e0(%rbp)
  80860d:	48 8d 43 78          	lea    0x78(%rbx),%rax
  808611:	4c 8b 18             	mov    (%rax),%r11
  808614:	48 8b 31             	mov    (%rcx),%rsi
  808617:	4c 8b 07             	mov    (%rdi),%r8
  80861a:	4d 8b 11             	mov    (%r9),%r10
  80861d:	48 89 95 c0 f2 ff ff 	mov    %rdx,-0xd40(%rbp)
  808624:	48 8b 50 10          	mov    0x10(%rax),%rdx
  808628:	4c 89 ad 18 f3 ff ff 	mov    %r13,-0xce8(%rbp)
  80862f:	48 89 b5 d0 f2 ff ff 	mov    %rsi,-0xd30(%rbp)
  808636:	4c 89 85 f0 f2 ff ff 	mov    %r8,-0xd10(%rbp)
  80863d:	4c 89 95 f8 f2 ff ff 	mov    %r10,-0xd08(%rbp)
  808644:	4c 8d 93 80 00 00 00 	lea    0x80(%rbx),%r10
  80864b:	4d 8b 2a             	mov    (%r10),%r13
  80864e:	49 8b 72 10          	mov    0x10(%r10),%rsi
  808652:	4d 8b 42 18          	mov    0x18(%r10),%r8
  808656:	4d 8b 52 20          	mov    0x20(%r10),%r10
  80865a:	4d 8b 3b             	mov    (%r11),%r15
  80865d:	4c 89 bd c8 f2 ff ff 	mov    %r15,-0xd38(%rbp)
  808664:	48 63 0a             	movslq (%rdx),%rcx
  808667:	4c 8b 78 30          	mov    0x30(%rax),%r15
  80866b:	49 8b 45 00          	mov    0x0(%r13),%rax
  80866f:	48 63 3e             	movslq (%rsi),%rdi
  808672:	4d 63 08             	movslq (%r8),%r9
  808675:	45 8b 1a             	mov    (%r10),%r11d
  808678:	48 89 8d 08 fd ff ff 	mov    %rcx,-0x2f8(%rbp)
  80867f:	48 8b 8b b8 00 00 00 	mov    0xb8(%rbx),%rcx
  808686:	48 89 85 e0 f2 ff ff 	mov    %rax,-0xd20(%rbp)
  80868d:	48 89 bd 00 fd ff ff 	mov    %rdi,-0x300(%rbp)
  808694:	4c 89 8d c0 f9 ff ff 	mov    %r9,-0x640(%rbp)
  80869b:	44 89 9d b0 f2 ff ff 	mov    %r11d,-0xd50(%rbp)
  8086a2:	4c 8d 9b b0 00 00 00 	lea    0xb0(%rbx),%r11
  8086a9:	49 8b 03             	mov    (%r11),%rax
  8086ac:	49 8b 7b 10          	mov    0x10(%r11),%rdi
  8086b0:	4d 8b 4b 18          	mov    0x18(%r11),%r9
  8086b4:	4d 8b 5b 20          	mov    0x20(%r11),%r11
  8086b8:	4d 8b 2f             	mov    (%r15),%r13
  8086bb:	4c 89 ad d8 f2 ff ff 	mov    %r13,-0xd28(%rbp)
  8086c2:	48 63 31             	movslq (%rcx),%rsi
  8086c5:	48 8d 8b e0 00 00 00 	lea    0xe0(%rbx),%rcx
  8086cc:	4c 8b 29             	mov    (%rcx),%r13
  8086cf:	48 63 10             	movslq (%rax),%rdx
  8086d2:	33 c0                	xor    %eax,%eax
  8086d4:	4c 63 07             	movslq (%rdi),%r8
  8086d7:	48 8d bd b8 f4 ff ff 	lea    -0xb48(%rbp),%rdi
  8086de:	4d 63 11             	movslq (%r9),%r10
  8086e1:	4d 63 3b             	movslq (%r11),%r15
  8086e4:	48 89 b5 a0 f2 ff ff 	mov    %rsi,-0xd60(%rbp)
  8086eb:	4c 89 ad b8 f2 ff ff 	mov    %r13,-0xd48(%rbp)
  8086f2:	48 8b 71 10          	mov    0x10(%rcx),%rsi
  8086f6:	4c 8b 69 08          	mov    0x8(%rcx),%r13
  8086fa:	48 89 95 a8 f2 ff ff 	mov    %rdx,-0xd58(%rbp)
  808701:	4c 89 85 80 fa ff ff 	mov    %r8,-0x580(%rbp)
  808708:	4c 89 95 98 f2 ff ff 	mov    %r10,-0xd68(%rbp)
  80870f:	4c 89 bd 90 f2 ff ff 	mov    %r15,-0xd70(%rbp)
  808716:	e8 95 5d c7 ff       	callq  47e4b0 <_f90_dope_vector_init>
  80871b:	48 89 85 18 f7 ff ff 	mov    %rax,-0x8e8(%rbp)
  808722:	48 83 c0 1f          	add    $0x1f,%rax
  808726:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  80872a:	48 2b e0             	sub    %rax,%rsp
  80872d:	48 89 e0             	mov    %rsp,%rax
  808730:	48 89 85 10 f7 ff ff 	mov    %rax,-0x8f0(%rbp)
  808737:	48 89 c2             	mov    %rax,%rdx
  80873a:	48 8d bd 18 f5 ff ff 	lea    -0xae8(%rbp),%rdi
  808741:	4c 89 ee             	mov    %r13,%rsi
  808744:	33 c0                	xor    %eax,%eax
  808746:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  80874a:	e8 61 5d c7 ff       	callq  47e4b0 <_f90_dope_vector_init>
  80874f:	48 89 85 08 f7 ff ff 	mov    %rax,-0x8f8(%rbp)
  808756:	48 83 c0 1f          	add    $0x1f,%rax
  80875a:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  80875e:	48 2b e0             	sub    %rax,%rsp
  808761:	48 89 e0             	mov    %rsp,%rax
  808764:	48 89 85 00 f7 ff ff 	mov    %rax,-0x900(%rbp)
  80876b:	48 89 c2             	mov    %rax,%rdx
  80876e:	48 8d bd 78 f5 ff ff 	lea    -0xa88(%rbp),%rdi
  808775:	33 c0                	xor    %eax,%eax
  808777:	48 8b b5 b8 f2 ff ff 	mov    -0xd48(%rbp),%rsi
  80877e:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  808782:	e8 29 5d c7 ff       	callq  47e4b0 <_f90_dope_vector_init>
  808787:	48 89 85 20 f7 ff ff 	mov    %rax,-0x8e0(%rbp)
  80878e:	48 83 c0 1f          	add    $0x1f,%rax
  808792:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  808796:	48 2b e0             	sub    %rax,%rsp
  808799:	48 89 e0             	mov    %rsp,%rax
  80879c:	48 89 85 28 f7 ff ff 	mov    %rax,-0x8d8(%rbp)
  8087a3:	48 8b 15 d6 38 33 00 	mov    0x3338d6(%rip),%rdx        # b3c080 <mod_param_mp_nt_+0x40>
  8087aa:	48 c1 e2 02          	shl    $0x2,%rdx
  8087ae:	48 f7 da             	neg    %rdx
  8087b1:	48 03 15 88 38 33 00 	add    0x333888(%rip),%rdx        # b3c040 <mod_param_mp_nt_>
  8087b8:	4d 63 36             	movslq (%r14),%r14
  8087bb:	48 89 85 78 f5 ff ff 	mov    %rax,-0xa88(%rbp)
  8087c2:	46 8b 3c b2          	mov    (%rdx,%r14,4),%r15d
  8087c6:	45 85 ff             	test   %r15d,%r15d
  8087c9:	0f 8e 6d 46 00 00    	jle    80ce3c <t3dmix_mod_mp_t3dmix4_tile_+0x4f9c>
  8087cf:	48 83 c4 e0          	add    $0xffffffffffffffe0,%rsp
  8087d3:	48 8d 85 74 f8 ff ff 	lea    -0x78c(%rbp),%rax
  8087da:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  8087e0:	bf 84 73 b3 00       	mov    $0xb37384,%edi
  8087e5:	ba 22 00 00 00       	mov    $0x22,%edx
  8087ea:	48 8d 8d 70 f8 ff ff 	lea    -0x790(%rbp),%rcx
  8087f1:	44 89 78 f8          	mov    %r15d,-0x8(%rax)
  8087f5:	4c 8d 85 68 f8 ff ff 	lea    -0x798(%rbp),%r8
  8087fc:	48 89 04 24          	mov    %rax,(%rsp)
  808800:	4c 8d 8d 6c f8 ff ff 	lea    -0x794(%rbp),%r9
  808807:	44 89 6c 24 08       	mov    %r13d,0x8(%rsp)
  80880c:	44 89 6c 24 10       	mov    %r13d,0x10(%rsp)
  808811:	8b 70 cc             	mov    -0x34(%rax),%esi
  808814:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%rax)
  80881b:	44 89 68 f4          	mov    %r13d,-0xc(%rax)
  80881f:	44 89 28             	mov    %r13d,(%rax)
  808822:	e8 09 56 c0 ff       	callq  40de30 <__kmpc_for_static_init_4@plt>
  808827:	48 83 c4 20          	add    $0x20,%rsp
  80882b:	4d 63 ff             	movslq %r15d,%r15
  80882e:	48 63 85 68 f8 ff ff 	movslq -0x798(%rbp),%rax
  808835:	8b 95 6c f8 ff ff    	mov    -0x794(%rbp),%edx
  80883b:	48 89 85 d8 f5 ff ff 	mov    %rax,-0xa28(%rbp)
  808842:	49 3b c7             	cmp    %r15,%rax
  808845:	0f 8f de 45 00 00    	jg     80ce29 <t3dmix_mod_mp_t3dmix4_tile_+0x4f89>
  80884b:	4c 8b 85 e8 f2 ff ff 	mov    -0xd18(%rbp),%r8
  808852:	41 3b d7             	cmp    %r15d,%edx
  808855:	48 8b 8d d8 f2 ff ff 	mov    -0xd28(%rbp),%rcx
  80885c:	4c 8b 95 e0 f2 ff ff 	mov    -0xd20(%rbp),%r10
  808863:	44 0f 4c fa          	cmovl  %edx,%r15d
  808867:	4d 63 08             	movslq (%r8),%r9
  80886a:	4c 89 8d e0 f5 ff ff 	mov    %r9,-0xa20(%rbp)
  808871:	4c 8b 0d 28 38 33 00 	mov    0x333828(%rip),%r9        # b3c0a0 <mod_param_mp_n_>
  808878:	48 63 31             	movslq (%rcx),%rsi
  80887b:	48 89 b5 d0 f6 ff ff 	mov    %rsi,-0x930(%rbp)
  808882:	48 8b 05 17 53 33 00 	mov    0x335317(%rip),%rax        # b3dba0 <mod_scalars_mp_ewperiodic_+0x40>
  808889:	48 8b 35 b0 4f 33 00 	mov    0x334fb0(%rip),%rsi        # b3d840 <mod_scalars_mp_nsperiodic_+0x40>
  808890:	48 89 85 70 f6 ff ff 	mov    %rax,-0x990(%rbp)
  808897:	4d 63 1a             	movslq (%r10),%r11
  80889a:	48 89 b5 80 f6 ff ff 	mov    %rsi,-0x980(%rbp)
  8088a1:	4b 8d 34 b1          	lea    (%r9,%r14,4),%rsi
  8088a5:	48 8b 05 0c 59 33 00 	mov    0x33590c(%rip),%rax        # b3e1b8 <mod_scalars_mp_compositegrid_+0x58>
  8088ac:	4c 8b 8d f8 f2 ff ff 	mov    -0xd08(%rbp),%r9
  8088b3:	48 8b 3d a6 52 33 00 	mov    0x3352a6(%rip),%rdi        # b3db60 <mod_scalars_mp_ewperiodic_>
  8088ba:	4c 89 9d 50 f8 ff ff 	mov    %r11,-0x7b0(%rbp)
  8088c1:	48 89 85 a0 f6 ff ff 	mov    %rax,-0x960(%rbp)
  8088c8:	48 89 bd 68 f6 ff ff 	mov    %rdi,-0x998(%rbp)
  8088cf:	4c 8b 95 b8 f4 ff ff 	mov    -0xb48(%rbp),%r10
  8088d6:	4c 8b 9d 18 f5 ff ff 	mov    -0xae8(%rbp),%r11
  8088dd:	48 8b 85 c8 f2 ff ff 	mov    -0xd38(%rbp),%rax
  8088e4:	4c 8b 85 78 f5 ff ff 	mov    -0xa88(%rbp),%r8
  8088eb:	48 8b 3d 6e 58 33 00 	mov    0x33586e(%rip),%rdi        # b3e160 <mod_scalars_mp_compositegrid_>
  8088f2:	4c 89 95 88 f6 ff ff 	mov    %r10,-0x978(%rbp)
  8088f9:	4c 89 9d 90 f6 ff ff 	mov    %r11,-0x970(%rbp)
  808900:	4c 89 85 88 fa ff ff 	mov    %r8,-0x578(%rbp)
  808907:	48 89 bd 98 f6 ff ff 	mov    %rdi,-0x968(%rbp)
  80890e:	4c 8b 15 8b 58 33 00 	mov    0x33588b(%rip),%r10        # b3e1a0 <mod_scalars_mp_compositegrid_+0x40>
  808915:	4c 8b 1d 24 2a 33 00 	mov    0x332a24(%rip),%r11        # b3b340 <mod_scalars_mp_dt_>
  80891c:	4c 8b 05 5d 2a 33 00 	mov    0x332a5d(%rip),%r8        # b3b380 <mod_scalars_mp_dt_+0x40>
  808923:	49 8b 79 38          	mov    0x38(%r9),%rdi
  808927:	48 8b 15 82 58 33 00 	mov    0x335882(%rip),%rdx        # b3e1b0 <mod_scalars_mp_compositegrid_+0x50>
  80892e:	4c 89 95 b0 f6 ff ff 	mov    %r10,-0x950(%rbp)
  808935:	4c 89 9d a8 fb ff ff 	mov    %r11,-0x458(%rbp)
  80893c:	4c 89 85 c0 f6 ff ff 	mov    %r8,-0x940(%rbp)
  808943:	4d 8b 19             	mov    (%r9),%r11
  808946:	4d 8b 51 50          	mov    0x50(%r9),%r10
  80894a:	48 89 bd 30 ff ff ff 	mov    %rdi,-0xd0(%rbp)
  808951:	48 89 95 a8 f6 ff ff 	mov    %rdx,-0x958(%rbp)
  808958:	4c 8b 08             	mov    (%rax),%r9
  80895b:	48 8b 78 38          	mov    0x38(%rax),%rdi
  80895f:	4c 8b 40 50          	mov    0x50(%rax),%r8
  808963:	49 8b 14 24          	mov    (%r12),%rdx
  808967:	49 8b 84 24 98 00 00 	mov    0x98(%r12),%rax
  80896e:	00 
  80896f:	48 89 95 e0 f6 ff ff 	mov    %rdx,-0x920(%rbp)
  808976:	48 89 85 d8 f6 ff ff 	mov    %rax,-0x928(%rbp)
  80897d:	49 8b 94 24 80 00 00 	mov    0x80(%r12),%rdx
  808984:	00 
  808985:	49 8b 44 24 68       	mov    0x68(%r12),%rax
  80898a:	48 89 95 c8 f6 ff ff 	mov    %rdx,-0x938(%rbp)
  808991:	48 89 85 00 f9 ff ff 	mov    %rax,-0x700(%rbp)
  808998:	49 8b 54 24 50       	mov    0x50(%r12),%rdx
  80899d:	49 8b 44 24 38       	mov    0x38(%r12),%rax
  8089a2:	4c 8b a5 18 f3 ff ff 	mov    -0xce8(%rbp),%r12
  8089a9:	48 89 95 f0 fd ff ff 	mov    %rdx,-0x210(%rbp)
  8089b0:	4d 63 ff             	movslq %r15d,%r15
  8089b3:	49 8b 14 24          	mov    (%r12),%rdx
  8089b7:	48 89 95 b8 f6 ff ff 	mov    %rdx,-0x948(%rbp)
  8089be:	49 8b 54 24 68       	mov    0x68(%r12),%rdx
  8089c3:	48 89 95 f8 f8 ff ff 	mov    %rdx,-0x708(%rbp)
  8089ca:	49 8b 54 24 50       	mov    0x50(%r12),%rdx
  8089cf:	48 89 95 e8 fd ff ff 	mov    %rdx,-0x218(%rbp)
  8089d6:	48 8b 95 c0 f2 ff ff 	mov    -0xd40(%rbp),%rdx
  8089dd:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  8089e2:	4c 89 a5 28 ff ff ff 	mov    %r12,-0xd8(%rbp)
  8089e9:	4c 8b 22             	mov    (%rdx),%r12
  8089ec:	4c 89 a5 60 f6 ff ff 	mov    %r12,-0x9a0(%rbp)
  8089f3:	4c 8b 62 50          	mov    0x50(%rdx),%r12
  8089f7:	4c 89 a5 e0 fd ff ff 	mov    %r12,-0x220(%rbp)
  8089fe:	4c 8b a5 20 f3 ff ff 	mov    -0xce0(%rbp),%r12
  808a05:	48 8b 52 38          	mov    0x38(%rdx),%rdx
  808a09:	48 89 95 20 ff ff ff 	mov    %rdx,-0xe0(%rbp)
  808a10:	49 8b 14 24          	mov    (%r12),%rdx
  808a14:	48 89 95 58 f6 ff ff 	mov    %rdx,-0x9a8(%rbp)
  808a1b:	49 8b 54 24 68       	mov    0x68(%r12),%rdx
  808a20:	48 89 95 f0 f8 ff ff 	mov    %rdx,-0x710(%rbp)
  808a27:	49 8b 54 24 50       	mov    0x50(%r12),%rdx
  808a2c:	48 89 95 d8 fd ff ff 	mov    %rdx,-0x228(%rbp)
  808a33:	48 8b 95 d0 f2 ff ff 	mov    -0xd30(%rbp),%rdx
  808a3a:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  808a3f:	4c 89 a5 18 ff ff ff 	mov    %r12,-0xe8(%rbp)
  808a46:	4c 8b 22             	mov    (%rdx),%r12
  808a49:	4c 89 a5 50 f6 ff ff 	mov    %r12,-0x9b0(%rbp)
  808a50:	4c 8b 62 50          	mov    0x50(%rdx),%r12
  808a54:	4c 89 a5 d0 fd ff ff 	mov    %r12,-0x230(%rbp)
  808a5b:	4c 8b a5 f0 f2 ff ff 	mov    -0xd10(%rbp),%r12
  808a62:	48 8b 52 38          	mov    0x38(%rdx),%rdx
  808a66:	48 89 95 10 ff ff ff 	mov    %rdx,-0xf0(%rbp)
  808a6d:	49 8b 14 24          	mov    (%r12),%rdx
  808a71:	48 89 95 48 f6 ff ff 	mov    %rdx,-0x9b8(%rbp)
  808a78:	49 8b 54 24 50       	mov    0x50(%r12),%rdx
  808a7d:	48 89 95 c8 fd ff ff 	mov    %rdx,-0x238(%rbp)
  808a84:	48 8b 95 28 f3 ff ff 	mov    -0xcd8(%rbp),%rdx
  808a8b:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  808a90:	4c 89 a5 08 ff ff ff 	mov    %r12,-0xf8(%rbp)
  808a97:	4c 8b 22             	mov    (%rdx),%r12
  808a9a:	4c 89 a5 40 f6 ff ff 	mov    %r12,-0x9c0(%rbp)
  808aa1:	4c 8b 62 68          	mov    0x68(%rdx),%r12
  808aa5:	4c 89 a5 e8 f8 ff ff 	mov    %r12,-0x718(%rbp)
  808aac:	4c 8b 62 50          	mov    0x50(%rdx),%r12
  808ab0:	4c 89 a5 c0 fd ff ff 	mov    %r12,-0x240(%rbp)
  808ab7:	4c 8b a5 00 f3 ff ff 	mov    -0xd00(%rbp),%r12
  808abe:	48 8b 52 38          	mov    0x38(%rdx),%rdx
  808ac2:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
  808ac9:	49 8b 14 24          	mov    (%r12),%rdx
  808acd:	48 89 95 38 f6 ff ff 	mov    %rdx,-0x9c8(%rbp)
  808ad4:	49 8b 54 24 50       	mov    0x50(%r12),%rdx
  808ad9:	48 89 95 b8 fd ff ff 	mov    %rdx,-0x248(%rbp)
  808ae0:	48 8b 95 08 f3 ff ff 	mov    -0xcf8(%rbp),%rdx
  808ae7:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  808aec:	4c 89 a5 f8 fe ff ff 	mov    %r12,-0x108(%rbp)
  808af3:	4c 8b 22             	mov    (%rdx),%r12
  808af6:	4c 89 a5 30 f6 ff ff 	mov    %r12,-0x9d0(%rbp)
  808afd:	4c 8b 62 50          	mov    0x50(%rdx),%r12
  808b01:	4c 89 a5 b0 fd ff ff 	mov    %r12,-0x250(%rbp)
  808b08:	4c 8b a5 10 f3 ff ff 	mov    -0xcf0(%rbp),%r12
  808b0f:	48 8b 52 38          	mov    0x38(%rdx),%rdx
  808b13:	48 89 95 f0 fe ff ff 	mov    %rdx,-0x110(%rbp)
  808b1a:	49 8b 14 24          	mov    (%r12),%rdx
  808b1e:	48 89 95 28 f6 ff ff 	mov    %rdx,-0x9d8(%rbp)
  808b25:	49 8b 54 24 50       	mov    0x50(%r12),%rdx
  808b2a:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  808b2f:	48 89 95 a8 fd ff ff 	mov    %rdx,-0x258(%rbp)
  808b36:	4c 89 a5 e8 fe ff ff 	mov    %r12,-0x118(%rbp)
  808b3d:	48 8b 15 7c 53 33 00 	mov    0x33537c(%rip),%rdx        # b3dec0 <mod_param_mp_domain_>
  808b44:	4c 8b 25 b5 53 33 00 	mov    0x3353b5(%rip),%r12        # b3df00 <mod_param_mp_domain_+0x40>
  808b4b:	48 89 95 58 f8 ff ff 	mov    %rdx,-0x7a8(%rbp)
  808b52:	4c 89 a5 20 f6 ff ff 	mov    %r12,-0x9e0(%rbp)
  808b59:	48 8b 15 40 47 33 00 	mov    0x334740(%rip),%rdx        # b3d2a0 <mod_param_mp_lbc_>
  808b60:	4c 8b 25 a9 47 33 00 	mov    0x3347a9(%rip),%r12        # b3d310 <mod_param_mp_lbc_+0x70>
  808b67:	48 89 95 18 f6 ff ff 	mov    %rdx,-0x9e8(%rbp)
  808b6e:	4c 89 a5 10 f6 ff ff 	mov    %r12,-0x9f0(%rbp)
  808b75:	48 8b 15 8c 47 33 00 	mov    0x33478c(%rip),%rdx        # b3d308 <mod_param_mp_lbc_+0x68>
  808b7c:	4c 8b 25 3d 3c 33 00 	mov    0x333c3d(%rip),%r12        # b3c7c0 <mod_ncparam_mp_istvar_>
  808b83:	48 8b 0d 76 4c 33 00 	mov    0x334c76(%rip),%rcx        # b3d800 <mod_scalars_mp_nsperiodic_>
  808b8a:	48 89 95 08 f6 ff ff 	mov    %rdx,-0x9f8(%rbp)
  808b91:	4c 89 a5 00 f6 ff ff 	mov    %r12,-0xa00(%rbp)
  808b98:	48 8b 15 61 3c 33 00 	mov    0x333c61(%rip),%rdx        # b3c800 <mod_ncparam_mp_istvar_+0x40>
  808b9f:	4c 8b 25 52 47 33 00 	mov    0x334752(%rip),%r12        # b3d2f8 <mod_param_mp_lbc_+0x58>
  808ba6:	4c 2b bd d8 f5 ff ff 	sub    -0xa28(%rbp),%r15
  808bad:	48 89 8d 78 f6 ff ff 	mov    %rcx,-0x988(%rbp)
  808bb4:	49 ff c7             	inc    %r15
  808bb7:	48 8b 0d 22 35 33 00 	mov    0x333522(%rip),%rcx        # b3c0e0 <mod_param_mp_n_+0x40>
  808bbe:	48 89 95 f8 f5 ff ff 	mov    %rdx,-0xa08(%rbp)
  808bc5:	4c 89 a5 f0 f5 ff ff 	mov    %r12,-0xa10(%rbp)
  808bcc:	48 c1 e1 02          	shl    $0x2,%rcx
  808bd0:	48 8b 15 19 47 33 00 	mov    0x334719(%rip),%rdx        # b3d2f0 <mod_param_mp_lbc_+0x50>
  808bd7:	48 f7 d9             	neg    %rcx
  808bda:	4c 8b 25 ff 46 33 00 	mov    0x3346ff(%rip),%r12        # b3d2e0 <mod_param_mp_lbc_+0x40>
  808be1:	48 89 95 10 f8 ff ff 	mov    %rdx,-0x7f0(%rbp)
  808be8:	33 d2                	xor    %edx,%edx
  808bea:	4c 89 a5 e8 f5 ff ff 	mov    %r12,-0xa18(%rbp)
  808bf1:	4c 89 bd 48 f8 ff ff 	mov    %r15,-0x7b8(%rbp)
  808bf8:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  808bff:	48 89 bd 40 ff ff ff 	mov    %rdi,-0xc0(%rbp)
  808c06:	4c 89 85 f8 fd ff ff 	mov    %r8,-0x208(%rbp)
  808c0d:	4c 89 8d e8 f6 ff ff 	mov    %r9,-0x918(%rbp)
  808c14:	4c 89 95 00 fe ff ff 	mov    %r10,-0x200(%rbp)
  808c1b:	4c 89 9d f0 f6 ff ff 	mov    %r11,-0x910(%rbp)
  808c22:	4c 89 b5 f8 f6 ff ff 	mov    %r14,-0x908(%rbp)
  808c29:	48 63 3c 31          	movslq (%rcx,%rsi,1),%rdi
  808c2d:	45 33 e4             	xor    %r12d,%r12d
  808c30:	48 85 ff             	test   %rdi,%rdi
  808c33:	0f 8e e0 41 00 00    	jle    80ce19 <t3dmix_mod_mp_t3dmix4_tile_+0x4f79>
  808c39:	48 89 95 38 f8 ff ff 	mov    %rdx,-0x7c8(%rbp)
  808c40:	48 89 bd 78 fa ff ff 	mov    %rdi,-0x588(%rbp)
  808c47:	48 63 bd 18 fa ff ff 	movslq -0x5e8(%rbp),%rdi
  808c4e:	48 8b 95 e8 fd ff ff 	mov    -0x218(%rbp),%rdx
  808c55:	48 0f af d7          	imul   %rdi,%rdx
  808c59:	c5 fd 10 1d 1f c3 0b 	vmovupd 0xbc31f(%rip),%ymm3        # 8c4f80 <var$630.126.450+0xc0>
  808c60:	00 
  808c61:	c5 f9 10 2d 37 dd 0b 	vmovupd 0xbdd37(%rip),%xmm5        # 8c69a0 <__STRLITPACK_19.34+0x10>
  808c68:	00 
  808c69:	c5 fb 10 25 a7 e5 0b 	vmovsd 0xbe5a7(%rip),%xmm4        # 8c7218 <__STRLITPACK_199.115+0x88>
  808c70:	00 
  808c71:	c5 fb 10 15 87 e5 0b 	vmovsd 0xbe587(%rip),%xmm2        # 8c7200 <__STRLITPACK_199.115+0x70>
  808c78:	00 
  808c79:	4c 8b 85 00 fe ff ff 	mov    -0x200(%rbp),%r8
  808c80:	4c 8b 9d f8 fd ff ff 	mov    -0x208(%rbp),%r11
  808c87:	4c 8b ad c8 fd ff ff 	mov    -0x238(%rbp),%r13
  808c8e:	4c 0f af c7          	imul   %rdi,%r8
  808c92:	4c 0f af df          	imul   %rdi,%r11
  808c96:	4c 0f af ef          	imul   %rdi,%r13
  808c9a:	4c 8b 8d e0 fd ff ff 	mov    -0x220(%rbp),%r9
  808ca1:	4c 0f af cf          	imul   %rdi,%r9
  808ca5:	4c 8b bd d0 fd ff ff 	mov    -0x230(%rbp),%r15
  808cac:	4c 0f af ff          	imul   %rdi,%r15
  808cb0:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  808cb7:	48 89 95 08 f3 ff ff 	mov    %rdx,-0xcf8(%rbp)
  808cbe:	4c 63 a5 20 fa ff ff 	movslq -0x5e0(%rbp),%r12
  808cc5:	48 8b 95 d8 fd ff ff 	mov    -0x228(%rbp),%rdx
  808ccc:	4c 2b e7             	sub    %rdi,%r12
  808ccf:	48 0f af d7          	imul   %rdi,%rdx
  808cd3:	48 89 8d 28 f8 ff ff 	mov    %rcx,-0x7d8(%rbp)
  808cda:	8b 8d a0 fd ff ff    	mov    -0x260(%rbp),%ecx
  808ce0:	48 89 b5 30 f8 ff ff 	mov    %rsi,-0x7d0(%rbp)
  808ce7:	49 8d 74 24 02       	lea    0x2(%r12),%rsi
  808cec:	4c 89 85 f0 f2 ff ff 	mov    %r8,-0xd10(%rbp)
  808cf3:	49 ff c4             	inc    %r12
  808cf6:	4c 89 9d e8 f2 ff ff 	mov    %r11,-0xd18(%rbp)
  808cfd:	8d 41 01             	lea    0x1(%rcx),%eax
  808d00:	4c 89 ad d0 f2 ff ff 	mov    %r13,-0xd30(%rbp)
  808d07:	48 89 b5 30 fe ff ff 	mov    %rsi,-0x1d0(%rbp)
  808d0e:	48 8b b5 c0 fd ff ff 	mov    -0x240(%rbp),%rsi
  808d15:	4c 8b 9d b8 fd ff ff 	mov    -0x248(%rbp),%r11
  808d1c:	4c 8b ad b0 fd ff ff 	mov    -0x250(%rbp),%r13
  808d23:	4d 89 ee             	mov    %r13,%r14
  808d26:	4c 8b 85 a8 fd ff ff 	mov    -0x258(%rbp),%r8
  808d2d:	89 85 38 fe ff ff    	mov    %eax,-0x1c8(%rbp)
  808d33:	48 89 f0             	mov    %rsi,%rax
  808d36:	4c 89 8d e0 f2 ff ff 	mov    %r9,-0xd20(%rbp)
  808d3d:	4d 89 c1             	mov    %r8,%r9
  808d40:	4c 89 a5 48 fe ff ff 	mov    %r12,-0x1b8(%rbp)
  808d47:	4d 89 dc             	mov    %r11,%r12
  808d4a:	4c 89 bd d8 f2 ff ff 	mov    %r15,-0xd28(%rbp)
  808d51:	4c 63 bd 98 fd ff ff 	movslq -0x268(%rbp),%r15
  808d58:	4c 8b 95 f0 fd ff ff 	mov    -0x210(%rbp),%r10
  808d5f:	48 0f af c7          	imul   %rdi,%rax
  808d63:	4c 0f af e7          	imul   %rdi,%r12
  808d67:	4c 0f af f7          	imul   %rdi,%r14
  808d6b:	4c 0f af cf          	imul   %rdi,%r9
  808d6f:	4c 0f af d7          	imul   %rdi,%r10
  808d73:	48 c1 e7 03          	shl    $0x3,%rdi
  808d77:	48 89 bd a0 f7 ff ff 	mov    %rdi,-0x860(%rbp)
  808d7e:	48 8b bd 38 ff ff ff 	mov    -0xc8(%rbp),%rdi
  808d85:	49 0f af ff          	imul   %r15,%rdi
  808d89:	48 89 95 f8 f3 ff ff 	mov    %rdx,-0xc08(%rbp)
  808d90:	48 8b 95 18 ff ff ff 	mov    -0xe8(%rbp),%rdx
  808d97:	49 0f af d7          	imul   %r15,%rdx
  808d9b:	48 63 c9             	movslq %ecx,%rcx
  808d9e:	49 2b cf             	sub    %r15,%rcx
  808da1:	48 89 bd b0 f9 ff ff 	mov    %rdi,-0x650(%rbp)
  808da8:	48 89 95 80 f9 ff ff 	mov    %rdx,-0x680(%rbp)
  808daf:	4c 89 95 28 f4 ff ff 	mov    %r10,-0xbd8(%rbp)
  808db6:	4c 8b 95 e8 f8 ff ff 	mov    -0x718(%rbp),%r10
  808dbd:	48 8d 3c cd 08 00 00 	lea    0x8(,%rcx,8),%rdi
  808dc4:	00 
  808dc5:	48 89 bd f8 f7 ff ff 	mov    %rdi,-0x808(%rbp)
  808dcc:	48 8d 79 01          	lea    0x1(%rcx),%rdi
  808dd0:	48 83 c1 02          	add    $0x2,%rcx
  808dd4:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  808ddb:	4a 8d 3c fd 00 00 00 	lea    0x0(,%r15,8),%rdi
  808de2:	00 
  808de3:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  808de7:	48 89 bd 28 f9 ff ff 	mov    %rdi,-0x6d8(%rbp)
  808dee:	89 cf                	mov    %ecx,%edi
  808df0:	83 e1 fc             	and    $0xfffffffc,%ecx
  808df3:	83 e7 fe             	and    $0xfffffffe,%edi
  808df6:	48 63 c9             	movslq %ecx,%rcx
  808df9:	48 89 8d b8 fc ff ff 	mov    %rcx,-0x348(%rbp)
  808e00:	48 8b 8d a0 f2 ff ff 	mov    -0xd60(%rbp),%rcx
  808e07:	48 89 ca             	mov    %rcx,%rdx
  808e0a:	48 0f af d6          	imul   %rsi,%rdx
  808e0e:	48 f7 da             	neg    %rdx
  808e11:	48 63 ff             	movslq %edi,%rdi
  808e14:	49 03 d2             	add    %r10,%rdx
  808e17:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  808e1b:	48 8b bd 40 f6 ff ff 	mov    -0x9c0(%rbp),%rdi
  808e22:	49 2b fa             	sub    %r10,%rdi
  808e25:	48 89 95 78 f9 ff ff 	mov    %rdx,-0x688(%rbp)
  808e2c:	48 89 bd 10 f4 ff ff 	mov    %rdi,-0xbf0(%rbp)
  808e33:	48 89 85 f8 f2 ff ff 	mov    %rax,-0xd08(%rbp)
  808e3a:	4c 89 a5 c8 f2 ff ff 	mov    %r12,-0xd38(%rbp)
  808e41:	48 8d 34 17          	lea    (%rdi,%rdx,1),%rsi
  808e45:	48 8b 95 a8 f2 ff ff 	mov    -0xd58(%rbp),%rdx
  808e4c:	49 89 d2             	mov    %rdx,%r10
  808e4f:	48 8b bd 00 ff ff ff 	mov    -0x100(%rbp),%rdi
  808e56:	4c 0f af d7          	imul   %rdi,%r10
  808e5a:	49 0f af ff          	imul   %r15,%rdi
  808e5e:	49 2b c2             	sub    %r10,%rax
  808e61:	48 03 c6             	add    %rsi,%rax
  808e64:	48 03 c7             	add    %rdi,%rax
  808e67:	48 89 d7             	mov    %rdx,%rdi
  808e6a:	48 89 85 58 f9 ff ff 	mov    %rax,-0x6a8(%rbp)
  808e71:	48 89 c8             	mov    %rcx,%rax
  808e74:	49 0f af c3          	imul   %r11,%rax
  808e78:	48 89 b5 b8 f8 ff ff 	mov    %rsi,-0x748(%rbp)
  808e7f:	48 8b b5 f8 fe ff ff 	mov    -0x108(%rbp),%rsi
  808e86:	48 0f af fe          	imul   %rsi,%rdi
  808e8a:	49 0f af f7          	imul   %r15,%rsi
  808e8e:	4c 8b 9d 38 f6 ff ff 	mov    -0x9c8(%rbp),%r11
  808e95:	48 f7 de             	neg    %rsi
  808e98:	4c 2b d8             	sub    %rax,%r11
  808e9b:	48 03 f7             	add    %rdi,%rsi
  808e9e:	48 89 85 c8 f3 ff ff 	mov    %rax,-0xc38(%rbp)
  808ea5:	4c 89 9d e0 f9 ff ff 	mov    %r11,-0x620(%rbp)
  808eac:	48 89 bd 50 f4 ff ff 	mov    %rdi,-0xbb0(%rbp)
  808eb3:	4c 89 b5 c0 f2 ff ff 	mov    %r14,-0xd40(%rbp)
  808eba:	4b 8d 04 23          	lea    (%r11,%r12,1),%rax
  808ebe:	48 2b c6             	sub    %rsi,%rax
  808ec1:	49 89 cb             	mov    %rcx,%r11
  808ec4:	48 89 85 48 fa ff ff 	mov    %rax,-0x5b8(%rbp)
  808ecb:	48 89 d0             	mov    %rdx,%rax
  808ece:	4c 8b a5 f0 fe ff ff 	mov    -0x110(%rbp),%r12
  808ed5:	48 89 d6             	mov    %rdx,%rsi
  808ed8:	49 0f af c4          	imul   %r12,%rax
  808edc:	4d 0f af e7          	imul   %r15,%r12
  808ee0:	4d 0f af dd          	imul   %r13,%r11
  808ee4:	49 f7 dc             	neg    %r12
  808ee7:	48 89 85 58 f4 ff ff 	mov    %rax,-0xba8(%rbp)
  808eee:	4c 03 e0             	add    %rax,%r12
  808ef1:	48 89 c8             	mov    %rcx,%rax
  808ef4:	49 0f af c0          	imul   %r8,%rax
  808ef8:	4c 89 9d c0 f3 ff ff 	mov    %r11,-0xc40(%rbp)
  808eff:	4c 8b ad 30 f6 ff ff 	mov    -0x9d0(%rbp),%r13
  808f06:	4d 2b eb             	sub    %r11,%r13
  808f09:	4c 8b 9d e8 fe ff ff 	mov    -0x118(%rbp),%r11
  808f10:	49 0f af f3          	imul   %r11,%rsi
  808f14:	4d 0f af df          	imul   %r15,%r11
  808f18:	4c 8b 85 28 f6 ff ff 	mov    -0x9d8(%rbp),%r8
  808f1f:	49 89 cf             	mov    %rcx,%r15
  808f22:	4c 2b c0             	sub    %rax,%r8
  808f25:	49 f7 db             	neg    %r11
  808f28:	4c 0f af bd d8 fd ff 	imul   -0x228(%rbp),%r15
  808f2f:	ff 
  808f30:	4c 03 de             	add    %rsi,%r11
  808f33:	4b 8d 3c 08          	lea    (%r8,%r9,1),%rdi
  808f37:	49 2b fb             	sub    %r11,%rdi
  808f3a:	49 89 d3             	mov    %rdx,%r11
  808f3d:	4c 89 85 f8 f9 ff ff 	mov    %r8,-0x608(%rbp)
  808f44:	4d 03 f5             	add    %r13,%r14
  808f47:	4c 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%r8
  808f4e:	4d 2b f4             	sub    %r12,%r14
  808f51:	4d 0f af d8          	imul   %r8,%r11
  808f55:	48 89 85 b8 f3 ff ff 	mov    %rax,-0xc48(%rbp)
  808f5c:	49 f7 d8             	neg    %r8
  808f5f:	48 8b 85 58 f6 ff ff 	mov    -0x9a8(%rbp),%rax
  808f66:	4c 89 ad 00 fa ff ff 	mov    %r13,-0x600(%rbp)
  808f6d:	49 89 c5             	mov    %rax,%r13
  808f70:	4c 89 8d b8 f2 ff ff 	mov    %r9,-0xd48(%rbp)
  808f77:	4c 8b 8d f0 f8 ff ff 	mov    -0x710(%rbp),%r9
  808f7e:	4d 2b e9             	sub    %r9,%r13
  808f81:	4d 2b cf             	sub    %r15,%r9
  808f84:	4c 89 95 48 f4 ff ff 	mov    %r10,-0xbb8(%rbp)
  808f8b:	4d 89 fa             	mov    %r15,%r10
  808f8e:	4c 8b a5 f8 f3 ff ff 	mov    -0xc08(%rbp),%r12
  808f95:	4d 2b d4             	sub    %r12,%r10
  808f98:	4c 89 b5 38 fa ff ff 	mov    %r14,-0x5c8(%rbp)
  808f9f:	4d 2b e3             	sub    %r11,%r12
  808fa2:	48 89 bd 40 fa ff ff 	mov    %rdi,-0x5c0(%rbp)
  808fa9:	4f 8d 74 0d 00       	lea    0x0(%r13,%r9,1),%r14
  808fae:	4c 89 b5 a8 f8 ff ff 	mov    %r14,-0x758(%rbp)
  808fb5:	4d 03 e6             	add    %r14,%r12
  808fb8:	48 8b bd d8 f6 ff ff 	mov    -0x928(%rbp),%rdi
  808fbf:	4c 8b b5 d8 f5 ff ff 	mov    -0xa28(%rbp),%r14
  808fc6:	4c 0f af f7          	imul   %rdi,%r14
  808fca:	48 89 b5 60 f4 ff ff 	mov    %rsi,-0xba0(%rbp)
  808fd1:	48 8b b5 80 f9 ff ff 	mov    -0x680(%rbp),%rsi
  808fd8:	4c 03 e6             	add    %rsi,%r12
  808fdb:	4c 89 9d 68 f4 ff ff 	mov    %r11,-0xb98(%rbp)
  808fe2:	4c 2b de             	sub    %rsi,%r11
  808fe5:	4d 03 da             	add    %r10,%r11
  808fe8:	4c 89 95 38 f4 ff ff 	mov    %r10,-0xbc8(%rbp)
  808fef:	49 f7 db             	neg    %r11
  808ff2:	4c 89 8d 38 f9 ff ff 	mov    %r9,-0x6c8(%rbp)
  808ff9:	4c 03 d8             	add    %rax,%r11
  808ffc:	4c 8b 8d c8 f6 ff ff 	mov    -0x938(%rbp),%r9
  809003:	48 89 f8             	mov    %rdi,%rax
  809006:	4c 8b 95 00 f9 ff ff 	mov    -0x700(%rbp),%r10
  80900d:	4d 03 d8             	add    %r8,%r11
  809010:	4c 89 85 b0 f8 ff ff 	mov    %r8,-0x750(%rbp)
  809017:	49 2b c6             	sub    %r14,%rax
  80901a:	4c 89 a5 40 f9 ff ff 	mov    %r12,-0x6c0(%rbp)
  809021:	4c 8b a5 e0 f6 ff ff 	mov    -0x920(%rbp),%r12
  809028:	4f 8d 04 11          	lea    (%r9,%r10,1),%r8
  80902c:	49 03 c0             	add    %r8,%rax
  80902f:	4c 2b e7             	sub    %rdi,%r12
  809032:	48 89 85 90 f3 ff ff 	mov    %rax,-0xc70(%rbp)
  809039:	48 89 c8             	mov    %rcx,%rax
  80903c:	48 0f af 85 f0 fd ff 	imul   -0x210(%rbp),%rax
  809043:	ff 
  809044:	48 0f af bd 38 f8 ff 	imul   -0x7c8(%rbp),%rdi
  80904b:	ff 
  80904c:	4c 2b d0             	sub    %rax,%r10
  80904f:	4c 89 ad 20 f4 ff ff 	mov    %r13,-0xbe0(%rbp)
  809056:	4d 89 f5             	mov    %r14,%r13
  809059:	4d 03 f4             	add    %r12,%r14
  80905c:	4d 2b c2             	sub    %r10,%r8
  80905f:	4d 2b f0             	sub    %r8,%r14
  809062:	4d 2b e9             	sub    %r9,%r13
  809065:	4c 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%r8
  80906c:	4c 0f af 8d e0 f5 ff 	imul   -0xa20(%rbp),%r9
  809073:	ff 
  809074:	49 0f af d0          	imul   %r8,%rdx
  809078:	4c 89 95 98 f3 ff ff 	mov    %r10,-0xc68(%rbp)
  80907f:	49 f7 d8             	neg    %r8
  809082:	4c 8b 95 b0 f9 ff ff 	mov    -0x650(%rbp),%r10
  809089:	4d 03 c1             	add    %r9,%r8
  80908c:	4c 89 bd 30 f4 ff ff 	mov    %r15,-0xbd0(%rbp)
  809093:	4c 8b bd 28 f4 ff ff 	mov    -0xbd8(%rbp),%r15
  80909a:	49 2b c7             	sub    %r15,%rax
  80909d:	4c 2b fa             	sub    %rdx,%r15
  8090a0:	4b 8d 34 11          	lea    (%r9,%r10,1),%rsi
  8090a4:	4c 03 fe             	add    %rsi,%r15
  8090a7:	49 f7 da             	neg    %r10
  8090aa:	4d 03 fe             	add    %r14,%r15
  8090ad:	4c 03 d2             	add    %rdx,%r10
  8090b0:	4c 89 ad 00 f3 ff ff 	mov    %r13,-0xd00(%rbp)
  8090b7:	4c 03 ff             	add    %rdi,%r15
  8090ba:	4c 89 9d 88 f9 ff ff 	mov    %r11,-0x678(%rbp)
  8090c1:	4f 8d 1c 2c          	lea    (%r12,%r13,1),%r11
  8090c5:	4c 8b ad 80 fa ff ff 	mov    -0x580(%rbp),%r13
  8090cc:	4d 2b d0             	sub    %r8,%r10
  8090cf:	4c 89 bd 50 f9 ff ff 	mov    %r15,-0x6b0(%rbp)
  8090d6:	4c 2b d8             	sub    %rax,%r11
  8090d9:	4c 8b bd 98 f2 ff ff 	mov    -0xd68(%rbp),%r15
  8090e0:	49 f7 da             	neg    %r10
  8090e3:	4d 2b fd             	sub    %r13,%r15
  8090e6:	4d 03 d3             	add    %r11,%r10
  8090e9:	48 89 85 b8 f9 ff ff 	mov    %rax,-0x648(%rbp)
  8090f0:	4a 8d 04 ed 00 00 00 	lea    0x0(,%r13,8),%rax
  8090f7:	00 
  8090f8:	4c 89 8d 40 f4 ff ff 	mov    %r9,-0xbc0(%rbp)
  8090ff:	4c 03 d7             	add    %rdi,%r10
  809102:	4c 8b 8d 28 f9 ff ff 	mov    -0x6d8(%rbp),%r9
  809109:	48 89 85 a0 f3 ff ff 	mov    %rax,-0xc60(%rbp)
  809110:	4c 2b c8             	sub    %rax,%r9
  809113:	4c 89 f8             	mov    %r15,%rax
  809116:	4c 89 95 b0 f9 ff ff 	mov    %r10,-0x650(%rbp)
  80911d:	4d 8d 57 01          	lea    0x1(%r15),%r10
  809121:	48 c1 e0 04          	shl    $0x4,%rax
  809125:	48 89 85 68 f7 ff ff 	mov    %rax,-0x898(%rbp)
  80912c:	4c 8d 85 a0 f7 ff ff 	lea    -0x860(%rbp),%r8
  809133:	49 8b 00             	mov    (%r8),%rax
  809136:	49 0f af c2          	imul   %r10,%rax
  80913a:	4c 89 a5 a8 f9 ff ff 	mov    %r12,-0x658(%rbp)
  809141:	4e 8d 24 fd 00 00 00 	lea    0x0(,%r15,8),%r12
  809148:	00 
  809149:	4c 89 b5 d0 f8 ff ff 	mov    %r14,-0x730(%rbp)
  809150:	4d 89 e6             	mov    %r12,%r14
  809153:	49 f7 de             	neg    %r14
  809156:	4d 8d 2c 01          	lea    (%r9,%rax,1),%r13
  80915a:	49 89 00             	mov    %rax,(%r8)
  80915d:	48 89 bd a0 f9 ff ff 	mov    %rdi,-0x660(%rbp)
  809164:	48 89 95 70 f4 ff ff 	mov    %rdx,-0xb90(%rbp)
  80916b:	4d 8d 04 06          	lea    (%r14,%rax,1),%r8
  80916f:	4c 89 85 98 f7 ff ff 	mov    %r8,-0x868(%rbp)
  809176:	4e 8d 04 f8          	lea    (%rax,%r15,8),%r8
  80917a:	4c 89 85 78 f7 ff ff 	mov    %r8,-0x888(%rbp)
  809181:	4c 8b 85 90 f2 ff ff 	mov    -0xd70(%rbp),%r8
  809188:	4d 8d 7c 24 08       	lea    0x8(%r12),%r15
  80918d:	4d 0f af c7          	imul   %r15,%r8
  809191:	4d 2b e0             	sub    %r8,%r12
  809194:	49 2b c0             	sub    %r8,%rax
  809197:	4c 89 a5 38 fb ff ff 	mov    %r12,-0x4c8(%rbp)
  80919e:	4d 2b f0             	sub    %r8,%r14
  8091a1:	4c 89 bd 40 fe ff ff 	mov    %r15,-0x1c0(%rbp)
  8091a8:	4c 8b bd 88 f6 ff ff 	mov    -0x978(%rbp),%r15
  8091af:	4c 89 85 48 fb ff ff 	mov    %r8,-0x4b8(%rbp)
  8091b6:	4d 03 e5             	add    %r13,%r12
  8091b9:	4d 2b e8             	sub    %r8,%r13
  8091bc:	4d 8d 04 01          	lea    (%r9,%rax,1),%r8
  8091c0:	48 89 85 90 f7 ff ff 	mov    %rax,-0x870(%rbp)
  8091c7:	4c 89 b5 88 fd ff ff 	mov    %r14,-0x278(%rbp)
  8091ce:	4c 8b b5 90 f6 ff ff 	mov    -0x970(%rbp),%r14
  8091d5:	4d 03 e6             	add    %r14,%r12
  8091d8:	4b 8d 04 2f          	lea    (%r15,%r13,1),%rax
  8091dc:	48 89 85 c8 fc ff ff 	mov    %rax,-0x338(%rbp)
  8091e3:	8b 85 20 fa ff ff    	mov    -0x5e0(%rbp),%eax
  8091e9:	4d 03 f5             	add    %r13,%r14
  8091ec:	4c 89 a5 e0 fc ff ff 	mov    %r12,-0x320(%rbp)
  8091f3:	4c 8b a5 88 fa ff ff 	mov    -0x578(%rbp),%r12
  8091fa:	4d 03 c4             	add    %r12,%r8
  8091fd:	4c 89 85 d8 fc ff ff 	mov    %r8,-0x328(%rbp)
  809204:	44 8d 40 01          	lea    0x1(%rax),%r8d
  809208:	44 89 85 28 fa ff ff 	mov    %r8d,-0x5d8(%rbp)
  80920f:	49 89 c8             	mov    %rcx,%r8
  809212:	4c 0f af 85 e8 fd ff 	imul   -0x218(%rbp),%r8
  809219:	ff 
  80921a:	49 f7 d8             	neg    %r8
  80921d:	4d 03 ec             	add    %r12,%r13
  809220:	4c 89 b5 d0 fc ff ff 	mov    %r14,-0x330(%rbp)
  809227:	48 8b 85 b8 f6 ff ff 	mov    -0x948(%rbp),%rax
  80922e:	4c 8b b5 f8 f8 ff ff 	mov    -0x708(%rbp),%r14
  809235:	49 2b c6             	sub    %r14,%rax
  809238:	4d 03 c6             	add    %r14,%r8
  80923b:	4c 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%r15
  809242:	4c 89 ad f0 fc ff ff 	mov    %r13,-0x310(%rbp)
  809249:	45 89 fd             	mov    %r15d,%r13d
  80924c:	45 89 fc             	mov    %r15d,%r12d
  80924f:	41 83 e7 fc          	and    $0xfffffffc,%r15d
  809253:	41 83 e5 fe          	and    $0xfffffffe,%r13d
  809257:	41 83 e4 f8          	and    $0xfffffff8,%r12d
  80925b:	4d 63 ff             	movslq %r15d,%r15
  80925e:	4c 8b b5 a8 f2 ff ff 	mov    -0xd58(%rbp),%r14
  809265:	4c 89 7d d8          	mov    %r15,-0x28(%rbp)
  809269:	4d 89 f7             	mov    %r14,%r15
  80926c:	4d 63 ed             	movslq %r13d,%r13
  80926f:	48 89 85 00 f4 ff ff 	mov    %rax,-0xc00(%rbp)
  809276:	4c 89 6d d0          	mov    %r13,-0x30(%rbp)
  80927a:	4e 8d 2c 00          	lea    (%rax,%r8,1),%r13
  80927e:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
  809285:	4c 0f af f8          	imul   %rax,%r15
  809289:	4d 63 e4             	movslq %r12d,%r12
  80928c:	4c 89 a5 50 f7 ff ff 	mov    %r12,-0x8b0(%rbp)
  809293:	4c 63 a5 98 fd ff ff 	movslq -0x268(%rbp),%r12
  80929a:	49 0f af c4          	imul   %r12,%rax
  80929e:	4c 89 85 98 f9 ff ff 	mov    %r8,-0x668(%rbp)
  8092a5:	4c 8b 85 08 f3 ff ff 	mov    -0xcf8(%rbp),%r8
  8092ac:	4d 2b c7             	sub    %r15,%r8
  8092af:	4d 03 c5             	add    %r13,%r8
  8092b2:	4c 03 c0             	add    %rax,%r8
  8092b5:	4c 89 85 60 f9 ff ff 	mov    %r8,-0x6a0(%rbp)
  8092bc:	49 89 c8             	mov    %rcx,%r8
  8092bf:	4c 0f af 85 e0 fd ff 	imul   -0x220(%rbp),%r8
  8092c6:	ff 
  8092c7:	4c 89 bd 78 f4 ff ff 	mov    %r15,-0xb88(%rbp)
  8092ce:	4d 89 f7             	mov    %r14,%r15
  8092d1:	4c 89 85 e0 f3 ff ff 	mov    %r8,-0xc20(%rbp)
  8092d8:	48 8b 85 60 f6 ff ff 	mov    -0x9a0(%rbp),%rax
  8092df:	49 2b c0             	sub    %r8,%rax
  8092e2:	4c 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%r8
  8092e9:	4d 0f af f8          	imul   %r8,%r15
  8092ed:	4d 0f af c4          	imul   %r12,%r8
  8092f1:	49 f7 d8             	neg    %r8
  8092f4:	4c 89 bd 80 f4 ff ff 	mov    %r15,-0xb80(%rbp)
  8092fb:	4d 03 c7             	add    %r15,%r8
  8092fe:	49 89 cf             	mov    %rcx,%r15
  809301:	4c 0f af bd d0 fd ff 	imul   -0x230(%rbp),%r15
  809308:	ff 
  809309:	4c 89 ad c0 f8 ff ff 	mov    %r13,-0x740(%rbp)
  809310:	4c 8b ad e0 f2 ff ff 	mov    -0xd20(%rbp),%r13
  809317:	48 89 85 d0 f9 ff ff 	mov    %rax,-0x630(%rbp)
  80931e:	4c 89 bd d8 f3 ff ff 	mov    %r15,-0xc28(%rbp)
  809325:	49 03 c5             	add    %r13,%rax
  809328:	4d 89 f5             	mov    %r14,%r13
  80932b:	49 2b c0             	sub    %r8,%rax
  80932e:	48 89 85 68 f9 ff ff 	mov    %rax,-0x698(%rbp)
  809335:	48 8b 85 50 f6 ff ff 	mov    -0x9b0(%rbp),%rax
  80933c:	49 2b c7             	sub    %r15,%rax
  80933f:	4c 8b bd 10 ff ff ff 	mov    -0xf0(%rbp),%r15
  809346:	4d 0f af ef          	imul   %r15,%r13
  80934a:	4d 0f af fc          	imul   %r12,%r15
  80934e:	4c 8b 85 d8 f2 ff ff 	mov    -0xd28(%rbp),%r8
  809355:	49 f7 df             	neg    %r15
  809358:	4c 89 ad 88 f4 ff ff 	mov    %r13,-0xb78(%rbp)
  80935f:	4d 03 fd             	add    %r13,%r15
  809362:	49 89 cd             	mov    %rcx,%r13
  809365:	4c 0f af ad c8 fd ff 	imul   -0x238(%rbp),%r13
  80936c:	ff 
  80936d:	48 89 85 d8 f9 ff ff 	mov    %rax,-0x628(%rbp)
  809374:	49 03 c0             	add    %r8,%rax
  809377:	49 2b c7             	sub    %r15,%rax
  80937a:	48 89 85 90 f9 ff ff 	mov    %rax,-0x670(%rbp)
  809381:	4c 89 f0             	mov    %r14,%rax
  809384:	4c 8b bd 08 ff ff ff 	mov    -0xf8(%rbp),%r15
  80938b:	49 0f af c7          	imul   %r15,%rax
  80938f:	4d 0f af fc          	imul   %r12,%r15
  809393:	4c 8b 85 48 f6 ff ff 	mov    -0x9b8(%rbp),%r8
  80939a:	49 f7 df             	neg    %r15
  80939d:	4d 2b c5             	sub    %r13,%r8
  8093a0:	4c 03 f8             	add    %rax,%r15
  8093a3:	4c 89 ad d0 f3 ff ff 	mov    %r13,-0xc30(%rbp)
  8093aa:	4c 8b ad d0 f2 ff ff 	mov    -0xd30(%rbp),%r13
  8093b1:	4c 89 85 e8 f9 ff ff 	mov    %r8,-0x618(%rbp)
  8093b8:	48 89 85 90 f4 ff ff 	mov    %rax,-0xb70(%rbp)
  8093bf:	48 8b 85 d8 fd ff ff 	mov    -0x228(%rbp),%rax
  8093c6:	4d 03 c5             	add    %r13,%r8
  8093c9:	4d 2b c7             	sub    %r15,%r8
  8093cc:	48 f7 d8             	neg    %rax
  8093cf:	4c 8b bd f0 fd ff ff 	mov    -0x210(%rbp),%r15
  8093d6:	49 f7 df             	neg    %r15
  8093d9:	4c 89 bd 08 f4 ff ff 	mov    %r15,-0xbf8(%rbp)
  8093e0:	4c 2b fa             	sub    %rdx,%r15
  8093e3:	49 03 f7             	add    %r15,%rsi
  8093e6:	48 89 85 48 f9 ff ff 	mov    %rax,-0x6b8(%rbp)
  8093ed:	4c 03 de             	add    %rsi,%r11
  8093f0:	48 2b 85 68 f4 ff ff 	sub    -0xb98(%rbp),%rax
  8093f7:	4c 03 df             	add    %rdi,%r11
  8093fa:	4c 89 85 70 f9 ff ff 	mov    %r8,-0x690(%rbp)
  809401:	48 89 cf             	mov    %rcx,%rdi
  809404:	4c 8b 85 38 f4 ff ff 	mov    -0xbc8(%rbp),%r8
  80940b:	4c 2b c0             	sub    %rax,%r8
  80940e:	48 0f af bd 00 fe ff 	imul   -0x200(%rbp),%rdi
  809415:	ff 
  809416:	48 0f af 8d f8 fd ff 	imul   -0x208(%rbp),%rcx
  80941d:	ff 
  80941e:	49 f7 d8             	neg    %r8
  809421:	4c 03 85 58 f6 ff ff 	add    -0x9a8(%rbp),%r8
  809428:	4c 89 9d 30 f9 ff ff 	mov    %r11,-0x6d0(%rbp)
  80942f:	4d 89 f3             	mov    %r14,%r11
  809432:	4c 01 85 80 f9 ff ff 	add    %r8,-0x680(%rbp)
  809439:	4c 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%r8
  809440:	4d 0f af d8          	imul   %r8,%r11
  809444:	4d 0f af c4          	imul   %r12,%r8
  809448:	48 8b 95 f0 f6 ff ff 	mov    -0x910(%rbp),%rdx
  80944f:	49 f7 d8             	neg    %r8
  809452:	48 2b d7             	sub    %rdi,%rdx
  809455:	4d 03 c3             	add    %r11,%r8
  809458:	48 89 85 c8 f8 ff ff 	mov    %rax,-0x738(%rbp)
  80945f:	48 89 bd f0 f3 ff ff 	mov    %rdi,-0xc10(%rbp)
  809466:	48 8b 85 f0 f2 ff ff 	mov    -0xd10(%rbp),%rax
  80946d:	48 8b bd 40 ff ff ff 	mov    -0xc0(%rbp),%rdi
  809474:	4c 0f af e7          	imul   %rdi,%r12
  809478:	4c 0f af f7          	imul   %rdi,%r14
  80947c:	48 89 8d e8 f3 ff ff 	mov    %rcx,-0xc18(%rbp)
  809483:	48 8d 34 02          	lea    (%rdx,%rax,1),%rsi
  809487:	49 2b f0             	sub    %r8,%rsi
  80948a:	49 f7 dc             	neg    %r12
  80948d:	48 89 b5 50 fa ff ff 	mov    %rsi,-0x5b0(%rbp)
  809494:	4d 03 e6             	add    %r14,%r12
  809497:	48 8b b5 f8 f6 ff ff 	mov    -0x908(%rbp),%rsi
  80949e:	48 2b b5 a0 f6 ff ff 	sub    -0x960(%rbp),%rsi
  8094a5:	48 0f af b5 a8 f6 ff 	imul   -0x958(%rbp),%rsi
  8094ac:	ff 
  8094ad:	48 8b 85 e8 f6 ff ff 	mov    -0x918(%rbp),%rax
  8094b4:	48 2b c1             	sub    %rcx,%rax
  8094b7:	4c 8b 85 e8 f2 ff ff 	mov    -0xd18(%rbp),%r8
  8094be:	48 63 8d b0 f2 ff ff 	movslq -0xd50(%rbp),%rcx
  8094c5:	4c 89 9d 98 f4 ff ff 	mov    %r11,-0xb68(%rbp)
  8094cc:	48 89 b5 e0 f8 ff ff 	mov    %rsi,-0x720(%rbp)
  8094d3:	4e 8d 1c 00          	lea    (%rax,%r8,1),%r11
  8094d7:	4d 2b dc             	sub    %r12,%r11
  8094da:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
  8094e1:	00 
  8094e2:	4c 89 9d 30 fa ff ff 	mov    %r11,-0x5d0(%rbp)
  8094e9:	4c 8d 5e 08          	lea    0x8(%rsi),%r11
  8094ed:	4d 0f af da          	imul   %r10,%r11
  8094f1:	49 0f af f2          	imul   %r10,%rsi
  8094f5:	4c 8b 85 c0 f9 ff ff 	mov    -0x640(%rbp),%r8
  8094fc:	49 89 cc             	mov    %rcx,%r12
  8094ff:	48 89 95 f0 f9 ff ff 	mov    %rdx,-0x610(%rbp)
  809506:	4d 2b e0             	sub    %r8,%r12
  809509:	48 8b 95 b0 f6 ff ff 	mov    -0x950(%rbp),%rdx
  809510:	4c 89 df             	mov    %r11,%rdi
  809513:	4c 89 b5 a0 f4 ff ff 	mov    %r14,-0xb60(%rbp)
  80951a:	4c 8b b5 88 f6 ff ff 	mov    -0x978(%rbp),%r14
  809521:	48 89 85 08 fa ff ff 	mov    %rax,-0x5f8(%rbp)
  809528:	4c 8d 3c 95 00 00 00 	lea    0x0(,%rdx,4),%r15
  80952f:	00 
  809530:	49 f7 df             	neg    %r15
  809533:	4d 8d 6c 24 02       	lea    0x2(%r12),%r13
  809538:	49 ff c4             	inc    %r12
  80953b:	48 89 f2             	mov    %rsi,%rdx
  80953e:	4c 89 a5 80 fd ff ff 	mov    %r12,-0x280(%rbp)
  809545:	4b 8d 04 19          	lea    (%r9,%r11,1),%rax
  809549:	4c 8b a5 48 fb ff ff 	mov    -0x4b8(%rbp),%r12
  809550:	49 2b fc             	sub    %r12,%rdi
  809553:	4c 03 bd 98 f6 ff ff 	add    -0x968(%rbp),%r15
  80955a:	49 03 f9             	add    %r9,%rdi
  80955d:	4c 89 bd d8 f8 ff ff 	mov    %r15,-0x728(%rbp)
  809564:	4f 8d 3c 1e          	lea    (%r14,%r11,1),%r15
  809568:	4c 89 ad 68 fd ff ff 	mov    %r13,-0x298(%rbp)
  80956f:	49 03 fe             	add    %r14,%rdi
  809572:	4c 8b ad 00 fd ff ff 	mov    -0x300(%rbp),%r13
  809579:	4c 2b fe             	sub    %rsi,%r15
  80957c:	48 89 bd e0 f7 ff ff 	mov    %rdi,-0x820(%rbp)
  809583:	49 8d 3c 36          	lea    (%r14,%rsi,1),%rdi
  809587:	49 03 f1             	add    %r9,%rsi
  80958a:	49 2b d4             	sub    %r12,%rdx
  80958d:	49 2b c4             	sub    %r12,%rax
  809590:	49 2b f4             	sub    %r12,%rsi
  809593:	49 03 d1             	add    %r9,%rdx
  809596:	4d 2b fe             	sub    %r14,%r15
  809599:	48 89 8d 10 fa ff ff 	mov    %rcx,-0x5f0(%rbp)
  8095a0:	49 03 c6             	add    %r14,%rax
  8095a3:	49 03 f6             	add    %r14,%rsi
  8095a6:	49 2b fb             	sub    %r11,%rdi
  8095a9:	48 89 85 c0 f7 ff ff 	mov    %rax,-0x840(%rbp)
  8095b0:	33 c0                	xor    %eax,%eax
  8095b2:	48 8b 8d f8 f7 ff ff 	mov    -0x808(%rbp),%rcx
  8095b9:	49 03 d6             	add    %r14,%rdx
  8095bc:	48 89 b5 00 f8 ff ff 	mov    %rsi,-0x800(%rbp)
  8095c3:	49 8d 75 01          	lea    0x1(%r13),%rsi
  8095c7:	48 89 b5 60 fd ff ff 	mov    %rsi,-0x2a0(%rbp)
  8095ce:	4c 3b f9             	cmp    %rcx,%r15
  8095d1:	48 8b b5 08 fd ff ff 	mov    -0x2f8(%rbp),%rsi
  8095d8:	48 89 95 e8 f7 ff ff 	mov    %rdx,-0x818(%rbp)
  8095df:	89 c2                	mov    %eax,%edx
  8095e1:	0f 9f c2             	setg   %dl
  8095e4:	45 33 db             	xor    %r11d,%r11d
  8095e7:	49 2b fe             	sub    %r14,%rdi
  8095ea:	4c 2b ee             	sub    %rsi,%r13
  8095ed:	48 3b f9             	cmp    %rcx,%rdi
  8095f0:	48 8b bd 78 f7 ff ff 	mov    -0x888(%rbp),%rdi
  8095f7:	41 0f 9f c3          	setg   %r11b
  8095fb:	41 0b d3             	or     %r11d,%edx
  8095fe:	89 95 b0 f7 ff ff    	mov    %edx,-0x850(%rbp)
  809604:	4d 8d 5d 01          	lea    0x1(%r13),%r11
  809608:	49 83 c5 02          	add    $0x2,%r13
  80960c:	4c 89 ad 50 fe ff ff 	mov    %r13,-0x1b0(%rbp)
  809613:	4c 8d 2c f5 00 00 00 	lea    0x0(,%rsi,8),%r13
  80961a:	00 
  80961b:	4c 89 ad a0 f8 ff ff 	mov    %r13,-0x760(%rbp)
  809622:	4c 2b ad a0 f3 ff ff 	sub    -0xc60(%rbp),%r13
  809629:	4c 8b bd 90 f7 ff ff 	mov    -0x870(%rbp),%r15
  809630:	4c 89 9d 98 fe ff ff 	mov    %r11,-0x168(%rbp)
  809637:	48 8b b5 a0 f7 ff ff 	mov    -0x860(%rbp),%rsi
  80963e:	49 8d 54 3d 00       	lea    0x0(%r13,%rdi,1),%rdx
  809643:	49 2b d4             	sub    %r12,%rdx
  809646:	4f 8d 1c 2f          	lea    (%r15,%r13,1),%r11
  80964a:	49 03 d6             	add    %r14,%rdx
  80964d:	4d 03 de             	add    %r14,%r11
  809650:	48 89 95 80 f7 ff ff 	mov    %rdx,-0x880(%rbp)
  809657:	49 8d 7c 35 00       	lea    0x0(%r13,%rsi,1),%rdi
  80965c:	48 8b 95 98 f7 ff ff 	mov    -0x868(%rbp),%rdx
  809663:	49 2b fc             	sub    %r12,%rdi
  809666:	4c 89 9d 60 f7 ff ff 	mov    %r11,-0x8a0(%rbp)
  80966d:	49 03 fe             	add    %r14,%rdi
  809670:	48 89 bd 70 f7 ff ff 	mov    %rdi,-0x890(%rbp)
  809677:	4d 8d 5c 15 00       	lea    0x0(%r13,%rdx,1),%r11
  80967c:	4d 2b dc             	sub    %r12,%r11
  80967f:	4a 8d 14 c5 00 00 00 	lea    0x0(,%r8,8),%rdx
  809686:	00 
  809687:	49 0f af d2          	imul   %r10,%rdx
  80968b:	49 89 d7             	mov    %rdx,%r15
  80968e:	49 8d 34 11          	lea    (%r9,%rdx,1),%rsi
  809692:	4d 2b fc             	sub    %r12,%r15
  809695:	49 2b f4             	sub    %r12,%rsi
  809698:	4d 03 de             	add    %r14,%r11
  80969b:	49 03 f6             	add    %r14,%rsi
  80969e:	4c 89 9d 88 f7 ff ff 	mov    %r11,-0x878(%rbp)
  8096a5:	48 89 b5 d8 f7 ff ff 	mov    %rsi,-0x828(%rbp)
  8096ac:	4c 8b 9d 38 fb ff ff 	mov    -0x4c8(%rbp),%r11
  8096b3:	4b 8d 7c 3d 00       	lea    0x0(%r13,%r15,1),%rdi
  8096b8:	4c 03 ea             	add    %rdx,%r13
  8096bb:	4d 03 f9             	add    %r9,%r15
  8096be:	48 8b b5 90 f6 ff ff 	mov    -0x970(%rbp),%rsi
  8096c5:	4d 03 dd             	add    %r13,%r11
  8096c8:	4d 03 fe             	add    %r14,%r15
  8096cb:	4c 03 de             	add    %rsi,%r11
  8096ce:	4c 89 bd f0 f7 ff ff 	mov    %r15,-0x810(%rbp)
  8096d5:	4c 8b bd 88 fd ff ff 	mov    -0x278(%rbp),%r15
  8096dc:	4d 03 fd             	add    %r13,%r15
  8096df:	4d 2b ec             	sub    %r12,%r13
  8096e2:	4c 89 9d 38 fb ff ff 	mov    %r11,-0x4c8(%rbp)
  8096e9:	4d 03 fe             	add    %r14,%r15
  8096ec:	4c 8b 9d 88 fa ff ff 	mov    -0x578(%rbp),%r11
  8096f3:	4c 89 bd 88 fd ff ff 	mov    %r15,-0x278(%rbp)
  8096fa:	48 89 95 40 fb ff ff 	mov    %rdx,-0x4c0(%rbp)
  809701:	49 03 f5             	add    %r13,%rsi
  809704:	48 89 b5 c0 fc ff ff 	mov    %rsi,-0x340(%rbp)
  80970b:	4d 8d 3c 3b          	lea    (%r11,%rdi,1),%r15
  80970f:	49 03 fe             	add    %r14,%rdi
  809712:	49 8d 34 16          	lea    (%r14,%rdx,1),%rsi
  809716:	48 89 bd 90 fd ff ff 	mov    %rdi,-0x270(%rbp)
  80971d:	4b 8d 3c 2e          	lea    (%r14,%r13,1),%rdi
  809721:	4d 03 eb             	add    %r11,%r13
  809724:	4c 89 ad f8 fc ff ff 	mov    %r13,-0x308(%rbp)
  80972b:	4e 8d 2c c5 f8 ff ff 	lea    -0x8(,%r8,8),%r13
  809732:	ff 
  809733:	4d 0f af d5          	imul   %r13,%r10
  809737:	49 2b f2             	sub    %r10,%rsi
  80973a:	4f 8d 1c 16          	lea    (%r14,%r10,1),%r11
  80973e:	4c 2b da             	sub    %rdx,%r11
  809741:	49 2b f6             	sub    %r14,%rsi
  809744:	4d 2b de             	sub    %r14,%r11
  809747:	4c 3b d9             	cmp    %rcx,%r11
  80974a:	48 89 bd 58 fd ff ff 	mov    %rdi,-0x2a8(%rbp)
  809751:	89 c7                	mov    %eax,%edi
  809753:	40 0f 9f c7          	setg   %dil
  809757:	48 3b f1             	cmp    %rcx,%rsi
  80975a:	4c 89 d1             	mov    %r10,%rcx
  80975d:	0f 9f c0             	setg   %al
  809760:	49 2b cc             	sub    %r12,%rcx
  809763:	49 03 c9             	add    %r9,%rcx
  809766:	4d 03 ca             	add    %r10,%r9
  809769:	4c 8b 95 c0 fd ff ff 	mov    -0x240(%rbp),%r10
  809770:	4d 2b cc             	sub    %r12,%r9
  809773:	4d 0f af d0          	imul   %r8,%r10
  809777:	4d 03 ce             	add    %r14,%r9
  80977a:	49 03 ce             	add    %r14,%rcx
  80977d:	4c 89 8d 08 f8 ff ff 	mov    %r9,-0x7f8(%rbp)
  809784:	0b f8                	or     %eax,%edi
  809786:	4c 8b 8d 48 f4 ff ff 	mov    -0xbb8(%rbp),%r9
  80978d:	49 f7 d9             	neg    %r9
  809790:	4d 03 ca             	add    %r10,%r9
  809793:	48 89 8d d0 f7 ff ff 	mov    %rcx,-0x830(%rbp)
  80979a:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  8097a1:	48 8b 8d 08 fd ff ff 	mov    -0x2f8(%rbp),%rcx
  8097a8:	48 0f af c1          	imul   %rcx,%rax
  8097ac:	4c 8d a5 b8 f8 ff ff 	lea    -0x748(%rbp),%r12
  8097b3:	4d 8b 1c 24          	mov    (%r12),%r11
  8097b7:	4c 8b b5 f8 fe ff ff 	mov    -0x108(%rbp),%r14
  8097be:	4d 03 d9             	add    %r9,%r11
  8097c1:	4c 8b 8d b8 fd ff ff 	mov    -0x248(%rbp),%r9
  8097c8:	4c 03 d8             	add    %rax,%r11
  8097cb:	4d 0f af c8          	imul   %r8,%r9
  8097cf:	4c 0f af f1          	imul   %rcx,%r14
  8097d3:	4d 89 1c 24          	mov    %r11,(%r12)
  8097d7:	4c 8b 9d e0 f9 ff ff 	mov    -0x620(%rbp),%r11
  8097de:	48 8b 85 50 f4 ff ff 	mov    -0xbb0(%rbp),%rax
  8097e5:	4d 03 d9             	add    %r9,%r11
  8097e8:	49 2b c6             	sub    %r14,%rax
  8097eb:	49 f7 d9             	neg    %r9
  8097ee:	48 8b b5 d8 fd ff ff 	mov    -0x228(%rbp),%rsi
  8097f5:	4c 2b d8             	sub    %rax,%r11
  8097f8:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
  8097ff:	49 0f af f0          	imul   %r8,%rsi
  809803:	48 0f af c1          	imul   %rcx,%rax
  809807:	4c 8b ad 68 f4 ff ff 	mov    -0xb98(%rbp),%r13
  80980e:	4c 89 bd 30 fb ff ff 	mov    %r15,-0x4d0(%rbp)
  809815:	4d 89 ef             	mov    %r13,%r15
  809818:	89 bd b8 f7 ff ff    	mov    %edi,-0x848(%rbp)
  80981e:	4c 2b f8             	sub    %rax,%r15
  809821:	48 8b 95 30 f4 ff ff 	mov    -0xbd0(%rbp),%rdx
  809828:	49 f7 dd             	neg    %r13
  80982b:	4c 8d b5 c8 f8 ff ff 	lea    -0x738(%rbp),%r14
  809832:	49 8b 3e             	mov    (%r14),%rdi
  809835:	48 2b d6             	sub    %rsi,%rdx
  809838:	48 f7 df             	neg    %rdi
  80983b:	4c 03 fa             	add    %rdx,%r15
  80983e:	48 03 fa             	add    %rdx,%rdi
  809841:	49 f7 df             	neg    %r15
  809844:	48 f7 df             	neg    %rdi
  809847:	4c 03 ee             	add    %rsi,%r13
  80984a:	4c 8b a5 58 f6 ff ff 	mov    -0x9a8(%rbp),%r12
  809851:	49 03 fc             	add    %r12,%rdi
  809854:	4d 03 fc             	add    %r12,%r15
  809857:	48 03 f8             	add    %rax,%rdi
  80985a:	4c 01 bd b0 f8 ff ff 	add    %r15,-0x750(%rbp)
  809861:	49 89 3e             	mov    %rdi,(%r14)
  809864:	4c 8b bd b0 fd ff ff 	mov    -0x250(%rbp),%r15
  80986b:	48 8b bd f0 fe ff ff 	mov    -0x110(%rbp),%rdi
  809872:	4d 0f af f8          	imul   %r8,%r15
  809876:	48 0f af f9          	imul   %rcx,%rdi
  80987a:	4c 89 9d e0 f9 ff ff 	mov    %r11,-0x620(%rbp)
  809881:	4c 8b 9d a8 f8 ff ff 	mov    -0x758(%rbp),%r11
  809888:	4c 8b b5 e8 fe ff ff 	mov    -0x118(%rbp),%r14
  80988f:	4d 03 dd             	add    %r13,%r11
  809892:	4c 8b ad a8 fd ff ff 	mov    -0x258(%rbp),%r13
  809899:	4c 03 d8             	add    %rax,%r11
  80989c:	4d 0f af e8          	imul   %r8,%r13
  8098a0:	4c 0f af f1          	imul   %rcx,%r14
  8098a4:	48 89 95 30 f4 ff ff 	mov    %rdx,-0xbd0(%rbp)
  8098ab:	48 8d 85 00 fa ff ff 	lea    -0x600(%rbp),%rax
  8098b2:	4c 8b 20             	mov    (%rax),%r12
  8098b5:	48 8b 95 58 f4 ff ff 	mov    -0xba8(%rbp),%rdx
  8098bc:	4d 03 e7             	add    %r15,%r12
  8098bf:	48 2b d7             	sub    %rdi,%rdx
  8098c2:	49 f7 df             	neg    %r15
  8098c5:	8b bd b0 f2 ff ff    	mov    -0xd50(%rbp),%edi
  8098cb:	4c 2b e2             	sub    %rdx,%r12
  8098ce:	4c 89 20             	mov    %r12,(%rax)
  8098d1:	4c 8b a5 e8 fd ff ff 	mov    -0x218(%rbp),%r12
  8098d8:	4c 89 9d a8 f8 ff ff 	mov    %r11,-0x758(%rbp)
  8098df:	8d 57 01             	lea    0x1(%rdi),%edx
  8098e2:	4d 0f af e0          	imul   %r8,%r12
  8098e6:	48 8d bd f8 f9 ff ff 	lea    -0x608(%rbp),%rdi
  8098ed:	4c 8b 1f             	mov    (%rdi),%r11
  8098f0:	48 8b 85 60 f4 ff ff 	mov    -0xba0(%rbp),%rax
  8098f7:	4d 03 dd             	add    %r13,%r11
  8098fa:	49 2b c6             	sub    %r14,%rax
  8098fd:	49 f7 dd             	neg    %r13
  809900:	4c 2b d8             	sub    %rax,%r11
  809903:	4c 89 1f             	mov    %r11,(%rdi)
  809906:	4c 8b 9d 28 ff ff ff 	mov    -0xd8(%rbp),%r11
  80990d:	4c 0f af d9          	imul   %rcx,%r11
  809911:	48 63 d2             	movslq %edx,%rdx
  809914:	48 89 95 c8 f9 ff ff 	mov    %rdx,-0x638(%rbp)
  80991b:	48 8b 95 20 ff ff ff 	mov    -0xe0(%rbp),%rdx
  809922:	48 0f af d1          	imul   %rcx,%rdx
  809926:	48 8b 85 78 f4 ff ff 	mov    -0xb88(%rbp),%rax
  80992d:	48 f7 d8             	neg    %rax
  809930:	49 03 c4             	add    %r12,%rax
  809933:	48 8b bd c0 f8 ff ff 	mov    -0x740(%rbp),%rdi
  80993a:	48 03 f8             	add    %rax,%rdi
  80993d:	49 03 fb             	add    %r11,%rdi
  809940:	4c 8b 9d e0 fd ff ff 	mov    -0x220(%rbp),%r11
  809947:	4d 0f af d8          	imul   %r8,%r11
  80994b:	4c 8b b5 80 f4 ff ff 	mov    -0xb80(%rbp),%r14
  809952:	4c 2b f2             	sub    %rdx,%r14
  809955:	48 8b 95 10 ff ff ff 	mov    -0xf0(%rbp),%rdx
  80995c:	48 0f af d1          	imul   %rcx,%rdx
  809960:	48 89 bd c0 f8 ff ff 	mov    %rdi,-0x740(%rbp)
  809967:	48 8b bd d0 fd ff ff 	mov    -0x230(%rbp),%rdi
  80996e:	49 0f af f8          	imul   %r8,%rdi
  809972:	48 8b 85 d0 f9 ff ff 	mov    -0x630(%rbp),%rax
  809979:	49 03 c3             	add    %r11,%rax
  80997c:	49 f7 db             	neg    %r11
  80997f:	4c 89 a5 a8 f4 ff ff 	mov    %r12,-0xb58(%rbp)
  809986:	49 2b c6             	sub    %r14,%rax
  809989:	4c 8b a5 88 f4 ff ff 	mov    -0xb78(%rbp),%r12
  809990:	4c 8b b5 08 ff ff ff 	mov    -0xf8(%rbp),%r14
  809997:	4c 2b e2             	sub    %rdx,%r12
  80999a:	48 8b 95 c8 fd ff ff 	mov    -0x238(%rbp),%rdx
  8099a1:	49 0f af d0          	imul   %r8,%rdx
  8099a5:	4c 0f af f1          	imul   %rcx,%r14
  8099a9:	48 89 85 d0 f9 ff ff 	mov    %rax,-0x630(%rbp)
  8099b0:	48 8b 85 d8 f9 ff ff 	mov    -0x628(%rbp),%rax
  8099b7:	48 03 c7             	add    %rdi,%rax
  8099ba:	48 f7 df             	neg    %rdi
  8099bd:	49 2b c4             	sub    %r12,%rax
  8099c0:	48 89 85 d8 f9 ff ff 	mov    %rax,-0x628(%rbp)
  8099c7:	4c 8b a5 e8 f9 ff ff 	mov    -0x618(%rbp),%r12
  8099ce:	48 8b 85 90 f4 ff ff 	mov    -0xb70(%rbp),%rax
  8099d5:	4c 03 e2             	add    %rdx,%r12
  8099d8:	49 2b c6             	sub    %r14,%rax
  8099db:	48 f7 da             	neg    %rdx
  8099de:	4c 2b e0             	sub    %rax,%r12
  8099e1:	48 8b 85 f8 f6 ff ff 	mov    -0x908(%rbp),%rax
  8099e8:	48 2b 85 c0 f6 ff ff 	sub    -0x940(%rbp),%rax
  8099ef:	4c 89 a5 e8 f9 ff ff 	mov    %r12,-0x618(%rbp)
  8099f6:	48 89 85 e8 fc ff ff 	mov    %rax,-0x318(%rbp)
  8099fd:	4c 8b a5 00 fe ff ff 	mov    -0x200(%rbp),%r12
  809a04:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
  809a0b:	4d 0f af e0          	imul   %r8,%r12
  809a0f:	48 0f af c1          	imul   %rcx,%rax
  809a13:	4c 8b b5 f0 f9 ff ff 	mov    -0x610(%rbp),%r14
  809a1a:	4c 89 a5 b0 f3 ff ff 	mov    %r12,-0xc50(%rbp)
  809a21:	4d 03 f4             	add    %r12,%r14
  809a24:	4c 8b a5 98 f4 ff ff 	mov    -0xb68(%rbp),%r12
  809a2b:	4c 2b e0             	sub    %rax,%r12
  809a2e:	4d 2b f4             	sub    %r12,%r14
  809a31:	4c 89 b5 f0 f9 ff ff 	mov    %r14,-0x610(%rbp)
  809a38:	4c 8b b5 f8 fd ff ff 	mov    -0x208(%rbp),%r14
  809a3f:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  809a46:	4d 0f af f0          	imul   %r8,%r14
  809a4a:	48 0f af c1          	imul   %rcx,%rax
  809a4e:	4c 8b a5 08 fa ff ff 	mov    -0x5f8(%rbp),%r12
  809a55:	4c 89 b5 a8 f3 ff ff 	mov    %r14,-0xc58(%rbp)
  809a5c:	4d 03 e6             	add    %r14,%r12
  809a5f:	4c 8b b5 a0 f4 ff ff 	mov    -0xb60(%rbp),%r14
  809a66:	4c 2b f0             	sub    %rax,%r14
  809a69:	4d 2b e6             	sub    %r14,%r12
  809a6c:	4c 8b b5 c8 f6 ff ff 	mov    -0x938(%rbp),%r14
  809a73:	4c 89 a5 08 fa ff ff 	mov    %r12,-0x5f8(%rbp)
  809a7a:	4c 8b a5 f0 fd ff ff 	mov    -0x210(%rbp),%r12
  809a81:	4d 0f af e0          	imul   %r8,%r12
  809a85:	4c 0f af b5 d0 f6 ff 	imul   -0x930(%rbp),%r14
  809a8c:	ff 
  809a8d:	4c 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%r8
  809a94:	4c 0f af c1          	imul   %rcx,%r8
  809a98:	48 8b 85 70 f4 ff ff 	mov    -0xb90(%rbp),%rax
  809a9f:	48 f7 d8             	neg    %rax
  809aa2:	49 03 c4             	add    %r12,%rax
  809aa5:	4d 03 e6             	add    %r14,%r12
  809aa8:	4d 03 f0             	add    %r8,%r14
  809aab:	49 03 c6             	add    %r14,%rax
  809aae:	4c 8d b5 d0 f8 ff ff 	lea    -0x730(%rbp),%r14
  809ab5:	49 8b 0e             	mov    (%r14),%rcx
  809ab8:	48 03 c8             	add    %rax,%rcx
  809abb:	48 8b 85 a8 f2 ff ff 	mov    -0xd58(%rbp),%rax
  809ac2:	48 03 8d a0 f9 ff ff 	add    -0x660(%rbp),%rcx
  809ac9:	4c 8b 85 a0 f8 ff ff 	mov    -0x760(%rbp),%r8
  809ad0:	49 89 0e             	mov    %rcx,(%r14)
  809ad3:	48 c1 e0 03          	shl    $0x3,%rax
  809ad7:	4c 2b c0             	sub    %rax,%r8
  809ada:	48 8b 8d 28 f6 ff ff 	mov    -0x9d8(%rbp),%rcx
  809ae1:	4c 03 ad b8 f3 ff ff 	add    -0xc48(%rbp),%r13
  809ae8:	4c 89 a5 18 f4 ff ff 	mov    %r12,-0xbe8(%rbp)
  809aef:	4c 03 bd c0 f3 ff ff 	add    -0xc40(%rbp),%r15
  809af6:	4e 8d 24 01          	lea    (%rcx,%r8,1),%r12
  809afa:	4d 2b e5             	sub    %r13,%r12
  809afd:	4c 8b ad 30 f6 ff ff 	mov    -0x9d0(%rbp),%r13
  809b04:	4c 03 8d c8 f3 ff ff 	add    -0xc38(%rbp),%r9
  809b0b:	48 03 95 d0 f3 ff ff 	add    -0xc30(%rbp),%rdx
  809b12:	48 03 bd d8 f3 ff ff 	add    -0xc28(%rbp),%rdi
  809b19:	4f 8d 74 05 00       	lea    0x0(%r13,%r8,1),%r14
  809b1e:	4d 2b f7             	sub    %r15,%r14
  809b21:	4c 8b bd 38 f6 ff ff 	mov    -0x9c8(%rbp),%r15
  809b28:	4c 89 a5 88 f3 ff ff 	mov    %r12,-0xc78(%rbp)
  809b2f:	4c 89 b5 80 f3 ff ff 	mov    %r14,-0xc80(%rbp)
  809b36:	4c 8b b5 e0 f6 ff ff 	mov    -0x920(%rbp),%r14
  809b3d:	4b 8d 0c 07          	lea    (%r15,%r8,1),%rcx
  809b41:	49 2b c9             	sub    %r9,%rcx
  809b44:	4c 8b 8d 10 f4 ff ff 	mov    -0xbf0(%rbp),%r9
  809b4b:	48 89 8d 78 f3 ff ff 	mov    %rcx,-0xc88(%rbp)
  809b52:	4c 03 9d e0 f3 ff ff 	add    -0xc20(%rbp),%r11
  809b59:	4c 89 85 a0 f8 ff ff 	mov    %r8,-0x760(%rbp)
  809b60:	4b 8d 0c 01          	lea    (%r9,%r8,1),%rcx
  809b64:	48 03 8d 78 f9 ff ff 	add    -0x688(%rbp),%rcx
  809b6b:	49 03 ca             	add    %r10,%rcx
  809b6e:	4c 8b 95 48 f6 ff ff 	mov    -0x9b8(%rbp),%r10
  809b75:	48 89 8d 80 f8 ff ff 	mov    %rcx,-0x780(%rbp)
  809b7c:	4b 8d 0c 02          	lea    (%r10,%r8,1),%rcx
  809b80:	4c 8b 95 00 f4 ff ff 	mov    -0xc00(%rbp),%r10
  809b87:	48 2b ca             	sub    %rdx,%rcx
  809b8a:	48 8b 95 50 f6 ff ff 	mov    -0x9b0(%rbp),%rdx
  809b91:	48 89 8d 70 f3 ff ff 	mov    %rcx,-0xc90(%rbp)
  809b98:	48 8b 8d 28 f8 ff ff 	mov    -0x7d8(%rbp),%rcx
  809b9f:	4e 8d 0c 02          	lea    (%rdx,%r8,1),%r9
  809ba3:	48 8b 95 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdx
  809baa:	4c 2b cf             	sub    %rdi,%r9
  809bad:	48 8b bd 20 f4 ff ff 	mov    -0xbe0(%rbp),%rdi
  809bb4:	4c 89 8d 68 f3 ff ff 	mov    %r9,-0xc98(%rbp)
  809bbb:	4e 8d 24 07          	lea    (%rdi,%r8,1),%r12
  809bbf:	48 8b bd 78 fa ff ff 	mov    -0x588(%rbp),%rdi
  809bc6:	4c 03 a5 38 f9 ff ff 	add    -0x6c8(%rbp),%r12
  809bcd:	4c 03 e6             	add    %rsi,%r12
  809bd0:	48 8b b5 60 f6 ff ff 	mov    -0x9a0(%rbp),%rsi
  809bd7:	4c 89 a5 88 f8 ff ff 	mov    %r12,-0x778(%rbp)
  809bde:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  809be5:	4e 8d 2c 06          	lea    (%rsi,%r8,1),%r13
  809be9:	48 8b b5 30 f8 ff ff 	mov    -0x7d0(%rbp),%rsi
  809bf0:	4d 2b eb             	sub    %r11,%r13
  809bf3:	4f 8d 1c 02          	lea    (%r10,%r8,1),%r11
  809bf7:	4c 03 9d 98 f9 ff ff 	add    -0x668(%rbp),%r11
  809bfe:	4d 03 c6             	add    %r14,%r8
  809c01:	4c 03 9d a8 f4 ff ff 	add    -0xb58(%rbp),%r11
  809c08:	4c 2b 85 90 f3 ff ff 	sub    -0xc70(%rbp),%r8
  809c0f:	4c 89 ad 60 f3 ff ff 	mov    %r13,-0xca0(%rbp)
  809c16:	4c 89 9d 90 f8 ff ff 	mov    %r11,-0x770(%rbp)
  809c1d:	4c 89 85 98 f8 ff ff 	mov    %r8,-0x768(%rbp)
  809c24:	48 89 b5 30 f8 ff ff 	mov    %rsi,-0x7d0(%rbp)
  809c2b:	4c 8b 9d 28 f9 ff ff 	mov    -0x6d8(%rbp),%r11
  809c32:	4c 8d 8d e0 f3 ff ff 	lea    -0xc20(%rbp),%r9
  809c39:	49 8b 31             	mov    (%r9),%rsi
  809c3c:	4c 2b d8             	sub    %rax,%r11
  809c3f:	4c 8d b5 d8 f3 ff ff 	lea    -0xc28(%rbp),%r14
  809c46:	49 8b 06             	mov    (%r14),%rax
  809c49:	48 2b b5 e0 f2 ff ff 	sub    -0xd20(%rbp),%rsi
  809c50:	48 2b 85 d8 f2 ff ff 	sub    -0xd28(%rbp),%rax
  809c57:	48 89 bd 78 fa ff ff 	mov    %rdi,-0x588(%rbp)
  809c5e:	49 89 31             	mov    %rsi,(%r9)
  809c61:	49 89 06             	mov    %rax,(%r14)
  809c64:	48 8b b5 98 f3 ff ff 	mov    -0xc68(%rbp),%rsi
  809c6b:	48 8b bd 18 f4 ff ff 	mov    -0xbe8(%rbp),%rdi
  809c72:	48 8b 85 a8 f3 ff ff 	mov    -0xc58(%rbp),%rax
  809c79:	48 03 fe             	add    %rsi,%rdi
  809c7c:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  809c83:	48 f7 d8             	neg    %rax
  809c86:	4c 8d bd e8 f3 ff ff 	lea    -0xc18(%rbp),%r15
  809c8d:	4d 8b 27             	mov    (%r15),%r12
  809c90:	49 03 c4             	add    %r12,%rax
  809c93:	48 89 95 38 f8 ff ff 	mov    %rdx,-0x7c8(%rbp)
  809c9a:	4c 89 c2             	mov    %r8,%rdx
  809c9d:	48 03 d7             	add    %rdi,%rdx
  809ca0:	4c 2b a5 e8 f2 ff ff 	sub    -0xd18(%rbp),%r12
  809ca7:	48 8b bd a0 f9 ff ff 	mov    -0x660(%rbp),%rdi
  809cae:	48 03 d7             	add    %rdi,%rdx
  809cb1:	48 89 95 98 f8 ff ff 	mov    %rdx,-0x768(%rbp)
  809cb8:	4d 89 27             	mov    %r12,(%r15)
  809cbb:	48 8b 95 b0 f3 ff ff 	mov    -0xc50(%rbp),%rdx
  809cc2:	4c 8b a5 10 f4 ff ff 	mov    -0xbf0(%rbp),%r12
  809cc9:	48 f7 da             	neg    %rdx
  809ccc:	4c 8d 85 f0 f3 ff ff 	lea    -0xc10(%rbp),%r8
  809cd3:	4d 8b 28             	mov    (%r8),%r13
  809cd6:	4d 03 e3             	add    %r11,%r12
  809cd9:	4c 8b b5 78 f9 ff ff 	mov    -0x688(%rbp),%r14
  809ce0:	49 03 d5             	add    %r13,%rdx
  809ce3:	4c 2b ad f0 f2 ff ff 	sub    -0xd10(%rbp),%r13
  809cea:	4d 03 f4             	add    %r12,%r14
  809ced:	4c 8b a5 08 f4 ff ff 	mov    -0xbf8(%rbp),%r12
  809cf4:	4c 8b bd 40 f4 ff ff 	mov    -0xbc0(%rbp),%r15
  809cfb:	4d 03 e7             	add    %r15,%r12
  809cfe:	4c 03 b5 f8 f2 ff ff 	add    -0xd08(%rbp),%r14
  809d05:	49 f7 dc             	neg    %r12
  809d08:	4d 89 28             	mov    %r13,(%r8)
  809d0b:	4c 8b ad a8 f9 ff ff 	mov    -0x658(%rbp),%r13
  809d12:	4d 03 eb             	add    %r11,%r13
  809d15:	4c 89 b5 78 f9 ff ff 	mov    %r14,-0x688(%rbp)
  809d1c:	4c 8b b5 b8 f9 ff ff 	mov    -0x648(%rbp),%r14
  809d23:	4d 03 e6             	add    %r14,%r12
  809d26:	4c 03 ad 00 f3 ff ff 	add    -0xd00(%rbp),%r13
  809d2d:	49 f7 de             	neg    %r14
  809d30:	4d 03 f5             	add    %r13,%r14
  809d33:	4d 2b ec             	sub    %r12,%r13
  809d36:	4c 8b a5 28 f4 ff ff 	mov    -0xbd8(%rbp),%r12
  809d3d:	4d 03 f7             	add    %r15,%r14
  809d40:	4d 03 e7             	add    %r15,%r12
  809d43:	4c 03 ef             	add    %rdi,%r13
  809d46:	4d 89 d7             	mov    %r10,%r15
  809d49:	49 03 f4             	add    %r12,%rsi
  809d4c:	4d 03 fb             	add    %r11,%r15
  809d4f:	4c 03 f7             	add    %rdi,%r14
  809d52:	4c 89 ad a8 f9 ff ff 	mov    %r13,-0x658(%rbp)
  809d59:	4c 8d 95 98 f9 ff ff 	lea    -0x668(%rbp),%r10
  809d60:	4d 8b 22             	mov    (%r10),%r12
  809d63:	4c 8b ad 20 f4 ff ff 	mov    -0xbe0(%rbp),%r13
  809d6a:	4d 03 e7             	add    %r15,%r12
  809d6d:	4d 03 eb             	add    %r11,%r13
  809d70:	4c 89 b5 b8 f9 ff ff 	mov    %r14,-0x648(%rbp)
  809d77:	4c 8b b5 38 f9 ff ff 	mov    -0x6c8(%rbp),%r14
  809d7e:	4c 03 a5 08 f3 ff ff 	add    -0xcf8(%rbp),%r12
  809d85:	4d 03 f5             	add    %r13,%r14
  809d88:	4c 03 b5 f8 f3 ff ff 	add    -0xc08(%rbp),%r14
  809d8f:	4d 89 22             	mov    %r12,(%r10)
  809d92:	4c 8b bd e8 f6 ff ff 	mov    -0x918(%rbp),%r15
  809d99:	4c 8b a5 a0 f8 ff ff 	mov    -0x760(%rbp),%r12
  809da0:	4c 89 b5 38 f9 ff ff 	mov    %r14,-0x6c8(%rbp)
  809da7:	4c 8b b5 f0 f6 ff ff 	mov    -0x910(%rbp),%r14
  809dae:	4c 8b 95 b8 f3 ff ff 	mov    -0xc48(%rbp),%r10
  809db5:	4f 8d 2c 3c          	lea    (%r12,%r15,1),%r13
  809db9:	4c 2b e8             	sub    %rax,%r13
  809dbc:	4c 2b 95 b8 f2 ff ff 	sub    -0xd48(%rbp),%r10
  809dc3:	4b 8d 04 34          	lea    (%r12,%r14,1),%rax
  809dc7:	48 2b c2             	sub    %rdx,%rax
  809dca:	48 8b 95 28 f6 ff ff 	mov    -0x9d8(%rbp),%rdx
  809dd1:	48 89 85 50 f3 ff ff 	mov    %rax,-0xcb0(%rbp)
  809dd8:	4c 8b 8d c0 f3 ff ff 	mov    -0xc40(%rbp),%r9
  809ddf:	4c 2b 8d c0 f2 ff ff 	sub    -0xd40(%rbp),%r9
  809de6:	4a 8d 04 1a          	lea    (%rdx,%r11,1),%rax
  809dea:	49 2b c2             	sub    %r10,%rax
  809ded:	4c 8b 95 30 f6 ff ff 	mov    -0x9d0(%rbp),%r10
  809df4:	48 89 85 48 f3 ff ff 	mov    %rax,-0xcb8(%rbp)
  809dfb:	48 89 8d 28 f8 ff ff 	mov    %rcx,-0x7d8(%rbp)
  809e02:	48 8b 8d c8 f3 ff ff 	mov    -0xc38(%rbp),%rcx
  809e09:	4b 8d 04 1a          	lea    (%r10,%r11,1),%rax
  809e0d:	49 2b c1             	sub    %r9,%rax
  809e10:	4c 8b 8d 38 f6 ff ff 	mov    -0x9c8(%rbp),%r9
  809e17:	48 2b 8d c8 f2 ff ff 	sub    -0xd38(%rbp),%rcx
  809e1e:	48 89 85 40 f3 ff ff 	mov    %rax,-0xcc0(%rbp)
  809e25:	48 8b 95 48 f6 ff ff 	mov    -0x9b8(%rbp),%rdx
  809e2c:	4b 8d 04 19          	lea    (%r9,%r11,1),%rax
  809e30:	48 2b c1             	sub    %rcx,%rax
  809e33:	48 8b 8d e0 f6 ff ff 	mov    -0x920(%rbp),%rcx
  809e3a:	48 89 85 38 f3 ff ff 	mov    %rax,-0xcc8(%rbp)
  809e41:	4c 8b 85 d0 f3 ff ff 	mov    -0xc30(%rbp),%r8
  809e48:	4c 2b 85 d0 f2 ff ff 	sub    -0xd30(%rbp),%r8
  809e4f:	4a 8d 04 19          	lea    (%rcx,%r11,1),%rax
  809e53:	48 2b 85 90 f3 ff ff 	sub    -0xc70(%rbp),%rax
  809e5a:	48 03 c6             	add    %rsi,%rax
  809e5d:	4a 8d 34 1a          	lea    (%rdx,%r11,1),%rsi
  809e61:	49 2b f0             	sub    %r8,%rsi
  809e64:	48 03 f8             	add    %rax,%rdi
  809e67:	4c 8b 85 50 f6 ff ff 	mov    -0x9b0(%rbp),%r8
  809e6e:	48 8b 95 60 f6 ff ff 	mov    -0x9a0(%rbp),%rdx
  809e75:	4c 89 ad 58 f3 ff ff 	mov    %r13,-0xca8(%rbp)
  809e7c:	4c 8b ad 58 f6 ff ff 	mov    -0x9a8(%rbp),%r13
  809e83:	4b 8d 04 18          	lea    (%r8,%r11,1),%rax
  809e87:	4c 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%r8
  809e8e:	4d 03 e5             	add    %r13,%r12
  809e91:	45 89 c1             	mov    %r8d,%r9d
  809e94:	4a 8d 0c 1a          	lea    (%rdx,%r11,1),%rcx
  809e98:	4c 2b a5 30 f4 ff ff 	sub    -0xbd0(%rbp),%r12
  809e9f:	41 83 e1 fc          	and    $0xfffffffc,%r9d
  809ea3:	48 8d 95 48 f9 ff ff 	lea    -0x6b8(%rbp),%rdx
  809eaa:	4c 8b 12             	mov    (%rdx),%r10
  809ead:	48 89 bd a0 f9 ff ff 	mov    %rdi,-0x660(%rbp)
  809eb4:	4b 8d 3c 1e          	lea    (%r14,%r11,1),%rdi
  809eb8:	48 89 b5 30 f3 ff ff 	mov    %rsi,-0xcd0(%rbp)
  809ebf:	4b 8d 34 1f          	lea    (%r15,%r11,1),%rsi
  809ec3:	4d 03 dd             	add    %r13,%r11
  809ec6:	4d 63 c9             	movslq %r9d,%r9
  809ec9:	4c 89 8d 28 fb ff ff 	mov    %r9,-0x4d8(%rbp)
  809ed0:	4c 2b 9d 38 f4 ff ff 	sub    -0xbc8(%rbp),%r11
  809ed7:	4c 6b 8d e8 f5 ff ff 	imul   $0x34,-0xa18(%rbp),%r9
  809ede:	34 
  809edf:	c5 fd 10 0d 79 b4 0b 	vmovupd 0xbb479(%rip),%ymm1        # 8c5360 <var$630.126.450+0x4a0>
  809ee6:	00 
  809ee7:	4c 89 a5 a0 f8 ff ff 	mov    %r12,-0x760(%rbp)
  809eee:	4d 03 e2             	add    %r10,%r12
  809ef1:	4d 03 d3             	add    %r11,%r10
  809ef4:	4c 89 12             	mov    %r10,(%rdx)
  809ef7:	4c 8b 95 f0 f5 ff ff 	mov    -0xa10(%rbp),%r10
  809efe:	4c 89 a5 78 f8 ff ff 	mov    %r12,-0x788(%rbp)
  809f05:	4c 8b a5 f8 f6 ff ff 	mov    -0x908(%rbp),%r12
  809f0c:	4c 0f af 95 10 f8 ff 	imul   -0x7f0(%rbp),%r10
  809f13:	ff 
  809f14:	4d 89 e5             	mov    %r12,%r13
  809f17:	4d 03 d1             	add    %r9,%r10
  809f1a:	4c 2b ad 10 f6 ff ff 	sub    -0x9f0(%rbp),%r13
  809f21:	49 f7 da             	neg    %r10
  809f24:	48 2b 85 d8 f3 ff ff 	sub    -0xc28(%rbp),%rax
  809f2b:	48 2b 8d e0 f3 ff ff 	sub    -0xc20(%rbp),%rcx
  809f32:	4c 0f af ad 08 f6 ff 	imul   -0x9f8(%rbp),%r13
  809f39:	ff 
  809f3a:	4c 8b bd d8 f5 ff ff 	mov    -0xa28(%rbp),%r15
  809f41:	48 89 85 28 f3 ff ff 	mov    %rax,-0xcd8(%rbp)
  809f48:	48 89 8d 20 f3 ff ff 	mov    %rcx,-0xce0(%rbp)
  809f4f:	48 8b 85 78 f6 ff ff 	mov    -0x988(%rbp),%rax
  809f56:	48 8b 8d 80 f6 ff ff 	mov    -0x980(%rbp),%rcx
  809f5d:	4c 2b bd f8 f5 ff ff 	sub    -0xa08(%rbp),%r15
  809f64:	4c 8b b5 00 f6 ff ff 	mov    -0xa00(%rbp),%r14
  809f6b:	4a 8d 14 a0          	lea    (%rax,%r12,4),%rdx
  809f6f:	48 2b b5 e8 f3 ff ff 	sub    -0xc18(%rbp),%rsi
  809f76:	48 89 b5 18 f3 ff ff 	mov    %rsi,-0xce8(%rbp)
  809f7d:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
  809f84:	00 
  809f85:	44 89 85 78 fd ff ff 	mov    %r8d,-0x288(%rbp)
  809f8c:	4b 8d 04 be          	lea    (%r14,%r15,4),%rax
  809f90:	48 89 85 18 f8 ff ff 	mov    %rax,-0x7e8(%rbp)
  809f97:	48 f7 de             	neg    %rsi
  809f9a:	48 8b 85 70 f6 ff ff 	mov    -0x990(%rbp),%rax
  809fa1:	41 83 e0 fe          	and    $0xfffffffe,%r8d
  809fa5:	48 89 95 60 fa ff ff 	mov    %rdx,-0x5a0(%rbp)
  809fac:	8b 95 a0 fd ff ff    	mov    -0x260(%rbp),%edx
  809fb2:	48 89 b5 70 fa ff ff 	mov    %rsi,-0x590(%rbp)
  809fb9:	48 8b b5 00 fd ff ff 	mov    -0x300(%rbp),%rsi
  809fc0:	4d 63 c0             	movslq %r8d,%r8
  809fc3:	2b 95 98 fd ff ff    	sub    -0x268(%rbp),%edx
  809fc9:	4c 89 85 e0 fe ff ff 	mov    %r8,-0x120(%rbp)
  809fd0:	4d 89 e0             	mov    %r12,%r8
  809fd3:	48 2b bd f0 f3 ff ff 	sub    -0xc10(%rbp),%rdi
  809fda:	ff c2                	inc    %edx
  809fdc:	4c 2b 85 20 f6 ff ff 	sub    -0x9e0(%rbp),%r8
  809fe3:	4c 8d 0c f5 00 00 00 	lea    0x0(,%rsi,8),%r9
  809fea:	00 
  809feb:	89 95 b0 f4 ff ff    	mov    %edx,-0xb50(%rbp)
  809ff1:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  809ff8:	00 
  809ff9:	8b 85 20 fa ff ff    	mov    -0x5e0(%rbp),%eax
  809fff:	48 f7 da             	neg    %rdx
  80a002:	48 8b 8d 68 f6 ff ff 	mov    -0x998(%rbp),%rcx
  80a009:	48 89 bd 10 f3 ff ff 	mov    %rdi,-0xcf0(%rbp)
  80a010:	4c 89 c7             	mov    %r8,%rdi
  80a013:	2b 85 18 fa ff ff    	sub    -0x5e8(%rbp),%eax
  80a019:	4c 03 95 18 f6 ff ff 	add    -0x9e8(%rbp),%r10
  80a020:	ff c0                	inc    %eax
  80a022:	4c 89 9d 28 f9 ff ff 	mov    %r11,-0x6d8(%rbp)
  80a029:	4d 03 ea             	add    %r10,%r13
  80a02c:	4c 8b 9d 50 fe ff ff 	mov    -0x1b0(%rbp),%r11
  80a033:	4e 8d 24 a1          	lea    (%rcx,%r12,4),%r12
  80a037:	48 c1 e7 05          	shl    $0x5,%rdi
  80a03b:	89 c1                	mov    %eax,%ecx
  80a03d:	49 c1 e0 0b          	shl    $0xb,%r8
  80a041:	4c 2b 8d a0 f3 ff ff 	sub    -0xc60(%rbp),%r9
  80a048:	4c 2b c7             	sub    %rdi,%r8
  80a04b:	44 89 9d 70 fd ff ff 	mov    %r11d,-0x290(%rbp)
  80a052:	41 83 e3 fc          	and    $0xfffffffc,%r11d
  80a056:	4c 89 ad 20 f8 ff ff 	mov    %r13,-0x7e0(%rbp)
  80a05d:	48 8d b5 78 f7 ff ff 	lea    -0x888(%rbp),%rsi
  80a064:	48 8b 3e             	mov    (%rsi),%rdi
  80a067:	4c 8d b5 98 f7 ff ff 	lea    -0x868(%rbp),%r14
  80a06e:	4d 8b 2e             	mov    (%r14),%r13
  80a071:	49 03 f9             	add    %r9,%rdi
  80a074:	4c 8d bd a0 f7 ff ff 	lea    -0x860(%rbp),%r15
  80a07b:	4d 8b 17             	mov    (%r15),%r10
  80a07e:	4d 03 e9             	add    %r9,%r13
  80a081:	4d 03 d1             	add    %r9,%r10
  80a084:	4d 63 db             	movslq %r11d,%r11
  80a087:	4c 89 9d 20 fb ff ff 	mov    %r11,-0x4e0(%rbp)
  80a08e:	4c 89 85 60 f8 ff ff 	mov    %r8,-0x7a0(%rbp)
  80a095:	4c 8b 9d 48 fb ff ff 	mov    -0x4b8(%rbp),%r11
  80a09c:	49 2b fb             	sub    %r11,%rdi
  80a09f:	4c 8b 85 90 f7 ff ff 	mov    -0x870(%rbp),%r8
  80a0a6:	4d 2b eb             	sub    %r11,%r13
  80a0a9:	d1 e9                	shr    %ecx
  80a0ab:	4d 03 c1             	add    %r9,%r8
  80a0ae:	4d 2b d3             	sub    %r11,%r10
  80a0b1:	4c 89 a5 58 fa ff ff 	mov    %r12,-0x5a8(%rbp)
  80a0b8:	4c 8b a5 88 f6 ff ff 	mov    -0x978(%rbp),%r12
  80a0bf:	49 03 fc             	add    %r12,%rdi
  80a0c2:	89 8d c8 f7 ff ff    	mov    %ecx,-0x838(%rbp)
  80a0c8:	4d 03 ec             	add    %r12,%r13
  80a0cb:	48 89 95 68 fa ff ff 	mov    %rdx,-0x598(%rbp)
  80a0d2:	4d 03 c4             	add    %r12,%r8
  80a0d5:	48 89 8d 58 f7 ff ff 	mov    %rcx,-0x8a8(%rbp)
  80a0dc:	4d 03 d4             	add    %r12,%r10
  80a0df:	48 89 3e             	mov    %rdi,(%rsi)
  80a0e2:	4d 89 2e             	mov    %r13,(%r14)
  80a0e5:	c5 fd 57 c0          	vxorpd %ymm0,%ymm0,%ymm0
  80a0e9:	4c 89 85 90 f7 ff ff 	mov    %r8,-0x870(%rbp)
  80a0f0:	4d 89 17             	mov    %r10,(%r15)
  80a0f3:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  80a0fa:	48 8b 8d 28 f8 ff ff 	mov    -0x7d8(%rbp),%rcx
  80a101:	48 8b 95 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdx
  80a108:	4c 8b ad d8 f8 ff ff 	mov    -0x728(%rbp),%r13
  80a10f:	4c 8b b5 e0 f8 ff ff 	mov    -0x720(%rbp),%r14
  80a116:	89 85 a8 f7 ff ff    	mov    %eax,-0x858(%rbp)
  80a11c:	48 83 bd 00 ff ff ff 	cmpq   $0x8,-0x100(%rbp)
  80a123:	08 
  80a124:	0f 85 bb 02 00 00    	jne    80a3e5 <t3dmix_mod_mp_t3dmix4_tile_+0x2545>
  80a12a:	48 83 bd f8 fe ff ff 	cmpq   $0x8,-0x108(%rbp)
  80a131:	08 
  80a132:	0f 85 ad 02 00 00    	jne    80a3e5 <t3dmix_mod_mp_t3dmix4_tile_+0x2545>
  80a138:	48 83 bd f0 fe ff ff 	cmpq   $0x8,-0x110(%rbp)
  80a13f:	08 
  80a140:	0f 85 9f 02 00 00    	jne    80a3e5 <t3dmix_mod_mp_t3dmix4_tile_+0x2545>
  80a146:	48 83 bd e8 fe ff ff 	cmpq   $0x8,-0x118(%rbp)
  80a14d:	08 
  80a14e:	0f 85 91 02 00 00    	jne    80a3e5 <t3dmix_mod_mp_t3dmix4_tile_+0x2545>
  80a154:	48 83 bd 18 ff ff ff 	cmpq   $0x8,-0xe8(%rbp)
  80a15b:	08 
  80a15c:	0f 85 83 02 00 00    	jne    80a3e5 <t3dmix_mod_mp_t3dmix4_tile_+0x2545>
  80a162:	48 83 bd 38 ff ff ff 	cmpq   $0x8,-0xc8(%rbp)
  80a169:	08 
  80a16a:	0f 85 75 02 00 00    	jne    80a3e5 <t3dmix_mod_mp_t3dmix4_tile_+0x2545>
  80a170:	44 8b 85 20 fa ff ff 	mov    -0x5e0(%rbp),%r8d
  80a177:	45 33 db             	xor    %r11d,%r11d
  80a17a:	48 8b 85 48 f3 ff ff 	mov    -0xcb8(%rbp),%rax
  80a181:	33 ff                	xor    %edi,%edi
  80a183:	4c 8b 95 f0 fc ff ff 	mov    -0x310(%rbp),%r10
  80a18a:	4c 8b 8d 38 f3 ff ff 	mov    -0xcc8(%rbp),%r9
  80a191:	48 89 85 10 f9 ff ff 	mov    %rax,-0x6f0(%rbp)
  80a198:	44 3b 85 18 fa ff ff 	cmp    -0x5e8(%rbp),%r8d
  80a19f:	4c 8b 85 40 f3 ff ff 	mov    -0xcc0(%rbp),%r8
  80a1a6:	0f 8c 3c 06 00 00    	jl     80a7e8 <t3dmix_mod_mp_t3dmix4_tile_+0x2948>
  80a1ac:	48 8b 95 00 f9 ff ff 	mov    -0x700(%rbp),%rdx
  80a1b3:	48 8b 8d f0 f8 ff ff 	mov    -0x710(%rbp),%rcx
  80a1ba:	49 0f af d4          	imul   %r12,%rdx
  80a1be:	49 0f af cc          	imul   %r12,%rcx
  80a1c2:	c5 fd 10 0d 96 b1 0b 	vmovupd 0xbb196(%rip),%ymm1        # 8c5360 <var$630.126.450+0x4a0>
  80a1c9:	00 
  80a1ca:	c5 fb 10 05 46 d0 0b 	vmovsd 0xbd046(%rip),%xmm0        # 8c7218 <__STRLITPACK_199.115+0x88>
  80a1d1:	00 
  80a1d2:	48 8b b5 e8 f8 ff ff 	mov    -0x718(%rbp),%rsi
  80a1d9:	49 0f af f4          	imul   %r12,%rsi
  80a1dd:	48 8b 85 b8 f9 ff ff 	mov    -0x648(%rbp),%rax
  80a1e4:	4c 8b bd 38 f9 ff ff 	mov    -0x6c8(%rbp),%r15
  80a1eb:	48 03 b5 78 f9 ff ff 	add    -0x688(%rbp),%rsi
  80a1f2:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80a1f9:	48 03 c2             	add    %rdx,%rax
  80a1fc:	48 03 95 a0 f9 ff ff 	add    -0x660(%rbp),%rdx
  80a203:	4c 03 f9             	add    %rcx,%r15
  80a206:	48 03 8d 28 f9 ff ff 	add    -0x6d8(%rbp),%rcx
  80a20d:	48 89 95 98 fc ff ff 	mov    %rdx,-0x368(%rbp)
  80a214:	48 89 85 a0 fc ff ff 	mov    %rax,-0x360(%rbp)
  80a21b:	48 89 8d 88 fc ff ff 	mov    %rcx,-0x378(%rbp)
  80a222:	4c 89 bd 90 fc ff ff 	mov    %r15,-0x370(%rbp)
  80a229:	48 89 f8             	mov    %rdi,%rax
  80a22c:	48 8b 95 10 f9 ff ff 	mov    -0x6f0(%rbp),%rdx
  80a233:	8b 8d 38 fe ff ff    	mov    -0x1c8(%rbp),%ecx
  80a239:	3b 8d 98 fd ff ff    	cmp    -0x268(%rbp),%ecx
  80a23f:	0f 8c 5a 01 00 00    	jl     80a39f <t3dmix_mod_mp_t3dmix4_tile_+0x24ff>
  80a245:	48 83 7d e0 04       	cmpq   $0x4,-0x20(%rbp)
  80a24a:	0f 8c 59 2c 00 00    	jl     80cea9 <t3dmix_mod_mp_t3dmix4_tile_+0x5009>
  80a250:	4c 8b bd 98 fc ff ff 	mov    -0x368(%rbp),%r15
  80a257:	45 33 f6             	xor    %r14d,%r14d
  80a25a:	4c 8b ad 88 fc ff ff 	mov    -0x378(%rbp),%r13
  80a261:	4c 8b a5 90 fc ff ff 	mov    -0x370(%rbp),%r12
  80a268:	48 8b 8d b8 fc ff ff 	mov    -0x348(%rbp),%rcx
  80a26f:	4c 03 f8             	add    %rax,%r15
  80a272:	4c 89 bd b0 fc ff ff 	mov    %r15,-0x350(%rbp)
  80a279:	4c 03 ef             	add    %rdi,%r13
  80a27c:	4c 8b bd a0 fc ff ff 	mov    -0x360(%rbp),%r15
  80a283:	4c 03 e7             	add    %rdi,%r12
  80a286:	48 89 bd 78 fc ff ff 	mov    %rdi,-0x388(%rbp)
  80a28d:	4c 89 9d 80 fc ff ff 	mov    %r11,-0x380(%rbp)
  80a294:	4c 8b 9d b0 fc ff ff 	mov    -0x350(%rbp),%r11
  80a29b:	4c 03 f8             	add    %rax,%r15
  80a29e:	4c 89 bd a8 fc ff ff 	mov    %r15,-0x358(%rbp)
  80a2a5:	49 89 cf             	mov    %rcx,%r15
  80a2a8:	48 8b bd a8 fc ff ff 	mov    -0x358(%rbp),%rdi
  80a2af:	90                   	nop
  80a2b0:	c4 a1 75 59 14 f6    	vmulpd (%rsi,%r14,8),%ymm1,%ymm2
  80a2b6:	c4 81 7d 10 2c f4    	vmovupd (%r12,%r14,8),%ymm5
  80a2bc:	c4 01 7d 10 04 f3    	vmovupd (%r11,%r14,8),%ymm8
  80a2c2:	c4 81 6d 59 1c f1    	vmulpd (%r9,%r14,8),%ymm2,%ymm3
  80a2c8:	c4 81 55 58 7c f5 f8 	vaddpd -0x8(%r13,%r14,8),%ymm5,%ymm7
  80a2cf:	c4 21 3d 5c 54 f7 f8 	vsubpd -0x8(%rdi,%r14,8),%ymm8,%ymm10
  80a2d6:	c4 81 65 59 24 f0    	vmulpd (%r8,%r14,8),%ymm3,%ymm4
  80a2dc:	c4 a1 5d 59 34 f2    	vmulpd (%rdx,%r14,8),%ymm4,%ymm6
  80a2e2:	c5 4d 59 cf          	vmulpd %ymm7,%ymm6,%ymm9
  80a2e6:	c4 41 35 59 da       	vmulpd %ymm10,%ymm9,%ymm11
  80a2eb:	c4 01 7d 11 1c f2    	vmovupd %ymm11,(%r10,%r14,8)
  80a2f1:	49 83 c6 04          	add    $0x4,%r14
  80a2f5:	4d 3b f7             	cmp    %r15,%r14
  80a2f8:	72 b6                	jb     80a2b0 <t3dmix_mod_mp_t3dmix4_tile_+0x2410>
  80a2fa:	48 8b bd 78 fc ff ff 	mov    -0x388(%rbp),%rdi
  80a301:	4c 8b 9d 80 fc ff ff 	mov    -0x380(%rbp),%r11
  80a308:	48 3b 4d e0          	cmp    -0x20(%rbp),%rcx
  80a30c:	0f 83 8d 00 00 00    	jae    80a39f <t3dmix_mod_mp_t3dmix4_tile_+0x24ff>
  80a312:	4c 8b bd 88 fc ff ff 	mov    -0x378(%rbp),%r15
  80a319:	4c 8b b5 90 fc ff ff 	mov    -0x370(%rbp),%r14
  80a320:	4c 8b ad 98 fc ff ff 	mov    -0x368(%rbp),%r13
  80a327:	4c 8b a5 a0 fc ff ff 	mov    -0x360(%rbp),%r12
  80a32e:	4c 03 ff             	add    %rdi,%r15
  80a331:	4c 89 9d 80 fc ff ff 	mov    %r11,-0x380(%rbp)
  80a338:	4c 03 f7             	add    %rdi,%r14
  80a33b:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
  80a33f:	4c 03 e8             	add    %rax,%r13
  80a342:	4c 03 e0             	add    %rax,%r12
  80a345:	0f 1f 40 00          	nopl   0x0(%rax)
  80a349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  80a350:	c5 fb 59 14 ce       	vmulsd (%rsi,%rcx,8),%xmm0,%xmm2
  80a355:	c4 c1 6b 59 1c c9    	vmulsd (%r9,%rcx,8),%xmm2,%xmm3
  80a35b:	c4 c1 63 59 24 c8    	vmulsd (%r8,%rcx,8),%xmm3,%xmm4
  80a361:	c4 c1 7b 10 2c ce    	vmovsd (%r14,%rcx,8),%xmm5
  80a367:	c5 db 59 34 ca       	vmulsd (%rdx,%rcx,8),%xmm4,%xmm6
  80a36c:	c4 c1 53 58 7c cf f8 	vaddsd -0x8(%r15,%rcx,8),%xmm5,%xmm7
  80a373:	c4 41 7b 10 44 cd 00 	vmovsd 0x0(%r13,%rcx,8),%xmm8
  80a37a:	c5 4b 59 cf          	vmulsd %xmm7,%xmm6,%xmm9
  80a37e:	c4 41 3b 5c 54 cc f8 	vsubsd -0x8(%r12,%rcx,8),%xmm8,%xmm10
  80a385:	c4 41 33 59 da       	vmulsd %xmm10,%xmm9,%xmm11
  80a38a:	c4 41 7b 11 1c ca    	vmovsd %xmm11,(%r10,%rcx,8)
  80a390:	48 ff c1             	inc    %rcx
  80a393:	49 3b cb             	cmp    %r11,%rcx
  80a396:	72 b8                	jb     80a350 <t3dmix_mod_mp_t3dmix4_tile_+0x24b0>
  80a398:	4c 8b 9d 80 fc ff ff 	mov    -0x380(%rbp),%r11
  80a39f:	49 ff c3             	inc    %r11
  80a3a2:	4c 03 95 40 fe ff ff 	add    -0x1c0(%rbp),%r10
  80a3a9:	48 03 b5 c0 fd ff ff 	add    -0x240(%rbp),%rsi
  80a3b0:	4c 03 8d b8 fd ff ff 	add    -0x248(%rbp),%r9
  80a3b7:	4c 03 85 b0 fd ff ff 	add    -0x250(%rbp),%r8
  80a3be:	48 03 95 a8 fd ff ff 	add    -0x258(%rbp),%rdx
  80a3c5:	48 03 bd d8 fd ff ff 	add    -0x228(%rbp),%rdi
  80a3cc:	48 03 85 f0 fd ff ff 	add    -0x210(%rbp),%rax
  80a3d3:	4c 3b 9d 48 fe ff ff 	cmp    -0x1b8(%rbp),%r11
  80a3da:	0f 82 53 fe ff ff    	jb     80a233 <t3dmix_mod_mp_t3dmix4_tile_+0x2393>
  80a3e0:	e9 ee 03 00 00       	jmpq   80a7d3 <t3dmix_mod_mp_t3dmix4_tile_+0x2933>
  80a3e5:	45 33 db             	xor    %r11d,%r11d
  80a3e8:	8b 85 20 fa ff ff    	mov    -0x5e0(%rbp),%eax
  80a3ee:	45 33 c0             	xor    %r8d,%r8d
  80a3f1:	48 8b bd 48 fa ff ff 	mov    -0x5b8(%rbp),%rdi
  80a3f8:	33 f6                	xor    %esi,%esi
  80a3fa:	4c 8b 95 38 fa ff ff 	mov    -0x5c8(%rbp),%r10
  80a401:	4c 8b 8d 40 fa ff ff 	mov    -0x5c0(%rbp),%r9
  80a408:	48 8b 8d f0 fc ff ff 	mov    -0x310(%rbp),%rcx
  80a40f:	3b 85 18 fa ff ff    	cmp    -0x5e8(%rbp),%eax
  80a415:	0f 8c cd 03 00 00    	jl     80a7e8 <t3dmix_mod_mp_t3dmix4_tile_+0x2948>
  80a41b:	48 8b 95 e8 f8 ff ff 	mov    -0x718(%rbp),%rdx
  80a422:	49 0f af d4          	imul   %r12,%rdx
  80a426:	48 03 95 58 f9 ff ff 	add    -0x6a8(%rbp),%rdx
  80a42d:	48 89 95 20 f9 ff ff 	mov    %rdx,-0x6e0(%rbp)
  80a434:	48 8b 95 f0 f8 ff ff 	mov    -0x710(%rbp),%rdx
  80a43b:	49 0f af d4          	imul   %r12,%rdx
  80a43f:	48 8b 85 40 f9 ff ff 	mov    -0x6c0(%rbp),%rax
  80a446:	4c 89 85 28 fe ff ff 	mov    %r8,-0x1d8(%rbp)
  80a44d:	4c 89 4d a8          	mov    %r9,-0x58(%rbp)
  80a451:	4c 89 55 a0          	mov    %r10,-0x60(%rbp)
  80a455:	4c 8d 3c 10          	lea    (%rax,%rdx,1),%r15
  80a459:	48 8b 85 00 f9 ff ff 	mov    -0x700(%rbp),%rax
  80a460:	49 0f af c4          	imul   %r12,%rax
  80a464:	4c 89 bd b8 fb ff ff 	mov    %r15,-0x448(%rbp)
  80a46b:	4c 8b bd 50 f9 ff ff 	mov    -0x6b0(%rbp),%r15
  80a472:	48 03 95 88 f9 ff ff 	add    -0x678(%rbp),%rdx
  80a479:	48 89 95 58 fc ff ff 	mov    %rdx,-0x3a8(%rbp)
  80a480:	4c 89 9d 20 fe ff ff 	mov    %r11,-0x1e0(%rbp)
  80a487:	4c 03 f8             	add    %rax,%r15
  80a48a:	48 03 85 b0 f9 ff ff 	add    -0x650(%rbp),%rax
  80a491:	48 8b 95 20 f9 ff ff 	mov    -0x6e0(%rbp),%rdx
  80a498:	4c 89 bd b0 fb ff ff 	mov    %r15,-0x450(%rbp)
  80a49f:	48 89 85 50 fc ff ff 	mov    %rax,-0x3b0(%rbp)
  80a4a6:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80a4ad:	c5 fb 10 0d 63 cd 0b 	vmovsd 0xbcd63(%rip),%xmm1        # 8c7218 <__STRLITPACK_199.115+0x88>
  80a4b4:	00 
  80a4b5:	c5 f9 10 05 e3 c4 0b 	vmovupd 0xbc4e3(%rip),%xmm0        # 8c69a0 <__STRLITPACK_19.34+0x10>
  80a4bc:	00 
  80a4bd:	8b 85 38 fe ff ff    	mov    -0x1c8(%rbp),%eax
  80a4c3:	3b 85 98 fd ff ff    	cmp    -0x268(%rbp),%eax
  80a4c9:	0f 8c 97 02 00 00    	jl     80a766 <t3dmix_mod_mp_t3dmix4_tile_+0x28c6>
  80a4cf:	48 83 7d e0 02       	cmpq   $0x2,-0x20(%rbp)
  80a4d4:	0f 8c d8 2b 00 00    	jl     80d0b2 <t3dmix_mod_mp_t3dmix4_tile_+0x5212>
  80a4da:	4c 8b 8d b0 fb ff ff 	mov    -0x450(%rbp),%r9
  80a4e1:	45 33 e4             	xor    %r12d,%r12d
  80a4e4:	4c 8b 9d b8 fb ff ff 	mov    -0x448(%rbp),%r11
  80a4eb:	4c 8b 85 28 fe ff ff 	mov    -0x1d8(%rbp),%r8
  80a4f2:	4c 8b bd 58 fc ff ff 	mov    -0x3a8(%rbp),%r15
  80a4f9:	4d 8d 14 31          	lea    (%r9,%rsi,1),%r10
  80a4fd:	4c 89 55 b8          	mov    %r10,-0x48(%rbp)
  80a501:	45 33 d2             	xor    %r10d,%r10d
  80a504:	4c 8b ad 50 fc ff ff 	mov    -0x3b0(%rbp),%r13
  80a50b:	45 33 c9             	xor    %r9d,%r9d
  80a50e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  80a512:	4d 03 d8             	add    %r8,%r11
  80a515:	48 89 85 70 fc ff ff 	mov    %rax,-0x390(%rbp)
  80a51c:	4d 03 f8             	add    %r8,%r15
  80a51f:	45 33 c0             	xor    %r8d,%r8d
  80a522:	4d 8d 74 35 00       	lea    0x0(%r13,%rsi,1),%r14
  80a527:	4c 89 75 b0          	mov    %r14,-0x50(%rbp)
  80a52b:	45 33 f6             	xor    %r14d,%r14d
  80a52e:	45 33 ed             	xor    %r13d,%r13d
  80a531:	4c 89 7d c0          	mov    %r15,-0x40(%rbp)
  80a535:	48 89 b5 68 fc ff ff 	mov    %rsi,-0x398(%rbp)
  80a53c:	4d 89 ef             	mov    %r13,%r15
  80a53f:	48 8b b5 00 ff ff ff 	mov    -0x100(%rbp),%rsi
  80a546:	4a 8d 04 12          	lea    (%rdx,%r10,1),%rax
  80a54a:	c5 fb 10 10          	vmovsd (%rax),%xmm2
  80a54e:	c5 e9 16 1c 30       	vmovhpd (%rax,%rsi,1),%xmm2,%xmm3
  80a553:	4d 8d 14 72          	lea    (%r10,%rsi,2),%r10
  80a557:	c5 f9 59 eb          	vmulpd %xmm3,%xmm0,%xmm5
  80a55b:	48 8b b5 f8 fe ff ff 	mov    -0x108(%rbp),%rsi
  80a562:	4a 8d 04 0f          	lea    (%rdi,%r9,1),%rax
  80a566:	c5 fb 10 20          	vmovsd (%rax),%xmm4
  80a56a:	c5 d9 16 34 30       	vmovhpd (%rax,%rsi,1),%xmm4,%xmm6
  80a56f:	4d 8d 0c 71          	lea    (%r9,%rsi,2),%r9
  80a573:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  80a577:	c5 51 59 c6          	vmulpd %xmm6,%xmm5,%xmm8
  80a57b:	4a 8d 34 00          	lea    (%rax,%r8,1),%rsi
  80a57f:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
  80a586:	c5 fb 10 3e          	vmovsd (%rsi),%xmm7
  80a58a:	c5 41 16 0c 06       	vmovhpd (%rsi,%rax,1),%xmm7,%xmm9
  80a58f:	4d 8d 04 40          	lea    (%r8,%rax,2),%r8
  80a593:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
  80a597:	c4 41 39 59 d9       	vmulpd %xmm9,%xmm8,%xmm11
  80a59c:	4a 8d 04 36          	lea    (%rsi,%r14,1),%rax
  80a5a0:	48 8b b5 e8 fe ff ff 	mov    -0x118(%rbp),%rsi
  80a5a7:	c5 7b 10 10          	vmovsd (%rax),%xmm10
  80a5ab:	c5 29 16 24 30       	vmovhpd (%rax,%rsi,1),%xmm10,%xmm12
  80a5b0:	4d 8d 34 76          	lea    (%r14,%rsi,2),%r14
  80a5b4:	48 8b b5 18 ff ff ff 	mov    -0xe8(%rbp),%rsi
  80a5bb:	4b 8d 04 2b          	lea    (%r11,%r13,1),%rax
  80a5bf:	c5 7b 10 28          	vmovsd (%rax),%xmm13
  80a5c3:	c4 c1 21 59 d4       	vmulpd %xmm12,%xmm11,%xmm2
  80a5c8:	c5 11 16 3c 30       	vmovhpd (%rax,%rsi,1),%xmm13,%xmm15
  80a5cd:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  80a5d1:	49 03 c5             	add    %r13,%rax
  80a5d4:	c5 7b 10 30          	vmovsd (%rax),%xmm14
  80a5d8:	4d 8d 6c 75 00       	lea    0x0(%r13,%rsi,2),%r13
  80a5dd:	c5 09 16 2c 30       	vmovhpd (%rax,%rsi,1),%xmm14,%xmm13
  80a5e2:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
  80a5e6:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
  80a5ed:	c4 c1 01 58 dd       	vaddpd %xmm13,%xmm15,%xmm3
  80a5f2:	c5 69 59 c3          	vmulpd %xmm3,%xmm2,%xmm8
  80a5f6:	49 03 f7             	add    %r15,%rsi
  80a5f9:	c5 fb 10 26          	vmovsd (%rsi),%xmm4
  80a5fd:	c5 d9 16 34 06       	vmovhpd (%rsi,%rax,1),%xmm4,%xmm6
  80a602:	48 8b 75 b0          	mov    -0x50(%rbp),%rsi
  80a606:	49 03 f7             	add    %r15,%rsi
  80a609:	c5 fb 10 2e          	vmovsd (%rsi),%xmm5
  80a60d:	4d 8d 3c 47          	lea    (%r15,%rax,2),%r15
  80a611:	c5 d1 16 3c 06       	vmovhpd (%rsi,%rax,1),%xmm5,%xmm7
  80a616:	c5 49 5c cf          	vsubpd %xmm7,%xmm6,%xmm9
  80a61a:	c4 41 39 59 d1       	vmulpd %xmm9,%xmm8,%xmm10
  80a61f:	c4 21 79 11 14 e1    	vmovupd %xmm10,(%rcx,%r12,8)
  80a625:	49 83 c4 02          	add    $0x2,%r12
  80a629:	4c 3b 65 c8          	cmp    -0x38(%rbp),%r12
  80a62d:	0f 82 0c ff ff ff    	jb     80a53f <t3dmix_mod_mp_t3dmix4_tile_+0x269f>
  80a633:	48 8b 85 70 fc ff ff 	mov    -0x390(%rbp),%rax
  80a63a:	48 8b b5 68 fc ff ff 	mov    -0x398(%rbp),%rsi
  80a641:	4c 8b 9d 38 ff ff ff 	mov    -0xc8(%rbp),%r11
  80a648:	4c 8b 95 18 ff ff ff 	mov    -0xe8(%rbp),%r10
  80a64f:	4c 8b 8d f8 fe ff ff 	mov    -0x108(%rbp),%r9
  80a656:	4c 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%r8
  80a65d:	4c 8b ad f0 fe ff ff 	mov    -0x110(%rbp),%r13
  80a664:	4c 8b a5 00 ff ff ff 	mov    -0x100(%rbp),%r12
  80a66b:	4c 0f af d8          	imul   %rax,%r11
  80a66f:	4c 0f af d0          	imul   %rax,%r10
  80a673:	4c 0f af c8          	imul   %rax,%r9
  80a677:	4c 0f af c0          	imul   %rax,%r8
  80a67b:	4c 0f af e8          	imul   %rax,%r13
  80a67f:	4c 0f af e0          	imul   %rax,%r12
  80a683:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  80a687:	0f 83 d9 00 00 00    	jae    80a766 <t3dmix_mod_mp_t3dmix4_tile_+0x28c6>
  80a68d:	4c 8b bd b8 fb ff ff 	mov    -0x448(%rbp),%r15
  80a694:	4c 8b b5 28 fe ff ff 	mov    -0x1d8(%rbp),%r14
  80a69b:	48 89 b5 68 fc ff ff 	mov    %rsi,-0x398(%rbp)
  80a6a2:	4d 03 fe             	add    %r14,%r15
  80a6a5:	4c 89 7d 98          	mov    %r15,-0x68(%rbp)
  80a6a9:	4c 8b bd 58 fc ff ff 	mov    -0x3a8(%rbp),%r15
  80a6b0:	4d 03 f7             	add    %r15,%r14
  80a6b3:	4c 8b bd 50 fc ff ff 	mov    -0x3b0(%rbp),%r15
  80a6ba:	4c 89 b5 60 fc ff ff 	mov    %r14,-0x3a0(%rbp)
  80a6c1:	4c 8b b5 b0 fb ff ff 	mov    -0x450(%rbp),%r14
  80a6c8:	4c 03 fe             	add    %rsi,%r15
  80a6cb:	4c 89 7d 90          	mov    %r15,-0x70(%rbp)
  80a6cf:	4c 03 f6             	add    %rsi,%r14
  80a6d2:	48 8b b5 60 fc ff ff 	mov    -0x3a0(%rbp),%rsi
  80a6d9:	c4 c1 73 59 14 14    	vmulsd (%r12,%rdx,1),%xmm1,%xmm2
  80a6df:	c4 c1 6b 59 1c 39    	vmulsd (%r9,%rdi,1),%xmm2,%xmm3
  80a6e5:	4c 8b 7d a0          	mov    -0x60(%rbp),%r15
  80a6e9:	c4 01 7b 10 04 33    	vmovsd (%r11,%r14,1),%xmm8
  80a6ef:	4c 03 a5 00 ff ff ff 	add    -0x100(%rbp),%r12
  80a6f6:	c4 81 63 59 64 3d 00 	vmulsd 0x0(%r13,%r15,1),%xmm3,%xmm4
  80a6fd:	4c 8b 7d a8          	mov    -0x58(%rbp),%r15
  80a701:	4c 03 ad f0 fe ff ff 	add    -0x110(%rbp),%r13
  80a708:	4c 03 8d f8 fe ff ff 	add    -0x108(%rbp),%r9
  80a70f:	c4 81 5b 59 34 38    	vmulsd (%r8,%r15,1),%xmm4,%xmm6
  80a715:	4c 8b 7d 98          	mov    -0x68(%rbp),%r15
  80a719:	4c 03 85 e8 fe ff ff 	add    -0x118(%rbp),%r8
  80a720:	c4 81 7b 10 2c 3a    	vmovsd (%r10,%r15,1),%xmm5
  80a726:	4c 8b 7d 90          	mov    -0x70(%rbp),%r15
  80a72a:	c4 c1 53 58 3c 32    	vaddsd (%r10,%rsi,1),%xmm5,%xmm7
  80a730:	c4 01 3b 5c 14 3b    	vsubsd (%r11,%r15,1),%xmm8,%xmm10
  80a736:	c5 4b 59 cf          	vmulsd %xmm7,%xmm6,%xmm9
  80a73a:	c4 41 33 59 da       	vmulsd %xmm10,%xmm9,%xmm11
  80a73f:	c5 7b 11 1c c1       	vmovsd %xmm11,(%rcx,%rax,8)
  80a744:	48 ff c0             	inc    %rax
  80a747:	4c 03 95 18 ff ff ff 	add    -0xe8(%rbp),%r10
  80a74e:	4c 03 9d 38 ff ff ff 	add    -0xc8(%rbp),%r11
  80a755:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  80a759:	0f 82 7a ff ff ff    	jb     80a6d9 <t3dmix_mod_mp_t3dmix4_tile_+0x2839>
  80a75f:	48 8b b5 68 fc ff ff 	mov    -0x398(%rbp),%rsi
  80a766:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  80a76a:	4c 8b 45 a8          	mov    -0x58(%rbp),%r8
  80a76e:	4c 8b 8d 28 fe ff ff 	mov    -0x1d8(%rbp),%r9
  80a775:	4c 8b 95 20 fe ff ff 	mov    -0x1e0(%rbp),%r10
  80a77c:	49 ff c2             	inc    %r10
  80a77f:	48 03 85 b0 fd ff ff 	add    -0x250(%rbp),%rax
  80a786:	4c 03 85 a8 fd ff ff 	add    -0x258(%rbp),%r8
  80a78d:	4c 03 8d d8 fd ff ff 	add    -0x228(%rbp),%r9
  80a794:	48 03 95 c0 fd ff ff 	add    -0x240(%rbp),%rdx
  80a79b:	48 03 bd b8 fd ff ff 	add    -0x248(%rbp),%rdi
  80a7a2:	48 03 b5 f0 fd ff ff 	add    -0x210(%rbp),%rsi
  80a7a9:	48 03 8d 40 fe ff ff 	add    -0x1c0(%rbp),%rcx
  80a7b0:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  80a7b4:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  80a7b8:	4c 89 8d 28 fe ff ff 	mov    %r9,-0x1d8(%rbp)
  80a7bf:	4c 89 95 20 fe ff ff 	mov    %r10,-0x1e0(%rbp)
  80a7c6:	4c 3b 95 48 fe ff ff 	cmp    -0x1b8(%rbp),%r10
  80a7cd:	0f 82 ea fc ff ff    	jb     80a4bd <t3dmix_mod_mp_t3dmix4_tile_+0x261d>
  80a7d3:	4c 8b ad d8 f8 ff ff 	mov    -0x728(%rbp),%r13
  80a7da:	4c 8b b5 e0 f8 ff ff 	mov    -0x720(%rbp),%r14
  80a7e1:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  80a7e8:	48 83 bd 28 ff ff ff 	cmpq   $0x8,-0xd8(%rbp)
  80a7ef:	08 
  80a7f0:	0f 85 f8 02 00 00    	jne    80aaee <t3dmix_mod_mp_t3dmix4_tile_+0x2c4e>
  80a7f6:	48 83 bd 20 ff ff ff 	cmpq   $0x8,-0xe0(%rbp)
  80a7fd:	08 
  80a7fe:	0f 85 ea 02 00 00    	jne    80aaee <t3dmix_mod_mp_t3dmix4_tile_+0x2c4e>
  80a804:	48 83 bd 10 ff ff ff 	cmpq   $0x8,-0xf0(%rbp)
  80a80b:	08 
  80a80c:	0f 85 dc 02 00 00    	jne    80aaee <t3dmix_mod_mp_t3dmix4_tile_+0x2c4e>
  80a812:	48 83 bd 08 ff ff ff 	cmpq   $0x8,-0xf8(%rbp)
  80a819:	08 
  80a81a:	0f 85 ce 02 00 00    	jne    80aaee <t3dmix_mod_mp_t3dmix4_tile_+0x2c4e>
  80a820:	48 83 bd 18 ff ff ff 	cmpq   $0x8,-0xe8(%rbp)
  80a827:	08 
  80a828:	0f 85 ad 02 00 00    	jne    80aadb <t3dmix_mod_mp_t3dmix4_tile_+0x2c3b>
  80a82e:	48 83 bd 38 ff ff ff 	cmpq   $0x8,-0xc8(%rbp)
  80a835:	08 
  80a836:	0f 85 8c 02 00 00    	jne    80aac8 <t3dmix_mod_mp_t3dmix4_tile_+0x2c28>
  80a83c:	44 8b 85 18 fa ff ff 	mov    -0x5e8(%rbp),%r8d
  80a843:	45 33 db             	xor    %r11d,%r11d
  80a846:	48 8b 85 30 f3 ff ff 	mov    -0xcd0(%rbp),%rax
  80a84d:	33 ff                	xor    %edi,%edi
  80a84f:	4c 8b 95 d0 fc ff ff 	mov    -0x330(%rbp),%r10
  80a856:	4c 8b 8d 20 f3 ff ff 	mov    -0xce0(%rbp),%r9
  80a85d:	48 89 85 18 f9 ff ff 	mov    %rax,-0x6e8(%rbp)
  80a864:	44 3b 85 28 fa ff ff 	cmp    -0x5d8(%rbp),%r8d
  80a86b:	4c 8b 85 28 f3 ff ff 	mov    -0xcd8(%rbp),%r8
  80a872:	0f 8f be 06 00 00    	jg     80af36 <t3dmix_mod_mp_t3dmix4_tile_+0x3096>
  80a878:	48 8b 95 00 f9 ff ff 	mov    -0x700(%rbp),%rdx
  80a87f:	48 8b 8d f0 f8 ff ff 	mov    -0x710(%rbp),%rcx
  80a886:	49 0f af d4          	imul   %r12,%rdx
  80a88a:	49 0f af cc          	imul   %r12,%rcx
  80a88e:	c5 fd 10 0d ca aa 0b 	vmovupd 0xbaaca(%rip),%ymm1        # 8c5360 <var$630.126.450+0x4a0>
  80a895:	00 
  80a896:	c5 fb 10 05 7a c9 0b 	vmovsd 0xbc97a(%rip),%xmm0        # 8c7218 <__STRLITPACK_199.115+0x88>
  80a89d:	00 
  80a89e:	48 8b b5 f8 f8 ff ff 	mov    -0x708(%rbp),%rsi
  80a8a5:	49 0f af f4          	imul   %r12,%rsi
  80a8a9:	48 8b 85 a8 f9 ff ff 	mov    -0x658(%rbp),%rax
  80a8b0:	4c 8b bd 38 f9 ff ff 	mov    -0x6c8(%rbp),%r15
  80a8b7:	48 03 b5 98 f9 ff ff 	add    -0x668(%rbp),%rsi
  80a8be:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80a8c5:	48 03 c2             	add    %rdx,%rax
  80a8c8:	48 03 95 a0 f9 ff ff 	add    -0x660(%rbp),%rdx
  80a8cf:	4c 03 f9             	add    %rcx,%r15
  80a8d2:	48 03 8d 48 f9 ff ff 	add    -0x6b8(%rbp),%rcx
  80a8d9:	48 89 95 30 fc ff ff 	mov    %rdx,-0x3d0(%rbp)
  80a8e0:	48 89 85 38 fc ff ff 	mov    %rax,-0x3c8(%rbp)
  80a8e7:	48 89 8d 20 fc ff ff 	mov    %rcx,-0x3e0(%rbp)
  80a8ee:	4c 89 bd 28 fc ff ff 	mov    %r15,-0x3d8(%rbp)
  80a8f5:	48 89 f8             	mov    %rdi,%rax
  80a8f8:	48 8b 95 18 f9 ff ff 	mov    -0x6e8(%rbp),%rdx
  80a8ff:	8b 8d a0 fd ff ff    	mov    -0x260(%rbp),%ecx
  80a905:	3b 8d 98 fd ff ff    	cmp    -0x268(%rbp),%ecx
  80a90b:	0f 8c 5c 01 00 00    	jl     80aa6d <t3dmix_mod_mp_t3dmix4_tile_+0x2bcd>
  80a911:	48 83 bd 50 ff ff ff 	cmpq   $0x4,-0xb0(%rbp)
  80a918:	04 
  80a919:	0f 8c 91 25 00 00    	jl     80ceb0 <t3dmix_mod_mp_t3dmix4_tile_+0x5010>
  80a91f:	4c 8b bd 30 fc ff ff 	mov    -0x3d0(%rbp),%r15
  80a926:	45 33 f6             	xor    %r14d,%r14d
  80a929:	4c 8b ad 20 fc ff ff 	mov    -0x3e0(%rbp),%r13
  80a930:	4c 8b a5 28 fc ff ff 	mov    -0x3d8(%rbp),%r12
  80a937:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  80a93b:	4c 03 f8             	add    %rax,%r15
  80a93e:	4c 89 bd 48 fc ff ff 	mov    %r15,-0x3b8(%rbp)
  80a945:	4c 03 ef             	add    %rdi,%r13
  80a948:	4c 8b bd 38 fc ff ff 	mov    -0x3c8(%rbp),%r15
  80a94f:	4c 03 e7             	add    %rdi,%r12
  80a952:	48 89 bd 10 fc ff ff 	mov    %rdi,-0x3f0(%rbp)
  80a959:	4c 89 9d 18 fc ff ff 	mov    %r11,-0x3e8(%rbp)
  80a960:	4c 8b 9d 48 fc ff ff 	mov    -0x3b8(%rbp),%r11
  80a967:	4c 03 f8             	add    %rax,%r15
  80a96a:	4c 89 bd 40 fc ff ff 	mov    %r15,-0x3c0(%rbp)
  80a971:	49 89 cf             	mov    %rcx,%r15
  80a974:	48 8b bd 40 fc ff ff 	mov    -0x3c0(%rbp),%rdi
  80a97b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  80a980:	c4 a1 75 59 14 f6    	vmulpd (%rsi,%r14,8),%ymm1,%ymm2
  80a986:	c4 81 7d 10 2c f4    	vmovupd (%r12,%r14,8),%ymm5
  80a98c:	c4 01 7d 10 04 f3    	vmovupd (%r11,%r14,8),%ymm8
  80a992:	c4 81 6d 59 1c f1    	vmulpd (%r9,%r14,8),%ymm2,%ymm3
  80a998:	c4 81 55 58 7c f5 00 	vaddpd 0x0(%r13,%r14,8),%ymm5,%ymm7
  80a99f:	c4 21 3d 5c 14 f7    	vsubpd (%rdi,%r14,8),%ymm8,%ymm10
  80a9a5:	c4 81 65 59 24 f0    	vmulpd (%r8,%r14,8),%ymm3,%ymm4
  80a9ab:	c4 a1 5d 59 34 f2    	vmulpd (%rdx,%r14,8),%ymm4,%ymm6
  80a9b1:	c5 4d 59 cf          	vmulpd %ymm7,%ymm6,%ymm9
  80a9b5:	c4 41 35 59 da       	vmulpd %ymm10,%ymm9,%ymm11
  80a9ba:	c4 01 7d 11 1c f2    	vmovupd %ymm11,(%r10,%r14,8)
  80a9c0:	49 83 c6 04          	add    $0x4,%r14
  80a9c4:	4d 3b f7             	cmp    %r15,%r14
  80a9c7:	72 b7                	jb     80a980 <t3dmix_mod_mp_t3dmix4_tile_+0x2ae0>
  80a9c9:	48 8b bd 10 fc ff ff 	mov    -0x3f0(%rbp),%rdi
  80a9d0:	4c 8b 9d 18 fc ff ff 	mov    -0x3e8(%rbp),%r11
  80a9d7:	48 3b 8d 50 ff ff ff 	cmp    -0xb0(%rbp),%rcx
  80a9de:	0f 83 89 00 00 00    	jae    80aa6d <t3dmix_mod_mp_t3dmix4_tile_+0x2bcd>
  80a9e4:	4c 8b bd 20 fc ff ff 	mov    -0x3e0(%rbp),%r15
  80a9eb:	4c 8b b5 28 fc ff ff 	mov    -0x3d8(%rbp),%r14
  80a9f2:	4c 8b ad 30 fc ff ff 	mov    -0x3d0(%rbp),%r13
  80a9f9:	4c 8b a5 38 fc ff ff 	mov    -0x3c8(%rbp),%r12
  80aa00:	4c 03 ff             	add    %rdi,%r15
  80aa03:	4c 89 9d 18 fc ff ff 	mov    %r11,-0x3e8(%rbp)
  80aa0a:	4c 03 f7             	add    %rdi,%r14
  80aa0d:	4c 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11
  80aa14:	4c 03 e8             	add    %rax,%r13
  80aa17:	4c 03 e0             	add    %rax,%r12
  80aa1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  80aa20:	c5 fb 59 14 ce       	vmulsd (%rsi,%rcx,8),%xmm0,%xmm2
  80aa25:	c4 c1 6b 59 1c c9    	vmulsd (%r9,%rcx,8),%xmm2,%xmm3
  80aa2b:	c4 c1 63 59 24 c8    	vmulsd (%r8,%rcx,8),%xmm3,%xmm4
  80aa31:	c4 c1 7b 10 2c ce    	vmovsd (%r14,%rcx,8),%xmm5
  80aa37:	c5 db 59 34 ca       	vmulsd (%rdx,%rcx,8),%xmm4,%xmm6
  80aa3c:	c4 c1 53 58 3c cf    	vaddsd (%r15,%rcx,8),%xmm5,%xmm7
  80aa42:	c4 41 7b 10 44 cd 00 	vmovsd 0x0(%r13,%rcx,8),%xmm8
  80aa49:	c5 4b 59 cf          	vmulsd %xmm7,%xmm6,%xmm9
  80aa4d:	c4 41 3b 5c 14 cc    	vsubsd (%r12,%rcx,8),%xmm8,%xmm10
  80aa53:	c4 41 33 59 da       	vmulsd %xmm10,%xmm9,%xmm11
  80aa58:	c4 41 7b 11 1c ca    	vmovsd %xmm11,(%r10,%rcx,8)
  80aa5e:	48 ff c1             	inc    %rcx
  80aa61:	49 3b cb             	cmp    %r11,%rcx
  80aa64:	72 ba                	jb     80aa20 <t3dmix_mod_mp_t3dmix4_tile_+0x2b80>
  80aa66:	4c 8b 9d 18 fc ff ff 	mov    -0x3e8(%rbp),%r11
  80aa6d:	49 ff c3             	inc    %r11
  80aa70:	4c 03 95 40 fe ff ff 	add    -0x1c0(%rbp),%r10
  80aa77:	48 03 b5 e8 fd ff ff 	add    -0x218(%rbp),%rsi
  80aa7e:	4c 03 8d e0 fd ff ff 	add    -0x220(%rbp),%r9
  80aa85:	4c 03 85 d0 fd ff ff 	add    -0x230(%rbp),%r8
  80aa8c:	48 03 95 c8 fd ff ff 	add    -0x238(%rbp),%rdx
  80aa93:	48 03 bd d8 fd ff ff 	add    -0x228(%rbp),%rdi
  80aa9a:	48 03 85 f0 fd ff ff 	add    -0x210(%rbp),%rax
  80aaa1:	4c 3b 9d 30 fe ff ff 	cmp    -0x1d0(%rbp),%r11
  80aaa8:	0f 82 51 fe ff ff    	jb     80a8ff <t3dmix_mod_mp_t3dmix4_tile_+0x2a5f>
  80aaae:	4c 8b ad d8 f8 ff ff 	mov    -0x728(%rbp),%r13
  80aab5:	4c 8b b5 e0 f8 ff ff 	mov    -0x720(%rbp),%r14
  80aabc:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  80aac3:	e9 6e 04 00 00       	jmpq   80af36 <t3dmix_mod_mp_t3dmix4_tile_+0x3096>
  80aac8:	8b 85 18 fa ff ff    	mov    -0x5e8(%rbp),%eax
  80aace:	3b 85 28 fa ff ff    	cmp    -0x5d8(%rbp),%eax
  80aad4:	7e 2a                	jle    80ab00 <t3dmix_mod_mp_t3dmix4_tile_+0x2c60>
  80aad6:	e9 5b 04 00 00       	jmpq   80af36 <t3dmix_mod_mp_t3dmix4_tile_+0x3096>
  80aadb:	8b 85 18 fa ff ff    	mov    -0x5e8(%rbp),%eax
  80aae1:	3b 85 28 fa ff ff    	cmp    -0x5d8(%rbp),%eax
  80aae7:	7e 17                	jle    80ab00 <t3dmix_mod_mp_t3dmix4_tile_+0x2c60>
  80aae9:	e9 16 06 00 00       	jmpq   80b104 <t3dmix_mod_mp_t3dmix4_tile_+0x3264>
  80aaee:	8b 85 18 fa ff ff    	mov    -0x5e8(%rbp),%eax
  80aaf4:	3b 85 28 fa ff ff    	cmp    -0x5d8(%rbp),%eax
  80aafa:	0f 8f 28 04 00 00    	jg     80af28 <t3dmix_mod_mp_t3dmix4_tile_+0x3088>
  80ab00:	4c 8b 85 f0 f8 ff ff 	mov    -0x710(%rbp),%r8
  80ab07:	45 33 c9             	xor    %r9d,%r9d
  80ab0a:	4d 0f af c4          	imul   %r12,%r8
  80ab0e:	48 8b 85 40 f9 ff ff 	mov    -0x6c0(%rbp),%rax
  80ab15:	4c 8b 9d f8 f8 ff ff 	mov    -0x708(%rbp),%r11
  80ab1c:	4d 0f af dc          	imul   %r12,%r11
  80ab20:	48 8b 8d 50 f9 ff ff 	mov    -0x6b0(%rbp),%rcx
  80ab27:	4a 8d 14 00          	lea    (%rax,%r8,1),%rdx
  80ab2b:	48 8b 85 00 f9 ff ff 	mov    -0x700(%rbp),%rax
  80ab32:	49 0f af c4          	imul   %r12,%rax
  80ab36:	4c 03 85 80 f9 ff ff 	add    -0x680(%rbp),%r8
  80ab3d:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
  80ab41:	48 03 85 30 f9 ff ff 	add    -0x6d0(%rbp),%rax
  80ab48:	4c 03 9d 60 f9 ff ff 	add    -0x6a0(%rbp),%r11
  80ab4f:	4c 8b 95 68 f9 ff ff 	mov    -0x698(%rbp),%r10
  80ab56:	48 89 95 c0 fb ff ff 	mov    %rdx,-0x440(%rbp)
  80ab5d:	33 d2                	xor    %edx,%edx
  80ab5f:	48 8b b5 d0 fc ff ff 	mov    -0x330(%rbp),%rsi
  80ab66:	48 8b bd 90 f9 ff ff 	mov    -0x670(%rbp),%rdi
  80ab6d:	48 8b 8d 70 f9 ff ff 	mov    -0x690(%rbp),%rcx
  80ab74:	48 89 95 08 fe ff ff 	mov    %rdx,-0x1f8(%rbp)
  80ab7b:	4c 89 95 70 ff ff ff 	mov    %r10,-0x90(%rbp)
  80ab82:	4c 89 9d 68 ff ff ff 	mov    %r11,-0x98(%rbp)
  80ab89:	48 89 85 d8 fb ff ff 	mov    %rax,-0x428(%rbp)
  80ab90:	4c 89 85 e0 fb ff ff 	mov    %r8,-0x420(%rbp)
  80ab97:	4c 89 bd e8 fb ff ff 	mov    %r15,-0x418(%rbp)
  80ab9e:	4c 89 8d 18 fe ff ff 	mov    %r9,-0x1e8(%rbp)
  80aba5:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80abac:	c5 fb 10 0d 64 c6 0b 	vmovsd 0xbc664(%rip),%xmm1        # 8c7218 <__STRLITPACK_199.115+0x88>
  80abb3:	00 
  80abb4:	c5 f9 10 05 e4 bd 0b 	vmovupd 0xbbde4(%rip),%xmm0        # 8c69a0 <__STRLITPACK_19.34+0x10>
  80abbb:	00 
  80abbc:	8b 85 a0 fd ff ff    	mov    -0x260(%rbp),%eax
  80abc2:	3b 85 98 fd ff ff    	cmp    -0x268(%rbp),%eax
  80abc8:	0f 8c cc 02 00 00    	jl     80ae9a <t3dmix_mod_mp_t3dmix4_tile_+0x2ffa>
  80abce:	48 83 bd 50 ff ff ff 	cmpq   $0x2,-0xb0(%rbp)
  80abd5:	02 
  80abd6:	0f 8c cf 24 00 00    	jl     80d0ab <t3dmix_mod_mp_t3dmix4_tile_+0x520b>
  80abdc:	4c 8b ad 08 fe ff ff 	mov    -0x1f8(%rbp),%r13
  80abe3:	45 33 e4             	xor    %r12d,%r12d
  80abe6:	4c 8b 95 d8 fb ff ff 	mov    -0x428(%rbp),%r10
  80abed:	4c 8b 85 e8 fb ff ff 	mov    -0x418(%rbp),%r8
  80abf4:	4c 8b bd e0 fb ff ff 	mov    -0x420(%rbp),%r15
  80abfb:	4c 8b 9d c0 fb ff ff 	mov    -0x440(%rbp),%r11
  80ac02:	4f 8d 34 2a          	lea    (%r10,%r13,1),%r14
  80ac06:	45 33 d2             	xor    %r10d,%r10d
  80ac09:	4f 8d 0c 28          	lea    (%r8,%r13,1),%r9
  80ac0d:	4c 89 4d 80          	mov    %r9,-0x80(%rbp)
  80ac11:	45 33 c9             	xor    %r9d,%r9d
  80ac14:	45 33 c0             	xor    %r8d,%r8d
  80ac17:	4c 03 fa             	add    %rdx,%r15
  80ac1a:	4c 89 b5 78 ff ff ff 	mov    %r14,-0x88(%rbp)
  80ac21:	45 33 f6             	xor    %r14d,%r14d
  80ac24:	45 33 ed             	xor    %r13d,%r13d
  80ac27:	4c 03 da             	add    %rdx,%r11
  80ac2a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  80ac2e:	4c 89 7d 88          	mov    %r15,-0x78(%rbp)
  80ac32:	48 89 85 08 fc ff ff 	mov    %rax,-0x3f8(%rbp)
  80ac39:	48 89 95 00 fc ff ff 	mov    %rdx,-0x400(%rbp)
  80ac40:	4d 89 ef             	mov    %r13,%r15
  80ac43:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  80ac4a:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
  80ac51:	49 03 c2             	add    %r10,%rax
  80ac54:	c5 fb 10 10          	vmovsd (%rax),%xmm2
  80ac58:	4d 8d 14 52          	lea    (%r10,%rdx,2),%r10
  80ac5c:	c5 e9 16 1c 10       	vmovhpd (%rax,%rdx,1),%xmm2,%xmm3
  80ac61:	c5 f9 59 eb          	vmulpd %xmm3,%xmm0,%xmm5
  80ac65:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  80ac6c:	4a 8d 14 08          	lea    (%rax,%r9,1),%rdx
  80ac70:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
  80ac77:	c5 fb 10 22          	vmovsd (%rdx),%xmm4
  80ac7b:	c5 d9 16 34 02       	vmovhpd (%rdx,%rax,1),%xmm4,%xmm6
  80ac80:	4d 8d 0c 41          	lea    (%r9,%rax,2),%r9
  80ac84:	c5 51 59 c6          	vmulpd %xmm6,%xmm5,%xmm8
  80ac88:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
  80ac8f:	4a 8d 14 07          	lea    (%rdi,%r8,1),%rdx
  80ac93:	c5 fb 10 3a          	vmovsd (%rdx),%xmm7
  80ac97:	c5 41 16 0c 02       	vmovhpd (%rdx,%rax,1),%xmm7,%xmm9
  80ac9c:	4d 8d 04 40          	lea    (%r8,%rax,2),%r8
  80aca0:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
  80aca7:	4a 8d 14 31          	lea    (%rcx,%r14,1),%rdx
  80acab:	c5 7b 10 12          	vmovsd (%rdx),%xmm10
  80acaf:	c4 41 39 59 d9       	vmulpd %xmm9,%xmm8,%xmm11
  80acb4:	c5 29 16 24 02       	vmovhpd (%rdx,%rax,1),%xmm10,%xmm12
  80acb9:	4d 8d 34 46          	lea    (%r14,%rax,2),%r14
  80acbd:	48 8b 95 18 ff ff ff 	mov    -0xe8(%rbp),%rdx
  80acc4:	4b 8d 04 2b          	lea    (%r11,%r13,1),%rax
  80acc8:	c5 7b 10 28          	vmovsd (%rax),%xmm13
  80accc:	c4 c1 21 59 d4       	vmulpd %xmm12,%xmm11,%xmm2
  80acd1:	c5 11 16 3c 10       	vmovhpd (%rax,%rdx,1),%xmm13,%xmm15
  80acd6:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  80acda:	49 03 c5             	add    %r13,%rax
  80acdd:	c5 7b 10 30          	vmovsd (%rax),%xmm14
  80ace1:	4d 8d 6c 55 00       	lea    0x0(%r13,%rdx,2),%r13
  80ace6:	c5 09 16 2c 10       	vmovhpd (%rax,%rdx,1),%xmm14,%xmm13
  80aceb:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
  80acef:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
  80acf6:	c4 c1 01 58 dd       	vaddpd %xmm13,%xmm15,%xmm3
  80acfb:	c5 69 59 c3          	vmulpd %xmm3,%xmm2,%xmm8
  80acff:	49 03 d7             	add    %r15,%rdx
  80ad02:	c5 fb 10 22          	vmovsd (%rdx),%xmm4
  80ad06:	c5 d9 16 34 02       	vmovhpd (%rdx,%rax,1),%xmm4,%xmm6
  80ad0b:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
  80ad12:	49 03 d7             	add    %r15,%rdx
  80ad15:	c5 fb 10 2a          	vmovsd (%rdx),%xmm5
  80ad19:	4d 8d 3c 47          	lea    (%r15,%rax,2),%r15
  80ad1d:	c5 d1 16 3c 02       	vmovhpd (%rdx,%rax,1),%xmm5,%xmm7
  80ad22:	c5 49 5c cf          	vsubpd %xmm7,%xmm6,%xmm9
  80ad26:	c4 41 39 59 d1       	vmulpd %xmm9,%xmm8,%xmm10
  80ad2b:	c4 21 79 11 14 e6    	vmovupd %xmm10,(%rsi,%r12,8)
  80ad31:	49 83 c4 02          	add    $0x2,%r12
  80ad35:	4c 3b 65 d0          	cmp    -0x30(%rbp),%r12
  80ad39:	0f 82 04 ff ff ff    	jb     80ac43 <t3dmix_mod_mp_t3dmix4_tile_+0x2da3>
  80ad3f:	48 8b 85 08 fc ff ff 	mov    -0x3f8(%rbp),%rax
  80ad46:	48 8b 95 00 fc ff ff 	mov    -0x400(%rbp),%rdx
  80ad4d:	4c 8b 9d 38 ff ff ff 	mov    -0xc8(%rbp),%r11
  80ad54:	4c 8b 95 18 ff ff ff 	mov    -0xe8(%rbp),%r10
  80ad5b:	4c 8b 8d 20 ff ff ff 	mov    -0xe0(%rbp),%r9
  80ad62:	4c 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8
  80ad69:	4c 8b ad 10 ff ff ff 	mov    -0xf0(%rbp),%r13
  80ad70:	4c 8b a5 28 ff ff ff 	mov    -0xd8(%rbp),%r12
  80ad77:	4c 0f af d8          	imul   %rax,%r11
  80ad7b:	4c 0f af d0          	imul   %rax,%r10
  80ad7f:	4c 0f af c8          	imul   %rax,%r9
  80ad83:	4c 0f af c0          	imul   %rax,%r8
  80ad87:	4c 0f af e8          	imul   %rax,%r13
  80ad8b:	4c 0f af e0          	imul   %rax,%r12
  80ad8f:	48 3b 85 50 ff ff ff 	cmp    -0xb0(%rbp),%rax
  80ad96:	0f 83 fe 00 00 00    	jae    80ae9a <t3dmix_mod_mp_t3dmix4_tile_+0x2ffa>
  80ad9c:	4c 8b bd c0 fb ff ff 	mov    -0x440(%rbp),%r15
  80ada3:	48 89 95 00 fc ff ff 	mov    %rdx,-0x400(%rbp)
  80adaa:	4d 8d 34 17          	lea    (%r15,%rdx,1),%r14
  80adae:	4c 8b bd e0 fb ff ff 	mov    -0x420(%rbp),%r15
  80adb5:	4c 89 b5 60 ff ff ff 	mov    %r14,-0xa0(%rbp)
  80adbc:	4d 8d 34 17          	lea    (%r15,%rdx,1),%r14
  80adc0:	4c 89 b5 f0 fb ff ff 	mov    %r14,-0x410(%rbp)
  80adc7:	4c 8b bd e8 fb ff ff 	mov    -0x418(%rbp),%r15
  80adce:	4c 8b b5 08 fe ff ff 	mov    -0x1f8(%rbp),%r14
  80add5:	4d 03 fe             	add    %r14,%r15
  80add8:	4c 89 bd f8 fb ff ff 	mov    %r15,-0x408(%rbp)
  80addf:	4c 8b bd d8 fb ff ff 	mov    -0x428(%rbp),%r15
  80ade6:	48 8b 95 f8 fb ff ff 	mov    -0x408(%rbp),%rdx
  80aded:	4d 03 f7             	add    %r15,%r14
  80adf0:	4c 89 b5 58 ff ff ff 	mov    %r14,-0xa8(%rbp)
  80adf7:	4c 8b b5 f0 fb ff ff 	mov    -0x410(%rbp),%r14
  80adfe:	4c 8b bd 68 ff ff ff 	mov    -0x98(%rbp),%r15
  80ae05:	c4 41 7b 10 04 13    	vmovsd (%r11,%rdx,1),%xmm8
  80ae0b:	c4 81 73 59 14 3c    	vmulsd (%r12,%r15,1),%xmm1,%xmm2
  80ae11:	4c 8b bd 70 ff ff ff 	mov    -0x90(%rbp),%r15
  80ae18:	4c 03 a5 28 ff ff ff 	add    -0xd8(%rbp),%r12
  80ae1f:	c4 81 6b 59 1c 39    	vmulsd (%r9,%r15,1),%xmm2,%xmm3
  80ae25:	c4 c1 63 59 64 3d 00 	vmulsd 0x0(%r13,%rdi,1),%xmm3,%xmm4
  80ae2c:	4c 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%r15
  80ae33:	c4 c1 5b 59 34 08    	vmulsd (%r8,%rcx,1),%xmm4,%xmm6
  80ae39:	c4 81 7b 10 2c 3a    	vmovsd (%r10,%r15,1),%xmm5
  80ae3f:	4c 8b bd 58 ff ff ff 	mov    -0xa8(%rbp),%r15
  80ae46:	4c 03 ad 10 ff ff ff 	add    -0xf0(%rbp),%r13
  80ae4d:	4c 03 85 08 ff ff ff 	add    -0xf8(%rbp),%r8
  80ae54:	4c 03 8d 20 ff ff ff 	add    -0xe0(%rbp),%r9
  80ae5b:	c4 81 53 58 3c 32    	vaddsd (%r10,%r14,1),%xmm5,%xmm7
  80ae61:	c4 01 3b 5c 14 3b    	vsubsd (%r11,%r15,1),%xmm8,%xmm10
  80ae67:	c5 4b 59 cf          	vmulsd %xmm7,%xmm6,%xmm9
  80ae6b:	c4 41 33 59 da       	vmulsd %xmm10,%xmm9,%xmm11
  80ae70:	c5 7b 11 1c c6       	vmovsd %xmm11,(%rsi,%rax,8)
  80ae75:	48 ff c0             	inc    %rax
  80ae78:	4c 03 95 18 ff ff ff 	add    -0xe8(%rbp),%r10
  80ae7f:	4c 03 9d 38 ff ff ff 	add    -0xc8(%rbp),%r11
  80ae86:	48 3b 85 50 ff ff ff 	cmp    -0xb0(%rbp),%rax
  80ae8d:	0f 82 6b ff ff ff    	jb     80adfe <t3dmix_mod_mp_t3dmix4_tile_+0x2f5e>
  80ae93:	48 8b 95 00 fc ff ff 	mov    -0x400(%rbp),%rdx
  80ae9a:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  80aea1:	4c 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%r8
  80aea8:	4c 8b 8d 08 fe ff ff 	mov    -0x1f8(%rbp),%r9
  80aeaf:	4c 8b 95 18 fe ff ff 	mov    -0x1e8(%rbp),%r10
  80aeb6:	49 ff c2             	inc    %r10
  80aeb9:	48 03 85 e8 fd ff ff 	add    -0x218(%rbp),%rax
  80aec0:	4c 03 85 e0 fd ff ff 	add    -0x220(%rbp),%r8
  80aec7:	4c 03 8d f0 fd ff ff 	add    -0x210(%rbp),%r9
  80aece:	48 03 b5 40 fe ff ff 	add    -0x1c0(%rbp),%rsi
  80aed5:	48 03 bd d0 fd ff ff 	add    -0x230(%rbp),%rdi
  80aedc:	48 03 8d c8 fd ff ff 	add    -0x238(%rbp),%rcx
  80aee3:	48 03 95 d8 fd ff ff 	add    -0x228(%rbp),%rdx
  80aeea:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  80aef1:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  80aef8:	4c 89 8d 08 fe ff ff 	mov    %r9,-0x1f8(%rbp)
  80aeff:	4c 89 95 18 fe ff ff 	mov    %r10,-0x1e8(%rbp)
  80af06:	4c 3b 95 30 fe ff ff 	cmp    -0x1d0(%rbp),%r10
  80af0d:	0f 82 a9 fc ff ff    	jb     80abbc <t3dmix_mod_mp_t3dmix4_tile_+0x2d1c>
  80af13:	4c 8b ad d8 f8 ff ff 	mov    -0x728(%rbp),%r13
  80af1a:	4c 8b b5 e0 f8 ff ff 	mov    -0x720(%rbp),%r14
  80af21:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  80af28:	48 83 bd 18 ff ff ff 	cmpq   $0x8,-0xe8(%rbp)
  80af2f:	08 
  80af30:	0f 85 ce 01 00 00    	jne    80b104 <t3dmix_mod_mp_t3dmix4_tile_+0x3264>
  80af36:	48 83 bd 30 ff ff ff 	cmpq   $0x8,-0xd0(%rbp)
  80af3d:	08 
  80af3e:	0f 85 c0 01 00 00    	jne    80b104 <t3dmix_mod_mp_t3dmix4_tile_+0x3264>
  80af44:	48 83 bd 40 ff ff ff 	cmpq   $0x8,-0xc0(%rbp)
  80af4b:	08 
  80af4c:	0f 85 b2 01 00 00    	jne    80b104 <t3dmix_mod_mp_t3dmix4_tile_+0x3264>
  80af52:	8b 85 20 fa ff ff    	mov    -0x5e0(%rbp),%eax
  80af58:	33 ff                	xor    %edi,%edi
  80af5a:	4c 8b 8d 10 f3 ff ff 	mov    -0xcf0(%rbp),%r9
  80af61:	33 f6                	xor    %esi,%esi
  80af63:	4c 8b 85 18 f3 ff ff 	mov    -0xce8(%rbp),%r8
  80af6a:	3b 85 18 fa ff ff    	cmp    -0x5e8(%rbp),%eax
  80af70:	0f 8c 69 04 00 00    	jl     80b3df <t3dmix_mod_mp_t3dmix4_tile_+0x353f>
  80af76:	48 8b 8d f0 f8 ff ff 	mov    -0x710(%rbp),%rcx
  80af7d:	49 0f af cc          	imul   %r12,%rcx
  80af81:	c5 fd 10 0d f7 9f 0b 	vmovupd 0xb9ff7(%rip),%ymm1        # 8c4f80 <var$630.126.450+0xc0>
  80af88:	00 
  80af89:	c5 fb 10 05 6f c2 0b 	vmovsd 0xbc26f(%rip),%xmm0        # 8c7200 <__STRLITPACK_199.115+0x70>
  80af90:	00 
  80af91:	48 03 8d 38 f9 ff ff 	add    -0x6c8(%rbp),%rcx
  80af98:	48 8b 95 50 ff ff ff 	mov    -0xb0(%rbp),%rdx
  80af9f:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80afa6:	8b 85 a0 fd ff ff    	mov    -0x260(%rbp),%eax
  80afac:	3b 85 98 fd ff ff    	cmp    -0x268(%rbp),%eax
  80afb2:	0f 8c 1b 01 00 00    	jl     80b0d3 <t3dmix_mod_mp_t3dmix4_tile_+0x3233>
  80afb8:	48 83 fa 04          	cmp    $0x4,%rdx
  80afbc:	0f 8c f5 1e 00 00    	jl     80ceb7 <t3dmix_mod_mp_t3dmix4_tile_+0x5017>
  80afc2:	4c 8b b5 e0 fc ff ff 	mov    -0x320(%rbp),%r14
  80afc9:	45 33 ff             	xor    %r15d,%r15d
  80afcc:	4c 8b ad d8 fc ff ff 	mov    -0x328(%rbp),%r13
  80afd3:	4c 8b a5 c8 fc ff ff 	mov    -0x338(%rbp),%r12
  80afda:	4c 8b 9d d0 fc ff ff 	mov    -0x330(%rbp),%r11
  80afe1:	4c 03 f6             	add    %rsi,%r14
  80afe4:	4c 8b 95 f0 fc ff ff 	mov    -0x310(%rbp),%r10
  80afeb:	4c 03 ee             	add    %rsi,%r13
  80afee:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  80aff2:	4c 03 e6             	add    %rsi,%r12
  80aff5:	48 89 c2             	mov    %rax,%rdx
  80aff8:	4c 03 de             	add    %rsi,%r11
  80affb:	4c 03 d6             	add    %rsi,%r10
  80affe:	66 90                	xchg   %ax,%ax
  80b000:	c4 a1 75 5e 1c f9    	vdivpd (%rcx,%r15,8),%ymm1,%ymm3
  80b006:	c4 81 7d 10 14 f9    	vmovupd (%r9,%r15,8),%ymm2
  80b00c:	c4 81 7d 10 6c fd 08 	vmovupd 0x8(%r13,%r15,8),%ymm5
  80b013:	c4 81 6d 59 24 f8    	vmulpd (%r8,%r15,8),%ymm2,%ymm4
  80b019:	c4 81 55 5c 34 fa    	vsubpd (%r10,%r15,8),%ymm5,%ymm6
  80b01f:	c5 65 59 c4          	vmulpd %ymm4,%ymm3,%ymm8
  80b023:	c4 81 4d 58 7c fe 08 	vaddpd 0x8(%r14,%r15,8),%ymm6,%ymm7
  80b02a:	c4 01 45 5c 0c fb    	vsubpd (%r11,%r15,8),%ymm7,%ymm9
  80b030:	c4 41 3d 59 d1       	vmulpd %ymm9,%ymm8,%ymm10
  80b035:	c4 01 7d 11 14 fc    	vmovupd %ymm10,(%r12,%r15,8)
  80b03b:	49 83 c7 04          	add    $0x4,%r15
  80b03f:	4c 3b fa             	cmp    %rdx,%r15
  80b042:	72 bc                	jb     80b000 <t3dmix_mod_mp_t3dmix4_tile_+0x3160>
  80b044:	48 8b 95 50 ff ff ff 	mov    -0xb0(%rbp),%rdx
  80b04b:	48 3b c2             	cmp    %rdx,%rax
  80b04e:	0f 83 7f 00 00 00    	jae    80b0d3 <t3dmix_mod_mp_t3dmix4_tile_+0x3233>
  80b054:	4c 8b a5 e0 fc ff ff 	mov    -0x320(%rbp),%r12
  80b05b:	4c 8b 9d d8 fc ff ff 	mov    -0x328(%rbp),%r11
  80b062:	4c 8b 95 c8 fc ff ff 	mov    -0x338(%rbp),%r10
  80b069:	4c 8b b5 d0 fc ff ff 	mov    -0x330(%rbp),%r14
  80b070:	4c 03 e6             	add    %rsi,%r12
  80b073:	4c 8b ad f0 fc ff ff 	mov    -0x310(%rbp),%r13
  80b07a:	4c 03 de             	add    %rsi,%r11
  80b07d:	4c 03 d6             	add    %rsi,%r10
  80b080:	4c 03 f6             	add    %rsi,%r14
  80b083:	4c 03 ee             	add    %rsi,%r13
  80b086:	0f 1f 00             	nopl   (%rax)
  80b089:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  80b090:	c5 fb 5e 24 c1       	vdivsd (%rcx,%rax,8),%xmm0,%xmm4
  80b095:	c4 c1 7b 10 6c c3 08 	vmovsd 0x8(%r11,%rax,8),%xmm5
  80b09c:	c4 c1 7b 10 14 c1    	vmovsd (%r9,%rax,8),%xmm2
  80b0a2:	c4 c1 6b 59 1c c0    	vmulsd (%r8,%rax,8),%xmm2,%xmm3
  80b0a8:	c4 c1 53 5c 74 c5 00 	vsubsd 0x0(%r13,%rax,8),%xmm5,%xmm6
  80b0af:	c5 63 59 c4          	vmulsd %xmm4,%xmm3,%xmm8
  80b0b3:	c4 c1 4b 58 7c c4 08 	vaddsd 0x8(%r12,%rax,8),%xmm6,%xmm7
  80b0ba:	c4 41 43 5c 0c c6    	vsubsd (%r14,%rax,8),%xmm7,%xmm9
  80b0c0:	c4 41 3b 59 d1       	vmulsd %xmm9,%xmm8,%xmm10
  80b0c5:	c4 41 7b 11 14 c2    	vmovsd %xmm10,(%r10,%rax,8)
  80b0cb:	48 ff c0             	inc    %rax
  80b0ce:	48 3b c2             	cmp    %rdx,%rax
  80b0d1:	72 bd                	jb     80b090 <t3dmix_mod_mp_t3dmix4_tile_+0x31f0>
  80b0d3:	48 ff c7             	inc    %rdi
  80b0d6:	48 03 b5 40 fe ff ff 	add    -0x1c0(%rbp),%rsi
  80b0dd:	48 03 8d d8 fd ff ff 	add    -0x228(%rbp),%rcx
  80b0e4:	4c 03 8d 00 fe ff ff 	add    -0x200(%rbp),%r9
  80b0eb:	4c 03 85 f8 fd ff ff 	add    -0x208(%rbp),%r8
  80b0f2:	48 3b bd 48 fe ff ff 	cmp    -0x1b8(%rbp),%rdi
  80b0f9:	0f 82 a7 fe ff ff    	jb     80afa6 <t3dmix_mod_mp_t3dmix4_tile_+0x3106>
  80b0ff:	e9 c6 02 00 00       	jmpq   80b3ca <t3dmix_mod_mp_t3dmix4_tile_+0x352a>
  80b104:	8b 85 20 fa ff ff    	mov    -0x5e0(%rbp),%eax
  80b10a:	33 ff                	xor    %edi,%edi
  80b10c:	48 8b 8d 50 fa ff ff 	mov    -0x5b0(%rbp),%rcx
  80b113:	33 d2                	xor    %edx,%edx
  80b115:	48 8b b5 30 fa ff ff 	mov    -0x5d0(%rbp),%rsi
  80b11c:	3b 85 18 fa ff ff    	cmp    -0x5e8(%rbp),%eax
  80b122:	0f 8c b7 02 00 00    	jl     80b3df <t3dmix_mod_mp_t3dmix4_tile_+0x353f>
  80b128:	48 8b 85 f0 f8 ff ff 	mov    -0x710(%rbp),%rax
  80b12f:	49 0f af c4          	imul   %r12,%rax
  80b133:	c5 fd 10 1d 45 9e 0b 	vmovupd 0xb9e45(%rip),%ymm3        # 8c4f80 <var$630.126.450+0xc0>
  80b13a:	00 
  80b13b:	c5 fb 10 15 bd c0 0b 	vmovsd 0xbc0bd(%rip),%xmm2        # 8c7200 <__STRLITPACK_199.115+0x70>
  80b142:	00 
  80b143:	48 03 85 40 f9 ff ff 	add    -0x6c0(%rbp),%rax
  80b14a:	48 89 bd 10 fe ff ff 	mov    %rdi,-0x1f0(%rbp)
  80b151:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80b158:	8b bd a0 fd ff ff    	mov    -0x260(%rbp),%edi
  80b15e:	3b bd 98 fd ff ff    	cmp    -0x268(%rbp),%edi
  80b164:	0f 8c 26 02 00 00    	jl     80b390 <t3dmix_mod_mp_t3dmix4_tile_+0x34f0>
  80b16a:	48 83 bd 50 ff ff ff 	cmpq   $0x4,-0xb0(%rbp)
  80b171:	04 
  80b172:	0f 8c 2b 1f 00 00    	jl     80d0a3 <t3dmix_mod_mp_t3dmix4_tile_+0x5203>
  80b178:	48 8b bd f0 fc ff ff 	mov    -0x310(%rbp),%rdi
  80b17f:	45 33 ed             	xor    %r13d,%r13d
  80b182:	4c 8b a5 e0 fc ff ff 	mov    -0x320(%rbp),%r12
  80b189:	4c 8b 9d d8 fc ff ff 	mov    -0x328(%rbp),%r11
  80b190:	4c 8b 95 c8 fc ff ff 	mov    -0x338(%rbp),%r10
  80b197:	4c 8d 04 17          	lea    (%rdi,%rdx,1),%r8
  80b19b:	4c 8b 8d d0 fc ff ff 	mov    -0x330(%rbp),%r9
  80b1a2:	33 ff                	xor    %edi,%edi
  80b1a4:	45 33 f6             	xor    %r14d,%r14d
  80b1a7:	4c 03 e2             	add    %rdx,%r12
  80b1aa:	4c 8b 7d d8          	mov    -0x28(%rbp),%r15
  80b1ae:	4c 03 da             	add    %rdx,%r11
  80b1b1:	4c 03 d2             	add    %rdx,%r10
  80b1b4:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  80b1bb:	4c 03 ca             	add    %rdx,%r9
  80b1be:	4c 89 bd d0 fb ff ff 	mov    %r15,-0x430(%rbp)
  80b1c5:	48 89 95 c8 fb ff ff 	mov    %rdx,-0x438(%rbp)
  80b1cc:	4c 89 f0             	mov    %r14,%rax
  80b1cf:	4c 8b bd 48 ff ff ff 	mov    -0xb8(%rbp),%r15
  80b1d6:	48 8b 95 18 ff ff ff 	mov    -0xe8(%rbp),%rdx
  80b1dd:	c4 81 7d 10 64 eb 08 	vmovupd 0x8(%r11,%r13,8),%ymm4
  80b1e4:	c4 81 5d 5c 2c e8    	vsubpd (%r8,%r13,8),%ymm4,%ymm5
  80b1ea:	4c 03 ff             	add    %rdi,%r15
  80b1ed:	c4 c1 7b 10 3f       	vmovsd (%r15),%xmm7
  80b1f2:	c4 41 41 16 0c 17    	vmovhpd (%r15,%rdx,1),%xmm7,%xmm9
  80b1f8:	c4 81 55 58 74 ec 08 	vaddpd 0x8(%r12,%r13,8),%ymm5,%ymm6
  80b1ff:	4d 8d 3c 57          	lea    (%r15,%rdx,2),%r15
  80b203:	c4 41 7b 10 07       	vmovsd (%r15),%xmm8
  80b208:	c4 41 39 16 14 17    	vmovhpd (%r15,%rdx,1),%xmm8,%xmm10
  80b20e:	4c 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%r15
  80b215:	48 8d 3c 97          	lea    (%rdi,%rdx,4),%rdi
  80b219:	c4 81 4d 5c 0c e9    	vsubpd (%r9,%r13,8),%ymm6,%ymm1
  80b21f:	4a 8d 14 31          	lea    (%rcx,%r14,1),%rdx
  80b223:	c5 7b 10 22          	vmovsd (%rdx),%xmm12
  80b227:	c4 21 19 16 34 3a    	vmovhpd (%rdx,%r15,1),%xmm12,%xmm14
  80b22d:	4a 8d 14 7a          	lea    (%rdx,%r15,2),%rdx
  80b231:	c5 7b 10 2a          	vmovsd (%rdx),%xmm13
  80b235:	4f 8d 34 be          	lea    (%r14,%r15,4),%r14
  80b239:	c4 21 11 16 3c 3a    	vmovhpd (%rdx,%r15,1),%xmm13,%xmm15
  80b23f:	4c 8d 3c 06          	lea    (%rsi,%rax,1),%r15
  80b243:	48 8b 95 40 ff ff ff 	mov    -0xc0(%rbp),%rdx
  80b24a:	c4 c1 7b 10 27       	vmovsd (%r15),%xmm4
  80b24f:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
  80b253:	c4 43 35 18 da 01    	vinsertf128 $0x1,%xmm10,%ymm9,%ymm11
  80b259:	c4 c1 65 5e c3       	vdivpd %ymm11,%ymm3,%ymm0
  80b25e:	c4 c1 59 16 34 17    	vmovhpd (%r15,%rdx,1),%xmm4,%xmm6
  80b264:	4d 8d 3c 57          	lea    (%r15,%rdx,2),%r15
  80b268:	c4 c1 7b 10 2f       	vmovsd (%r15),%xmm5
  80b26d:	c4 c1 51 16 3c 17    	vmovhpd (%r15,%rdx,1),%xmm5,%xmm7
  80b273:	c4 43 0d 18 c7 01    	vinsertf128 $0x1,%xmm15,%ymm14,%ymm8
  80b279:	c4 63 4d 18 cf 01    	vinsertf128 $0x1,%xmm7,%ymm6,%ymm9
  80b27f:	c4 41 3d 59 d1       	vmulpd %ymm9,%ymm8,%ymm10
  80b284:	c4 c1 7d 59 c2       	vmulpd %ymm10,%ymm0,%ymm0
  80b289:	c5 fd 59 c9          	vmulpd %ymm1,%ymm0,%ymm1
  80b28d:	c4 81 7d 11 0c ea    	vmovupd %ymm1,(%r10,%r13,8)
  80b293:	49 83 c5 04          	add    $0x4,%r13
  80b297:	4c 3b 6d d8          	cmp    -0x28(%rbp),%r13
  80b29b:	0f 82 2e ff ff ff    	jb     80b1cf <t3dmix_mod_mp_t3dmix4_tile_+0x332f>
  80b2a1:	4c 8b bd d0 fb ff ff 	mov    -0x430(%rbp),%r15
  80b2a8:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  80b2af:	48 8b 95 c8 fb ff ff 	mov    -0x438(%rbp),%rdx
  80b2b6:	4c 8b ad 40 ff ff ff 	mov    -0xc0(%rbp),%r13
  80b2bd:	4c 8b b5 30 ff ff ff 	mov    -0xd0(%rbp),%r14
  80b2c4:	4c 8b a5 18 ff ff ff 	mov    -0xe8(%rbp),%r12
  80b2cb:	4d 0f af ef          	imul   %r15,%r13
  80b2cf:	4d 0f af f7          	imul   %r15,%r14
  80b2d3:	4d 0f af e7          	imul   %r15,%r12
  80b2d7:	4c 3b bd 50 ff ff ff 	cmp    -0xb0(%rbp),%r15
  80b2de:	0f 83 ac 00 00 00    	jae    80b390 <t3dmix_mod_mp_t3dmix4_tile_+0x34f0>
  80b2e4:	4c 8b 9d e0 fc ff ff 	mov    -0x320(%rbp),%r11
  80b2eb:	4c 8b 95 d8 fc ff ff 	mov    -0x328(%rbp),%r10
  80b2f2:	4c 8b 8d c8 fc ff ff 	mov    -0x338(%rbp),%r9
  80b2f9:	4c 8b 85 d0 fc ff ff 	mov    -0x330(%rbp),%r8
  80b300:	4c 03 da             	add    %rdx,%r11
  80b303:	48 8b bd f0 fc ff ff 	mov    -0x310(%rbp),%rdi
  80b30a:	4c 03 d2             	add    %rdx,%r10
  80b30d:	48 89 95 c8 fb ff ff 	mov    %rdx,-0x438(%rbp)
  80b314:	4c 03 ca             	add    %rdx,%r9
  80b317:	4c 03 c2             	add    %rdx,%r8
  80b31a:	48 03 fa             	add    %rdx,%rdi
  80b31d:	48 8b 95 30 ff ff ff 	mov    -0xd0(%rbp),%rdx
  80b324:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  80b329:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  80b330:	c4 c1 6b 5e 24 04    	vdivsd (%r12,%rax,1),%xmm2,%xmm4
  80b336:	c4 81 7b 10 6c fa 08 	vmovsd 0x8(%r10,%r15,8),%xmm5
  80b33d:	c4 c1 7b 10 04 0e    	vmovsd (%r14,%rcx,1),%xmm0
  80b343:	4c 03 f2             	add    %rdx,%r14
  80b346:	c4 c1 7b 59 4c 35 00 	vmulsd 0x0(%r13,%rsi,1),%xmm0,%xmm1
  80b34d:	c4 a1 53 5c 34 ff    	vsubsd (%rdi,%r15,8),%xmm5,%xmm6
  80b353:	c5 73 59 c4          	vmulsd %xmm4,%xmm1,%xmm8
  80b357:	c4 81 4b 58 7c fb 08 	vaddsd 0x8(%r11,%r15,8),%xmm6,%xmm7
  80b35e:	4c 03 a5 18 ff ff ff 	add    -0xe8(%rbp),%r12
  80b365:	4c 03 ad 40 ff ff ff 	add    -0xc0(%rbp),%r13
  80b36c:	c4 01 43 5c 0c f8    	vsubsd (%r8,%r15,8),%xmm7,%xmm9
  80b372:	c4 41 3b 59 d1       	vmulsd %xmm9,%xmm8,%xmm10
  80b377:	c4 01 7b 11 14 f9    	vmovsd %xmm10,(%r9,%r15,8)
  80b37d:	49 ff c7             	inc    %r15
  80b380:	4c 3b bd 50 ff ff ff 	cmp    -0xb0(%rbp),%r15
  80b387:	72 a7                	jb     80b330 <t3dmix_mod_mp_t3dmix4_tile_+0x3490>
  80b389:	48 8b 95 c8 fb ff ff 	mov    -0x438(%rbp),%rdx
  80b390:	48 8b bd 10 fe ff ff 	mov    -0x1f0(%rbp),%rdi
  80b397:	48 ff c7             	inc    %rdi
  80b39a:	48 03 95 40 fe ff ff 	add    -0x1c0(%rbp),%rdx
  80b3a1:	48 03 85 d8 fd ff ff 	add    -0x228(%rbp),%rax
  80b3a8:	48 03 8d 00 fe ff ff 	add    -0x200(%rbp),%rcx
  80b3af:	48 03 b5 f8 fd ff ff 	add    -0x208(%rbp),%rsi
  80b3b6:	48 89 bd 10 fe ff ff 	mov    %rdi,-0x1f0(%rbp)
  80b3bd:	48 3b bd 48 fe ff ff 	cmp    -0x1b8(%rbp),%rdi
  80b3c4:	0f 82 8e fd ff ff    	jb     80b158 <t3dmix_mod_mp_t3dmix4_tile_+0x32b8>
  80b3ca:	4c 8b ad d8 f8 ff ff 	mov    -0x728(%rbp),%r13
  80b3d1:	4c 8b b5 e0 f8 ff ff 	mov    -0x720(%rbp),%r14
  80b3d8:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  80b3df:	43 f6 44 35 04 01    	testb  $0x1,0x4(%r13,%r14,1)
  80b3e5:	0f 85 95 01 00 00    	jne    80b580 <t3dmix_mod_mp_t3dmix4_tile_+0x36e0>
  80b3eb:	48 8b 95 58 fa ff ff 	mov    -0x5a8(%rbp),%rdx
  80b3f2:	48 8b 85 68 fa ff ff 	mov    -0x598(%rbp),%rax
  80b3f9:	f6 04 10 01          	testb  $0x1,(%rax,%rdx,1)
  80b3fd:	0f 85 7d 01 00 00    	jne    80b580 <t3dmix_mod_mp_t3dmix4_tile_+0x36e0>
  80b403:	48 8b 95 60 f8 ff ff 	mov    -0x7a0(%rbp),%rdx
  80b40a:	48 8b 85 58 f8 ff ff 	mov    -0x7a8(%rbp),%rax
  80b411:	48 8b b4 10 88 00 00 	mov    0x88(%rax,%rdx,1),%rsi
  80b418:	00 
  80b419:	48 f7 de             	neg    %rsi
  80b41c:	48 03 b5 50 f8 ff ff 	add    -0x7b0(%rbp),%rsi
  80b423:	48 0f af b4 10 80 00 	imul   0x80(%rax,%rdx,1),%rsi
  80b42a:	00 00 
  80b42c:	48 8b 4c 10 48       	mov    0x48(%rax,%rdx,1),%rcx
  80b431:	f6 04 31 01          	testb  $0x1,(%rcx,%rsi,1)
  80b435:	0f 84 45 01 00 00    	je     80b580 <t3dmix_mod_mp_t3dmix4_tile_+0x36e0>
  80b43b:	48 8b 85 18 f8 ff ff 	mov    -0x7e8(%rbp),%rax
  80b442:	48 8b 95 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdx
  80b449:	48 8b b5 20 f8 ff ff 	mov    -0x7e0(%rbp),%rsi
  80b450:	48 63 0c 90          	movslq (%rax,%rdx,4),%rcx
  80b454:	48 0f af 8d 10 f8 ff 	imul   -0x7f0(%rbp),%rcx
  80b45b:	ff 
  80b45c:	f6 44 31 44 01       	testb  $0x1,0x44(%rcx,%rsi,1)
  80b461:	0f 84 8c 00 00 00    	je     80b4f3 <t3dmix_mod_mp_t3dmix4_tile_+0x3653>
  80b467:	8b 85 20 fa ff ff    	mov    -0x5e0(%rbp),%eax
  80b46d:	3b 85 18 fa ff ff    	cmp    -0x5e8(%rbp),%eax
  80b473:	0f 8c 07 01 00 00    	jl     80b580 <t3dmix_mod_mp_t3dmix4_tile_+0x36e0>
  80b479:	b9 01 00 00 00       	mov    $0x1,%ecx
  80b47e:	33 d2                	xor    %edx,%edx
  80b480:	33 c0                	xor    %eax,%eax
  80b482:	83 bd c8 f7 ff ff 00 	cmpl   $0x0,-0x838(%rbp)
  80b489:	74 39                	je     80b4c4 <t3dmix_mod_mp_t3dmix4_tile_+0x3624>
  80b48b:	48 8b 8d 58 f7 ff ff 	mov    -0x8a8(%rbp),%rcx
  80b492:	45 33 c9             	xor    %r9d,%r9d
  80b495:	48 8b b5 70 f7 ff ff 	mov    -0x890(%rbp),%rsi
  80b49c:	48 8b bd 80 f7 ff ff 	mov    -0x880(%rbp),%rdi
  80b4a3:	4c 8b 85 68 f7 ff ff 	mov    -0x898(%rbp),%r8
  80b4aa:	48 ff c2             	inc    %rdx
  80b4ad:	4c 89 4c 30 f8       	mov    %r9,-0x8(%rax,%rsi,1)
  80b4b2:	4c 89 0c 38          	mov    %r9,(%rax,%rdi,1)
  80b4b6:	4a 8d 44 00 10       	lea    0x10(%rax,%r8,1),%rax
  80b4bb:	48 3b d1             	cmp    %rcx,%rdx
  80b4be:	72 ea                	jb     80b4aa <t3dmix_mod_mp_t3dmix4_tile_+0x360a>
  80b4c0:	8d 4c 12 01          	lea    0x1(%rdx,%rdx,1),%ecx
  80b4c4:	8d 41 ff             	lea    -0x1(%rcx),%eax
  80b4c7:	3b 85 a8 f7 ff ff    	cmp    -0x858(%rbp),%eax
  80b4cd:	0f 83 ad 00 00 00    	jae    80b580 <t3dmix_mod_mp_t3dmix4_tile_+0x36e0>
  80b4d3:	48 63 c9             	movslq %ecx,%rcx
  80b4d6:	48 0f af 8d 40 fe ff 	imul   -0x1c0(%rbp),%rcx
  80b4dd:	ff 
  80b4de:	48 8b 85 88 f7 ff ff 	mov    -0x878(%rbp),%rax
  80b4e5:	48 c7 44 01 f0 00 00 	movq   $0x0,-0x10(%rcx,%rax,1)
  80b4ec:	00 00 
  80b4ee:	e9 8d 00 00 00       	jmpq   80b580 <t3dmix_mod_mp_t3dmix4_tile_+0x36e0>
  80b4f3:	8b 85 20 fa ff ff    	mov    -0x5e0(%rbp),%eax
  80b4f9:	3b 85 18 fa ff ff    	cmp    -0x5e8(%rbp),%eax
  80b4ff:	7c 7f                	jl     80b580 <t3dmix_mod_mp_t3dmix4_tile_+0x36e0>
  80b501:	b9 01 00 00 00       	mov    $0x1,%ecx
  80b506:	33 d2                	xor    %edx,%edx
  80b508:	33 c0                	xor    %eax,%eax
  80b50a:	83 bd c8 f7 ff ff 00 	cmpl   $0x0,-0x838(%rbp)
  80b511:	74 46                	je     80b559 <t3dmix_mod_mp_t3dmix4_tile_+0x36b9>
  80b513:	48 8b bd 58 f7 ff ff 	mov    -0x8a8(%rbp),%rdi
  80b51a:	4c 8b 85 70 f7 ff ff 	mov    -0x890(%rbp),%r8
  80b521:	4c 8b 8d 60 f7 ff ff 	mov    -0x8a0(%rbp),%r9
  80b528:	4c 8b 95 80 f7 ff ff 	mov    -0x880(%rbp),%r10
  80b52f:	4c 8b 9d 68 f7 ff ff 	mov    -0x898(%rbp),%r11
  80b536:	48 ff c2             	inc    %rdx
  80b539:	4a 8b 0c 08          	mov    (%rax,%r9,1),%rcx
  80b53d:	4a 8b 74 10 08       	mov    0x8(%rax,%r10,1),%rsi
  80b542:	4a 89 4c 00 f8       	mov    %rcx,-0x8(%rax,%r8,1)
  80b547:	4a 89 34 10          	mov    %rsi,(%rax,%r10,1)
  80b54b:	4a 8d 44 18 10       	lea    0x10(%rax,%r11,1),%rax
  80b550:	48 3b d7             	cmp    %rdi,%rdx
  80b553:	72 e1                	jb     80b536 <t3dmix_mod_mp_t3dmix4_tile_+0x3696>
  80b555:	8d 4c 12 01          	lea    0x1(%rdx,%rdx,1),%ecx
  80b559:	8d 41 ff             	lea    -0x1(%rcx),%eax
  80b55c:	3b 85 a8 f7 ff ff    	cmp    -0x858(%rbp),%eax
  80b562:	73 1c                	jae    80b580 <t3dmix_mod_mp_t3dmix4_tile_+0x36e0>
  80b564:	48 63 c9             	movslq %ecx,%rcx
  80b567:	48 0f af 8d 40 fe ff 	imul   -0x1c0(%rbp),%rcx
  80b56e:	ff 
  80b56f:	48 8b 95 88 f7 ff ff 	mov    -0x878(%rbp),%rdx
  80b576:	48 8b 44 11 f8       	mov    -0x8(%rcx,%rdx,1),%rax
  80b57b:	48 89 44 11 f0       	mov    %rax,-0x10(%rcx,%rdx,1)
  80b580:	43 f6 44 35 0c 01    	testb  $0x1,0xc(%r13,%r14,1)
  80b586:	0f 85 91 01 00 00    	jne    80b71d <t3dmix_mod_mp_t3dmix4_tile_+0x387d>
  80b58c:	48 8b 95 58 fa ff ff 	mov    -0x5a8(%rbp),%rdx
  80b593:	48 8b 85 68 fa ff ff 	mov    -0x598(%rbp),%rax
  80b59a:	f6 04 10 01          	testb  $0x1,(%rax,%rdx,1)
  80b59e:	0f 85 79 01 00 00    	jne    80b71d <t3dmix_mod_mp_t3dmix4_tile_+0x387d>
  80b5a4:	48 8b 95 60 f8 ff ff 	mov    -0x7a0(%rbp),%rdx
  80b5ab:	48 8b 85 58 f8 ff ff 	mov    -0x7a8(%rbp),%rax
  80b5b2:	48 8b 74 10 40       	mov    0x40(%rax,%rdx,1),%rsi
  80b5b7:	48 f7 de             	neg    %rsi
  80b5ba:	48 03 b5 50 f8 ff ff 	add    -0x7b0(%rbp),%rsi
  80b5c1:	48 0f af 74 10 38    	imul   0x38(%rax,%rdx,1),%rsi
  80b5c7:	48 8b 0c 10          	mov    (%rax,%rdx,1),%rcx
  80b5cb:	f6 04 31 01          	testb  $0x1,(%rcx,%rsi,1)
  80b5cf:	0f 84 48 01 00 00    	je     80b71d <t3dmix_mod_mp_t3dmix4_tile_+0x387d>
  80b5d5:	48 8b 85 18 f8 ff ff 	mov    -0x7e8(%rbp),%rax
  80b5dc:	48 8b 95 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdx
  80b5e3:	48 8b b5 20 f8 ff ff 	mov    -0x7e0(%rbp),%rsi
  80b5ea:	48 63 0c 90          	movslq (%rax,%rdx,4),%rcx
  80b5ee:	48 0f af 8d 10 f8 ff 	imul   -0x7f0(%rbp),%rcx
  80b5f5:	ff 
  80b5f6:	f6 84 31 ac 00 00 00 	testb  $0x1,0xac(%rcx,%rsi,1)
  80b5fd:	01 
  80b5fe:	0f 84 8c 00 00 00    	je     80b690 <t3dmix_mod_mp_t3dmix4_tile_+0x37f0>
  80b604:	8b 85 20 fa ff ff    	mov    -0x5e0(%rbp),%eax
  80b60a:	3b 85 18 fa ff ff    	cmp    -0x5e8(%rbp),%eax
  80b610:	0f 8c 07 01 00 00    	jl     80b71d <t3dmix_mod_mp_t3dmix4_tile_+0x387d>
  80b616:	b9 01 00 00 00       	mov    $0x1,%ecx
  80b61b:	33 d2                	xor    %edx,%edx
  80b61d:	33 c0                	xor    %eax,%eax
  80b61f:	83 bd c8 f7 ff ff 00 	cmpl   $0x0,-0x838(%rbp)
  80b626:	74 3a                	je     80b662 <t3dmix_mod_mp_t3dmix4_tile_+0x37c2>
  80b628:	48 8b 8d a0 f7 ff ff 	mov    -0x860(%rbp),%rcx
  80b62f:	45 33 c9             	xor    %r9d,%r9d
  80b632:	48 8b b5 78 f7 ff ff 	mov    -0x888(%rbp),%rsi
  80b639:	48 8b bd 58 f7 ff ff 	mov    -0x8a8(%rbp),%rdi
  80b640:	4c 8b 85 68 f7 ff ff 	mov    -0x898(%rbp),%r8
  80b647:	48 ff c2             	inc    %rdx
  80b64a:	4c 89 4c 08 08       	mov    %r9,0x8(%rax,%rcx,1)
  80b64f:	4c 89 4c 30 10       	mov    %r9,0x10(%rax,%rsi,1)
  80b654:	4a 8d 44 00 10       	lea    0x10(%rax,%r8,1),%rax
  80b659:	48 3b d7             	cmp    %rdi,%rdx
  80b65c:	72 e9                	jb     80b647 <t3dmix_mod_mp_t3dmix4_tile_+0x37a7>
  80b65e:	8d 4c 12 01          	lea    0x1(%rdx,%rdx,1),%ecx
  80b662:	8d 41 ff             	lea    -0x1(%rcx),%eax
  80b665:	3b 85 a8 f7 ff ff    	cmp    -0x858(%rbp),%eax
  80b66b:	0f 83 ac 00 00 00    	jae    80b71d <t3dmix_mod_mp_t3dmix4_tile_+0x387d>
  80b671:	48 63 c9             	movslq %ecx,%rcx
  80b674:	48 0f af 8d 40 fe ff 	imul   -0x1c0(%rbp),%rcx
  80b67b:	ff 
  80b67c:	48 8b 85 98 f7 ff ff 	mov    -0x868(%rbp),%rax
  80b683:	48 c7 04 01 00 00 00 	movq   $0x0,(%rcx,%rax,1)
  80b68a:	00 
  80b68b:	e9 8d 00 00 00       	jmpq   80b71d <t3dmix_mod_mp_t3dmix4_tile_+0x387d>
  80b690:	8b 85 20 fa ff ff    	mov    -0x5e0(%rbp),%eax
  80b696:	3b 85 18 fa ff ff    	cmp    -0x5e8(%rbp),%eax
  80b69c:	7c 7f                	jl     80b71d <t3dmix_mod_mp_t3dmix4_tile_+0x387d>
  80b69e:	b9 01 00 00 00       	mov    $0x1,%ecx
  80b6a3:	33 d2                	xor    %edx,%edx
  80b6a5:	33 c0                	xor    %eax,%eax
  80b6a7:	83 bd c8 f7 ff ff 00 	cmpl   $0x0,-0x838(%rbp)
  80b6ae:	74 47                	je     80b6f7 <t3dmix_mod_mp_t3dmix4_tile_+0x3857>
  80b6b0:	48 8b bd a0 f7 ff ff 	mov    -0x860(%rbp),%rdi
  80b6b7:	4c 8b 85 90 f7 ff ff 	mov    -0x870(%rbp),%r8
  80b6be:	4c 8b 8d 78 f7 ff ff 	mov    -0x888(%rbp),%r9
  80b6c5:	4c 8b 95 58 f7 ff ff 	mov    -0x8a8(%rbp),%r10
  80b6cc:	4c 8b 9d 68 f7 ff ff 	mov    -0x898(%rbp),%r11
  80b6d3:	48 ff c2             	inc    %rdx
  80b6d6:	4a 8b 0c 00          	mov    (%rax,%r8,1),%rcx
  80b6da:	4a 8b 74 08 08       	mov    0x8(%rax,%r9,1),%rsi
  80b6df:	48 89 4c 38 08       	mov    %rcx,0x8(%rax,%rdi,1)
  80b6e4:	4a 89 74 08 10       	mov    %rsi,0x10(%rax,%r9,1)
  80b6e9:	4a 8d 44 18 10       	lea    0x10(%rax,%r11,1),%rax
  80b6ee:	49 3b d2             	cmp    %r10,%rdx
  80b6f1:	72 e0                	jb     80b6d3 <t3dmix_mod_mp_t3dmix4_tile_+0x3833>
  80b6f3:	8d 4c 12 01          	lea    0x1(%rdx,%rdx,1),%ecx
  80b6f7:	8d 41 ff             	lea    -0x1(%rcx),%eax
  80b6fa:	3b 85 a8 f7 ff ff    	cmp    -0x858(%rbp),%eax
  80b700:	73 1b                	jae    80b71d <t3dmix_mod_mp_t3dmix4_tile_+0x387d>
  80b702:	48 63 c9             	movslq %ecx,%rcx
  80b705:	48 0f af 8d 40 fe ff 	imul   -0x1c0(%rbp),%rcx
  80b70c:	ff 
  80b70d:	48 8b 95 98 f7 ff ff 	mov    -0x868(%rbp),%rdx
  80b714:	48 8b 44 11 f8       	mov    -0x8(%rcx,%rdx,1),%rax
  80b719:	48 89 04 11          	mov    %rax,(%rcx,%rdx,1)
  80b71d:	43 f6 44 35 08 01    	testb  $0x1,0x8(%r13,%r14,1)
  80b723:	0f 85 f5 00 00 00    	jne    80b81e <t3dmix_mod_mp_t3dmix4_tile_+0x397e>
  80b729:	48 8b 85 70 fa ff ff 	mov    -0x590(%rbp),%rax
  80b730:	48 8b 95 60 fa ff ff 	mov    -0x5a0(%rbp),%rdx
  80b737:	f6 04 10 01          	testb  $0x1,(%rax,%rdx,1)
  80b73b:	0f 85 dd 00 00 00    	jne    80b81e <t3dmix_mod_mp_t3dmix4_tile_+0x397e>
  80b741:	48 8b 95 60 f8 ff ff 	mov    -0x7a0(%rbp),%rdx
  80b748:	48 8b 85 58 f8 ff ff 	mov    -0x7a8(%rbp),%rax
  80b74f:	48 8b b4 10 18 01 00 	mov    0x118(%rax,%rdx,1),%rsi
  80b756:	00 
  80b757:	48 f7 de             	neg    %rsi
  80b75a:	48 03 b5 50 f8 ff ff 	add    -0x7b0(%rbp),%rsi
  80b761:	48 0f af b4 10 10 01 	imul   0x110(%rax,%rdx,1),%rsi
  80b768:	00 00 
  80b76a:	48 8b 8c 10 d8 00 00 	mov    0xd8(%rax,%rdx,1),%rcx
  80b771:	00 
  80b772:	f6 04 31 01          	testb  $0x1,(%rcx,%rsi,1)
  80b776:	0f 84 a2 00 00 00    	je     80b81e <t3dmix_mod_mp_t3dmix4_tile_+0x397e>
  80b77c:	48 8b 85 18 f8 ff ff 	mov    -0x7e8(%rbp),%rax
  80b783:	48 8b 95 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdx
  80b78a:	48 8b b5 20 f8 ff ff 	mov    -0x7e0(%rbp),%rsi
  80b791:	48 63 0c 90          	movslq (%rax,%rdx,4),%rcx
  80b795:	48 0f af 8d 10 f8 ff 	imul   -0x7f0(%rbp),%rcx
  80b79c:	ff 
  80b79d:	f6 44 31 78 01       	testb  $0x1,0x78(%rcx,%rsi,1)
  80b7a2:	74 35                	je     80b7d9 <t3dmix_mod_mp_t3dmix4_tile_+0x3939>
  80b7a4:	8b 85 a0 fd ff ff    	mov    -0x260(%rbp),%eax
  80b7aa:	3b 85 98 fd ff ff    	cmp    -0x268(%rbp),%eax
  80b7b0:	7c 6c                	jl     80b81e <t3dmix_mod_mp_t3dmix4_tile_+0x397e>
  80b7b2:	83 bd b0 f4 ff ff 0c 	cmpl   $0xc,-0xb50(%rbp)
  80b7b9:	0f 8e ff 16 00 00    	jle    80cebe <t3dmix_mod_mp_t3dmix4_tile_+0x501e>
  80b7bf:	33 f6                	xor    %esi,%esi
  80b7c1:	48 8b bd 08 f8 ff ff 	mov    -0x7f8(%rbp),%rdi
  80b7c8:	48 8b 95 f8 f7 ff ff 	mov    -0x808(%rbp),%rdx
  80b7cf:	c5 f8 77             	vzeroupper 
  80b7d2:	e8 69 d5 cc ff       	callq  4d8d40 <_intel_fast_memset>
  80b7d7:	eb 45                	jmp    80b81e <t3dmix_mod_mp_t3dmix4_tile_+0x397e>
  80b7d9:	8b 85 a0 fd ff ff    	mov    -0x260(%rbp),%eax
  80b7df:	3b 85 98 fd ff ff    	cmp    -0x268(%rbp),%eax
  80b7e5:	7c 37                	jl     80b81e <t3dmix_mod_mp_t3dmix4_tile_+0x397e>
  80b7e7:	83 bd b0 f4 ff ff 0c 	cmpl   $0xc,-0xb50(%rbp)
  80b7ee:	0f 8e 40 18 00 00    	jle    80d034 <t3dmix_mod_mp_t3dmix4_tile_+0x5194>
  80b7f4:	83 bd b8 f7 ff ff 00 	cmpl   $0x0,-0x848(%rbp)
  80b7fb:	0f 84 33 18 00 00    	je     80d034 <t3dmix_mod_mp_t3dmix4_tile_+0x5194>
  80b801:	c5 f8 77             	vzeroupper 
  80b804:	48 8b bd 08 f8 ff ff 	mov    -0x7f8(%rbp),%rdi
  80b80b:	48 8b b5 d8 f7 ff ff 	mov    -0x828(%rbp),%rsi
  80b812:	48 8b 95 f8 f7 ff ff 	mov    -0x808(%rbp),%rdx
  80b819:	e8 22 d3 cc ff       	callq  4d8b40 <_intel_fast_memcpy>
  80b81e:	43 f6 44 35 10 01    	testb  $0x1,0x10(%r13,%r14,1)
  80b824:	0f 85 f8 00 00 00    	jne    80b922 <t3dmix_mod_mp_t3dmix4_tile_+0x3a82>
  80b82a:	48 8b 85 70 fa ff ff 	mov    -0x590(%rbp),%rax
  80b831:	48 8b 95 60 fa ff ff 	mov    -0x5a0(%rbp),%rdx
  80b838:	f6 04 10 01          	testb  $0x1,(%rax,%rdx,1)
  80b83c:	0f 85 e0 00 00 00    	jne    80b922 <t3dmix_mod_mp_t3dmix4_tile_+0x3a82>
  80b842:	48 8b 95 60 f8 ff ff 	mov    -0x7a0(%rbp),%rdx
  80b849:	48 8b 85 58 f8 ff ff 	mov    -0x7a8(%rbp),%rax
  80b850:	48 8b b4 10 d0 00 00 	mov    0xd0(%rax,%rdx,1),%rsi
  80b857:	00 
  80b858:	48 f7 de             	neg    %rsi
  80b85b:	48 03 b5 50 f8 ff ff 	add    -0x7b0(%rbp),%rsi
  80b862:	48 0f af b4 10 c8 00 	imul   0xc8(%rax,%rdx,1),%rsi
  80b869:	00 00 
  80b86b:	48 8b 8c 10 90 00 00 	mov    0x90(%rax,%rdx,1),%rcx
  80b872:	00 
  80b873:	f6 04 31 01          	testb  $0x1,(%rcx,%rsi,1)
  80b877:	0f 84 a5 00 00 00    	je     80b922 <t3dmix_mod_mp_t3dmix4_tile_+0x3a82>
  80b87d:	48 8b 85 18 f8 ff ff 	mov    -0x7e8(%rbp),%rax
  80b884:	48 8b 95 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdx
  80b88b:	48 8b b5 20 f8 ff ff 	mov    -0x7e0(%rbp),%rsi
  80b892:	48 63 0c 90          	movslq (%rax,%rdx,4),%rcx
  80b896:	48 0f af 8d 10 f8 ff 	imul   -0x7f0(%rbp),%rcx
  80b89d:	ff 
  80b89e:	f6 84 31 e0 00 00 00 	testb  $0x1,0xe0(%rcx,%rsi,1)
  80b8a5:	01 
  80b8a6:	74 35                	je     80b8dd <t3dmix_mod_mp_t3dmix4_tile_+0x3a3d>
  80b8a8:	8b 85 a0 fd ff ff    	mov    -0x260(%rbp),%eax
  80b8ae:	3b 85 98 fd ff ff    	cmp    -0x268(%rbp),%eax
  80b8b4:	7c 6c                	jl     80b922 <t3dmix_mod_mp_t3dmix4_tile_+0x3a82>
  80b8b6:	83 bd b0 f4 ff ff 0c 	cmpl   $0xc,-0xb50(%rbp)
  80b8bd:	0f 8e 69 16 00 00    	jle    80cf2c <t3dmix_mod_mp_t3dmix4_tile_+0x508c>
  80b8c3:	33 f6                	xor    %esi,%esi
  80b8c5:	48 8b bd c0 f7 ff ff 	mov    -0x840(%rbp),%rdi
  80b8cc:	48 8b 95 f8 f7 ff ff 	mov    -0x808(%rbp),%rdx
  80b8d3:	c5 f8 77             	vzeroupper 
  80b8d6:	e8 65 d4 cc ff       	callq  4d8d40 <_intel_fast_memset>
  80b8db:	eb 45                	jmp    80b922 <t3dmix_mod_mp_t3dmix4_tile_+0x3a82>
  80b8dd:	8b 85 a0 fd ff ff    	mov    -0x260(%rbp),%eax
  80b8e3:	3b 85 98 fd ff ff    	cmp    -0x268(%rbp),%eax
  80b8e9:	7c 37                	jl     80b922 <t3dmix_mod_mp_t3dmix4_tile_+0x3a82>
  80b8eb:	83 bd b0 f4 ff ff 0c 	cmpl   $0xc,-0xb50(%rbp)
  80b8f2:	0f 8e cd 16 00 00    	jle    80cfc5 <t3dmix_mod_mp_t3dmix4_tile_+0x5125>
  80b8f8:	83 bd b0 f7 ff ff 00 	cmpl   $0x0,-0x850(%rbp)
  80b8ff:	0f 84 c0 16 00 00    	je     80cfc5 <t3dmix_mod_mp_t3dmix4_tile_+0x5125>
  80b905:	c5 f8 77             	vzeroupper 
  80b908:	48 8b bd c0 f7 ff ff 	mov    -0x840(%rbp),%rdi
  80b90f:	48 8b b5 00 f8 ff ff 	mov    -0x800(%rbp),%rsi
  80b916:	48 8b 95 f8 f7 ff ff 	mov    -0x808(%rbp),%rdx
  80b91d:	e8 1e d2 cc ff       	callq  4d8b40 <_intel_fast_memcpy>
  80b922:	48 83 bd 00 ff ff ff 	cmpq   $0x8,-0x100(%rbp)
  80b929:	08 
  80b92a:	0f 85 ae 02 00 00    	jne    80bbde <t3dmix_mod_mp_t3dmix4_tile_+0x3d3e>
  80b930:	48 83 bd f8 fe ff ff 	cmpq   $0x8,-0x108(%rbp)
  80b937:	08 
  80b938:	0f 85 a0 02 00 00    	jne    80bbde <t3dmix_mod_mp_t3dmix4_tile_+0x3d3e>
  80b93e:	48 83 bd 18 ff ff ff 	cmpq   $0x8,-0xe8(%rbp)
  80b945:	08 
  80b946:	0f 85 92 02 00 00    	jne    80bbde <t3dmix_mod_mp_t3dmix4_tile_+0x3d3e>
  80b94c:	48 83 bd f0 fe ff ff 	cmpq   $0x8,-0x110(%rbp)
  80b953:	08 
  80b954:	0f 85 84 02 00 00    	jne    80bbde <t3dmix_mod_mp_t3dmix4_tile_+0x3d3e>
  80b95a:	48 83 bd e8 fe ff ff 	cmpq   $0x8,-0x118(%rbp)
  80b961:	08 
  80b962:	0f 85 76 02 00 00    	jne    80bbde <t3dmix_mod_mp_t3dmix4_tile_+0x3d3e>
  80b968:	45 33 c9             	xor    %r9d,%r9d
  80b96b:	48 8b 85 10 fa ff ff 	mov    -0x5f0(%rbp),%rax
  80b972:	33 ff                	xor    %edi,%edi
  80b974:	48 8b b5 78 f3 ff ff 	mov    -0xc88(%rbp),%rsi
  80b97b:	45 33 d2             	xor    %r10d,%r10d
  80b97e:	4c 8b 85 80 f3 ff ff 	mov    -0xc80(%rbp),%r8
  80b985:	4c 8b 9d 88 f3 ff ff 	mov    -0xc78(%rbp),%r11
  80b98c:	48 3b 85 c0 f9 ff ff 	cmp    -0x640(%rbp),%rax
  80b993:	0f 8c 7a 07 00 00    	jl     80c113 <t3dmix_mod_mp_t3dmix4_tile_+0x4273>
  80b999:	48 8b 95 f0 f8 ff ff 	mov    -0x710(%rbp),%rdx
  80b9a0:	49 0f af d4          	imul   %r12,%rdx
  80b9a4:	c5 fd 10 05 b4 99 0b 	vmovupd 0xb99b4(%rip),%ymm0        # 8c5360 <var$630.126.450+0x4a0>
  80b9ab:	00 
  80b9ac:	c5 fb 10 0d 64 b8 0b 	vmovsd 0xbb864(%rip),%xmm1        # 8c7218 <__STRLITPACK_199.115+0x88>
  80b9b3:	00 
  80b9b4:	48 8b 8d e8 f8 ff ff 	mov    -0x718(%rbp),%rcx
  80b9bb:	49 0f af cc          	imul   %r12,%rcx
  80b9bf:	48 8b 85 88 f8 ff ff 	mov    -0x778(%rbp),%rax
  80b9c6:	48 03 8d 80 f8 ff ff 	add    -0x780(%rbp),%rcx
  80b9cd:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80b9d4:	48 03 c2             	add    %rdx,%rax
  80b9d7:	48 03 95 a0 f8 ff ff 	add    -0x760(%rbp),%rdx
  80b9de:	48 89 95 90 fa ff ff 	mov    %rdx,-0x570(%rbp)
  80b9e5:	48 89 85 98 fa ff ff 	mov    %rax,-0x568(%rbp)
  80b9ec:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
  80b9f3:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
  80b9fa:	48 3b 85 08 fd ff ff 	cmp    -0x2f8(%rbp),%rax
  80ba01:	0f 8c 98 01 00 00    	jl     80bb9f <t3dmix_mod_mp_t3dmix4_tile_+0x3cff>
  80ba07:	48 83 fa 04          	cmp    $0x4,%rdx
  80ba0b:	0f 8c 89 15 00 00    	jl     80cf9a <t3dmix_mod_mp_t3dmix4_tile_+0x50fa>
  80ba11:	4c 8b bd f8 fc ff ff 	mov    -0x308(%rbp),%r15
  80ba18:	45 33 f6             	xor    %r14d,%r14d
  80ba1b:	4c 8b ad 90 fd ff ff 	mov    -0x270(%rbp),%r13
  80ba22:	4c 8b a5 58 fd ff ff 	mov    -0x2a8(%rbp),%r12
  80ba29:	48 8b 85 20 fb ff ff 	mov    -0x4e0(%rbp),%rax
  80ba30:	4c 03 ff             	add    %rdi,%r15
  80ba33:	4c 89 bd b8 fa ff ff 	mov    %r15,-0x548(%rbp)
  80ba3a:	4c 03 ef             	add    %rdi,%r13
  80ba3d:	4c 8b bd 90 fa ff ff 	mov    -0x570(%rbp),%r15
  80ba44:	4c 03 e7             	add    %rdi,%r12
  80ba47:	48 89 bd 50 fb ff ff 	mov    %rdi,-0x4b0(%rbp)
  80ba4e:	4c 89 8d 58 fb ff ff 	mov    %r9,-0x4a8(%rbp)
  80ba55:	4c 8b 8d b8 fa ff ff 	mov    -0x548(%rbp),%r9
  80ba5c:	4d 03 fa             	add    %r10,%r15
  80ba5f:	4c 89 bd a8 fa ff ff 	mov    %r15,-0x558(%rbp)
  80ba66:	4c 8b bd 98 fa ff ff 	mov    -0x568(%rbp),%r15
  80ba6d:	48 8b bd a8 fa ff ff 	mov    -0x558(%rbp),%rdi
  80ba74:	4d 03 fa             	add    %r10,%r15
  80ba77:	4c 89 bd a0 fa ff ff 	mov    %r15,-0x560(%rbp)
  80ba7e:	49 89 c7             	mov    %rax,%r15
  80ba81:	48 8b 95 a0 fa ff ff 	mov    -0x560(%rbp),%rdx
  80ba88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  80ba8f:	00 
  80ba90:	c4 a1 7d 59 14 f1    	vmulpd (%rcx,%r14,8),%ymm0,%ymm2
  80ba96:	c4 a1 7d 10 1c f2    	vmovupd (%rdx,%r14,8),%ymm3
  80ba9c:	c4 81 7d 10 34 f4    	vmovupd (%r12,%r14,8),%ymm6
  80baa2:	c4 a1 6d 59 24 f6    	vmulpd (%rsi,%r14,8),%ymm2,%ymm4
  80baa8:	c4 a1 65 58 6c f7 f8 	vaddpd -0x8(%rdi,%r14,8),%ymm3,%ymm5
  80baaf:	c4 01 4d 5c 44 f5 f8 	vsubpd -0x8(%r13,%r14,8),%ymm6,%ymm8
  80bab6:	c5 dd 59 fd          	vmulpd %ymm5,%ymm4,%ymm7
  80baba:	c4 41 45 59 c8       	vmulpd %ymm8,%ymm7,%ymm9
  80babf:	c4 01 35 59 14 f0    	vmulpd (%r8,%r14,8),%ymm9,%ymm10
  80bac5:	c4 01 2d 59 1c f3    	vmulpd (%r11,%r14,8),%ymm10,%ymm11
  80bacb:	c4 01 7d 11 1c f1    	vmovupd %ymm11,(%r9,%r14,8)
  80bad1:	49 83 c6 04          	add    $0x4,%r14
  80bad5:	4d 3b f7             	cmp    %r15,%r14
  80bad8:	72 b6                	jb     80ba90 <t3dmix_mod_mp_t3dmix4_tile_+0x3bf0>
  80bada:	48 8b bd 50 fb ff ff 	mov    -0x4b0(%rbp),%rdi
  80bae1:	4c 8b 8d 58 fb ff ff 	mov    -0x4a8(%rbp),%r9
  80bae8:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
  80baef:	48 3b c2             	cmp    %rdx,%rax
  80baf2:	0f 83 a7 00 00 00    	jae    80bb9f <t3dmix_mod_mp_t3dmix4_tile_+0x3cff>
  80baf8:	4c 8b ad 90 fd ff ff 	mov    -0x270(%rbp),%r13
  80baff:	4c 8b bd f8 fc ff ff 	mov    -0x308(%rbp),%r15
  80bb06:	4c 8b b5 58 fd ff ff 	mov    -0x2a8(%rbp),%r14
  80bb0d:	4c 89 8d 58 fb ff ff 	mov    %r9,-0x4a8(%rbp)
  80bb14:	4d 8d 64 3d 00       	lea    0x0(%r13,%rdi,1),%r12
  80bb19:	4c 89 a5 b0 fa ff ff 	mov    %r12,-0x550(%rbp)
  80bb20:	4d 8d 24 3f          	lea    (%r15,%rdi,1),%r12
  80bb24:	4c 8b bd 98 fa ff ff 	mov    -0x568(%rbp),%r15
  80bb2b:	4d 8d 2c 3e          	lea    (%r14,%rdi,1),%r13
  80bb2f:	4c 8b b5 90 fa ff ff 	mov    -0x570(%rbp),%r14
  80bb36:	4d 03 fa             	add    %r10,%r15
  80bb39:	4d 89 f9             	mov    %r15,%r9
  80bb3c:	4d 03 f2             	add    %r10,%r14
  80bb3f:	4c 8b bd b0 fa ff ff 	mov    -0x550(%rbp),%r15
  80bb46:	0f 1f 00             	nopl   (%rax)
  80bb49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  80bb50:	c5 f3 59 14 c1       	vmulsd (%rcx,%rax,8),%xmm1,%xmm2
  80bb55:	c4 c1 7b 10 1c c1    	vmovsd (%r9,%rax,8),%xmm3
  80bb5b:	c5 eb 59 24 c6       	vmulsd (%rsi,%rax,8),%xmm2,%xmm4
  80bb60:	c4 c1 63 58 6c c6 f8 	vaddsd -0x8(%r14,%rax,8),%xmm3,%xmm5
  80bb67:	c4 c1 7b 10 74 c5 00 	vmovsd 0x0(%r13,%rax,8),%xmm6
  80bb6e:	c5 db 59 fd          	vmulsd %xmm5,%xmm4,%xmm7
  80bb72:	c4 41 4b 5c 44 c7 f8 	vsubsd -0x8(%r15,%rax,8),%xmm6,%xmm8
  80bb79:	c4 41 43 59 c8       	vmulsd %xmm8,%xmm7,%xmm9
  80bb7e:	c4 41 33 59 14 c0    	vmulsd (%r8,%rax,8),%xmm9,%xmm10
  80bb84:	c4 41 2b 59 1c c3    	vmulsd (%r11,%rax,8),%xmm10,%xmm11
  80bb8a:	c4 41 7b 11 1c c4    	vmovsd %xmm11,(%r12,%rax,8)
  80bb90:	48 ff c0             	inc    %rax
  80bb93:	48 3b c2             	cmp    %rdx,%rax
  80bb96:	72 b8                	jb     80bb50 <t3dmix_mod_mp_t3dmix4_tile_+0x3cb0>
  80bb98:	4c 8b 8d 58 fb ff ff 	mov    -0x4a8(%rbp),%r9
  80bb9f:	49 ff c1             	inc    %r9
  80bba2:	48 03 bd 40 fe ff ff 	add    -0x1c0(%rbp),%rdi
  80bba9:	48 03 8d c0 fd ff ff 	add    -0x240(%rbp),%rcx
  80bbb0:	48 03 b5 b8 fd ff ff 	add    -0x248(%rbp),%rsi
  80bbb7:	4c 03 95 d8 fd ff ff 	add    -0x228(%rbp),%r10
  80bbbe:	4c 03 85 b0 fd ff ff 	add    -0x250(%rbp),%r8
  80bbc5:	4c 03 9d a8 fd ff ff 	add    -0x258(%rbp),%r11
  80bbcc:	4c 3b 8d 80 fd ff ff 	cmp    -0x280(%rbp),%r9
  80bbd3:	0f 82 1a fe ff ff    	jb     80b9f3 <t3dmix_mod_mp_t3dmix4_tile_+0x3b53>
  80bbd9:	e9 20 05 00 00       	jmpq   80c0fe <t3dmix_mod_mp_t3dmix4_tile_+0x425e>
  80bbde:	33 d2                	xor    %edx,%edx
  80bbe0:	48 8b 85 10 fa ff ff 	mov    -0x5f0(%rbp),%rax
  80bbe7:	45 33 c0             	xor    %r8d,%r8d
  80bbea:	4c 8b 8d e0 f9 ff ff 	mov    -0x620(%rbp),%r9
  80bbf1:	33 c9                	xor    %ecx,%ecx
  80bbf3:	48 8b b5 00 fa ff ff 	mov    -0x600(%rbp),%rsi
  80bbfa:	48 8b bd f8 f9 ff ff 	mov    -0x608(%rbp),%rdi
  80bc01:	48 3b 85 c0 f9 ff ff 	cmp    -0x640(%rbp),%rax
  80bc08:	0f 8c 05 05 00 00    	jl     80c113 <t3dmix_mod_mp_t3dmix4_tile_+0x4273>
  80bc0e:	4c 8b 95 f0 f8 ff ff 	mov    -0x710(%rbp),%r10
  80bc15:	4c 8b 9d e8 f8 ff ff 	mov    -0x718(%rbp),%r11
  80bc1c:	4d 0f af d4          	imul   %r12,%r10
  80bc20:	4d 0f af dc          	imul   %r12,%r11
  80bc24:	48 8b 85 b0 f8 ff ff 	mov    -0x750(%rbp),%rax
  80bc2b:	4c 03 9d b8 f8 ff ff 	add    -0x748(%rbp),%r11
  80bc32:	4c 89 9d 70 fe ff ff 	mov    %r11,-0x190(%rbp)
  80bc39:	48 89 95 20 fd ff ff 	mov    %rdx,-0x2e0(%rbp)
  80bc40:	49 03 c2             	add    %r10,%rax
  80bc43:	4c 03 95 a8 f8 ff ff 	add    -0x758(%rbp),%r10
  80bc4a:	4c 89 95 10 fd ff ff 	mov    %r10,-0x2f0(%rbp)
  80bc51:	48 89 85 18 fd ff ff 	mov    %rax,-0x2e8(%rbp)
  80bc58:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80bc5f:	c5 fb 10 0d b1 b5 0b 	vmovsd 0xbb5b1(%rip),%xmm1        # 8c7218 <__STRLITPACK_199.115+0x88>
  80bc66:	00 
  80bc67:	c5 f9 10 05 31 ad 0b 	vmovupd 0xbad31(%rip),%xmm0        # 8c69a0 <__STRLITPACK_19.34+0x10>
  80bc6e:	00 
  80bc6f:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
  80bc76:	48 3b 85 08 fd ff ff 	cmp    -0x2f8(%rbp),%rax
  80bc7d:	0f 8c 25 04 00 00    	jl     80c0a8 <t3dmix_mod_mp_t3dmix4_tile_+0x4208>
  80bc83:	48 83 bd 50 fe ff ff 	cmpq   $0x2,-0x1b0(%rbp)
  80bc8a:	02 
  80bc8b:	0f 8c 2d 13 00 00    	jl     80cfbe <t3dmix_mod_mp_t3dmix4_tile_+0x511e>
  80bc91:	48 8b 85 f8 fc ff ff 	mov    -0x308(%rbp),%rax
  80bc98:	4c 8d 34 08          	lea    (%rax,%rcx,1),%r14
  80bc9c:	4c 89 b5 68 fe ff ff 	mov    %r14,-0x198(%rbp)
  80bca3:	49 83 e6 0f          	and    $0xf,%r14
  80bca7:	45 85 f6             	test   %r14d,%r14d
  80bcaa:	74 13                	je     80bcbf <t3dmix_mod_mp_t3dmix4_tile_+0x3e1f>
  80bcac:	41 f7 c6 07 00 00 00 	test   $0x7,%r14d
  80bcb3:	0f 85 05 13 00 00    	jne    80cfbe <t3dmix_mod_mp_t3dmix4_tile_+0x511e>
  80bcb9:	41 be 01 00 00 00    	mov    $0x1,%r14d
  80bcbf:	44 89 f2             	mov    %r14d,%edx
  80bcc2:	48 8d 42 02          	lea    0x2(%rdx),%rax
  80bcc6:	48 3b 85 50 fe ff ff 	cmp    -0x1b0(%rbp),%rax
  80bccd:	0f 8f eb 12 00 00    	jg     80cfbe <t3dmix_mod_mp_t3dmix4_tile_+0x511e>
  80bcd3:	4c 8b bd 90 fd ff ff 	mov    -0x270(%rbp),%r15
  80bcda:	44 8b a5 70 fd ff ff 	mov    -0x290(%rbp),%r12d
  80bce1:	44 89 e0             	mov    %r12d,%eax
  80bce4:	41 2b c6             	sub    %r14d,%eax
  80bce7:	83 e0 01             	and    $0x1,%eax
  80bcea:	4c 03 f9             	add    %rcx,%r15
  80bced:	4c 89 bd 60 fe ff ff 	mov    %r15,-0x1a0(%rbp)
  80bcf4:	f7 d8                	neg    %eax
  80bcf6:	4c 8b bd 58 fd ff ff 	mov    -0x2a8(%rbp),%r15
  80bcfd:	41 03 c4             	add    %r12d,%eax
  80bd00:	45 33 e4             	xor    %r12d,%r12d
  80bd03:	45 33 d2             	xor    %r10d,%r10d
  80bd06:	45 33 ed             	xor    %r13d,%r13d
  80bd09:	4c 03 f9             	add    %rcx,%r15
  80bd0c:	4c 89 bd 88 fe ff ff 	mov    %r15,-0x178(%rbp)
  80bd13:	45 33 db             	xor    %r11d,%r11d
  80bd16:	4c 8b bd 18 fd ff ff 	mov    -0x2e8(%rbp),%r15
  80bd1d:	48 63 c0             	movslq %eax,%rax
  80bd20:	4d 03 f8             	add    %r8,%r15
  80bd23:	4c 89 bd 28 fd ff ff 	mov    %r15,-0x2d8(%rbp)
  80bd2a:	4c 8b bd 10 fd ff ff 	mov    -0x2f0(%rbp),%r15
  80bd31:	4d 03 f8             	add    %r8,%r15
  80bd34:	4c 89 bd 78 fe ff ff 	mov    %r15,-0x188(%rbp)
  80bd3b:	45 85 f6             	test   %r14d,%r14d
  80bd3e:	0f 86 c9 00 00 00    	jbe    80be0d <t3dmix_mod_mp_t3dmix4_tile_+0x3f6d>
  80bd44:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
  80bd4b:	48 89 8d 60 fb ff ff 	mov    %rcx,-0x4a0(%rbp)
  80bd52:	4c 89 85 68 fb ff ff 	mov    %r8,-0x498(%rbp)
  80bd59:	4c 89 d8             	mov    %r11,%rax
  80bd5c:	4d 89 d6             	mov    %r10,%r14
  80bd5f:	48 8b 8d 28 fd ff ff 	mov    -0x2d8(%rbp),%rcx
  80bd66:	4c 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%r8
  80bd6d:	4c 8b bd 70 fe ff ff 	mov    -0x190(%rbp),%r15
  80bd74:	c4 81 7b 10 34 e0    	vmovsd (%r8,%r12,8),%xmm6
  80bd7a:	c4 81 73 59 14 3a    	vmulsd (%r10,%r15,1),%xmm1,%xmm2
  80bd80:	4c 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%r15
  80bd87:	c4 81 6b 59 24 0b    	vmulsd (%r11,%r9,1),%xmm2,%xmm4
  80bd8d:	c4 a1 7b 10 1c 38    	vmovsd (%rax,%r15,1),%xmm3
  80bd93:	4c 8b bd 60 fe ff ff 	mov    -0x1a0(%rbp),%r15
  80bd9a:	4c 03 95 00 ff ff ff 	add    -0x100(%rbp),%r10
  80bda1:	4c 03 9d f8 fe ff ff 	add    -0x108(%rbp),%r11
  80bda8:	c5 e3 58 2c 08       	vaddsd (%rax,%rcx,1),%xmm3,%xmm5
  80bdad:	c4 01 4b 5c 44 e7 f8 	vsubsd -0x8(%r15,%r12,8),%xmm6,%xmm8
  80bdb4:	c5 db 59 fd          	vmulsd %xmm5,%xmm4,%xmm7
  80bdb8:	c4 41 43 59 c8       	vmulsd %xmm8,%xmm7,%xmm9
  80bdbd:	c4 41 33 59 14 36    	vmulsd (%r14,%rsi,1),%xmm9,%xmm10
  80bdc3:	c4 41 2b 59 5c 3d 00 	vmulsd 0x0(%r13,%rdi,1),%xmm10,%xmm11
  80bdca:	4c 8b bd 68 fe ff ff 	mov    -0x198(%rbp),%r15
  80bdd1:	4c 03 b5 f0 fe ff ff 	add    -0x110(%rbp),%r14
  80bdd8:	4c 03 ad e8 fe ff ff 	add    -0x118(%rbp),%r13
  80bddf:	c4 01 7b 11 1c e7    	vmovsd %xmm11,(%r15,%r12,8)
  80bde5:	49 ff c4             	inc    %r12
  80bde8:	48 03 85 18 ff ff ff 	add    -0xe8(%rbp),%rax
  80bdef:	4c 3b e2             	cmp    %rdx,%r12
  80bdf2:	0f 82 75 ff ff ff    	jb     80bd6d <t3dmix_mod_mp_t3dmix4_tile_+0x3ecd>
  80bdf8:	48 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%rax
  80bdff:	48 8b 8d 60 fb ff ff 	mov    -0x4a0(%rbp),%rcx
  80be06:	4c 8b 85 68 fb ff ff 	mov    -0x498(%rbp),%r8
  80be0d:	4c 8b 9d 18 ff ff ff 	mov    -0xe8(%rbp),%r11
  80be14:	4c 8b a5 e8 fe ff ff 	mov    -0x118(%rbp),%r12
  80be1b:	4c 8b 95 f0 fe ff ff 	mov    -0x110(%rbp),%r10
  80be22:	4c 8b ad f8 fe ff ff 	mov    -0x108(%rbp),%r13
  80be29:	4c 8b b5 00 ff ff ff 	mov    -0x100(%rbp),%r14
  80be30:	4c 89 85 68 fb ff ff 	mov    %r8,-0x498(%rbp)
  80be37:	4c 0f af da          	imul   %rdx,%r11
  80be3b:	4c 0f af e2          	imul   %rdx,%r12
  80be3f:	4c 0f af d2          	imul   %rdx,%r10
  80be43:	4c 0f af ea          	imul   %rdx,%r13
  80be47:	4c 0f af f2          	imul   %rdx,%r14
  80be4b:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
  80be52:	48 89 8d 60 fb ff ff 	mov    %rcx,-0x4a0(%rbp)
  80be59:	4c 8b 85 28 fd ff ff 	mov    -0x2d8(%rbp),%r8
  80be60:	4c 8b bd 60 fe ff ff 	mov    -0x1a0(%rbp),%r15
  80be67:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
  80be6e:	c5 f9 10 14 d0       	vmovupd (%rax,%rdx,8),%xmm2
  80be73:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
  80be7a:	c4 41 69 5c 7c d7 f8 	vsubpd -0x8(%r15,%rdx,8),%xmm2,%xmm15
  80be81:	4a 8d 0c 30          	lea    (%rax,%r14,1),%rcx
  80be85:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  80be8c:	c5 fb 10 19          	vmovsd (%rcx),%xmm3
  80be90:	c5 e1 16 24 01       	vmovhpd (%rcx,%rax,1),%xmm3,%xmm4
  80be95:	4d 8d 34 46          	lea    (%r14,%rax,2),%r14
  80be99:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
  80bea0:	4b 8d 0c 29          	lea    (%r9,%r13,1),%rcx
  80bea4:	c5 f9 59 f4          	vmulpd %xmm4,%xmm0,%xmm6
  80bea8:	c5 fb 10 29          	vmovsd (%rcx),%xmm5
  80beac:	4d 8d 6c 45 00       	lea    0x0(%r13,%rax,2),%r13
  80beb1:	c5 d1 16 3c 01       	vmovhpd (%rcx,%rax,1),%xmm5,%xmm7
  80beb6:	48 8b 8d 78 fe ff ff 	mov    -0x188(%rbp),%rcx
  80bebd:	c5 49 59 e7          	vmulpd %xmm7,%xmm6,%xmm12
  80bec1:	4a 8d 04 19          	lea    (%rcx,%r11,1),%rax
  80bec5:	48 8b 8d 18 ff ff ff 	mov    -0xe8(%rbp),%rcx
  80becc:	c5 7b 10 00          	vmovsd (%rax),%xmm8
  80bed0:	c5 39 16 14 08       	vmovhpd (%rax,%rcx,1),%xmm8,%xmm10
  80bed5:	4b 8d 04 18          	lea    (%r8,%r11,1),%rax
  80bed9:	c5 7b 10 08          	vmovsd (%rax),%xmm9
  80bedd:	4d 8d 1c 4b          	lea    (%r11,%rcx,2),%r11
  80bee1:	c5 31 16 1c 08       	vmovhpd (%rax,%rcx,1),%xmm9,%xmm11
  80bee6:	4a 8d 0c 16          	lea    (%rsi,%r10,1),%rcx
  80beea:	c4 41 29 58 eb       	vaddpd %xmm11,%xmm10,%xmm13
  80beef:	c4 41 19 59 f5       	vmulpd %xmm13,%xmm12,%xmm14
  80bef4:	c4 c1 09 59 df       	vmulpd %xmm15,%xmm14,%xmm3
  80bef9:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
  80bf00:	c5 fb 10 11          	vmovsd (%rcx),%xmm2
  80bf04:	c5 e9 16 24 01       	vmovhpd (%rcx,%rax,1),%xmm2,%xmm4
  80bf09:	4d 8d 14 42          	lea    (%r10,%rax,2),%r10
  80bf0d:	c5 e1 59 f4          	vmulpd %xmm4,%xmm3,%xmm6
  80bf11:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  80bf18:	4a 8d 0c 27          	lea    (%rdi,%r12,1),%rcx
  80bf1c:	c5 fb 10 29          	vmovsd (%rcx),%xmm5
  80bf20:	c5 d1 16 3c 01       	vmovhpd (%rcx,%rax,1),%xmm5,%xmm7
  80bf25:	4d 8d 24 44          	lea    (%r12,%rax,2),%r12
  80bf29:	c5 49 59 c7          	vmulpd %xmm7,%xmm6,%xmm8
  80bf2d:	48 8b 8d 68 fe ff ff 	mov    -0x198(%rbp),%rcx
  80bf34:	c5 79 11 04 d1       	vmovupd %xmm8,(%rcx,%rdx,8)
  80bf39:	48 83 c2 02          	add    $0x2,%rdx
  80bf3d:	48 3b 95 58 fe ff ff 	cmp    -0x1a8(%rbp),%rdx
  80bf44:	0f 82 1d ff ff ff    	jb     80be67 <t3dmix_mod_mp_t3dmix4_tile_+0x3fc7>
  80bf4a:	48 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%rax
  80bf51:	48 8b 8d 60 fb ff ff 	mov    -0x4a0(%rbp),%rcx
  80bf58:	4c 8b 85 68 fb ff ff 	mov    -0x498(%rbp),%r8
  80bf5f:	4c 8b ad 18 ff ff ff 	mov    -0xe8(%rbp),%r13
  80bf66:	4c 8b a5 f8 fe ff ff 	mov    -0x108(%rbp),%r12
  80bf6d:	4c 8b 9d e8 fe ff ff 	mov    -0x118(%rbp),%r11
  80bf74:	4c 8b 95 f0 fe ff ff 	mov    -0x110(%rbp),%r10
  80bf7b:	48 8b 95 00 ff ff ff 	mov    -0x100(%rbp),%rdx
  80bf82:	4c 0f af e8          	imul   %rax,%r13
  80bf86:	4c 0f af e0          	imul   %rax,%r12
  80bf8a:	4c 0f af d8          	imul   %rax,%r11
  80bf8e:	4c 0f af d0          	imul   %rax,%r10
  80bf92:	48 0f af d0          	imul   %rax,%rdx
  80bf96:	48 3b 85 50 fe ff ff 	cmp    -0x1b0(%rbp),%rax
  80bf9d:	0f 83 05 01 00 00    	jae    80c0a8 <t3dmix_mod_mp_t3dmix4_tile_+0x4208>
  80bfa3:	4c 8b b5 90 fd ff ff 	mov    -0x270(%rbp),%r14
  80bfaa:	48 89 8d 60 fb ff ff 	mov    %rcx,-0x4a0(%rbp)
  80bfb1:	4c 89 85 68 fb ff ff 	mov    %r8,-0x498(%rbp)
  80bfb8:	4d 8d 3c 0e          	lea    (%r14,%rcx,1),%r15
  80bfbc:	4c 89 bd c8 fa ff ff 	mov    %r15,-0x538(%rbp)
  80bfc3:	4c 8b bd f8 fc ff ff 	mov    -0x308(%rbp),%r15
  80bfca:	4c 8b b5 58 fd ff ff 	mov    -0x2a8(%rbp),%r14
  80bfd1:	4c 03 f9             	add    %rcx,%r15
  80bfd4:	4c 89 bd c0 fa ff ff 	mov    %r15,-0x540(%rbp)
  80bfdb:	4c 8b bd 18 fd ff ff 	mov    -0x2e8(%rbp),%r15
  80bfe2:	4c 03 f1             	add    %rcx,%r14
  80bfe5:	4c 89 b5 80 fe ff ff 	mov    %r14,-0x180(%rbp)
  80bfec:	4c 8b b5 c0 fa ff ff 	mov    -0x540(%rbp),%r14
  80bff3:	48 8b 8d c8 fa ff ff 	mov    -0x538(%rbp),%rcx
  80bffa:	4d 03 f8             	add    %r8,%r15
  80bffd:	4c 89 bd 90 fe ff ff 	mov    %r15,-0x170(%rbp)
  80c004:	4c 8b bd 10 fd ff ff 	mov    -0x2f0(%rbp),%r15
  80c00b:	4d 03 f8             	add    %r8,%r15
  80c00e:	4d 89 f8             	mov    %r15,%r8
  80c011:	4c 8b bd 70 fe ff ff 	mov    -0x190(%rbp),%r15
  80c018:	c4 81 7b 10 5c 05 00 	vmovsd 0x0(%r13,%r8,1),%xmm3
  80c01f:	c4 a1 73 59 14 3a    	vmulsd (%rdx,%r15,1),%xmm1,%xmm2
  80c025:	4c 8b bd 90 fe ff ff 	mov    -0x170(%rbp),%r15
  80c02c:	c4 81 6b 59 24 0c    	vmulsd (%r12,%r9,1),%xmm2,%xmm4
  80c032:	c4 81 63 58 6c 3d 00 	vaddsd 0x0(%r13,%r15,1),%xmm3,%xmm5
  80c039:	4c 8b bd 80 fe ff ff 	mov    -0x180(%rbp),%r15
  80c040:	c5 db 59 fd          	vmulsd %xmm5,%xmm4,%xmm7
  80c044:	c4 c1 7b 10 34 c7    	vmovsd (%r15,%rax,8),%xmm6
  80c04a:	48 03 95 00 ff ff ff 	add    -0x100(%rbp),%rdx
  80c051:	4c 03 a5 f8 fe ff ff 	add    -0x108(%rbp),%r12
  80c058:	4c 03 ad 18 ff ff ff 	add    -0xe8(%rbp),%r13
  80c05f:	c5 4b 5c 44 c1 f8    	vsubsd -0x8(%rcx,%rax,8),%xmm6,%xmm8
  80c065:	c4 41 43 59 c8       	vmulsd %xmm8,%xmm7,%xmm9
  80c06a:	c4 41 33 59 14 32    	vmulsd (%r10,%rsi,1),%xmm9,%xmm10
  80c070:	c4 41 2b 59 1c 3b    	vmulsd (%r11,%rdi,1),%xmm10,%xmm11
  80c076:	c4 41 7b 11 1c c6    	vmovsd %xmm11,(%r14,%rax,8)
  80c07c:	48 ff c0             	inc    %rax
  80c07f:	4c 03 95 f0 fe ff ff 	add    -0x110(%rbp),%r10
  80c086:	4c 03 9d e8 fe ff ff 	add    -0x118(%rbp),%r11
  80c08d:	48 3b 85 50 fe ff ff 	cmp    -0x1b0(%rbp),%rax
  80c094:	0f 82 77 ff ff ff    	jb     80c011 <t3dmix_mod_mp_t3dmix4_tile_+0x4171>
  80c09a:	48 8b 8d 60 fb ff ff 	mov    -0x4a0(%rbp),%rcx
  80c0a1:	4c 8b 85 68 fb ff ff 	mov    -0x498(%rbp),%r8
  80c0a8:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
  80c0af:	48 8b 95 20 fd ff ff 	mov    -0x2e0(%rbp),%rdx
  80c0b6:	48 ff c2             	inc    %rdx
  80c0b9:	48 03 85 c0 fd ff ff 	add    -0x240(%rbp),%rax
  80c0c0:	4c 03 8d b8 fd ff ff 	add    -0x248(%rbp),%r9
  80c0c7:	4c 03 85 d8 fd ff ff 	add    -0x228(%rbp),%r8
  80c0ce:	48 03 b5 b0 fd ff ff 	add    -0x250(%rbp),%rsi
  80c0d5:	48 03 bd a8 fd ff ff 	add    -0x258(%rbp),%rdi
  80c0dc:	48 03 8d 40 fe ff ff 	add    -0x1c0(%rbp),%rcx
  80c0e3:	48 89 85 70 fe ff ff 	mov    %rax,-0x190(%rbp)
  80c0ea:	48 89 95 20 fd ff ff 	mov    %rdx,-0x2e0(%rbp)
  80c0f1:	48 3b 95 80 fd ff ff 	cmp    -0x280(%rbp),%rdx
  80c0f8:	0f 82 71 fb ff ff    	jb     80bc6f <t3dmix_mod_mp_t3dmix4_tile_+0x3dcf>
  80c0fe:	4c 8b ad d8 f8 ff ff 	mov    -0x728(%rbp),%r13
  80c105:	4c 8b b5 e0 f8 ff ff 	mov    -0x720(%rbp),%r14
  80c10c:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  80c113:	48 83 bd 28 ff ff ff 	cmpq   $0x8,-0xd8(%rbp)
  80c11a:	08 
  80c11b:	0f 85 ac 02 00 00    	jne    80c3cd <t3dmix_mod_mp_t3dmix4_tile_+0x452d>
  80c121:	48 83 bd 20 ff ff ff 	cmpq   $0x8,-0xe0(%rbp)
  80c128:	08 
  80c129:	0f 85 9e 02 00 00    	jne    80c3cd <t3dmix_mod_mp_t3dmix4_tile_+0x452d>
  80c12f:	48 83 bd 18 ff ff ff 	cmpq   $0x8,-0xe8(%rbp)
  80c136:	08 
  80c137:	0f 85 90 02 00 00    	jne    80c3cd <t3dmix_mod_mp_t3dmix4_tile_+0x452d>
  80c13d:	48 83 bd 10 ff ff ff 	cmpq   $0x8,-0xf0(%rbp)
  80c144:	08 
  80c145:	0f 85 82 02 00 00    	jne    80c3cd <t3dmix_mod_mp_t3dmix4_tile_+0x452d>
  80c14b:	48 83 bd 08 ff ff ff 	cmpq   $0x8,-0xf8(%rbp)
  80c152:	08 
  80c153:	0f 85 74 02 00 00    	jne    80c3cd <t3dmix_mod_mp_t3dmix4_tile_+0x452d>
  80c159:	45 33 c9             	xor    %r9d,%r9d
  80c15c:	48 8b 85 c0 f9 ff ff 	mov    -0x640(%rbp),%rax
  80c163:	33 ff                	xor    %edi,%edi
  80c165:	48 8b b5 60 f3 ff ff 	mov    -0xca0(%rbp),%rsi
  80c16c:	45 33 d2             	xor    %r10d,%r10d
  80c16f:	4c 8b 85 68 f3 ff ff 	mov    -0xc98(%rbp),%r8
  80c176:	4c 8b 9d 70 f3 ff ff 	mov    -0xc90(%rbp),%r11
  80c17d:	48 3b 85 c8 f9 ff ff 	cmp    -0x638(%rbp),%rax
  80c184:	0f 8f 79 07 00 00    	jg     80c903 <t3dmix_mod_mp_t3dmix4_tile_+0x4a63>
  80c18a:	48 8b 95 f0 f8 ff ff 	mov    -0x710(%rbp),%rdx
  80c191:	49 0f af d4          	imul   %r12,%rdx
  80c195:	c5 fd 10 05 c3 91 0b 	vmovupd 0xb91c3(%rip),%ymm0        # 8c5360 <var$630.126.450+0x4a0>
  80c19c:	00 
  80c19d:	c5 fb 10 0d 73 b0 0b 	vmovsd 0xbb073(%rip),%xmm1        # 8c7218 <__STRLITPACK_199.115+0x88>
  80c1a4:	00 
  80c1a5:	48 8b 8d f8 f8 ff ff 	mov    -0x708(%rbp),%rcx
  80c1ac:	49 0f af cc          	imul   %r12,%rcx
  80c1b0:	48 8b 85 88 f8 ff ff 	mov    -0x778(%rbp),%rax
  80c1b7:	48 03 8d 90 f8 ff ff 	add    -0x770(%rbp),%rcx
  80c1be:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80c1c5:	48 03 c2             	add    %rdx,%rax
  80c1c8:	48 03 95 78 f8 ff ff 	add    -0x788(%rbp),%rdx
  80c1cf:	48 89 95 d0 fa ff ff 	mov    %rdx,-0x530(%rbp)
  80c1d6:	48 89 85 d8 fa ff ff 	mov    %rax,-0x528(%rbp)
  80c1dd:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
  80c1e4:	48 8b 85 00 fd ff ff 	mov    -0x300(%rbp),%rax
  80c1eb:	48 3b 85 08 fd ff ff 	cmp    -0x2f8(%rbp),%rax
  80c1f2:	0f 8c 96 01 00 00    	jl     80c38e <t3dmix_mod_mp_t3dmix4_tile_+0x44ee>
  80c1f8:	48 83 fa 04          	cmp    $0x4,%rdx
  80c1fc:	0f 8c 9f 0d 00 00    	jl     80cfa1 <t3dmix_mod_mp_t3dmix4_tile_+0x5101>
  80c202:	4c 8b bd 58 fd ff ff 	mov    -0x2a8(%rbp),%r15
  80c209:	45 33 f6             	xor    %r14d,%r14d
  80c20c:	4c 8b ad 88 fd ff ff 	mov    -0x278(%rbp),%r13
  80c213:	4c 8b a5 c0 fc ff ff 	mov    -0x340(%rbp),%r12
  80c21a:	48 8b 85 28 fb ff ff 	mov    -0x4d8(%rbp),%rax
  80c221:	4c 03 ff             	add    %rdi,%r15
  80c224:	4c 89 bd f8 fa ff ff 	mov    %r15,-0x508(%rbp)
  80c22b:	4c 03 ef             	add    %rdi,%r13
  80c22e:	4c 8b bd d8 fa ff ff 	mov    -0x528(%rbp),%r15
  80c235:	4c 03 e7             	add    %rdi,%r12
  80c238:	48 89 bd 70 fb ff ff 	mov    %rdi,-0x490(%rbp)
  80c23f:	4c 89 8d 78 fb ff ff 	mov    %r9,-0x488(%rbp)
  80c246:	4c 8b 8d f8 fa ff ff 	mov    -0x508(%rbp),%r9
  80c24d:	4d 03 fa             	add    %r10,%r15
  80c250:	4c 89 bd e8 fa ff ff 	mov    %r15,-0x518(%rbp)
  80c257:	4c 8b bd d0 fa ff ff 	mov    -0x530(%rbp),%r15
  80c25e:	48 8b bd e8 fa ff ff 	mov    -0x518(%rbp),%rdi
  80c265:	4d 03 fa             	add    %r10,%r15
  80c268:	4c 89 bd e0 fa ff ff 	mov    %r15,-0x520(%rbp)
  80c26f:	49 89 c7             	mov    %rax,%r15
  80c272:	48 8b 95 e0 fa ff ff 	mov    -0x520(%rbp),%rdx
  80c279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  80c280:	c4 a1 7d 59 14 f1    	vmulpd (%rcx,%r14,8),%ymm0,%ymm2
  80c286:	c4 a1 7d 10 1c f7    	vmovupd (%rdi,%r14,8),%ymm3
  80c28c:	c4 81 7d 10 34 f1    	vmovupd (%r9,%r14,8),%ymm6
  80c292:	c4 a1 6d 59 24 f6    	vmulpd (%rsi,%r14,8),%ymm2,%ymm4
  80c298:	c4 a1 65 58 2c f2    	vaddpd (%rdx,%r14,8),%ymm3,%ymm5
  80c29e:	c4 01 4d 5c 44 f5 f8 	vsubpd -0x8(%r13,%r14,8),%ymm6,%ymm8
  80c2a5:	c5 dd 59 fd          	vmulpd %ymm5,%ymm4,%ymm7
  80c2a9:	c4 41 45 59 c8       	vmulpd %ymm8,%ymm7,%ymm9
  80c2ae:	c4 01 35 59 14 f0    	vmulpd (%r8,%r14,8),%ymm9,%ymm10
  80c2b4:	c4 01 2d 59 1c f3    	vmulpd (%r11,%r14,8),%ymm10,%ymm11
  80c2ba:	c4 01 7d 11 1c f4    	vmovupd %ymm11,(%r12,%r14,8)
  80c2c0:	49 83 c6 04          	add    $0x4,%r14
  80c2c4:	4d 3b f7             	cmp    %r15,%r14
  80c2c7:	72 b7                	jb     80c280 <t3dmix_mod_mp_t3dmix4_tile_+0x43e0>
  80c2c9:	48 8b bd 70 fb ff ff 	mov    -0x490(%rbp),%rdi
  80c2d0:	4c 8b 8d 78 fb ff ff 	mov    -0x488(%rbp),%r9
  80c2d7:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
  80c2de:	48 3b c2             	cmp    %rdx,%rax
  80c2e1:	0f 83 a7 00 00 00    	jae    80c38e <t3dmix_mod_mp_t3dmix4_tile_+0x44ee>
  80c2e7:	4c 8b ad 88 fd ff ff 	mov    -0x278(%rbp),%r13
  80c2ee:	4c 8b bd 58 fd ff ff 	mov    -0x2a8(%rbp),%r15
  80c2f5:	4c 8b b5 c0 fc ff ff 	mov    -0x340(%rbp),%r14
  80c2fc:	4c 89 8d 78 fb ff ff 	mov    %r9,-0x488(%rbp)
  80c303:	4d 8d 64 3d 00       	lea    0x0(%r13,%rdi,1),%r12
  80c308:	4c 89 a5 f0 fa ff ff 	mov    %r12,-0x510(%rbp)
  80c30f:	4d 8d 24 3f          	lea    (%r15,%rdi,1),%r12
  80c313:	4c 8b bd d0 fa ff ff 	mov    -0x530(%rbp),%r15
  80c31a:	4d 8d 2c 3e          	lea    (%r14,%rdi,1),%r13
  80c31e:	4c 8b b5 d8 fa ff ff 	mov    -0x528(%rbp),%r14
  80c325:	4d 03 fa             	add    %r10,%r15
  80c328:	4d 89 f9             	mov    %r15,%r9
  80c32b:	4d 03 f2             	add    %r10,%r14
  80c32e:	4c 8b bd f0 fa ff ff 	mov    -0x510(%rbp),%r15
  80c335:	0f 1f 40 00          	nopl   0x0(%rax)
  80c339:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  80c340:	c5 f3 59 14 c1       	vmulsd (%rcx,%rax,8),%xmm1,%xmm2
  80c345:	c4 c1 7b 10 1c c6    	vmovsd (%r14,%rax,8),%xmm3
  80c34b:	c5 eb 59 24 c6       	vmulsd (%rsi,%rax,8),%xmm2,%xmm4
  80c350:	c4 c1 63 58 2c c1    	vaddsd (%r9,%rax,8),%xmm3,%xmm5
  80c356:	c4 c1 7b 10 34 c4    	vmovsd (%r12,%rax,8),%xmm6
  80c35c:	c5 db 59 fd          	vmulsd %xmm5,%xmm4,%xmm7
  80c360:	c4 41 4b 5c 44 c7 f8 	vsubsd -0x8(%r15,%rax,8),%xmm6,%xmm8
  80c367:	c4 41 43 59 c8       	vmulsd %xmm8,%xmm7,%xmm9
  80c36c:	c4 41 33 59 14 c0    	vmulsd (%r8,%rax,8),%xmm9,%xmm10
  80c372:	c4 41 2b 59 1c c3    	vmulsd (%r11,%rax,8),%xmm10,%xmm11
  80c378:	c4 41 7b 11 5c c5 00 	vmovsd %xmm11,0x0(%r13,%rax,8)
  80c37f:	48 ff c0             	inc    %rax
  80c382:	48 3b c2             	cmp    %rdx,%rax
  80c385:	72 b9                	jb     80c340 <t3dmix_mod_mp_t3dmix4_tile_+0x44a0>
  80c387:	4c 8b 8d 78 fb ff ff 	mov    -0x488(%rbp),%r9
  80c38e:	49 ff c1             	inc    %r9
  80c391:	48 03 bd 40 fe ff ff 	add    -0x1c0(%rbp),%rdi
  80c398:	48 03 8d e8 fd ff ff 	add    -0x218(%rbp),%rcx
  80c39f:	48 03 b5 e0 fd ff ff 	add    -0x220(%rbp),%rsi
  80c3a6:	4c 03 95 d8 fd ff ff 	add    -0x228(%rbp),%r10
  80c3ad:	4c 03 85 d0 fd ff ff 	add    -0x230(%rbp),%r8
  80c3b4:	4c 03 9d c8 fd ff ff 	add    -0x238(%rbp),%r11
  80c3bb:	4c 3b 8d 68 fd ff ff 	cmp    -0x298(%rbp),%r9
  80c3c2:	0f 82 1c fe ff ff    	jb     80c1e4 <t3dmix_mod_mp_t3dmix4_tile_+0x4344>
  80c3c8:	e9 21 05 00 00       	jmpq   80c8ee <t3dmix_mod_mp_t3dmix4_tile_+0x4a4e>
  80c3cd:	33 d2                	xor    %edx,%edx
  80c3cf:	48 8b 85 c0 f9 ff ff 	mov    -0x640(%rbp),%rax
  80c3d6:	45 33 c0             	xor    %r8d,%r8d
  80c3d9:	4c 8b 8d d0 f9 ff ff 	mov    -0x630(%rbp),%r9
  80c3e0:	33 c9                	xor    %ecx,%ecx
  80c3e2:	48 8b b5 d8 f9 ff ff 	mov    -0x628(%rbp),%rsi
  80c3e9:	48 8b bd e8 f9 ff ff 	mov    -0x618(%rbp),%rdi
  80c3f0:	48 3b 85 c8 f9 ff ff 	cmp    -0x638(%rbp),%rax
  80c3f7:	0f 8f 06 05 00 00    	jg     80c903 <t3dmix_mod_mp_t3dmix4_tile_+0x4a63>
  80c3fd:	4c 8b 95 f0 f8 ff ff 	mov    -0x710(%rbp),%r10
  80c404:	4d 0f af d4          	imul   %r12,%r10
  80c408:	48 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%rax
  80c40f:	48 89 95 40 fd ff ff 	mov    %rdx,-0x2c0(%rbp)
  80c416:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80c41d:	c5 fb 10 0d f3 ad 0b 	vmovsd 0xbadf3(%rip),%xmm1        # 8c7218 <__STRLITPACK_199.115+0x88>
  80c424:	00 
  80c425:	4e 8d 1c 10          	lea    (%rax,%r10,1),%r11
  80c429:	48 8b 85 f8 f8 ff ff 	mov    -0x708(%rbp),%rax
  80c430:	49 0f af c4          	imul   %r12,%rax
  80c434:	4c 03 95 a8 f8 ff ff 	add    -0x758(%rbp),%r10
  80c43b:	48 03 85 c0 f8 ff ff 	add    -0x740(%rbp),%rax
  80c442:	48 89 85 b8 fe ff ff 	mov    %rax,-0x148(%rbp)
  80c449:	4c 89 95 30 fd ff ff 	mov    %r10,-0x2d0(%rbp)
  80c450:	4c 89 9d 38 fd ff ff 	mov    %r11,-0x2c8(%rbp)
  80c457:	c5 f9 10 05 41 a5 0b 	vmovupd 0xba541(%rip),%xmm0        # 8c69a0 <__STRLITPACK_19.34+0x10>
  80c45e:	00 
  80c45f:	48 8b 85 00 fd ff ff 	mov    -0x300(%rbp),%rax
  80c466:	48 3b 85 08 fd ff ff 	cmp    -0x2f8(%rbp),%rax
  80c46d:	0f 8c 25 04 00 00    	jl     80c898 <t3dmix_mod_mp_t3dmix4_tile_+0x49f8>
  80c473:	48 83 bd 98 fe ff ff 	cmpq   $0x2,-0x168(%rbp)
  80c47a:	02 
  80c47b:	0f 8c 36 0b 00 00    	jl     80cfb7 <t3dmix_mod_mp_t3dmix4_tile_+0x5117>
  80c481:	48 8b 85 c0 fc ff ff 	mov    -0x340(%rbp),%rax
  80c488:	4c 8d 34 08          	lea    (%rax,%rcx,1),%r14
  80c48c:	4c 89 b5 b0 fe ff ff 	mov    %r14,-0x150(%rbp)
  80c493:	49 83 e6 0f          	and    $0xf,%r14
  80c497:	45 85 f6             	test   %r14d,%r14d
  80c49a:	74 13                	je     80c4af <t3dmix_mod_mp_t3dmix4_tile_+0x460f>
  80c49c:	41 f7 c6 07 00 00 00 	test   $0x7,%r14d
  80c4a3:	0f 85 0e 0b 00 00    	jne    80cfb7 <t3dmix_mod_mp_t3dmix4_tile_+0x5117>
  80c4a9:	41 be 01 00 00 00    	mov    $0x1,%r14d
  80c4af:	44 89 f2             	mov    %r14d,%edx
  80c4b2:	48 8d 42 02          	lea    0x2(%rdx),%rax
  80c4b6:	48 3b 85 98 fe ff ff 	cmp    -0x168(%rbp),%rax
  80c4bd:	0f 8f f4 0a 00 00    	jg     80cfb7 <t3dmix_mod_mp_t3dmix4_tile_+0x5117>
  80c4c3:	4c 8b bd 88 fd ff ff 	mov    -0x278(%rbp),%r15
  80c4ca:	44 8b a5 78 fd ff ff 	mov    -0x288(%rbp),%r12d
  80c4d1:	44 89 e0             	mov    %r12d,%eax
  80c4d4:	41 2b c6             	sub    %r14d,%eax
  80c4d7:	83 e0 01             	and    $0x1,%eax
  80c4da:	4c 03 f9             	add    %rcx,%r15
  80c4dd:	4c 89 bd a8 fe ff ff 	mov    %r15,-0x158(%rbp)
  80c4e4:	f7 d8                	neg    %eax
  80c4e6:	4c 8b bd 58 fd ff ff 	mov    -0x2a8(%rbp),%r15
  80c4ed:	41 03 c4             	add    %r12d,%eax
  80c4f0:	45 33 e4             	xor    %r12d,%r12d
  80c4f3:	45 33 d2             	xor    %r10d,%r10d
  80c4f6:	45 33 ed             	xor    %r13d,%r13d
  80c4f9:	4c 03 f9             	add    %rcx,%r15
  80c4fc:	4c 89 bd d0 fe ff ff 	mov    %r15,-0x130(%rbp)
  80c503:	45 33 db             	xor    %r11d,%r11d
  80c506:	4c 8b bd 38 fd ff ff 	mov    -0x2c8(%rbp),%r15
  80c50d:	48 63 c0             	movslq %eax,%rax
  80c510:	4d 03 f8             	add    %r8,%r15
  80c513:	4c 89 bd 48 fd ff ff 	mov    %r15,-0x2b8(%rbp)
  80c51a:	4c 8b bd 30 fd ff ff 	mov    -0x2d0(%rbp),%r15
  80c521:	4d 03 f8             	add    %r8,%r15
  80c524:	4c 89 bd c0 fe ff ff 	mov    %r15,-0x140(%rbp)
  80c52b:	45 85 f6             	test   %r14d,%r14d
  80c52e:	0f 86 c9 00 00 00    	jbe    80c5fd <t3dmix_mod_mp_t3dmix4_tile_+0x475d>
  80c534:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
  80c53b:	48 89 8d 80 fb ff ff 	mov    %rcx,-0x480(%rbp)
  80c542:	4c 89 85 88 fb ff ff 	mov    %r8,-0x478(%rbp)
  80c549:	4c 89 d8             	mov    %r11,%rax
  80c54c:	4d 89 d6             	mov    %r10,%r14
  80c54f:	48 8b 8d 48 fd ff ff 	mov    -0x2b8(%rbp),%rcx
  80c556:	4c 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%r8
  80c55d:	4c 8b bd b8 fe ff ff 	mov    -0x148(%rbp),%r15
  80c564:	c4 81 7b 10 34 e0    	vmovsd (%r8,%r12,8),%xmm6
  80c56a:	c4 81 73 59 14 3a    	vmulsd (%r10,%r15,1),%xmm1,%xmm2
  80c570:	4c 8b bd c0 fe ff ff 	mov    -0x140(%rbp),%r15
  80c577:	c4 81 6b 59 24 0b    	vmulsd (%r11,%r9,1),%xmm2,%xmm4
  80c57d:	c4 a1 7b 10 1c 38    	vmovsd (%rax,%r15,1),%xmm3
  80c583:	4c 8b bd a8 fe ff ff 	mov    -0x158(%rbp),%r15
  80c58a:	4c 03 95 28 ff ff ff 	add    -0xd8(%rbp),%r10
  80c591:	4c 03 9d 20 ff ff ff 	add    -0xe0(%rbp),%r11
  80c598:	c5 e3 58 2c 08       	vaddsd (%rax,%rcx,1),%xmm3,%xmm5
  80c59d:	c4 01 4b 5c 44 e7 f8 	vsubsd -0x8(%r15,%r12,8),%xmm6,%xmm8
  80c5a4:	c5 db 59 fd          	vmulsd %xmm5,%xmm4,%xmm7
  80c5a8:	c4 41 43 59 c8       	vmulsd %xmm8,%xmm7,%xmm9
  80c5ad:	c4 41 33 59 14 36    	vmulsd (%r14,%rsi,1),%xmm9,%xmm10
  80c5b3:	c4 41 2b 59 5c 3d 00 	vmulsd 0x0(%r13,%rdi,1),%xmm10,%xmm11
  80c5ba:	4c 8b bd b0 fe ff ff 	mov    -0x150(%rbp),%r15
  80c5c1:	4c 03 b5 10 ff ff ff 	add    -0xf0(%rbp),%r14
  80c5c8:	4c 03 ad 08 ff ff ff 	add    -0xf8(%rbp),%r13
  80c5cf:	c4 01 7b 11 1c e7    	vmovsd %xmm11,(%r15,%r12,8)
  80c5d5:	49 ff c4             	inc    %r12
  80c5d8:	48 03 85 18 ff ff ff 	add    -0xe8(%rbp),%rax
  80c5df:	4c 3b e2             	cmp    %rdx,%r12
  80c5e2:	0f 82 75 ff ff ff    	jb     80c55d <t3dmix_mod_mp_t3dmix4_tile_+0x46bd>
  80c5e8:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
  80c5ef:	48 8b 8d 80 fb ff ff 	mov    -0x480(%rbp),%rcx
  80c5f6:	4c 8b 85 88 fb ff ff 	mov    -0x478(%rbp),%r8
  80c5fd:	4c 8b 9d 18 ff ff ff 	mov    -0xe8(%rbp),%r11
  80c604:	4c 8b a5 08 ff ff ff 	mov    -0xf8(%rbp),%r12
  80c60b:	4c 8b 95 10 ff ff ff 	mov    -0xf0(%rbp),%r10
  80c612:	4c 8b ad 20 ff ff ff 	mov    -0xe0(%rbp),%r13
  80c619:	4c 8b b5 28 ff ff ff 	mov    -0xd8(%rbp),%r14
  80c620:	4c 89 85 88 fb ff ff 	mov    %r8,-0x478(%rbp)
  80c627:	4c 0f af da          	imul   %rdx,%r11
  80c62b:	4c 0f af e2          	imul   %rdx,%r12
  80c62f:	4c 0f af d2          	imul   %rdx,%r10
  80c633:	4c 0f af ea          	imul   %rdx,%r13
  80c637:	4c 0f af f2          	imul   %rdx,%r14
  80c63b:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
  80c642:	48 89 8d 80 fb ff ff 	mov    %rcx,-0x480(%rbp)
  80c649:	4c 8b 85 48 fd ff ff 	mov    -0x2b8(%rbp),%r8
  80c650:	4c 8b bd a8 fe ff ff 	mov    -0x158(%rbp),%r15
  80c657:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  80c65e:	c5 f9 10 14 d0       	vmovupd (%rax,%rdx,8),%xmm2
  80c663:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  80c66a:	c4 41 69 5c 7c d7 f8 	vsubpd -0x8(%r15,%rdx,8),%xmm2,%xmm15
  80c671:	4a 8d 0c 30          	lea    (%rax,%r14,1),%rcx
  80c675:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
  80c67c:	c5 fb 10 19          	vmovsd (%rcx),%xmm3
  80c680:	c5 e1 16 24 01       	vmovhpd (%rcx,%rax,1),%xmm3,%xmm4
  80c685:	4d 8d 34 46          	lea    (%r14,%rax,2),%r14
  80c689:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
  80c690:	4b 8d 0c 29          	lea    (%r9,%r13,1),%rcx
  80c694:	c5 f9 59 f4          	vmulpd %xmm4,%xmm0,%xmm6
  80c698:	c5 fb 10 29          	vmovsd (%rcx),%xmm5
  80c69c:	4d 8d 6c 45 00       	lea    0x0(%r13,%rax,2),%r13
  80c6a1:	c5 d1 16 3c 01       	vmovhpd (%rcx,%rax,1),%xmm5,%xmm7
  80c6a6:	48 8b 8d c0 fe ff ff 	mov    -0x140(%rbp),%rcx
  80c6ad:	c5 49 59 e7          	vmulpd %xmm7,%xmm6,%xmm12
  80c6b1:	4a 8d 04 19          	lea    (%rcx,%r11,1),%rax
  80c6b5:	48 8b 8d 18 ff ff ff 	mov    -0xe8(%rbp),%rcx
  80c6bc:	c5 7b 10 00          	vmovsd (%rax),%xmm8
  80c6c0:	c5 39 16 14 08       	vmovhpd (%rax,%rcx,1),%xmm8,%xmm10
  80c6c5:	4b 8d 04 18          	lea    (%r8,%r11,1),%rax
  80c6c9:	c5 7b 10 08          	vmovsd (%rax),%xmm9
  80c6cd:	4d 8d 1c 4b          	lea    (%r11,%rcx,2),%r11
  80c6d1:	c5 31 16 1c 08       	vmovhpd (%rax,%rcx,1),%xmm9,%xmm11
  80c6d6:	4a 8d 0c 16          	lea    (%rsi,%r10,1),%rcx
  80c6da:	c4 41 29 58 eb       	vaddpd %xmm11,%xmm10,%xmm13
  80c6df:	c4 41 19 59 f5       	vmulpd %xmm13,%xmm12,%xmm14
  80c6e4:	c4 c1 09 59 df       	vmulpd %xmm15,%xmm14,%xmm3
  80c6e9:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
  80c6f0:	c5 fb 10 11          	vmovsd (%rcx),%xmm2
  80c6f4:	c5 e9 16 24 01       	vmovhpd (%rcx,%rax,1),%xmm2,%xmm4
  80c6f9:	4d 8d 14 42          	lea    (%r10,%rax,2),%r10
  80c6fd:	c5 e1 59 f4          	vmulpd %xmm4,%xmm3,%xmm6
  80c701:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
  80c708:	4a 8d 0c 27          	lea    (%rdi,%r12,1),%rcx
  80c70c:	c5 fb 10 29          	vmovsd (%rcx),%xmm5
  80c710:	c5 d1 16 3c 01       	vmovhpd (%rcx,%rax,1),%xmm5,%xmm7
  80c715:	4d 8d 24 44          	lea    (%r12,%rax,2),%r12
  80c719:	c5 49 59 c7          	vmulpd %xmm7,%xmm6,%xmm8
  80c71d:	48 8b 8d b0 fe ff ff 	mov    -0x150(%rbp),%rcx
  80c724:	c5 79 11 04 d1       	vmovupd %xmm8,(%rcx,%rdx,8)
  80c729:	48 83 c2 02          	add    $0x2,%rdx
  80c72d:	48 3b 95 a0 fe ff ff 	cmp    -0x160(%rbp),%rdx
  80c734:	0f 82 1d ff ff ff    	jb     80c657 <t3dmix_mod_mp_t3dmix4_tile_+0x47b7>
  80c73a:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
  80c741:	48 8b 8d 80 fb ff ff 	mov    -0x480(%rbp),%rcx
  80c748:	4c 8b 85 88 fb ff ff 	mov    -0x478(%rbp),%r8
  80c74f:	4c 8b ad 18 ff ff ff 	mov    -0xe8(%rbp),%r13
  80c756:	4c 8b a5 20 ff ff ff 	mov    -0xe0(%rbp),%r12
  80c75d:	4c 8b 9d 08 ff ff ff 	mov    -0xf8(%rbp),%r11
  80c764:	4c 8b 95 10 ff ff ff 	mov    -0xf0(%rbp),%r10
  80c76b:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
  80c772:	4c 0f af e8          	imul   %rax,%r13
  80c776:	4c 0f af e0          	imul   %rax,%r12
  80c77a:	4c 0f af d8          	imul   %rax,%r11
  80c77e:	4c 0f af d0          	imul   %rax,%r10
  80c782:	48 0f af d0          	imul   %rax,%rdx
  80c786:	48 3b 85 98 fe ff ff 	cmp    -0x168(%rbp),%rax
  80c78d:	0f 83 05 01 00 00    	jae    80c898 <t3dmix_mod_mp_t3dmix4_tile_+0x49f8>
  80c793:	4c 8b b5 88 fd ff ff 	mov    -0x278(%rbp),%r14
  80c79a:	48 89 8d 80 fb ff ff 	mov    %rcx,-0x480(%rbp)
  80c7a1:	4c 89 85 88 fb ff ff 	mov    %r8,-0x478(%rbp)
  80c7a8:	4d 8d 3c 0e          	lea    (%r14,%rcx,1),%r15
  80c7ac:	4c 89 bd 08 fb ff ff 	mov    %r15,-0x4f8(%rbp)
  80c7b3:	4c 8b bd 58 fd ff ff 	mov    -0x2a8(%rbp),%r15
  80c7ba:	4c 8b b5 c0 fc ff ff 	mov    -0x340(%rbp),%r14
  80c7c1:	4c 03 f9             	add    %rcx,%r15
  80c7c4:	4c 89 bd 00 fb ff ff 	mov    %r15,-0x500(%rbp)
  80c7cb:	4c 8b bd 38 fd ff ff 	mov    -0x2c8(%rbp),%r15
  80c7d2:	4c 03 f1             	add    %rcx,%r14
  80c7d5:	4c 89 b5 c8 fe ff ff 	mov    %r14,-0x138(%rbp)
  80c7dc:	4c 8b b5 00 fb ff ff 	mov    -0x500(%rbp),%r14
  80c7e3:	48 8b 8d 08 fb ff ff 	mov    -0x4f8(%rbp),%rcx
  80c7ea:	4d 03 f8             	add    %r8,%r15
  80c7ed:	4c 89 bd d8 fe ff ff 	mov    %r15,-0x128(%rbp)
  80c7f4:	4c 8b bd 30 fd ff ff 	mov    -0x2d0(%rbp),%r15
  80c7fb:	4d 03 f8             	add    %r8,%r15
  80c7fe:	4d 89 f8             	mov    %r15,%r8
  80c801:	4c 8b bd b8 fe ff ff 	mov    -0x148(%rbp),%r15
  80c808:	c4 81 7b 10 5c 05 00 	vmovsd 0x0(%r13,%r8,1),%xmm3
  80c80f:	c4 c1 7b 10 34 c6    	vmovsd (%r14,%rax,8),%xmm6
  80c815:	c4 a1 73 59 14 3a    	vmulsd (%rdx,%r15,1),%xmm1,%xmm2
  80c81b:	c5 4b 5c 44 c1 f8    	vsubsd -0x8(%rcx,%rax,8),%xmm6,%xmm8
  80c821:	c4 81 6b 59 24 0c    	vmulsd (%r12,%r9,1),%xmm2,%xmm4
  80c827:	4c 8b bd d8 fe ff ff 	mov    -0x128(%rbp),%r15
  80c82e:	48 03 95 28 ff ff ff 	add    -0xd8(%rbp),%rdx
  80c835:	4c 03 a5 20 ff ff ff 	add    -0xe0(%rbp),%r12
  80c83c:	c4 81 63 58 6c 3d 00 	vaddsd 0x0(%r13,%r15,1),%xmm3,%xmm5
  80c843:	c5 db 59 fd          	vmulsd %xmm5,%xmm4,%xmm7
  80c847:	c4 41 43 59 c8       	vmulsd %xmm8,%xmm7,%xmm9
  80c84c:	c4 41 33 59 14 32    	vmulsd (%r10,%rsi,1),%xmm9,%xmm10
  80c852:	c4 41 2b 59 1c 3b    	vmulsd (%r11,%rdi,1),%xmm10,%xmm11
  80c858:	4c 8b bd c8 fe ff ff 	mov    -0x138(%rbp),%r15
  80c85f:	4c 03 95 10 ff ff ff 	add    -0xf0(%rbp),%r10
  80c866:	4c 03 9d 08 ff ff ff 	add    -0xf8(%rbp),%r11
  80c86d:	c4 41 7b 11 1c c7    	vmovsd %xmm11,(%r15,%rax,8)
  80c873:	48 ff c0             	inc    %rax
  80c876:	4c 03 ad 18 ff ff ff 	add    -0xe8(%rbp),%r13
  80c87d:	48 3b 85 98 fe ff ff 	cmp    -0x168(%rbp),%rax
  80c884:	0f 82 77 ff ff ff    	jb     80c801 <t3dmix_mod_mp_t3dmix4_tile_+0x4961>
  80c88a:	48 8b 8d 80 fb ff ff 	mov    -0x480(%rbp),%rcx
  80c891:	4c 8b 85 88 fb ff ff 	mov    -0x478(%rbp),%r8
  80c898:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  80c89f:	48 8b 95 40 fd ff ff 	mov    -0x2c0(%rbp),%rdx
  80c8a6:	48 ff c2             	inc    %rdx
  80c8a9:	48 03 85 e8 fd ff ff 	add    -0x218(%rbp),%rax
  80c8b0:	4c 03 8d e0 fd ff ff 	add    -0x220(%rbp),%r9
  80c8b7:	4c 03 85 d8 fd ff ff 	add    -0x228(%rbp),%r8
  80c8be:	48 03 b5 d0 fd ff ff 	add    -0x230(%rbp),%rsi
  80c8c5:	48 03 bd c8 fd ff ff 	add    -0x238(%rbp),%rdi
  80c8cc:	48 03 8d 40 fe ff ff 	add    -0x1c0(%rbp),%rcx
  80c8d3:	48 89 85 b8 fe ff ff 	mov    %rax,-0x148(%rbp)
  80c8da:	48 89 95 40 fd ff ff 	mov    %rdx,-0x2c0(%rbp)
  80c8e1:	48 3b 95 68 fd ff ff 	cmp    -0x298(%rbp),%rdx
  80c8e8:	0f 82 71 fb ff ff    	jb     80c45f <t3dmix_mod_mp_t3dmix4_tile_+0x45bf>
  80c8ee:	4c 8b ad d8 f8 ff ff 	mov    -0x728(%rbp),%r13
  80c8f5:	4c 8b b5 e0 f8 ff ff 	mov    -0x720(%rbp),%r14
  80c8fc:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  80c903:	48 83 bd 30 ff ff ff 	cmpq   $0x8,-0xd0(%rbp)
  80c90a:	08 
  80c90b:	0f 85 f1 01 00 00    	jne    80cb02 <t3dmix_mod_mp_t3dmix4_tile_+0x4c62>
  80c911:	48 83 bd 40 ff ff ff 	cmpq   $0x8,-0xc0(%rbp)
  80c918:	08 
  80c919:	0f 85 e3 01 00 00    	jne    80cb02 <t3dmix_mod_mp_t3dmix4_tile_+0x4c62>
  80c91f:	48 83 bd 38 ff ff ff 	cmpq   $0x8,-0xc8(%rbp)
  80c926:	08 
  80c927:	0f 85 d5 01 00 00    	jne    80cb02 <t3dmix_mod_mp_t3dmix4_tile_+0x4c62>
  80c92d:	48 8b 85 10 fa ff ff 	mov    -0x5f0(%rbp),%rax
  80c934:	33 ff                	xor    %edi,%edi
  80c936:	4c 8b 85 50 f3 ff ff 	mov    -0xcb0(%rbp),%r8
  80c93d:	33 f6                	xor    %esi,%esi
  80c93f:	4c 8b 8d 58 f3 ff ff 	mov    -0xca8(%rbp),%r9
  80c946:	48 3b 85 c0 f9 ff ff 	cmp    -0x640(%rbp),%rax
  80c94d:	0f 8c a1 04 00 00    	jl     80cdf4 <t3dmix_mod_mp_t3dmix4_tile_+0x4f54>
  80c953:	48 8b 8d 00 f9 ff ff 	mov    -0x700(%rbp),%rcx
  80c95a:	49 0f af cc          	imul   %r12,%rcx
  80c95e:	48 03 8d 98 f8 ff ff 	add    -0x768(%rbp),%rcx
  80c965:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
  80c96c:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80c973:	48 8b 85 00 fd ff ff 	mov    -0x300(%rbp),%rax
  80c97a:	48 3b 85 08 fd ff ff 	cmp    -0x2f8(%rbp),%rax
  80c981:	0f 8c 4a 01 00 00    	jl     80cad1 <t3dmix_mod_mp_t3dmix4_tile_+0x4c31>
  80c987:	48 8b 85 a8 fb ff ff 	mov    -0x458(%rbp),%rax
  80c98e:	4c 8b 95 e8 fc ff ff 	mov    -0x318(%rbp),%r10
  80c995:	c4 a1 7b 10 04 d0    	vmovsd (%rax,%r10,8),%xmm0
  80c99b:	48 83 fa 04          	cmp    $0x4,%rdx
  80c99f:	0f 8c 03 06 00 00    	jl     80cfa8 <t3dmix_mod_mp_t3dmix4_tile_+0x5108>
  80c9a5:	4c 8b a5 30 fb ff ff 	mov    -0x4d0(%rbp),%r12
  80c9ac:	45 33 ed             	xor    %r13d,%r13d
  80c9af:	4c 8b 9d 38 fb ff ff 	mov    -0x4c8(%rbp),%r11
  80c9b6:	4c 8b 95 c0 fc ff ff 	mov    -0x340(%rbp),%r10
  80c9bd:	4c 8b b5 f8 fc ff ff 	mov    -0x308(%rbp),%r14
  80c9c4:	4c 03 e6             	add    %rsi,%r12
  80c9c7:	48 8b 85 28 fb ff ff 	mov    -0x4d8(%rbp),%rax
  80c9ce:	4c 03 de             	add    %rsi,%r11
  80c9d1:	c4 e2 7d 19 c8       	vbroadcastsd %xmm0,%ymm1
  80c9d6:	4c 03 d6             	add    %rsi,%r10
  80c9d9:	48 89 c2             	mov    %rax,%rdx
  80c9dc:	4d 8d 3c 36          	lea    (%r14,%rsi,1),%r15
  80c9e0:	49 89 ce             	mov    %rcx,%r14
  80c9e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  80c9e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  80c9ef:	00 
  80c9f0:	c4 81 75 59 14 e8    	vmulpd (%r8,%r13,8),%ymm1,%ymm2
  80c9f6:	c4 81 7d 10 5c ec 08 	vmovupd 0x8(%r12,%r13,8),%ymm3
  80c9fd:	c4 81 7d 10 6c eb 08 	vmovupd 0x8(%r11,%r13,8),%ymm5
  80ca04:	c4 41 7d 10 16       	vmovupd (%r14),%ymm10
  80ca09:	c4 81 6d 59 34 e9    	vmulpd (%r9,%r13,8),%ymm2,%ymm6
  80ca0f:	c4 81 65 5c 24 ef    	vsubpd (%r15,%r13,8),%ymm3,%ymm4
  80ca15:	c4 81 55 5c 3c ea    	vsubpd (%r10,%r13,8),%ymm5,%ymm7
  80ca1b:	c5 4d 59 c4          	vmulpd %ymm4,%ymm6,%ymm8
  80ca1f:	c5 4d 59 cf          	vmulpd %ymm7,%ymm6,%ymm9
  80ca23:	c4 41 3d 58 d9       	vaddpd %ymm9,%ymm8,%ymm11
  80ca28:	49 83 c5 04          	add    $0x4,%r13
  80ca2c:	c4 41 2d 5c e3       	vsubpd %ymm11,%ymm10,%ymm12
  80ca31:	c4 41 7d 11 26       	vmovupd %ymm12,(%r14)
  80ca36:	49 83 c6 20          	add    $0x20,%r14
  80ca3a:	4c 3b ea             	cmp    %rdx,%r13
  80ca3d:	72 b1                	jb     80c9f0 <t3dmix_mod_mp_t3dmix4_tile_+0x4b50>
  80ca3f:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
  80ca46:	48 3b c2             	cmp    %rdx,%rax
  80ca49:	0f 83 82 00 00 00    	jae    80cad1 <t3dmix_mod_mp_t3dmix4_tile_+0x4c31>
  80ca4f:	4c 8b 9d 30 fb ff ff 	mov    -0x4d0(%rbp),%r11
  80ca56:	4c 8b 95 38 fb ff ff 	mov    -0x4c8(%rbp),%r10
  80ca5d:	4c 8b b5 c0 fc ff ff 	mov    -0x340(%rbp),%r14
  80ca64:	4c 8b a5 f8 fc ff ff 	mov    -0x308(%rbp),%r12
  80ca6b:	4c 03 de             	add    %rsi,%r11
  80ca6e:	4c 03 d6             	add    %rsi,%r10
  80ca71:	4c 03 f6             	add    %rsi,%r14
  80ca74:	4d 8d 2c 34          	lea    (%r12,%rsi,1),%r13
  80ca78:	4c 8d 24 c1          	lea    (%rcx,%rax,8),%r12
  80ca7c:	0f 1f 40 00          	nopl   0x0(%rax)
  80ca80:	c4 c1 7b 59 0c c0    	vmulsd (%r8,%rax,8),%xmm0,%xmm1
  80ca86:	c4 c1 7b 10 54 c3 08 	vmovsd 0x8(%r11,%rax,8),%xmm2
  80ca8d:	c4 c1 7b 10 64 c2 08 	vmovsd 0x8(%r10,%rax,8),%xmm4
  80ca94:	c4 c1 73 59 2c c1    	vmulsd (%r9,%rax,8),%xmm1,%xmm5
  80ca9a:	c4 c1 6b 5c 5c c5 00 	vsubsd 0x0(%r13,%rax,8),%xmm2,%xmm3
  80caa1:	c4 c1 5b 5c 34 c6    	vsubsd (%r14,%rax,8),%xmm4,%xmm6
  80caa7:	c5 d3 59 fb          	vmulsd %xmm3,%xmm5,%xmm7
  80caab:	c5 53 59 c6          	vmulsd %xmm6,%xmm5,%xmm8
  80caaf:	c4 41 7b 10 0c 24    	vmovsd (%r12),%xmm9
  80cab5:	48 ff c0             	inc    %rax
  80cab8:	c4 41 43 58 d0       	vaddsd %xmm8,%xmm7,%xmm10
  80cabd:	c4 41 33 5c da       	vsubsd %xmm10,%xmm9,%xmm11
  80cac2:	c4 41 7b 11 1c 24    	vmovsd %xmm11,(%r12)
  80cac8:	49 83 c4 08          	add    $0x8,%r12
  80cacc:	48 3b c2             	cmp    %rdx,%rax
  80cacf:	72 af                	jb     80ca80 <t3dmix_mod_mp_t3dmix4_tile_+0x4be0>
  80cad1:	48 ff c7             	inc    %rdi
  80cad4:	48 03 b5 40 fe ff ff 	add    -0x1c0(%rbp),%rsi
  80cadb:	4c 03 85 00 fe ff ff 	add    -0x200(%rbp),%r8
  80cae2:	4c 03 8d f8 fd ff ff 	add    -0x208(%rbp),%r9
  80cae9:	48 03 8d f0 fd ff ff 	add    -0x210(%rbp),%rcx
  80caf0:	48 3b bd 80 fd ff ff 	cmp    -0x280(%rbp),%rdi
  80caf7:	0f 82 76 fe ff ff    	jb     80c973 <t3dmix_mod_mp_t3dmix4_tile_+0x4ad3>
  80cafd:	e9 dd 02 00 00       	jmpq   80cddf <t3dmix_mod_mp_t3dmix4_tile_+0x4f3f>
  80cb02:	48 8b 85 10 fa ff ff 	mov    -0x5f0(%rbp),%rax
  80cb09:	33 ff                	xor    %edi,%edi
  80cb0b:	48 8b 95 f0 f9 ff ff 	mov    -0x610(%rbp),%rdx
  80cb12:	33 f6                	xor    %esi,%esi
  80cb14:	48 8b 8d 08 fa ff ff 	mov    -0x5f8(%rbp),%rcx
  80cb1b:	48 3b 85 c0 f9 ff ff 	cmp    -0x640(%rbp),%rax
  80cb22:	0f 8c cc 02 00 00    	jl     80cdf4 <t3dmix_mod_mp_t3dmix4_tile_+0x4f54>
  80cb28:	48 8b 85 00 f9 ff ff 	mov    -0x700(%rbp),%rax
  80cb2f:	49 0f af c4          	imul   %r12,%rax
  80cb33:	48 03 85 d0 f8 ff ff 	add    -0x730(%rbp),%rax
  80cb3a:	4c 8b b5 38 ff ff ff 	mov    -0xc8(%rbp),%r14
  80cb41:	48 89 bd 50 fd ff ff 	mov    %rdi,-0x2b0(%rbp)
  80cb48:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80cb4f:	48 8b bd 08 fd ff ff 	mov    -0x2f8(%rbp),%rdi
  80cb56:	48 3b bd 00 fd ff ff 	cmp    -0x300(%rbp),%rdi
  80cb5d:	0f 8f 42 02 00 00    	jg     80cda5 <t3dmix_mod_mp_t3dmix4_tile_+0x4f05>
  80cb63:	48 8b bd a8 fb ff ff 	mov    -0x458(%rbp),%rdi
  80cb6a:	4c 8b 85 e8 fc ff ff 	mov    -0x318(%rbp),%r8
  80cb71:	c4 a1 7b 10 04 c7    	vmovsd (%rdi,%r8,8),%xmm0
  80cb77:	4d 85 f6             	test   %r14,%r14
  80cb7a:	0f 84 2f 04 00 00    	je     80cfaf <t3dmix_mod_mp_t3dmix4_tile_+0x510f>
  80cb80:	48 83 bd 98 fe ff ff 	cmpq   $0x2,-0x168(%rbp)
  80cb87:	02 
  80cb88:	0f 8c 21 04 00 00    	jl     80cfaf <t3dmix_mod_mp_t3dmix4_tile_+0x510f>
  80cb8e:	4c 8b bd 80 fa ff ff 	mov    -0x580(%rbp),%r15
  80cb95:	45 33 c0             	xor    %r8d,%r8d
  80cb98:	4c 8b 8d 38 fb ff ff 	mov    -0x4c8(%rbp),%r9
  80cb9f:	45 33 e4             	xor    %r12d,%r12d
  80cba2:	4c 8b 95 c0 fc ff ff 	mov    -0x340(%rbp),%r10
  80cba9:	4c 8b ad e0 fe ff ff 	mov    -0x120(%rbp),%r13
  80cbb0:	4a 8d 3c fd 00 00 00 	lea    0x0(,%r15,8),%rdi
  80cbb7:	00 
  80cbb8:	48 f7 df             	neg    %rdi
  80cbbb:	4c 03 ce             	add    %rsi,%r9
  80cbbe:	4c 8b bd 48 fb ff ff 	mov    -0x4b8(%rbp),%r15
  80cbc5:	4d 8d 1c 32          	lea    (%r10,%rsi,1),%r11
  80cbc9:	48 03 bd 88 fa ff ff 	add    -0x578(%rbp),%rdi
  80cbd0:	49 f7 df             	neg    %r15
  80cbd3:	49 03 ff             	add    %r15,%rdi
  80cbd6:	45 33 d2             	xor    %r10d,%r10d
  80cbd9:	4c 8b bd 08 fd ff ff 	mov    -0x2f8(%rbp),%r15
  80cbe0:	48 89 85 18 fb ff ff 	mov    %rax,-0x4e8(%rbp)
  80cbe7:	48 89 b5 10 fb ff ff 	mov    %rsi,-0x4f0(%rbp)
  80cbee:	48 89 85 98 fb ff ff 	mov    %rax,-0x468(%rbp)
  80cbf5:	4a 8d 3c ff          	lea    (%rdi,%r15,8),%rdi
  80cbf9:	48 89 b5 a0 fb ff ff 	mov    %rsi,-0x460(%rbp)
  80cc00:	c5 fb 12 c8          	vmovddup %xmm0,%xmm1
  80cc04:	48 03 bd 40 fb ff ff 	add    -0x4c0(%rbp),%rdi
  80cc0b:	48 8b 85 10 fb ff ff 	mov    -0x4f0(%rbp),%rax
  80cc12:	48 8b b5 18 fb ff ff 	mov    -0x4e8(%rbp),%rsi
  80cc19:	4c 89 ad 90 fb ff ff 	mov    %r13,-0x470(%rbp)
  80cc20:	4c 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%r15
  80cc27:	4e 8d 2c 22          	lea    (%rdx,%r12,1),%r13
  80cc2b:	c4 c1 7b 10 6d 00    	vmovsd 0x0(%r13),%xmm5
  80cc31:	c5 f9 10 54 38 08    	vmovupd 0x8(%rax,%rdi,1),%xmm2
  80cc37:	c4 81 79 10 5c c1 08 	vmovupd 0x8(%r9,%r8,8),%xmm3
  80cc3e:	c5 69 5c 14 38       	vsubpd (%rax,%rdi,1),%xmm2,%xmm10
  80cc43:	c4 01 61 5c 24 c3    	vsubpd (%r11,%r8,8),%xmm3,%xmm12
  80cc49:	c4 81 51 16 74 3d 00 	vmovhpd 0x0(%r13,%r15,1),%xmm5,%xmm6
  80cc50:	4f 8d 24 7c          	lea    (%r12,%r15,2),%r12
  80cc54:	c5 71 59 c6          	vmulpd %xmm6,%xmm1,%xmm8
  80cc58:	4c 8b bd 40 ff ff ff 	mov    -0xc0(%rbp),%r15
  80cc5f:	4e 8d 2c 11          	lea    (%rcx,%r10,1),%r13
  80cc63:	c4 c1 7b 10 7d 00    	vmovsd 0x0(%r13),%xmm7
  80cc69:	49 83 c0 02          	add    $0x2,%r8
  80cc6d:	c5 fb 10 26          	vmovsd (%rsi),%xmm4
  80cc71:	48 83 c0 10          	add    $0x10,%rax
  80cc75:	c4 01 41 16 4c 3d 00 	vmovhpd 0x0(%r13,%r15,1),%xmm7,%xmm9
  80cc7c:	4f 8d 14 7a          	lea    (%r10,%r15,2),%r10
  80cc80:	c4 41 39 59 d9       	vmulpd %xmm9,%xmm8,%xmm11
  80cc85:	c4 41 21 59 ea       	vmulpd %xmm10,%xmm11,%xmm13
  80cc8a:	c4 41 21 59 f4       	vmulpd %xmm12,%xmm11,%xmm14
  80cc8f:	c4 c1 11 58 d6       	vaddpd %xmm14,%xmm13,%xmm2
  80cc94:	c4 21 59 16 3c 36    	vmovhpd (%rsi,%r14,1),%xmm4,%xmm15
  80cc9a:	c5 81 5c da          	vsubpd %xmm2,%xmm15,%xmm3
  80cc9e:	c5 fb 11 1e          	vmovsd %xmm3,(%rsi)
  80cca2:	c4 c1 79 17 1c 36    	vmovhpd %xmm3,(%r14,%rsi,1)
  80cca8:	4a 8d 34 76          	lea    (%rsi,%r14,2),%rsi
  80ccac:	4c 3b 85 e0 fe ff ff 	cmp    -0x120(%rbp),%r8
  80ccb3:	0f 82 67 ff ff ff    	jb     80cc20 <t3dmix_mod_mp_t3dmix4_tile_+0x4d80>
  80ccb9:	4c 8b ad 90 fb ff ff 	mov    -0x470(%rbp),%r13
  80ccc0:	48 8b 85 98 fb ff ff 	mov    -0x468(%rbp),%rax
  80ccc7:	48 8b b5 a0 fb ff ff 	mov    -0x460(%rbp),%rsi
  80ccce:	4d 89 f1             	mov    %r14,%r9
  80ccd1:	4c 8b a5 40 ff ff ff 	mov    -0xc0(%rbp),%r12
  80ccd8:	4c 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%r8
  80ccdf:	4d 0f af cd          	imul   %r13,%r9
  80cce3:	4d 0f af e5          	imul   %r13,%r12
  80cce7:	4d 0f af c5          	imul   %r13,%r8
  80cceb:	4c 3b ad 98 fe ff ff 	cmp    -0x168(%rbp),%r13
  80ccf2:	0f 83 ad 00 00 00    	jae    80cda5 <t3dmix_mod_mp_t3dmix4_tile_+0x4f05>
  80ccf8:	48 8b bd 30 fb ff ff 	mov    -0x4d0(%rbp),%rdi
  80ccff:	4c 03 c8             	add    %rax,%r9
  80cd02:	4c 8b 95 38 fb ff ff 	mov    -0x4c8(%rbp),%r10
  80cd09:	4c 8b 9d c0 fc ff ff 	mov    -0x340(%rbp),%r11
  80cd10:	4c 8b bd f8 fc ff ff 	mov    -0x308(%rbp),%r15
  80cd17:	48 03 fe             	add    %rsi,%rdi
  80cd1a:	48 89 85 98 fb ff ff 	mov    %rax,-0x468(%rbp)
  80cd21:	4c 03 d6             	add    %rsi,%r10
  80cd24:	48 89 b5 a0 fb ff ff 	mov    %rsi,-0x460(%rbp)
  80cd2b:	4c 03 de             	add    %rsi,%r11
  80cd2e:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  80cd35:	4c 03 fe             	add    %rsi,%r15
  80cd38:	48 8b b5 30 ff ff ff 	mov    -0xd0(%rbp),%rsi
  80cd3f:	90                   	nop
  80cd40:	c4 c1 7b 59 0c 10    	vmulsd (%r8,%rdx,1),%xmm0,%xmm1
  80cd46:	4c 03 c6             	add    %rsi,%r8
  80cd49:	c4 a1 7b 10 54 ef 08 	vmovsd 0x8(%rdi,%r13,8),%xmm2
  80cd50:	c4 81 7b 10 64 ea 08 	vmovsd 0x8(%r10,%r13,8),%xmm4
  80cd57:	c4 c1 73 59 2c 0c    	vmulsd (%r12,%rcx,1),%xmm1,%xmm5
  80cd5d:	4c 03 e0             	add    %rax,%r12
  80cd60:	c4 81 6b 5c 1c ef    	vsubsd (%r15,%r13,8),%xmm2,%xmm3
  80cd66:	c4 81 5b 5c 34 eb    	vsubsd (%r11,%r13,8),%xmm4,%xmm6
  80cd6c:	c5 d3 59 fb          	vmulsd %xmm3,%xmm5,%xmm7
  80cd70:	c5 53 59 c6          	vmulsd %xmm6,%xmm5,%xmm8
  80cd74:	c4 41 7b 10 09       	vmovsd (%r9),%xmm9
  80cd79:	49 ff c5             	inc    %r13
  80cd7c:	c4 41 43 58 d0       	vaddsd %xmm8,%xmm7,%xmm10
  80cd81:	c4 41 33 5c da       	vsubsd %xmm10,%xmm9,%xmm11
  80cd86:	c4 41 7b 11 19       	vmovsd %xmm11,(%r9)
  80cd8b:	4d 03 ce             	add    %r14,%r9
  80cd8e:	4c 3b ad 98 fe ff ff 	cmp    -0x168(%rbp),%r13
  80cd95:	72 a9                	jb     80cd40 <t3dmix_mod_mp_t3dmix4_tile_+0x4ea0>
  80cd97:	48 8b 85 98 fb ff ff 	mov    -0x468(%rbp),%rax
  80cd9e:	48 8b b5 a0 fb ff ff 	mov    -0x460(%rbp),%rsi
  80cda5:	48 8b bd 50 fd ff ff 	mov    -0x2b0(%rbp),%rdi
  80cdac:	48 ff c7             	inc    %rdi
  80cdaf:	48 03 b5 40 fe ff ff 	add    -0x1c0(%rbp),%rsi
  80cdb6:	48 03 95 00 fe ff ff 	add    -0x200(%rbp),%rdx
  80cdbd:	48 03 8d f8 fd ff ff 	add    -0x208(%rbp),%rcx
  80cdc4:	48 03 85 f0 fd ff ff 	add    -0x210(%rbp),%rax
  80cdcb:	48 89 bd 50 fd ff ff 	mov    %rdi,-0x2b0(%rbp)
  80cdd2:	48 3b bd 80 fd ff ff 	cmp    -0x280(%rbp),%rdi
  80cdd9:	0f 82 70 fd ff ff    	jb     80cb4f <t3dmix_mod_mp_t3dmix4_tile_+0x4caf>
  80cddf:	4c 8b ad d8 f8 ff ff 	mov    -0x728(%rbp),%r13
  80cde6:	4c 8b b5 e0 f8 ff ff 	mov    -0x720(%rbp),%r14
  80cded:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  80cdf4:	49 ff c4             	inc    %r12
  80cdf7:	4c 3b a5 78 fa ff ff 	cmp    -0x588(%rbp),%r12
  80cdfe:	0f 82 18 d3 ff ff    	jb     80a11c <t3dmix_mod_mp_t3dmix4_tile_+0x227c>
  80ce04:	48 8b 8d 28 f8 ff ff 	mov    -0x7d8(%rbp),%rcx
  80ce0b:	48 8b b5 30 f8 ff ff 	mov    -0x7d0(%rbp),%rsi
  80ce12:	48 8b 95 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdx
  80ce19:	48 ff c2             	inc    %rdx
  80ce1c:	48 3b 95 48 f8 ff ff 	cmp    -0x7b8(%rbp),%rdx
  80ce23:	0f 82 00 be ff ff    	jb     808c29 <t3dmix_mod_mp_t3dmix4_tile_+0xd89>
  80ce29:	bf 84 73 b3 00       	mov    $0xb37384,%edi
  80ce2e:	8b b5 40 f8 ff ff    	mov    -0x7c0(%rbp),%esi
  80ce34:	c5 f8 77             	vzeroupper 
  80ce37:	e8 c4 12 c0 ff       	callq  40e100 <__kmpc_for_static_fini@plt>
  80ce3c:	48 8b 95 28 f7 ff ff 	mov    -0x8d8(%rbp),%rdx
  80ce43:	48 8b 85 20 f7 ff ff 	mov    -0x8e0(%rbp),%rax
  80ce4a:	48 83 c0 1f          	add    $0x1f,%rax
  80ce4e:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  80ce52:	48 03 e0             	add    %rax,%rsp
  80ce55:	48 8b 95 00 f7 ff ff 	mov    -0x900(%rbp),%rdx
  80ce5c:	48 8b 85 08 f7 ff ff 	mov    -0x8f8(%rbp),%rax
  80ce63:	48 83 c0 1f          	add    $0x1f,%rax
  80ce67:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  80ce6b:	48 03 e0             	add    %rax,%rsp
  80ce6e:	48 8b 95 10 f7 ff ff 	mov    -0x8f0(%rbp),%rdx
  80ce75:	48 8b 85 18 f7 ff ff 	mov    -0x8e8(%rbp),%rax
  80ce7c:	48 83 c0 1f          	add    $0x1f,%rax
  80ce80:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  80ce84:	48 03 e0             	add    %rax,%rsp
  80ce87:	4c 8b bd 30 f7 ff ff 	mov    -0x8d0(%rbp),%r15
  80ce8e:	4c 8b b5 38 f7 ff ff 	mov    -0x8c8(%rbp),%r14
  80ce95:	4c 8b ad 40 f7 ff ff 	mov    -0x8c0(%rbp),%r13
  80ce9c:	4c 8b a5 48 f7 ff ff 	mov    -0x8b8(%rbp),%r12
  80cea3:	c9                   	leaveq 
  80cea4:	48 89 dc             	mov    %rbx,%rsp
  80cea7:	5b                   	pop    %rbx
  80cea8:	c3                   	retq   
  80cea9:	33 c9                	xor    %ecx,%ecx
  80ceab:	e9 58 d4 ff ff       	jmpq   80a308 <t3dmix_mod_mp_t3dmix4_tile_+0x2468>
  80ceb0:	33 c9                	xor    %ecx,%ecx
  80ceb2:	e9 20 db ff ff       	jmpq   80a9d7 <t3dmix_mod_mp_t3dmix4_tile_+0x2b37>
  80ceb7:	33 c0                	xor    %eax,%eax
  80ceb9:	e9 8d e1 ff ff       	jmpq   80b04b <t3dmix_mod_mp_t3dmix4_tile_+0x31ab>
  80cebe:	48 83 bd 50 ff ff ff 	cmpq   $0x8,-0xb0(%rbp)
  80cec5:	08 
  80cec6:	7c 60                	jl     80cf28 <t3dmix_mod_mp_t3dmix4_tile_+0x5088>
  80cec8:	48 8b 95 50 f7 ff ff 	mov    -0x8b0(%rbp),%rdx
  80cecf:	33 c0                	xor    %eax,%eax
  80ced1:	48 8b 8d 08 f8 ff ff 	mov    -0x7f8(%rbp),%rcx
  80ced8:	48 89 d7             	mov    %rdx,%rdi
  80cedb:	48 8b b5 d0 f7 ff ff 	mov    -0x830(%rbp),%rsi
  80cee2:	c5 fd 57 c0          	vxorpd %ymm0,%ymm0,%ymm0
  80cee6:	c5 fd 11 04 c6       	vmovupd %ymm0,(%rsi,%rax,8)
  80ceeb:	c5 fd 11 44 c1 20    	vmovupd %ymm0,0x20(%rcx,%rax,8)
  80cef1:	48 83 c0 08          	add    $0x8,%rax
  80cef5:	48 3b c7             	cmp    %rdi,%rax
  80cef8:	72 ec                	jb     80cee6 <t3dmix_mod_mp_t3dmix4_tile_+0x5046>
  80cefa:	48 3b 95 50 ff ff ff 	cmp    -0xb0(%rbp),%rdx
  80cf01:	0f 83 17 e9 ff ff    	jae    80b81e <t3dmix_mod_mp_t3dmix4_tile_+0x397e>
  80cf07:	48 8b 85 d0 f7 ff ff 	mov    -0x830(%rbp),%rax
  80cf0e:	33 f6                	xor    %esi,%esi
  80cf10:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  80cf17:	48 89 34 d0          	mov    %rsi,(%rax,%rdx,8)
  80cf1b:	48 ff c2             	inc    %rdx
  80cf1e:	48 3b d1             	cmp    %rcx,%rdx
  80cf21:	72 f4                	jb     80cf17 <t3dmix_mod_mp_t3dmix4_tile_+0x5077>
  80cf23:	e9 f6 e8 ff ff       	jmpq   80b81e <t3dmix_mod_mp_t3dmix4_tile_+0x397e>
  80cf28:	33 d2                	xor    %edx,%edx
  80cf2a:	eb ce                	jmp    80cefa <t3dmix_mod_mp_t3dmix4_tile_+0x505a>
  80cf2c:	48 83 bd 50 ff ff ff 	cmpq   $0x8,-0xb0(%rbp)
  80cf33:	08 
  80cf34:	7c 60                	jl     80cf96 <t3dmix_mod_mp_t3dmix4_tile_+0x50f6>
  80cf36:	48 8b 95 50 f7 ff ff 	mov    -0x8b0(%rbp),%rdx
  80cf3d:	33 c0                	xor    %eax,%eax
  80cf3f:	48 8b 8d e0 f7 ff ff 	mov    -0x820(%rbp),%rcx
  80cf46:	48 89 d7             	mov    %rdx,%rdi
  80cf49:	48 8b b5 c0 f7 ff ff 	mov    -0x840(%rbp),%rsi
  80cf50:	c5 fd 57 c0          	vxorpd %ymm0,%ymm0,%ymm0
  80cf54:	c5 fd 11 04 c1       	vmovupd %ymm0,(%rcx,%rax,8)
  80cf59:	c5 fd 11 44 c6 20    	vmovupd %ymm0,0x20(%rsi,%rax,8)
  80cf5f:	48 83 c0 08          	add    $0x8,%rax
  80cf63:	48 3b c7             	cmp    %rdi,%rax
  80cf66:	72 ec                	jb     80cf54 <t3dmix_mod_mp_t3dmix4_tile_+0x50b4>
  80cf68:	48 3b 95 50 ff ff ff 	cmp    -0xb0(%rbp),%rdx
  80cf6f:	0f 83 ad e9 ff ff    	jae    80b922 <t3dmix_mod_mp_t3dmix4_tile_+0x3a82>
  80cf75:	48 8b 85 e0 f7 ff ff 	mov    -0x820(%rbp),%rax
  80cf7c:	33 f6                	xor    %esi,%esi
  80cf7e:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  80cf85:	48 89 34 d0          	mov    %rsi,(%rax,%rdx,8)
  80cf89:	48 ff c2             	inc    %rdx
  80cf8c:	48 3b d1             	cmp    %rcx,%rdx
  80cf8f:	72 f4                	jb     80cf85 <t3dmix_mod_mp_t3dmix4_tile_+0x50e5>
  80cf91:	e9 8c e9 ff ff       	jmpq   80b922 <t3dmix_mod_mp_t3dmix4_tile_+0x3a82>
  80cf96:	33 d2                	xor    %edx,%edx
  80cf98:	eb ce                	jmp    80cf68 <t3dmix_mod_mp_t3dmix4_tile_+0x50c8>
  80cf9a:	33 c0                	xor    %eax,%eax
  80cf9c:	e9 4e eb ff ff       	jmpq   80baef <t3dmix_mod_mp_t3dmix4_tile_+0x3c4f>
  80cfa1:	33 c0                	xor    %eax,%eax
  80cfa3:	e9 36 f3 ff ff       	jmpq   80c2de <t3dmix_mod_mp_t3dmix4_tile_+0x443e>
  80cfa8:	33 c0                	xor    %eax,%eax
  80cfaa:	e9 97 fa ff ff       	jmpq   80ca46 <t3dmix_mod_mp_t3dmix4_tile_+0x4ba6>
  80cfaf:	45 33 ed             	xor    %r13d,%r13d
  80cfb2:	e9 17 fd ff ff       	jmpq   80ccce <t3dmix_mod_mp_t3dmix4_tile_+0x4e2e>
  80cfb7:	33 c0                	xor    %eax,%eax
  80cfb9:	e9 91 f7 ff ff       	jmpq   80c74f <t3dmix_mod_mp_t3dmix4_tile_+0x48af>
  80cfbe:	33 c0                	xor    %eax,%eax
  80cfc0:	e9 9a ef ff ff       	jmpq   80bf5f <t3dmix_mod_mp_t3dmix4_tile_+0x40bf>
  80cfc5:	48 83 bd 50 ff ff ff 	cmpq   $0x4,-0xb0(%rbp)
  80cfcc:	04 
  80cfcd:	7c 61                	jl     80d030 <t3dmix_mod_mp_t3dmix4_tile_+0x5190>
  80cfcf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  80cfd3:	33 d2                	xor    %edx,%edx
  80cfd5:	48 8b 8d e8 f7 ff ff 	mov    -0x818(%rbp),%rcx
  80cfdc:	48 89 c7             	mov    %rax,%rdi
  80cfdf:	48 8b b5 e0 f7 ff ff 	mov    -0x820(%rbp),%rsi
  80cfe6:	c5 fd 10 04 d1       	vmovupd (%rcx,%rdx,8),%ymm0
  80cfeb:	c5 fd 11 04 d6       	vmovupd %ymm0,(%rsi,%rdx,8)
  80cff0:	48 83 c2 04          	add    $0x4,%rdx
  80cff4:	48 3b d7             	cmp    %rdi,%rdx
  80cff7:	72 ed                	jb     80cfe6 <t3dmix_mod_mp_t3dmix4_tile_+0x5146>
  80cff9:	48 3b 85 50 ff ff ff 	cmp    -0xb0(%rbp),%rax
  80d000:	0f 83 1c e9 ff ff    	jae    80b922 <t3dmix_mod_mp_t3dmix4_tile_+0x3a82>
  80d006:	48 8b 8d e8 f7 ff ff 	mov    -0x818(%rbp),%rcx
  80d00d:	48 8b b5 e0 f7 ff ff 	mov    -0x820(%rbp),%rsi
  80d014:	48 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%rdi
  80d01b:	48 8b 14 c1          	mov    (%rcx,%rax,8),%rdx
  80d01f:	48 89 14 c6          	mov    %rdx,(%rsi,%rax,8)
  80d023:	48 ff c0             	inc    %rax
  80d026:	48 3b c7             	cmp    %rdi,%rax
  80d029:	72 f0                	jb     80d01b <t3dmix_mod_mp_t3dmix4_tile_+0x517b>
  80d02b:	e9 f2 e8 ff ff       	jmpq   80b922 <t3dmix_mod_mp_t3dmix4_tile_+0x3a82>
  80d030:	33 c0                	xor    %eax,%eax
  80d032:	eb c5                	jmp    80cff9 <t3dmix_mod_mp_t3dmix4_tile_+0x5159>
  80d034:	48 83 bd 50 ff ff ff 	cmpq   $0x4,-0xb0(%rbp)
  80d03b:	04 
  80d03c:	7c 61                	jl     80d09f <t3dmix_mod_mp_t3dmix4_tile_+0x51ff>
  80d03e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  80d042:	33 d2                	xor    %edx,%edx
  80d044:	48 8b 8d d0 f7 ff ff 	mov    -0x830(%rbp),%rcx
  80d04b:	48 89 c7             	mov    %rax,%rdi
  80d04e:	48 8b b5 f0 f7 ff ff 	mov    -0x810(%rbp),%rsi
  80d055:	c5 fd 10 04 d6       	vmovupd (%rsi,%rdx,8),%ymm0
  80d05a:	c5 fd 11 04 d1       	vmovupd %ymm0,(%rcx,%rdx,8)
  80d05f:	48 83 c2 04          	add    $0x4,%rdx
  80d063:	48 3b d7             	cmp    %rdi,%rdx
  80d066:	72 ed                	jb     80d055 <t3dmix_mod_mp_t3dmix4_tile_+0x51b5>
  80d068:	48 3b 85 50 ff ff ff 	cmp    -0xb0(%rbp),%rax
  80d06f:	0f 83 a9 e7 ff ff    	jae    80b81e <t3dmix_mod_mp_t3dmix4_tile_+0x397e>
  80d075:	48 8b 8d d0 f7 ff ff 	mov    -0x830(%rbp),%rcx
  80d07c:	48 8b b5 f0 f7 ff ff 	mov    -0x810(%rbp),%rsi
  80d083:	48 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%rdi
  80d08a:	48 8b 14 c6          	mov    (%rsi,%rax,8),%rdx
  80d08e:	48 89 14 c1          	mov    %rdx,(%rcx,%rax,8)
  80d092:	48 ff c0             	inc    %rax
  80d095:	48 3b c7             	cmp    %rdi,%rax
  80d098:	72 f0                	jb     80d08a <t3dmix_mod_mp_t3dmix4_tile_+0x51ea>
  80d09a:	e9 7f e7 ff ff       	jmpq   80b81e <t3dmix_mod_mp_t3dmix4_tile_+0x397e>
  80d09f:	33 c0                	xor    %eax,%eax
  80d0a1:	eb c5                	jmp    80d068 <t3dmix_mod_mp_t3dmix4_tile_+0x51c8>
  80d0a3:	45 33 ff             	xor    %r15d,%r15d
  80d0a6:	e9 0b e2 ff ff       	jmpq   80b2b6 <t3dmix_mod_mp_t3dmix4_tile_+0x3416>
  80d0ab:	33 c0                	xor    %eax,%eax
  80d0ad:	e9 9b dc ff ff       	jmpq   80ad4d <t3dmix_mod_mp_t3dmix4_tile_+0x2ead>
  80d0b2:	33 c0                	xor    %eax,%eax
  80d0b4:	e9 88 d5 ff ff       	jmpq   80a641 <t3dmix_mod_mp_t3dmix4_tile_+0x27a1>
  80d0b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

