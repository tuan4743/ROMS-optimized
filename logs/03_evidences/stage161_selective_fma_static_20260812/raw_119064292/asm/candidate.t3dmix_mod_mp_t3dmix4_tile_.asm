0000000000807d90 <t3dmix_mod_mp_t3dmix4_tile_>:
  807d90:	53                   	push   %rbx
  807d91:	48 89 e3             	mov    %rsp,%rbx
  807d94:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  807d98:	55                   	push   %rbp
  807d99:	55                   	push   %rbp
  807d9a:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  807d9e:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  807da3:	48 89 e5             	mov    %rsp,%rbp
  807da6:	48 81 ec 70 0d 00 00 	sub    $0xd70,%rsp
  807dad:	4c 89 b5 38 f7 ff ff 	mov    %r14,-0x8c8(%rbp)
  807db4:	4c 8b 73 18          	mov    0x18(%rbx),%r14
  807db8:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
  807dbc:	48 89 b5 b8 f3 ff ff 	mov    %rsi,-0xc48(%rbp)
  807dc3:	4d 63 36             	movslq (%r14),%r14
  807dc6:	48 63 09             	movslq (%rcx),%rcx
  807dc9:	44 89 b5 dc f3 ff ff 	mov    %r14d,-0xc24(%rbp)
  807dd0:	4c 2b f1             	sub    %rcx,%r14
  807dd3:	48 8b 73 28          	mov    0x28(%rbx),%rsi
  807dd7:	48 89 bd b0 f3 ff ff 	mov    %rdi,-0xc50(%rbp)
  807dde:	4c 89 f7             	mov    %r14,%rdi
  807de1:	48 8b 43 20          	mov    0x20(%rbx),%rax
  807de5:	48 ff c7             	inc    %rdi
  807de8:	45 8b 18             	mov    (%r8),%r11d
  807deb:	4c 63 06             	movslq (%rsi),%r8
  807dee:	be 00 00 00 00       	mov    $0x0,%esi
  807df3:	48 0f 4e fe          	cmovle %rsi,%rdi
  807df7:	44 8b 12             	mov    (%rdx),%r10d
  807dfa:	48 63 10             	movslq (%rax),%rdx
  807dfd:	44 89 85 e4 f3 ff ff 	mov    %r8d,-0xc1c(%rbp)
  807e04:	4c 2b c2             	sub    %rdx,%r8
  807e07:	49 ff c0             	inc    %r8
  807e0a:	4c 8d 0c fd 00 00 00 	lea    0x0(,%rdi,8),%r9
  807e11:	00 
  807e12:	4c 89 bd 30 f7 ff ff 	mov    %r15,-0x8d0(%rbp)
  807e19:	4c 0f 4e c6          	cmovle %rsi,%r8
  807e1d:	4d 0f af c8          	imul   %r8,%r9
  807e21:	4c 89 c8             	mov    %r9,%rax
  807e24:	4c 89 ad 40 f7 ff ff 	mov    %r13,-0x8c0(%rbp)
  807e2b:	4c 89 a5 48 f7 ff ff 	mov    %r12,-0x8b8(%rbp)
  807e32:	49 89 e4             	mov    %rsp,%r12
  807e35:	44 89 95 d0 f3 ff ff 	mov    %r10d,-0xc30(%rbp)
  807e3c:	44 89 9d d4 f3 ff ff 	mov    %r11d,-0xc2c(%rbp)
  807e43:	89 8d d8 f3 ff ff    	mov    %ecx,-0xc28(%rbp)
  807e49:	89 95 e0 f3 ff ff    	mov    %edx,-0xc20(%rbp)
  807e4f:	48 83 c0 1f          	add    $0x1f,%rax
  807e53:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  807e57:	48 2b e0             	sub    %rax,%rsp
  807e5a:	48 89 e0             	mov    %rsp,%rax
  807e5d:	48 89 85 90 f2 ff ff 	mov    %rax,-0xd70(%rbp)
  807e64:	4c 89 c8             	mov    %r9,%rax
  807e67:	41 bd 08 00 00 00    	mov    $0x8,%r13d
  807e6d:	4e 8d 3c f5 08 00 00 	lea    0x8(,%r14,8),%r15
  807e74:	00 
  807e75:	41 be 01 00 00 00    	mov    $0x1,%r14d
  807e7b:	4c 89 ad 98 f2 ff ff 	mov    %r13,-0xd68(%rbp)
  807e82:	48 c7 85 b0 f2 ff ff 	movq   $0x2,-0xd50(%rbp)
  807e89:	02 00 00 00 
  807e8d:	48 89 b5 a0 f2 ff ff 	mov    %rsi,-0xd60(%rbp)
  807e94:	4c 89 ad c8 f2 ff ff 	mov    %r13,-0xd38(%rbp)
  807e9b:	48 89 8d d0 f2 ff ff 	mov    %rcx,-0xd30(%rbp)
  807ea2:	48 89 bd c0 f2 ff ff 	mov    %rdi,-0xd40(%rbp)
  807ea9:	4c 89 bd e0 f2 ff ff 	mov    %r15,-0xd20(%rbp)
  807eb0:	48 89 95 e8 f2 ff ff 	mov    %rdx,-0xd18(%rbp)
  807eb7:	4c 89 85 d8 f2 ff ff 	mov    %r8,-0xd28(%rbp)
  807ebe:	4c 89 b5 a8 f2 ff ff 	mov    %r14,-0xd58(%rbp)
  807ec5:	48 83 c0 1f          	add    $0x1f,%rax
  807ec9:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  807ecd:	48 2b e0             	sub    %rax,%rsp
  807ed0:	48 89 e0             	mov    %rsp,%rax
  807ed3:	48 89 85 f0 f2 ff ff 	mov    %rax,-0xd10(%rbp)
  807eda:	4c 89 c8             	mov    %r9,%rax
  807edd:	4c 89 ad f8 f2 ff ff 	mov    %r13,-0xd08(%rbp)
  807ee4:	48 c7 85 10 f3 ff ff 	movq   $0x2,-0xcf0(%rbp)
  807eeb:	02 00 00 00 
  807eef:	48 89 b5 00 f3 ff ff 	mov    %rsi,-0xd00(%rbp)
  807ef6:	4c 89 ad 28 f3 ff ff 	mov    %r13,-0xcd8(%rbp)
  807efd:	48 89 8d 30 f3 ff ff 	mov    %rcx,-0xcd0(%rbp)
  807f04:	48 89 bd 20 f3 ff ff 	mov    %rdi,-0xce0(%rbp)
  807f0b:	4c 89 bd 40 f3 ff ff 	mov    %r15,-0xcc0(%rbp)
  807f12:	48 89 95 48 f3 ff ff 	mov    %rdx,-0xcb8(%rbp)
  807f19:	4c 89 85 38 f3 ff ff 	mov    %r8,-0xcc8(%rbp)
  807f20:	4c 89 b5 08 f3 ff ff 	mov    %r14,-0xcf8(%rbp)
  807f27:	48 83 c0 1f          	add    $0x1f,%rax
  807f2b:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  807f2f:	48 2b e0             	sub    %rax,%rsp
  807f32:	48 89 e0             	mov    %rsp,%rax
  807f35:	4c 8b 8d b0 f3 ff ff 	mov    -0xc50(%rbp),%r9
  807f3c:	48 89 b5 60 f3 ff ff 	mov    %rsi,-0xca0(%rbp)
  807f43:	48 8b 35 96 61 33 00 	mov    0x336196(%rip),%rsi        # b3e0e0 <mod_param_mp_bounds_+0x40>
  807f4a:	4d 63 09             	movslq (%r9),%r9
  807f4d:	48 f7 de             	neg    %rsi
  807f50:	49 03 f1             	add    %r9,%rsi
  807f53:	48 89 95 a8 f3 ff ff 	mov    %rdx,-0xc58(%rbp)
  807f5a:	48 69 d6 60 0f 00 00 	imul   $0xf60,%rsi,%rdx
  807f61:	4c 89 ad 58 f3 ff ff 	mov    %r13,-0xca8(%rbp)
  807f68:	4c 89 ad 88 f3 ff ff 	mov    %r13,-0xc78(%rbp)
  807f6f:	4c 8b 2d 2a 61 33 00 	mov    0x33612a(%rip),%r13        # b3e0a0 <mod_param_mp_bounds_>
  807f76:	48 89 bd 80 f3 ff ff 	mov    %rdi,-0xc80(%rbp)
  807f7d:	48 8b bd b8 f3 ff ff 	mov    -0xc48(%rbp),%rdi
  807f84:	4d 8b 94 15 f0 01 00 	mov    0x1f0(%r13,%rdx,1),%r10
  807f8b:	00 
  807f8c:	49 f7 da             	neg    %r10
  807f8f:	4c 89 85 98 f3 ff ff 	mov    %r8,-0xc68(%rbp)
  807f96:	4c 63 07             	movslq (%rdi),%r8
  807f99:	4d 03 d0             	add    %r8,%r10
  807f9c:	4d 0f af 94 15 e8 01 	imul   0x1e8(%r13,%rdx,1),%r10
  807fa3:	00 00 
  807fa5:	48 89 8d 90 f3 ff ff 	mov    %rcx,-0xc70(%rbp)
  807fac:	49 8b 8c 15 b0 01 00 	mov    0x1b0(%r13,%rdx,1),%rcx
  807fb3:	00 
  807fb4:	4c 89 b5 68 f3 ff ff 	mov    %r14,-0xc98(%rbp)
  807fbb:	4d 8b b4 15 38 02 00 	mov    0x238(%r13,%rdx,1),%r14
  807fc2:	00 
  807fc3:	42 8b 3c 11          	mov    (%rcx,%r10,1),%edi
  807fc7:	49 f7 de             	neg    %r14
  807fca:	49 8b 8c 15 80 02 00 	mov    0x280(%r13,%rdx,1),%rcx
  807fd1:	00 
  807fd2:	4d 03 f0             	add    %r8,%r14
  807fd5:	4d 8b 94 15 c8 02 00 	mov    0x2c8(%r13,%rdx,1),%r10
  807fdc:	00 
  807fdd:	48 f7 d9             	neg    %rcx
  807fe0:	49 f7 da             	neg    %r10
  807fe3:	49 03 c8             	add    %r8,%rcx
  807fe6:	4d 03 d0             	add    %r8,%r10
  807fe9:	4d 0f af 94 15 c0 02 	imul   0x2c0(%r13,%rdx,1),%r10
  807ff0:	00 00 
  807ff2:	4d 0f af b4 15 30 02 	imul   0x230(%r13,%rdx,1),%r14
  807ff9:	00 00 
  807ffb:	49 0f af 8c 15 78 02 	imul   0x278(%r13,%rdx,1),%rcx
  808002:	00 00 
  808004:	4c 8b 05 95 5b 33 00 	mov    0x335b95(%rip),%r8        # b3dba0 <mod_scalars_mp_ewperiodic_+0x40>
  80800b:	49 c1 e0 02          	shl    $0x2,%r8
  80800f:	4c 89 bd a0 f3 ff ff 	mov    %r15,-0xc60(%rbp)
  808016:	49 f7 d8             	neg    %r8
  808019:	4d 8b 9c 15 f8 01 00 	mov    0x1f8(%r13,%rdx,1),%r11
  808020:	00 
  808021:	4d 8b bc 15 40 02 00 	mov    0x240(%r13,%rdx,1),%r15
  808028:	00 
  808029:	49 8b 94 15 88 02 00 	mov    0x288(%r13,%rdx,1),%rdx
  808030:	00 
  808031:	4c 03 05 28 5b 33 00 	add    0x335b28(%rip),%r8        # b3db60 <mod_scalars_mp_ewperiodic_>
  808038:	43 8b 34 33          	mov    (%r11,%r14,1),%esi
  80803c:	41 8b 0c 0f          	mov    (%r15,%rcx,1),%ecx
  808040:	42 8b 14 12          	mov    (%rdx,%r10,1),%edx
  808044:	89 bd e8 f3 ff ff    	mov    %edi,-0xc18(%rbp)
  80804a:	ff cf                	dec    %edi
  80804c:	48 c7 85 70 f3 ff ff 	movq   $0x2,-0xc90(%rbp)
  808053:	02 00 00 00 
  808057:	48 89 85 50 f3 ff ff 	mov    %rax,-0xcb0(%rbp)
  80805e:	89 b5 ec f3 ff ff    	mov    %esi,-0xc14(%rbp)
  808064:	89 8d f0 f3 ff ff    	mov    %ecx,-0xc10(%rbp)
  80806a:	89 95 f4 f3 ff ff    	mov    %edx,-0xc0c(%rbp)
  808070:	43 f6 04 88 01       	testb  $0x1,(%r8,%r9,4)
  808075:	74 10                	je     808087 <t3dmix_mod_mp_t3dmix4_tile_+0x2f7>
  808077:	ff c6                	inc    %esi
  808079:	89 bd c0 f3 ff ff    	mov    %edi,-0xc40(%rbp)
  80807f:	89 b5 c4 f3 ff ff    	mov    %esi,-0xc3c(%rbp)
  808085:	eb 3c                	jmp    8080c3 <t3dmix_mod_mp_t3dmix4_tile_+0x333>
  808087:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  80808d:	83 ff 01             	cmp    $0x1,%edi
  808090:	44 0f 4f c7          	cmovg  %edi,%r8d
  808094:	ff c6                	inc    %esi
  808096:	48 8b 3d e3 5f 33 00 	mov    0x335fe3(%rip),%rdi        # b3e080 <mod_param_mp_lm_+0x40>
  80809d:	48 c1 e7 02          	shl    $0x2,%rdi
  8080a1:	48 f7 df             	neg    %rdi
  8080a4:	48 03 3d 95 5f 33 00 	add    0x335f95(%rip),%rdi        # b3e040 <mod_param_mp_lm_>
  8080ab:	44 89 85 c0 f3 ff ff 	mov    %r8d,-0xc40(%rbp)
  8080b2:	46 8b 14 8f          	mov    (%rdi,%r9,4),%r10d
  8080b6:	44 3b d6             	cmp    %esi,%r10d
  8080b9:	41 0f 4c f2          	cmovl  %r10d,%esi
  8080bd:	89 b5 c4 f3 ff ff    	mov    %esi,-0xc3c(%rbp)
  8080c3:	48 8b 35 76 57 33 00 	mov    0x335776(%rip),%rsi        # b3d840 <mod_scalars_mp_nsperiodic_+0x40>
  8080ca:	ff c9                	dec    %ecx
  8080cc:	48 c1 e6 02          	shl    $0x2,%rsi
  8080d0:	48 f7 de             	neg    %rsi
  8080d3:	48 03 35 26 57 33 00 	add    0x335726(%rip),%rsi        # b3d800 <mod_scalars_mp_nsperiodic_>
  8080da:	42 f6 04 8e 01       	testb  $0x1,(%rsi,%r9,4)
  8080df:	74 10                	je     8080f1 <t3dmix_mod_mp_t3dmix4_tile_+0x361>
  8080e1:	ff c2                	inc    %edx
  8080e3:	89 8d c8 f3 ff ff    	mov    %ecx,-0xc38(%rbp)
  8080e9:	89 95 cc f3 ff ff    	mov    %edx,-0xc34(%rbp)
  8080ef:	eb 37                	jmp    808128 <t3dmix_mod_mp_t3dmix4_tile_+0x398>
  8080f1:	be 01 00 00 00       	mov    $0x1,%esi
  8080f6:	83 f9 01             	cmp    $0x1,%ecx
  8080f9:	0f 4f f1             	cmovg  %ecx,%esi
  8080fc:	ff c2                	inc    %edx
  8080fe:	48 8b 0d 1b 5f 33 00 	mov    0x335f1b(%rip),%rcx        # b3e020 <mod_param_mp_mm_+0x40>
  808105:	48 c1 e1 02          	shl    $0x2,%rcx
  808109:	48 f7 d9             	neg    %rcx
  80810c:	48 03 0d cd 5e 33 00 	add    0x335ecd(%rip),%rcx        # b3dfe0 <mod_param_mp_mm_>
  808113:	89 b5 c8 f3 ff ff    	mov    %esi,-0xc38(%rbp)
  808119:	42 8b 3c 89          	mov    (%rcx,%r9,4),%edi
  80811d:	3b fa                	cmp    %edx,%edi
  80811f:	0f 4c d7             	cmovl  %edi,%edx
  808122:	89 95 cc f3 ff ff    	mov    %edx,-0xc34(%rbp)
  808128:	bf 3c 73 b3 00       	mov    $0xb3733c,%edi
  80812d:	e8 fe 5a c0 ff       	callq  40dc30 <__kmpc_global_thread_num@plt>
  808132:	89 85 f8 f3 ff ff    	mov    %eax,-0xc08(%rbp)
  808138:	bf 84 73 b3 00       	mov    $0xb37384,%edi
  80813d:	33 c0                	xor    %eax,%eax
  80813f:	e8 1c 5c c0 ff       	callq  40dd60 <__kmpc_ok_to_fork@plt>
  808144:	85 c0                	test   %eax,%eax
  808146:	0f 84 4b 01 00 00    	je     808297 <t3dmix_mod_mp_t3dmix4_tile_+0x507>
  80814c:	48 81 c4 10 ff ff ff 	add    $0xffffffffffffff10,%rsp
  808153:	4c 8d 95 c0 f3 ff ff 	lea    -0xc40(%rbp),%r10
  80815a:	ba 18 84 80 00       	mov    $0x808418,%edx
  80815f:	4d 8d 5a 04          	lea    0x4(%r10),%r11
  808163:	33 c0                	xor    %eax,%eax
  808165:	4c 8d ab 90 00 00 00 	lea    0x90(%rbx),%r13
  80816c:	4c 8d 73 70          	lea    0x70(%rbx),%r14
  808170:	4c 89 14 24          	mov    %r10,(%rsp)
  808174:	4c 8d 7b 48          	lea    0x48(%rbx),%r15
  808178:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
  80817d:	48 8d 73 58          	lea    0x58(%rbx),%rsi
  808181:	4c 89 6c 24 10       	mov    %r13,0x10(%rsp)
  808186:	48 8d 7b 68          	lea    0x68(%rbx),%rdi
  80818a:	4c 89 74 24 18       	mov    %r14,0x18(%rsp)
  80818f:	4c 8d 56 48          	lea    0x48(%rsi),%r10
  808193:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
  808198:	4c 8d 5b 30          	lea    0x30(%rbx),%r11
  80819c:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
  8081a1:	4c 8d 6e 40          	lea    0x40(%rsi),%r13
  8081a5:	48 89 7c 24 30       	mov    %rdi,0x30(%rsp)
  8081aa:	4c 8d 73 78          	lea    0x78(%rbx),%r14
  8081ae:	4c 89 54 24 38       	mov    %r10,0x38(%rsp)
  8081b3:	4c 8d 7b 50          	lea    0x50(%rbx),%r15
  8081b7:	4c 89 5c 24 40       	mov    %r11,0x40(%rsp)
  8081bc:	48 8d 73 60          	lea    0x60(%rbx),%rsi
  8081c0:	4c 89 6c 24 48       	mov    %r13,0x48(%rsp)
  8081c5:	48 8d 8d b0 f3 ff ff 	lea    -0xc50(%rbp),%rcx
  8081cc:	4c 89 74 24 50       	mov    %r14,0x50(%rsp)
  8081d1:	4c 8d 41 18          	lea    0x18(%rcx),%r8
  8081d5:	4c 89 7c 24 58       	mov    %r15,0x58(%rsp)
  8081da:	4c 8d 49 1c          	lea    0x1c(%rcx),%r9
  8081de:	4c 8d 7c 24 60       	lea    0x60(%rsp),%r15
  8081e3:	49 89 37             	mov    %rsi,(%r15)
  8081e6:	48 8d 76 20          	lea    0x20(%rsi),%rsi
  8081ea:	49 89 77 08          	mov    %rsi,0x8(%r15)
  8081ee:	48 8d 76 08          	lea    0x8(%rsi),%rsi
  8081f2:	49 89 77 10          	mov    %rsi,0x10(%r15)
  8081f6:	48 8d 71 08          	lea    0x8(%rcx),%rsi
  8081fa:	49 89 77 18          	mov    %rsi,0x18(%r15)
  8081fe:	48 8d 71 38          	lea    0x38(%rcx),%rsi
  808202:	49 89 77 20          	mov    %rsi,0x20(%r15)
  808206:	48 8d 71 3c          	lea    0x3c(%rcx),%rsi
  80820a:	49 89 77 28          	mov    %rsi,0x28(%r15)
  80820e:	48 8d 71 40          	lea    0x40(%rcx),%rsi
  808212:	49 89 77 30          	mov    %rsi,0x30(%r15)
  808216:	48 8d 71 44          	lea    0x44(%rcx),%rsi
  80821a:	49 89 77 38          	mov    %rsi,0x38(%r15)
  80821e:	48 8d 73 40          	lea    0x40(%rbx),%rsi
  808222:	49 89 77 40          	mov    %rsi,0x40(%r15)
  808226:	48 8d 71 20          	lea    0x20(%rcx),%rsi
  80822a:	49 89 77 48          	mov    %rsi,0x48(%r15)
  80822e:	48 8d 71 24          	lea    0x24(%rcx),%rsi
  808232:	49 89 77 50          	mov    %rsi,0x50(%r15)
  808236:	48 8d 71 28          	lea    0x28(%rcx),%rsi
  80823a:	49 89 77 58          	mov    %rsi,0x58(%r15)
  80823e:	48 8d 71 2c          	lea    0x2c(%rcx),%rsi
  808242:	49 89 77 60          	mov    %rsi,0x60(%r15)
  808246:	48 8d 71 30          	lea    0x30(%rcx),%rsi
  80824a:	49 89 77 68          	mov    %rsi,0x68(%r15)
  80824e:	48 8d 71 34          	lea    0x34(%rcx),%rsi
  808252:	49 89 77 70          	mov    %rsi,0x70(%r15)
  808256:	48 8d b5 f0 f2 ff ff 	lea    -0xd10(%rbp),%rsi
  80825d:	49 89 77 78          	mov    %rsi,0x78(%r15)
  808261:	48 8d 71 a0          	lea    -0x60(%rcx),%rsi
  808265:	48 89 b4 24 e0 00 00 	mov    %rsi,0xe0(%rsp)
  80826c:	00 
  80826d:	48 8d b5 90 f2 ff ff 	lea    -0xd70(%rbp),%rsi
  808274:	48 89 b4 24 e8 00 00 	mov    %rsi,0xe8(%rsp)
  80827b:	00 
  80827c:	bf 84 73 b3 00       	mov    $0xb37384,%edi
  808281:	be 21 00 00 00       	mov    $0x21,%esi
  808286:	e8 25 59 c0 ff       	callq  40dbb0 <__kmpc_fork_call@plt>
  80828b:	48 81 c4 f0 00 00 00 	add    $0xf0,%rsp
  808292:	e9 56 01 00 00       	jmpq   8083ed <t3dmix_mod_mp_t3dmix4_tile_+0x65d>
  808297:	bf 84 73 b3 00       	mov    $0xb37384,%edi
  80829c:	33 c0                	xor    %eax,%eax
  80829e:	8b b5 f8 f3 ff ff    	mov    -0xc08(%rbp),%esi
  8082a4:	e8 a7 5a c0 ff       	callq  40dd50 <__kmpc_serialized_parallel@plt>
  8082a9:	48 81 c4 10 ff ff ff 	add    $0xffffffffffffff10,%rsp
  8082b0:	4c 8d 95 c4 f3 ff ff 	lea    -0xc3c(%rbp),%r10
  8082b7:	be 04 4c b8 00       	mov    $0xb84c04,%esi
  8082bc:	4c 8d 9b 90 00 00 00 	lea    0x90(%rbx),%r11
  8082c3:	4c 8d 6b 70          	lea    0x70(%rbx),%r13
  8082c7:	4c 8d 73 48          	lea    0x48(%rbx),%r14
  8082cb:	4c 89 14 24          	mov    %r10,(%rsp)
  8082cf:	4c 8d 7b 58          	lea    0x58(%rbx),%r15
  8082d3:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
  8082d8:	4c 8d 53 68          	lea    0x68(%rbx),%r10
  8082dc:	4c 89 6c 24 10       	mov    %r13,0x10(%rsp)
  8082e1:	48 8d bd f8 f3 ff ff 	lea    -0xc08(%rbp),%rdi
  8082e8:	4c 89 74 24 18       	mov    %r14,0x18(%rsp)
  8082ed:	48 8d 57 b8          	lea    -0x48(%rdi),%rdx
  8082f1:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
  8082f6:	48 8d 4a 18          	lea    0x18(%rdx),%rcx
  8082fa:	4c 8d 7c 24 28       	lea    0x28(%rsp),%r15
  8082ff:	4d 89 17             	mov    %r10,(%r15)
  808302:	4d 8d 52 38          	lea    0x38(%r10),%r10
  808306:	4d 89 57 08          	mov    %r10,0x8(%r15)
  80830a:	4c 8d 53 30          	lea    0x30(%rbx),%r10
  80830e:	4d 89 57 10          	mov    %r10,0x10(%r15)
  808312:	4d 8d 52 68          	lea    0x68(%r10),%r10
  808316:	4d 89 57 18          	mov    %r10,0x18(%r15)
  80831a:	4c 8d 53 78          	lea    0x78(%rbx),%r10
  80831e:	4d 89 57 20          	mov    %r10,0x20(%r15)
  808322:	4c 8d 53 50          	lea    0x50(%rbx),%r10
  808326:	4d 89 57 28          	mov    %r10,0x28(%r15)
  80832a:	4c 8d 53 60          	lea    0x60(%rbx),%r10
  80832e:	4d 89 57 30          	mov    %r10,0x30(%r15)
  808332:	4d 8d 52 20          	lea    0x20(%r10),%r10
  808336:	4d 89 57 38          	mov    %r10,0x38(%r15)
  80833a:	4d 8d 52 08          	lea    0x8(%r10),%r10
  80833e:	4d 89 57 40          	mov    %r10,0x40(%r15)
  808342:	4c 8d 52 08          	lea    0x8(%rdx),%r10
  808346:	4d 89 57 48          	mov    %r10,0x48(%r15)
  80834a:	4c 8d 52 38          	lea    0x38(%rdx),%r10
  80834e:	4d 89 57 50          	mov    %r10,0x50(%r15)
  808352:	4c 8d 52 3c          	lea    0x3c(%rdx),%r10
  808356:	4d 89 57 58          	mov    %r10,0x58(%r15)
  80835a:	4c 8d 52 40          	lea    0x40(%rdx),%r10
  80835e:	4d 89 57 60          	mov    %r10,0x60(%r15)
  808362:	4c 8d 52 44          	lea    0x44(%rdx),%r10
  808366:	4d 89 57 68          	mov    %r10,0x68(%r15)
  80836a:	4c 8d 53 40          	lea    0x40(%rbx),%r10
  80836e:	4d 89 57 70          	mov    %r10,0x70(%r15)
  808372:	4c 8d 52 20          	lea    0x20(%rdx),%r10
  808376:	4d 89 57 78          	mov    %r10,0x78(%r15)
  80837a:	4c 8d 52 24          	lea    0x24(%rdx),%r10
  80837e:	4c 8d b4 24 a8 00 00 	lea    0xa8(%rsp),%r14
  808385:	00 
  808386:	4d 89 16             	mov    %r10,(%r14)
  808389:	4c 8d 52 28          	lea    0x28(%rdx),%r10
  80838d:	4d 89 56 08          	mov    %r10,0x8(%r14)
  808391:	4c 8d 52 2c          	lea    0x2c(%rdx),%r10
  808395:	4d 89 56 10          	mov    %r10,0x10(%r14)
  808399:	4c 8d 42 1c          	lea    0x1c(%rdx),%r8
  80839d:	4c 8d 4a 10          	lea    0x10(%rdx),%r9
  8083a1:	4c 8d 52 30          	lea    0x30(%rdx),%r10
  8083a5:	4d 89 56 18          	mov    %r10,0x18(%r14)
  8083a9:	4c 8d 52 34          	lea    0x34(%rdx),%r10
  8083ad:	4d 89 56 20          	mov    %r10,0x20(%r14)
  8083b1:	4c 8d 95 f0 f2 ff ff 	lea    -0xd10(%rbp),%r10
  8083b8:	4d 89 56 28          	mov    %r10,0x28(%r14)
  8083bc:	4c 8d 52 a0          	lea    -0x60(%rdx),%r10
  8083c0:	4d 89 56 30          	mov    %r10,0x30(%r14)
  8083c4:	4c 8d 95 90 f2 ff ff 	lea    -0xd70(%rbp),%r10
  8083cb:	4d 89 56 38          	mov    %r10,0x38(%r14)
  8083cf:	e8 44 00 00 00       	callq  808418 <t3dmix_mod_mp_t3dmix4_tile_+0x688>
  8083d4:	48 81 c4 f0 00 00 00 	add    $0xf0,%rsp
  8083db:	bf 84 73 b3 00       	mov    $0xb37384,%edi
  8083e0:	33 c0                	xor    %eax,%eax
  8083e2:	8b b5 f8 f3 ff ff    	mov    -0xc08(%rbp),%esi
  8083e8:	e8 d3 5c c0 ff       	callq  40e0c0 <__kmpc_end_serialized_parallel@plt>
  8083ed:	4c 89 e0             	mov    %r12,%rax
  8083f0:	48 89 c4             	mov    %rax,%rsp
  8083f3:	4c 8b bd 30 f7 ff ff 	mov    -0x8d0(%rbp),%r15
  8083fa:	4c 8b b5 38 f7 ff ff 	mov    -0x8c8(%rbp),%r14
  808401:	4c 8b ad 40 f7 ff ff 	mov    -0x8c0(%rbp),%r13
  808408:	4c 8b a5 48 f7 ff ff 	mov    -0x8b8(%rbp),%r12
  80840f:	48 89 ec             	mov    %rbp,%rsp
  808412:	5d                   	pop    %rbp
  808413:	48 89 dc             	mov    %rbx,%rsp
  808416:	5b                   	pop    %rbx
  808417:	c3                   	retq   
  808418:	53                   	push   %rbx
  808419:	48 89 e3             	mov    %rsp,%rbx
  80841c:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  808420:	55                   	push   %rbp
  808421:	55                   	push   %rbp
  808422:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  808426:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  80842b:	48 89 e5             	mov    %rsp,%rbp
  80842e:	48 81 ec 70 0d 00 00 	sub    $0xd70,%rsp
  808435:	4c 89 a5 48 f7 ff ff 	mov    %r12,-0x8b8(%rbp)
  80843c:	4c 8b 63 48          	mov    0x48(%rbx),%r12
  808440:	4c 89 b5 38 f7 ff ff 	mov    %r14,-0x8c8(%rbp)
  808447:	4c 8b 73 40          	mov    0x40(%rbx),%r14
  80844b:	48 8b 73 38          	mov    0x38(%rbx),%rsi
  80844f:	4c 89 ad 40 f7 ff ff 	mov    %r13,-0x8c0(%rbp)
  808456:	4c 8b 6b 10          	mov    0x10(%rbx),%r13
  80845a:	4d 8b 24 24          	mov    (%r12),%r12
  80845e:	48 8b 43 30          	mov    0x30(%rbx),%rax
  808462:	4c 89 a5 e8 f2 ff ff 	mov    %r12,-0xd18(%rbp)
  808469:	4d 8b 26             	mov    (%r14),%r12
  80846c:	4c 8b 36             	mov    (%rsi),%r14
  80846f:	4c 89 b5 20 f3 ff ff 	mov    %r14,-0xce0(%rbp)
  808476:	45 8b 75 00          	mov    0x0(%r13),%r14d
  80847a:	48 8b 00             	mov    (%rax),%rax
  80847d:	4c 89 bd 30 f7 ff ff 	mov    %r15,-0x8d0(%rbp)
  808484:	4c 8b 5b 20          	mov    0x20(%rbx),%r11
  808488:	4c 8b 53 18          	mov    0x18(%rbx),%r10
  80848c:	4c 8b 7b 28          	mov    0x28(%rbx),%r15
  808490:	8b 3f                	mov    (%rdi),%edi
  808492:	8b 09                	mov    (%rcx),%ecx
  808494:	44 89 b5 a0 fd ff ff 	mov    %r14d,-0x260(%rbp)
  80849b:	4c 8b 32             	mov    (%rdx),%r14
  80849e:	48 89 85 10 f3 ff ff 	mov    %rax,-0xcf0(%rbp)
  8084a5:	48 8b 53 50          	mov    0x50(%rbx),%rdx
  8084a9:	48 8b 43 58          	mov    0x58(%rbx),%rax
  8084ad:	89 bd 40 f8 ff ff    	mov    %edi,-0x7c0(%rbp)
  8084b3:	45 8b 29             	mov    (%r9),%r13d
  8084b6:	89 8d 18 fa ff ff    	mov    %ecx,-0x5e8(%rbp)
  8084bc:	48 8b 4b 60          	mov    0x60(%rbx),%rcx
  8084c0:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
  8084c4:	4c 8b 4b 70          	mov    0x70(%rbx),%r9
  8084c8:	4d 8b 1b             	mov    (%r11),%r11
  8084cb:	49 8b 37             	mov    (%r15),%rsi
  8084ce:	4d 8b 12             	mov    (%r10),%r10
  8084d1:	45 8b 00             	mov    (%r8),%r8d
  8084d4:	44 89 ad 98 fd ff ff 	mov    %r13d,-0x268(%rbp)
  8084db:	4c 8b 2a             	mov    (%rdx),%r13
  8084de:	4c 89 9d 00 f3 ff ff 	mov    %r11,-0xd00(%rbp)
  8084e5:	48 8b 10             	mov    (%rax),%rdx
  8084e8:	48 89 b5 08 f3 ff ff 	mov    %rsi,-0xcf8(%rbp)
  8084ef:	4c 89 95 28 f3 ff ff 	mov    %r10,-0xcd8(%rbp)
  8084f6:	44 89 85 20 fa ff ff 	mov    %r8d,-0x5e0(%rbp)
  8084fd:	48 8d 43 78          	lea    0x78(%rbx),%rax
  808501:	4c 8b 18             	mov    (%rax),%r11
  808504:	48 8b 31             	mov    (%rcx),%rsi
  808507:	4c 8b 07             	mov    (%rdi),%r8
  80850a:	4d 8b 11             	mov    (%r9),%r10
  80850d:	48 89 95 c0 f2 ff ff 	mov    %rdx,-0xd40(%rbp)
  808514:	48 8b 50 10          	mov    0x10(%rax),%rdx
  808518:	4c 89 ad 18 f3 ff ff 	mov    %r13,-0xce8(%rbp)
  80851f:	48 89 b5 d0 f2 ff ff 	mov    %rsi,-0xd30(%rbp)
  808526:	4c 89 85 f0 f2 ff ff 	mov    %r8,-0xd10(%rbp)
  80852d:	4c 89 95 f8 f2 ff ff 	mov    %r10,-0xd08(%rbp)
  808534:	4c 8d 93 80 00 00 00 	lea    0x80(%rbx),%r10
  80853b:	4d 8b 2a             	mov    (%r10),%r13
  80853e:	49 8b 72 10          	mov    0x10(%r10),%rsi
  808542:	4d 8b 42 18          	mov    0x18(%r10),%r8
  808546:	4d 8b 52 20          	mov    0x20(%r10),%r10
  80854a:	4d 8b 3b             	mov    (%r11),%r15
  80854d:	4c 89 bd c8 f2 ff ff 	mov    %r15,-0xd38(%rbp)
  808554:	48 63 0a             	movslq (%rdx),%rcx
  808557:	4c 8b 78 30          	mov    0x30(%rax),%r15
  80855b:	49 8b 45 00          	mov    0x0(%r13),%rax
  80855f:	48 63 3e             	movslq (%rsi),%rdi
  808562:	4d 63 08             	movslq (%r8),%r9
  808565:	45 8b 1a             	mov    (%r10),%r11d
  808568:	48 89 8d 08 fd ff ff 	mov    %rcx,-0x2f8(%rbp)
  80856f:	48 8b 8b b8 00 00 00 	mov    0xb8(%rbx),%rcx
  808576:	48 89 85 e0 f2 ff ff 	mov    %rax,-0xd20(%rbp)
  80857d:	48 89 bd 00 fd ff ff 	mov    %rdi,-0x300(%rbp)
  808584:	4c 89 8d c0 f9 ff ff 	mov    %r9,-0x640(%rbp)
  80858b:	44 89 9d b0 f2 ff ff 	mov    %r11d,-0xd50(%rbp)
  808592:	4c 8d 9b b0 00 00 00 	lea    0xb0(%rbx),%r11
  808599:	49 8b 03             	mov    (%r11),%rax
  80859c:	49 8b 7b 10          	mov    0x10(%r11),%rdi
  8085a0:	4d 8b 4b 18          	mov    0x18(%r11),%r9
  8085a4:	4d 8b 5b 20          	mov    0x20(%r11),%r11
  8085a8:	4d 8b 2f             	mov    (%r15),%r13
  8085ab:	4c 89 ad d8 f2 ff ff 	mov    %r13,-0xd28(%rbp)
  8085b2:	48 63 31             	movslq (%rcx),%rsi
  8085b5:	48 8d 8b e0 00 00 00 	lea    0xe0(%rbx),%rcx
  8085bc:	4c 8b 29             	mov    (%rcx),%r13
  8085bf:	48 63 10             	movslq (%rax),%rdx
  8085c2:	33 c0                	xor    %eax,%eax
  8085c4:	4c 63 07             	movslq (%rdi),%r8
  8085c7:	48 8d bd b8 f4 ff ff 	lea    -0xb48(%rbp),%rdi
  8085ce:	4d 63 11             	movslq (%r9),%r10
  8085d1:	4d 63 3b             	movslq (%r11),%r15
  8085d4:	48 89 b5 a0 f2 ff ff 	mov    %rsi,-0xd60(%rbp)
  8085db:	4c 89 ad b8 f2 ff ff 	mov    %r13,-0xd48(%rbp)
  8085e2:	48 8b 71 10          	mov    0x10(%rcx),%rsi
  8085e6:	4c 8b 69 08          	mov    0x8(%rcx),%r13
  8085ea:	48 89 95 a8 f2 ff ff 	mov    %rdx,-0xd58(%rbp)
  8085f1:	4c 89 85 80 fa ff ff 	mov    %r8,-0x580(%rbp)
  8085f8:	4c 89 95 98 f2 ff ff 	mov    %r10,-0xd68(%rbp)
  8085ff:	4c 89 bd 90 f2 ff ff 	mov    %r15,-0xd70(%rbp)
  808606:	e8 a5 5e c7 ff       	callq  47e4b0 <_f90_dope_vector_init>
  80860b:	48 89 85 18 f7 ff ff 	mov    %rax,-0x8e8(%rbp)
  808612:	48 83 c0 1f          	add    $0x1f,%rax
  808616:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  80861a:	48 2b e0             	sub    %rax,%rsp
  80861d:	48 89 e0             	mov    %rsp,%rax
  808620:	48 89 85 10 f7 ff ff 	mov    %rax,-0x8f0(%rbp)
  808627:	48 89 c2             	mov    %rax,%rdx
  80862a:	48 8d bd 18 f5 ff ff 	lea    -0xae8(%rbp),%rdi
  808631:	4c 89 ee             	mov    %r13,%rsi
  808634:	33 c0                	xor    %eax,%eax
  808636:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  80863a:	e8 71 5e c7 ff       	callq  47e4b0 <_f90_dope_vector_init>
  80863f:	48 89 85 08 f7 ff ff 	mov    %rax,-0x8f8(%rbp)
  808646:	48 83 c0 1f          	add    $0x1f,%rax
  80864a:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  80864e:	48 2b e0             	sub    %rax,%rsp
  808651:	48 89 e0             	mov    %rsp,%rax
  808654:	48 89 85 00 f7 ff ff 	mov    %rax,-0x900(%rbp)
  80865b:	48 89 c2             	mov    %rax,%rdx
  80865e:	48 8d bd 78 f5 ff ff 	lea    -0xa88(%rbp),%rdi
  808665:	33 c0                	xor    %eax,%eax
  808667:	48 8b b5 b8 f2 ff ff 	mov    -0xd48(%rbp),%rsi
  80866e:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  808672:	e8 39 5e c7 ff       	callq  47e4b0 <_f90_dope_vector_init>
  808677:	48 89 85 20 f7 ff ff 	mov    %rax,-0x8e0(%rbp)
  80867e:	48 83 c0 1f          	add    $0x1f,%rax
  808682:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  808686:	48 2b e0             	sub    %rax,%rsp
  808689:	48 89 e0             	mov    %rsp,%rax
  80868c:	48 89 85 28 f7 ff ff 	mov    %rax,-0x8d8(%rbp)
  808693:	48 8b 15 e6 39 33 00 	mov    0x3339e6(%rip),%rdx        # b3c080 <mod_param_mp_nt_+0x40>
  80869a:	48 c1 e2 02          	shl    $0x2,%rdx
  80869e:	48 f7 da             	neg    %rdx
  8086a1:	48 03 15 98 39 33 00 	add    0x333998(%rip),%rdx        # b3c040 <mod_param_mp_nt_>
  8086a8:	4d 63 36             	movslq (%r14),%r14
  8086ab:	48 89 85 78 f5 ff ff 	mov    %rax,-0xa88(%rbp)
  8086b2:	46 8b 3c b2          	mov    (%rdx,%r14,4),%r15d
  8086b6:	45 85 ff             	test   %r15d,%r15d
  8086b9:	0f 8e 69 46 00 00    	jle    80cd28 <t3dmix_mod_mp_t3dmix4_tile_+0x4f98>
  8086bf:	48 83 c4 e0          	add    $0xffffffffffffffe0,%rsp
  8086c3:	48 8d 85 74 f8 ff ff 	lea    -0x78c(%rbp),%rax
  8086ca:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  8086d0:	bf 84 73 b3 00       	mov    $0xb37384,%edi
  8086d5:	ba 22 00 00 00       	mov    $0x22,%edx
  8086da:	48 8d 8d 70 f8 ff ff 	lea    -0x790(%rbp),%rcx
  8086e1:	44 89 78 f8          	mov    %r15d,-0x8(%rax)
  8086e5:	4c 8d 85 68 f8 ff ff 	lea    -0x798(%rbp),%r8
  8086ec:	48 89 04 24          	mov    %rax,(%rsp)
  8086f0:	4c 8d 8d 6c f8 ff ff 	lea    -0x794(%rbp),%r9
  8086f7:	44 89 6c 24 08       	mov    %r13d,0x8(%rsp)
  8086fc:	44 89 6c 24 10       	mov    %r13d,0x10(%rsp)
  808701:	8b 70 cc             	mov    -0x34(%rax),%esi
  808704:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%rax)
  80870b:	44 89 68 f4          	mov    %r13d,-0xc(%rax)
  80870f:	44 89 28             	mov    %r13d,(%rax)
  808712:	e8 19 57 c0 ff       	callq  40de30 <__kmpc_for_static_init_4@plt>
  808717:	48 83 c4 20          	add    $0x20,%rsp
  80871b:	4d 63 ff             	movslq %r15d,%r15
  80871e:	48 63 85 68 f8 ff ff 	movslq -0x798(%rbp),%rax
  808725:	8b 95 6c f8 ff ff    	mov    -0x794(%rbp),%edx
  80872b:	48 89 85 d8 f5 ff ff 	mov    %rax,-0xa28(%rbp)
  808732:	49 3b c7             	cmp    %r15,%rax
  808735:	0f 8f da 45 00 00    	jg     80cd15 <t3dmix_mod_mp_t3dmix4_tile_+0x4f85>
  80873b:	4c 8b 85 e8 f2 ff ff 	mov    -0xd18(%rbp),%r8
  808742:	41 3b d7             	cmp    %r15d,%edx
  808745:	48 8b 8d d8 f2 ff ff 	mov    -0xd28(%rbp),%rcx
  80874c:	4c 8b 95 e0 f2 ff ff 	mov    -0xd20(%rbp),%r10
  808753:	44 0f 4c fa          	cmovl  %edx,%r15d
  808757:	4d 63 08             	movslq (%r8),%r9
  80875a:	4c 89 8d e0 f5 ff ff 	mov    %r9,-0xa20(%rbp)
  808761:	4c 8b 0d 38 39 33 00 	mov    0x333938(%rip),%r9        # b3c0a0 <mod_param_mp_n_>
  808768:	48 63 31             	movslq (%rcx),%rsi
  80876b:	48 89 b5 d0 f6 ff ff 	mov    %rsi,-0x930(%rbp)
  808772:	48 8b 05 27 54 33 00 	mov    0x335427(%rip),%rax        # b3dba0 <mod_scalars_mp_ewperiodic_+0x40>
  808779:	48 8b 35 c0 50 33 00 	mov    0x3350c0(%rip),%rsi        # b3d840 <mod_scalars_mp_nsperiodic_+0x40>
  808780:	48 89 85 70 f6 ff ff 	mov    %rax,-0x990(%rbp)
  808787:	4d 63 1a             	movslq (%r10),%r11
  80878a:	48 89 b5 80 f6 ff ff 	mov    %rsi,-0x980(%rbp)
  808791:	4b 8d 34 b1          	lea    (%r9,%r14,4),%rsi
  808795:	48 8b 05 1c 5a 33 00 	mov    0x335a1c(%rip),%rax        # b3e1b8 <mod_scalars_mp_compositegrid_+0x58>
  80879c:	4c 8b 8d f8 f2 ff ff 	mov    -0xd08(%rbp),%r9
  8087a3:	48 8b 3d b6 53 33 00 	mov    0x3353b6(%rip),%rdi        # b3db60 <mod_scalars_mp_ewperiodic_>
  8087aa:	4c 89 9d 50 f8 ff ff 	mov    %r11,-0x7b0(%rbp)
  8087b1:	48 89 85 a0 f6 ff ff 	mov    %rax,-0x960(%rbp)
  8087b8:	48 89 bd 68 f6 ff ff 	mov    %rdi,-0x998(%rbp)
  8087bf:	4c 8b 95 b8 f4 ff ff 	mov    -0xb48(%rbp),%r10
  8087c6:	4c 8b 9d 18 f5 ff ff 	mov    -0xae8(%rbp),%r11
  8087cd:	48 8b 85 c8 f2 ff ff 	mov    -0xd38(%rbp),%rax
  8087d4:	4c 8b 85 78 f5 ff ff 	mov    -0xa88(%rbp),%r8
  8087db:	48 8b 3d 7e 59 33 00 	mov    0x33597e(%rip),%rdi        # b3e160 <mod_scalars_mp_compositegrid_>
  8087e2:	4c 89 95 88 f6 ff ff 	mov    %r10,-0x978(%rbp)
  8087e9:	4c 89 9d 90 f6 ff ff 	mov    %r11,-0x970(%rbp)
  8087f0:	4c 89 85 88 fa ff ff 	mov    %r8,-0x578(%rbp)
  8087f7:	48 89 bd 98 f6 ff ff 	mov    %rdi,-0x968(%rbp)
  8087fe:	4c 8b 15 9b 59 33 00 	mov    0x33599b(%rip),%r10        # b3e1a0 <mod_scalars_mp_compositegrid_+0x40>
  808805:	4c 8b 1d 34 2b 33 00 	mov    0x332b34(%rip),%r11        # b3b340 <mod_scalars_mp_dt_>
  80880c:	4c 8b 05 6d 2b 33 00 	mov    0x332b6d(%rip),%r8        # b3b380 <mod_scalars_mp_dt_+0x40>
  808813:	49 8b 79 38          	mov    0x38(%r9),%rdi
  808817:	48 8b 15 92 59 33 00 	mov    0x335992(%rip),%rdx        # b3e1b0 <mod_scalars_mp_compositegrid_+0x50>
  80881e:	4c 89 95 b0 f6 ff ff 	mov    %r10,-0x950(%rbp)
  808825:	4c 89 9d a8 fb ff ff 	mov    %r11,-0x458(%rbp)
  80882c:	4c 89 85 c0 f6 ff ff 	mov    %r8,-0x940(%rbp)
  808833:	4d 8b 19             	mov    (%r9),%r11
  808836:	4d 8b 51 50          	mov    0x50(%r9),%r10
  80883a:	48 89 bd 30 ff ff ff 	mov    %rdi,-0xd0(%rbp)
  808841:	48 89 95 a8 f6 ff ff 	mov    %rdx,-0x958(%rbp)
  808848:	4c 8b 08             	mov    (%rax),%r9
  80884b:	48 8b 78 38          	mov    0x38(%rax),%rdi
  80884f:	4c 8b 40 50          	mov    0x50(%rax),%r8
  808853:	49 8b 14 24          	mov    (%r12),%rdx
  808857:	49 8b 84 24 98 00 00 	mov    0x98(%r12),%rax
  80885e:	00 
  80885f:	48 89 95 e0 f6 ff ff 	mov    %rdx,-0x920(%rbp)
  808866:	48 89 85 d8 f6 ff ff 	mov    %rax,-0x928(%rbp)
  80886d:	49 8b 94 24 80 00 00 	mov    0x80(%r12),%rdx
  808874:	00 
  808875:	49 8b 44 24 68       	mov    0x68(%r12),%rax
  80887a:	48 89 95 c8 f6 ff ff 	mov    %rdx,-0x938(%rbp)
  808881:	48 89 85 00 f9 ff ff 	mov    %rax,-0x700(%rbp)
  808888:	49 8b 54 24 50       	mov    0x50(%r12),%rdx
  80888d:	49 8b 44 24 38       	mov    0x38(%r12),%rax
  808892:	4c 8b a5 18 f3 ff ff 	mov    -0xce8(%rbp),%r12
  808899:	48 89 95 f0 fd ff ff 	mov    %rdx,-0x210(%rbp)
  8088a0:	4d 63 ff             	movslq %r15d,%r15
  8088a3:	49 8b 14 24          	mov    (%r12),%rdx
  8088a7:	48 89 95 b8 f6 ff ff 	mov    %rdx,-0x948(%rbp)
  8088ae:	49 8b 54 24 68       	mov    0x68(%r12),%rdx
  8088b3:	48 89 95 f8 f8 ff ff 	mov    %rdx,-0x708(%rbp)
  8088ba:	49 8b 54 24 50       	mov    0x50(%r12),%rdx
  8088bf:	48 89 95 e8 fd ff ff 	mov    %rdx,-0x218(%rbp)
  8088c6:	48 8b 95 c0 f2 ff ff 	mov    -0xd40(%rbp),%rdx
  8088cd:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  8088d2:	4c 89 a5 28 ff ff ff 	mov    %r12,-0xd8(%rbp)
  8088d9:	4c 8b 22             	mov    (%rdx),%r12
  8088dc:	4c 89 a5 60 f6 ff ff 	mov    %r12,-0x9a0(%rbp)
  8088e3:	4c 8b 62 50          	mov    0x50(%rdx),%r12
  8088e7:	4c 89 a5 e0 fd ff ff 	mov    %r12,-0x220(%rbp)
  8088ee:	4c 8b a5 20 f3 ff ff 	mov    -0xce0(%rbp),%r12
  8088f5:	48 8b 52 38          	mov    0x38(%rdx),%rdx
  8088f9:	48 89 95 20 ff ff ff 	mov    %rdx,-0xe0(%rbp)
  808900:	49 8b 14 24          	mov    (%r12),%rdx
  808904:	48 89 95 58 f6 ff ff 	mov    %rdx,-0x9a8(%rbp)
  80890b:	49 8b 54 24 68       	mov    0x68(%r12),%rdx
  808910:	48 89 95 f0 f8 ff ff 	mov    %rdx,-0x710(%rbp)
  808917:	49 8b 54 24 50       	mov    0x50(%r12),%rdx
  80891c:	48 89 95 d8 fd ff ff 	mov    %rdx,-0x228(%rbp)
  808923:	48 8b 95 d0 f2 ff ff 	mov    -0xd30(%rbp),%rdx
  80892a:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  80892f:	4c 89 a5 18 ff ff ff 	mov    %r12,-0xe8(%rbp)
  808936:	4c 8b 22             	mov    (%rdx),%r12
  808939:	4c 89 a5 50 f6 ff ff 	mov    %r12,-0x9b0(%rbp)
  808940:	4c 8b 62 50          	mov    0x50(%rdx),%r12
  808944:	4c 89 a5 d0 fd ff ff 	mov    %r12,-0x230(%rbp)
  80894b:	4c 8b a5 f0 f2 ff ff 	mov    -0xd10(%rbp),%r12
  808952:	48 8b 52 38          	mov    0x38(%rdx),%rdx
  808956:	48 89 95 10 ff ff ff 	mov    %rdx,-0xf0(%rbp)
  80895d:	49 8b 14 24          	mov    (%r12),%rdx
  808961:	48 89 95 48 f6 ff ff 	mov    %rdx,-0x9b8(%rbp)
  808968:	49 8b 54 24 50       	mov    0x50(%r12),%rdx
  80896d:	48 89 95 c8 fd ff ff 	mov    %rdx,-0x238(%rbp)
  808974:	48 8b 95 28 f3 ff ff 	mov    -0xcd8(%rbp),%rdx
  80897b:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  808980:	4c 89 a5 08 ff ff ff 	mov    %r12,-0xf8(%rbp)
  808987:	4c 8b 22             	mov    (%rdx),%r12
  80898a:	4c 89 a5 40 f6 ff ff 	mov    %r12,-0x9c0(%rbp)
  808991:	4c 8b 62 68          	mov    0x68(%rdx),%r12
  808995:	4c 89 a5 e8 f8 ff ff 	mov    %r12,-0x718(%rbp)
  80899c:	4c 8b 62 50          	mov    0x50(%rdx),%r12
  8089a0:	4c 89 a5 c0 fd ff ff 	mov    %r12,-0x240(%rbp)
  8089a7:	4c 8b a5 00 f3 ff ff 	mov    -0xd00(%rbp),%r12
  8089ae:	48 8b 52 38          	mov    0x38(%rdx),%rdx
  8089b2:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
  8089b9:	49 8b 14 24          	mov    (%r12),%rdx
  8089bd:	48 89 95 38 f6 ff ff 	mov    %rdx,-0x9c8(%rbp)
  8089c4:	49 8b 54 24 50       	mov    0x50(%r12),%rdx
  8089c9:	48 89 95 b8 fd ff ff 	mov    %rdx,-0x248(%rbp)
  8089d0:	48 8b 95 08 f3 ff ff 	mov    -0xcf8(%rbp),%rdx
  8089d7:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  8089dc:	4c 89 a5 f8 fe ff ff 	mov    %r12,-0x108(%rbp)
  8089e3:	4c 8b 22             	mov    (%rdx),%r12
  8089e6:	4c 89 a5 30 f6 ff ff 	mov    %r12,-0x9d0(%rbp)
  8089ed:	4c 8b 62 50          	mov    0x50(%rdx),%r12
  8089f1:	4c 89 a5 b0 fd ff ff 	mov    %r12,-0x250(%rbp)
  8089f8:	4c 8b a5 10 f3 ff ff 	mov    -0xcf0(%rbp),%r12
  8089ff:	48 8b 52 38          	mov    0x38(%rdx),%rdx
  808a03:	48 89 95 f0 fe ff ff 	mov    %rdx,-0x110(%rbp)
  808a0a:	49 8b 14 24          	mov    (%r12),%rdx
  808a0e:	48 89 95 28 f6 ff ff 	mov    %rdx,-0x9d8(%rbp)
  808a15:	49 8b 54 24 50       	mov    0x50(%r12),%rdx
  808a1a:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  808a1f:	48 89 95 a8 fd ff ff 	mov    %rdx,-0x258(%rbp)
  808a26:	4c 89 a5 e8 fe ff ff 	mov    %r12,-0x118(%rbp)
  808a2d:	48 8b 15 8c 54 33 00 	mov    0x33548c(%rip),%rdx        # b3dec0 <mod_param_mp_domain_>
  808a34:	4c 8b 25 c5 54 33 00 	mov    0x3354c5(%rip),%r12        # b3df00 <mod_param_mp_domain_+0x40>
  808a3b:	48 89 95 58 f8 ff ff 	mov    %rdx,-0x7a8(%rbp)
  808a42:	4c 89 a5 20 f6 ff ff 	mov    %r12,-0x9e0(%rbp)
  808a49:	48 8b 15 50 48 33 00 	mov    0x334850(%rip),%rdx        # b3d2a0 <mod_param_mp_lbc_>
  808a50:	4c 8b 25 b9 48 33 00 	mov    0x3348b9(%rip),%r12        # b3d310 <mod_param_mp_lbc_+0x70>
  808a57:	48 89 95 18 f6 ff ff 	mov    %rdx,-0x9e8(%rbp)
  808a5e:	4c 89 a5 10 f6 ff ff 	mov    %r12,-0x9f0(%rbp)
  808a65:	48 8b 15 9c 48 33 00 	mov    0x33489c(%rip),%rdx        # b3d308 <mod_param_mp_lbc_+0x68>
  808a6c:	4c 8b 25 4d 3d 33 00 	mov    0x333d4d(%rip),%r12        # b3c7c0 <mod_ncparam_mp_istvar_>
  808a73:	48 8b 0d 86 4d 33 00 	mov    0x334d86(%rip),%rcx        # b3d800 <mod_scalars_mp_nsperiodic_>
  808a7a:	48 89 95 08 f6 ff ff 	mov    %rdx,-0x9f8(%rbp)
  808a81:	4c 89 a5 00 f6 ff ff 	mov    %r12,-0xa00(%rbp)
  808a88:	48 8b 15 71 3d 33 00 	mov    0x333d71(%rip),%rdx        # b3c800 <mod_ncparam_mp_istvar_+0x40>
  808a8f:	4c 8b 25 62 48 33 00 	mov    0x334862(%rip),%r12        # b3d2f8 <mod_param_mp_lbc_+0x58>
  808a96:	4c 2b bd d8 f5 ff ff 	sub    -0xa28(%rbp),%r15
  808a9d:	48 89 8d 78 f6 ff ff 	mov    %rcx,-0x988(%rbp)
  808aa4:	49 ff c7             	inc    %r15
  808aa7:	48 8b 0d 32 36 33 00 	mov    0x333632(%rip),%rcx        # b3c0e0 <mod_param_mp_n_+0x40>
  808aae:	48 89 95 f8 f5 ff ff 	mov    %rdx,-0xa08(%rbp)
  808ab5:	4c 89 a5 f0 f5 ff ff 	mov    %r12,-0xa10(%rbp)
  808abc:	48 c1 e1 02          	shl    $0x2,%rcx
  808ac0:	48 8b 15 29 48 33 00 	mov    0x334829(%rip),%rdx        # b3d2f0 <mod_param_mp_lbc_+0x50>
  808ac7:	48 f7 d9             	neg    %rcx
  808aca:	4c 8b 25 0f 48 33 00 	mov    0x33480f(%rip),%r12        # b3d2e0 <mod_param_mp_lbc_+0x40>
  808ad1:	48 89 95 10 f8 ff ff 	mov    %rdx,-0x7f0(%rbp)
  808ad8:	33 d2                	xor    %edx,%edx
  808ada:	4c 89 a5 e8 f5 ff ff 	mov    %r12,-0xa18(%rbp)
  808ae1:	4c 89 bd 48 f8 ff ff 	mov    %r15,-0x7b8(%rbp)
  808ae8:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  808aef:	48 89 bd 40 ff ff ff 	mov    %rdi,-0xc0(%rbp)
  808af6:	4c 89 85 f8 fd ff ff 	mov    %r8,-0x208(%rbp)
  808afd:	4c 89 8d e8 f6 ff ff 	mov    %r9,-0x918(%rbp)
  808b04:	4c 89 95 00 fe ff ff 	mov    %r10,-0x200(%rbp)
  808b0b:	4c 89 9d f0 f6 ff ff 	mov    %r11,-0x910(%rbp)
  808b12:	4c 89 b5 f8 f6 ff ff 	mov    %r14,-0x908(%rbp)
  808b19:	48 63 3c 31          	movslq (%rcx,%rsi,1),%rdi
  808b1d:	45 33 e4             	xor    %r12d,%r12d
  808b20:	48 85 ff             	test   %rdi,%rdi
  808b23:	0f 8e dc 41 00 00    	jle    80cd05 <t3dmix_mod_mp_t3dmix4_tile_+0x4f75>
  808b29:	48 89 95 38 f8 ff ff 	mov    %rdx,-0x7c8(%rbp)
  808b30:	48 89 bd 78 fa ff ff 	mov    %rdi,-0x588(%rbp)
  808b37:	48 63 bd 18 fa ff ff 	movslq -0x5e8(%rbp),%rdi
  808b3e:	48 8b 95 e8 fd ff ff 	mov    -0x218(%rbp),%rdx
  808b45:	48 0f af d7          	imul   %rdi,%rdx
  808b49:	c5 fd 10 1d 2f c2 0b 	vmovupd 0xbc22f(%rip),%ymm3        # 8c4d80 <var$630.126.450+0xc0>
  808b50:	00 
  808b51:	c5 f9 10 2d 47 dc 0b 	vmovupd 0xbdc47(%rip),%xmm5        # 8c67a0 <__STRLITPACK_19.34+0x10>
  808b58:	00 
  808b59:	c5 fb 10 25 b7 e4 0b 	vmovsd 0xbe4b7(%rip),%xmm4        # 8c7018 <__STRLITPACK_199.115+0x88>
  808b60:	00 
  808b61:	c5 fb 10 15 97 e4 0b 	vmovsd 0xbe497(%rip),%xmm2        # 8c7000 <__STRLITPACK_199.115+0x70>
  808b68:	00 
  808b69:	4c 8b 85 00 fe ff ff 	mov    -0x200(%rbp),%r8
  808b70:	4c 8b 9d f8 fd ff ff 	mov    -0x208(%rbp),%r11
  808b77:	4c 8b ad c8 fd ff ff 	mov    -0x238(%rbp),%r13
  808b7e:	4c 0f af c7          	imul   %rdi,%r8
  808b82:	4c 0f af df          	imul   %rdi,%r11
  808b86:	4c 0f af ef          	imul   %rdi,%r13
  808b8a:	4c 8b 8d e0 fd ff ff 	mov    -0x220(%rbp),%r9
  808b91:	4c 0f af cf          	imul   %rdi,%r9
  808b95:	4c 8b bd d0 fd ff ff 	mov    -0x230(%rbp),%r15
  808b9c:	4c 0f af ff          	imul   %rdi,%r15
  808ba0:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  808ba7:	48 89 95 08 f3 ff ff 	mov    %rdx,-0xcf8(%rbp)
  808bae:	4c 63 a5 20 fa ff ff 	movslq -0x5e0(%rbp),%r12
  808bb5:	48 8b 95 d8 fd ff ff 	mov    -0x228(%rbp),%rdx
  808bbc:	4c 2b e7             	sub    %rdi,%r12
  808bbf:	48 0f af d7          	imul   %rdi,%rdx
  808bc3:	48 89 8d 28 f8 ff ff 	mov    %rcx,-0x7d8(%rbp)
  808bca:	8b 8d a0 fd ff ff    	mov    -0x260(%rbp),%ecx
  808bd0:	48 89 b5 30 f8 ff ff 	mov    %rsi,-0x7d0(%rbp)
  808bd7:	49 8d 74 24 02       	lea    0x2(%r12),%rsi
  808bdc:	4c 89 85 f0 f2 ff ff 	mov    %r8,-0xd10(%rbp)
  808be3:	49 ff c4             	inc    %r12
  808be6:	4c 89 9d e8 f2 ff ff 	mov    %r11,-0xd18(%rbp)
  808bed:	8d 41 01             	lea    0x1(%rcx),%eax
  808bf0:	4c 89 ad d0 f2 ff ff 	mov    %r13,-0xd30(%rbp)
  808bf7:	48 89 b5 30 fe ff ff 	mov    %rsi,-0x1d0(%rbp)
  808bfe:	48 8b b5 c0 fd ff ff 	mov    -0x240(%rbp),%rsi
  808c05:	4c 8b 9d b8 fd ff ff 	mov    -0x248(%rbp),%r11
  808c0c:	4c 8b ad b0 fd ff ff 	mov    -0x250(%rbp),%r13
  808c13:	4d 89 ee             	mov    %r13,%r14
  808c16:	4c 8b 85 a8 fd ff ff 	mov    -0x258(%rbp),%r8
  808c1d:	89 85 38 fe ff ff    	mov    %eax,-0x1c8(%rbp)
  808c23:	48 89 f0             	mov    %rsi,%rax
  808c26:	4c 89 8d e0 f2 ff ff 	mov    %r9,-0xd20(%rbp)
  808c2d:	4d 89 c1             	mov    %r8,%r9
  808c30:	4c 89 a5 48 fe ff ff 	mov    %r12,-0x1b8(%rbp)
  808c37:	4d 89 dc             	mov    %r11,%r12
  808c3a:	4c 89 bd d8 f2 ff ff 	mov    %r15,-0xd28(%rbp)
  808c41:	4c 63 bd 98 fd ff ff 	movslq -0x268(%rbp),%r15
  808c48:	4c 8b 95 f0 fd ff ff 	mov    -0x210(%rbp),%r10
  808c4f:	48 0f af c7          	imul   %rdi,%rax
  808c53:	4c 0f af e7          	imul   %rdi,%r12
  808c57:	4c 0f af f7          	imul   %rdi,%r14
  808c5b:	4c 0f af cf          	imul   %rdi,%r9
  808c5f:	4c 0f af d7          	imul   %rdi,%r10
  808c63:	48 c1 e7 03          	shl    $0x3,%rdi
  808c67:	48 89 bd a0 f7 ff ff 	mov    %rdi,-0x860(%rbp)
  808c6e:	48 8b bd 38 ff ff ff 	mov    -0xc8(%rbp),%rdi
  808c75:	49 0f af ff          	imul   %r15,%rdi
  808c79:	48 89 95 f8 f3 ff ff 	mov    %rdx,-0xc08(%rbp)
  808c80:	48 8b 95 18 ff ff ff 	mov    -0xe8(%rbp),%rdx
  808c87:	49 0f af d7          	imul   %r15,%rdx
  808c8b:	48 63 c9             	movslq %ecx,%rcx
  808c8e:	49 2b cf             	sub    %r15,%rcx
  808c91:	48 89 bd b0 f9 ff ff 	mov    %rdi,-0x650(%rbp)
  808c98:	48 89 95 80 f9 ff ff 	mov    %rdx,-0x680(%rbp)
  808c9f:	4c 89 95 28 f4 ff ff 	mov    %r10,-0xbd8(%rbp)
  808ca6:	4c 8b 95 e8 f8 ff ff 	mov    -0x718(%rbp),%r10
  808cad:	48 8d 3c cd 08 00 00 	lea    0x8(,%rcx,8),%rdi
  808cb4:	00 
  808cb5:	48 89 bd f8 f7 ff ff 	mov    %rdi,-0x808(%rbp)
  808cbc:	48 8d 79 01          	lea    0x1(%rcx),%rdi
  808cc0:	48 83 c1 02          	add    $0x2,%rcx
  808cc4:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  808ccb:	4a 8d 3c fd 00 00 00 	lea    0x0(,%r15,8),%rdi
  808cd2:	00 
  808cd3:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  808cd7:	48 89 bd 28 f9 ff ff 	mov    %rdi,-0x6d8(%rbp)
  808cde:	89 cf                	mov    %ecx,%edi
  808ce0:	83 e1 fc             	and    $0xfffffffc,%ecx
  808ce3:	83 e7 fe             	and    $0xfffffffe,%edi
  808ce6:	48 63 c9             	movslq %ecx,%rcx
  808ce9:	48 89 8d b8 fc ff ff 	mov    %rcx,-0x348(%rbp)
  808cf0:	48 8b 8d a0 f2 ff ff 	mov    -0xd60(%rbp),%rcx
  808cf7:	48 89 ca             	mov    %rcx,%rdx
  808cfa:	48 0f af d6          	imul   %rsi,%rdx
  808cfe:	48 f7 da             	neg    %rdx
  808d01:	48 63 ff             	movslq %edi,%rdi
  808d04:	49 03 d2             	add    %r10,%rdx
  808d07:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  808d0b:	48 8b bd 40 f6 ff ff 	mov    -0x9c0(%rbp),%rdi
  808d12:	49 2b fa             	sub    %r10,%rdi
  808d15:	48 89 95 78 f9 ff ff 	mov    %rdx,-0x688(%rbp)
  808d1c:	48 89 bd 10 f4 ff ff 	mov    %rdi,-0xbf0(%rbp)
  808d23:	48 89 85 f8 f2 ff ff 	mov    %rax,-0xd08(%rbp)
  808d2a:	4c 89 a5 c8 f2 ff ff 	mov    %r12,-0xd38(%rbp)
  808d31:	48 8d 34 17          	lea    (%rdi,%rdx,1),%rsi
  808d35:	48 8b 95 a8 f2 ff ff 	mov    -0xd58(%rbp),%rdx
  808d3c:	49 89 d2             	mov    %rdx,%r10
  808d3f:	48 8b bd 00 ff ff ff 	mov    -0x100(%rbp),%rdi
  808d46:	4c 0f af d7          	imul   %rdi,%r10
  808d4a:	49 0f af ff          	imul   %r15,%rdi
  808d4e:	49 2b c2             	sub    %r10,%rax
  808d51:	48 03 c6             	add    %rsi,%rax
  808d54:	48 03 c7             	add    %rdi,%rax
  808d57:	48 89 d7             	mov    %rdx,%rdi
  808d5a:	48 89 85 58 f9 ff ff 	mov    %rax,-0x6a8(%rbp)
  808d61:	48 89 c8             	mov    %rcx,%rax
  808d64:	49 0f af c3          	imul   %r11,%rax
  808d68:	48 89 b5 b8 f8 ff ff 	mov    %rsi,-0x748(%rbp)
  808d6f:	48 8b b5 f8 fe ff ff 	mov    -0x108(%rbp),%rsi
  808d76:	48 0f af fe          	imul   %rsi,%rdi
  808d7a:	49 0f af f7          	imul   %r15,%rsi
  808d7e:	4c 8b 9d 38 f6 ff ff 	mov    -0x9c8(%rbp),%r11
  808d85:	48 f7 de             	neg    %rsi
  808d88:	4c 2b d8             	sub    %rax,%r11
  808d8b:	48 03 f7             	add    %rdi,%rsi
  808d8e:	48 89 85 c8 f3 ff ff 	mov    %rax,-0xc38(%rbp)
  808d95:	4c 89 9d e0 f9 ff ff 	mov    %r11,-0x620(%rbp)
  808d9c:	48 89 bd 50 f4 ff ff 	mov    %rdi,-0xbb0(%rbp)
  808da3:	4c 89 b5 c0 f2 ff ff 	mov    %r14,-0xd40(%rbp)
  808daa:	4b 8d 04 23          	lea    (%r11,%r12,1),%rax
  808dae:	48 2b c6             	sub    %rsi,%rax
  808db1:	49 89 cb             	mov    %rcx,%r11
  808db4:	48 89 85 48 fa ff ff 	mov    %rax,-0x5b8(%rbp)
  808dbb:	48 89 d0             	mov    %rdx,%rax
  808dbe:	4c 8b a5 f0 fe ff ff 	mov    -0x110(%rbp),%r12
  808dc5:	48 89 d6             	mov    %rdx,%rsi
  808dc8:	49 0f af c4          	imul   %r12,%rax
  808dcc:	4d 0f af e7          	imul   %r15,%r12
  808dd0:	4d 0f af dd          	imul   %r13,%r11
  808dd4:	49 f7 dc             	neg    %r12
  808dd7:	48 89 85 58 f4 ff ff 	mov    %rax,-0xba8(%rbp)
  808dde:	4c 03 e0             	add    %rax,%r12
  808de1:	48 89 c8             	mov    %rcx,%rax
  808de4:	49 0f af c0          	imul   %r8,%rax
  808de8:	4c 89 9d c0 f3 ff ff 	mov    %r11,-0xc40(%rbp)
  808def:	4c 8b ad 30 f6 ff ff 	mov    -0x9d0(%rbp),%r13
  808df6:	4d 2b eb             	sub    %r11,%r13
  808df9:	4c 8b 9d e8 fe ff ff 	mov    -0x118(%rbp),%r11
  808e00:	49 0f af f3          	imul   %r11,%rsi
  808e04:	4d 0f af df          	imul   %r15,%r11
  808e08:	4c 8b 85 28 f6 ff ff 	mov    -0x9d8(%rbp),%r8
  808e0f:	49 89 cf             	mov    %rcx,%r15
  808e12:	4c 2b c0             	sub    %rax,%r8
  808e15:	49 f7 db             	neg    %r11
  808e18:	4c 0f af bd d8 fd ff 	imul   -0x228(%rbp),%r15
  808e1f:	ff 
  808e20:	4c 03 de             	add    %rsi,%r11
  808e23:	4b 8d 3c 08          	lea    (%r8,%r9,1),%rdi
  808e27:	49 2b fb             	sub    %r11,%rdi
  808e2a:	49 89 d3             	mov    %rdx,%r11
  808e2d:	4c 89 85 f8 f9 ff ff 	mov    %r8,-0x608(%rbp)
  808e34:	4d 03 f5             	add    %r13,%r14
  808e37:	4c 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%r8
  808e3e:	4d 2b f4             	sub    %r12,%r14
  808e41:	4d 0f af d8          	imul   %r8,%r11
  808e45:	48 89 85 b8 f3 ff ff 	mov    %rax,-0xc48(%rbp)
  808e4c:	49 f7 d8             	neg    %r8
  808e4f:	48 8b 85 58 f6 ff ff 	mov    -0x9a8(%rbp),%rax
  808e56:	4c 89 ad 00 fa ff ff 	mov    %r13,-0x600(%rbp)
  808e5d:	49 89 c5             	mov    %rax,%r13
  808e60:	4c 89 8d b8 f2 ff ff 	mov    %r9,-0xd48(%rbp)
  808e67:	4c 8b 8d f0 f8 ff ff 	mov    -0x710(%rbp),%r9
  808e6e:	4d 2b e9             	sub    %r9,%r13
  808e71:	4d 2b cf             	sub    %r15,%r9
  808e74:	4c 89 95 48 f4 ff ff 	mov    %r10,-0xbb8(%rbp)
  808e7b:	4d 89 fa             	mov    %r15,%r10
  808e7e:	4c 8b a5 f8 f3 ff ff 	mov    -0xc08(%rbp),%r12
  808e85:	4d 2b d4             	sub    %r12,%r10
  808e88:	4c 89 b5 38 fa ff ff 	mov    %r14,-0x5c8(%rbp)
  808e8f:	4d 2b e3             	sub    %r11,%r12
  808e92:	48 89 bd 40 fa ff ff 	mov    %rdi,-0x5c0(%rbp)
  808e99:	4f 8d 74 0d 00       	lea    0x0(%r13,%r9,1),%r14
  808e9e:	4c 89 b5 a8 f8 ff ff 	mov    %r14,-0x758(%rbp)
  808ea5:	4d 03 e6             	add    %r14,%r12
  808ea8:	48 8b bd d8 f6 ff ff 	mov    -0x928(%rbp),%rdi
  808eaf:	4c 8b b5 d8 f5 ff ff 	mov    -0xa28(%rbp),%r14
  808eb6:	4c 0f af f7          	imul   %rdi,%r14
  808eba:	48 89 b5 60 f4 ff ff 	mov    %rsi,-0xba0(%rbp)
  808ec1:	48 8b b5 80 f9 ff ff 	mov    -0x680(%rbp),%rsi
  808ec8:	4c 03 e6             	add    %rsi,%r12
  808ecb:	4c 89 9d 68 f4 ff ff 	mov    %r11,-0xb98(%rbp)
  808ed2:	4c 2b de             	sub    %rsi,%r11
  808ed5:	4d 03 da             	add    %r10,%r11
  808ed8:	4c 89 95 38 f4 ff ff 	mov    %r10,-0xbc8(%rbp)
  808edf:	49 f7 db             	neg    %r11
  808ee2:	4c 89 8d 38 f9 ff ff 	mov    %r9,-0x6c8(%rbp)
  808ee9:	4c 03 d8             	add    %rax,%r11
  808eec:	4c 8b 8d c8 f6 ff ff 	mov    -0x938(%rbp),%r9
  808ef3:	48 89 f8             	mov    %rdi,%rax
  808ef6:	4c 8b 95 00 f9 ff ff 	mov    -0x700(%rbp),%r10
  808efd:	4d 03 d8             	add    %r8,%r11
  808f00:	4c 89 85 b0 f8 ff ff 	mov    %r8,-0x750(%rbp)
  808f07:	49 2b c6             	sub    %r14,%rax
  808f0a:	4c 89 a5 40 f9 ff ff 	mov    %r12,-0x6c0(%rbp)
  808f11:	4c 8b a5 e0 f6 ff ff 	mov    -0x920(%rbp),%r12
  808f18:	4f 8d 04 11          	lea    (%r9,%r10,1),%r8
  808f1c:	49 03 c0             	add    %r8,%rax
  808f1f:	4c 2b e7             	sub    %rdi,%r12
  808f22:	48 89 85 90 f3 ff ff 	mov    %rax,-0xc70(%rbp)
  808f29:	48 89 c8             	mov    %rcx,%rax
  808f2c:	48 0f af 85 f0 fd ff 	imul   -0x210(%rbp),%rax
  808f33:	ff 
  808f34:	48 0f af bd 38 f8 ff 	imul   -0x7c8(%rbp),%rdi
  808f3b:	ff 
  808f3c:	4c 2b d0             	sub    %rax,%r10
  808f3f:	4c 89 ad 20 f4 ff ff 	mov    %r13,-0xbe0(%rbp)
  808f46:	4d 89 f5             	mov    %r14,%r13
  808f49:	4d 03 f4             	add    %r12,%r14
  808f4c:	4d 2b c2             	sub    %r10,%r8
  808f4f:	4d 2b f0             	sub    %r8,%r14
  808f52:	4d 2b e9             	sub    %r9,%r13
  808f55:	4c 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%r8
  808f5c:	4c 0f af 8d e0 f5 ff 	imul   -0xa20(%rbp),%r9
  808f63:	ff 
  808f64:	49 0f af d0          	imul   %r8,%rdx
  808f68:	4c 89 95 98 f3 ff ff 	mov    %r10,-0xc68(%rbp)
  808f6f:	49 f7 d8             	neg    %r8
  808f72:	4c 8b 95 b0 f9 ff ff 	mov    -0x650(%rbp),%r10
  808f79:	4d 03 c1             	add    %r9,%r8
  808f7c:	4c 89 bd 30 f4 ff ff 	mov    %r15,-0xbd0(%rbp)
  808f83:	4c 8b bd 28 f4 ff ff 	mov    -0xbd8(%rbp),%r15
  808f8a:	49 2b c7             	sub    %r15,%rax
  808f8d:	4c 2b fa             	sub    %rdx,%r15
  808f90:	4b 8d 34 11          	lea    (%r9,%r10,1),%rsi
  808f94:	4c 03 fe             	add    %rsi,%r15
  808f97:	49 f7 da             	neg    %r10
  808f9a:	4d 03 fe             	add    %r14,%r15
  808f9d:	4c 03 d2             	add    %rdx,%r10
  808fa0:	4c 89 ad 00 f3 ff ff 	mov    %r13,-0xd00(%rbp)
  808fa7:	4c 03 ff             	add    %rdi,%r15
  808faa:	4c 89 9d 88 f9 ff ff 	mov    %r11,-0x678(%rbp)
  808fb1:	4f 8d 1c 2c          	lea    (%r12,%r13,1),%r11
  808fb5:	4c 8b ad 80 fa ff ff 	mov    -0x580(%rbp),%r13
  808fbc:	4d 2b d0             	sub    %r8,%r10
  808fbf:	4c 89 bd 50 f9 ff ff 	mov    %r15,-0x6b0(%rbp)
  808fc6:	4c 2b d8             	sub    %rax,%r11
  808fc9:	4c 8b bd 98 f2 ff ff 	mov    -0xd68(%rbp),%r15
  808fd0:	49 f7 da             	neg    %r10
  808fd3:	4d 2b fd             	sub    %r13,%r15
  808fd6:	4d 03 d3             	add    %r11,%r10
  808fd9:	48 89 85 b8 f9 ff ff 	mov    %rax,-0x648(%rbp)
  808fe0:	4a 8d 04 ed 00 00 00 	lea    0x0(,%r13,8),%rax
  808fe7:	00 
  808fe8:	4c 89 8d 40 f4 ff ff 	mov    %r9,-0xbc0(%rbp)
  808fef:	4c 03 d7             	add    %rdi,%r10
  808ff2:	4c 8b 8d 28 f9 ff ff 	mov    -0x6d8(%rbp),%r9
  808ff9:	48 89 85 a0 f3 ff ff 	mov    %rax,-0xc60(%rbp)
  809000:	4c 2b c8             	sub    %rax,%r9
  809003:	4c 89 f8             	mov    %r15,%rax
  809006:	4c 89 95 b0 f9 ff ff 	mov    %r10,-0x650(%rbp)
  80900d:	4d 8d 57 01          	lea    0x1(%r15),%r10
  809011:	48 c1 e0 04          	shl    $0x4,%rax
  809015:	48 89 85 68 f7 ff ff 	mov    %rax,-0x898(%rbp)
  80901c:	4c 8d 85 a0 f7 ff ff 	lea    -0x860(%rbp),%r8
  809023:	49 8b 00             	mov    (%r8),%rax
  809026:	49 0f af c2          	imul   %r10,%rax
  80902a:	4c 89 a5 a8 f9 ff ff 	mov    %r12,-0x658(%rbp)
  809031:	4e 8d 24 fd 00 00 00 	lea    0x0(,%r15,8),%r12
  809038:	00 
  809039:	4c 89 b5 d0 f8 ff ff 	mov    %r14,-0x730(%rbp)
  809040:	4d 89 e6             	mov    %r12,%r14
  809043:	49 f7 de             	neg    %r14
  809046:	4d 8d 2c 01          	lea    (%r9,%rax,1),%r13
  80904a:	49 89 00             	mov    %rax,(%r8)
  80904d:	48 89 bd a0 f9 ff ff 	mov    %rdi,-0x660(%rbp)
  809054:	48 89 95 70 f4 ff ff 	mov    %rdx,-0xb90(%rbp)
  80905b:	4d 8d 04 06          	lea    (%r14,%rax,1),%r8
  80905f:	4c 89 85 98 f7 ff ff 	mov    %r8,-0x868(%rbp)
  809066:	4e 8d 04 f8          	lea    (%rax,%r15,8),%r8
  80906a:	4c 89 85 78 f7 ff ff 	mov    %r8,-0x888(%rbp)
  809071:	4c 8b 85 90 f2 ff ff 	mov    -0xd70(%rbp),%r8
  809078:	4d 8d 7c 24 08       	lea    0x8(%r12),%r15
  80907d:	4d 0f af c7          	imul   %r15,%r8
  809081:	4d 2b e0             	sub    %r8,%r12
  809084:	49 2b c0             	sub    %r8,%rax
  809087:	4c 89 a5 38 fb ff ff 	mov    %r12,-0x4c8(%rbp)
  80908e:	4d 2b f0             	sub    %r8,%r14
  809091:	4c 89 bd 40 fe ff ff 	mov    %r15,-0x1c0(%rbp)
  809098:	4c 8b bd 88 f6 ff ff 	mov    -0x978(%rbp),%r15
  80909f:	4c 89 85 48 fb ff ff 	mov    %r8,-0x4b8(%rbp)
  8090a6:	4d 03 e5             	add    %r13,%r12
  8090a9:	4d 2b e8             	sub    %r8,%r13
  8090ac:	4d 8d 04 01          	lea    (%r9,%rax,1),%r8
  8090b0:	48 89 85 90 f7 ff ff 	mov    %rax,-0x870(%rbp)
  8090b7:	4c 89 b5 88 fd ff ff 	mov    %r14,-0x278(%rbp)
  8090be:	4c 8b b5 90 f6 ff ff 	mov    -0x970(%rbp),%r14
  8090c5:	4d 03 e6             	add    %r14,%r12
  8090c8:	4b 8d 04 2f          	lea    (%r15,%r13,1),%rax
  8090cc:	48 89 85 c8 fc ff ff 	mov    %rax,-0x338(%rbp)
  8090d3:	8b 85 20 fa ff ff    	mov    -0x5e0(%rbp),%eax
  8090d9:	4d 03 f5             	add    %r13,%r14
  8090dc:	4c 89 a5 e0 fc ff ff 	mov    %r12,-0x320(%rbp)
  8090e3:	4c 8b a5 88 fa ff ff 	mov    -0x578(%rbp),%r12
  8090ea:	4d 03 c4             	add    %r12,%r8
  8090ed:	4c 89 85 d8 fc ff ff 	mov    %r8,-0x328(%rbp)
  8090f4:	44 8d 40 01          	lea    0x1(%rax),%r8d
  8090f8:	44 89 85 28 fa ff ff 	mov    %r8d,-0x5d8(%rbp)
  8090ff:	49 89 c8             	mov    %rcx,%r8
  809102:	4c 0f af 85 e8 fd ff 	imul   -0x218(%rbp),%r8
  809109:	ff 
  80910a:	49 f7 d8             	neg    %r8
  80910d:	4d 03 ec             	add    %r12,%r13
  809110:	4c 89 b5 d0 fc ff ff 	mov    %r14,-0x330(%rbp)
  809117:	48 8b 85 b8 f6 ff ff 	mov    -0x948(%rbp),%rax
  80911e:	4c 8b b5 f8 f8 ff ff 	mov    -0x708(%rbp),%r14
  809125:	49 2b c6             	sub    %r14,%rax
  809128:	4d 03 c6             	add    %r14,%r8
  80912b:	4c 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%r15
  809132:	4c 89 ad f0 fc ff ff 	mov    %r13,-0x310(%rbp)
  809139:	45 89 fd             	mov    %r15d,%r13d
  80913c:	45 89 fc             	mov    %r15d,%r12d
  80913f:	41 83 e7 fc          	and    $0xfffffffc,%r15d
  809143:	41 83 e5 fe          	and    $0xfffffffe,%r13d
  809147:	41 83 e4 f8          	and    $0xfffffff8,%r12d
  80914b:	4d 63 ff             	movslq %r15d,%r15
  80914e:	4c 8b b5 a8 f2 ff ff 	mov    -0xd58(%rbp),%r14
  809155:	4c 89 7d d8          	mov    %r15,-0x28(%rbp)
  809159:	4d 89 f7             	mov    %r14,%r15
  80915c:	4d 63 ed             	movslq %r13d,%r13
  80915f:	48 89 85 00 f4 ff ff 	mov    %rax,-0xc00(%rbp)
  809166:	4c 89 6d d0          	mov    %r13,-0x30(%rbp)
  80916a:	4e 8d 2c 00          	lea    (%rax,%r8,1),%r13
  80916e:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
  809175:	4c 0f af f8          	imul   %rax,%r15
  809179:	4d 63 e4             	movslq %r12d,%r12
  80917c:	4c 89 a5 50 f7 ff ff 	mov    %r12,-0x8b0(%rbp)
  809183:	4c 63 a5 98 fd ff ff 	movslq -0x268(%rbp),%r12
  80918a:	49 0f af c4          	imul   %r12,%rax
  80918e:	4c 89 85 98 f9 ff ff 	mov    %r8,-0x668(%rbp)
  809195:	4c 8b 85 08 f3 ff ff 	mov    -0xcf8(%rbp),%r8
  80919c:	4d 2b c7             	sub    %r15,%r8
  80919f:	4d 03 c5             	add    %r13,%r8
  8091a2:	4c 03 c0             	add    %rax,%r8
  8091a5:	4c 89 85 60 f9 ff ff 	mov    %r8,-0x6a0(%rbp)
  8091ac:	49 89 c8             	mov    %rcx,%r8
  8091af:	4c 0f af 85 e0 fd ff 	imul   -0x220(%rbp),%r8
  8091b6:	ff 
  8091b7:	4c 89 bd 78 f4 ff ff 	mov    %r15,-0xb88(%rbp)
  8091be:	4d 89 f7             	mov    %r14,%r15
  8091c1:	4c 89 85 e0 f3 ff ff 	mov    %r8,-0xc20(%rbp)
  8091c8:	48 8b 85 60 f6 ff ff 	mov    -0x9a0(%rbp),%rax
  8091cf:	49 2b c0             	sub    %r8,%rax
  8091d2:	4c 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%r8
  8091d9:	4d 0f af f8          	imul   %r8,%r15
  8091dd:	4d 0f af c4          	imul   %r12,%r8
  8091e1:	49 f7 d8             	neg    %r8
  8091e4:	4c 89 bd 80 f4 ff ff 	mov    %r15,-0xb80(%rbp)
  8091eb:	4d 03 c7             	add    %r15,%r8
  8091ee:	49 89 cf             	mov    %rcx,%r15
  8091f1:	4c 0f af bd d0 fd ff 	imul   -0x230(%rbp),%r15
  8091f8:	ff 
  8091f9:	4c 89 ad c0 f8 ff ff 	mov    %r13,-0x740(%rbp)
  809200:	4c 8b ad e0 f2 ff ff 	mov    -0xd20(%rbp),%r13
  809207:	48 89 85 d0 f9 ff ff 	mov    %rax,-0x630(%rbp)
  80920e:	4c 89 bd d8 f3 ff ff 	mov    %r15,-0xc28(%rbp)
  809215:	49 03 c5             	add    %r13,%rax
  809218:	4d 89 f5             	mov    %r14,%r13
  80921b:	49 2b c0             	sub    %r8,%rax
  80921e:	48 89 85 68 f9 ff ff 	mov    %rax,-0x698(%rbp)
  809225:	48 8b 85 50 f6 ff ff 	mov    -0x9b0(%rbp),%rax
  80922c:	49 2b c7             	sub    %r15,%rax
  80922f:	4c 8b bd 10 ff ff ff 	mov    -0xf0(%rbp),%r15
  809236:	4d 0f af ef          	imul   %r15,%r13
  80923a:	4d 0f af fc          	imul   %r12,%r15
  80923e:	4c 8b 85 d8 f2 ff ff 	mov    -0xd28(%rbp),%r8
  809245:	49 f7 df             	neg    %r15
  809248:	4c 89 ad 88 f4 ff ff 	mov    %r13,-0xb78(%rbp)
  80924f:	4d 03 fd             	add    %r13,%r15
  809252:	49 89 cd             	mov    %rcx,%r13
  809255:	4c 0f af ad c8 fd ff 	imul   -0x238(%rbp),%r13
  80925c:	ff 
  80925d:	48 89 85 d8 f9 ff ff 	mov    %rax,-0x628(%rbp)
  809264:	49 03 c0             	add    %r8,%rax
  809267:	49 2b c7             	sub    %r15,%rax
  80926a:	48 89 85 90 f9 ff ff 	mov    %rax,-0x670(%rbp)
  809271:	4c 89 f0             	mov    %r14,%rax
  809274:	4c 8b bd 08 ff ff ff 	mov    -0xf8(%rbp),%r15
  80927b:	49 0f af c7          	imul   %r15,%rax
  80927f:	4d 0f af fc          	imul   %r12,%r15
  809283:	4c 8b 85 48 f6 ff ff 	mov    -0x9b8(%rbp),%r8
  80928a:	49 f7 df             	neg    %r15
  80928d:	4d 2b c5             	sub    %r13,%r8
  809290:	4c 03 f8             	add    %rax,%r15
  809293:	4c 89 ad d0 f3 ff ff 	mov    %r13,-0xc30(%rbp)
  80929a:	4c 8b ad d0 f2 ff ff 	mov    -0xd30(%rbp),%r13
  8092a1:	4c 89 85 e8 f9 ff ff 	mov    %r8,-0x618(%rbp)
  8092a8:	48 89 85 90 f4 ff ff 	mov    %rax,-0xb70(%rbp)
  8092af:	48 8b 85 d8 fd ff ff 	mov    -0x228(%rbp),%rax
  8092b6:	4d 03 c5             	add    %r13,%r8
  8092b9:	4d 2b c7             	sub    %r15,%r8
  8092bc:	48 f7 d8             	neg    %rax
  8092bf:	4c 8b bd f0 fd ff ff 	mov    -0x210(%rbp),%r15
  8092c6:	49 f7 df             	neg    %r15
  8092c9:	4c 89 bd 08 f4 ff ff 	mov    %r15,-0xbf8(%rbp)
  8092d0:	4c 2b fa             	sub    %rdx,%r15
  8092d3:	49 03 f7             	add    %r15,%rsi
  8092d6:	48 89 85 48 f9 ff ff 	mov    %rax,-0x6b8(%rbp)
  8092dd:	4c 03 de             	add    %rsi,%r11
  8092e0:	48 2b 85 68 f4 ff ff 	sub    -0xb98(%rbp),%rax
  8092e7:	4c 03 df             	add    %rdi,%r11
  8092ea:	4c 89 85 70 f9 ff ff 	mov    %r8,-0x690(%rbp)
  8092f1:	48 89 cf             	mov    %rcx,%rdi
  8092f4:	4c 8b 85 38 f4 ff ff 	mov    -0xbc8(%rbp),%r8
  8092fb:	4c 2b c0             	sub    %rax,%r8
  8092fe:	48 0f af bd 00 fe ff 	imul   -0x200(%rbp),%rdi
  809305:	ff 
  809306:	48 0f af 8d f8 fd ff 	imul   -0x208(%rbp),%rcx
  80930d:	ff 
  80930e:	49 f7 d8             	neg    %r8
  809311:	4c 03 85 58 f6 ff ff 	add    -0x9a8(%rbp),%r8
  809318:	4c 89 9d 30 f9 ff ff 	mov    %r11,-0x6d0(%rbp)
  80931f:	4d 89 f3             	mov    %r14,%r11
  809322:	4c 01 85 80 f9 ff ff 	add    %r8,-0x680(%rbp)
  809329:	4c 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%r8
  809330:	4d 0f af d8          	imul   %r8,%r11
  809334:	4d 0f af c4          	imul   %r12,%r8
  809338:	48 8b 95 f0 f6 ff ff 	mov    -0x910(%rbp),%rdx
  80933f:	49 f7 d8             	neg    %r8
  809342:	48 2b d7             	sub    %rdi,%rdx
  809345:	4d 03 c3             	add    %r11,%r8
  809348:	48 89 85 c8 f8 ff ff 	mov    %rax,-0x738(%rbp)
  80934f:	48 89 bd f0 f3 ff ff 	mov    %rdi,-0xc10(%rbp)
  809356:	48 8b 85 f0 f2 ff ff 	mov    -0xd10(%rbp),%rax
  80935d:	48 8b bd 40 ff ff ff 	mov    -0xc0(%rbp),%rdi
  809364:	4c 0f af e7          	imul   %rdi,%r12
  809368:	4c 0f af f7          	imul   %rdi,%r14
  80936c:	48 89 8d e8 f3 ff ff 	mov    %rcx,-0xc18(%rbp)
  809373:	48 8d 34 02          	lea    (%rdx,%rax,1),%rsi
  809377:	49 2b f0             	sub    %r8,%rsi
  80937a:	49 f7 dc             	neg    %r12
  80937d:	48 89 b5 50 fa ff ff 	mov    %rsi,-0x5b0(%rbp)
  809384:	4d 03 e6             	add    %r14,%r12
  809387:	48 8b b5 f8 f6 ff ff 	mov    -0x908(%rbp),%rsi
  80938e:	48 2b b5 a0 f6 ff ff 	sub    -0x960(%rbp),%rsi
  809395:	48 0f af b5 a8 f6 ff 	imul   -0x958(%rbp),%rsi
  80939c:	ff 
  80939d:	48 8b 85 e8 f6 ff ff 	mov    -0x918(%rbp),%rax
  8093a4:	48 2b c1             	sub    %rcx,%rax
  8093a7:	4c 8b 85 e8 f2 ff ff 	mov    -0xd18(%rbp),%r8
  8093ae:	48 63 8d b0 f2 ff ff 	movslq -0xd50(%rbp),%rcx
  8093b5:	4c 89 9d 98 f4 ff ff 	mov    %r11,-0xb68(%rbp)
  8093bc:	48 89 b5 e0 f8 ff ff 	mov    %rsi,-0x720(%rbp)
  8093c3:	4e 8d 1c 00          	lea    (%rax,%r8,1),%r11
  8093c7:	4d 2b dc             	sub    %r12,%r11
  8093ca:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
  8093d1:	00 
  8093d2:	4c 89 9d 30 fa ff ff 	mov    %r11,-0x5d0(%rbp)
  8093d9:	4c 8d 5e 08          	lea    0x8(%rsi),%r11
  8093dd:	4d 0f af da          	imul   %r10,%r11
  8093e1:	49 0f af f2          	imul   %r10,%rsi
  8093e5:	4c 8b 85 c0 f9 ff ff 	mov    -0x640(%rbp),%r8
  8093ec:	49 89 cc             	mov    %rcx,%r12
  8093ef:	48 89 95 f0 f9 ff ff 	mov    %rdx,-0x610(%rbp)
  8093f6:	4d 2b e0             	sub    %r8,%r12
  8093f9:	48 8b 95 b0 f6 ff ff 	mov    -0x950(%rbp),%rdx
  809400:	4c 89 df             	mov    %r11,%rdi
  809403:	4c 89 b5 a0 f4 ff ff 	mov    %r14,-0xb60(%rbp)
  80940a:	4c 8b b5 88 f6 ff ff 	mov    -0x978(%rbp),%r14
  809411:	48 89 85 08 fa ff ff 	mov    %rax,-0x5f8(%rbp)
  809418:	4c 8d 3c 95 00 00 00 	lea    0x0(,%rdx,4),%r15
  80941f:	00 
  809420:	49 f7 df             	neg    %r15
  809423:	4d 8d 6c 24 02       	lea    0x2(%r12),%r13
  809428:	49 ff c4             	inc    %r12
  80942b:	48 89 f2             	mov    %rsi,%rdx
  80942e:	4c 89 a5 80 fd ff ff 	mov    %r12,-0x280(%rbp)
  809435:	4b 8d 04 19          	lea    (%r9,%r11,1),%rax
  809439:	4c 8b a5 48 fb ff ff 	mov    -0x4b8(%rbp),%r12
  809440:	49 2b fc             	sub    %r12,%rdi
  809443:	4c 03 bd 98 f6 ff ff 	add    -0x968(%rbp),%r15
  80944a:	49 03 f9             	add    %r9,%rdi
  80944d:	4c 89 bd d8 f8 ff ff 	mov    %r15,-0x728(%rbp)
  809454:	4f 8d 3c 1e          	lea    (%r14,%r11,1),%r15
  809458:	4c 89 ad 68 fd ff ff 	mov    %r13,-0x298(%rbp)
  80945f:	49 03 fe             	add    %r14,%rdi
  809462:	4c 8b ad 00 fd ff ff 	mov    -0x300(%rbp),%r13
  809469:	4c 2b fe             	sub    %rsi,%r15
  80946c:	48 89 bd e0 f7 ff ff 	mov    %rdi,-0x820(%rbp)
  809473:	49 8d 3c 36          	lea    (%r14,%rsi,1),%rdi
  809477:	49 03 f1             	add    %r9,%rsi
  80947a:	49 2b d4             	sub    %r12,%rdx
  80947d:	49 2b c4             	sub    %r12,%rax
  809480:	49 2b f4             	sub    %r12,%rsi
  809483:	49 03 d1             	add    %r9,%rdx
  809486:	4d 2b fe             	sub    %r14,%r15
  809489:	48 89 8d 10 fa ff ff 	mov    %rcx,-0x5f0(%rbp)
  809490:	49 03 c6             	add    %r14,%rax
  809493:	49 03 f6             	add    %r14,%rsi
  809496:	49 2b fb             	sub    %r11,%rdi
  809499:	48 89 85 c0 f7 ff ff 	mov    %rax,-0x840(%rbp)
  8094a0:	33 c0                	xor    %eax,%eax
  8094a2:	48 8b 8d f8 f7 ff ff 	mov    -0x808(%rbp),%rcx
  8094a9:	49 03 d6             	add    %r14,%rdx
  8094ac:	48 89 b5 00 f8 ff ff 	mov    %rsi,-0x800(%rbp)
  8094b3:	49 8d 75 01          	lea    0x1(%r13),%rsi
  8094b7:	48 89 b5 60 fd ff ff 	mov    %rsi,-0x2a0(%rbp)
  8094be:	4c 3b f9             	cmp    %rcx,%r15
  8094c1:	48 8b b5 08 fd ff ff 	mov    -0x2f8(%rbp),%rsi
  8094c8:	48 89 95 e8 f7 ff ff 	mov    %rdx,-0x818(%rbp)
  8094cf:	89 c2                	mov    %eax,%edx
  8094d1:	0f 9f c2             	setg   %dl
  8094d4:	45 33 db             	xor    %r11d,%r11d
  8094d7:	49 2b fe             	sub    %r14,%rdi
  8094da:	4c 2b ee             	sub    %rsi,%r13
  8094dd:	48 3b f9             	cmp    %rcx,%rdi
  8094e0:	48 8b bd 78 f7 ff ff 	mov    -0x888(%rbp),%rdi
  8094e7:	41 0f 9f c3          	setg   %r11b
  8094eb:	41 0b d3             	or     %r11d,%edx
  8094ee:	89 95 b0 f7 ff ff    	mov    %edx,-0x850(%rbp)
  8094f4:	4d 8d 5d 01          	lea    0x1(%r13),%r11
  8094f8:	49 83 c5 02          	add    $0x2,%r13
  8094fc:	4c 89 ad 50 fe ff ff 	mov    %r13,-0x1b0(%rbp)
  809503:	4c 8d 2c f5 00 00 00 	lea    0x0(,%rsi,8),%r13
  80950a:	00 
  80950b:	4c 89 ad a0 f8 ff ff 	mov    %r13,-0x760(%rbp)
  809512:	4c 2b ad a0 f3 ff ff 	sub    -0xc60(%rbp),%r13
  809519:	4c 8b bd 90 f7 ff ff 	mov    -0x870(%rbp),%r15
  809520:	4c 89 9d 98 fe ff ff 	mov    %r11,-0x168(%rbp)
  809527:	48 8b b5 a0 f7 ff ff 	mov    -0x860(%rbp),%rsi
  80952e:	49 8d 54 3d 00       	lea    0x0(%r13,%rdi,1),%rdx
  809533:	49 2b d4             	sub    %r12,%rdx
  809536:	4f 8d 1c 2f          	lea    (%r15,%r13,1),%r11
  80953a:	49 03 d6             	add    %r14,%rdx
  80953d:	4d 03 de             	add    %r14,%r11
  809540:	48 89 95 80 f7 ff ff 	mov    %rdx,-0x880(%rbp)
  809547:	49 8d 7c 35 00       	lea    0x0(%r13,%rsi,1),%rdi
  80954c:	48 8b 95 98 f7 ff ff 	mov    -0x868(%rbp),%rdx
  809553:	49 2b fc             	sub    %r12,%rdi
  809556:	4c 89 9d 60 f7 ff ff 	mov    %r11,-0x8a0(%rbp)
  80955d:	49 03 fe             	add    %r14,%rdi
  809560:	48 89 bd 70 f7 ff ff 	mov    %rdi,-0x890(%rbp)
  809567:	4d 8d 5c 15 00       	lea    0x0(%r13,%rdx,1),%r11
  80956c:	4d 2b dc             	sub    %r12,%r11
  80956f:	4a 8d 14 c5 00 00 00 	lea    0x0(,%r8,8),%rdx
  809576:	00 
  809577:	49 0f af d2          	imul   %r10,%rdx
  80957b:	49 89 d7             	mov    %rdx,%r15
  80957e:	49 8d 34 11          	lea    (%r9,%rdx,1),%rsi
  809582:	4d 2b fc             	sub    %r12,%r15
  809585:	49 2b f4             	sub    %r12,%rsi
  809588:	4d 03 de             	add    %r14,%r11
  80958b:	49 03 f6             	add    %r14,%rsi
  80958e:	4c 89 9d 88 f7 ff ff 	mov    %r11,-0x878(%rbp)
  809595:	48 89 b5 d8 f7 ff ff 	mov    %rsi,-0x828(%rbp)
  80959c:	4c 8b 9d 38 fb ff ff 	mov    -0x4c8(%rbp),%r11
  8095a3:	4b 8d 7c 3d 00       	lea    0x0(%r13,%r15,1),%rdi
  8095a8:	4c 03 ea             	add    %rdx,%r13
  8095ab:	4d 03 f9             	add    %r9,%r15
  8095ae:	48 8b b5 90 f6 ff ff 	mov    -0x970(%rbp),%rsi
  8095b5:	4d 03 dd             	add    %r13,%r11
  8095b8:	4d 03 fe             	add    %r14,%r15
  8095bb:	4c 03 de             	add    %rsi,%r11
  8095be:	4c 89 bd f0 f7 ff ff 	mov    %r15,-0x810(%rbp)
  8095c5:	4c 8b bd 88 fd ff ff 	mov    -0x278(%rbp),%r15
  8095cc:	4d 03 fd             	add    %r13,%r15
  8095cf:	4d 2b ec             	sub    %r12,%r13
  8095d2:	4c 89 9d 38 fb ff ff 	mov    %r11,-0x4c8(%rbp)
  8095d9:	4d 03 fe             	add    %r14,%r15
  8095dc:	4c 8b 9d 88 fa ff ff 	mov    -0x578(%rbp),%r11
  8095e3:	4c 89 bd 88 fd ff ff 	mov    %r15,-0x278(%rbp)
  8095ea:	48 89 95 40 fb ff ff 	mov    %rdx,-0x4c0(%rbp)
  8095f1:	49 03 f5             	add    %r13,%rsi
  8095f4:	48 89 b5 c0 fc ff ff 	mov    %rsi,-0x340(%rbp)
  8095fb:	4d 8d 3c 3b          	lea    (%r11,%rdi,1),%r15
  8095ff:	49 03 fe             	add    %r14,%rdi
  809602:	49 8d 34 16          	lea    (%r14,%rdx,1),%rsi
  809606:	48 89 bd 90 fd ff ff 	mov    %rdi,-0x270(%rbp)
  80960d:	4b 8d 3c 2e          	lea    (%r14,%r13,1),%rdi
  809611:	4d 03 eb             	add    %r11,%r13
  809614:	4c 89 ad f8 fc ff ff 	mov    %r13,-0x308(%rbp)
  80961b:	4e 8d 2c c5 f8 ff ff 	lea    -0x8(,%r8,8),%r13
  809622:	ff 
  809623:	4d 0f af d5          	imul   %r13,%r10
  809627:	49 2b f2             	sub    %r10,%rsi
  80962a:	4f 8d 1c 16          	lea    (%r14,%r10,1),%r11
  80962e:	4c 2b da             	sub    %rdx,%r11
  809631:	49 2b f6             	sub    %r14,%rsi
  809634:	4d 2b de             	sub    %r14,%r11
  809637:	4c 3b d9             	cmp    %rcx,%r11
  80963a:	48 89 bd 58 fd ff ff 	mov    %rdi,-0x2a8(%rbp)
  809641:	89 c7                	mov    %eax,%edi
  809643:	40 0f 9f c7          	setg   %dil
  809647:	48 3b f1             	cmp    %rcx,%rsi
  80964a:	4c 89 d1             	mov    %r10,%rcx
  80964d:	0f 9f c0             	setg   %al
  809650:	49 2b cc             	sub    %r12,%rcx
  809653:	49 03 c9             	add    %r9,%rcx
  809656:	4d 03 ca             	add    %r10,%r9
  809659:	4c 8b 95 c0 fd ff ff 	mov    -0x240(%rbp),%r10
  809660:	4d 2b cc             	sub    %r12,%r9
  809663:	4d 0f af d0          	imul   %r8,%r10
  809667:	4d 03 ce             	add    %r14,%r9
  80966a:	49 03 ce             	add    %r14,%rcx
  80966d:	4c 89 8d 08 f8 ff ff 	mov    %r9,-0x7f8(%rbp)
  809674:	0b f8                	or     %eax,%edi
  809676:	4c 8b 8d 48 f4 ff ff 	mov    -0xbb8(%rbp),%r9
  80967d:	49 f7 d9             	neg    %r9
  809680:	4d 03 ca             	add    %r10,%r9
  809683:	48 89 8d d0 f7 ff ff 	mov    %rcx,-0x830(%rbp)
  80968a:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  809691:	48 8b 8d 08 fd ff ff 	mov    -0x2f8(%rbp),%rcx
  809698:	48 0f af c1          	imul   %rcx,%rax
  80969c:	4c 8d a5 b8 f8 ff ff 	lea    -0x748(%rbp),%r12
  8096a3:	4d 8b 1c 24          	mov    (%r12),%r11
  8096a7:	4c 8b b5 f8 fe ff ff 	mov    -0x108(%rbp),%r14
  8096ae:	4d 03 d9             	add    %r9,%r11
  8096b1:	4c 8b 8d b8 fd ff ff 	mov    -0x248(%rbp),%r9
  8096b8:	4c 03 d8             	add    %rax,%r11
  8096bb:	4d 0f af c8          	imul   %r8,%r9
  8096bf:	4c 0f af f1          	imul   %rcx,%r14
  8096c3:	4d 89 1c 24          	mov    %r11,(%r12)
  8096c7:	4c 8b 9d e0 f9 ff ff 	mov    -0x620(%rbp),%r11
  8096ce:	48 8b 85 50 f4 ff ff 	mov    -0xbb0(%rbp),%rax
  8096d5:	4d 03 d9             	add    %r9,%r11
  8096d8:	49 2b c6             	sub    %r14,%rax
  8096db:	49 f7 d9             	neg    %r9
  8096de:	48 8b b5 d8 fd ff ff 	mov    -0x228(%rbp),%rsi
  8096e5:	4c 2b d8             	sub    %rax,%r11
  8096e8:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
  8096ef:	49 0f af f0          	imul   %r8,%rsi
  8096f3:	48 0f af c1          	imul   %rcx,%rax
  8096f7:	4c 8b ad 68 f4 ff ff 	mov    -0xb98(%rbp),%r13
  8096fe:	4c 89 bd 30 fb ff ff 	mov    %r15,-0x4d0(%rbp)
  809705:	4d 89 ef             	mov    %r13,%r15
  809708:	89 bd b8 f7 ff ff    	mov    %edi,-0x848(%rbp)
  80970e:	4c 2b f8             	sub    %rax,%r15
  809711:	48 8b 95 30 f4 ff ff 	mov    -0xbd0(%rbp),%rdx
  809718:	49 f7 dd             	neg    %r13
  80971b:	4c 8d b5 c8 f8 ff ff 	lea    -0x738(%rbp),%r14
  809722:	49 8b 3e             	mov    (%r14),%rdi
  809725:	48 2b d6             	sub    %rsi,%rdx
  809728:	48 f7 df             	neg    %rdi
  80972b:	4c 03 fa             	add    %rdx,%r15
  80972e:	48 03 fa             	add    %rdx,%rdi
  809731:	49 f7 df             	neg    %r15
  809734:	48 f7 df             	neg    %rdi
  809737:	4c 03 ee             	add    %rsi,%r13
  80973a:	4c 8b a5 58 f6 ff ff 	mov    -0x9a8(%rbp),%r12
  809741:	49 03 fc             	add    %r12,%rdi
  809744:	4d 03 fc             	add    %r12,%r15
  809747:	48 03 f8             	add    %rax,%rdi
  80974a:	4c 01 bd b0 f8 ff ff 	add    %r15,-0x750(%rbp)
  809751:	49 89 3e             	mov    %rdi,(%r14)
  809754:	4c 8b bd b0 fd ff ff 	mov    -0x250(%rbp),%r15
  80975b:	48 8b bd f0 fe ff ff 	mov    -0x110(%rbp),%rdi
  809762:	4d 0f af f8          	imul   %r8,%r15
  809766:	48 0f af f9          	imul   %rcx,%rdi
  80976a:	4c 89 9d e0 f9 ff ff 	mov    %r11,-0x620(%rbp)
  809771:	4c 8b 9d a8 f8 ff ff 	mov    -0x758(%rbp),%r11
  809778:	4c 8b b5 e8 fe ff ff 	mov    -0x118(%rbp),%r14
  80977f:	4d 03 dd             	add    %r13,%r11
  809782:	4c 8b ad a8 fd ff ff 	mov    -0x258(%rbp),%r13
  809789:	4c 03 d8             	add    %rax,%r11
  80978c:	4d 0f af e8          	imul   %r8,%r13
  809790:	4c 0f af f1          	imul   %rcx,%r14
  809794:	48 89 95 30 f4 ff ff 	mov    %rdx,-0xbd0(%rbp)
  80979b:	48 8d 85 00 fa ff ff 	lea    -0x600(%rbp),%rax
  8097a2:	4c 8b 20             	mov    (%rax),%r12
  8097a5:	48 8b 95 58 f4 ff ff 	mov    -0xba8(%rbp),%rdx
  8097ac:	4d 03 e7             	add    %r15,%r12
  8097af:	48 2b d7             	sub    %rdi,%rdx
  8097b2:	49 f7 df             	neg    %r15
  8097b5:	8b bd b0 f2 ff ff    	mov    -0xd50(%rbp),%edi
  8097bb:	4c 2b e2             	sub    %rdx,%r12
  8097be:	4c 89 20             	mov    %r12,(%rax)
  8097c1:	4c 8b a5 e8 fd ff ff 	mov    -0x218(%rbp),%r12
  8097c8:	4c 89 9d a8 f8 ff ff 	mov    %r11,-0x758(%rbp)
  8097cf:	8d 57 01             	lea    0x1(%rdi),%edx
  8097d2:	4d 0f af e0          	imul   %r8,%r12
  8097d6:	48 8d bd f8 f9 ff ff 	lea    -0x608(%rbp),%rdi
  8097dd:	4c 8b 1f             	mov    (%rdi),%r11
  8097e0:	48 8b 85 60 f4 ff ff 	mov    -0xba0(%rbp),%rax
  8097e7:	4d 03 dd             	add    %r13,%r11
  8097ea:	49 2b c6             	sub    %r14,%rax
  8097ed:	49 f7 dd             	neg    %r13
  8097f0:	4c 2b d8             	sub    %rax,%r11
  8097f3:	4c 89 1f             	mov    %r11,(%rdi)
  8097f6:	4c 8b 9d 28 ff ff ff 	mov    -0xd8(%rbp),%r11
  8097fd:	4c 0f af d9          	imul   %rcx,%r11
  809801:	48 63 d2             	movslq %edx,%rdx
  809804:	48 89 95 c8 f9 ff ff 	mov    %rdx,-0x638(%rbp)
  80980b:	48 8b 95 20 ff ff ff 	mov    -0xe0(%rbp),%rdx
  809812:	48 0f af d1          	imul   %rcx,%rdx
  809816:	48 8b 85 78 f4 ff ff 	mov    -0xb88(%rbp),%rax
  80981d:	48 f7 d8             	neg    %rax
  809820:	49 03 c4             	add    %r12,%rax
  809823:	48 8b bd c0 f8 ff ff 	mov    -0x740(%rbp),%rdi
  80982a:	48 03 f8             	add    %rax,%rdi
  80982d:	49 03 fb             	add    %r11,%rdi
  809830:	4c 8b 9d e0 fd ff ff 	mov    -0x220(%rbp),%r11
  809837:	4d 0f af d8          	imul   %r8,%r11
  80983b:	4c 8b b5 80 f4 ff ff 	mov    -0xb80(%rbp),%r14
  809842:	4c 2b f2             	sub    %rdx,%r14
  809845:	48 8b 95 10 ff ff ff 	mov    -0xf0(%rbp),%rdx
  80984c:	48 0f af d1          	imul   %rcx,%rdx
  809850:	48 89 bd c0 f8 ff ff 	mov    %rdi,-0x740(%rbp)
  809857:	48 8b bd d0 fd ff ff 	mov    -0x230(%rbp),%rdi
  80985e:	49 0f af f8          	imul   %r8,%rdi
  809862:	48 8b 85 d0 f9 ff ff 	mov    -0x630(%rbp),%rax
  809869:	49 03 c3             	add    %r11,%rax
  80986c:	49 f7 db             	neg    %r11
  80986f:	4c 89 a5 a8 f4 ff ff 	mov    %r12,-0xb58(%rbp)
  809876:	49 2b c6             	sub    %r14,%rax
  809879:	4c 8b a5 88 f4 ff ff 	mov    -0xb78(%rbp),%r12
  809880:	4c 8b b5 08 ff ff ff 	mov    -0xf8(%rbp),%r14
  809887:	4c 2b e2             	sub    %rdx,%r12
  80988a:	48 8b 95 c8 fd ff ff 	mov    -0x238(%rbp),%rdx
  809891:	49 0f af d0          	imul   %r8,%rdx
  809895:	4c 0f af f1          	imul   %rcx,%r14
  809899:	48 89 85 d0 f9 ff ff 	mov    %rax,-0x630(%rbp)
  8098a0:	48 8b 85 d8 f9 ff ff 	mov    -0x628(%rbp),%rax
  8098a7:	48 03 c7             	add    %rdi,%rax
  8098aa:	48 f7 df             	neg    %rdi
  8098ad:	49 2b c4             	sub    %r12,%rax
  8098b0:	48 89 85 d8 f9 ff ff 	mov    %rax,-0x628(%rbp)
  8098b7:	4c 8b a5 e8 f9 ff ff 	mov    -0x618(%rbp),%r12
  8098be:	48 8b 85 90 f4 ff ff 	mov    -0xb70(%rbp),%rax
  8098c5:	4c 03 e2             	add    %rdx,%r12
  8098c8:	49 2b c6             	sub    %r14,%rax
  8098cb:	48 f7 da             	neg    %rdx
  8098ce:	4c 2b e0             	sub    %rax,%r12
  8098d1:	48 8b 85 f8 f6 ff ff 	mov    -0x908(%rbp),%rax
  8098d8:	48 2b 85 c0 f6 ff ff 	sub    -0x940(%rbp),%rax
  8098df:	4c 89 a5 e8 f9 ff ff 	mov    %r12,-0x618(%rbp)
  8098e6:	48 89 85 e8 fc ff ff 	mov    %rax,-0x318(%rbp)
  8098ed:	4c 8b a5 00 fe ff ff 	mov    -0x200(%rbp),%r12
  8098f4:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
  8098fb:	4d 0f af e0          	imul   %r8,%r12
  8098ff:	48 0f af c1          	imul   %rcx,%rax
  809903:	4c 8b b5 f0 f9 ff ff 	mov    -0x610(%rbp),%r14
  80990a:	4c 89 a5 b0 f3 ff ff 	mov    %r12,-0xc50(%rbp)
  809911:	4d 03 f4             	add    %r12,%r14
  809914:	4c 8b a5 98 f4 ff ff 	mov    -0xb68(%rbp),%r12
  80991b:	4c 2b e0             	sub    %rax,%r12
  80991e:	4d 2b f4             	sub    %r12,%r14
  809921:	4c 89 b5 f0 f9 ff ff 	mov    %r14,-0x610(%rbp)
  809928:	4c 8b b5 f8 fd ff ff 	mov    -0x208(%rbp),%r14
  80992f:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  809936:	4d 0f af f0          	imul   %r8,%r14
  80993a:	48 0f af c1          	imul   %rcx,%rax
  80993e:	4c 8b a5 08 fa ff ff 	mov    -0x5f8(%rbp),%r12
  809945:	4c 89 b5 a8 f3 ff ff 	mov    %r14,-0xc58(%rbp)
  80994c:	4d 03 e6             	add    %r14,%r12
  80994f:	4c 8b b5 a0 f4 ff ff 	mov    -0xb60(%rbp),%r14
  809956:	4c 2b f0             	sub    %rax,%r14
  809959:	4d 2b e6             	sub    %r14,%r12
  80995c:	4c 8b b5 c8 f6 ff ff 	mov    -0x938(%rbp),%r14
  809963:	4c 89 a5 08 fa ff ff 	mov    %r12,-0x5f8(%rbp)
  80996a:	4c 8b a5 f0 fd ff ff 	mov    -0x210(%rbp),%r12
  809971:	4d 0f af e0          	imul   %r8,%r12
  809975:	4c 0f af b5 d0 f6 ff 	imul   -0x930(%rbp),%r14
  80997c:	ff 
  80997d:	4c 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%r8
  809984:	4c 0f af c1          	imul   %rcx,%r8
  809988:	48 8b 85 70 f4 ff ff 	mov    -0xb90(%rbp),%rax
  80998f:	48 f7 d8             	neg    %rax
  809992:	49 03 c4             	add    %r12,%rax
  809995:	4d 03 e6             	add    %r14,%r12
  809998:	4d 03 f0             	add    %r8,%r14
  80999b:	49 03 c6             	add    %r14,%rax
  80999e:	4c 8d b5 d0 f8 ff ff 	lea    -0x730(%rbp),%r14
  8099a5:	49 8b 0e             	mov    (%r14),%rcx
  8099a8:	48 03 c8             	add    %rax,%rcx
  8099ab:	48 8b 85 a8 f2 ff ff 	mov    -0xd58(%rbp),%rax
  8099b2:	48 03 8d a0 f9 ff ff 	add    -0x660(%rbp),%rcx
  8099b9:	4c 8b 85 a0 f8 ff ff 	mov    -0x760(%rbp),%r8
  8099c0:	49 89 0e             	mov    %rcx,(%r14)
  8099c3:	48 c1 e0 03          	shl    $0x3,%rax
  8099c7:	4c 2b c0             	sub    %rax,%r8
  8099ca:	48 8b 8d 28 f6 ff ff 	mov    -0x9d8(%rbp),%rcx
  8099d1:	4c 03 ad b8 f3 ff ff 	add    -0xc48(%rbp),%r13
  8099d8:	4c 89 a5 18 f4 ff ff 	mov    %r12,-0xbe8(%rbp)
  8099df:	4c 03 bd c0 f3 ff ff 	add    -0xc40(%rbp),%r15
  8099e6:	4e 8d 24 01          	lea    (%rcx,%r8,1),%r12
  8099ea:	4d 2b e5             	sub    %r13,%r12
  8099ed:	4c 8b ad 30 f6 ff ff 	mov    -0x9d0(%rbp),%r13
  8099f4:	4c 03 8d c8 f3 ff ff 	add    -0xc38(%rbp),%r9
  8099fb:	48 03 95 d0 f3 ff ff 	add    -0xc30(%rbp),%rdx
  809a02:	48 03 bd d8 f3 ff ff 	add    -0xc28(%rbp),%rdi
  809a09:	4f 8d 74 05 00       	lea    0x0(%r13,%r8,1),%r14
  809a0e:	4d 2b f7             	sub    %r15,%r14
  809a11:	4c 8b bd 38 f6 ff ff 	mov    -0x9c8(%rbp),%r15
  809a18:	4c 89 a5 88 f3 ff ff 	mov    %r12,-0xc78(%rbp)
  809a1f:	4c 89 b5 80 f3 ff ff 	mov    %r14,-0xc80(%rbp)
  809a26:	4c 8b b5 e0 f6 ff ff 	mov    -0x920(%rbp),%r14
  809a2d:	4b 8d 0c 07          	lea    (%r15,%r8,1),%rcx
  809a31:	49 2b c9             	sub    %r9,%rcx
  809a34:	4c 8b 8d 10 f4 ff ff 	mov    -0xbf0(%rbp),%r9
  809a3b:	48 89 8d 78 f3 ff ff 	mov    %rcx,-0xc88(%rbp)
  809a42:	4c 03 9d e0 f3 ff ff 	add    -0xc20(%rbp),%r11
  809a49:	4c 89 85 a0 f8 ff ff 	mov    %r8,-0x760(%rbp)
  809a50:	4b 8d 0c 01          	lea    (%r9,%r8,1),%rcx
  809a54:	48 03 8d 78 f9 ff ff 	add    -0x688(%rbp),%rcx
  809a5b:	49 03 ca             	add    %r10,%rcx
  809a5e:	4c 8b 95 48 f6 ff ff 	mov    -0x9b8(%rbp),%r10
  809a65:	48 89 8d 80 f8 ff ff 	mov    %rcx,-0x780(%rbp)
  809a6c:	4b 8d 0c 02          	lea    (%r10,%r8,1),%rcx
  809a70:	4c 8b 95 00 f4 ff ff 	mov    -0xc00(%rbp),%r10
  809a77:	48 2b ca             	sub    %rdx,%rcx
  809a7a:	48 8b 95 50 f6 ff ff 	mov    -0x9b0(%rbp),%rdx
  809a81:	48 89 8d 70 f3 ff ff 	mov    %rcx,-0xc90(%rbp)
  809a88:	48 8b 8d 28 f8 ff ff 	mov    -0x7d8(%rbp),%rcx
  809a8f:	4e 8d 0c 02          	lea    (%rdx,%r8,1),%r9
  809a93:	48 8b 95 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdx
  809a9a:	4c 2b cf             	sub    %rdi,%r9
  809a9d:	48 8b bd 20 f4 ff ff 	mov    -0xbe0(%rbp),%rdi
  809aa4:	4c 89 8d 68 f3 ff ff 	mov    %r9,-0xc98(%rbp)
  809aab:	4e 8d 24 07          	lea    (%rdi,%r8,1),%r12
  809aaf:	48 8b bd 78 fa ff ff 	mov    -0x588(%rbp),%rdi
  809ab6:	4c 03 a5 38 f9 ff ff 	add    -0x6c8(%rbp),%r12
  809abd:	4c 03 e6             	add    %rsi,%r12
  809ac0:	48 8b b5 60 f6 ff ff 	mov    -0x9a0(%rbp),%rsi
  809ac7:	4c 89 a5 88 f8 ff ff 	mov    %r12,-0x778(%rbp)
  809ace:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  809ad5:	4e 8d 2c 06          	lea    (%rsi,%r8,1),%r13
  809ad9:	48 8b b5 30 f8 ff ff 	mov    -0x7d0(%rbp),%rsi
  809ae0:	4d 2b eb             	sub    %r11,%r13
  809ae3:	4f 8d 1c 02          	lea    (%r10,%r8,1),%r11
  809ae7:	4c 03 9d 98 f9 ff ff 	add    -0x668(%rbp),%r11
  809aee:	4d 03 c6             	add    %r14,%r8
  809af1:	4c 03 9d a8 f4 ff ff 	add    -0xb58(%rbp),%r11
  809af8:	4c 2b 85 90 f3 ff ff 	sub    -0xc70(%rbp),%r8
  809aff:	4c 89 ad 60 f3 ff ff 	mov    %r13,-0xca0(%rbp)
  809b06:	4c 89 9d 90 f8 ff ff 	mov    %r11,-0x770(%rbp)
  809b0d:	4c 89 85 98 f8 ff ff 	mov    %r8,-0x768(%rbp)
  809b14:	48 89 b5 30 f8 ff ff 	mov    %rsi,-0x7d0(%rbp)
  809b1b:	4c 8b 9d 28 f9 ff ff 	mov    -0x6d8(%rbp),%r11
  809b22:	4c 8d 8d e0 f3 ff ff 	lea    -0xc20(%rbp),%r9
  809b29:	49 8b 31             	mov    (%r9),%rsi
  809b2c:	4c 2b d8             	sub    %rax,%r11
  809b2f:	4c 8d b5 d8 f3 ff ff 	lea    -0xc28(%rbp),%r14
  809b36:	49 8b 06             	mov    (%r14),%rax
  809b39:	48 2b b5 e0 f2 ff ff 	sub    -0xd20(%rbp),%rsi
  809b40:	48 2b 85 d8 f2 ff ff 	sub    -0xd28(%rbp),%rax
  809b47:	48 89 bd 78 fa ff ff 	mov    %rdi,-0x588(%rbp)
  809b4e:	49 89 31             	mov    %rsi,(%r9)
  809b51:	49 89 06             	mov    %rax,(%r14)
  809b54:	48 8b b5 98 f3 ff ff 	mov    -0xc68(%rbp),%rsi
  809b5b:	48 8b bd 18 f4 ff ff 	mov    -0xbe8(%rbp),%rdi
  809b62:	48 8b 85 a8 f3 ff ff 	mov    -0xc58(%rbp),%rax
  809b69:	48 03 fe             	add    %rsi,%rdi
  809b6c:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  809b73:	48 f7 d8             	neg    %rax
  809b76:	4c 8d bd e8 f3 ff ff 	lea    -0xc18(%rbp),%r15
  809b7d:	4d 8b 27             	mov    (%r15),%r12
  809b80:	49 03 c4             	add    %r12,%rax
  809b83:	48 89 95 38 f8 ff ff 	mov    %rdx,-0x7c8(%rbp)
  809b8a:	4c 89 c2             	mov    %r8,%rdx
  809b8d:	48 03 d7             	add    %rdi,%rdx
  809b90:	4c 2b a5 e8 f2 ff ff 	sub    -0xd18(%rbp),%r12
  809b97:	48 8b bd a0 f9 ff ff 	mov    -0x660(%rbp),%rdi
  809b9e:	48 03 d7             	add    %rdi,%rdx
  809ba1:	48 89 95 98 f8 ff ff 	mov    %rdx,-0x768(%rbp)
  809ba8:	4d 89 27             	mov    %r12,(%r15)
  809bab:	48 8b 95 b0 f3 ff ff 	mov    -0xc50(%rbp),%rdx
  809bb2:	4c 8b a5 10 f4 ff ff 	mov    -0xbf0(%rbp),%r12
  809bb9:	48 f7 da             	neg    %rdx
  809bbc:	4c 8d 85 f0 f3 ff ff 	lea    -0xc10(%rbp),%r8
  809bc3:	4d 8b 28             	mov    (%r8),%r13
  809bc6:	4d 03 e3             	add    %r11,%r12
  809bc9:	4c 8b b5 78 f9 ff ff 	mov    -0x688(%rbp),%r14
  809bd0:	49 03 d5             	add    %r13,%rdx
  809bd3:	4c 2b ad f0 f2 ff ff 	sub    -0xd10(%rbp),%r13
  809bda:	4d 03 f4             	add    %r12,%r14
  809bdd:	4c 8b a5 08 f4 ff ff 	mov    -0xbf8(%rbp),%r12
  809be4:	4c 8b bd 40 f4 ff ff 	mov    -0xbc0(%rbp),%r15
  809beb:	4d 03 e7             	add    %r15,%r12
  809bee:	4c 03 b5 f8 f2 ff ff 	add    -0xd08(%rbp),%r14
  809bf5:	49 f7 dc             	neg    %r12
  809bf8:	4d 89 28             	mov    %r13,(%r8)
  809bfb:	4c 8b ad a8 f9 ff ff 	mov    -0x658(%rbp),%r13
  809c02:	4d 03 eb             	add    %r11,%r13
  809c05:	4c 89 b5 78 f9 ff ff 	mov    %r14,-0x688(%rbp)
  809c0c:	4c 8b b5 b8 f9 ff ff 	mov    -0x648(%rbp),%r14
  809c13:	4d 03 e6             	add    %r14,%r12
  809c16:	4c 03 ad 00 f3 ff ff 	add    -0xd00(%rbp),%r13
  809c1d:	49 f7 de             	neg    %r14
  809c20:	4d 03 f5             	add    %r13,%r14
  809c23:	4d 2b ec             	sub    %r12,%r13
  809c26:	4c 8b a5 28 f4 ff ff 	mov    -0xbd8(%rbp),%r12
  809c2d:	4d 03 f7             	add    %r15,%r14
  809c30:	4d 03 e7             	add    %r15,%r12
  809c33:	4c 03 ef             	add    %rdi,%r13
  809c36:	4d 89 d7             	mov    %r10,%r15
  809c39:	49 03 f4             	add    %r12,%rsi
  809c3c:	4d 03 fb             	add    %r11,%r15
  809c3f:	4c 03 f7             	add    %rdi,%r14
  809c42:	4c 89 ad a8 f9 ff ff 	mov    %r13,-0x658(%rbp)
  809c49:	4c 8d 95 98 f9 ff ff 	lea    -0x668(%rbp),%r10
  809c50:	4d 8b 22             	mov    (%r10),%r12
  809c53:	4c 8b ad 20 f4 ff ff 	mov    -0xbe0(%rbp),%r13
  809c5a:	4d 03 e7             	add    %r15,%r12
  809c5d:	4d 03 eb             	add    %r11,%r13
  809c60:	4c 89 b5 b8 f9 ff ff 	mov    %r14,-0x648(%rbp)
  809c67:	4c 8b b5 38 f9 ff ff 	mov    -0x6c8(%rbp),%r14
  809c6e:	4c 03 a5 08 f3 ff ff 	add    -0xcf8(%rbp),%r12
  809c75:	4d 03 f5             	add    %r13,%r14
  809c78:	4c 03 b5 f8 f3 ff ff 	add    -0xc08(%rbp),%r14
  809c7f:	4d 89 22             	mov    %r12,(%r10)
  809c82:	4c 8b bd e8 f6 ff ff 	mov    -0x918(%rbp),%r15
  809c89:	4c 8b a5 a0 f8 ff ff 	mov    -0x760(%rbp),%r12
  809c90:	4c 89 b5 38 f9 ff ff 	mov    %r14,-0x6c8(%rbp)
  809c97:	4c 8b b5 f0 f6 ff ff 	mov    -0x910(%rbp),%r14
  809c9e:	4c 8b 95 b8 f3 ff ff 	mov    -0xc48(%rbp),%r10
  809ca5:	4f 8d 2c 3c          	lea    (%r12,%r15,1),%r13
  809ca9:	4c 2b e8             	sub    %rax,%r13
  809cac:	4c 2b 95 b8 f2 ff ff 	sub    -0xd48(%rbp),%r10
  809cb3:	4b 8d 04 34          	lea    (%r12,%r14,1),%rax
  809cb7:	48 2b c2             	sub    %rdx,%rax
  809cba:	48 8b 95 28 f6 ff ff 	mov    -0x9d8(%rbp),%rdx
  809cc1:	48 89 85 50 f3 ff ff 	mov    %rax,-0xcb0(%rbp)
  809cc8:	4c 8b 8d c0 f3 ff ff 	mov    -0xc40(%rbp),%r9
  809ccf:	4c 2b 8d c0 f2 ff ff 	sub    -0xd40(%rbp),%r9
  809cd6:	4a 8d 04 1a          	lea    (%rdx,%r11,1),%rax
  809cda:	49 2b c2             	sub    %r10,%rax
  809cdd:	4c 8b 95 30 f6 ff ff 	mov    -0x9d0(%rbp),%r10
  809ce4:	48 89 85 48 f3 ff ff 	mov    %rax,-0xcb8(%rbp)
  809ceb:	48 89 8d 28 f8 ff ff 	mov    %rcx,-0x7d8(%rbp)
  809cf2:	48 8b 8d c8 f3 ff ff 	mov    -0xc38(%rbp),%rcx
  809cf9:	4b 8d 04 1a          	lea    (%r10,%r11,1),%rax
  809cfd:	49 2b c1             	sub    %r9,%rax
  809d00:	4c 8b 8d 38 f6 ff ff 	mov    -0x9c8(%rbp),%r9
  809d07:	48 2b 8d c8 f2 ff ff 	sub    -0xd38(%rbp),%rcx
  809d0e:	48 89 85 40 f3 ff ff 	mov    %rax,-0xcc0(%rbp)
  809d15:	48 8b 95 48 f6 ff ff 	mov    -0x9b8(%rbp),%rdx
  809d1c:	4b 8d 04 19          	lea    (%r9,%r11,1),%rax
  809d20:	48 2b c1             	sub    %rcx,%rax
  809d23:	48 8b 8d e0 f6 ff ff 	mov    -0x920(%rbp),%rcx
  809d2a:	48 89 85 38 f3 ff ff 	mov    %rax,-0xcc8(%rbp)
  809d31:	4c 8b 85 d0 f3 ff ff 	mov    -0xc30(%rbp),%r8
  809d38:	4c 2b 85 d0 f2 ff ff 	sub    -0xd30(%rbp),%r8
  809d3f:	4a 8d 04 19          	lea    (%rcx,%r11,1),%rax
  809d43:	48 2b 85 90 f3 ff ff 	sub    -0xc70(%rbp),%rax
  809d4a:	48 03 c6             	add    %rsi,%rax
  809d4d:	4a 8d 34 1a          	lea    (%rdx,%r11,1),%rsi
  809d51:	49 2b f0             	sub    %r8,%rsi
  809d54:	48 03 f8             	add    %rax,%rdi
  809d57:	4c 8b 85 50 f6 ff ff 	mov    -0x9b0(%rbp),%r8
  809d5e:	48 8b 95 60 f6 ff ff 	mov    -0x9a0(%rbp),%rdx
  809d65:	4c 89 ad 58 f3 ff ff 	mov    %r13,-0xca8(%rbp)
  809d6c:	4c 8b ad 58 f6 ff ff 	mov    -0x9a8(%rbp),%r13
  809d73:	4b 8d 04 18          	lea    (%r8,%r11,1),%rax
  809d77:	4c 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%r8
  809d7e:	4d 03 e5             	add    %r13,%r12
  809d81:	45 89 c1             	mov    %r8d,%r9d
  809d84:	4a 8d 0c 1a          	lea    (%rdx,%r11,1),%rcx
  809d88:	4c 2b a5 30 f4 ff ff 	sub    -0xbd0(%rbp),%r12
  809d8f:	41 83 e1 fc          	and    $0xfffffffc,%r9d
  809d93:	48 8d 95 48 f9 ff ff 	lea    -0x6b8(%rbp),%rdx
  809d9a:	4c 8b 12             	mov    (%rdx),%r10
  809d9d:	48 89 bd a0 f9 ff ff 	mov    %rdi,-0x660(%rbp)
  809da4:	4b 8d 3c 1e          	lea    (%r14,%r11,1),%rdi
  809da8:	48 89 b5 30 f3 ff ff 	mov    %rsi,-0xcd0(%rbp)
  809daf:	4b 8d 34 1f          	lea    (%r15,%r11,1),%rsi
  809db3:	4d 03 dd             	add    %r13,%r11
  809db6:	4d 63 c9             	movslq %r9d,%r9
  809db9:	4c 89 8d 28 fb ff ff 	mov    %r9,-0x4d8(%rbp)
  809dc0:	4c 2b 9d 38 f4 ff ff 	sub    -0xbc8(%rbp),%r11
  809dc7:	4c 6b 8d e8 f5 ff ff 	imul   $0x34,-0xa18(%rbp),%r9
  809dce:	34 
  809dcf:	c5 fd 10 0d 89 b3 0b 	vmovupd 0xbb389(%rip),%ymm1        # 8c5160 <var$630.126.450+0x4a0>
  809dd6:	00 
  809dd7:	4c 89 a5 a0 f8 ff ff 	mov    %r12,-0x760(%rbp)
  809dde:	4d 03 e2             	add    %r10,%r12
  809de1:	4d 03 d3             	add    %r11,%r10
  809de4:	4c 89 12             	mov    %r10,(%rdx)
  809de7:	4c 8b 95 f0 f5 ff ff 	mov    -0xa10(%rbp),%r10
  809dee:	4c 89 a5 78 f8 ff ff 	mov    %r12,-0x788(%rbp)
  809df5:	4c 8b a5 f8 f6 ff ff 	mov    -0x908(%rbp),%r12
  809dfc:	4c 0f af 95 10 f8 ff 	imul   -0x7f0(%rbp),%r10
  809e03:	ff 
  809e04:	4d 89 e5             	mov    %r12,%r13
  809e07:	4d 03 d1             	add    %r9,%r10
  809e0a:	4c 2b ad 10 f6 ff ff 	sub    -0x9f0(%rbp),%r13
  809e11:	49 f7 da             	neg    %r10
  809e14:	48 2b 85 d8 f3 ff ff 	sub    -0xc28(%rbp),%rax
  809e1b:	48 2b 8d e0 f3 ff ff 	sub    -0xc20(%rbp),%rcx
  809e22:	4c 0f af ad 08 f6 ff 	imul   -0x9f8(%rbp),%r13
  809e29:	ff 
  809e2a:	4c 8b bd d8 f5 ff ff 	mov    -0xa28(%rbp),%r15
  809e31:	48 89 85 28 f3 ff ff 	mov    %rax,-0xcd8(%rbp)
  809e38:	48 89 8d 20 f3 ff ff 	mov    %rcx,-0xce0(%rbp)
  809e3f:	48 8b 85 78 f6 ff ff 	mov    -0x988(%rbp),%rax
  809e46:	48 8b 8d 80 f6 ff ff 	mov    -0x980(%rbp),%rcx
  809e4d:	4c 2b bd f8 f5 ff ff 	sub    -0xa08(%rbp),%r15
  809e54:	4c 8b b5 00 f6 ff ff 	mov    -0xa00(%rbp),%r14
  809e5b:	4a 8d 14 a0          	lea    (%rax,%r12,4),%rdx
  809e5f:	48 2b b5 e8 f3 ff ff 	sub    -0xc18(%rbp),%rsi
  809e66:	48 89 b5 18 f3 ff ff 	mov    %rsi,-0xce8(%rbp)
  809e6d:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
  809e74:	00 
  809e75:	44 89 85 78 fd ff ff 	mov    %r8d,-0x288(%rbp)
  809e7c:	4b 8d 04 be          	lea    (%r14,%r15,4),%rax
  809e80:	48 89 85 18 f8 ff ff 	mov    %rax,-0x7e8(%rbp)
  809e87:	48 f7 de             	neg    %rsi
  809e8a:	48 8b 85 70 f6 ff ff 	mov    -0x990(%rbp),%rax
  809e91:	41 83 e0 fe          	and    $0xfffffffe,%r8d
  809e95:	48 89 95 60 fa ff ff 	mov    %rdx,-0x5a0(%rbp)
  809e9c:	8b 95 a0 fd ff ff    	mov    -0x260(%rbp),%edx
  809ea2:	48 89 b5 70 fa ff ff 	mov    %rsi,-0x590(%rbp)
  809ea9:	48 8b b5 00 fd ff ff 	mov    -0x300(%rbp),%rsi
  809eb0:	4d 63 c0             	movslq %r8d,%r8
  809eb3:	2b 95 98 fd ff ff    	sub    -0x268(%rbp),%edx
  809eb9:	4c 89 85 e0 fe ff ff 	mov    %r8,-0x120(%rbp)
  809ec0:	4d 89 e0             	mov    %r12,%r8
  809ec3:	48 2b bd f0 f3 ff ff 	sub    -0xc10(%rbp),%rdi
  809eca:	ff c2                	inc    %edx
  809ecc:	4c 2b 85 20 f6 ff ff 	sub    -0x9e0(%rbp),%r8
  809ed3:	4c 8d 0c f5 00 00 00 	lea    0x0(,%rsi,8),%r9
  809eda:	00 
  809edb:	89 95 b0 f4 ff ff    	mov    %edx,-0xb50(%rbp)
  809ee1:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  809ee8:	00 
  809ee9:	8b 85 20 fa ff ff    	mov    -0x5e0(%rbp),%eax
  809eef:	48 f7 da             	neg    %rdx
  809ef2:	48 8b 8d 68 f6 ff ff 	mov    -0x998(%rbp),%rcx
  809ef9:	48 89 bd 10 f3 ff ff 	mov    %rdi,-0xcf0(%rbp)
  809f00:	4c 89 c7             	mov    %r8,%rdi
  809f03:	2b 85 18 fa ff ff    	sub    -0x5e8(%rbp),%eax
  809f09:	4c 03 95 18 f6 ff ff 	add    -0x9e8(%rbp),%r10
  809f10:	ff c0                	inc    %eax
  809f12:	4c 89 9d 28 f9 ff ff 	mov    %r11,-0x6d8(%rbp)
  809f19:	4d 03 ea             	add    %r10,%r13
  809f1c:	4c 8b 9d 50 fe ff ff 	mov    -0x1b0(%rbp),%r11
  809f23:	4e 8d 24 a1          	lea    (%rcx,%r12,4),%r12
  809f27:	48 c1 e7 05          	shl    $0x5,%rdi
  809f2b:	89 c1                	mov    %eax,%ecx
  809f2d:	49 c1 e0 0b          	shl    $0xb,%r8
  809f31:	4c 2b 8d a0 f3 ff ff 	sub    -0xc60(%rbp),%r9
  809f38:	4c 2b c7             	sub    %rdi,%r8
  809f3b:	44 89 9d 70 fd ff ff 	mov    %r11d,-0x290(%rbp)
  809f42:	41 83 e3 fc          	and    $0xfffffffc,%r11d
  809f46:	4c 89 ad 20 f8 ff ff 	mov    %r13,-0x7e0(%rbp)
  809f4d:	48 8d b5 78 f7 ff ff 	lea    -0x888(%rbp),%rsi
  809f54:	48 8b 3e             	mov    (%rsi),%rdi
  809f57:	4c 8d b5 98 f7 ff ff 	lea    -0x868(%rbp),%r14
  809f5e:	4d 8b 2e             	mov    (%r14),%r13
  809f61:	49 03 f9             	add    %r9,%rdi
  809f64:	4c 8d bd a0 f7 ff ff 	lea    -0x860(%rbp),%r15
  809f6b:	4d 8b 17             	mov    (%r15),%r10
  809f6e:	4d 03 e9             	add    %r9,%r13
  809f71:	4d 03 d1             	add    %r9,%r10
  809f74:	4d 63 db             	movslq %r11d,%r11
  809f77:	4c 89 9d 20 fb ff ff 	mov    %r11,-0x4e0(%rbp)
  809f7e:	4c 89 85 60 f8 ff ff 	mov    %r8,-0x7a0(%rbp)
  809f85:	4c 8b 9d 48 fb ff ff 	mov    -0x4b8(%rbp),%r11
  809f8c:	49 2b fb             	sub    %r11,%rdi
  809f8f:	4c 8b 85 90 f7 ff ff 	mov    -0x870(%rbp),%r8
  809f96:	4d 2b eb             	sub    %r11,%r13
  809f99:	d1 e9                	shr    %ecx
  809f9b:	4d 03 c1             	add    %r9,%r8
  809f9e:	4d 2b d3             	sub    %r11,%r10
  809fa1:	4c 89 a5 58 fa ff ff 	mov    %r12,-0x5a8(%rbp)
  809fa8:	4c 8b a5 88 f6 ff ff 	mov    -0x978(%rbp),%r12
  809faf:	49 03 fc             	add    %r12,%rdi
  809fb2:	89 8d c8 f7 ff ff    	mov    %ecx,-0x838(%rbp)
  809fb8:	4d 03 ec             	add    %r12,%r13
  809fbb:	48 89 95 68 fa ff ff 	mov    %rdx,-0x598(%rbp)
  809fc2:	4d 03 c4             	add    %r12,%r8
  809fc5:	48 89 8d 58 f7 ff ff 	mov    %rcx,-0x8a8(%rbp)
  809fcc:	4d 03 d4             	add    %r12,%r10
  809fcf:	48 89 3e             	mov    %rdi,(%rsi)
  809fd2:	4d 89 2e             	mov    %r13,(%r14)
  809fd5:	c5 fd 57 c0          	vxorpd %ymm0,%ymm0,%ymm0
  809fd9:	4c 89 85 90 f7 ff ff 	mov    %r8,-0x870(%rbp)
  809fe0:	4d 89 17             	mov    %r10,(%r15)
  809fe3:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  809fea:	48 8b 8d 28 f8 ff ff 	mov    -0x7d8(%rbp),%rcx
  809ff1:	48 8b 95 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdx
  809ff8:	4c 8b ad d8 f8 ff ff 	mov    -0x728(%rbp),%r13
  809fff:	4c 8b b5 e0 f8 ff ff 	mov    -0x720(%rbp),%r14
  80a006:	89 85 a8 f7 ff ff    	mov    %eax,-0x858(%rbp)
  80a00c:	48 83 bd 00 ff ff ff 	cmpq   $0x8,-0x100(%rbp)
  80a013:	08 
  80a014:	0f 85 bb 02 00 00    	jne    80a2d5 <t3dmix_mod_mp_t3dmix4_tile_+0x2545>
  80a01a:	48 83 bd f8 fe ff ff 	cmpq   $0x8,-0x108(%rbp)
  80a021:	08 
  80a022:	0f 85 ad 02 00 00    	jne    80a2d5 <t3dmix_mod_mp_t3dmix4_tile_+0x2545>
  80a028:	48 83 bd f0 fe ff ff 	cmpq   $0x8,-0x110(%rbp)
  80a02f:	08 
  80a030:	0f 85 9f 02 00 00    	jne    80a2d5 <t3dmix_mod_mp_t3dmix4_tile_+0x2545>
  80a036:	48 83 bd e8 fe ff ff 	cmpq   $0x8,-0x118(%rbp)
  80a03d:	08 
  80a03e:	0f 85 91 02 00 00    	jne    80a2d5 <t3dmix_mod_mp_t3dmix4_tile_+0x2545>
  80a044:	48 83 bd 18 ff ff ff 	cmpq   $0x8,-0xe8(%rbp)
  80a04b:	08 
  80a04c:	0f 85 83 02 00 00    	jne    80a2d5 <t3dmix_mod_mp_t3dmix4_tile_+0x2545>
  80a052:	48 83 bd 38 ff ff ff 	cmpq   $0x8,-0xc8(%rbp)
  80a059:	08 
  80a05a:	0f 85 75 02 00 00    	jne    80a2d5 <t3dmix_mod_mp_t3dmix4_tile_+0x2545>
  80a060:	44 8b 85 20 fa ff ff 	mov    -0x5e0(%rbp),%r8d
  80a067:	45 33 db             	xor    %r11d,%r11d
  80a06a:	48 8b 85 48 f3 ff ff 	mov    -0xcb8(%rbp),%rax
  80a071:	33 ff                	xor    %edi,%edi
  80a073:	4c 8b 95 f0 fc ff ff 	mov    -0x310(%rbp),%r10
  80a07a:	4c 8b 8d 38 f3 ff ff 	mov    -0xcc8(%rbp),%r9
  80a081:	48 89 85 10 f9 ff ff 	mov    %rax,-0x6f0(%rbp)
  80a088:	44 3b 85 18 fa ff ff 	cmp    -0x5e8(%rbp),%r8d
  80a08f:	4c 8b 85 40 f3 ff ff 	mov    -0xcc0(%rbp),%r8
  80a096:	0f 8c 3c 06 00 00    	jl     80a6d8 <t3dmix_mod_mp_t3dmix4_tile_+0x2948>
  80a09c:	48 8b 95 00 f9 ff ff 	mov    -0x700(%rbp),%rdx
  80a0a3:	48 8b 8d f0 f8 ff ff 	mov    -0x710(%rbp),%rcx
  80a0aa:	49 0f af d4          	imul   %r12,%rdx
  80a0ae:	49 0f af cc          	imul   %r12,%rcx
  80a0b2:	c5 fd 10 0d a6 b0 0b 	vmovupd 0xbb0a6(%rip),%ymm1        # 8c5160 <var$630.126.450+0x4a0>
  80a0b9:	00 
  80a0ba:	c5 fb 10 05 56 cf 0b 	vmovsd 0xbcf56(%rip),%xmm0        # 8c7018 <__STRLITPACK_199.115+0x88>
  80a0c1:	00 
  80a0c2:	48 8b b5 e8 f8 ff ff 	mov    -0x718(%rbp),%rsi
  80a0c9:	49 0f af f4          	imul   %r12,%rsi
  80a0cd:	48 8b 85 b8 f9 ff ff 	mov    -0x648(%rbp),%rax
  80a0d4:	4c 8b bd 38 f9 ff ff 	mov    -0x6c8(%rbp),%r15
  80a0db:	48 03 b5 78 f9 ff ff 	add    -0x688(%rbp),%rsi
  80a0e2:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80a0e9:	48 03 c2             	add    %rdx,%rax
  80a0ec:	48 03 95 a0 f9 ff ff 	add    -0x660(%rbp),%rdx
  80a0f3:	4c 03 f9             	add    %rcx,%r15
  80a0f6:	48 03 8d 28 f9 ff ff 	add    -0x6d8(%rbp),%rcx
  80a0fd:	48 89 95 98 fc ff ff 	mov    %rdx,-0x368(%rbp)
  80a104:	48 89 85 a0 fc ff ff 	mov    %rax,-0x360(%rbp)
  80a10b:	48 89 8d 88 fc ff ff 	mov    %rcx,-0x378(%rbp)
  80a112:	4c 89 bd 90 fc ff ff 	mov    %r15,-0x370(%rbp)
  80a119:	48 89 f8             	mov    %rdi,%rax
  80a11c:	48 8b 95 10 f9 ff ff 	mov    -0x6f0(%rbp),%rdx
  80a123:	8b 8d 38 fe ff ff    	mov    -0x1c8(%rbp),%ecx
  80a129:	3b 8d 98 fd ff ff    	cmp    -0x268(%rbp),%ecx
  80a12f:	0f 8c 5a 01 00 00    	jl     80a28f <t3dmix_mod_mp_t3dmix4_tile_+0x24ff>
  80a135:	48 83 7d e0 04       	cmpq   $0x4,-0x20(%rbp)
  80a13a:	0f 8c 55 2c 00 00    	jl     80cd95 <t3dmix_mod_mp_t3dmix4_tile_+0x5005>
  80a140:	4c 8b bd 98 fc ff ff 	mov    -0x368(%rbp),%r15
  80a147:	45 33 f6             	xor    %r14d,%r14d
  80a14a:	4c 8b ad 88 fc ff ff 	mov    -0x378(%rbp),%r13
  80a151:	4c 8b a5 90 fc ff ff 	mov    -0x370(%rbp),%r12
  80a158:	48 8b 8d b8 fc ff ff 	mov    -0x348(%rbp),%rcx
  80a15f:	4c 03 f8             	add    %rax,%r15
  80a162:	4c 89 bd b0 fc ff ff 	mov    %r15,-0x350(%rbp)
  80a169:	4c 03 ef             	add    %rdi,%r13
  80a16c:	4c 8b bd a0 fc ff ff 	mov    -0x360(%rbp),%r15
  80a173:	4c 03 e7             	add    %rdi,%r12
  80a176:	48 89 bd 78 fc ff ff 	mov    %rdi,-0x388(%rbp)
  80a17d:	4c 89 9d 80 fc ff ff 	mov    %r11,-0x380(%rbp)
  80a184:	4c 8b 9d b0 fc ff ff 	mov    -0x350(%rbp),%r11
  80a18b:	4c 03 f8             	add    %rax,%r15
  80a18e:	4c 89 bd a8 fc ff ff 	mov    %r15,-0x358(%rbp)
  80a195:	49 89 cf             	mov    %rcx,%r15
  80a198:	48 8b bd a8 fc ff ff 	mov    -0x358(%rbp),%rdi
  80a19f:	90                   	nop
  80a1a0:	c4 a1 75 59 14 f6    	vmulpd (%rsi,%r14,8),%ymm1,%ymm2
  80a1a6:	c4 81 7d 10 2c f4    	vmovupd (%r12,%r14,8),%ymm5
  80a1ac:	c4 01 7d 10 04 f3    	vmovupd (%r11,%r14,8),%ymm8
  80a1b2:	c4 81 6d 59 1c f1    	vmulpd (%r9,%r14,8),%ymm2,%ymm3
  80a1b8:	c4 81 55 58 7c f5 f8 	vaddpd -0x8(%r13,%r14,8),%ymm5,%ymm7
  80a1bf:	c4 21 3d 5c 54 f7 f8 	vsubpd -0x8(%rdi,%r14,8),%ymm8,%ymm10
  80a1c6:	c4 81 65 59 24 f0    	vmulpd (%r8,%r14,8),%ymm3,%ymm4
  80a1cc:	c4 a1 5d 59 34 f2    	vmulpd (%rdx,%r14,8),%ymm4,%ymm6
  80a1d2:	c5 4d 59 cf          	vmulpd %ymm7,%ymm6,%ymm9
  80a1d6:	c4 41 35 59 da       	vmulpd %ymm10,%ymm9,%ymm11
  80a1db:	c4 01 7d 11 1c f2    	vmovupd %ymm11,(%r10,%r14,8)
  80a1e1:	49 83 c6 04          	add    $0x4,%r14
  80a1e5:	4d 3b f7             	cmp    %r15,%r14
  80a1e8:	72 b6                	jb     80a1a0 <t3dmix_mod_mp_t3dmix4_tile_+0x2410>
  80a1ea:	48 8b bd 78 fc ff ff 	mov    -0x388(%rbp),%rdi
  80a1f1:	4c 8b 9d 80 fc ff ff 	mov    -0x380(%rbp),%r11
  80a1f8:	48 3b 4d e0          	cmp    -0x20(%rbp),%rcx
  80a1fc:	0f 83 8d 00 00 00    	jae    80a28f <t3dmix_mod_mp_t3dmix4_tile_+0x24ff>
  80a202:	4c 8b bd 88 fc ff ff 	mov    -0x378(%rbp),%r15
  80a209:	4c 8b b5 90 fc ff ff 	mov    -0x370(%rbp),%r14
  80a210:	4c 8b ad 98 fc ff ff 	mov    -0x368(%rbp),%r13
  80a217:	4c 8b a5 a0 fc ff ff 	mov    -0x360(%rbp),%r12
  80a21e:	4c 03 ff             	add    %rdi,%r15
  80a221:	4c 89 9d 80 fc ff ff 	mov    %r11,-0x380(%rbp)
  80a228:	4c 03 f7             	add    %rdi,%r14
  80a22b:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
  80a22f:	4c 03 e8             	add    %rax,%r13
  80a232:	4c 03 e0             	add    %rax,%r12
  80a235:	0f 1f 40 00          	nopl   0x0(%rax)
  80a239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  80a240:	c5 fb 59 14 ce       	vmulsd (%rsi,%rcx,8),%xmm0,%xmm2
  80a245:	c4 c1 6b 59 1c c9    	vmulsd (%r9,%rcx,8),%xmm2,%xmm3
  80a24b:	c4 c1 63 59 24 c8    	vmulsd (%r8,%rcx,8),%xmm3,%xmm4
  80a251:	c4 c1 7b 10 2c ce    	vmovsd (%r14,%rcx,8),%xmm5
  80a257:	c5 db 59 34 ca       	vmulsd (%rdx,%rcx,8),%xmm4,%xmm6
  80a25c:	c4 c1 53 58 7c cf f8 	vaddsd -0x8(%r15,%rcx,8),%xmm5,%xmm7
  80a263:	c4 41 7b 10 44 cd 00 	vmovsd 0x0(%r13,%rcx,8),%xmm8
  80a26a:	c5 4b 59 cf          	vmulsd %xmm7,%xmm6,%xmm9
  80a26e:	c4 41 3b 5c 54 cc f8 	vsubsd -0x8(%r12,%rcx,8),%xmm8,%xmm10
  80a275:	c4 41 33 59 da       	vmulsd %xmm10,%xmm9,%xmm11
  80a27a:	c4 41 7b 11 1c ca    	vmovsd %xmm11,(%r10,%rcx,8)
  80a280:	48 ff c1             	inc    %rcx
  80a283:	49 3b cb             	cmp    %r11,%rcx
  80a286:	72 b8                	jb     80a240 <t3dmix_mod_mp_t3dmix4_tile_+0x24b0>
  80a288:	4c 8b 9d 80 fc ff ff 	mov    -0x380(%rbp),%r11
  80a28f:	49 ff c3             	inc    %r11
  80a292:	4c 03 95 40 fe ff ff 	add    -0x1c0(%rbp),%r10
  80a299:	48 03 b5 c0 fd ff ff 	add    -0x240(%rbp),%rsi
  80a2a0:	4c 03 8d b8 fd ff ff 	add    -0x248(%rbp),%r9
  80a2a7:	4c 03 85 b0 fd ff ff 	add    -0x250(%rbp),%r8
  80a2ae:	48 03 95 a8 fd ff ff 	add    -0x258(%rbp),%rdx
  80a2b5:	48 03 bd d8 fd ff ff 	add    -0x228(%rbp),%rdi
  80a2bc:	48 03 85 f0 fd ff ff 	add    -0x210(%rbp),%rax
  80a2c3:	4c 3b 9d 48 fe ff ff 	cmp    -0x1b8(%rbp),%r11
  80a2ca:	0f 82 53 fe ff ff    	jb     80a123 <t3dmix_mod_mp_t3dmix4_tile_+0x2393>
  80a2d0:	e9 ee 03 00 00       	jmpq   80a6c3 <t3dmix_mod_mp_t3dmix4_tile_+0x2933>
  80a2d5:	45 33 db             	xor    %r11d,%r11d
  80a2d8:	8b 85 20 fa ff ff    	mov    -0x5e0(%rbp),%eax
  80a2de:	45 33 c0             	xor    %r8d,%r8d
  80a2e1:	48 8b bd 48 fa ff ff 	mov    -0x5b8(%rbp),%rdi
  80a2e8:	33 f6                	xor    %esi,%esi
  80a2ea:	4c 8b 95 38 fa ff ff 	mov    -0x5c8(%rbp),%r10
  80a2f1:	4c 8b 8d 40 fa ff ff 	mov    -0x5c0(%rbp),%r9
  80a2f8:	48 8b 8d f0 fc ff ff 	mov    -0x310(%rbp),%rcx
  80a2ff:	3b 85 18 fa ff ff    	cmp    -0x5e8(%rbp),%eax
  80a305:	0f 8c cd 03 00 00    	jl     80a6d8 <t3dmix_mod_mp_t3dmix4_tile_+0x2948>
  80a30b:	48 8b 95 e8 f8 ff ff 	mov    -0x718(%rbp),%rdx
  80a312:	49 0f af d4          	imul   %r12,%rdx
  80a316:	48 03 95 58 f9 ff ff 	add    -0x6a8(%rbp),%rdx
  80a31d:	48 89 95 20 f9 ff ff 	mov    %rdx,-0x6e0(%rbp)
  80a324:	48 8b 95 f0 f8 ff ff 	mov    -0x710(%rbp),%rdx
  80a32b:	49 0f af d4          	imul   %r12,%rdx
  80a32f:	48 8b 85 40 f9 ff ff 	mov    -0x6c0(%rbp),%rax
  80a336:	4c 89 85 28 fe ff ff 	mov    %r8,-0x1d8(%rbp)
  80a33d:	4c 89 4d a8          	mov    %r9,-0x58(%rbp)
  80a341:	4c 89 55 a0          	mov    %r10,-0x60(%rbp)
  80a345:	4c 8d 3c 10          	lea    (%rax,%rdx,1),%r15
  80a349:	48 8b 85 00 f9 ff ff 	mov    -0x700(%rbp),%rax
  80a350:	49 0f af c4          	imul   %r12,%rax
  80a354:	4c 89 bd b8 fb ff ff 	mov    %r15,-0x448(%rbp)
  80a35b:	4c 8b bd 50 f9 ff ff 	mov    -0x6b0(%rbp),%r15
  80a362:	48 03 95 88 f9 ff ff 	add    -0x678(%rbp),%rdx
  80a369:	48 89 95 58 fc ff ff 	mov    %rdx,-0x3a8(%rbp)
  80a370:	4c 89 9d 20 fe ff ff 	mov    %r11,-0x1e0(%rbp)
  80a377:	4c 03 f8             	add    %rax,%r15
  80a37a:	48 03 85 b0 f9 ff ff 	add    -0x650(%rbp),%rax
  80a381:	48 8b 95 20 f9 ff ff 	mov    -0x6e0(%rbp),%rdx
  80a388:	4c 89 bd b0 fb ff ff 	mov    %r15,-0x450(%rbp)
  80a38f:	48 89 85 50 fc ff ff 	mov    %rax,-0x3b0(%rbp)
  80a396:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80a39d:	c5 fb 10 0d 73 cc 0b 	vmovsd 0xbcc73(%rip),%xmm1        # 8c7018 <__STRLITPACK_199.115+0x88>
  80a3a4:	00 
  80a3a5:	c5 f9 10 05 f3 c3 0b 	vmovupd 0xbc3f3(%rip),%xmm0        # 8c67a0 <__STRLITPACK_19.34+0x10>
  80a3ac:	00 
  80a3ad:	8b 85 38 fe ff ff    	mov    -0x1c8(%rbp),%eax
  80a3b3:	3b 85 98 fd ff ff    	cmp    -0x268(%rbp),%eax
  80a3b9:	0f 8c 97 02 00 00    	jl     80a656 <t3dmix_mod_mp_t3dmix4_tile_+0x28c6>
  80a3bf:	48 83 7d e0 02       	cmpq   $0x2,-0x20(%rbp)
  80a3c4:	0f 8c d4 2b 00 00    	jl     80cf9e <t3dmix_mod_mp_t3dmix4_tile_+0x520e>
  80a3ca:	4c 8b 8d b0 fb ff ff 	mov    -0x450(%rbp),%r9
  80a3d1:	45 33 e4             	xor    %r12d,%r12d
  80a3d4:	4c 8b 9d b8 fb ff ff 	mov    -0x448(%rbp),%r11
  80a3db:	4c 8b 85 28 fe ff ff 	mov    -0x1d8(%rbp),%r8
  80a3e2:	4c 8b bd 58 fc ff ff 	mov    -0x3a8(%rbp),%r15
  80a3e9:	4d 8d 14 31          	lea    (%r9,%rsi,1),%r10
  80a3ed:	4c 89 55 b8          	mov    %r10,-0x48(%rbp)
  80a3f1:	45 33 d2             	xor    %r10d,%r10d
  80a3f4:	4c 8b ad 50 fc ff ff 	mov    -0x3b0(%rbp),%r13
  80a3fb:	45 33 c9             	xor    %r9d,%r9d
  80a3fe:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  80a402:	4d 03 d8             	add    %r8,%r11
  80a405:	48 89 85 70 fc ff ff 	mov    %rax,-0x390(%rbp)
  80a40c:	4d 03 f8             	add    %r8,%r15
  80a40f:	45 33 c0             	xor    %r8d,%r8d
  80a412:	4d 8d 74 35 00       	lea    0x0(%r13,%rsi,1),%r14
  80a417:	4c 89 75 b0          	mov    %r14,-0x50(%rbp)
  80a41b:	45 33 f6             	xor    %r14d,%r14d
  80a41e:	45 33 ed             	xor    %r13d,%r13d
  80a421:	4c 89 7d c0          	mov    %r15,-0x40(%rbp)
  80a425:	48 89 b5 68 fc ff ff 	mov    %rsi,-0x398(%rbp)
  80a42c:	4d 89 ef             	mov    %r13,%r15
  80a42f:	48 8b b5 00 ff ff ff 	mov    -0x100(%rbp),%rsi
  80a436:	4a 8d 04 12          	lea    (%rdx,%r10,1),%rax
  80a43a:	c5 fb 10 10          	vmovsd (%rax),%xmm2
  80a43e:	c5 e9 16 1c 30       	vmovhpd (%rax,%rsi,1),%xmm2,%xmm3
  80a443:	4d 8d 14 72          	lea    (%r10,%rsi,2),%r10
  80a447:	c5 f9 59 eb          	vmulpd %xmm3,%xmm0,%xmm5
  80a44b:	48 8b b5 f8 fe ff ff 	mov    -0x108(%rbp),%rsi
  80a452:	4a 8d 04 0f          	lea    (%rdi,%r9,1),%rax
  80a456:	c5 fb 10 20          	vmovsd (%rax),%xmm4
  80a45a:	c5 d9 16 34 30       	vmovhpd (%rax,%rsi,1),%xmm4,%xmm6
  80a45f:	4d 8d 0c 71          	lea    (%r9,%rsi,2),%r9
  80a463:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  80a467:	c5 51 59 c6          	vmulpd %xmm6,%xmm5,%xmm8
  80a46b:	4a 8d 34 00          	lea    (%rax,%r8,1),%rsi
  80a46f:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
  80a476:	c5 fb 10 3e          	vmovsd (%rsi),%xmm7
  80a47a:	c5 41 16 0c 06       	vmovhpd (%rsi,%rax,1),%xmm7,%xmm9
  80a47f:	4d 8d 04 40          	lea    (%r8,%rax,2),%r8
  80a483:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
  80a487:	c4 41 39 59 d9       	vmulpd %xmm9,%xmm8,%xmm11
  80a48c:	4a 8d 04 36          	lea    (%rsi,%r14,1),%rax
  80a490:	48 8b b5 e8 fe ff ff 	mov    -0x118(%rbp),%rsi
  80a497:	c5 7b 10 10          	vmovsd (%rax),%xmm10
  80a49b:	c5 29 16 24 30       	vmovhpd (%rax,%rsi,1),%xmm10,%xmm12
  80a4a0:	4d 8d 34 76          	lea    (%r14,%rsi,2),%r14
  80a4a4:	48 8b b5 18 ff ff ff 	mov    -0xe8(%rbp),%rsi
  80a4ab:	4b 8d 04 2b          	lea    (%r11,%r13,1),%rax
  80a4af:	c5 7b 10 28          	vmovsd (%rax),%xmm13
  80a4b3:	c4 c1 21 59 d4       	vmulpd %xmm12,%xmm11,%xmm2
  80a4b8:	c5 11 16 3c 30       	vmovhpd (%rax,%rsi,1),%xmm13,%xmm15
  80a4bd:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  80a4c1:	49 03 c5             	add    %r13,%rax
  80a4c4:	c5 7b 10 30          	vmovsd (%rax),%xmm14
  80a4c8:	4d 8d 6c 75 00       	lea    0x0(%r13,%rsi,2),%r13
  80a4cd:	c5 09 16 2c 30       	vmovhpd (%rax,%rsi,1),%xmm14,%xmm13
  80a4d2:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
  80a4d6:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
  80a4dd:	c4 c1 01 58 dd       	vaddpd %xmm13,%xmm15,%xmm3
  80a4e2:	c5 69 59 c3          	vmulpd %xmm3,%xmm2,%xmm8
  80a4e6:	49 03 f7             	add    %r15,%rsi
  80a4e9:	c5 fb 10 26          	vmovsd (%rsi),%xmm4
  80a4ed:	c5 d9 16 34 06       	vmovhpd (%rsi,%rax,1),%xmm4,%xmm6
  80a4f2:	48 8b 75 b0          	mov    -0x50(%rbp),%rsi
  80a4f6:	49 03 f7             	add    %r15,%rsi
  80a4f9:	c5 fb 10 2e          	vmovsd (%rsi),%xmm5
  80a4fd:	4d 8d 3c 47          	lea    (%r15,%rax,2),%r15
  80a501:	c5 d1 16 3c 06       	vmovhpd (%rsi,%rax,1),%xmm5,%xmm7
  80a506:	c5 49 5c cf          	vsubpd %xmm7,%xmm6,%xmm9
  80a50a:	c4 41 39 59 d1       	vmulpd %xmm9,%xmm8,%xmm10
  80a50f:	c4 21 79 11 14 e1    	vmovupd %xmm10,(%rcx,%r12,8)
  80a515:	49 83 c4 02          	add    $0x2,%r12
  80a519:	4c 3b 65 c8          	cmp    -0x38(%rbp),%r12
  80a51d:	0f 82 0c ff ff ff    	jb     80a42f <t3dmix_mod_mp_t3dmix4_tile_+0x269f>
  80a523:	48 8b 85 70 fc ff ff 	mov    -0x390(%rbp),%rax
  80a52a:	48 8b b5 68 fc ff ff 	mov    -0x398(%rbp),%rsi
  80a531:	4c 8b 9d 38 ff ff ff 	mov    -0xc8(%rbp),%r11
  80a538:	4c 8b 95 18 ff ff ff 	mov    -0xe8(%rbp),%r10
  80a53f:	4c 8b 8d f8 fe ff ff 	mov    -0x108(%rbp),%r9
  80a546:	4c 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%r8
  80a54d:	4c 8b ad f0 fe ff ff 	mov    -0x110(%rbp),%r13
  80a554:	4c 8b a5 00 ff ff ff 	mov    -0x100(%rbp),%r12
  80a55b:	4c 0f af d8          	imul   %rax,%r11
  80a55f:	4c 0f af d0          	imul   %rax,%r10
  80a563:	4c 0f af c8          	imul   %rax,%r9
  80a567:	4c 0f af c0          	imul   %rax,%r8
  80a56b:	4c 0f af e8          	imul   %rax,%r13
  80a56f:	4c 0f af e0          	imul   %rax,%r12
  80a573:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  80a577:	0f 83 d9 00 00 00    	jae    80a656 <t3dmix_mod_mp_t3dmix4_tile_+0x28c6>
  80a57d:	4c 8b bd b8 fb ff ff 	mov    -0x448(%rbp),%r15
  80a584:	4c 8b b5 28 fe ff ff 	mov    -0x1d8(%rbp),%r14
  80a58b:	48 89 b5 68 fc ff ff 	mov    %rsi,-0x398(%rbp)
  80a592:	4d 03 fe             	add    %r14,%r15
  80a595:	4c 89 7d 98          	mov    %r15,-0x68(%rbp)
  80a599:	4c 8b bd 58 fc ff ff 	mov    -0x3a8(%rbp),%r15
  80a5a0:	4d 03 f7             	add    %r15,%r14
  80a5a3:	4c 8b bd 50 fc ff ff 	mov    -0x3b0(%rbp),%r15
  80a5aa:	4c 89 b5 60 fc ff ff 	mov    %r14,-0x3a0(%rbp)
  80a5b1:	4c 8b b5 b0 fb ff ff 	mov    -0x450(%rbp),%r14
  80a5b8:	4c 03 fe             	add    %rsi,%r15
  80a5bb:	4c 89 7d 90          	mov    %r15,-0x70(%rbp)
  80a5bf:	4c 03 f6             	add    %rsi,%r14
  80a5c2:	48 8b b5 60 fc ff ff 	mov    -0x3a0(%rbp),%rsi
  80a5c9:	c4 c1 73 59 14 14    	vmulsd (%r12,%rdx,1),%xmm1,%xmm2
  80a5cf:	c4 c1 6b 59 1c 39    	vmulsd (%r9,%rdi,1),%xmm2,%xmm3
  80a5d5:	4c 8b 7d a0          	mov    -0x60(%rbp),%r15
  80a5d9:	c4 01 7b 10 04 33    	vmovsd (%r11,%r14,1),%xmm8
  80a5df:	4c 03 a5 00 ff ff ff 	add    -0x100(%rbp),%r12
  80a5e6:	c4 81 63 59 64 3d 00 	vmulsd 0x0(%r13,%r15,1),%xmm3,%xmm4
  80a5ed:	4c 8b 7d a8          	mov    -0x58(%rbp),%r15
  80a5f1:	4c 03 ad f0 fe ff ff 	add    -0x110(%rbp),%r13
  80a5f8:	4c 03 8d f8 fe ff ff 	add    -0x108(%rbp),%r9
  80a5ff:	c4 81 5b 59 34 38    	vmulsd (%r8,%r15,1),%xmm4,%xmm6
  80a605:	4c 8b 7d 98          	mov    -0x68(%rbp),%r15
  80a609:	4c 03 85 e8 fe ff ff 	add    -0x118(%rbp),%r8
  80a610:	c4 81 7b 10 2c 3a    	vmovsd (%r10,%r15,1),%xmm5
  80a616:	4c 8b 7d 90          	mov    -0x70(%rbp),%r15
  80a61a:	c4 c1 53 58 3c 32    	vaddsd (%r10,%rsi,1),%xmm5,%xmm7
  80a620:	c4 01 3b 5c 14 3b    	vsubsd (%r11,%r15,1),%xmm8,%xmm10
  80a626:	c5 4b 59 cf          	vmulsd %xmm7,%xmm6,%xmm9
  80a62a:	c4 41 33 59 da       	vmulsd %xmm10,%xmm9,%xmm11
  80a62f:	c5 7b 11 1c c1       	vmovsd %xmm11,(%rcx,%rax,8)
  80a634:	48 ff c0             	inc    %rax
  80a637:	4c 03 95 18 ff ff ff 	add    -0xe8(%rbp),%r10
  80a63e:	4c 03 9d 38 ff ff ff 	add    -0xc8(%rbp),%r11
  80a645:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  80a649:	0f 82 7a ff ff ff    	jb     80a5c9 <t3dmix_mod_mp_t3dmix4_tile_+0x2839>
  80a64f:	48 8b b5 68 fc ff ff 	mov    -0x398(%rbp),%rsi
  80a656:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  80a65a:	4c 8b 45 a8          	mov    -0x58(%rbp),%r8
  80a65e:	4c 8b 8d 28 fe ff ff 	mov    -0x1d8(%rbp),%r9
  80a665:	4c 8b 95 20 fe ff ff 	mov    -0x1e0(%rbp),%r10
  80a66c:	49 ff c2             	inc    %r10
  80a66f:	48 03 85 b0 fd ff ff 	add    -0x250(%rbp),%rax
  80a676:	4c 03 85 a8 fd ff ff 	add    -0x258(%rbp),%r8
  80a67d:	4c 03 8d d8 fd ff ff 	add    -0x228(%rbp),%r9
  80a684:	48 03 95 c0 fd ff ff 	add    -0x240(%rbp),%rdx
  80a68b:	48 03 bd b8 fd ff ff 	add    -0x248(%rbp),%rdi
  80a692:	48 03 b5 f0 fd ff ff 	add    -0x210(%rbp),%rsi
  80a699:	48 03 8d 40 fe ff ff 	add    -0x1c0(%rbp),%rcx
  80a6a0:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  80a6a4:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  80a6a8:	4c 89 8d 28 fe ff ff 	mov    %r9,-0x1d8(%rbp)
  80a6af:	4c 89 95 20 fe ff ff 	mov    %r10,-0x1e0(%rbp)
  80a6b6:	4c 3b 95 48 fe ff ff 	cmp    -0x1b8(%rbp),%r10
  80a6bd:	0f 82 ea fc ff ff    	jb     80a3ad <t3dmix_mod_mp_t3dmix4_tile_+0x261d>
  80a6c3:	4c 8b ad d8 f8 ff ff 	mov    -0x728(%rbp),%r13
  80a6ca:	4c 8b b5 e0 f8 ff ff 	mov    -0x720(%rbp),%r14
  80a6d1:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  80a6d8:	48 83 bd 28 ff ff ff 	cmpq   $0x8,-0xd8(%rbp)
  80a6df:	08 
  80a6e0:	0f 85 f8 02 00 00    	jne    80a9de <t3dmix_mod_mp_t3dmix4_tile_+0x2c4e>
  80a6e6:	48 83 bd 20 ff ff ff 	cmpq   $0x8,-0xe0(%rbp)
  80a6ed:	08 
  80a6ee:	0f 85 ea 02 00 00    	jne    80a9de <t3dmix_mod_mp_t3dmix4_tile_+0x2c4e>
  80a6f4:	48 83 bd 10 ff ff ff 	cmpq   $0x8,-0xf0(%rbp)
  80a6fb:	08 
  80a6fc:	0f 85 dc 02 00 00    	jne    80a9de <t3dmix_mod_mp_t3dmix4_tile_+0x2c4e>
  80a702:	48 83 bd 08 ff ff ff 	cmpq   $0x8,-0xf8(%rbp)
  80a709:	08 
  80a70a:	0f 85 ce 02 00 00    	jne    80a9de <t3dmix_mod_mp_t3dmix4_tile_+0x2c4e>
  80a710:	48 83 bd 18 ff ff ff 	cmpq   $0x8,-0xe8(%rbp)
  80a717:	08 
  80a718:	0f 85 ad 02 00 00    	jne    80a9cb <t3dmix_mod_mp_t3dmix4_tile_+0x2c3b>
  80a71e:	48 83 bd 38 ff ff ff 	cmpq   $0x8,-0xc8(%rbp)
  80a725:	08 
  80a726:	0f 85 8c 02 00 00    	jne    80a9b8 <t3dmix_mod_mp_t3dmix4_tile_+0x2c28>
  80a72c:	44 8b 85 18 fa ff ff 	mov    -0x5e8(%rbp),%r8d
  80a733:	45 33 db             	xor    %r11d,%r11d
  80a736:	48 8b 85 30 f3 ff ff 	mov    -0xcd0(%rbp),%rax
  80a73d:	33 ff                	xor    %edi,%edi
  80a73f:	4c 8b 95 d0 fc ff ff 	mov    -0x330(%rbp),%r10
  80a746:	4c 8b 8d 20 f3 ff ff 	mov    -0xce0(%rbp),%r9
  80a74d:	48 89 85 18 f9 ff ff 	mov    %rax,-0x6e8(%rbp)
  80a754:	44 3b 85 28 fa ff ff 	cmp    -0x5d8(%rbp),%r8d
  80a75b:	4c 8b 85 28 f3 ff ff 	mov    -0xcd8(%rbp),%r8
  80a762:	0f 8f be 06 00 00    	jg     80ae26 <t3dmix_mod_mp_t3dmix4_tile_+0x3096>
  80a768:	48 8b 95 00 f9 ff ff 	mov    -0x700(%rbp),%rdx
  80a76f:	48 8b 8d f0 f8 ff ff 	mov    -0x710(%rbp),%rcx
  80a776:	49 0f af d4          	imul   %r12,%rdx
  80a77a:	49 0f af cc          	imul   %r12,%rcx
  80a77e:	c5 fd 10 0d da a9 0b 	vmovupd 0xba9da(%rip),%ymm1        # 8c5160 <var$630.126.450+0x4a0>
  80a785:	00 
  80a786:	c5 fb 10 05 8a c8 0b 	vmovsd 0xbc88a(%rip),%xmm0        # 8c7018 <__STRLITPACK_199.115+0x88>
  80a78d:	00 
  80a78e:	48 8b b5 f8 f8 ff ff 	mov    -0x708(%rbp),%rsi
  80a795:	49 0f af f4          	imul   %r12,%rsi
  80a799:	48 8b 85 a8 f9 ff ff 	mov    -0x658(%rbp),%rax
  80a7a0:	4c 8b bd 38 f9 ff ff 	mov    -0x6c8(%rbp),%r15
  80a7a7:	48 03 b5 98 f9 ff ff 	add    -0x668(%rbp),%rsi
  80a7ae:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80a7b5:	48 03 c2             	add    %rdx,%rax
  80a7b8:	48 03 95 a0 f9 ff ff 	add    -0x660(%rbp),%rdx
  80a7bf:	4c 03 f9             	add    %rcx,%r15
  80a7c2:	48 03 8d 48 f9 ff ff 	add    -0x6b8(%rbp),%rcx
  80a7c9:	48 89 95 30 fc ff ff 	mov    %rdx,-0x3d0(%rbp)
  80a7d0:	48 89 85 38 fc ff ff 	mov    %rax,-0x3c8(%rbp)
  80a7d7:	48 89 8d 20 fc ff ff 	mov    %rcx,-0x3e0(%rbp)
  80a7de:	4c 89 bd 28 fc ff ff 	mov    %r15,-0x3d8(%rbp)
  80a7e5:	48 89 f8             	mov    %rdi,%rax
  80a7e8:	48 8b 95 18 f9 ff ff 	mov    -0x6e8(%rbp),%rdx
  80a7ef:	8b 8d a0 fd ff ff    	mov    -0x260(%rbp),%ecx
  80a7f5:	3b 8d 98 fd ff ff    	cmp    -0x268(%rbp),%ecx
  80a7fb:	0f 8c 5c 01 00 00    	jl     80a95d <t3dmix_mod_mp_t3dmix4_tile_+0x2bcd>
  80a801:	48 83 bd 50 ff ff ff 	cmpq   $0x4,-0xb0(%rbp)
  80a808:	04 
  80a809:	0f 8c 8d 25 00 00    	jl     80cd9c <t3dmix_mod_mp_t3dmix4_tile_+0x500c>
  80a80f:	4c 8b bd 30 fc ff ff 	mov    -0x3d0(%rbp),%r15
  80a816:	45 33 f6             	xor    %r14d,%r14d
  80a819:	4c 8b ad 20 fc ff ff 	mov    -0x3e0(%rbp),%r13
  80a820:	4c 8b a5 28 fc ff ff 	mov    -0x3d8(%rbp),%r12
  80a827:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  80a82b:	4c 03 f8             	add    %rax,%r15
  80a82e:	4c 89 bd 48 fc ff ff 	mov    %r15,-0x3b8(%rbp)
  80a835:	4c 03 ef             	add    %rdi,%r13
  80a838:	4c 8b bd 38 fc ff ff 	mov    -0x3c8(%rbp),%r15
  80a83f:	4c 03 e7             	add    %rdi,%r12
  80a842:	48 89 bd 10 fc ff ff 	mov    %rdi,-0x3f0(%rbp)
  80a849:	4c 89 9d 18 fc ff ff 	mov    %r11,-0x3e8(%rbp)
  80a850:	4c 8b 9d 48 fc ff ff 	mov    -0x3b8(%rbp),%r11
  80a857:	4c 03 f8             	add    %rax,%r15
  80a85a:	4c 89 bd 40 fc ff ff 	mov    %r15,-0x3c0(%rbp)
  80a861:	49 89 cf             	mov    %rcx,%r15
  80a864:	48 8b bd 40 fc ff ff 	mov    -0x3c0(%rbp),%rdi
  80a86b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  80a870:	c4 a1 75 59 14 f6    	vmulpd (%rsi,%r14,8),%ymm1,%ymm2
  80a876:	c4 81 7d 10 2c f4    	vmovupd (%r12,%r14,8),%ymm5
  80a87c:	c4 01 7d 10 04 f3    	vmovupd (%r11,%r14,8),%ymm8
  80a882:	c4 81 6d 59 1c f1    	vmulpd (%r9,%r14,8),%ymm2,%ymm3
  80a888:	c4 81 55 58 7c f5 00 	vaddpd 0x0(%r13,%r14,8),%ymm5,%ymm7
  80a88f:	c4 21 3d 5c 14 f7    	vsubpd (%rdi,%r14,8),%ymm8,%ymm10
  80a895:	c4 81 65 59 24 f0    	vmulpd (%r8,%r14,8),%ymm3,%ymm4
  80a89b:	c4 a1 5d 59 34 f2    	vmulpd (%rdx,%r14,8),%ymm4,%ymm6
  80a8a1:	c5 4d 59 cf          	vmulpd %ymm7,%ymm6,%ymm9
  80a8a5:	c4 41 35 59 da       	vmulpd %ymm10,%ymm9,%ymm11
  80a8aa:	c4 01 7d 11 1c f2    	vmovupd %ymm11,(%r10,%r14,8)
  80a8b0:	49 83 c6 04          	add    $0x4,%r14
  80a8b4:	4d 3b f7             	cmp    %r15,%r14
  80a8b7:	72 b7                	jb     80a870 <t3dmix_mod_mp_t3dmix4_tile_+0x2ae0>
  80a8b9:	48 8b bd 10 fc ff ff 	mov    -0x3f0(%rbp),%rdi
  80a8c0:	4c 8b 9d 18 fc ff ff 	mov    -0x3e8(%rbp),%r11
  80a8c7:	48 3b 8d 50 ff ff ff 	cmp    -0xb0(%rbp),%rcx
  80a8ce:	0f 83 89 00 00 00    	jae    80a95d <t3dmix_mod_mp_t3dmix4_tile_+0x2bcd>
  80a8d4:	4c 8b bd 20 fc ff ff 	mov    -0x3e0(%rbp),%r15
  80a8db:	4c 8b b5 28 fc ff ff 	mov    -0x3d8(%rbp),%r14
  80a8e2:	4c 8b ad 30 fc ff ff 	mov    -0x3d0(%rbp),%r13
  80a8e9:	4c 8b a5 38 fc ff ff 	mov    -0x3c8(%rbp),%r12
  80a8f0:	4c 03 ff             	add    %rdi,%r15
  80a8f3:	4c 89 9d 18 fc ff ff 	mov    %r11,-0x3e8(%rbp)
  80a8fa:	4c 03 f7             	add    %rdi,%r14
  80a8fd:	4c 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11
  80a904:	4c 03 e8             	add    %rax,%r13
  80a907:	4c 03 e0             	add    %rax,%r12
  80a90a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  80a910:	c5 fb 59 14 ce       	vmulsd (%rsi,%rcx,8),%xmm0,%xmm2
  80a915:	c4 c1 6b 59 1c c9    	vmulsd (%r9,%rcx,8),%xmm2,%xmm3
  80a91b:	c4 c1 63 59 24 c8    	vmulsd (%r8,%rcx,8),%xmm3,%xmm4
  80a921:	c4 c1 7b 10 2c ce    	vmovsd (%r14,%rcx,8),%xmm5
  80a927:	c5 db 59 34 ca       	vmulsd (%rdx,%rcx,8),%xmm4,%xmm6
  80a92c:	c4 c1 53 58 3c cf    	vaddsd (%r15,%rcx,8),%xmm5,%xmm7
  80a932:	c4 41 7b 10 44 cd 00 	vmovsd 0x0(%r13,%rcx,8),%xmm8
  80a939:	c5 4b 59 cf          	vmulsd %xmm7,%xmm6,%xmm9
  80a93d:	c4 41 3b 5c 14 cc    	vsubsd (%r12,%rcx,8),%xmm8,%xmm10
  80a943:	c4 41 33 59 da       	vmulsd %xmm10,%xmm9,%xmm11
  80a948:	c4 41 7b 11 1c ca    	vmovsd %xmm11,(%r10,%rcx,8)
  80a94e:	48 ff c1             	inc    %rcx
  80a951:	49 3b cb             	cmp    %r11,%rcx
  80a954:	72 ba                	jb     80a910 <t3dmix_mod_mp_t3dmix4_tile_+0x2b80>
  80a956:	4c 8b 9d 18 fc ff ff 	mov    -0x3e8(%rbp),%r11
  80a95d:	49 ff c3             	inc    %r11
  80a960:	4c 03 95 40 fe ff ff 	add    -0x1c0(%rbp),%r10
  80a967:	48 03 b5 e8 fd ff ff 	add    -0x218(%rbp),%rsi
  80a96e:	4c 03 8d e0 fd ff ff 	add    -0x220(%rbp),%r9
  80a975:	4c 03 85 d0 fd ff ff 	add    -0x230(%rbp),%r8
  80a97c:	48 03 95 c8 fd ff ff 	add    -0x238(%rbp),%rdx
  80a983:	48 03 bd d8 fd ff ff 	add    -0x228(%rbp),%rdi
  80a98a:	48 03 85 f0 fd ff ff 	add    -0x210(%rbp),%rax
  80a991:	4c 3b 9d 30 fe ff ff 	cmp    -0x1d0(%rbp),%r11
  80a998:	0f 82 51 fe ff ff    	jb     80a7ef <t3dmix_mod_mp_t3dmix4_tile_+0x2a5f>
  80a99e:	4c 8b ad d8 f8 ff ff 	mov    -0x728(%rbp),%r13
  80a9a5:	4c 8b b5 e0 f8 ff ff 	mov    -0x720(%rbp),%r14
  80a9ac:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  80a9b3:	e9 6e 04 00 00       	jmpq   80ae26 <t3dmix_mod_mp_t3dmix4_tile_+0x3096>
  80a9b8:	8b 85 18 fa ff ff    	mov    -0x5e8(%rbp),%eax
  80a9be:	3b 85 28 fa ff ff    	cmp    -0x5d8(%rbp),%eax
  80a9c4:	7e 2a                	jle    80a9f0 <t3dmix_mod_mp_t3dmix4_tile_+0x2c60>
  80a9c6:	e9 5b 04 00 00       	jmpq   80ae26 <t3dmix_mod_mp_t3dmix4_tile_+0x3096>
  80a9cb:	8b 85 18 fa ff ff    	mov    -0x5e8(%rbp),%eax
  80a9d1:	3b 85 28 fa ff ff    	cmp    -0x5d8(%rbp),%eax
  80a9d7:	7e 17                	jle    80a9f0 <t3dmix_mod_mp_t3dmix4_tile_+0x2c60>
  80a9d9:	e9 16 06 00 00       	jmpq   80aff4 <t3dmix_mod_mp_t3dmix4_tile_+0x3264>
  80a9de:	8b 85 18 fa ff ff    	mov    -0x5e8(%rbp),%eax
  80a9e4:	3b 85 28 fa ff ff    	cmp    -0x5d8(%rbp),%eax
  80a9ea:	0f 8f 28 04 00 00    	jg     80ae18 <t3dmix_mod_mp_t3dmix4_tile_+0x3088>
  80a9f0:	4c 8b 85 f0 f8 ff ff 	mov    -0x710(%rbp),%r8
  80a9f7:	45 33 c9             	xor    %r9d,%r9d
  80a9fa:	4d 0f af c4          	imul   %r12,%r8
  80a9fe:	48 8b 85 40 f9 ff ff 	mov    -0x6c0(%rbp),%rax
  80aa05:	4c 8b 9d f8 f8 ff ff 	mov    -0x708(%rbp),%r11
  80aa0c:	4d 0f af dc          	imul   %r12,%r11
  80aa10:	48 8b 8d 50 f9 ff ff 	mov    -0x6b0(%rbp),%rcx
  80aa17:	4a 8d 14 00          	lea    (%rax,%r8,1),%rdx
  80aa1b:	48 8b 85 00 f9 ff ff 	mov    -0x700(%rbp),%rax
  80aa22:	49 0f af c4          	imul   %r12,%rax
  80aa26:	4c 03 85 80 f9 ff ff 	add    -0x680(%rbp),%r8
  80aa2d:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
  80aa31:	48 03 85 30 f9 ff ff 	add    -0x6d0(%rbp),%rax
  80aa38:	4c 03 9d 60 f9 ff ff 	add    -0x6a0(%rbp),%r11
  80aa3f:	4c 8b 95 68 f9 ff ff 	mov    -0x698(%rbp),%r10
  80aa46:	48 89 95 c0 fb ff ff 	mov    %rdx,-0x440(%rbp)
  80aa4d:	33 d2                	xor    %edx,%edx
  80aa4f:	48 8b b5 d0 fc ff ff 	mov    -0x330(%rbp),%rsi
  80aa56:	48 8b bd 90 f9 ff ff 	mov    -0x670(%rbp),%rdi
  80aa5d:	48 8b 8d 70 f9 ff ff 	mov    -0x690(%rbp),%rcx
  80aa64:	48 89 95 08 fe ff ff 	mov    %rdx,-0x1f8(%rbp)
  80aa6b:	4c 89 95 70 ff ff ff 	mov    %r10,-0x90(%rbp)
  80aa72:	4c 89 9d 68 ff ff ff 	mov    %r11,-0x98(%rbp)
  80aa79:	48 89 85 d8 fb ff ff 	mov    %rax,-0x428(%rbp)
  80aa80:	4c 89 85 e0 fb ff ff 	mov    %r8,-0x420(%rbp)
  80aa87:	4c 89 bd e8 fb ff ff 	mov    %r15,-0x418(%rbp)
  80aa8e:	4c 89 8d 18 fe ff ff 	mov    %r9,-0x1e8(%rbp)
  80aa95:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80aa9c:	c5 fb 10 0d 74 c5 0b 	vmovsd 0xbc574(%rip),%xmm1        # 8c7018 <__STRLITPACK_199.115+0x88>
  80aaa3:	00 
  80aaa4:	c5 f9 10 05 f4 bc 0b 	vmovupd 0xbbcf4(%rip),%xmm0        # 8c67a0 <__STRLITPACK_19.34+0x10>
  80aaab:	00 
  80aaac:	8b 85 a0 fd ff ff    	mov    -0x260(%rbp),%eax
  80aab2:	3b 85 98 fd ff ff    	cmp    -0x268(%rbp),%eax
  80aab8:	0f 8c cc 02 00 00    	jl     80ad8a <t3dmix_mod_mp_t3dmix4_tile_+0x2ffa>
  80aabe:	48 83 bd 50 ff ff ff 	cmpq   $0x2,-0xb0(%rbp)
  80aac5:	02 
  80aac6:	0f 8c cb 24 00 00    	jl     80cf97 <t3dmix_mod_mp_t3dmix4_tile_+0x5207>
  80aacc:	4c 8b ad 08 fe ff ff 	mov    -0x1f8(%rbp),%r13
  80aad3:	45 33 e4             	xor    %r12d,%r12d
  80aad6:	4c 8b 95 d8 fb ff ff 	mov    -0x428(%rbp),%r10
  80aadd:	4c 8b 85 e8 fb ff ff 	mov    -0x418(%rbp),%r8
  80aae4:	4c 8b bd e0 fb ff ff 	mov    -0x420(%rbp),%r15
  80aaeb:	4c 8b 9d c0 fb ff ff 	mov    -0x440(%rbp),%r11
  80aaf2:	4f 8d 34 2a          	lea    (%r10,%r13,1),%r14
  80aaf6:	45 33 d2             	xor    %r10d,%r10d
  80aaf9:	4f 8d 0c 28          	lea    (%r8,%r13,1),%r9
  80aafd:	4c 89 4d 80          	mov    %r9,-0x80(%rbp)
  80ab01:	45 33 c9             	xor    %r9d,%r9d
  80ab04:	45 33 c0             	xor    %r8d,%r8d
  80ab07:	4c 03 fa             	add    %rdx,%r15
  80ab0a:	4c 89 b5 78 ff ff ff 	mov    %r14,-0x88(%rbp)
  80ab11:	45 33 f6             	xor    %r14d,%r14d
  80ab14:	45 33 ed             	xor    %r13d,%r13d
  80ab17:	4c 03 da             	add    %rdx,%r11
  80ab1a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  80ab1e:	4c 89 7d 88          	mov    %r15,-0x78(%rbp)
  80ab22:	48 89 85 08 fc ff ff 	mov    %rax,-0x3f8(%rbp)
  80ab29:	48 89 95 00 fc ff ff 	mov    %rdx,-0x400(%rbp)
  80ab30:	4d 89 ef             	mov    %r13,%r15
  80ab33:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  80ab3a:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
  80ab41:	49 03 c2             	add    %r10,%rax
  80ab44:	c5 fb 10 10          	vmovsd (%rax),%xmm2
  80ab48:	4d 8d 14 52          	lea    (%r10,%rdx,2),%r10
  80ab4c:	c5 e9 16 1c 10       	vmovhpd (%rax,%rdx,1),%xmm2,%xmm3
  80ab51:	c5 f9 59 eb          	vmulpd %xmm3,%xmm0,%xmm5
  80ab55:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  80ab5c:	4a 8d 14 08          	lea    (%rax,%r9,1),%rdx
  80ab60:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
  80ab67:	c5 fb 10 22          	vmovsd (%rdx),%xmm4
  80ab6b:	c5 d9 16 34 02       	vmovhpd (%rdx,%rax,1),%xmm4,%xmm6
  80ab70:	4d 8d 0c 41          	lea    (%r9,%rax,2),%r9
  80ab74:	c5 51 59 c6          	vmulpd %xmm6,%xmm5,%xmm8
  80ab78:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
  80ab7f:	4a 8d 14 07          	lea    (%rdi,%r8,1),%rdx
  80ab83:	c5 fb 10 3a          	vmovsd (%rdx),%xmm7
  80ab87:	c5 41 16 0c 02       	vmovhpd (%rdx,%rax,1),%xmm7,%xmm9
  80ab8c:	4d 8d 04 40          	lea    (%r8,%rax,2),%r8
  80ab90:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
  80ab97:	4a 8d 14 31          	lea    (%rcx,%r14,1),%rdx
  80ab9b:	c5 7b 10 12          	vmovsd (%rdx),%xmm10
  80ab9f:	c4 41 39 59 d9       	vmulpd %xmm9,%xmm8,%xmm11
  80aba4:	c5 29 16 24 02       	vmovhpd (%rdx,%rax,1),%xmm10,%xmm12
  80aba9:	4d 8d 34 46          	lea    (%r14,%rax,2),%r14
  80abad:	48 8b 95 18 ff ff ff 	mov    -0xe8(%rbp),%rdx
  80abb4:	4b 8d 04 2b          	lea    (%r11,%r13,1),%rax
  80abb8:	c5 7b 10 28          	vmovsd (%rax),%xmm13
  80abbc:	c4 c1 21 59 d4       	vmulpd %xmm12,%xmm11,%xmm2
  80abc1:	c5 11 16 3c 10       	vmovhpd (%rax,%rdx,1),%xmm13,%xmm15
  80abc6:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  80abca:	49 03 c5             	add    %r13,%rax
  80abcd:	c5 7b 10 30          	vmovsd (%rax),%xmm14
  80abd1:	4d 8d 6c 55 00       	lea    0x0(%r13,%rdx,2),%r13
  80abd6:	c5 09 16 2c 10       	vmovhpd (%rax,%rdx,1),%xmm14,%xmm13
  80abdb:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
  80abdf:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
  80abe6:	c4 c1 01 58 dd       	vaddpd %xmm13,%xmm15,%xmm3
  80abeb:	c5 69 59 c3          	vmulpd %xmm3,%xmm2,%xmm8
  80abef:	49 03 d7             	add    %r15,%rdx
  80abf2:	c5 fb 10 22          	vmovsd (%rdx),%xmm4
  80abf6:	c5 d9 16 34 02       	vmovhpd (%rdx,%rax,1),%xmm4,%xmm6
  80abfb:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
  80ac02:	49 03 d7             	add    %r15,%rdx
  80ac05:	c5 fb 10 2a          	vmovsd (%rdx),%xmm5
  80ac09:	4d 8d 3c 47          	lea    (%r15,%rax,2),%r15
  80ac0d:	c5 d1 16 3c 02       	vmovhpd (%rdx,%rax,1),%xmm5,%xmm7
  80ac12:	c5 49 5c cf          	vsubpd %xmm7,%xmm6,%xmm9
  80ac16:	c4 41 39 59 d1       	vmulpd %xmm9,%xmm8,%xmm10
  80ac1b:	c4 21 79 11 14 e6    	vmovupd %xmm10,(%rsi,%r12,8)
  80ac21:	49 83 c4 02          	add    $0x2,%r12
  80ac25:	4c 3b 65 d0          	cmp    -0x30(%rbp),%r12
  80ac29:	0f 82 04 ff ff ff    	jb     80ab33 <t3dmix_mod_mp_t3dmix4_tile_+0x2da3>
  80ac2f:	48 8b 85 08 fc ff ff 	mov    -0x3f8(%rbp),%rax
  80ac36:	48 8b 95 00 fc ff ff 	mov    -0x400(%rbp),%rdx
  80ac3d:	4c 8b 9d 38 ff ff ff 	mov    -0xc8(%rbp),%r11
  80ac44:	4c 8b 95 18 ff ff ff 	mov    -0xe8(%rbp),%r10
  80ac4b:	4c 8b 8d 20 ff ff ff 	mov    -0xe0(%rbp),%r9
  80ac52:	4c 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8
  80ac59:	4c 8b ad 10 ff ff ff 	mov    -0xf0(%rbp),%r13
  80ac60:	4c 8b a5 28 ff ff ff 	mov    -0xd8(%rbp),%r12
  80ac67:	4c 0f af d8          	imul   %rax,%r11
  80ac6b:	4c 0f af d0          	imul   %rax,%r10
  80ac6f:	4c 0f af c8          	imul   %rax,%r9
  80ac73:	4c 0f af c0          	imul   %rax,%r8
  80ac77:	4c 0f af e8          	imul   %rax,%r13
  80ac7b:	4c 0f af e0          	imul   %rax,%r12
  80ac7f:	48 3b 85 50 ff ff ff 	cmp    -0xb0(%rbp),%rax
  80ac86:	0f 83 fe 00 00 00    	jae    80ad8a <t3dmix_mod_mp_t3dmix4_tile_+0x2ffa>
  80ac8c:	4c 8b bd c0 fb ff ff 	mov    -0x440(%rbp),%r15
  80ac93:	48 89 95 00 fc ff ff 	mov    %rdx,-0x400(%rbp)
  80ac9a:	4d 8d 34 17          	lea    (%r15,%rdx,1),%r14
  80ac9e:	4c 8b bd e0 fb ff ff 	mov    -0x420(%rbp),%r15
  80aca5:	4c 89 b5 60 ff ff ff 	mov    %r14,-0xa0(%rbp)
  80acac:	4d 8d 34 17          	lea    (%r15,%rdx,1),%r14
  80acb0:	4c 89 b5 f0 fb ff ff 	mov    %r14,-0x410(%rbp)
  80acb7:	4c 8b bd e8 fb ff ff 	mov    -0x418(%rbp),%r15
  80acbe:	4c 8b b5 08 fe ff ff 	mov    -0x1f8(%rbp),%r14
  80acc5:	4d 03 fe             	add    %r14,%r15
  80acc8:	4c 89 bd f8 fb ff ff 	mov    %r15,-0x408(%rbp)
  80accf:	4c 8b bd d8 fb ff ff 	mov    -0x428(%rbp),%r15
  80acd6:	48 8b 95 f8 fb ff ff 	mov    -0x408(%rbp),%rdx
  80acdd:	4d 03 f7             	add    %r15,%r14
  80ace0:	4c 89 b5 58 ff ff ff 	mov    %r14,-0xa8(%rbp)
  80ace7:	4c 8b b5 f0 fb ff ff 	mov    -0x410(%rbp),%r14
  80acee:	4c 8b bd 68 ff ff ff 	mov    -0x98(%rbp),%r15
  80acf5:	c4 41 7b 10 04 13    	vmovsd (%r11,%rdx,1),%xmm8
  80acfb:	c4 81 73 59 14 3c    	vmulsd (%r12,%r15,1),%xmm1,%xmm2
  80ad01:	4c 8b bd 70 ff ff ff 	mov    -0x90(%rbp),%r15
  80ad08:	4c 03 a5 28 ff ff ff 	add    -0xd8(%rbp),%r12
  80ad0f:	c4 81 6b 59 1c 39    	vmulsd (%r9,%r15,1),%xmm2,%xmm3
  80ad15:	c4 c1 63 59 64 3d 00 	vmulsd 0x0(%r13,%rdi,1),%xmm3,%xmm4
  80ad1c:	4c 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%r15
  80ad23:	c4 c1 5b 59 34 08    	vmulsd (%r8,%rcx,1),%xmm4,%xmm6
  80ad29:	c4 81 7b 10 2c 3a    	vmovsd (%r10,%r15,1),%xmm5
  80ad2f:	4c 8b bd 58 ff ff ff 	mov    -0xa8(%rbp),%r15
  80ad36:	4c 03 ad 10 ff ff ff 	add    -0xf0(%rbp),%r13
  80ad3d:	4c 03 85 08 ff ff ff 	add    -0xf8(%rbp),%r8
  80ad44:	4c 03 8d 20 ff ff ff 	add    -0xe0(%rbp),%r9
  80ad4b:	c4 81 53 58 3c 32    	vaddsd (%r10,%r14,1),%xmm5,%xmm7
  80ad51:	c4 01 3b 5c 14 3b    	vsubsd (%r11,%r15,1),%xmm8,%xmm10
  80ad57:	c5 4b 59 cf          	vmulsd %xmm7,%xmm6,%xmm9
  80ad5b:	c4 41 33 59 da       	vmulsd %xmm10,%xmm9,%xmm11
  80ad60:	c5 7b 11 1c c6       	vmovsd %xmm11,(%rsi,%rax,8)
  80ad65:	48 ff c0             	inc    %rax
  80ad68:	4c 03 95 18 ff ff ff 	add    -0xe8(%rbp),%r10
  80ad6f:	4c 03 9d 38 ff ff ff 	add    -0xc8(%rbp),%r11
  80ad76:	48 3b 85 50 ff ff ff 	cmp    -0xb0(%rbp),%rax
  80ad7d:	0f 82 6b ff ff ff    	jb     80acee <t3dmix_mod_mp_t3dmix4_tile_+0x2f5e>
  80ad83:	48 8b 95 00 fc ff ff 	mov    -0x400(%rbp),%rdx
  80ad8a:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  80ad91:	4c 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%r8
  80ad98:	4c 8b 8d 08 fe ff ff 	mov    -0x1f8(%rbp),%r9
  80ad9f:	4c 8b 95 18 fe ff ff 	mov    -0x1e8(%rbp),%r10
  80ada6:	49 ff c2             	inc    %r10
  80ada9:	48 03 85 e8 fd ff ff 	add    -0x218(%rbp),%rax
  80adb0:	4c 03 85 e0 fd ff ff 	add    -0x220(%rbp),%r8
  80adb7:	4c 03 8d f0 fd ff ff 	add    -0x210(%rbp),%r9
  80adbe:	48 03 b5 40 fe ff ff 	add    -0x1c0(%rbp),%rsi
  80adc5:	48 03 bd d0 fd ff ff 	add    -0x230(%rbp),%rdi
  80adcc:	48 03 8d c8 fd ff ff 	add    -0x238(%rbp),%rcx
  80add3:	48 03 95 d8 fd ff ff 	add    -0x228(%rbp),%rdx
  80adda:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  80ade1:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  80ade8:	4c 89 8d 08 fe ff ff 	mov    %r9,-0x1f8(%rbp)
  80adef:	4c 89 95 18 fe ff ff 	mov    %r10,-0x1e8(%rbp)
  80adf6:	4c 3b 95 30 fe ff ff 	cmp    -0x1d0(%rbp),%r10
  80adfd:	0f 82 a9 fc ff ff    	jb     80aaac <t3dmix_mod_mp_t3dmix4_tile_+0x2d1c>
  80ae03:	4c 8b ad d8 f8 ff ff 	mov    -0x728(%rbp),%r13
  80ae0a:	4c 8b b5 e0 f8 ff ff 	mov    -0x720(%rbp),%r14
  80ae11:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  80ae18:	48 83 bd 18 ff ff ff 	cmpq   $0x8,-0xe8(%rbp)
  80ae1f:	08 
  80ae20:	0f 85 ce 01 00 00    	jne    80aff4 <t3dmix_mod_mp_t3dmix4_tile_+0x3264>
  80ae26:	48 83 bd 30 ff ff ff 	cmpq   $0x8,-0xd0(%rbp)
  80ae2d:	08 
  80ae2e:	0f 85 c0 01 00 00    	jne    80aff4 <t3dmix_mod_mp_t3dmix4_tile_+0x3264>
  80ae34:	48 83 bd 40 ff ff ff 	cmpq   $0x8,-0xc0(%rbp)
  80ae3b:	08 
  80ae3c:	0f 85 b2 01 00 00    	jne    80aff4 <t3dmix_mod_mp_t3dmix4_tile_+0x3264>
  80ae42:	8b 85 20 fa ff ff    	mov    -0x5e0(%rbp),%eax
  80ae48:	33 ff                	xor    %edi,%edi
  80ae4a:	4c 8b 8d 10 f3 ff ff 	mov    -0xcf0(%rbp),%r9
  80ae51:	33 f6                	xor    %esi,%esi
  80ae53:	4c 8b 85 18 f3 ff ff 	mov    -0xce8(%rbp),%r8
  80ae5a:	3b 85 18 fa ff ff    	cmp    -0x5e8(%rbp),%eax
  80ae60:	0f 8c 69 04 00 00    	jl     80b2cf <t3dmix_mod_mp_t3dmix4_tile_+0x353f>
  80ae66:	48 8b 8d f0 f8 ff ff 	mov    -0x710(%rbp),%rcx
  80ae6d:	49 0f af cc          	imul   %r12,%rcx
  80ae71:	c5 fd 10 0d 07 9f 0b 	vmovupd 0xb9f07(%rip),%ymm1        # 8c4d80 <var$630.126.450+0xc0>
  80ae78:	00 
  80ae79:	c5 fb 10 05 7f c1 0b 	vmovsd 0xbc17f(%rip),%xmm0        # 8c7000 <__STRLITPACK_199.115+0x70>
  80ae80:	00 
  80ae81:	48 03 8d 38 f9 ff ff 	add    -0x6c8(%rbp),%rcx
  80ae88:	48 8b 95 50 ff ff ff 	mov    -0xb0(%rbp),%rdx
  80ae8f:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80ae96:	8b 85 a0 fd ff ff    	mov    -0x260(%rbp),%eax
  80ae9c:	3b 85 98 fd ff ff    	cmp    -0x268(%rbp),%eax
  80aea2:	0f 8c 1b 01 00 00    	jl     80afc3 <t3dmix_mod_mp_t3dmix4_tile_+0x3233>
  80aea8:	48 83 fa 04          	cmp    $0x4,%rdx
  80aeac:	0f 8c f1 1e 00 00    	jl     80cda3 <t3dmix_mod_mp_t3dmix4_tile_+0x5013>
  80aeb2:	4c 8b b5 e0 fc ff ff 	mov    -0x320(%rbp),%r14
  80aeb9:	45 33 ff             	xor    %r15d,%r15d
  80aebc:	4c 8b ad d8 fc ff ff 	mov    -0x328(%rbp),%r13
  80aec3:	4c 8b a5 c8 fc ff ff 	mov    -0x338(%rbp),%r12
  80aeca:	4c 8b 9d d0 fc ff ff 	mov    -0x330(%rbp),%r11
  80aed1:	4c 03 f6             	add    %rsi,%r14
  80aed4:	4c 8b 95 f0 fc ff ff 	mov    -0x310(%rbp),%r10
  80aedb:	4c 03 ee             	add    %rsi,%r13
  80aede:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  80aee2:	4c 03 e6             	add    %rsi,%r12
  80aee5:	48 89 c2             	mov    %rax,%rdx
  80aee8:	4c 03 de             	add    %rsi,%r11
  80aeeb:	4c 03 d6             	add    %rsi,%r10
  80aeee:	66 90                	xchg   %ax,%ax
  80aef0:	c4 a1 75 5e 1c f9    	vdivpd (%rcx,%r15,8),%ymm1,%ymm3
  80aef6:	c4 81 7d 10 14 f9    	vmovupd (%r9,%r15,8),%ymm2
  80aefc:	c4 81 7d 10 6c fd 08 	vmovupd 0x8(%r13,%r15,8),%ymm5
  80af03:	c4 81 6d 59 24 f8    	vmulpd (%r8,%r15,8),%ymm2,%ymm4
  80af09:	c4 81 55 5c 34 fa    	vsubpd (%r10,%r15,8),%ymm5,%ymm6
  80af0f:	c5 65 59 c4          	vmulpd %ymm4,%ymm3,%ymm8
  80af13:	c4 81 4d 58 7c fe 08 	vaddpd 0x8(%r14,%r15,8),%ymm6,%ymm7
  80af1a:	c4 01 45 5c 0c fb    	vsubpd (%r11,%r15,8),%ymm7,%ymm9
  80af20:	c4 41 3d 59 d1       	vmulpd %ymm9,%ymm8,%ymm10
  80af25:	c4 01 7d 11 14 fc    	vmovupd %ymm10,(%r12,%r15,8)
  80af2b:	49 83 c7 04          	add    $0x4,%r15
  80af2f:	4c 3b fa             	cmp    %rdx,%r15
  80af32:	72 bc                	jb     80aef0 <t3dmix_mod_mp_t3dmix4_tile_+0x3160>
  80af34:	48 8b 95 50 ff ff ff 	mov    -0xb0(%rbp),%rdx
  80af3b:	48 3b c2             	cmp    %rdx,%rax
  80af3e:	0f 83 7f 00 00 00    	jae    80afc3 <t3dmix_mod_mp_t3dmix4_tile_+0x3233>
  80af44:	4c 8b a5 e0 fc ff ff 	mov    -0x320(%rbp),%r12
  80af4b:	4c 8b 9d d8 fc ff ff 	mov    -0x328(%rbp),%r11
  80af52:	4c 8b 95 c8 fc ff ff 	mov    -0x338(%rbp),%r10
  80af59:	4c 8b b5 d0 fc ff ff 	mov    -0x330(%rbp),%r14
  80af60:	4c 03 e6             	add    %rsi,%r12
  80af63:	4c 8b ad f0 fc ff ff 	mov    -0x310(%rbp),%r13
  80af6a:	4c 03 de             	add    %rsi,%r11
  80af6d:	4c 03 d6             	add    %rsi,%r10
  80af70:	4c 03 f6             	add    %rsi,%r14
  80af73:	4c 03 ee             	add    %rsi,%r13
  80af76:	0f 1f 00             	nopl   (%rax)
  80af79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  80af80:	c5 fb 5e 24 c1       	vdivsd (%rcx,%rax,8),%xmm0,%xmm4
  80af85:	c4 c1 7b 10 6c c3 08 	vmovsd 0x8(%r11,%rax,8),%xmm5
  80af8c:	c4 c1 7b 10 14 c1    	vmovsd (%r9,%rax,8),%xmm2
  80af92:	c4 c1 6b 59 1c c0    	vmulsd (%r8,%rax,8),%xmm2,%xmm3
  80af98:	c4 c1 53 5c 74 c5 00 	vsubsd 0x0(%r13,%rax,8),%xmm5,%xmm6
  80af9f:	c5 63 59 c4          	vmulsd %xmm4,%xmm3,%xmm8
  80afa3:	c4 c1 4b 58 7c c4 08 	vaddsd 0x8(%r12,%rax,8),%xmm6,%xmm7
  80afaa:	c4 41 43 5c 0c c6    	vsubsd (%r14,%rax,8),%xmm7,%xmm9
  80afb0:	c4 41 3b 59 d1       	vmulsd %xmm9,%xmm8,%xmm10
  80afb5:	c4 41 7b 11 14 c2    	vmovsd %xmm10,(%r10,%rax,8)
  80afbb:	48 ff c0             	inc    %rax
  80afbe:	48 3b c2             	cmp    %rdx,%rax
  80afc1:	72 bd                	jb     80af80 <t3dmix_mod_mp_t3dmix4_tile_+0x31f0>
  80afc3:	48 ff c7             	inc    %rdi
  80afc6:	48 03 b5 40 fe ff ff 	add    -0x1c0(%rbp),%rsi
  80afcd:	48 03 8d d8 fd ff ff 	add    -0x228(%rbp),%rcx
  80afd4:	4c 03 8d 00 fe ff ff 	add    -0x200(%rbp),%r9
  80afdb:	4c 03 85 f8 fd ff ff 	add    -0x208(%rbp),%r8
  80afe2:	48 3b bd 48 fe ff ff 	cmp    -0x1b8(%rbp),%rdi
  80afe9:	0f 82 a7 fe ff ff    	jb     80ae96 <t3dmix_mod_mp_t3dmix4_tile_+0x3106>
  80afef:	e9 c6 02 00 00       	jmpq   80b2ba <t3dmix_mod_mp_t3dmix4_tile_+0x352a>
  80aff4:	8b 85 20 fa ff ff    	mov    -0x5e0(%rbp),%eax
  80affa:	33 ff                	xor    %edi,%edi
  80affc:	48 8b 8d 50 fa ff ff 	mov    -0x5b0(%rbp),%rcx
  80b003:	33 d2                	xor    %edx,%edx
  80b005:	48 8b b5 30 fa ff ff 	mov    -0x5d0(%rbp),%rsi
  80b00c:	3b 85 18 fa ff ff    	cmp    -0x5e8(%rbp),%eax
  80b012:	0f 8c b7 02 00 00    	jl     80b2cf <t3dmix_mod_mp_t3dmix4_tile_+0x353f>
  80b018:	48 8b 85 f0 f8 ff ff 	mov    -0x710(%rbp),%rax
  80b01f:	49 0f af c4          	imul   %r12,%rax
  80b023:	c5 fd 10 1d 55 9d 0b 	vmovupd 0xb9d55(%rip),%ymm3        # 8c4d80 <var$630.126.450+0xc0>
  80b02a:	00 
  80b02b:	c5 fb 10 15 cd bf 0b 	vmovsd 0xbbfcd(%rip),%xmm2        # 8c7000 <__STRLITPACK_199.115+0x70>
  80b032:	00 
  80b033:	48 03 85 40 f9 ff ff 	add    -0x6c0(%rbp),%rax
  80b03a:	48 89 bd 10 fe ff ff 	mov    %rdi,-0x1f0(%rbp)
  80b041:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80b048:	8b bd a0 fd ff ff    	mov    -0x260(%rbp),%edi
  80b04e:	3b bd 98 fd ff ff    	cmp    -0x268(%rbp),%edi
  80b054:	0f 8c 26 02 00 00    	jl     80b280 <t3dmix_mod_mp_t3dmix4_tile_+0x34f0>
  80b05a:	48 83 bd 50 ff ff ff 	cmpq   $0x4,-0xb0(%rbp)
  80b061:	04 
  80b062:	0f 8c 27 1f 00 00    	jl     80cf8f <t3dmix_mod_mp_t3dmix4_tile_+0x51ff>
  80b068:	48 8b bd f0 fc ff ff 	mov    -0x310(%rbp),%rdi
  80b06f:	45 33 ed             	xor    %r13d,%r13d
  80b072:	4c 8b a5 e0 fc ff ff 	mov    -0x320(%rbp),%r12
  80b079:	4c 8b 9d d8 fc ff ff 	mov    -0x328(%rbp),%r11
  80b080:	4c 8b 95 c8 fc ff ff 	mov    -0x338(%rbp),%r10
  80b087:	4c 8d 04 17          	lea    (%rdi,%rdx,1),%r8
  80b08b:	4c 8b 8d d0 fc ff ff 	mov    -0x330(%rbp),%r9
  80b092:	33 ff                	xor    %edi,%edi
  80b094:	45 33 f6             	xor    %r14d,%r14d
  80b097:	4c 03 e2             	add    %rdx,%r12
  80b09a:	4c 8b 7d d8          	mov    -0x28(%rbp),%r15
  80b09e:	4c 03 da             	add    %rdx,%r11
  80b0a1:	4c 03 d2             	add    %rdx,%r10
  80b0a4:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  80b0ab:	4c 03 ca             	add    %rdx,%r9
  80b0ae:	4c 89 bd d0 fb ff ff 	mov    %r15,-0x430(%rbp)
  80b0b5:	48 89 95 c8 fb ff ff 	mov    %rdx,-0x438(%rbp)
  80b0bc:	4c 89 f0             	mov    %r14,%rax
  80b0bf:	4c 8b bd 48 ff ff ff 	mov    -0xb8(%rbp),%r15
  80b0c6:	48 8b 95 18 ff ff ff 	mov    -0xe8(%rbp),%rdx
  80b0cd:	c4 81 7d 10 64 eb 08 	vmovupd 0x8(%r11,%r13,8),%ymm4
  80b0d4:	c4 81 5d 5c 2c e8    	vsubpd (%r8,%r13,8),%ymm4,%ymm5
  80b0da:	4c 03 ff             	add    %rdi,%r15
  80b0dd:	c4 c1 7b 10 3f       	vmovsd (%r15),%xmm7
  80b0e2:	c4 41 41 16 0c 17    	vmovhpd (%r15,%rdx,1),%xmm7,%xmm9
  80b0e8:	c4 81 55 58 74 ec 08 	vaddpd 0x8(%r12,%r13,8),%ymm5,%ymm6
  80b0ef:	4d 8d 3c 57          	lea    (%r15,%rdx,2),%r15
  80b0f3:	c4 41 7b 10 07       	vmovsd (%r15),%xmm8
  80b0f8:	c4 41 39 16 14 17    	vmovhpd (%r15,%rdx,1),%xmm8,%xmm10
  80b0fe:	4c 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%r15
  80b105:	48 8d 3c 97          	lea    (%rdi,%rdx,4),%rdi
  80b109:	c4 81 4d 5c 0c e9    	vsubpd (%r9,%r13,8),%ymm6,%ymm1
  80b10f:	4a 8d 14 31          	lea    (%rcx,%r14,1),%rdx
  80b113:	c5 7b 10 22          	vmovsd (%rdx),%xmm12
  80b117:	c4 21 19 16 34 3a    	vmovhpd (%rdx,%r15,1),%xmm12,%xmm14
  80b11d:	4a 8d 14 7a          	lea    (%rdx,%r15,2),%rdx
  80b121:	c5 7b 10 2a          	vmovsd (%rdx),%xmm13
  80b125:	4f 8d 34 be          	lea    (%r14,%r15,4),%r14
  80b129:	c4 21 11 16 3c 3a    	vmovhpd (%rdx,%r15,1),%xmm13,%xmm15
  80b12f:	4c 8d 3c 06          	lea    (%rsi,%rax,1),%r15
  80b133:	48 8b 95 40 ff ff ff 	mov    -0xc0(%rbp),%rdx
  80b13a:	c4 c1 7b 10 27       	vmovsd (%r15),%xmm4
  80b13f:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
  80b143:	c4 43 35 18 da 01    	vinsertf128 $0x1,%xmm10,%ymm9,%ymm11
  80b149:	c4 c1 65 5e c3       	vdivpd %ymm11,%ymm3,%ymm0
  80b14e:	c4 c1 59 16 34 17    	vmovhpd (%r15,%rdx,1),%xmm4,%xmm6
  80b154:	4d 8d 3c 57          	lea    (%r15,%rdx,2),%r15
  80b158:	c4 c1 7b 10 2f       	vmovsd (%r15),%xmm5
  80b15d:	c4 c1 51 16 3c 17    	vmovhpd (%r15,%rdx,1),%xmm5,%xmm7
  80b163:	c4 43 0d 18 c7 01    	vinsertf128 $0x1,%xmm15,%ymm14,%ymm8
  80b169:	c4 63 4d 18 cf 01    	vinsertf128 $0x1,%xmm7,%ymm6,%ymm9
  80b16f:	c4 41 3d 59 d1       	vmulpd %ymm9,%ymm8,%ymm10
  80b174:	c4 c1 7d 59 c2       	vmulpd %ymm10,%ymm0,%ymm0
  80b179:	c5 fd 59 c9          	vmulpd %ymm1,%ymm0,%ymm1
  80b17d:	c4 81 7d 11 0c ea    	vmovupd %ymm1,(%r10,%r13,8)
  80b183:	49 83 c5 04          	add    $0x4,%r13
  80b187:	4c 3b 6d d8          	cmp    -0x28(%rbp),%r13
  80b18b:	0f 82 2e ff ff ff    	jb     80b0bf <t3dmix_mod_mp_t3dmix4_tile_+0x332f>
  80b191:	4c 8b bd d0 fb ff ff 	mov    -0x430(%rbp),%r15
  80b198:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  80b19f:	48 8b 95 c8 fb ff ff 	mov    -0x438(%rbp),%rdx
  80b1a6:	4c 8b ad 40 ff ff ff 	mov    -0xc0(%rbp),%r13
  80b1ad:	4c 8b b5 30 ff ff ff 	mov    -0xd0(%rbp),%r14
  80b1b4:	4c 8b a5 18 ff ff ff 	mov    -0xe8(%rbp),%r12
  80b1bb:	4d 0f af ef          	imul   %r15,%r13
  80b1bf:	4d 0f af f7          	imul   %r15,%r14
  80b1c3:	4d 0f af e7          	imul   %r15,%r12
  80b1c7:	4c 3b bd 50 ff ff ff 	cmp    -0xb0(%rbp),%r15
  80b1ce:	0f 83 ac 00 00 00    	jae    80b280 <t3dmix_mod_mp_t3dmix4_tile_+0x34f0>
  80b1d4:	4c 8b 9d e0 fc ff ff 	mov    -0x320(%rbp),%r11
  80b1db:	4c 8b 95 d8 fc ff ff 	mov    -0x328(%rbp),%r10
  80b1e2:	4c 8b 8d c8 fc ff ff 	mov    -0x338(%rbp),%r9
  80b1e9:	4c 8b 85 d0 fc ff ff 	mov    -0x330(%rbp),%r8
  80b1f0:	4c 03 da             	add    %rdx,%r11
  80b1f3:	48 8b bd f0 fc ff ff 	mov    -0x310(%rbp),%rdi
  80b1fa:	4c 03 d2             	add    %rdx,%r10
  80b1fd:	48 89 95 c8 fb ff ff 	mov    %rdx,-0x438(%rbp)
  80b204:	4c 03 ca             	add    %rdx,%r9
  80b207:	4c 03 c2             	add    %rdx,%r8
  80b20a:	48 03 fa             	add    %rdx,%rdi
  80b20d:	48 8b 95 30 ff ff ff 	mov    -0xd0(%rbp),%rdx
  80b214:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  80b219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  80b220:	c4 c1 6b 5e 24 04    	vdivsd (%r12,%rax,1),%xmm2,%xmm4
  80b226:	c4 81 7b 10 6c fa 08 	vmovsd 0x8(%r10,%r15,8),%xmm5
  80b22d:	c4 c1 7b 10 04 0e    	vmovsd (%r14,%rcx,1),%xmm0
  80b233:	4c 03 f2             	add    %rdx,%r14
  80b236:	c4 c1 7b 59 4c 35 00 	vmulsd 0x0(%r13,%rsi,1),%xmm0,%xmm1
  80b23d:	c4 a1 53 5c 34 ff    	vsubsd (%rdi,%r15,8),%xmm5,%xmm6
  80b243:	c5 73 59 c4          	vmulsd %xmm4,%xmm1,%xmm8
  80b247:	c4 81 4b 58 7c fb 08 	vaddsd 0x8(%r11,%r15,8),%xmm6,%xmm7
  80b24e:	4c 03 a5 18 ff ff ff 	add    -0xe8(%rbp),%r12
  80b255:	4c 03 ad 40 ff ff ff 	add    -0xc0(%rbp),%r13
  80b25c:	c4 01 43 5c 0c f8    	vsubsd (%r8,%r15,8),%xmm7,%xmm9
  80b262:	c4 41 3b 59 d1       	vmulsd %xmm9,%xmm8,%xmm10
  80b267:	c4 01 7b 11 14 f9    	vmovsd %xmm10,(%r9,%r15,8)
  80b26d:	49 ff c7             	inc    %r15
  80b270:	4c 3b bd 50 ff ff ff 	cmp    -0xb0(%rbp),%r15
  80b277:	72 a7                	jb     80b220 <t3dmix_mod_mp_t3dmix4_tile_+0x3490>
  80b279:	48 8b 95 c8 fb ff ff 	mov    -0x438(%rbp),%rdx
  80b280:	48 8b bd 10 fe ff ff 	mov    -0x1f0(%rbp),%rdi
  80b287:	48 ff c7             	inc    %rdi
  80b28a:	48 03 95 40 fe ff ff 	add    -0x1c0(%rbp),%rdx
  80b291:	48 03 85 d8 fd ff ff 	add    -0x228(%rbp),%rax
  80b298:	48 03 8d 00 fe ff ff 	add    -0x200(%rbp),%rcx
  80b29f:	48 03 b5 f8 fd ff ff 	add    -0x208(%rbp),%rsi
  80b2a6:	48 89 bd 10 fe ff ff 	mov    %rdi,-0x1f0(%rbp)
  80b2ad:	48 3b bd 48 fe ff ff 	cmp    -0x1b8(%rbp),%rdi
  80b2b4:	0f 82 8e fd ff ff    	jb     80b048 <t3dmix_mod_mp_t3dmix4_tile_+0x32b8>
  80b2ba:	4c 8b ad d8 f8 ff ff 	mov    -0x728(%rbp),%r13
  80b2c1:	4c 8b b5 e0 f8 ff ff 	mov    -0x720(%rbp),%r14
  80b2c8:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  80b2cf:	43 f6 44 35 04 01    	testb  $0x1,0x4(%r13,%r14,1)
  80b2d5:	0f 85 95 01 00 00    	jne    80b470 <t3dmix_mod_mp_t3dmix4_tile_+0x36e0>
  80b2db:	48 8b 95 58 fa ff ff 	mov    -0x5a8(%rbp),%rdx
  80b2e2:	48 8b 85 68 fa ff ff 	mov    -0x598(%rbp),%rax
  80b2e9:	f6 04 10 01          	testb  $0x1,(%rax,%rdx,1)
  80b2ed:	0f 85 7d 01 00 00    	jne    80b470 <t3dmix_mod_mp_t3dmix4_tile_+0x36e0>
  80b2f3:	48 8b 95 60 f8 ff ff 	mov    -0x7a0(%rbp),%rdx
  80b2fa:	48 8b 85 58 f8 ff ff 	mov    -0x7a8(%rbp),%rax
  80b301:	48 8b b4 10 88 00 00 	mov    0x88(%rax,%rdx,1),%rsi
  80b308:	00 
  80b309:	48 f7 de             	neg    %rsi
  80b30c:	48 03 b5 50 f8 ff ff 	add    -0x7b0(%rbp),%rsi
  80b313:	48 0f af b4 10 80 00 	imul   0x80(%rax,%rdx,1),%rsi
  80b31a:	00 00 
  80b31c:	48 8b 4c 10 48       	mov    0x48(%rax,%rdx,1),%rcx
  80b321:	f6 04 31 01          	testb  $0x1,(%rcx,%rsi,1)
  80b325:	0f 84 45 01 00 00    	je     80b470 <t3dmix_mod_mp_t3dmix4_tile_+0x36e0>
  80b32b:	48 8b 85 18 f8 ff ff 	mov    -0x7e8(%rbp),%rax
  80b332:	48 8b 95 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdx
  80b339:	48 8b b5 20 f8 ff ff 	mov    -0x7e0(%rbp),%rsi
  80b340:	48 63 0c 90          	movslq (%rax,%rdx,4),%rcx
  80b344:	48 0f af 8d 10 f8 ff 	imul   -0x7f0(%rbp),%rcx
  80b34b:	ff 
  80b34c:	f6 44 31 44 01       	testb  $0x1,0x44(%rcx,%rsi,1)
  80b351:	0f 84 8c 00 00 00    	je     80b3e3 <t3dmix_mod_mp_t3dmix4_tile_+0x3653>
  80b357:	8b 85 20 fa ff ff    	mov    -0x5e0(%rbp),%eax
  80b35d:	3b 85 18 fa ff ff    	cmp    -0x5e8(%rbp),%eax
  80b363:	0f 8c 07 01 00 00    	jl     80b470 <t3dmix_mod_mp_t3dmix4_tile_+0x36e0>
  80b369:	b9 01 00 00 00       	mov    $0x1,%ecx
  80b36e:	33 d2                	xor    %edx,%edx
  80b370:	33 c0                	xor    %eax,%eax
  80b372:	83 bd c8 f7 ff ff 00 	cmpl   $0x0,-0x838(%rbp)
  80b379:	74 39                	je     80b3b4 <t3dmix_mod_mp_t3dmix4_tile_+0x3624>
  80b37b:	48 8b 8d 58 f7 ff ff 	mov    -0x8a8(%rbp),%rcx
  80b382:	45 33 c9             	xor    %r9d,%r9d
  80b385:	48 8b b5 70 f7 ff ff 	mov    -0x890(%rbp),%rsi
  80b38c:	48 8b bd 80 f7 ff ff 	mov    -0x880(%rbp),%rdi
  80b393:	4c 8b 85 68 f7 ff ff 	mov    -0x898(%rbp),%r8
  80b39a:	48 ff c2             	inc    %rdx
  80b39d:	4c 89 4c 30 f8       	mov    %r9,-0x8(%rax,%rsi,1)
  80b3a2:	4c 89 0c 38          	mov    %r9,(%rax,%rdi,1)
  80b3a6:	4a 8d 44 00 10       	lea    0x10(%rax,%r8,1),%rax
  80b3ab:	48 3b d1             	cmp    %rcx,%rdx
  80b3ae:	72 ea                	jb     80b39a <t3dmix_mod_mp_t3dmix4_tile_+0x360a>
  80b3b0:	8d 4c 12 01          	lea    0x1(%rdx,%rdx,1),%ecx
  80b3b4:	8d 41 ff             	lea    -0x1(%rcx),%eax
  80b3b7:	3b 85 a8 f7 ff ff    	cmp    -0x858(%rbp),%eax
  80b3bd:	0f 83 ad 00 00 00    	jae    80b470 <t3dmix_mod_mp_t3dmix4_tile_+0x36e0>
  80b3c3:	48 63 c9             	movslq %ecx,%rcx
  80b3c6:	48 0f af 8d 40 fe ff 	imul   -0x1c0(%rbp),%rcx
  80b3cd:	ff 
  80b3ce:	48 8b 85 88 f7 ff ff 	mov    -0x878(%rbp),%rax
  80b3d5:	48 c7 44 01 f0 00 00 	movq   $0x0,-0x10(%rcx,%rax,1)
  80b3dc:	00 00 
  80b3de:	e9 8d 00 00 00       	jmpq   80b470 <t3dmix_mod_mp_t3dmix4_tile_+0x36e0>
  80b3e3:	8b 85 20 fa ff ff    	mov    -0x5e0(%rbp),%eax
  80b3e9:	3b 85 18 fa ff ff    	cmp    -0x5e8(%rbp),%eax
  80b3ef:	7c 7f                	jl     80b470 <t3dmix_mod_mp_t3dmix4_tile_+0x36e0>
  80b3f1:	b9 01 00 00 00       	mov    $0x1,%ecx
  80b3f6:	33 d2                	xor    %edx,%edx
  80b3f8:	33 c0                	xor    %eax,%eax
  80b3fa:	83 bd c8 f7 ff ff 00 	cmpl   $0x0,-0x838(%rbp)
  80b401:	74 46                	je     80b449 <t3dmix_mod_mp_t3dmix4_tile_+0x36b9>
  80b403:	48 8b bd 58 f7 ff ff 	mov    -0x8a8(%rbp),%rdi
  80b40a:	4c 8b 85 70 f7 ff ff 	mov    -0x890(%rbp),%r8
  80b411:	4c 8b 8d 60 f7 ff ff 	mov    -0x8a0(%rbp),%r9
  80b418:	4c 8b 95 80 f7 ff ff 	mov    -0x880(%rbp),%r10
  80b41f:	4c 8b 9d 68 f7 ff ff 	mov    -0x898(%rbp),%r11
  80b426:	48 ff c2             	inc    %rdx
  80b429:	4a 8b 0c 08          	mov    (%rax,%r9,1),%rcx
  80b42d:	4a 8b 74 10 08       	mov    0x8(%rax,%r10,1),%rsi
  80b432:	4a 89 4c 00 f8       	mov    %rcx,-0x8(%rax,%r8,1)
  80b437:	4a 89 34 10          	mov    %rsi,(%rax,%r10,1)
  80b43b:	4a 8d 44 18 10       	lea    0x10(%rax,%r11,1),%rax
  80b440:	48 3b d7             	cmp    %rdi,%rdx
  80b443:	72 e1                	jb     80b426 <t3dmix_mod_mp_t3dmix4_tile_+0x3696>
  80b445:	8d 4c 12 01          	lea    0x1(%rdx,%rdx,1),%ecx
  80b449:	8d 41 ff             	lea    -0x1(%rcx),%eax
  80b44c:	3b 85 a8 f7 ff ff    	cmp    -0x858(%rbp),%eax
  80b452:	73 1c                	jae    80b470 <t3dmix_mod_mp_t3dmix4_tile_+0x36e0>
  80b454:	48 63 c9             	movslq %ecx,%rcx
  80b457:	48 0f af 8d 40 fe ff 	imul   -0x1c0(%rbp),%rcx
  80b45e:	ff 
  80b45f:	48 8b 95 88 f7 ff ff 	mov    -0x878(%rbp),%rdx
  80b466:	48 8b 44 11 f8       	mov    -0x8(%rcx,%rdx,1),%rax
  80b46b:	48 89 44 11 f0       	mov    %rax,-0x10(%rcx,%rdx,1)
  80b470:	43 f6 44 35 0c 01    	testb  $0x1,0xc(%r13,%r14,1)
  80b476:	0f 85 91 01 00 00    	jne    80b60d <t3dmix_mod_mp_t3dmix4_tile_+0x387d>
  80b47c:	48 8b 95 58 fa ff ff 	mov    -0x5a8(%rbp),%rdx
  80b483:	48 8b 85 68 fa ff ff 	mov    -0x598(%rbp),%rax
  80b48a:	f6 04 10 01          	testb  $0x1,(%rax,%rdx,1)
  80b48e:	0f 85 79 01 00 00    	jne    80b60d <t3dmix_mod_mp_t3dmix4_tile_+0x387d>
  80b494:	48 8b 95 60 f8 ff ff 	mov    -0x7a0(%rbp),%rdx
  80b49b:	48 8b 85 58 f8 ff ff 	mov    -0x7a8(%rbp),%rax
  80b4a2:	48 8b 74 10 40       	mov    0x40(%rax,%rdx,1),%rsi
  80b4a7:	48 f7 de             	neg    %rsi
  80b4aa:	48 03 b5 50 f8 ff ff 	add    -0x7b0(%rbp),%rsi
  80b4b1:	48 0f af 74 10 38    	imul   0x38(%rax,%rdx,1),%rsi
  80b4b7:	48 8b 0c 10          	mov    (%rax,%rdx,1),%rcx
  80b4bb:	f6 04 31 01          	testb  $0x1,(%rcx,%rsi,1)
  80b4bf:	0f 84 48 01 00 00    	je     80b60d <t3dmix_mod_mp_t3dmix4_tile_+0x387d>
  80b4c5:	48 8b 85 18 f8 ff ff 	mov    -0x7e8(%rbp),%rax
  80b4cc:	48 8b 95 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdx
  80b4d3:	48 8b b5 20 f8 ff ff 	mov    -0x7e0(%rbp),%rsi
  80b4da:	48 63 0c 90          	movslq (%rax,%rdx,4),%rcx
  80b4de:	48 0f af 8d 10 f8 ff 	imul   -0x7f0(%rbp),%rcx
  80b4e5:	ff 
  80b4e6:	f6 84 31 ac 00 00 00 	testb  $0x1,0xac(%rcx,%rsi,1)
  80b4ed:	01 
  80b4ee:	0f 84 8c 00 00 00    	je     80b580 <t3dmix_mod_mp_t3dmix4_tile_+0x37f0>
  80b4f4:	8b 85 20 fa ff ff    	mov    -0x5e0(%rbp),%eax
  80b4fa:	3b 85 18 fa ff ff    	cmp    -0x5e8(%rbp),%eax
  80b500:	0f 8c 07 01 00 00    	jl     80b60d <t3dmix_mod_mp_t3dmix4_tile_+0x387d>
  80b506:	b9 01 00 00 00       	mov    $0x1,%ecx
  80b50b:	33 d2                	xor    %edx,%edx
  80b50d:	33 c0                	xor    %eax,%eax
  80b50f:	83 bd c8 f7 ff ff 00 	cmpl   $0x0,-0x838(%rbp)
  80b516:	74 3a                	je     80b552 <t3dmix_mod_mp_t3dmix4_tile_+0x37c2>
  80b518:	48 8b 8d a0 f7 ff ff 	mov    -0x860(%rbp),%rcx
  80b51f:	45 33 c9             	xor    %r9d,%r9d
  80b522:	48 8b b5 78 f7 ff ff 	mov    -0x888(%rbp),%rsi
  80b529:	48 8b bd 58 f7 ff ff 	mov    -0x8a8(%rbp),%rdi
  80b530:	4c 8b 85 68 f7 ff ff 	mov    -0x898(%rbp),%r8
  80b537:	48 ff c2             	inc    %rdx
  80b53a:	4c 89 4c 08 08       	mov    %r9,0x8(%rax,%rcx,1)
  80b53f:	4c 89 4c 30 10       	mov    %r9,0x10(%rax,%rsi,1)
  80b544:	4a 8d 44 00 10       	lea    0x10(%rax,%r8,1),%rax
  80b549:	48 3b d7             	cmp    %rdi,%rdx
  80b54c:	72 e9                	jb     80b537 <t3dmix_mod_mp_t3dmix4_tile_+0x37a7>
  80b54e:	8d 4c 12 01          	lea    0x1(%rdx,%rdx,1),%ecx
  80b552:	8d 41 ff             	lea    -0x1(%rcx),%eax
  80b555:	3b 85 a8 f7 ff ff    	cmp    -0x858(%rbp),%eax
  80b55b:	0f 83 ac 00 00 00    	jae    80b60d <t3dmix_mod_mp_t3dmix4_tile_+0x387d>
  80b561:	48 63 c9             	movslq %ecx,%rcx
  80b564:	48 0f af 8d 40 fe ff 	imul   -0x1c0(%rbp),%rcx
  80b56b:	ff 
  80b56c:	48 8b 85 98 f7 ff ff 	mov    -0x868(%rbp),%rax
  80b573:	48 c7 04 01 00 00 00 	movq   $0x0,(%rcx,%rax,1)
  80b57a:	00 
  80b57b:	e9 8d 00 00 00       	jmpq   80b60d <t3dmix_mod_mp_t3dmix4_tile_+0x387d>
  80b580:	8b 85 20 fa ff ff    	mov    -0x5e0(%rbp),%eax
  80b586:	3b 85 18 fa ff ff    	cmp    -0x5e8(%rbp),%eax
  80b58c:	7c 7f                	jl     80b60d <t3dmix_mod_mp_t3dmix4_tile_+0x387d>
  80b58e:	b9 01 00 00 00       	mov    $0x1,%ecx
  80b593:	33 d2                	xor    %edx,%edx
  80b595:	33 c0                	xor    %eax,%eax
  80b597:	83 bd c8 f7 ff ff 00 	cmpl   $0x0,-0x838(%rbp)
  80b59e:	74 47                	je     80b5e7 <t3dmix_mod_mp_t3dmix4_tile_+0x3857>
  80b5a0:	48 8b bd a0 f7 ff ff 	mov    -0x860(%rbp),%rdi
  80b5a7:	4c 8b 85 90 f7 ff ff 	mov    -0x870(%rbp),%r8
  80b5ae:	4c 8b 8d 78 f7 ff ff 	mov    -0x888(%rbp),%r9
  80b5b5:	4c 8b 95 58 f7 ff ff 	mov    -0x8a8(%rbp),%r10
  80b5bc:	4c 8b 9d 68 f7 ff ff 	mov    -0x898(%rbp),%r11
  80b5c3:	48 ff c2             	inc    %rdx
  80b5c6:	4a 8b 0c 00          	mov    (%rax,%r8,1),%rcx
  80b5ca:	4a 8b 74 08 08       	mov    0x8(%rax,%r9,1),%rsi
  80b5cf:	48 89 4c 38 08       	mov    %rcx,0x8(%rax,%rdi,1)
  80b5d4:	4a 89 74 08 10       	mov    %rsi,0x10(%rax,%r9,1)
  80b5d9:	4a 8d 44 18 10       	lea    0x10(%rax,%r11,1),%rax
  80b5de:	49 3b d2             	cmp    %r10,%rdx
  80b5e1:	72 e0                	jb     80b5c3 <t3dmix_mod_mp_t3dmix4_tile_+0x3833>
  80b5e3:	8d 4c 12 01          	lea    0x1(%rdx,%rdx,1),%ecx
  80b5e7:	8d 41 ff             	lea    -0x1(%rcx),%eax
  80b5ea:	3b 85 a8 f7 ff ff    	cmp    -0x858(%rbp),%eax
  80b5f0:	73 1b                	jae    80b60d <t3dmix_mod_mp_t3dmix4_tile_+0x387d>
  80b5f2:	48 63 c9             	movslq %ecx,%rcx
  80b5f5:	48 0f af 8d 40 fe ff 	imul   -0x1c0(%rbp),%rcx
  80b5fc:	ff 
  80b5fd:	48 8b 95 98 f7 ff ff 	mov    -0x868(%rbp),%rdx
  80b604:	48 8b 44 11 f8       	mov    -0x8(%rcx,%rdx,1),%rax
  80b609:	48 89 04 11          	mov    %rax,(%rcx,%rdx,1)
  80b60d:	43 f6 44 35 08 01    	testb  $0x1,0x8(%r13,%r14,1)
  80b613:	0f 85 f5 00 00 00    	jne    80b70e <t3dmix_mod_mp_t3dmix4_tile_+0x397e>
  80b619:	48 8b 85 70 fa ff ff 	mov    -0x590(%rbp),%rax
  80b620:	48 8b 95 60 fa ff ff 	mov    -0x5a0(%rbp),%rdx
  80b627:	f6 04 10 01          	testb  $0x1,(%rax,%rdx,1)
  80b62b:	0f 85 dd 00 00 00    	jne    80b70e <t3dmix_mod_mp_t3dmix4_tile_+0x397e>
  80b631:	48 8b 95 60 f8 ff ff 	mov    -0x7a0(%rbp),%rdx
  80b638:	48 8b 85 58 f8 ff ff 	mov    -0x7a8(%rbp),%rax
  80b63f:	48 8b b4 10 18 01 00 	mov    0x118(%rax,%rdx,1),%rsi
  80b646:	00 
  80b647:	48 f7 de             	neg    %rsi
  80b64a:	48 03 b5 50 f8 ff ff 	add    -0x7b0(%rbp),%rsi
  80b651:	48 0f af b4 10 10 01 	imul   0x110(%rax,%rdx,1),%rsi
  80b658:	00 00 
  80b65a:	48 8b 8c 10 d8 00 00 	mov    0xd8(%rax,%rdx,1),%rcx
  80b661:	00 
  80b662:	f6 04 31 01          	testb  $0x1,(%rcx,%rsi,1)
  80b666:	0f 84 a2 00 00 00    	je     80b70e <t3dmix_mod_mp_t3dmix4_tile_+0x397e>
  80b66c:	48 8b 85 18 f8 ff ff 	mov    -0x7e8(%rbp),%rax
  80b673:	48 8b 95 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdx
  80b67a:	48 8b b5 20 f8 ff ff 	mov    -0x7e0(%rbp),%rsi
  80b681:	48 63 0c 90          	movslq (%rax,%rdx,4),%rcx
  80b685:	48 0f af 8d 10 f8 ff 	imul   -0x7f0(%rbp),%rcx
  80b68c:	ff 
  80b68d:	f6 44 31 78 01       	testb  $0x1,0x78(%rcx,%rsi,1)
  80b692:	74 35                	je     80b6c9 <t3dmix_mod_mp_t3dmix4_tile_+0x3939>
  80b694:	8b 85 a0 fd ff ff    	mov    -0x260(%rbp),%eax
  80b69a:	3b 85 98 fd ff ff    	cmp    -0x268(%rbp),%eax
  80b6a0:	7c 6c                	jl     80b70e <t3dmix_mod_mp_t3dmix4_tile_+0x397e>
  80b6a2:	83 bd b0 f4 ff ff 0c 	cmpl   $0xc,-0xb50(%rbp)
  80b6a9:	0f 8e fb 16 00 00    	jle    80cdaa <t3dmix_mod_mp_t3dmix4_tile_+0x501a>
  80b6af:	33 f6                	xor    %esi,%esi
  80b6b1:	48 8b bd 08 f8 ff ff 	mov    -0x7f8(%rbp),%rdi
  80b6b8:	48 8b 95 f8 f7 ff ff 	mov    -0x808(%rbp),%rdx
  80b6bf:	c5 f8 77             	vzeroupper 
  80b6c2:	e8 79 d6 cc ff       	callq  4d8d40 <_intel_fast_memset>
  80b6c7:	eb 45                	jmp    80b70e <t3dmix_mod_mp_t3dmix4_tile_+0x397e>
  80b6c9:	8b 85 a0 fd ff ff    	mov    -0x260(%rbp),%eax
  80b6cf:	3b 85 98 fd ff ff    	cmp    -0x268(%rbp),%eax
  80b6d5:	7c 37                	jl     80b70e <t3dmix_mod_mp_t3dmix4_tile_+0x397e>
  80b6d7:	83 bd b0 f4 ff ff 0c 	cmpl   $0xc,-0xb50(%rbp)
  80b6de:	0f 8e 3c 18 00 00    	jle    80cf20 <t3dmix_mod_mp_t3dmix4_tile_+0x5190>
  80b6e4:	83 bd b8 f7 ff ff 00 	cmpl   $0x0,-0x848(%rbp)
  80b6eb:	0f 84 2f 18 00 00    	je     80cf20 <t3dmix_mod_mp_t3dmix4_tile_+0x5190>
  80b6f1:	c5 f8 77             	vzeroupper 
  80b6f4:	48 8b bd 08 f8 ff ff 	mov    -0x7f8(%rbp),%rdi
  80b6fb:	48 8b b5 d8 f7 ff ff 	mov    -0x828(%rbp),%rsi
  80b702:	48 8b 95 f8 f7 ff ff 	mov    -0x808(%rbp),%rdx
  80b709:	e8 32 d4 cc ff       	callq  4d8b40 <_intel_fast_memcpy>
  80b70e:	43 f6 44 35 10 01    	testb  $0x1,0x10(%r13,%r14,1)
  80b714:	0f 85 f8 00 00 00    	jne    80b812 <t3dmix_mod_mp_t3dmix4_tile_+0x3a82>
  80b71a:	48 8b 85 70 fa ff ff 	mov    -0x590(%rbp),%rax
  80b721:	48 8b 95 60 fa ff ff 	mov    -0x5a0(%rbp),%rdx
  80b728:	f6 04 10 01          	testb  $0x1,(%rax,%rdx,1)
  80b72c:	0f 85 e0 00 00 00    	jne    80b812 <t3dmix_mod_mp_t3dmix4_tile_+0x3a82>
  80b732:	48 8b 95 60 f8 ff ff 	mov    -0x7a0(%rbp),%rdx
  80b739:	48 8b 85 58 f8 ff ff 	mov    -0x7a8(%rbp),%rax
  80b740:	48 8b b4 10 d0 00 00 	mov    0xd0(%rax,%rdx,1),%rsi
  80b747:	00 
  80b748:	48 f7 de             	neg    %rsi
  80b74b:	48 03 b5 50 f8 ff ff 	add    -0x7b0(%rbp),%rsi
  80b752:	48 0f af b4 10 c8 00 	imul   0xc8(%rax,%rdx,1),%rsi
  80b759:	00 00 
  80b75b:	48 8b 8c 10 90 00 00 	mov    0x90(%rax,%rdx,1),%rcx
  80b762:	00 
  80b763:	f6 04 31 01          	testb  $0x1,(%rcx,%rsi,1)
  80b767:	0f 84 a5 00 00 00    	je     80b812 <t3dmix_mod_mp_t3dmix4_tile_+0x3a82>
  80b76d:	48 8b 85 18 f8 ff ff 	mov    -0x7e8(%rbp),%rax
  80b774:	48 8b 95 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdx
  80b77b:	48 8b b5 20 f8 ff ff 	mov    -0x7e0(%rbp),%rsi
  80b782:	48 63 0c 90          	movslq (%rax,%rdx,4),%rcx
  80b786:	48 0f af 8d 10 f8 ff 	imul   -0x7f0(%rbp),%rcx
  80b78d:	ff 
  80b78e:	f6 84 31 e0 00 00 00 	testb  $0x1,0xe0(%rcx,%rsi,1)
  80b795:	01 
  80b796:	74 35                	je     80b7cd <t3dmix_mod_mp_t3dmix4_tile_+0x3a3d>
  80b798:	8b 85 a0 fd ff ff    	mov    -0x260(%rbp),%eax
  80b79e:	3b 85 98 fd ff ff    	cmp    -0x268(%rbp),%eax
  80b7a4:	7c 6c                	jl     80b812 <t3dmix_mod_mp_t3dmix4_tile_+0x3a82>
  80b7a6:	83 bd b0 f4 ff ff 0c 	cmpl   $0xc,-0xb50(%rbp)
  80b7ad:	0f 8e 65 16 00 00    	jle    80ce18 <t3dmix_mod_mp_t3dmix4_tile_+0x5088>
  80b7b3:	33 f6                	xor    %esi,%esi
  80b7b5:	48 8b bd c0 f7 ff ff 	mov    -0x840(%rbp),%rdi
  80b7bc:	48 8b 95 f8 f7 ff ff 	mov    -0x808(%rbp),%rdx
  80b7c3:	c5 f8 77             	vzeroupper 
  80b7c6:	e8 75 d5 cc ff       	callq  4d8d40 <_intel_fast_memset>
  80b7cb:	eb 45                	jmp    80b812 <t3dmix_mod_mp_t3dmix4_tile_+0x3a82>
  80b7cd:	8b 85 a0 fd ff ff    	mov    -0x260(%rbp),%eax
  80b7d3:	3b 85 98 fd ff ff    	cmp    -0x268(%rbp),%eax
  80b7d9:	7c 37                	jl     80b812 <t3dmix_mod_mp_t3dmix4_tile_+0x3a82>
  80b7db:	83 bd b0 f4 ff ff 0c 	cmpl   $0xc,-0xb50(%rbp)
  80b7e2:	0f 8e c9 16 00 00    	jle    80ceb1 <t3dmix_mod_mp_t3dmix4_tile_+0x5121>
  80b7e8:	83 bd b0 f7 ff ff 00 	cmpl   $0x0,-0x850(%rbp)
  80b7ef:	0f 84 bc 16 00 00    	je     80ceb1 <t3dmix_mod_mp_t3dmix4_tile_+0x5121>
  80b7f5:	c5 f8 77             	vzeroupper 
  80b7f8:	48 8b bd c0 f7 ff ff 	mov    -0x840(%rbp),%rdi
  80b7ff:	48 8b b5 00 f8 ff ff 	mov    -0x800(%rbp),%rsi
  80b806:	48 8b 95 f8 f7 ff ff 	mov    -0x808(%rbp),%rdx
  80b80d:	e8 2e d3 cc ff       	callq  4d8b40 <_intel_fast_memcpy>
  80b812:	48 83 bd 00 ff ff ff 	cmpq   $0x8,-0x100(%rbp)
  80b819:	08 
  80b81a:	0f 85 ae 02 00 00    	jne    80bace <t3dmix_mod_mp_t3dmix4_tile_+0x3d3e>
  80b820:	48 83 bd f8 fe ff ff 	cmpq   $0x8,-0x108(%rbp)
  80b827:	08 
  80b828:	0f 85 a0 02 00 00    	jne    80bace <t3dmix_mod_mp_t3dmix4_tile_+0x3d3e>
  80b82e:	48 83 bd 18 ff ff ff 	cmpq   $0x8,-0xe8(%rbp)
  80b835:	08 
  80b836:	0f 85 92 02 00 00    	jne    80bace <t3dmix_mod_mp_t3dmix4_tile_+0x3d3e>
  80b83c:	48 83 bd f0 fe ff ff 	cmpq   $0x8,-0x110(%rbp)
  80b843:	08 
  80b844:	0f 85 84 02 00 00    	jne    80bace <t3dmix_mod_mp_t3dmix4_tile_+0x3d3e>
  80b84a:	48 83 bd e8 fe ff ff 	cmpq   $0x8,-0x118(%rbp)
  80b851:	08 
  80b852:	0f 85 76 02 00 00    	jne    80bace <t3dmix_mod_mp_t3dmix4_tile_+0x3d3e>
  80b858:	45 33 c9             	xor    %r9d,%r9d
  80b85b:	48 8b 85 10 fa ff ff 	mov    -0x5f0(%rbp),%rax
  80b862:	33 ff                	xor    %edi,%edi
  80b864:	48 8b b5 78 f3 ff ff 	mov    -0xc88(%rbp),%rsi
  80b86b:	45 33 d2             	xor    %r10d,%r10d
  80b86e:	4c 8b 85 80 f3 ff ff 	mov    -0xc80(%rbp),%r8
  80b875:	4c 8b 9d 88 f3 ff ff 	mov    -0xc78(%rbp),%r11
  80b87c:	48 3b 85 c0 f9 ff ff 	cmp    -0x640(%rbp),%rax
  80b883:	0f 8c 7a 07 00 00    	jl     80c003 <t3dmix_mod_mp_t3dmix4_tile_+0x4273>
  80b889:	48 8b 95 f0 f8 ff ff 	mov    -0x710(%rbp),%rdx
  80b890:	49 0f af d4          	imul   %r12,%rdx
  80b894:	c5 fd 10 05 c4 98 0b 	vmovupd 0xb98c4(%rip),%ymm0        # 8c5160 <var$630.126.450+0x4a0>
  80b89b:	00 
  80b89c:	c5 fb 10 0d 74 b7 0b 	vmovsd 0xbb774(%rip),%xmm1        # 8c7018 <__STRLITPACK_199.115+0x88>
  80b8a3:	00 
  80b8a4:	48 8b 8d e8 f8 ff ff 	mov    -0x718(%rbp),%rcx
  80b8ab:	49 0f af cc          	imul   %r12,%rcx
  80b8af:	48 8b 85 88 f8 ff ff 	mov    -0x778(%rbp),%rax
  80b8b6:	48 03 8d 80 f8 ff ff 	add    -0x780(%rbp),%rcx
  80b8bd:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80b8c4:	48 03 c2             	add    %rdx,%rax
  80b8c7:	48 03 95 a0 f8 ff ff 	add    -0x760(%rbp),%rdx
  80b8ce:	48 89 95 90 fa ff ff 	mov    %rdx,-0x570(%rbp)
  80b8d5:	48 89 85 98 fa ff ff 	mov    %rax,-0x568(%rbp)
  80b8dc:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
  80b8e3:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
  80b8ea:	48 3b 85 08 fd ff ff 	cmp    -0x2f8(%rbp),%rax
  80b8f1:	0f 8c 98 01 00 00    	jl     80ba8f <t3dmix_mod_mp_t3dmix4_tile_+0x3cff>
  80b8f7:	48 83 fa 04          	cmp    $0x4,%rdx
  80b8fb:	0f 8c 85 15 00 00    	jl     80ce86 <t3dmix_mod_mp_t3dmix4_tile_+0x50f6>
  80b901:	4c 8b bd f8 fc ff ff 	mov    -0x308(%rbp),%r15
  80b908:	45 33 f6             	xor    %r14d,%r14d
  80b90b:	4c 8b ad 90 fd ff ff 	mov    -0x270(%rbp),%r13
  80b912:	4c 8b a5 58 fd ff ff 	mov    -0x2a8(%rbp),%r12
  80b919:	48 8b 85 20 fb ff ff 	mov    -0x4e0(%rbp),%rax
  80b920:	4c 03 ff             	add    %rdi,%r15
  80b923:	4c 89 bd b8 fa ff ff 	mov    %r15,-0x548(%rbp)
  80b92a:	4c 03 ef             	add    %rdi,%r13
  80b92d:	4c 8b bd 90 fa ff ff 	mov    -0x570(%rbp),%r15
  80b934:	4c 03 e7             	add    %rdi,%r12
  80b937:	48 89 bd 50 fb ff ff 	mov    %rdi,-0x4b0(%rbp)
  80b93e:	4c 89 8d 58 fb ff ff 	mov    %r9,-0x4a8(%rbp)
  80b945:	4c 8b 8d b8 fa ff ff 	mov    -0x548(%rbp),%r9
  80b94c:	4d 03 fa             	add    %r10,%r15
  80b94f:	4c 89 bd a8 fa ff ff 	mov    %r15,-0x558(%rbp)
  80b956:	4c 8b bd 98 fa ff ff 	mov    -0x568(%rbp),%r15
  80b95d:	48 8b bd a8 fa ff ff 	mov    -0x558(%rbp),%rdi
  80b964:	4d 03 fa             	add    %r10,%r15
  80b967:	4c 89 bd a0 fa ff ff 	mov    %r15,-0x560(%rbp)
  80b96e:	49 89 c7             	mov    %rax,%r15
  80b971:	48 8b 95 a0 fa ff ff 	mov    -0x560(%rbp),%rdx
  80b978:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  80b97f:	00 
  80b980:	c4 a1 7d 59 14 f1    	vmulpd (%rcx,%r14,8),%ymm0,%ymm2
  80b986:	c4 a1 7d 10 1c f2    	vmovupd (%rdx,%r14,8),%ymm3
  80b98c:	c4 81 7d 10 34 f4    	vmovupd (%r12,%r14,8),%ymm6
  80b992:	c4 a1 6d 59 24 f6    	vmulpd (%rsi,%r14,8),%ymm2,%ymm4
  80b998:	c4 a1 65 58 6c f7 f8 	vaddpd -0x8(%rdi,%r14,8),%ymm3,%ymm5
  80b99f:	c4 01 4d 5c 44 f5 f8 	vsubpd -0x8(%r13,%r14,8),%ymm6,%ymm8
  80b9a6:	c5 dd 59 fd          	vmulpd %ymm5,%ymm4,%ymm7
  80b9aa:	c4 41 45 59 c8       	vmulpd %ymm8,%ymm7,%ymm9
  80b9af:	c4 01 35 59 14 f0    	vmulpd (%r8,%r14,8),%ymm9,%ymm10
  80b9b5:	c4 01 2d 59 1c f3    	vmulpd (%r11,%r14,8),%ymm10,%ymm11
  80b9bb:	c4 01 7d 11 1c f1    	vmovupd %ymm11,(%r9,%r14,8)
  80b9c1:	49 83 c6 04          	add    $0x4,%r14
  80b9c5:	4d 3b f7             	cmp    %r15,%r14
  80b9c8:	72 b6                	jb     80b980 <t3dmix_mod_mp_t3dmix4_tile_+0x3bf0>
  80b9ca:	48 8b bd 50 fb ff ff 	mov    -0x4b0(%rbp),%rdi
  80b9d1:	4c 8b 8d 58 fb ff ff 	mov    -0x4a8(%rbp),%r9
  80b9d8:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
  80b9df:	48 3b c2             	cmp    %rdx,%rax
  80b9e2:	0f 83 a7 00 00 00    	jae    80ba8f <t3dmix_mod_mp_t3dmix4_tile_+0x3cff>
  80b9e8:	4c 8b ad 90 fd ff ff 	mov    -0x270(%rbp),%r13
  80b9ef:	4c 8b bd f8 fc ff ff 	mov    -0x308(%rbp),%r15
  80b9f6:	4c 8b b5 58 fd ff ff 	mov    -0x2a8(%rbp),%r14
  80b9fd:	4c 89 8d 58 fb ff ff 	mov    %r9,-0x4a8(%rbp)
  80ba04:	4d 8d 64 3d 00       	lea    0x0(%r13,%rdi,1),%r12
  80ba09:	4c 89 a5 b0 fa ff ff 	mov    %r12,-0x550(%rbp)
  80ba10:	4d 8d 24 3f          	lea    (%r15,%rdi,1),%r12
  80ba14:	4c 8b bd 98 fa ff ff 	mov    -0x568(%rbp),%r15
  80ba1b:	4d 8d 2c 3e          	lea    (%r14,%rdi,1),%r13
  80ba1f:	4c 8b b5 90 fa ff ff 	mov    -0x570(%rbp),%r14
  80ba26:	4d 03 fa             	add    %r10,%r15
  80ba29:	4d 89 f9             	mov    %r15,%r9
  80ba2c:	4d 03 f2             	add    %r10,%r14
  80ba2f:	4c 8b bd b0 fa ff ff 	mov    -0x550(%rbp),%r15
  80ba36:	0f 1f 00             	nopl   (%rax)
  80ba39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  80ba40:	c5 f3 59 14 c1       	vmulsd (%rcx,%rax,8),%xmm1,%xmm2
  80ba45:	c4 c1 7b 10 1c c1    	vmovsd (%r9,%rax,8),%xmm3
  80ba4b:	c5 eb 59 24 c6       	vmulsd (%rsi,%rax,8),%xmm2,%xmm4
  80ba50:	c4 c1 63 58 6c c6 f8 	vaddsd -0x8(%r14,%rax,8),%xmm3,%xmm5
  80ba57:	c4 c1 7b 10 74 c5 00 	vmovsd 0x0(%r13,%rax,8),%xmm6
  80ba5e:	c5 db 59 fd          	vmulsd %xmm5,%xmm4,%xmm7
  80ba62:	c4 41 4b 5c 44 c7 f8 	vsubsd -0x8(%r15,%rax,8),%xmm6,%xmm8
  80ba69:	c4 41 43 59 c8       	vmulsd %xmm8,%xmm7,%xmm9
  80ba6e:	c4 41 33 59 14 c0    	vmulsd (%r8,%rax,8),%xmm9,%xmm10
  80ba74:	c4 41 2b 59 1c c3    	vmulsd (%r11,%rax,8),%xmm10,%xmm11
  80ba7a:	c4 41 7b 11 1c c4    	vmovsd %xmm11,(%r12,%rax,8)
  80ba80:	48 ff c0             	inc    %rax
  80ba83:	48 3b c2             	cmp    %rdx,%rax
  80ba86:	72 b8                	jb     80ba40 <t3dmix_mod_mp_t3dmix4_tile_+0x3cb0>
  80ba88:	4c 8b 8d 58 fb ff ff 	mov    -0x4a8(%rbp),%r9
  80ba8f:	49 ff c1             	inc    %r9
  80ba92:	48 03 bd 40 fe ff ff 	add    -0x1c0(%rbp),%rdi
  80ba99:	48 03 8d c0 fd ff ff 	add    -0x240(%rbp),%rcx
  80baa0:	48 03 b5 b8 fd ff ff 	add    -0x248(%rbp),%rsi
  80baa7:	4c 03 95 d8 fd ff ff 	add    -0x228(%rbp),%r10
  80baae:	4c 03 85 b0 fd ff ff 	add    -0x250(%rbp),%r8
  80bab5:	4c 03 9d a8 fd ff ff 	add    -0x258(%rbp),%r11
  80babc:	4c 3b 8d 80 fd ff ff 	cmp    -0x280(%rbp),%r9
  80bac3:	0f 82 1a fe ff ff    	jb     80b8e3 <t3dmix_mod_mp_t3dmix4_tile_+0x3b53>
  80bac9:	e9 20 05 00 00       	jmpq   80bfee <t3dmix_mod_mp_t3dmix4_tile_+0x425e>
  80bace:	33 d2                	xor    %edx,%edx
  80bad0:	48 8b 85 10 fa ff ff 	mov    -0x5f0(%rbp),%rax
  80bad7:	45 33 c0             	xor    %r8d,%r8d
  80bada:	4c 8b 8d e0 f9 ff ff 	mov    -0x620(%rbp),%r9
  80bae1:	33 c9                	xor    %ecx,%ecx
  80bae3:	48 8b b5 00 fa ff ff 	mov    -0x600(%rbp),%rsi
  80baea:	48 8b bd f8 f9 ff ff 	mov    -0x608(%rbp),%rdi
  80baf1:	48 3b 85 c0 f9 ff ff 	cmp    -0x640(%rbp),%rax
  80baf8:	0f 8c 05 05 00 00    	jl     80c003 <t3dmix_mod_mp_t3dmix4_tile_+0x4273>
  80bafe:	4c 8b 95 f0 f8 ff ff 	mov    -0x710(%rbp),%r10
  80bb05:	4c 8b 9d e8 f8 ff ff 	mov    -0x718(%rbp),%r11
  80bb0c:	4d 0f af d4          	imul   %r12,%r10
  80bb10:	4d 0f af dc          	imul   %r12,%r11
  80bb14:	48 8b 85 b0 f8 ff ff 	mov    -0x750(%rbp),%rax
  80bb1b:	4c 03 9d b8 f8 ff ff 	add    -0x748(%rbp),%r11
  80bb22:	4c 89 9d 70 fe ff ff 	mov    %r11,-0x190(%rbp)
  80bb29:	48 89 95 20 fd ff ff 	mov    %rdx,-0x2e0(%rbp)
  80bb30:	49 03 c2             	add    %r10,%rax
  80bb33:	4c 03 95 a8 f8 ff ff 	add    -0x758(%rbp),%r10
  80bb3a:	4c 89 95 10 fd ff ff 	mov    %r10,-0x2f0(%rbp)
  80bb41:	48 89 85 18 fd ff ff 	mov    %rax,-0x2e8(%rbp)
  80bb48:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80bb4f:	c5 fb 10 0d c1 b4 0b 	vmovsd 0xbb4c1(%rip),%xmm1        # 8c7018 <__STRLITPACK_199.115+0x88>
  80bb56:	00 
  80bb57:	c5 f9 10 05 41 ac 0b 	vmovupd 0xbac41(%rip),%xmm0        # 8c67a0 <__STRLITPACK_19.34+0x10>
  80bb5e:	00 
  80bb5f:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
  80bb66:	48 3b 85 08 fd ff ff 	cmp    -0x2f8(%rbp),%rax
  80bb6d:	0f 8c 25 04 00 00    	jl     80bf98 <t3dmix_mod_mp_t3dmix4_tile_+0x4208>
  80bb73:	48 83 bd 50 fe ff ff 	cmpq   $0x2,-0x1b0(%rbp)
  80bb7a:	02 
  80bb7b:	0f 8c 29 13 00 00    	jl     80ceaa <t3dmix_mod_mp_t3dmix4_tile_+0x511a>
  80bb81:	48 8b 85 f8 fc ff ff 	mov    -0x308(%rbp),%rax
  80bb88:	4c 8d 34 08          	lea    (%rax,%rcx,1),%r14
  80bb8c:	4c 89 b5 68 fe ff ff 	mov    %r14,-0x198(%rbp)
  80bb93:	49 83 e6 0f          	and    $0xf,%r14
  80bb97:	45 85 f6             	test   %r14d,%r14d
  80bb9a:	74 13                	je     80bbaf <t3dmix_mod_mp_t3dmix4_tile_+0x3e1f>
  80bb9c:	41 f7 c6 07 00 00 00 	test   $0x7,%r14d
  80bba3:	0f 85 01 13 00 00    	jne    80ceaa <t3dmix_mod_mp_t3dmix4_tile_+0x511a>
  80bba9:	41 be 01 00 00 00    	mov    $0x1,%r14d
  80bbaf:	44 89 f2             	mov    %r14d,%edx
  80bbb2:	48 8d 42 02          	lea    0x2(%rdx),%rax
  80bbb6:	48 3b 85 50 fe ff ff 	cmp    -0x1b0(%rbp),%rax
  80bbbd:	0f 8f e7 12 00 00    	jg     80ceaa <t3dmix_mod_mp_t3dmix4_tile_+0x511a>
  80bbc3:	4c 8b bd 90 fd ff ff 	mov    -0x270(%rbp),%r15
  80bbca:	44 8b a5 70 fd ff ff 	mov    -0x290(%rbp),%r12d
  80bbd1:	44 89 e0             	mov    %r12d,%eax
  80bbd4:	41 2b c6             	sub    %r14d,%eax
  80bbd7:	83 e0 01             	and    $0x1,%eax
  80bbda:	4c 03 f9             	add    %rcx,%r15
  80bbdd:	4c 89 bd 60 fe ff ff 	mov    %r15,-0x1a0(%rbp)
  80bbe4:	f7 d8                	neg    %eax
  80bbe6:	4c 8b bd 58 fd ff ff 	mov    -0x2a8(%rbp),%r15
  80bbed:	41 03 c4             	add    %r12d,%eax
  80bbf0:	45 33 e4             	xor    %r12d,%r12d
  80bbf3:	45 33 d2             	xor    %r10d,%r10d
  80bbf6:	45 33 ed             	xor    %r13d,%r13d
  80bbf9:	4c 03 f9             	add    %rcx,%r15
  80bbfc:	4c 89 bd 88 fe ff ff 	mov    %r15,-0x178(%rbp)
  80bc03:	45 33 db             	xor    %r11d,%r11d
  80bc06:	4c 8b bd 18 fd ff ff 	mov    -0x2e8(%rbp),%r15
  80bc0d:	48 63 c0             	movslq %eax,%rax
  80bc10:	4d 03 f8             	add    %r8,%r15
  80bc13:	4c 89 bd 28 fd ff ff 	mov    %r15,-0x2d8(%rbp)
  80bc1a:	4c 8b bd 10 fd ff ff 	mov    -0x2f0(%rbp),%r15
  80bc21:	4d 03 f8             	add    %r8,%r15
  80bc24:	4c 89 bd 78 fe ff ff 	mov    %r15,-0x188(%rbp)
  80bc2b:	45 85 f6             	test   %r14d,%r14d
  80bc2e:	0f 86 c9 00 00 00    	jbe    80bcfd <t3dmix_mod_mp_t3dmix4_tile_+0x3f6d>
  80bc34:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
  80bc3b:	48 89 8d 60 fb ff ff 	mov    %rcx,-0x4a0(%rbp)
  80bc42:	4c 89 85 68 fb ff ff 	mov    %r8,-0x498(%rbp)
  80bc49:	4c 89 d8             	mov    %r11,%rax
  80bc4c:	4d 89 d6             	mov    %r10,%r14
  80bc4f:	48 8b 8d 28 fd ff ff 	mov    -0x2d8(%rbp),%rcx
  80bc56:	4c 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%r8
  80bc5d:	4c 8b bd 70 fe ff ff 	mov    -0x190(%rbp),%r15
  80bc64:	c4 81 7b 10 34 e0    	vmovsd (%r8,%r12,8),%xmm6
  80bc6a:	c4 81 73 59 14 3a    	vmulsd (%r10,%r15,1),%xmm1,%xmm2
  80bc70:	4c 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%r15
  80bc77:	c4 81 6b 59 24 0b    	vmulsd (%r11,%r9,1),%xmm2,%xmm4
  80bc7d:	c4 a1 7b 10 1c 38    	vmovsd (%rax,%r15,1),%xmm3
  80bc83:	4c 8b bd 60 fe ff ff 	mov    -0x1a0(%rbp),%r15
  80bc8a:	4c 03 95 00 ff ff ff 	add    -0x100(%rbp),%r10
  80bc91:	4c 03 9d f8 fe ff ff 	add    -0x108(%rbp),%r11
  80bc98:	c5 e3 58 2c 08       	vaddsd (%rax,%rcx,1),%xmm3,%xmm5
  80bc9d:	c4 01 4b 5c 44 e7 f8 	vsubsd -0x8(%r15,%r12,8),%xmm6,%xmm8
  80bca4:	c5 db 59 fd          	vmulsd %xmm5,%xmm4,%xmm7
  80bca8:	c4 41 43 59 c8       	vmulsd %xmm8,%xmm7,%xmm9
  80bcad:	c4 41 33 59 14 36    	vmulsd (%r14,%rsi,1),%xmm9,%xmm10
  80bcb3:	c4 41 2b 59 5c 3d 00 	vmulsd 0x0(%r13,%rdi,1),%xmm10,%xmm11
  80bcba:	4c 8b bd 68 fe ff ff 	mov    -0x198(%rbp),%r15
  80bcc1:	4c 03 b5 f0 fe ff ff 	add    -0x110(%rbp),%r14
  80bcc8:	4c 03 ad e8 fe ff ff 	add    -0x118(%rbp),%r13
  80bccf:	c4 01 7b 11 1c e7    	vmovsd %xmm11,(%r15,%r12,8)
  80bcd5:	49 ff c4             	inc    %r12
  80bcd8:	48 03 85 18 ff ff ff 	add    -0xe8(%rbp),%rax
  80bcdf:	4c 3b e2             	cmp    %rdx,%r12
  80bce2:	0f 82 75 ff ff ff    	jb     80bc5d <t3dmix_mod_mp_t3dmix4_tile_+0x3ecd>
  80bce8:	48 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%rax
  80bcef:	48 8b 8d 60 fb ff ff 	mov    -0x4a0(%rbp),%rcx
  80bcf6:	4c 8b 85 68 fb ff ff 	mov    -0x498(%rbp),%r8
  80bcfd:	4c 8b 9d 18 ff ff ff 	mov    -0xe8(%rbp),%r11
  80bd04:	4c 8b a5 e8 fe ff ff 	mov    -0x118(%rbp),%r12
  80bd0b:	4c 8b 95 f0 fe ff ff 	mov    -0x110(%rbp),%r10
  80bd12:	4c 8b ad f8 fe ff ff 	mov    -0x108(%rbp),%r13
  80bd19:	4c 8b b5 00 ff ff ff 	mov    -0x100(%rbp),%r14
  80bd20:	4c 89 85 68 fb ff ff 	mov    %r8,-0x498(%rbp)
  80bd27:	4c 0f af da          	imul   %rdx,%r11
  80bd2b:	4c 0f af e2          	imul   %rdx,%r12
  80bd2f:	4c 0f af d2          	imul   %rdx,%r10
  80bd33:	4c 0f af ea          	imul   %rdx,%r13
  80bd37:	4c 0f af f2          	imul   %rdx,%r14
  80bd3b:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
  80bd42:	48 89 8d 60 fb ff ff 	mov    %rcx,-0x4a0(%rbp)
  80bd49:	4c 8b 85 28 fd ff ff 	mov    -0x2d8(%rbp),%r8
  80bd50:	4c 8b bd 60 fe ff ff 	mov    -0x1a0(%rbp),%r15
  80bd57:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
  80bd5e:	c5 f9 10 14 d0       	vmovupd (%rax,%rdx,8),%xmm2
  80bd63:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
  80bd6a:	c4 41 69 5c 7c d7 f8 	vsubpd -0x8(%r15,%rdx,8),%xmm2,%xmm15
  80bd71:	4a 8d 0c 30          	lea    (%rax,%r14,1),%rcx
  80bd75:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
  80bd7c:	c5 fb 10 19          	vmovsd (%rcx),%xmm3
  80bd80:	c5 e1 16 24 01       	vmovhpd (%rcx,%rax,1),%xmm3,%xmm4
  80bd85:	4d 8d 34 46          	lea    (%r14,%rax,2),%r14
  80bd89:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
  80bd90:	4b 8d 0c 29          	lea    (%r9,%r13,1),%rcx
  80bd94:	c5 f9 59 f4          	vmulpd %xmm4,%xmm0,%xmm6
  80bd98:	c5 fb 10 29          	vmovsd (%rcx),%xmm5
  80bd9c:	4d 8d 6c 45 00       	lea    0x0(%r13,%rax,2),%r13
  80bda1:	c5 d1 16 3c 01       	vmovhpd (%rcx,%rax,1),%xmm5,%xmm7
  80bda6:	48 8b 8d 78 fe ff ff 	mov    -0x188(%rbp),%rcx
  80bdad:	c5 49 59 e7          	vmulpd %xmm7,%xmm6,%xmm12
  80bdb1:	4a 8d 04 19          	lea    (%rcx,%r11,1),%rax
  80bdb5:	48 8b 8d 18 ff ff ff 	mov    -0xe8(%rbp),%rcx
  80bdbc:	c5 7b 10 00          	vmovsd (%rax),%xmm8
  80bdc0:	c5 39 16 14 08       	vmovhpd (%rax,%rcx,1),%xmm8,%xmm10
  80bdc5:	4b 8d 04 18          	lea    (%r8,%r11,1),%rax
  80bdc9:	c5 7b 10 08          	vmovsd (%rax),%xmm9
  80bdcd:	4d 8d 1c 4b          	lea    (%r11,%rcx,2),%r11
  80bdd1:	c5 31 16 1c 08       	vmovhpd (%rax,%rcx,1),%xmm9,%xmm11
  80bdd6:	4a 8d 0c 16          	lea    (%rsi,%r10,1),%rcx
  80bdda:	c4 41 29 58 eb       	vaddpd %xmm11,%xmm10,%xmm13
  80bddf:	c4 41 19 59 f5       	vmulpd %xmm13,%xmm12,%xmm14
  80bde4:	c4 c1 09 59 df       	vmulpd %xmm15,%xmm14,%xmm3
  80bde9:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
  80bdf0:	c5 fb 10 11          	vmovsd (%rcx),%xmm2
  80bdf4:	c5 e9 16 24 01       	vmovhpd (%rcx,%rax,1),%xmm2,%xmm4
  80bdf9:	4d 8d 14 42          	lea    (%r10,%rax,2),%r10
  80bdfd:	c5 e1 59 f4          	vmulpd %xmm4,%xmm3,%xmm6
  80be01:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  80be08:	4a 8d 0c 27          	lea    (%rdi,%r12,1),%rcx
  80be0c:	c5 fb 10 29          	vmovsd (%rcx),%xmm5
  80be10:	c5 d1 16 3c 01       	vmovhpd (%rcx,%rax,1),%xmm5,%xmm7
  80be15:	4d 8d 24 44          	lea    (%r12,%rax,2),%r12
  80be19:	c5 49 59 c7          	vmulpd %xmm7,%xmm6,%xmm8
  80be1d:	48 8b 8d 68 fe ff ff 	mov    -0x198(%rbp),%rcx
  80be24:	c5 79 11 04 d1       	vmovupd %xmm8,(%rcx,%rdx,8)
  80be29:	48 83 c2 02          	add    $0x2,%rdx
  80be2d:	48 3b 95 58 fe ff ff 	cmp    -0x1a8(%rbp),%rdx
  80be34:	0f 82 1d ff ff ff    	jb     80bd57 <t3dmix_mod_mp_t3dmix4_tile_+0x3fc7>
  80be3a:	48 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%rax
  80be41:	48 8b 8d 60 fb ff ff 	mov    -0x4a0(%rbp),%rcx
  80be48:	4c 8b 85 68 fb ff ff 	mov    -0x498(%rbp),%r8
  80be4f:	4c 8b ad 18 ff ff ff 	mov    -0xe8(%rbp),%r13
  80be56:	4c 8b a5 f8 fe ff ff 	mov    -0x108(%rbp),%r12
  80be5d:	4c 8b 9d e8 fe ff ff 	mov    -0x118(%rbp),%r11
  80be64:	4c 8b 95 f0 fe ff ff 	mov    -0x110(%rbp),%r10
  80be6b:	48 8b 95 00 ff ff ff 	mov    -0x100(%rbp),%rdx
  80be72:	4c 0f af e8          	imul   %rax,%r13
  80be76:	4c 0f af e0          	imul   %rax,%r12
  80be7a:	4c 0f af d8          	imul   %rax,%r11
  80be7e:	4c 0f af d0          	imul   %rax,%r10
  80be82:	48 0f af d0          	imul   %rax,%rdx
  80be86:	48 3b 85 50 fe ff ff 	cmp    -0x1b0(%rbp),%rax
  80be8d:	0f 83 05 01 00 00    	jae    80bf98 <t3dmix_mod_mp_t3dmix4_tile_+0x4208>
  80be93:	4c 8b b5 90 fd ff ff 	mov    -0x270(%rbp),%r14
  80be9a:	48 89 8d 60 fb ff ff 	mov    %rcx,-0x4a0(%rbp)
  80bea1:	4c 89 85 68 fb ff ff 	mov    %r8,-0x498(%rbp)
  80bea8:	4d 8d 3c 0e          	lea    (%r14,%rcx,1),%r15
  80beac:	4c 89 bd c8 fa ff ff 	mov    %r15,-0x538(%rbp)
  80beb3:	4c 8b bd f8 fc ff ff 	mov    -0x308(%rbp),%r15
  80beba:	4c 8b b5 58 fd ff ff 	mov    -0x2a8(%rbp),%r14
  80bec1:	4c 03 f9             	add    %rcx,%r15
  80bec4:	4c 89 bd c0 fa ff ff 	mov    %r15,-0x540(%rbp)
  80becb:	4c 8b bd 18 fd ff ff 	mov    -0x2e8(%rbp),%r15
  80bed2:	4c 03 f1             	add    %rcx,%r14
  80bed5:	4c 89 b5 80 fe ff ff 	mov    %r14,-0x180(%rbp)
  80bedc:	4c 8b b5 c0 fa ff ff 	mov    -0x540(%rbp),%r14
  80bee3:	48 8b 8d c8 fa ff ff 	mov    -0x538(%rbp),%rcx
  80beea:	4d 03 f8             	add    %r8,%r15
  80beed:	4c 89 bd 90 fe ff ff 	mov    %r15,-0x170(%rbp)
  80bef4:	4c 8b bd 10 fd ff ff 	mov    -0x2f0(%rbp),%r15
  80befb:	4d 03 f8             	add    %r8,%r15
  80befe:	4d 89 f8             	mov    %r15,%r8
  80bf01:	4c 8b bd 70 fe ff ff 	mov    -0x190(%rbp),%r15
  80bf08:	c4 81 7b 10 5c 05 00 	vmovsd 0x0(%r13,%r8,1),%xmm3
  80bf0f:	c4 a1 73 59 14 3a    	vmulsd (%rdx,%r15,1),%xmm1,%xmm2
  80bf15:	4c 8b bd 90 fe ff ff 	mov    -0x170(%rbp),%r15
  80bf1c:	c4 81 6b 59 24 0c    	vmulsd (%r12,%r9,1),%xmm2,%xmm4
  80bf22:	c4 81 63 58 6c 3d 00 	vaddsd 0x0(%r13,%r15,1),%xmm3,%xmm5
  80bf29:	4c 8b bd 80 fe ff ff 	mov    -0x180(%rbp),%r15
  80bf30:	c5 db 59 fd          	vmulsd %xmm5,%xmm4,%xmm7
  80bf34:	c4 c1 7b 10 34 c7    	vmovsd (%r15,%rax,8),%xmm6
  80bf3a:	48 03 95 00 ff ff ff 	add    -0x100(%rbp),%rdx
  80bf41:	4c 03 a5 f8 fe ff ff 	add    -0x108(%rbp),%r12
  80bf48:	4c 03 ad 18 ff ff ff 	add    -0xe8(%rbp),%r13
  80bf4f:	c5 4b 5c 44 c1 f8    	vsubsd -0x8(%rcx,%rax,8),%xmm6,%xmm8
  80bf55:	c4 41 43 59 c8       	vmulsd %xmm8,%xmm7,%xmm9
  80bf5a:	c4 41 33 59 14 32    	vmulsd (%r10,%rsi,1),%xmm9,%xmm10
  80bf60:	c4 41 2b 59 1c 3b    	vmulsd (%r11,%rdi,1),%xmm10,%xmm11
  80bf66:	c4 41 7b 11 1c c6    	vmovsd %xmm11,(%r14,%rax,8)
  80bf6c:	48 ff c0             	inc    %rax
  80bf6f:	4c 03 95 f0 fe ff ff 	add    -0x110(%rbp),%r10
  80bf76:	4c 03 9d e8 fe ff ff 	add    -0x118(%rbp),%r11
  80bf7d:	48 3b 85 50 fe ff ff 	cmp    -0x1b0(%rbp),%rax
  80bf84:	0f 82 77 ff ff ff    	jb     80bf01 <t3dmix_mod_mp_t3dmix4_tile_+0x4171>
  80bf8a:	48 8b 8d 60 fb ff ff 	mov    -0x4a0(%rbp),%rcx
  80bf91:	4c 8b 85 68 fb ff ff 	mov    -0x498(%rbp),%r8
  80bf98:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
  80bf9f:	48 8b 95 20 fd ff ff 	mov    -0x2e0(%rbp),%rdx
  80bfa6:	48 ff c2             	inc    %rdx
  80bfa9:	48 03 85 c0 fd ff ff 	add    -0x240(%rbp),%rax
  80bfb0:	4c 03 8d b8 fd ff ff 	add    -0x248(%rbp),%r9
  80bfb7:	4c 03 85 d8 fd ff ff 	add    -0x228(%rbp),%r8
  80bfbe:	48 03 b5 b0 fd ff ff 	add    -0x250(%rbp),%rsi
  80bfc5:	48 03 bd a8 fd ff ff 	add    -0x258(%rbp),%rdi
  80bfcc:	48 03 8d 40 fe ff ff 	add    -0x1c0(%rbp),%rcx
  80bfd3:	48 89 85 70 fe ff ff 	mov    %rax,-0x190(%rbp)
  80bfda:	48 89 95 20 fd ff ff 	mov    %rdx,-0x2e0(%rbp)
  80bfe1:	48 3b 95 80 fd ff ff 	cmp    -0x280(%rbp),%rdx
  80bfe8:	0f 82 71 fb ff ff    	jb     80bb5f <t3dmix_mod_mp_t3dmix4_tile_+0x3dcf>
  80bfee:	4c 8b ad d8 f8 ff ff 	mov    -0x728(%rbp),%r13
  80bff5:	4c 8b b5 e0 f8 ff ff 	mov    -0x720(%rbp),%r14
  80bffc:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  80c003:	48 83 bd 28 ff ff ff 	cmpq   $0x8,-0xd8(%rbp)
  80c00a:	08 
  80c00b:	0f 85 ac 02 00 00    	jne    80c2bd <t3dmix_mod_mp_t3dmix4_tile_+0x452d>
  80c011:	48 83 bd 20 ff ff ff 	cmpq   $0x8,-0xe0(%rbp)
  80c018:	08 
  80c019:	0f 85 9e 02 00 00    	jne    80c2bd <t3dmix_mod_mp_t3dmix4_tile_+0x452d>
  80c01f:	48 83 bd 18 ff ff ff 	cmpq   $0x8,-0xe8(%rbp)
  80c026:	08 
  80c027:	0f 85 90 02 00 00    	jne    80c2bd <t3dmix_mod_mp_t3dmix4_tile_+0x452d>
  80c02d:	48 83 bd 10 ff ff ff 	cmpq   $0x8,-0xf0(%rbp)
  80c034:	08 
  80c035:	0f 85 82 02 00 00    	jne    80c2bd <t3dmix_mod_mp_t3dmix4_tile_+0x452d>
  80c03b:	48 83 bd 08 ff ff ff 	cmpq   $0x8,-0xf8(%rbp)
  80c042:	08 
  80c043:	0f 85 74 02 00 00    	jne    80c2bd <t3dmix_mod_mp_t3dmix4_tile_+0x452d>
  80c049:	45 33 c9             	xor    %r9d,%r9d
  80c04c:	48 8b 85 c0 f9 ff ff 	mov    -0x640(%rbp),%rax
  80c053:	33 ff                	xor    %edi,%edi
  80c055:	48 8b b5 60 f3 ff ff 	mov    -0xca0(%rbp),%rsi
  80c05c:	45 33 d2             	xor    %r10d,%r10d
  80c05f:	4c 8b 85 68 f3 ff ff 	mov    -0xc98(%rbp),%r8
  80c066:	4c 8b 9d 70 f3 ff ff 	mov    -0xc90(%rbp),%r11
  80c06d:	48 3b 85 c8 f9 ff ff 	cmp    -0x638(%rbp),%rax
  80c074:	0f 8f 79 07 00 00    	jg     80c7f3 <t3dmix_mod_mp_t3dmix4_tile_+0x4a63>
  80c07a:	48 8b 95 f0 f8 ff ff 	mov    -0x710(%rbp),%rdx
  80c081:	49 0f af d4          	imul   %r12,%rdx
  80c085:	c5 fd 10 05 d3 90 0b 	vmovupd 0xb90d3(%rip),%ymm0        # 8c5160 <var$630.126.450+0x4a0>
  80c08c:	00 
  80c08d:	c5 fb 10 0d 83 af 0b 	vmovsd 0xbaf83(%rip),%xmm1        # 8c7018 <__STRLITPACK_199.115+0x88>
  80c094:	00 
  80c095:	48 8b 8d f8 f8 ff ff 	mov    -0x708(%rbp),%rcx
  80c09c:	49 0f af cc          	imul   %r12,%rcx
  80c0a0:	48 8b 85 88 f8 ff ff 	mov    -0x778(%rbp),%rax
  80c0a7:	48 03 8d 90 f8 ff ff 	add    -0x770(%rbp),%rcx
  80c0ae:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80c0b5:	48 03 c2             	add    %rdx,%rax
  80c0b8:	48 03 95 78 f8 ff ff 	add    -0x788(%rbp),%rdx
  80c0bf:	48 89 95 d0 fa ff ff 	mov    %rdx,-0x530(%rbp)
  80c0c6:	48 89 85 d8 fa ff ff 	mov    %rax,-0x528(%rbp)
  80c0cd:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
  80c0d4:	48 8b 85 00 fd ff ff 	mov    -0x300(%rbp),%rax
  80c0db:	48 3b 85 08 fd ff ff 	cmp    -0x2f8(%rbp),%rax
  80c0e2:	0f 8c 96 01 00 00    	jl     80c27e <t3dmix_mod_mp_t3dmix4_tile_+0x44ee>
  80c0e8:	48 83 fa 04          	cmp    $0x4,%rdx
  80c0ec:	0f 8c 9b 0d 00 00    	jl     80ce8d <t3dmix_mod_mp_t3dmix4_tile_+0x50fd>
  80c0f2:	4c 8b bd 58 fd ff ff 	mov    -0x2a8(%rbp),%r15
  80c0f9:	45 33 f6             	xor    %r14d,%r14d
  80c0fc:	4c 8b ad 88 fd ff ff 	mov    -0x278(%rbp),%r13
  80c103:	4c 8b a5 c0 fc ff ff 	mov    -0x340(%rbp),%r12
  80c10a:	48 8b 85 28 fb ff ff 	mov    -0x4d8(%rbp),%rax
  80c111:	4c 03 ff             	add    %rdi,%r15
  80c114:	4c 89 bd f8 fa ff ff 	mov    %r15,-0x508(%rbp)
  80c11b:	4c 03 ef             	add    %rdi,%r13
  80c11e:	4c 8b bd d8 fa ff ff 	mov    -0x528(%rbp),%r15
  80c125:	4c 03 e7             	add    %rdi,%r12
  80c128:	48 89 bd 70 fb ff ff 	mov    %rdi,-0x490(%rbp)
  80c12f:	4c 89 8d 78 fb ff ff 	mov    %r9,-0x488(%rbp)
  80c136:	4c 8b 8d f8 fa ff ff 	mov    -0x508(%rbp),%r9
  80c13d:	4d 03 fa             	add    %r10,%r15
  80c140:	4c 89 bd e8 fa ff ff 	mov    %r15,-0x518(%rbp)
  80c147:	4c 8b bd d0 fa ff ff 	mov    -0x530(%rbp),%r15
  80c14e:	48 8b bd e8 fa ff ff 	mov    -0x518(%rbp),%rdi
  80c155:	4d 03 fa             	add    %r10,%r15
  80c158:	4c 89 bd e0 fa ff ff 	mov    %r15,-0x520(%rbp)
  80c15f:	49 89 c7             	mov    %rax,%r15
  80c162:	48 8b 95 e0 fa ff ff 	mov    -0x520(%rbp),%rdx
  80c169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  80c170:	c4 a1 7d 59 14 f1    	vmulpd (%rcx,%r14,8),%ymm0,%ymm2
  80c176:	c4 a1 7d 10 1c f7    	vmovupd (%rdi,%r14,8),%ymm3
  80c17c:	c4 81 7d 10 34 f1    	vmovupd (%r9,%r14,8),%ymm6
  80c182:	c4 a1 6d 59 24 f6    	vmulpd (%rsi,%r14,8),%ymm2,%ymm4
  80c188:	c4 a1 65 58 2c f2    	vaddpd (%rdx,%r14,8),%ymm3,%ymm5
  80c18e:	c4 01 4d 5c 44 f5 f8 	vsubpd -0x8(%r13,%r14,8),%ymm6,%ymm8
  80c195:	c5 dd 59 fd          	vmulpd %ymm5,%ymm4,%ymm7
  80c199:	c4 41 45 59 c8       	vmulpd %ymm8,%ymm7,%ymm9
  80c19e:	c4 01 35 59 14 f0    	vmulpd (%r8,%r14,8),%ymm9,%ymm10
  80c1a4:	c4 01 2d 59 1c f3    	vmulpd (%r11,%r14,8),%ymm10,%ymm11
  80c1aa:	c4 01 7d 11 1c f4    	vmovupd %ymm11,(%r12,%r14,8)
  80c1b0:	49 83 c6 04          	add    $0x4,%r14
  80c1b4:	4d 3b f7             	cmp    %r15,%r14
  80c1b7:	72 b7                	jb     80c170 <t3dmix_mod_mp_t3dmix4_tile_+0x43e0>
  80c1b9:	48 8b bd 70 fb ff ff 	mov    -0x490(%rbp),%rdi
  80c1c0:	4c 8b 8d 78 fb ff ff 	mov    -0x488(%rbp),%r9
  80c1c7:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
  80c1ce:	48 3b c2             	cmp    %rdx,%rax
  80c1d1:	0f 83 a7 00 00 00    	jae    80c27e <t3dmix_mod_mp_t3dmix4_tile_+0x44ee>
  80c1d7:	4c 8b ad 88 fd ff ff 	mov    -0x278(%rbp),%r13
  80c1de:	4c 8b bd 58 fd ff ff 	mov    -0x2a8(%rbp),%r15
  80c1e5:	4c 8b b5 c0 fc ff ff 	mov    -0x340(%rbp),%r14
  80c1ec:	4c 89 8d 78 fb ff ff 	mov    %r9,-0x488(%rbp)
  80c1f3:	4d 8d 64 3d 00       	lea    0x0(%r13,%rdi,1),%r12
  80c1f8:	4c 89 a5 f0 fa ff ff 	mov    %r12,-0x510(%rbp)
  80c1ff:	4d 8d 24 3f          	lea    (%r15,%rdi,1),%r12
  80c203:	4c 8b bd d0 fa ff ff 	mov    -0x530(%rbp),%r15
  80c20a:	4d 8d 2c 3e          	lea    (%r14,%rdi,1),%r13
  80c20e:	4c 8b b5 d8 fa ff ff 	mov    -0x528(%rbp),%r14
  80c215:	4d 03 fa             	add    %r10,%r15
  80c218:	4d 89 f9             	mov    %r15,%r9
  80c21b:	4d 03 f2             	add    %r10,%r14
  80c21e:	4c 8b bd f0 fa ff ff 	mov    -0x510(%rbp),%r15
  80c225:	0f 1f 40 00          	nopl   0x0(%rax)
  80c229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  80c230:	c5 f3 59 14 c1       	vmulsd (%rcx,%rax,8),%xmm1,%xmm2
  80c235:	c4 c1 7b 10 1c c6    	vmovsd (%r14,%rax,8),%xmm3
  80c23b:	c5 eb 59 24 c6       	vmulsd (%rsi,%rax,8),%xmm2,%xmm4
  80c240:	c4 c1 63 58 2c c1    	vaddsd (%r9,%rax,8),%xmm3,%xmm5
  80c246:	c4 c1 7b 10 34 c4    	vmovsd (%r12,%rax,8),%xmm6
  80c24c:	c5 db 59 fd          	vmulsd %xmm5,%xmm4,%xmm7
  80c250:	c4 41 4b 5c 44 c7 f8 	vsubsd -0x8(%r15,%rax,8),%xmm6,%xmm8
  80c257:	c4 41 43 59 c8       	vmulsd %xmm8,%xmm7,%xmm9
  80c25c:	c4 41 33 59 14 c0    	vmulsd (%r8,%rax,8),%xmm9,%xmm10
  80c262:	c4 41 2b 59 1c c3    	vmulsd (%r11,%rax,8),%xmm10,%xmm11
  80c268:	c4 41 7b 11 5c c5 00 	vmovsd %xmm11,0x0(%r13,%rax,8)
  80c26f:	48 ff c0             	inc    %rax
  80c272:	48 3b c2             	cmp    %rdx,%rax
  80c275:	72 b9                	jb     80c230 <t3dmix_mod_mp_t3dmix4_tile_+0x44a0>
  80c277:	4c 8b 8d 78 fb ff ff 	mov    -0x488(%rbp),%r9
  80c27e:	49 ff c1             	inc    %r9
  80c281:	48 03 bd 40 fe ff ff 	add    -0x1c0(%rbp),%rdi
  80c288:	48 03 8d e8 fd ff ff 	add    -0x218(%rbp),%rcx
  80c28f:	48 03 b5 e0 fd ff ff 	add    -0x220(%rbp),%rsi
  80c296:	4c 03 95 d8 fd ff ff 	add    -0x228(%rbp),%r10
  80c29d:	4c 03 85 d0 fd ff ff 	add    -0x230(%rbp),%r8
  80c2a4:	4c 03 9d c8 fd ff ff 	add    -0x238(%rbp),%r11
  80c2ab:	4c 3b 8d 68 fd ff ff 	cmp    -0x298(%rbp),%r9
  80c2b2:	0f 82 1c fe ff ff    	jb     80c0d4 <t3dmix_mod_mp_t3dmix4_tile_+0x4344>
  80c2b8:	e9 21 05 00 00       	jmpq   80c7de <t3dmix_mod_mp_t3dmix4_tile_+0x4a4e>
  80c2bd:	33 d2                	xor    %edx,%edx
  80c2bf:	48 8b 85 c0 f9 ff ff 	mov    -0x640(%rbp),%rax
  80c2c6:	45 33 c0             	xor    %r8d,%r8d
  80c2c9:	4c 8b 8d d0 f9 ff ff 	mov    -0x630(%rbp),%r9
  80c2d0:	33 c9                	xor    %ecx,%ecx
  80c2d2:	48 8b b5 d8 f9 ff ff 	mov    -0x628(%rbp),%rsi
  80c2d9:	48 8b bd e8 f9 ff ff 	mov    -0x618(%rbp),%rdi
  80c2e0:	48 3b 85 c8 f9 ff ff 	cmp    -0x638(%rbp),%rax
  80c2e7:	0f 8f 06 05 00 00    	jg     80c7f3 <t3dmix_mod_mp_t3dmix4_tile_+0x4a63>
  80c2ed:	4c 8b 95 f0 f8 ff ff 	mov    -0x710(%rbp),%r10
  80c2f4:	4d 0f af d4          	imul   %r12,%r10
  80c2f8:	48 8b 85 c8 f8 ff ff 	mov    -0x738(%rbp),%rax
  80c2ff:	48 89 95 40 fd ff ff 	mov    %rdx,-0x2c0(%rbp)
  80c306:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80c30d:	c5 fb 10 0d 03 ad 0b 	vmovsd 0xbad03(%rip),%xmm1        # 8c7018 <__STRLITPACK_199.115+0x88>
  80c314:	00 
  80c315:	4e 8d 1c 10          	lea    (%rax,%r10,1),%r11
  80c319:	48 8b 85 f8 f8 ff ff 	mov    -0x708(%rbp),%rax
  80c320:	49 0f af c4          	imul   %r12,%rax
  80c324:	4c 03 95 a8 f8 ff ff 	add    -0x758(%rbp),%r10
  80c32b:	48 03 85 c0 f8 ff ff 	add    -0x740(%rbp),%rax
  80c332:	48 89 85 b8 fe ff ff 	mov    %rax,-0x148(%rbp)
  80c339:	4c 89 95 30 fd ff ff 	mov    %r10,-0x2d0(%rbp)
  80c340:	4c 89 9d 38 fd ff ff 	mov    %r11,-0x2c8(%rbp)
  80c347:	c5 f9 10 05 51 a4 0b 	vmovupd 0xba451(%rip),%xmm0        # 8c67a0 <__STRLITPACK_19.34+0x10>
  80c34e:	00 
  80c34f:	48 8b 85 00 fd ff ff 	mov    -0x300(%rbp),%rax
  80c356:	48 3b 85 08 fd ff ff 	cmp    -0x2f8(%rbp),%rax
  80c35d:	0f 8c 25 04 00 00    	jl     80c788 <t3dmix_mod_mp_t3dmix4_tile_+0x49f8>
  80c363:	48 83 bd 98 fe ff ff 	cmpq   $0x2,-0x168(%rbp)
  80c36a:	02 
  80c36b:	0f 8c 32 0b 00 00    	jl     80cea3 <t3dmix_mod_mp_t3dmix4_tile_+0x5113>
  80c371:	48 8b 85 c0 fc ff ff 	mov    -0x340(%rbp),%rax
  80c378:	4c 8d 34 08          	lea    (%rax,%rcx,1),%r14
  80c37c:	4c 89 b5 b0 fe ff ff 	mov    %r14,-0x150(%rbp)
  80c383:	49 83 e6 0f          	and    $0xf,%r14
  80c387:	45 85 f6             	test   %r14d,%r14d
  80c38a:	74 13                	je     80c39f <t3dmix_mod_mp_t3dmix4_tile_+0x460f>
  80c38c:	41 f7 c6 07 00 00 00 	test   $0x7,%r14d
  80c393:	0f 85 0a 0b 00 00    	jne    80cea3 <t3dmix_mod_mp_t3dmix4_tile_+0x5113>
  80c399:	41 be 01 00 00 00    	mov    $0x1,%r14d
  80c39f:	44 89 f2             	mov    %r14d,%edx
  80c3a2:	48 8d 42 02          	lea    0x2(%rdx),%rax
  80c3a6:	48 3b 85 98 fe ff ff 	cmp    -0x168(%rbp),%rax
  80c3ad:	0f 8f f0 0a 00 00    	jg     80cea3 <t3dmix_mod_mp_t3dmix4_tile_+0x5113>
  80c3b3:	4c 8b bd 88 fd ff ff 	mov    -0x278(%rbp),%r15
  80c3ba:	44 8b a5 78 fd ff ff 	mov    -0x288(%rbp),%r12d
  80c3c1:	44 89 e0             	mov    %r12d,%eax
  80c3c4:	41 2b c6             	sub    %r14d,%eax
  80c3c7:	83 e0 01             	and    $0x1,%eax
  80c3ca:	4c 03 f9             	add    %rcx,%r15
  80c3cd:	4c 89 bd a8 fe ff ff 	mov    %r15,-0x158(%rbp)
  80c3d4:	f7 d8                	neg    %eax
  80c3d6:	4c 8b bd 58 fd ff ff 	mov    -0x2a8(%rbp),%r15
  80c3dd:	41 03 c4             	add    %r12d,%eax
  80c3e0:	45 33 e4             	xor    %r12d,%r12d
  80c3e3:	45 33 d2             	xor    %r10d,%r10d
  80c3e6:	45 33 ed             	xor    %r13d,%r13d
  80c3e9:	4c 03 f9             	add    %rcx,%r15
  80c3ec:	4c 89 bd d0 fe ff ff 	mov    %r15,-0x130(%rbp)
  80c3f3:	45 33 db             	xor    %r11d,%r11d
  80c3f6:	4c 8b bd 38 fd ff ff 	mov    -0x2c8(%rbp),%r15
  80c3fd:	48 63 c0             	movslq %eax,%rax
  80c400:	4d 03 f8             	add    %r8,%r15
  80c403:	4c 89 bd 48 fd ff ff 	mov    %r15,-0x2b8(%rbp)
  80c40a:	4c 8b bd 30 fd ff ff 	mov    -0x2d0(%rbp),%r15
  80c411:	4d 03 f8             	add    %r8,%r15
  80c414:	4c 89 bd c0 fe ff ff 	mov    %r15,-0x140(%rbp)
  80c41b:	45 85 f6             	test   %r14d,%r14d
  80c41e:	0f 86 c9 00 00 00    	jbe    80c4ed <t3dmix_mod_mp_t3dmix4_tile_+0x475d>
  80c424:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
  80c42b:	48 89 8d 80 fb ff ff 	mov    %rcx,-0x480(%rbp)
  80c432:	4c 89 85 88 fb ff ff 	mov    %r8,-0x478(%rbp)
  80c439:	4c 89 d8             	mov    %r11,%rax
  80c43c:	4d 89 d6             	mov    %r10,%r14
  80c43f:	48 8b 8d 48 fd ff ff 	mov    -0x2b8(%rbp),%rcx
  80c446:	4c 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%r8
  80c44d:	4c 8b bd b8 fe ff ff 	mov    -0x148(%rbp),%r15
  80c454:	c4 81 7b 10 34 e0    	vmovsd (%r8,%r12,8),%xmm6
  80c45a:	c4 81 73 59 14 3a    	vmulsd (%r10,%r15,1),%xmm1,%xmm2
  80c460:	4c 8b bd c0 fe ff ff 	mov    -0x140(%rbp),%r15
  80c467:	c4 81 6b 59 24 0b    	vmulsd (%r11,%r9,1),%xmm2,%xmm4
  80c46d:	c4 a1 7b 10 1c 38    	vmovsd (%rax,%r15,1),%xmm3
  80c473:	4c 8b bd a8 fe ff ff 	mov    -0x158(%rbp),%r15
  80c47a:	4c 03 95 28 ff ff ff 	add    -0xd8(%rbp),%r10
  80c481:	4c 03 9d 20 ff ff ff 	add    -0xe0(%rbp),%r11
  80c488:	c5 e3 58 2c 08       	vaddsd (%rax,%rcx,1),%xmm3,%xmm5
  80c48d:	c4 01 4b 5c 44 e7 f8 	vsubsd -0x8(%r15,%r12,8),%xmm6,%xmm8
  80c494:	c5 db 59 fd          	vmulsd %xmm5,%xmm4,%xmm7
  80c498:	c4 41 43 59 c8       	vmulsd %xmm8,%xmm7,%xmm9
  80c49d:	c4 41 33 59 14 36    	vmulsd (%r14,%rsi,1),%xmm9,%xmm10
  80c4a3:	c4 41 2b 59 5c 3d 00 	vmulsd 0x0(%r13,%rdi,1),%xmm10,%xmm11
  80c4aa:	4c 8b bd b0 fe ff ff 	mov    -0x150(%rbp),%r15
  80c4b1:	4c 03 b5 10 ff ff ff 	add    -0xf0(%rbp),%r14
  80c4b8:	4c 03 ad 08 ff ff ff 	add    -0xf8(%rbp),%r13
  80c4bf:	c4 01 7b 11 1c e7    	vmovsd %xmm11,(%r15,%r12,8)
  80c4c5:	49 ff c4             	inc    %r12
  80c4c8:	48 03 85 18 ff ff ff 	add    -0xe8(%rbp),%rax
  80c4cf:	4c 3b e2             	cmp    %rdx,%r12
  80c4d2:	0f 82 75 ff ff ff    	jb     80c44d <t3dmix_mod_mp_t3dmix4_tile_+0x46bd>
  80c4d8:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
  80c4df:	48 8b 8d 80 fb ff ff 	mov    -0x480(%rbp),%rcx
  80c4e6:	4c 8b 85 88 fb ff ff 	mov    -0x478(%rbp),%r8
  80c4ed:	4c 8b 9d 18 ff ff ff 	mov    -0xe8(%rbp),%r11
  80c4f4:	4c 8b a5 08 ff ff ff 	mov    -0xf8(%rbp),%r12
  80c4fb:	4c 8b 95 10 ff ff ff 	mov    -0xf0(%rbp),%r10
  80c502:	4c 8b ad 20 ff ff ff 	mov    -0xe0(%rbp),%r13
  80c509:	4c 8b b5 28 ff ff ff 	mov    -0xd8(%rbp),%r14
  80c510:	4c 89 85 88 fb ff ff 	mov    %r8,-0x478(%rbp)
  80c517:	4c 0f af da          	imul   %rdx,%r11
  80c51b:	4c 0f af e2          	imul   %rdx,%r12
  80c51f:	4c 0f af d2          	imul   %rdx,%r10
  80c523:	4c 0f af ea          	imul   %rdx,%r13
  80c527:	4c 0f af f2          	imul   %rdx,%r14
  80c52b:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
  80c532:	48 89 8d 80 fb ff ff 	mov    %rcx,-0x480(%rbp)
  80c539:	4c 8b 85 48 fd ff ff 	mov    -0x2b8(%rbp),%r8
  80c540:	4c 8b bd a8 fe ff ff 	mov    -0x158(%rbp),%r15
  80c547:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  80c54e:	c5 f9 10 14 d0       	vmovupd (%rax,%rdx,8),%xmm2
  80c553:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  80c55a:	c4 41 69 5c 7c d7 f8 	vsubpd -0x8(%r15,%rdx,8),%xmm2,%xmm15
  80c561:	4a 8d 0c 30          	lea    (%rax,%r14,1),%rcx
  80c565:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
  80c56c:	c5 fb 10 19          	vmovsd (%rcx),%xmm3
  80c570:	c5 e1 16 24 01       	vmovhpd (%rcx,%rax,1),%xmm3,%xmm4
  80c575:	4d 8d 34 46          	lea    (%r14,%rax,2),%r14
  80c579:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
  80c580:	4b 8d 0c 29          	lea    (%r9,%r13,1),%rcx
  80c584:	c5 f9 59 f4          	vmulpd %xmm4,%xmm0,%xmm6
  80c588:	c5 fb 10 29          	vmovsd (%rcx),%xmm5
  80c58c:	4d 8d 6c 45 00       	lea    0x0(%r13,%rax,2),%r13
  80c591:	c5 d1 16 3c 01       	vmovhpd (%rcx,%rax,1),%xmm5,%xmm7
  80c596:	48 8b 8d c0 fe ff ff 	mov    -0x140(%rbp),%rcx
  80c59d:	c5 49 59 e7          	vmulpd %xmm7,%xmm6,%xmm12
  80c5a1:	4a 8d 04 19          	lea    (%rcx,%r11,1),%rax
  80c5a5:	48 8b 8d 18 ff ff ff 	mov    -0xe8(%rbp),%rcx
  80c5ac:	c5 7b 10 00          	vmovsd (%rax),%xmm8
  80c5b0:	c5 39 16 14 08       	vmovhpd (%rax,%rcx,1),%xmm8,%xmm10
  80c5b5:	4b 8d 04 18          	lea    (%r8,%r11,1),%rax
  80c5b9:	c5 7b 10 08          	vmovsd (%rax),%xmm9
  80c5bd:	4d 8d 1c 4b          	lea    (%r11,%rcx,2),%r11
  80c5c1:	c5 31 16 1c 08       	vmovhpd (%rax,%rcx,1),%xmm9,%xmm11
  80c5c6:	4a 8d 0c 16          	lea    (%rsi,%r10,1),%rcx
  80c5ca:	c4 41 29 58 eb       	vaddpd %xmm11,%xmm10,%xmm13
  80c5cf:	c4 41 19 59 f5       	vmulpd %xmm13,%xmm12,%xmm14
  80c5d4:	c4 c1 09 59 df       	vmulpd %xmm15,%xmm14,%xmm3
  80c5d9:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
  80c5e0:	c5 fb 10 11          	vmovsd (%rcx),%xmm2
  80c5e4:	c5 e9 16 24 01       	vmovhpd (%rcx,%rax,1),%xmm2,%xmm4
  80c5e9:	4d 8d 14 42          	lea    (%r10,%rax,2),%r10
  80c5ed:	c5 e1 59 f4          	vmulpd %xmm4,%xmm3,%xmm6
  80c5f1:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
  80c5f8:	4a 8d 0c 27          	lea    (%rdi,%r12,1),%rcx
  80c5fc:	c5 fb 10 29          	vmovsd (%rcx),%xmm5
  80c600:	c5 d1 16 3c 01       	vmovhpd (%rcx,%rax,1),%xmm5,%xmm7
  80c605:	4d 8d 24 44          	lea    (%r12,%rax,2),%r12
  80c609:	c5 49 59 c7          	vmulpd %xmm7,%xmm6,%xmm8
  80c60d:	48 8b 8d b0 fe ff ff 	mov    -0x150(%rbp),%rcx
  80c614:	c5 79 11 04 d1       	vmovupd %xmm8,(%rcx,%rdx,8)
  80c619:	48 83 c2 02          	add    $0x2,%rdx
  80c61d:	48 3b 95 a0 fe ff ff 	cmp    -0x160(%rbp),%rdx
  80c624:	0f 82 1d ff ff ff    	jb     80c547 <t3dmix_mod_mp_t3dmix4_tile_+0x47b7>
  80c62a:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
  80c631:	48 8b 8d 80 fb ff ff 	mov    -0x480(%rbp),%rcx
  80c638:	4c 8b 85 88 fb ff ff 	mov    -0x478(%rbp),%r8
  80c63f:	4c 8b ad 18 ff ff ff 	mov    -0xe8(%rbp),%r13
  80c646:	4c 8b a5 20 ff ff ff 	mov    -0xe0(%rbp),%r12
  80c64d:	4c 8b 9d 08 ff ff ff 	mov    -0xf8(%rbp),%r11
  80c654:	4c 8b 95 10 ff ff ff 	mov    -0xf0(%rbp),%r10
  80c65b:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
  80c662:	4c 0f af e8          	imul   %rax,%r13
  80c666:	4c 0f af e0          	imul   %rax,%r12
  80c66a:	4c 0f af d8          	imul   %rax,%r11
  80c66e:	4c 0f af d0          	imul   %rax,%r10
  80c672:	48 0f af d0          	imul   %rax,%rdx
  80c676:	48 3b 85 98 fe ff ff 	cmp    -0x168(%rbp),%rax
  80c67d:	0f 83 05 01 00 00    	jae    80c788 <t3dmix_mod_mp_t3dmix4_tile_+0x49f8>
  80c683:	4c 8b b5 88 fd ff ff 	mov    -0x278(%rbp),%r14
  80c68a:	48 89 8d 80 fb ff ff 	mov    %rcx,-0x480(%rbp)
  80c691:	4c 89 85 88 fb ff ff 	mov    %r8,-0x478(%rbp)
  80c698:	4d 8d 3c 0e          	lea    (%r14,%rcx,1),%r15
  80c69c:	4c 89 bd 08 fb ff ff 	mov    %r15,-0x4f8(%rbp)
  80c6a3:	4c 8b bd 58 fd ff ff 	mov    -0x2a8(%rbp),%r15
  80c6aa:	4c 8b b5 c0 fc ff ff 	mov    -0x340(%rbp),%r14
  80c6b1:	4c 03 f9             	add    %rcx,%r15
  80c6b4:	4c 89 bd 00 fb ff ff 	mov    %r15,-0x500(%rbp)
  80c6bb:	4c 8b bd 38 fd ff ff 	mov    -0x2c8(%rbp),%r15
  80c6c2:	4c 03 f1             	add    %rcx,%r14
  80c6c5:	4c 89 b5 c8 fe ff ff 	mov    %r14,-0x138(%rbp)
  80c6cc:	4c 8b b5 00 fb ff ff 	mov    -0x500(%rbp),%r14
  80c6d3:	48 8b 8d 08 fb ff ff 	mov    -0x4f8(%rbp),%rcx
  80c6da:	4d 03 f8             	add    %r8,%r15
  80c6dd:	4c 89 bd d8 fe ff ff 	mov    %r15,-0x128(%rbp)
  80c6e4:	4c 8b bd 30 fd ff ff 	mov    -0x2d0(%rbp),%r15
  80c6eb:	4d 03 f8             	add    %r8,%r15
  80c6ee:	4d 89 f8             	mov    %r15,%r8
  80c6f1:	4c 8b bd b8 fe ff ff 	mov    -0x148(%rbp),%r15
  80c6f8:	c4 81 7b 10 5c 05 00 	vmovsd 0x0(%r13,%r8,1),%xmm3
  80c6ff:	c4 c1 7b 10 34 c6    	vmovsd (%r14,%rax,8),%xmm6
  80c705:	c4 a1 73 59 14 3a    	vmulsd (%rdx,%r15,1),%xmm1,%xmm2
  80c70b:	c5 4b 5c 44 c1 f8    	vsubsd -0x8(%rcx,%rax,8),%xmm6,%xmm8
  80c711:	c4 81 6b 59 24 0c    	vmulsd (%r12,%r9,1),%xmm2,%xmm4
  80c717:	4c 8b bd d8 fe ff ff 	mov    -0x128(%rbp),%r15
  80c71e:	48 03 95 28 ff ff ff 	add    -0xd8(%rbp),%rdx
  80c725:	4c 03 a5 20 ff ff ff 	add    -0xe0(%rbp),%r12
  80c72c:	c4 81 63 58 6c 3d 00 	vaddsd 0x0(%r13,%r15,1),%xmm3,%xmm5
  80c733:	c5 db 59 fd          	vmulsd %xmm5,%xmm4,%xmm7
  80c737:	c4 41 43 59 c8       	vmulsd %xmm8,%xmm7,%xmm9
  80c73c:	c4 41 33 59 14 32    	vmulsd (%r10,%rsi,1),%xmm9,%xmm10
  80c742:	c4 41 2b 59 1c 3b    	vmulsd (%r11,%rdi,1),%xmm10,%xmm11
  80c748:	4c 8b bd c8 fe ff ff 	mov    -0x138(%rbp),%r15
  80c74f:	4c 03 95 10 ff ff ff 	add    -0xf0(%rbp),%r10
  80c756:	4c 03 9d 08 ff ff ff 	add    -0xf8(%rbp),%r11
  80c75d:	c4 41 7b 11 1c c7    	vmovsd %xmm11,(%r15,%rax,8)
  80c763:	48 ff c0             	inc    %rax
  80c766:	4c 03 ad 18 ff ff ff 	add    -0xe8(%rbp),%r13
  80c76d:	48 3b 85 98 fe ff ff 	cmp    -0x168(%rbp),%rax
  80c774:	0f 82 77 ff ff ff    	jb     80c6f1 <t3dmix_mod_mp_t3dmix4_tile_+0x4961>
  80c77a:	48 8b 8d 80 fb ff ff 	mov    -0x480(%rbp),%rcx
  80c781:	4c 8b 85 88 fb ff ff 	mov    -0x478(%rbp),%r8
  80c788:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  80c78f:	48 8b 95 40 fd ff ff 	mov    -0x2c0(%rbp),%rdx
  80c796:	48 ff c2             	inc    %rdx
  80c799:	48 03 85 e8 fd ff ff 	add    -0x218(%rbp),%rax
  80c7a0:	4c 03 8d e0 fd ff ff 	add    -0x220(%rbp),%r9
  80c7a7:	4c 03 85 d8 fd ff ff 	add    -0x228(%rbp),%r8
  80c7ae:	48 03 b5 d0 fd ff ff 	add    -0x230(%rbp),%rsi
  80c7b5:	48 03 bd c8 fd ff ff 	add    -0x238(%rbp),%rdi
  80c7bc:	48 03 8d 40 fe ff ff 	add    -0x1c0(%rbp),%rcx
  80c7c3:	48 89 85 b8 fe ff ff 	mov    %rax,-0x148(%rbp)
  80c7ca:	48 89 95 40 fd ff ff 	mov    %rdx,-0x2c0(%rbp)
  80c7d1:	48 3b 95 68 fd ff ff 	cmp    -0x298(%rbp),%rdx
  80c7d8:	0f 82 71 fb ff ff    	jb     80c34f <t3dmix_mod_mp_t3dmix4_tile_+0x45bf>
  80c7de:	4c 8b ad d8 f8 ff ff 	mov    -0x728(%rbp),%r13
  80c7e5:	4c 8b b5 e0 f8 ff ff 	mov    -0x720(%rbp),%r14
  80c7ec:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  80c7f3:	48 83 bd 30 ff ff ff 	cmpq   $0x8,-0xd0(%rbp)
  80c7fa:	08 
  80c7fb:	0f 85 ed 01 00 00    	jne    80c9ee <t3dmix_mod_mp_t3dmix4_tile_+0x4c5e>
  80c801:	48 83 bd 40 ff ff ff 	cmpq   $0x8,-0xc0(%rbp)
  80c808:	08 
  80c809:	0f 85 df 01 00 00    	jne    80c9ee <t3dmix_mod_mp_t3dmix4_tile_+0x4c5e>
  80c80f:	48 83 bd 38 ff ff ff 	cmpq   $0x8,-0xc8(%rbp)
  80c816:	08 
  80c817:	0f 85 d1 01 00 00    	jne    80c9ee <t3dmix_mod_mp_t3dmix4_tile_+0x4c5e>
  80c81d:	48 8b 85 10 fa ff ff 	mov    -0x5f0(%rbp),%rax
  80c824:	33 ff                	xor    %edi,%edi
  80c826:	4c 8b 85 50 f3 ff ff 	mov    -0xcb0(%rbp),%r8
  80c82d:	33 f6                	xor    %esi,%esi
  80c82f:	4c 8b 8d 58 f3 ff ff 	mov    -0xca8(%rbp),%r9
  80c836:	48 3b 85 c0 f9 ff ff 	cmp    -0x640(%rbp),%rax
  80c83d:	0f 8c 9d 04 00 00    	jl     80cce0 <t3dmix_mod_mp_t3dmix4_tile_+0x4f50>
  80c843:	48 8b 8d 00 f9 ff ff 	mov    -0x700(%rbp),%rcx
  80c84a:	49 0f af cc          	imul   %r12,%rcx
  80c84e:	48 03 8d 98 f8 ff ff 	add    -0x768(%rbp),%rcx
  80c855:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
  80c85c:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80c863:	48 8b 85 00 fd ff ff 	mov    -0x300(%rbp),%rax
  80c86a:	48 3b 85 08 fd ff ff 	cmp    -0x2f8(%rbp),%rax
  80c871:	0f 8c 46 01 00 00    	jl     80c9bd <t3dmix_mod_mp_t3dmix4_tile_+0x4c2d>
  80c877:	48 8b 85 a8 fb ff ff 	mov    -0x458(%rbp),%rax
  80c87e:	4c 8b 95 e8 fc ff ff 	mov    -0x318(%rbp),%r10
  80c885:	c4 a1 7b 10 04 d0    	vmovsd (%rax,%r10,8),%xmm0
  80c88b:	48 83 fa 04          	cmp    $0x4,%rdx
  80c88f:	0f 8c ff 05 00 00    	jl     80ce94 <t3dmix_mod_mp_t3dmix4_tile_+0x5104>
  80c895:	4c 8b a5 30 fb ff ff 	mov    -0x4d0(%rbp),%r12
  80c89c:	45 33 ed             	xor    %r13d,%r13d
  80c89f:	4c 8b 9d 38 fb ff ff 	mov    -0x4c8(%rbp),%r11
  80c8a6:	4c 8b 95 c0 fc ff ff 	mov    -0x340(%rbp),%r10
  80c8ad:	4c 8b b5 f8 fc ff ff 	mov    -0x308(%rbp),%r14
  80c8b4:	4c 03 e6             	add    %rsi,%r12
  80c8b7:	48 8b 85 28 fb ff ff 	mov    -0x4d8(%rbp),%rax
  80c8be:	4c 03 de             	add    %rsi,%r11
  80c8c1:	c4 e2 7d 19 c8       	vbroadcastsd %xmm0,%ymm1
  80c8c6:	4c 03 d6             	add    %rsi,%r10
  80c8c9:	48 89 c2             	mov    %rax,%rdx
  80c8cc:	4d 8d 3c 36          	lea    (%r14,%rsi,1),%r15
  80c8d0:	49 89 ce             	mov    %rcx,%r14
  80c8d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  80c8d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  80c8df:	00 
  80c8e0:	c4 81 75 59 14 e8    	vmulpd (%r8,%r13,8),%ymm1,%ymm2
  80c8e6:	c4 81 7d 10 64 eb 08 	vmovupd 0x8(%r11,%r13,8),%ymm4
  80c8ed:	c4 81 7d 10 5c ec 08 	vmovupd 0x8(%r12,%r13,8),%ymm3
  80c8f4:	c4 41 7d 10 06       	vmovupd (%r14),%ymm8
  80c8f9:	c4 01 6d 59 0c e9    	vmulpd (%r9,%r13,8),%ymm2,%ymm9
  80c8ff:	c4 81 5d 5c 2c ea    	vsubpd (%r10,%r13,8),%ymm4,%ymm5
  80c905:	c4 81 65 5c 34 ef    	vsubpd (%r15,%r13,8),%ymm3,%ymm6
  80c90b:	c5 b5 59 fd          	vmulpd %ymm5,%ymm9,%ymm7
  80c90f:	c4 62 cd a8 cf       	vfmadd213pd %ymm7,%ymm6,%ymm9
  80c914:	49 83 c5 04          	add    $0x4,%r13
  80c918:	c4 41 3d 5c d1       	vsubpd %ymm9,%ymm8,%ymm10
  80c91d:	c4 41 7d 11 16       	vmovupd %ymm10,(%r14)
  80c922:	49 83 c6 20          	add    $0x20,%r14
  80c926:	4c 3b ea             	cmp    %rdx,%r13
  80c929:	72 b5                	jb     80c8e0 <t3dmix_mod_mp_t3dmix4_tile_+0x4b50>
  80c92b:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
  80c932:	48 3b c2             	cmp    %rdx,%rax
  80c935:	0f 83 82 00 00 00    	jae    80c9bd <t3dmix_mod_mp_t3dmix4_tile_+0x4c2d>
  80c93b:	4c 8b 9d 30 fb ff ff 	mov    -0x4d0(%rbp),%r11
  80c942:	4c 8b 95 38 fb ff ff 	mov    -0x4c8(%rbp),%r10
  80c949:	4c 8b b5 c0 fc ff ff 	mov    -0x340(%rbp),%r14
  80c950:	4c 8b a5 f8 fc ff ff 	mov    -0x308(%rbp),%r12
  80c957:	4c 03 de             	add    %rsi,%r11
  80c95a:	4c 03 d6             	add    %rsi,%r10
  80c95d:	4c 03 f6             	add    %rsi,%r14
  80c960:	4d 8d 2c 34          	lea    (%r12,%rsi,1),%r13
  80c964:	4c 8d 24 c1          	lea    (%rcx,%rax,8),%r12
  80c968:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  80c96f:	00 
  80c970:	c4 c1 7b 59 0c c0    	vmulsd (%r8,%rax,8),%xmm0,%xmm1
  80c976:	c4 c1 7b 10 5c c2 08 	vmovsd 0x8(%r10,%rax,8),%xmm3
  80c97d:	c4 41 73 59 04 c1    	vmulsd (%r9,%rax,8),%xmm1,%xmm8
  80c983:	c4 c1 63 5c 24 c6    	vsubsd (%r14,%rax,8),%xmm3,%xmm4
  80c989:	c4 c1 7b 10 54 c3 08 	vmovsd 0x8(%r11,%rax,8),%xmm2
  80c990:	c5 bb 59 f4          	vmulsd %xmm4,%xmm8,%xmm6
  80c994:	c4 c1 6b 5c 6c c5 00 	vsubsd 0x0(%r13,%rax,8),%xmm2,%xmm5
  80c99b:	c4 62 d1 a9 c6       	vfmadd213sd %xmm6,%xmm5,%xmm8
  80c9a0:	48 ff c0             	inc    %rax
  80c9a3:	c4 c1 7b 10 3c 24    	vmovsd (%r12),%xmm7
  80c9a9:	c4 41 43 5c c8       	vsubsd %xmm8,%xmm7,%xmm9
  80c9ae:	c4 41 7b 11 0c 24    	vmovsd %xmm9,(%r12)
  80c9b4:	49 83 c4 08          	add    $0x8,%r12
  80c9b8:	48 3b c2             	cmp    %rdx,%rax
  80c9bb:	72 b3                	jb     80c970 <t3dmix_mod_mp_t3dmix4_tile_+0x4be0>
  80c9bd:	48 ff c7             	inc    %rdi
  80c9c0:	48 03 b5 40 fe ff ff 	add    -0x1c0(%rbp),%rsi
  80c9c7:	4c 03 85 00 fe ff ff 	add    -0x200(%rbp),%r8
  80c9ce:	4c 03 8d f8 fd ff ff 	add    -0x208(%rbp),%r9
  80c9d5:	48 03 8d f0 fd ff ff 	add    -0x210(%rbp),%rcx
  80c9dc:	48 3b bd 80 fd ff ff 	cmp    -0x280(%rbp),%rdi
  80c9e3:	0f 82 7a fe ff ff    	jb     80c863 <t3dmix_mod_mp_t3dmix4_tile_+0x4ad3>
  80c9e9:	e9 dd 02 00 00       	jmpq   80cccb <t3dmix_mod_mp_t3dmix4_tile_+0x4f3b>
  80c9ee:	48 8b 85 10 fa ff ff 	mov    -0x5f0(%rbp),%rax
  80c9f5:	33 ff                	xor    %edi,%edi
  80c9f7:	48 8b 95 f0 f9 ff ff 	mov    -0x610(%rbp),%rdx
  80c9fe:	33 f6                	xor    %esi,%esi
  80ca00:	48 8b 8d 08 fa ff ff 	mov    -0x5f8(%rbp),%rcx
  80ca07:	48 3b 85 c0 f9 ff ff 	cmp    -0x640(%rbp),%rax
  80ca0e:	0f 8c cc 02 00 00    	jl     80cce0 <t3dmix_mod_mp_t3dmix4_tile_+0x4f50>
  80ca14:	48 8b 85 00 f9 ff ff 	mov    -0x700(%rbp),%rax
  80ca1b:	49 0f af c4          	imul   %r12,%rax
  80ca1f:	48 03 85 d0 f8 ff ff 	add    -0x730(%rbp),%rax
  80ca26:	4c 8b b5 38 ff ff ff 	mov    -0xc8(%rbp),%r14
  80ca2d:	48 89 bd 50 fd ff ff 	mov    %rdi,-0x2b0(%rbp)
  80ca34:	4c 89 a5 08 f9 ff ff 	mov    %r12,-0x6f8(%rbp)
  80ca3b:	48 8b bd 08 fd ff ff 	mov    -0x2f8(%rbp),%rdi
  80ca42:	48 3b bd 00 fd ff ff 	cmp    -0x300(%rbp),%rdi
  80ca49:	0f 8f 42 02 00 00    	jg     80cc91 <t3dmix_mod_mp_t3dmix4_tile_+0x4f01>
  80ca4f:	48 8b bd a8 fb ff ff 	mov    -0x458(%rbp),%rdi
  80ca56:	4c 8b 85 e8 fc ff ff 	mov    -0x318(%rbp),%r8
  80ca5d:	c4 a1 7b 10 04 c7    	vmovsd (%rdi,%r8,8),%xmm0
  80ca63:	4d 85 f6             	test   %r14,%r14
  80ca66:	0f 84 2f 04 00 00    	je     80ce9b <t3dmix_mod_mp_t3dmix4_tile_+0x510b>
  80ca6c:	48 83 bd 98 fe ff ff 	cmpq   $0x2,-0x168(%rbp)
  80ca73:	02 
  80ca74:	0f 8c 21 04 00 00    	jl     80ce9b <t3dmix_mod_mp_t3dmix4_tile_+0x510b>
  80ca7a:	4c 8b bd 80 fa ff ff 	mov    -0x580(%rbp),%r15
  80ca81:	45 33 c0             	xor    %r8d,%r8d
  80ca84:	4c 8b 8d 38 fb ff ff 	mov    -0x4c8(%rbp),%r9
  80ca8b:	45 33 e4             	xor    %r12d,%r12d
  80ca8e:	4c 8b 95 c0 fc ff ff 	mov    -0x340(%rbp),%r10
  80ca95:	4c 8b ad e0 fe ff ff 	mov    -0x120(%rbp),%r13
  80ca9c:	4a 8d 3c fd 00 00 00 	lea    0x0(,%r15,8),%rdi
  80caa3:	00 
  80caa4:	48 f7 df             	neg    %rdi
  80caa7:	4c 03 ce             	add    %rsi,%r9
  80caaa:	4c 8b bd 48 fb ff ff 	mov    -0x4b8(%rbp),%r15
  80cab1:	4d 8d 1c 32          	lea    (%r10,%rsi,1),%r11
  80cab5:	48 03 bd 88 fa ff ff 	add    -0x578(%rbp),%rdi
  80cabc:	49 f7 df             	neg    %r15
  80cabf:	49 03 ff             	add    %r15,%rdi
  80cac2:	45 33 d2             	xor    %r10d,%r10d
  80cac5:	4c 8b bd 08 fd ff ff 	mov    -0x2f8(%rbp),%r15
  80cacc:	48 89 85 18 fb ff ff 	mov    %rax,-0x4e8(%rbp)
  80cad3:	48 89 b5 10 fb ff ff 	mov    %rsi,-0x4f0(%rbp)
  80cada:	48 89 85 98 fb ff ff 	mov    %rax,-0x468(%rbp)
  80cae1:	4a 8d 3c ff          	lea    (%rdi,%r15,8),%rdi
  80cae5:	48 89 b5 a0 fb ff ff 	mov    %rsi,-0x460(%rbp)
  80caec:	c5 fb 12 c8          	vmovddup %xmm0,%xmm1
  80caf0:	48 03 bd 40 fb ff ff 	add    -0x4c0(%rbp),%rdi
  80caf7:	48 8b 85 10 fb ff ff 	mov    -0x4f0(%rbp),%rax
  80cafe:	48 8b b5 18 fb ff ff 	mov    -0x4e8(%rbp),%rsi
  80cb05:	4c 89 ad 90 fb ff ff 	mov    %r13,-0x470(%rbp)
  80cb0c:	4c 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%r15
  80cb13:	4e 8d 2c 22          	lea    (%rdx,%r12,1),%r13
  80cb17:	c4 c1 7b 10 6d 00    	vmovsd 0x0(%r13),%xmm5
  80cb1d:	c4 81 79 10 5c c1 08 	vmovupd 0x8(%r9,%r8,8),%xmm3
  80cb24:	c5 f9 10 54 38 08    	vmovupd 0x8(%rax,%rdi,1),%xmm2
  80cb2a:	c4 01 61 5c 14 c3    	vsubpd (%r11,%r8,8),%xmm3,%xmm10
  80cb30:	c5 69 5c 1c 38       	vsubpd (%rax,%rdi,1),%xmm2,%xmm11
  80cb35:	c4 81 51 16 74 3d 00 	vmovhpd 0x0(%r13,%r15,1),%xmm5,%xmm6
  80cb3c:	4f 8d 24 7c          	lea    (%r12,%r15,2),%r12
  80cb40:	c5 71 59 c6          	vmulpd %xmm6,%xmm1,%xmm8
  80cb44:	4c 8b bd 40 ff ff ff 	mov    -0xc0(%rbp),%r15
  80cb4b:	4e 8d 2c 11          	lea    (%rcx,%r10,1),%r13
  80cb4f:	c4 c1 7b 10 7d 00    	vmovsd 0x0(%r13),%xmm7
  80cb55:	49 83 c0 02          	add    $0x2,%r8
  80cb59:	c5 fb 10 26          	vmovsd (%rsi),%xmm4
  80cb5d:	48 83 c0 10          	add    $0x10,%rax
  80cb61:	c4 01 41 16 4c 3d 00 	vmovhpd 0x0(%r13,%r15,1),%xmm7,%xmm9
  80cb68:	4f 8d 14 7a          	lea    (%r10,%r15,2),%r10
  80cb6c:	c4 41 39 59 f1       	vmulpd %xmm9,%xmm8,%xmm14
  80cb71:	c4 41 09 59 e2       	vmulpd %xmm10,%xmm14,%xmm12
  80cb76:	c4 42 a1 a8 f4       	vfmadd213pd %xmm12,%xmm11,%xmm14
  80cb7b:	c4 21 59 16 2c 36    	vmovhpd (%rsi,%r14,1),%xmm4,%xmm13
  80cb81:	c4 41 11 5c fe       	vsubpd %xmm14,%xmm13,%xmm15
  80cb86:	c5 7b 11 3e          	vmovsd %xmm15,(%rsi)
  80cb8a:	c4 41 79 17 3c 36    	vmovhpd %xmm15,(%r14,%rsi,1)
  80cb90:	4a 8d 34 76          	lea    (%rsi,%r14,2),%rsi
  80cb94:	4c 3b 85 e0 fe ff ff 	cmp    -0x120(%rbp),%r8
  80cb9b:	0f 82 6b ff ff ff    	jb     80cb0c <t3dmix_mod_mp_t3dmix4_tile_+0x4d7c>
  80cba1:	4c 8b ad 90 fb ff ff 	mov    -0x470(%rbp),%r13
  80cba8:	48 8b 85 98 fb ff ff 	mov    -0x468(%rbp),%rax
  80cbaf:	48 8b b5 a0 fb ff ff 	mov    -0x460(%rbp),%rsi
  80cbb6:	4d 89 f1             	mov    %r14,%r9
  80cbb9:	4c 8b a5 40 ff ff ff 	mov    -0xc0(%rbp),%r12
  80cbc0:	4c 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%r8
  80cbc7:	4d 0f af cd          	imul   %r13,%r9
  80cbcb:	4d 0f af e5          	imul   %r13,%r12
  80cbcf:	4d 0f af c5          	imul   %r13,%r8
  80cbd3:	4c 3b ad 98 fe ff ff 	cmp    -0x168(%rbp),%r13
  80cbda:	0f 83 b1 00 00 00    	jae    80cc91 <t3dmix_mod_mp_t3dmix4_tile_+0x4f01>
  80cbe0:	48 8b bd 30 fb ff ff 	mov    -0x4d0(%rbp),%rdi
  80cbe7:	4c 03 c8             	add    %rax,%r9
  80cbea:	4c 8b 95 38 fb ff ff 	mov    -0x4c8(%rbp),%r10
  80cbf1:	4c 8b 9d c0 fc ff ff 	mov    -0x340(%rbp),%r11
  80cbf8:	4c 8b bd f8 fc ff ff 	mov    -0x308(%rbp),%r15
  80cbff:	48 03 fe             	add    %rsi,%rdi
  80cc02:	48 89 85 98 fb ff ff 	mov    %rax,-0x468(%rbp)
  80cc09:	4c 03 d6             	add    %rsi,%r10
  80cc0c:	48 89 b5 a0 fb ff ff 	mov    %rsi,-0x460(%rbp)
  80cc13:	4c 03 de             	add    %rsi,%r11
  80cc16:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  80cc1d:	4c 03 fe             	add    %rsi,%r15
  80cc20:	48 8b b5 30 ff ff ff 	mov    -0xd0(%rbp),%rsi
  80cc27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  80cc2e:	00 00 
  80cc30:	c4 c1 7b 59 0c 10    	vmulsd (%r8,%rdx,1),%xmm0,%xmm1
  80cc36:	4c 03 c6             	add    %rsi,%r8
  80cc39:	c4 81 7b 10 5c ea 08 	vmovsd 0x8(%r10,%r13,8),%xmm3
  80cc40:	c4 41 73 59 04 0c    	vmulsd (%r12,%rcx,1),%xmm1,%xmm8
  80cc46:	4c 03 e0             	add    %rax,%r12
  80cc49:	c4 81 63 5c 24 eb    	vsubsd (%r11,%r13,8),%xmm3,%xmm4
  80cc4f:	c4 a1 7b 10 54 ef 08 	vmovsd 0x8(%rdi,%r13,8),%xmm2
  80cc56:	c5 bb 59 f4          	vmulsd %xmm4,%xmm8,%xmm6
  80cc5a:	c4 81 6b 5c 2c ef    	vsubsd (%r15,%r13,8),%xmm2,%xmm5
  80cc60:	c4 62 d1 a9 c6       	vfmadd213sd %xmm6,%xmm5,%xmm8
  80cc65:	49 ff c5             	inc    %r13
  80cc68:	c4 c1 7b 10 39       	vmovsd (%r9),%xmm7
  80cc6d:	c4 41 43 5c c8       	vsubsd %xmm8,%xmm7,%xmm9
  80cc72:	c4 41 7b 11 09       	vmovsd %xmm9,(%r9)
  80cc77:	4d 03 ce             	add    %r14,%r9
  80cc7a:	4c 3b ad 98 fe ff ff 	cmp    -0x168(%rbp),%r13
  80cc81:	72 ad                	jb     80cc30 <t3dmix_mod_mp_t3dmix4_tile_+0x4ea0>
  80cc83:	48 8b 85 98 fb ff ff 	mov    -0x468(%rbp),%rax
  80cc8a:	48 8b b5 a0 fb ff ff 	mov    -0x460(%rbp),%rsi
  80cc91:	48 8b bd 50 fd ff ff 	mov    -0x2b0(%rbp),%rdi
  80cc98:	48 ff c7             	inc    %rdi
  80cc9b:	48 03 b5 40 fe ff ff 	add    -0x1c0(%rbp),%rsi
  80cca2:	48 03 95 00 fe ff ff 	add    -0x200(%rbp),%rdx
  80cca9:	48 03 8d f8 fd ff ff 	add    -0x208(%rbp),%rcx
  80ccb0:	48 03 85 f0 fd ff ff 	add    -0x210(%rbp),%rax
  80ccb7:	48 89 bd 50 fd ff ff 	mov    %rdi,-0x2b0(%rbp)
  80ccbe:	48 3b bd 80 fd ff ff 	cmp    -0x280(%rbp),%rdi
  80ccc5:	0f 82 70 fd ff ff    	jb     80ca3b <t3dmix_mod_mp_t3dmix4_tile_+0x4cab>
  80cccb:	4c 8b ad d8 f8 ff ff 	mov    -0x728(%rbp),%r13
  80ccd2:	4c 8b b5 e0 f8 ff ff 	mov    -0x720(%rbp),%r14
  80ccd9:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  80cce0:	49 ff c4             	inc    %r12
  80cce3:	4c 3b a5 78 fa ff ff 	cmp    -0x588(%rbp),%r12
  80ccea:	0f 82 1c d3 ff ff    	jb     80a00c <t3dmix_mod_mp_t3dmix4_tile_+0x227c>
  80ccf0:	48 8b 8d 28 f8 ff ff 	mov    -0x7d8(%rbp),%rcx
  80ccf7:	48 8b b5 30 f8 ff ff 	mov    -0x7d0(%rbp),%rsi
  80ccfe:	48 8b 95 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdx
  80cd05:	48 ff c2             	inc    %rdx
  80cd08:	48 3b 95 48 f8 ff ff 	cmp    -0x7b8(%rbp),%rdx
  80cd0f:	0f 82 04 be ff ff    	jb     808b19 <t3dmix_mod_mp_t3dmix4_tile_+0xd89>
  80cd15:	bf 84 73 b3 00       	mov    $0xb37384,%edi
  80cd1a:	8b b5 40 f8 ff ff    	mov    -0x7c0(%rbp),%esi
  80cd20:	c5 f8 77             	vzeroupper 
  80cd23:	e8 d8 13 c0 ff       	callq  40e100 <__kmpc_for_static_fini@plt>
  80cd28:	48 8b 95 28 f7 ff ff 	mov    -0x8d8(%rbp),%rdx
  80cd2f:	48 8b 85 20 f7 ff ff 	mov    -0x8e0(%rbp),%rax
  80cd36:	48 83 c0 1f          	add    $0x1f,%rax
  80cd3a:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  80cd3e:	48 03 e0             	add    %rax,%rsp
  80cd41:	48 8b 95 00 f7 ff ff 	mov    -0x900(%rbp),%rdx
  80cd48:	48 8b 85 08 f7 ff ff 	mov    -0x8f8(%rbp),%rax
  80cd4f:	48 83 c0 1f          	add    $0x1f,%rax
  80cd53:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  80cd57:	48 03 e0             	add    %rax,%rsp
  80cd5a:	48 8b 95 10 f7 ff ff 	mov    -0x8f0(%rbp),%rdx
  80cd61:	48 8b 85 18 f7 ff ff 	mov    -0x8e8(%rbp),%rax
  80cd68:	48 83 c0 1f          	add    $0x1f,%rax
  80cd6c:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  80cd70:	48 03 e0             	add    %rax,%rsp
  80cd73:	4c 8b bd 30 f7 ff ff 	mov    -0x8d0(%rbp),%r15
  80cd7a:	4c 8b b5 38 f7 ff ff 	mov    -0x8c8(%rbp),%r14
  80cd81:	4c 8b ad 40 f7 ff ff 	mov    -0x8c0(%rbp),%r13
  80cd88:	4c 8b a5 48 f7 ff ff 	mov    -0x8b8(%rbp),%r12
  80cd8f:	c9                   	leaveq 
  80cd90:	48 89 dc             	mov    %rbx,%rsp
  80cd93:	5b                   	pop    %rbx
  80cd94:	c3                   	retq   
  80cd95:	33 c9                	xor    %ecx,%ecx
  80cd97:	e9 5c d4 ff ff       	jmpq   80a1f8 <t3dmix_mod_mp_t3dmix4_tile_+0x2468>
  80cd9c:	33 c9                	xor    %ecx,%ecx
  80cd9e:	e9 24 db ff ff       	jmpq   80a8c7 <t3dmix_mod_mp_t3dmix4_tile_+0x2b37>
  80cda3:	33 c0                	xor    %eax,%eax
  80cda5:	e9 91 e1 ff ff       	jmpq   80af3b <t3dmix_mod_mp_t3dmix4_tile_+0x31ab>
  80cdaa:	48 83 bd 50 ff ff ff 	cmpq   $0x8,-0xb0(%rbp)
  80cdb1:	08 
  80cdb2:	7c 60                	jl     80ce14 <t3dmix_mod_mp_t3dmix4_tile_+0x5084>
  80cdb4:	48 8b 95 50 f7 ff ff 	mov    -0x8b0(%rbp),%rdx
  80cdbb:	33 c0                	xor    %eax,%eax
  80cdbd:	48 8b 8d 08 f8 ff ff 	mov    -0x7f8(%rbp),%rcx
  80cdc4:	48 89 d7             	mov    %rdx,%rdi
  80cdc7:	48 8b b5 d0 f7 ff ff 	mov    -0x830(%rbp),%rsi
  80cdce:	c5 fd 57 c0          	vxorpd %ymm0,%ymm0,%ymm0
  80cdd2:	c5 fd 11 04 c6       	vmovupd %ymm0,(%rsi,%rax,8)
  80cdd7:	c5 fd 11 44 c1 20    	vmovupd %ymm0,0x20(%rcx,%rax,8)
  80cddd:	48 83 c0 08          	add    $0x8,%rax
  80cde1:	48 3b c7             	cmp    %rdi,%rax
  80cde4:	72 ec                	jb     80cdd2 <t3dmix_mod_mp_t3dmix4_tile_+0x5042>
  80cde6:	48 3b 95 50 ff ff ff 	cmp    -0xb0(%rbp),%rdx
  80cded:	0f 83 1b e9 ff ff    	jae    80b70e <t3dmix_mod_mp_t3dmix4_tile_+0x397e>
  80cdf3:	48 8b 85 d0 f7 ff ff 	mov    -0x830(%rbp),%rax
  80cdfa:	33 f6                	xor    %esi,%esi
  80cdfc:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  80ce03:	48 89 34 d0          	mov    %rsi,(%rax,%rdx,8)
  80ce07:	48 ff c2             	inc    %rdx
  80ce0a:	48 3b d1             	cmp    %rcx,%rdx
  80ce0d:	72 f4                	jb     80ce03 <t3dmix_mod_mp_t3dmix4_tile_+0x5073>
  80ce0f:	e9 fa e8 ff ff       	jmpq   80b70e <t3dmix_mod_mp_t3dmix4_tile_+0x397e>
  80ce14:	33 d2                	xor    %edx,%edx
  80ce16:	eb ce                	jmp    80cde6 <t3dmix_mod_mp_t3dmix4_tile_+0x5056>
  80ce18:	48 83 bd 50 ff ff ff 	cmpq   $0x8,-0xb0(%rbp)
  80ce1f:	08 
  80ce20:	7c 60                	jl     80ce82 <t3dmix_mod_mp_t3dmix4_tile_+0x50f2>
  80ce22:	48 8b 95 50 f7 ff ff 	mov    -0x8b0(%rbp),%rdx
  80ce29:	33 c0                	xor    %eax,%eax
  80ce2b:	48 8b 8d e0 f7 ff ff 	mov    -0x820(%rbp),%rcx
  80ce32:	48 89 d7             	mov    %rdx,%rdi
  80ce35:	48 8b b5 c0 f7 ff ff 	mov    -0x840(%rbp),%rsi
  80ce3c:	c5 fd 57 c0          	vxorpd %ymm0,%ymm0,%ymm0
  80ce40:	c5 fd 11 04 c1       	vmovupd %ymm0,(%rcx,%rax,8)
  80ce45:	c5 fd 11 44 c6 20    	vmovupd %ymm0,0x20(%rsi,%rax,8)
  80ce4b:	48 83 c0 08          	add    $0x8,%rax
  80ce4f:	48 3b c7             	cmp    %rdi,%rax
  80ce52:	72 ec                	jb     80ce40 <t3dmix_mod_mp_t3dmix4_tile_+0x50b0>
  80ce54:	48 3b 95 50 ff ff ff 	cmp    -0xb0(%rbp),%rdx
  80ce5b:	0f 83 b1 e9 ff ff    	jae    80b812 <t3dmix_mod_mp_t3dmix4_tile_+0x3a82>
  80ce61:	48 8b 85 e0 f7 ff ff 	mov    -0x820(%rbp),%rax
  80ce68:	33 f6                	xor    %esi,%esi
  80ce6a:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  80ce71:	48 89 34 d0          	mov    %rsi,(%rax,%rdx,8)
  80ce75:	48 ff c2             	inc    %rdx
  80ce78:	48 3b d1             	cmp    %rcx,%rdx
  80ce7b:	72 f4                	jb     80ce71 <t3dmix_mod_mp_t3dmix4_tile_+0x50e1>
  80ce7d:	e9 90 e9 ff ff       	jmpq   80b812 <t3dmix_mod_mp_t3dmix4_tile_+0x3a82>
  80ce82:	33 d2                	xor    %edx,%edx
  80ce84:	eb ce                	jmp    80ce54 <t3dmix_mod_mp_t3dmix4_tile_+0x50c4>
  80ce86:	33 c0                	xor    %eax,%eax
  80ce88:	e9 52 eb ff ff       	jmpq   80b9df <t3dmix_mod_mp_t3dmix4_tile_+0x3c4f>
  80ce8d:	33 c0                	xor    %eax,%eax
  80ce8f:	e9 3a f3 ff ff       	jmpq   80c1ce <t3dmix_mod_mp_t3dmix4_tile_+0x443e>
  80ce94:	33 c0                	xor    %eax,%eax
  80ce96:	e9 97 fa ff ff       	jmpq   80c932 <t3dmix_mod_mp_t3dmix4_tile_+0x4ba2>
  80ce9b:	45 33 ed             	xor    %r13d,%r13d
  80ce9e:	e9 13 fd ff ff       	jmpq   80cbb6 <t3dmix_mod_mp_t3dmix4_tile_+0x4e26>
  80cea3:	33 c0                	xor    %eax,%eax
  80cea5:	e9 95 f7 ff ff       	jmpq   80c63f <t3dmix_mod_mp_t3dmix4_tile_+0x48af>
  80ceaa:	33 c0                	xor    %eax,%eax
  80ceac:	e9 9e ef ff ff       	jmpq   80be4f <t3dmix_mod_mp_t3dmix4_tile_+0x40bf>
  80ceb1:	48 83 bd 50 ff ff ff 	cmpq   $0x4,-0xb0(%rbp)
  80ceb8:	04 
  80ceb9:	7c 61                	jl     80cf1c <t3dmix_mod_mp_t3dmix4_tile_+0x518c>
  80cebb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  80cebf:	33 d2                	xor    %edx,%edx
  80cec1:	48 8b 8d e8 f7 ff ff 	mov    -0x818(%rbp),%rcx
  80cec8:	48 89 c7             	mov    %rax,%rdi
  80cecb:	48 8b b5 e0 f7 ff ff 	mov    -0x820(%rbp),%rsi
  80ced2:	c5 fd 10 04 d1       	vmovupd (%rcx,%rdx,8),%ymm0
  80ced7:	c5 fd 11 04 d6       	vmovupd %ymm0,(%rsi,%rdx,8)
  80cedc:	48 83 c2 04          	add    $0x4,%rdx
  80cee0:	48 3b d7             	cmp    %rdi,%rdx
  80cee3:	72 ed                	jb     80ced2 <t3dmix_mod_mp_t3dmix4_tile_+0x5142>
  80cee5:	48 3b 85 50 ff ff ff 	cmp    -0xb0(%rbp),%rax
  80ceec:	0f 83 20 e9 ff ff    	jae    80b812 <t3dmix_mod_mp_t3dmix4_tile_+0x3a82>
  80cef2:	48 8b 8d e8 f7 ff ff 	mov    -0x818(%rbp),%rcx
  80cef9:	48 8b b5 e0 f7 ff ff 	mov    -0x820(%rbp),%rsi
  80cf00:	48 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%rdi
  80cf07:	48 8b 14 c1          	mov    (%rcx,%rax,8),%rdx
  80cf0b:	48 89 14 c6          	mov    %rdx,(%rsi,%rax,8)
  80cf0f:	48 ff c0             	inc    %rax
  80cf12:	48 3b c7             	cmp    %rdi,%rax
  80cf15:	72 f0                	jb     80cf07 <t3dmix_mod_mp_t3dmix4_tile_+0x5177>
  80cf17:	e9 f6 e8 ff ff       	jmpq   80b812 <t3dmix_mod_mp_t3dmix4_tile_+0x3a82>
  80cf1c:	33 c0                	xor    %eax,%eax
  80cf1e:	eb c5                	jmp    80cee5 <t3dmix_mod_mp_t3dmix4_tile_+0x5155>
  80cf20:	48 83 bd 50 ff ff ff 	cmpq   $0x4,-0xb0(%rbp)
  80cf27:	04 
  80cf28:	7c 61                	jl     80cf8b <t3dmix_mod_mp_t3dmix4_tile_+0x51fb>
  80cf2a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  80cf2e:	33 d2                	xor    %edx,%edx
  80cf30:	48 8b 8d d0 f7 ff ff 	mov    -0x830(%rbp),%rcx
  80cf37:	48 89 c7             	mov    %rax,%rdi
  80cf3a:	48 8b b5 f0 f7 ff ff 	mov    -0x810(%rbp),%rsi
  80cf41:	c5 fd 10 04 d6       	vmovupd (%rsi,%rdx,8),%ymm0
  80cf46:	c5 fd 11 04 d1       	vmovupd %ymm0,(%rcx,%rdx,8)
  80cf4b:	48 83 c2 04          	add    $0x4,%rdx
  80cf4f:	48 3b d7             	cmp    %rdi,%rdx
  80cf52:	72 ed                	jb     80cf41 <t3dmix_mod_mp_t3dmix4_tile_+0x51b1>
  80cf54:	48 3b 85 50 ff ff ff 	cmp    -0xb0(%rbp),%rax
  80cf5b:	0f 83 ad e7 ff ff    	jae    80b70e <t3dmix_mod_mp_t3dmix4_tile_+0x397e>
  80cf61:	48 8b 8d d0 f7 ff ff 	mov    -0x830(%rbp),%rcx
  80cf68:	48 8b b5 f0 f7 ff ff 	mov    -0x810(%rbp),%rsi
  80cf6f:	48 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%rdi
  80cf76:	48 8b 14 c6          	mov    (%rsi,%rax,8),%rdx
  80cf7a:	48 89 14 c1          	mov    %rdx,(%rcx,%rax,8)
  80cf7e:	48 ff c0             	inc    %rax
  80cf81:	48 3b c7             	cmp    %rdi,%rax
  80cf84:	72 f0                	jb     80cf76 <t3dmix_mod_mp_t3dmix4_tile_+0x51e6>
  80cf86:	e9 83 e7 ff ff       	jmpq   80b70e <t3dmix_mod_mp_t3dmix4_tile_+0x397e>
  80cf8b:	33 c0                	xor    %eax,%eax
  80cf8d:	eb c5                	jmp    80cf54 <t3dmix_mod_mp_t3dmix4_tile_+0x51c4>
  80cf8f:	45 33 ff             	xor    %r15d,%r15d
  80cf92:	e9 0f e2 ff ff       	jmpq   80b1a6 <t3dmix_mod_mp_t3dmix4_tile_+0x3416>
  80cf97:	33 c0                	xor    %eax,%eax
  80cf99:	e9 9f dc ff ff       	jmpq   80ac3d <t3dmix_mod_mp_t3dmix4_tile_+0x2ead>
  80cf9e:	33 c0                	xor    %eax,%eax
  80cfa0:	e9 8c d5 ff ff       	jmpq   80a531 <t3dmix_mod_mp_t3dmix4_tile_+0x27a1>
  80cfa5:	0f 1f 40 00          	nopl   0x0(%rax)
  80cfa9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

