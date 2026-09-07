0000000000686c70 <step3d_t_mod_mp_step3d_t_tile_>:
  686c70:	53                   	push   %rbx
  686c71:	48 89 e3             	mov    %rsp,%rbx
  686c74:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  686c78:	55                   	push   %rbp
  686c79:	55                   	push   %rbp
  686c7a:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  686c7e:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  686c83:	48 89 e5             	mov    %rsp,%rbp
  686c86:	48 81 ec 90 0b 00 00 	sub    $0xb90,%rsp
  686c8d:	4c 89 8d c0 f9 ff ff 	mov    %r9,-0x640(%rbp)
  686c94:	49 89 f9             	mov    %rdi,%r9
  686c97:	48 89 8d b0 f9 ff ff 	mov    %rcx,-0x650(%rbp)
  686c9e:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
  686ca2:	48 8b 4b 18          	mov    0x18(%rbx),%rcx
  686ca6:	4c 89 a5 28 f9 ff ff 	mov    %r12,-0x6d8(%rbp)
  686cad:	45 8b 20             	mov    (%r8),%r12d
  686cb0:	44 89 a5 c8 f9 ff ff 	mov    %r12d,-0x638(%rbp)
  686cb7:	4c 63 27             	movslq (%rdi),%r12
  686cba:	48 89 b5 a0 f9 ff ff 	mov    %rsi,-0x660(%rbp)
  686cc1:	48 63 39             	movslq (%rcx),%rdi
  686cc4:	48 8b 73 28          	mov    0x28(%rbx),%rsi
  686cc8:	4c 8b 53 38          	mov    0x38(%rbx),%r10
  686ccc:	48 89 95 a8 f9 ff ff 	mov    %rdx,-0x658(%rbp)
  686cd3:	44 8b 1a             	mov    (%rdx),%r11d
  686cd6:	89 bd 38 f9 ff ff    	mov    %edi,-0x6c8(%rbp)
  686cdc:	49 2b fc             	sub    %r12,%rdi
  686cdf:	48 8b 53 20          	mov    0x20(%rbx),%rdx
  686ce3:	4c 89 95 00 f5 ff ff 	mov    %r10,-0xb00(%rbp)
  686cea:	4c 89 b5 18 f9 ff ff 	mov    %r14,-0x6e8(%rbp)
  686cf1:	4c 8b 15 e8 53 4b 00 	mov    0x4b53e8(%rip),%r10        # b3c0e0 <mod_param_mp_n_+0x40>
  686cf8:	4c 89 8d 98 f9 ff ff 	mov    %r9,-0x668(%rbp)
  686cff:	49 f7 da             	neg    %r10
  686d02:	4d 63 31             	movslq (%r9),%r14
  686d05:	49 89 f9             	mov    %rdi,%r9
  686d08:	4c 89 85 b8 f9 ff ff 	mov    %r8,-0x648(%rbp)
  686d0f:	4d 03 d6             	add    %r14,%r10
  686d12:	4c 63 06             	movslq (%rsi),%r8
  686d15:	49 ff c1             	inc    %r9
  686d18:	48 63 0a             	movslq (%rdx),%rcx
  686d1b:	4c 89 b5 e8 f4 ff ff 	mov    %r14,-0xb18(%rbp)
  686d22:	41 be 00 00 00 00    	mov    $0x0,%r14d
  686d28:	44 89 85 40 f9 ff ff 	mov    %r8d,-0x6c0(%rbp)
  686d2f:	4d 0f 4e ce          	cmovle %r14,%r9
  686d33:	4c 2b c1             	sub    %rcx,%r8
  686d36:	33 d2                	xor    %edx,%edx
  686d38:	49 ff c0             	inc    %r8
  686d3b:	4c 89 ad 20 f9 ff ff 	mov    %r13,-0x6e0(%rbp)
  686d42:	49 0f 4f d0          	cmovg  %r8,%rdx
  686d46:	49 89 d5             	mov    %rdx,%r13
  686d49:	4d 0f af e9          	imul   %r9,%r13
  686d4d:	48 8b 05 4c 53 4b 00 	mov    0x4b534c(%rip),%rax        # b3c0a0 <mod_param_mp_n_>
  686d54:	4c 89 bd 10 f9 ff ff 	mov    %r15,-0x6f0(%rbp)
  686d5b:	44 89 9d 94 f9 ff ff 	mov    %r11d,-0x66c(%rbp)
  686d62:	4a 63 34 90          	movslq (%rax,%r10,4),%rsi
  686d66:	33 c0                	xor    %eax,%eax
  686d68:	48 85 f6             	test   %rsi,%rsi
  686d6b:	48 0f 4f c6          	cmovg  %rsi,%rax
  686d6f:	48 c1 e0 03          	shl    $0x3,%rax
  686d73:	49 0f af c5          	imul   %r13,%rax
  686d77:	44 89 a5 0c f9 ff ff 	mov    %r12d,-0x6f4(%rbp)
  686d7e:	89 8d 3c f9 ff ff    	mov    %ecx,-0x6c4(%rbp)
  686d84:	89 b5 44 f9 ff ff    	mov    %esi,-0x6bc(%rbp)
  686d8a:	89 b5 48 f9 ff ff    	mov    %esi,-0x6b8(%rbp)
  686d90:	89 b5 4c f9 ff ff    	mov    %esi,-0x6b4(%rbp)
  686d96:	89 b5 50 f9 ff ff    	mov    %esi,-0x6b0(%rbp)
  686d9c:	89 b5 54 f9 ff ff    	mov    %esi,-0x6ac(%rbp)
  686da2:	48 89 a5 30 f9 ff ff 	mov    %rsp,-0x6d0(%rbp)
  686da9:	48 83 c0 1f          	add    $0x1f,%rax
  686dad:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  686db1:	48 2b e0             	sub    %rax,%rsp
  686db4:	48 89 e0             	mov    %rsp,%rax
  686db7:	49 89 f3             	mov    %rsi,%r11
  686dba:	4e 8d 3c cd 00 00 00 	lea    0x0(,%r9,8),%r15
  686dc1:	00 
  686dc2:	4c 0f af fa          	imul   %rdx,%r15
  686dc6:	49 c1 fb 3f          	sar    $0x3f,%r11
  686dca:	48 8d 3c fd 08 00 00 	lea    0x8(,%rdi,8),%rdi
  686dd1:	00 
  686dd2:	4c 0f af c7          	imul   %rdi,%r8
  686dd6:	48 89 85 70 f4 ff ff 	mov    %rax,-0xb90(%rbp)
  686ddd:	4c 89 f8             	mov    %r15,%rax
  686de0:	4c 89 85 d8 f4 ff ff 	mov    %r8,-0xb28(%rbp)
  686de7:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  686ded:	c4 62 a0 f2 ee       	andn   %rsi,%r11,%r13
  686df2:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  686df8:	48 c7 85 90 f4 ff ff 	movq   $0x3,-0xb70(%rbp)
  686dff:	03 00 00 00 
  686e03:	4c 89 b5 80 f4 ff ff 	mov    %r14,-0xb80(%rbp)
  686e0a:	4c 89 a5 b0 f4 ff ff 	mov    %r12,-0xb50(%rbp)
  686e11:	4c 89 8d a0 f4 ff ff 	mov    %r9,-0xb60(%rbp)
  686e18:	48 89 bd c0 f4 ff ff 	mov    %rdi,-0xb40(%rbp)
  686e1f:	48 89 8d c8 f4 ff ff 	mov    %rcx,-0xb38(%rbp)
  686e26:	48 89 95 b8 f4 ff ff 	mov    %rdx,-0xb48(%rbp)
  686e2d:	4c 89 85 78 f4 ff ff 	mov    %r8,-0xb88(%rbp)
  686e34:	4c 89 85 a8 f4 ff ff 	mov    %r8,-0xb58(%rbp)
  686e3b:	4c 89 95 e0 f4 ff ff 	mov    %r10,-0xb20(%rbp)
  686e42:	4c 89 95 88 f4 ff ff 	mov    %r10,-0xb78(%rbp)
  686e49:	4c 89 ad d0 f4 ff ff 	mov    %r13,-0xb30(%rbp)
  686e50:	48 83 c0 1f          	add    $0x1f,%rax
  686e54:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  686e58:	48 2b e0             	sub    %rax,%rsp
  686e5b:	48 89 e0             	mov    %rsp,%rax
  686e5e:	48 89 85 08 f6 ff ff 	mov    %rax,-0x9f8(%rbp)
  686e65:	4c 89 f8             	mov    %r15,%rax
  686e68:	41 bd 02 00 00 00    	mov    $0x2,%r13d
  686e6e:	4c 89 85 10 f6 ff ff 	mov    %r8,-0x9f0(%rbp)
  686e75:	4c 89 b5 18 f6 ff ff 	mov    %r14,-0x9e8(%rbp)
  686e7c:	4c 89 85 40 f6 ff ff 	mov    %r8,-0x9c0(%rbp)
  686e83:	4c 89 a5 48 f6 ff ff 	mov    %r12,-0x9b8(%rbp)
  686e8a:	4c 89 8d 38 f6 ff ff 	mov    %r9,-0x9c8(%rbp)
  686e91:	48 89 bd 58 f6 ff ff 	mov    %rdi,-0x9a8(%rbp)
  686e98:	48 89 8d 60 f6 ff ff 	mov    %rcx,-0x9a0(%rbp)
  686e9f:	48 89 95 50 f6 ff ff 	mov    %rdx,-0x9b0(%rbp)
  686ea6:	48 c7 85 20 f6 ff ff 	movq   $0x1,-0x9e0(%rbp)
  686ead:	01 00 00 00 
  686eb1:	4c 89 ad 28 f6 ff ff 	mov    %r13,-0x9d8(%rbp)
  686eb8:	48 83 c0 1f          	add    $0x1f,%rax
  686ebc:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  686ec0:	48 2b e0             	sub    %rax,%rsp
  686ec3:	48 89 e0             	mov    %rsp,%rax
  686ec6:	48 89 85 68 f6 ff ff 	mov    %rax,-0x998(%rbp)
  686ecd:	4c 89 f8             	mov    %r15,%rax
  686ed0:	4c 89 85 70 f6 ff ff 	mov    %r8,-0x990(%rbp)
  686ed7:	4c 89 ad 88 f6 ff ff 	mov    %r13,-0x978(%rbp)
  686ede:	4c 89 b5 78 f6 ff ff 	mov    %r14,-0x988(%rbp)
  686ee5:	4c 89 85 a0 f6 ff ff 	mov    %r8,-0x960(%rbp)
  686eec:	4c 89 a5 a8 f6 ff ff 	mov    %r12,-0x958(%rbp)
  686ef3:	4c 89 8d 98 f6 ff ff 	mov    %r9,-0x968(%rbp)
  686efa:	48 89 bd b8 f6 ff ff 	mov    %rdi,-0x948(%rbp)
  686f01:	48 89 8d c0 f6 ff ff 	mov    %rcx,-0x940(%rbp)
  686f08:	48 89 95 b0 f6 ff ff 	mov    %rdx,-0x950(%rbp)
  686f0f:	48 c7 85 80 f6 ff ff 	movq   $0x1,-0x980(%rbp)
  686f16:	01 00 00 00 
  686f1a:	48 83 c0 1f          	add    $0x1f,%rax
  686f1e:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  686f22:	48 2b e0             	sub    %rax,%rsp
  686f25:	48 89 e0             	mov    %rsp,%rax
  686f28:	48 89 85 c8 f6 ff ff 	mov    %rax,-0x938(%rbp)
  686f2f:	4c 89 f8             	mov    %r15,%rax
  686f32:	4c 89 85 d0 f6 ff ff 	mov    %r8,-0x930(%rbp)
  686f39:	4c 89 ad e8 f6 ff ff 	mov    %r13,-0x918(%rbp)
  686f40:	4c 89 b5 d8 f6 ff ff 	mov    %r14,-0x928(%rbp)
  686f47:	4c 89 85 00 f7 ff ff 	mov    %r8,-0x900(%rbp)
  686f4e:	4c 89 a5 08 f7 ff ff 	mov    %r12,-0x8f8(%rbp)
  686f55:	4c 89 8d f8 f6 ff ff 	mov    %r9,-0x908(%rbp)
  686f5c:	48 89 bd 18 f7 ff ff 	mov    %rdi,-0x8e8(%rbp)
  686f63:	48 89 8d 20 f7 ff ff 	mov    %rcx,-0x8e0(%rbp)
  686f6a:	48 89 95 10 f7 ff ff 	mov    %rdx,-0x8f0(%rbp)
  686f71:	48 c7 85 e0 f6 ff ff 	movq   $0x1,-0x920(%rbp)
  686f78:	01 00 00 00 
  686f7c:	48 83 c0 1f          	add    $0x1f,%rax
  686f80:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  686f84:	48 2b e0             	sub    %rax,%rsp
  686f87:	48 89 e0             	mov    %rsp,%rax
  686f8a:	48 ff c6             	inc    %rsi
  686f8d:	48 89 95 70 f7 ff ff 	mov    %rdx,-0x890(%rbp)
  686f94:	49 0f 4e f6          	cmovle %r14,%rsi
  686f98:	48 89 85 28 f7 ff ff 	mov    %rax,-0x8d8(%rbp)
  686f9f:	48 89 8d 80 f7 ff ff 	mov    %rcx,-0x880(%rbp)
  686fa6:	4c 89 85 30 f7 ff ff 	mov    %r8,-0x8d0(%rbp)
  686fad:	4c 89 ad 48 f7 ff ff 	mov    %r13,-0x8b8(%rbp)
  686fb4:	48 8d 14 f5 00 00 00 	lea    0x0(,%rsi,8),%rdx
  686fbb:	00 
  686fbc:	49 0f af d1          	imul   %r9,%rdx
  686fc0:	48 89 d0             	mov    %rdx,%rax
  686fc3:	4c 89 b5 38 f7 ff ff 	mov    %r14,-0x8c8(%rbp)
  686fca:	4c 89 85 60 f7 ff ff 	mov    %r8,-0x8a0(%rbp)
  686fd1:	4c 89 a5 68 f7 ff ff 	mov    %r12,-0x898(%rbp)
  686fd8:	4c 89 8d 58 f7 ff ff 	mov    %r9,-0x8a8(%rbp)
  686fdf:	48 89 bd 78 f7 ff ff 	mov    %rdi,-0x888(%rbp)
  686fe6:	48 c7 85 40 f7 ff ff 	movq   $0x1,-0x8c0(%rbp)
  686fed:	01 00 00 00 
  686ff1:	48 83 c0 1f          	add    $0x1f,%rax
  686ff5:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  686ff9:	48 2b e0             	sub    %rax,%rsp
  686ffc:	48 89 e0             	mov    %rsp,%rax
  686fff:	48 89 85 88 f7 ff ff 	mov    %rax,-0x878(%rbp)
  687006:	48 89 d0             	mov    %rdx,%rax
  687009:	4c 89 85 90 f7 ff ff 	mov    %r8,-0x870(%rbp)
  687010:	4c 89 ad a8 f7 ff ff 	mov    %r13,-0x858(%rbp)
  687017:	4c 89 b5 98 f7 ff ff 	mov    %r14,-0x868(%rbp)
  68701e:	4c 89 85 c0 f7 ff ff 	mov    %r8,-0x840(%rbp)
  687025:	4c 89 a5 c8 f7 ff ff 	mov    %r12,-0x838(%rbp)
  68702c:	4c 89 8d b8 f7 ff ff 	mov    %r9,-0x848(%rbp)
  687033:	48 89 bd d8 f7 ff ff 	mov    %rdi,-0x828(%rbp)
  68703a:	4c 89 b5 e0 f7 ff ff 	mov    %r14,-0x820(%rbp)
  687041:	48 89 b5 d0 f7 ff ff 	mov    %rsi,-0x830(%rbp)
  687048:	48 c7 85 a0 f7 ff ff 	movq   $0x1,-0x860(%rbp)
  68704f:	01 00 00 00 
  687053:	48 83 c0 1f          	add    $0x1f,%rax
  687057:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68705b:	48 2b e0             	sub    %rax,%rsp
  68705e:	48 89 e0             	mov    %rsp,%rax
  687061:	48 89 85 e8 f7 ff ff 	mov    %rax,-0x818(%rbp)
  687068:	48 89 d0             	mov    %rdx,%rax
  68706b:	4c 89 85 f0 f7 ff ff 	mov    %r8,-0x810(%rbp)
  687072:	4c 89 ad 08 f8 ff ff 	mov    %r13,-0x7f8(%rbp)
  687079:	4c 89 b5 f8 f7 ff ff 	mov    %r14,-0x808(%rbp)
  687080:	4c 89 85 20 f8 ff ff 	mov    %r8,-0x7e0(%rbp)
  687087:	4c 89 a5 28 f8 ff ff 	mov    %r12,-0x7d8(%rbp)
  68708e:	4c 89 8d 18 f8 ff ff 	mov    %r9,-0x7e8(%rbp)
  687095:	48 89 bd 38 f8 ff ff 	mov    %rdi,-0x7c8(%rbp)
  68709c:	4c 89 b5 40 f8 ff ff 	mov    %r14,-0x7c0(%rbp)
  6870a3:	48 89 b5 30 f8 ff ff 	mov    %rsi,-0x7d0(%rbp)
  6870aa:	48 c7 85 00 f8 ff ff 	movq   $0x1,-0x800(%rbp)
  6870b1:	01 00 00 00 
  6870b5:	48 83 c0 1f          	add    $0x1f,%rax
  6870b9:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  6870bd:	48 2b e0             	sub    %rax,%rsp
  6870c0:	48 89 e0             	mov    %rsp,%rax
  6870c3:	48 89 85 48 f8 ff ff 	mov    %rax,-0x7b8(%rbp)
  6870ca:	48 89 d0             	mov    %rdx,%rax
  6870cd:	4c 89 85 50 f8 ff ff 	mov    %r8,-0x7b0(%rbp)
  6870d4:	4c 89 ad 68 f8 ff ff 	mov    %r13,-0x798(%rbp)
  6870db:	4c 89 b5 58 f8 ff ff 	mov    %r14,-0x7a8(%rbp)
  6870e2:	4c 89 85 80 f8 ff ff 	mov    %r8,-0x780(%rbp)
  6870e9:	4c 89 a5 88 f8 ff ff 	mov    %r12,-0x778(%rbp)
  6870f0:	4c 89 8d 78 f8 ff ff 	mov    %r9,-0x788(%rbp)
  6870f7:	48 89 bd 98 f8 ff ff 	mov    %rdi,-0x768(%rbp)
  6870fe:	4c 89 b5 a0 f8 ff ff 	mov    %r14,-0x760(%rbp)
  687105:	48 89 b5 90 f8 ff ff 	mov    %rsi,-0x770(%rbp)
  68710c:	48 c7 85 60 f8 ff ff 	movq   $0x1,-0x7a0(%rbp)
  687113:	01 00 00 00 
  687117:	48 83 c0 1f          	add    $0x1f,%rax
  68711b:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68711f:	48 2b e0             	sub    %rax,%rsp
  687122:	48 89 e0             	mov    %rsp,%rax
  687125:	4c 89 a5 e8 f8 ff ff 	mov    %r12,-0x718(%rbp)
  68712c:	4c 8b 25 ad 6f 4b 00 	mov    0x4b6fad(%rip),%r12        # b3e0e0 <mod_param_mp_bounds_+0x40>
  687133:	49 f7 dc             	neg    %r12
  687136:	4c 03 a5 e8 f4 ff ff 	add    -0xb18(%rbp),%r12
  68713d:	48 89 b5 f0 f8 ff ff 	mov    %rsi,-0x710(%rbp)
  687144:	49 69 f4 60 0f 00 00 	imul   $0xf60,%r12,%rsi
  68714b:	4c 89 8d d8 f8 ff ff 	mov    %r9,-0x728(%rbp)
  687152:	4c 8b 0d 47 6f 4b 00 	mov    0x4b6f47(%rip),%r9        # b3e0a0 <mod_param_mp_bounds_>
  687159:	4c 89 ad c8 f8 ff ff 	mov    %r13,-0x738(%rbp)
  687160:	4c 8b ad a0 f9 ff ff 	mov    -0x660(%rbp),%r13
  687167:	48 89 85 a8 f8 ff ff 	mov    %rax,-0x758(%rbp)
  68716e:	49 8b 8c 31 f0 01 00 	mov    0x1f0(%r9,%rsi,1),%rcx
  687175:	00 
  687176:	49 8b 84 31 38 02 00 	mov    0x238(%r9,%rsi,1),%rax
  68717d:	00 
  68717e:	48 f7 d9             	neg    %rcx
  687181:	48 f7 d8             	neg    %rax
  687184:	4c 89 85 b0 f8 ff ff 	mov    %r8,-0x750(%rbp)
  68718b:	4c 89 85 e0 f8 ff ff 	mov    %r8,-0x720(%rbp)
  687192:	4d 63 45 00          	movslq 0x0(%r13),%r8
  687196:	49 03 c8             	add    %r8,%rcx
  687199:	49 03 c0             	add    %r8,%rax
  68719c:	49 0f af 8c 31 e8 01 	imul   0x1e8(%r9,%rsi,1),%rcx
  6871a3:	00 00 
  6871a5:	49 0f af 84 31 30 02 	imul   0x230(%r9,%rsi,1),%rax
  6871ac:	00 00 
  6871ae:	49 8b 94 31 b0 01 00 	mov    0x1b0(%r9,%rsi,1),%rdx
  6871b5:	00 
  6871b6:	4d 8b bc 31 10 03 00 	mov    0x310(%r9,%rsi,1),%r15
  6871bd:	00 
  6871be:	4d 8b a4 31 f8 01 00 	mov    0x1f8(%r9,%rsi,1),%r12
  6871c5:	00 
  6871c6:	49 f7 df             	neg    %r15
  6871c9:	4d 03 f8             	add    %r8,%r15
  6871cc:	4d 0f af bc 31 08 03 	imul   0x308(%r9,%rsi,1),%r15
  6871d3:	00 00 
  6871d5:	44 8b 14 0a          	mov    (%rdx,%rcx,1),%r10d
  6871d9:	41 8b 14 04          	mov    (%r12,%rax,1),%edx
  6871dd:	48 89 bd f8 f8 ff ff 	mov    %rdi,-0x708(%rbp)
  6871e4:	89 95 60 f9 ff ff    	mov    %edx,-0x6a0(%rbp)
  6871ea:	49 8b bc 31 58 03 00 	mov    0x358(%r9,%rsi,1),%rdi
  6871f1:	00 
  6871f2:	49 8b 94 31 c8 02 00 	mov    0x2c8(%r9,%rsi,1),%rdx
  6871f9:	00 
  6871fa:	48 f7 df             	neg    %rdi
  6871fd:	48 f7 da             	neg    %rdx
  687200:	49 03 f8             	add    %r8,%rdi
  687203:	49 03 d0             	add    %r8,%rdx
  687206:	49 0f af bc 31 50 03 	imul   0x350(%r9,%rsi,1),%rdi
  68720d:	00 00 
  68720f:	49 0f af 94 31 c0 02 	imul   0x2c0(%r9,%rsi,1),%rdx
  687216:	00 00 
  687218:	4d 8b 9c 31 d0 02 00 	mov    0x2d0(%r9,%rsi,1),%r11
  68721f:	00 
  687220:	49 8b 8c 31 18 03 00 	mov    0x318(%r9,%rsi,1),%rcx
  687227:	00 
  687228:	49 8b 84 31 88 02 00 	mov    0x288(%r9,%rsi,1),%rax
  68722f:	00 
  687230:	47 8b 2c 3b          	mov    (%r11,%r15,1),%r13d
  687234:	44 89 ad 5c f9 ff ff 	mov    %r13d,-0x6a4(%rbp)
  68723b:	4d 8b ac 31 80 02 00 	mov    0x280(%r9,%rsi,1),%r13
  687242:	00 
  687243:	49 f7 dd             	neg    %r13
  687246:	4d 03 e8             	add    %r8,%r13
  687249:	4d 0f af ac 31 78 02 	imul   0x278(%r9,%rsi,1),%r13
  687250:	00 00 
  687252:	44 89 95 58 f9 ff ff 	mov    %r10d,-0x6a8(%rbp)
  687259:	44 8b 14 39          	mov    (%rcx,%rdi,1),%r10d
  68725d:	8b 0c 10             	mov    (%rax,%rdx,1),%ecx
  687260:	49 8b 84 31 40 09 00 	mov    0x940(%r9,%rsi,1),%rax
  687267:	00 
  687268:	48 f7 d8             	neg    %rax
  68726b:	49 03 c0             	add    %r8,%rax
  68726e:	49 0f af 84 31 38 09 	imul   0x938(%r9,%rsi,1),%rax
  687275:	00 00 
  687277:	49 8b 94 31 60 0a 00 	mov    0xa60(%r9,%rsi,1),%rdx
  68727e:	00 
  68727f:	48 f7 da             	neg    %rdx
  687282:	49 03 d0             	add    %r8,%rdx
  687285:	49 0f af 94 31 58 0a 	imul   0xa58(%r9,%rsi,1),%rdx
  68728c:	00 00 
  68728e:	4d 8b 9c 31 40 02 00 	mov    0x240(%r9,%rsi,1),%r11
  687295:	00 
  687296:	44 89 95 64 f9 ff ff 	mov    %r10d,-0x69c(%rbp)
  68729d:	4d 8b a4 31 e8 03 00 	mov    0x3e8(%r9,%rsi,1),%r12
  6872a4:	00 
  6872a5:	47 8b 3c 2b          	mov    (%r11,%r13,1),%r15d
  6872a9:	49 f7 dc             	neg    %r12
  6872ac:	4d 8b 9c 31 00 09 00 	mov    0x900(%r9,%rsi,1),%r11
  6872b3:	00 
  6872b4:	4d 03 e0             	add    %r8,%r12
  6872b7:	44 89 bd 68 f9 ff ff 	mov    %r15d,-0x698(%rbp)
  6872be:	4d 8b 94 31 30 04 00 	mov    0x430(%r9,%rsi,1),%r10
  6872c5:	00 
  6872c6:	45 8b 3c 03          	mov    (%r11,%rax,1),%r15d
  6872ca:	49 f7 da             	neg    %r10
  6872cd:	49 8b 84 31 20 0a 00 	mov    0xa20(%r9,%rsi,1),%rax
  6872d4:	00 
  6872d5:	4d 03 d0             	add    %r8,%r10
  6872d8:	4d 0f af a4 31 e0 03 	imul   0x3e0(%r9,%rsi,1),%r12
  6872df:	00 00 
  6872e1:	4d 0f af 94 31 28 04 	imul   0x428(%r9,%rsi,1),%r10
  6872e8:	00 00 
  6872ea:	89 8d 6c f9 ff ff    	mov    %ecx,-0x694(%rbp)
  6872f0:	8b 0c 10             	mov    (%rax,%rdx,1),%ecx
  6872f3:	49 8b 84 31 c8 0b 00 	mov    0xbc8(%r9,%rsi,1),%rax
  6872fa:	00 
  6872fb:	48 f7 d8             	neg    %rax
  6872fe:	49 03 c0             	add    %r8,%rax
  687301:	49 0f af 84 31 c0 0b 	imul   0xbc0(%r9,%rsi,1),%rax
  687308:	00 00 
  68730a:	4d 8b ac 31 a8 03 00 	mov    0x3a8(%r9,%rsi,1),%r13
  687311:	00 
  687312:	49 8b bc 31 f0 03 00 	mov    0x3f0(%r9,%rsi,1),%rdi
  687319:	00 
  68731a:	49 8b 94 31 e8 0c 00 	mov    0xce8(%r9,%rsi,1),%rdx
  687321:	00 
  687322:	4f 63 6c 25 00       	movslq 0x0(%r13,%r12,1),%r13
  687327:	48 f7 da             	neg    %rdx
  68732a:	4e 63 24 17          	movslq (%rdi,%r10,1),%r12
  68732e:	49 03 d0             	add    %r8,%rdx
  687331:	49 8b bc 31 88 0b 00 	mov    0xb88(%r9,%rsi,1),%rdi
  687338:	00 
  687339:	49 0f af 94 31 e0 0c 	imul   0xce0(%r9,%rsi,1),%rdx
  687340:	00 00 
  687342:	44 8b 14 07          	mov    (%rdi,%rax,1),%r10d
  687346:	49 8b bc 31 88 00 00 	mov    0x88(%r9,%rsi,1),%rdi
  68734d:	00 
  68734e:	48 f7 df             	neg    %rdi
  687351:	48 ff cf             	dec    %rdi
  687354:	49 0f af bc 31 80 00 	imul   0x80(%r9,%rsi,1),%rdi
  68735b:	00 00 
  68735d:	89 8d 74 f9 ff ff    	mov    %ecx,-0x68c(%rbp)
  687363:	4d 8b 84 31 a8 0c 00 	mov    0xca8(%r9,%rsi,1),%r8
  68736a:	00 
  68736b:	49 8b 4c 31 48       	mov    0x48(%r9,%rsi,1),%rcx
  687370:	4d 8b 9c 31 d0 00 00 	mov    0xd0(%r9,%rsi,1),%r11
  687377:	00 
  687378:	41 8b 04 10          	mov    (%r8,%rdx,1),%eax
  68737c:	49 f7 db             	neg    %r11
  68737f:	44 8b 04 39          	mov    (%rcx,%rdi,1),%r8d
  687383:	49 ff cb             	dec    %r11
  687386:	49 8b 94 31 18 01 00 	mov    0x118(%r9,%rsi,1),%rdx
  68738d:	00 
  68738e:	49 8b bc 31 60 01 00 	mov    0x160(%r9,%rsi,1),%rdi
  687395:	00 
  687396:	48 f7 da             	neg    %rdx
  687399:	48 f7 df             	neg    %rdi
  68739c:	48 ff ca             	dec    %rdx
  68739f:	48 ff cf             	dec    %rdi
  6873a2:	49 0f af bc 31 58 01 	imul   0x158(%r9,%rsi,1),%rdi
  6873a9:	00 00 
  6873ab:	4d 0f af 9c 31 c8 00 	imul   0xc8(%r9,%rsi,1),%r11
  6873b2:	00 00 
  6873b4:	49 0f af 94 31 10 01 	imul   0x110(%r9,%rsi,1),%rdx
  6873bb:	00 00 
  6873bd:	44 89 95 78 f9 ff ff 	mov    %r10d,-0x688(%rbp)
  6873c4:	89 85 7c f9 ff ff    	mov    %eax,-0x684(%rbp)
  6873ca:	4d 8b 94 31 90 00 00 	mov    0x90(%r9,%rsi,1),%r10
  6873d1:	00 
  6873d2:	49 8b 84 31 d8 00 00 	mov    0xd8(%r9,%rsi,1),%rax
  6873d9:	00 
  6873da:	49 8b b4 31 20 01 00 	mov    0x120(%r9,%rsi,1),%rsi
  6873e1:	00 
  6873e2:	44 89 bd 70 f9 ff ff 	mov    %r15d,-0x690(%rbp)
  6873e9:	47 8b 3c 1a          	mov    (%r10,%r11,1),%r15d
  6873ed:	8b 0c 10             	mov    (%rax,%rdx,1),%ecx
  6873f0:	44 8b 0c 3e          	mov    (%rsi,%rdi,1),%r9d
  6873f4:	bf d8 55 b3 00       	mov    $0xb355d8,%edi
  6873f9:	4c 89 b5 b8 f8 ff ff 	mov    %r14,-0x748(%rbp)
  687400:	4c 89 b5 00 f9 ff ff 	mov    %r14,-0x700(%rbp)
  687407:	48 c7 85 c0 f8 ff ff 	movq   $0x1,-0x740(%rbp)
  68740e:	01 00 00 00 
  687412:	44 89 85 80 f9 ff ff 	mov    %r8d,-0x680(%rbp)
  687419:	44 89 bd 84 f9 ff ff 	mov    %r15d,-0x67c(%rbp)
  687420:	89 8d 88 f9 ff ff    	mov    %ecx,-0x678(%rbp)
  687426:	44 89 8d 8c f9 ff ff 	mov    %r9d,-0x674(%rbp)
  68742d:	e8 fe 67 d8 ff       	callq  40dc30 <__kmpc_global_thread_num@plt>
  687432:	89 85 90 f9 ff ff    	mov    %eax,-0x670(%rbp)
  687438:	bf 24 56 b3 00       	mov    $0xb35624,%edi
  68743d:	33 c0                	xor    %eax,%eax
  68743f:	e8 1c 69 d8 ff       	callq  40dd60 <__kmpc_ok_to_fork@plt>
  687444:	85 c0                	test   %eax,%eax
  687446:	0f 84 97 00 00 00    	je     6874e3 <step3d_t_mod_mp_step3d_t_tile_+0x873>
  68744c:	48 83 c4 a0          	add    $0xffffffffffffffa0,%rsp
  687450:	4c 8d 95 58 f9 ff ff 	lea    -0x6a8(%rbp),%r10
  687457:	4c 8b bd 70 f4 ff ff 	mov    -0xb90(%rbp),%r15
  68745e:	4d 8d 5a 08          	lea    0x8(%r10),%r11
  687462:	ba e7 e5 68 00       	mov    $0x68e5e7,%edx
  687467:	48 8d 43 70          	lea    0x70(%rbx),%rax
  68746b:	49 8d 72 b4          	lea    -0x4c(%r10),%rsi
  68746f:	4c 89 14 24          	mov    %r10,(%rsp)
  687473:	48 8d 7e 2c          	lea    0x2c(%rsi),%rdi
  687477:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
  68747c:	4c 8d 56 30          	lea    0x30(%rsi),%r10
  687480:	4c 89 7c 24 10       	mov    %r15,0x10(%rsp)
  687485:	4c 8d 5e 34          	lea    0x34(%rsi),%r11
  687489:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  68748e:	4c 8d 7e 48          	lea    0x48(%rsi),%r15
  687492:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
  687497:	48 8d 47 5c          	lea    0x5c(%rdi),%rax
  68749b:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
  6874a0:	48 8d 48 04          	lea    0x4(%rax),%rcx
  6874a4:	4c 89 54 24 30       	mov    %r10,0x30(%rsp)
  6874a9:	4c 8d 40 d4          	lea    -0x2c(%rax),%r8
  6874ad:	4c 89 5c 24 38       	mov    %r11,0x38(%rsp)
  6874b2:	4c 8d 48 d8          	lea    -0x28(%rax),%r9
  6874b6:	4c 89 7c 24 40       	mov    %r15,0x40(%rsp)
  6874bb:	bf 24 56 b3 00       	mov    $0xb35624,%edi
  6874c0:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  6874c5:	be 0e 00 00 00       	mov    $0xe,%esi
  6874ca:	33 c0                	xor    %eax,%eax
  6874cc:	4c 8d 79 30          	lea    0x30(%rcx),%r15
  6874d0:	4c 89 7c 24 50       	mov    %r15,0x50(%rsp)
  6874d5:	e8 d6 66 d8 ff       	callq  40dbb0 <__kmpc_fork_call@plt>
  6874da:	48 83 c4 60          	add    $0x60,%rsp
  6874de:	e9 81 00 00 00       	jmpq   687564 <step3d_t_mod_mp_step3d_t_tile_+0x8f4>
  6874e3:	bf 24 56 b3 00       	mov    $0xb35624,%edi
  6874e8:	33 c0                	xor    %eax,%eax
  6874ea:	8b b5 90 f9 ff ff    	mov    -0x670(%rbp),%esi
  6874f0:	e8 5b 68 d8 ff       	callq  40dd50 <__kmpc_serialized_parallel@plt>
  6874f5:	4c 8d bd c8 f9 ff ff 	lea    -0x638(%rbp),%r15
  6874fc:	41 57                	push   %r15
  6874fe:	49 8d 47 cc          	lea    -0x34(%r15),%rax
  687502:	50                   	push   %rax
  687503:	4c 8d 50 c0          	lea    -0x40(%rax),%r10
  687507:	41 52                	push   %r10
  687509:	4c 8d 58 ac          	lea    -0x54(%rax),%r11
  68750d:	41 53                	push   %r11
  68750f:	4c 8d 40 a8          	lea    -0x58(%rax),%r8
  687513:	41 50                	push   %r8
  687515:	4c 8d 48 a4          	lea    -0x5c(%rax),%r9
  687519:	41 51                	push   %r9
  68751b:	49 8d 78 d0          	lea    -0x30(%r8),%rdi
  68751f:	57                   	push   %rdi
  687520:	48 8d 73 70          	lea    0x70(%rbx),%rsi
  687524:	56                   	push   %rsi
  687525:	ff b5 70 f4 ff ff    	pushq  -0xb90(%rbp)
  68752b:	be f0 4b b8 00       	mov    $0xb84bf0,%esi
  687530:	48 8d 50 cc          	lea    -0x34(%rax),%rdx
  687534:	52                   	push   %rdx
  687535:	48 8d 78 fc          	lea    -0x4(%rax),%rdi
  687539:	48 8d 50 04          	lea    0x4(%rax),%rdx
  68753d:	48 8d 48 d4          	lea    -0x2c(%rax),%rcx
  687541:	4c 8d 40 d8          	lea    -0x28(%rax),%r8
  687545:	4c 8d 48 c4          	lea    -0x3c(%rax),%r9
  687549:	e8 99 70 00 00       	callq  68e5e7 <step3d_t_mod_mp_step3d_t_tile_+0x7977>
  68754e:	48 83 c4 50          	add    $0x50,%rsp
  687552:	bf 24 56 b3 00       	mov    $0xb35624,%edi
  687557:	33 c0                	xor    %eax,%eax
  687559:	8b b5 90 f9 ff ff    	mov    -0x670(%rbp),%esi
  68755f:	e8 5c 6b d8 ff       	callq  40e0c0 <__kmpc_end_serialized_parallel@plt>
  687564:	bf 70 56 b3 00       	mov    $0xb35670,%edi
  687569:	33 c0                	xor    %eax,%eax
  68756b:	e8 f0 67 d8 ff       	callq  40dd60 <__kmpc_ok_to_fork@plt>
  687570:	85 c0                	test   %eax,%eax
  687572:	0f 84 86 01 00 00    	je     6876fe <step3d_t_mod_mp_step3d_t_tile_+0xa8e>
  687578:	48 81 c4 f0 fe ff ff 	add    $0xfffffffffffffef0,%rsp
  68757f:	4c 8d 95 70 f9 ff ff 	lea    -0x690(%rbp),%r10
  687586:	ba 32 a6 68 00       	mov    $0x68a632,%edx
  68758b:	4d 8d 5a 04          	lea    0x4(%r10),%r11
  68758f:	48 8d b3 a0 00 00 00 	lea    0xa0(%rbx),%rsi
  687596:	48 8d 7b 50          	lea    0x50(%rbx),%rdi
  68759a:	4c 89 14 24          	mov    %r10,(%rsp)
  68759e:	49 8d 4a 30          	lea    0x30(%r10),%rcx
  6875a2:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
  6875a7:	4c 8d 41 b8          	lea    -0x48(%rcx),%r8
  6875ab:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  6875b0:	48 8d 41 c0          	lea    -0x40(%rcx),%rax
  6875b4:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
  6875b9:	4c 8d 4b 78          	lea    0x78(%rbx),%r9
  6875bd:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  6875c2:	4c 8d 50 18          	lea    0x18(%rax),%r10
  6875c6:	4c 89 44 24 28       	mov    %r8,0x28(%rsp)
  6875cb:	4c 8d 58 1c          	lea    0x1c(%rax),%r11
  6875cf:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  6875d4:	48 8d 73 58          	lea    0x58(%rbx),%rsi
  6875d8:	4c 89 4c 24 38       	mov    %r9,0x38(%rsp)
  6875dd:	48 8d 7e 28          	lea    0x28(%rsi),%rdi
  6875e1:	4c 89 54 24 40       	mov    %r10,0x40(%rsp)
  6875e6:	48 8d 4b 48          	lea    0x48(%rbx),%rcx
  6875ea:	4c 89 5c 24 48       	mov    %r11,0x48(%rsp)
  6875ef:	4c 8d 43 10          	lea    0x10(%rbx),%r8
  6875f3:	48 89 74 24 50       	mov    %rsi,0x50(%rsp)
  6875f8:	48 8d 43 18          	lea    0x18(%rbx),%rax
  6875fc:	48 89 7c 24 58       	mov    %rdi,0x58(%rsp)
  687601:	4c 8d 4b 20          	lea    0x20(%rbx),%r9
  687605:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
  68760a:	4c 8d 53 28          	lea    0x28(%rbx),%r10
  68760e:	4c 89 44 24 68       	mov    %r8,0x68(%rsp)
  687613:	4d 8d 5b 04          	lea    0x4(%r11),%r11
  687617:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
  68761c:	49 8d 73 04          	lea    0x4(%r11),%rsi
  687620:	4c 89 4c 24 78       	mov    %r9,0x78(%rsp)
  687625:	48 8d 7e 04          	lea    0x4(%rsi),%rdi
  687629:	4c 89 94 24 80 00 00 	mov    %r10,0x80(%rsp)
  687630:	00 
  687631:	48 8d 4e 08          	lea    0x8(%rsi),%rcx
  687635:	4c 8d 94 24 88 00 00 	lea    0x88(%rsp),%r10
  68763c:	00 
  68763d:	4d 89 1a             	mov    %r11,(%r10)
  687640:	4c 8d 43 60          	lea    0x60(%rbx),%r8
  687644:	49 89 72 08          	mov    %rsi,0x8(%r10)
  687648:	48 8d 43 68          	lea    0x68(%rbx),%rax
  68764c:	49 89 7a 10          	mov    %rdi,0x10(%r10)
  687650:	4c 8d 4b 40          	lea    0x40(%rbx),%r9
  687654:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  68765b:	00 
  68765c:	48 89 0f             	mov    %rcx,(%rdi)
  68765f:	4c 8d 51 80          	lea    -0x80(%rcx),%r10
  687663:	4c 89 47 08          	mov    %r8,0x8(%rdi)
  687667:	4c 8d 59 ac          	lea    -0x54(%rcx),%r11
  68766b:	48 89 47 10          	mov    %rax,0x10(%rdi)
  68766f:	48 8d 71 b0          	lea    -0x50(%rcx),%rsi
  687673:	48 8d 84 24 b8 00 00 	lea    0xb8(%rsp),%rax
  68767a:	00 
  68767b:	4c 89 08             	mov    %r9,(%rax)
  68767e:	48 8d 79 b4          	lea    -0x4c(%rcx),%rdi
  687682:	4c 89 50 08          	mov    %r10,0x8(%rax)
  687686:	48 8d 49 08          	lea    0x8(%rcx),%rcx
  68768a:	4c 89 58 10          	mov    %r11,0x10(%rax)
  68768e:	4c 8d 85 c8 f6 ff ff 	lea    -0x938(%rbp),%r8
  687695:	4c 8d 9c 24 d0 00 00 	lea    0xd0(%rsp),%r11
  68769c:	00 
  68769d:	49 89 33             	mov    %rsi,(%r11)
  6876a0:	49 8d 40 60          	lea    0x60(%r8),%rax
  6876a4:	48 8d b4 24 d8 00 00 	lea    0xd8(%rsp),%rsi
  6876ab:	00 
  6876ac:	48 89 3e             	mov    %rdi,(%rsi)
  6876af:	4c 8d 8d 08 f6 ff ff 	lea    -0x9f8(%rbp),%r9
  6876b6:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  6876ba:	bf 70 56 b3 00       	mov    $0xb35670,%edi
  6876bf:	4c 89 7e 10          	mov    %r15,0x10(%rsi)
  6876c3:	be 25 00 00 00       	mov    $0x25,%esi
  6876c8:	4d 89 43 20          	mov    %r8,0x20(%r11)
  6876cc:	48 8d 49 04          	lea    0x4(%rcx),%rcx
  6876d0:	49 89 43 28          	mov    %rax,0x28(%r11)
  6876d4:	4c 8d 41 d0          	lea    -0x30(%rcx),%r8
  6876d8:	4d 89 4b 30          	mov    %r9,0x30(%r11)
  6876dc:	4c 8d 49 d4          	lea    -0x2c(%rcx),%r9
  6876e0:	33 c0                	xor    %eax,%eax
  6876e2:	4c 8d 95 68 f6 ff ff 	lea    -0x998(%rbp),%r10
  6876e9:	4d 89 53 38          	mov    %r10,0x38(%r11)
  6876ed:	e8 be 64 d8 ff       	callq  40dbb0 <__kmpc_fork_call@plt>
  6876f2:	48 81 c4 10 01 00 00 	add    $0x110,%rsp
  6876f9:	e9 79 01 00 00       	jmpq   687877 <step3d_t_mod_mp_step3d_t_tile_+0xc07>
  6876fe:	bf 70 56 b3 00       	mov    $0xb35670,%edi
  687703:	33 c0                	xor    %eax,%eax
  687705:	8b b5 90 f9 ff ff    	mov    -0x670(%rbp),%esi
  68770b:	e8 40 66 d8 ff       	callq  40dd50 <__kmpc_serialized_parallel@plt>
  687710:	48 81 c4 f0 fe ff ff 	add    $0xfffffffffffffef0,%rsp
  687717:	48 8d 85 74 f9 ff ff 	lea    -0x68c(%rbp),%rax
  68771e:	be f4 4b b8 00       	mov    $0xb84bf4,%esi
  687723:	4c 8d 93 a0 00 00 00 	lea    0xa0(%rbx),%r10
  68772a:	4c 8d 5b 50          	lea    0x50(%rbx),%r11
  68772e:	48 8d 50 2c          	lea    0x2c(%rax),%rdx
  687732:	48 89 04 24          	mov    %rax,(%rsp)
  687736:	48 8d 48 e4          	lea    -0x1c(%rax),%rcx
  68773a:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
  68773f:	48 8d 40 ec          	lea    -0x14(%rax),%rax
  687743:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  687748:	4c 89 1f             	mov    %r11,(%rdi)
  68774b:	4c 8d 43 78          	lea    0x78(%rbx),%r8
  68774f:	48 89 57 08          	mov    %rdx,0x8(%rdi)
  687753:	4c 8d 50 18          	lea    0x18(%rax),%r10
  687757:	48 89 4f 10          	mov    %rcx,0x10(%rdi)
  68775b:	4c 8d 58 1c          	lea    0x1c(%rax),%r11
  68775f:	48 89 47 18          	mov    %rax,0x18(%rdi)
  687763:	48 8d 53 58          	lea    0x58(%rbx),%rdx
  687767:	4c 89 47 20          	mov    %r8,0x20(%rdi)
  68776b:	48 8d 4a 28          	lea    0x28(%rdx),%rcx
  68776f:	4c 89 57 28          	mov    %r10,0x28(%rdi)
  687773:	48 8d 43 48          	lea    0x48(%rbx),%rax
  687777:	4c 89 5f 30          	mov    %r11,0x30(%rdi)
  68777b:	4c 8d 43 10          	lea    0x10(%rbx),%r8
  68777f:	48 89 57 38          	mov    %rdx,0x38(%rdi)
  687783:	4c 8d 53 18          	lea    0x18(%rbx),%r10
  687787:	48 89 4f 40          	mov    %rcx,0x40(%rdi)
  68778b:	4c 8d 5b 20          	lea    0x20(%rbx),%r11
  68778f:	48 89 47 48          	mov    %rax,0x48(%rdi)
  687793:	48 8d 53 28          	lea    0x28(%rbx),%rdx
  687797:	4c 89 47 50          	mov    %r8,0x50(%rdi)
  68779b:	48 8d 8d 80 f9 ff ff 	lea    -0x680(%rbp),%rcx
  6877a2:	4c 89 57 58          	mov    %r10,0x58(%rdi)
  6877a6:	48 8d 41 04          	lea    0x4(%rcx),%rax
  6877aa:	4c 89 5f 60          	mov    %r11,0x60(%rdi)
  6877ae:	4c 8d 40 04          	lea    0x4(%rax),%r8
  6877b2:	48 89 57 68          	mov    %rdx,0x68(%rdi)
  6877b6:	4c 8d 50 08          	lea    0x8(%rax),%r10
  6877ba:	48 89 4f 70          	mov    %rcx,0x70(%rdi)
  6877be:	4c 8d 5b 60          	lea    0x60(%rbx),%r11
  6877c2:	48 89 47 78          	mov    %rax,0x78(%rdi)
  6877c6:	48 8d 53 68          	lea    0x68(%rbx),%rdx
  6877ca:	4c 8d 8c 24 90 00 00 	lea    0x90(%rsp),%r9
  6877d1:	00 
  6877d2:	4d 89 01             	mov    %r8,(%r9)
  6877d5:	48 8d 4b 40          	lea    0x40(%rbx),%rcx
  6877d9:	4d 89 51 08          	mov    %r10,0x8(%r9)
  6877dd:	48 8d 40 88          	lea    -0x78(%rax),%rax
  6877e1:	4d 89 59 10          	mov    %r11,0x10(%r9)
  6877e5:	4c 8d 40 2c          	lea    0x2c(%rax),%r8
  6877e9:	49 89 51 18          	mov    %rdx,0x18(%r9)
  6877ed:	4c 8d 50 30          	lea    0x30(%rax),%r10
  6877f1:	49 89 49 20          	mov    %rcx,0x20(%r9)
  6877f5:	4c 8d 58 34          	lea    0x34(%rax),%r11
  6877f9:	49 89 41 28          	mov    %rax,0x28(%r9)
  6877fd:	49 8d 50 5c          	lea    0x5c(%r8),%rdx
  687801:	4d 89 41 30          	mov    %r8,0x30(%r9)
  687805:	48 8d 8d c8 f6 ff ff 	lea    -0x938(%rbp),%rcx
  68780c:	4d 89 51 38          	mov    %r10,0x38(%r9)
  687810:	48 8d 41 60          	lea    0x60(%rcx),%rax
  687814:	4d 89 59 40          	mov    %r11,0x40(%r9)
  687818:	4c 8d 85 08 f6 ff ff 	lea    -0x9f8(%rbp),%r8
  68781f:	4c 8d 9c 24 d8 00 00 	lea    0xd8(%rsp),%r11
  687826:	00 
  687827:	49 89 13             	mov    %rdx,(%r11)
  68782a:	48 8d 7a fc          	lea    -0x4(%rdx),%rdi
  68782e:	4d 89 7b 08          	mov    %r15,0x8(%r11)
  687832:	4c 8d 4a dc          	lea    -0x24(%rdx),%r9
  687836:	49 89 4b 10          	mov    %rcx,0x10(%r11)
  68783a:	48 8d 52 04          	lea    0x4(%rdx),%rdx
  68783e:	49 89 43 18          	mov    %rax,0x18(%r11)
  687842:	48 8d 4a d0          	lea    -0x30(%rdx),%rcx
  687846:	4d 89 43 20          	mov    %r8,0x20(%r11)
  68784a:	4c 8d 42 d4          	lea    -0x2c(%rdx),%r8
  68784e:	4c 8d 95 68 f6 ff ff 	lea    -0x998(%rbp),%r10
  687855:	4d 89 53 28          	mov    %r10,0x28(%r11)
  687859:	e8 d4 2d 00 00       	callq  68a632 <step3d_t_mod_mp_step3d_t_tile_+0x39c2>
  68785e:	48 81 c4 10 01 00 00 	add    $0x110,%rsp
  687865:	bf 70 56 b3 00       	mov    $0xb35670,%edi
  68786a:	33 c0                	xor    %eax,%eax
  68786c:	8b b5 90 f9 ff ff    	mov    -0x670(%rbp),%esi
  687872:	e8 49 68 d8 ff       	callq  40e0c0 <__kmpc_end_serialized_parallel@plt>
  687877:	be e8 b6 b3 00       	mov    $0xb3b6e8,%esi
  68787c:	48 8b bd 98 f9 ff ff 	mov    -0x668(%rbp),%rdi
  687883:	e8 48 42 fd ff       	callq  65bad0 <nesting_mod_mp_collect_bry_fluxes_>
  687888:	8b 05 12 cf 4f 00    	mov    0x4fcf12(%rip),%eax        # b847a0 <mod_scalars_mp_exit_flag_>
  68788e:	3b 05 fc ce 4f 00    	cmp    0x4fcefc(%rip),%eax        # b84790 <mod_scalars_mp_noerror_>
  687894:	0f 85 9c 15 00 00    	jne    688e36 <step3d_t_mod_mp_step3d_t_tile_+0x21c6>
  68789a:	bf bc 56 b3 00       	mov    $0xb356bc,%edi
  68789f:	33 c0                	xor    %eax,%eax
  6878a1:	e8 ba 64 d8 ff       	callq  40dd60 <__kmpc_ok_to_fork@plt>
  6878a6:	85 c0                	test   %eax,%eax
  6878a8:	0f 84 0b 01 00 00    	je     6879b9 <step3d_t_mod_mp_step3d_t_tile_+0xd49>
  6878ae:	48 81 c4 40 ff ff ff 	add    $0xffffffffffffff40,%rsp
  6878b5:	4c 8d 95 58 f9 ff ff 	lea    -0x6a8(%rbp),%r10
  6878bc:	ba 65 8e 68 00       	mov    $0x688e65,%edx
  6878c1:	4d 8d 5a 08          	lea    0x8(%r10),%r11
  6878c5:	48 8d b3 98 00 00 00 	lea    0x98(%rbx),%rsi
  6878cc:	48 8d 7e 08          	lea    0x8(%rsi),%rdi
  6878d0:	4c 89 14 24          	mov    %r10,(%rsp)
  6878d4:	48 8d 4b 60          	lea    0x60(%rbx),%rcx
  6878d8:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
  6878dd:	4c 8d 43 68          	lea    0x68(%rbx),%r8
  6878e1:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  6878e6:	49 8d 42 04          	lea    0x4(%r10),%rax
  6878ea:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
  6878ef:	4c 8d 48 08          	lea    0x8(%rax),%r9
  6878f3:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  6878f8:	4c 8d 53 40          	lea    0x40(%rbx),%r10
  6878fc:	4c 89 44 24 28       	mov    %r8,0x28(%rsp)
  687901:	4c 8d 59 28          	lea    0x28(%rcx),%r11
  687905:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  68790a:	48 8d 71 30          	lea    0x30(%rcx),%rsi
  68790e:	4c 89 4c 24 38       	mov    %r9,0x38(%rsp)
  687913:	48 8d 7b 70          	lea    0x70(%rbx),%rdi
  687917:	4c 89 54 24 40       	mov    %r10,0x40(%rsp)
  68791c:	48 8d 48 b0          	lea    -0x50(%rax),%rcx
  687920:	4c 89 5c 24 48       	mov    %r11,0x48(%rsp)
  687925:	4c 8d 40 dc          	lea    -0x24(%rax),%r8
  687929:	4c 8d 5c 24 50       	lea    0x50(%rsp),%r11
  68792e:	49 89 33             	mov    %rsi,(%r11)
  687931:	48 8d 40 f4          	lea    -0xc(%rax),%rax
  687935:	49 89 7b 08          	mov    %rdi,0x8(%r11)
  687939:	4c 8d 48 44          	lea    0x44(%rax),%r9
  68793d:	49 89 4b 10          	mov    %rcx,0x10(%r11)
  687941:	48 8d 70 f8          	lea    -0x8(%rax),%rsi
  687945:	4d 89 43 18          	mov    %r8,0x18(%r11)
  687949:	48 8d 78 fc          	lea    -0x4(%rax),%rdi
  68794d:	49 89 43 20          	mov    %rax,0x20(%r11)
  687951:	48 8d 49 9c          	lea    -0x64(%rcx),%rcx
  687955:	4d 89 4b 28          	mov    %r9,0x28(%r11)
  687959:	4c 8d 41 a0          	lea    -0x60(%rcx),%r8
  68795d:	4c 8d 8c 24 80 00 00 	lea    0x80(%rsp),%r9
  687964:	00 
  687965:	4d 89 39             	mov    %r15,(%r9)
  687968:	4c 8d 78 f4          	lea    -0xc(%rax),%r15
  68796c:	4d 89 79 08          	mov    %r15,0x8(%r9)
  687970:	49 8d 40 a0          	lea    -0x60(%r8),%rax
  687974:	49 89 71 10          	mov    %rsi,0x10(%r9)
  687978:	4c 8d 48 a0          	lea    -0x60(%rax),%r9
  68797c:	49 89 7b 48          	mov    %rdi,0x48(%r11)
  687980:	bf bc 56 b3 00       	mov    $0xb356bc,%edi
  687985:	49 89 4b 50          	mov    %rcx,0x50(%r11)
  687989:	be 1b 00 00 00       	mov    $0x1b,%esi
  68798e:	4d 89 43 58          	mov    %r8,0x58(%r11)
  687992:	49 8d 4f 24          	lea    0x24(%r15),%rcx
  687996:	49 89 43 60          	mov    %rax,0x60(%r11)
  68799a:	4c 8d 41 04          	lea    0x4(%rcx),%r8
  68799e:	4d 89 4b 68          	mov    %r9,0x68(%r11)
  6879a2:	4c 8d 49 30          	lea    0x30(%rcx),%r9
  6879a6:	33 c0                	xor    %eax,%eax
  6879a8:	e8 03 62 d8 ff       	callq  40dbb0 <__kmpc_fork_call@plt>
  6879ad:	48 81 c4 c0 00 00 00 	add    $0xc0,%rsp
  6879b4:	e9 2a 01 00 00       	jmpq   687ae3 <step3d_t_mod_mp_step3d_t_tile_+0xe73>
  6879b9:	bf bc 56 b3 00       	mov    $0xb356bc,%edi
  6879be:	33 c0                	xor    %eax,%eax
  6879c0:	8b b5 90 f9 ff ff    	mov    -0x670(%rbp),%esi
  6879c6:	e8 85 63 d8 ff       	callq  40dd50 <__kmpc_serialized_parallel@plt>
  6879cb:	48 81 c4 40 ff ff ff 	add    $0xffffffffffffff40,%rsp
  6879d2:	48 8d 85 60 f9 ff ff 	lea    -0x6a0(%rbp),%rax
  6879d9:	be f8 4b b8 00       	mov    $0xb84bf8,%esi
  6879de:	4c 8d 93 98 00 00 00 	lea    0x98(%rbx),%r10
  6879e5:	4d 8d 5a 08          	lea    0x8(%r10),%r11
  6879e9:	48 8d 53 60          	lea    0x60(%rbx),%rdx
  6879ed:	48 89 04 24          	mov    %rax,(%rsp)
  6879f1:	48 8d 4b 68          	lea    0x68(%rbx),%rcx
  6879f5:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
  6879fa:	4c 8d 40 fc          	lea    -0x4(%rax),%r8
  6879fe:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
  687a03:	48 8d 40 04          	lea    0x4(%rax),%rax
  687a07:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
  687a0c:	4c 8d 4b 40          	lea    0x40(%rbx),%r9
  687a10:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  687a15:	4c 8d 52 28          	lea    0x28(%rdx),%r10
  687a19:	4c 89 44 24 28       	mov    %r8,0x28(%rsp)
  687a1e:	4c 8d 5a 30          	lea    0x30(%rdx),%r11
  687a22:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  687a27:	48 8d 53 70          	lea    0x70(%rbx),%rdx
  687a2b:	4c 89 4c 24 38       	mov    %r9,0x38(%rsp)
  687a30:	48 8d 48 a8          	lea    -0x58(%rax),%rcx
  687a34:	4c 89 54 24 40       	mov    %r10,0x40(%rsp)
  687a39:	4c 8d 40 d4          	lea    -0x2c(%rax),%r8
  687a3d:	4c 89 5c 24 48       	mov    %r11,0x48(%rsp)
  687a42:	48 8d 40 ec          	lea    -0x14(%rax),%rax
  687a46:	48 89 54 24 50       	mov    %rdx,0x50(%rsp)
  687a4b:	4c 8d 48 44          	lea    0x44(%rax),%r9
  687a4f:	48 89 4c 24 58       	mov    %rcx,0x58(%rsp)
  687a54:	48 8d 50 f8          	lea    -0x8(%rax),%rdx
  687a58:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  687a5d:	48 8d 48 fc          	lea    -0x4(%rax),%rcx
  687a61:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  687a66:	4c 8d 85 a8 f8 ff ff 	lea    -0x758(%rbp),%r8
  687a6d:	4c 89 4c 24 70       	mov    %r9,0x70(%rsp)
  687a72:	49 8d 40 a0          	lea    -0x60(%r8),%rax
  687a76:	4c 89 7c 24 78       	mov    %r15,0x78(%rsp)
  687a7b:	4c 8d 7a fc          	lea    -0x4(%rdx),%r15
  687a7f:	4c 89 bc 24 80 00 00 	mov    %r15,0x80(%rsp)
  687a86:	00 
  687a87:	4c 8d 48 a0          	lea    -0x60(%rax),%r9
  687a8b:	4c 8d bc 24 88 00 00 	lea    0x88(%rsp),%r15
  687a92:	00 
  687a93:	49 89 17             	mov    %rdx,(%r15)
  687a96:	48 8d 7a 48          	lea    0x48(%rdx),%rdi
  687a9a:	49 89 4f 08          	mov    %rcx,0x8(%r15)
  687a9e:	48 8d 52 20          	lea    0x20(%rdx),%rdx
  687aa2:	4d 89 47 10          	mov    %r8,0x10(%r15)
  687aa6:	48 8d 4a 04          	lea    0x4(%rdx),%rcx
  687aaa:	49 89 47 18          	mov    %rax,0x18(%r15)
  687aae:	4c 8d 42 30          	lea    0x30(%rdx),%r8
  687ab2:	4d 89 4f 20          	mov    %r9,0x20(%r15)
  687ab6:	4c 8d 4a f0          	lea    -0x10(%rdx),%r9
  687aba:	4c 8d 95 88 f7 ff ff 	lea    -0x878(%rbp),%r10
  687ac1:	4d 89 57 28          	mov    %r10,0x28(%r15)
  687ac5:	e8 9b 13 00 00       	callq  688e65 <step3d_t_mod_mp_step3d_t_tile_+0x21f5>
  687aca:	48 81 c4 c0 00 00 00 	add    $0xc0,%rsp
  687ad1:	bf bc 56 b3 00       	mov    $0xb356bc,%edi
  687ad6:	33 c0                	xor    %eax,%eax
  687ad8:	8b b5 90 f9 ff ff    	mov    -0x670(%rbp),%esi
  687ade:	e8 dd 65 d8 ff       	callq  40e0c0 <__kmpc_end_serialized_parallel@plt>
  687ae3:	48 8b bd 98 f9 ff ff 	mov    -0x668(%rbp),%rdi
  687aea:	b9 01 00 00 00       	mov    $0x1,%ecx
  687aef:	4c 8b 1d 8a 45 4b 00 	mov    0x4b458a(%rip),%r11        # b3c080 <mod_param_mp_nt_+0x40>
  687af6:	4c 89 da             	mov    %r11,%rdx
  687af9:	48 f7 da             	neg    %rdx
  687afc:	48 63 07             	movslq (%rdi),%rax
  687aff:	48 03 d0             	add    %rax,%rdx
  687b02:	4c 8b 15 37 45 4b 00 	mov    0x4b4537(%rip),%r10        # b3c040 <mod_param_mp_nt_>
  687b09:	4c 8b 0d d0 45 4b 00 	mov    0x4b45d0(%rip),%r9        # b3c0e0 <mod_param_mp_n_+0x40>
  687b10:	49 c1 e1 02          	shl    $0x2,%r9
  687b14:	45 8b 3c 92          	mov    (%r10,%rdx,4),%r15d
  687b18:	c7 85 cc f9 ff ff 00 	movl   $0x0,-0x634(%rbp)
  687b1f:	00 00 00 
  687b22:	c7 85 d8 f9 ff ff 01 	movl   $0x1,-0x628(%rbp)
  687b29:	00 00 00 
  687b2c:	4c 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%r8
  687b33:	48 8b 53 40          	mov    0x40(%rbx),%rdx
  687b37:	48 8b 35 62 45 4b 00 	mov    0x4b4562(%rip),%rsi        # b3c0a0 <mod_param_mp_n_>
  687b3e:	45 85 ff             	test   %r15d,%r15d
  687b41:	0f 8e 0d 10 00 00    	jle    688b54 <step3d_t_mod_mp_step3d_t_tile_+0x1ee4>
  687b47:	44 89 bd 08 f5 ff ff 	mov    %r15d,-0xaf8(%rbp)
  687b4e:	4c 89 ad 78 fa ff ff 	mov    %r13,-0x588(%rbp)
  687b55:	4c 8b 2d 5c 52 4b 00 	mov    0x4b525c(%rip),%r13        # b3cdb8 <mod_scalars_mp_ltracerclm_+0x58>
  687b5c:	49 f7 dd             	neg    %r13
  687b5f:	4c 03 e8             	add    %rax,%r13
  687b62:	4c 0f af 2d 46 52 4b 	imul   0x4b5246(%rip),%r13        # b3cdb0 <mod_scalars_mp_ltracerclm_+0x50>
  687b69:	00 
  687b6a:	4c 8b 35 2f 52 4b 00 	mov    0x4b522f(%rip),%r14        # b3cda0 <mod_scalars_mp_ltracerclm_+0x40>
  687b71:	49 c1 e6 02          	shl    $0x2,%r14
  687b75:	4c 8b 3d e4 51 4b 00 	mov    0x4b51e4(%rip),%r15        # b3cd60 <mod_scalars_mp_ltracerclm_>
  687b7c:	48 63 c9             	movslq %ecx,%rcx
  687b7f:	4d 2b fe             	sub    %r14,%r15
  687b82:	4d 8d 34 8f          	lea    (%r15,%rcx,4),%r14
  687b86:	43 f6 04 2e 01       	testb  $0x1,(%r14,%r13,1)
  687b8b:	74 3b                	je     687bc8 <step3d_t_mod_mp_step3d_t_tile_+0xf58>
  687b8d:	4c 8b 2d c4 51 4b 00 	mov    0x4b51c4(%rip),%r13        # b3cd58 <mod_scalars_mp_lnudgetclm_+0x58>
  687b94:	49 f7 dd             	neg    %r13
  687b97:	4c 03 e8             	add    %rax,%r13
  687b9a:	4c 0f af 2d ae 51 4b 	imul   0x4b51ae(%rip),%r13        # b3cd50 <mod_scalars_mp_lnudgetclm_+0x50>
  687ba1:	00 
  687ba2:	4c 8b 35 97 51 4b 00 	mov    0x4b5197(%rip),%r14        # b3cd40 <mod_scalars_mp_lnudgetclm_+0x40>
  687ba9:	49 c1 e6 02          	shl    $0x2,%r14
  687bad:	4c 8b 3d 4c 51 4b 00 	mov    0x4b514c(%rip),%r15        # b3cd00 <mod_scalars_mp_lnudgetclm_>
  687bb4:	4d 2b fe             	sub    %r14,%r15
  687bb7:	49 8d 0c 8f          	lea    (%r15,%rcx,4),%rcx
  687bbb:	42 f6 04 29 01       	testb  $0x1,(%rcx,%r13,1)
  687bc0:	74 06                	je     687bc8 <step3d_t_mod_mp_step3d_t_tile_+0xf58>
  687bc2:	ff 85 cc f9 ff ff    	incl   -0x634(%rbp)
  687bc8:	48 83 c4 a0          	add    $0xffffffffffffffa0,%rsp
  687bcc:	49 2b f1             	sub    %r9,%rsi
  687bcf:	49 c1 e3 02          	shl    $0x2,%r11
  687bd3:	4d 2b d3             	sub    %r11,%r10
  687bd6:	4c 8b ad b8 f9 ff ff 	mov    -0x648(%rbp),%r13
  687bdd:	4c 89 2c 24          	mov    %r13,(%rsp)
  687be1:	4c 8d 3c 86          	lea    (%rsi,%rax,4),%r15
  687be5:	4c 8b b5 c0 f9 ff ff 	mov    -0x640(%rbp),%r14
  687bec:	4c 89 74 24 08       	mov    %r14,0x8(%rsp)
  687bf1:	49 8d 04 82          	lea    (%r10,%rax,4),%rax
  687bf5:	4c 89 7c 24 10       	mov    %r15,0x10(%rsp)
  687bfa:	4c 8b 53 10          	mov    0x10(%rbx),%r10
  687bfe:	4c 8b 5b 18          	mov    0x18(%rbx),%r11
  687c02:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  687c07:	48 8b 43 20          	mov    0x20(%rbx),%rax
  687c0b:	48 8b 4b 28          	mov    0x28(%rbx),%rcx
  687c0f:	4c 89 54 24 20       	mov    %r10,0x20(%rsp)
  687c14:	4c 89 5c 24 28       	mov    %r11,0x28(%rsp)
  687c19:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  687c1e:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  687c23:	48 8d 8d cc f9 ff ff 	lea    -0x634(%rbp),%rcx
  687c2a:	48 8b b5 00 f5 ff ff 	mov    -0xb00(%rbp),%rsi
  687c31:	48 89 74 24 40       	mov    %rsi,0x40(%rsp)
  687c36:	48 89 54 24 48       	mov    %rdx,0x48(%rsp)
  687c3b:	48 8d 95 d8 f9 ff ff 	lea    -0x628(%rbp),%rdx
  687c42:	4c 89 44 24 50       	mov    %r8,0x50(%rsp)
  687c47:	48 8b 72 c8          	mov    -0x38(%rdx),%rsi
  687c4b:	4c 8b 42 d0          	mov    -0x30(%rdx),%r8
  687c4f:	4c 8b 4a d8          	mov    -0x28(%rdx),%r9
  687c53:	c5 f8 77             	vzeroupper 
  687c56:	e8 55 59 ff ff       	callq  67d5b0 <t3dbc_mod_mp_t3dbc_tile_>
  687c5b:	48 83 c4 60          	add    $0x60,%rsp
  687c5f:	48 8b bd 98 f9 ff ff 	mov    -0x668(%rbp),%rdi
  687c66:	4c 8b 1d 4b 51 4b 00 	mov    0x4b514b(%rip),%r11        # b3cdb8 <mod_scalars_mp_ltracerclm_+0x58>
  687c6d:	49 f7 db             	neg    %r11
  687c70:	48 63 07             	movslq (%rdi),%rax
  687c73:	4c 03 d8             	add    %rax,%r11
  687c76:	4c 0f af 1d 32 51 4b 	imul   0x4b5132(%rip),%r11        # b3cdb0 <mod_scalars_mp_ltracerclm_+0x50>
  687c7d:	00 
  687c7e:	48 8b 15 1b 51 4b 00 	mov    0x4b511b(%rip),%rdx        # b3cda0 <mod_scalars_mp_ltracerclm_+0x40>
  687c85:	48 c1 e2 02          	shl    $0x2,%rdx
  687c89:	4c 8b 05 d0 50 4b 00 	mov    0x4b50d0(%rip),%r8        # b3cd60 <mod_scalars_mp_ltracerclm_>
  687c90:	4c 2b c2             	sub    %rdx,%r8
  687c93:	48 63 8d d8 f9 ff ff 	movslq -0x628(%rbp),%rcx
  687c9a:	48 8b 35 ff 43 4b 00 	mov    0x4b43ff(%rip),%rsi        # b3c0a0 <mod_param_mp_n_>
  687ca1:	4c 8b 0d 38 44 4b 00 	mov    0x4b4438(%rip),%r9        # b3c0e0 <mod_param_mp_n_+0x40>
  687ca8:	4d 8d 14 88          	lea    (%r8,%rcx,4),%r10
  687cac:	43 f6 04 1a 01       	testb  $0x1,(%r10,%r11,1)
  687cb1:	0f 84 2e 07 00 00    	je     6883e5 <step3d_t_mod_mp_step3d_t_tile_+0x1775>
  687cb7:	4c 8b 15 9a 50 4b 00 	mov    0x4b509a(%rip),%r10        # b3cd58 <mod_scalars_mp_lnudgetclm_+0x58>
  687cbe:	4c 8d 1c 86          	lea    (%rsi,%rax,4),%r11
  687cc2:	49 f7 da             	neg    %r10
  687cc5:	4c 03 d0             	add    %rax,%r10
  687cc8:	4c 0f af 15 80 50 4b 	imul   0x4b5080(%rip),%r10        # b3cd50 <mod_scalars_mp_lnudgetclm_+0x50>
  687ccf:	00 
  687cd0:	4c 8b 2d 69 50 4b 00 	mov    0x4b5069(%rip),%r13        # b3cd40 <mod_scalars_mp_lnudgetclm_+0x40>
  687cd7:	49 c1 e5 02          	shl    $0x2,%r13
  687cdb:	48 8b 15 1e 50 4b 00 	mov    0x4b501e(%rip),%rdx        # b3cd00 <mod_scalars_mp_lnudgetclm_>
  687ce2:	49 2b d5             	sub    %r13,%rdx
  687ce5:	4c 8d 2c 85 00 00 00 	lea    0x0(,%rax,4),%r13
  687cec:	00 
  687ced:	49 c1 e1 02          	shl    $0x2,%r9
  687cf1:	4d 2b d9             	sub    %r9,%r11
  687cf4:	4c 8d 04 8a          	lea    (%rdx,%rcx,4),%r8
  687cf8:	48 8b 53 40          	mov    0x40(%rbx),%rdx
  687cfc:	43 f6 04 10 01       	testb  $0x1,(%r8,%r10,1)
  687d01:	4d 63 13             	movslq (%r11),%r10
  687d04:	4c 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%r8
  687d0b:	0f 84 f5 06 00 00    	je     688406 <step3d_t_mod_mp_step3d_t_tile_+0x1796>
  687d11:	4d 85 d2             	test   %r10,%r10
  687d14:	0f 8e 9e 0c 00 00    	jle    6889b8 <step3d_t_mod_mp_step3d_t_tile_+0x1d48>
  687d1a:	4c 8b 3d 1f 36 4b 00 	mov    0x4b361f(%rip),%r15        # b3b340 <mod_scalars_mp_dt_>
  687d21:	4c 89 bd 68 f5 ff ff 	mov    %r15,-0xa98(%rbp)
  687d28:	4c 8b 3d 51 36 4b 00 	mov    0x4b3651(%rip),%r15        # b3b380 <mod_scalars_mp_dt_+0x40>
  687d2f:	49 f7 df             	neg    %r15
  687d32:	4c 03 f8             	add    %rax,%r15
  687d35:	4c 89 bd 80 f5 ff ff 	mov    %r15,-0xa80(%rbp)
  687d3c:	4c 8b 3d 3d c1 4b 00 	mov    0x4bc13d(%rip),%r15        # b43e80 <mod_clima_mp_clima_>
  687d43:	4c 89 bd 20 f5 ff ff 	mov    %r15,-0xae0(%rbp)
  687d4a:	4c 8b 3d 6f c1 4b 00 	mov    0x4bc16f(%rip),%r15        # b43ec0 <mod_clima_mp_clima_+0x40>
  687d51:	49 f7 df             	neg    %r15
  687d54:	4c 03 f8             	add    %rax,%r15
  687d57:	48 89 85 f8 f4 ff ff 	mov    %rax,-0xb08(%rbp)
  687d5e:	49 69 c7 38 07 00 00 	imul   $0x738,%r15,%rax
  687d65:	4c 63 b5 64 f9 ff ff 	movslq -0x69c(%rbp),%r14
  687d6c:	4c 89 95 40 fa ff ff 	mov    %r10,-0x5c0(%rbp)
  687d73:	4c 89 b5 f0 f9 ff ff 	mov    %r14,-0x610(%rbp)
  687d7a:	45 33 f6             	xor    %r14d,%r14d
  687d7d:	4d 8b 90 98 00 00 00 	mov    0x98(%r8),%r10
  687d84:	48 89 8d c8 f4 ff ff 	mov    %rcx,-0xb38(%rbp)
  687d8b:	4c 89 b5 58 f5 ff ff 	mov    %r14,-0xaa8(%rbp)
  687d92:	4c 89 b5 18 f5 ff ff 	mov    %r14,-0xae8(%rbp)
  687d99:	4d 89 e6             	mov    %r12,%r14
  687d9c:	49 0f af ca          	imul   %r10,%rcx
  687da0:	48 89 bd d0 f4 ff ff 	mov    %rdi,-0xb30(%rbp)
  687da7:	48 89 85 70 f4 ff ff 	mov    %rax,-0xb90(%rbp)
  687dae:	49 8b 78 50          	mov    0x50(%r8),%rdi
  687db2:	48 8b 85 78 fa ff ff 	mov    -0x588(%rbp),%rax
  687db9:	4c 2b f0             	sub    %rax,%r14
  687dbc:	48 0f af c7          	imul   %rdi,%rax
  687dc0:	4c 89 ad c0 f4 ff ff 	mov    %r13,-0xb40(%rbp)
  687dc7:	49 ff c6             	inc    %r14
  687dca:	4c 63 ad 5c f9 ff ff 	movslq -0x6a4(%rbp),%r13
  687dd1:	4c 63 9d cc f9 ff ff 	movslq -0x634(%rbp),%r11
  687dd8:	4d 89 ef             	mov    %r13,%r15
  687ddb:	4c 89 b5 00 fa ff ff 	mov    %r14,-0x600(%rbp)
  687de2:	4c 63 b5 c8 f9 ff ff 	movslq -0x638(%rbp),%r14
  687de9:	48 89 bd f8 f9 ff ff 	mov    %rdi,-0x608(%rbp)
  687df0:	49 0f af fe          	imul   %r14,%rdi
  687df4:	4c 63 b5 94 f9 ff ff 	movslq -0x66c(%rbp),%r14
  687dfb:	48 89 95 e8 f4 ff ff 	mov    %rdx,-0xb18(%rbp)
  687e02:	4d 2b fe             	sub    %r14,%r15
  687e05:	4c 89 9d 78 f5 ff ff 	mov    %r11,-0xa88(%rbp)
  687e0c:	4d 8b 98 80 00 00 00 	mov    0x80(%r8),%r11
  687e13:	48 63 12             	movslq (%rdx),%rdx
  687e16:	49 0f af d3          	imul   %r11,%rdx
  687e1a:	4c 89 8d e0 f4 ff ff 	mov    %r9,-0xb20(%rbp)
  687e21:	48 89 b5 d8 f4 ff ff 	mov    %rsi,-0xb28(%rbp)
  687e28:	4c 89 85 f0 f4 ff ff 	mov    %r8,-0xb10(%rbp)
  687e2f:	4d 8b 08             	mov    (%r8),%r9
  687e32:	49 8b 70 68          	mov    0x68(%r8),%rsi
  687e36:	4d 8b 40 38          	mov    0x38(%r8),%r8
  687e3a:	4d 0f af f8          	imul   %r8,%r15
  687e3e:	4c 89 85 70 f5 ff ff 	mov    %r8,-0xa90(%rbp)
  687e45:	4d 8d 04 09          	lea    (%r9,%rcx,1),%r8
  687e49:	49 2b ca             	sub    %r10,%rcx
  687e4c:	4f 8d 0c e9          	lea    (%r9,%r13,8),%r9
  687e50:	4c 03 c9             	add    %rcx,%r9
  687e53:	4d 03 d3             	add    %r11,%r10
  687e56:	48 89 c1             	mov    %rax,%rcx
  687e59:	4d 2b c2             	sub    %r10,%r8
  687e5c:	48 f7 d9             	neg    %rcx
  687e5f:	4c 03 de             	add    %rsi,%r11
  687e62:	48 03 c6             	add    %rsi,%rax
  687e65:	4c 2b c1             	sub    %rcx,%r8
  687e68:	4c 2b d8             	sub    %rax,%r11
  687e6b:	4c 2b c7             	sub    %rdi,%r8
  687e6e:	48 89 b5 b8 f4 ff ff 	mov    %rsi,-0xb48(%rbp)
  687e75:	4d 2b cb             	sub    %r11,%r9
  687e78:	4c 03 c2             	add    %rdx,%r8
  687e7b:	4a 8d 34 f7          	lea    (%rdi,%r14,8),%rsi
  687e7f:	4c 63 9d 64 f9 ff ff 	movslq -0x69c(%rbp),%r11
  687e86:	4c 2b ce             	sub    %rsi,%r9
  687e89:	4d 2b dd             	sub    %r13,%r11
  687e8c:	4d 03 f8             	add    %r8,%r15
  687e8f:	48 8d 8d b0 f4 ff ff 	lea    -0xb50(%rbp),%rcx
  687e96:	4c 89 39             	mov    %r15,(%rcx)
  687e99:	49 ff c3             	inc    %r11
  687e9c:	4c 63 bd c8 f9 ff ff 	movslq -0x638(%rbp),%r15
  687ea3:	49 03 d1             	add    %r9,%rdx
  687ea6:	48 89 95 a0 f4 ff ff 	mov    %rdx,-0xb60(%rbp)
  687ead:	4a 8d 14 ed 00 00 00 	lea    0x0(,%r13,8),%rdx
  687eb4:	00 
  687eb5:	4c 89 ad 08 fa ff ff 	mov    %r13,-0x5f8(%rbp)
  687ebc:	48 89 95 60 f5 ff ff 	mov    %rdx,-0xaa0(%rbp)
  687ec3:	4c 89 9d 10 f5 ff ff 	mov    %r11,-0xaf0(%rbp)
  687eca:	4c 89 bd 90 f4 ff ff 	mov    %r15,-0xb70(%rbp)
  687ed1:	4c 89 b5 98 f4 ff ff 	mov    %r14,-0xb68(%rbp)
  687ed8:	4c 8b 95 40 fa ff ff 	mov    -0x5c0(%rbp),%r10
  687edf:	48 8b bd d0 f4 ff ff 	mov    -0xb30(%rbp),%rdi
  687ee6:	48 8b b5 d8 f4 ff ff 	mov    -0xb28(%rbp),%rsi
  687eed:	48 8b 85 f8 f4 ff ff 	mov    -0xb08(%rbp),%rax
  687ef4:	4c 8b 85 58 f5 ff ff 	mov    -0xaa8(%rbp),%r8
  687efb:	4c 8b 9d 18 f5 ff ff 	mov    -0xae8(%rbp),%r11
  687f02:	48 8b 95 70 f4 ff ff 	mov    -0xb90(%rbp),%rdx
  687f09:	4c 8b 29             	mov    (%rcx),%r13
  687f0c:	48 8b 8d 20 f5 ff ff 	mov    -0xae0(%rbp),%rcx
  687f13:	4c 8b b5 b8 f4 ff ff 	mov    -0xb48(%rbp),%r14
  687f1a:	4c 8b bd 78 fa ff ff 	mov    -0x588(%rbp),%r15
  687f21:	48 83 bd 70 f5 ff ff 	cmpq   $0x8,-0xa90(%rbp)
  687f28:	08 
  687f29:	0f 85 e1 01 00 00    	jne    688110 <step3d_t_mod_mp_step3d_t_tile_+0x14a0>
  687f2f:	48 83 bc 11 e0 06 00 	cmpq   $0x8,0x6e0(%rcx,%rdx,1)
  687f36:	00 08 
  687f38:	0f 85 d2 01 00 00    	jne    688110 <step3d_t_mod_mp_step3d_t_tile_+0x14a0>
  687f3e:	48 83 bc 11 d0 04 00 	cmpq   $0x8,0x4d0(%rcx,%rdx,1)
  687f45:	00 08 
  687f47:	0f 85 c3 01 00 00    	jne    688110 <step3d_t_mod_mp_step3d_t_tile_+0x14a0>
  687f4d:	49 ff c3             	inc    %r11
  687f50:	33 ff                	xor    %edi,%edi
  687f52:	4d 3b e7             	cmp    %r15,%r12
  687f55:	0f 8c 80 6b 00 00    	jl     68eadb <step3d_t_mod_mp_step3d_t_tile_+0x7e6b>
  687f5b:	4c 89 95 40 fa ff ff 	mov    %r10,-0x5c0(%rbp)
  687f62:	4f 8d 0c 06          	lea    (%r14,%r8,1),%r9
  687f66:	4c 03 85 a0 f4 ff ff 	add    -0xb60(%rbp),%r8
  687f6d:	4c 89 8d a8 f4 ff ff 	mov    %r9,-0xb58(%rbp)
  687f74:	4c 89 9d 18 f5 ff ff 	mov    %r11,-0xae8(%rbp)
  687f7b:	4c 89 a5 48 fa ff ff 	mov    %r12,-0x5b8(%rbp)
  687f82:	4c 89 bd 78 fa ff ff 	mov    %r15,-0x588(%rbp)
  687f89:	48 8b 85 f0 f9 ff ff 	mov    -0x610(%rbp),%rax
  687f90:	48 c7 85 e0 f9 ff ff 	movq   $0x0,-0x620(%rbp)
  687f97:	00 00 00 00 
  687f9b:	48 3b 85 08 fa ff ff 	cmp    -0x5f8(%rbp),%rax
  687fa2:	0f 8c 4c 01 00 00    	jl     6880f4 <step3d_t_mod_mp_step3d_t_tile_+0x1484>
  687fa8:	48 8b b5 68 f5 ff ff 	mov    -0xa98(%rbp),%rsi
  687faf:	48 8b 85 80 f5 ff ff 	mov    -0xa80(%rbp),%rax
  687fb6:	4c 8b b4 11 30 07 00 	mov    0x730(%rcx,%rdx,1),%r14
  687fbd:	00 
  687fbe:	4c 8b 9c 11 20 05 00 	mov    0x520(%rcx,%rdx,1),%r11
  687fc5:	00 
  687fc6:	49 f7 de             	neg    %r14
  687fc9:	49 f7 db             	neg    %r11
  687fcc:	c5 fb 10 04 c6       	vmovsd (%rsi,%rax,8),%xmm0
  687fd1:	48 8b 85 78 f5 ff ff 	mov    -0xa88(%rbp),%rax
  687fd8:	4c 03 f0             	add    %rax,%r14
  687fdb:	48 8b b4 11 18 07 00 	mov    0x718(%rcx,%rdx,1),%rsi
  687fe2:	00 
  687fe3:	4c 03 d8             	add    %rax,%r11
  687fe6:	48 8b 84 11 08 05 00 	mov    0x508(%rcx,%rdx,1),%rax
  687fed:	00 
  687fee:	48 f7 de             	neg    %rsi
  687ff1:	48 f7 d8             	neg    %rax
  687ff4:	4c 8b 8d 18 f5 ff ff 	mov    -0xae8(%rbp),%r9
  687ffb:	49 03 f1             	add    %r9,%rsi
  687ffe:	4c 8b 94 11 e8 06 00 	mov    0x6e8(%rcx,%rdx,1),%r10
  688005:	00 
  688006:	49 03 c1             	add    %r9,%rax
  688009:	4c 8b 8c 11 d8 04 00 	mov    0x4d8(%rcx,%rdx,1),%r9
  688010:	00 
  688011:	49 c1 e2 03          	shl    $0x3,%r10
  688015:	49 c1 e1 03          	shl    $0x3,%r9
  688019:	4c 8b ad 60 f5 ff ff 	mov    -0xaa0(%rbp),%r13
  688020:	4d 2b d5             	sub    %r13,%r10
  688023:	4d 2b cd             	sub    %r13,%r9
  688026:	4c 8b ad 78 fa ff ff 	mov    -0x588(%rbp),%r13
  68802d:	4c 89 85 58 f5 ff ff 	mov    %r8,-0xaa8(%rbp)
  688034:	4c 8b bc 11 a8 06 00 	mov    0x6a8(%rcx,%rdx,1),%r15
  68803b:	00 
  68803c:	4c 8b a4 11 00 07 00 	mov    0x700(%rcx,%rdx,1),%r12
  688043:	00 
  688044:	4d 2b fa             	sub    %r10,%r15
  688047:	4c 8b 94 11 98 04 00 	mov    0x498(%rcx,%rdx,1),%r10
  68804e:	00 
  68804f:	49 f7 dc             	neg    %r12
  688052:	4c 8b 84 11 f0 04 00 	mov    0x4f0(%rcx,%rdx,1),%r8
  688059:	00 
  68805a:	4d 2b d1             	sub    %r9,%r10
  68805d:	49 f7 d8             	neg    %r8
  688060:	4d 8d 4c 3d 00       	lea    0x0(%r13,%rdi,1),%r9
  688065:	4d 03 e1             	add    %r9,%r12
  688068:	4d 03 c1             	add    %r9,%r8
  68806b:	4c 0f af 84 11 e8 04 	imul   0x4e8(%rcx,%rdx,1),%r8
  688072:	00 00 
  688074:	4c 0f af a4 11 f8 06 	imul   0x6f8(%rcx,%rdx,1),%r12
  68807b:	00 00 
  68807d:	4c 0f af b4 11 28 07 	imul   0x728(%rcx,%rdx,1),%r14
  688084:	00 00 
  688086:	4c 0f af 9c 11 18 05 	imul   0x518(%rcx,%rdx,1),%r11
  68808d:	00 00 
  68808f:	48 0f af 84 11 00 05 	imul   0x500(%rcx,%rdx,1),%rax
  688096:	00 00 
  688098:	48 0f af b4 11 10 07 	imul   0x710(%rcx,%rdx,1),%rsi
  68809f:	00 00 
  6880a1:	4d 03 e7             	add    %r15,%r12
  6880a4:	4d 03 c2             	add    %r10,%r8
  6880a7:	4d 03 f4             	add    %r12,%r14
  6880aa:	4d 03 d8             	add    %r8,%r11
  6880ad:	4c 8b 85 58 f5 ff ff 	mov    -0xaa8(%rbp),%r8
  6880b4:	49 03 f6             	add    %r14,%rsi
  6880b7:	4c 8b 8d e0 f9 ff ff 	mov    -0x620(%rbp),%r9
  6880be:	49 03 c3             	add    %r11,%rax
  6880c1:	4c 8b 95 10 f5 ff ff 	mov    -0xaf0(%rbp),%r10
  6880c8:	c4 81 7b 10 24 c8    	vmovsd (%r8,%r9,8),%xmm4
  6880ce:	c4 a1 7b 10 0c c8    	vmovsd (%rax,%r9,8),%xmm1
  6880d4:	c4 a1 7b 59 14 ce    	vmulsd (%rsi,%r9,8),%xmm0,%xmm2
  6880da:	c5 f3 5c dc          	vsubsd %xmm4,%xmm1,%xmm3
  6880de:	c5 eb 59 eb          	vmulsd %xmm3,%xmm2,%xmm5
  6880e2:	c5 db 58 f5          	vaddsd %xmm5,%xmm4,%xmm6
  6880e6:	c4 81 7b 11 34 c8    	vmovsd %xmm6,(%r8,%r9,8)
  6880ec:	49 ff c1             	inc    %r9
  6880ef:	4d 3b ca             	cmp    %r10,%r9
  6880f2:	72 d4                	jb     6880c8 <step3d_t_mod_mp_step3d_t_tile_+0x1458>
  6880f4:	48 ff c7             	inc    %rdi
  6880f7:	4c 03 85 f8 f9 ff ff 	add    -0x608(%rbp),%r8
  6880fe:	48 3b bd 00 fa ff ff 	cmp    -0x600(%rbp),%rdi
  688105:	0f 82 7e fe ff ff    	jb     687f89 <step3d_t_mod_mp_step3d_t_tile_+0x1319>
  68810b:	e9 49 02 00 00       	jmpq   688359 <step3d_t_mod_mp_step3d_t_tile_+0x16e9>
  688110:	33 c0                	xor    %eax,%eax
  688112:	49 ff c3             	inc    %r11
  688115:	33 f6                	xor    %esi,%esi
  688117:	4d 3b e7             	cmp    %r15,%r12
  68811a:	0f 8c bb 69 00 00    	jl     68eadb <step3d_t_mod_mp_step3d_t_tile_+0x7e6b>
  688120:	4c 89 95 40 fa ff ff 	mov    %r10,-0x5c0(%rbp)
  688127:	4b 8d 7c 05 00       	lea    0x0(%r13,%r8,1),%rdi
  68812c:	48 89 bd 28 f5 ff ff 	mov    %rdi,-0xad8(%rbp)
  688133:	4f 8d 0c 06          	lea    (%r14,%r8,1),%r9
  688137:	4c 89 8d a8 f4 ff ff 	mov    %r9,-0xb58(%rbp)
  68813e:	4c 89 9d 18 f5 ff ff 	mov    %r11,-0xae8(%rbp)
  688145:	4c 89 a5 48 fa ff ff 	mov    %r12,-0x5b8(%rbp)
  68814c:	4c 89 bd 78 fa ff ff 	mov    %r15,-0x588(%rbp)
  688153:	48 8b bd 08 fa ff ff 	mov    -0x5f8(%rbp),%rdi
  68815a:	48 c7 85 e8 f9 ff ff 	movq   $0x0,-0x618(%rbp)
  688161:	00 00 00 00 
  688165:	48 3b bd f0 f9 ff ff 	cmp    -0x610(%rbp),%rdi
  68816c:	0f 8f d0 01 00 00    	jg     688342 <step3d_t_mod_mp_step3d_t_tile_+0x16d2>
  688172:	4c 8b 85 28 f5 ff ff 	mov    -0xad8(%rbp),%r8
  688179:	49 89 fa             	mov    %rdi,%r10
  68817c:	4d 89 d6             	mov    %r10,%r14
  68817f:	48 89 b5 88 f5 ff ff 	mov    %rsi,-0xa78(%rbp)
  688186:	4c 8b 9c 11 e8 06 00 	mov    0x6e8(%rcx,%rdx,1),%r11
  68818d:	00 
  68818e:	4d 8d 0c 30          	lea    (%r8,%rsi,1),%r9
  688192:	48 8b b4 11 e0 06 00 	mov    0x6e0(%rcx,%rdx,1),%rsi
  688199:	00 
  68819a:	4c 0f af f6          	imul   %rsi,%r14
  68819e:	4c 0f af de          	imul   %rsi,%r11
  6881a2:	48 89 b5 48 f5 ff ff 	mov    %rsi,-0xab8(%rbp)
  6881a9:	48 8b b4 11 20 05 00 	mov    0x520(%rcx,%rdx,1),%rsi
  6881b0:	00 
  6881b1:	48 f7 de             	neg    %rsi
  6881b4:	4c 89 b5 38 f5 ff ff 	mov    %r14,-0xac8(%rbp)
  6881bb:	4c 8b b4 11 d0 04 00 	mov    0x4d0(%rcx,%rdx,1),%r14
  6881c2:	00 
  6881c3:	4d 0f af d6          	imul   %r14,%r10
  6881c7:	4c 8b bd 78 f5 ff ff 	mov    -0xa88(%rbp),%r15
  6881ce:	49 03 f7             	add    %r15,%rsi
  6881d1:	48 0f af b4 11 18 05 	imul   0x518(%rcx,%rdx,1),%rsi
  6881d8:	00 00 
  6881da:	4c 8b a5 68 f5 ff ff 	mov    -0xa98(%rbp),%r12
  6881e1:	48 8b bd 80 f5 ff ff 	mov    -0xa80(%rbp),%rdi
  6881e8:	4c 89 95 40 f5 ff ff 	mov    %r10,-0xac0(%rbp)
  6881ef:	4c 8b 95 78 fa ff ff 	mov    -0x588(%rbp),%r10
  6881f6:	c4 c1 7b 10 04 fc    	vmovsd (%r12,%rdi,8),%xmm0
  6881fc:	4c 8b a4 11 30 07 00 	mov    0x730(%rcx,%rdx,1),%r12
  688203:	00 
  688204:	48 89 b5 d0 f9 ff ff 	mov    %rsi,-0x630(%rbp)
  68820b:	49 f7 dc             	neg    %r12
  68820e:	48 8b bc 11 18 07 00 	mov    0x718(%rcx,%rdx,1),%rdi
  688215:	00 
  688216:	4d 03 e7             	add    %r15,%r12
  688219:	48 8b b4 11 08 05 00 	mov    0x508(%rcx,%rdx,1),%rsi
  688220:	00 
  688221:	48 f7 df             	neg    %rdi
  688224:	48 f7 de             	neg    %rsi
  688227:	4c 8b bc 11 d8 04 00 	mov    0x4d8(%rcx,%rdx,1),%r15
  68822e:	00 
  68822f:	4c 8b ad 18 f5 ff ff 	mov    -0xae8(%rbp),%r13
  688236:	49 03 fd             	add    %r13,%rdi
  688239:	4c 8b 84 11 00 07 00 	mov    0x700(%rcx,%rdx,1),%r8
  688240:	00 
  688241:	49 03 f5             	add    %r13,%rsi
  688244:	4c 8b ac 11 f0 04 00 	mov    0x4f0(%rcx,%rdx,1),%r13
  68824b:	00 
  68824c:	49 f7 d8             	neg    %r8
  68824f:	4c 89 b5 50 f5 ff ff 	mov    %r14,-0xab0(%rbp)
  688256:	49 f7 dd             	neg    %r13
  688259:	4d 0f af fe          	imul   %r14,%r15
  68825d:	48 0f af bc 11 10 07 	imul   0x710(%rcx,%rdx,1),%rdi
  688264:	00 00 
  688266:	48 0f af b4 11 00 05 	imul   0x500(%rcx,%rdx,1),%rsi
  68826d:	00 00 
  68826f:	4c 0f af a4 11 28 07 	imul   0x728(%rcx,%rdx,1),%r12
  688276:	00 00 
  688278:	4c 89 8d 30 f5 ff ff 	mov    %r9,-0xad0(%rbp)
  68827f:	4d 8d 34 02          	lea    (%r10,%rax,1),%r14
  688283:	4d 03 c6             	add    %r14,%r8
  688286:	4d 03 ee             	add    %r14,%r13
  688289:	4c 0f af 84 11 f8 06 	imul   0x6f8(%rcx,%rdx,1),%r8
  688290:	00 00 
  688292:	4c 0f af ac 11 e8 04 	imul   0x4e8(%rcx,%rdx,1),%r13
  688299:	00 00 
  68829b:	4c 8b 8c 11 a8 06 00 	mov    0x6a8(%rcx,%rdx,1),%r9
  6882a2:	00 
  6882a3:	4d 2b cb             	sub    %r11,%r9
  6882a6:	4c 8b 9c 11 98 04 00 	mov    0x498(%rcx,%rdx,1),%r11
  6882ad:	00 
  6882ae:	4d 03 c1             	add    %r9,%r8
  6882b1:	4d 2b df             	sub    %r15,%r11
  6882b4:	49 03 f8             	add    %r8,%rdi
  6882b7:	4d 03 eb             	add    %r11,%r13
  6882ba:	4c 03 e7             	add    %rdi,%r12
  6882bd:	49 03 f5             	add    %r13,%rsi
  6882c0:	48 8b bd d0 f9 ff ff 	mov    -0x630(%rbp),%rdi
  6882c7:	48 8b 8d 40 f5 ff ff 	mov    -0xac0(%rbp),%rcx
  6882ce:	48 03 fe             	add    %rsi,%rdi
  6882d1:	48 8b b5 88 f5 ff ff 	mov    -0xa78(%rbp),%rsi
  6882d8:	4c 8b 85 50 f5 ff ff 	mov    -0xab0(%rbp),%r8
  6882df:	4c 8b 8d 38 f5 ff ff 	mov    -0xac8(%rbp),%r9
  6882e6:	4c 8b 95 48 f5 ff ff 	mov    -0xab8(%rbp),%r10
  6882ed:	4c 8b 9d 30 f5 ff ff 	mov    -0xad0(%rbp),%r11
  6882f4:	4c 8b ad e8 f9 ff ff 	mov    -0x618(%rbp),%r13
  6882fb:	4c 8b b5 10 f5 ff ff 	mov    -0xaf0(%rbp),%r14
  688302:	4c 8b bd 70 f5 ff ff 	mov    -0xa90(%rbp),%r15
  688309:	c4 c1 7b 10 23       	vmovsd (%r11),%xmm4
  68830e:	49 ff c5             	inc    %r13
  688311:	c5 fb 10 0c 39       	vmovsd (%rcx,%rdi,1),%xmm1
  688316:	49 03 c8             	add    %r8,%rcx
  688319:	c4 81 7b 59 14 21    	vmulsd (%r9,%r12,1),%xmm0,%xmm2
  68831f:	c5 f3 5c dc          	vsubsd %xmm4,%xmm1,%xmm3
  688323:	c5 eb 59 eb          	vmulsd %xmm3,%xmm2,%xmm5
  688327:	4d 03 ca             	add    %r10,%r9
  68832a:	c5 db 58 f5          	vaddsd %xmm5,%xmm4,%xmm6
  68832e:	c4 c1 7b 11 33       	vmovsd %xmm6,(%r11)
  688333:	4d 03 df             	add    %r15,%r11
  688336:	4d 3b ee             	cmp    %r14,%r13
  688339:	72 ce                	jb     688309 <step3d_t_mod_mp_step3d_t_tile_+0x1699>
  68833b:	48 8b 8d 20 f5 ff ff 	mov    -0xae0(%rbp),%rcx
  688342:	48 ff c0             	inc    %rax
  688345:	48 03 b5 f8 f9 ff ff 	add    -0x608(%rbp),%rsi
  68834c:	48 3b 85 00 fa ff ff 	cmp    -0x600(%rbp),%rax
  688353:	0f 82 fa fd ff ff    	jb     688153 <step3d_t_mod_mp_step3d_t_tile_+0x14e3>
  688359:	4c 8b 95 40 fa ff ff 	mov    -0x5c0(%rbp),%r10
  688360:	4c 8b 8d a8 f4 ff ff 	mov    -0xb58(%rbp),%r9
  688367:	4c 8b 9d 18 f5 ff ff 	mov    -0xae8(%rbp),%r11
  68836e:	4c 8b ad b0 f4 ff ff 	mov    -0xb50(%rbp),%r13
  688375:	4c 8b b5 b8 f4 ff ff 	mov    -0xb48(%rbp),%r14
  68837c:	4c 8b a5 48 fa ff ff 	mov    -0x5b8(%rbp),%r12
  688383:	4c 8b bd 78 fa ff ff 	mov    -0x588(%rbp),%r15
  68838a:	4d 89 c8             	mov    %r9,%r8
  68838d:	4d 3b da             	cmp    %r10,%r11
  688390:	0f 82 8b fb ff ff    	jb     687f21 <step3d_t_mod_mp_step3d_t_tile_+0x12b1>
  688396:	4c 89 bd 78 fa ff ff 	mov    %r15,-0x588(%rbp)
  68839d:	4c 8b ad c0 f4 ff ff 	mov    -0xb40(%rbp),%r13
  6883a4:	4c 8b bd 90 f4 ff ff 	mov    -0xb70(%rbp),%r15
  6883ab:	4c 8b b5 98 f4 ff ff 	mov    -0xb68(%rbp),%r14
  6883b2:	48 8b 8d c8 f4 ff ff 	mov    -0xb38(%rbp),%rcx
  6883b9:	48 8b bd d0 f4 ff ff 	mov    -0xb30(%rbp),%rdi
  6883c0:	48 8b b5 d8 f4 ff ff 	mov    -0xb28(%rbp),%rsi
  6883c7:	4c 8b 8d e0 f4 ff ff 	mov    -0xb20(%rbp),%r9
  6883ce:	48 8b 95 e8 f4 ff ff 	mov    -0xb18(%rbp),%rdx
  6883d5:	4c 8b 85 f0 f4 ff ff 	mov    -0xb10(%rbp),%r8
  6883dc:	48 8b 85 f8 f4 ff ff 	mov    -0xb08(%rbp),%rax
  6883e3:	eb 38                	jmp    68841d <step3d_t_mod_mp_step3d_t_tile_+0x17ad>
  6883e5:	49 c1 e1 02          	shl    $0x2,%r9
  6883e9:	4c 8d 14 86          	lea    (%rsi,%rax,4),%r10
  6883ed:	4d 2b d1             	sub    %r9,%r10
  6883f0:	4c 8d 2c 85 00 00 00 	lea    0x0(,%rax,4),%r13
  6883f7:	00 
  6883f8:	4c 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%r8
  6883ff:	48 8b 53 40          	mov    0x40(%rbx),%rdx
  688403:	4d 63 12             	movslq (%r10),%r10
  688406:	4d 85 d2             	test   %r10,%r10
  688409:	0f 8e a9 05 00 00    	jle    6889b8 <step3d_t_mod_mp_step3d_t_tile_+0x1d48>
  68840f:	4c 63 b5 94 f9 ff ff 	movslq -0x66c(%rbp),%r14
  688416:	4c 63 bd c8 f9 ff ff 	movslq -0x638(%rbp),%r15
  68841d:	48 89 95 e8 f4 ff ff 	mov    %rdx,-0xb18(%rbp)
  688424:	4c 89 95 40 fa ff ff 	mov    %r10,-0x5c0(%rbp)
  68842b:	4d 8b 90 80 00 00 00 	mov    0x80(%r8),%r10
  688432:	48 63 12             	movslq (%rdx),%rdx
  688435:	49 0f af d2          	imul   %r10,%rdx
  688439:	4c 89 ad c0 f4 ff ff 	mov    %r13,-0xb40(%rbp)
  688440:	44 8b ad 64 f9 ff ff 	mov    -0x69c(%rbp),%r13d
  688447:	44 89 ad a8 fa ff ff 	mov    %r13d,-0x558(%rbp)
  68844e:	4c 8b 6b 48          	mov    0x48(%rbx),%r13
  688452:	48 89 85 f8 f4 ff ff 	mov    %rax,-0xb08(%rbp)
  688459:	8b 85 5c f9 ff ff    	mov    -0x6a4(%rbp),%eax
  68845f:	48 89 95 80 f4 ff ff 	mov    %rdx,-0xb80(%rbp)
  688466:	89 85 e8 fa ff ff    	mov    %eax,-0x518(%rbp)
  68846c:	49 8b 55 38          	mov    0x38(%r13),%rdx
  688470:	48 98                	cltq   
  688472:	48 89 95 50 fa ff ff 	mov    %rdx,-0x5b0(%rbp)
  688479:	48 0f af d0          	imul   %rax,%rdx
  68847d:	4c 89 bd 90 f4 ff ff 	mov    %r15,-0xb70(%rbp)
  688484:	4d 8b 7d 50          	mov    0x50(%r13),%r15
  688488:	4d 8b 98 98 00 00 00 	mov    0x98(%r8),%r11
  68848f:	4c 89 bd c0 fa ff ff 	mov    %r15,-0x540(%rbp)
  688496:	48 89 8d c8 f4 ff ff 	mov    %rcx,-0xb38(%rbp)
  68849d:	4c 63 bd a8 fa ff ff 	movslq -0x558(%rbp),%r15
  6884a4:	49 0f af cb          	imul   %r11,%rcx
  6884a8:	4c 2b f8             	sub    %rax,%r15
  6884ab:	4c 2b d9             	sub    %rcx,%r11
  6884ae:	49 ff c7             	inc    %r15
  6884b1:	4c 89 bd 18 fa ff ff 	mov    %r15,-0x5e8(%rbp)
  6884b8:	44 8b bd a8 fa ff ff 	mov    -0x558(%rbp),%r15d
  6884bf:	44 2b f8             	sub    %eax,%r15d
  6884c2:	41 ff c7             	inc    %r15d
  6884c5:	48 89 bd d0 f4 ff ff 	mov    %rdi,-0xb30(%rbp)
  6884cc:	49 8b 38             	mov    (%r8),%rdi
  6884cf:	44 89 bd e0 fa ff ff 	mov    %r15d,-0x520(%rbp)
  6884d6:	41 d1 ef             	shr    %r15d
  6884d9:	48 8d 8d 98 f4 ff ff 	lea    -0xb68(%rbp),%rcx
  6884e0:	4c 89 31             	mov    %r14,(%rcx)
  6884e3:	45 33 f6             	xor    %r14d,%r14d
  6884e6:	4c 89 b5 70 fa ff ff 	mov    %r14,-0x590(%rbp)
  6884ed:	4c 89 b5 60 fa ff ff 	mov    %r14,-0x5a0(%rbp)
  6884f4:	4d 8b 75 00          	mov    0x0(%r13),%r14
  6884f8:	48 89 95 88 f4 ff ff 	mov    %rdx,-0xb78(%rbp)
  6884ff:	48 8b 95 78 fa ff ff 	mov    -0x588(%rbp),%rdx
  688506:	4c 89 a5 48 fa ff ff 	mov    %r12,-0x5b8(%rbp)
  68850d:	4c 2b e2             	sub    %rdx,%r12
  688510:	4c 89 8d e0 f4 ff ff 	mov    %r9,-0xb20(%rbp)
  688517:	49 ff c4             	inc    %r12
  68851a:	44 89 bd d0 fa ff ff 	mov    %r15d,-0x530(%rbp)
  688521:	4d 8b 48 68          	mov    0x68(%r8),%r9
  688525:	4c 89 bd 98 fa ff ff 	mov    %r15,-0x568(%rbp)
  68852c:	49 89 ff             	mov    %rdi,%r15
  68852f:	48 89 b5 d8 f4 ff ff 	mov    %rsi,-0xb28(%rbp)
  688536:	4d 2b fa             	sub    %r10,%r15
  688539:	4c 89 85 f0 f4 ff ff 	mov    %r8,-0xb10(%rbp)
  688540:	4d 03 d1             	add    %r9,%r10
  688543:	49 8b 70 50          	mov    0x50(%r8),%rsi
  688547:	4d 8b 40 38          	mov    0x38(%r8),%r8
  68854b:	4d 89 c5             	mov    %r8,%r13
  68854e:	4c 89 a5 d8 fa ff ff 	mov    %r12,-0x528(%rbp)
  688555:	4c 8d 24 c7          	lea    (%rdi,%rax,8),%r12
  688559:	4c 0f af e8          	imul   %rax,%r13
  68855d:	4d 2b e2             	sub    %r10,%r12
  688560:	4d 8d 14 c6          	lea    (%r14,%rax,8),%r10
  688564:	48 89 d0             	mov    %rdx,%rax
  688567:	4c 89 ff             	mov    %r15,%rdi
  68856a:	48 0f af c6          	imul   %rsi,%rax
  68856e:	48 8b 09             	mov    (%rcx),%rcx
  688571:	49 2b f9             	sub    %r9,%rdi
  688574:	49 0f af c8          	imul   %r8,%rcx
  688578:	4c 89 8d 68 fa ff ff 	mov    %r9,-0x598(%rbp)
  68857f:	4c 03 c8             	add    %rax,%r9
  688582:	49 03 c5             	add    %r13,%rax
  688585:	48 f7 d9             	neg    %rcx
  688588:	49 2b c3             	sub    %r11,%rax
  68858b:	48 03 8d 80 f4 ff ff 	add    -0xb80(%rbp),%rcx
  688592:	4c 03 f8             	add    %rax,%r15
  688595:	4c 03 f9             	add    %rcx,%r15
  688598:	48 f7 d9             	neg    %rcx
  68859b:	49 03 cb             	add    %r11,%rcx
  68859e:	49 f7 db             	neg    %r11
  6885a1:	4d 03 d9             	add    %r9,%r11
  6885a4:	4d 03 e3             	add    %r11,%r12
  6885a7:	4c 8b 9d 90 f4 ff ff 	mov    -0xb70(%rbp),%r11
  6885ae:	4c 89 d8             	mov    %r11,%rax
  6885b1:	48 0f af c6          	imul   %rsi,%rax
  6885b5:	48 89 b5 c8 fa ff ff 	mov    %rsi,-0x538(%rbp)
  6885bc:	4c 2b f8             	sub    %rax,%r15
  6885bf:	48 8b b5 c0 fa ff ff 	mov    -0x540(%rbp),%rsi
  6885c6:	48 0f af d6          	imul   %rsi,%rdx
  6885ca:	4c 0f af de          	imul   %rsi,%r11
  6885ce:	4c 89 bd 38 fa ff ff 	mov    %r15,-0x5c8(%rbp)
  6885d5:	4d 89 c7             	mov    %r8,%r15
  6885d8:	49 f7 df             	neg    %r15
  6885db:	4c 03 f2             	add    %rdx,%r14
  6885de:	4d 03 fd             	add    %r13,%r15
  6885e1:	4d 03 e8             	add    %r8,%r13
  6885e4:	4d 03 f9             	add    %r9,%r15
  6885e7:	4d 03 cd             	add    %r13,%r9
  6885ea:	4c 03 ff             	add    %rdi,%r15
  6885ed:	49 03 f9             	add    %r9,%rdi
  6885f0:	4c 8b 8d 98 f4 ff ff 	mov    -0xb68(%rbp),%r9
  6885f7:	4c 03 d2             	add    %rdx,%r10
  6885fa:	48 8d b5 50 fa ff ff 	lea    -0x5b0(%rbp),%rsi
  688601:	48 8b 16             	mov    (%rsi),%rdx
  688604:	48 2b f9             	sub    %rcx,%rdi
  688607:	4c 89 85 58 fa ff ff 	mov    %r8,-0x5a8(%rbp)
  68860e:	4d 89 c8             	mov    %r9,%r8
  688611:	4c 0f af c2          	imul   %rdx,%r8
  688615:	48 2b f8             	sub    %rax,%rdi
  688618:	4c 2b f9             	sub    %rcx,%r15
  68861b:	48 89 bd 20 fa ff ff 	mov    %rdi,-0x5e0(%rbp)
  688622:	4b 8d 3c cb          	lea    (%r11,%r9,8),%rdi
  688626:	48 8b 8d 88 f4 ff ff 	mov    -0xb78(%rbp),%rcx
  68862d:	4c 2b d7             	sub    %rdi,%r10
  688630:	49 c1 e1 03          	shl    $0x3,%r9
  688634:	4d 03 c3             	add    %r11,%r8
  688637:	4c 89 95 78 f4 ff ff 	mov    %r10,-0xb88(%rbp)
  68863e:	4c 2b f8             	sub    %rax,%r15
  688641:	4c 8b 95 80 f4 ff ff 	mov    -0xb80(%rbp),%r10
  688648:	4c 8d 1c 0a          	lea    (%rdx,%rcx,1),%r11
  68864c:	4d 2b d1             	sub    %r9,%r10
  68864f:	48 f7 da             	neg    %rdx
  688652:	4d 03 e2             	add    %r10,%r12
  688655:	4d 03 de             	add    %r14,%r11
  688658:	4c 2b e0             	sub    %rax,%r12
  68865b:	49 8d 04 0e          	lea    (%r14,%rcx,1),%rax
  68865f:	48 03 ca             	add    %rdx,%rcx
  688662:	4d 2b d8             	sub    %r8,%r11
  688665:	4c 03 f1             	add    %rcx,%r14
  688668:	49 2b c0             	sub    %r8,%rax
  68866b:	4d 2b f0             	sub    %r8,%r14
  68866e:	4c 89 b5 b8 fa ff ff 	mov    %r14,-0x548(%rbp)
  688675:	4c 8b b5 18 fa ff ff 	mov    -0x5e8(%rbp),%r14
  68867c:	41 83 e6 fc          	and    $0xfffffffc,%r14d
  688680:	4d 63 f6             	movslq %r14d,%r14
  688683:	4c 89 a5 28 fa ff ff 	mov    %r12,-0x5d8(%rbp)
  68868a:	48 89 85 a0 fa ff ff 	mov    %rax,-0x560(%rbp)
  688691:	4c 89 9d 80 fa ff ff 	mov    %r11,-0x580(%rbp)
  688698:	4c 89 bd 30 fa ff ff 	mov    %r15,-0x5d0(%rbp)
  68869f:	4c 8b 95 40 fa ff ff 	mov    -0x5c0(%rbp),%r10
  6886a6:	4c 8b ad c0 f4 ff ff 	mov    -0xb40(%rbp),%r13
  6886ad:	48 8b 85 f8 f4 ff ff 	mov    -0xb08(%rbp),%rax
  6886b4:	4c 8b a5 48 fa ff ff 	mov    -0x5b8(%rbp),%r12
  6886bb:	48 8b 36             	mov    (%rsi),%rsi
  6886be:	48 8b bd 58 fa ff ff 	mov    -0x5a8(%rbp),%rdi
  6886c5:	4c 8b 85 60 fa ff ff 	mov    -0x5a0(%rbp),%r8
  6886cc:	4c 8b 8d 68 fa ff ff 	mov    -0x598(%rbp),%r9
  6886d3:	4c 8b 9d 70 fa ff ff 	mov    -0x590(%rbp),%r11
  6886da:	4c 89 b5 10 fa ff ff 	mov    %r14,-0x5f0(%rbp)
  6886e1:	48 83 ff 08          	cmp    $0x8,%rdi
  6886e5:	0f 85 0f 01 00 00    	jne    6887fa <step3d_t_mod_mp_step3d_t_tile_+0x1b8a>
  6886eb:	48 83 fe 08          	cmp    $0x8,%rsi
  6886ef:	0f 85 05 01 00 00    	jne    6887fa <step3d_t_mod_mp_step3d_t_tile_+0x1b8a>
  6886f5:	48 8b 95 78 f4 ff ff 	mov    -0xb88(%rbp),%rdx
  6886fc:	33 c9                	xor    %ecx,%ecx
  6886fe:	4c 3b a5 78 fa ff ff 	cmp    -0x588(%rbp),%r12
  688705:	0f 8c 66 02 00 00    	jl     688971 <step3d_t_mod_mp_step3d_t_tile_+0x1d01>
  68870b:	48 8b 85 28 fa ff ff 	mov    -0x5d8(%rbp),%rax
  688712:	4c 89 85 60 fa ff ff 	mov    %r8,-0x5a0(%rbp)
  688719:	4c 89 9d 70 fa ff ff 	mov    %r11,-0x590(%rbp)
  688720:	4c 89 95 40 fa ff ff 	mov    %r10,-0x5c0(%rbp)
  688727:	49 03 c0             	add    %r8,%rax
  68872a:	4c 89 a5 48 fa ff ff 	mov    %r12,-0x5b8(%rbp)
  688731:	48 8b b5 10 fa ff ff 	mov    -0x5f0(%rbp),%rsi
  688738:	48 8b bd d8 fa ff ff 	mov    -0x528(%rbp),%rdi
  68873f:	4c 8b 85 18 fa ff ff 	mov    -0x5e8(%rbp),%r8
  688746:	4c 8b 8d c0 fa ff ff 	mov    -0x540(%rbp),%r9
  68874d:	4c 8b 95 c8 fa ff ff 	mov    -0x538(%rbp),%r10
  688754:	44 8b 9d a8 fa ff ff 	mov    -0x558(%rbp),%r11d
  68875b:	44 8b a5 e8 fa ff ff 	mov    -0x518(%rbp),%r12d
  688762:	45 3b dc             	cmp    %r12d,%r11d
  688765:	7c 4f                	jl     6887b6 <step3d_t_mod_mp_step3d_t_tile_+0x1b46>
  688767:	49 83 f8 04          	cmp    $0x4,%r8
  68876b:	0f 8c 73 63 00 00    	jl     68eae4 <step3d_t_mod_mp_step3d_t_tile_+0x7e74>
  688771:	49 89 f5             	mov    %rsi,%r13
  688774:	45 33 ff             	xor    %r15d,%r15d
  688777:	49 89 c6             	mov    %rax,%r14
  68877a:	c4 c1 7d 10 06       	vmovupd (%r14),%ymm0
  68877f:	c4 a1 7d 59 0c fa    	vmulpd (%rdx,%r15,8),%ymm0,%ymm1
  688785:	49 83 c7 04          	add    $0x4,%r15
  688789:	c4 c1 7d 11 0e       	vmovupd %ymm1,(%r14)
  68878e:	49 83 c6 20          	add    $0x20,%r14
  688792:	4c 3b fe             	cmp    %rsi,%r15
  688795:	72 e3                	jb     68877a <step3d_t_mod_mp_step3d_t_tile_+0x1b0a>
  688797:	4d 3b e8             	cmp    %r8,%r13
  68879a:	73 1a                	jae    6887b6 <step3d_t_mod_mp_step3d_t_tile_+0x1b46>
  68879c:	c4 a1 7b 10 04 e8    	vmovsd (%rax,%r13,8),%xmm0
  6887a2:	c4 a1 7b 59 0c ea    	vmulsd (%rdx,%r13,8),%xmm0,%xmm1
  6887a8:	c4 a1 7b 11 0c e8    	vmovsd %xmm1,(%rax,%r13,8)
  6887ae:	49 ff c5             	inc    %r13
  6887b1:	4d 3b e8             	cmp    %r8,%r13
  6887b4:	72 e6                	jb     68879c <step3d_t_mod_mp_step3d_t_tile_+0x1b2c>
  6887b6:	48 ff c1             	inc    %rcx
  6887b9:	49 03 c2             	add    %r10,%rax
  6887bc:	49 03 d1             	add    %r9,%rdx
  6887bf:	48 3b cf             	cmp    %rdi,%rcx
  6887c2:	72 9e                	jb     688762 <step3d_t_mod_mp_step3d_t_tile_+0x1af2>
  6887c4:	48 8b b5 50 fa ff ff 	mov    -0x5b0(%rbp),%rsi
  6887cb:	48 8b bd 58 fa ff ff 	mov    -0x5a8(%rbp),%rdi
  6887d2:	4c 8b 85 60 fa ff ff 	mov    -0x5a0(%rbp),%r8
  6887d9:	4c 8b 8d 68 fa ff ff 	mov    -0x598(%rbp),%r9
  6887e0:	4c 8b 9d 70 fa ff ff 	mov    -0x590(%rbp),%r11
  6887e7:	4c 8b 95 40 fa ff ff 	mov    -0x5c0(%rbp),%r10
  6887ee:	4c 8b a5 48 fa ff ff 	mov    -0x5b8(%rbp),%r12
  6887f5:	e9 77 01 00 00       	jmpq   688971 <step3d_t_mod_mp_step3d_t_tile_+0x1d01>
  6887fa:	33 c9                	xor    %ecx,%ecx
  6887fc:	33 d2                	xor    %edx,%edx
  6887fe:	33 c0                	xor    %eax,%eax
  688800:	4c 3b a5 78 fa ff ff 	cmp    -0x588(%rbp),%r12
  688807:	0f 8c 64 01 00 00    	jl     688971 <step3d_t_mod_mp_step3d_t_tile_+0x1d01>
  68880d:	4c 8b bd 38 fa ff ff 	mov    -0x5c8(%rbp),%r15
  688814:	4c 8b b5 30 fa ff ff 	mov    -0x5d0(%rbp),%r14
  68881b:	4c 8b ad 20 fa ff ff 	mov    -0x5e0(%rbp),%r13
  688822:	4c 89 85 60 fa ff ff 	mov    %r8,-0x5a0(%rbp)
  688829:	4d 03 f8             	add    %r8,%r15
  68882c:	4c 89 bd 90 fa ff ff 	mov    %r15,-0x570(%rbp)
  688833:	4d 03 f0             	add    %r8,%r14
  688836:	4c 89 b5 b0 fa ff ff 	mov    %r14,-0x550(%rbp)
  68883d:	4d 03 e8             	add    %r8,%r13
  688840:	4c 89 ad 88 fa ff ff 	mov    %r13,-0x578(%rbp)
  688847:	4c 89 9d 70 fa ff ff 	mov    %r11,-0x590(%rbp)
  68884e:	4c 89 95 40 fa ff ff 	mov    %r10,-0x5c0(%rbp)
  688855:	4c 89 a5 48 fa ff ff 	mov    %r12,-0x5b8(%rbp)
  68885c:	44 8b bd a8 fa ff ff 	mov    -0x558(%rbp),%r15d
  688863:	44 3b bd e8 fa ff ff 	cmp    -0x518(%rbp),%r15d
  68886a:	0f 8c c0 00 00 00    	jl     688930 <step3d_t_mod_mp_step3d_t_tile_+0x1cc0>
  688870:	45 33 ed             	xor    %r13d,%r13d
  688873:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  688879:	45 33 f6             	xor    %r14d,%r14d
  68887c:	45 33 e4             	xor    %r12d,%r12d
  68887f:	83 bd d0 fa ff ff 00 	cmpl   $0x0,-0x530(%rbp)
  688886:	74 6d                	je     6888f5 <step3d_t_mod_mp_step3d_t_tile_+0x1c85>
  688888:	4c 8b 9d 88 fa ff ff 	mov    -0x578(%rbp),%r11
  68888f:	4c 8b 95 a0 fa ff ff 	mov    -0x560(%rbp),%r10
  688896:	4c 8b 8d 80 fa ff ff 	mov    -0x580(%rbp),%r9
  68889d:	4c 8b 85 90 fa ff ff 	mov    -0x570(%rbp),%r8
  6888a4:	4c 03 d8             	add    %rax,%r11
  6888a7:	4c 8b bd 98 fa ff ff 	mov    -0x568(%rbp),%r15
  6888ae:	4c 03 d2             	add    %rdx,%r10
  6888b1:	4c 03 ca             	add    %rdx,%r9
  6888b4:	4c 03 c0             	add    %rax,%r8
  6888b7:	c4 81 7b 10 04 70    	vmovsd (%r8,%r14,2),%xmm0
  6888bd:	49 ff c5             	inc    %r13
  6888c0:	c4 81 7b 10 14 73    	vmovsd (%r11,%r14,2),%xmm2
  6888c6:	c4 81 7b 59 0c 62    	vmulsd (%r10,%r12,2),%xmm0,%xmm1
  6888cc:	c4 81 6b 59 1c 61    	vmulsd (%r9,%r12,2),%xmm2,%xmm3
  6888d2:	c4 81 7b 11 0c 70    	vmovsd %xmm1,(%r8,%r14,2)
  6888d8:	4c 03 e6             	add    %rsi,%r12
  6888db:	c4 81 7b 11 1c 73    	vmovsd %xmm3,(%r11,%r14,2)
  6888e1:	4c 03 f7             	add    %rdi,%r14
  6888e4:	4d 3b ef             	cmp    %r15,%r13
  6888e7:	72 ce                	jb     6888b7 <step3d_t_mod_mp_step3d_t_tile_+0x1c47>
  6888e9:	44 8b bd a8 fa ff ff 	mov    -0x558(%rbp),%r15d
  6888f0:	47 8d 4c 2d 01       	lea    0x1(%r13,%r13,1),%r9d
  6888f5:	45 8d 41 ff          	lea    -0x1(%r9),%r8d
  6888f9:	44 3b 85 e0 fa ff ff 	cmp    -0x520(%rbp),%r8d
  688900:	73 2e                	jae    688930 <step3d_t_mod_mp_step3d_t_tile_+0x1cc0>
  688902:	4d 63 c9             	movslq %r9d,%r9
  688905:	49 89 f8             	mov    %rdi,%r8
  688908:	4d 0f af c1          	imul   %r9,%r8
  68890c:	4c 0f af ce          	imul   %rsi,%r9
  688910:	4c 03 85 b0 fa ff ff 	add    -0x550(%rbp),%r8
  688917:	4c 03 8d b8 fa ff ff 	add    -0x548(%rbp),%r9
  68891e:	c4 c1 7b 10 04 00    	vmovsd (%r8,%rax,1),%xmm0
  688924:	c4 c1 7b 59 0c 11    	vmulsd (%r9,%rdx,1),%xmm0,%xmm1
  68892a:	c4 c1 7b 11 0c 00    	vmovsd %xmm1,(%r8,%rax,1)
  688930:	48 ff c1             	inc    %rcx
  688933:	48 03 95 c0 fa ff ff 	add    -0x540(%rbp),%rdx
  68893a:	48 03 85 c8 fa ff ff 	add    -0x538(%rbp),%rax
  688941:	48 3b 8d d8 fa ff ff 	cmp    -0x528(%rbp),%rcx
  688948:	0f 82 15 ff ff ff    	jb     688863 <step3d_t_mod_mp_step3d_t_tile_+0x1bf3>
  68894e:	4c 8b 85 60 fa ff ff 	mov    -0x5a0(%rbp),%r8
  688955:	4c 8b 8d 68 fa ff ff 	mov    -0x598(%rbp),%r9
  68895c:	4c 8b 9d 70 fa ff ff 	mov    -0x590(%rbp),%r11
  688963:	4c 8b 95 40 fa ff ff 	mov    -0x5c0(%rbp),%r10
  68896a:	4c 8b a5 48 fa ff ff 	mov    -0x5b8(%rbp),%r12
  688971:	49 ff c3             	inc    %r11
  688974:	4d 03 c1             	add    %r9,%r8
  688977:	4d 3b da             	cmp    %r10,%r11
  68897a:	0f 82 61 fd ff ff    	jb     6886e1 <step3d_t_mod_mp_step3d_t_tile_+0x1a71>
  688980:	4c 8b ad c0 f4 ff ff 	mov    -0xb40(%rbp),%r13
  688987:	48 8b 8d c8 f4 ff ff 	mov    -0xb38(%rbp),%rcx
  68898e:	48 8b bd d0 f4 ff ff 	mov    -0xb30(%rbp),%rdi
  688995:	48 8b b5 d8 f4 ff ff 	mov    -0xb28(%rbp),%rsi
  68899c:	4c 8b 8d e0 f4 ff ff 	mov    -0xb20(%rbp),%r9
  6889a3:	48 8b 95 e8 f4 ff ff 	mov    -0xb18(%rbp),%rdx
  6889aa:	4c 8b 85 f0 f4 ff ff 	mov    -0xb10(%rbp),%r8
  6889b1:	48 8b 85 f8 f4 ff ff 	mov    -0xb08(%rbp),%rax
  6889b8:	4c 8b 15 e1 51 4b 00 	mov    0x4b51e1(%rip),%r10        # b3dba0 <mod_scalars_mp_ewperiodic_+0x40>
  6889bf:	49 c1 e2 02          	shl    $0x2,%r10
  6889c3:	4c 8b 1d 76 4e 4b 00 	mov    0x4b4e76(%rip),%r11        # b3d840 <mod_scalars_mp_nsperiodic_+0x40>
  6889ca:	49 f7 da             	neg    %r10
  6889cd:	49 c1 e3 02          	shl    $0x2,%r11
  6889d1:	4c 03 15 88 51 4b 00 	add    0x4b5188(%rip),%r10        # b3db60 <mod_scalars_mp_ewperiodic_>
  6889d8:	49 f7 db             	neg    %r11
  6889db:	4c 03 1d 1e 4e 4b 00 	add    0x4b4e1e(%rip),%r11        # b3d800 <mod_scalars_mp_nsperiodic_>
  6889e2:	47 8b 74 15 00       	mov    0x0(%r13,%r10,1),%r14d
  6889e7:	47 0b 74 1d 00       	or     0x0(%r13,%r11,1),%r14d
  6889ec:	41 f7 c6 01 00 00 00 	test   $0x1,%r14d
  6889f3:	0f 84 35 01 00 00    	je     688b2e <step3d_t_mod_mp_step3d_t_tile_+0x1ebe>
  6889f9:	48 63 02             	movslq (%rdx),%rax
  6889fc:	48 ff c9             	dec    %rcx
  6889ff:	48 ff c8             	dec    %rax
  688a02:	49 2b f1             	sub    %r9,%rsi
  688a05:	49 0f af 80 80 00 00 	imul   0x80(%r8),%rax
  688a0c:	00 
  688a0d:	49 0f af 88 98 00 00 	imul   0x98(%r8),%rcx
  688a14:	00 
  688a15:	4d 8b 58 30          	mov    0x30(%r8),%r11
  688a19:	45 33 f6             	xor    %r14d,%r14d
  688a1c:	4d 85 db             	test   %r11,%r11
  688a1f:	4d 0f 4e de          	cmovle %r14,%r11
  688a23:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  688a29:	48 83 c4 e0          	add    $0xffffffffffffffe0,%rsp
  688a2d:	49 03 f5             	add    %r13,%rsi
  688a30:	4d 8b 68 48          	mov    0x48(%r8),%r13
  688a34:	4d 85 ed             	test   %r13,%r13
  688a37:	4d 8b 78 60          	mov    0x60(%r8),%r15
  688a3b:	4d 0f 4e ee          	cmovle %r14,%r13
  688a3f:	4d 85 ff             	test   %r15,%r15
  688a42:	48 c7 04 24 b8 1b 8c 	movq   $0x8c1bb8,(%rsp)
  688a49:	00 
  688a4a:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  688a4f:	48 8d b5 90 f5 ff ff 	lea    -0xa70(%rbp),%rsi
  688a56:	49 8b 50 50          	mov    0x50(%r8),%rdx
  688a5a:	4d 0f 4e fe          	cmovle %r14,%r15
  688a5e:	49 03 00             	add    (%r8),%rax
  688a61:	48 03 c1             	add    %rcx,%rax
  688a64:	49 8b 48 68          	mov    0x68(%r8),%rcx
  688a68:	48 89 06             	mov    %rax,(%rsi)
  688a6b:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  688a70:	49 8b 40 38          	mov    0x38(%r8),%rax
  688a74:	48 89 56 50          	mov    %rdx,0x50(%rsi)
  688a78:	48 89 4e 68          	mov    %rcx,0x68(%rsi)
  688a7c:	48 8b b5 a0 f9 ff ff 	mov    -0x660(%rbp),%rsi
  688a83:	48 8b 95 a8 f9 ff ff 	mov    -0x658(%rbp),%rdx
  688a8a:	48 8b 8d b0 f9 ff ff 	mov    -0x650(%rbp),%rcx
  688a91:	4c 8b 85 b8 f9 ff ff 	mov    -0x648(%rbp),%r8
  688a98:	4c 8b 8d c0 f9 ff ff 	mov    -0x640(%rbp),%r9
  688a9f:	48 c7 85 98 f5 ff ff 	movq   $0x8,-0xa68(%rbp)
  688aa6:	08 00 00 00 
  688aaa:	48 c7 85 b0 f5 ff ff 	movq   $0x3,-0xa50(%rbp)
  688ab1:	03 00 00 00 
  688ab5:	4c 89 b5 a0 f5 ff ff 	mov    %r14,-0xa60(%rbp)
  688abc:	4c 89 95 d0 f5 ff ff 	mov    %r10,-0xa30(%rbp)
  688ac3:	4c 89 95 e8 f5 ff ff 	mov    %r10,-0xa18(%rbp)
  688aca:	4c 89 95 00 f6 ff ff 	mov    %r10,-0xa00(%rbp)
  688ad1:	4c 89 95 a8 f5 ff ff 	mov    %r10,-0xa58(%rbp)
  688ad8:	4c 89 9d c0 f5 ff ff 	mov    %r11,-0xa40(%rbp)
  688adf:	4c 89 ad d8 f5 ff ff 	mov    %r13,-0xa28(%rbp)
  688ae6:	4c 89 bd f0 f5 ff ff 	mov    %r15,-0xa10(%rbp)
  688aed:	48 89 85 c8 f5 ff ff 	mov    %rax,-0xa38(%rbp)
  688af4:	c5 f8 77             	vzeroupper 
  688af7:	e8 c4 16 f8 ff       	callq  60a1c0 <exchange_3d_mod_mp_exchange_r3d_tile_>
  688afc:	48 83 c4 20          	add    $0x20,%rsp
  688b00:	48 8b bd 98 f9 ff ff 	mov    -0x668(%rbp),%rdi
  688b07:	4c 8b 0d d2 35 4b 00 	mov    0x4b35d2(%rip),%r9        # b3c0e0 <mod_param_mp_n_+0x40>
  688b0e:	48 8b 35 8b 35 4b 00 	mov    0x4b358b(%rip),%rsi        # b3c0a0 <mod_param_mp_n_>
  688b15:	48 63 07             	movslq (%rdi),%rax
  688b18:	48 63 8d d8 f9 ff ff 	movslq -0x628(%rbp),%rcx
  688b1f:	4c 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%r8
  688b26:	48 8b 53 40          	mov    0x40(%rbx),%rdx
  688b2a:	49 c1 e1 02          	shl    $0x2,%r9
  688b2e:	ff c1                	inc    %ecx
  688b30:	89 8d d8 f9 ff ff    	mov    %ecx,-0x628(%rbp)
  688b36:	3b 8d 08 f5 ff ff    	cmp    -0xaf8(%rbp),%ecx
  688b3c:	7f 13                	jg     688b51 <step3d_t_mod_mp_step3d_t_tile_+0x1ee1>
  688b3e:	4c 8b 1d 3b 35 4b 00 	mov    0x4b353b(%rip),%r11        # b3c080 <mod_param_mp_nt_+0x40>
  688b45:	4c 8b 15 f4 34 4b 00 	mov    0x4b34f4(%rip),%r10        # b3c040 <mod_param_mp_nt_>
  688b4c:	e9 04 f0 ff ff       	jmpq   687b55 <step3d_t_mod_mp_step3d_t_tile_+0xee5>
  688b51:	45 33 f6             	xor    %r14d,%r14d
  688b54:	4c 63 22             	movslq (%rdx),%r12
  688b57:	49 2b f1             	sub    %r9,%rsi
  688b5a:	49 ff cc             	dec    %r12
  688b5d:	4c 8d 9d 70 f4 ff ff 	lea    -0xb90(%rbp),%r11
  688b64:	4d 0f af a0 80 00 00 	imul   0x80(%r8),%r12
  688b6b:	00 
  688b6c:	4d 03 20             	add    (%r8),%r12
  688b6f:	4c 8d 14 86          	lea    (%rsi,%rax,4),%r10
  688b73:	4c 8b 3d c6 4c 4b 00 	mov    0x4b4cc6(%rip),%r15        # b3d840 <mod_scalars_mp_nsperiodic_+0x40>
  688b7a:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  688b80:	49 c1 e7 02          	shl    $0x2,%r15
  688b84:	4d 89 23             	mov    %r12,(%r11)
  688b87:	4c 8b 25 72 4c 4b 00 	mov    0x4b4c72(%rip),%r12        # b3d800 <mod_scalars_mp_nsperiodic_>
  688b8e:	48 8b 0d 0b 50 4b 00 	mov    0x4b500b(%rip),%rcx        # b3dba0 <mod_scalars_mp_ewperiodic_+0x40>
  688b95:	4d 2b e7             	sub    %r15,%r12
  688b98:	48 c1 e1 02          	shl    $0x2,%rcx
  688b9c:	48 8b 35 bd 4f 4b 00 	mov    0x4b4fbd(%rip),%rsi        # b3db60 <mod_scalars_mp_ewperiodic_>
  688ba3:	48 2b f1             	sub    %rcx,%rsi
  688ba6:	41 56                	push   %r14
  688ba8:	41 56                	push   %r14
  688baa:	41 53                	push   %r11
  688bac:	49 c7 43 08 08 00 00 	movq   $0x8,0x8(%r11)
  688bb3:	00 
  688bb4:	49 8d 14 84          	lea    (%r12,%rax,4),%rdx
  688bb8:	52                   	push   %rdx
  688bb9:	49 8b 50 30          	mov    0x30(%r8),%rdx
  688bbd:	48 8d 04 86          	lea    (%rsi,%rax,4),%rax
  688bc1:	50                   	push   %rax
  688bc2:	68 88 23 cc 00       	pushq  $0xcc2388
  688bc7:	68 90 4a b8 00       	pushq  $0xb84a90
  688bcc:	41 bc b8 1b 8c 00    	mov    $0x8c1bb8,%r12d
  688bd2:	48 85 d2             	test   %rdx,%rdx
  688bd5:	41 54                	push   %r12
  688bd7:	49 8b 70 48          	mov    0x48(%r8),%rsi
  688bdb:	49 0f 4e d6          	cmovle %r14,%rdx
  688bdf:	41 52                	push   %r10
  688be1:	48 85 f6             	test   %rsi,%rsi
  688be4:	4c 89 e1             	mov    %r12,%rcx
  688be7:	49 c7 43 20 04 00 00 	movq   $0x4,0x20(%r11)
  688bee:	00 
  688bef:	4d 89 73 10          	mov    %r14,0x10(%r11)
  688bf3:	49 0f 4e f6          	cmovle %r14,%rsi
  688bf7:	4d 89 6b 40          	mov    %r13,0x40(%r11)
  688bfb:	4d 89 6b 58          	mov    %r13,0x58(%r11)
  688bff:	4d 89 6b 70          	mov    %r13,0x70(%r11)
  688c03:	4c 89 ad f8 f4 ff ff 	mov    %r13,-0xb08(%rbp)
  688c0a:	4d 89 6b 18          	mov    %r13,0x18(%r11)
  688c0e:	41 54                	push   %r12
  688c10:	4d 8b 48 60          	mov    0x60(%r8),%r9
  688c14:	4d 85 c9             	test   %r9,%r9
  688c17:	48 63 05 72 be 4f 00 	movslq 0x4fbe72(%rip),%rax        # b84a90 <mod_param_mp_nat_>
  688c1e:	49 89 c2             	mov    %rax,%r10
  688c21:	ff b5 c0 f9 ff ff    	pushq  -0x640(%rbp)
  688c27:	ff b5 b8 f9 ff ff    	pushq  -0x648(%rbp)
  688c2d:	49 89 53 30          	mov    %rdx,0x30(%r11)
  688c31:	ba e8 b6 b3 00       	mov    $0xb3b6e8,%edx
  688c36:	4d 8b 58 38          	mov    0x38(%r8),%r11
  688c3a:	4d 0f 4e ce          	cmovle %r14,%r9
  688c3e:	4d 8b 68 50          	mov    0x50(%r8),%r13
  688c42:	4d 8b 78 68          	mov    0x68(%r8),%r15
  688c46:	4d 8b 80 98 00 00 00 	mov    0x98(%r8),%r8
  688c4d:	49 c1 fa 3f          	sar    $0x3f,%r10
  688c51:	48 89 b5 b8 f4 ff ff 	mov    %rsi,-0xb48(%rbp)
  688c58:	4c 89 8d d0 f4 ff ff 	mov    %r9,-0xb30(%rbp)
  688c5f:	4c 89 85 f0 f4 ff ff 	mov    %r8,-0xb10(%rbp)
  688c66:	c4 e2 a8 f2 c0       	andn   %rax,%r10,%rax
  688c6b:	48 8b b5 a0 f9 ff ff 	mov    -0x660(%rbp),%rsi
  688c72:	4c 8b 85 a8 f9 ff ff 	mov    -0x658(%rbp),%r8
  688c79:	4c 8b 8d b0 f9 ff ff 	mov    -0x650(%rbp),%r9
  688c80:	4c 89 9d a8 f4 ff ff 	mov    %r11,-0xb58(%rbp)
  688c87:	4c 89 ad c0 f4 ff ff 	mov    %r13,-0xb40(%rbp)
  688c8e:	4c 89 bd d8 f4 ff ff 	mov    %r15,-0xb28(%rbp)
  688c95:	48 89 85 e8 f4 ff ff 	mov    %rax,-0xb18(%rbp)
  688c9c:	c5 f8 77             	vzeroupper 
  688c9f:	e8 ac c2 fb ff       	callq  644f50 <mp_exchange_mod_mp_mp_exchange4d_>
  688ca4:	48 83 c4 60          	add    $0x60,%rsp
  688ca8:	48 8b 3d d1 33 4b 00 	mov    0x4b33d1(%rip),%rdi        # b3c080 <mod_param_mp_nt_+0x40>
  688caf:	4c 8d 9d 00 f5 ff ff 	lea    -0xb00(%rbp),%r11
  688cb6:	48 c1 e7 02          	shl    $0x2,%rdi
  688cba:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  688cc0:	4c 8b 15 79 33 4b 00 	mov    0x4b3379(%rip),%r10        # b3c040 <mod_param_mp_nt_>
  688cc7:	4c 89 e1             	mov    %r12,%rcx
  688cca:	4c 2b d7             	sub    %rdi,%r10
  688ccd:	48 8b bd 98 f9 ff ff 	mov    -0x668(%rbp),%rdi
  688cd4:	4c 8b 2d 65 4b 4b 00 	mov    0x4b4b65(%rip),%r13        # b3d840 <mod_scalars_mp_nsperiodic_+0x40>
  688cdb:	49 c1 e5 02          	shl    $0x2,%r13
  688cdf:	4c 8b 0d 1a 4b 4b 00 	mov    0x4b4b1a(%rip),%r9        # b3d800 <mod_scalars_mp_nsperiodic_>
  688ce6:	4c 8b 3d b3 4e 4b 00 	mov    0x4b4eb3(%rip),%r15        # b3dba0 <mod_scalars_mp_ewperiodic_+0x40>
  688ced:	4d 2b cd             	sub    %r13,%r9
  688cf0:	49 c1 e7 02          	shl    $0x2,%r15
  688cf4:	48 8b 05 65 4e 4b 00 	mov    0x4b4e65(%rip),%rax        # b3db60 <mod_scalars_mp_ewperiodic_>
  688cfb:	48 63 17             	movslq (%rdi),%rdx
  688cfe:	49 2b c7             	sub    %r15,%rax
  688d01:	41 56                	push   %r14
  688d03:	41 56                	push   %r14
  688d05:	41 53                	push   %r11
  688d07:	4d 89 43 40          	mov    %r8,0x40(%r11)
  688d0b:	4d 8d 0c 91          	lea    (%r9,%rdx,4),%r9
  688d0f:	41 51                	push   %r9
  688d11:	4d 89 43 58          	mov    %r8,0x58(%r11)
  688d15:	4c 8d 0c 90          	lea    (%rax,%rdx,4),%r9
  688d19:	41 51                	push   %r9
  688d1b:	68 88 23 cc 00       	pushq  $0xcc2388
  688d20:	4d 89 43 70          	mov    %r8,0x70(%r11)
  688d24:	4d 8d 14 92          	lea    (%r10,%rdx,4),%r10
  688d28:	41 52                	push   %r10
  688d2a:	4c 89 85 88 f5 ff ff 	mov    %r8,-0xa78(%rbp)
  688d31:	4c 8d 8d 08 f9 ff ff 	lea    -0x6f8(%rbp),%r9
  688d38:	41 51                	push   %r9
  688d3a:	4c 8b 0d 9f 33 4b 00 	mov    0x4b339f(%rip),%r9        # b3c0e0 <mod_param_mp_n_+0x40>
  688d41:	49 c1 e1 02          	shl    $0x2,%r9
  688d45:	4d 89 43 18          	mov    %r8,0x18(%r11)
  688d49:	4c 8b 05 50 33 4b 00 	mov    0x4b3350(%rip),%r8        # b3c0a0 <mod_param_mp_n_>
  688d50:	4d 2b c1             	sub    %r9,%r8
  688d53:	49 c7 43 08 08 00 00 	movq   $0x8,0x8(%r11)
  688d5a:	00 
  688d5b:	49 c7 43 20 04 00 00 	movq   $0x4,0x20(%r11)
  688d62:	00 
  688d63:	4d 89 73 10          	mov    %r14,0x10(%r11)
  688d67:	4c 63 0d 22 bd 4f 00 	movslq 0x4fbd22(%rip),%r9        # b84a90 <mod_param_mp_nat_>
  688d6e:	4d 8d 04 90          	lea    (%r8,%rdx,4),%r8
  688d72:	41 50                	push   %r8
  688d74:	4c 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%r8
  688d7b:	41 54                	push   %r12
  688d7d:	ff b5 c0 f9 ff ff    	pushq  -0x640(%rbp)
  688d83:	ff b5 b8 f9 ff ff    	pushq  -0x648(%rbp)
  688d89:	49 8b 50 30          	mov    0x30(%r8),%rdx
  688d8d:	48 85 d2             	test   %rdx,%rdx
  688d90:	49 8b 70 48          	mov    0x48(%r8),%rsi
  688d94:	49 0f 4e d6          	cmovle %r14,%rdx
  688d98:	48 85 f6             	test   %rsi,%rsi
  688d9b:	49 8b 40 60          	mov    0x60(%r8),%rax
  688d9f:	49 0f 4e f6          	cmovle %r14,%rsi
  688da3:	48 85 c0             	test   %rax,%rax
  688da6:	49 89 53 30          	mov    %rdx,0x30(%r11)
  688daa:	49 63 12             	movslq (%r10),%rdx
  688dad:	49 0f 4e c6          	cmovle %r14,%rax
  688db1:	49 2b d1             	sub    %r9,%rdx
  688db4:	49 89 43 60          	mov    %rax,0x60(%r11)
  688db8:	4c 0f 4f f2          	cmovg  %rdx,%r14
  688dbc:	49 8b 50 38          	mov    0x38(%r8),%rdx
  688dc0:	4d 89 73 78          	mov    %r14,0x78(%r11)
  688dc4:	49 89 53 38          	mov    %rdx,0x38(%r11)
  688dc8:	4c 8b 73 40          	mov    0x40(%rbx),%r14
  688dcc:	49 8b 50 50          	mov    0x50(%r8),%rdx
  688dd0:	49 89 53 50          	mov    %rdx,0x50(%r11)
  688dd4:	49 8b 50 68          	mov    0x68(%r8),%rdx
  688dd8:	49 89 53 68          	mov    %rdx,0x68(%r11)
  688ddc:	49 63 16             	movslq (%r14),%rdx
  688ddf:	48 ff ca             	dec    %rdx
  688de2:	49 8b 80 98 00 00 00 	mov    0x98(%r8),%rax
  688de9:	49 0f af 90 80 00 00 	imul   0x80(%r8),%rdx
  688df0:	00 
  688df1:	48 89 85 80 f5 ff ff 	mov    %rax,-0xa80(%rbp)
  688df8:	49 0f af c1          	imul   %r9,%rax
  688dfc:	49 03 10             	add    (%r8),%rdx
  688dff:	41 ff c1             	inc    %r9d
  688e02:	48 03 d0             	add    %rax,%rdx
  688e05:	49 89 13             	mov    %rdx,(%r11)
  688e08:	ba e8 b6 b3 00       	mov    $0xb3b6e8,%edx
  688e0d:	49 89 73 48          	mov    %rsi,0x48(%r11)
  688e11:	44 89 8d 08 f9 ff ff 	mov    %r9d,-0x6f8(%rbp)
  688e18:	48 8b b5 a0 f9 ff ff 	mov    -0x660(%rbp),%rsi
  688e1f:	4c 8b 85 a8 f9 ff ff 	mov    -0x658(%rbp),%r8
  688e26:	4c 8b 8d b0 f9 ff ff 	mov    -0x650(%rbp),%r9
  688e2d:	e8 7e 77 fe ff       	callq  6705b0 <mp_exchange_mod_mp_mp_exchange4d_q_>
  688e32:	48 83 c4 60          	add    $0x60,%rsp
  688e36:	48 8b 85 30 f9 ff ff 	mov    -0x6d0(%rbp),%rax
  688e3d:	48 89 c4             	mov    %rax,%rsp
  688e40:	4c 8b bd 10 f9 ff ff 	mov    -0x6f0(%rbp),%r15
  688e47:	4c 8b b5 18 f9 ff ff 	mov    -0x6e8(%rbp),%r14
  688e4e:	4c 8b ad 20 f9 ff ff 	mov    -0x6e0(%rbp),%r13
  688e55:	4c 8b a5 28 f9 ff ff 	mov    -0x6d8(%rbp),%r12
  688e5c:	48 89 ec             	mov    %rbp,%rsp
  688e5f:	5d                   	pop    %rbp
  688e60:	48 89 dc             	mov    %rbx,%rsp
  688e63:	5b                   	pop    %rbx
  688e64:	c3                   	retq   
  688e65:	53                   	push   %rbx
  688e66:	48 89 e3             	mov    %rsp,%rbx
  688e69:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  688e6d:	55                   	push   %rbp
  688e6e:	55                   	push   %rbp
  688e6f:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  688e73:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  688e78:	48 89 e5             	mov    %rsp,%rbp
  688e7b:	48 81 ec 90 0b 00 00 	sub    $0xb90,%rsp
  688e82:	4c 89 bd 10 f9 ff ff 	mov    %r15,-0x6f0(%rbp)
  688e89:	4c 89 ad 20 f9 ff ff 	mov    %r13,-0x6e0(%rbp)
  688e90:	4c 8b 7b 20          	mov    0x20(%rbx),%r15
  688e94:	4c 8b 6b 18          	mov    0x18(%rbx),%r13
  688e98:	48 8b 43 38          	mov    0x38(%rbx),%rax
  688e9c:	48 8b 73 40          	mov    0x40(%rbx),%rsi
  688ea0:	4c 89 a5 28 f9 ff ff 	mov    %r12,-0x6d8(%rbp)
  688ea7:	4c 8b 63 10          	mov    0x10(%rbx),%r12
  688eab:	4d 8b 3f             	mov    (%r15),%r15
  688eae:	4d 8b 6d 00          	mov    0x0(%r13),%r13
  688eb2:	4c 89 bd b8 f4 ff ff 	mov    %r15,-0xb48(%rbp)
  688eb9:	4c 89 ad 88 f4 ff ff 	mov    %r13,-0xb78(%rbp)
  688ec0:	44 8b 3a             	mov    (%rdx),%r15d
  688ec3:	4d 8b 28             	mov    (%r8),%r13
  688ec6:	48 8b 53 50          	mov    0x50(%rbx),%rdx
  688eca:	4c 8b 53 28          	mov    0x28(%rbx),%r10
  688ece:	4c 8b 43 58          	mov    0x58(%rbx),%r8
  688ed2:	8b 00                	mov    (%rax),%eax
  688ed4:	8b 36                	mov    (%rsi),%esi
  688ed6:	45 8b 24 24          	mov    (%r12),%r12d
  688eda:	89 85 10 fa ff ff    	mov    %eax,-0x5f0(%rbp)
  688ee0:	89 b5 c8 f8 ff ff    	mov    %esi,-0x738(%rbp)
  688ee6:	41 8b 01             	mov    (%r9),%eax
  688ee9:	48 8b 73 68          	mov    0x68(%rbx),%rsi
  688eed:	44 89 a5 c0 fd ff ff 	mov    %r12d,-0x240(%rbp)
  688ef4:	44 8b 21             	mov    (%rcx),%r12d
  688ef7:	89 85 b8 fd ff ff    	mov    %eax,-0x248(%rbp)
  688efd:	48 8b 0a             	mov    (%rdx),%rcx
  688f00:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
  688f04:	48 8b 53 60          	mov    0x60(%rbx),%rdx
  688f08:	4d 8b 12             	mov    (%r10),%r10
  688f0b:	49 8b 00             	mov    (%r8),%rax
  688f0e:	8b 3f                	mov    (%rdi),%edi
  688f10:	4c 89 95 98 f4 ff ff 	mov    %r10,-0xb68(%rbp)
  688f17:	48 89 85 a0 f4 ff ff 	mov    %rax,-0xb60(%rbp)
  688f1e:	48 8d 43 70          	lea    0x70(%rbx),%rax
  688f22:	4c 8b 00             	mov    (%rax),%r8
  688f25:	4c 8b 50 10          	mov    0x10(%rax),%r10
  688f29:	48 8b 40 18          	mov    0x18(%rax),%rax
  688f2d:	89 bd c0 f9 ff ff    	mov    %edi,-0x640(%rbp)
  688f33:	48 63 3e             	movslq (%rsi),%rdi
  688f36:	4c 89 b5 18 f9 ff ff 	mov    %r14,-0x6e8(%rbp)
  688f3d:	48 8d 73 48          	lea    0x48(%rbx),%rsi
  688f41:	4c 8b 36             	mov    (%rsi),%r14
  688f44:	48 89 8d a8 f4 ff ff 	mov    %rcx,-0xb58(%rbp)
  688f4b:	4d 8b 1b             	mov    (%r11),%r11
  688f4e:	48 8b 0a             	mov    (%rdx),%rcx
  688f51:	48 89 bd 18 f7 ff ff 	mov    %rdi,-0x8e8(%rbp)
  688f58:	48 8b 7e 70          	mov    0x70(%rsi),%rdi
  688f5c:	48 8b 76 68          	mov    0x68(%rsi),%rsi
  688f60:	4c 89 9d 90 f4 ff ff 	mov    %r11,-0xb70(%rbp)
  688f67:	48 89 8d b0 f4 ff ff 	mov    %rcx,-0xb50(%rbp)
  688f6e:	4d 63 08             	movslq (%r8),%r9
  688f71:	4d 63 1a             	movslq (%r10),%r11
  688f74:	48 63 10             	movslq (%rax),%rdx
  688f77:	33 c0                	xor    %eax,%eax
  688f79:	48 8b 8b a8 00 00 00 	mov    0xa8(%rbx),%rcx
  688f80:	48 89 bd 80 f4 ff ff 	mov    %rdi,-0xb80(%rbp)
  688f87:	48 8d bd d0 f4 ff ff 	lea    -0xb30(%rbp),%rdi
  688f8e:	48 89 77 a8          	mov    %rsi,-0x58(%rdi)
  688f92:	48 8b b3 c0 00 00 00 	mov    0xc0(%rbx),%rsi
  688f99:	4d 8b 36             	mov    (%r14),%r14
  688f9c:	4c 89 8d 20 f7 ff ff 	mov    %r9,-0x8e0(%rbp)
  688fa3:	4c 89 9d 10 f7 ff ff 	mov    %r11,-0x8f0(%rbp)
  688faa:	48 89 95 08 f7 ff ff 	mov    %rdx,-0x8f8(%rbp)
  688fb1:	48 89 4f a0          	mov    %rcx,-0x60(%rdi)
  688fb5:	e8 f6 54 df ff       	callq  47e4b0 <_f90_dope_vector_init>
  688fba:	48 89 85 58 f8 ff ff 	mov    %rax,-0x7a8(%rbp)
  688fc1:	48 83 c0 1f          	add    $0x1f,%rax
  688fc5:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  688fc9:	48 2b e0             	sub    %rax,%rsp
  688fcc:	48 89 e0             	mov    %rsp,%rax
  688fcf:	48 89 85 50 f8 ff ff 	mov    %rax,-0x7b0(%rbp)
  688fd6:	48 89 c2             	mov    %rax,%rdx
  688fd9:	48 8d bd 30 f5 ff ff 	lea    -0xad0(%rbp),%rdi
  688fe0:	33 c0                	xor    %eax,%eax
  688fe2:	48 8b b5 80 f4 ff ff 	mov    -0xb80(%rbp),%rsi
  688fe9:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  688fed:	e8 be 54 df ff       	callq  47e4b0 <_f90_dope_vector_init>
  688ff2:	48 89 85 68 f8 ff ff 	mov    %rax,-0x798(%rbp)
  688ff9:	48 83 c0 1f          	add    $0x1f,%rax
  688ffd:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  689001:	48 2b e0             	sub    %rax,%rsp
  689004:	48 89 e0             	mov    %rsp,%rax
  689007:	48 89 85 60 f8 ff ff 	mov    %rax,-0x7a0(%rbp)
  68900e:	48 89 c2             	mov    %rax,%rdx
  689011:	48 8d bd 90 f5 ff ff 	lea    -0xa70(%rbp),%rdi
  689018:	33 c0                	xor    %eax,%eax
  68901a:	48 8b b5 78 f4 ff ff 	mov    -0xb88(%rbp),%rsi
  689021:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  689025:	e8 86 54 df ff       	callq  47e4b0 <_f90_dope_vector_init>
  68902a:	48 89 85 78 f8 ff ff 	mov    %rax,-0x788(%rbp)
  689031:	48 83 c0 1f          	add    $0x1f,%rax
  689035:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  689039:	48 2b e0             	sub    %rax,%rsp
  68903c:	48 89 e0             	mov    %rsp,%rax
  68903f:	48 89 85 70 f8 ff ff 	mov    %rax,-0x790(%rbp)
  689046:	48 89 c2             	mov    %rax,%rdx
  689049:	48 8d bd f0 f5 ff ff 	lea    -0xa10(%rbp),%rdi
  689050:	33 c0                	xor    %eax,%eax
  689052:	48 8b b5 70 f4 ff ff 	mov    -0xb90(%rbp),%rsi
  689059:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  68905d:	e8 4e 54 df ff       	callq  47e4b0 <_f90_dope_vector_init>
  689062:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  689069:	48 83 c0 1f          	add    $0x1f,%rax
  68906d:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  689071:	48 2b e0             	sub    %rax,%rsp
  689074:	48 89 e0             	mov    %rsp,%rax
  689077:	48 89 85 88 f8 ff ff 	mov    %rax,-0x778(%rbp)
  68907e:	48 89 85 f0 f5 ff ff 	mov    %rax,-0xa10(%rbp)
  689085:	45 3b e7             	cmp    %r15d,%r12d
  689088:	0f 8c 8a 00 00 00    	jl     689118 <step3d_t_mod_mp_step3d_t_tile_+0x24a8>
  68908e:	48 83 c4 e0          	add    $0xffffffffffffffe0,%rsp
  689092:	48 8d 85 24 fa ff ff 	lea    -0x5dc(%rbp),%rax
  689099:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  68909f:	bf bc 56 b3 00       	mov    $0xb356bc,%edi
  6890a4:	ba 22 00 00 00       	mov    $0x22,%edx
  6890a9:	48 8d 8d 20 fa ff ff 	lea    -0x5e0(%rbp),%rcx
  6890b0:	44 89 78 f4          	mov    %r15d,-0xc(%rax)
  6890b4:	4c 8d 85 18 fa ff ff 	lea    -0x5e8(%rbp),%r8
  6890bb:	48 89 04 24          	mov    %rax,(%rsp)
  6890bf:	4c 8d 8d 1c fa ff ff 	lea    -0x5e4(%rbp),%r9
  6890c6:	44 89 54 24 08       	mov    %r10d,0x8(%rsp)
  6890cb:	44 89 54 24 10       	mov    %r10d,0x10(%rsp)
  6890d0:	8b 70 9c             	mov    -0x64(%rax),%esi
  6890d3:	44 89 60 f8          	mov    %r12d,-0x8(%rax)
  6890d7:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%rax)
  6890de:	44 89 10             	mov    %r10d,(%rax)
  6890e1:	e8 4a 4d d8 ff       	callq  40de30 <__kmpc_for_static_init_4@plt>
  6890e6:	48 83 c4 20          	add    $0x20,%rsp
  6890ea:	8b 85 18 fa ff ff    	mov    -0x5e8(%rbp),%eax
  6890f0:	8b 95 1c fa ff ff    	mov    -0x5e4(%rbp),%edx
  6890f6:	89 85 28 f7 ff ff    	mov    %eax,-0x8d8(%rbp)
  6890fc:	41 3b c4             	cmp    %r12d,%eax
  6890ff:	0f 8e 99 00 00 00    	jle    68919e <step3d_t_mod_mp_step3d_t_tile_+0x252e>
  689105:	bf bc 56 b3 00       	mov    $0xb356bc,%edi
  68910a:	8b b5 c0 f9 ff ff    	mov    -0x640(%rbp),%esi
  689110:	c5 f8 77             	vzeroupper 
  689113:	e8 e8 4f d8 ff       	callq  40e100 <__kmpc_for_static_fini@plt>
  689118:	48 8b 95 88 f8 ff ff 	mov    -0x778(%rbp),%rdx
  68911f:	48 8b 85 80 f8 ff ff 	mov    -0x780(%rbp),%rax
  689126:	48 83 c0 1f          	add    $0x1f,%rax
  68912a:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68912e:	48 03 e0             	add    %rax,%rsp
  689131:	48 8b 95 70 f8 ff ff 	mov    -0x790(%rbp),%rdx
  689138:	48 8b 85 78 f8 ff ff 	mov    -0x788(%rbp),%rax
  68913f:	48 83 c0 1f          	add    $0x1f,%rax
  689143:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  689147:	48 03 e0             	add    %rax,%rsp
  68914a:	48 8b 95 60 f8 ff ff 	mov    -0x7a0(%rbp),%rdx
  689151:	48 8b 85 68 f8 ff ff 	mov    -0x798(%rbp),%rax
  689158:	48 83 c0 1f          	add    $0x1f,%rax
  68915c:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  689160:	48 03 e0             	add    %rax,%rsp
  689163:	48 8b 95 50 f8 ff ff 	mov    -0x7b0(%rbp),%rdx
  68916a:	48 8b 85 58 f8 ff ff 	mov    -0x7a8(%rbp),%rax
  689171:	48 83 c0 1f          	add    $0x1f,%rax
  689175:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  689179:	48 03 e0             	add    %rax,%rsp
  68917c:	4c 8b bd 10 f9 ff ff 	mov    -0x6f0(%rbp),%r15
  689183:	4c 8b b5 18 f9 ff ff 	mov    -0x6e8(%rbp),%r14
  68918a:	4c 8b ad 20 f9 ff ff 	mov    -0x6e0(%rbp),%r13
  689191:	4c 8b a5 28 f9 ff ff 	mov    -0x6d8(%rbp),%r12
  689198:	c9                   	leaveq 
  689199:	48 89 dc             	mov    %rbx,%rsp
  68919c:	5b                   	pop    %rbx
  68919d:	c3                   	retq   
  68919e:	41 3b d4             	cmp    %r12d,%edx
  6891a1:	49 63 06             	movslq (%r14),%rax
  6891a4:	44 0f 4c e2          	cmovl  %edx,%r12d
  6891a8:	48 8b 15 d1 2e 4b 00 	mov    0x4b2ed1(%rip),%rdx        # b3c080 <mod_param_mp_nt_+0x40>
  6891af:	48 c1 e2 02          	shl    $0x2,%rdx
  6891b3:	48 f7 da             	neg    %rdx
  6891b6:	4c 8b 35 23 2f 4b 00 	mov    0x4b2f23(%rip),%r14        # b3c0e0 <mod_param_mp_n_+0x40>
  6891bd:	49 c1 e6 02          	shl    $0x2,%r14
  6891c1:	49 63 7d 00          	movslq 0x0(%r13),%rdi
  6891c5:	49 f7 de             	neg    %r14
  6891c8:	48 03 15 71 2e 4b 00 	add    0x4b2e71(%rip),%rdx        # b3c040 <mod_param_mp_nt_>
  6891cf:	4c 8b 1d 4a a6 4b 00 	mov    0x4ba64a(%rip),%r11        # b43820 <mod_sources_mp_nsrc_>
  6891d6:	4c 89 9d 30 f7 ff ff 	mov    %r11,-0x8d0(%rbp)
  6891dd:	4c 03 35 bc 2e 4b 00 	add    0x4b2ebc(%rip),%r14        # b3c0a0 <mod_param_mp_n_>
  6891e4:	4c 8b 9d b8 f4 ff ff 	mov    -0xb48(%rbp),%r11
  6891eb:	4c 89 b5 d8 f8 ff ff 	mov    %r14,-0x728(%rbp)
  6891f2:	44 8b 34 ba          	mov    (%rdx,%rdi,4),%r14d
  6891f6:	48 8b 15 c3 a5 4b 00 	mov    0x4ba5c3(%rip),%rdx        # b437c0 <mod_sources_mp_sources_>
  6891fd:	48 89 95 98 f8 ff ff 	mov    %rdx,-0x768(%rbp)
  689204:	49 8b 93 80 00 00 00 	mov    0x80(%r11),%rdx
  68920b:	48 0f af c2          	imul   %rdx,%rax
  68920f:	c5 7d 10 0d 69 bd 23 	vmovupd 0x23bd69(%rip),%ymm9        # 8c4f80 <var$630.126.450+0xc0>
  689216:	00 
  689217:	c5 7b 10 25 a9 ac 4b 	vmovsd 0x4baca9(%rip),%xmm12        # b43ec8 <mod_scalars_mp_lambda_>
  68921e:	00 
  68921f:	c5 7b 10 1d d9 df 23 	vmovsd 0x23dfd9(%rip),%xmm11        # 8c7200 <__STRLITPACK_199.115+0x70>
  689226:	00 
  689227:	48 8b 35 12 21 4b 00 	mov    0x4b2112(%rip),%rsi        # b3b340 <mod_scalars_mp_dt_>
  68922e:	48 89 b5 50 f7 ff ff 	mov    %rsi,-0x8b0(%rbp)
  689235:	44 2b a5 28 f7 ff ff 	sub    -0x8d8(%rbp),%r12d
  68923c:	48 8b 35 f5 52 4b 00 	mov    0x4b52f5(%rip),%rsi        # b3e538 <mod_scalars_mp_ltracersrc_+0x58>
  689243:	41 ff c4             	inc    %r12d
  689246:	48 89 b5 58 f7 ff ff 	mov    %rsi,-0x8a8(%rbp)
  68924d:	44 89 a5 c8 f9 ff ff 	mov    %r12d,-0x638(%rbp)
  689254:	48 8b b5 b0 f4 ff ff 	mov    -0xb50(%rbp),%rsi
  68925b:	4c 8b 25 1e 21 4b 00 	mov    0x4b211e(%rip),%r12        # b3b380 <mod_scalars_mp_dt_+0x40>
  689262:	48 89 85 a8 f9 ff ff 	mov    %rax,-0x658(%rbp)
  689269:	4c 89 a5 48 f7 ff ff 	mov    %r12,-0x8b8(%rbp)
  689270:	4c 8b 3d 99 52 4b 00 	mov    0x4b5299(%rip),%r15        # b3e510 <mod_scalars_mp_ltracersrc_+0x30>
  689277:	49 8b 43 68          	mov    0x68(%r11),%rax
  68927b:	4c 8b 25 ae 52 4b 00 	mov    0x4b52ae(%rip),%r12        # b3e530 <mod_scalars_mp_ltracersrc_+0x50>
  689282:	4c 89 bd e0 fb ff ff 	mov    %r15,-0x420(%rbp)
  689289:	49 89 c7             	mov    %rax,%r15
  68928c:	4c 89 a5 38 f7 ff ff 	mov    %r12,-0x8c8(%rbp)
  689293:	49 f7 df             	neg    %r15
  689296:	4c 8b 66 68          	mov    0x68(%rsi),%r12
  68929a:	4c 89 bd 18 fe ff ff 	mov    %r15,-0x1e8(%rbp)
  6892a1:	4c 8b 3e             	mov    (%rsi),%r15
  6892a4:	4c 89 a5 10 fc ff ff 	mov    %r12,-0x3f0(%rbp)
  6892ab:	4d 2b fc             	sub    %r12,%r15
  6892ae:	4c 8b 66 50          	mov    0x50(%rsi),%r12
  6892b2:	48 8b 76 38          	mov    0x38(%rsi),%rsi
  6892b6:	48 89 b5 d0 f9 ff ff 	mov    %rsi,-0x630(%rbp)
  6892bd:	48 8b b5 a8 f4 ff ff 	mov    -0xb58(%rbp),%rsi
  6892c4:	4c 89 bd 70 f4 ff ff 	mov    %r15,-0xb90(%rbp)
  6892cb:	4c 89 a5 58 f9 ff ff 	mov    %r12,-0x6a8(%rbp)
  6892d2:	4c 8b 7e 68          	mov    0x68(%rsi),%r15
  6892d6:	4c 8b 26             	mov    (%rsi),%r12
  6892d9:	4c 89 bd e0 fa ff ff 	mov    %r15,-0x520(%rbp)
  6892e0:	4d 2b e7             	sub    %r15,%r12
  6892e3:	4c 8b 7e 50          	mov    0x50(%rsi),%r15
  6892e7:	4c 89 bd 60 f9 ff ff 	mov    %r15,-0x6a0(%rbp)
  6892ee:	4c 8b bd a0 f4 ff ff 	mov    -0xb60(%rbp),%r15
  6892f5:	4c 89 a5 98 f9 ff ff 	mov    %r12,-0x668(%rbp)
  6892fc:	44 89 b5 00 fc ff ff 	mov    %r14d,-0x400(%rbp)
  689303:	4d 8b 27             	mov    (%r15),%r12
  689306:	4c 89 a5 80 f9 ff ff 	mov    %r12,-0x680(%rbp)
  68930d:	4d 8b a7 80 00 00 00 	mov    0x80(%r15),%r12
  689314:	4c 89 a5 e8 f9 ff ff 	mov    %r12,-0x618(%rbp)
  68931b:	4d 8b 67 68          	mov    0x68(%r15),%r12
  68931f:	4c 89 a5 d8 fa ff ff 	mov    %r12,-0x528(%rbp)
  689326:	4d 8b 67 50          	mov    0x50(%r15),%r12
  68932a:	4c 89 a5 48 f9 ff ff 	mov    %r12,-0x6b8(%rbp)
  689331:	4c 8b 25 a8 82 4b 00 	mov    0x4b82a8(%rip),%r12        # b415e0 <mod_scalars_mp_lwsrc_>
  689338:	4c 89 a5 88 f7 ff ff 	mov    %r12,-0x878(%rbp)
  68933f:	4c 8b a5 98 f4 ff ff 	mov    -0xb68(%rbp),%r12
  689346:	4d 8b 7f 38          	mov    0x38(%r15),%r15
  68934a:	4c 89 bd d8 f9 ff ff 	mov    %r15,-0x628(%rbp)
  689351:	4c 8b 3d c8 82 4b 00 	mov    0x4b82c8(%rip),%r15        # b41620 <mod_scalars_mp_lwsrc_+0x40>
  689358:	4c 89 bd 90 f7 ff ff 	mov    %r15,-0x870(%rbp)
  68935f:	4d 8b 3c 24          	mov    (%r12),%r15
  689363:	4c 89 bd 80 f7 ff ff 	mov    %r15,-0x880(%rbp)
  68936a:	4d 8b 7c 24 50       	mov    0x50(%r12),%r15
  68936f:	4c 89 bd a0 f7 ff ff 	mov    %r15,-0x860(%rbp)
  689376:	4c 8b bd 90 f4 ff ff 	mov    -0xb70(%rbp),%r15
  68937d:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  689382:	4c 89 a5 f0 fb ff ff 	mov    %r12,-0x410(%rbp)
  689389:	4d 8b 27             	mov    (%r15),%r12
  68938c:	4c 89 a5 78 f7 ff ff 	mov    %r12,-0x888(%rbp)
  689393:	4d 8b 67 50          	mov    0x50(%r15),%r12
  689397:	4c 89 a5 a8 f7 ff ff 	mov    %r12,-0x858(%rbp)
  68939e:	4c 8b a5 88 f4 ff ff 	mov    -0xb78(%rbp),%r12
  6893a5:	4d 8b 7f 38          	mov    0x38(%r15),%r15
  6893a9:	4c 89 bd f8 fb ff ff 	mov    %r15,-0x408(%rbp)
  6893b0:	4d 8b 3c 24          	mov    (%r12),%r15
  6893b4:	4c 89 bd b8 f7 ff ff 	mov    %r15,-0x848(%rbp)
  6893bb:	4d 8b 7c 24 68       	mov    0x68(%r12),%r15
  6893c0:	4c 89 bd 48 fc ff ff 	mov    %r15,-0x3b8(%rbp)
  6893c7:	4d 8b 7c 24 50       	mov    0x50(%r12),%r15
  6893cc:	4d 63 f6             	movslq %r14d,%r14
  6893cf:	4c 89 bd 98 f7 ff ff 	mov    %r15,-0x868(%rbp)
  6893d6:	4c 89 b5 e8 fb ff ff 	mov    %r14,-0x418(%rbp)
  6893dd:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  6893e4:	44 8b b5 b8 fd ff ff 	mov    -0x248(%rbp),%r14d
  6893eb:	45 2b fe             	sub    %r14d,%r15d
  6893ee:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  6893f3:	41 ff c7             	inc    %r15d
  6893f6:	4d 63 f6             	movslq %r14d,%r14
  6893f9:	4c 89 a5 d0 fd ff ff 	mov    %r12,-0x230(%rbp)
  689400:	4d 89 f4             	mov    %r14,%r12
  689403:	48 8b 76 38          	mov    0x38(%rsi),%rsi
  689407:	4c 0f af e6          	imul   %rsi,%r12
  68940b:	44 8b 0d 7e b6 4f 00 	mov    0x4fb67e(%rip),%r9d        # b84a90 <mod_param_mp_nat_>
  689412:	48 89 bd f8 fa ff ff 	mov    %rdi,-0x508(%rbp)
  689419:	44 89 8d c0 fb ff ff 	mov    %r9d,-0x440(%rbp)
  689420:	48 8b 0d 39 a4 4b 00 	mov    0x4ba439(%rip),%rcx        # b43860 <mod_sources_mp_nsrc_+0x40>
  689427:	48 8b 3d d2 a3 4b 00 	mov    0x4ba3d2(%rip),%rdi        # b43800 <mod_sources_mp_sources_+0x40>
  68942e:	4c 8b 0d ab 50 4b 00 	mov    0x4b50ab(%rip),%r9        # b3e4e0 <mod_scalars_mp_ltracersrc_>
  689435:	48 89 b5 e0 f9 ff ff 	mov    %rsi,-0x620(%rbp)
  68943c:	4c 89 f6             	mov    %r14,%rsi
  68943f:	48 89 8d 60 f7 ff ff 	mov    %rcx,-0x8a0(%rbp)
  689446:	48 89 bd 68 f7 ff ff 	mov    %rdi,-0x898(%rbp)
  68944d:	4c 89 8d 70 f7 ff ff 	mov    %r9,-0x890(%rbp)
  689454:	49 8b 0b             	mov    (%r11),%rcx
  689457:	4d 8b 8b 98 00 00 00 	mov    0x98(%r11),%r9
  68945e:	49 8b 7b 50          	mov    0x50(%r11),%rdi
  689462:	4d 8b 5b 38          	mov    0x38(%r11),%r11
  689466:	49 0f af f3          	imul   %r11,%rsi
  68946a:	4c 8b 85 18 f7 ff ff 	mov    -0x8e8(%rbp),%r8
  689471:	4c 8b 95 20 f7 ff ff 	mov    -0x8e0(%rbp),%r10
  689478:	4c 89 9d e0 fd ff ff 	mov    %r11,-0x220(%rbp)
  68947f:	4d 2b d0             	sub    %r8,%r10
  689482:	49 c1 e0 03          	shl    $0x3,%r8
  689486:	4e 8d 1c f5 00 00 00 	lea    0x0(,%r14,8),%r11
  68948d:	00 
  68948e:	44 89 bd 70 fd ff ff 	mov    %r15d,-0x290(%rbp)
  689495:	41 d1 ef             	shr    %r15d
  689498:	4c 89 9d 48 f8 ff ff 	mov    %r11,-0x7b8(%rbp)
  68949f:	4d 2b d8             	sub    %r8,%r11
  6894a2:	44 89 bd 30 fd ff ff 	mov    %r15d,-0x2d0(%rbp)
  6894a9:	4c 89 bd f8 fc ff ff 	mov    %r15,-0x308(%rbp)
  6894b0:	4c 89 a5 90 f9 ff ff 	mov    %r12,-0x670(%rbp)
  6894b7:	4c 8b bd 90 f5 ff ff 	mov    -0xa70(%rbp),%r15
  6894be:	4c 8b a5 f0 f5 ff ff 	mov    -0xa10(%rbp),%r12
  6894c5:	4c 89 85 18 f7 ff ff 	mov    %r8,-0x8e8(%rbp)
  6894cc:	4c 8b 2d 4d 50 4b 00 	mov    0x4b504d(%rip),%r13        # b3e520 <mod_scalars_mp_ltracersrc_+0x40>
  6894d3:	4f 8d 04 3b          	lea    (%r11,%r15,1),%r8
  6894d7:	4c 89 85 f0 f8 ff ff 	mov    %r8,-0x710(%rbp)
  6894de:	4f 8d 04 23          	lea    (%r11,%r12,1),%r8
  6894e2:	4c 89 85 00 fd ff ff 	mov    %r8,-0x300(%rbp)
  6894e9:	4d 89 d0             	mov    %r10,%r8
  6894ec:	49 c1 e0 04          	shl    $0x4,%r8
  6894f0:	4c 89 ad 40 f7 ff ff 	mov    %r13,-0x8c0(%rbp)
  6894f7:	4d 03 c3             	add    %r11,%r8
  6894fa:	4c 8b ad d0 f4 ff ff 	mov    -0xb30(%rbp),%r13
  689501:	48 89 b5 70 f9 ff ff 	mov    %rsi,-0x690(%rbp)
  689508:	48 8b b5 30 f5 ff ff 	mov    -0xad0(%rbp),%rsi
  68950f:	4c 89 b5 10 f8 ff ff 	mov    %r14,-0x7f0(%rbp)
  689516:	4f 8d 34 2b          	lea    (%r11,%r13,1),%r14
  68951a:	4c 89 b5 c8 fd ff ff 	mov    %r14,-0x238(%rbp)
  689521:	4c 89 ad 38 f8 ff ff 	mov    %r13,-0x7c8(%rbp)
  689528:	4d 8d 34 33          	lea    (%r11,%rsi,1),%r14
  68952c:	4c 89 b5 e8 f8 ff ff 	mov    %r14,-0x718(%rbp)
  689533:	4f 8d 34 d3          	lea    (%r11,%r10,8),%r14
  689537:	4c 89 8d c8 fb ff ff 	mov    %r9,-0x438(%rbp)
  68953e:	4f 8d 1c 07          	lea    (%r15,%r8,1),%r11
  689542:	4d 03 fe             	add    %r14,%r15
  689545:	4c 89 bd 00 fb ff ff 	mov    %r15,-0x500(%rbp)
  68954c:	4f 8d 3c 04          	lea    (%r12,%r8,1),%r15
  689550:	4d 03 e6             	add    %r14,%r12
  689553:	4c 89 a5 b0 fd ff ff 	mov    %r12,-0x250(%rbp)
  68955a:	4e 8d 24 06          	lea    (%rsi,%r8,1),%r12
  68955e:	4c 89 a5 90 fd ff ff 	mov    %r12,-0x270(%rbp)
  689565:	4d 03 c5             	add    %r13,%r8
  689568:	4c 63 a5 28 f7 ff ff 	movslq -0x8d8(%rbp),%r12
  68956f:	49 03 f6             	add    %r14,%rsi
  689572:	4d 03 f5             	add    %r13,%r14
  689575:	4d 89 e5             	mov    %r12,%r13
  689578:	4c 0f af ad 60 f9 ff 	imul   -0x6a0(%rbp),%r13
  68957f:	ff 
  689580:	4c 89 b5 d8 fd ff ff 	mov    %r14,-0x228(%rbp)
  689587:	49 89 ce             	mov    %rcx,%r14
  68958a:	4d 2b f1             	sub    %r9,%r14
  68958d:	4c 2b ca             	sub    %rdx,%r9
  689590:	4c 89 85 f0 fa ff ff 	mov    %r8,-0x510(%rbp)
  689597:	4d 89 e0             	mov    %r12,%r8
  68959a:	4c 89 a5 00 f8 ff ff 	mov    %r12,-0x800(%rbp)
  6895a1:	4c 0f af e7          	imul   %rdi,%r12
  6895a5:	4c 0f af 85 58 f9 ff 	imul   -0x6a8(%rbp),%r8
  6895ac:	ff 
  6895ad:	4c 89 9d 98 fd ff ff 	mov    %r11,-0x268(%rbp)
  6895b4:	4c 89 8d b0 f7 ff ff 	mov    %r9,-0x850(%rbp)
  6895bb:	4c 8b 9d 08 f7 ff ff 	mov    -0x8f8(%rbp),%r11
  6895c2:	4c 89 b5 c8 f7 ff ff 	mov    %r14,-0x838(%rbp)
  6895c9:	4d 03 f1             	add    %r9,%r14
  6895cc:	4c 0f af df          	imul   %rdi,%r11
  6895d0:	4c 8b 8d e0 fd ff ff 	mov    -0x220(%rbp),%r9
  6895d7:	4c 89 ad 80 f4 ff ff 	mov    %r13,-0xb80(%rbp)
  6895de:	4c 8b ad 10 f7 ff ff 	mov    -0x8f0(%rbp),%r13
  6895e5:	4d 0f af e9          	imul   %r9,%r13
  6895e9:	48 89 bd 68 f9 ff ff 	mov    %rdi,-0x698(%rbp)
  6895f0:	4c 89 e7             	mov    %r12,%rdi
  6895f3:	49 2b fb             	sub    %r11,%rdi
  6895f6:	4c 89 bd 88 fd ff ff 	mov    %r15,-0x278(%rbp)
  6895fd:	4e 8d 3c 18          	lea    (%rax,%r11,1),%r15
  689601:	4c 89 85 78 f4 ff ff 	mov    %r8,-0xb88(%rbp)
  689608:	49 89 f8             	mov    %rdi,%r8
  68960b:	4c 89 a5 20 f8 ff ff 	mov    %r12,-0x7e0(%rbp)
  689612:	4d 2b e5             	sub    %r13,%r12
  689615:	4c 89 bd d8 f7 ff ff 	mov    %r15,-0x828(%rbp)
  68961c:	49 f7 d8             	neg    %r8
  68961f:	4d 2b fc             	sub    %r12,%r15
  689622:	49 f7 d8             	neg    %r8
  689625:	49 f7 df             	neg    %r15
  689628:	4d 03 c6             	add    %r14,%r8
  68962b:	4c 89 b5 e8 f7 ff ff 	mov    %r14,-0x818(%rbp)
  689632:	4d 03 fe             	add    %r14,%r15
  689635:	4c 8b b5 a8 f9 ff ff 	mov    -0x658(%rbp),%r14
  68963c:	4c 89 95 20 f7 ff ff 	mov    %r10,-0x8e0(%rbp)
  689643:	4e 8d 14 d5 08 00 00 	lea    0x8(,%r10,8),%r10
  68964a:	00 
  68964b:	48 89 b5 a8 fd ff ff 	mov    %rsi,-0x258(%rbp)
  689652:	48 89 c6             	mov    %rax,%rsi
  689655:	4c 89 95 a0 fd ff ff 	mov    %r10,-0x260(%rbp)
  68965c:	49 f7 da             	neg    %r10
  68965f:	4c 89 95 20 fe ff ff 	mov    %r10,-0x1e0(%rbp)
  689666:	49 2b f3             	sub    %r11,%rsi
  689669:	4c 89 9d e0 f7 ff ff 	mov    %r11,-0x820(%rbp)
  689670:	4d 89 eb             	mov    %r13,%r11
  689673:	4c 8b 95 70 f9 ff ff 	mov    -0x690(%rbp),%r10
  68967a:	4d 03 e9             	add    %r9,%r13
  68967d:	4d 2b da             	sub    %r10,%r11
  689680:	4d 03 ce             	add    %r14,%r9
  689683:	49 f7 d9             	neg    %r9
  689686:	4d 03 cb             	add    %r11,%r9
  689689:	49 f7 d9             	neg    %r9
  68968c:	4d 03 c8             	add    %r8,%r9
  68968f:	4c 89 8d 00 f9 ff ff 	mov    %r9,-0x700(%rbp)
  689696:	4f 8d 0c 32          	lea    (%r10,%r14,1),%r9
  68969a:	4d 2b e9             	sub    %r9,%r13
  68969d:	4d 03 cc             	add    %r12,%r9
  6896a0:	4d 2b c5             	sub    %r13,%r8
  6896a3:	4c 89 85 08 f9 ff ff 	mov    %r8,-0x6f8(%rbp)
  6896aa:	4c 8d 04 02          	lea    (%rdx,%rax,1),%r8
  6896ae:	48 89 85 78 fd ff ff 	mov    %rax,-0x288(%rbp)
  6896b5:	4c 89 c0             	mov    %r8,%rax
  6896b8:	48 2b c7             	sub    %rdi,%rax
  6896bb:	48 89 95 28 f8 ff ff 	mov    %rdx,-0x7d8(%rbp)
  6896c2:	4c 89 c2             	mov    %r8,%rdx
  6896c5:	48 f7 d8             	neg    %rax
  6896c8:	48 2b d6             	sub    %rsi,%rdx
  6896cb:	48 03 c1             	add    %rcx,%rax
  6896ce:	48 f7 da             	neg    %rdx
  6896d1:	49 2b c3             	sub    %r11,%rax
  6896d4:	48 03 d1             	add    %rcx,%rdx
  6896d7:	49 03 c6             	add    %r14,%rax
  6896da:	49 03 d1             	add    %r9,%rdx
  6896dd:	4c 89 bd f8 f8 ff ff 	mov    %r15,-0x708(%rbp)
  6896e4:	48 89 85 d0 f7 ff ff 	mov    %rax,-0x830(%rbp)
  6896eb:	48 63 85 c0 fd ff ff 	movslq -0x240(%rbp),%rax
  6896f2:	4c 8b bd 10 f8 ff ff 	mov    -0x7f0(%rbp),%r15
  6896f9:	49 2b c7             	sub    %r15,%rax
  6896fc:	48 89 95 30 f9 ff ff 	mov    %rdx,-0x6d0(%rbp)
  689703:	48 ff c0             	inc    %rax
  689706:	48 8b 95 10 f7 ff ff 	mov    -0x8f0(%rbp),%rdx
  68970d:	48 89 85 60 fd ff ff 	mov    %rax,-0x2a0(%rbp)
  689714:	89 85 c0 f7 ff ff    	mov    %eax,-0x840(%rbp)
  68971a:	83 e0 fc             	and    $0xfffffffc,%eax
  68971d:	4c 8d 14 d5 00 00 00 	lea    0x0(,%rdx,8),%r10
  689724:	00 
  689725:	48 63 c0             	movslq %eax,%rax
  689728:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
  68972f:	48 8b 85 48 f8 ff ff 	mov    -0x7b8(%rbp),%rax
  689736:	49 2b c2             	sub    %r10,%rax
  689739:	48 89 8d 40 f8 ff ff 	mov    %rcx,-0x7c0(%rbp)
  689740:	48 89 bd 30 f8 ff ff 	mov    %rdi,-0x7d0(%rbp)
  689747:	4c 89 a5 f8 f7 ff ff 	mov    %r12,-0x808(%rbp)
  68974e:	4c 8b ad e0 fa ff ff 	mov    -0x520(%rbp),%r13
  689755:	4c 8d 0c 08          	lea    (%rax,%rcx,1),%r9
  689759:	4d 2b c8             	sub    %r8,%r9
  68975c:	48 8b 8d 20 f8 ff ff 	mov    -0x7e0(%rbp),%rcx
  689763:	48 89 b5 18 f8 ff ff 	mov    %rsi,-0x7e8(%rbp)
  68976a:	4c 8b 95 80 f4 ff ff 	mov    -0xb80(%rbp),%r10
  689771:	4c 89 9d 08 f8 ff ff 	mov    %r11,-0x7f8(%rbp)
  689778:	49 03 f9             	add    %r9,%rdi
  68977b:	49 03 fe             	add    %r14,%rdi
  68977e:	4f 8d 5c 2d 00       	lea    0x0(%r13,%r13,1),%r11
  689783:	48 89 bd f0 f7 ff ff 	mov    %rdi,-0x810(%rbp)
  68978a:	4a 8d 3c 31          	lea    (%rcx,%r14,1),%rdi
  68978e:	48 8b 8d 08 f7 ff ff 	mov    -0x8f8(%rbp),%rcx
  689795:	49 89 cc             	mov    %rcx,%r12
  689798:	4c 0f af a5 60 f9 ff 	imul   -0x6a0(%rbp),%r12
  68979f:	ff 
  6897a0:	48 03 fe             	add    %rsi,%rdi
  6897a3:	4d 2b dc             	sub    %r12,%r11
  6897a6:	4c 03 cf             	add    %rdi,%r9
  6897a9:	4c 89 ef             	mov    %r13,%rdi
  6897ac:	4c 89 8d 40 f9 ff ff 	mov    %r9,-0x6c0(%rbp)
  6897b3:	49 2b fc             	sub    %r12,%rdi
  6897b6:	4c 8b 8d 98 f9 ff ff 	mov    -0x668(%rbp),%r9
  6897bd:	4c 8b ad e8 f9 ff ff 	mov    -0x618(%rbp),%r13
  6897c4:	4c 8b a5 d8 fa ff ff 	mov    -0x528(%rbp),%r12
  6897cb:	c7 85 e0 f8 ff ff 00 	movl   $0x0,-0x720(%rbp)
  6897d2:	00 00 00 
  6897d5:	4e 8d 04 08          	lea    (%rax,%r9,1),%r8
  6897d9:	48 89 85 48 f8 ff ff 	mov    %rax,-0x7b8(%rbp)
  6897e0:	4a 8d 34 07          	lea    (%rdi,%r8,1),%rsi
  6897e4:	49 03 f2             	add    %r10,%rsi
  6897e7:	4d 03 c3             	add    %r11,%r8
  6897ea:	48 89 b5 38 f9 ff ff 	mov    %rsi,-0x6c8(%rbp)
  6897f1:	48 89 d6             	mov    %rdx,%rsi
  6897f4:	48 0f af b5 e0 f9 ff 	imul   -0x620(%rbp),%rsi
  6897fb:	ff 
  6897fc:	4d 03 c2             	add    %r10,%r8
  6897ff:	4c 2b d6             	sub    %rsi,%r10
  689802:	48 89 ce             	mov    %rcx,%rsi
  689805:	48 f7 da             	neg    %rdx
  689808:	48 2b b5 00 f8 ff ff 	sub    -0x800(%rbp),%rsi
  68980f:	49 03 d7             	add    %r15,%rdx
  689812:	48 0f af b5 48 f9 ff 	imul   -0x6b8(%rbp),%rsi
  689819:	ff 
  68981a:	48 0f af 8d 58 f9 ff 	imul   -0x6a8(%rbp),%rcx
  689821:	ff 
  689822:	49 03 f9             	add    %r9,%rdi
  689825:	4d 03 cb             	add    %r11,%r9
  689828:	49 89 d3             	mov    %rdx,%r11
  68982b:	4d 03 ca             	add    %r10,%r9
  68982e:	4c 0f af 9d d8 f9 ff 	imul   -0x628(%rbp),%r11
  689835:	ff 
  689836:	48 0f af 95 d0 f9 ff 	imul   -0x630(%rbp),%rdx
  68983d:	ff 
  68983e:	49 03 fa             	add    %r10,%rdi
  689841:	48 f7 d9             	neg    %rcx
  689844:	4c 8b 95 90 f9 ff ff 	mov    -0x670(%rbp),%r10
  68984b:	4d 03 ca             	add    %r10,%r9
  68984e:	4c 03 d7             	add    %rdi,%r10
  689851:	48 8b bd 80 f9 ff ff 	mov    -0x680(%rbp),%rdi
  689858:	49 89 ff             	mov    %rdi,%r15
  68985b:	4d 2b fd             	sub    %r13,%r15
  68985e:	4d 2b ec             	sub    %r12,%r13
  689861:	4d 03 fc             	add    %r12,%r15
  689864:	48 03 f8             	add    %rax,%rdi
  689867:	4c 2b fe             	sub    %rsi,%r15
  68986a:	49 03 f5             	add    %r13,%rsi
  68986d:	4d 03 df             	add    %r15,%r11
  689870:	48 2b fe             	sub    %rsi,%rdi
  689873:	4c 8b bd 70 f4 ff ff 	mov    -0xb90(%rbp),%r15
  68987a:	48 03 8d 10 fc ff ff 	add    -0x3f0(%rbp),%rcx
  689881:	4c 89 9d 50 f9 ff ff 	mov    %r11,-0x6b0(%rbp)
  689888:	4e 8d 1c 38          	lea    (%rax,%r15,1),%r11
  68988c:	4c 03 f9             	add    %rcx,%r15
  68988f:	4c 03 d9             	add    %rcx,%r11
  689892:	48 8b 8d 78 f4 ff ff 	mov    -0xb88(%rbp),%rcx
  689899:	4c 03 f9             	add    %rcx,%r15
  68989c:	49 03 d7             	add    %r15,%rdx
  68989f:	4c 03 d9             	add    %rcx,%r11
  6898a2:	4c 89 9d 78 f9 ff ff 	mov    %r11,-0x688(%rbp)
  6898a9:	33 c9                	xor    %ecx,%ecx
  6898ab:	c4 41 2d 57 d2       	vxorpd %ymm10,%ymm10,%ymm10
  6898b0:	44 8b a5 c8 f9 ff ff 	mov    -0x638(%rbp),%r12d
  6898b7:	4c 8b ad a8 fd ff ff 	mov    -0x258(%rbp),%r13
  6898be:	4c 8b bd b0 fd ff ff 	mov    -0x250(%rbp),%r15
  6898c5:	4c 8b 9d 00 fb ff ff 	mov    -0x500(%rbp),%r11
  6898cc:	8b b5 e0 f8 ff ff    	mov    -0x720(%rbp),%esi
  6898d2:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  6898d9:	48 89 bd 80 f9 ff ff 	mov    %rdi,-0x680(%rbp)
  6898e0:	48 89 95 88 f9 ff ff 	mov    %rdx,-0x678(%rbp)
  6898e7:	4c 89 95 90 f9 ff ff 	mov    %r10,-0x670(%rbp)
  6898ee:	4c 89 8d 98 f9 ff ff 	mov    %r9,-0x668(%rbp)
  6898f5:	4c 89 85 a0 f9 ff ff 	mov    %r8,-0x660(%rbp)
  6898fc:	33 d2                	xor    %edx,%edx
  6898fe:	48 83 bd e8 fb ff ff 	cmpq   $0x0,-0x418(%rbp)
  689905:	00 
  689906:	0f 8e 51 5e 00 00    	jle    68f75d <step3d_t_mod_mp_step3d_t_tile_+0x8aed>
  68990c:	4c 8b bd d8 f8 ff ff 	mov    -0x728(%rbp),%r15
  689913:	4c 8b a5 f8 fa ff ff 	mov    -0x508(%rbp),%r12
  68991a:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
  68991f:	4c 8b 8d 60 f7 ff ff 	mov    -0x8a0(%rbp),%r9
  689926:	4c 8b ad 40 f7 ff ff 	mov    -0x8c0(%rbp),%r13
  68992d:	47 8b 04 a7          	mov    (%r15,%r12,4),%r8d
  689931:	4c 8b a5 10 f8 ff ff 	mov    -0x7f0(%rbp),%r12
  689938:	4a 8d 3c 8d 00 00 00 	lea    0x0(,%r9,4),%rdi
  68993f:	00 
  689940:	4d 89 e1             	mov    %r12,%r9
  689943:	48 f7 df             	neg    %rdi
  689946:	4c 0f af 8d f8 fb ff 	imul   -0x408(%rbp),%r9
  68994d:	ff 
  68994e:	c5 fd 10 35 ca b8 23 	vmovupd 0x23b8ca(%rip),%ymm6        # 8c5220 <var$630.126.450+0x360>
  689955:	00 
  689956:	c5 f9 10 2d 42 d0 23 	vmovupd 0x23d042(%rip),%xmm5        # 8c69a0 <__STRLITPACK_19.34+0x10>
  68995d:	00 
  68995e:	c5 fb 10 25 b2 d8 23 	vmovsd 0x23d8b2(%rip),%xmm4        # 8c7218 <__STRLITPACK_199.115+0x88>
  689965:	00 
  689966:	c5 f9 10 3d 52 d0 23 	vmovupd 0x23d052(%rip),%xmm7        # 8c69c0 <__STRLITPACK_19.34+0x30>
  68996d:	00 
  68996e:	c5 f9 10 1d 5a d0 23 	vmovupd 0x23d05a(%rip),%xmm3        # 8c69d0 <__STRLITPACK_19.34+0x40>
  689975:	00 
  689976:	48 03 bd 30 f7 ff ff 	add    -0x8d0(%rbp),%rdi
  68997d:	4e 8d 34 ad 00 00 00 	lea    0x0(,%r13,4),%r14
  689984:	00 
  689985:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  68998c:	45 8d 58 fe          	lea    -0x2(%r8),%r11d
  689990:	48 8b 85 48 f7 ff ff 	mov    -0x8b8(%rbp),%rax
  689997:	48 89 bd c0 f8 ff ff 	mov    %rdi,-0x740(%rbp)
  68999e:	48 8b bd 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdi
  6899a5:	48 2b bd 18 f7 ff ff 	sub    -0x8e8(%rbp),%rdi
  6899ac:	4c 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%r10
  6899b3:	00 
  6899b4:	4c 8b ad 20 f7 ff ff 	mov    -0x8e0(%rbp),%r13
  6899bb:	49 f7 da             	neg    %r10
  6899be:	4d 63 c0             	movslq %r8d,%r8
  6899c1:	4c 89 e0             	mov    %r12,%rax
  6899c4:	89 b5 e0 f8 ff ff    	mov    %esi,-0x720(%rbp)
  6899ca:	48 8b b5 70 f7 ff ff 	mov    -0x890(%rbp),%rsi
  6899d1:	4c 89 b5 a8 fb ff ff 	mov    %r14,-0x458(%rbp)
  6899d8:	49 2b f6             	sub    %r14,%rsi
  6899db:	4c 03 95 50 f7 ff ff 	add    -0x8b0(%rbp),%r10
  6899e2:	4e 8d 34 ef          	lea    (%rdi,%r13,8),%r14
  6899e6:	4c 89 b5 e8 f6 ff ff 	mov    %r14,-0x918(%rbp)
  6899ed:	4c 8b b5 00 f8 ff ff 	mov    -0x800(%rbp),%r14
  6899f4:	4c 89 f7             	mov    %r14,%rdi
  6899f7:	4c 89 8d 90 f4 ff ff 	mov    %r9,-0xb70(%rbp)
  6899fe:	4d 89 f1             	mov    %r14,%r9
  689a01:	4c 89 85 80 fd ff ff 	mov    %r8,-0x280(%rbp)
  689a08:	4c 8b bd a0 fd ff ff 	mov    -0x260(%rbp),%r15
  689a0f:	4c 89 95 60 fb ff ff 	mov    %r10,-0x4a0(%rbp)
  689a16:	4d 8d 50 ff          	lea    -0x1(%r8),%r10
  689a1a:	48 89 b5 b0 f8 ff ff 	mov    %rsi,-0x750(%rbp)
  689a21:	4c 89 fe             	mov    %r15,%rsi
  689a24:	4d 0f af f8          	imul   %r8,%r15
  689a28:	49 0f af f2          	imul   %r10,%rsi
  689a2c:	48 0f af 85 f0 fb ff 	imul   -0x410(%rbp),%rax
  689a33:	ff 
  689a34:	c5 fd 10 05 04 b8 23 	vmovupd 0x23b804(%rip),%ymm0        # 8c5240 <var$630.126.450+0x380>
  689a3b:	00 
  689a3c:	c5 fb 10 15 1c db 23 	vmovsd 0x23db1c(%rip),%xmm2        # 8c7560 <__STRLITPACK_199.115+0x3d0>
  689a43:	00 
  689a44:	c5 fb 10 0d 1c db 23 	vmovsd 0x23db1c(%rip),%xmm1        # 8c7568 <__STRLITPACK_199.115+0x3d8>
  689a4b:	00 
  689a4c:	c5 7b 11 a5 d0 f8 ff 	vmovsd %xmm12,-0x730(%rbp)
  689a53:	ff 
  689a54:	4c 8b 85 a8 f7 ff ff 	mov    -0x858(%rbp),%r8
  689a5b:	4d 0f af c8          	imul   %r8,%r9
  689a5f:	4c 0f af c1          	imul   %rcx,%r8
  689a63:	4c 8b ad a0 f7 ff ff 	mov    -0x860(%rbp),%r13
  689a6a:	49 0f af fd          	imul   %r13,%rdi
  689a6e:	4c 0f af e9          	imul   %rcx,%r13
  689a72:	4c 89 85 40 fb ff ff 	mov    %r8,-0x4c0(%rbp)
  689a79:	4c 8b 85 68 f9 ff ff 	mov    -0x698(%rbp),%r8
  689a80:	4c 0f af c1          	imul   %rcx,%r8
  689a84:	48 89 85 88 f4 ff ff 	mov    %rax,-0xb78(%rbp)
  689a8b:	48 8b 85 c8 fd ff ff 	mov    -0x238(%rbp),%rax
  689a92:	48 03 f0             	add    %rax,%rsi
  689a95:	48 89 b5 08 fe ff ff 	mov    %rsi,-0x1f8(%rbp)
  689a9c:	4c 03 f8             	add    %rax,%r15
  689a9f:	48 8b b5 98 f7 ff ff 	mov    -0x868(%rbp),%rsi
  689aa6:	4c 89 ad 48 fb ff ff 	mov    %r13,-0x4b8(%rbp)
  689aad:	49 89 f5             	mov    %rsi,%r13
  689ab0:	48 89 8d b0 f9 ff ff 	mov    %rcx,-0x650(%rbp)
  689ab7:	4c 0f af e9          	imul   %rcx,%r13
  689abb:	4c 0f af f6          	imul   %rsi,%r14
  689abf:	48 8b 8d 30 f9 ff ff 	mov    -0x6d0(%rbp),%rcx
  689ac6:	4c 89 bd 00 fe ff ff 	mov    %r15,-0x200(%rbp)
  689acd:	4c 89 8d a0 f4 ff ff 	mov    %r9,-0xb60(%rbp)
  689ad4:	44 8b 8d c0 f7 ff ff 	mov    -0x840(%rbp),%r9d
  689adb:	4a 8d 04 01          	lea    (%rcx,%r8,1),%rax
  689adf:	48 8b 8d 40 f9 ff ff 	mov    -0x6c0(%rbp),%rcx
  689ae6:	41 83 e1 fe          	and    $0xfffffffe,%r9d
  689aea:	4d 63 c9             	movslq %r9d,%r9
  689aed:	4c 89 8d f8 fd ff ff 	mov    %r9,-0x208(%rbp)
  689af4:	4c 8b 8d 48 fc ff ff 	mov    -0x3b8(%rbp),%r9
  689afb:	4e 8d 3c 01          	lea    (%rcx,%r8,1),%r15
  689aff:	4c 89 bd b0 fa ff ff 	mov    %r15,-0x550(%rbp)
  689b06:	4c 8b bd 08 f7 ff ff 	mov    -0x8f8(%rbp),%r15
  689b0d:	4c 0f af fe          	imul   %rsi,%r15
  689b11:	48 89 85 b8 fa ff ff 	mov    %rax,-0x548(%rbp)
  689b18:	4b 8d 0c 09          	lea    (%r9,%r9,1),%rcx
  689b1c:	48 8b 85 b8 f7 ff ff 	mov    -0x848(%rbp),%rax
  689b23:	49 2b cf             	sub    %r15,%rcx
  689b26:	48 8b b5 48 f8 ff ff 	mov    -0x7b8(%rbp),%rsi
  689b2d:	48 89 95 b8 fb ff ff 	mov    %rdx,-0x448(%rbp)
  689b34:	48 8b 95 e0 fb ff ff 	mov    -0x420(%rbp),%rdx
  689b3b:	48 d1 ea             	shr    %rdx
  689b3e:	48 03 f0             	add    %rax,%rsi
  689b41:	48 03 f1             	add    %rcx,%rsi
  689b44:	4c 89 f1             	mov    %r14,%rcx
  689b47:	49 03 f6             	add    %r14,%rsi
  689b4a:	49 f7 de             	neg    %r14
  689b4d:	48 89 95 b0 fb ff ff 	mov    %rdx,-0x450(%rbp)
  689b54:	49 03 f5             	add    %r13,%rsi
  689b57:	48 8b 95 d0 fd ff ff 	mov    -0x230(%rbp),%rdx
  689b5e:	4d 03 f7             	add    %r15,%r14
  689b61:	48 89 b5 70 f4 ff ff 	mov    %rsi,-0xb90(%rbp)
  689b68:	49 f7 de             	neg    %r14
  689b6b:	48 8b b5 10 f7 ff ff 	mov    -0x8f0(%rbp),%rsi
  689b72:	4c 0f af e2          	imul   %rdx,%r12
  689b76:	48 0f af f2          	imul   %rdx,%rsi
  689b7a:	4d 63 db             	movslq %r11d,%r11
  689b7d:	48 2b ce             	sub    %rsi,%rcx
  689b80:	4c 89 9d d0 fa ff ff 	mov    %r11,-0x530(%rbp)
  689b87:	49 2b f4             	sub    %r12,%rsi
  689b8a:	48 89 bd a8 f4 ff ff 	mov    %rdi,-0xb58(%rbp)
  689b91:	4c 89 a5 98 f4 ff ff 	mov    %r12,-0xb68(%rbp)
  689b98:	48 8b bd 08 f8 ff ff 	mov    -0x7f8(%rbp),%rdi
  689b9f:	4d 8d 5b ff          	lea    -0x1(%r11),%r11
  689ba3:	4c 89 9d 50 fc ff ff 	mov    %r11,-0x3b0(%rbp)
  689baa:	4e 8d 1c 48          	lea    (%rax,%r9,2),%r11
  689bae:	4d 0f af ca          	imul   %r10,%r9
  689bb2:	4d 03 f3             	add    %r11,%r14
  689bb5:	4d 2b df             	sub    %r15,%r11
  689bb8:	4c 2b f6             	sub    %rsi,%r14
  689bbb:	4c 03 d9             	add    %rcx,%r11
  689bbe:	4d 03 dc             	add    %r12,%r11
  689bc1:	49 2b c7             	sub    %r15,%rax
  689bc4:	4d 03 dd             	add    %r13,%r11
  689bc7:	48 03 c1             	add    %rcx,%rax
  689bca:	4d 03 cc             	add    %r12,%r9
  689bcd:	4c 89 9d f0 fc ff ff 	mov    %r11,-0x310(%rbp)
  689bd4:	49 8d 14 56          	lea    (%r14,%rdx,2),%rdx
  689bd8:	49 03 d5             	add    %r13,%rdx
  689bdb:	49 03 c1             	add    %r9,%rax
  689bde:	48 89 95 e8 fc ff ff 	mov    %rdx,-0x318(%rbp)
  689be5:	49 03 c5             	add    %r13,%rax
  689be8:	48 8b 95 28 f8 ff ff 	mov    -0x7d8(%rbp),%rdx
  689bef:	4c 8b 8d 40 f8 ff ff 	mov    -0x7c0(%rbp),%r9
  689bf6:	4d 89 cc             	mov    %r9,%r12
  689bf9:	48 2b bd 30 f8 ff ff 	sub    -0x7d0(%rbp),%rdi
  689c00:	48 89 85 10 fe ff ff 	mov    %rax,-0x1f0(%rbp)
  689c07:	4c 8d 1c 52          	lea    (%rdx,%rdx,2),%r11
  689c0b:	49 2b d3             	sub    %r11,%rdx
  689c0e:	4c 2b e2             	sub    %rdx,%r12
  689c11:	4c 2b e7             	sub    %rdi,%r12
  689c14:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  689c1b:	4c 89 ad e8 fd ff ff 	mov    %r13,-0x218(%rbp)
  689c22:	4c 8b b5 78 fd ff ff 	mov    -0x288(%rbp),%r14
  689c29:	4c 89 bd b8 f4 ff ff 	mov    %r15,-0xb48(%rbp)
  689c30:	4f 8d 2c 04          	lea    (%r12,%r8,1),%r13
  689c34:	4c 89 ad 38 fb ff ff 	mov    %r13,-0x4c8(%rbp)
  689c3b:	4d 8d 2c 44          	lea    (%r12,%rax,2),%r13
  689c3f:	4d 03 e8             	add    %r8,%r13
  689c42:	4d 89 f7             	mov    %r14,%r15
  689c45:	4c 89 ad 60 fa ff ff 	mov    %r13,-0x5a0(%rbp)
  689c4c:	4d 2b de             	sub    %r14,%r11
  689c4f:	4c 8b ad 80 fd ff ff 	mov    -0x280(%rbp),%r13
  689c56:	4d 0f af fd          	imul   %r13,%r15
  689c5a:	48 8b b5 d8 f7 ff ff 	mov    -0x828(%rbp),%rsi
  689c61:	48 89 8d c0 f4 ff ff 	mov    %rcx,-0xb40(%rbp)
  689c68:	48 8b 8d 70 f9 ff ff 	mov    -0x690(%rbp),%rcx
  689c6f:	4c 03 f9             	add    %rcx,%r15
  689c72:	4c 89 95 00 f7 ff ff 	mov    %r10,-0x900(%rbp)
  689c79:	4c 8d 24 16          	lea    (%rsi,%rdx,1),%r12
  689c7d:	49 f7 dc             	neg    %r12
  689c80:	48 8b b5 f8 f7 ff ff 	mov    -0x808(%rbp),%rsi
  689c87:	4d 03 e1             	add    %r9,%r12
  689c8a:	4c 03 fe             	add    %rsi,%r15
  689c8d:	4d 03 fc             	add    %r12,%r15
  689c90:	4d 03 f8             	add    %r8,%r15
  689c93:	4c 89 bd 70 fb ff ff 	mov    %r15,-0x490(%rbp)
  689c9a:	4d 89 f7             	mov    %r14,%r15
  689c9d:	4d 0f af fa          	imul   %r10,%r15
  689ca1:	4c 03 f9             	add    %rcx,%r15
  689ca4:	4d 8d 55 fe          	lea    -0x2(%r13),%r10
  689ca8:	4d 0f af d6          	imul   %r14,%r10
  689cac:	4c 03 d1             	add    %rcx,%r10
  689caf:	4c 03 fe             	add    %rsi,%r15
  689cb2:	4c 03 d6             	add    %rsi,%r10
  689cb5:	4d 03 fc             	add    %r12,%r15
  689cb8:	4d 03 e2             	add    %r10,%r12
  689cbb:	4d 03 f8             	add    %r8,%r15
  689cbe:	4d 03 e0             	add    %r8,%r12
  689cc1:	4c 89 a5 08 fb ff ff 	mov    %r12,-0x4f8(%rbp)
  689cc8:	4c 8b 95 c8 f7 ff ff 	mov    -0x838(%rbp),%r10
  689ccf:	4c 8b ad 48 f8 ff ff 	mov    -0x7b8(%rbp),%r13
  689cd6:	4c 8b a5 b0 f7 ff ff 	mov    -0x850(%rbp),%r12
  689cdd:	4c 89 bd 78 fb ff ff 	mov    %r15,-0x488(%rbp)
  689ce4:	48 89 bd b0 f4 ff ff 	mov    %rdi,-0xb50(%rbp)
  689ceb:	4d 03 d5             	add    %r13,%r10
  689cee:	48 89 95 c8 f4 ff ff 	mov    %rdx,-0xb38(%rbp)
  689cf5:	4f 8d 2c 1c          	lea    (%r12,%r11,1),%r13
  689cf9:	4d 03 d5             	add    %r13,%r10
  689cfc:	4c 8b ad 18 f8 ff ff 	mov    -0x7e8(%rbp),%r13
  689d03:	4c 8b a5 20 f8 ff ff 	mov    -0x7e0(%rbp),%r12
  689d0a:	4f 8d 7c 15 00       	lea    0x0(%r13,%r10,1),%r15
  689d0f:	4d 03 fc             	add    %r12,%r15
  689d12:	4d 03 f8             	add    %r8,%r15
  689d15:	4c 89 bd 70 fa ff ff 	mov    %r15,-0x590(%rbp)
  689d1c:	4f 8d 7c 1d 00       	lea    0x0(%r13,%r11,1),%r15
  689d21:	4c 8b ad e8 f7 ff ff 	mov    -0x818(%rbp),%r13
  689d28:	4d 03 fd             	add    %r13,%r15
  689d2b:	4c 03 fe             	add    %rsi,%r15
  689d2e:	4c 03 f9             	add    %rcx,%r15
  689d31:	4d 03 f8             	add    %r8,%r15
  689d34:	4c 89 bd 80 fa ff ff 	mov    %r15,-0x580(%rbp)
  689d3b:	4f 8d 3c 36          	lea    (%r14,%r14,1),%r15
  689d3f:	4d 2b f7             	sub    %r15,%r14
  689d42:	4c 03 f2             	add    %rdx,%r14
  689d45:	49 f7 de             	neg    %r14
  689d48:	4d 03 f1             	add    %r9,%r14
  689d4b:	4c 2b f7             	sub    %rdi,%r14
  689d4e:	4c 2b bd e0 f7 ff ff 	sub    -0x820(%rbp),%r15
  689d55:	4f 8d 0c 06          	lea    (%r14,%r8,1),%r9
  689d59:	4c 89 8d 30 fb ff ff 	mov    %r9,-0x4d0(%rbp)
  689d60:	4f 8d 0c 3a          	lea    (%r10,%r15,1),%r9
  689d64:	4d 03 fb             	add    %r11,%r15
  689d67:	4d 03 fd             	add    %r13,%r15
  689d6a:	4d 8d 34 46          	lea    (%r14,%rax,2),%r14
  689d6e:	4c 03 fe             	add    %rsi,%r15
  689d71:	4d 03 cc             	add    %r12,%r9
  689d74:	4c 03 f9             	add    %rcx,%r15
  689d77:	4d 03 f0             	add    %r8,%r14
  689d7a:	4d 03 f8             	add    %r8,%r15
  689d7d:	4d 03 c8             	add    %r8,%r9
  689d80:	4c 89 bd 48 fa ff ff 	mov    %r15,-0x5b8(%rbp)
  689d87:	4c 8b bd 78 fd ff ff 	mov    -0x288(%rbp),%r15
  689d8e:	4c 89 b5 50 fa ff ff 	mov    %r14,-0x5b0(%rbp)
  689d95:	4d 89 fe             	mov    %r15,%r14
  689d98:	4c 89 8d 78 fa ff ff 	mov    %r9,-0x588(%rbp)
  689d9f:	4f 8d 0c 7f          	lea    (%r15,%r15,2),%r9
  689da3:	4d 2b f1             	sub    %r9,%r14
  689da6:	4c 03 f2             	add    %rdx,%r14
  689da9:	49 f7 de             	neg    %r14
  689dac:	4c 03 b5 40 f8 ff ff 	add    -0x7c0(%rbp),%r14
  689db3:	4c 2b f7             	sub    %rdi,%r14
  689db6:	48 8b bd e0 f7 ff ff 	mov    -0x820(%rbp),%rdi
  689dbd:	4c 2b cf             	sub    %rdi,%r9
  689dc0:	4b 8d 14 06          	lea    (%r14,%r8,1),%rdx
  689dc4:	48 89 95 28 fb ff ff 	mov    %rdx,-0x4d8(%rbp)
  689dcb:	4d 8d 34 46          	lea    (%r14,%rax,2),%r14
  689dcf:	4d 03 f0             	add    %r8,%r14
  689dd2:	4b 8d 14 0a          	lea    (%r10,%r9,1),%rdx
  689dd6:	49 03 d4             	add    %r12,%rdx
  689dd9:	4d 03 cb             	add    %r11,%r9
  689ddc:	4c 89 b5 58 fa ff ff 	mov    %r14,-0x5a8(%rbp)
  689de3:	4e 8d 34 bd 00 00 00 	lea    0x0(,%r15,4),%r14
  689dea:	00 
  689deb:	49 03 d0             	add    %r8,%rdx
  689dee:	4d 03 cd             	add    %r13,%r9
  689df1:	48 89 95 68 fa ff ff 	mov    %rdx,-0x598(%rbp)
  689df8:	4c 89 f2             	mov    %r14,%rdx
  689dfb:	49 f7 de             	neg    %r14
  689dfe:	48 2b d7             	sub    %rdi,%rdx
  689e01:	4d 03 f7             	add    %r15,%r14
  689e04:	4c 03 da             	add    %rdx,%r11
  689e07:	48 8b bd c8 f4 ff ff 	mov    -0xb38(%rbp),%rdi
  689e0e:	4d 03 dd             	add    %r13,%r11
  689e11:	49 03 fe             	add    %r14,%rdi
  689e14:	4c 03 ce             	add    %rsi,%r9
  689e17:	48 f7 df             	neg    %rdi
  689e1a:	4c 03 de             	add    %rsi,%r11
  689e1d:	48 03 bd 40 f8 ff ff 	add    -0x7c0(%rbp),%rdi
  689e24:	4c 03 c9             	add    %rcx,%r9
  689e27:	48 2b bd b0 f4 ff ff 	sub    -0xb50(%rbp),%rdi
  689e2e:	4c 03 d9             	add    %rcx,%r11
  689e31:	4c 03 d2             	add    %rdx,%r10
  689e34:	4d 03 c8             	add    %r8,%r9
  689e37:	4d 03 d4             	add    %r12,%r10
  689e3a:	4d 03 d8             	add    %r8,%r11
  689e3d:	4d 03 d0             	add    %r8,%r10
  689e40:	48 8d 0c 47          	lea    (%rdi,%rax,2),%rcx
  689e44:	48 8b bd 90 f7 ff ff 	mov    -0x870(%rbp),%rdi
  689e4b:	4c 03 c1             	add    %rcx,%r8
  689e4e:	48 8b 8d 38 f7 ff ff 	mov    -0x8c8(%rbp),%rcx
  689e55:	48 8b b5 68 f7 ff ff 	mov    -0x898(%rbp),%rsi
  689e5c:	48 f7 de             	neg    %rsi
  689e5f:	4c 8d 2c bd 00 00 00 	lea    0x0(,%rdi,4),%r13
  689e66:	00 
  689e67:	49 f7 dd             	neg    %r13
  689e6a:	4c 03 ad 88 f7 ff ff 	add    -0x878(%rbp),%r13
  689e71:	48 8b bd f8 fa ff ff 	mov    -0x508(%rbp),%rdi
  689e78:	48 03 f7             	add    %rdi,%rsi
  689e7b:	49 89 f6             	mov    %rsi,%r14
  689e7e:	49 c1 e6 05          	shl    $0x5,%r14
  689e82:	41 8b 54 bd 00       	mov    0x0(%r13,%rdi,4),%edx
  689e87:	4c 03 f6             	add    %rsi,%r14
  689e8a:	4c 8b ad 58 f7 ff ff 	mov    -0x8a8(%rbp),%r13
  689e91:	83 e2 01             	and    $0x1,%edx
  689e94:	4c 0f af e9          	imul   %rcx,%r13
  689e98:	48 0f af cf          	imul   %rdi,%rcx
  689e9c:	48 8d b5 a8 fb ff ff 	lea    -0x458(%rbp),%rsi
  689ea3:	4c 8b 3e             	mov    (%rsi),%r15
  689ea6:	4d 2b fd             	sub    %r13,%r15
  689ea9:	4c 2b e9             	sub    %rcx,%r13
  689eac:	48 8d 85 b0 f8 ff ff 	lea    -0x750(%rbp),%rax
  689eb3:	4c 8b 20             	mov    (%rax),%r12
  689eb6:	4d 03 fc             	add    %r12,%r15
  689eb9:	49 c1 e6 05          	shl    $0x5,%r14
  689ebd:	4c 03 f9             	add    %rcx,%r15
  689ec0:	4c 89 b5 b8 f8 ff ff 	mov    %r14,-0x748(%rbp)
  689ec7:	4d 2b e5             	sub    %r13,%r12
  689eca:	48 8b 8d b8 f7 ff ff 	mov    -0x848(%rbp),%rcx
  689ed1:	49 f7 dd             	neg    %r13
  689ed4:	4c 8b b5 48 fc ff ff 	mov    -0x3b8(%rbp),%r14
  689edb:	89 95 08 fc ff ff    	mov    %edx,-0x3f8(%rbp)
  689ee1:	8b bd 28 f7 ff ff    	mov    -0x8d8(%rbp),%edi
  689ee7:	8b 95 e0 f8 ff ff    	mov    -0x720(%rbp),%edx
  689eed:	4c 89 3e             	mov    %r15,(%rsi)
  689ef0:	4d 8d 3c 0e          	lea    (%r14,%rcx,1),%r15
  689ef4:	4c 2b bd b8 f4 ff ff 	sub    -0xb48(%rbp),%r15
  689efb:	4c 03 ad 70 f7 ff ff 	add    -0x890(%rbp),%r13
  689f02:	8d 34 17             	lea    (%rdi,%rdx,1),%esi
  689f05:	48 8b bd c0 f4 ff ff 	mov    -0xb40(%rbp),%rdi
  689f0c:	49 03 ff             	add    %r15,%rdi
  689f0f:	4c 89 ad 80 fb ff ff 	mov    %r13,-0x480(%rbp)
  689f16:	4c 8b ad 98 f4 ff ff 	mov    -0xb68(%rbp),%r13
  689f1d:	4c 03 ef             	add    %rdi,%r13
  689f20:	4c 8d bd e8 fd ff ff 	lea    -0x218(%rbp),%r15
  689f27:	49 8b 3f             	mov    (%r15),%rdi
  689f2a:	49 03 fd             	add    %r13,%rdi
  689f2d:	4c 8b ad 08 f7 ff ff 	mov    -0x8f8(%rbp),%r13
  689f34:	89 b5 90 f8 ff ff    	mov    %esi,-0x770(%rbp)
  689f3a:	4c 89 ee             	mov    %r13,%rsi
  689f3d:	48 0f af b5 a0 f7 ff 	imul   -0x860(%rbp),%rsi
  689f44:	ff 
  689f45:	4c 0f af ad a8 f7 ff 	imul   -0x858(%rbp),%r13
  689f4c:	ff 
  689f4d:	4c 8b b5 10 f7 ff ff 	mov    -0x8f0(%rbp),%r14
  689f54:	4c 89 f2             	mov    %r14,%rdx
  689f57:	48 8b 8d f0 fb ff ff 	mov    -0x410(%rbp),%rcx
  689f5e:	48 f7 de             	neg    %rsi
  689f61:	48 0f af d1          	imul   %rcx,%rdx
  689f65:	4c 89 20             	mov    %r12,(%rax)
  689f68:	49 f7 dd             	neg    %r13
  689f6b:	48 03 b5 80 f7 ff ff 	add    -0x880(%rbp),%rsi
  689f72:	4c 8b a5 a8 f4 ff ff 	mov    -0xb58(%rbp),%r12
  689f79:	4c 03 ad 78 f7 ff ff 	add    -0x888(%rbp),%r13
  689f80:	4c 89 9d 30 fa ff ff 	mov    %r11,-0x5d0(%rbp)
  689f87:	49 89 3f             	mov    %rdi,(%r15)
  689f8a:	4e 8d 3c 26          	lea    (%rsi,%r12,1),%r15
  689f8e:	4c 2b e2             	sub    %rdx,%r12
  689f91:	49 03 f4             	add    %r12,%rsi
  689f94:	4c 8b a5 88 f4 ff ff 	mov    -0xb78(%rbp),%r12
  689f9b:	49 2b d4             	sub    %r12,%rdx
  689f9e:	4c 2b fa             	sub    %rdx,%r15
  689fa1:	48 8d bd 48 fb ff ff 	lea    -0x4b8(%rbp),%rdi
  689fa8:	48 8b 17             	mov    (%rdi),%rdx
  689fab:	4c 03 fa             	add    %rdx,%r15
  689fae:	4c 89 bd 58 fb ff ff 	mov    %r15,-0x4a8(%rbp)
  689fb5:	49 8d 0c 4c          	lea    (%r12,%rcx,2),%rcx
  689fb9:	4c 8b bd f8 fb ff ff 	mov    -0x408(%rbp),%r15
  689fc0:	48 03 f1             	add    %rcx,%rsi
  689fc3:	4d 0f af f7          	imul   %r15,%r14
  689fc7:	48 03 d6             	add    %rsi,%rdx
  689fca:	48 89 17             	mov    %rdx,(%rdi)
  689fcd:	48 8b 95 a0 f4 ff ff 	mov    -0xb60(%rbp),%rdx
  689fd4:	4c 8b a5 90 f4 ff ff 	mov    -0xb70(%rbp),%r12
  689fdb:	4c 8b 9d 60 fd ff ff 	mov    -0x2a0(%rbp),%r11
  689fe2:	49 8d 74 15 00       	lea    0x0(%r13,%rdx,1),%rsi
  689fe7:	49 2b d6             	sub    %r14,%rdx
  689fea:	4d 2b f4             	sub    %r12,%r14
  689fed:	49 2b f6             	sub    %r14,%rsi
  689ff0:	4c 03 ea             	add    %rdx,%r13
  689ff3:	4c 8d b5 40 fb ff ff 	lea    -0x4c0(%rbp),%r14
  689ffa:	49 8b 16             	mov    (%r14),%rdx
  689ffd:	48 03 f2             	add    %rdx,%rsi
  68a000:	48 89 b5 50 fb ff ff 	mov    %rsi,-0x4b0(%rbp)
  68a007:	4b 8d 34 7c          	lea    (%r12,%r15,2),%rsi
  68a00b:	4c 03 ee             	add    %rsi,%r13
  68a00e:	49 03 d5             	add    %r13,%rdx
  68a011:	49 89 16             	mov    %rdx,(%r14)
  68a014:	48 8b 95 b8 fb ff ff 	mov    -0x448(%rbp),%rdx
  68a01b:	4c 8b b5 80 fd ff ff 	mov    -0x280(%rbp),%r14
  68a022:	4c 8b a5 a8 fb ff ff 	mov    -0x458(%rbp),%r12
  68a029:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  68a030:	4c 89 85 28 fa ff ff 	mov    %r8,-0x5d8(%rbp)
  68a037:	4c 89 95 38 fa ff ff 	mov    %r10,-0x5c8(%rbp)
  68a03e:	4c 89 8d 40 fa ff ff 	mov    %r9,-0x5c0(%rbp)
  68a045:	48 83 bd d0 fd ff ff 	cmpq   $0x8,-0x230(%rbp)
  68a04c:	08 
  68a04d:	0f 85 e4 01 00 00    	jne    68a237 <step3d_t_mod_mp_step3d_t_tile_+0x35c7>
  68a053:	48 83 bd e0 fd ff ff 	cmpq   $0x8,-0x220(%rbp)
  68a05a:	08 
  68a05b:	0f 85 d6 01 00 00    	jne    68a237 <step3d_t_mod_mp_step3d_t_tile_+0x35c7>
  68a061:	45 33 c9             	xor    %r9d,%r9d
  68a064:	4c 8b 85 f0 fa ff ff 	mov    -0x510(%rbp),%r8
  68a06b:	33 f6                	xor    %esi,%esi
  68a06d:	48 8b bd 70 f4 ff ff 	mov    -0xb90(%rbp),%rdi
  68a074:	48 83 bd d0 fa ff ff 	cmpq   $0x2,-0x530(%rbp)
  68a07b:	02 
  68a07c:	0f 8c ee 6c 00 00    	jl     690d70 <step3d_t_mod_mp_step3d_t_tile_+0xa100>
  68a082:	48 8b 85 c8 fb ff ff 	mov    -0x438(%rbp),%rax
  68a089:	48 0f af c2          	imul   %rdx,%rax
  68a08d:	48 8b 8d 70 fa ff ff 	mov    -0x590(%rbp),%rcx
  68a094:	4c 8b 95 78 fa ff ff 	mov    -0x588(%rbp),%r10
  68a09b:	4c 8b b5 68 fa ff ff 	mov    -0x598(%rbp),%r14
  68a0a2:	48 89 95 b8 fb ff ff 	mov    %rdx,-0x448(%rbp)
  68a0a9:	48 03 c8             	add    %rax,%rcx
  68a0ac:	4d 8d 3c 02          	lea    (%r10,%rax,1),%r15
  68a0b0:	4c 89 bd e0 fc ff ff 	mov    %r15,-0x320(%rbp)
  68a0b7:	4d 8d 14 06          	lea    (%r14,%rax,1),%r10
  68a0bb:	48 03 85 38 fa ff ff 	add    -0x5c8(%rbp),%rax
  68a0c2:	48 89 85 d0 fc ff ff 	mov    %rax,-0x330(%rbp)
  68a0c9:	4c 89 95 d8 fc ff ff 	mov    %r10,-0x328(%rbp)
  68a0d0:	8b 85 c0 fd ff ff    	mov    -0x240(%rbp),%eax
  68a0d6:	3b 85 b8 fd ff ff    	cmp    -0x248(%rbp),%eax
  68a0dc:	0f 8c 2b 01 00 00    	jl     68a20d <step3d_t_mod_mp_step3d_t_tile_+0x359d>
  68a0e2:	49 83 fb 04          	cmp    $0x4,%r11
  68a0e6:	0f 8c 63 6c 00 00    	jl     690d4f <step3d_t_mod_mp_step3d_t_tile_+0xa0df>
  68a0ec:	4c 8b ad d0 fc ff ff 	mov    -0x330(%rbp),%r13
  68a0f3:	45 33 ff             	xor    %r15d,%r15d
  68a0f6:	4c 8b a5 d8 fc ff ff 	mov    -0x328(%rbp),%r12
  68a0fd:	48 8b 95 e0 fc ff ff 	mov    -0x320(%rbp),%rdx
  68a104:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
  68a10b:	4d 8d 74 35 00       	lea    0x0(%r13,%rsi,1),%r14
  68a110:	49 89 c3             	mov    %rax,%r11
  68a113:	4c 8d 2c 31          	lea    (%rcx,%rsi,1),%r13
  68a117:	4c 03 e6             	add    %rsi,%r12
  68a11a:	4c 8d 14 32          	lea    (%rdx,%rsi,1),%r10
  68a11e:	4c 89 c2             	mov    %r8,%rdx
  68a121:	c4 01 7d 10 24 fa    	vmovupd (%r10,%r15,8),%ymm12
  68a127:	c4 01 7d 10 74 fd 00 	vmovupd 0x0(%r13,%r15,8),%ymm14
  68a12e:	c4 01 1d 58 2c fc    	vaddpd (%r12,%r15,8),%ymm12,%ymm13
  68a134:	c4 01 0d 58 3c fe    	vaddpd (%r14,%r15,8),%ymm14,%ymm15
  68a13a:	c4 41 4d 59 e5       	vmulpd %ymm13,%ymm6,%ymm12
  68a13f:	c4 41 7d 59 ef       	vmulpd %ymm15,%ymm0,%ymm13
  68a144:	c4 41 1d 5c f5       	vsubpd %ymm13,%ymm12,%ymm14
  68a149:	c4 21 0d 59 3c ff    	vmulpd (%rdi,%r15,8),%ymm14,%ymm15
  68a14f:	49 83 c7 04          	add    $0x4,%r15
  68a153:	c5 7d 11 7a 10       	vmovupd %ymm15,0x10(%rdx)
  68a158:	48 83 c2 20          	add    $0x20,%rdx
  68a15c:	4d 3b fb             	cmp    %r11,%r15
  68a15f:	72 c0                	jb     68a121 <step3d_t_mod_mp_step3d_t_tile_+0x34b1>
  68a161:	4c 8b 9d 60 fd ff ff 	mov    -0x2a0(%rbp),%r11
  68a168:	4c 8d 34 c5 00 00 00 	lea    0x0(,%rax,8),%r14
  68a16f:	00 
  68a170:	49 3b c3             	cmp    %r11,%rax
  68a173:	73 6e                	jae    68a1e3 <step3d_t_mod_mp_step3d_t_tile_+0x3573>
  68a175:	4c 8b 95 d0 fc ff ff 	mov    -0x330(%rbp),%r10
  68a17c:	4d 8d 2c c0          	lea    (%r8,%rax,8),%r13
  68a180:	48 8b 95 d8 fc ff ff 	mov    -0x328(%rbp),%rdx
  68a187:	4c 8b bd e0 fc ff ff 	mov    -0x320(%rbp),%r15
  68a18e:	4d 8d 24 32          	lea    (%r10,%rsi,1),%r12
  68a192:	4c 8d 14 31          	lea    (%rcx,%rsi,1),%r10
  68a196:	48 03 d6             	add    %rsi,%rdx
  68a199:	4c 03 fe             	add    %rsi,%r15
  68a19c:	0f 1f 40 00          	nopl   0x0(%rax)
  68a1a0:	c4 01 7b 10 24 3e    	vmovsd (%r14,%r15,1),%xmm12
  68a1a6:	48 ff c0             	inc    %rax
  68a1a9:	c4 01 7b 10 34 16    	vmovsd (%r14,%r10,1),%xmm14
  68a1af:	c4 41 1b 58 2c 16    	vaddsd (%r14,%rdx,1),%xmm12,%xmm13
  68a1b5:	c4 01 0b 58 3c 26    	vaddsd (%r14,%r12,1),%xmm14,%xmm15
  68a1bb:	c4 41 6b 59 e5       	vmulsd %xmm13,%xmm2,%xmm12
  68a1c0:	c4 41 73 59 ef       	vmulsd %xmm15,%xmm1,%xmm13
  68a1c5:	c4 41 1b 5c f5       	vsubsd %xmm13,%xmm12,%xmm14
  68a1ca:	c4 41 0b 59 3c 3e    	vmulsd (%r14,%rdi,1),%xmm14,%xmm15
  68a1d0:	49 83 c6 08          	add    $0x8,%r14
  68a1d4:	c4 41 7b 11 7d 10    	vmovsd %xmm15,0x10(%r13)
  68a1da:	49 83 c5 08          	add    $0x8,%r13
  68a1de:	49 3b c3             	cmp    %r11,%rax
  68a1e1:	72 bd                	jb     68a1a0 <step3d_t_mod_mp_step3d_t_tile_+0x3530>
  68a1e3:	49 ff c1             	inc    %r9
  68a1e6:	4c 03 85 a0 fd ff ff 	add    -0x260(%rbp),%r8
  68a1ed:	48 03 bd 48 fc ff ff 	add    -0x3b8(%rbp),%rdi
  68a1f4:	48 03 b5 78 fd ff ff 	add    -0x288(%rbp),%rsi
  68a1fb:	4c 3b 8d 50 fc ff ff 	cmp    -0x3b0(%rbp),%r9
  68a202:	0f 82 c8 fe ff ff    	jb     68a0d0 <step3d_t_mod_mp_step3d_t_tile_+0x3460>
  68a208:	e9 df 48 00 00       	jmpq   68eaec <step3d_t_mod_mp_step3d_t_tile_+0x7e7c>
  68a20d:	49 ff c1             	inc    %r9
  68a210:	4c 03 85 a0 fd ff ff 	add    -0x260(%rbp),%r8
  68a217:	48 03 bd 48 fc ff ff 	add    -0x3b8(%rbp),%rdi
  68a21e:	48 03 b5 78 fd ff ff 	add    -0x288(%rbp),%rsi
  68a225:	4c 3b 8d 50 fc ff ff 	cmp    -0x3b0(%rbp),%r9
  68a22c:	0f 82 9e fe ff ff    	jb     68a0d0 <step3d_t_mod_mp_step3d_t_tile_+0x3460>
  68a232:	e9 1f 6b 00 00       	jmpq   690d56 <step3d_t_mod_mp_step3d_t_tile_+0xa0e6>
  68a237:	33 f6                	xor    %esi,%esi
  68a239:	33 ff                	xor    %edi,%edi
  68a23b:	48 8b 8d f0 fa ff ff 	mov    -0x510(%rbp),%rcx
  68a242:	33 c0                	xor    %eax,%eax
  68a244:	48 83 bd d0 fa ff ff 	cmpq   $0x2,-0x530(%rbp)
  68a24b:	02 
  68a24c:	0f 8c 1e 6b 00 00    	jl     690d70 <step3d_t_mod_mp_step3d_t_tile_+0xa100>
  68a252:	4c 8b b5 c8 fb ff ff 	mov    -0x438(%rbp),%r14
  68a259:	4c 0f af f2          	imul   %rdx,%r14
  68a25d:	4c 8b 85 40 fa ff ff 	mov    -0x5c0(%rbp),%r8
  68a264:	4c 8b 95 80 fa ff ff 	mov    -0x580(%rbp),%r10
  68a26b:	4c 8b 8d 48 fa ff ff 	mov    -0x5b8(%rbp),%r9
  68a272:	48 89 95 b8 fb ff ff 	mov    %rdx,-0x448(%rbp)
  68a279:	4f 8d 3c 30          	lea    (%r8,%r14,1),%r15
  68a27d:	4c 89 bd 78 fc ff ff 	mov    %r15,-0x388(%rbp)
  68a284:	4d 03 d6             	add    %r14,%r10
  68a287:	4c 8b bd 28 fa ff ff 	mov    -0x5d8(%rbp),%r15
  68a28e:	4d 03 ce             	add    %r14,%r9
  68a291:	4c 8b 85 30 fa ff ff 	mov    -0x5d0(%rbp),%r8
  68a298:	4c 89 8d b0 fc ff ff 	mov    %r9,-0x350(%rbp)
  68a29f:	4c 89 95 a8 fc ff ff 	mov    %r10,-0x358(%rbp)
  68a2a6:	4d 03 fe             	add    %r14,%r15
  68a2a9:	4c 89 bd 70 fc ff ff 	mov    %r15,-0x390(%rbp)
  68a2b0:	4d 03 c6             	add    %r14,%r8
  68a2b3:	4c 8b bd 60 fa ff ff 	mov    -0x5a0(%rbp),%r15
  68a2ba:	4c 89 85 a0 fc ff ff 	mov    %r8,-0x360(%rbp)
  68a2c1:	4d 03 fe             	add    %r14,%r15
  68a2c4:	4c 89 bd 68 fc ff ff 	mov    %r15,-0x398(%rbp)
  68a2cb:	4c 8b bd 58 fa ff ff 	mov    -0x5a8(%rbp),%r15
  68a2d2:	4d 03 fe             	add    %r14,%r15
  68a2d5:	4c 03 b5 50 fa ff ff 	add    -0x5b0(%rbp),%r14
  68a2dc:	4c 89 bd 60 fc ff ff 	mov    %r15,-0x3a0(%rbp)
  68a2e3:	4c 89 b5 98 fc ff ff 	mov    %r14,-0x368(%rbp)
  68a2ea:	8b 95 c0 fd ff ff    	mov    -0x240(%rbp),%edx
  68a2f0:	3b 95 b8 fd ff ff    	cmp    -0x248(%rbp),%edx
  68a2f6:	0f 8c 0c 03 00 00    	jl     68a608 <step3d_t_mod_mp_step3d_t_tile_+0x3998>
  68a2fc:	48 83 bd 60 fd ff ff 	cmpq   $0x4,-0x2a0(%rbp)
  68a303:	04 
  68a304:	0f 8c 9e 6a 00 00    	jl     690da8 <step3d_t_mod_mp_step3d_t_tile_+0xa138>
  68a30a:	4c 8b 85 70 fc ff ff 	mov    -0x390(%rbp),%r8
  68a311:	45 33 ff             	xor    %r15d,%r15d
  68a314:	4c 8b b5 f0 fc ff ff 	mov    -0x310(%rbp),%r14
  68a31b:	4c 8b ad a8 fc ff ff 	mov    -0x358(%rbp),%r13
  68a322:	4c 8b a5 b0 fc ff ff 	mov    -0x350(%rbp),%r12
  68a329:	4c 03 c0             	add    %rax,%r8
  68a32c:	4c 89 85 50 fe ff ff 	mov    %r8,-0x1b0(%rbp)
  68a333:	4c 03 f7             	add    %rdi,%r14
  68a336:	4c 8b 85 68 fc ff ff 	mov    -0x398(%rbp),%r8
  68a33d:	4c 03 e8             	add    %rax,%r13
  68a340:	4c 8b 9d 78 fc ff ff 	mov    -0x388(%rbp),%r11
  68a347:	4c 03 e0             	add    %rax,%r12
  68a34a:	4c 8b 95 a0 fc ff ff 	mov    -0x360(%rbp),%r10
  68a351:	4c 8b 8d e8 fc ff ff 	mov    -0x318(%rbp),%r9
  68a358:	4c 03 c0             	add    %rax,%r8
  68a35b:	4c 89 85 48 fe ff ff 	mov    %r8,-0x1b8(%rbp)
  68a362:	4c 03 d8             	add    %rax,%r11
  68a365:	4c 8b 85 60 fc ff ff 	mov    -0x3a0(%rbp),%r8
  68a36c:	4c 03 d0             	add    %rax,%r10
  68a36f:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  68a376:	4c 03 cf             	add    %rdi,%r9
  68a379:	48 89 8d b8 fc ff ff 	mov    %rcx,-0x348(%rbp)
  68a380:	48 89 95 c0 fc ff ff 	mov    %rdx,-0x340(%rbp)
  68a387:	4c 03 c0             	add    %rax,%r8
  68a38a:	4c 89 85 40 fe ff ff 	mov    %r8,-0x1c0(%rbp)
  68a391:	4c 8b 85 98 fc ff ff 	mov    -0x368(%rbp),%r8
  68a398:	48 89 85 c8 fc ff ff 	mov    %rax,-0x338(%rbp)
  68a39f:	48 89 8d 88 fc ff ff 	mov    %rcx,-0x378(%rbp)
  68a3a6:	48 89 b5 80 fc ff ff 	mov    %rsi,-0x380(%rbp)
  68a3ad:	4c 03 c0             	add    %rax,%r8
  68a3b0:	4c 89 85 38 fe ff ff 	mov    %r8,-0x1c8(%rbp)
  68a3b7:	45 33 c0             	xor    %r8d,%r8d
  68a3ba:	48 89 bd 90 fc ff ff 	mov    %rdi,-0x370(%rbp)
  68a3c1:	48 8b 85 b8 fc ff ff 	mov    -0x348(%rbp),%rax
  68a3c8:	4c 89 c2             	mov    %r8,%rdx
  68a3cb:	48 8b 8d d0 fd ff ff 	mov    -0x230(%rbp),%rcx
  68a3d2:	48 8b b5 e0 fd ff ff 	mov    -0x220(%rbp),%rsi
  68a3d9:	49 83 c7 04          	add    $0x4,%r15
  68a3dd:	4b 8d 3c 06          	lea    (%r14,%r8,1),%rdi
  68a3e1:	c5 7b 10 27          	vmovsd (%rdi),%xmm12
  68a3e5:	c5 19 16 2c 0f       	vmovhpd (%rdi,%rcx,1),%xmm12,%xmm13
  68a3ea:	49 8d 3c 14          	lea    (%r12,%rdx,1),%rdi
  68a3ee:	c5 7b 10 3f          	vmovsd (%rdi),%xmm15
  68a3f2:	c5 01 16 24 37       	vmovhpd (%rdi,%rsi,1),%xmm15,%xmm12
  68a3f7:	49 8d 3c 13          	lea    (%r11,%rdx,1),%rdi
  68a3fb:	c5 7b 10 37          	vmovsd (%rdi),%xmm14
  68a3ff:	c5 09 16 3c 37       	vmovhpd (%rdi,%rsi,1),%xmm14,%xmm15
  68a404:	49 8d 7c 15 00       	lea    0x0(%r13,%rdx,1),%rdi
  68a409:	c4 41 19 58 f7       	vaddpd %xmm15,%xmm12,%xmm14
  68a40e:	c5 7b 10 27          	vmovsd (%rdi),%xmm12
  68a412:	c5 19 16 3c 37       	vmovhpd (%rdi,%rsi,1),%xmm12,%xmm15
  68a417:	49 8d 3c 12          	lea    (%r10,%rdx,1),%rdi
  68a41b:	c5 7b 10 27          	vmovsd (%rdi),%xmm12
  68a41f:	c5 19 16 24 37       	vmovhpd (%rdi,%rsi,1),%xmm12,%xmm12
  68a424:	4b 8d 3c 01          	lea    (%r9,%r8,1),%rdi
  68a428:	c4 41 01 58 fc       	vaddpd %xmm12,%xmm15,%xmm15
  68a42d:	c4 41 41 59 f6       	vmulpd %xmm14,%xmm7,%xmm14
  68a432:	c4 41 61 59 e7       	vmulpd %xmm15,%xmm3,%xmm12
  68a437:	c4 41 09 5c f4       	vsubpd %xmm12,%xmm14,%xmm14
  68a43c:	c4 41 11 59 ee       	vmulpd %xmm14,%xmm13,%xmm13
  68a441:	c5 7b 10 37          	vmovsd (%rdi),%xmm14
  68a445:	4d 8d 04 88          	lea    (%r8,%rcx,4),%r8
  68a449:	c5 09 16 34 0f       	vmovhpd (%rdi,%rcx,1),%xmm14,%xmm14
  68a44e:	48 8b bd 38 fe ff ff 	mov    -0x1c8(%rbp),%rdi
  68a455:	c5 79 11 68 10       	vmovupd %xmm13,0x10(%rax)
  68a45a:	48 03 fa             	add    %rdx,%rdi
  68a45d:	c5 7b 10 2f          	vmovsd (%rdi),%xmm13
  68a461:	c5 11 16 3c 37       	vmovhpd (%rdi,%rsi,1),%xmm13,%xmm15
  68a466:	48 8b bd 40 fe ff ff 	mov    -0x1c0(%rbp),%rdi
  68a46d:	48 03 fa             	add    %rdx,%rdi
  68a470:	c5 7b 10 27          	vmovsd (%rdi),%xmm12
  68a474:	c5 19 16 2c 37       	vmovhpd (%rdi,%rsi,1),%xmm12,%xmm13
  68a479:	c4 41 01 58 e5       	vaddpd %xmm13,%xmm15,%xmm12
  68a47e:	48 8b bd 48 fe ff ff 	mov    -0x1b8(%rbp),%rdi
  68a485:	c4 41 41 59 ec       	vmulpd %xmm12,%xmm7,%xmm13
  68a48a:	48 03 fa             	add    %rdx,%rdi
  68a48d:	c5 7b 10 3f          	vmovsd (%rdi),%xmm15
  68a491:	c5 01 16 24 37       	vmovhpd (%rdi,%rsi,1),%xmm15,%xmm12
  68a496:	48 8b bd 50 fe ff ff 	mov    -0x1b0(%rbp),%rdi
  68a49d:	48 03 fa             	add    %rdx,%rdi
  68a4a0:	c5 7b 10 3f          	vmovsd (%rdi),%xmm15
  68a4a4:	48 8d 14 b2          	lea    (%rdx,%rsi,4),%rdx
  68a4a8:	c5 01 16 3c 37       	vmovhpd (%rdi,%rsi,1),%xmm15,%xmm15
  68a4ad:	c4 41 19 58 e7       	vaddpd %xmm15,%xmm12,%xmm12
  68a4b2:	c4 41 61 59 e4       	vmulpd %xmm12,%xmm3,%xmm12
  68a4b7:	c4 41 11 5c ec       	vsubpd %xmm12,%xmm13,%xmm13
  68a4bc:	c4 41 09 59 f5       	vmulpd %xmm13,%xmm14,%xmm14
  68a4c1:	c5 79 11 70 20       	vmovupd %xmm14,0x20(%rax)
  68a4c6:	48 83 c0 20          	add    $0x20,%rax
  68a4ca:	4c 3b bd 30 fe ff ff 	cmp    -0x1d0(%rbp),%r15
  68a4d1:	0f 82 02 ff ff ff    	jb     68a3d9 <step3d_t_mod_mp_step3d_t_tile_+0x3769>
  68a4d7:	48 8b 95 c0 fc ff ff 	mov    -0x340(%rbp),%rdx
  68a4de:	48 8b 85 c8 fc ff ff 	mov    -0x338(%rbp),%rax
  68a4e5:	48 8b bd 90 fc ff ff 	mov    -0x370(%rbp),%rdi
  68a4ec:	48 8b 8d 88 fc ff ff 	mov    -0x378(%rbp),%rcx
  68a4f3:	48 8b b5 80 fc ff ff 	mov    -0x380(%rbp),%rsi
  68a4fa:	4c 8b ad e0 fd ff ff 	mov    -0x220(%rbp),%r13
  68a501:	4c 8b bd d0 fd ff ff 	mov    -0x230(%rbp),%r15
  68a508:	4c 0f af ea          	imul   %rdx,%r13
  68a50c:	4c 0f af fa          	imul   %rdx,%r15
  68a510:	48 3b 95 60 fd ff ff 	cmp    -0x2a0(%rbp),%rdx
  68a517:	0f 83 c1 00 00 00    	jae    68a5de <step3d_t_mod_mp_step3d_t_tile_+0x396e>
  68a51d:	4c 8b a5 f0 fc ff ff 	mov    -0x310(%rbp),%r12
  68a524:	4c 8d 34 d1          	lea    (%rcx,%rdx,8),%r14
  68a528:	4c 8b 9d a8 fc ff ff 	mov    -0x358(%rbp),%r11
  68a52f:	4c 8b 95 b0 fc ff ff 	mov    -0x350(%rbp),%r10
  68a536:	4c 8b 8d 78 fc ff ff 	mov    -0x388(%rbp),%r9
  68a53d:	4c 03 e7             	add    %rdi,%r12
  68a540:	4c 8b 85 a0 fc ff ff 	mov    -0x360(%rbp),%r8
  68a547:	4c 03 d8             	add    %rax,%r11
  68a54a:	48 89 bd 90 fc ff ff 	mov    %rdi,-0x370(%rbp)
  68a551:	4c 03 d0             	add    %rax,%r10
  68a554:	48 89 8d 88 fc ff ff 	mov    %rcx,-0x378(%rbp)
  68a55b:	4c 03 c8             	add    %rax,%r9
  68a55e:	48 89 b5 80 fc ff ff 	mov    %rsi,-0x380(%rbp)
  68a565:	4c 03 c0             	add    %rax,%r8
  68a568:	48 8b 8d 60 fd ff ff 	mov    -0x2a0(%rbp),%rcx
  68a56f:	48 8b b5 d0 fd ff ff 	mov    -0x230(%rbp),%rsi
  68a576:	48 8b bd e0 fd ff ff 	mov    -0x220(%rbp),%rdi
  68a57d:	0f 1f 00             	nopl   (%rax)
  68a580:	c4 01 7b 10 64 15 00 	vmovsd 0x0(%r13,%r10,1),%xmm12
  68a587:	48 ff c2             	inc    %rdx
  68a58a:	c4 01 7b 10 74 1d 00 	vmovsd 0x0(%r13,%r11,1),%xmm14
  68a591:	c4 01 1b 58 6c 0d 00 	vaddsd 0x0(%r13,%r9,1),%xmm12,%xmm13
  68a598:	c4 01 0b 58 7c 05 00 	vaddsd 0x0(%r13,%r8,1),%xmm14,%xmm15
  68a59f:	c4 41 6b 59 e5       	vmulsd %xmm13,%xmm2,%xmm12
  68a5a4:	c4 41 73 59 ef       	vmulsd %xmm15,%xmm1,%xmm13
  68a5a9:	4c 03 ef             	add    %rdi,%r13
  68a5ac:	c4 41 1b 5c f5       	vsubsd %xmm13,%xmm12,%xmm14
  68a5b1:	c4 01 0b 59 3c 27    	vmulsd (%r15,%r12,1),%xmm14,%xmm15
  68a5b7:	4c 03 fe             	add    %rsi,%r15
  68a5ba:	c4 41 7b 11 7e 10    	vmovsd %xmm15,0x10(%r14)
  68a5c0:	49 83 c6 08          	add    $0x8,%r14
  68a5c4:	48 3b d1             	cmp    %rcx,%rdx
  68a5c7:	72 b7                	jb     68a580 <step3d_t_mod_mp_step3d_t_tile_+0x3910>
  68a5c9:	48 8b bd 90 fc ff ff 	mov    -0x370(%rbp),%rdi
  68a5d0:	48 8b 8d 88 fc ff ff 	mov    -0x378(%rbp),%rcx
  68a5d7:	48 8b b5 80 fc ff ff 	mov    -0x380(%rbp),%rsi
  68a5de:	48 ff c6             	inc    %rsi
  68a5e1:	48 03 8d a0 fd ff ff 	add    -0x260(%rbp),%rcx
  68a5e8:	48 03 bd 48 fc ff ff 	add    -0x3b8(%rbp),%rdi
  68a5ef:	48 03 85 78 fd ff ff 	add    -0x288(%rbp),%rax
  68a5f6:	48 3b b5 50 fc ff ff 	cmp    -0x3b0(%rbp),%rsi
  68a5fd:	0f 82 e7 fc ff ff    	jb     68a2ea <step3d_t_mod_mp_step3d_t_tile_+0x367a>
  68a603:	e9 7f 67 00 00       	jmpq   690d87 <step3d_t_mod_mp_step3d_t_tile_+0xa117>
  68a608:	48 ff c6             	inc    %rsi
  68a60b:	48 03 8d a0 fd ff ff 	add    -0x260(%rbp),%rcx
  68a612:	48 03 bd 48 fc ff ff 	add    -0x3b8(%rbp),%rdi
  68a619:	48 03 85 78 fd ff ff 	add    -0x288(%rbp),%rax
  68a620:	48 3b b5 50 fc ff ff 	cmp    -0x3b0(%rbp),%rsi
  68a627:	0f 82 bd fc ff ff    	jb     68a2ea <step3d_t_mod_mp_step3d_t_tile_+0x367a>
  68a62d:	e9 7d 67 00 00       	jmpq   690daf <step3d_t_mod_mp_step3d_t_tile_+0xa13f>
  68a632:	53                   	push   %rbx
  68a633:	48 89 e3             	mov    %rsp,%rbx
  68a636:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  68a63a:	55                   	push   %rbp
  68a63b:	55                   	push   %rbp
  68a63c:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  68a640:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  68a645:	48 89 e5             	mov    %rsp,%rbp
  68a648:	48 81 ec 90 0b 00 00 	sub    $0xb90,%rsp
  68a64f:	4c 89 b5 18 f9 ff ff 	mov    %r14,-0x6e8(%rbp)
  68a656:	4c 8b 73 38          	mov    0x38(%rbx),%r14
  68a65a:	48 89 95 f0 f8 ff ff 	mov    %rdx,-0x710(%rbp)
  68a661:	48 8b 53 10          	mov    0x10(%rbx),%rdx
  68a665:	4c 89 ad 20 f9 ff ff 	mov    %r13,-0x6e0(%rbp)
  68a66c:	4c 8b 6b 30          	mov    0x30(%rbx),%r13
  68a670:	45 8b 36             	mov    (%r14),%r14d
  68a673:	44 89 b5 28 fe ff ff 	mov    %r14d,-0x1d8(%rbp)
  68a67a:	4c 89 a5 28 f9 ff ff 	mov    %r12,-0x6d8(%rbp)
  68a681:	4c 63 32             	movslq (%rdx),%r14
  68a684:	4c 8b 5b 20          	mov    0x20(%rbx),%r11
  68a688:	4c 8b 63 40          	mov    0x40(%rbx),%r12
  68a68c:	48 8b 73 48          	mov    0x48(%rbx),%rsi
  68a690:	8b 11                	mov    (%rcx),%edx
  68a692:	48 8b 4b 50          	mov    0x50(%rbx),%rcx
  68a696:	45 8b 6d 00          	mov    0x0(%r13),%r13d
  68a69a:	4c 89 bd 10 f9 ff ff 	mov    %r15,-0x6f0(%rbp)
  68a6a1:	4c 8b 7b 18          	mov    0x18(%rbx),%r15
  68a6a5:	8b 07                	mov    (%rdi),%eax
  68a6a7:	44 89 ad 58 ff ff ff 	mov    %r13d,-0xa8(%rbp)
  68a6ae:	4d 63 29             	movslq (%r9),%r13
  68a6b1:	89 85 d0 f8 ff ff    	mov    %eax,-0x730(%rbp)
  68a6b7:	4c 8b 53 28          	mov    0x28(%rbx),%r10
  68a6bb:	48 63 06             	movslq (%rsi),%rax
  68a6be:	4d 8b 24 24          	mov    (%r12),%r12
  68a6c2:	4d 8b 1b             	mov    (%r11),%r11
  68a6c5:	4c 89 ad 30 fe ff ff 	mov    %r13,-0x1d0(%rbp)
  68a6cc:	48 63 31             	movslq (%rcx),%rsi
  68a6cf:	48 8d 4b 78          	lea    0x78(%rbx),%rcx
  68a6d3:	4c 8b 29             	mov    (%rcx),%r13
  68a6d6:	89 95 00 fb ff ff    	mov    %edx,-0x500(%rbp)
  68a6dc:	4c 89 a5 f8 f4 ff ff 	mov    %r12,-0xb08(%rbp)
  68a6e3:	4c 89 9d e8 f4 ff ff 	mov    %r11,-0xb18(%rbp)
  68a6ea:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  68a6ee:	48 8b 79 e0          	mov    -0x20(%rcx),%rdi
  68a6f2:	4c 8b 49 e8          	mov    -0x18(%rcx),%r9
  68a6f6:	4c 8b 59 f0          	mov    -0x10(%rcx),%r11
  68a6fa:	4d 8b 27             	mov    (%r15),%r12
  68a6fd:	48 89 b5 e8 fa ff ff 	mov    %rsi,-0x518(%rbp)
  68a704:	48 89 85 f0 fa ff ff 	mov    %rax,-0x510(%rbp)
  68a70b:	48 8b 71 10          	mov    0x10(%rcx),%rsi
  68a70f:	41 8b 00             	mov    (%r8),%eax
  68a712:	4c 89 a5 50 f8 ff ff 	mov    %r12,-0x7b0(%rbp)
  68a719:	4c 8b 61 f8          	mov    -0x8(%rcx),%r12
  68a71d:	4d 8b 12             	mov    (%r10),%r10
  68a720:	89 85 f8 fa ff ff    	mov    %eax,-0x508(%rbp)
  68a726:	49 8b 45 00          	mov    0x0(%r13),%rax
  68a72a:	4c 89 95 78 fb ff ff 	mov    %r10,-0x488(%rbp)
  68a731:	48 8b 0a             	mov    (%rdx),%rcx
  68a734:	4c 8b 07             	mov    (%rdi),%r8
  68a737:	4d 8b 11             	mov    (%r9),%r10
  68a73a:	4d 8b 3b             	mov    (%r11),%r15
  68a73d:	48 89 85 40 fb ff ff 	mov    %rax,-0x4c0(%rbp)
  68a744:	48 8b 3e             	mov    (%rsi),%rdi
  68a747:	48 8d b3 98 00 00 00 	lea    0x98(%rbx),%rsi
  68a74e:	4c 8b 0e             	mov    (%rsi),%r9
  68a751:	4c 8b 5e 10          	mov    0x10(%rsi),%r11
  68a755:	48 8b 46 30          	mov    0x30(%rsi),%rax
  68a759:	48 89 8d 48 fb ff ff 	mov    %rcx,-0x4b8(%rbp)
  68a760:	4c 89 b5 20 fe ff ff 	mov    %r14,-0x1e0(%rbp)
  68a767:	4c 89 bd 38 f5 ff ff 	mov    %r15,-0xac8(%rbp)
  68a76e:	48 8b 4e 38          	mov    0x38(%rsi),%rcx
  68a772:	4c 8b 7e 18          	mov    0x18(%rsi),%r15
  68a776:	4d 8b 34 24          	mov    (%r12),%r14
  68a77a:	48 89 bd 50 fb ff ff 	mov    %rdi,-0x4b0(%rbp)
  68a781:	4c 89 8d 68 fb ff ff 	mov    %r9,-0x498(%rbp)
  68a788:	4c 89 9d 58 fb ff ff 	mov    %r11,-0x4a8(%rbp)
  68a78f:	4c 8d 9b d8 00 00 00 	lea    0xd8(%rbx),%r11
  68a796:	49 8b 3b             	mov    (%r11),%rdi
  68a799:	4d 8b 4b 10          	mov    0x10(%r11),%r9
  68a79d:	4d 8b 5b 18          	mov    0x18(%r11),%r11
  68a7a1:	4c 89 b5 38 fb ff ff 	mov    %r14,-0x4c8(%rbp)
  68a7a8:	4c 8d a3 b8 00 00 00 	lea    0xb8(%rbx),%r12
  68a7af:	4d 8b 34 24          	mov    (%r12),%r14
  68a7b3:	4d 8b 6c 24 08       	mov    0x8(%r12),%r13
  68a7b8:	4c 89 85 f0 f4 ff ff 	mov    %r8,-0xb10(%rbp)
  68a7bf:	4c 89 95 30 f5 ff ff 	mov    %r10,-0xad0(%rbp)
  68a7c6:	4d 8b 44 24 d8       	mov    -0x28(%r12),%r8
  68a7cb:	4d 8b 54 24 e8       	mov    -0x18(%r12),%r10
  68a7d0:	48 63 10             	movslq (%rax),%rdx
  68a7d3:	49 8b 44 24 40       	mov    0x40(%r12),%rax
  68a7d8:	48 63 31             	movslq (%rcx),%rsi
  68a7db:	4c 89 85 70 fb ff ff 	mov    %r8,-0x490(%rbp)
  68a7e2:	4c 89 95 60 fb ff ff 	mov    %r10,-0x4a0(%rbp)
  68a7e9:	4d 8b 27             	mov    (%r15),%r12
  68a7ec:	48 89 95 88 fb ff ff 	mov    %rdx,-0x478(%rbp)
  68a7f3:	4c 63 07             	movslq (%rdi),%r8
  68a7f6:	48 8d bd 70 f4 ff ff 	lea    -0xb90(%rbp),%rdi
  68a7fd:	4d 63 11             	movslq (%r9),%r10
  68a800:	4d 63 3b             	movslq (%r11),%r15
  68a803:	48 89 47 60          	mov    %rax,0x60(%rdi)
  68a807:	33 c0                	xor    %eax,%eax
  68a809:	4c 8d 9b 00 01 00 00 	lea    0x100(%rbx),%r11
  68a810:	49 8b 13             	mov    (%r11),%rdx
  68a813:	49 8b 4b 08          	mov    0x8(%r11),%rcx
  68a817:	48 89 b5 40 f5 ff ff 	mov    %rsi,-0xac0(%rbp)
  68a81e:	49 8b 73 10          	mov    0x10(%r11),%rsi
  68a822:	4d 8b 36             	mov    (%r14),%r14
  68a825:	4d 8b 6d 00          	mov    0x0(%r13),%r13
  68a829:	4c 89 85 90 fb ff ff 	mov    %r8,-0x470(%rbp)
  68a830:	4c 89 95 00 f9 ff ff 	mov    %r10,-0x700(%rbp)
  68a837:	4c 89 bd f8 f8 ff ff 	mov    %r15,-0x708(%rbp)
  68a83e:	48 89 57 68          	mov    %rdx,0x68(%rdi)
  68a842:	48 89 4f 70          	mov    %rcx,0x70(%rdi)
  68a846:	e8 65 3c df ff       	callq  47e4b0 <_f90_dope_vector_init>
  68a84b:	48 89 85 80 f5 ff ff 	mov    %rax,-0xa80(%rbp)
  68a852:	48 83 c0 1f          	add    $0x1f,%rax
  68a856:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68a85a:	48 2b e0             	sub    %rax,%rsp
  68a85d:	48 89 e0             	mov    %rsp,%rax
  68a860:	48 89 85 78 f5 ff ff 	mov    %rax,-0xa88(%rbp)
  68a867:	48 89 c2             	mov    %rax,%rdx
  68a86a:	48 8d bd f0 f5 ff ff 	lea    -0xa10(%rbp),%rdi
  68a871:	33 c0                	xor    %eax,%eax
  68a873:	48 8b b5 e0 f4 ff ff 	mov    -0xb20(%rbp),%rsi
  68a87a:	48 89 95 70 f4 ff ff 	mov    %rdx,-0xb90(%rbp)
  68a881:	e8 2a 3c df ff       	callq  47e4b0 <_f90_dope_vector_init>
  68a886:	48 89 85 90 f5 ff ff 	mov    %rax,-0xa70(%rbp)
  68a88d:	48 83 c0 1f          	add    $0x1f,%rax
  68a891:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68a895:	48 2b e0             	sub    %rax,%rsp
  68a898:	48 89 e0             	mov    %rsp,%rax
  68a89b:	48 89 85 88 f5 ff ff 	mov    %rax,-0xa78(%rbp)
  68a8a2:	48 89 c2             	mov    %rax,%rdx
  68a8a5:	48 8d bd 50 f6 ff ff 	lea    -0x9b0(%rbp),%rdi
  68a8ac:	33 c0                	xor    %eax,%eax
  68a8ae:	48 8b b5 d8 f4 ff ff 	mov    -0xb28(%rbp),%rsi
  68a8b5:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  68a8b9:	e8 f2 3b df ff       	callq  47e4b0 <_f90_dope_vector_init>
  68a8be:	48 89 85 a0 f5 ff ff 	mov    %rax,-0xa60(%rbp)
  68a8c5:	48 83 c0 1f          	add    $0x1f,%rax
  68a8c9:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68a8cd:	48 2b e0             	sub    %rax,%rsp
  68a8d0:	48 89 e0             	mov    %rsp,%rax
  68a8d3:	48 89 85 98 f5 ff ff 	mov    %rax,-0xa68(%rbp)
  68a8da:	48 89 c2             	mov    %rax,%rdx
  68a8dd:	48 8d bd b0 f6 ff ff 	lea    -0x950(%rbp),%rdi
  68a8e4:	33 c0                	xor    %eax,%eax
  68a8e6:	48 8b b5 d0 f4 ff ff 	mov    -0xb30(%rbp),%rsi
  68a8ed:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  68a8f1:	e8 ba 3b df ff       	callq  47e4b0 <_f90_dope_vector_init>
  68a8f6:	48 89 85 a8 f5 ff ff 	mov    %rax,-0xa58(%rbp)
  68a8fd:	48 83 c0 1f          	add    $0x1f,%rax
  68a901:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68a905:	48 2b e0             	sub    %rax,%rsp
  68a908:	48 89 e0             	mov    %rsp,%rax
  68a90b:	48 89 85 b0 f5 ff ff 	mov    %rax,-0xa50(%rbp)
  68a912:	48 8b 95 f0 f8 ff ff 	mov    -0x710(%rbp),%rdx
  68a919:	4c 8b 05 c0 17 4b 00 	mov    0x4b17c0(%rip),%r8        # b3c0e0 <mod_param_mp_n_+0x40>
  68a920:	49 f7 d8             	neg    %r8
  68a923:	48 8b 0a             	mov    (%rdx),%rcx
  68a926:	48 8b 3d 73 17 4b 00 	mov    0x4b1773(%rip),%rdi        # b3c0a0 <mod_param_mp_n_>
  68a92d:	48 63 31             	movslq (%rcx),%rsi
  68a930:	4c 03 c6             	add    %rsi,%r8
  68a933:	48 89 85 b0 f6 ff ff 	mov    %rax,-0x950(%rbp)
  68a93a:	46 8b 3c 87          	mov    (%rdi,%r8,4),%r15d
  68a93e:	45 85 ff             	test   %r15d,%r15d
  68a941:	0f 8e 1a 3c 00 00    	jle    68e561 <step3d_t_mod_mp_step3d_t_tile_+0x78f1>
  68a947:	48 83 c4 e0          	add    $0xffffffffffffffe0,%rsp
  68a94b:	48 8d 85 ec f8 ff ff 	lea    -0x714(%rbp),%rax
  68a952:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  68a958:	bf 70 56 b3 00       	mov    $0xb35670,%edi
  68a95d:	ba 22 00 00 00       	mov    $0x22,%edx
  68a962:	48 8d 8d e8 f8 ff ff 	lea    -0x718(%rbp),%rcx
  68a969:	44 89 78 f8          	mov    %r15d,-0x8(%rax)
  68a96d:	4c 8d 85 e0 f8 ff ff 	lea    -0x720(%rbp),%r8
  68a974:	48 89 04 24          	mov    %rax,(%rsp)
  68a978:	4c 8d 8d e4 f8 ff ff 	lea    -0x71c(%rbp),%r9
  68a97f:	44 89 54 24 08       	mov    %r10d,0x8(%rsp)
  68a984:	44 89 54 24 10       	mov    %r10d,0x10(%rsp)
  68a989:	8b 70 e4             	mov    -0x1c(%rax),%esi
  68a98c:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%rax)
  68a993:	44 89 50 f4          	mov    %r10d,-0xc(%rax)
  68a997:	44 89 10             	mov    %r10d,(%rax)
  68a99a:	e8 91 34 d8 ff       	callq  40de30 <__kmpc_for_static_init_4@plt>
  68a99f:	48 83 c4 20          	add    $0x20,%rsp
  68a9a3:	4d 63 ff             	movslq %r15d,%r15
  68a9a6:	48 63 85 e0 f8 ff ff 	movslq -0x720(%rbp),%rax
  68a9ad:	8b 95 e4 f8 ff ff    	mov    -0x71c(%rbp),%edx
  68a9b3:	48 89 85 08 f9 ff ff 	mov    %rax,-0x6f8(%rbp)
  68a9ba:	49 3b c7             	cmp    %r15,%rax
  68a9bd:	0f 8f 8b 3b 00 00    	jg     68e54e <step3d_t_mod_mp_step3d_t_tile_+0x78de>
  68a9c3:	49 63 45 00          	movslq 0x0(%r13),%rax
  68a9c7:	41 3b d7             	cmp    %r15d,%edx
  68a9ca:	48 89 85 30 f9 ff ff 	mov    %rax,-0x6d0(%rbp)
  68a9d1:	49 8b 3c 24          	mov    (%r12),%rdi
  68a9d5:	44 0f 4c fa          	cmovl  %edx,%r15d
  68a9d9:	49 8b 44 24 50       	mov    0x50(%r12),%rax
  68a9de:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  68a9e3:	4c 8b 9d 88 fb ff ff 	mov    -0x478(%rbp),%r11
  68a9ea:	4c 29 9d 40 f5 ff ff 	sub    %r11,-0xac0(%rbp)
  68a9f1:	4c 89 65 88          	mov    %r12,-0x78(%rbp)
  68a9f5:	4d 8b 1e             	mov    (%r14),%r11
  68a9f8:	4d 8b 66 38          	mov    0x38(%r14),%r12
  68a9fc:	49 8b 4e 50          	mov    0x50(%r14),%rcx
  68aa00:	4c 8b b5 38 f5 ff ff 	mov    -0xac8(%rbp),%r14
  68aa07:	4c 8b 85 30 f5 ff ff 	mov    -0xad0(%rbp),%r8
  68aa0e:	48 89 bd b0 f9 ff ff 	mov    %rdi,-0x650(%rbp)
  68aa15:	49 8b 76 38          	mov    0x38(%r14),%rsi
  68aa19:	48 89 b5 20 f5 ff ff 	mov    %rsi,-0xae0(%rbp)
  68aa20:	48 8b b5 f8 f4 ff ff 	mov    -0xb08(%rbp),%rsi
  68aa27:	49 8b 3e             	mov    (%r14),%rdi
  68aa2a:	49 8b 56 50          	mov    0x50(%r14),%rdx
  68aa2e:	4c 89 9d b8 f9 ff ff 	mov    %r11,-0x648(%rbp)
  68aa35:	4c 89 65 90          	mov    %r12,-0x70(%rbp)
  68aa39:	48 89 bd 28 f5 ff ff 	mov    %rdi,-0xad8(%rbp)
  68aa40:	48 89 95 18 f5 ff ff 	mov    %rdx,-0xae8(%rbp)
  68aa47:	4d 8b 18             	mov    (%r8),%r11
  68aa4a:	49 8b 78 38          	mov    0x38(%r8),%rdi
  68aa4e:	49 8b 50 68          	mov    0x68(%r8),%rdx
  68aa52:	4c 2b da             	sub    %rdx,%r11
  68aa55:	4d 8b 60 50          	mov    0x50(%r8),%r12
  68aa59:	4c 8b 46 38          	mov    0x38(%rsi),%r8
  68aa5d:	4c 89 85 88 fe ff ff 	mov    %r8,-0x178(%rbp)
  68aa64:	4d 63 ff             	movslq %r15d,%r15
  68aa67:	4c 8b 85 f0 f4 ff ff 	mov    -0xb10(%rbp),%r8
  68aa6e:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  68aa75:	4d 2b fd             	sub    %r13,%r15
  68aa78:	49 ff c7             	inc    %r15
  68aa7b:	4c 89 bd b8 f5 ff ff 	mov    %r15,-0xa48(%rbp)
  68aa82:	4c 8b 16             	mov    (%rsi),%r10
  68aa85:	4c 8b 4e 68          	mov    0x68(%rsi),%r9
  68aa89:	4d 2b d1             	sub    %r9,%r10
  68aa8c:	4c 8b 76 50          	mov    0x50(%rsi),%r14
  68aa90:	4c 8b bd 78 fb ff ff 	mov    -0x488(%rbp),%r15
  68aa97:	49 8b 70 50          	mov    0x50(%r8),%rsi
  68aa9b:	48 89 b5 80 fe ff ff 	mov    %rsi,-0x180(%rbp)
  68aaa2:	48 8b b5 e8 f4 ff ff 	mov    -0xb18(%rbp),%rsi
  68aaa9:	4c 89 8d 60 f9 ff ff 	mov    %r9,-0x6a0(%rbp)
  68aab0:	4d 63 0f             	movslq (%r15),%r9
  68aab3:	4c 89 95 68 f8 ff ff 	mov    %r10,-0x798(%rbp)
  68aaba:	4c 89 8d d8 f8 ff ff 	mov    %r9,-0x728(%rbp)
  68aac1:	4d 8b 10             	mov    (%r8),%r10
  68aac4:	4d 8b 48 38          	mov    0x38(%r8),%r9
  68aac8:	4c 8b 46 38          	mov    0x38(%rsi),%r8
  68aacc:	4c 89 85 90 f9 ff ff 	mov    %r8,-0x670(%rbp)
  68aad3:	44 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%r8d
  68aada:	4c 8b 3e             	mov    (%rsi),%r15
  68aadd:	4c 89 bd 98 f9 ff ff 	mov    %r15,-0x668(%rbp)
  68aae4:	4c 89 95 a0 f9 ff ff 	mov    %r10,-0x660(%rbp)
  68aaeb:	45 8d 78 01          	lea    0x1(%r8),%r15d
  68aaef:	44 89 bd 10 fb ff ff 	mov    %r15d,-0x4f0(%rbp)
  68aaf6:	4c 63 bd 00 fb ff ff 	movslq -0x500(%rbp),%r15
  68aafd:	4c 8b 56 50          	mov    0x50(%rsi),%r10
  68ab01:	4c 89 fe             	mov    %r15,%rsi
  68ab04:	48 0f af f0          	imul   %rax,%rsi
  68ab08:	4c 0f af ea          	imul   %rdx,%r13
  68ab0c:	c5 fd 10 0d cc a6 23 	vmovupd 0x23a6cc(%rip),%ymm1        # 8c51e0 <var$630.126.450+0x320>
  68ab13:	00 
  68ab14:	c5 f9 10 2d 84 be 23 	vmovupd 0x23be84(%rip),%xmm5        # 8c69a0 <__STRLITPACK_19.34+0x10>
  68ab1b:	00 
  68ab1c:	c5 f9 10 25 8c be 23 	vmovupd 0x23be8c(%rip),%xmm4        # 8c69b0 <__STRLITPACK_19.34+0x20>
  68ab23:	00 
  68ab24:	c5 fb 10 1d ec c6 23 	vmovsd 0x23c6ec(%rip),%xmm3        # 8c7218 <__STRLITPACK_199.115+0x88>
  68ab2b:	00 
  68ab2c:	c5 fb 10 15 24 ca 23 	vmovsd 0x23ca24(%rip),%xmm2        # 8c7558 <__STRLITPACK_199.115+0x3c8>
  68ab33:	00 
  68ab34:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
  68ab3b:	4c 89 f8             	mov    %r15,%rax
  68ab3e:	48 89 b5 e0 f4 ff ff 	mov    %rsi,-0xb20(%rbp)
  68ab45:	4c 89 fe             	mov    %r15,%rsi
  68ab48:	48 0f af c1          	imul   %rcx,%rax
  68ab4c:	49 0f af f6          	imul   %r14,%rsi
  68ab50:	c5 fd 10 05 a8 a6 23 	vmovupd 0x23a6a8(%rip),%ymm0        # 8c5200 <var$630.126.450+0x340>
  68ab57:	00 
  68ab58:	4d 63 c0             	movslq %r8d,%r8
  68ab5b:	4c 89 85 d8 f4 ff ff 	mov    %r8,-0xb28(%rbp)
  68ab62:	4d 2b c7             	sub    %r15,%r8
  68ab65:	48 89 85 48 f5 ff ff 	mov    %rax,-0xab8(%rbp)
  68ab6c:	48 89 b5 c0 f9 ff ff 	mov    %rsi,-0x640(%rbp)
  68ab73:	4c 89 fe             	mov    %r15,%rsi
  68ab76:	4c 89 95 78 fe ff ff 	mov    %r10,-0x188(%rbp)
  68ab7d:	49 0f af f2          	imul   %r10,%rsi
  68ab81:	4c 89 8d 88 f9 ff ff 	mov    %r9,-0x678(%rbp)
  68ab88:	49 8d 40 01          	lea    0x1(%r8),%rax
  68ab8c:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  68ab93:	48 63 85 58 ff ff ff 	movslq -0xa8(%rbp),%rax
  68ab9a:	49 89 c2             	mov    %rax,%r10
  68ab9d:	4d 0f af d1          	imul   %r9,%r10
  68aba1:	49 89 c1             	mov    %rax,%r9
  68aba4:	4c 0f af 8d 88 fe ff 	imul   -0x178(%rbp),%r9
  68abab:	ff 
  68abac:	4c 89 b5 70 fe ff ff 	mov    %r14,-0x190(%rbp)
  68abb3:	4d 8d 70 03          	lea    0x3(%r8),%r14
  68abb7:	4c 89 b5 60 ff ff ff 	mov    %r14,-0xa0(%rbp)
  68abbe:	49 83 c0 02          	add    $0x2,%r8
  68abc2:	4c 63 b5 28 fe ff ff 	movslq -0x1d8(%rbp),%r14
  68abc9:	4c 89 95 60 f5 ff ff 	mov    %r10,-0xaa0(%rbp)
  68abd0:	4d 89 f2             	mov    %r14,%r10
  68abd3:	4c 2b d0             	sub    %rax,%r10
  68abd6:	4c 89 8d 68 f5 ff ff 	mov    %r9,-0xa98(%rbp)
  68abdd:	48 89 8d 60 fe ff ff 	mov    %rcx,-0x1a0(%rbp)
  68abe4:	4c 89 f9             	mov    %r15,%rcx
  68abe7:	4c 89 a5 68 fe ff ff 	mov    %r12,-0x198(%rbp)
  68abee:	49 0f af cc          	imul   %r12,%rcx
  68abf2:	48 89 b5 58 f5 ff ff 	mov    %rsi,-0xaa8(%rbp)
  68abf9:	4d 8d 4a 03          	lea    0x3(%r10),%r9
  68abfd:	4c 89 8d 50 ff ff ff 	mov    %r9,-0xb0(%rbp)
  68ac04:	4d 8d 4a 02          	lea    0x2(%r10),%r9
  68ac08:	4c 89 8d 78 fd ff ff 	mov    %r9,-0x288(%rbp)
  68ac0f:	4e 8d 0c d5 08 00 00 	lea    0x8(,%r10,8),%r9
  68ac16:	00 
  68ac17:	49 ff c2             	inc    %r10
  68ac1a:	48 89 c6             	mov    %rax,%rsi
  68ac1d:	4c 89 95 70 fd ff ff 	mov    %r10,-0x290(%rbp)
  68ac24:	4c 89 8d f0 f7 ff ff 	mov    %r9,-0x810(%rbp)
  68ac2b:	45 89 d1             	mov    %r10d,%r9d
  68ac2e:	41 83 e1 fe          	and    $0xfffffffe,%r9d
  68ac32:	4d 63 c9             	movslq %r9d,%r9
  68ac35:	4c 89 4d 80          	mov    %r9,-0x80(%rbp)
  68ac39:	4c 8b 8d f8 f8 ff ff 	mov    -0x708(%rbp),%r9
  68ac40:	4d 0f af cc          	imul   %r12,%r9
  68ac44:	48 0f af f7          	imul   %rdi,%rsi
  68ac48:	4d 89 ec             	mov    %r13,%r12
  68ac4b:	4d 03 eb             	add    %r11,%r13
  68ac4e:	4d 2b e1             	sub    %r9,%r12
  68ac51:	4c 2b c9             	sub    %rcx,%r9
  68ac54:	4c 89 a5 a8 f9 ff ff 	mov    %r12,-0x658(%rbp)
  68ac5b:	48 89 95 58 f9 ff ff 	mov    %rdx,-0x6a8(%rbp)
  68ac62:	4c 89 9d d0 f4 ff ff 	mov    %r11,-0xb30(%rbp)
  68ac69:	48 89 8d 50 f5 ff ff 	mov    %rcx,-0xab0(%rbp)
  68ac70:	4b 8d 14 23          	lea    (%r11,%r12,1),%rdx
  68ac74:	4c 8b a5 00 f9 ff ff 	mov    -0x700(%rbp),%r12
  68ac7b:	49 89 d3             	mov    %rdx,%r11
  68ac7e:	4c 0f af e7          	imul   %rdi,%r12
  68ac82:	4d 2b dc             	sub    %r12,%r11
  68ac85:	49 2b cc             	sub    %r12,%rcx
  68ac88:	4c 2b e6             	sub    %rsi,%r12
  68ac8b:	48 03 d1             	add    %rcx,%rdx
  68ac8e:	4d 03 cc             	add    %r12,%r9
  68ac91:	48 03 d6             	add    %rsi,%rdx
  68ac94:	4d 2b e9             	sub    %r9,%r13
  68ac97:	4a 8d 34 fd f8 ff ff 	lea    -0x8(,%r15,8),%rsi
  68ac9e:	ff 
  68ac9f:	4c 89 85 38 fe ff ff 	mov    %r8,-0x1c8(%rbp)
  68aca6:	4e 8d 04 fd 00 00 00 	lea    0x0(,%r15,8),%r8
  68acad:	00 
  68acae:	48 89 95 40 f9 ff ff 	mov    %rdx,-0x6c0(%rbp)
  68acb5:	48 89 bd 90 fe ff ff 	mov    %rdi,-0x170(%rbp)
  68acbc:	4c 89 9d 58 f8 ff ff 	mov    %r11,-0x7a8(%rbp)
  68acc3:	4d 8d 6c 7d 00       	lea    0x0(%r13,%rdi,2),%r13
  68acc8:	4c 89 ad 48 f9 ff ff 	mov    %r13,-0x6b8(%rbp)
  68accf:	4c 8b ad 40 f5 ff ff 	mov    -0xac0(%rbp),%r13
  68acd6:	4c 89 ef             	mov    %r13,%rdi
  68acd9:	48 c1 e7 04          	shl    $0x4,%rdi
  68acdd:	48 89 bd c0 f5 ff ff 	mov    %rdi,-0xa40(%rbp)
  68ace4:	49 8d 55 01          	lea    0x1(%r13),%rdx
  68ace8:	4c 0f af c2          	imul   %rdx,%r8
  68acec:	48 0f af f2          	imul   %rdx,%rsi
  68acf0:	4c 8b 9d 88 fb ff ff 	mov    -0x478(%rbp),%r11
  68acf7:	4e 8d 0c ed 08 00 00 	lea    0x8(,%r13,8),%r9
  68acfe:	00 
  68acff:	48 8b bd d8 f4 ff ff 	mov    -0xb28(%rbp),%rdi
  68ad06:	4c 89 bd 78 f9 ff ff 	mov    %r15,-0x688(%rbp)
  68ad0d:	48 89 85 98 fb ff ff 	mov    %rax,-0x468(%rbp)
  68ad14:	4e 8d 24 dd 00 00 00 	lea    0x0(,%r11,8),%r12
  68ad1b:	00 
  68ad1c:	49 c1 e6 03          	shl    $0x3,%r14
  68ad20:	4e 8d 1c ed 00 00 00 	lea    0x0(,%r13,8),%r11
  68ad27:	00 
  68ad28:	4c 89 a5 60 f8 ff ff 	mov    %r12,-0x7a0(%rbp)
  68ad2f:	4c 8d 3c fd 10 00 00 	lea    0x10(,%rdi,8),%r15
  68ad36:	00 
  68ad37:	4d 2b f4             	sub    %r12,%r14
  68ad3a:	48 8d 0c fd 08 00 00 	lea    0x8(,%rdi,8),%rcx
  68ad41:	00 
  68ad42:	48 0f af ca          	imul   %rdx,%rcx
  68ad46:	4c 0f af fa          	imul   %rdx,%r15
  68ad4a:	44 89 95 48 fe ff ff 	mov    %r10d,-0x1b8(%rbp)
  68ad51:	4b 8d 3c e8          	lea    (%r8,%r13,8),%rdi
  68ad55:	4c 8b ad 90 fb ff ff 	mov    -0x470(%rbp),%r13
  68ad5c:	48 c1 e0 03          	shl    $0x3,%rax
  68ad60:	4d 0f af e9          	imul   %r9,%r13
  68ad64:	48 89 85 d8 f9 ff ff 	mov    %rax,-0x628(%rbp)
  68ad6b:	49 2b c4             	sub    %r12,%rax
  68ad6e:	4d 89 dc             	mov    %r11,%r12
  68ad71:	41 83 e2 fc          	and    $0xfffffffc,%r10d
  68ad75:	49 f7 dc             	neg    %r12
  68ad78:	4d 2b dd             	sub    %r13,%r11
  68ad7b:	4d 63 d2             	movslq %r10d,%r10
  68ad7e:	4c 89 95 78 ff ff ff 	mov    %r10,-0x88(%rbp)
  68ad85:	4e 8d 14 00          	lea    (%rax,%r8,1),%r10
  68ad89:	48 89 95 70 f5 ff ff 	mov    %rdx,-0xa90(%rbp)
  68ad90:	4d 03 da             	add    %r10,%r11
  68ad93:	4c 89 9d c8 f9 ff ff 	mov    %r11,-0x638(%rbp)
  68ad9a:	4b 8d 14 04          	lea    (%r12,%r8,1),%rdx
  68ad9e:	4d 2b e5             	sub    %r13,%r12
  68ada1:	4c 8d 1c 10          	lea    (%rax,%rdx,1),%r11
  68ada5:	4d 03 e2             	add    %r10,%r12
  68ada8:	4d 2b d5             	sub    %r13,%r10
  68adab:	4c 89 95 c0 fa ff ff 	mov    %r10,-0x540(%rbp)
  68adb2:	4c 8d 14 38          	lea    (%rax,%rdi,1),%r10
  68adb6:	49 03 fe             	add    %r14,%rdi
  68adb9:	49 03 d6             	add    %r14,%rdx
  68adbc:	4d 03 f0             	add    %r8,%r14
  68adbf:	4d 2b d5             	sub    %r13,%r10
  68adc2:	4d 2b f5             	sub    %r13,%r14
  68adc5:	4d 2b dd             	sub    %r13,%r11
  68adc8:	48 89 8d 20 f8 ff ff 	mov    %rcx,-0x7e0(%rbp)
  68adcf:	49 2b fd             	sub    %r13,%rdi
  68add2:	4c 89 b5 e8 f7 ff ff 	mov    %r14,-0x818(%rbp)
  68add9:	4c 8d 34 08          	lea    (%rax,%rcx,1),%r14
  68addd:	49 2b cd             	sub    %r13,%rcx
  68ade0:	4d 2b f5             	sub    %r13,%r14
  68ade3:	4c 89 95 c8 f5 ff ff 	mov    %r10,-0xa38(%rbp)
  68adea:	48 03 c8             	add    %rax,%rcx
  68aded:	4c 8b 95 f8 f8 ff ff 	mov    -0x708(%rbp),%r10
  68adf4:	49 2b d5             	sub    %r13,%rdx
  68adf7:	48 89 8d 38 f8 ff ff 	mov    %rcx,-0x7c8(%rbp)
  68adfe:	4c 89 d1             	mov    %r10,%rcx
  68ae01:	48 0f af 8d 58 fe ff 	imul   -0x1a8(%rbp),%rcx
  68ae08:	ff 
  68ae09:	4c 89 85 a0 fb ff ff 	mov    %r8,-0x460(%rbp)
  68ae10:	4d 2b c5             	sub    %r13,%r8
  68ae13:	4c 89 9d d0 f5 ff ff 	mov    %r11,-0xa30(%rbp)
  68ae1a:	4e 8d 1c 38          	lea    (%rax,%r15,1),%r11
  68ae1e:	4c 89 85 f0 f9 ff ff 	mov    %r8,-0x610(%rbp)
  68ae25:	4d 2b dd             	sub    %r13,%r11
  68ae28:	4c 89 9d f8 f7 ff ff 	mov    %r11,-0x808(%rbp)
  68ae2f:	4c 89 a5 a8 fa ff ff 	mov    %r12,-0x558(%rbp)
  68ae36:	4e 8d 1c 00          	lea    (%rax,%r8,1),%r11
  68ae3a:	4c 8b 85 00 f9 ff ff 	mov    -0x700(%rbp),%r8
  68ae41:	4c 8d 24 30          	lea    (%rax,%rsi,1),%r12
  68ae45:	4c 89 9d b0 fa ff ff 	mov    %r11,-0x550(%rbp)
  68ae4c:	4d 89 c3             	mov    %r8,%r11
  68ae4f:	49 f7 db             	neg    %r11
  68ae52:	4d 2b e5             	sub    %r13,%r12
  68ae55:	4c 03 9d 98 fb ff ff 	add    -0x468(%rbp),%r11
  68ae5c:	4c 89 b5 00 f8 ff ff 	mov    %r14,-0x800(%rbp)
  68ae63:	4c 8b b5 b0 f9 ff ff 	mov    -0x650(%rbp),%r14
  68ae6a:	4c 89 a5 08 f8 ff ff 	mov    %r12,-0x7f8(%rbp)
  68ae71:	4d 89 f4             	mov    %r14,%r12
  68ae74:	48 89 bd e0 f5 ff ff 	mov    %rdi,-0xa20(%rbp)
  68ae7b:	4c 89 df             	mov    %r11,%rdi
  68ae7e:	4c 2b e1             	sub    %rcx,%r12
  68ae81:	48 0f af 7d 88       	imul   -0x78(%rbp),%rdi
  68ae86:	4c 0f af 5d 90       	imul   -0x70(%rbp),%r11
  68ae8b:	48 89 95 e8 f5 ff ff 	mov    %rdx,-0xa18(%rbp)
  68ae92:	48 8b 95 e0 f4 ff ff 	mov    -0xb20(%rbp),%rdx
  68ae99:	4c 03 e2             	add    %rdx,%r12
  68ae9c:	48 2b ca             	sub    %rdx,%rcx
  68ae9f:	4c 89 d2             	mov    %r10,%rdx
  68aea2:	48 0f af 95 60 fe ff 	imul   -0x1a0(%rbp),%rdx
  68aea9:	ff 
  68aeaa:	48 89 b5 10 f8 ff ff 	mov    %rsi,-0x7f0(%rbp)
  68aeb1:	49 2b f5             	sub    %r13,%rsi
  68aeb4:	49 03 fc             	add    %r12,%rdi
  68aeb7:	48 03 f0             	add    %rax,%rsi
  68aeba:	48 89 bd 50 f9 ff ff 	mov    %rdi,-0x6b0(%rbp)
  68aec1:	4e 8d 24 c5 00 00 00 	lea    0x0(,%r8,8),%r12
  68aec8:	00 
  68aec9:	48 8b bd b8 f9 ff ff 	mov    -0x648(%rbp),%rdi
  68aed0:	48 89 b5 48 f8 ff ff 	mov    %rsi,-0x7b8(%rbp)
  68aed7:	48 89 fe             	mov    %rdi,%rsi
  68aeda:	4c 89 bd 18 f8 ff ff 	mov    %r15,-0x7e8(%rbp)
  68aee1:	4d 2b fd             	sub    %r13,%r15
  68aee4:	48 2b f2             	sub    %rdx,%rsi
  68aee7:	4c 03 f8             	add    %rax,%r15
  68aeea:	4c 89 bd 40 f8 ff ff 	mov    %r15,-0x7c0(%rbp)
  68aef1:	4c 8b bd 48 f5 ff ff 	mov    -0xab8(%rbp),%r15
  68aef8:	49 03 f7             	add    %r15,%rsi
  68aefb:	4c 03 de             	add    %rsi,%r11
  68aefe:	49 2b d7             	sub    %r15,%rdx
  68af01:	4c 89 9d d0 f9 ff ff 	mov    %r11,-0x630(%rbp)
  68af08:	4c 8b 9d d8 f9 ff ff 	mov    -0x628(%rbp),%r11
  68af0f:	4d 2b dc             	sub    %r12,%r11
  68af12:	49 f7 dc             	neg    %r12
  68af15:	4c 89 8d 70 ff ff ff 	mov    %r9,-0x90(%rbp)
  68af1c:	4d 03 f3             	add    %r11,%r14
  68af1f:	4c 8b 8d d0 f4 ff ff 	mov    -0xb30(%rbp),%r9
  68af26:	4c 2b f1             	sub    %rcx,%r14
  68af29:	4d 03 cb             	add    %r11,%r9
  68af2c:	49 03 fb             	add    %r11,%rdi
  68af2f:	48 8b b5 a8 f9 ff ff 	mov    -0x658(%rbp),%rsi
  68af36:	48 2b fa             	sub    %rdx,%rdi
  68af39:	4c 89 b5 b0 f9 ff ff 	mov    %r14,-0x650(%rbp)
  68af40:	49 03 f1             	add    %r9,%rsi
  68af43:	4d 89 d6             	mov    %r10,%r14
  68af46:	4d 89 d1             	mov    %r10,%r9
  68af49:	48 8b 8d 18 f5 ff ff 	mov    -0xae8(%rbp),%rcx
  68af50:	48 03 b5 50 f5 ff ff 	add    -0xab0(%rbp),%rsi
  68af57:	4c 0f af f1          	imul   %rcx,%r14
  68af5b:	4c 0f af 8d 70 fe ff 	imul   -0x190(%rbp),%r9
  68af62:	ff 
  68af63:	48 89 b5 a8 f9 ff ff 	mov    %rsi,-0x658(%rbp)
  68af6a:	4c 89 c6             	mov    %r8,%rsi
  68af6d:	48 8b 95 20 f5 ff ff 	mov    -0xae0(%rbp),%rdx
  68af74:	48 f7 d9             	neg    %rcx
  68af77:	48 0f af f2          	imul   %rdx,%rsi
  68af7b:	4c 8b bd 28 f5 ff ff 	mov    -0xad8(%rbp),%r15
  68af82:	48 2b ce             	sub    %rsi,%rcx
  68af85:	4d 2b fe             	sub    %r14,%r15
  68af88:	48 89 bd b8 f9 ff ff 	mov    %rdi,-0x648(%rbp)
  68af8f:	4c 89 ff             	mov    %r15,%rdi
  68af92:	48 2b fe             	sub    %rsi,%rdi
  68af95:	48 03 f2             	add    %rdx,%rsi
  68af98:	49 03 cf             	add    %r15,%rcx
  68af9b:	4c 2b fe             	sub    %rsi,%r15
  68af9e:	48 8b b5 08 f9 ff ff 	mov    -0x6f8(%rbp),%rsi
  68afa5:	48 0f af b5 60 f9 ff 	imul   -0x6a0(%rbp),%rsi
  68afac:	ff 
  68afad:	48 89 bd 00 f5 ff ff 	mov    %rdi,-0xb00(%rbp)
  68afb4:	8b bd 28 fe ff ff    	mov    -0x1d8(%rbp),%edi
  68afba:	48 89 8d 08 f5 ff ff 	mov    %rcx,-0xaf8(%rbp)
  68afc1:	48 89 f1             	mov    %rsi,%rcx
  68afc4:	49 2b c9             	sub    %r9,%rcx
  68afc7:	4c 89 bd 28 f5 ff ff 	mov    %r15,-0xad8(%rbp)
  68afce:	44 8d 77 01          	lea    0x1(%rdi),%r14d
  68afd2:	44 89 b5 40 fe ff ff 	mov    %r14d,-0x1c0(%rbp)
  68afd9:	4c 8b b5 68 f8 ff ff 	mov    -0x798(%rbp),%r14
  68afe0:	4c 8b bd c0 f9 ff ff 	mov    -0x640(%rbp),%r15
  68afe7:	49 03 f6             	add    %r14,%rsi
  68afea:	4d 2b cf             	sub    %r15,%r9
  68afed:	4c 89 ad 90 fb ff ff 	mov    %r13,-0x470(%rbp)
  68aff4:	4b 8d 14 33          	lea    (%r11,%r14,1),%rdx
  68aff8:	48 03 d1             	add    %rcx,%rdx
  68affb:	4c 03 f1             	add    %rcx,%r14
  68affe:	49 03 d7             	add    %r15,%rdx
  68b001:	48 89 95 e0 f9 ff ff 	mov    %rdx,-0x620(%rbp)
  68b008:	4c 89 c2             	mov    %r8,%rdx
  68b00b:	48 8b 8d 88 fe ff ff 	mov    -0x178(%rbp),%rcx
  68b012:	48 0f af d1          	imul   %rcx,%rdx
  68b016:	4c 2b fa             	sub    %rdx,%r15
  68b019:	4d 03 fe             	add    %r14,%r15
  68b01c:	4c 2b f2             	sub    %rdx,%r14
  68b01f:	4c 89 b5 68 f8 ff ff 	mov    %r14,-0x798(%rbp)
  68b026:	4c 8b b5 68 f5 ff ff 	mov    -0xa98(%rbp),%r14
  68b02d:	49 2b d6             	sub    %r14,%rdx
  68b030:	4c 03 ca             	add    %rdx,%r9
  68b033:	4d 03 fe             	add    %r14,%r15
  68b036:	49 2b f1             	sub    %r9,%rsi
  68b039:	48 8b 95 e8 fa ff ff 	mov    -0x518(%rbp),%rdx
  68b040:	4c 89 bd c0 f9 ff ff 	mov    %r15,-0x640(%rbp)
  68b047:	48 c7 85 38 f9 ff ff 	movq   $0x0,-0x6c8(%rbp)
  68b04e:	00 00 00 00 
  68b052:	4c 89 9d d8 f9 ff ff 	mov    %r11,-0x628(%rbp)
  68b059:	4c 8d 0c 4e          	lea    (%rsi,%rcx,2),%r9
  68b05d:	48 8b 8d f0 fa ff ff 	mov    -0x510(%rbp),%rcx
  68b064:	48 2b d1             	sub    %rcx,%rdx
  68b067:	48 ff c2             	inc    %rdx
  68b06a:	48 89 95 50 fe ff ff 	mov    %rdx,-0x1b0(%rbp)
  68b071:	4c 8d 3c cd 00 00 00 	lea    0x0(,%rcx,8),%r15
  68b078:	00 
  68b079:	48 8b 95 70 f5 ff ff 	mov    -0xa90(%rbp),%rdx
  68b080:	49 0f af d7          	imul   %r15,%rdx
  68b084:	49 89 d6             	mov    %rdx,%r14
  68b087:	4d 2b f5             	sub    %r13,%r14
  68b08a:	4c 03 f0             	add    %rax,%r14
  68b08d:	48 03 c2             	add    %rdx,%rax
  68b090:	4c 89 b5 70 f9 ff ff 	mov    %r14,-0x690(%rbp)
  68b097:	4d 89 d6             	mov    %r10,%r14
  68b09a:	48 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%rdx
  68b0a1:	49 2b c5             	sub    %r13,%rax
  68b0a4:	4c 0f af f2          	imul   %rdx,%r14
  68b0a8:	48 0f af ca          	imul   %rdx,%rcx
  68b0ac:	4c 0f af 95 78 fe ff 	imul   -0x188(%rbp),%r10
  68b0b3:	ff 
  68b0b4:	4c 89 8d 68 f9 ff ff 	mov    %r9,-0x698(%rbp)
  68b0bb:	44 8b 8d 00 fb ff ff 	mov    -0x500(%rbp),%r9d
  68b0c2:	4c 8b bd a0 f9 ff ff 	mov    -0x660(%rbp),%r15
  68b0c9:	48 89 85 e8 f9 ff ff 	mov    %rax,-0x618(%rbp)
  68b0d0:	41 8d 71 ff          	lea    -0x1(%r9),%esi
  68b0d4:	89 b5 18 fb ff ff    	mov    %esi,-0x4e8(%rbp)
  68b0da:	8b b5 58 ff ff ff    	mov    -0xa8(%rbp),%esi
  68b0e0:	2b fe                	sub    %esi,%edi
  68b0e2:	ff c7                	inc    %edi
  68b0e4:	89 bd 10 f5 ff ff    	mov    %edi,-0xaf0(%rbp)
  68b0ea:	4c 89 ff             	mov    %r15,%rdi
  68b0ed:	49 2b fe             	sub    %r14,%rdi
  68b0f0:	4d 03 fb             	add    %r11,%r15
  68b0f3:	4c 2b f1             	sub    %rcx,%r14
  68b0f6:	8d 76 ff             	lea    -0x1(%rsi),%esi
  68b0f9:	4d 2b fe             	sub    %r14,%r15
  68b0fc:	4c 89 bd a0 f9 ff ff 	mov    %r15,-0x660(%rbp)
  68b103:	4d 89 c7             	mov    %r8,%r15
  68b106:	4c 8b b5 88 f9 ff ff 	mov    -0x678(%rbp),%r14
  68b10d:	48 8d 14 0f          	lea    (%rdi,%rcx,1),%rdx
  68b111:	4d 0f af fe          	imul   %r14,%r15
  68b115:	49 2b cf             	sub    %r15,%rcx
  68b118:	48 03 f9             	add    %rcx,%rdi
  68b11b:	48 8b 8d 60 f5 ff ff 	mov    -0xaa0(%rbp),%rcx
  68b122:	4c 2b f9             	sub    %rcx,%r15
  68b125:	49 2b d7             	sub    %r15,%rdx
  68b128:	89 b5 b8 fa ff ff    	mov    %esi,-0x548(%rbp)
  68b12e:	4e 8d 3c 71          	lea    (%rcx,%r14,2),%r15
  68b132:	48 8b 8d 78 fd ff ff 	mov    -0x288(%rbp),%rcx
  68b139:	49 03 ff             	add    %r15,%rdi
  68b13c:	4c 8b b5 50 ff ff ff 	mov    -0xb0(%rbp),%r14
  68b143:	83 e1 fc             	and    $0xfffffffc,%ecx
  68b146:	48 63 c9             	movslq %ecx,%rcx
  68b149:	41 83 e6 fc          	and    $0xfffffffc,%r14d
  68b14d:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
  68b151:	8b 8d f8 fa ff ff    	mov    -0x508(%rbp),%ecx
  68b157:	41 2b c9             	sub    %r9d,%ecx
  68b15a:	ff c1                	inc    %ecx
  68b15c:	4c 8b 8d 30 fe ff ff 	mov    -0x1d0(%rbp),%r9
  68b163:	89 8d 30 f8 ff ff    	mov    %ecx,-0x7d0(%rbp)
  68b169:	4e 8d 3c cd 00 00 00 	lea    0x0(,%r9,8),%r15
  68b170:	00 
  68b171:	4d 03 e7             	add    %r15,%r12
  68b174:	d1 e9                	shr    %ecx
  68b176:	4c 2b bd 60 f8 ff ff 	sub    -0x7a0(%rbp),%r15
  68b17d:	89 8d 28 f8 ff ff    	mov    %ecx,-0x7d8(%rbp)
  68b183:	48 89 8d d8 f5 ff ff 	mov    %rcx,-0xa28(%rbp)
  68b18a:	48 8b 8d f0 f9 ff ff 	mov    -0x610(%rbp),%rcx
  68b191:	49 03 cf             	add    %r15,%rcx
  68b194:	4c 03 bd a0 fb ff ff 	add    -0x460(%rbp),%r15
  68b19b:	4d 2b fd             	sub    %r13,%r15
  68b19e:	4c 8b ad 98 f9 ff ff 	mov    -0x668(%rbp),%r13
  68b1a5:	4d 63 f6             	movslq %r14d,%r14
  68b1a8:	4c 89 bd 80 f9 ff ff 	mov    %r15,-0x680(%rbp)
  68b1af:	4c 89 b5 48 ff ff ff 	mov    %r14,-0xb8(%rbp)
  68b1b6:	4d 89 ee             	mov    %r13,%r14
  68b1b9:	4c 8b bd 58 f5 ff ff 	mov    -0xaa8(%rbp),%r15
  68b1c0:	4d 2b f2             	sub    %r10,%r14
  68b1c3:	4d 03 ec             	add    %r12,%r13
  68b1c6:	4d 2b d7             	sub    %r15,%r10
  68b1c9:	4d 2b ea             	sub    %r10,%r13
  68b1cc:	4c 89 ad 98 f9 ff ff 	mov    %r13,-0x668(%rbp)
  68b1d3:	4c 8b ad 90 f9 ff ff 	mov    -0x670(%rbp),%r13
  68b1da:	4f 8d 14 3e          	lea    (%r14,%r15,1),%r10
  68b1de:	48 8b b5 20 fe ff ff 	mov    -0x1e0(%rbp),%rsi
  68b1e5:	4d 0f af c5          	imul   %r13,%r8
  68b1e9:	41 2b f1             	sub    %r9d,%esi
  68b1ec:	4d 2b f8             	sub    %r8,%r15
  68b1ef:	4d 0f af cd          	imul   %r13,%r9
  68b1f3:	48 63 f6             	movslq %esi,%rsi
  68b1f6:	4d 2b c1             	sub    %r9,%r8
  68b1f9:	48 ff c6             	inc    %rsi
  68b1fc:	4d 03 f7             	add    %r15,%r14
  68b1ff:	48 89 b5 80 fd ff ff 	mov    %rsi,-0x280(%rbp)
  68b206:	4d 2b d0             	sub    %r8,%r10
  68b209:	89 b5 98 fe ff ff    	mov    %esi,-0x168(%rbp)
  68b20f:	4f 8d 04 69          	lea    (%r9,%r13,2),%r8
  68b213:	4d 03 f0             	add    %r8,%r14
  68b216:	83 e6 fc             	and    $0xfffffffc,%esi
  68b219:	48 63 f6             	movslq %esi,%rsi
  68b21c:	4c 89 95 a0 fe ff ff 	mov    %r10,-0x160(%rbp)
  68b223:	4c 89 b5 b0 fb ff ff 	mov    %r14,-0x450(%rbp)
  68b22a:	4c 89 a5 f8 f9 ff ff 	mov    %r12,-0x608(%rbp)
  68b231:	4c 8b 85 e0 f9 ff ff 	mov    -0x620(%rbp),%r8
  68b238:	4c 8b 95 b8 f5 ff ff 	mov    -0xa48(%rbp),%r10
  68b23f:	4c 8b 9d 38 f9 ff ff 	mov    -0x6c8(%rbp),%r11
  68b246:	44 8b a5 00 fb ff ff 	mov    -0x500(%rbp),%r12d
  68b24d:	44 8b ad f8 fa ff ff 	mov    -0x508(%rbp),%r13d
  68b254:	4c 8b b5 f0 f8 ff ff 	mov    -0x710(%rbp),%r14
  68b25b:	48 89 b5 b8 fb ff ff 	mov    %rsi,-0x448(%rbp)
  68b262:	48 89 8d f0 f9 ff ff 	mov    %rcx,-0x610(%rbp)
  68b269:	48 89 bd a8 fb ff ff 	mov    %rdi,-0x458(%rbp)
  68b270:	48 89 95 a8 fe ff ff 	mov    %rdx,-0x158(%rbp)
  68b277:	4d 8b 3e             	mov    (%r14),%r15
  68b27a:	33 f6                	xor    %esi,%esi
  68b27c:	48 8b 15 fd 0d 4b 00 	mov    0x4b0dfd(%rip),%rdx        # b3c080 <mod_param_mp_nt_+0x40>
  68b283:	48 f7 da             	neg    %rdx
  68b286:	4d 63 0f             	movslq (%r15),%r9
  68b289:	49 03 d1             	add    %r9,%rdx
  68b28c:	48 8b 05 ad 0d 4b 00 	mov    0x4b0dad(%rip),%rax        # b3c040 <mod_param_mp_nt_>
  68b293:	4c 63 0c 90          	movslq (%rax,%rdx,4),%r9
  68b297:	4d 85 c9             	test   %r9,%r9
  68b29a:	0f 8e a2 32 00 00    	jle    68e542 <step3d_t_mod_mp_step3d_t_tile_+0x78d2>
  68b2a0:	45 3b ec             	cmp    %r12d,%r13d
  68b2a3:	0f 8c a5 60 00 00    	jl     69134e <step3d_t_mod_mp_step3d_t_tile_+0xa6de>
  68b2a9:	4c 8b 85 50 f8 ff ff 	mov    -0x7b0(%rbp),%r8
  68b2b0:	48 8b 85 b0 f6 ff ff 	mov    -0x950(%rbp),%rax
  68b2b7:	48 89 85 40 fd ff ff 	mov    %rax,-0x2c0(%rbp)
  68b2be:	49 8b 10             	mov    (%r8),%rdx
  68b2c1:	48 89 95 b0 fe ff ff 	mov    %rdx,-0x150(%rbp)
  68b2c8:	49 8b 80 98 00 00 00 	mov    0x98(%r8),%rax
  68b2cf:	49 8b b8 80 00 00 00 	mov    0x80(%r8),%rdi
  68b2d6:	49 8b 48 68          	mov    0x68(%r8),%rcx
  68b2da:	49 8b 50 50          	mov    0x50(%r8),%rdx
  68b2de:	4d 8b 40 38          	mov    0x38(%r8),%r8
  68b2e2:	4c 89 bd 08 fb ff ff 	mov    %r15,-0x4f8(%rbp)
  68b2e9:	48 89 85 b8 fe ff ff 	mov    %rax,-0x148(%rbp)
  68b2f0:	4c 89 45 f8          	mov    %r8,-0x8(%rbp)
  68b2f4:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
  68b2fb:	48 89 8d 68 fa ff ff 	mov    %rcx,-0x598(%rbp)
  68b302:	48 89 bd 70 fa ff ff 	mov    %rdi,-0x590(%rbp)
  68b309:	4c 89 8d 78 fa ff ff 	mov    %r9,-0x588(%rbp)
  68b310:	4c 89 9d 38 f9 ff ff 	mov    %r11,-0x6c8(%rbp)
  68b317:	48 83 7d f8 08       	cmpq   $0x8,-0x8(%rbp)
  68b31c:	74 2c                	je     68b34a <step3d_t_mod_mp_step3d_t_tile_+0x46da>
  68b31e:	48 89 b5 60 fa ff ff 	mov    %rsi,-0x5a0(%rbp)
  68b325:	48 8b bd 40 fd ff ff 	mov    -0x2c0(%rbp),%rdi
  68b32c:	48 8b 95 b0 fe ff ff 	mov    -0x150(%rbp),%rdx
  68b333:	48 8b 8d b8 fe ff ff 	mov    -0x148(%rbp),%rcx
  68b33a:	48 8b 85 68 fa ff ff 	mov    -0x598(%rbp),%rax
  68b341:	48 8b b5 70 fa ff ff 	mov    -0x590(%rbp),%rsi
  68b348:	eb 38                	jmp    68b382 <step3d_t_mod_mp_step3d_t_tile_+0x4712>
  68b34a:	48 89 b5 60 fa ff ff 	mov    %rsi,-0x5a0(%rbp)
  68b351:	48 8b bd 40 fd ff ff 	mov    -0x2c0(%rbp),%rdi
  68b358:	48 8b 95 b0 fe ff ff 	mov    -0x150(%rbp),%rdx
  68b35f:	48 8b 8d b8 fe ff ff 	mov    -0x148(%rbp),%rcx
  68b366:	48 8b 85 68 fa ff ff 	mov    -0x598(%rbp),%rax
  68b36d:	48 8b b5 70 fa ff ff 	mov    -0x590(%rbp),%rsi
  68b374:	48 83 bd 90 f9 ff ff 	cmpq   $0x8,-0x670(%rbp)
  68b37b:	08 
  68b37c:	0f 84 11 04 00 00    	je     68b793 <step3d_t_mod_mp_step3d_t_tile_+0x4b23>
  68b382:	4c 8b 95 60 fa ff ff 	mov    -0x5a0(%rbp),%r10
  68b389:	48 2b d1             	sub    %rcx,%rdx
  68b38c:	4c 8b bd 08 f9 ff ff 	mov    -0x6f8(%rbp),%r15
  68b393:	45 33 db             	xor    %r11d,%r11d
  68b396:	4c 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%r8
  68b39d:	4d 89 c5             	mov    %r8,%r13
  68b3a0:	4c 0f af ad 78 f9 ff 	imul   -0x688(%rbp),%r13
  68b3a7:	ff 
  68b3a8:	45 33 e4             	xor    %r12d,%r12d
  68b3ab:	4d 8d 4a 01          	lea    0x1(%r10),%r9
  68b3af:	4c 8b 95 38 f9 ff ff 	mov    -0x6c8(%rbp),%r10
  68b3b6:	4c 89 8d 80 fa ff ff 	mov    %r9,-0x580(%rbp)
  68b3bd:	49 0f af c9          	imul   %r9,%rcx
  68b3c1:	4c 8b 4d f8          	mov    -0x8(%rbp),%r9
  68b3c5:	4f 8d 34 17          	lea    (%r15,%r10,1),%r14
  68b3c9:	4c 8b bd f8 f8 ff ff 	mov    -0x708(%rbp),%r15
  68b3d0:	4d 0f af f8          	imul   %r8,%r15
  68b3d4:	4c 0f af f0          	imul   %rax,%r14
  68b3d8:	4d 89 e8             	mov    %r13,%r8
  68b3db:	49 f7 dd             	neg    %r13
  68b3de:	4d 03 ef             	add    %r15,%r13
  68b3e1:	4c 03 f8             	add    %rax,%r15
  68b3e4:	48 f7 d8             	neg    %rax
  68b3e7:	49 03 c6             	add    %r14,%rax
  68b3ea:	49 2b c5             	sub    %r13,%rax
  68b3ed:	4c 8d 2c 76          	lea    (%rsi,%rsi,2),%r13
  68b3f1:	4d 03 f5             	add    %r13,%r14
  68b3f4:	49 f7 dd             	neg    %r13
  68b3f7:	4c 03 ee             	add    %rsi,%r13
  68b3fa:	48 f7 de             	neg    %rsi
  68b3fd:	4d 2b f7             	sub    %r15,%r14
  68b400:	48 03 f2             	add    %rdx,%rsi
  68b403:	49 03 f6             	add    %r14,%rsi
  68b406:	4d 89 ce             	mov    %r9,%r14
  68b409:	4c 8b 95 00 f9 ff ff 	mov    -0x700(%rbp),%r10
  68b410:	49 2b d5             	sub    %r13,%rdx
  68b413:	4c 0f af b5 30 fe ff 	imul   -0x1d0(%rbp),%r14
  68b41a:	ff 
  68b41b:	4d 0f af d1          	imul   %r9,%r10
  68b41f:	4d 2b c2             	sub    %r10,%r8
  68b422:	48 03 d0             	add    %rax,%rdx
  68b425:	4d 2b d6             	sub    %r14,%r10
  68b428:	4f 8d 2c 4e          	lea    (%r14,%r9,2),%r13
  68b42c:	49 2b d2             	sub    %r10,%rdx
  68b42f:	4f 8d 14 31          	lea    (%r9,%r14,1),%r10
  68b433:	49 f7 d9             	neg    %r9
  68b436:	4d 03 e8             	add    %r8,%r13
  68b439:	4d 03 ce             	add    %r14,%r9
  68b43c:	4d 03 d0             	add    %r8,%r10
  68b43f:	48 8b 85 f0 f9 ff ff 	mov    -0x610(%rbp),%rax
  68b446:	4d 03 c1             	add    %r9,%r8
  68b449:	4c 03 ee             	add    %rsi,%r13
  68b44c:	4c 03 d6             	add    %rsi,%r10
  68b44f:	49 03 f0             	add    %r8,%rsi
  68b452:	4c 03 e9             	add    %rcx,%r13
  68b455:	48 03 d1             	add    %rcx,%rdx
  68b458:	48 03 c7             	add    %rdi,%rax
  68b45b:	48 03 bd 80 f9 ff ff 	add    -0x680(%rbp),%rdi
  68b462:	4c 03 d1             	add    %rcx,%r10
  68b465:	48 03 ce             	add    %rsi,%rcx
  68b468:	45 33 c0             	xor    %r8d,%r8d
  68b46b:	4c 89 ad c0 fb ff ff 	mov    %r13,-0x440(%rbp)
  68b472:	33 f6                	xor    %esi,%esi
  68b474:	48 89 bd 40 fd ff ff 	mov    %rdi,-0x2c0(%rbp)
  68b47b:	48 89 95 b0 fe ff ff 	mov    %rdx,-0x150(%rbp)
  68b482:	48 89 8d b8 fe ff ff 	mov    %rcx,-0x148(%rbp)
  68b489:	4c 89 95 c8 fb ff ff 	mov    %r10,-0x438(%rbp)
  68b490:	48 89 85 d0 fb ff ff 	mov    %rax,-0x430(%rbp)
  68b497:	4c 8b b5 80 fd ff ff 	mov    -0x280(%rbp),%r14
  68b49e:	4c 8b ad 90 f9 ff ff 	mov    -0x670(%rbp),%r13
  68b4a5:	48 8b 85 20 fe ff ff 	mov    -0x1e0(%rbp),%rax
  68b4ac:	48 3b 85 30 fe ff ff 	cmp    -0x1d0(%rbp),%rax
  68b4b3:	0f 8c b0 02 00 00    	jl     68b769 <step3d_t_mod_mp_step3d_t_tile_+0x4af9>
  68b4b9:	49 83 fe 04          	cmp    $0x4,%r14
  68b4bd:	0f 8c 0d 59 00 00    	jl     690dd0 <step3d_t_mod_mp_step3d_t_tile_+0xa160>
  68b4c3:	48 8b 85 40 fd ff ff 	mov    -0x2c0(%rbp),%rax
  68b4ca:	48 03 c6             	add    %rsi,%rax
  68b4cd:	48 89 85 48 fd ff ff 	mov    %rax,-0x2b8(%rbp)
  68b4d4:	48 83 e0 0f          	and    $0xf,%rax
  68b4d8:	85 c0                	test   %eax,%eax
  68b4da:	74 0d                	je     68b4e9 <step3d_t_mod_mp_step3d_t_tile_+0x4879>
  68b4dc:	a8 07                	test   $0x7,%al
  68b4de:	0f 85 ec 58 00 00    	jne    690dd0 <step3d_t_mod_mp_step3d_t_tile_+0xa160>
  68b4e4:	b8 01 00 00 00       	mov    $0x1,%eax
  68b4e9:	41 89 c1             	mov    %eax,%r9d
  68b4ec:	49 8d 51 04          	lea    0x4(%r9),%rdx
  68b4f0:	4c 3b f2             	cmp    %rdx,%r14
  68b4f3:	0f 8c d7 58 00 00    	jl     690dd0 <step3d_t_mod_mp_step3d_t_tile_+0xa160>
  68b4f9:	4c 8b bd b8 fe ff ff 	mov    -0x148(%rbp),%r15
  68b500:	33 c9                	xor    %ecx,%ecx
  68b502:	8b 95 98 fe ff ff    	mov    -0x168(%rbp),%edx
  68b508:	41 89 d2             	mov    %edx,%r10d
  68b50b:	44 2b d0             	sub    %eax,%r10d
  68b50e:	33 ff                	xor    %edi,%edi
  68b510:	41 83 e2 03          	and    $0x3,%r10d
  68b514:	4d 03 fb             	add    %r11,%r15
  68b517:	4c 89 7d a8          	mov    %r15,-0x58(%rbp)
  68b51b:	41 f7 da             	neg    %r10d
  68b51e:	4c 8b bd b0 fe ff ff 	mov    -0x150(%rbp),%r15
  68b525:	44 03 d2             	add    %edx,%r10d
  68b528:	4d 63 d2             	movslq %r10d,%r10
  68b52b:	33 d2                	xor    %edx,%edx
  68b52d:	4d 03 fb             	add    %r11,%r15
  68b530:	4c 89 bd c8 fe ff ff 	mov    %r15,-0x138(%rbp)
  68b537:	4c 8b bd a0 fe ff ff 	mov    -0x160(%rbp),%r15
  68b53e:	4d 03 f8             	add    %r8,%r15
  68b541:	4c 89 bd c0 fe ff ff 	mov    %r15,-0x140(%rbp)
  68b548:	85 c0                	test   %eax,%eax
  68b54a:	76 61                	jbe    68b5ad <step3d_t_mod_mp_step3d_t_tile_+0x493d>
  68b54c:	4c 89 a5 88 fd ff ff 	mov    %r12,-0x278(%rbp)
  68b553:	4c 89 9d 90 fd ff ff 	mov    %r11,-0x270(%rbp)
  68b55a:	4c 89 f8             	mov    %r15,%rax
  68b55d:	4c 8b 9d c8 fe ff ff 	mov    -0x138(%rbp),%r11
  68b564:	4c 8b 65 a8          	mov    -0x58(%rbp),%r12
  68b568:	4c 8b b5 48 fd ff ff 	mov    -0x2b8(%rbp),%r14
  68b56f:	4c 8b 7d f8          	mov    -0x8(%rbp),%r15
  68b573:	c4 a1 7b 10 04 1a    	vmovsd (%rdx,%r11,1),%xmm0
  68b579:	c4 a1 7b 5c 0c 22    	vsubsd (%rdx,%r12,1),%xmm0,%xmm1
  68b57f:	49 03 d7             	add    %r15,%rdx
  68b582:	c5 f3 59 14 07       	vmulsd (%rdi,%rax,1),%xmm1,%xmm2
  68b587:	49 03 fd             	add    %r13,%rdi
  68b58a:	c4 c1 7b 11 14 ce    	vmovsd %xmm2,(%r14,%rcx,8)
  68b590:	48 ff c1             	inc    %rcx
  68b593:	49 3b c9             	cmp    %r9,%rcx
  68b596:	72 db                	jb     68b573 <step3d_t_mod_mp_step3d_t_tile_+0x4903>
  68b598:	4c 8b a5 88 fd ff ff 	mov    -0x278(%rbp),%r12
  68b59f:	4c 8b 9d 90 fd ff ff 	mov    -0x270(%rbp),%r11
  68b5a6:	4c 8b b5 80 fd ff ff 	mov    -0x280(%rbp),%r14
  68b5ad:	4c 8b bd c0 fb ff ff 	mov    -0x440(%rbp),%r15
  68b5b4:	4c 89 ef             	mov    %r13,%rdi
  68b5b7:	48 8b 95 d0 fb ff ff 	mov    -0x430(%rbp),%rdx
  68b5be:	48 8b 85 c8 fb ff ff 	mov    -0x438(%rbp),%rax
  68b5c5:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  68b5c9:	4d 03 fb             	add    %r11,%r15
  68b5cc:	4c 89 bd d8 fb ff ff 	mov    %r15,-0x428(%rbp)
  68b5d3:	48 03 d6             	add    %rsi,%rdx
  68b5d6:	4c 8b bd b0 fb ff ff 	mov    -0x450(%rbp),%r15
  68b5dd:	49 03 c3             	add    %r11,%rax
  68b5e0:	4c 89 55 a0          	mov    %r10,-0x60(%rbp)
  68b5e4:	48 89 b5 98 fd ff ff 	mov    %rsi,-0x268(%rbp)
  68b5eb:	4c 89 85 a0 fd ff ff 	mov    %r8,-0x260(%rbp)
  68b5f2:	4d 03 f8             	add    %r8,%r15
  68b5f5:	4c 89 a5 88 fd ff ff 	mov    %r12,-0x278(%rbp)
  68b5fc:	4c 89 9d 90 fd ff ff 	mov    %r11,-0x270(%rbp)
  68b603:	49 0f af f9          	imul   %r9,%rdi
  68b607:	49 0f af c9          	imul   %r9,%rcx
  68b60b:	4d 89 fe             	mov    %r15,%r14
  68b60e:	48 8b b5 d8 fb ff ff 	mov    -0x428(%rbp),%rsi
  68b615:	4c 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%r8
  68b61c:	4c 8b 95 c8 fe ff ff 	mov    -0x138(%rbp),%r10
  68b623:	4c 8b 9d 48 fd ff ff 	mov    -0x2b8(%rbp),%r11
  68b62a:	4c 8b 65 f8          	mov    -0x8(%rbp),%r12
  68b62e:	4d 8d 3c 0a          	lea    (%r10,%rcx,1),%r15
  68b632:	c4 c1 7b 10 07       	vmovsd (%r15),%xmm0
  68b637:	c4 81 79 16 14 27    	vmovhpd (%r15,%r12,1),%xmm0,%xmm2
  68b63d:	4c 8b 7d a8          	mov    -0x58(%rbp),%r15
  68b641:	4c 03 f9             	add    %rcx,%r15
  68b644:	c4 c1 7b 10 0f       	vmovsd (%r15),%xmm1
  68b649:	c4 81 71 16 1c 27    	vmovhpd (%r15,%r12,1),%xmm1,%xmm3
  68b64f:	4d 8d 3c 38          	lea    (%r8,%rdi,1),%r15
  68b653:	c4 c1 7b 10 27       	vmovsd (%r15),%xmm4
  68b658:	c4 81 59 16 34 2f    	vmovhpd (%r15,%r13,1),%xmm4,%xmm6
  68b65e:	4c 8d 3c 0e          	lea    (%rsi,%rcx,1),%r15
  68b662:	c4 41 7b 10 07       	vmovsd (%r15),%xmm8
  68b667:	c4 01 39 16 14 27    	vmovhpd (%r15,%r12,1),%xmm8,%xmm10
  68b66d:	4c 8d 3c 08          	lea    (%rax,%rcx,1),%r15
  68b671:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  68b676:	4a 8d 0c a1          	lea    (%rcx,%r12,4),%rcx
  68b67a:	c4 01 31 16 1c 27    	vmovhpd (%r15,%r12,1),%xmm9,%xmm11
  68b680:	4d 8d 3c 3e          	lea    (%r14,%rdi,1),%r15
  68b684:	c5 e9 5c eb          	vsubpd %xmm3,%xmm2,%xmm5
  68b688:	c4 41 29 5c eb       	vsubpd %xmm11,%xmm10,%xmm13
  68b68d:	c5 d1 59 fe          	vmulpd %xmm6,%xmm5,%xmm7
  68b691:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  68b696:	4a 8d 3c af          	lea    (%rdi,%r13,4),%rdi
  68b69a:	c4 01 19 16 34 2f    	vmovhpd (%r15,%r13,1),%xmm12,%xmm14
  68b6a0:	c4 41 11 59 fe       	vmulpd %xmm14,%xmm13,%xmm15
  68b6a5:	c4 81 79 11 3c cb    	vmovupd %xmm7,(%r11,%r9,8)
  68b6ab:	c4 21 79 11 7c ca 10 	vmovupd %xmm15,0x10(%rdx,%r9,8)
  68b6b2:	49 83 c1 04          	add    $0x4,%r9
  68b6b6:	4c 3b 4d a0          	cmp    -0x60(%rbp),%r9
  68b6ba:	0f 82 6e ff ff ff    	jb     68b62e <step3d_t_mod_mp_step3d_t_tile_+0x49be>
  68b6c0:	4c 8b 55 a0          	mov    -0x60(%rbp),%r10
  68b6c4:	48 8b b5 98 fd ff ff 	mov    -0x268(%rbp),%rsi
  68b6cb:	4c 8b 85 a0 fd ff ff 	mov    -0x260(%rbp),%r8
  68b6d2:	4c 8b a5 88 fd ff ff 	mov    -0x278(%rbp),%r12
  68b6d9:	4c 8b 9d 90 fd ff ff 	mov    -0x270(%rbp),%r11
  68b6e0:	4c 8b b5 80 fd ff ff 	mov    -0x280(%rbp),%r14
  68b6e7:	4c 89 e9             	mov    %r13,%rcx
  68b6ea:	4c 8b 4d f8          	mov    -0x8(%rbp),%r9
  68b6ee:	4d 0f af ca          	imul   %r10,%r9
  68b6f2:	49 0f af ca          	imul   %r10,%rcx
  68b6f6:	4d 3b d6             	cmp    %r14,%r10
  68b6f9:	73 6e                	jae    68b769 <step3d_t_mod_mp_step3d_t_tile_+0x4af9>
  68b6fb:	4c 8b bd a0 fe ff ff 	mov    -0x160(%rbp),%r15
  68b702:	48 8b 95 40 fd ff ff 	mov    -0x2c0(%rbp),%rdx
  68b709:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  68b710:	48 8b bd b0 fe ff ff 	mov    -0x150(%rbp),%rdi
  68b717:	4d 03 f8             	add    %r8,%r15
  68b71a:	4c 89 bd e0 fb ff ff 	mov    %r15,-0x420(%rbp)
  68b721:	48 03 d6             	add    %rsi,%rdx
  68b724:	4c 89 9d 90 fd ff ff 	mov    %r11,-0x270(%rbp)
  68b72b:	49 03 c3             	add    %r11,%rax
  68b72e:	4c 8b 7d f8          	mov    -0x8(%rbp),%r15
  68b732:	49 03 fb             	add    %r11,%rdi
  68b735:	4c 8b 9d e0 fb ff ff 	mov    -0x420(%rbp),%r11
  68b73c:	c4 c1 7b 10 04 39    	vmovsd (%r9,%rdi,1),%xmm0
  68b742:	c4 c1 7b 5c 0c 01    	vsubsd (%r9,%rax,1),%xmm0,%xmm1
  68b748:	4d 03 cf             	add    %r15,%r9
  68b74b:	c4 a1 73 59 14 19    	vmulsd (%rcx,%r11,1),%xmm1,%xmm2
  68b751:	49 03 cd             	add    %r13,%rcx
  68b754:	c4 a1 7b 11 14 d2    	vmovsd %xmm2,(%rdx,%r10,8)
  68b75a:	49 ff c2             	inc    %r10
  68b75d:	4d 3b d6             	cmp    %r14,%r10
  68b760:	72 da                	jb     68b73c <step3d_t_mod_mp_step3d_t_tile_+0x4acc>
  68b762:	4c 8b 9d 90 fd ff ff 	mov    -0x270(%rbp),%r11
  68b769:	49 ff c4             	inc    %r12
  68b76c:	4c 03 9d 00 ff ff ff 	add    -0x100(%rbp),%r11
  68b773:	4c 03 85 78 fe ff ff 	add    -0x188(%rbp),%r8
  68b77a:	48 03 b5 70 ff ff ff 	add    -0x90(%rbp),%rsi
  68b781:	4c 3b a5 68 ff ff ff 	cmp    -0x98(%rbp),%r12
  68b788:	0f 82 17 fd ff ff    	jb     68b4a5 <step3d_t_mod_mp_step3d_t_tile_+0x4835>
  68b78e:	e9 29 01 00 00       	jmpq   68b8bc <step3d_t_mod_mp_step3d_t_tile_+0x4c4c>
  68b793:	4c 8b ad 38 f9 ff ff 	mov    -0x6c8(%rbp),%r13
  68b79a:	48 2b d1             	sub    %rcx,%rdx
  68b79d:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  68b7a4:	4c 8d 1c 76          	lea    (%rsi,%rsi,2),%r11
  68b7a8:	4c 8b 85 60 fa ff ff 	mov    -0x5a0(%rbp),%r8
  68b7af:	49 f7 db             	neg    %r11
  68b7b2:	49 03 f3             	add    %r11,%rsi
  68b7b5:	45 33 c9             	xor    %r9d,%r9d
  68b7b8:	48 03 95 f8 f9 ff ff 	add    -0x608(%rbp),%rdx
  68b7bf:	4f 8d 34 2c          	lea    (%r12,%r13,1),%r14
  68b7c3:	4c 0f af f0          	imul   %rax,%r14
  68b7c7:	4c 2b f0             	sub    %rax,%r14
  68b7ca:	4d 8d 50 01          	lea    0x1(%r8),%r10
  68b7ce:	4c 8b 85 f8 f8 ff ff 	mov    -0x708(%rbp),%r8
  68b7d5:	49 2b f6             	sub    %r14,%rsi
  68b7d8:	49 f7 d8             	neg    %r8
  68b7db:	48 2b d6             	sub    %rsi,%rdx
  68b7de:	4c 03 85 78 f9 ff ff 	add    -0x688(%rbp),%r8
  68b7e5:	49 0f af ca          	imul   %r10,%rcx
  68b7e9:	4c 0f af 85 00 ff ff 	imul   -0x100(%rbp),%r8
  68b7f0:	ff 
  68b7f1:	48 03 d1             	add    %rcx,%rdx
  68b7f4:	4c 89 95 80 fa ff ff 	mov    %r10,-0x580(%rbp)
  68b7fb:	4c 03 c2             	add    %rdx,%r8
  68b7fe:	48 03 bd 80 f9 ff ff 	add    -0x680(%rbp),%rdi
  68b805:	48 8b 8d 98 f9 ff ff 	mov    -0x668(%rbp),%rcx
  68b80c:	4c 8b 95 00 ff ff ff 	mov    -0x100(%rbp),%r10
  68b813:	4c 8b 9d 80 fd ff ff 	mov    -0x280(%rbp),%r11
  68b81a:	4c 8b a5 70 ff ff ff 	mov    -0x90(%rbp),%r12
  68b821:	4c 8b ad 68 ff ff ff 	mov    -0x98(%rbp),%r13
  68b828:	4c 8b b5 30 fe ff ff 	mov    -0x1d0(%rbp),%r14
  68b82f:	4c 8b bd 20 fe ff ff 	mov    -0x1e0(%rbp),%r15
  68b836:	4d 3b fe             	cmp    %r14,%r15
  68b839:	7c 68                	jl     68b8a3 <step3d_t_mod_mp_step3d_t_tile_+0x4c33>
  68b83b:	49 83 fb 04          	cmp    $0x4,%r11
  68b83f:	0f 8c 02 5b 00 00    	jl     691347 <step3d_t_mod_mp_step3d_t_tile_+0xa6d7>
  68b845:	48 8b b5 b8 fb ff ff 	mov    -0x448(%rbp),%rsi
  68b84c:	33 d2                	xor    %edx,%edx
  68b84e:	4c 89 c0             	mov    %r8,%rax
  68b851:	49 89 f7             	mov    %rsi,%r15
  68b854:	c5 fd 10 00          	vmovupd (%rax),%ymm0
  68b858:	c5 fd 5c 48 f8       	vsubpd -0x8(%rax),%ymm0,%ymm1
  68b85d:	48 83 c0 20          	add    $0x20,%rax
  68b861:	c5 f5 59 14 d1       	vmulpd (%rcx,%rdx,8),%ymm1,%ymm2
  68b866:	c5 fd 11 14 d7       	vmovupd %ymm2,(%rdi,%rdx,8)
  68b86b:	48 83 c2 04          	add    $0x4,%rdx
  68b86f:	49 3b d7             	cmp    %r15,%rdx
  68b872:	72 e0                	jb     68b854 <step3d_t_mod_mp_step3d_t_tile_+0x4be4>
  68b874:	4c 8b bd 20 fe ff ff 	mov    -0x1e0(%rbp),%r15
  68b87b:	49 3b f3             	cmp    %r11,%rsi
  68b87e:	73 23                	jae    68b8a3 <step3d_t_mod_mp_step3d_t_tile_+0x4c33>
  68b880:	49 8d 04 f0          	lea    (%r8,%rsi,8),%rax
  68b884:	c5 fb 10 00          	vmovsd (%rax),%xmm0
  68b888:	c5 fb 5c 48 f8       	vsubsd -0x8(%rax),%xmm0,%xmm1
  68b88d:	48 83 c0 08          	add    $0x8,%rax
  68b891:	c5 f3 59 14 f1       	vmulsd (%rcx,%rsi,8),%xmm1,%xmm2
  68b896:	c5 fb 11 14 f7       	vmovsd %xmm2,(%rdi,%rsi,8)
  68b89b:	48 ff c6             	inc    %rsi
  68b89e:	49 3b f3             	cmp    %r11,%rsi
  68b8a1:	72 e1                	jb     68b884 <step3d_t_mod_mp_step3d_t_tile_+0x4c14>
  68b8a3:	49 ff c1             	inc    %r9
  68b8a6:	49 03 fc             	add    %r12,%rdi
  68b8a9:	48 03 8d 78 fe ff ff 	add    -0x188(%rbp),%rcx
  68b8b0:	4d 03 c2             	add    %r10,%r8
  68b8b3:	4d 3b cd             	cmp    %r13,%r9
  68b8b6:	0f 82 7a ff ff ff    	jb     68b836 <step3d_t_mod_mp_step3d_t_tile_+0x4bc6>
  68b8bc:	4c 8b bd 08 fb ff ff 	mov    -0x4f8(%rbp),%r15
  68b8c3:	4c 8b 25 ee 28 4b 00 	mov    0x4b28ee(%rip),%r12        # b3e1b8 <mod_scalars_mp_compositegrid_+0x58>
  68b8ca:	4d 89 e1             	mov    %r12,%r9
  68b8cd:	49 f7 d9             	neg    %r9
  68b8d0:	4d 63 2f             	movslq (%r15),%r13
  68b8d3:	4d 03 cd             	add    %r13,%r9
  68b8d6:	4c 8b 15 d3 28 4b 00 	mov    0x4b28d3(%rip),%r10        # b3e1b0 <mod_scalars_mp_compositegrid_+0x50>
  68b8dd:	4d 0f af ca          	imul   %r10,%r9
  68b8e1:	48 8b 05 b8 28 4b 00 	mov    0x4b28b8(%rip),%rax        # b3e1a0 <mod_scalars_mp_compositegrid_+0x40>
  68b8e8:	4c 89 95 28 fb ff ff 	mov    %r10,-0x4d8(%rbp)
  68b8ef:	48 8b 15 6a 28 4b 00 	mov    0x4b286a(%rip),%rdx        # b3e160 <mod_scalars_mp_compositegrid_>
  68b8f6:	48 89 95 30 fb ff ff 	mov    %rdx,-0x4d0(%rbp)
  68b8fd:	4c 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%r10
  68b904:	00 
  68b905:	49 f7 da             	neg    %r10
  68b908:	4c 03 d2             	add    %rdx,%r10
  68b90b:	48 89 85 20 fb ff ff 	mov    %rax,-0x4e0(%rbp)
  68b912:	43 f6 44 0a 04 01    	testb  $0x1,0x4(%r10,%r9,1)
  68b918:	0f 85 41 01 00 00    	jne    68ba5f <step3d_t_mod_mp_step3d_t_tile_+0x4def>
  68b91e:	4c 8b 3d 7b 22 4b 00 	mov    0x4b227b(%rip),%r15        # b3dba0 <mod_scalars_mp_ewperiodic_+0x40>
  68b925:	4a 8d 04 bd 00 00 00 	lea    0x0(,%r15,4),%rax
  68b92c:	00 
  68b92d:	48 f7 d8             	neg    %rax
  68b930:	48 03 05 29 22 4b 00 	add    0x4b2229(%rip),%rax        # b3db60 <mod_scalars_mp_ewperiodic_>
  68b937:	42 f6 04 a8 01       	testb  $0x1,(%rax,%r13,4)
  68b93c:	0f 85 1d 01 00 00    	jne    68ba5f <step3d_t_mod_mp_step3d_t_tile_+0x4def>
  68b942:	48 8b 0d b7 25 4b 00 	mov    0x4b25b7(%rip),%rcx        # b3df00 <mod_param_mp_domain_+0x40>
  68b949:	48 f7 d9             	neg    %rcx
  68b94c:	49 03 cd             	add    %r13,%rcx
  68b94f:	48 89 c8             	mov    %rcx,%rax
  68b952:	48 c1 e0 05          	shl    $0x5,%rax
  68b956:	48 c1 e1 0b          	shl    $0xb,%rcx
  68b95a:	48 2b c8             	sub    %rax,%rcx
  68b95d:	48 8b 15 5c 25 4b 00 	mov    0x4b255c(%rip),%rdx        # b3dec0 <mod_param_mp_domain_>
  68b964:	48 8b bc 0a 88 00 00 	mov    0x88(%rdx,%rcx,1),%rdi
  68b96b:	00 
  68b96c:	48 f7 df             	neg    %rdi
  68b96f:	48 03 bd d8 f8 ff ff 	add    -0x728(%rbp),%rdi
  68b976:	48 0f af bc 0a 80 00 	imul   0x80(%rdx,%rcx,1),%rdi
  68b97d:	00 00 
  68b97f:	48 8b 74 0a 48       	mov    0x48(%rdx,%rcx,1),%rsi
  68b984:	f6 04 3e 01          	testb  $0x1,(%rsi,%rdi,1)
  68b988:	0f 84 d1 00 00 00    	je     68ba5f <step3d_t_mod_mp_step3d_t_tile_+0x4def>
  68b98e:	8b 85 f8 fa ff ff    	mov    -0x508(%rbp),%eax
  68b994:	3b 85 00 fb ff ff    	cmp    -0x500(%rbp),%eax
  68b99a:	0f 8c b2 00 00 00    	jl     68ba52 <step3d_t_mod_mp_step3d_t_tile_+0x4de2>
  68b9a0:	ba 01 00 00 00       	mov    $0x1,%edx
  68b9a5:	45 33 f6             	xor    %r14d,%r14d
  68b9a8:	48 8b 85 b0 f6 ff ff 	mov    -0x950(%rbp),%rax
  68b9af:	45 33 db             	xor    %r11d,%r11d
  68b9b2:	83 bd 28 f8 ff ff 00 	cmpl   $0x0,-0x7d8(%rbp)
  68b9b9:	74 5f                	je     68ba1a <step3d_t_mod_mp_step3d_t_tile_+0x4daa>
  68b9bb:	4c 8b 85 c8 f5 ff ff 	mov    -0xa38(%rbp),%r8
  68b9c2:	48 8b bd b0 fa ff ff 	mov    -0x550(%rbp),%rdi
  68b9c9:	48 8b 95 c0 fa ff ff 	mov    -0x540(%rbp),%rdx
  68b9d0:	48 8b 8d c0 f5 ff ff 	mov    -0xa40(%rbp),%rcx
  68b9d7:	4c 03 c0             	add    %rax,%r8
  68b9da:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68b9e1:	48 03 f8             	add    %rax,%rdi
  68b9e4:	48 8d 34 10          	lea    (%rax,%rdx,1),%rsi
  68b9e8:	48 8b 95 d8 f5 ff ff 	mov    -0xa28(%rbp),%rdx
  68b9ef:	4d 8b 2c 3b          	mov    (%r11,%rdi,1),%r13
  68b9f3:	49 ff c6             	inc    %r14
  68b9f6:	4d 89 6c 33 f8       	mov    %r13,-0x8(%r11,%rsi,1)
  68b9fb:	4f 8b 6c 03 08       	mov    0x8(%r11,%r8,1),%r13
  68ba00:	4f 89 2c 03          	mov    %r13,(%r11,%r8,1)
  68ba04:	4d 8d 5c 0b 10       	lea    0x10(%r11,%rcx,1),%r11
  68ba09:	4c 3b f2             	cmp    %rdx,%r14
  68ba0c:	72 e1                	jb     68b9ef <step3d_t_mod_mp_step3d_t_tile_+0x4d7f>
  68ba0e:	4c 8b ad c8 fa ff ff 	mov    -0x538(%rbp),%r13
  68ba15:	43 8d 54 36 01       	lea    0x1(%r14,%r14,1),%edx
  68ba1a:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  68ba1d:	3b 8d 30 f8 ff ff    	cmp    -0x7d0(%rbp),%ecx
  68ba23:	73 20                	jae    68ba45 <step3d_t_mod_mp_step3d_t_tile_+0x4dd5>
  68ba25:	48 63 d2             	movslq %edx,%rdx
  68ba28:	48 0f af 95 70 ff ff 	imul   -0x90(%rbp),%rdx
  68ba2f:	ff 
  68ba30:	48 8b 8d d0 f5 ff ff 	mov    -0xa30(%rbp),%rcx
  68ba37:	48 8d 3c 08          	lea    (%rax,%rcx,1),%rdi
  68ba3b:	48 8b 74 3a f8       	mov    -0x8(%rdx,%rdi,1),%rsi
  68ba40:	48 89 74 3a f0       	mov    %rsi,-0x10(%rdx,%rdi,1)
  68ba45:	43 f6 44 0a 0c 01    	testb  $0x1,0xc(%r10,%r9,1)
  68ba4b:	74 25                	je     68ba72 <step3d_t_mod_mp_step3d_t_tile_+0x4e02>
  68ba4d:	e9 35 01 00 00       	jmpq   68bb87 <step3d_t_mod_mp_step3d_t_tile_+0x4f17>
  68ba52:	43 f6 44 0a 0c 01    	testb  $0x1,0xc(%r10,%r9,1)
  68ba58:	74 18                	je     68ba72 <step3d_t_mod_mp_step3d_t_tile_+0x4e02>
  68ba5a:	e9 c8 09 00 00       	jmpq   68c427 <step3d_t_mod_mp_step3d_t_tile_+0x57b7>
  68ba5f:	43 f6 44 0a 0c 01    	testb  $0x1,0xc(%r10,%r9,1)
  68ba65:	0f 85 03 01 00 00    	jne    68bb6e <step3d_t_mod_mp_step3d_t_tile_+0x4efe>
  68ba6b:	4c 8b 3d 2e 21 4b 00 	mov    0x4b212e(%rip),%r15        # b3dba0 <mod_scalars_mp_ewperiodic_+0x40>
  68ba72:	49 c1 e7 02          	shl    $0x2,%r15
  68ba76:	49 f7 df             	neg    %r15
  68ba79:	4c 03 3d e0 20 4b 00 	add    0x4b20e0(%rip),%r15        # b3db60 <mod_scalars_mp_ewperiodic_>
  68ba80:	43 f6 04 af 01       	testb  $0x1,(%r15,%r13,4)
  68ba85:	0f 85 e3 00 00 00    	jne    68bb6e <step3d_t_mod_mp_step3d_t_tile_+0x4efe>
  68ba8b:	48 8b 0d 6e 24 4b 00 	mov    0x4b246e(%rip),%rcx        # b3df00 <mod_param_mp_domain_+0x40>
  68ba92:	48 f7 d9             	neg    %rcx
  68ba95:	49 03 cd             	add    %r13,%rcx
  68ba98:	48 89 c8             	mov    %rcx,%rax
  68ba9b:	48 c1 e0 05          	shl    $0x5,%rax
  68ba9f:	48 c1 e1 0b          	shl    $0xb,%rcx
  68baa3:	48 2b c8             	sub    %rax,%rcx
  68baa6:	48 8b 15 13 24 4b 00 	mov    0x4b2413(%rip),%rdx        # b3dec0 <mod_param_mp_domain_>
  68baad:	48 8b 7c 0a 40       	mov    0x40(%rdx,%rcx,1),%rdi
  68bab2:	48 f7 df             	neg    %rdi
  68bab5:	48 03 bd d8 f8 ff ff 	add    -0x728(%rbp),%rdi
  68babc:	48 0f af 7c 0a 38    	imul   0x38(%rdx,%rcx,1),%rdi
  68bac2:	48 8b 34 0a          	mov    (%rdx,%rcx,1),%rsi
  68bac6:	f6 04 3e 01          	testb  $0x1,(%rsi,%rdi,1)
  68baca:	0f 84 9e 00 00 00    	je     68bb6e <step3d_t_mod_mp_step3d_t_tile_+0x4efe>
  68bad0:	8b 85 f8 fa ff ff    	mov    -0x508(%rbp),%eax
  68bad6:	3b 85 00 fb ff ff    	cmp    -0x500(%rbp),%eax
  68badc:	0f 8c 45 09 00 00    	jl     68c427 <step3d_t_mod_mp_step3d_t_tile_+0x57b7>
  68bae2:	ba 01 00 00 00       	mov    $0x1,%edx
  68bae7:	33 c9                	xor    %ecx,%ecx
  68bae9:	48 8b 85 b0 f6 ff ff 	mov    -0x950(%rbp),%rax
  68baf0:	33 f6                	xor    %esi,%esi
  68baf2:	83 bd 28 f8 ff ff 00 	cmpl   $0x0,-0x7d8(%rbp)
  68baf9:	74 47                	je     68bb42 <step3d_t_mod_mp_step3d_t_tile_+0x4ed2>
  68bafb:	48 8b 95 e0 f5 ff ff 	mov    -0xa20(%rbp),%rdx
  68bb02:	48 8b bd e8 f7 ff ff 	mov    -0x818(%rbp),%rdi
  68bb09:	4c 8b b5 d8 f5 ff ff 	mov    -0xa28(%rbp),%r14
  68bb10:	4c 8b bd c0 f5 ff ff 	mov    -0xa40(%rbp),%r15
  68bb17:	48 03 d0             	add    %rax,%rdx
  68bb1a:	48 03 f8             	add    %rax,%rdi
  68bb1d:	48 ff c1             	inc    %rcx
  68bb20:	4c 8b 44 3e 08       	mov    0x8(%rsi,%rdi,1),%r8
  68bb25:	4c 8b 5c 16 10       	mov    0x10(%rsi,%rdx,1),%r11
  68bb2a:	4c 89 44 3e 10       	mov    %r8,0x10(%rsi,%rdi,1)
  68bb2f:	4c 89 5c 16 18       	mov    %r11,0x18(%rsi,%rdx,1)
  68bb34:	4a 8d 74 3e 10       	lea    0x10(%rsi,%r15,1),%rsi
  68bb39:	49 3b ce             	cmp    %r14,%rcx
  68bb3c:	72 df                	jb     68bb1d <step3d_t_mod_mp_step3d_t_tile_+0x4ead>
  68bb3e:	8d 54 09 01          	lea    0x1(%rcx,%rcx,1),%edx
  68bb42:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  68bb45:	3b 8d 30 f8 ff ff    	cmp    -0x7d0(%rbp),%ecx
  68bb4b:	73 3a                	jae    68bb87 <step3d_t_mod_mp_step3d_t_tile_+0x4f17>
  68bb4d:	48 63 d2             	movslq %edx,%rdx
  68bb50:	48 0f af 95 70 ff ff 	imul   -0x90(%rbp),%rdx
  68bb57:	ff 
  68bb58:	48 8b 8d e8 f5 ff ff 	mov    -0xa18(%rbp),%rcx
  68bb5f:	48 8d 3c 08          	lea    (%rax,%rcx,1),%rdi
  68bb63:	48 8b 34 3a          	mov    (%rdx,%rdi,1),%rsi
  68bb67:	48 89 74 3a 08       	mov    %rsi,0x8(%rdx,%rdi,1)
  68bb6c:	eb 19                	jmp    68bb87 <step3d_t_mod_mp_step3d_t_tile_+0x4f17>
  68bb6e:	8b 85 f8 fa ff ff    	mov    -0x508(%rbp),%eax
  68bb74:	3b 85 00 fb ff ff    	cmp    -0x500(%rbp),%eax
  68bb7a:	0f 8c a7 08 00 00    	jl     68c427 <step3d_t_mod_mp_step3d_t_tile_+0x57b7>
  68bb80:	48 8b 85 b0 f6 ff ff 	mov    -0x950(%rbp),%rax
  68bb87:	4c 8b 85 f0 f5 ff ff 	mov    -0xa10(%rbp),%r8
  68bb8e:	33 c9                	xor    %ecx,%ecx
  68bb90:	48 8b 95 b0 fa ff ff 	mov    -0x550(%rbp),%rdx
  68bb97:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68bb9e:	4c 89 85 e8 fb ff ff 	mov    %r8,-0x418(%rbp)
  68bba5:	4c 89 95 d0 fa ff ff 	mov    %r10,-0x530(%rbp)
  68bbac:	4a 8d 3c 02          	lea    (%rdx,%r8,1),%rdi
  68bbb0:	4c 89 8d d8 fa ff ff 	mov    %r9,-0x528(%rbp)
  68bbb7:	48 8d 34 10          	lea    (%rax,%rdx,1),%rsi
  68bbbb:	48 03 85 c0 fa ff ff 	add    -0x540(%rbp),%rax
  68bbc2:	33 d2                	xor    %edx,%edx
  68bbc4:	44 8b ad b8 fa ff ff 	mov    -0x548(%rbp),%r13d
  68bbcb:	44 8b b5 40 fe ff ff 	mov    -0x1c0(%rbp),%r14d
  68bbd2:	4c 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%r15
  68bbd9:	4c 89 a5 e0 fa ff ff 	mov    %r12,-0x520(%rbp)
  68bbe0:	c5 fd 10 05 f8 95 23 	vmovupd 0x2395f8(%rip),%ymm0        # 8c51e0 <var$630.126.450+0x320>
  68bbe7:	00 
  68bbe8:	c5 fb 10 0d 28 b6 23 	vmovsd 0x23b628(%rip),%xmm1        # 8c7218 <__STRLITPACK_199.115+0x88>
  68bbef:	00 
  68bbf0:	45 3b f5             	cmp    %r13d,%r14d
  68bbf3:	7c 7c                	jl     68bc71 <step3d_t_mod_mp_step3d_t_tile_+0x5001>
  68bbf5:	49 83 ff 04          	cmp    $0x4,%r15
  68bbf9:	0f 8c 40 57 00 00    	jl     69133f <step3d_t_mod_mp_step3d_t_tile_+0xa6cf>
  68bbff:	4c 8b a5 48 ff ff ff 	mov    -0xb8(%rbp),%r12
  68bc06:	45 33 db             	xor    %r11d,%r11d
  68bc09:	4d 89 e7             	mov    %r12,%r15
  68bc0c:	4c 8d 14 17          	lea    (%rdi,%rdx,1),%r10
  68bc10:	4c 8d 0c 16          	lea    (%rsi,%rdx,1),%r9
  68bc14:	4c 8d 04 10          	lea    (%rax,%rdx,1),%r8
  68bc18:	c4 81 7d 10 14 d8    	vmovupd (%r8,%r11,8),%ymm2
  68bc1e:	c4 81 6d 58 5c d9 f8 	vaddpd -0x8(%r9,%r11,8),%ymm2,%ymm3
  68bc25:	c5 fd 59 e3          	vmulpd %ymm3,%ymm0,%ymm4
  68bc29:	c4 81 7d 11 64 da f8 	vmovupd %ymm4,-0x8(%r10,%r11,8)
  68bc30:	49 83 c3 04          	add    $0x4,%r11
  68bc34:	4d 3b df             	cmp    %r15,%r11
  68bc37:	72 df                	jb     68bc18 <step3d_t_mod_mp_step3d_t_tile_+0x4fa8>
  68bc39:	4c 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%r15
  68bc40:	4d 3b e7             	cmp    %r15,%r12
  68bc43:	73 2c                	jae    68bc71 <step3d_t_mod_mp_step3d_t_tile_+0x5001>
  68bc45:	4c 8d 14 17          	lea    (%rdi,%rdx,1),%r10
  68bc49:	4c 8d 0c 16          	lea    (%rsi,%rdx,1),%r9
  68bc4d:	4c 8d 04 10          	lea    (%rax,%rdx,1),%r8
  68bc51:	c4 81 7b 10 14 e0    	vmovsd (%r8,%r12,8),%xmm2
  68bc57:	c4 81 6b 58 5c e1 f8 	vaddsd -0x8(%r9,%r12,8),%xmm2,%xmm3
  68bc5e:	c5 f3 59 e3          	vmulsd %xmm3,%xmm1,%xmm4
  68bc62:	c4 81 7b 11 64 e2 f8 	vmovsd %xmm4,-0x8(%r10,%r12,8)
  68bc69:	49 ff c4             	inc    %r12
  68bc6c:	4d 3b e7             	cmp    %r15,%r12
  68bc6f:	72 e0                	jb     68bc51 <step3d_t_mod_mp_step3d_t_tile_+0x4fe1>
  68bc71:	48 ff c1             	inc    %rcx
  68bc74:	48 03 95 70 ff ff ff 	add    -0x90(%rbp),%rdx
  68bc7b:	48 3b 8d 68 ff ff ff 	cmp    -0x98(%rbp),%rcx
  68bc82:	0f 82 68 ff ff ff    	jb     68bbf0 <step3d_t_mod_mp_step3d_t_tile_+0x4f80>
  68bc88:	48 8b 95 50 f8 ff ff 	mov    -0x7b0(%rbp),%rdx
  68bc8f:	4c 8b 85 e8 fb ff ff 	mov    -0x418(%rbp),%r8
  68bc96:	4c 8b 95 d0 fa ff ff 	mov    -0x530(%rbp),%r10
  68bc9d:	4c 8b b2 80 00 00 00 	mov    0x80(%rdx),%r14
  68bca4:	4c 89 b5 10 fa ff ff 	mov    %r14,-0x5f0(%rbp)
  68bcab:	48 8b 0a             	mov    (%rdx),%rcx
  68bcae:	4c 8b 9a 98 00 00 00 	mov    0x98(%rdx),%r11
  68bcb5:	4c 8b 7a 68          	mov    0x68(%rdx),%r15
  68bcb9:	4c 8b 72 50          	mov    0x50(%rdx),%r14
  68bcbd:	48 8b 52 38          	mov    0x38(%rdx),%rdx
  68bcc1:	4c 8b 8d d8 fa ff ff 	mov    -0x528(%rbp),%r9
  68bcc8:	4c 8b a5 e0 fa ff ff 	mov    -0x520(%rbp),%r12
  68bccf:	4c 8b ad c8 fa ff ff 	mov    -0x538(%rbp),%r13
  68bcd6:	4c 89 bd 08 fa ff ff 	mov    %r15,-0x5f8(%rbp)
  68bcdd:	4c 89 b5 08 ff ff ff 	mov    %r14,-0xf8(%rbp)
  68bce4:	48 89 95 10 ff ff ff 	mov    %rdx,-0xf0(%rbp)
  68bceb:	48 83 bd 88 fe ff ff 	cmpq   $0x8,-0x178(%rbp)
  68bcf2:	08 
  68bcf3:	0f 85 24 02 00 00    	jne    68bf1d <step3d_t_mod_mp_step3d_t_tile_+0x52ad>
  68bcf9:	48 83 bd 10 ff ff ff 	cmpq   $0x8,-0xf0(%rbp)
  68bd00:	08 
  68bd01:	0f 85 16 02 00 00    	jne    68bf1d <step3d_t_mod_mp_step3d_t_tile_+0x52ad>
  68bd07:	4c 8b b5 38 f9 ff ff 	mov    -0x6c8(%rbp),%r14
  68bd0e:	4c 89 de             	mov    %r11,%rsi
  68bd11:	4c 8b bd 60 f9 ff ff 	mov    -0x6a0(%rbp),%r15
  68bd18:	33 d2                	xor    %edx,%edx
  68bd1a:	4d 0f af fe          	imul   %r14,%r15
  68bd1e:	48 0f af b5 80 fa ff 	imul   -0x580(%rbp),%rsi
  68bd25:	ff 
  68bd26:	c5 fd 10 1d d2 94 23 	vmovupd 0x2394d2(%rip),%ymm3        # 8c5200 <var$630.126.450+0x340>
  68bd2d:	00 
  68bd2e:	c5 fb 10 15 22 b8 23 	vmovsd 0x23b822(%rip),%xmm2        # 8c7558 <__STRLITPACK_199.115+0x3c8>
  68bd35:	00 
  68bd36:	c5 fb 10 0d da b4 23 	vmovsd 0x23b4da(%rip),%xmm1        # 8c7218 <__STRLITPACK_199.115+0x88>
  68bd3d:	00 
  68bd3e:	c5 fd 10 05 9a 94 23 	vmovupd 0x23949a(%rip),%ymm0        # 8c51e0 <var$630.126.450+0x320>
  68bd45:	00 
  68bd46:	4c 03 bd e0 f9 ff ff 	add    -0x620(%rbp),%r15
  68bd4d:	48 03 ce             	add    %rsi,%rcx
  68bd50:	4c 89 bd 50 fa ff ff 	mov    %r15,-0x5b0(%rbp)
  68bd57:	4c 8b bd 10 fa ff ff 	mov    -0x5f0(%rbp),%r15
  68bd5e:	4d 03 df             	add    %r15,%r11
  68bd61:	48 89 95 38 fa ff ff 	mov    %rdx,-0x5c8(%rbp)
  68bd68:	48 89 95 20 fa ff ff 	mov    %rdx,-0x5e0(%rbp)
  68bd6f:	4b 8d 34 7f          	lea    (%r15,%r15,2),%rsi
  68bd73:	4c 8b bd 08 f9 ff ff 	mov    -0x6f8(%rbp),%r15
  68bd7a:	48 8b 95 f8 f8 ff ff 	mov    -0x708(%rbp),%rdx
  68bd81:	48 f7 da             	neg    %rdx
  68bd84:	48 03 95 78 f9 ff ff 	add    -0x688(%rbp),%rdx
  68bd8b:	4d 03 f7             	add    %r15,%r14
  68bd8e:	4c 8b bd 08 fa ff ff 	mov    -0x5f8(%rbp),%r15
  68bd95:	4d 0f af f7          	imul   %r15,%r14
  68bd99:	48 0f af 95 08 ff ff 	imul   -0xf8(%rbp),%rdx
  68bda0:	ff 
  68bda1:	49 03 f6             	add    %r14,%rsi
  68bda4:	48 03 8d d8 f9 ff ff 	add    -0x628(%rbp),%rcx
  68bdab:	4c 2b de             	sub    %rsi,%r11
  68bdae:	49 2b cb             	sub    %r11,%rcx
  68bdb1:	4c 03 85 c0 fa ff ff 	add    -0x540(%rbp),%r8
  68bdb8:	49 2b cf             	sub    %r15,%rcx
  68bdbb:	4c 89 85 e8 fb ff ff 	mov    %r8,-0x418(%rbp)
  68bdc2:	48 03 d1             	add    %rcx,%rdx
  68bdc5:	4c 89 95 d0 fa ff ff 	mov    %r10,-0x530(%rbp)
  68bdcc:	4c 89 8d d8 fa ff ff 	mov    %r9,-0x528(%rbp)
  68bdd3:	4c 89 a5 e0 fa ff ff 	mov    %r12,-0x520(%rbp)
  68bdda:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68bde1:	4c 8b 8d 50 fa ff ff 	mov    -0x5b0(%rbp),%r9
  68bde8:	48 8b b5 20 fa ff ff 	mov    -0x5e0(%rbp),%rsi
  68bdef:	4c 8b 85 38 fa ff ff 	mov    -0x5c8(%rbp),%r8
  68bdf6:	4c 8b 95 78 fd ff ff 	mov    -0x288(%rbp),%r10
  68bdfd:	8b 8d 40 fe ff ff    	mov    -0x1c0(%rbp),%ecx
  68be03:	3b 8d 58 ff ff ff    	cmp    -0xa8(%rbp),%ecx
  68be09:	0f 8c e4 00 00 00    	jl     68bef3 <step3d_t_mod_mp_step3d_t_tile_+0x5283>
  68be0f:	49 83 fa 04          	cmp    $0x4,%r10
  68be13:	0f 8c bf 4f 00 00    	jl     690dd8 <step3d_t_mod_mp_step3d_t_tile_+0xa168>
  68be19:	4c 8b 9d e8 fb ff ff 	mov    -0x418(%rbp),%r11
  68be20:	45 33 ed             	xor    %r13d,%r13d
  68be23:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
  68be27:	4c 8d 24 37          	lea    (%rdi,%rsi,1),%r12
  68be2b:	49 89 d6             	mov    %rdx,%r14
  68be2e:	4c 8d 3c 30          	lea    (%rax,%rsi,1),%r15
  68be32:	49 89 ca             	mov    %rcx,%r10
  68be35:	4c 03 de             	add    %rsi,%r11
  68be38:	c4 81 7d 10 2c eb    	vmovupd (%r11,%r13,8),%ymm5
  68be3e:	c4 c1 7d 10 66 f8    	vmovupd -0x8(%r14),%ymm4
  68be44:	c4 01 7d 59 0c e9    	vmulpd (%r9,%r13,8),%ymm0,%ymm9
  68be4a:	c4 81 55 5c 74 ec f8 	vsubpd -0x8(%r12,%r13,8),%ymm5,%ymm6
  68be51:	c4 c1 5d 58 3e       	vaddpd (%r14),%ymm4,%ymm7
  68be56:	c5 65 59 c6          	vmulpd %ymm6,%ymm3,%ymm8
  68be5a:	c4 41 45 5c d0       	vsubpd %ymm8,%ymm7,%ymm10
  68be5f:	49 83 c6 20          	add    $0x20,%r14
  68be63:	c4 41 35 59 da       	vmulpd %ymm10,%ymm9,%ymm11
  68be68:	c4 01 7d 11 1c ef    	vmovupd %ymm11,(%r15,%r13,8)
  68be6e:	49 83 c5 04          	add    $0x4,%r13
  68be72:	4d 3b ea             	cmp    %r10,%r13
  68be75:	72 c1                	jb     68be38 <step3d_t_mod_mp_step3d_t_tile_+0x51c8>
  68be77:	4c 8b 95 78 fd ff ff 	mov    -0x288(%rbp),%r10
  68be7e:	4c 8d 24 cd 00 00 00 	lea    0x0(,%rcx,8),%r12
  68be85:	00 
  68be86:	49 3b ca             	cmp    %r10,%rcx
  68be89:	73 68                	jae    68bef3 <step3d_t_mod_mp_step3d_t_tile_+0x5283>
  68be8b:	4c 8b ad e8 fb ff ff 	mov    -0x418(%rbp),%r13
  68be92:	4c 8d 1c 37          	lea    (%rdi,%rsi,1),%r11
  68be96:	4c 8d 34 30          	lea    (%rax,%rsi,1),%r14
  68be9a:	4d 8d 7c 35 00       	lea    0x0(%r13,%rsi,1),%r15
  68be9f:	4c 8d 2c ca          	lea    (%rdx,%rcx,8),%r13
  68bea3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  68bea8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  68beaf:	00 
  68beb0:	c4 81 7b 10 2c 3c    	vmovsd (%r12,%r15,1),%xmm5
  68beb6:	48 ff c1             	inc    %rcx
  68beb9:	c4 c1 7b 10 65 f8    	vmovsd -0x8(%r13),%xmm4
  68bebf:	c4 01 73 59 0c 0c    	vmulsd (%r12,%r9,1),%xmm1,%xmm9
  68bec5:	c4 81 53 5c 74 1c f8 	vsubsd -0x8(%r12,%r11,1),%xmm5,%xmm6
  68becc:	c4 c1 5b 58 7d 00    	vaddsd 0x0(%r13),%xmm4,%xmm7
  68bed2:	c5 6b 59 c6          	vmulsd %xmm6,%xmm2,%xmm8
  68bed6:	49 83 c5 08          	add    $0x8,%r13
  68beda:	c4 41 43 5c d0       	vsubsd %xmm8,%xmm7,%xmm10
  68bedf:	c4 41 33 59 da       	vmulsd %xmm10,%xmm9,%xmm11
  68bee4:	c4 01 7b 11 1c 34    	vmovsd %xmm11,(%r12,%r14,1)
  68beea:	49 83 c4 08          	add    $0x8,%r12
  68beee:	49 3b ca             	cmp    %r10,%rcx
  68bef1:	72 bd                	jb     68beb0 <step3d_t_mod_mp_step3d_t_tile_+0x5240>
  68bef3:	49 ff c0             	inc    %r8
  68bef6:	48 03 b5 70 ff ff ff 	add    -0x90(%rbp),%rsi
  68befd:	4c 03 8d 70 fe ff ff 	add    -0x190(%rbp),%r9
  68bf04:	48 03 95 08 ff ff ff 	add    -0xf8(%rbp),%rdx
  68bf0b:	4c 3b 85 68 ff ff ff 	cmp    -0x98(%rbp),%r8
  68bf12:	0f 82 e5 fe ff ff    	jb     68bdfd <step3d_t_mod_mp_step3d_t_tile_+0x518d>
  68bf18:	e9 ee 04 00 00       	jmpq   68c40b <step3d_t_mod_mp_step3d_t_tile_+0x579b>
  68bf1d:	8b 95 f8 fa ff ff    	mov    -0x508(%rbp),%edx
  68bf23:	45 33 f6             	xor    %r14d,%r14d
  68bf26:	4c 89 b5 c0 fd ff ff 	mov    %r14,-0x240(%rbp)
  68bf2d:	4c 89 b5 b8 fd ff ff 	mov    %r14,-0x248(%rbp)
  68bf34:	4c 89 b5 b0 fd ff ff 	mov    %r14,-0x250(%rbp)
  68bf3b:	4c 89 b5 a8 fd ff ff 	mov    %r14,-0x258(%rbp)
  68bf42:	3b 95 00 fb ff ff    	cmp    -0x500(%rbp),%edx
  68bf48:	0f 8c d9 04 00 00    	jl     68c427 <step3d_t_mod_mp_step3d_t_tile_+0x57b7>
  68bf4e:	4c 89 a5 e0 fa ff ff 	mov    %r12,-0x520(%rbp)
  68bf55:	4d 89 dc             	mov    %r11,%r12
  68bf58:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68bf5f:	48 89 85 18 fc ff ff 	mov    %rax,-0x3e8(%rbp)
  68bf66:	4c 0f af a5 80 fa ff 	imul   -0x580(%rbp),%r12
  68bf6d:	ff 
  68bf6e:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  68bf75:	49 03 cc             	add    %r12,%rcx
  68bf78:	48 8b 85 38 f9 ff ff 	mov    -0x6c8(%rbp),%rax
  68bf7f:	48 89 bd 28 fc ff ff 	mov    %rdi,-0x3d8(%rbp)
  68bf86:	4c 89 ff             	mov    %r15,%rdi
  68bf89:	4c 8b b5 c0 fa ff ff 	mov    -0x540(%rbp),%r14
  68bf90:	4d 8d 7c 05 00       	lea    0x0(%r13,%rax,1),%r15
  68bf95:	4c 0f af ff          	imul   %rdi,%r15
  68bf99:	48 89 b5 20 fc ff ff 	mov    %rsi,-0x3e0(%rbp)
  68bfa0:	48 8b b5 10 ff ff ff 	mov    -0xf0(%rbp),%rsi
  68bfa7:	4c 8b a5 10 fa ff ff 	mov    -0x5f0(%rbp),%r12
  68bfae:	48 8b 95 08 ff ff ff 	mov    -0xf8(%rbp),%rdx
  68bfb5:	4c 89 8d d8 fa ff ff 	mov    %r9,-0x528(%rbp)
  68bfbc:	49 89 f1             	mov    %rsi,%r9
  68bfbf:	4c 89 95 d0 fa ff ff 	mov    %r10,-0x530(%rbp)
  68bfc6:	49 89 d2             	mov    %rdx,%r10
  68bfc9:	4c 89 85 e8 fb ff ff 	mov    %r8,-0x418(%rbp)
  68bfd0:	4d 03 c6             	add    %r14,%r8
  68bfd3:	4c 89 85 e8 fc ff ff 	mov    %r8,-0x318(%rbp)
  68bfda:	4f 8d 2c 64          	lea    (%r12,%r12,2),%r13
  68bfde:	4c 8b b5 f8 f8 ff ff 	mov    -0x708(%rbp),%r14
  68bfe5:	4c 8b 85 00 f9 ff ff 	mov    -0x700(%rbp),%r8
  68bfec:	4c 0f af 95 78 f9 ff 	imul   -0x688(%rbp),%r10
  68bff3:	ff 
  68bff4:	4c 0f af 8d 98 fb ff 	imul   -0x468(%rbp),%r9
  68bffb:	ff 
  68bffc:	4c 0f af f2          	imul   %rdx,%r14
  68c000:	4c 0f af c6          	imul   %rsi,%r8
  68c004:	c5 fb 10 05 4c b5 23 	vmovsd 0x23b54c(%rip),%xmm0        # 8c7558 <__STRLITPACK_199.115+0x3c8>
  68c00b:	00 
  68c00c:	4b 8d 14 23          	lea    (%r11,%r12,1),%rdx
  68c010:	4d 2b e5             	sub    %r13,%r12
  68c013:	4d 03 ef             	add    %r15,%r13
  68c016:	4c 2b ff             	sub    %rdi,%r15
  68c019:	48 f7 da             	neg    %rdx
  68c01c:	4d 2b e7             	sub    %r15,%r12
  68c01f:	48 03 d1             	add    %rcx,%rdx
  68c022:	4c 8b bd 60 f9 ff ff 	mov    -0x6a0(%rbp),%r15
  68c029:	49 2b cb             	sub    %r11,%rcx
  68c02c:	4c 0f af f8          	imul   %rax,%r15
  68c030:	49 03 fe             	add    %r14,%rdi
  68c033:	4d 2b f2             	sub    %r10,%r14
  68c036:	4d 2b d0             	sub    %r8,%r10
  68c039:	4d 2b c1             	sub    %r9,%r8
  68c03c:	4c 8b 9d c0 f9 ff ff 	mov    -0x640(%rbp),%r11
  68c043:	49 2b cc             	sub    %r12,%rcx
  68c046:	4d 03 f0             	add    %r8,%r14
  68c049:	4c 2b ef             	sub    %rdi,%r13
  68c04c:	49 2b ce             	sub    %r14,%rcx
  68c04f:	49 03 d5             	add    %r13,%rdx
  68c052:	49 03 d2             	add    %r10,%rdx
  68c055:	4b 8d 04 3b          	lea    (%r11,%r15,1),%rax
  68c059:	49 89 f3             	mov    %rsi,%r11
  68c05c:	49 03 d1             	add    %r9,%rdx
  68c05f:	49 f7 db             	neg    %r11
  68c062:	4c 03 d9             	add    %rcx,%r11
  68c065:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
  68c069:	4c 03 bd 68 f9 ff ff 	add    -0x698(%rbp),%r15
  68c070:	48 8d 0c 71          	lea    (%rcx,%rsi,2),%rcx
  68c074:	48 89 85 08 fd ff ff 	mov    %rax,-0x2f8(%rbp)
  68c07b:	4c 89 9d 00 fc ff ff 	mov    %r11,-0x400(%rbp)
  68c082:	48 8b b5 20 fc ff ff 	mov    -0x3e0(%rbp),%rsi
  68c089:	48 8b bd 28 fc ff ff 	mov    -0x3d8(%rbp),%rdi
  68c090:	4c 8b 85 e8 fb ff ff 	mov    -0x418(%rbp),%r8
  68c097:	4c 8b 8d a8 fd ff ff 	mov    -0x258(%rbp),%r9
  68c09e:	4c 8b 9d b0 fd ff ff 	mov    -0x250(%rbp),%r11
  68c0a5:	4c 8b a5 b8 fd ff ff 	mov    -0x248(%rbp),%r12
  68c0ac:	4c 8b ad c0 fd ff ff 	mov    -0x240(%rbp),%r13
  68c0b3:	4c 8b 95 78 fd ff ff 	mov    -0x288(%rbp),%r10
  68c0ba:	4c 89 bd f0 fb ff ff 	mov    %r15,-0x410(%rbp)
  68c0c1:	48 89 8d f8 fb ff ff 	mov    %rcx,-0x408(%rbp)
  68c0c8:	4c 89 b5 08 fc ff ff 	mov    %r14,-0x3f8(%rbp)
  68c0cf:	48 89 95 10 fc ff ff 	mov    %rdx,-0x3f0(%rbp)
  68c0d6:	c5 fb 10 1d 3a b1 23 	vmovsd 0x23b13a(%rip),%xmm3        # 8c7218 <__STRLITPACK_199.115+0x88>
  68c0dd:	00 
  68c0de:	c5 f9 10 0d ca a8 23 	vmovupd 0x23a8ca(%rip),%xmm1        # 8c69b0 <__STRLITPACK_19.34+0x20>
  68c0e5:	00 
  68c0e6:	c5 f9 10 15 b2 a8 23 	vmovupd 0x23a8b2(%rip),%xmm2        # 8c69a0 <__STRLITPACK_19.34+0x10>
  68c0ed:	00 
  68c0ee:	8b 85 40 fe ff ff    	mov    -0x1c0(%rbp),%eax
  68c0f4:	3b 85 58 ff ff ff    	cmp    -0xa8(%rbp),%eax
  68c0fa:	0f 8c e6 02 00 00    	jl     68c3e6 <step3d_t_mod_mp_step3d_t_tile_+0x5776>
  68c100:	49 83 fa 04          	cmp    $0x4,%r10
  68c104:	0f 8c 25 52 00 00    	jl     69132f <step3d_t_mod_mp_step3d_t_tile_+0xa6bf>
  68c10a:	4c 8b 85 08 fc ff ff 	mov    -0x3f8(%rbp),%r8
  68c111:	4c 8b bd 10 fc ff ff 	mov    -0x3f0(%rbp),%r15
  68c118:	4c 8b b5 08 fd ff ff 	mov    -0x2f8(%rbp),%r14
  68c11f:	48 8b 75 98          	mov    -0x68(%rbp),%rsi
  68c123:	4b 8d 04 08          	lea    (%r8,%r9,1),%rax
  68c127:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  68c12b:	4f 8d 04 0f          	lea    (%r15,%r9,1),%r8
  68c12f:	48 8b 85 00 fc ff ff 	mov    -0x400(%rbp),%rax
  68c136:	4d 03 f3             	add    %r11,%r14
  68c139:	4c 89 85 40 fc ff ff 	mov    %r8,-0x3c0(%rbp)
  68c140:	4c 8b 85 f0 fb ff ff 	mov    -0x410(%rbp),%r8
  68c147:	48 8b 8d 20 fc ff ff 	mov    -0x3e0(%rbp),%rcx
  68c14e:	4e 8d 3c 08          	lea    (%rax,%r9,1),%r15
  68c152:	4c 89 bd 38 fc ff ff 	mov    %r15,-0x3c8(%rbp)
  68c159:	4c 8b bd 88 fb ff ff 	mov    -0x478(%rbp),%r15
  68c160:	4b 8d 04 18          	lea    (%r8,%r11,1),%rax
  68c164:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  68c168:	49 03 cc             	add    %r12,%rcx
  68c16b:	48 8b 95 18 fc ff ff 	mov    -0x3e8(%rbp),%rdx
  68c172:	48 8b bd f8 fb ff ff 	mov    -0x408(%rbp),%rdi
  68c179:	4a 8d 04 fd 00 00 00 	lea    0x0(,%r15,8),%rax
  68c180:	00 
  68c181:	48 f7 d8             	neg    %rax
  68c184:	4c 8b bd 98 fb ff ff 	mov    -0x468(%rbp),%r15
  68c18b:	49 03 d4             	add    %r12,%rdx
  68c18e:	48 89 b5 d0 fe ff ff 	mov    %rsi,-0x130(%rbp)
  68c195:	33 f6                	xor    %esi,%esi
  68c197:	45 33 c0             	xor    %r8d,%r8d
  68c19a:	49 03 f9             	add    %r9,%rdi
  68c19d:	4a 8d 04 f8          	lea    (%rax,%r15,8),%rax
  68c1a1:	4c 8b bd 90 fb ff ff 	mov    -0x470(%rbp),%r15
  68c1a8:	48 03 85 a0 fb ff ff 	add    -0x460(%rbp),%rax
  68c1af:	49 f7 df             	neg    %r15
  68c1b2:	4c 89 a5 30 fc ff ff 	mov    %r12,-0x3d0(%rbp)
  68c1b9:	49 03 c7             	add    %r15,%rax
  68c1bc:	4c 89 75 b0          	mov    %r14,-0x50(%rbp)
  68c1c0:	4c 89 8d a8 fd ff ff 	mov    %r9,-0x258(%rbp)
  68c1c7:	4c 89 9d b0 fd ff ff 	mov    %r11,-0x250(%rbp)
  68c1ce:	4c 89 a5 b8 fd ff ff 	mov    %r12,-0x248(%rbp)
  68c1d5:	4c 89 ad c0 fd ff ff 	mov    %r13,-0x240(%rbp)
  68c1dc:	48 03 85 e8 fb ff ff 	add    -0x418(%rbp),%rax
  68c1e3:	4c 8b b5 30 fc ff ff 	mov    -0x3d0(%rbp),%r14
  68c1ea:	4d 89 c1             	mov    %r8,%r9
  68c1ed:	4c 8b 95 38 fc ff ff 	mov    -0x3c8(%rbp),%r10
  68c1f4:	4c 8b 9d 40 fc ff ff 	mov    -0x3c0(%rbp),%r11
  68c1fb:	4c 8b a5 10 ff ff ff 	mov    -0xf0(%rbp),%r12
  68c202:	4c 8b ad 88 fe ff ff 	mov    -0x178(%rbp),%r13
  68c209:	c4 c1 79 10 24 06    	vmovupd (%r14,%rax,1),%xmm4
  68c20f:	4c 8b 7d b0          	mov    -0x50(%rbp),%r15
  68c213:	c4 c1 59 5c 6c 06 f8 	vsubpd -0x8(%r14,%rax,1),%xmm4,%xmm5
  68c21a:	c5 71 59 ed          	vmulpd %xmm5,%xmm1,%xmm13
  68c21e:	4d 03 f8             	add    %r8,%r15
  68c221:	c4 c1 7b 10 37       	vmovsd (%r15),%xmm6
  68c226:	c4 81 49 16 3c 2f    	vmovhpd (%r15,%r13,1),%xmm6,%xmm7
  68c22c:	4f 8d 3c 0a          	lea    (%r10,%r9,1),%r15
  68c230:	c4 41 7b 10 07       	vmovsd (%r15),%xmm8
  68c235:	c4 01 39 16 14 27    	vmovhpd (%r15,%r12,1),%xmm8,%xmm10
  68c23b:	4f 8d 3c 0b          	lea    (%r11,%r9,1),%r15
  68c23f:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  68c244:	c4 01 31 16 1c 27    	vmovhpd (%r15,%r12,1),%xmm9,%xmm11
  68c24a:	c4 41 29 58 e3       	vaddpd %xmm11,%xmm10,%xmm12
  68c24f:	c5 41 59 f2          	vmulpd %xmm2,%xmm7,%xmm14
  68c253:	c4 41 19 5c fd       	vsubpd %xmm13,%xmm12,%xmm15
  68c258:	c4 c1 09 59 e7       	vmulpd %xmm15,%xmm14,%xmm4
  68c25d:	4c 8b 7d b8          	mov    -0x48(%rbp),%r15
  68c261:	c5 f9 11 24 f2       	vmovupd %xmm4,(%rdx,%rsi,8)
  68c266:	c4 c1 79 10 6c 06 10 	vmovupd 0x10(%r14,%rax,1),%xmm5
  68c26d:	c4 c1 51 5c 74 06 08 	vsubpd 0x8(%r14,%rax,1),%xmm5,%xmm6
  68c274:	c5 71 59 f6          	vmulpd %xmm6,%xmm1,%xmm14
  68c278:	49 83 c6 20          	add    $0x20,%r14
  68c27c:	4d 03 f8             	add    %r8,%r15
  68c27f:	c4 c1 7b 10 3f       	vmovsd (%r15),%xmm7
  68c284:	4f 8d 04 a8          	lea    (%r8,%r13,4),%r8
  68c288:	c4 01 41 16 04 2f    	vmovhpd (%r15,%r13,1),%xmm7,%xmm8
  68c28e:	4c 8b 7d c0          	mov    -0x40(%rbp),%r15
  68c292:	c5 39 59 fa          	vmulpd %xmm2,%xmm8,%xmm15
  68c296:	4d 03 f9             	add    %r9,%r15
  68c299:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  68c29e:	c4 01 31 16 1c 27    	vmovhpd (%r15,%r12,1),%xmm9,%xmm11
  68c2a4:	4e 8d 3c 0f          	lea    (%rdi,%r9,1),%r15
  68c2a8:	c4 41 7b 10 17       	vmovsd (%r15),%xmm10
  68c2ad:	4f 8d 0c a1          	lea    (%r9,%r12,4),%r9
  68c2b1:	c4 01 29 16 24 27    	vmovhpd (%r15,%r12,1),%xmm10,%xmm12
  68c2b7:	c4 41 21 58 ec       	vaddpd %xmm12,%xmm11,%xmm13
  68c2bc:	c4 c1 11 5c e6       	vsubpd %xmm14,%xmm13,%xmm4
  68c2c1:	c5 81 59 ec          	vmulpd %xmm4,%xmm15,%xmm5
  68c2c5:	c5 f9 11 6c f1 10    	vmovupd %xmm5,0x10(%rcx,%rsi,8)
  68c2cb:	48 83 c6 04          	add    $0x4,%rsi
  68c2cf:	48 3b 75 98          	cmp    -0x68(%rbp),%rsi
  68c2d3:	0f 82 30 ff ff ff    	jb     68c209 <step3d_t_mod_mp_step3d_t_tile_+0x5599>
  68c2d9:	4c 8b 8d a8 fd ff ff 	mov    -0x258(%rbp),%r9
  68c2e0:	4c 8b 9d b0 fd ff ff 	mov    -0x250(%rbp),%r11
  68c2e7:	4c 8b a5 b8 fd ff ff 	mov    -0x248(%rbp),%r12
  68c2ee:	4c 8b ad c0 fd ff ff 	mov    -0x240(%rbp),%r13
  68c2f5:	4c 8b 95 78 fd ff ff 	mov    -0x288(%rbp),%r10
  68c2fc:	4c 8b b5 10 ff ff ff 	mov    -0xf0(%rbp),%r14
  68c303:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  68c30a:	4c 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%r8
  68c311:	4c 0f af f0          	imul   %rax,%r14
  68c315:	4c 0f af c0          	imul   %rax,%r8
  68c319:	49 3b c2             	cmp    %r10,%rax
  68c31c:	0f 83 c4 00 00 00    	jae    68c3e6 <step3d_t_mod_mp_step3d_t_tile_+0x5776>
  68c322:	48 8b bd 28 fc ff ff 	mov    -0x3d8(%rbp),%rdi
  68c329:	48 8b b5 e8 fc ff ff 	mov    -0x318(%rbp),%rsi
  68c330:	48 8b 8d 18 fc ff ff 	mov    -0x3e8(%rbp),%rcx
  68c337:	48 8b 95 08 fd ff ff 	mov    -0x2f8(%rbp),%rdx
  68c33e:	49 03 fc             	add    %r12,%rdi
  68c341:	4c 8b bd 10 fc ff ff 	mov    -0x3f0(%rbp),%r15
  68c348:	49 03 f4             	add    %r12,%rsi
  68c34b:	48 8b 85 00 fc ff ff 	mov    -0x400(%rbp),%rax
  68c352:	49 03 cc             	add    %r12,%rcx
  68c355:	4c 89 9d b0 fd ff ff 	mov    %r11,-0x250(%rbp)
  68c35c:	49 03 d3             	add    %r11,%rdx
  68c35f:	4c 89 a5 b8 fd ff ff 	mov    %r12,-0x248(%rbp)
  68c366:	4d 03 f9             	add    %r9,%r15
  68c369:	4c 89 ad c0 fd ff ff 	mov    %r13,-0x240(%rbp)
  68c370:	49 03 c1             	add    %r9,%rax
  68c373:	4c 8b 9d d0 fe ff ff 	mov    -0x130(%rbp),%r11
  68c37a:	4c 8b a5 10 ff ff ff 	mov    -0xf0(%rbp),%r12
  68c381:	4c 8b ad 88 fe ff ff 	mov    -0x178(%rbp),%r13
  68c388:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  68c38f:	00 
  68c390:	c4 a1 7b 10 2c de    	vmovsd (%rsi,%r11,8),%xmm5
  68c396:	c4 c1 7b 10 24 06    	vmovsd (%r14,%rax,1),%xmm4
  68c39c:	c4 41 63 59 0c 10    	vmulsd (%r8,%rdx,1),%xmm3,%xmm9
  68c3a2:	4d 03 c5             	add    %r13,%r8
  68c3a5:	c4 a1 53 5c 74 df f8 	vsubsd -0x8(%rdi,%r11,8),%xmm5,%xmm6
  68c3ac:	c4 81 5b 58 3c 3e    	vaddsd (%r14,%r15,1),%xmm4,%xmm7
  68c3b2:	c5 7b 59 c6          	vmulsd %xmm6,%xmm0,%xmm8
  68c3b6:	4d 03 f4             	add    %r12,%r14
  68c3b9:	c4 41 43 5c d0       	vsubsd %xmm8,%xmm7,%xmm10
  68c3be:	c4 41 33 59 da       	vmulsd %xmm10,%xmm9,%xmm11
  68c3c3:	c4 21 7b 11 1c d9    	vmovsd %xmm11,(%rcx,%r11,8)
  68c3c9:	49 ff c3             	inc    %r11
  68c3cc:	4d 3b da             	cmp    %r10,%r11
  68c3cf:	72 bf                	jb     68c390 <step3d_t_mod_mp_step3d_t_tile_+0x5720>
  68c3d1:	4c 8b 9d b0 fd ff ff 	mov    -0x250(%rbp),%r11
  68c3d8:	4c 8b a5 b8 fd ff ff 	mov    -0x248(%rbp),%r12
  68c3df:	4c 8b ad c0 fd ff ff 	mov    -0x240(%rbp),%r13
  68c3e6:	49 ff c5             	inc    %r13
  68c3e9:	4c 03 a5 70 ff ff ff 	add    -0x90(%rbp),%r12
  68c3f0:	4c 03 9d 70 fe ff ff 	add    -0x190(%rbp),%r11
  68c3f7:	4c 03 8d 08 ff ff ff 	add    -0xf8(%rbp),%r9
  68c3fe:	4c 3b ad 68 ff ff ff 	cmp    -0x98(%rbp),%r13
  68c405:	0f 82 e3 fc ff ff    	jb     68c0ee <step3d_t_mod_mp_step3d_t_tile_+0x547e>
  68c40b:	4c 8b 95 d0 fa ff ff 	mov    -0x530(%rbp),%r10
  68c412:	4c 8b 8d d8 fa ff ff 	mov    -0x528(%rbp),%r9
  68c419:	4c 8b a5 e0 fa ff ff 	mov    -0x520(%rbp),%r12
  68c420:	4c 8b ad c8 fa ff ff 	mov    -0x538(%rbp),%r13
  68c427:	48 8b 85 e8 fa ff ff 	mov    -0x518(%rbp),%rax
  68c42e:	48 3b 85 f0 fa ff ff 	cmp    -0x510(%rbp),%rax
  68c435:	0f 8c 67 06 00 00    	jl     68caa2 <step3d_t_mod_mp_step3d_t_tile_+0x5e32>
  68c43b:	4c 8b 85 50 f8 ff ff 	mov    -0x7b0(%rbp),%r8
  68c442:	48 8b 85 50 f6 ff ff 	mov    -0x9b0(%rbp),%rax
  68c449:	49 8b 88 80 00 00 00 	mov    0x80(%r8),%rcx
  68c450:	49 8b 70 68          	mov    0x68(%r8),%rsi
  68c454:	49 8b 78 50          	mov    0x50(%r8),%rdi
  68c458:	4d 8b 70 38          	mov    0x38(%r8),%r14
  68c45c:	4d 8b 18             	mov    (%r8),%r11
  68c45f:	49 8b 90 98 00 00 00 	mov    0x98(%r8),%rdx
  68c466:	48 89 8d 18 fa ff ff 	mov    %rcx,-0x5e8(%rbp)
  68c46d:	48 89 b5 30 fa ff ff 	mov    %rsi,-0x5d0(%rbp)
  68c474:	48 89 bd 28 ff ff ff 	mov    %rdi,-0xd8(%rbp)
  68c47b:	4c 89 b5 18 ff ff ff 	mov    %r14,-0xe8(%rbp)
  68c482:	49 83 fe 08          	cmp    $0x8,%r14
  68c486:	0f 85 a5 01 00 00    	jne    68c631 <step3d_t_mod_mp_step3d_t_tile_+0x59c1>
  68c48c:	48 83 bd 88 f9 ff ff 	cmpq   $0x8,-0x678(%rbp)
  68c493:	08 
  68c494:	0f 85 97 01 00 00    	jne    68c631 <step3d_t_mod_mp_step3d_t_tile_+0x59c1>
  68c49a:	48 8b bd 08 f9 ff ff 	mov    -0x6f8(%rbp),%rdi
  68c4a1:	33 c9                	xor    %ecx,%ecx
  68c4a3:	48 8b b5 38 f9 ff ff 	mov    -0x6c8(%rbp),%rsi
  68c4aa:	48 03 85 e8 f9 ff ff 	add    -0x618(%rbp),%rax
  68c4b1:	48 89 85 50 fd ff ff 	mov    %rax,-0x2b0(%rbp)
  68c4b8:	48 89 d0             	mov    %rdx,%rax
  68c4bb:	4c 89 a5 e0 fa ff ff 	mov    %r12,-0x520(%rbp)
  68c4c2:	4c 8d 3c 37          	lea    (%rdi,%rsi,1),%r15
  68c4c6:	4c 8b a5 30 fa ff ff 	mov    -0x5d0(%rbp),%r12
  68c4cd:	48 0f af 85 80 fa ff 	imul   -0x580(%rbp),%rax
  68c4d4:	ff 
  68c4d5:	4d 0f af fc          	imul   %r12,%r15
  68c4d9:	48 8b b5 28 ff ff ff 	mov    -0xd8(%rbp),%rsi
  68c4e0:	49 8d 3c 03          	lea    (%r11,%rax,1),%rdi
  68c4e4:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68c4eb:	49 89 f5             	mov    %rsi,%r13
  68c4ee:	4c 8b b5 f8 f8 ff ff 	mov    -0x708(%rbp),%r14
  68c4f5:	48 2b c2             	sub    %rdx,%rax
  68c4f8:	4c 0f af ad f0 fa ff 	imul   -0x510(%rbp),%r13
  68c4ff:	ff 
  68c500:	4c 0f af f6          	imul   %rsi,%r14
  68c504:	4c 89 8d d8 fa ff ff 	mov    %r9,-0x528(%rbp)
  68c50b:	48 f7 de             	neg    %rsi
  68c50e:	4c 8b 8d 18 fa ff ff 	mov    -0x5e8(%rbp),%r9
  68c515:	49 03 d1             	add    %r9,%rdx
  68c518:	4c 89 95 d0 fa ff ff 	mov    %r10,-0x530(%rbp)
  68c51f:	4c 8b 85 d8 f9 ff ff 	mov    -0x628(%rbp),%r8
  68c526:	49 03 f8             	add    %r8,%rdi
  68c529:	4d 03 d8             	add    %r8,%r11
  68c52c:	4f 8d 14 49          	lea    (%r9,%r9,2),%r10
  68c530:	4d 2b ca             	sub    %r10,%r9
  68c533:	4d 03 d7             	add    %r15,%r10
  68c536:	49 2b d2             	sub    %r10,%rdx
  68c539:	49 2b c1             	sub    %r9,%rax
  68c53c:	4d 2b fc             	sub    %r12,%r15
  68c53f:	4d 03 e6             	add    %r14,%r12
  68c542:	4d 2b f5             	sub    %r13,%r14
  68c545:	48 2b fa             	sub    %rdx,%rdi
  68c548:	4c 03 d8             	add    %rax,%r11
  68c54b:	4d 2b fe             	sub    %r14,%r15
  68c54e:	49 2b fc             	sub    %r12,%rdi
  68c551:	4d 03 df             	add    %r15,%r11
  68c554:	49 03 fd             	add    %r13,%rdi
  68c557:	49 03 f3             	add    %r11,%rsi
  68c55a:	48 8b 95 a0 f9 ff ff 	mov    -0x660(%rbp),%rdx
  68c561:	48 8b 85 50 fd ff ff 	mov    -0x2b0(%rbp),%rax
  68c568:	4c 8b 95 d0 fa ff ff 	mov    -0x530(%rbp),%r10
  68c56f:	4c 8b 8d d8 fa ff ff 	mov    -0x528(%rbp),%r9
  68c576:	49 89 cb             	mov    %rcx,%r11
  68c579:	4c 8b a5 70 ff ff ff 	mov    -0x90(%rbp),%r12
  68c580:	4c 8b ad 70 fd ff ff 	mov    -0x290(%rbp),%r13
  68c587:	44 8b bd 28 fe ff ff 	mov    -0x1d8(%rbp),%r15d
  68c58e:	44 3b bd 58 ff ff ff 	cmp    -0xa8(%rbp),%r15d
  68c595:	7c 74                	jl     68c60b <step3d_t_mod_mp_step3d_t_tile_+0x599b>
  68c597:	49 83 fd 04          	cmp    $0x4,%r13
  68c59b:	0f 8c 3e 48 00 00    	jl     690ddf <step3d_t_mod_mp_step3d_t_tile_+0xa16f>
  68c5a1:	4c 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%r14
  68c5a8:	45 33 d2             	xor    %r10d,%r10d
  68c5ab:	4d 89 f7             	mov    %r14,%r15
  68c5ae:	4c 8d 0c 0e          	lea    (%rsi,%rcx,1),%r9
  68c5b2:	4c 8d 04 0f          	lea    (%rdi,%rcx,1),%r8
  68c5b6:	c4 81 7d 10 04 d0    	vmovupd (%r8,%r10,8),%ymm0
  68c5bc:	c4 81 7d 5c 0c d1    	vsubpd (%r9,%r10,8),%ymm0,%ymm1
  68c5c2:	c4 a1 75 59 14 d2    	vmulpd (%rdx,%r10,8),%ymm1,%ymm2
  68c5c8:	c4 a1 7d 11 14 d0    	vmovupd %ymm2,(%rax,%r10,8)
  68c5ce:	49 83 c2 04          	add    $0x4,%r10
  68c5d2:	4d 3b d7             	cmp    %r15,%r10
  68c5d5:	72 df                	jb     68c5b6 <step3d_t_mod_mp_step3d_t_tile_+0x5946>
  68c5d7:	44 8b bd 28 fe ff ff 	mov    -0x1d8(%rbp),%r15d
  68c5de:	4d 3b f5             	cmp    %r13,%r14
  68c5e1:	73 28                	jae    68c60b <step3d_t_mod_mp_step3d_t_tile_+0x599b>
  68c5e3:	4c 8d 0c 0e          	lea    (%rsi,%rcx,1),%r9
  68c5e7:	4c 8d 04 0f          	lea    (%rdi,%rcx,1),%r8
  68c5eb:	c4 81 7b 10 04 f0    	vmovsd (%r8,%r14,8),%xmm0
  68c5f1:	c4 81 7b 5c 0c f1    	vsubsd (%r9,%r14,8),%xmm0,%xmm1
  68c5f7:	c4 a1 73 59 14 f2    	vmulsd (%rdx,%r14,8),%xmm1,%xmm2
  68c5fd:	c4 a1 7b 11 14 f0    	vmovsd %xmm2,(%rax,%r14,8)
  68c603:	49 ff c6             	inc    %r14
  68c606:	4d 3b f5             	cmp    %r13,%r14
  68c609:	72 e0                	jb     68c5eb <step3d_t_mod_mp_step3d_t_tile_+0x597b>
  68c60b:	49 ff c3             	inc    %r11
  68c60e:	49 03 c4             	add    %r12,%rax
  68c611:	48 03 8d 28 ff ff ff 	add    -0xd8(%rbp),%rcx
  68c618:	48 03 95 80 fe ff ff 	add    -0x180(%rbp),%rdx
  68c61f:	4c 3b 9d 50 fe ff ff 	cmp    -0x1b0(%rbp),%r11
  68c626:	0f 82 62 ff ff ff    	jb     68c58e <step3d_t_mod_mp_step3d_t_tile_+0x591e>
  68c62c:	e9 55 04 00 00       	jmpq   68ca86 <step3d_t_mod_mp_step3d_t_tile_+0x5e16>
  68c631:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68c638:	49 89 d5             	mov    %rdx,%r13
  68c63b:	4c 0f af ad 80 fa ff 	imul   -0x580(%rbp),%r13
  68c642:	ff 
  68c643:	4c 8b bd 08 f9 ff ff 	mov    -0x6f8(%rbp),%r15
  68c64a:	4d 03 dd             	add    %r13,%r11
  68c64d:	4c 8b b5 38 f9 ff ff 	mov    -0x6c8(%rbp),%r14
  68c654:	4c 89 8d d8 fa ff ff 	mov    %r9,-0x528(%rbp)
  68c65b:	48 89 f7             	mov    %rsi,%rdi
  68c65e:	49 89 cd             	mov    %rcx,%r13
  68c661:	4f 8d 0c 37          	lea    (%r15,%r14,1),%r9
  68c665:	4c 0f af cf          	imul   %rdi,%r9
  68c669:	4c 89 a5 e0 fa ff ff 	mov    %r12,-0x520(%rbp)
  68c670:	4f 8d 7c 6d 00       	lea    0x0(%r13,%r13,2),%r15
  68c675:	4c 8b a5 f8 f8 ff ff 	mov    -0x708(%rbp),%r12
  68c67c:	4e 8d 34 2a          	lea    (%rdx,%r13,1),%r14
  68c680:	48 8b 8d 28 ff ff ff 	mov    -0xd8(%rbp),%rcx
  68c687:	4d 2b ef             	sub    %r15,%r13
  68c68a:	4c 0f af e1          	imul   %rcx,%r12
  68c68e:	4c 89 95 d0 fa ff ff 	mov    %r10,-0x530(%rbp)
  68c695:	4d 03 f9             	add    %r9,%r15
  68c698:	48 8b b5 18 ff ff ff 	mov    -0xe8(%rbp),%rsi
  68c69f:	4c 2b cf             	sub    %rdi,%r9
  68c6a2:	4c 8b 95 00 f9 ff ff 	mov    -0x700(%rbp),%r10
  68c6a9:	49 89 f0             	mov    %rsi,%r8
  68c6ac:	4c 0f af d6          	imul   %rsi,%r10
  68c6b0:	4c 0f af 85 98 fb ff 	imul   -0x468(%rbp),%r8
  68c6b7:	ff 
  68c6b8:	4d 2b e9             	sub    %r9,%r13
  68c6bb:	49 89 c9             	mov    %rcx,%r9
  68c6be:	48 0f af 8d f0 fa ff 	imul   -0x510(%rbp),%rcx
  68c6c5:	ff 
  68c6c6:	49 f7 de             	neg    %r14
  68c6c9:	49 03 fc             	add    %r12,%rdi
  68c6cc:	4d 03 f3             	add    %r11,%r14
  68c6cf:	4c 2b da             	sub    %rdx,%r11
  68c6d2:	48 8b 95 70 f9 ff ff 	mov    -0x690(%rbp),%rdx
  68c6d9:	49 f7 d9             	neg    %r9
  68c6dc:	4c 2b ff             	sub    %rdi,%r15
  68c6df:	4c 89 d6             	mov    %r10,%rsi
  68c6e2:	4c 2b e1             	sub    %rcx,%r12
  68c6e5:	49 2b f0             	sub    %r8,%rsi
  68c6e8:	4d 2b dd             	sub    %r13,%r11
  68c6eb:	48 8d 3c 10          	lea    (%rax,%rdx,1),%rdi
  68c6ef:	48 89 bd 00 fd ff ff 	mov    %rdi,-0x300(%rbp)
  68c6f6:	4c 89 cf             	mov    %r9,%rdi
  68c6f9:	49 2b fa             	sub    %r10,%rdi
  68c6fc:	49 f7 da             	neg    %r10
  68c6ff:	48 f7 df             	neg    %rdi
  68c702:	4c 03 d1             	add    %rcx,%r10
  68c705:	49 03 fc             	add    %r12,%rdi
  68c708:	49 03 c9             	add    %r9,%rcx
  68c70b:	4d 03 f7             	add    %r15,%r14
  68c70e:	48 f7 df             	neg    %rdi
  68c711:	48 2b ce             	sub    %rsi,%rcx
  68c714:	4c 03 e6             	add    %rsi,%r12
  68c717:	49 03 fb             	add    %r11,%rdi
  68c71a:	4d 03 d6             	add    %r14,%r10
  68c71d:	4c 03 f1             	add    %rcx,%r14
  68c720:	4d 2b dc             	sub    %r12,%r11
  68c723:	48 8b 95 18 ff ff ff 	mov    -0xe8(%rbp),%rdx
  68c72a:	49 03 f8             	add    %r8,%rdi
  68c72d:	48 c7 85 d0 fd ff ff 	movq   $0x0,-0x230(%rbp)
  68c734:	00 00 00 00 
  68c738:	4d 03 c2             	add    %r10,%r8
  68c73b:	48 8b b5 d0 fd ff ff 	mov    -0x230(%rbp),%rsi
  68c742:	48 89 f1             	mov    %rsi,%rcx
  68c745:	48 03 85 e8 f9 ff ff 	add    -0x618(%rbp),%rax
  68c74c:	4d 8d 34 56          	lea    (%r14,%rdx,2),%r14
  68c750:	4d 8d 1c 53          	lea    (%r11,%rdx,2),%r11
  68c754:	48 89 ca             	mov    %rcx,%rdx
  68c757:	4c 8b 95 d0 fa ff ff 	mov    -0x530(%rbp),%r10
  68c75e:	4c 8b 8d d8 fa ff ff 	mov    -0x528(%rbp),%r9
  68c765:	4c 8b ad 70 fd ff ff 	mov    -0x290(%rbp),%r13
  68c76c:	4c 8b a5 88 f9 ff ff 	mov    -0x678(%rbp),%r12
  68c773:	4c 89 9d 48 fc ff ff 	mov    %r11,-0x3b8(%rbp)
  68c77a:	4c 89 b5 50 fc ff ff 	mov    %r14,-0x3b0(%rbp)
  68c781:	49 89 f6             	mov    %rsi,%r14
  68c784:	4c 89 85 d8 fe ff ff 	mov    %r8,-0x128(%rbp)
  68c78b:	48 89 bd e0 fe ff ff 	mov    %rdi,-0x120(%rbp)
  68c792:	48 89 85 50 fd ff ff 	mov    %rax,-0x2b0(%rbp)
  68c799:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
  68c79f:	3b 85 58 ff ff ff    	cmp    -0xa8(%rbp),%eax
  68c7a5:	0f 8c b6 02 00 00    	jl     68ca61 <step3d_t_mod_mp_step3d_t_tile_+0x5df1>
  68c7ab:	49 83 fd 04          	cmp    $0x4,%r13
  68c7af:	0f 8c 72 4b 00 00    	jl     691327 <step3d_t_mod_mp_step3d_t_tile_+0xa6b7>
  68c7b5:	48 8b 85 50 fd ff ff 	mov    -0x2b0(%rbp),%rax
  68c7bc:	48 03 c2             	add    %rdx,%rax
  68c7bf:	48 89 85 58 fd ff ff 	mov    %rax,-0x2a8(%rbp)
  68c7c6:	48 83 e0 0f          	and    $0xf,%rax
  68c7ca:	85 c0                	test   %eax,%eax
  68c7cc:	74 0d                	je     68c7db <step3d_t_mod_mp_step3d_t_tile_+0x5b6b>
  68c7ce:	a8 07                	test   $0x7,%al
  68c7d0:	0f 85 51 4b 00 00    	jne    691327 <step3d_t_mod_mp_step3d_t_tile_+0xa6b7>
  68c7d6:	b8 01 00 00 00       	mov    $0x1,%eax
  68c7db:	41 89 c2             	mov    %eax,%r10d
  68c7de:	49 8d 7a 04          	lea    0x4(%r10),%rdi
  68c7e2:	4c 3b ef             	cmp    %rdi,%r13
  68c7e5:	0f 8c 3c 4b 00 00    	jl     691327 <step3d_t_mod_mp_step3d_t_tile_+0xa6b7>
  68c7eb:	4c 8b bd e0 fe ff ff 	mov    -0x120(%rbp),%r15
  68c7f2:	45 33 c0             	xor    %r8d,%r8d
  68c7f5:	8b bd 48 fe ff ff    	mov    -0x1b8(%rbp),%edi
  68c7fb:	41 89 fb             	mov    %edi,%r11d
  68c7fe:	44 2b d8             	sub    %eax,%r11d
  68c801:	45 33 c9             	xor    %r9d,%r9d
  68c804:	41 83 e3 03          	and    $0x3,%r11d
  68c808:	4c 03 fe             	add    %rsi,%r15
  68c80b:	4c 89 7d d0          	mov    %r15,-0x30(%rbp)
  68c80f:	41 f7 db             	neg    %r11d
  68c812:	4c 8b bd d8 fe ff ff 	mov    -0x128(%rbp),%r15
  68c819:	44 03 df             	add    %edi,%r11d
  68c81c:	4d 63 db             	movslq %r11d,%r11
  68c81f:	33 ff                	xor    %edi,%edi
  68c821:	4c 03 fe             	add    %rsi,%r15
  68c824:	4c 89 bd f0 fe ff ff 	mov    %r15,-0x110(%rbp)
  68c82b:	4c 8b bd a8 fe ff ff 	mov    -0x158(%rbp),%r15
  68c832:	4c 03 f9             	add    %rcx,%r15
  68c835:	4c 89 bd e8 fe ff ff 	mov    %r15,-0x118(%rbp)
  68c83c:	85 c0                	test   %eax,%eax
  68c83e:	76 64                	jbe    68c8a4 <step3d_t_mod_mp_step3d_t_tile_+0x5c34>
  68c840:	48 89 b5 c8 fd ff ff 	mov    %rsi,-0x238(%rbp)
  68c847:	4c 89 b5 d0 fd ff ff 	mov    %r14,-0x230(%rbp)
  68c84e:	4c 89 f8             	mov    %r15,%rax
  68c851:	48 8b b5 f0 fe ff ff 	mov    -0x110(%rbp),%rsi
  68c858:	4c 8b 6d d0          	mov    -0x30(%rbp),%r13
  68c85c:	4c 8b b5 58 fd ff ff 	mov    -0x2a8(%rbp),%r14
  68c863:	4c 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%r15
  68c86a:	c5 fb 10 04 37       	vmovsd (%rdi,%rsi,1),%xmm0
  68c86f:	c4 a1 7b 5c 0c 2f    	vsubsd (%rdi,%r13,1),%xmm0,%xmm1
  68c875:	49 03 ff             	add    %r15,%rdi
  68c878:	c4 c1 73 59 14 01    	vmulsd (%r9,%rax,1),%xmm1,%xmm2
  68c87e:	4d 03 cc             	add    %r12,%r9
  68c881:	c4 81 7b 11 14 c6    	vmovsd %xmm2,(%r14,%r8,8)
  68c887:	49 ff c0             	inc    %r8
  68c88a:	4d 3b c2             	cmp    %r10,%r8
  68c88d:	72 db                	jb     68c86a <step3d_t_mod_mp_step3d_t_tile_+0x5bfa>
  68c88f:	48 8b b5 c8 fd ff ff 	mov    -0x238(%rbp),%rsi
  68c896:	4c 8b b5 d0 fd ff ff 	mov    -0x230(%rbp),%r14
  68c89d:	4c 8b ad 70 fd ff ff 	mov    -0x290(%rbp),%r13
  68c8a4:	4c 8b bd 48 fc ff ff 	mov    -0x3b8(%rbp),%r15
  68c8ab:	4d 89 e1             	mov    %r12,%r9
  68c8ae:	48 8b bd 00 fd ff ff 	mov    -0x300(%rbp),%rdi
  68c8b5:	48 8b 85 50 fc ff ff 	mov    -0x3b0(%rbp),%rax
  68c8bc:	4c 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%r8
  68c8c3:	4c 03 fe             	add    %rsi,%r15
  68c8c6:	4c 89 bd 58 fc ff ff 	mov    %r15,-0x3a8(%rbp)
  68c8cd:	48 03 fa             	add    %rdx,%rdi
  68c8d0:	4c 8b bd a8 fb ff ff 	mov    -0x458(%rbp),%r15
  68c8d7:	48 03 c6             	add    %rsi,%rax
  68c8da:	4c 89 5d c8          	mov    %r11,-0x38(%rbp)
  68c8de:	48 89 95 d8 fd ff ff 	mov    %rdx,-0x228(%rbp)
  68c8e5:	48 89 8d e0 fd ff ff 	mov    %rcx,-0x220(%rbp)
  68c8ec:	4c 03 f9             	add    %rcx,%r15
  68c8ef:	48 89 b5 c8 fd ff ff 	mov    %rsi,-0x238(%rbp)
  68c8f6:	4c 89 b5 d0 fd ff ff 	mov    %r14,-0x230(%rbp)
  68c8fd:	4d 0f af ca          	imul   %r10,%r9
  68c901:	4d 0f af c2          	imul   %r10,%r8
  68c905:	4d 89 fe             	mov    %r15,%r14
  68c908:	48 8b 95 58 fc ff ff 	mov    -0x3a8(%rbp),%rdx
  68c90f:	48 8b 8d e8 fe ff ff 	mov    -0x118(%rbp),%rcx
  68c916:	48 8b b5 f0 fe ff ff 	mov    -0x110(%rbp),%rsi
  68c91d:	4c 8b 9d 58 fd ff ff 	mov    -0x2a8(%rbp),%r11
  68c924:	4c 8b ad 18 ff ff ff 	mov    -0xe8(%rbp),%r13
  68c92b:	4e 8d 3c 06          	lea    (%rsi,%r8,1),%r15
  68c92f:	c4 c1 7b 10 07       	vmovsd (%r15),%xmm0
  68c934:	c4 81 79 16 14 2f    	vmovhpd (%r15,%r13,1),%xmm0,%xmm2
  68c93a:	4c 8b 7d d0          	mov    -0x30(%rbp),%r15
  68c93e:	4d 03 f8             	add    %r8,%r15
  68c941:	c4 c1 7b 10 0f       	vmovsd (%r15),%xmm1
  68c946:	c4 81 71 16 1c 2f    	vmovhpd (%r15,%r13,1),%xmm1,%xmm3
  68c94c:	4e 8d 3c 09          	lea    (%rcx,%r9,1),%r15
  68c950:	c4 c1 7b 10 27       	vmovsd (%r15),%xmm4
  68c955:	c4 81 59 16 34 27    	vmovhpd (%r15,%r12,1),%xmm4,%xmm6
  68c95b:	4e 8d 3c 02          	lea    (%rdx,%r8,1),%r15
  68c95f:	c4 41 7b 10 07       	vmovsd (%r15),%xmm8
  68c964:	c4 01 39 16 14 2f    	vmovhpd (%r15,%r13,1),%xmm8,%xmm10
  68c96a:	4e 8d 3c 00          	lea    (%rax,%r8,1),%r15
  68c96e:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  68c973:	4f 8d 04 a8          	lea    (%r8,%r13,4),%r8
  68c977:	c4 01 31 16 1c 2f    	vmovhpd (%r15,%r13,1),%xmm9,%xmm11
  68c97d:	4f 8d 3c 0e          	lea    (%r14,%r9,1),%r15
  68c981:	c5 e9 5c eb          	vsubpd %xmm3,%xmm2,%xmm5
  68c985:	c4 41 29 5c eb       	vsubpd %xmm11,%xmm10,%xmm13
  68c98a:	c5 d1 59 fe          	vmulpd %xmm6,%xmm5,%xmm7
  68c98e:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  68c993:	4f 8d 0c a1          	lea    (%r9,%r12,4),%r9
  68c997:	c4 01 19 16 34 27    	vmovhpd (%r15,%r12,1),%xmm12,%xmm14
  68c99d:	c4 41 11 59 fe       	vmulpd %xmm14,%xmm13,%xmm15
  68c9a2:	c4 81 79 11 3c d3    	vmovupd %xmm7,(%r11,%r10,8)
  68c9a8:	c4 21 79 11 7c d7 10 	vmovupd %xmm15,0x10(%rdi,%r10,8)
  68c9af:	49 83 c2 04          	add    $0x4,%r10
  68c9b3:	4c 3b 55 c8          	cmp    -0x38(%rbp),%r10
  68c9b7:	0f 82 6e ff ff ff    	jb     68c92b <step3d_t_mod_mp_step3d_t_tile_+0x5cbb>
  68c9bd:	4c 8b 5d c8          	mov    -0x38(%rbp),%r11
  68c9c1:	48 8b 95 d8 fd ff ff 	mov    -0x228(%rbp),%rdx
  68c9c8:	48 8b 8d e0 fd ff ff 	mov    -0x220(%rbp),%rcx
  68c9cf:	48 8b b5 c8 fd ff ff 	mov    -0x238(%rbp),%rsi
  68c9d6:	4c 8b b5 d0 fd ff ff 	mov    -0x230(%rbp),%r14
  68c9dd:	4c 8b ad 70 fd ff ff 	mov    -0x290(%rbp),%r13
  68c9e4:	4d 89 e0             	mov    %r12,%r8
  68c9e7:	4c 8b 95 18 ff ff ff 	mov    -0xe8(%rbp),%r10
  68c9ee:	4d 0f af d3          	imul   %r11,%r10
  68c9f2:	4d 0f af c3          	imul   %r11,%r8
  68c9f6:	4d 3b dd             	cmp    %r13,%r11
  68c9f9:	73 66                	jae    68ca61 <step3d_t_mod_mp_step3d_t_tile_+0x5df1>
  68c9fb:	4c 8b bd a8 fe ff ff 	mov    -0x158(%rbp),%r15
  68ca02:	48 8b bd 50 fd ff ff 	mov    -0x2b0(%rbp),%rdi
  68ca09:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  68ca10:	4c 8b 8d d8 fe ff ff 	mov    -0x128(%rbp),%r9
  68ca17:	4c 03 f9             	add    %rcx,%r15
  68ca1a:	48 03 fa             	add    %rdx,%rdi
  68ca1d:	4c 89 b5 d0 fd ff ff 	mov    %r14,-0x230(%rbp)
  68ca24:	48 03 c6             	add    %rsi,%rax
  68ca27:	4d 89 fe             	mov    %r15,%r14
  68ca2a:	4c 03 ce             	add    %rsi,%r9
  68ca2d:	4c 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%r15
  68ca34:	c4 81 7b 10 04 0a    	vmovsd (%r10,%r9,1),%xmm0
  68ca3a:	c4 c1 7b 5c 0c 02    	vsubsd (%r10,%rax,1),%xmm0,%xmm1
  68ca40:	4d 03 d7             	add    %r15,%r10
  68ca43:	c4 81 73 59 14 30    	vmulsd (%r8,%r14,1),%xmm1,%xmm2
  68ca49:	4d 03 c4             	add    %r12,%r8
  68ca4c:	c4 a1 7b 11 14 df    	vmovsd %xmm2,(%rdi,%r11,8)
  68ca52:	49 ff c3             	inc    %r11
  68ca55:	4d 3b dd             	cmp    %r13,%r11
  68ca58:	72 da                	jb     68ca34 <step3d_t_mod_mp_step3d_t_tile_+0x5dc4>
  68ca5a:	4c 8b b5 d0 fd ff ff 	mov    -0x230(%rbp),%r14
  68ca61:	49 ff c6             	inc    %r14
  68ca64:	48 03 b5 28 ff ff ff 	add    -0xd8(%rbp),%rsi
  68ca6b:	48 03 8d 80 fe ff ff 	add    -0x180(%rbp),%rcx
  68ca72:	48 03 95 70 ff ff ff 	add    -0x90(%rbp),%rdx
  68ca79:	4c 3b b5 50 fe ff ff 	cmp    -0x1b0(%rbp),%r14
  68ca80:	0f 82 13 fd ff ff    	jb     68c799 <step3d_t_mod_mp_step3d_t_tile_+0x5b29>
  68ca86:	4c 8b 95 d0 fa ff ff 	mov    -0x530(%rbp),%r10
  68ca8d:	4c 8b 8d d8 fa ff ff 	mov    -0x528(%rbp),%r9
  68ca94:	4c 8b a5 e0 fa ff ff 	mov    -0x520(%rbp),%r12
  68ca9b:	4c 8b ad c8 fa ff ff 	mov    -0x538(%rbp),%r13
  68caa2:	43 f6 44 0a 08 01    	testb  $0x1,0x8(%r10,%r9,1)
  68caa8:	0f 85 f4 00 00 00    	jne    68cba2 <step3d_t_mod_mp_step3d_t_tile_+0x5f32>
  68caae:	48 8b 05 8b 0d 4b 00 	mov    0x4b0d8b(%rip),%rax        # b3d840 <mod_scalars_mp_nsperiodic_+0x40>
  68cab5:	48 c1 e0 02          	shl    $0x2,%rax
  68cab9:	48 f7 d8             	neg    %rax
  68cabc:	48 03 05 3d 0d 4b 00 	add    0x4b0d3d(%rip),%rax        # b3d800 <mod_scalars_mp_nsperiodic_>
  68cac3:	42 f6 04 a8 01       	testb  $0x1,(%rax,%r13,4)
  68cac8:	0f 85 d4 00 00 00    	jne    68cba2 <step3d_t_mod_mp_step3d_t_tile_+0x5f32>
  68cace:	48 8b 0d 2b 14 4b 00 	mov    0x4b142b(%rip),%rcx        # b3df00 <mod_param_mp_domain_+0x40>
  68cad5:	48 f7 d9             	neg    %rcx
  68cad8:	49 03 cd             	add    %r13,%rcx
  68cadb:	48 89 c8             	mov    %rcx,%rax
  68cade:	48 c1 e0 05          	shl    $0x5,%rax
  68cae2:	48 c1 e1 0b          	shl    $0xb,%rcx
  68cae6:	48 2b c8             	sub    %rax,%rcx
  68cae9:	48 8b 15 d0 13 4b 00 	mov    0x4b13d0(%rip),%rdx        # b3dec0 <mod_param_mp_domain_>
  68caf0:	48 8b bc 0a 18 01 00 	mov    0x118(%rdx,%rcx,1),%rdi
  68caf7:	00 
  68caf8:	48 f7 df             	neg    %rdi
  68cafb:	48 03 bd d8 f8 ff ff 	add    -0x728(%rbp),%rdi
  68cb02:	48 0f af bc 0a 10 01 	imul   0x110(%rdx,%rcx,1),%rdi
  68cb09:	00 00 
  68cb0b:	48 8b b4 0a d8 00 00 	mov    0xd8(%rdx,%rcx,1),%rsi
  68cb12:	00 
  68cb13:	f6 04 3e 01          	testb  $0x1,(%rsi,%rdi,1)
  68cb17:	0f 84 85 00 00 00    	je     68cba2 <step3d_t_mod_mp_step3d_t_tile_+0x5f32>
  68cb1d:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
  68cb23:	3b 85 58 ff ff ff    	cmp    -0xa8(%rbp),%eax
  68cb29:	7c 77                	jl     68cba2 <step3d_t_mod_mp_step3d_t_tile_+0x5f32>
  68cb2b:	48 8b b5 50 f6 ff ff 	mov    -0x9b0(%rbp),%rsi
  68cb32:	83 bd 10 f5 ff ff 0c 	cmpl   $0xc,-0xaf0(%rbp)
  68cb39:	0f 8e 6d 47 00 00    	jle    6912ac <step3d_t_mod_mp_step3d_t_tile_+0xa63c>
  68cb3f:	48 8b 8d 10 f8 ff ff 	mov    -0x7f0(%rbp),%rcx
  68cb46:	45 33 d2             	xor    %r10d,%r10d
  68cb49:	48 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%rdx
  68cb50:	45 33 c9             	xor    %r9d,%r9d
  68cb53:	4c 8b 85 f0 f7 ff ff 	mov    -0x810(%rbp),%r8
  68cb5a:	48 8d 04 31          	lea    (%rcx,%rsi,1),%rax
  68cb5e:	48 2b c2             	sub    %rdx,%rax
  68cb61:	48 8d 3c 16          	lea    (%rsi,%rdx,1),%rdi
  68cb65:	48 2b c6             	sub    %rsi,%rax
  68cb68:	48 2b f9             	sub    %rcx,%rdi
  68cb6b:	49 3b c0             	cmp    %r8,%rax
  68cb6e:	41 0f 9f c2          	setg   %r10b
  68cb72:	48 2b fe             	sub    %rsi,%rdi
  68cb75:	49 3b f8             	cmp    %r8,%rdi
  68cb78:	41 0f 9f c1          	setg   %r9b
  68cb7c:	45 0b d1             	or     %r9d,%r10d
  68cb7f:	0f 84 27 47 00 00    	je     6912ac <step3d_t_mod_mp_step3d_t_tile_+0xa63c>
  68cb85:	48 8b 85 08 f8 ff ff 	mov    -0x7f8(%rbp),%rax
  68cb8c:	4c 89 c2             	mov    %r8,%rdx
  68cb8f:	c5 f8 77             	vzeroupper 
  68cb92:	48 8d 3c 30          	lea    (%rax,%rsi,1),%rdi
  68cb96:	48 03 b5 c0 fa ff ff 	add    -0x540(%rbp),%rsi
  68cb9d:	e8 9e bf e4 ff       	callq  4d8b40 <_intel_fast_memcpy>
  68cba2:	49 f7 dc             	neg    %r12
  68cba5:	4d 03 e5             	add    %r13,%r12
  68cba8:	4c 0f af a5 28 fb ff 	imul   -0x4d8(%rbp),%r12
  68cbaf:	ff 
  68cbb0:	48 8b 85 20 fb ff ff 	mov    -0x4e0(%rbp),%rax
  68cbb7:	48 c1 e0 02          	shl    $0x2,%rax
  68cbbb:	48 8b 95 30 fb ff ff 	mov    -0x4d0(%rbp),%rdx
  68cbc2:	48 2b d0             	sub    %rax,%rdx
  68cbc5:	42 f6 44 22 10 01    	testb  $0x1,0x10(%rdx,%r12,1)
  68cbcb:	0f 85 f8 00 00 00    	jne    68ccc9 <step3d_t_mod_mp_step3d_t_tile_+0x6059>
  68cbd1:	48 8b 05 68 0c 4b 00 	mov    0x4b0c68(%rip),%rax        # b3d840 <mod_scalars_mp_nsperiodic_+0x40>
  68cbd8:	48 c1 e0 02          	shl    $0x2,%rax
  68cbdc:	48 f7 d8             	neg    %rax
  68cbdf:	48 03 05 1a 0c 4b 00 	add    0x4b0c1a(%rip),%rax        # b3d800 <mod_scalars_mp_nsperiodic_>
  68cbe6:	42 f6 04 a8 01       	testb  $0x1,(%rax,%r13,4)
  68cbeb:	0f 85 d8 00 00 00    	jne    68ccc9 <step3d_t_mod_mp_step3d_t_tile_+0x6059>
  68cbf1:	48 8b 0d 08 13 4b 00 	mov    0x4b1308(%rip),%rcx        # b3df00 <mod_param_mp_domain_+0x40>
  68cbf8:	48 f7 d9             	neg    %rcx
  68cbfb:	49 03 cd             	add    %r13,%rcx
  68cbfe:	48 89 c8             	mov    %rcx,%rax
  68cc01:	48 c1 e0 05          	shl    $0x5,%rax
  68cc05:	48 c1 e1 0b          	shl    $0xb,%rcx
  68cc09:	48 2b c8             	sub    %rax,%rcx
  68cc0c:	48 8b 15 ad 12 4b 00 	mov    0x4b12ad(%rip),%rdx        # b3dec0 <mod_param_mp_domain_>
  68cc13:	48 8b bc 0a d0 00 00 	mov    0xd0(%rdx,%rcx,1),%rdi
  68cc1a:	00 
  68cc1b:	48 f7 df             	neg    %rdi
  68cc1e:	48 03 bd d8 f8 ff ff 	add    -0x728(%rbp),%rdi
  68cc25:	48 0f af bc 0a c8 00 	imul   0xc8(%rdx,%rcx,1),%rdi
  68cc2c:	00 00 
  68cc2e:	48 8b b4 0a 90 00 00 	mov    0x90(%rdx,%rcx,1),%rsi
  68cc35:	00 
  68cc36:	f6 04 3e 01          	testb  $0x1,(%rsi,%rdi,1)
  68cc3a:	0f 84 89 00 00 00    	je     68ccc9 <step3d_t_mod_mp_step3d_t_tile_+0x6059>
  68cc40:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
  68cc46:	3b 85 58 ff ff ff    	cmp    -0xa8(%rbp),%eax
  68cc4c:	0f 8c d2 00 00 00    	jl     68cd24 <step3d_t_mod_mp_step3d_t_tile_+0x60b4>
  68cc52:	48 8b b5 50 f6 ff ff 	mov    -0x9b0(%rbp),%rsi
  68cc59:	83 bd 10 f5 ff ff 0c 	cmpl   $0xc,-0xaf0(%rbp)
  68cc60:	0f 8e 81 41 00 00    	jle    690de7 <step3d_t_mod_mp_step3d_t_tile_+0xa177>
  68cc66:	48 8b 8d 18 f8 ff ff 	mov    -0x7e8(%rbp),%rcx
  68cc6d:	45 33 d2             	xor    %r10d,%r10d
  68cc70:	48 8b 95 20 f8 ff ff 	mov    -0x7e0(%rbp),%rdx
  68cc77:	45 33 c9             	xor    %r9d,%r9d
  68cc7a:	4c 8b 85 f0 f7 ff ff 	mov    -0x810(%rbp),%r8
  68cc81:	48 8d 04 0e          	lea    (%rsi,%rcx,1),%rax
  68cc85:	48 2b c2             	sub    %rdx,%rax
  68cc88:	48 8d 3c 16          	lea    (%rsi,%rdx,1),%rdi
  68cc8c:	48 2b c6             	sub    %rsi,%rax
  68cc8f:	48 2b f9             	sub    %rcx,%rdi
  68cc92:	49 3b c0             	cmp    %r8,%rax
  68cc95:	41 0f 9f c2          	setg   %r10b
  68cc99:	48 2b fe             	sub    %rsi,%rdi
  68cc9c:	49 3b f8             	cmp    %r8,%rdi
  68cc9f:	41 0f 9f c1          	setg   %r9b
  68cca3:	45 0b d1             	or     %r9d,%r10d
  68cca6:	0f 84 3b 41 00 00    	je     690de7 <step3d_t_mod_mp_step3d_t_tile_+0xa177>
  68ccac:	48 8b 85 f8 f7 ff ff 	mov    -0x808(%rbp),%rax
  68ccb3:	4c 89 c2             	mov    %r8,%rdx
  68ccb6:	c5 f8 77             	vzeroupper 
  68ccb9:	48 8d 3c 06          	lea    (%rsi,%rax,1),%rdi
  68ccbd:	48 03 b5 00 f8 ff ff 	add    -0x800(%rbp),%rsi
  68ccc4:	e8 77 be e4 ff       	callq  4d8b40 <_intel_fast_memcpy>
  68ccc9:	8b 85 10 fb ff ff    	mov    -0x4f0(%rbp),%eax
  68cccf:	45 33 ff             	xor    %r15d,%r15d
  68ccd2:	3b 85 18 fb ff ff    	cmp    -0x4e8(%rbp),%eax
  68ccd8:	0f 8c 8e 01 00 00    	jl     68ce6c <step3d_t_mod_mp_step3d_t_tile_+0x61fc>
  68ccde:	4c 8b b5 f0 f5 ff ff 	mov    -0xa10(%rbp),%r14
  68cce5:	4c 8b a5 50 f6 ff ff 	mov    -0x9b0(%rbp),%r12
  68ccec:	48 8b bd c0 fa ff ff 	mov    -0x540(%rbp),%rdi
  68ccf3:	4c 8b 85 a8 fa ff ff 	mov    -0x558(%rbp),%r8
  68ccfa:	4c 8b 8d 70 fd ff ff 	mov    -0x290(%rbp),%r9
  68cd01:	44 8b 95 28 fe ff ff 	mov    -0x1d8(%rbp),%r10d
  68cd08:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68cd0f:	c5 fd 10 05 c9 84 23 	vmovupd 0x2384c9(%rip),%ymm0        # 8c51e0 <var$630.126.450+0x320>
  68cd16:	00 
  68cd17:	c5 fb 10 0d f9 a4 23 	vmovsd 0x23a4f9(%rip),%xmm1        # 8c7218 <__STRLITPACK_199.115+0x88>
  68cd1e:	00 
  68cd1f:	e9 93 00 00 00       	jmpq   68cdb7 <step3d_t_mod_mp_step3d_t_tile_+0x6147>
  68cd24:	8b 85 10 fb ff ff    	mov    -0x4f0(%rbp),%eax
  68cd2a:	3b 85 18 fb ff ff    	cmp    -0x4e8(%rbp),%eax
  68cd30:	0f 8c 36 01 00 00    	jl     68ce6c <step3d_t_mod_mp_step3d_t_tile_+0x61fc>
  68cd36:	4c 8b b5 f0 f5 ff ff 	mov    -0xa10(%rbp),%r14
  68cd3d:	4c 8b a5 50 f6 ff ff 	mov    -0x9b0(%rbp),%r12
  68cd44:	48 83 bd 60 ff ff ff 	cmpq   $0x1,-0xa0(%rbp)
  68cd4b:	01 
  68cd4c:	0f 86 1a 01 00 00    	jbe    68ce6c <step3d_t_mod_mp_step3d_t_tile_+0x61fc>
  68cd52:	48 83 bd 60 ff ff ff 	cmpq   $0x2,-0xa0(%rbp)
  68cd59:	02 
  68cd5a:	0f 86 0c 01 00 00    	jbe    68ce6c <step3d_t_mod_mp_step3d_t_tile_+0x61fc>
  68cd60:	41 bf 03 00 00 00    	mov    $0x3,%r15d
  68cd66:	48 83 bd 60 ff ff ff 	cmpq   $0x3,-0xa0(%rbp)
  68cd6d:	03 
  68cd6e:	0f 86 f8 00 00 00    	jbe    68ce6c <step3d_t_mod_mp_step3d_t_tile_+0x61fc>
  68cd74:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68cd7b:	c5 fd 10 05 5d 84 23 	vmovupd 0x23845d(%rip),%ymm0        # 8c51e0 <var$630.126.450+0x320>
  68cd82:	00 
  68cd83:	c5 fb 10 0d 8d a4 23 	vmovsd 0x23a48d(%rip),%xmm1        # 8c7218 <__STRLITPACK_199.115+0x88>
  68cd8a:	00 
  68cd8b:	48 8b bd c0 fa ff ff 	mov    -0x540(%rbp),%rdi
  68cd92:	4c 8b 85 a8 fa ff ff 	mov    -0x558(%rbp),%r8
  68cd99:	4c 8b 8d 70 fd ff ff 	mov    -0x290(%rbp),%r9
  68cda0:	44 8b 95 28 fe ff ff 	mov    -0x1d8(%rbp),%r10d
  68cda7:	49 ff c7             	inc    %r15
  68cdaa:	4c 3b bd 60 ff ff ff 	cmp    -0xa0(%rbp),%r15
  68cdb1:	0f 83 a7 00 00 00    	jae    68ce5e <step3d_t_mod_mp_step3d_t_tile_+0x61ee>
  68cdb7:	44 3b 95 58 ff ff ff 	cmp    -0xa8(%rbp),%r10d
  68cdbe:	7c e7                	jl     68cda7 <step3d_t_mod_mp_step3d_t_tile_+0x6137>
  68cdc0:	49 83 f9 04          	cmp    $0x4,%r9
  68cdc4:	0f 8c 98 40 00 00    	jl     690e62 <step3d_t_mod_mp_step3d_t_tile_+0xa1f2>
  68cdca:	4c 89 f9             	mov    %r15,%rcx
  68cdcd:	4d 8d 2c 3c          	lea    (%r12,%rdi,1),%r13
  68cdd1:	48 0f af 8d 70 ff ff 	imul   -0x90(%rbp),%rcx
  68cdd8:	ff 
  68cdd9:	4c 8b 9d 78 ff ff ff 	mov    -0x88(%rbp),%r11
  68cde0:	49 8d 04 0e          	lea    (%r14,%rcx,1),%rax
  68cde4:	33 d2                	xor    %edx,%edx
  68cde6:	49 8d 34 0c          	lea    (%r12,%rcx,1),%rsi
  68cdea:	49 03 c0             	add    %r8,%rax
  68cded:	49 03 f0             	add    %r8,%rsi
  68cdf0:	49 03 cd             	add    %r13,%rcx
  68cdf3:	4d 89 dd             	mov    %r11,%r13
  68cdf6:	c5 fd 10 14 d1       	vmovupd (%rcx,%rdx,8),%ymm2
  68cdfb:	c5 ed 58 5c d6 f8    	vaddpd -0x8(%rsi,%rdx,8),%ymm2,%ymm3
  68ce01:	c5 fd 59 e3          	vmulpd %ymm3,%ymm0,%ymm4
  68ce05:	c5 fd 11 64 d0 f8    	vmovupd %ymm4,-0x8(%rax,%rdx,8)
  68ce0b:	48 83 c2 04          	add    $0x4,%rdx
  68ce0f:	49 3b d5             	cmp    %r13,%rdx
  68ce12:	72 e2                	jb     68cdf6 <step3d_t_mod_mp_step3d_t_tile_+0x6186>
  68ce14:	4d 3b d9             	cmp    %r9,%r11
  68ce17:	73 8e                	jae    68cda7 <step3d_t_mod_mp_step3d_t_tile_+0x6137>
  68ce19:	4c 89 f8             	mov    %r15,%rax
  68ce1c:	49 8d 34 3c          	lea    (%r12,%rdi,1),%rsi
  68ce20:	48 0f af 85 70 ff ff 	imul   -0x90(%rbp),%rax
  68ce27:	ff 
  68ce28:	49 8d 0c 06          	lea    (%r14,%rax,1),%rcx
  68ce2c:	49 03 c8             	add    %r8,%rcx
  68ce2f:	49 8d 14 04          	lea    (%r12,%rax,1),%rdx
  68ce33:	49 03 d0             	add    %r8,%rdx
  68ce36:	48 03 c6             	add    %rsi,%rax
  68ce39:	c4 a1 7b 10 14 d8    	vmovsd (%rax,%r11,8),%xmm2
  68ce3f:	c4 a1 6b 58 5c da f8 	vaddsd -0x8(%rdx,%r11,8),%xmm2,%xmm3
  68ce46:	c5 f3 59 e3          	vmulsd %xmm3,%xmm1,%xmm4
  68ce4a:	c4 a1 7b 11 64 d9 f8 	vmovsd %xmm4,-0x8(%rcx,%r11,8)
  68ce51:	49 ff c3             	inc    %r11
  68ce54:	4d 3b d9             	cmp    %r9,%r11
  68ce57:	72 e0                	jb     68ce39 <step3d_t_mod_mp_step3d_t_tile_+0x61c9>
  68ce59:	e9 49 ff ff ff       	jmpq   68cda7 <step3d_t_mod_mp_step3d_t_tile_+0x6137>
  68ce5e:	4c 89 85 a8 fa ff ff 	mov    %r8,-0x558(%rbp)
  68ce65:	4c 8b ad c8 fa ff ff 	mov    -0x538(%rbp),%r13
  68ce6c:	8b 85 10 fb ff ff    	mov    -0x4f0(%rbp),%eax
  68ce72:	3b 85 00 fb ff ff    	cmp    -0x500(%rbp),%eax
  68ce78:	0f 8c 61 07 00 00    	jl     68d5df <step3d_t_mod_mp_step3d_t_tile_+0x696f>
  68ce7e:	48 8b bd 50 f8 ff ff 	mov    -0x7b0(%rbp),%rdi
  68ce85:	48 8b 8d f0 f5 ff ff 	mov    -0xa10(%rbp),%rcx
  68ce8c:	48 8b 95 50 f6 ff ff 	mov    -0x9b0(%rbp),%rdx
  68ce93:	4c 8d 4f 68          	lea    0x68(%rdi),%r9
  68ce97:	49 8b 01             	mov    (%r9),%rax
  68ce9a:	49 8b 71 e8          	mov    -0x18(%r9),%rsi
  68ce9e:	4d 8b 41 d0          	mov    -0x30(%r9),%r8
  68cea2:	4d 8b 71 98          	mov    -0x68(%r9),%r14
  68cea6:	4d 8b 61 30          	mov    0x30(%r9),%r12
  68ceaa:	4d 8b 59 18          	mov    0x18(%r9),%r11
  68ceae:	48 89 85 48 fa ff ff 	mov    %rax,-0x5b8(%rbp)
  68ceb5:	48 89 b5 30 ff ff ff 	mov    %rsi,-0xd0(%rbp)
  68cebc:	4c 89 85 20 ff ff ff 	mov    %r8,-0xe0(%rbp)
  68cec3:	48 83 bd 90 fe ff ff 	cmpq   $0x8,-0x170(%rbp)
  68ceca:	08 
  68cecb:	0f 85 69 02 00 00    	jne    68d13a <step3d_t_mod_mp_step3d_t_tile_+0x64ca>
  68ced1:	48 83 bd 20 ff ff ff 	cmpq   $0x8,-0xe0(%rbp)
  68ced8:	08 
  68ced9:	0f 85 5b 02 00 00    	jne    68d13a <step3d_t_mod_mp_step3d_t_tile_+0x64ca>
  68cedf:	4d 89 e1             	mov    %r12,%r9
  68cee2:	4f 8d 14 5b          	lea    (%r11,%r11,2),%r10
  68cee6:	4c 0f af 8d 80 fa ff 	imul   -0x580(%rbp),%r9
  68ceed:	ff 
  68ceee:	c5 fd 10 1d 0a 83 23 	vmovupd 0x23830a(%rip),%ymm3        # 8c5200 <var$630.126.450+0x340>
  68cef5:	00 
  68cef6:	c5 fb 10 15 5a a6 23 	vmovsd 0x23a65a(%rip),%xmm2        # 8c7558 <__STRLITPACK_199.115+0x3c8>
  68cefd:	00 
  68cefe:	c5 fb 10 0d 12 a3 23 	vmovsd 0x23a312(%rip),%xmm1        # 8c7218 <__STRLITPACK_199.115+0x88>
  68cf05:	00 
  68cf06:	c5 fd 10 05 d2 82 23 	vmovupd 0x2382d2(%rip),%ymm0        # 8c51e0 <var$630.126.450+0x320>
  68cf0d:	00 
  68cf0e:	48 8b 85 c0 fa ff ff 	mov    -0x540(%rbp),%rax
  68cf15:	48 03 d0             	add    %rax,%rdx
  68cf18:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68cf1f:	48 89 95 68 fc ff ff 	mov    %rdx,-0x398(%rbp)
  68cf26:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  68cf2d:	48 8b 95 38 f9 ff ff 	mov    -0x6c8(%rbp),%rdx
  68cf34:	49 89 f7             	mov    %rsi,%r15
  68cf37:	4d 89 f8             	mov    %r15,%r8
  68cf3a:	48 8b b5 48 fa ff ff 	mov    -0x5b8(%rbp),%rsi
  68cf41:	48 8b bd f8 f8 ff ff 	mov    -0x708(%rbp),%rdi
  68cf48:	49 03 d5             	add    %r13,%rdx
  68cf4b:	4c 8b ad a8 fa ff ff 	mov    -0x558(%rbp),%r13
  68cf52:	48 0f af d6          	imul   %rsi,%rdx
  68cf56:	4c 0f af 85 78 f9 ff 	imul   -0x688(%rbp),%r8
  68cf5d:	ff 
  68cf5e:	49 0f af ff          	imul   %r15,%rdi
  68cf62:	49 f7 df             	neg    %r15
  68cf65:	4c 03 e9             	add    %rcx,%r13
  68cf68:	48 03 c8             	add    %rax,%rcx
  68cf6b:	4b 8d 04 0e          	lea    (%r14,%r9,1),%rax
  68cf6f:	4d 2b cc             	sub    %r12,%r9
  68cf72:	4d 03 e3             	add    %r11,%r12
  68cf75:	4d 2b da             	sub    %r10,%r11
  68cf78:	4c 03 d2             	add    %rdx,%r10
  68cf7b:	4c 89 ad 28 fa ff ff 	mov    %r13,-0x5d8(%rbp)
  68cf82:	4d 2b cb             	sub    %r11,%r9
  68cf85:	4c 8b ad d8 f9 ff ff 	mov    -0x628(%rbp),%r13
  68cf8c:	4d 03 f5             	add    %r13,%r14
  68cf8f:	4d 03 f1             	add    %r9,%r14
  68cf92:	49 03 c5             	add    %r13,%rax
  68cf95:	4c 8b 8d 58 f9 ff ff 	mov    -0x6a8(%rbp),%r9
  68cf9c:	4d 2b e2             	sub    %r10,%r12
  68cf9f:	4c 0f af 8d 38 f9 ff 	imul   -0x6c8(%rbp),%r9
  68cfa6:	ff 
  68cfa7:	48 2b d6             	sub    %rsi,%rdx
  68cfaa:	48 03 f7             	add    %rdi,%rsi
  68cfad:	49 2b f8             	sub    %r8,%rdi
  68cfb0:	49 2b c4             	sub    %r12,%rax
  68cfb3:	48 2b d7             	sub    %rdi,%rdx
  68cfb6:	48 2b c6             	sub    %rsi,%rax
  68cfb9:	4c 03 f2             	add    %rdx,%r14
  68cfbc:	49 03 c0             	add    %r8,%rax
  68cfbf:	48 c7 85 40 fa ff ff 	movq   $0x0,-0x5c0(%rbp)
  68cfc6:	00 00 00 00 
  68cfca:	4d 03 fe             	add    %r14,%r15
  68cfcd:	4c 8b 85 40 fa ff ff 	mov    -0x5c0(%rbp),%r8
  68cfd4:	4c 89 c7             	mov    %r8,%rdi
  68cfd7:	4c 03 8d a8 f9 ff ff 	add    -0x658(%rbp),%r9
  68cfde:	4c 8b ad c8 fa ff ff 	mov    -0x538(%rbp),%r13
  68cfe5:	48 8b 95 28 fa ff ff 	mov    -0x5d8(%rbp),%rdx
  68cfec:	48 8b b5 70 fd ff ff 	mov    -0x290(%rbp),%rsi
  68cff3:	48 89 8d 60 fc ff ff 	mov    %rcx,-0x3a0(%rbp)
  68cffa:	4c 89 c1             	mov    %r8,%rcx
  68cffd:	4c 89 bd 70 fc ff ff 	mov    %r15,-0x390(%rbp)
  68d004:	48 89 85 78 fc ff ff 	mov    %rax,-0x388(%rbp)
  68d00b:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
  68d011:	3b 85 58 ff ff ff    	cmp    -0xa8(%rbp),%eax
  68d017:	0f 8c f3 00 00 00    	jl     68d110 <step3d_t_mod_mp_step3d_t_tile_+0x64a0>
  68d01d:	48 83 fe 04          	cmp    $0x4,%rsi
  68d021:	0f 8c 43 3e 00 00    	jl     690e6a <step3d_t_mod_mp_step3d_t_tile_+0xa1fa>
  68d027:	4c 8b a5 68 fc ff ff 	mov    -0x398(%rbp),%r12
  68d02e:	45 33 f6             	xor    %r14d,%r14d
  68d031:	4c 8b 9d 60 fc ff ff 	mov    -0x3a0(%rbp),%r11
  68d038:	4e 8d 2c 02          	lea    (%rdx,%r8,1),%r13
  68d03c:	4c 8b 95 78 fc ff ff 	mov    -0x388(%rbp),%r10
  68d043:	4c 8b bd 70 fc ff ff 	mov    -0x390(%rbp),%r15
  68d04a:	4d 03 e0             	add    %r8,%r12
  68d04d:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  68d054:	4d 03 d8             	add    %r8,%r11
  68d057:	48 89 c6             	mov    %rax,%rsi
  68d05a:	4c 03 d7             	add    %rdi,%r10
  68d05d:	4c 03 ff             	add    %rdi,%r15
  68d060:	c4 81 7d 10 2c f3    	vmovupd (%r11,%r14,8),%ymm5
  68d066:	c4 81 7d 10 24 f7    	vmovupd (%r15,%r14,8),%ymm4
  68d06c:	c4 01 7d 59 0c f1    	vmulpd (%r9,%r14,8),%ymm0,%ymm9
  68d072:	c4 81 55 5c 74 f5 f8 	vsubpd -0x8(%r13,%r14,8),%ymm5,%ymm6
  68d079:	c4 81 5d 58 3c f2    	vaddpd (%r10,%r14,8),%ymm4,%ymm7
  68d07f:	c5 65 59 c6          	vmulpd %ymm6,%ymm3,%ymm8
  68d083:	c4 41 45 5c d0       	vsubpd %ymm8,%ymm7,%ymm10
  68d088:	c4 41 35 59 da       	vmulpd %ymm10,%ymm9,%ymm11
  68d08d:	c4 01 7d 11 1c f4    	vmovupd %ymm11,(%r12,%r14,8)
  68d093:	49 83 c6 04          	add    $0x4,%r14
  68d097:	4c 3b f6             	cmp    %rsi,%r14
  68d09a:	72 c4                	jb     68d060 <step3d_t_mod_mp_step3d_t_tile_+0x63f0>
  68d09c:	48 8b b5 70 fd ff ff 	mov    -0x290(%rbp),%rsi
  68d0a3:	48 3b c6             	cmp    %rsi,%rax
  68d0a6:	73 68                	jae    68d110 <step3d_t_mod_mp_step3d_t_tile_+0x64a0>
  68d0a8:	4c 8b 9d 68 fc ff ff 	mov    -0x398(%rbp),%r11
  68d0af:	4e 8d 24 02          	lea    (%rdx,%r8,1),%r12
  68d0b3:	4c 8b 95 60 fc ff ff 	mov    -0x3a0(%rbp),%r10
  68d0ba:	4c 8b b5 78 fc ff ff 	mov    -0x388(%rbp),%r14
  68d0c1:	4c 8b ad 70 fc ff ff 	mov    -0x390(%rbp),%r13
  68d0c8:	4d 03 d8             	add    %r8,%r11
  68d0cb:	4d 03 d0             	add    %r8,%r10
  68d0ce:	4c 03 f7             	add    %rdi,%r14
  68d0d1:	4c 03 ef             	add    %rdi,%r13
  68d0d4:	c4 c1 7b 10 2c c2    	vmovsd (%r10,%rax,8),%xmm5
  68d0da:	c4 c1 7b 10 64 c5 00 	vmovsd 0x0(%r13,%rax,8),%xmm4
  68d0e1:	c4 41 73 59 0c c1    	vmulsd (%r9,%rax,8),%xmm1,%xmm9
  68d0e7:	c4 c1 53 5c 74 c4 f8 	vsubsd -0x8(%r12,%rax,8),%xmm5,%xmm6
  68d0ee:	c4 c1 5b 58 3c c6    	vaddsd (%r14,%rax,8),%xmm4,%xmm7
  68d0f4:	c5 6b 59 c6          	vmulsd %xmm6,%xmm2,%xmm8
  68d0f8:	c4 41 43 5c d0       	vsubsd %xmm8,%xmm7,%xmm10
  68d0fd:	c4 41 33 59 da       	vmulsd %xmm10,%xmm9,%xmm11
  68d102:	c4 41 7b 11 1c c3    	vmovsd %xmm11,(%r11,%rax,8)
  68d108:	48 ff c0             	inc    %rax
  68d10b:	48 3b c6             	cmp    %rsi,%rax
  68d10e:	72 c4                	jb     68d0d4 <step3d_t_mod_mp_step3d_t_tile_+0x6464>
  68d110:	48 ff c1             	inc    %rcx
  68d113:	4c 03 85 70 ff ff ff 	add    -0x90(%rbp),%r8
  68d11a:	4c 03 8d 68 fe ff ff 	add    -0x198(%rbp),%r9
  68d121:	48 03 bd 30 ff ff ff 	add    -0xd0(%rbp),%rdi
  68d128:	48 3b 8d 38 fe ff ff 	cmp    -0x1c8(%rbp),%rcx
  68d12f:	0f 82 d6 fe ff ff    	jb     68d00b <step3d_t_mod_mp_step3d_t_tile_+0x639b>
  68d135:	e9 9e 04 00 00       	jmpq   68d5d8 <step3d_t_mod_mp_step3d_t_tile_+0x6968>
  68d13a:	4c 8b bd 38 f9 ff ff 	mov    -0x6c8(%rbp),%r15
  68d141:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68d148:	4c 8b ad 58 f9 ff ff 	mov    -0x6a8(%rbp),%r13
  68d14f:	4d 0f af ef          	imul   %r15,%r13
  68d153:	4c 8b 8d 40 f9 ff ff 	mov    -0x6c0(%rbp),%r9
  68d15a:	48 89 f7             	mov    %rsi,%rdi
  68d15d:	4d 89 c2             	mov    %r8,%r10
  68d160:	4c 89 d0             	mov    %r10,%rax
  68d163:	4f 8d 04 29          	lea    (%r9,%r13,1),%r8
  68d167:	4c 03 ad 48 f9 ff ff 	add    -0x6b8(%rbp),%r13
  68d16e:	4d 89 e1             	mov    %r12,%r9
  68d171:	4c 89 ad f8 fc ff ff 	mov    %r13,-0x308(%rbp)
  68d178:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  68d17f:	4c 0f af 8d 80 fa ff 	imul   -0x580(%rbp),%r9
  68d186:	ff 
  68d187:	48 0f af bd 78 f9 ff 	imul   -0x688(%rbp),%rdi
  68d18e:	ff 
  68d18f:	48 0f af 85 98 fb ff 	imul   -0x468(%rbp),%rax
  68d196:	ff 
  68d197:	4d 03 f1             	add    %r9,%r14
  68d19a:	4d 03 fd             	add    %r13,%r15
  68d19d:	4c 8b ad 48 fa ff ff 	mov    -0x5b8(%rbp),%r13
  68d1a4:	4d 89 f1             	mov    %r14,%r9
  68d1a7:	4d 0f af fd          	imul   %r13,%r15
  68d1ab:	4c 89 85 f0 fc ff ff 	mov    %r8,-0x310(%rbp)
  68d1b2:	4f 8d 04 5b          	lea    (%r11,%r11,2),%r8
  68d1b6:	4d 2b cc             	sub    %r12,%r9
  68d1b9:	4d 03 e3             	add    %r11,%r12
  68d1bc:	4d 2b d8             	sub    %r8,%r11
  68d1bf:	4d 03 c7             	add    %r15,%r8
  68d1c2:	4d 2b fd             	sub    %r13,%r15
  68d1c5:	4d 2b f4             	sub    %r12,%r14
  68d1c8:	4d 2b df             	sub    %r15,%r11
  68d1cb:	4d 2b cb             	sub    %r11,%r9
  68d1ce:	4c 8b 9d f8 f8 ff ff 	mov    -0x708(%rbp),%r11
  68d1d5:	4c 0f af de          	imul   %rsi,%r11
  68d1d9:	4d 03 eb             	add    %r11,%r13
  68d1dc:	48 f7 de             	neg    %rsi
  68d1df:	4d 2b c5             	sub    %r13,%r8
  68d1e2:	49 89 f4             	mov    %rsi,%r12
  68d1e5:	4d 03 f0             	add    %r8,%r14
  68d1e8:	4c 2b df             	sub    %rdi,%r11
  68d1eb:	4c 8b 85 00 f9 ff ff 	mov    -0x700(%rbp),%r8
  68d1f2:	4d 0f af c2          	imul   %r10,%r8
  68d1f6:	4d 89 c5             	mov    %r8,%r13
  68d1f9:	4d 2b e0             	sub    %r8,%r12
  68d1fc:	49 f7 d8             	neg    %r8
  68d1ff:	4c 2b e8             	sub    %rax,%r13
  68d202:	4c 03 c7             	add    %rdi,%r8
  68d205:	48 03 fe             	add    %rsi,%rdi
  68d208:	49 2b fd             	sub    %r13,%rdi
  68d20b:	49 f7 dc             	neg    %r12
  68d20e:	4d 03 c6             	add    %r14,%r8
  68d211:	4c 03 f7             	add    %rdi,%r14
  68d214:	4d 03 e3             	add    %r11,%r12
  68d217:	4d 03 dd             	add    %r13,%r11
  68d21a:	49 f7 dc             	neg    %r12
  68d21d:	4d 03 e1             	add    %r9,%r12
  68d220:	4d 2b cb             	sub    %r11,%r9
  68d223:	4c 03 e0             	add    %rax,%r12
  68d226:	49 03 c0             	add    %r8,%rax
  68d229:	4c 89 a5 10 fd ff ff 	mov    %r12,-0x2f0(%rbp)
  68d230:	4f 8d 24 56          	lea    (%r14,%r10,2),%r12
  68d234:	4c 8b b5 b0 fa ff ff 	mov    -0x550(%rbp),%r14
  68d23b:	48 c7 85 00 fe ff ff 	movq   $0x0,-0x200(%rbp)
  68d242:	00 00 00 00 
  68d246:	4f 8d 1c 51          	lea    (%r9,%r10,2),%r11
  68d24a:	48 8b b5 c0 fa ff ff 	mov    -0x540(%rbp),%rsi
  68d251:	4c 8b 85 00 fe ff ff 	mov    -0x200(%rbp),%r8
  68d258:	4d 8d 14 16          	lea    (%r14,%rdx,1),%r10
  68d25c:	48 03 d6             	add    %rsi,%rdx
  68d25f:	4d 8d 0c 0e          	lea    (%r14,%rcx,1),%r9
  68d263:	4c 8b b5 a8 fa ff ff 	mov    -0x558(%rbp),%r14
  68d26a:	4c 89 c7             	mov    %r8,%rdi
  68d26d:	4c 89 a5 88 fc ff ff 	mov    %r12,-0x378(%rbp)
  68d274:	4d 89 c5             	mov    %r8,%r13
  68d277:	4c 89 9d 80 fc ff ff 	mov    %r11,-0x380(%rbp)
  68d27e:	4c 03 f1             	add    %rcx,%r14
  68d281:	48 03 ce             	add    %rsi,%rcx
  68d284:	48 89 fe             	mov    %rdi,%rsi
  68d287:	48 89 8d 60 fc ff ff 	mov    %rcx,-0x3a0(%rbp)
  68d28e:	48 89 95 68 fc ff ff 	mov    %rdx,-0x398(%rbp)
  68d295:	4c 89 b5 90 fc ff ff 	mov    %r14,-0x370(%rbp)
  68d29c:	4c 89 8d 98 fc ff ff 	mov    %r9,-0x368(%rbp)
  68d2a3:	4c 89 95 a0 fc ff ff 	mov    %r10,-0x360(%rbp)
  68d2aa:	48 89 85 a8 fc ff ff 	mov    %rax,-0x358(%rbp)
  68d2b1:	c5 fb 10 0d 9f a2 23 	vmovsd 0x23a29f(%rip),%xmm1        # 8c7558 <__STRLITPACK_199.115+0x3c8>
  68d2b8:	00 
  68d2b9:	c5 fb 10 25 57 9f 23 	vmovsd 0x239f57(%rip),%xmm4        # 8c7218 <__STRLITPACK_199.115+0x88>
  68d2c0:	00 
  68d2c1:	c5 f9 10 15 e7 96 23 	vmovupd 0x2396e7(%rip),%xmm2        # 8c69b0 <__STRLITPACK_19.34+0x20>
  68d2c8:	00 
  68d2c9:	c5 f9 10 1d cf 96 23 	vmovupd 0x2396cf(%rip),%xmm3        # 8c69a0 <__STRLITPACK_19.34+0x10>
  68d2d0:	00 
  68d2d1:	4c 8b a5 70 fd ff ff 	mov    -0x290(%rbp),%r12
  68d2d8:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
  68d2de:	3b 85 58 ff ff ff    	cmp    -0xa8(%rbp),%eax
  68d2e4:	0f 8c c9 02 00 00    	jl     68d5b3 <step3d_t_mod_mp_step3d_t_tile_+0x6943>
  68d2ea:	49 83 fc 04          	cmp    $0x4,%r12
  68d2ee:	0f 8c a8 3f 00 00    	jl     69129c <step3d_t_mod_mp_step3d_t_tile_+0xa62c>
  68d2f4:	48 8b 85 68 fc ff ff 	mov    -0x398(%rbp),%rax
  68d2fb:	4c 8b b5 a8 fc ff ff 	mov    -0x358(%rbp),%r14
  68d302:	4c 8b bd 10 fd ff ff 	mov    -0x2f0(%rbp),%r15
  68d309:	4c 8b 9d 78 ff ff ff 	mov    -0x88(%rbp),%r11
  68d310:	48 03 c6             	add    %rsi,%rax
  68d313:	48 89 85 c0 fc ff ff 	mov    %rax,-0x340(%rbp)
  68d31a:	4c 03 f7             	add    %rdi,%r14
  68d31d:	48 8b 85 60 fc ff ff 	mov    -0x3a0(%rbp),%rax
  68d324:	4c 03 ff             	add    %rdi,%r15
  68d327:	4c 8b 95 f0 fc ff ff 	mov    -0x310(%rbp),%r10
  68d32e:	4c 8b 8d a0 fc ff ff 	mov    -0x360(%rbp),%r9
  68d335:	48 8b 8d 98 fc ff ff 	mov    -0x368(%rbp),%rcx
  68d33c:	48 03 c6             	add    %rsi,%rax
  68d33f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  68d343:	4d 03 d0             	add    %r8,%r10
  68d346:	48 8b 85 f8 fc ff ff 	mov    -0x308(%rbp),%rax
  68d34d:	4c 03 ce             	add    %rsi,%r9
  68d350:	48 8b 95 90 fc ff ff 	mov    -0x370(%rbp),%rdx
  68d357:	48 03 ce             	add    %rsi,%rcx
  68d35a:	4c 89 9d f8 fe ff ff 	mov    %r11,-0x108(%rbp)
  68d361:	45 33 db             	xor    %r11d,%r11d
  68d364:	4c 89 75 d8          	mov    %r14,-0x28(%rbp)
  68d368:	49 03 c0             	add    %r8,%rax
  68d36b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  68d36f:	48 03 d6             	add    %rsi,%rdx
  68d372:	48 8b 85 88 fc ff ff 	mov    -0x378(%rbp),%rax
  68d379:	48 89 b5 e8 fd ff ff 	mov    %rsi,-0x218(%rbp)
  68d380:	48 89 bd f0 fd ff ff 	mov    %rdi,-0x210(%rbp)
  68d387:	4c 89 85 f8 fd ff ff 	mov    %r8,-0x208(%rbp)
  68d38e:	48 03 c7             	add    %rdi,%rax
  68d391:	48 89 85 b8 fc ff ff 	mov    %rax,-0x348(%rbp)
  68d398:	48 8b 85 80 fc ff ff 	mov    -0x380(%rbp),%rax
  68d39f:	4c 89 ad 00 fe ff ff 	mov    %r13,-0x200(%rbp)
  68d3a6:	4c 89 7d e0          	mov    %r15,-0x20(%rbp)
  68d3aa:	4c 8b 85 b8 fc ff ff 	mov    -0x348(%rbp),%r8
  68d3b1:	48 03 c7             	add    %rdi,%rax
  68d3b4:	48 89 85 b0 fc ff ff 	mov    %rax,-0x350(%rbp)
  68d3bb:	33 c0                	xor    %eax,%eax
  68d3bd:	48 89 c6             	mov    %rax,%rsi
  68d3c0:	48 8b bd b0 fc ff ff 	mov    -0x350(%rbp),%rdi
  68d3c7:	4c 8b a5 c0 fc ff ff 	mov    -0x340(%rbp),%r12
  68d3ce:	4c 8b ad 20 ff ff ff 	mov    -0xe0(%rbp),%r13
  68d3d5:	4c 8b b5 90 fe ff ff 	mov    -0x170(%rbp),%r14
  68d3dc:	4c 8b 7d f0          	mov    -0x10(%rbp),%r15
  68d3e0:	c4 a1 79 10 7c d9 10 	vmovupd 0x10(%rcx,%r11,8),%xmm7
  68d3e7:	c4 81 79 10 2c df    	vmovupd (%r15,%r11,8),%xmm5
  68d3ed:	c4 21 41 5c 44 da 08 	vsubpd 0x8(%rdx,%r11,8),%xmm7,%xmm8
  68d3f4:	c4 a1 51 5c 74 da f8 	vsubpd -0x8(%rdx,%r11,8),%xmm5,%xmm6
  68d3fb:	c4 c1 69 59 c0       	vmulpd %xmm8,%xmm2,%xmm0
  68d400:	c5 e9 59 ee          	vmulpd %xmm6,%xmm2,%xmm5
  68d404:	4d 8d 3c 02          	lea    (%r10,%rax,1),%r15
  68d408:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  68d40d:	c4 01 31 16 14 37    	vmovhpd (%r15,%r14,1),%xmm9,%xmm10
  68d413:	4c 8b 7d e0          	mov    -0x20(%rbp),%r15
  68d417:	c5 a9 59 f3          	vmulpd %xmm3,%xmm10,%xmm6
  68d41b:	4c 03 fe             	add    %rsi,%r15
  68d41e:	c4 41 7b 10 1f       	vmovsd (%r15),%xmm11
  68d423:	c4 01 21 16 2c 2f    	vmovhpd (%r15,%r13,1),%xmm11,%xmm13
  68d429:	4c 8b 7d d8          	mov    -0x28(%rbp),%r15
  68d42d:	4c 03 fe             	add    %rsi,%r15
  68d430:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  68d435:	c4 01 19 16 34 2f    	vmovhpd (%r15,%r13,1),%xmm12,%xmm14
  68d43b:	4c 8b 7d e8          	mov    -0x18(%rbp),%r15
  68d43f:	c4 41 11 58 fe       	vaddpd %xmm14,%xmm13,%xmm15
  68d444:	c5 81 5c fd          	vsubpd %xmm5,%xmm15,%xmm7
  68d448:	c5 49 59 c7          	vmulpd %xmm7,%xmm6,%xmm8
  68d44c:	c4 01 79 11 04 dc    	vmovupd %xmm8,(%r12,%r11,8)
  68d452:	4c 03 f8             	add    %rax,%r15
  68d455:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  68d45a:	4a 8d 04 b0          	lea    (%rax,%r14,4),%rax
  68d45e:	c4 01 31 16 14 37    	vmovhpd (%r15,%r14,1),%xmm9,%xmm10
  68d464:	4d 8d 3c 30          	lea    (%r8,%rsi,1),%r15
  68d468:	c4 41 7b 10 1f       	vmovsd (%r15),%xmm11
  68d46d:	c4 01 21 16 2c 2f    	vmovhpd (%r15,%r13,1),%xmm11,%xmm13
  68d473:	4c 8d 3c 37          	lea    (%rdi,%rsi,1),%r15
  68d477:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  68d47c:	4a 8d 34 ae          	lea    (%rsi,%r13,4),%rsi
  68d480:	c4 01 19 16 34 2f    	vmovhpd (%r15,%r13,1),%xmm12,%xmm14
  68d486:	c4 41 11 58 fe       	vaddpd %xmm14,%xmm13,%xmm15
  68d48b:	c5 a9 59 eb          	vmulpd %xmm3,%xmm10,%xmm5
  68d48f:	c5 81 5c c0          	vsubpd %xmm0,%xmm15,%xmm0
  68d493:	c5 d1 59 c0          	vmulpd %xmm0,%xmm5,%xmm0
  68d497:	c4 81 79 11 44 d9 10 	vmovupd %xmm0,0x10(%r9,%r11,8)
  68d49e:	49 83 c3 04          	add    $0x4,%r11
  68d4a2:	4c 3b 9d 78 ff ff ff 	cmp    -0x88(%rbp),%r11
  68d4a9:	0f 82 2d ff ff ff    	jb     68d3dc <step3d_t_mod_mp_step3d_t_tile_+0x676c>
  68d4af:	48 8b b5 e8 fd ff ff 	mov    -0x218(%rbp),%rsi
  68d4b6:	48 8b bd f0 fd ff ff 	mov    -0x210(%rbp),%rdi
  68d4bd:	4c 8b 85 f8 fd ff ff 	mov    -0x208(%rbp),%r8
  68d4c4:	4c 8b ad 00 fe ff ff 	mov    -0x200(%rbp),%r13
  68d4cb:	4c 8b a5 70 fd ff ff 	mov    -0x290(%rbp),%r12
  68d4d2:	4c 8b 9d 20 ff ff ff 	mov    -0xe0(%rbp),%r11
  68d4d9:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
  68d4e0:	4c 8b 95 90 fe ff ff 	mov    -0x170(%rbp),%r10
  68d4e7:	4c 0f af d8          	imul   %rax,%r11
  68d4eb:	4c 0f af d0          	imul   %rax,%r10
  68d4ef:	49 3b c4             	cmp    %r12,%rax
  68d4f2:	0f 83 bb 00 00 00    	jae    68d5b3 <step3d_t_mod_mp_step3d_t_tile_+0x6943>
  68d4f8:	4c 8b 8d f0 fc ff ff 	mov    -0x310(%rbp),%r9
  68d4ff:	48 8b 8d 10 fd ff ff 	mov    -0x2f0(%rbp),%rcx
  68d506:	48 8b 95 a8 fc ff ff 	mov    -0x358(%rbp),%rdx
  68d50d:	48 8b 85 90 fc ff ff 	mov    -0x370(%rbp),%rax
  68d514:	4d 03 c8             	add    %r8,%r9
  68d517:	4c 8b bd 68 fc ff ff 	mov    -0x398(%rbp),%r15
  68d51e:	48 03 cf             	add    %rdi,%rcx
  68d521:	4c 8b b5 60 fc ff ff 	mov    -0x3a0(%rbp),%r14
  68d528:	48 03 d7             	add    %rdi,%rdx
  68d52b:	48 89 bd f0 fd ff ff 	mov    %rdi,-0x210(%rbp)
  68d532:	48 03 c6             	add    %rsi,%rax
  68d535:	4c 89 85 f8 fd ff ff 	mov    %r8,-0x208(%rbp)
  68d53c:	4c 03 fe             	add    %rsi,%r15
  68d53f:	4c 89 ad 00 fe ff ff 	mov    %r13,-0x200(%rbp)
  68d546:	4c 03 f6             	add    %rsi,%r14
  68d549:	48 8b bd f8 fe ff ff 	mov    -0x108(%rbp),%rdi
  68d550:	4c 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%r8
  68d557:	4c 8b ad 90 fe ff ff 	mov    -0x170(%rbp),%r13
  68d55e:	c4 c1 7b 10 2c fe    	vmovsd (%r14,%rdi,8),%xmm5
  68d564:	c4 c1 7b 10 04 0b    	vmovsd (%r11,%rcx,1),%xmm0
  68d56a:	c4 01 5b 59 0c 0a    	vmulsd (%r10,%r9,1),%xmm4,%xmm9
  68d570:	4d 03 d5             	add    %r13,%r10
  68d573:	c5 d3 5c 74 f8 f8    	vsubsd -0x8(%rax,%rdi,8),%xmm5,%xmm6
  68d579:	c4 c1 7b 58 3c 13    	vaddsd (%r11,%rdx,1),%xmm0,%xmm7
  68d57f:	c5 73 59 c6          	vmulsd %xmm6,%xmm1,%xmm8
  68d583:	4d 03 d8             	add    %r8,%r11
  68d586:	c4 41 43 5c d0       	vsubsd %xmm8,%xmm7,%xmm10
  68d58b:	c4 41 33 59 da       	vmulsd %xmm10,%xmm9,%xmm11
  68d590:	c4 41 7b 11 1c ff    	vmovsd %xmm11,(%r15,%rdi,8)
  68d596:	48 ff c7             	inc    %rdi
  68d599:	49 3b fc             	cmp    %r12,%rdi
  68d59c:	72 c0                	jb     68d55e <step3d_t_mod_mp_step3d_t_tile_+0x68ee>
  68d59e:	48 8b bd f0 fd ff ff 	mov    -0x210(%rbp),%rdi
  68d5a5:	4c 8b 85 f8 fd ff ff 	mov    -0x208(%rbp),%r8
  68d5ac:	4c 8b ad 00 fe ff ff 	mov    -0x200(%rbp),%r13
  68d5b3:	49 ff c5             	inc    %r13
  68d5b6:	4c 03 85 68 fe ff ff 	add    -0x198(%rbp),%r8
  68d5bd:	48 03 bd 30 ff ff ff 	add    -0xd0(%rbp),%rdi
  68d5c4:	48 03 b5 70 ff ff ff 	add    -0x90(%rbp),%rsi
  68d5cb:	4c 3b ad 38 fe ff ff 	cmp    -0x1c8(%rbp),%r13
  68d5d2:	0f 82 00 fd ff ff    	jb     68d2d8 <step3d_t_mod_mp_step3d_t_tile_+0x6668>
  68d5d8:	4c 8b ad c8 fa ff ff 	mov    -0x538(%rbp),%r13
  68d5df:	4c 8b 15 2a 0f 4b 00 	mov    0x4b0f2a(%rip),%r10        # b3e510 <mod_scalars_mp_ltracersrc_+0x30>
  68d5e6:	45 33 e4             	xor    %r12d,%r12d
  68d5e9:	4c 8b 1d 30 0f 4b 00 	mov    0x4b0f30(%rip),%r11        # b3e520 <mod_scalars_mp_ltracersrc_+0x40>
  68d5f0:	4d 85 d2             	test   %r10,%r10
  68d5f3:	0f 8e 91 00 00 00    	jle    68d68a <step3d_t_mod_mp_step3d_t_tile_+0x6a1a>
  68d5f9:	4c 89 d2             	mov    %r10,%rdx
  68d5fc:	b9 01 00 00 00       	mov    $0x1,%ecx
  68d601:	4c 8b 0d d8 0e 4b 00 	mov    0x4b0ed8(%rip),%r9        # b3e4e0 <mod_scalars_mp_ltracersrc_>
  68d608:	33 c0                	xor    %eax,%eax
  68d60a:	4c 8b 35 27 0f 4b 00 	mov    0x4b0f27(%rip),%r14        # b3e538 <mod_scalars_mp_ltracersrc_+0x58>
  68d611:	4c 8b 05 18 0f 4b 00 	mov    0x4b0f18(%rip),%r8        # b3e530 <mod_scalars_mp_ltracersrc_+0x50>
  68d618:	48 d1 ea             	shr    %rdx
  68d61b:	74 45                	je     68d662 <step3d_t_mod_mp_step3d_t_tile_+0x69f2>
  68d61d:	4d 89 ef             	mov    %r13,%r15
  68d620:	4c 89 c6             	mov    %r8,%rsi
  68d623:	4d 0f af f8          	imul   %r8,%r15
  68d627:	49 0f af f6          	imul   %r14,%rsi
  68d62b:	4c 89 ff             	mov    %r15,%rdi
  68d62e:	4a 8d 0c 9d 00 00 00 	lea    0x0(,%r11,4),%rcx
  68d635:	00 
  68d636:	48 f7 d9             	neg    %rcx
  68d639:	4f 8d 3c 9f          	lea    (%r15,%r11,4),%r15
  68d63d:	49 03 c9             	add    %r9,%rcx
  68d640:	48 2b fe             	sub    %rsi,%rdi
  68d643:	49 03 cf             	add    %r15,%rcx
  68d646:	49 03 f9             	add    %r9,%rdi
  68d649:	48 2b ce             	sub    %rsi,%rcx
  68d64c:	44 0b 24 c1          	or     (%rcx,%rax,8),%r12d
  68d650:	44 0b 64 c7 04       	or     0x4(%rdi,%rax,8),%r12d
  68d655:	48 ff c0             	inc    %rax
  68d658:	48 3b c2             	cmp    %rdx,%rax
  68d65b:	72 ef                	jb     68d64c <step3d_t_mod_mp_step3d_t_tile_+0x69dc>
  68d65d:	48 8d 4c 00 01       	lea    0x1(%rax,%rax,1),%rcx
  68d662:	48 8d 41 ff          	lea    -0x1(%rcx),%rax
  68d666:	49 3b c2             	cmp    %r10,%rax
  68d669:	73 1f                	jae    68d68a <step3d_t_mod_mp_step3d_t_tile_+0x6a1a>
  68d66b:	49 f7 de             	neg    %r14
  68d66e:	4c 89 da             	mov    %r11,%rdx
  68d671:	4d 03 f5             	add    %r13,%r14
  68d674:	49 8d 44 0b ff       	lea    -0x1(%r11,%rcx,1),%rax
  68d679:	4d 0f af f0          	imul   %r8,%r14
  68d67d:	48 f7 da             	neg    %rdx
  68d680:	4d 03 f1             	add    %r9,%r14
  68d683:	48 03 d0             	add    %rax,%rdx
  68d686:	45 0b 24 96          	or     (%r14,%rdx,4),%r12d
  68d68a:	48 8b 05 ef 3f 4b 00 	mov    0x4b3fef(%rip),%rax        # b41680 <mod_scalars_mp_luvsrc_+0x40>
  68d691:	48 c1 e0 02          	shl    $0x2,%rax
  68d695:	48 f7 d8             	neg    %rax
  68d698:	48 03 05 a1 3f 4b 00 	add    0x4b3fa1(%rip),%rax        # b41640 <mod_scalars_mp_luvsrc_>
  68d69f:	42 f6 04 a8 01       	testb  $0x1,(%rax,%r13,4)
  68d6a4:	0f 84 05 04 00 00    	je     68daaf <step3d_t_mod_mp_step3d_t_tile_+0x6e3f>
  68d6aa:	41 f7 c4 01 00 00 00 	test   $0x1,%r12d
  68d6b1:	0f 84 f8 03 00 00    	je     68daaf <step3d_t_mod_mp_step3d_t_tile_+0x6e3f>
  68d6b7:	48 8b 05 a2 61 4b 00 	mov    0x4b61a2(%rip),%rax        # b43860 <mod_sources_mp_nsrc_+0x40>
  68d6be:	48 c1 e0 02          	shl    $0x2,%rax
  68d6c2:	48 f7 d8             	neg    %rax
  68d6c5:	48 03 05 54 61 4b 00 	add    0x4b6154(%rip),%rax        # b43820 <mod_sources_mp_nsrc_>
  68d6cc:	48 c7 85 c8 f8 ff ff 	movq   $0x0,-0x738(%rbp)
  68d6d3:	00 00 00 00 
  68d6d7:	4a 63 14 a8          	movslq (%rax,%r13,4),%rdx
  68d6db:	48 89 95 88 fa ff ff 	mov    %rdx,-0x578(%rbp)
  68d6e2:	48 85 d2             	test   %rdx,%rdx
  68d6e5:	0f 8e c4 03 00 00    	jle    68daaf <step3d_t_mod_mp_step3d_t_tile_+0x6e3f>
  68d6eb:	48 8b 0d 0e 61 4b 00 	mov    0x4b610e(%rip),%rcx        # b43800 <mod_sources_mp_sources_+0x40>
  68d6f2:	49 f7 db             	neg    %r11
  68d6f5:	4c 8b 15 3c 0e 4b 00 	mov    0x4b0e3c(%rip),%r10        # b3e538 <mod_scalars_mp_ltracersrc_+0x58>
  68d6fc:	48 f7 d9             	neg    %rcx
  68d6ff:	48 8b b5 50 f6 ff ff 	mov    -0x9b0(%rbp),%rsi
  68d706:	49 f7 da             	neg    %r10
  68d709:	48 8b 85 60 f8 ff ff 	mov    -0x7a0(%rbp),%rax
  68d710:	48 2b f0             	sub    %rax,%rsi
  68d713:	4c 8b bd b0 f6 ff ff 	mov    -0x950(%rbp),%r15
  68d71a:	49 03 cd             	add    %r13,%rcx
  68d71d:	4c 2b f8             	sub    %rax,%r15
  68d720:	4d 03 d5             	add    %r13,%r10
  68d723:	48 8b 85 38 f9 ff ff 	mov    -0x6c8(%rbp),%rax
  68d72a:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68d731:	4c 8b ad 58 f9 ff ff 	mov    -0x6a8(%rbp),%r13
  68d738:	4c 0f af e8          	imul   %rax,%r13
  68d73c:	4c 0f af 15 ec 0d 4b 	imul   0x4b0dec(%rip),%r10        # b3e530 <mod_scalars_mp_ltracersrc_+0x50>
  68d743:	00 
  68d744:	4c 03 9d 60 fa ff ff 	add    -0x5a0(%rbp),%r11
  68d74b:	4c 89 9d c0 f8 ff ff 	mov    %r11,-0x740(%rbp)
  68d752:	4c 8b 9d 50 f8 ff ff 	mov    -0x7b0(%rbp),%r11
  68d759:	4c 03 ad 58 f8 ff ff 	add    -0x7a8(%rbp),%r13
  68d760:	4c 89 ad 88 f8 ff ff 	mov    %r13,-0x778(%rbp)
  68d767:	4d 8b 8b 98 00 00 00 	mov    0x98(%r11),%r9
  68d76e:	4c 8b ad 80 fa ff ff 	mov    -0x580(%rbp),%r13
  68d775:	4d 0f af e9          	imul   %r9,%r13
  68d779:	4c 8b b5 90 fb ff ff 	mov    -0x470(%rbp),%r14
  68d780:	49 2b f6             	sub    %r14,%rsi
  68d783:	49 8b 53 38          	mov    0x38(%r11),%rdx
  68d787:	4d 2b fe             	sub    %r14,%r15
  68d78a:	48 89 b5 78 f8 ff ff 	mov    %rsi,-0x788(%rbp)
  68d791:	4d 8b 83 80 00 00 00 	mov    0x80(%r11),%r8
  68d798:	49 8b 7b 68          	mov    0x68(%r11),%rdi
  68d79c:	49 8b 73 50          	mov    0x50(%r11),%rsi
  68d7a0:	4d 03 2b             	add    (%r11),%r13
  68d7a3:	4c 8b 9d 00 f9 ff ff 	mov    -0x700(%rbp),%r11
  68d7aa:	48 89 95 a8 f8 ff ff 	mov    %rdx,-0x758(%rbp)
  68d7b1:	4c 0f af da          	imul   %rdx,%r11
  68d7b5:	48 89 ca             	mov    %rcx,%rdx
  68d7b8:	48 c1 e2 05          	shl    $0x5,%rdx
  68d7bc:	48 03 d1             	add    %rcx,%rdx
  68d7bf:	48 c1 e2 05          	shl    $0x5,%rdx
  68d7c3:	48 8b 0d f6 5f 4b 00 	mov    0x4b5ff6(%rip),%rcx        # b437c0 <mod_sources_mp_sources_>
  68d7ca:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  68d7d1:	4c 03 15 08 0d 4b 00 	add    0x4b0d08(%rip),%r10        # b3e4e0 <mod_scalars_mp_ltracersrc_>
  68d7d8:	4c 89 95 90 f8 ff ff 	mov    %r10,-0x770(%rbp)
  68d7df:	4c 8b 74 11 38       	mov    0x38(%rcx,%rdx,1),%r14
  68d7e4:	4d 8d 14 04          	lea    (%r12,%rax,1),%r10
  68d7e8:	48 8b 44 11 40       	mov    0x40(%rcx,%rdx,1),%rax
  68d7ed:	49 0f af c6          	imul   %r14,%rax
  68d7f1:	4c 89 bd 80 f8 ff ff 	mov    %r15,-0x780(%rbp)
  68d7f8:	4c 8b 3c 11          	mov    (%rcx,%rdx,1),%r15
  68d7fc:	4c 89 b5 90 fa ff ff 	mov    %r14,-0x570(%rbp)
  68d803:	4c 2b f8             	sub    %rax,%r15
  68d806:	4c 8b b4 11 88 00 00 	mov    0x88(%rcx,%rdx,1),%r14
  68d80d:	00 
  68d80e:	48 8b 84 11 80 00 00 	mov    0x80(%rcx,%rdx,1),%rax
  68d815:	00 
  68d816:	4c 0f af f0          	imul   %rax,%r14
  68d81a:	4c 89 bd 98 f8 ff ff 	mov    %r15,-0x768(%rbp)
  68d821:	4c 8b 7c 11 48       	mov    0x48(%rcx,%rdx,1),%r15
  68d826:	48 89 85 98 fa ff ff 	mov    %rax,-0x568(%rbp)
  68d82d:	4d 2b fe             	sub    %r14,%r15
  68d830:	4c 8b b4 11 d0 00 00 	mov    0xd0(%rcx,%rdx,1),%r14
  68d837:	00 
  68d838:	48 8b 84 11 c8 00 00 	mov    0xc8(%rcx,%rdx,1),%rax
  68d83f:	00 
  68d840:	4c 0f af f0          	imul   %rax,%r14
  68d844:	4c 89 95 70 f8 ff ff 	mov    %r10,-0x790(%rbp)
  68d84b:	4c 0f af d7          	imul   %rdi,%r10
  68d84f:	4c 8b a5 f8 f8 ff ff 	mov    -0x708(%rbp),%r12
  68d856:	4c 0f af e6          	imul   %rsi,%r12
  68d85a:	4c 89 bd a0 f8 ff ff 	mov    %r15,-0x760(%rbp)
  68d861:	4c 8b bc 11 90 00 00 	mov    0x90(%rcx,%rdx,1),%r15
  68d868:	00 
  68d869:	48 89 85 a0 fa ff ff 	mov    %rax,-0x560(%rbp)
  68d870:	4d 2b fe             	sub    %r14,%r15
  68d873:	4f 8d 34 40          	lea    (%r8,%r8,2),%r14
  68d877:	4b 8d 04 01          	lea    (%r9,%r8,1),%rax
  68d87b:	4d 2b c6             	sub    %r14,%r8
  68d87e:	48 f7 d8             	neg    %rax
  68d881:	4d 03 f2             	add    %r10,%r14
  68d884:	4c 2b d7             	sub    %rdi,%r10
  68d887:	49 03 c5             	add    %r13,%rax
  68d88a:	4d 2b e9             	sub    %r9,%r13
  68d88d:	4d 2b c2             	sub    %r10,%r8
  68d890:	4d 2b e8             	sub    %r8,%r13
  68d893:	4e 8d 04 26          	lea    (%rsi,%r12,1),%r8
  68d897:	49 03 fc             	add    %r12,%rdi
  68d89a:	49 f7 d8             	neg    %r8
  68d89d:	4d 03 e3             	add    %r11,%r12
  68d8a0:	4d 03 c5             	add    %r13,%r8
  68d8a3:	4d 2b ec             	sub    %r12,%r13
  68d8a6:	4c 2b f7             	sub    %rdi,%r14
  68d8a9:	4c 8b a5 60 f9 ff ff 	mov    -0x6a0(%rbp),%r12
  68d8b0:	4d 2b c3             	sub    %r11,%r8
  68d8b3:	4c 0f af a5 38 f9 ff 	imul   -0x6c8(%rbp),%r12
  68d8ba:	ff 
  68d8bb:	48 8b bd a8 f8 ff ff 	mov    -0x758(%rbp),%rdi
  68d8c2:	49 03 c6             	add    %r14,%rax
  68d8c5:	48 f7 df             	neg    %rdi
  68d8c8:	49 2b c3             	sub    %r11,%rax
  68d8cb:	49 03 fd             	add    %r13,%rdi
  68d8ce:	48 89 bd b8 f8 ff ff 	mov    %rdi,-0x748(%rbp)
  68d8d5:	4c 89 85 b0 f8 ff ff 	mov    %r8,-0x750(%rbp)
  68d8dc:	4c 03 a5 68 f8 ff ff 	add    -0x798(%rbp),%r12
  68d8e3:	4c 8b 9d c0 f8 ff ff 	mov    -0x740(%rbp),%r11
  68d8ea:	4c 89 ff             	mov    %r15,%rdi
  68d8ed:	4c 8b 85 a0 f8 ff ff 	mov    -0x760(%rbp),%r8
  68d8f4:	4c 8b 8d 98 f8 ff ff 	mov    -0x768(%rbp),%r9
  68d8fb:	4c 8b 95 c8 f8 ff ff 	mov    -0x738(%rbp),%r10
  68d902:	49 ff c2             	inc    %r10
  68d905:	4c 8b bd a0 fa ff ff 	mov    -0x560(%rbp),%r15
  68d90c:	4d 0f af fa          	imul   %r10,%r15
  68d910:	4c 8b b5 90 fa ff ff 	mov    -0x570(%rbp),%r14
  68d917:	4c 8b ad 98 fa ff ff 	mov    -0x568(%rbp),%r13
  68d91e:	4d 0f af f2          	imul   %r10,%r14
  68d922:	4d 0f af ea          	imul   %r10,%r13
  68d926:	c4 21 7b 2c 3c 3f    	vcvttsd2si (%rdi,%r15,1),%r15d
  68d92c:	47 8b 34 31          	mov    (%r9,%r14,1),%r14d
  68d930:	47 8b 2c 28          	mov    (%r8,%r13,1),%r13d
  68d934:	45 85 ff             	test   %r15d,%r15d
  68d937:	0f 85 54 01 00 00    	jne    68da91 <step3d_t_mod_mp_step3d_t_tile_+0x6e21>
  68d93d:	44 3b b5 58 ff ff ff 	cmp    -0xa8(%rbp),%r14d
  68d944:	0f 8c 51 01 00 00    	jl     68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  68d94a:	44 3b b5 40 fe ff ff 	cmp    -0x1c0(%rbp),%r14d
  68d951:	0f 8f 44 01 00 00    	jg     68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  68d957:	44 3b ad 00 fb ff ff 	cmp    -0x500(%rbp),%r13d
  68d95e:	0f 8c 37 01 00 00    	jl     68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  68d964:	44 3b ad f8 fa ff ff 	cmp    -0x508(%rbp),%r13d
  68d96b:	0f 8f 2a 01 00 00    	jg     68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  68d971:	4c 8b bd 90 f8 ff ff 	mov    -0x770(%rbp),%r15
  68d978:	4d 63 f6             	movslq %r14d,%r14
  68d97b:	4d 63 ed             	movslq %r13d,%r13
  68d97e:	4c 89 b5 f0 f4 ff ff 	mov    %r14,-0xb10(%rbp)
  68d985:	4c 89 ad f8 f4 ff ff 	mov    %r13,-0xb08(%rbp)
  68d98c:	43 f6 44 9f 04 01    	testb  $0x1,0x4(%r15,%r11,4)
  68d992:	0f 84 a9 00 00 00    	je     68da41 <step3d_t_mod_mp_step3d_t_tile_+0x6dd1>
  68d998:	4d 89 ef             	mov    %r13,%r15
  68d99b:	48 89 85 e8 f4 ff ff 	mov    %rax,-0xb18(%rbp)
  68d9a2:	4c 89 f0             	mov    %r14,%rax
  68d9a5:	4c 8b b5 88 fe ff ff 	mov    -0x178(%rbp),%r14
  68d9ac:	4c 8b ad 70 fe ff ff 	mov    -0x190(%rbp),%r13
  68d9b3:	4c 0f af f0          	imul   %rax,%r14
  68d9b7:	4d 0f af ef          	imul   %r15,%r13
  68d9bb:	4c 0f af bd 70 ff ff 	imul   -0x90(%rbp),%r15
  68d9c2:	ff 
  68d9c3:	4d 03 f5             	add    %r13,%r14
  68d9c6:	49 8d 04 c7          	lea    (%r15,%rax,8),%rax
  68d9ca:	4c 8b ac 11 80 02 00 	mov    0x280(%rcx,%rdx,1),%r13
  68d9d1:	00 
  68d9d2:	49 f7 dd             	neg    %r13
  68d9d5:	4c 03 ad 70 f8 ff ff 	add    -0x790(%rbp),%r13
  68d9dc:	c4 81 7b 10 04 26    	vmovsd (%r14,%r12,1),%xmm0
  68d9e2:	4c 8b b5 80 fa ff ff 	mov    -0x580(%rbp),%r14
  68d9e9:	4c 2b b4 11 98 02 00 	sub    0x298(%rcx,%rdx,1),%r14
  68d9f0:	00 
  68d9f1:	4c 0f af ac 11 78 02 	imul   0x278(%rcx,%rdx,1),%r13
  68d9f8:	00 00 
  68d9fa:	4c 0f af b4 11 90 02 	imul   0x290(%rcx,%rdx,1),%r14
  68da01:	00 00 
  68da03:	4c 8b bc 11 68 02 00 	mov    0x268(%rcx,%rdx,1),%r15
  68da0a:	00 
  68da0b:	49 f7 df             	neg    %r15
  68da0e:	4d 03 fa             	add    %r10,%r15
  68da11:	4c 0f af bc 11 60 02 	imul   0x260(%rcx,%rdx,1),%r15
  68da18:	00 00 
  68da1a:	4c 03 ac 11 28 02 00 	add    0x228(%rcx,%rdx,1),%r13
  68da21:	00 
  68da22:	4d 03 f5             	add    %r13,%r14
  68da25:	4c 8b ad 80 f8 ff ff 	mov    -0x780(%rbp),%r13
  68da2c:	c4 81 7b 59 0c 3e    	vmulsd (%r14,%r15,1),%xmm0,%xmm1
  68da32:	c4 a1 7b 11 0c 28    	vmovsd %xmm1,(%rax,%r13,1)
  68da38:	48 8b 85 e8 f4 ff ff 	mov    -0xb18(%rbp),%rax
  68da3f:	eb 5a                	jmp    68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  68da41:	4d 89 f5             	mov    %r14,%r13
  68da44:	4c 8b b5 f8 f4 ff ff 	mov    -0xb08(%rbp),%r14
  68da4b:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  68da4f:	4c 0f af ad 20 f5 ff 	imul   -0xae0(%rbp),%r13
  68da56:	ff 
  68da57:	4c 0f af b5 18 f5 ff 	imul   -0xae8(%rbp),%r14
  68da5e:	ff 
  68da5f:	4d 03 ee             	add    %r14,%r13
  68da62:	4c 8b bd 00 f5 ff ff 	mov    -0xb00(%rbp),%r15
  68da69:	c4 81 7b 10 4c 3d 00 	vmovsd 0x0(%r13,%r15,1),%xmm1
  68da70:	c5 f9 2e c8          	vucomisd %xmm0,%xmm1
  68da74:	7a 06                	jp     68da7c <step3d_t_mod_mp_step3d_t_tile_+0x6e0c>
  68da76:	0f 84 8b 34 00 00    	je     690f07 <step3d_t_mod_mp_step3d_t_tile_+0xa297>
  68da7c:	c5 fb 10 05 7c 97 23 	vmovsd 0x23977c(%rip),%xmm0        # 8c7200 <__STRLITPACK_199.115+0x70>
  68da83:	00 
  68da84:	c5 f9 2e c8          	vucomisd %xmm0,%xmm1
  68da88:	75 11                	jne    68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  68da8a:	7a 0f                	jp     68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  68da8c:	e9 e0 33 00 00       	jmpq   690e71 <step3d_t_mod_mp_step3d_t_tile_+0xa201>
  68da91:	41 83 ff 01          	cmp    $0x1,%r15d
  68da95:	0f 84 60 35 00 00    	je     690ffb <step3d_t_mod_mp_step3d_t_tile_+0xa38b>
  68da9b:	4c 3b 95 88 fa ff ff 	cmp    -0x578(%rbp),%r10
  68daa2:	0f 82 5a fe ff ff    	jb     68d902 <step3d_t_mod_mp_step3d_t_tile_+0x6c92>
  68daa8:	4c 8b ad c8 fa ff ff 	mov    -0x538(%rbp),%r13
  68daaf:	48 8b 05 8a 06 4b 00 	mov    0x4b068a(%rip),%rax        # b3e140 <mod_scalars_mp_refinedgrid_+0x40>
  68dab6:	48 c1 e0 02          	shl    $0x2,%rax
  68daba:	48 f7 d8             	neg    %rax
  68dabd:	48 03 05 3c 06 4b 00 	add    0x4b063c(%rip),%rax        # b3e100 <mod_scalars_mp_refinedgrid_>
  68dac4:	42 f6 04 a8 01       	testb  $0x1,(%rax,%r13,4)
  68dac9:	0f 84 4c 03 00 00    	je     68de1b <step3d_t_mod_mp_step3d_t_tile_+0x71ab>
  68dacf:	ba 01 00 00 00       	mov    $0x1,%edx
  68dad4:	b8 01 00 00 00       	mov    $0x1,%eax
  68dad9:	4c 63 2d 30 24 56 00 	movslq 0x562430(%rip),%r13        # beff10 <mod_nesting_mp_ncontact_>
  68dae0:	48 89 d7             	mov    %rdx,%rdi
  68dae3:	4d 85 ed             	test   %r13,%r13
  68dae6:	0f 8e 00 35 00 00    	jle    690fec <step3d_t_mod_mp_step3d_t_tile_+0xa37c>
  68daec:	48 8b 8d 08 f9 ff ff 	mov    -0x6f8(%rbp),%rcx
  68daf3:	48 8b b5 38 f9 ff ff 	mov    -0x6c8(%rbp),%rsi
  68dafa:	4c 8b b5 60 fa ff ff 	mov    -0x5a0(%rbp),%r14
  68db01:	4c 8b bd f0 f8 ff ff 	mov    -0x710(%rbp),%r15
  68db08:	4c 8d 24 31          	lea    (%rcx,%rsi,1),%r12
  68db0c:	48 8b 0d ad 27 4b 00 	mov    0x4b27ad(%rip),%rcx        # b402c0 <mod_nesting_mp_rcontact_+0x40>
  68db13:	48 f7 d9             	neg    %rcx
  68db16:	48 03 ca             	add    %rdx,%rcx
  68db19:	4c 69 c1 d0 02 00 00 	imul   $0x2d0,%rcx,%r8
  68db20:	48 8b 3d 59 27 4b 00 	mov    0x4b2759(%rip),%rdi        # b40280 <mod_nesting_mp_rcontact_>
  68db27:	4d 8b 0f             	mov    (%r15),%r9
  68db2a:	42 8b 74 07 08       	mov    0x8(%rdi,%r8,1),%esi
  68db2f:	46 8b 5c 07 0c       	mov    0xc(%rdi,%r8,1),%r11d
  68db34:	45 8b 11             	mov    (%r9),%r10d
  68db37:	89 b5 84 fb ff ff    	mov    %esi,-0x47c(%rbp)
  68db3d:	44 89 9d 40 ff ff ff 	mov    %r11d,-0xc0(%rbp)
  68db44:	45 3b d3             	cmp    %r11d,%r10d
  68db47:	0f 85 ba 02 00 00    	jne    68de07 <step3d_t_mod_mp_step3d_t_tile_+0x7197>
  68db4d:	4d 63 d2             	movslq %r10d,%r10
  68db50:	48 8d 8d a0 f7 ff ff 	lea    -0x860(%rbp),%rcx
  68db57:	51                   	push   %rcx
  68db58:	48 8b 0d 21 d8 4a 00 	mov    0x4ad821(%rip),%rcx        # b3b380 <mod_scalars_mp_dt_+0x40>
  68db5f:	48 8d b5 58 f7 ff ff 	lea    -0x8a8(%rbp),%rsi
  68db66:	48 f7 d9             	neg    %rcx
  68db69:	48 8d bd 10 f7 ff ff 	lea    -0x8f0(%rbp),%rdi
  68db70:	49 03 ca             	add    %r10,%rcx
  68db73:	4c 8d 85 30 f5 ff ff 	lea    -0xad0(%rbp),%r8
  68db7a:	89 85 80 fb ff ff    	mov    %eax,-0x480(%rbp)
  68db80:	b8 01 00 00 00       	mov    $0x1,%eax
  68db85:	49 89 40 20          	mov    %rax,0x20(%r8)
  68db89:	4c 8d 8d 50 f6 ff ff 	lea    -0x9b0(%rbp),%r9
  68db90:	49 89 40 40          	mov    %rax,0x40(%r8)
  68db94:	45 33 db             	xor    %r11d,%r11d
  68db97:	49 89 40 18          	mov    %rax,0x18(%r8)
  68db9b:	48 89 46 d8          	mov    %rax,-0x28(%rsi)
  68db9f:	48 89 46 f8          	mov    %rax,-0x8(%rsi)
  68dba3:	48 89 46 d0          	mov    %rax,-0x30(%rsi)
  68dba7:	48 89 46 20          	mov    %rax,0x20(%rsi)
  68dbab:	48 89 46 40          	mov    %rax,0x40(%rsi)
  68dbaf:	48 89 46 18          	mov    %rax,0x18(%rsi)
  68dbb3:	48 89 46 68          	mov    %rax,0x68(%rsi)
  68dbb7:	48 89 85 e0 f7 ff ff 	mov    %rax,-0x820(%rbp)
  68dbbe:	48 89 46 60          	mov    %rax,0x60(%rsi)
  68dbc2:	48 8b 05 77 d7 4a 00 	mov    0x4ad777(%rip),%rax        # b3b340 <mod_scalars_mp_dt_>
  68dbc9:	56                   	push   %rsi
  68dbca:	57                   	push   %rdi
  68dbcb:	48 2b 15 46 62 4b 00 	sub    0x4b6246(%rip),%rdx        # b43e18 <mod_nesting_mp_bry_contact_+0x58>
  68dbd2:	4c 8d 14 c8          	lea    (%rax,%rcx,8),%r10
  68dbd6:	48 69 05 1f 62 4b 00 	imul   $0xfffffffffffffe50,0x4b621f(%rip),%rax        # b43e00 <mod_nesting_mp_bry_contact_+0x40>
  68dbdd:	50 fe ff ff 
  68dbe1:	48 0f af 15 27 62 4b 	imul   0x4b6227(%rip),%rdx        # b43e10 <mod_nesting_mp_bry_contact_+0x50>
  68dbe8:	00 
  68dbe9:	41 50                	push   %r8
  68dbeb:	4d 89 58 10          	mov    %r11,0x10(%r8)
  68dbef:	be 08 00 00 00       	mov    $0x8,%esi
  68dbf4:	4c 89 5f 10          	mov    %r11,0x10(%rdi)
  68dbf8:	4c 89 5f 58          	mov    %r11,0x58(%rdi)
  68dbfc:	4c 89 9d b0 f7 ff ff 	mov    %r11,-0x850(%rbp)
  68dc03:	4c 8d 9d b0 f6 ff ff 	lea    -0x950(%rbp),%r11
  68dc0a:	41 51                	push   %r9
  68dc0c:	41 53                	push   %r11
  68dc0e:	41 52                	push   %r10
  68dc10:	ff b5 58 fb ff ff    	pushq  -0x4a8(%rbp)
  68dc16:	ff b5 60 fb ff ff    	pushq  -0x4a0(%rbp)
  68dc1c:	ff b5 68 fb ff ff    	pushq  -0x498(%rbp)
  68dc22:	ff b5 70 fb ff ff    	pushq  -0x490(%rbp)
  68dc28:	ff b5 50 fb ff ff    	pushq  -0x4b0(%rbp)
  68dc2e:	ff b5 48 fb ff ff    	pushq  -0x4b8(%rbp)
  68dc34:	ff b5 40 fb ff ff    	pushq  -0x4c0(%rbp)
  68dc3a:	49 89 70 08          	mov    %rsi,0x8(%r8)
  68dc3e:	48 03 05 7b 61 4b 00 	add    0x4b617b(%rip),%rax        # b43dc0 <mod_nesting_mp_bry_contact_>
  68dc45:	48 89 77 08          	mov    %rsi,0x8(%rdi)
  68dc49:	48 89 77 50          	mov    %rsi,0x50(%rdi)
  68dc4d:	48 8b 8c 10 18 03 00 	mov    0x318(%rax,%rdx,1),%rcx
  68dc54:	00 
  68dc55:	49 89 48 30          	mov    %rcx,0x30(%r8)
  68dc59:	48 89 b5 a8 f7 ff ff 	mov    %rsi,-0x858(%rbp)
  68dc60:	48 8b b4 10 a0 06 00 	mov    0x6a0(%rax,%rdx,1),%rsi
  68dc67:	00 
  68dc68:	48 8b 8c 10 b8 06 00 	mov    0x6b8(%rax,%rdx,1),%rcx
  68dc6f:	00 
  68dc70:	48 f7 de             	neg    %rsi
  68dc73:	48 f7 d9             	neg    %rcx
  68dc76:	49 03 f4             	add    %r12,%rsi
  68dc79:	4c 8b 8c 10 40 03 00 	mov    0x340(%rax,%rdx,1),%r9
  68dc80:	00 
  68dc81:	49 03 ce             	add    %r14,%rcx
  68dc84:	4c 8b 84 10 58 03 00 	mov    0x358(%rax,%rdx,1),%r8
  68dc8b:	00 
  68dc8c:	49 f7 d9             	neg    %r9
  68dc8f:	49 f7 d8             	neg    %r8
  68dc92:	4d 03 cc             	add    %r12,%r9
  68dc95:	48 0f af b4 10 98 06 	imul   0x698(%rax,%rdx,1),%rsi
  68dc9c:	00 00 
  68dc9e:	4c 0f af 8c 10 38 03 	imul   0x338(%rax,%rdx,1),%r9
  68dca5:	00 00 
  68dca7:	4d 03 c6             	add    %r14,%r8
  68dcaa:	48 ff c1             	inc    %rcx
  68dcad:	48 0f af 8c 10 b0 06 	imul   0x6b0(%rax,%rdx,1),%rcx
  68dcb4:	00 00 
  68dcb6:	49 ff c0             	inc    %r8
  68dcb9:	4c 0f af 84 10 50 03 	imul   0x350(%rax,%rdx,1),%r8
  68dcc0:	00 00 
  68dcc2:	48 8b bc 10 20 03 00 	mov    0x320(%rax,%rdx,1),%rdi
  68dcc9:	00 
  68dcca:	48 89 bd 68 f5 ff ff 	mov    %rdi,-0xa98(%rbp)
  68dcd1:	48 03 b4 10 48 06 00 	add    0x648(%rax,%rdx,1),%rsi
  68dcd8:	00 
  68dcd9:	48 8b bc 10 c8 04 00 	mov    0x4c8(%rax,%rdx,1),%rdi
  68dce0:	00 
  68dce1:	48 03 f1             	add    %rcx,%rsi
  68dce4:	4c 03 8c 10 e8 02 00 	add    0x2e8(%rax,%rdx,1),%r9
  68dceb:	00 
  68dcec:	4c 8b 94 10 78 06 00 	mov    0x678(%rax,%rdx,1),%r10
  68dcf3:	00 
  68dcf4:	4d 03 c8             	add    %r8,%r9
  68dcf7:	49 89 73 60          	mov    %rsi,0x60(%r11)
  68dcfb:	48 89 bd 88 f7 ff ff 	mov    %rdi,-0x878(%rbp)
  68dd02:	48 8b bc 10 50 08 00 	mov    0x850(%rax,%rdx,1),%rdi
  68dd09:	00 
  68dd0a:	48 8b b4 10 68 08 00 	mov    0x868(%rax,%rdx,1),%rsi
  68dd11:	00 
  68dd12:	48 f7 df             	neg    %rdi
  68dd15:	48 f7 de             	neg    %rsi
  68dd18:	49 03 fc             	add    %r12,%rdi
  68dd1b:	4c 89 8d 30 f5 ff ff 	mov    %r9,-0xad0(%rbp)
  68dd22:	49 03 f6             	add    %r14,%rsi
  68dd25:	4c 89 95 40 f7 ff ff 	mov    %r10,-0x8c0(%rbp)
  68dd2c:	48 ff c6             	inc    %rsi
  68dd2f:	4c 8b 94 10 f0 04 00 	mov    0x4f0(%rax,%rdx,1),%r10
  68dd36:	00 
  68dd37:	4c 8b 8c 10 08 05 00 	mov    0x508(%rax,%rdx,1),%r9
  68dd3e:	00 
  68dd3f:	49 f7 da             	neg    %r10
  68dd42:	49 f7 d9             	neg    %r9
  68dd45:	4d 03 d4             	add    %r12,%r10
  68dd48:	48 0f af bc 10 48 08 	imul   0x848(%rax,%rdx,1),%rdi
  68dd4f:	00 00 
  68dd51:	48 0f af b4 10 60 08 	imul   0x860(%rax,%rdx,1),%rsi
  68dd58:	00 00 
  68dd5a:	4c 0f af 94 10 e8 04 	imul   0x4e8(%rax,%rdx,1),%r10
  68dd61:	00 00 
  68dd63:	4d 03 ce             	add    %r14,%r9
  68dd66:	49 ff c1             	inc    %r9
  68dd69:	4c 0f af 8c 10 00 05 	imul   0x500(%rax,%rdx,1),%r9
  68dd70:	00 00 
  68dd72:	4c 8b 9c 10 80 06 00 	mov    0x680(%rax,%rdx,1),%r11
  68dd79:	00 
  68dd7a:	48 03 bc 10 f8 07 00 	add    0x7f8(%rax,%rdx,1),%rdi
  68dd81:	00 
  68dd82:	48 8b 8c 10 30 08 00 	mov    0x830(%rax,%rdx,1),%rcx
  68dd89:	00 
  68dd8a:	48 03 fe             	add    %rsi,%rdi
  68dd8d:	4c 8b 84 10 d0 04 00 	mov    0x4d0(%rax,%rdx,1),%r8
  68dd94:	00 
  68dd95:	48 8d b5 40 ff ff ff 	lea    -0xc0(%rbp),%rsi
  68dd9c:	4c 03 94 10 98 04 00 	add    0x498(%rax,%rdx,1),%r10
  68dda3:	00 
  68dda4:	4c 89 9d 48 f7 ff ff 	mov    %r11,-0x8b8(%rbp)
  68ddab:	4d 03 d1             	add    %r9,%r10
  68ddae:	4c 8b 9c 10 28 08 00 	mov    0x828(%rax,%rdx,1),%r11
  68ddb5:	00 
  68ddb6:	48 8d 95 80 fb ff ff 	lea    -0x480(%rbp),%rdx
  68ddbd:	48 89 8d d8 f7 ff ff 	mov    %rcx,-0x828(%rbp)
  68ddc4:	b9 e8 b6 b3 00       	mov    $0xb3b6e8,%ecx
  68ddc9:	48 89 bd a0 f7 ff ff 	mov    %rdi,-0x860(%rbp)
  68ddd0:	48 8d bd 84 fb ff ff 	lea    -0x47c(%rbp),%rdi
  68ddd7:	4c 89 85 90 f7 ff ff 	mov    %r8,-0x870(%rbp)
  68ddde:	4c 8b 42 f8          	mov    -0x8(%rdx),%r8
  68dde2:	4c 8b 4a b8          	mov    -0x48(%rdx),%r9
  68dde6:	4c 89 95 58 f7 ff ff 	mov    %r10,-0x8a8(%rbp)
  68dded:	4c 89 9d d0 f7 ff ff 	mov    %r11,-0x830(%rbp)
  68ddf4:	c5 f8 77             	vzeroupper 
  68ddf7:	e8 b4 f4 fc ff       	callq  65d2b0 <nesting_mod_mp_bry_fluxes_>
  68ddfc:	48 83 c4 70          	add    $0x70,%rsp
  68de00:	48 63 95 80 fb ff ff 	movslq -0x480(%rbp),%rdx
  68de07:	48 ff c2             	inc    %rdx
  68de0a:	89 d0                	mov    %edx,%eax
  68de0c:	49 3b d5             	cmp    %r13,%rdx
  68de0f:	0f 8e f7 fc ff ff    	jle    68db0c <step3d_t_mod_mp_step3d_t_tile_+0x6e9c>
  68de15:	89 85 80 fb ff ff    	mov    %eax,-0x480(%rbp)
  68de1b:	8b 85 f8 fa ff ff    	mov    -0x508(%rbp),%eax
  68de21:	3b 85 00 fb ff ff    	cmp    -0x500(%rbp),%eax
  68de27:	0f 8c 83 31 00 00    	jl     690fb0 <step3d_t_mod_mp_step3d_t_tile_+0xa340>
  68de2d:	48 8b 85 f0 f8 ff ff 	mov    -0x710(%rbp),%rax
  68de34:	4c 8b a5 50 f8 ff ff 	mov    -0x7b0(%rbp),%r12
  68de3b:	48 8b 3d fe d4 4a 00 	mov    0x4ad4fe(%rip),%rdi        # b3b340 <mod_scalars_mp_dt_>
  68de42:	48 8b 10             	mov    (%rax),%rdx
  68de45:	49 8d 44 24 50       	lea    0x50(%r12),%rax
  68de4a:	4c 8b 18             	mov    (%rax),%r11
  68de4d:	4c 8b 68 e8          	mov    -0x18(%rax),%r13
  68de51:	48 89 bd 68 fd ff ff 	mov    %rdi,-0x298(%rbp)
  68de58:	48 89 95 08 fb ff ff 	mov    %rdx,-0x4f8(%rbp)
  68de5f:	4c 63 12             	movslq (%rdx),%r10
  68de62:	4c 8b 05 17 d5 4a 00 	mov    0x4ad517(%rip),%r8        # b3b380 <mod_scalars_mp_dt_+0x40>
  68de69:	4c 8b 8d 50 f6 ff ff 	mov    -0x9b0(%rbp),%r9
  68de70:	48 8b bd b0 f6 ff ff 	mov    -0x950(%rbp),%rdi
  68de77:	48 8b 50 b0          	mov    -0x50(%rax),%rdx
  68de7b:	48 8b 48 48          	mov    0x48(%rax),%rcx
  68de7f:	48 8b 70 30          	mov    0x30(%rax),%rsi
  68de83:	48 8b 40 18          	mov    0x18(%rax),%rax
  68de87:	4c 89 9d 00 ff ff ff 	mov    %r11,-0x100(%rbp)
  68de8e:	4c 89 6d f8          	mov    %r13,-0x8(%rbp)
  68de92:	48 83 7d 88 08       	cmpq   $0x8,-0x78(%rbp)
  68de97:	0f 85 cf 02 00 00    	jne    68e16c <step3d_t_mod_mp_step3d_t_tile_+0x74fc>
  68de9d:	48 83 7d 90 08       	cmpq   $0x8,-0x70(%rbp)
  68dea2:	0f 85 c4 02 00 00    	jne    68e16c <step3d_t_mod_mp_step3d_t_tile_+0x74fc>
  68dea8:	48 83 7d f8 08       	cmpq   $0x8,-0x8(%rbp)
  68dead:	0f 85 b9 02 00 00    	jne    68e16c <step3d_t_mod_mp_step3d_t_tile_+0x74fc>
  68deb3:	4c 8b b5 b0 fa ff ff 	mov    -0x550(%rbp),%r14
  68deba:	49 f7 d8             	neg    %r8
  68debd:	4c 8b ad 60 fa ff ff 	mov    -0x5a0(%rbp),%r13
  68dec4:	4d 03 c2             	add    %r10,%r8
  68dec7:	4c 0f af e9          	imul   %rcx,%r13
  68decb:	4c 03 ea             	add    %rdx,%r13
  68dece:	4e 8d 3c 37          	lea    (%rdi,%r14,1),%r15
  68ded2:	4c 89 bd d0 fc ff ff 	mov    %r15,-0x330(%rbp)
  68ded9:	45 33 e4             	xor    %r12d,%r12d
  68dedc:	4c 8b bd 30 f9 ff ff 	mov    -0x6d0(%rbp),%r15
  68dee3:	4c 0f af fe          	imul   %rsi,%r15
  68dee7:	4c 8b 95 c8 f9 ff ff 	mov    -0x638(%rbp),%r10
  68deee:	4c 2b fe             	sub    %rsi,%r15
  68def1:	4c 8b b5 b0 f9 ff ff 	mov    -0x650(%rbp),%r14
  68def8:	4c 03 ad d8 f9 ff ff 	add    -0x628(%rbp),%r13
  68deff:	4c 89 b5 00 fa ff ff 	mov    %r14,-0x600(%rbp)
  68df06:	4d 03 ef             	add    %r15,%r13
  68df09:	4c 8b bd 38 f9 ff ff 	mov    -0x6c8(%rbp),%r15
  68df10:	4f 8d 1c 11          	lea    (%r9,%r10,1),%r11
  68df14:	4c 8b b5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r14
  68df1b:	4c 8b 95 c0 fa ff ff 	mov    -0x540(%rbp),%r10
  68df22:	4c 89 9d e0 fc ff ff 	mov    %r11,-0x320(%rbp)
  68df29:	4d 03 ca             	add    %r10,%r9
  68df2c:	4d 03 f7             	add    %r15,%r14
  68df2f:	4c 0f af f0          	imul   %rax,%r14
  68df33:	4c 2b f0             	sub    %rax,%r14
  68df36:	4e 8d 1c 17          	lea    (%rdi,%r10,1),%r11
  68df3a:	4c 8b 95 f8 f8 ff ff 	mov    -0x708(%rbp),%r10
  68df41:	4d 03 ee             	add    %r14,%r13
  68df44:	49 f7 da             	neg    %r10
  68df47:	4c 03 95 78 f9 ff ff 	add    -0x688(%rbp),%r10
  68df4e:	4c 0f af 95 00 ff ff 	imul   -0x100(%rbp),%r10
  68df55:	ff 
  68df56:	4c 89 9d d8 fc ff ff 	mov    %r11,-0x328(%rbp)
  68df5d:	4d 03 d5             	add    %r13,%r10
  68df60:	48 89 95 b0 fe ff ff 	mov    %rdx,-0x150(%rbp)
  68df67:	48 89 8d b8 fe ff ff 	mov    %rcx,-0x148(%rbp)
  68df6e:	48 89 b5 70 fa ff ff 	mov    %rsi,-0x590(%rbp)
  68df75:	4c 8b 9d b8 f9 ff ff 	mov    -0x648(%rbp),%r11
  68df7c:	48 8b 95 00 fa ff ff 	mov    -0x600(%rbp),%rdx
  68df83:	4c 89 e1             	mov    %r12,%rcx
  68df86:	48 8b b5 70 fd ff ff 	mov    -0x290(%rbp),%rsi
  68df8d:	4c 89 85 60 fd ff ff 	mov    %r8,-0x2a0(%rbp)
  68df94:	4c 89 8d c8 fc ff ff 	mov    %r9,-0x338(%rbp)
  68df9b:	48 89 bd 40 fd ff ff 	mov    %rdi,-0x2c0(%rbp)
  68dfa2:	48 89 85 68 fa ff ff 	mov    %rax,-0x598(%rbp)
  68dfa9:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
  68dfaf:	3b 85 58 ff ff ff    	cmp    -0xa8(%rbp),%eax
  68dfb5:	0f 8c 42 01 00 00    	jl     68e0fd <step3d_t_mod_mp_step3d_t_tile_+0x748d>
  68dfbb:	48 8b 85 68 fd ff ff 	mov    -0x298(%rbp),%rax
  68dfc2:	48 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%rdi
  68dfc9:	c5 fb 10 04 f8       	vmovsd (%rax,%rdi,8),%xmm0
  68dfce:	48 83 fe 04          	cmp    $0x4,%rsi
  68dfd2:	0f 8c c9 2f 00 00    	jl     690fa1 <step3d_t_mod_mp_step3d_t_tile_+0xa331>
  68dfd8:	4c 8b 8d e0 fc ff ff 	mov    -0x320(%rbp),%r9
  68dfdf:	45 33 ed             	xor    %r13d,%r13d
  68dfe2:	4c 8b 85 d0 fc ff ff 	mov    -0x330(%rbp),%r8
  68dfe9:	48 8b bd c8 fc ff ff 	mov    -0x338(%rbp),%rdi
  68dff0:	4c 8b b5 d8 fc ff ff 	mov    -0x328(%rbp),%r14
  68dff7:	4c 03 c9             	add    %rcx,%r9
  68dffa:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  68e001:	4c 03 c1             	add    %rcx,%r8
  68e004:	c4 e2 7d 19 c8       	vbroadcastsd %xmm0,%ymm1
  68e009:	48 03 f9             	add    %rcx,%rdi
  68e00c:	48 89 c6             	mov    %rax,%rsi
  68e00f:	4d 8d 3c 0e          	lea    (%r14,%rcx,1),%r15
  68e013:	4d 89 d6             	mov    %r10,%r14
  68e016:	0f 1f 00             	nopl   (%rax)
  68e019:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  68e020:	c4 a1 75 59 14 ea    	vmulpd (%rdx,%r13,8),%ymm1,%ymm2
  68e026:	c4 81 7d 10 5c e8 08 	vmovupd 0x8(%r8,%r13,8),%ymm3
  68e02d:	c4 81 7d 10 6c e9 08 	vmovupd 0x8(%r9,%r13,8),%ymm5
  68e034:	c4 41 7d 10 16       	vmovupd (%r14),%ymm10
  68e039:	c4 81 6d 59 34 eb    	vmulpd (%r11,%r13,8),%ymm2,%ymm6
  68e03f:	c4 81 65 5c 24 ef    	vsubpd (%r15,%r13,8),%ymm3,%ymm4
  68e045:	c4 a1 55 5c 3c ef    	vsubpd (%rdi,%r13,8),%ymm5,%ymm7
  68e04b:	c5 4d 59 c4          	vmulpd %ymm4,%ymm6,%ymm8
  68e04f:	c5 4d 59 cf          	vmulpd %ymm7,%ymm6,%ymm9
  68e053:	c4 41 3d 58 d9       	vaddpd %ymm9,%ymm8,%ymm11
  68e058:	49 83 c5 04          	add    $0x4,%r13
  68e05c:	c4 41 2d 5c e3       	vsubpd %ymm11,%ymm10,%ymm12
  68e061:	c4 41 7d 11 26       	vmovupd %ymm12,(%r14)
  68e066:	49 83 c6 20          	add    $0x20,%r14
  68e06a:	4c 3b ee             	cmp    %rsi,%r13
  68e06d:	72 b1                	jb     68e020 <step3d_t_mod_mp_step3d_t_tile_+0x73b0>
  68e06f:	48 8b b5 70 fd ff ff 	mov    -0x290(%rbp),%rsi
  68e076:	48 3b c6             	cmp    %rsi,%rax
  68e079:	0f 83 7e 00 00 00    	jae    68e0fd <step3d_t_mod_mp_step3d_t_tile_+0x748d>
  68e07f:	4c 8b 85 e0 fc ff ff 	mov    -0x320(%rbp),%r8
  68e086:	48 8b bd d0 fc ff ff 	mov    -0x330(%rbp),%rdi
  68e08d:	4c 8b b5 c8 fc ff ff 	mov    -0x338(%rbp),%r14
  68e094:	4c 8b 8d d8 fc ff ff 	mov    -0x328(%rbp),%r9
  68e09b:	4c 03 c1             	add    %rcx,%r8
  68e09e:	48 03 f9             	add    %rcx,%rdi
  68e0a1:	4c 03 f1             	add    %rcx,%r14
  68e0a4:	4d 8d 2c 09          	lea    (%r9,%rcx,1),%r13
  68e0a8:	4d 8d 0c c2          	lea    (%r10,%rax,8),%r9
  68e0ac:	0f 1f 40 00          	nopl   0x0(%rax)
  68e0b0:	c5 fb 59 0c c2       	vmulsd (%rdx,%rax,8),%xmm0,%xmm1
  68e0b5:	c5 fb 10 54 c7 08    	vmovsd 0x8(%rdi,%rax,8),%xmm2
  68e0bb:	c4 c1 7b 10 64 c0 08 	vmovsd 0x8(%r8,%rax,8),%xmm4
  68e0c2:	c4 c1 73 59 2c c3    	vmulsd (%r11,%rax,8),%xmm1,%xmm5
  68e0c8:	c4 c1 6b 5c 5c c5 00 	vsubsd 0x0(%r13,%rax,8),%xmm2,%xmm3
  68e0cf:	c4 c1 5b 5c 34 c6    	vsubsd (%r14,%rax,8),%xmm4,%xmm6
  68e0d5:	c5 d3 59 fb          	vmulsd %xmm3,%xmm5,%xmm7
  68e0d9:	c5 53 59 c6          	vmulsd %xmm6,%xmm5,%xmm8
  68e0dd:	c4 41 7b 10 09       	vmovsd (%r9),%xmm9
  68e0e2:	48 ff c0             	inc    %rax
  68e0e5:	c4 41 43 58 d0       	vaddsd %xmm8,%xmm7,%xmm10
  68e0ea:	c4 41 33 5c da       	vsubsd %xmm10,%xmm9,%xmm11
  68e0ef:	c4 41 7b 11 19       	vmovsd %xmm11,(%r9)
  68e0f4:	49 83 c1 08          	add    $0x8,%r9
  68e0f8:	48 3b c6             	cmp    %rsi,%rax
  68e0fb:	72 b3                	jb     68e0b0 <step3d_t_mod_mp_step3d_t_tile_+0x7440>
  68e0fd:	49 ff c4             	inc    %r12
  68e100:	48 03 8d 70 ff ff ff 	add    -0x90(%rbp),%rcx
  68e107:	48 03 95 58 fe ff ff 	add    -0x1a8(%rbp),%rdx
  68e10e:	4c 03 9d 60 fe ff ff 	add    -0x1a0(%rbp),%r11
  68e115:	4c 03 95 00 ff ff ff 	add    -0x100(%rbp),%r10
  68e11c:	4c 3b a5 68 ff ff ff 	cmp    -0x98(%rbp),%r12
  68e123:	0f 82 80 fe ff ff    	jb     68dfa9 <step3d_t_mod_mp_step3d_t_tile_+0x7339>
  68e129:	4c 8b 85 80 fa ff ff 	mov    -0x580(%rbp),%r8
  68e130:	48 8b bd 40 fd ff ff 	mov    -0x2c0(%rbp),%rdi
  68e137:	48 8b 95 b0 fe ff ff 	mov    -0x150(%rbp),%rdx
  68e13e:	48 8b 8d b8 fe ff ff 	mov    -0x148(%rbp),%rcx
  68e145:	48 8b 85 68 fa ff ff 	mov    -0x598(%rbp),%rax
  68e14c:	48 8b b5 70 fa ff ff 	mov    -0x590(%rbp),%rsi
  68e153:	4c 89 85 60 fa ff ff 	mov    %r8,-0x5a0(%rbp)
  68e15a:	4c 3b 85 78 fa ff ff 	cmp    -0x588(%rbp),%r8
  68e161:	0f 82 0d d2 ff ff    	jb     68b374 <step3d_t_mod_mp_step3d_t_tile_+0x4704>
  68e167:	e9 b3 03 00 00       	jmpq   68e51f <step3d_t_mod_mp_step3d_t_tile_+0x78af>
  68e16c:	48 89 b5 70 fa ff ff 	mov    %rsi,-0x590(%rbp)
  68e173:	48 89 bd 40 fd ff ff 	mov    %rdi,-0x2c0(%rbp)
  68e17a:	48 89 95 b0 fe ff ff 	mov    %rdx,-0x150(%rbp)
  68e181:	48 89 8d b8 fe ff ff 	mov    %rcx,-0x148(%rbp)
  68e188:	48 89 85 68 fa ff ff 	mov    %rax,-0x598(%rbp)
  68e18f:	48 8b b5 60 fa ff ff 	mov    -0x5a0(%rbp),%rsi
  68e196:	49 f7 d8             	neg    %r8
  68e199:	45 33 ed             	xor    %r13d,%r13d
  68e19c:	4c 8b bd 70 fa ff ff 	mov    -0x590(%rbp),%r15
  68e1a3:	4d 03 c2             	add    %r10,%r8
  68e1a6:	4c 8b 95 30 f9 ff ff 	mov    -0x6d0(%rbp),%r10
  68e1ad:	4d 0f af d7          	imul   %r15,%r10
  68e1b1:	48 0f af b5 b8 fe ff 	imul   -0x148(%rbp),%rsi
  68e1b8:	ff 
  68e1b9:	4c 8b b5 d0 f9 ff ff 	mov    -0x630(%rbp),%r14
  68e1c0:	4d 2b d7             	sub    %r15,%r10
  68e1c3:	4c 89 b5 58 fa ff ff 	mov    %r14,-0x5a8(%rbp)
  68e1ca:	4c 8b b5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r14
  68e1d1:	4c 8b bd 38 f9 ff ff 	mov    -0x6c8(%rbp),%r15
  68e1d8:	4c 8b a5 c8 f9 ff ff 	mov    -0x638(%rbp),%r12
  68e1df:	48 8b 85 c0 fa ff ff 	mov    -0x540(%rbp),%rax
  68e1e6:	48 8b 95 b0 fa ff ff 	mov    -0x550(%rbp),%rdx
  68e1ed:	4d 03 fe             	add    %r14,%r15
  68e1f0:	49 89 fb             	mov    %rdi,%r11
  68e1f3:	4d 03 e1             	add    %r9,%r12
  68e1f6:	4c 8b b5 68 fa ff ff 	mov    -0x598(%rbp),%r14
  68e1fd:	4c 03 c8             	add    %rax,%r9
  68e200:	4d 0f af fe          	imul   %r14,%r15
  68e204:	48 8b bd 00 f9 ff ff 	mov    -0x700(%rbp),%rdi
  68e20b:	49 8d 0c 13          	lea    (%r11,%rdx,1),%rcx
  68e20f:	48 f7 df             	neg    %rdi
  68e212:	4c 03 d8             	add    %rax,%r11
  68e215:	48 8b 85 f8 f8 ff ff 	mov    -0x708(%rbp),%rax
  68e21c:	4d 2b fe             	sub    %r14,%r15
  68e21f:	48 03 bd 98 fb ff ff 	add    -0x468(%rbp),%rdi
  68e226:	48 f7 d8             	neg    %rax
  68e229:	48 03 85 78 f9 ff ff 	add    -0x688(%rbp),%rax
  68e230:	4d 03 d7             	add    %r15,%r10
  68e233:	48 0f af 7d f8       	imul   -0x8(%rbp),%rdi
  68e238:	48 0f af 85 00 ff ff 	imul   -0x100(%rbp),%rax
  68e23f:	ff 
  68e240:	48 03 b5 b0 fe ff ff 	add    -0x150(%rbp),%rsi
  68e247:	49 03 f2             	add    %r10,%rsi
  68e24a:	48 03 fe             	add    %rsi,%rdi
  68e24d:	4c 89 a5 20 fd ff ff 	mov    %r12,-0x2e0(%rbp)
  68e254:	48 03 c7             	add    %rdi,%rax
  68e257:	4c 89 ad 38 ff ff ff 	mov    %r13,-0xc8(%rbp)
  68e25e:	48 89 8d 38 fd ff ff 	mov    %rcx,-0x2c8(%rbp)
  68e265:	33 c9                	xor    %ecx,%ecx
  68e267:	48 8b 95 50 f9 ff ff 	mov    -0x6b0(%rbp),%rdx
  68e26e:	4c 8b a5 58 fa ff ff 	mov    -0x5a8(%rbp),%r12
  68e275:	4c 8b ad 70 fd ff ff 	mov    -0x290(%rbp),%r13
  68e27c:	4c 89 85 60 fd ff ff 	mov    %r8,-0x2a0(%rbp)
  68e283:	4c 89 9d 18 fd ff ff 	mov    %r11,-0x2e8(%rbp)
  68e28a:	4c 89 8d c8 fc ff ff 	mov    %r9,-0x338(%rbp)
  68e291:	8b b5 28 fe ff ff    	mov    -0x1d8(%rbp),%esi
  68e297:	3b b5 58 ff ff ff    	cmp    -0xa8(%rbp),%esi
  68e29d:	0f 8c 2e 02 00 00    	jl     68e4d1 <step3d_t_mod_mp_step3d_t_tile_+0x7861>
  68e2a3:	48 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%rdi
  68e2aa:	48 8b b5 68 fd ff ff 	mov    -0x298(%rbp),%rsi
  68e2b1:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  68e2b6:	c5 fb 10 04 fe       	vmovsd (%rsi,%rdi,8),%xmm0
  68e2bb:	0f 84 e7 2c 00 00    	je     690fa8 <step3d_t_mod_mp_step3d_t_tile_+0xa338>
  68e2c1:	49 83 fd 02          	cmp    $0x2,%r13
  68e2c5:	0f 8c dd 2c 00 00    	jl     690fa8 <step3d_t_mod_mp_step3d_t_tile_+0xa338>
  68e2cb:	4c 8b 9d 88 fb ff ff 	mov    -0x478(%rbp),%r11
  68e2d2:	45 33 d2             	xor    %r10d,%r10d
  68e2d5:	4c 8b 8d 20 fd ff ff 	mov    -0x2e0(%rbp),%r9
  68e2dc:	33 ff                	xor    %edi,%edi
  68e2de:	48 8b b5 c8 fc ff ff 	mov    -0x338(%rbp),%rsi
  68e2e5:	4c 8b 75 80          	mov    -0x80(%rbp),%r14
  68e2e9:	4e 8d 3c dd 00 00 00 	lea    0x0(,%r11,8),%r15
  68e2f0:	00 
  68e2f1:	49 f7 df             	neg    %r15
  68e2f4:	4c 03 c9             	add    %rcx,%r9
  68e2f7:	4c 8b 9d 98 fb ff ff 	mov    -0x468(%rbp),%r11
  68e2fe:	4c 8d 04 0e          	lea    (%rsi,%rcx,1),%r8
  68e302:	48 89 85 30 fd ff ff 	mov    %rax,-0x2d0(%rbp)
  68e309:	33 f6                	xor    %esi,%esi
  68e30b:	48 89 8d 28 fd ff ff 	mov    %rcx,-0x2d8(%rbp)
  68e312:	48 89 85 10 fe ff ff 	mov    %rax,-0x1f0(%rbp)
  68e319:	4f 8d 1c df          	lea    (%r15,%r11,8),%r11
  68e31d:	4c 8b bd 90 fb ff ff 	mov    -0x470(%rbp),%r15
  68e324:	4c 03 9d a0 fb ff ff 	add    -0x460(%rbp),%r11
  68e32b:	49 f7 df             	neg    %r15
  68e32e:	4d 03 df             	add    %r15,%r11
  68e331:	48 89 8d 18 fe ff ff 	mov    %rcx,-0x1e8(%rbp)
  68e338:	c5 fb 12 c8          	vmovddup %xmm0,%xmm1
  68e33c:	4c 03 9d 40 fd ff ff 	add    -0x2c0(%rbp),%r11
  68e343:	48 8b 85 28 fd ff ff 	mov    -0x2d8(%rbp),%rax
  68e34a:	48 8b 8d 30 fd ff ff 	mov    -0x2d0(%rbp),%rcx
  68e351:	4c 8b 6d f8          	mov    -0x8(%rbp),%r13
  68e355:	4c 89 b5 08 fe ff ff 	mov    %r14,-0x1f8(%rbp)
  68e35c:	4c 8b 7d 88          	mov    -0x78(%rbp),%r15
  68e360:	4c 8d 34 3a          	lea    (%rdx,%rdi,1),%r14
  68e364:	c4 c1 7b 10 2e       	vmovsd (%r14),%xmm5
  68e369:	c4 a1 79 10 54 18 08 	vmovupd 0x8(%rax,%r11,1),%xmm2
  68e370:	c4 81 79 10 5c d1 08 	vmovupd 0x8(%r9,%r10,8),%xmm3
  68e377:	c4 21 69 5c 14 18    	vsubpd (%rax,%r11,1),%xmm2,%xmm10
  68e37d:	c4 01 61 5c 24 d0    	vsubpd (%r8,%r10,8),%xmm3,%xmm12
  68e383:	c4 81 51 16 34 3e    	vmovhpd (%r14,%r15,1),%xmm5,%xmm6
  68e389:	4a 8d 3c 7f          	lea    (%rdi,%r15,2),%rdi
  68e38d:	c5 71 59 c6          	vmulpd %xmm6,%xmm1,%xmm8
  68e391:	4c 8b 7d 90          	mov    -0x70(%rbp),%r15
  68e395:	4d 8d 34 34          	lea    (%r12,%rsi,1),%r14
  68e399:	c4 c1 7b 10 3e       	vmovsd (%r14),%xmm7
  68e39e:	49 83 c2 02          	add    $0x2,%r10
  68e3a2:	c5 fb 10 21          	vmovsd (%rcx),%xmm4
  68e3a6:	48 83 c0 10          	add    $0x10,%rax
  68e3aa:	c4 01 41 16 0c 3e    	vmovhpd (%r14,%r15,1),%xmm7,%xmm9
  68e3b0:	4a 8d 34 7e          	lea    (%rsi,%r15,2),%rsi
  68e3b4:	c4 41 39 59 d9       	vmulpd %xmm9,%xmm8,%xmm11
  68e3b9:	c4 41 21 59 ea       	vmulpd %xmm10,%xmm11,%xmm13
  68e3be:	c4 41 21 59 f4       	vmulpd %xmm12,%xmm11,%xmm14
  68e3c3:	c4 c1 11 58 d6       	vaddpd %xmm14,%xmm13,%xmm2
  68e3c8:	c4 21 59 16 3c 29    	vmovhpd (%rcx,%r13,1),%xmm4,%xmm15
  68e3ce:	c5 81 5c da          	vsubpd %xmm2,%xmm15,%xmm3
  68e3d2:	c5 fb 11 19          	vmovsd %xmm3,(%rcx)
  68e3d6:	c4 c1 79 17 5c 0d 00 	vmovhpd %xmm3,0x0(%r13,%rcx,1)
  68e3dd:	4a 8d 0c 69          	lea    (%rcx,%r13,2),%rcx
  68e3e1:	4c 3b 55 80          	cmp    -0x80(%rbp),%r10
  68e3e5:	0f 82 71 ff ff ff    	jb     68e35c <step3d_t_mod_mp_step3d_t_tile_+0x76ec>
  68e3eb:	4c 8b b5 08 fe ff ff 	mov    -0x1f8(%rbp),%r14
  68e3f2:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
  68e3f9:	48 8b 8d 18 fe ff ff 	mov    -0x1e8(%rbp),%rcx
  68e400:	4c 8b ad 70 fd ff ff 	mov    -0x290(%rbp),%r13
  68e407:	4c 8b 45 f8          	mov    -0x8(%rbp),%r8
  68e40b:	4c 8b 5d 90          	mov    -0x70(%rbp),%r11
  68e40f:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  68e413:	4d 0f af c6          	imul   %r14,%r8
  68e417:	4d 0f af de          	imul   %r14,%r11
  68e41b:	49 0f af fe          	imul   %r14,%rdi
  68e41f:	4d 3b f5             	cmp    %r13,%r14
  68e422:	0f 83 a9 00 00 00    	jae    68e4d1 <step3d_t_mod_mp_step3d_t_tile_+0x7861>
  68e428:	48 8b b5 20 fd ff ff 	mov    -0x2e0(%rbp),%rsi
  68e42f:	4c 03 c0             	add    %rax,%r8
  68e432:	4c 8b 8d 38 fd ff ff 	mov    -0x2c8(%rbp),%r9
  68e439:	4c 8b 95 c8 fc ff ff 	mov    -0x338(%rbp),%r10
  68e440:	4c 8b bd 18 fd ff ff 	mov    -0x2e8(%rbp),%r15
  68e447:	48 03 f1             	add    %rcx,%rsi
  68e44a:	48 89 85 10 fe ff ff 	mov    %rax,-0x1f0(%rbp)
  68e451:	4c 03 c9             	add    %rcx,%r9
  68e454:	48 89 8d 18 fe ff ff 	mov    %rcx,-0x1e8(%rbp)
  68e45b:	4c 03 d1             	add    %rcx,%r10
  68e45e:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  68e462:	4c 03 f9             	add    %rcx,%r15
  68e465:	48 8b 4d 88          	mov    -0x78(%rbp),%rcx
  68e469:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  68e470:	c5 fb 59 0c 17       	vmulsd (%rdi,%rdx,1),%xmm0,%xmm1
  68e475:	48 03 f9             	add    %rcx,%rdi
  68e478:	c4 81 7b 10 54 f1 08 	vmovsd 0x8(%r9,%r14,8),%xmm2
  68e47f:	c4 a1 7b 10 64 f6 08 	vmovsd 0x8(%rsi,%r14,8),%xmm4
  68e486:	c4 81 73 59 2c 23    	vmulsd (%r11,%r12,1),%xmm1,%xmm5
  68e48c:	4c 03 d8             	add    %rax,%r11
  68e48f:	c4 81 6b 5c 1c f7    	vsubsd (%r15,%r14,8),%xmm2,%xmm3
  68e495:	c4 81 5b 5c 34 f2    	vsubsd (%r10,%r14,8),%xmm4,%xmm6
  68e49b:	c5 d3 59 fb          	vmulsd %xmm3,%xmm5,%xmm7
  68e49f:	c5 53 59 c6          	vmulsd %xmm6,%xmm5,%xmm8
  68e4a3:	c4 41 7b 10 08       	vmovsd (%r8),%xmm9
  68e4a8:	49 ff c6             	inc    %r14
  68e4ab:	c4 41 43 58 d0       	vaddsd %xmm8,%xmm7,%xmm10
  68e4b0:	c4 41 33 5c da       	vsubsd %xmm10,%xmm9,%xmm11
  68e4b5:	c4 41 7b 11 18       	vmovsd %xmm11,(%r8)
  68e4ba:	4c 03 45 f8          	add    -0x8(%rbp),%r8
  68e4be:	4d 3b f5             	cmp    %r13,%r14
  68e4c1:	72 ad                	jb     68e470 <step3d_t_mod_mp_step3d_t_tile_+0x7800>
  68e4c3:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
  68e4ca:	48 8b 8d 18 fe ff ff 	mov    -0x1e8(%rbp),%rcx
  68e4d1:	48 8b b5 38 ff ff ff 	mov    -0xc8(%rbp),%rsi
  68e4d8:	48 ff c6             	inc    %rsi
  68e4db:	48 03 8d 70 ff ff ff 	add    -0x90(%rbp),%rcx
  68e4e2:	48 03 95 58 fe ff ff 	add    -0x1a8(%rbp),%rdx
  68e4e9:	4c 03 a5 60 fe ff ff 	add    -0x1a0(%rbp),%r12
  68e4f0:	48 03 85 00 ff ff ff 	add    -0x100(%rbp),%rax
  68e4f7:	48 89 b5 38 ff ff ff 	mov    %rsi,-0xc8(%rbp)
  68e4fe:	48 3b b5 68 ff ff ff 	cmp    -0x98(%rbp),%rsi
  68e505:	0f 82 86 fd ff ff    	jb     68e291 <step3d_t_mod_mp_step3d_t_tile_+0x7621>
  68e50b:	48 8b b5 80 fa ff ff 	mov    -0x580(%rbp),%rsi
  68e512:	48 3b b5 78 fa ff ff 	cmp    -0x588(%rbp),%rsi
  68e519:	0f 82 f8 cd ff ff    	jb     68b317 <step3d_t_mod_mp_step3d_t_tile_+0x46a7>
  68e51f:	4c 8b 95 b8 f5 ff ff 	mov    -0xa48(%rbp),%r10
  68e526:	4c 8b 9d 38 f9 ff ff 	mov    -0x6c8(%rbp),%r11
  68e52d:	44 8b a5 00 fb ff ff 	mov    -0x500(%rbp),%r12d
  68e534:	44 8b ad f8 fa ff ff 	mov    -0x508(%rbp),%r13d
  68e53b:	4c 8b b5 f0 f8 ff ff 	mov    -0x710(%rbp),%r14
  68e542:	49 ff c3             	inc    %r11
  68e545:	4d 3b da             	cmp    %r10,%r11
  68e548:	0f 82 29 cd ff ff    	jb     68b277 <step3d_t_mod_mp_step3d_t_tile_+0x4607>
  68e54e:	bf 70 56 b3 00       	mov    $0xb35670,%edi
  68e553:	8b b5 d0 f8 ff ff    	mov    -0x730(%rbp),%esi
  68e559:	c5 f8 77             	vzeroupper 
  68e55c:	e8 9f fb d7 ff       	callq  40e100 <__kmpc_for_static_fini@plt>
  68e561:	48 8b 95 b0 f5 ff ff 	mov    -0xa50(%rbp),%rdx
  68e568:	48 8b 85 a8 f5 ff ff 	mov    -0xa58(%rbp),%rax
  68e56f:	48 83 c0 1f          	add    $0x1f,%rax
  68e573:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68e577:	48 03 e0             	add    %rax,%rsp
  68e57a:	48 8b 95 98 f5 ff ff 	mov    -0xa68(%rbp),%rdx
  68e581:	48 8b 85 a0 f5 ff ff 	mov    -0xa60(%rbp),%rax
  68e588:	48 83 c0 1f          	add    $0x1f,%rax
  68e58c:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68e590:	48 03 e0             	add    %rax,%rsp
  68e593:	48 8b 95 88 f5 ff ff 	mov    -0xa78(%rbp),%rdx
  68e59a:	48 8b 85 90 f5 ff ff 	mov    -0xa70(%rbp),%rax
  68e5a1:	48 83 c0 1f          	add    $0x1f,%rax
  68e5a5:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68e5a9:	48 03 e0             	add    %rax,%rsp
  68e5ac:	48 8b 95 78 f5 ff ff 	mov    -0xa88(%rbp),%rdx
  68e5b3:	48 8b 85 80 f5 ff ff 	mov    -0xa80(%rbp),%rax
  68e5ba:	48 83 c0 1f          	add    $0x1f,%rax
  68e5be:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68e5c2:	48 03 e0             	add    %rax,%rsp
  68e5c5:	4c 8b bd 10 f9 ff ff 	mov    -0x6f0(%rbp),%r15
  68e5cc:	4c 8b b5 18 f9 ff ff 	mov    -0x6e8(%rbp),%r14
  68e5d3:	4c 8b ad 20 f9 ff ff 	mov    -0x6e0(%rbp),%r13
  68e5da:	4c 8b a5 28 f9 ff ff 	mov    -0x6d8(%rbp),%r12
  68e5e1:	c9                   	leaveq 
  68e5e2:	48 89 dc             	mov    %rbx,%rsp
  68e5e5:	5b                   	pop    %rbx
  68e5e6:	c3                   	retq   
  68e5e7:	53                   	push   %rbx
  68e5e8:	48 89 e3             	mov    %rsp,%rbx
  68e5eb:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  68e5ef:	55                   	push   %rbp
  68e5f0:	55                   	push   %rbp
  68e5f1:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  68e5f5:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  68e5fa:	48 89 e5             	mov    %rsp,%rbp
  68e5fd:	48 81 ec 90 0b 00 00 	sub    $0xb90,%rsp
  68e604:	4c 89 a5 28 f9 ff ff 	mov    %r12,-0x6d8(%rbp)
  68e60b:	48 8b 73 18          	mov    0x18(%rbx),%rsi
  68e60f:	4c 8b 63 30          	mov    0x30(%rbx),%r12
  68e613:	48 8b 43 28          	mov    0x28(%rbx),%rax
  68e617:	48 89 b5 88 f4 ff ff 	mov    %rsi,-0xb78(%rbp)
  68e61e:	48 8b 73 20          	mov    0x20(%rbx),%rsi
  68e622:	48 8b 12             	mov    (%rdx),%rdx
  68e625:	4d 63 24 24          	movslq (%r12),%r12
  68e629:	48 63 09             	movslq (%rcx),%rcx
  68e62c:	4c 89 a5 90 f4 ff ff 	mov    %r12,-0xb70(%rbp)
  68e633:	48 63 00             	movslq (%rax),%rax
  68e636:	48 89 8d f0 f4 ff ff 	mov    %rcx,-0xb10(%rbp)
  68e63d:	4c 8b 26             	mov    (%rsi),%r12
  68e640:	48 8b 0d 99 da 4a 00 	mov    0x4ada99(%rip),%rcx        # b3c0e0 <mod_param_mp_n_+0x40>
  68e647:	48 f7 d9             	neg    %rcx
  68e64a:	48 89 85 a0 f4 ff ff 	mov    %rax,-0xb60(%rbp)
  68e651:	4c 89 a5 98 f4 ff ff 	mov    %r12,-0xb68(%rbp)
  68e658:	48 63 02             	movslq (%rdx),%rax
  68e65b:	48 03 c8             	add    %rax,%rcx
  68e65e:	4c 89 bd 10 f9 ff ff 	mov    %r15,-0x6f0(%rbp)
  68e665:	4d 63 21             	movslq (%r9),%r12
  68e668:	4c 8b 5b 10          	mov    0x10(%rbx),%r11
  68e66c:	4c 8b 53 38          	mov    0x38(%rbx),%r10
  68e670:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
  68e674:	48 8b 15 25 da 4a 00 	mov    0x4ada25(%rip),%rdx        # b3c0a0 <mod_param_mp_n_>
  68e67b:	4c 89 ad 20 f9 ff ff 	mov    %r13,-0x6e0(%rbp)
  68e682:	4c 89 a5 80 f4 ff ff 	mov    %r12,-0xb80(%rbp)
  68e689:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
  68e68d:	4c 8b 63 58          	mov    0x58(%rbx),%r12
  68e691:	4c 89 b5 18 f9 ff ff 	mov    %r14,-0x6e8(%rbp)
  68e698:	44 8b 37             	mov    (%rdi),%r14d
  68e69b:	49 63 3f             	movslq (%r15),%rdi
  68e69e:	4d 63 12             	movslq (%r10),%r10
  68e6a1:	4d 63 1b             	movslq (%r11),%r11
  68e6a4:	4d 63 00             	movslq (%r8),%r8
  68e6a7:	44 89 b5 e0 f4 ff ff 	mov    %r14d,-0xb20(%rbp)
  68e6ae:	4c 63 34 8a          	movslq (%rdx,%rcx,4),%r14
  68e6b2:	48 89 bd b0 f4 ff ff 	mov    %rdi,-0xb50(%rbp)
  68e6b9:	4d 63 6d 00          	movslq 0x0(%r13),%r13
  68e6bd:	4c 89 95 a8 f4 ff ff 	mov    %r10,-0xb58(%rbp)
  68e6c4:	4c 89 9d 78 f4 ff ff 	mov    %r11,-0xb88(%rbp)
  68e6cb:	4c 89 85 e8 f4 ff ff 	mov    %r8,-0xb18(%rbp)
  68e6d2:	4d 63 24 24          	movslq (%r12),%r12
  68e6d6:	4d 85 f6             	test   %r14,%r14
  68e6d9:	0f 8e da 03 00 00    	jle    68eab9 <step3d_t_mod_mp_step3d_t_tile_+0x7e49>
  68e6df:	4d 89 c7             	mov    %r8,%r15
  68e6e2:	48 83 c4 e0          	add    $0xffffffffffffffe0,%rsp
  68e6e6:	4c 2b bd f0 f4 ff ff 	sub    -0xb10(%rbp),%r15
  68e6ed:	48 8d 85 c8 f4 ff ff 	lea    -0xb38(%rbp),%rax
  68e6f4:	49 ff c7             	inc    %r15
  68e6f7:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  68e6fd:	4d 0f af f7          	imul   %r15,%r14
  68e701:	48 89 04 24          	mov    %rax,(%rsp)
  68e705:	bf 24 56 b3 00       	mov    $0xb35624,%edi
  68e70a:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
  68e70f:	ba 22 00 00 00       	mov    $0x22,%edx
  68e714:	4c 89 54 24 10       	mov    %r10,0x10(%rsp)
  68e719:	48 8d 8d 08 f5 ff ff 	lea    -0xaf8(%rbp),%rcx
  68e720:	8b 70 18             	mov    0x18(%rax),%esi
  68e723:	4c 8d 85 b8 f4 ff ff 	lea    -0xb48(%rbp),%r8
  68e72a:	49 ff ce             	dec    %r14
  68e72d:	4c 8d 8d c0 f4 ff ff 	lea    -0xb40(%rbp),%r9
  68e734:	48 c7 40 f0 00 00 00 	movq   $0x0,-0x10(%rax)
  68e73b:	00 
  68e73c:	c7 40 40 00 00 00 00 	movl   $0x0,0x40(%rax)
  68e743:	4c 89 70 f8          	mov    %r14,-0x8(%rax)
  68e747:	4c 89 10             	mov    %r10,(%rax)
  68e74a:	e8 41 fb d7 ff       	callq  40e290 <__kmpc_for_static_init_8@plt>
  68e74f:	48 83 c4 20          	add    $0x20,%rsp
  68e753:	48 8b 85 b8 f4 ff ff 	mov    -0xb48(%rbp),%rax
  68e75a:	48 89 85 d0 f4 ff ff 	mov    %rax,-0xb30(%rbp)
  68e761:	49 3b c6             	cmp    %r14,%rax
  68e764:	48 8b 85 c0 f4 ff ff 	mov    -0xb40(%rbp),%rax
  68e76b:	0f 8f 35 03 00 00    	jg     68eaa6 <step3d_t_mod_mp_step3d_t_tile_+0x7e36>
  68e771:	48 8b bd a0 f4 ff ff 	mov    -0xb60(%rbp),%rdi
  68e778:	49 3b c6             	cmp    %r14,%rax
  68e77b:	4c 8b 85 90 f4 ff ff 	mov    -0xb70(%rbp),%r8
  68e782:	4c 8b 8d a8 f4 ff ff 	mov    -0xb58(%rbp),%r9
  68e789:	4c 0f 4c f0          	cmovl  %rax,%r14
  68e78d:	4c 2b c7             	sub    %rdi,%r8
  68e790:	4d 2b e9             	sub    %r9,%r13
  68e793:	48 8b 95 b0 f4 ff ff 	mov    -0xb50(%rbp),%rdx
  68e79a:	49 ff c5             	inc    %r13
  68e79d:	4c 8b 9d 80 f4 ff ff 	mov    -0xb80(%rbp),%r11
  68e7a4:	48 8b b5 88 f4 ff ff 	mov    -0xb78(%rbp),%rsi
  68e7ab:	4c 2b b5 d0 f4 ff ff 	sub    -0xb30(%rbp),%r14
  68e7b2:	4e 8d 04 c5 08 00 00 	lea    0x8(,%r8,8),%r8
  68e7b9:	00 
  68e7ba:	4d 0f af c8          	imul   %r8,%r9
  68e7be:	4d 0f af e8          	imul   %r8,%r13
  68e7c2:	c5 fd 10 0d b6 67 23 	vmovupd 0x2367b6(%rip),%ymm1        # 8c4f80 <var$630.126.450+0xc0>
  68e7c9:	00 
  68e7ca:	c5 fb 10 05 2e 8a 23 	vmovsd 0x238a2e(%rip),%xmm0        # 8c7200 <__STRLITPACK_199.115+0x70>
  68e7d1:	00 
  68e7d2:	49 ff c6             	inc    %r14
  68e7d5:	4d 8d 0c f9          	lea    (%r9,%rdi,8),%r9
  68e7d9:	48 8b bd 98 f4 ff ff 	mov    -0xb68(%rbp),%rdi
  68e7e0:	4a 8d 34 de          	lea    (%rsi,%r11,8),%rsi
  68e7e4:	49 2b f1             	sub    %r9,%rsi
  68e7e7:	48 c7 85 d8 f4 ff ff 	movq   $0x0,-0xb28(%rbp)
  68e7ee:	00 00 00 00 
  68e7f2:	49 2b f5             	sub    %r13,%rsi
  68e7f5:	4c 8b 57 50          	mov    0x50(%rdi),%r10
  68e7f9:	4c 89 95 18 f5 ff ff 	mov    %r10,-0xae8(%rbp)
  68e800:	4d 0f af e2          	imul   %r10,%r12
  68e804:	49 89 d2             	mov    %rdx,%r10
  68e807:	49 f7 da             	neg    %r10
  68e80a:	4d 03 d3             	add    %r11,%r10
  68e80d:	48 8b 4f 38          	mov    0x38(%rdi),%rcx
  68e811:	4c 0f af d1          	imul   %rcx,%r10
  68e815:	48 8b 07             	mov    (%rdi),%rax
  68e818:	4c 8b 4f 68          	mov    0x68(%rdi),%r9
  68e81c:	49 2b c1             	sub    %r9,%rax
  68e81f:	48 89 8d 70 f4 ff ff 	mov    %rcx,-0xb90(%rbp)
  68e826:	48 89 c1             	mov    %rax,%rcx
  68e829:	49 2b cc             	sub    %r12,%rcx
  68e82c:	4c 03 d1             	add    %rcx,%r10
  68e82f:	48 c1 e2 03          	shl    $0x3,%rdx
  68e833:	4c 89 95 10 f5 ff ff 	mov    %r10,-0xaf0(%rbp)
  68e83a:	4e 8d 14 dd 00 00 00 	lea    0x0(,%r11,8),%r10
  68e841:	00 
  68e842:	48 8b bd 78 f4 ff ff 	mov    -0xb88(%rbp),%rdi
  68e849:	4c 2b d2             	sub    %rdx,%r10
  68e84c:	49 2b fb             	sub    %r11,%rdi
  68e84f:	4c 03 d0             	add    %rax,%r10
  68e852:	48 ff c7             	inc    %rdi
  68e855:	4d 2b d4             	sub    %r12,%r10
  68e858:	41 89 fc             	mov    %edi,%r12d
  68e85b:	41 83 e4 fc          	and    $0xfffffffc,%r12d
  68e85f:	4d 63 e4             	movslq %r12d,%r12
  68e862:	48 8b 8d 70 f4 ff ff 	mov    -0xb90(%rbp),%rcx
  68e869:	4c 89 95 20 f5 ff ff 	mov    %r10,-0xae0(%rbp)
  68e870:	4c 89 a5 28 f5 ff ff 	mov    %r12,-0xad8(%rbp)
  68e877:	4c 89 b5 f8 f4 ff ff 	mov    %r14,-0xb08(%rbp)
  68e87e:	4c 89 bd 00 f5 ff ff 	mov    %r15,-0xb00(%rbp)
  68e885:	4c 8b b5 d0 f4 ff ff 	mov    -0xb30(%rbp),%r14
  68e88c:	4c 8b bd d8 f4 ff ff 	mov    -0xb28(%rbp),%r15
  68e893:	4c 8b 95 f0 f4 ff ff 	mov    -0xb10(%rbp),%r10
  68e89a:	4b 8d 04 3e          	lea    (%r14,%r15,1),%rax
  68e89e:	48 99                	cqto   
  68e8a0:	48 f7 bd 00 f5 ff ff 	idivq  -0xb00(%rbp)
  68e8a7:	48 ff c0             	inc    %rax
  68e8aa:	49 03 d2             	add    %r10,%rdx
  68e8ad:	4c 63 f0             	movslq %eax,%r14
  68e8b0:	4c 63 fa             	movslq %edx,%r15
  68e8b3:	4c 3b 95 e8 f4 ff ff 	cmp    -0xb18(%rbp),%r10
  68e8ba:	0f 8f c8 01 00 00    	jg     68ea88 <step3d_t_mod_mp_step3d_t_tile_+0x7e18>
  68e8c0:	48 83 f9 08          	cmp    $0x8,%rcx
  68e8c4:	0f 85 bc 00 00 00    	jne    68e986 <step3d_t_mod_mp_step3d_t_tile_+0x7d16>
  68e8ca:	48 8b 85 80 f4 ff ff 	mov    -0xb80(%rbp),%rax
  68e8d1:	48 3b 85 78 f4 ff ff 	cmp    -0xb88(%rbp),%rax
  68e8d8:	0f 8f aa 01 00 00    	jg     68ea88 <step3d_t_mod_mp_step3d_t_tile_+0x7e18>
  68e8de:	48 83 ff 04          	cmp    $0x4,%rdi
  68e8e2:	0f 8c 80 2a 00 00    	jl     691368 <step3d_t_mod_mp_step3d_t_tile_+0xa6f8>
  68e8e8:	4c 89 f2             	mov    %r14,%rdx
  68e8eb:	4c 89 f8             	mov    %r15,%rax
  68e8ee:	49 0f af d5          	imul   %r13,%rdx
  68e8f2:	49 0f af c0          	imul   %r8,%rax
  68e8f6:	4d 89 cc             	mov    %r9,%r12
  68e8f9:	48 03 d6             	add    %rsi,%rdx
  68e8fc:	4d 0f af e6          	imul   %r14,%r12
  68e900:	48 03 d0             	add    %rax,%rdx
  68e903:	45 33 d2             	xor    %r10d,%r10d
  68e906:	48 8b 85 18 f5 ff ff 	mov    -0xae8(%rbp),%rax
  68e90d:	49 0f af c7          	imul   %r15,%rax
  68e911:	4c 03 a5 20 f5 ff ff 	add    -0xae0(%rbp),%r12
  68e918:	4c 8b 9d 28 f5 ff ff 	mov    -0xad8(%rbp),%r11
  68e91f:	49 03 c4             	add    %r12,%rax
  68e922:	4d 89 dc             	mov    %r11,%r12
  68e925:	c4 a1 75 5e 14 d0    	vdivpd (%rax,%r10,8),%ymm1,%ymm2
  68e92b:	c4 a1 7d 11 14 d2    	vmovupd %ymm2,(%rdx,%r10,8)
  68e931:	49 83 c2 04          	add    $0x4,%r10
  68e935:	4d 3b d4             	cmp    %r12,%r10
  68e938:	72 eb                	jb     68e925 <step3d_t_mod_mp_step3d_t_tile_+0x7cb5>
  68e93a:	4c 3b df             	cmp    %rdi,%r11
  68e93d:	0f 83 45 01 00 00    	jae    68ea88 <step3d_t_mod_mp_step3d_t_tile_+0x7e18>
  68e943:	4c 89 f0             	mov    %r14,%rax
  68e946:	4c 89 fa             	mov    %r15,%rdx
  68e949:	49 0f af c5          	imul   %r13,%rax
  68e94d:	4d 0f af f1          	imul   %r9,%r14
  68e951:	49 0f af d0          	imul   %r8,%rdx
  68e955:	4c 0f af bd 18 f5 ff 	imul   -0xae8(%rbp),%r15
  68e95c:	ff 
  68e95d:	4c 03 b5 20 f5 ff ff 	add    -0xae0(%rbp),%r14
  68e964:	48 03 c6             	add    %rsi,%rax
  68e967:	48 03 c2             	add    %rdx,%rax
  68e96a:	4d 03 fe             	add    %r14,%r15
  68e96d:	c4 81 7b 5e 14 df    	vdivsd (%r15,%r11,8),%xmm0,%xmm2
  68e973:	c4 a1 7b 11 14 d8    	vmovsd %xmm2,(%rax,%r11,8)
  68e979:	49 ff c3             	inc    %r11
  68e97c:	4c 3b df             	cmp    %rdi,%r11
  68e97f:	72 ec                	jb     68e96d <step3d_t_mod_mp_step3d_t_tile_+0x7cfd>
  68e981:	e9 02 01 00 00       	jmpq   68ea88 <step3d_t_mod_mp_step3d_t_tile_+0x7e18>
  68e986:	48 8b 85 80 f4 ff ff 	mov    -0xb80(%rbp),%rax
  68e98d:	48 3b 85 78 f4 ff ff 	cmp    -0xb88(%rbp),%rax
  68e994:	0f 8f ee 00 00 00    	jg     68ea88 <step3d_t_mod_mp_step3d_t_tile_+0x7e18>
  68e99a:	48 83 ff 04          	cmp    $0x4,%rdi
  68e99e:	0f 8c cc 29 00 00    	jl     691370 <step3d_t_mod_mp_step3d_t_tile_+0xa700>
  68e9a4:	4c 89 ca             	mov    %r9,%rdx
  68e9a7:	4d 89 fb             	mov    %r15,%r11
  68e9aa:	49 0f af d6          	imul   %r14,%rdx
  68e9ae:	4d 0f af d8          	imul   %r8,%r11
  68e9b2:	4c 8b a5 18 f5 ff ff 	mov    -0xae8(%rbp),%r12
  68e9b9:	45 33 d2             	xor    %r10d,%r10d
  68e9bc:	4d 0f af e7          	imul   %r15,%r12
  68e9c0:	48 03 95 10 f5 ff ff 	add    -0xaf0(%rbp),%rdx
  68e9c7:	49 03 d4             	add    %r12,%rdx
  68e9ca:	4d 89 f4             	mov    %r14,%r12
  68e9cd:	4d 0f af e5          	imul   %r13,%r12
  68e9d1:	4c 03 e6             	add    %rsi,%r12
  68e9d4:	48 8b 85 28 f5 ff ff 	mov    -0xad8(%rbp),%rax
  68e9db:	4d 03 e3             	add    %r11,%r12
  68e9de:	48 89 bd 70 f4 ff ff 	mov    %rdi,-0xb90(%rbp)
  68e9e5:	45 33 db             	xor    %r11d,%r11d
  68e9e8:	4c 89 8d 88 f4 ff ff 	mov    %r9,-0xb78(%rbp)
  68e9ef:	48 89 c7             	mov    %rax,%rdi
  68e9f2:	4e 8d 0c 1a          	lea    (%rdx,%r11,1),%r9
  68e9f6:	c4 c1 7b 10 11       	vmovsd (%r9),%xmm2
  68e9fb:	4d 8d 1c 8b          	lea    (%r11,%rcx,4),%r11
  68e9ff:	c4 c1 69 16 24 09    	vmovhpd (%r9,%rcx,1),%xmm2,%xmm4
  68ea05:	4d 8d 0c 49          	lea    (%r9,%rcx,2),%r9
  68ea09:	c4 c1 7b 10 19       	vmovsd (%r9),%xmm3
  68ea0e:	c4 c1 61 16 2c 09    	vmovhpd (%r9,%rcx,1),%xmm3,%xmm5
  68ea14:	c4 e3 5d 18 f5 01    	vinsertf128 $0x1,%xmm5,%ymm4,%ymm6
  68ea1a:	c5 f5 5e fe          	vdivpd %ymm6,%ymm1,%ymm7
  68ea1e:	c4 81 7d 11 3c d4    	vmovupd %ymm7,(%r12,%r10,8)
  68ea24:	49 83 c2 04          	add    $0x4,%r10
  68ea28:	4c 3b d7             	cmp    %rdi,%r10
  68ea2b:	72 c5                	jb     68e9f2 <step3d_t_mod_mp_step3d_t_tile_+0x7d82>
  68ea2d:	48 8b bd 70 f4 ff ff 	mov    -0xb90(%rbp),%rdi
  68ea34:	4c 8b 8d 88 f4 ff ff 	mov    -0xb78(%rbp),%r9
  68ea3b:	49 89 ca             	mov    %rcx,%r10
  68ea3e:	4c 0f af d0          	imul   %rax,%r10
  68ea42:	48 3b c7             	cmp    %rdi,%rax
  68ea45:	73 41                	jae    68ea88 <step3d_t_mod_mp_step3d_t_tile_+0x7e18>
  68ea47:	4c 89 ca             	mov    %r9,%rdx
  68ea4a:	49 0f af d6          	imul   %r14,%rdx
  68ea4e:	4d 0f af f5          	imul   %r13,%r14
  68ea52:	4c 8b 9d 18 f5 ff ff 	mov    -0xae8(%rbp),%r11
  68ea59:	4c 03 f6             	add    %rsi,%r14
  68ea5c:	4d 0f af df          	imul   %r15,%r11
  68ea60:	4d 0f af f8          	imul   %r8,%r15
  68ea64:	48 03 95 10 f5 ff ff 	add    -0xaf0(%rbp),%rdx
  68ea6b:	4d 03 f7             	add    %r15,%r14
  68ea6e:	49 03 d3             	add    %r11,%rdx
  68ea71:	c4 c1 7b 5e 14 12    	vdivsd (%r10,%rdx,1),%xmm0,%xmm2
  68ea77:	c4 c1 7b 11 14 c6    	vmovsd %xmm2,(%r14,%rax,8)
  68ea7d:	48 ff c0             	inc    %rax
  68ea80:	4c 03 d1             	add    %rcx,%r10
  68ea83:	48 3b c7             	cmp    %rdi,%rax
  68ea86:	72 e9                	jb     68ea71 <step3d_t_mod_mp_step3d_t_tile_+0x7e01>
  68ea88:	48 8b 85 d8 f4 ff ff 	mov    -0xb28(%rbp),%rax
  68ea8f:	48 ff c0             	inc    %rax
  68ea92:	48 89 85 d8 f4 ff ff 	mov    %rax,-0xb28(%rbp)
  68ea99:	48 3b 85 f8 f4 ff ff 	cmp    -0xb08(%rbp),%rax
  68eaa0:	0f 82 df fd ff ff    	jb     68e885 <step3d_t_mod_mp_step3d_t_tile_+0x7c15>
  68eaa6:	bf 24 56 b3 00       	mov    $0xb35624,%edi
  68eaab:	8b b5 e0 f4 ff ff    	mov    -0xb20(%rbp),%esi
  68eab1:	c5 f8 77             	vzeroupper 
  68eab4:	e8 47 f6 d7 ff       	callq  40e100 <__kmpc_for_static_fini@plt>
  68eab9:	4c 8b bd 10 f9 ff ff 	mov    -0x6f0(%rbp),%r15
  68eac0:	4c 8b b5 18 f9 ff ff 	mov    -0x6e8(%rbp),%r14
  68eac7:	4c 8b ad 20 f9 ff ff 	mov    -0x6e0(%rbp),%r13
  68eace:	4c 8b a5 28 f9 ff ff 	mov    -0x6d8(%rbp),%r12
  68ead5:	c9                   	leaveq 
  68ead6:	48 89 dc             	mov    %rbx,%rsp
  68ead9:	5b                   	pop    %rbx
  68eada:	c3                   	retq   
  68eadb:	4f 8d 0c 06          	lea    (%r14,%r8,1),%r9
  68eadf:	e9 a6 98 ff ff       	jmpq   68838a <step3d_t_mod_mp_step3d_t_tile_+0x171a>
  68eae4:	45 33 ed             	xor    %r13d,%r13d
  68eae7:	e9 ab 9c ff ff       	jmpq   688797 <step3d_t_mod_mp_step3d_t_tile_+0x1b27>
  68eaec:	48 8b 95 b8 fb ff ff 	mov    -0x448(%rbp),%rdx
  68eaf3:	4c 8b a5 a8 fb ff ff 	mov    -0x458(%rbp),%r12
  68eafa:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  68eb01:	49 83 fb 02          	cmp    $0x2,%r11
  68eb05:	0f 8c 36 22 00 00    	jl     690d41 <step3d_t_mod_mp_step3d_t_tile_+0xa0d1>
  68eb0b:	4c 8b 95 c8 fb ff ff 	mov    -0x438(%rbp),%r10
  68eb12:	45 33 c0             	xor    %r8d,%r8d
  68eb15:	4c 0f af d2          	imul   %rdx,%r10
  68eb19:	48 8b bd 08 fb ff ff 	mov    -0x4f8(%rbp),%rdi
  68eb20:	45 33 f6             	xor    %r14d,%r14d
  68eb23:	48 8b b5 78 fb ff ff 	mov    -0x488(%rbp),%rsi
  68eb2a:	48 8b 8d 70 fb ff ff 	mov    -0x490(%rbp),%rcx
  68eb31:	4c 8b bd 30 fb ff ff 	mov    -0x4d0(%rbp),%r15
  68eb38:	49 03 fa             	add    %r10,%rdi
  68eb3b:	48 8b 85 38 fb ff ff 	mov    -0x4c8(%rbp),%rax
  68eb42:	49 03 f2             	add    %r10,%rsi
  68eb45:	48 89 95 b8 fb ff ff 	mov    %rdx,-0x448(%rbp)
  68eb4c:	49 03 ca             	add    %r10,%rcx
  68eb4f:	48 8b 95 10 fe ff ff 	mov    -0x1f0(%rbp),%rdx
  68eb56:	4d 03 fa             	add    %r10,%r15
  68eb59:	4c 8b 9d d0 fd ff ff 	mov    -0x230(%rbp),%r11
  68eb60:	4e 8d 0c 10          	lea    (%rax,%r10,1),%r9
  68eb64:	4c 03 95 28 fb ff ff 	add    -0x4d8(%rbp),%r10
  68eb6b:	33 c0                	xor    %eax,%eax
  68eb6d:	4c 8b a5 e0 fd ff ff 	mov    -0x220(%rbp),%r12
  68eb74:	4c 8b ad e8 fd ff ff 	mov    -0x218(%rbp),%r13
  68eb7b:	4d 03 ee             	add    %r14,%r13
  68eb7e:	c4 41 7b 10 6d 00    	vmovsd 0x0(%r13),%xmm13
  68eb84:	c4 01 11 16 64 1d 00 	vmovhpd 0x0(%r13,%r11,1),%xmm13,%xmm12
  68eb8b:	4d 8d 2c 01          	lea    (%r9,%rax,1),%r13
  68eb8f:	c4 41 7b 10 7d 00    	vmovsd 0x0(%r13),%xmm15
  68eb95:	c4 01 01 16 74 25 00 	vmovhpd 0x0(%r13,%r12,1),%xmm15,%xmm14
  68eb9c:	4d 8d 2c 07          	lea    (%r15,%rax,1),%r13
  68eba0:	c4 41 7b 10 6d 00    	vmovsd 0x0(%r13),%xmm13
  68eba6:	c4 01 11 16 7c 25 00 	vmovhpd 0x0(%r13,%r12,1),%xmm13,%xmm15
  68ebad:	4d 8d 2c 02          	lea    (%r10,%rax,1),%r13
  68ebb1:	c4 41 51 59 f6       	vmulpd %xmm14,%xmm5,%xmm14
  68ebb6:	c4 41 41 59 ef       	vmulpd %xmm15,%xmm7,%xmm13
  68ebbb:	c4 41 09 58 fd       	vaddpd %xmm13,%xmm14,%xmm15
  68ebc0:	c4 41 7b 10 75 00    	vmovsd 0x0(%r13),%xmm14
  68ebc6:	c4 01 09 16 74 25 00 	vmovhpd 0x0(%r13,%r12,1),%xmm14,%xmm14
  68ebcd:	c4 41 61 59 ee       	vmulpd %xmm14,%xmm3,%xmm13
  68ebd2:	c4 41 01 5c fd       	vsubpd %xmm13,%xmm15,%xmm15
  68ebd7:	c4 41 19 59 e7       	vmulpd %xmm15,%xmm12,%xmm12
  68ebdc:	4c 8b ad d8 fd ff ff 	mov    -0x228(%rbp),%r13
  68ebe3:	c4 01 79 11 64 c5 08 	vmovupd %xmm12,0x8(%r13,%r8,8)
  68ebea:	4c 8b ad c8 fd ff ff 	mov    -0x238(%rbp),%r13
  68ebf1:	c4 01 79 11 44 c5 00 	vmovupd %xmm8,0x0(%r13,%r8,8)
  68ebf8:	4e 8d 2c 32          	lea    (%rdx,%r14,1),%r13
  68ebfc:	c4 41 7b 10 75 00    	vmovsd 0x0(%r13),%xmm14
  68ec02:	4f 8d 34 5e          	lea    (%r14,%r11,2),%r14
  68ec06:	c4 01 09 16 74 1d 00 	vmovhpd 0x0(%r13,%r11,1),%xmm14,%xmm14
  68ec0d:	4c 8d 2c 01          	lea    (%rcx,%rax,1),%r13
  68ec11:	c4 41 7b 10 65 00    	vmovsd 0x0(%r13),%xmm12
  68ec17:	c4 01 19 16 6c 25 00 	vmovhpd 0x0(%r13,%r12,1),%xmm12,%xmm13
  68ec1e:	4c 8d 2c 06          	lea    (%rsi,%rax,1),%r13
  68ec22:	c4 41 7b 10 7d 00    	vmovsd 0x0(%r13),%xmm15
  68ec28:	c4 01 01 16 64 25 00 	vmovhpd 0x0(%r13,%r12,1),%xmm15,%xmm12
  68ec2f:	4c 8d 2c 07          	lea    (%rdi,%rax,1),%r13
  68ec33:	c4 41 51 59 ed       	vmulpd %xmm13,%xmm5,%xmm13
  68ec38:	c4 41 41 59 fc       	vmulpd %xmm12,%xmm7,%xmm15
  68ec3d:	c4 41 11 58 e7       	vaddpd %xmm15,%xmm13,%xmm12
  68ec42:	c4 41 7b 10 6d 00    	vmovsd 0x0(%r13),%xmm13
  68ec48:	4a 8d 04 60          	lea    (%rax,%r12,2),%rax
  68ec4c:	c4 01 11 16 6c 25 00 	vmovhpd 0x0(%r13,%r12,1),%xmm13,%xmm13
  68ec53:	c4 41 61 59 fd       	vmulpd %xmm13,%xmm3,%xmm15
  68ec58:	c4 41 19 5c e7       	vsubpd %xmm15,%xmm12,%xmm12
  68ec5d:	c4 41 09 59 f4       	vmulpd %xmm12,%xmm14,%xmm14
  68ec62:	4c 8b ad 08 fe ff ff 	mov    -0x1f8(%rbp),%r13
  68ec69:	c4 01 79 11 74 c5 00 	vmovupd %xmm14,0x0(%r13,%r8,8)
  68ec70:	4c 8b ad 00 fe ff ff 	mov    -0x200(%rbp),%r13
  68ec77:	c4 01 79 11 44 c5 00 	vmovupd %xmm8,0x0(%r13,%r8,8)
  68ec7e:	49 83 c0 02          	add    $0x2,%r8
  68ec82:	4c 3b 85 f8 fd ff ff 	cmp    -0x208(%rbp),%r8
  68ec89:	0f 82 e5 fe ff ff    	jb     68eb74 <step3d_t_mod_mp_step3d_t_tile_+0x7f04>
  68ec8f:	4c 8b 9d 60 fd ff ff 	mov    -0x2a0(%rbp),%r11
  68ec96:	4c 8b 85 f8 fd ff ff 	mov    -0x208(%rbp),%r8
  68ec9d:	48 8b 95 b8 fb ff ff 	mov    -0x448(%rbp),%rdx
  68eca4:	4c 8b a5 a8 fb ff ff 	mov    -0x458(%rbp),%r12
  68ecab:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  68ecb2:	4d 3b c3             	cmp    %r11,%r8
  68ecb5:	0f 83 23 01 00 00    	jae    68edde <step3d_t_mod_mp_step3d_t_tile_+0x816e>
  68ecbb:	4c 8b bd c8 fb ff ff 	mov    -0x438(%rbp),%r15
  68ecc2:	4c 0f af fa          	imul   %rdx,%r15
  68ecc6:	48 8b b5 08 fb ff ff 	mov    -0x4f8(%rbp),%rsi
  68eccd:	48 8b 8d 78 fb ff ff 	mov    -0x488(%rbp),%rcx
  68ecd4:	48 8b 85 70 fb ff ff 	mov    -0x490(%rbp),%rax
  68ecdb:	4c 8b 95 30 fb ff ff 	mov    -0x4d0(%rbp),%r10
  68ece2:	49 03 f7             	add    %r15,%rsi
  68ece5:	4c 8b 8d 38 fb ff ff 	mov    -0x4c8(%rbp),%r9
  68ecec:	49 03 cf             	add    %r15,%rcx
  68ecef:	4c 8b b5 e0 fd ff ff 	mov    -0x220(%rbp),%r14
  68ecf6:	49 03 c7             	add    %r15,%rax
  68ecf9:	48 8b bd d0 fd ff ff 	mov    -0x230(%rbp),%rdi
  68ed00:	4d 03 d7             	add    %r15,%r10
  68ed03:	4c 8b a5 d8 fd ff ff 	mov    -0x228(%rbp),%r12
  68ed0a:	4d 03 cf             	add    %r15,%r9
  68ed0d:	4c 03 bd 28 fb ff ff 	add    -0x4d8(%rbp),%r15
  68ed14:	4c 8b ad c8 fd ff ff 	mov    -0x238(%rbp),%r13
  68ed1b:	4d 0f af f0          	imul   %r8,%r14
  68ed1f:	49 0f af f8          	imul   %r8,%rdi
  68ed23:	48 89 95 b8 fb ff ff 	mov    %rdx,-0x448(%rbp)
  68ed2a:	4c 89 bd f0 fd ff ff 	mov    %r15,-0x210(%rbp)
  68ed31:	c4 01 5b 59 24 0e    	vmulsd (%r14,%r9,1),%xmm4,%xmm12
  68ed37:	c4 01 6b 59 2c 16    	vmulsd (%r14,%r10,1),%xmm2,%xmm13
  68ed3d:	4c 8b bd f0 fd ff ff 	mov    -0x210(%rbp),%r15
  68ed44:	c4 41 1b 58 f5       	vaddsd %xmm13,%xmm12,%xmm14
  68ed49:	c4 01 73 59 3c 3e    	vmulsd (%r14,%r15,1),%xmm1,%xmm15
  68ed4f:	48 8b 95 e8 fd ff ff 	mov    -0x218(%rbp),%rdx
  68ed56:	c4 41 0b 5c e7       	vsubsd %xmm15,%xmm14,%xmm12
  68ed5b:	c4 41 5b 59 34 06    	vmulsd (%r14,%rax,1),%xmm4,%xmm14
  68ed61:	c4 41 6b 59 3c 0e    	vmulsd (%r14,%rcx,1),%xmm2,%xmm15
  68ed67:	c5 1b 59 2c 17       	vmulsd (%rdi,%rdx,1),%xmm12,%xmm13
  68ed6c:	c4 41 0b 58 e7       	vaddsd %xmm15,%xmm14,%xmm12
  68ed71:	c4 01 7b 11 6c c4 08 	vmovsd %xmm13,0x8(%r12,%r8,8)
  68ed78:	33 d2                	xor    %edx,%edx
  68ed7a:	c4 41 73 59 2c 36    	vmulsd (%r14,%rsi,1),%xmm1,%xmm13
  68ed80:	4c 8b bd 10 fe ff ff 	mov    -0x1f0(%rbp),%r15
  68ed87:	c4 41 1b 5c f5       	vsubsd %xmm13,%xmm12,%xmm14
  68ed8c:	c4 21 0b 59 3c 3f    	vmulsd (%rdi,%r15,1),%xmm14,%xmm15
  68ed92:	4c 8b bd 08 fe ff ff 	mov    -0x1f8(%rbp),%r15
  68ed99:	4b 89 54 c5 00       	mov    %rdx,0x0(%r13,%r8,8)
  68ed9e:	48 03 bd d0 fd ff ff 	add    -0x230(%rbp),%rdi
  68eda5:	c4 01 7b 11 3c c7    	vmovsd %xmm15,(%r15,%r8,8)
  68edab:	4c 8b bd 00 fe ff ff 	mov    -0x200(%rbp),%r15
  68edb2:	4c 03 b5 e0 fd ff ff 	add    -0x220(%rbp),%r14
  68edb9:	4b 89 14 c7          	mov    %rdx,(%r15,%r8,8)
  68edbd:	49 ff c0             	inc    %r8
  68edc0:	4d 3b c3             	cmp    %r11,%r8
  68edc3:	0f 82 68 ff ff ff    	jb     68ed31 <step3d_t_mod_mp_step3d_t_tile_+0x80c1>
  68edc9:	48 8b 95 b8 fb ff ff 	mov    -0x448(%rbp),%rdx
  68edd0:	4c 8b a5 a8 fb ff ff 	mov    -0x458(%rbp),%r12
  68edd7:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  68edde:	49 83 fb 04          	cmp    $0x4,%r11
  68ede2:	0f 8c 52 1f 00 00    	jl     690d3a <step3d_t_mod_mp_step3d_t_tile_+0xa0ca>
  68ede8:	48 8b bd 60 fb ff ff 	mov    -0x4a0(%rbp),%rdi
  68edef:	48 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%rax
  68edf6:	4c 8b 85 48 fb ff ff 	mov    -0x4b8(%rbp),%r8
  68edfd:	4c 8b 8d 50 fb ff ff 	mov    -0x4b0(%rbp),%r9
  68ee04:	c5 7b 12 24 c7       	vmovddup (%rdi,%rax,8),%xmm12
  68ee09:	33 c0                	xor    %eax,%eax
  68ee0b:	48 8b bd 30 fe ff ff 	mov    -0x1d0(%rbp),%rdi
  68ee12:	33 c9                	xor    %ecx,%ecx
  68ee14:	48 89 bd 98 fb ff ff 	mov    %rdi,-0x468(%rbp)
  68ee1b:	33 f6                	xor    %esi,%esi
  68ee1d:	48 8b bd 40 fb ff ff 	mov    -0x4c0(%rbp),%rdi
  68ee24:	4c 8b 95 58 fb ff ff 	mov    -0x4a8(%rbp),%r10
  68ee2b:	4c 8b 9d 30 fe ff ff 	mov    -0x1d0(%rbp),%r11
  68ee32:	4c 8b a5 00 fd ff ff 	mov    -0x300(%rbp),%r12
  68ee39:	4c 8b ad f8 fb ff ff 	mov    -0x408(%rbp),%r13
  68ee40:	4c 8b b5 f0 fb ff ff 	mov    -0x410(%rbp),%r14
  68ee47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  68ee4e:	00 00 
  68ee50:	4d 8d 3c 0a          	lea    (%r10,%rcx,1),%r15
  68ee54:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  68ee59:	c4 01 11 16 34 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm14
  68ee5f:	4d 8d 3c 31          	lea    (%r9,%rsi,1),%r15
  68ee63:	c4 41 19 59 ee       	vmulpd %xmm14,%xmm12,%xmm13
  68ee68:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  68ee6d:	c4 01 01 16 34 2f    	vmovhpd (%r15,%r13,1),%xmm15,%xmm14
  68ee73:	4d 8d 3c 08          	lea    (%r8,%rcx,1),%r15
  68ee77:	c4 41 11 59 fe       	vmulpd %xmm14,%xmm13,%xmm15
  68ee7c:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  68ee81:	4a 8d 0c b1          	lea    (%rcx,%r14,4),%rcx
  68ee85:	c4 01 11 16 34 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm14
  68ee8b:	4c 8d 3c 37          	lea    (%rdi,%rsi,1),%r15
  68ee8f:	c4 41 19 59 ee       	vmulpd %xmm14,%xmm12,%xmm13
  68ee94:	c4 41 79 11 3c c4    	vmovupd %xmm15,(%r12,%rax,8)
  68ee9a:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  68ee9f:	4a 8d 34 ae          	lea    (%rsi,%r13,4),%rsi
  68eea3:	c4 01 01 16 34 2f    	vmovhpd (%r15,%r13,1),%xmm15,%xmm14
  68eea9:	c4 41 11 59 fe       	vmulpd %xmm14,%xmm13,%xmm15
  68eeae:	c4 41 79 11 7c c4 10 	vmovupd %xmm15,0x10(%r12,%rax,8)
  68eeb5:	48 83 c0 04          	add    $0x4,%rax
  68eeb9:	49 3b c3             	cmp    %r11,%rax
  68eebc:	72 92                	jb     68ee50 <step3d_t_mod_mp_step3d_t_tile_+0x81e0>
  68eebe:	48 8b bd 98 fb ff ff 	mov    -0x468(%rbp),%rdi
  68eec5:	4c 8b a5 a8 fb ff ff 	mov    -0x458(%rbp),%r12
  68eecc:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  68eed3:	4c 8b 9d 60 fd ff ff 	mov    -0x2a0(%rbp),%r11
  68eeda:	48 8b 85 f8 fb ff ff 	mov    -0x408(%rbp),%rax
  68eee1:	48 8b 8d f0 fb ff ff 	mov    -0x410(%rbp),%rcx
  68eee8:	48 0f af c7          	imul   %rdi,%rax
  68eeec:	48 0f af cf          	imul   %rdi,%rcx
  68eef0:	49 3b fb             	cmp    %r11,%rdi
  68eef3:	73 56                	jae    68ef4b <step3d_t_mod_mp_step3d_t_tile_+0x82db>
  68eef5:	48 8b b5 60 fb ff ff 	mov    -0x4a0(%rbp),%rsi
  68eefc:	4c 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%r8
  68ef03:	4c 8b 8d 00 fd ff ff 	mov    -0x300(%rbp),%r9
  68ef0a:	4c 8b 95 f8 fb ff ff 	mov    -0x408(%rbp),%r10
  68ef11:	c4 21 7b 10 24 c6    	vmovsd (%rsi,%r8,8),%xmm12
  68ef17:	48 8b b5 50 fb ff ff 	mov    -0x4b0(%rbp),%rsi
  68ef1e:	4c 8b 85 58 fb ff ff 	mov    -0x4a8(%rbp),%r8
  68ef25:	4c 8b b5 f0 fb ff ff 	mov    -0x410(%rbp),%r14
  68ef2c:	c4 21 1b 59 2c 01    	vmulsd (%rcx,%r8,1),%xmm12,%xmm13
  68ef32:	49 03 ce             	add    %r14,%rcx
  68ef35:	c5 13 59 34 30       	vmulsd (%rax,%rsi,1),%xmm13,%xmm14
  68ef3a:	49 03 c2             	add    %r10,%rax
  68ef3d:	c4 41 7b 11 34 f9    	vmovsd %xmm14,(%r9,%rdi,8)
  68ef43:	48 ff c7             	inc    %rdi
  68ef46:	49 3b fb             	cmp    %r11,%rdi
  68ef49:	72 e1                	jb     68ef2c <step3d_t_mod_mp_step3d_t_tile_+0x82bc>
  68ef4b:	33 c9                	xor    %ecx,%ecx
  68ef4d:	48 83 bd e0 fb ff ff 	cmpq   $0x0,-0x420(%rbp)
  68ef54:	00 
  68ef55:	7e 38                	jle    68ef8f <step3d_t_mod_mp_step3d_t_tile_+0x831f>
  68ef57:	be 01 00 00 00       	mov    $0x1,%esi
  68ef5c:	33 c0                	xor    %eax,%eax
  68ef5e:	4d 85 ed             	test   %r13,%r13
  68ef61:	74 1c                	je     68ef7f <step3d_t_mod_mp_step3d_t_tile_+0x830f>
  68ef63:	48 8b b5 80 fb ff ff 	mov    -0x480(%rbp),%rsi
  68ef6a:	41 0b 0c c4          	or     (%r12,%rax,8),%ecx
  68ef6e:	0b 4c c6 04          	or     0x4(%rsi,%rax,8),%ecx
  68ef72:	48 ff c0             	inc    %rax
  68ef75:	49 3b c5             	cmp    %r13,%rax
  68ef78:	72 f0                	jb     68ef6a <step3d_t_mod_mp_step3d_t_tile_+0x82fa>
  68ef7a:	48 8d 74 00 01       	lea    0x1(%rax,%rax,1),%rsi
  68ef7f:	48 ff ce             	dec    %rsi
  68ef82:	48 3b b5 e0 fb ff ff 	cmp    -0x420(%rbp),%rsi
  68ef89:	73 04                	jae    68ef8f <step3d_t_mod_mp_step3d_t_tile_+0x831f>
  68ef8b:	41 0b 0c b4          	or     (%r12,%rsi,4),%ecx
  68ef8f:	83 bd 08 fc ff ff 00 	cmpl   $0x0,-0x3f8(%rbp)
  68ef96:	0f 84 e7 04 00 00    	je     68f483 <step3d_t_mod_mp_step3d_t_tile_+0x8813>
  68ef9c:	f6 c1 01             	test   $0x1,%cl
  68ef9f:	0f 84 de 04 00 00    	je     68f483 <step3d_t_mod_mp_step3d_t_tile_+0x8813>
  68efa5:	48 8b bd c0 f8 ff ff 	mov    -0x740(%rbp),%rdi
  68efac:	45 33 c0             	xor    %r8d,%r8d
  68efaf:	48 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%rax
  68efb6:	4c 8d 72 01          	lea    0x1(%rdx),%r14
  68efba:	48 63 3c 87          	movslq (%rdi,%rax,4),%rdi
  68efbe:	48 85 ff             	test   %rdi,%rdi
  68efc1:	0f 8e c0 04 00 00    	jle    68f487 <step3d_t_mod_mp_step3d_t_tile_+0x8817>
  68efc7:	4c 8b bd 98 f8 ff ff 	mov    -0x768(%rbp),%r15
  68efce:	45 33 c9             	xor    %r9d,%r9d
  68efd1:	48 8b 8d b8 f8 ff ff 	mov    -0x748(%rbp),%rcx
  68efd8:	48 89 95 b8 fb ff ff 	mov    %rdx,-0x448(%rbp)
  68efdf:	4c 89 b5 c8 fa ff ff 	mov    %r14,-0x538(%rbp)
  68efe6:	49 8b 84 0f 80 00 00 	mov    0x80(%r15,%rcx,1),%rax
  68efed:	00 
  68efee:	4d 8b 94 0f 88 00 00 	mov    0x88(%r15,%rcx,1),%r10
  68eff5:	00 
  68eff6:	4c 0f af d0          	imul   %rax,%r10
  68effa:	48 89 85 a8 f8 ff ff 	mov    %rax,-0x758(%rbp)
  68f001:	49 8b 44 0f 48       	mov    0x48(%r15,%rcx,1),%rax
  68f006:	49 8b 74 0f 40       	mov    0x40(%r15,%rcx,1),%rsi
  68f00b:	49 2b c2             	sub    %r10,%rax
  68f00e:	4d 8b 54 0f 38       	mov    0x38(%r15,%rcx,1),%r10
  68f013:	49 0f af f2          	imul   %r10,%rsi
  68f017:	49 8b 0c 0f          	mov    (%r15,%rcx,1),%rcx
  68f01b:	48 2b ce             	sub    %rsi,%rcx
  68f01e:	48 8b b5 b0 f8 ff ff 	mov    -0x750(%rbp),%rsi
  68f025:	48 89 85 a0 f8 ff ff 	mov    %rax,-0x760(%rbp)
  68f02c:	33 c0                	xor    %eax,%eax
  68f02e:	4c 8b 9d a0 f8 ff ff 	mov    -0x760(%rbp),%r11
  68f035:	8b 74 96 04          	mov    0x4(%rsi,%rdx,4),%esi
  68f039:	4c 8b a5 a8 f8 ff ff 	mov    -0x758(%rbp),%r12
  68f040:	83 e6 01             	and    $0x1,%esi
  68f043:	49 03 c2             	add    %r10,%rax
  68f046:	4d 03 cc             	add    %r12,%r9
  68f049:	4d 8d 68 01          	lea    0x1(%r8),%r13
  68f04d:	44 8b 34 08          	mov    (%rax,%rcx,1),%r14d
  68f051:	43 8b 14 19          	mov    (%r9,%r11,1),%edx
  68f055:	85 f6                	test   %esi,%esi
  68f057:	0f 84 f5 03 00 00    	je     68f452 <step3d_t_mod_mp_step3d_t_tile_+0x87e2>
  68f05d:	44 3b b5 10 fa ff ff 	cmp    -0x5f0(%rbp),%r14d
  68f064:	0f 8c e8 03 00 00    	jl     68f452 <step3d_t_mod_mp_step3d_t_tile_+0x87e2>
  68f06a:	44 3b b5 c8 f8 ff ff 	cmp    -0x738(%rbp),%r14d
  68f071:	0f 8f db 03 00 00    	jg     68f452 <step3d_t_mod_mp_step3d_t_tile_+0x87e2>
  68f077:	3b 95 90 f8 ff ff    	cmp    -0x770(%rbp),%edx
  68f07d:	0f 85 cf 03 00 00    	jne    68f452 <step3d_t_mod_mp_step3d_t_tile_+0x87e2>
  68f083:	48 8b 95 98 f8 ff ff 	mov    -0x768(%rbp),%rdx
  68f08a:	4c 8b bd b8 f8 ff ff 	mov    -0x748(%rbp),%r15
  68f091:	4a 8b 94 3a 00 02 00 	mov    0x200(%rdx,%r15,1),%rdx
  68f098:	00 
  68f099:	48 89 95 88 f6 ff ff 	mov    %rdx,-0x978(%rbp)
  68f0a0:	48 83 fa 08          	cmp    $0x8,%rdx
  68f0a4:	0f 85 bd 01 00 00    	jne    68f267 <step3d_t_mod_mp_step3d_t_tile_+0x85f7>
  68f0aa:	48 8b 95 98 f8 ff ff 	mov    -0x768(%rbp),%rdx
  68f0b1:	4a 83 bc 3a 60 02 00 	cmpq   $0x8,0x260(%rdx,%r15,1)
  68f0b8:	00 08 
  68f0ba:	0f 85 a7 01 00 00    	jne    68f267 <step3d_t_mod_mp_step3d_t_tile_+0x85f7>
  68f0c0:	48 c7 85 80 f6 ff ff 	movq   $0x0,-0x980(%rbp)
  68f0c7:	00 00 00 00 
  68f0cb:	48 83 bd 00 f7 ff ff 	cmpq   $0x0,-0x900(%rbp)
  68f0d2:	00 
  68f0d3:	0f 8e 79 03 00 00    	jle    68f452 <step3d_t_mod_mp_step3d_t_tile_+0x87e2>
  68f0d9:	4d 63 f6             	movslq %r14d,%r14
  68f0dc:	48 89 85 60 f6 ff ff 	mov    %rax,-0x9a0(%rbp)
  68f0e3:	48 8b 85 e8 f6 ff ff 	mov    -0x918(%rbp),%rax
  68f0ea:	4c 89 ad f0 f6 ff ff 	mov    %r13,-0x910(%rbp)
  68f0f1:	48 89 8d 58 f6 ff ff 	mov    %rcx,-0x9a8(%rbp)
  68f0f8:	48 8b 95 b8 fb ff ff 	mov    -0x448(%rbp),%rdx
  68f0ff:	4e 8d 6c f0 08       	lea    0x8(%rax,%r14,8),%r13
  68f104:	4c 89 ad 90 f6 ff ff 	mov    %r13,-0x970(%rbp)
  68f10b:	4c 8b ad 98 f8 ff ff 	mov    -0x768(%rbp),%r13
  68f112:	4d 89 fe             	mov    %r15,%r14
  68f115:	89 b5 50 f6 ff ff    	mov    %esi,-0x9b0(%rbp)
  68f11b:	33 f6                	xor    %esi,%esi
  68f11d:	48 89 b5 b0 f6 ff ff 	mov    %rsi,-0x950(%rbp)
  68f124:	4b 8b 84 35 78 02 00 	mov    0x278(%r13,%r14,1),%rax
  68f12b:	00 
  68f12c:	4f 8b bc 35 80 02 00 	mov    0x280(%r13,%r14,1),%r15
  68f133:	00 
  68f134:	4c 0f af f8          	imul   %rax,%r15
  68f138:	4b 8b 8c 35 68 02 00 	mov    0x268(%r13,%r14,1),%rcx
  68f13f:	00 
  68f140:	48 89 b5 b8 f6 ff ff 	mov    %rsi,-0x948(%rbp)
  68f147:	4b 8b b4 35 20 02 00 	mov    0x220(%r13,%r14,1),%rsi
  68f14e:	00 
  68f14f:	48 89 85 c8 f6 ff ff 	mov    %rax,-0x938(%rbp)
  68f156:	4d 8d 3c cf          	lea    (%r15,%rcx,8),%r15
  68f15a:	4b 8b 8c 35 98 02 00 	mov    0x298(%r13,%r14,1),%rcx
  68f161:	00 
  68f162:	48 f7 d9             	neg    %rcx
  68f165:	4c 89 95 68 f6 ff ff 	mov    %r10,-0x998(%rbp)
  68f16c:	4c 89 8d 70 f6 ff ff 	mov    %r9,-0x990(%rbp)
  68f173:	48 89 bd 78 f6 ff ff 	mov    %rdi,-0x988(%rbp)
  68f17a:	4c 8b 8d b0 f6 ff ff 	mov    -0x950(%rbp),%r9
  68f181:	48 8d 4c 11 01       	lea    0x1(%rcx,%rdx,1),%rcx
  68f186:	4b 8b 94 35 28 02 00 	mov    0x228(%r13,%r14,1),%rdx
  68f18d:	00 
  68f18e:	49 2b d7             	sub    %r15,%rdx
  68f191:	4f 8b bc 35 18 02 00 	mov    0x218(%r13,%r14,1),%r15
  68f198:	00 
  68f199:	4b 0f af 8c 35 90 02 	imul   0x290(%r13,%r14,1),%rcx
  68f1a0:	00 00 
  68f1a2:	49 0f af f7          	imul   %r15,%rsi
  68f1a6:	4a 8d 14 c2          	lea    (%rdx,%r8,8),%rdx
  68f1aa:	48 03 ca             	add    %rdx,%rcx
  68f1ad:	4b 8b 94 35 08 02 00 	mov    0x208(%r13,%r14,1),%rdx
  68f1b4:	00 
  68f1b5:	4f 8b b4 35 c8 01 00 	mov    0x1c8(%r13,%r14,1),%r14
  68f1bc:	00 
  68f1bd:	48 c1 e2 03          	shl    $0x3,%rdx
  68f1c1:	4c 2b f6             	sub    %rsi,%r14
  68f1c4:	4c 2b f2             	sub    %rdx,%r14
  68f1c7:	48 89 8d e0 f6 ff ff 	mov    %rcx,-0x920(%rbp)
  68f1ce:	4c 8b ad f0 f6 ff ff 	mov    -0x910(%rbp),%r13
  68f1d5:	48 8b b5 b8 f6 ff ff 	mov    -0x948(%rbp),%rsi
  68f1dc:	4b 8d 14 c6          	lea    (%r14,%r8,8),%rdx
  68f1e0:	4c 89 ff             	mov    %r15,%rdi
  68f1e3:	4c 8d 34 41          	lea    (%rcx,%rax,2),%r14
  68f1e7:	4e 8d 04 7a          	lea    (%rdx,%r15,2),%r8
  68f1eb:	48 8b 85 e0 f6 ff ff 	mov    -0x920(%rbp),%rax
  68f1f2:	48 8b 8d 90 f6 ff ff 	mov    -0x970(%rbp),%rcx
  68f1f9:	4c 8b 95 c8 f6 ff ff 	mov    -0x938(%rbp),%r10
  68f200:	4c 8b 9d 80 f6 ff ff 	mov    -0x980(%rbp),%r11
  68f207:	4c 8b a5 00 f7 ff ff 	mov    -0x900(%rbp),%r12
  68f20e:	4c 8b bd a0 fd ff ff 	mov    -0x260(%rbp),%r15
  68f215:	0f 1f 40 00          	nopl   0x0(%rax)
  68f219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  68f220:	48 03 f7             	add    %rdi,%rsi
  68f223:	4d 03 ca             	add    %r10,%r9
  68f226:	c4 41 7b 10 68 08    	vmovsd 0x8(%r8),%xmm13
  68f22c:	49 ff c3             	inc    %r11
  68f22f:	c4 41 13 59 7e 08    	vmulsd 0x8(%r14),%xmm13,%xmm15
  68f235:	4c 03 c7             	add    %rdi,%r8
  68f238:	c5 7b 10 64 16 08    	vmovsd 0x8(%rsi,%rdx,1),%xmm12
  68f23e:	4d 03 f2             	add    %r10,%r14
  68f241:	c4 41 1b 59 74 01 08 	vmulsd 0x8(%r9,%rax,1),%xmm12,%xmm14
  68f248:	c4 41 0b 58 e7       	vaddsd %xmm15,%xmm14,%xmm12
  68f24d:	c4 41 5b 59 ec       	vmulsd %xmm12,%xmm4,%xmm13
  68f252:	c5 13 58 31          	vaddsd (%rcx),%xmm13,%xmm14
  68f256:	c5 7b 11 31          	vmovsd %xmm14,(%rcx)
  68f25a:	49 03 cf             	add    %r15,%rcx
  68f25d:	4d 3b dc             	cmp    %r12,%r11
  68f260:	72 be                	jb     68f220 <step3d_t_mod_mp_step3d_t_tile_+0x85b0>
  68f262:	e9 b4 01 00 00       	jmpq   68f41b <step3d_t_mod_mp_step3d_t_tile_+0x87ab>
  68f267:	48 c7 85 f8 f6 ff ff 	movq   $0x0,-0x908(%rbp)
  68f26e:	00 00 00 00 
  68f272:	48 83 bd 00 f7 ff ff 	cmpq   $0x0,-0x900(%rbp)
  68f279:	00 
  68f27a:	0f 8e d2 01 00 00    	jle    68f452 <step3d_t_mod_mp_step3d_t_tile_+0x87e2>
  68f280:	4d 63 f6             	movslq %r14d,%r14
  68f283:	48 8b 95 e8 f6 ff ff 	mov    -0x918(%rbp),%rdx
  68f28a:	4c 89 ad f0 f6 ff ff 	mov    %r13,-0x910(%rbp)
  68f291:	48 89 85 60 f6 ff ff 	mov    %rax,-0x9a0(%rbp)
  68f298:	48 89 8d 58 f6 ff ff 	mov    %rcx,-0x9a8(%rbp)
  68f29f:	4e 8d 6c f2 08       	lea    0x8(%rdx,%r14,8),%r13
  68f2a4:	4c 89 ad 98 f6 ff ff 	mov    %r13,-0x968(%rbp)
  68f2ab:	4c 8b ad 98 f8 ff ff 	mov    -0x768(%rbp),%r13
  68f2b2:	4d 89 fe             	mov    %r15,%r14
  68f2b5:	89 b5 50 f6 ff ff    	mov    %esi,-0x9b0(%rbp)
  68f2bb:	4b 8b 84 35 68 02 00 	mov    0x268(%r13,%r14,1),%rax
  68f2c2:	00 
  68f2c3:	48 f7 d8             	neg    %rax
  68f2c6:	4b 8b 8c 35 78 02 00 	mov    0x278(%r13,%r14,1),%rcx
  68f2cd:	00 
  68f2ce:	4b 8b 94 35 80 02 00 	mov    0x280(%r13,%r14,1),%rdx
  68f2d5:	00 
  68f2d6:	48 0f af d1          	imul   %rcx,%rdx
  68f2da:	48 89 8d a8 f6 ff ff 	mov    %rcx,-0x958(%rbp)
  68f2e1:	4c 8d 3c 09          	lea    (%rcx,%rcx,1),%r15
  68f2e5:	4c 89 bd a0 f6 ff ff 	mov    %r15,-0x960(%rbp)
  68f2ec:	4a 8d 74 00 01       	lea    0x1(%rax,%r8,1),%rsi
  68f2f1:	4f 8b bc 35 98 02 00 	mov    0x298(%r13,%r14,1),%r15
  68f2f8:	00 
  68f2f9:	33 c0                	xor    %eax,%eax
  68f2fb:	49 f7 df             	neg    %r15
  68f2fe:	4b 0f af b4 35 60 02 	imul   0x260(%r13,%r14,1),%rsi
  68f305:	00 00 
  68f307:	4c 03 bd c8 fa ff ff 	add    -0x538(%rbp),%r15
  68f30e:	4f 0f af bc 35 90 02 	imul   0x290(%r13,%r14,1),%r15
  68f315:	00 00 
  68f317:	4b 8b 8c 35 28 02 00 	mov    0x228(%r13,%r14,1),%rcx
  68f31e:	00 
  68f31f:	48 2b ca             	sub    %rdx,%rcx
  68f322:	48 03 f1             	add    %rcx,%rsi
  68f325:	4c 03 fe             	add    %rsi,%r15
  68f328:	4b 8b b4 35 08 02 00 	mov    0x208(%r13,%r14,1),%rsi
  68f32f:	00 
  68f330:	48 f7 de             	neg    %rsi
  68f333:	48 89 85 c0 f6 ff ff 	mov    %rax,-0x940(%rbp)
  68f33a:	48 89 85 d0 f6 ff ff 	mov    %rax,-0x930(%rbp)
  68f341:	4b 8b 8c 35 18 02 00 	mov    0x218(%r13,%r14,1),%rcx
  68f348:	00 
  68f349:	4b 8b 84 35 20 02 00 	mov    0x220(%r13,%r14,1),%rax
  68f350:	00 
  68f351:	4a 8d 54 06 01       	lea    0x1(%rsi,%r8,1),%rdx
  68f356:	48 0f af c1          	imul   %rcx,%rax
  68f35a:	48 0f af 95 88 f6 ff 	imul   -0x978(%rbp),%rdx
  68f361:	ff 
  68f362:	4b 8b b4 35 c8 01 00 	mov    0x1c8(%r13,%r14,1),%rsi
  68f369:	00 
  68f36a:	4c 8d 04 09          	lea    (%rcx,%rcx,1),%r8
  68f36e:	48 2b f0             	sub    %rax,%rsi
  68f371:	48 03 d6             	add    %rsi,%rdx
  68f374:	48 89 8d d8 f6 ff ff 	mov    %rcx,-0x928(%rbp)
  68f37b:	4c 89 95 68 f6 ff ff 	mov    %r10,-0x998(%rbp)
  68f382:	4c 89 8d 70 f6 ff ff 	mov    %r9,-0x990(%rbp)
  68f389:	48 89 bd 78 f6 ff ff 	mov    %rdi,-0x988(%rbp)
  68f390:	4c 8b ad f0 f6 ff ff 	mov    -0x910(%rbp),%r13
  68f397:	48 8b 85 98 f6 ff ff 	mov    -0x968(%rbp),%rax
  68f39e:	4c 89 f9             	mov    %r15,%rcx
  68f3a1:	48 8b b5 d0 f6 ff ff 	mov    -0x930(%rbp),%rsi
  68f3a8:	4c 89 c7             	mov    %r8,%rdi
  68f3ab:	4c 8b 85 d8 f6 ff ff 	mov    -0x928(%rbp),%r8
  68f3b2:	4c 8b 8d c0 f6 ff ff 	mov    -0x940(%rbp),%r9
  68f3b9:	4c 8b 95 a0 f6 ff ff 	mov    -0x960(%rbp),%r10
  68f3c0:	4c 8b 9d a8 f6 ff ff 	mov    -0x958(%rbp),%r11
  68f3c7:	4c 8b a5 f8 f6 ff ff 	mov    -0x908(%rbp),%r12
  68f3ce:	4c 8b b5 00 f7 ff ff 	mov    -0x900(%rbp),%r14
  68f3d5:	4c 8b bd a0 fd ff ff 	mov    -0x260(%rbp),%r15
  68f3dc:	49 03 f0             	add    %r8,%rsi
  68f3df:	4d 03 cb             	add    %r11,%r9
  68f3e2:	c5 7b 10 2c 17       	vmovsd (%rdi,%rdx,1),%xmm13
  68f3e7:	49 ff c4             	inc    %r12
  68f3ea:	c4 41 13 59 3c 0a    	vmulsd (%r10,%rcx,1),%xmm13,%xmm15
  68f3f0:	49 03 f8             	add    %r8,%rdi
  68f3f3:	c5 7b 10 24 16       	vmovsd (%rsi,%rdx,1),%xmm12
  68f3f8:	4d 03 d3             	add    %r11,%r10
  68f3fb:	c4 41 1b 59 34 09    	vmulsd (%r9,%rcx,1),%xmm12,%xmm14
  68f401:	c4 41 0b 58 e7       	vaddsd %xmm15,%xmm14,%xmm12
  68f406:	c4 41 5b 59 ec       	vmulsd %xmm12,%xmm4,%xmm13
  68f40b:	c5 13 58 30          	vaddsd (%rax),%xmm13,%xmm14
  68f40f:	c5 7b 11 30          	vmovsd %xmm14,(%rax)
  68f413:	49 03 c7             	add    %r15,%rax
  68f416:	4d 3b e6             	cmp    %r14,%r12
  68f419:	72 c1                	jb     68f3dc <step3d_t_mod_mp_step3d_t_tile_+0x876c>
  68f41b:	8b b5 50 f6 ff ff    	mov    -0x9b0(%rbp),%esi
  68f421:	48 8b 8d 58 f6 ff ff 	mov    -0x9a8(%rbp),%rcx
  68f428:	48 8b 85 60 f6 ff ff 	mov    -0x9a0(%rbp),%rax
  68f42f:	4c 8b 95 68 f6 ff ff 	mov    -0x998(%rbp),%r10
  68f436:	4c 8b 9d a0 f8 ff ff 	mov    -0x760(%rbp),%r11
  68f43d:	4c 8b 8d 70 f6 ff ff 	mov    -0x990(%rbp),%r9
  68f444:	4c 8b a5 a8 f8 ff ff 	mov    -0x758(%rbp),%r12
  68f44b:	48 8b bd 78 f6 ff ff 	mov    -0x988(%rbp),%rdi
  68f452:	4d 89 e8             	mov    %r13,%r8
  68f455:	4c 3b ef             	cmp    %rdi,%r13
  68f458:	0f 82 e5 fb ff ff    	jb     68f043 <step3d_t_mod_mp_step3d_t_tile_+0x83d3>
  68f45e:	48 8b 95 b8 fb ff ff 	mov    -0x448(%rbp),%rdx
  68f465:	4c 8b b5 c8 fa ff ff 	mov    -0x538(%rbp),%r14
  68f46c:	4c 8b a5 a8 fb ff ff 	mov    -0x458(%rbp),%r12
  68f473:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  68f47a:	4c 8b 9d 60 fd ff ff 	mov    -0x2a0(%rbp),%r11
  68f481:	eb 04                	jmp    68f487 <step3d_t_mod_mp_step3d_t_tile_+0x8817>
  68f483:	4c 8d 72 01          	lea    0x1(%rdx),%r14
  68f487:	48 83 bd e0 fd ff ff 	cmpq   $0x8,-0x220(%rbp)
  68f48e:	08 
  68f48f:	0f 85 18 01 00 00    	jne    68f5ad <step3d_t_mod_mp_step3d_t_tile_+0x893d>
  68f495:	33 c0                	xor    %eax,%eax
  68f497:	33 c9                	xor    %ecx,%ecx
  68f499:	48 83 bd 80 fd ff ff 	cmpq   $0x0,-0x280(%rbp)
  68f4a0:	00 
  68f4a1:	0f 8e 8a 02 00 00    	jle    68f731 <step3d_t_mod_mp_step3d_t_tile_+0x8ac1>
  68f4a7:	48 0f af 95 c8 fb ff 	imul   -0x438(%rbp),%rdx
  68f4ae:	ff 
  68f4af:	4c 89 b5 c8 fa ff ff 	mov    %r14,-0x538(%rbp)
  68f4b6:	48 03 95 b0 fa ff ff 	add    -0x550(%rbp),%rdx
  68f4bd:	4c 8b 95 d8 fd ff ff 	mov    -0x228(%rbp),%r10
  68f4c4:	4c 8b a5 c8 fd ff ff 	mov    -0x238(%rbp),%r12
  68f4cb:	4c 8b b5 78 fd ff ff 	mov    -0x288(%rbp),%r14
  68f4d2:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  68f4d9:	44 3b bd b8 fd ff ff 	cmp    -0x248(%rbp),%r15d
  68f4e0:	0f 8c a8 00 00 00    	jl     68f58e <step3d_t_mod_mp_step3d_t_tile_+0x891e>
  68f4e6:	49 83 fb 04          	cmp    $0x4,%r11
  68f4ea:	0f 8c 25 16 00 00    	jl     690b15 <step3d_t_mod_mp_step3d_t_tile_+0x9ea5>
  68f4f0:	4c 8b ad 30 fe ff ff 	mov    -0x1d0(%rbp),%r13
  68f4f7:	45 33 c0             	xor    %r8d,%r8d
  68f4fa:	4c 8b bd 00 fd ff ff 	mov    -0x300(%rbp),%r15
  68f501:	49 8d 3c 0c          	lea    (%r12,%rcx,1),%rdi
  68f505:	48 89 d6             	mov    %rdx,%rsi
  68f508:	4d 8d 0c 0a          	lea    (%r10,%rcx,1),%r9
  68f50c:	4d 89 ee             	mov    %r13,%r14
  68f50f:	c4 01 7d 10 64 c1 08 	vmovupd 0x8(%r9,%r8,8),%ymm12
  68f516:	c5 7d 10 36          	vmovupd (%rsi),%ymm14
  68f51a:	c4 21 1d 5c 2c c7    	vsubpd (%rdi,%r8,8),%ymm12,%ymm13
  68f520:	c4 01 15 59 3c c7    	vmulpd (%r15,%r8,8),%ymm13,%ymm15
  68f526:	49 83 c0 04          	add    $0x4,%r8
  68f52a:	c4 41 0d 5c e7       	vsubpd %ymm15,%ymm14,%ymm12
  68f52f:	c5 7d 11 26          	vmovupd %ymm12,(%rsi)
  68f533:	48 83 c6 20          	add    $0x20,%rsi
  68f537:	4d 3b c6             	cmp    %r14,%r8
  68f53a:	72 d3                	jb     68f50f <step3d_t_mod_mp_step3d_t_tile_+0x889f>
  68f53c:	4c 8b b5 78 fd ff ff 	mov    -0x288(%rbp),%r14
  68f543:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  68f54a:	4d 3b eb             	cmp    %r11,%r13
  68f54d:	73 3f                	jae    68f58e <step3d_t_mod_mp_step3d_t_tile_+0x891e>
  68f54f:	4c 8b 8d 00 fd ff ff 	mov    -0x300(%rbp),%r9
  68f556:	4d 8d 04 0c          	lea    (%r12,%rcx,1),%r8
  68f55a:	49 8d 3c 0a          	lea    (%r10,%rcx,1),%rdi
  68f55e:	4a 8d 34 ea          	lea    (%rdx,%r13,8),%rsi
  68f562:	c4 21 7b 10 64 ef 08 	vmovsd 0x8(%rdi,%r13,8),%xmm12
  68f569:	c5 7b 10 36          	vmovsd (%rsi),%xmm14
  68f56d:	c4 01 1b 5c 2c e8    	vsubsd (%r8,%r13,8),%xmm12,%xmm13
  68f573:	c4 01 13 59 3c e9    	vmulsd (%r9,%r13,8),%xmm13,%xmm15
  68f579:	49 ff c5             	inc    %r13
  68f57c:	c4 41 0b 5c e7       	vsubsd %xmm15,%xmm14,%xmm12
  68f581:	c5 7b 11 26          	vmovsd %xmm12,(%rsi)
  68f585:	48 83 c6 08          	add    $0x8,%rsi
  68f589:	4d 3b eb             	cmp    %r11,%r13
  68f58c:	72 d4                	jb     68f562 <step3d_t_mod_mp_step3d_t_tile_+0x88f2>
  68f58e:	48 ff c0             	inc    %rax
  68f591:	49 03 d6             	add    %r14,%rdx
  68f594:	48 03 8d a0 fd ff ff 	add    -0x260(%rbp),%rcx
  68f59b:	48 3b 85 80 fd ff ff 	cmp    -0x280(%rbp),%rax
  68f5a2:	0f 82 31 ff ff ff    	jb     68f4d9 <step3d_t_mod_mp_step3d_t_tile_+0x8869>
  68f5a8:	e9 6f 01 00 00       	jmpq   68f71c <step3d_t_mod_mp_step3d_t_tile_+0x8aac>
  68f5ad:	33 c0                	xor    %eax,%eax
  68f5af:	33 c9                	xor    %ecx,%ecx
  68f5b1:	48 83 bd 80 fd ff ff 	cmpq   $0x0,-0x280(%rbp)
  68f5b8:	00 
  68f5b9:	0f 8e 72 01 00 00    	jle    68f731 <step3d_t_mod_mp_step3d_t_tile_+0x8ac1>
  68f5bf:	48 0f af 95 c8 fb ff 	imul   -0x438(%rbp),%rdx
  68f5c6:	ff 
  68f5c7:	4c 89 b5 c8 fa ff ff 	mov    %r14,-0x538(%rbp)
  68f5ce:	48 03 95 b8 fa ff ff 	add    -0x548(%rbp),%rdx
  68f5d5:	4c 8b b5 d8 fd ff ff 	mov    -0x228(%rbp),%r14
  68f5dc:	4c 8b bd c8 fd ff ff 	mov    -0x238(%rbp),%r15
  68f5e3:	4c 8b ad e0 fd ff ff 	mov    -0x220(%rbp),%r13
  68f5ea:	8b b5 c0 fd ff ff    	mov    -0x240(%rbp),%esi
  68f5f0:	3b b5 b8 fd ff ff    	cmp    -0x248(%rbp),%esi
  68f5f6:	0f 8c 02 01 00 00    	jl     68f6fe <step3d_t_mod_mp_step3d_t_tile_+0x8a8e>
  68f5fc:	4d 85 ed             	test   %r13,%r13
  68f5ff:	0f 84 2d 17 00 00    	je     690d32 <step3d_t_mod_mp_step3d_t_tile_+0xa0c2>
  68f605:	49 83 fb 04          	cmp    $0x4,%r11
  68f609:	0f 8c 23 17 00 00    	jl     690d32 <step3d_t_mod_mp_step3d_t_tile_+0xa0c2>
  68f60f:	4c 8b a5 30 fe ff ff 	mov    -0x1d0(%rbp),%r12
  68f616:	45 33 c9             	xor    %r9d,%r9d
  68f619:	48 89 d7             	mov    %rdx,%rdi
  68f61c:	4d 8d 04 0f          	lea    (%r15,%rcx,1),%r8
  68f620:	4c 8b bd 00 fd ff ff 	mov    -0x300(%rbp),%r15
  68f627:	49 8d 34 0e          	lea    (%r14,%rcx,1),%rsi
  68f62b:	4d 89 e6             	mov    %r12,%r14
  68f62e:	4f 8d 54 6d 00       	lea    0x0(%r13,%r13,2),%r10
  68f633:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  68f638:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  68f63f:	00 
  68f640:	c4 21 7d 10 6c ce 08 	vmovupd 0x8(%rsi,%r9,8),%ymm13
  68f647:	4e 8d 1c 6f          	lea    (%rdi,%r13,2),%r11
  68f64b:	c5 7b 10 3f          	vmovsd (%rdi),%xmm15
  68f64f:	c4 01 15 5c 34 c8    	vsubpd (%r8,%r9,8),%ymm13,%ymm14
  68f655:	c4 21 01 16 2c 2f    	vmovhpd (%rdi,%r13,1),%xmm15,%xmm13
  68f65b:	c4 01 0d 59 24 cf    	vmulpd (%r15,%r9,8),%ymm14,%ymm12
  68f661:	49 83 c1 04          	add    $0x4,%r9
  68f665:	c4 41 7b 10 33       	vmovsd (%r11),%xmm14
  68f66a:	c4 01 09 16 3c 2b    	vmovhpd (%r11,%r13,1),%xmm14,%xmm15
  68f670:	c4 43 15 18 ef 01    	vinsertf128 $0x1,%xmm15,%ymm13,%ymm13
  68f676:	c4 41 15 5c e4       	vsubpd %ymm12,%ymm13,%ymm12
  68f67b:	c4 43 7d 19 e5 01    	vextractf128 $0x1,%ymm12,%xmm13
  68f681:	c5 7b 11 27          	vmovsd %xmm12,(%rdi)
  68f685:	c4 41 79 17 64 3d 00 	vmovhpd %xmm12,0x0(%r13,%rdi,1)
  68f68c:	c4 41 7b 11 2b       	vmovsd %xmm13,(%r11)
  68f691:	c4 41 79 17 2c 3a    	vmovhpd %xmm13,(%r10,%rdi,1)
  68f697:	4a 8d 3c af          	lea    (%rdi,%r13,4),%rdi
  68f69b:	4d 3b ce             	cmp    %r14,%r9
  68f69e:	72 a0                	jb     68f640 <step3d_t_mod_mp_step3d_t_tile_+0x89d0>
  68f6a0:	4c 8b 9d 60 fd ff ff 	mov    -0x2a0(%rbp),%r11
  68f6a7:	4c 8b b5 d8 fd ff ff 	mov    -0x228(%rbp),%r14
  68f6ae:	4c 8b bd c8 fd ff ff 	mov    -0x238(%rbp),%r15
  68f6b5:	4c 89 ee             	mov    %r13,%rsi
  68f6b8:	49 0f af f4          	imul   %r12,%rsi
  68f6bc:	4d 3b e3             	cmp    %r11,%r12
  68f6bf:	73 3d                	jae    68f6fe <step3d_t_mod_mp_step3d_t_tile_+0x8a8e>
  68f6c1:	4c 8b 8d 00 fd ff ff 	mov    -0x300(%rbp),%r9
  68f6c8:	48 03 f2             	add    %rdx,%rsi
  68f6cb:	4d 8d 04 0f          	lea    (%r15,%rcx,1),%r8
  68f6cf:	49 8d 3c 0e          	lea    (%r14,%rcx,1),%rdi
  68f6d3:	c4 21 7b 10 64 e7 08 	vmovsd 0x8(%rdi,%r12,8),%xmm12
  68f6da:	c5 7b 10 36          	vmovsd (%rsi),%xmm14
  68f6de:	c4 01 1b 5c 2c e0    	vsubsd (%r8,%r12,8),%xmm12,%xmm13
  68f6e4:	c4 01 13 59 3c e1    	vmulsd (%r9,%r12,8),%xmm13,%xmm15
  68f6ea:	49 ff c4             	inc    %r12
  68f6ed:	c4 41 0b 5c e7       	vsubsd %xmm15,%xmm14,%xmm12
  68f6f2:	c5 7b 11 26          	vmovsd %xmm12,(%rsi)
  68f6f6:	49 03 f5             	add    %r13,%rsi
  68f6f9:	4d 3b e3             	cmp    %r11,%r12
  68f6fc:	72 d5                	jb     68f6d3 <step3d_t_mod_mp_step3d_t_tile_+0x8a63>
  68f6fe:	48 ff c0             	inc    %rax
  68f701:	48 03 8d a0 fd ff ff 	add    -0x260(%rbp),%rcx
  68f708:	48 03 95 78 fd ff ff 	add    -0x288(%rbp),%rdx
  68f70f:	48 3b 85 80 fd ff ff 	cmp    -0x280(%rbp),%rax
  68f716:	0f 82 ce fe ff ff    	jb     68f5ea <step3d_t_mod_mp_step3d_t_tile_+0x897a>
  68f71c:	4c 8b b5 c8 fa ff ff 	mov    -0x538(%rbp),%r14
  68f723:	4c 8b a5 a8 fb ff ff 	mov    -0x458(%rbp),%r12
  68f72a:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  68f731:	4c 89 f2             	mov    %r14,%rdx
  68f734:	4c 3b b5 e8 fb ff ff 	cmp    -0x418(%rbp),%r14
  68f73b:	0f 82 04 a9 ff ff    	jb     68a045 <step3d_t_mod_mp_step3d_t_tile_+0x33d5>
  68f741:	c5 7b 10 a5 d0 f8 ff 	vmovsd -0x730(%rbp),%xmm12
  68f748:	ff 
  68f749:	48 8b 8d b0 f9 ff ff 	mov    -0x650(%rbp),%rcx
  68f750:	8b b5 e0 f8 ff ff    	mov    -0x720(%rbp),%esi
  68f756:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  68f75d:	45 33 d2             	xor    %r10d,%r10d
  68f760:	83 bd 00 fc ff ff 00 	cmpl   $0x0,-0x400(%rbp)
  68f767:	0f 8e 4b 13 00 00    	jle    690ab8 <step3d_t_mod_mp_step3d_t_tile_+0x9e48>
  68f76d:	4c 8b 8d d8 f8 ff ff 	mov    -0x728(%rbp),%r9
  68f774:	48 8b 95 f8 fa ff ff 	mov    -0x508(%rbp),%rdx
  68f77b:	4c 8b 9d a0 fd ff ff 	mov    -0x260(%rbp),%r11
  68f782:	4d 89 d8             	mov    %r11,%r8
  68f785:	4c 8b b5 00 fd ff ff 	mov    -0x300(%rbp),%r14
  68f78c:	41 8b 3c 91          	mov    (%r9,%rdx,4),%edi
  68f790:	4c 8b a5 e8 f8 ff ff 	mov    -0x718(%rbp),%r12
  68f797:	48 89 8d b0 f9 ff ff 	mov    %rcx,-0x650(%rbp)
  68f79e:	89 b5 e0 f8 ff ff    	mov    %esi,-0x720(%rbp)
  68f7a4:	44 8d 4f ff          	lea    -0x1(%rdi),%r9d
  68f7a8:	48 63 ff             	movslq %edi,%rdi
  68f7ab:	4c 0f af df          	imul   %rdi,%r11
  68f7af:	49 63 d1             	movslq %r9d,%rdx
  68f7b2:	4c 8d 6f ff          	lea    -0x1(%rdi),%r13
  68f7b6:	4d 0f af c5          	imul   %r13,%r8
  68f7ba:	4c 89 ad e8 fa ff ff 	mov    %r13,-0x518(%rbp)
  68f7c1:	4f 8d 3c 06          	lea    (%r14,%r8,1),%r15
  68f7c5:	4c 8b b5 c8 fd ff ff 	mov    -0x238(%rbp),%r14
  68f7cc:	4f 8d 2c 04          	lea    (%r12,%r8,1),%r13
  68f7d0:	4c 89 bd 18 fb ff ff 	mov    %r15,-0x4e8(%rbp)
  68f7d7:	4d 03 c6             	add    %r14,%r8
  68f7da:	4c 89 ad 20 fb ff ff 	mov    %r13,-0x4e0(%rbp)
  68f7e1:	4c 8b ad f0 f8 ff ff 	mov    -0x710(%rbp),%r13
  68f7e8:	4f 8d 3c 1e          	lea    (%r14,%r11,1),%r15
  68f7ec:	4c 89 bd 88 fa ff ff 	mov    %r15,-0x578(%rbp)
  68f7f3:	4c 8b bd 78 fd ff ff 	mov    -0x288(%rbp),%r15
  68f7fa:	4c 0f af ff          	imul   %rdi,%r15
  68f7fe:	4c 03 bd 70 f9 ff ff 	add    -0x690(%rbp),%r15
  68f805:	4f 8d 74 1d 00       	lea    0x0(%r13,%r11,1),%r14
  68f80a:	4d 03 dc             	add    %r12,%r11
  68f80d:	4c 8b a5 68 f9 ff ff 	mov    -0x698(%rbp),%r12
  68f814:	4c 0f af e1          	imul   %rcx,%r12
  68f818:	4c 03 bd f8 f8 ff ff 	add    -0x708(%rbp),%r15
  68f81f:	4c 03 bd a8 f9 ff ff 	add    -0x658(%rbp),%r15
  68f826:	4d 03 fc             	add    %r12,%r15
  68f829:	4c 89 bd 88 fb ff ff 	mov    %r15,-0x478(%rbp)
  68f830:	4c 8b bd 00 f9 ff ff 	mov    -0x700(%rbp),%r15
  68f837:	4c 89 b5 10 fb ff ff 	mov    %r14,-0x4f0(%rbp)
  68f83e:	4c 8b b5 60 f9 ff ff 	mov    -0x6a0(%rbp),%r14
  68f845:	4c 0f af f1          	imul   %rcx,%r14
  68f849:	4c 89 9d 68 fb ff ff 	mov    %r11,-0x498(%rbp)
  68f850:	4d 03 fc             	add    %r12,%r15
  68f853:	4c 89 bd 90 fa ff ff 	mov    %r15,-0x570(%rbp)
  68f85a:	4c 8b bd 08 f9 ff ff 	mov    -0x6f8(%rbp),%r15
  68f861:	4c 8b 9d 48 f9 ff ff 	mov    -0x6b8(%rbp),%r11
  68f868:	4c 0f af d9          	imul   %rcx,%r11
  68f86c:	4c 8b ad 58 f9 ff ff 	mov    -0x6a8(%rbp),%r13
  68f873:	4d 03 fc             	add    %r12,%r15
  68f876:	4c 89 bd 98 fa ff ff 	mov    %r15,-0x568(%rbp)
  68f87d:	4c 8b bd 30 f9 ff ff 	mov    -0x6d0(%rbp),%r15
  68f884:	4c 0f af e9          	imul   %rcx,%r13
  68f888:	4c 89 85 90 fb ff ff 	mov    %r8,-0x470(%rbp)
  68f88f:	4d 03 fc             	add    %r12,%r15
  68f892:	4c 89 bd a0 fa ff ff 	mov    %r15,-0x560(%rbp)
  68f899:	4c 8b bd 40 f9 ff ff 	mov    -0x6c0(%rbp),%r15
  68f8a0:	48 89 bd 58 fc ff ff 	mov    %rdi,-0x3a8(%rbp)
  68f8a7:	48 89 95 28 fe ff ff 	mov    %rdx,-0x1d8(%rbp)
  68f8ae:	4c 89 a5 b8 f9 ff ff 	mov    %r12,-0x648(%rbp)
  68f8b5:	4d 03 fc             	add    %r12,%r15
  68f8b8:	4c 89 bd a8 fa ff ff 	mov    %r15,-0x558(%rbp)
  68f8bf:	4c 8d 7a ff          	lea    -0x1(%rdx),%r15
  68f8c3:	4c 89 bd 68 fd ff ff 	mov    %r15,-0x298(%rbp)
  68f8ca:	4c 8b bd 38 f9 ff ff 	mov    -0x6c8(%rbp),%r15
  68f8d1:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  68f8d8:	48 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%rdi
  68f8df:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  68f8e6:	4d 03 fe             	add    %r14,%r15
  68f8e9:	4c 89 bd f0 f9 ff ff 	mov    %r15,-0x610(%rbp)
  68f8f0:	4c 8b bd a0 f9 ff ff 	mov    -0x660(%rbp),%r15
  68f8f7:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  68f8fe:	4d 03 fe             	add    %r14,%r15
  68f901:	4c 89 bd f8 f9 ff ff 	mov    %r15,-0x608(%rbp)
  68f908:	4c 8b bd 98 f9 ff ff 	mov    -0x668(%rbp),%r15
  68f90f:	4d 03 fe             	add    %r14,%r15
  68f912:	4c 89 bd 18 fc ff ff 	mov    %r15,-0x3e8(%rbp)
  68f919:	4c 8b bd 50 f9 ff ff 	mov    -0x6b0(%rbp),%r15
  68f920:	4c 03 b5 90 f9 ff ff 	add    -0x670(%rbp),%r14
  68f927:	4c 89 b5 30 fc ff ff 	mov    %r14,-0x3d0(%rbp)
  68f92e:	4d 03 fb             	add    %r11,%r15
  68f931:	4c 89 bd 00 fa ff ff 	mov    %r15,-0x600(%rbp)
  68f938:	4c 8b bd 78 f9 ff ff 	mov    -0x688(%rbp),%r15
  68f93f:	4c 03 9d 80 f9 ff ff 	add    -0x680(%rbp),%r11
  68f946:	4c 89 9d 08 fa ff ff 	mov    %r11,-0x5f8(%rbp)
  68f94d:	4d 03 fd             	add    %r13,%r15
  68f950:	4c 03 ad 88 f9 ff ff 	add    -0x678(%rbp),%r13
  68f957:	4c 89 bd 20 fc ff ff 	mov    %r15,-0x3e0(%rbp)
  68f95e:	4c 89 ad 28 fc ff ff 	mov    %r13,-0x3d8(%rbp)
  68f965:	45 89 c4             	mov    %r8d,%r12d
  68f968:	41 8d 72 01          	lea    0x1(%r10),%esi
  68f96c:	44 3b c6             	cmp    %esi,%r8d
  68f96f:	44 0f 4d e6          	cmovge %esi,%r12d
  68f973:	4d 63 e4             	movslq %r12d,%r12
  68f976:	83 fe 02             	cmp    $0x2,%esi
  68f979:	0f 8e 61 02 00 00    	jle    68fbe0 <step3d_t_mod_mp_step3d_t_tile_+0x8f70>
  68f97f:	48 83 f8 08          	cmp    $0x8,%rax
  68f983:	0f 85 ee 00 00 00    	jne    68fa77 <step3d_t_mod_mp_step3d_t_tile_+0x8e07>
  68f989:	4c 8b ad a8 fd ff ff 	mov    -0x258(%rbp),%r13
  68f990:	45 33 e4             	xor    %r12d,%r12d
  68f993:	48 83 bd 58 fc ff ff 	cmpq   $0x0,-0x3a8(%rbp)
  68f99a:	00 
  68f99b:	0f 8e 1d 09 00 00    	jle    6902be <step3d_t_mod_mp_step3d_t_tile_+0x964e>
  68f9a1:	4d 63 da             	movslq %r10d,%r11
  68f9a4:	4c 0f af d9          	imul   %rcx,%r11
  68f9a8:	89 b5 d0 fb ff ff    	mov    %esi,-0x430(%rbp)
  68f9ae:	44 89 8d d8 fb ff ff 	mov    %r9d,-0x428(%rbp)
  68f9b5:	44 89 95 a0 fb ff ff 	mov    %r10d,-0x460(%rbp)
  68f9bc:	4c 03 9d a8 fa ff ff 	add    -0x558(%rbp),%r11
  68f9c3:	48 8b b5 58 fc ff ff 	mov    -0x3a8(%rbp),%rsi
  68f9ca:	4c 8b 8d a0 fd ff ff 	mov    -0x260(%rbp),%r9
  68f9d1:	4c 8b 95 78 fd ff ff 	mov    -0x288(%rbp),%r10
  68f9d8:	44 8b b5 b8 fd ff ff 	mov    -0x248(%rbp),%r14d
  68f9df:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  68f9e6:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  68f9ed:	45 3b fe             	cmp    %r14d,%r15d
  68f9f0:	7c 6e                	jl     68fa60 <step3d_t_mod_mp_step3d_t_tile_+0x8df0>
  68f9f2:	48 83 ff 04          	cmp    $0x4,%rdi
  68f9f6:	0f 8c 4f 11 00 00    	jl     690b4b <step3d_t_mod_mp_step3d_t_tile_+0x9edb>
  68f9fc:	49 89 d0             	mov    %rdx,%r8
  68f9ff:	33 c9                	xor    %ecx,%ecx
  68fa01:	4c 89 e8             	mov    %r13,%rax
  68fa04:	c4 c1 7d 10 04 cb    	vmovupd (%r11,%rcx,8),%ymm0
  68fa0a:	48 83 c1 04          	add    $0x4,%rcx
  68fa0e:	c5 fd 11 40 08       	vmovupd %ymm0,0x8(%rax)
  68fa13:	48 83 c0 20          	add    $0x20,%rax
  68fa17:	48 3b ca             	cmp    %rdx,%rcx
  68fa1a:	72 e8                	jb     68fa04 <step3d_t_mod_mp_step3d_t_tile_+0x8d94>
  68fa1c:	4a 8d 0c c5 00 00 00 	lea    0x0(,%r8,8),%rcx
  68fa23:	00 
  68fa24:	4c 3b c7             	cmp    %rdi,%r8
  68fa27:	73 24                	jae    68fa4d <step3d_t_mod_mp_step3d_t_tile_+0x8ddd>
  68fa29:	4b 8d 44 c5 00       	lea    0x0(%r13,%r8,8),%rax
  68fa2e:	4e 8b 3c 19          	mov    (%rcx,%r11,1),%r15
  68fa32:	49 ff c0             	inc    %r8
  68fa35:	4c 89 78 08          	mov    %r15,0x8(%rax)
  68fa39:	48 83 c0 08          	add    $0x8,%rax
  68fa3d:	48 83 c1 08          	add    $0x8,%rcx
  68fa41:	4c 3b c7             	cmp    %rdi,%r8
  68fa44:	72 e8                	jb     68fa2e <step3d_t_mod_mp_step3d_t_tile_+0x8dbe>
  68fa46:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  68fa4d:	49 ff c4             	inc    %r12
  68fa50:	4d 03 e9             	add    %r9,%r13
  68fa53:	4d 03 da             	add    %r10,%r11
  68fa56:	4c 3b e6             	cmp    %rsi,%r12
  68fa59:	72 92                	jb     68f9ed <step3d_t_mod_mp_step3d_t_tile_+0x8d7d>
  68fa5b:	e9 bd 10 00 00       	jmpq   690b1d <step3d_t_mod_mp_step3d_t_tile_+0x9ead>
  68fa60:	49 ff c4             	inc    %r12
  68fa63:	4d 03 e9             	add    %r9,%r13
  68fa66:	4d 03 da             	add    %r10,%r11
  68fa69:	4c 3b e6             	cmp    %rsi,%r12
  68fa6c:	0f 82 7b ff ff ff    	jb     68f9ed <step3d_t_mod_mp_step3d_t_tile_+0x8d7d>
  68fa72:	e9 dc 10 00 00       	jmpq   690b53 <step3d_t_mod_mp_step3d_t_tile_+0x9ee3>
  68fa77:	45 33 db             	xor    %r11d,%r11d
  68fa7a:	4c 8b ad a8 fd ff ff 	mov    -0x258(%rbp),%r13
  68fa81:	45 33 e4             	xor    %r12d,%r12d
  68fa84:	4c 89 ad c0 fa ff ff 	mov    %r13,-0x540(%rbp)
  68fa8b:	48 83 bd 58 fc ff ff 	cmpq   $0x0,-0x3a8(%rbp)
  68fa92:	00 
  68fa93:	0f 8e 25 08 00 00    	jle    6902be <step3d_t_mod_mp_step3d_t_tile_+0x964e>
  68fa99:	4d 63 f2             	movslq %r10d,%r14
  68fa9c:	4c 0f af f1          	imul   %rcx,%r14
  68faa0:	4c 8b ad 90 fa ff ff 	mov    -0x570(%rbp),%r13
  68faa7:	4c 8b bd 98 fa ff ff 	mov    -0x568(%rbp),%r15
  68faae:	44 89 95 a0 fb ff ff 	mov    %r10d,-0x460(%rbp)
  68fab5:	89 b5 d0 fb ff ff    	mov    %esi,-0x430(%rbp)
  68fabb:	4d 03 ee             	add    %r14,%r13
  68fabe:	4c 89 ad 28 fd ff ff 	mov    %r13,-0x2d8(%rbp)
  68fac5:	4d 03 fe             	add    %r14,%r15
  68fac8:	4c 03 b5 a0 fa ff ff 	add    -0x560(%rbp),%r14
  68facf:	4c 89 b5 20 fd ff ff 	mov    %r14,-0x2e0(%rbp)
  68fad6:	4c 89 bd 38 fd ff ff 	mov    %r15,-0x2c8(%rbp)
  68fadd:	44 89 8d d8 fb ff ff 	mov    %r9d,-0x428(%rbp)
  68fae4:	4d 89 e0             	mov    %r12,%r8
  68fae7:	4c 8b 95 c0 fa ff ff 	mov    -0x540(%rbp),%r10
  68faee:	4c 8b ad a0 fd ff ff 	mov    -0x260(%rbp),%r13
  68faf5:	44 8b b5 30 fd ff ff 	mov    -0x2d0(%rbp),%r14d
  68fafc:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  68fb03:	44 3b bd b8 fd ff ff 	cmp    -0x248(%rbp),%r15d
  68fb0a:	0f 8c ae 00 00 00    	jl     68fbbe <step3d_t_mod_mp_step3d_t_tile_+0x8f4e>
  68fb10:	be 01 00 00 00       	mov    $0x1,%esi
  68fb15:	33 d2                	xor    %edx,%edx
  68fb17:	33 c9                	xor    %ecx,%ecx
  68fb19:	45 85 f6             	test   %r14d,%r14d
  68fb1c:	74 4f                	je     68fb6d <step3d_t_mod_mp_step3d_t_tile_+0x8efd>
  68fb1e:	48 8b b5 28 fd ff ff 	mov    -0x2d8(%rbp),%rsi
  68fb25:	4d 89 d1             	mov    %r10,%r9
  68fb28:	48 8b bd 20 fd ff ff 	mov    -0x2e0(%rbp),%rdi
  68fb2f:	4c 8b b5 f8 fc ff ff 	mov    -0x308(%rbp),%r14
  68fb36:	49 03 f0             	add    %r8,%rsi
  68fb39:	49 03 f8             	add    %r8,%rdi
  68fb3c:	4c 8b 3c 4f          	mov    (%rdi,%rcx,2),%r15
  68fb40:	48 ff c2             	inc    %rdx
  68fb43:	4d 89 79 08          	mov    %r15,0x8(%r9)
  68fb47:	4c 8b 3c 4e          	mov    (%rsi,%rcx,2),%r15
  68fb4b:	48 03 c8             	add    %rax,%rcx
  68fb4e:	4d 89 79 10          	mov    %r15,0x10(%r9)
  68fb52:	49 83 c1 10          	add    $0x10,%r9
  68fb56:	49 3b d6             	cmp    %r14,%rdx
  68fb59:	72 e1                	jb     68fb3c <step3d_t_mod_mp_step3d_t_tile_+0x8ecc>
  68fb5b:	44 8b b5 30 fd ff ff 	mov    -0x2d0(%rbp),%r14d
  68fb62:	8d 74 12 01          	lea    0x1(%rdx,%rdx,1),%esi
  68fb66:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  68fb6d:	8d 56 ff             	lea    -0x1(%rsi),%edx
  68fb70:	3b 95 70 fd ff ff    	cmp    -0x290(%rbp),%edx
  68fb76:	73 24                	jae    68fb9c <step3d_t_mod_mp_step3d_t_tile_+0x8f2c>
  68fb78:	48 63 f6             	movslq %esi,%rsi
  68fb7b:	48 89 c1             	mov    %rax,%rcx
  68fb7e:	48 0f af ce          	imul   %rsi,%rcx
  68fb82:	48 03 8d 38 fd ff ff 	add    -0x2c8(%rbp),%rcx
  68fb89:	48 8b 95 a8 fd ff ff 	mov    -0x258(%rbp),%rdx
  68fb90:	4a 8b 3c 01          	mov    (%rcx,%r8,1),%rdi
  68fb94:	4c 8d 0c f2          	lea    (%rdx,%rsi,8),%r9
  68fb98:	4b 89 3c 21          	mov    %rdi,(%r9,%r12,1)
  68fb9c:	49 ff c3             	inc    %r11
  68fb9f:	4d 03 d5             	add    %r13,%r10
  68fba2:	4c 03 85 78 fd ff ff 	add    -0x288(%rbp),%r8
  68fba9:	4d 03 e5             	add    %r13,%r12
  68fbac:	4c 3b 9d 58 fc ff ff 	cmp    -0x3a8(%rbp),%r11
  68fbb3:	0f 82 4a ff ff ff    	jb     68fb03 <step3d_t_mod_mp_step3d_t_tile_+0x8e93>
  68fbb9:	e9 fd 0f 00 00       	jmpq   690bbb <step3d_t_mod_mp_step3d_t_tile_+0x9f4b>
  68fbbe:	49 ff c3             	inc    %r11
  68fbc1:	4d 03 d5             	add    %r13,%r10
  68fbc4:	4c 03 85 78 fd ff ff 	add    -0x288(%rbp),%r8
  68fbcb:	4d 03 e5             	add    %r13,%r12
  68fbce:	4c 3b 9d 58 fc ff ff 	cmp    -0x3a8(%rbp),%r11
  68fbd5:	0f 82 28 ff ff ff    	jb     68fb03 <step3d_t_mod_mp_step3d_t_tile_+0x8e93>
  68fbdb:	e9 10 10 00 00       	jmpq   690bf0 <step3d_t_mod_mp_step3d_t_tile_+0x9f80>
  68fbe0:	4c 8b ad 48 f7 ff ff 	mov    -0x8b8(%rbp),%r13
  68fbe7:	49 f7 dd             	neg    %r13
  68fbea:	4c 03 ad f8 fa ff ff 	add    -0x508(%rbp),%r13
  68fbf1:	4c 8b 9d 50 f7 ff ff 	mov    -0x8b0(%rbp),%r11
  68fbf8:	48 83 bd e0 f9 ff ff 	cmpq   $0x8,-0x620(%rbp)
  68fbff:	08 
  68fc00:	c4 81 1b 59 04 eb    	vmulsd (%r11,%r13,8),%xmm12,%xmm0
  68fc06:	c5 f9 57 0d 42 6b 23 	vxorpd 0x236b42(%rip),%xmm0,%xmm1        # 8c6750 <__STRLITPACK_219.115+0xa0>
  68fc0d:	00 
  68fc0e:	0f 85 68 01 00 00    	jne    68fd7c <step3d_t_mod_mp_step3d_t_tile_+0x910c>
  68fc14:	48 83 bd d8 f9 ff ff 	cmpq   $0x8,-0x628(%rbp)
  68fc1b:	08 
  68fc1c:	0f 85 5a 01 00 00    	jne    68fd7c <step3d_t_mod_mp_step3d_t_tile_+0x910c>
  68fc22:	45 33 ed             	xor    %r13d,%r13d
  68fc25:	4c 8b b5 d8 fd ff ff 	mov    -0x228(%rbp),%r14
  68fc2c:	45 33 db             	xor    %r11d,%r11d
  68fc2f:	48 83 bd e8 fa ff ff 	cmpq   $0x0,-0x518(%rbp)
  68fc36:	00 
  68fc37:	0f 8e 85 10 00 00    	jle    690cc2 <step3d_t_mod_mp_step3d_t_tile_+0xa052>
  68fc3d:	4c 0f af a5 e8 f9 ff 	imul   -0x618(%rbp),%r12
  68fc44:	ff 
  68fc45:	c4 e2 7d 19 c1       	vbroadcastsd %xmm1,%ymm0
  68fc4a:	44 89 8d d8 fb ff ff 	mov    %r9d,-0x428(%rbp)
  68fc51:	4c 03 a5 08 fa ff ff 	add    -0x5f8(%rbp),%r12
  68fc58:	4c 8b 85 f8 f9 ff ff 	mov    -0x608(%rbp),%r8
  68fc5f:	4c 8b 8d f0 f9 ff ff 	mov    -0x610(%rbp),%r9
  68fc66:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  68fc6d:	89 b5 d0 fb ff ff    	mov    %esi,-0x430(%rbp)
  68fc73:	44 89 95 a0 fb ff ff 	mov    %r10d,-0x460(%rbp)
  68fc7a:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  68fc81:	44 3b bd b8 fd ff ff 	cmp    -0x248(%rbp),%r15d
  68fc88:	0f 8c c4 00 00 00    	jl     68fd52 <step3d_t_mod_mp_step3d_t_tile_+0x90e2>
  68fc8e:	48 83 ff 04          	cmp    $0x4,%rdi
  68fc92:	0f 8c 22 10 00 00    	jl     690cba <step3d_t_mod_mp_step3d_t_tile_+0xa04a>
  68fc98:	4c 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%r10
  68fc9f:	33 d2                	xor    %edx,%edx
  68fca1:	4c 89 f1             	mov    %r14,%rcx
  68fca4:	4b 8d 04 19          	lea    (%r9,%r11,1),%rax
  68fca8:	4d 89 d7             	mov    %r10,%r15
  68fcab:	4b 8d 34 18          	lea    (%r8,%r11,1),%rsi
  68fcaf:	c5 fd 10 14 d6       	vmovupd (%rsi,%rdx,8),%ymm2
  68fcb4:	c5 ed 5c 1c d0       	vsubpd (%rax,%rdx,8),%ymm2,%ymm3
  68fcb9:	c5 b5 5e e3          	vdivpd %ymm3,%ymm9,%ymm4
  68fcbd:	c5 dd 59 e8          	vmulpd %ymm0,%ymm4,%ymm5
  68fcc1:	c4 c1 55 59 34 d4    	vmulpd (%r12,%rdx,8),%ymm5,%ymm6
  68fcc7:	48 83 c2 04          	add    $0x4,%rdx
  68fccb:	c5 fd 11 71 08       	vmovupd %ymm6,0x8(%rcx)
  68fcd0:	48 83 c1 20          	add    $0x20,%rcx
  68fcd4:	49 3b d7             	cmp    %r15,%rdx
  68fcd7:	72 d6                	jb     68fcaf <step3d_t_mod_mp_step3d_t_tile_+0x903f>
  68fcd9:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  68fce0:	4a 8d 34 d5 00 00 00 	lea    0x0(,%r10,8),%rsi
  68fce7:	00 
  68fce8:	4c 3b d7             	cmp    %rdi,%r10
  68fceb:	73 3b                	jae    68fd28 <step3d_t_mod_mp_step3d_t_tile_+0x90b8>
  68fced:	4b 8d 0c d6          	lea    (%r14,%r10,8),%rcx
  68fcf1:	4b 8d 14 19          	lea    (%r9,%r11,1),%rdx
  68fcf5:	4b 8d 04 18          	lea    (%r8,%r11,1),%rax
  68fcf9:	c4 a1 7b 10 14 d0    	vmovsd (%rax,%r10,8),%xmm2
  68fcff:	c4 a1 6b 5c 1c d2    	vsubsd (%rdx,%r10,8),%xmm2,%xmm3
  68fd05:	49 ff c2             	inc    %r10
  68fd08:	c5 a3 5e e3          	vdivsd %xmm3,%xmm11,%xmm4
  68fd0c:	c5 f3 59 ec          	vmulsd %xmm4,%xmm1,%xmm5
  68fd10:	c4 a1 53 59 34 26    	vmulsd (%rsi,%r12,1),%xmm5,%xmm6
  68fd16:	48 83 c6 08          	add    $0x8,%rsi
  68fd1a:	c5 fb 11 71 08       	vmovsd %xmm6,0x8(%rcx)
  68fd1f:	48 83 c1 08          	add    $0x8,%rcx
  68fd23:	4c 3b d7             	cmp    %rdi,%r10
  68fd26:	72 d1                	jb     68fcf9 <step3d_t_mod_mp_step3d_t_tile_+0x9089>
  68fd28:	49 ff c5             	inc    %r13
  68fd2b:	4c 03 b5 a0 fd ff ff 	add    -0x260(%rbp),%r14
  68fd32:	4c 03 9d e0 fa ff ff 	add    -0x520(%rbp),%r11
  68fd39:	4c 03 a5 d8 fa ff ff 	add    -0x528(%rbp),%r12
  68fd40:	4c 3b ad e8 fa ff ff 	cmp    -0x518(%rbp),%r13
  68fd47:	0f 82 34 ff ff ff    	jb     68fc81 <step3d_t_mod_mp_step3d_t_tile_+0x9011>
  68fd4d:	e9 d3 0e 00 00       	jmpq   690c25 <step3d_t_mod_mp_step3d_t_tile_+0x9fb5>
  68fd52:	49 ff c5             	inc    %r13
  68fd55:	4c 03 b5 a0 fd ff ff 	add    -0x260(%rbp),%r14
  68fd5c:	4c 03 9d e0 fa ff ff 	add    -0x520(%rbp),%r11
  68fd63:	4c 03 a5 d8 fa ff ff 	add    -0x528(%rbp),%r12
  68fd6a:	4c 3b ad e8 fa ff ff 	cmp    -0x518(%rbp),%r13
  68fd71:	0f 82 0a ff ff ff    	jb     68fc81 <step3d_t_mod_mp_step3d_t_tile_+0x9011>
  68fd77:	e9 16 02 00 00       	jmpq   68ff92 <step3d_t_mod_mp_step3d_t_tile_+0x9322>
  68fd7c:	45 33 db             	xor    %r11d,%r11d
  68fd7f:	4c 8b ad d8 fd ff ff 	mov    -0x228(%rbp),%r13
  68fd86:	45 33 f6             	xor    %r14d,%r14d
  68fd89:	48 83 bd e8 fa ff ff 	cmpq   $0x0,-0x518(%rbp)
  68fd90:	00 
  68fd91:	0f 8e 2b 0f 00 00    	jle    690cc2 <step3d_t_mod_mp_step3d_t_tile_+0xa052>
  68fd97:	4c 0f af a5 e8 f9 ff 	imul   -0x618(%rbp),%r12
  68fd9e:	ff 
  68fd9f:	c4 e2 7d 19 c1       	vbroadcastsd %xmm1,%ymm0
  68fda4:	44 89 8d d8 fb ff ff 	mov    %r9d,-0x428(%rbp)
  68fdab:	44 89 95 a0 fb ff ff 	mov    %r10d,-0x460(%rbp)
  68fdb2:	4c 03 a5 00 fa ff ff 	add    -0x600(%rbp),%r12
  68fdb9:	4c 8b 8d d8 f9 ff ff 	mov    -0x628(%rbp),%r9
  68fdc0:	4c 8b 95 e0 f9 ff ff 	mov    -0x620(%rbp),%r10
  68fdc7:	89 b5 d0 fb ff ff    	mov    %esi,-0x430(%rbp)
  68fdcd:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  68fdd4:	8b 85 c0 fd ff ff    	mov    -0x240(%rbp),%eax
  68fdda:	3b 85 b8 fd ff ff    	cmp    -0x248(%rbp),%eax
  68fde0:	0f 8c 87 01 00 00    	jl     68ff6d <step3d_t_mod_mp_step3d_t_tile_+0x92fd>
  68fde6:	48 83 ff 04          	cmp    $0x4,%rdi
  68fdea:	0f 8c 3a 0f 00 00    	jl     690d2a <step3d_t_mod_mp_step3d_t_tile_+0xa0ba>
  68fdf0:	48 8b 85 18 fc ff ff 	mov    -0x3e8(%rbp),%rax
  68fdf7:	33 f6                	xor    %esi,%esi
  68fdf9:	48 8b 8d 30 fc ff ff 	mov    -0x3d0(%rbp),%rcx
  68fe00:	4c 8b bd 30 fe ff ff 	mov    -0x1d0(%rbp),%r15
  68fe07:	4a 8d 14 30          	lea    (%rax,%r14,1),%rdx
  68fe0b:	33 c0                	xor    %eax,%eax
  68fe0d:	49 03 ce             	add    %r14,%rcx
  68fe10:	4c 89 ef             	mov    %r13,%rdi
  68fe13:	45 33 c0             	xor    %r8d,%r8d
  68fe16:	4c 89 ad 38 fc ff ff 	mov    %r13,-0x3c8(%rbp)
  68fe1d:	4c 89 9d 40 fc ff ff 	mov    %r11,-0x3c0(%rbp)
  68fe24:	4d 89 fb             	mov    %r15,%r11
  68fe27:	48 83 c6 04          	add    $0x4,%rsi
  68fe2b:	4e 8d 2c 02          	lea    (%rdx,%r8,1),%r13
  68fe2f:	c4 c1 7b 10 55 00    	vmovsd 0x0(%r13),%xmm2
  68fe35:	c4 81 69 16 64 15 00 	vmovhpd 0x0(%r13,%r10,1),%xmm2,%xmm4
  68fe3c:	4f 8d 6c 55 00       	lea    0x0(%r13,%r10,2),%r13
  68fe41:	c4 c1 7b 10 5d 00    	vmovsd 0x0(%r13),%xmm3
  68fe47:	c4 81 61 16 6c 15 00 	vmovhpd 0x0(%r13,%r10,1),%xmm3,%xmm5
  68fe4e:	4e 8d 2c 01          	lea    (%rcx,%r8,1),%r13
  68fe52:	c4 c1 7b 10 75 00    	vmovsd 0x0(%r13),%xmm6
  68fe58:	4f 8d 04 90          	lea    (%r8,%r10,4),%r8
  68fe5c:	c4 01 49 16 44 15 00 	vmovhpd 0x0(%r13,%r10,1),%xmm6,%xmm8
  68fe63:	4f 8d 6c 55 00       	lea    0x0(%r13,%r10,2),%r13
  68fe68:	c4 c1 7b 10 7d 00    	vmovsd 0x0(%r13),%xmm7
  68fe6e:	c4 01 41 16 6c 15 00 	vmovhpd 0x0(%r13,%r10,1),%xmm7,%xmm13
  68fe75:	4d 8d 2c 04          	lea    (%r12,%rax,1),%r13
  68fe79:	4a 8d 04 88          	lea    (%rax,%r9,4),%rax
  68fe7d:	c4 63 5d 18 f5 01    	vinsertf128 $0x1,%xmm5,%ymm4,%ymm14
  68fe83:	c4 43 3d 18 fd 01    	vinsertf128 $0x1,%xmm13,%ymm8,%ymm15
  68fe89:	c4 c1 0d 5c d7       	vsubpd %ymm15,%ymm14,%ymm2
  68fe8e:	c4 c1 7b 10 65 00    	vmovsd 0x0(%r13),%xmm4
  68fe94:	c4 81 59 16 74 0d 00 	vmovhpd 0x0(%r13,%r9,1),%xmm4,%xmm6
  68fe9b:	c5 b5 5e da          	vdivpd %ymm2,%ymm9,%ymm3
  68fe9f:	4f 8d 6c 4d 00       	lea    0x0(%r13,%r9,2),%r13
  68fea4:	c4 c1 7b 10 6d 00    	vmovsd 0x0(%r13),%xmm5
  68feaa:	c4 81 51 16 7c 0d 00 	vmovhpd 0x0(%r13,%r9,1),%xmm5,%xmm7
  68feb1:	c5 65 59 c0          	vmulpd %ymm0,%ymm3,%ymm8
  68feb5:	c4 63 4d 18 ef 01    	vinsertf128 $0x1,%xmm7,%ymm6,%ymm13
  68febb:	c4 41 3d 59 f5       	vmulpd %ymm13,%ymm8,%ymm14
  68fec0:	c5 7d 11 77 08       	vmovupd %ymm14,0x8(%rdi)
  68fec5:	48 83 c7 20          	add    $0x20,%rdi
  68fec9:	49 3b f3             	cmp    %r11,%rsi
  68fecc:	0f 82 55 ff ff ff    	jb     68fe27 <step3d_t_mod_mp_step3d_t_tile_+0x91b7>
  68fed2:	4c 8b ad 38 fc ff ff 	mov    -0x3c8(%rbp),%r13
  68fed9:	4c 8b 9d 40 fc ff ff 	mov    -0x3c0(%rbp),%r11
  68fee0:	48 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%rdi
  68fee7:	4c 89 d1             	mov    %r10,%rcx
  68feea:	4c 89 ce             	mov    %r9,%rsi
  68feed:	49 0f af cf          	imul   %r15,%rcx
  68fef1:	49 0f af f7          	imul   %r15,%rsi
  68fef5:	4c 3b ff             	cmp    %rdi,%r15
  68fef8:	73 49                	jae    68ff43 <step3d_t_mod_mp_step3d_t_tile_+0x92d3>
  68fefa:	48 8b 85 30 fc ff ff 	mov    -0x3d0(%rbp),%rax
  68ff01:	4b 8d 54 fd 00       	lea    0x0(%r13,%r15,8),%rdx
  68ff06:	4c 8b 85 18 fc ff ff 	mov    -0x3e8(%rbp),%r8
  68ff0d:	49 03 c6             	add    %r14,%rax
  68ff10:	4d 03 c6             	add    %r14,%r8
  68ff13:	c4 a1 7b 10 14 01    	vmovsd (%rcx,%r8,1),%xmm2
  68ff19:	49 ff c7             	inc    %r15
  68ff1c:	c5 eb 5c 1c 01       	vsubsd (%rcx,%rax,1),%xmm2,%xmm3
  68ff21:	49 03 ca             	add    %r10,%rcx
  68ff24:	c5 a3 5e e3          	vdivsd %xmm3,%xmm11,%xmm4
  68ff28:	c5 f3 59 ec          	vmulsd %xmm4,%xmm1,%xmm5
  68ff2c:	c4 a1 53 59 34 26    	vmulsd (%rsi,%r12,1),%xmm5,%xmm6
  68ff32:	49 03 f1             	add    %r9,%rsi
  68ff35:	c5 fb 11 72 08       	vmovsd %xmm6,0x8(%rdx)
  68ff3a:	48 83 c2 08          	add    $0x8,%rdx
  68ff3e:	4c 3b ff             	cmp    %rdi,%r15
  68ff41:	72 d0                	jb     68ff13 <step3d_t_mod_mp_step3d_t_tile_+0x92a3>
  68ff43:	49 ff c3             	inc    %r11
  68ff46:	4c 03 ad a0 fd ff ff 	add    -0x260(%rbp),%r13
  68ff4d:	4c 03 b5 e0 fa ff ff 	add    -0x520(%rbp),%r14
  68ff54:	4c 03 a5 d8 fa ff ff 	add    -0x528(%rbp),%r12
  68ff5b:	4c 3b 9d e8 fa ff ff 	cmp    -0x518(%rbp),%r11
  68ff62:	0f 82 6c fe ff ff    	jb     68fdd4 <step3d_t_mod_mp_step3d_t_tile_+0x9164>
  68ff68:	e9 b8 0c 00 00       	jmpq   690c25 <step3d_t_mod_mp_step3d_t_tile_+0x9fb5>
  68ff6d:	49 ff c3             	inc    %r11
  68ff70:	4c 03 ad a0 fd ff ff 	add    -0x260(%rbp),%r13
  68ff77:	4c 03 b5 e0 fa ff ff 	add    -0x520(%rbp),%r14
  68ff7e:	4c 03 a5 d8 fa ff ff 	add    -0x528(%rbp),%r12
  68ff85:	4c 3b 9d e8 fa ff ff 	cmp    -0x518(%rbp),%r11
  68ff8c:	0f 82 42 fe ff ff    	jb     68fdd4 <step3d_t_mod_mp_step3d_t_tile_+0x9164>
  68ff92:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  68ff98:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  68ff9f:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  68ffa6:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  68ffad:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  68ffb4:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  68ffbb:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  68ffc2:	48 83 bd d0 f9 ff ff 	cmpq   $0x8,-0x630(%rbp)
  68ffc9:	08 
  68ffca:	0f 85 51 01 00 00    	jne    690121 <step3d_t_mod_mp_step3d_t_tile_+0x94b1>
  68ffd0:	45 33 db             	xor    %r11d,%r11d
  68ffd3:	48 83 bd 58 fc ff ff 	cmpq   $0x0,-0x3a8(%rbp)
  68ffda:	00 
  68ffdb:	0f 8e dd 02 00 00    	jle    6902be <step3d_t_mod_mp_step3d_t_tile_+0x964e>
  68ffe1:	44 89 8d d8 fb ff ff 	mov    %r9d,-0x428(%rbp)
  68ffe8:	44 89 95 a0 fb ff ff 	mov    %r10d,-0x460(%rbp)
  68ffef:	89 b5 d0 fb ff ff    	mov    %esi,-0x430(%rbp)
  68fff5:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  68fffc:	4c 8b 8d d8 fd ff ff 	mov    -0x228(%rbp),%r9
  690003:	4c 8b 95 00 fb ff ff 	mov    -0x500(%rbp),%r10
  69000a:	4c 8b a5 c8 fd ff ff 	mov    -0x238(%rbp),%r12
  690011:	4c 8b ad 10 fc ff ff 	mov    -0x3f0(%rbp),%r13
  690018:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  69001f:	44 3b bd b8 fd ff ff 	cmp    -0x248(%rbp),%r15d
  690026:	0f 8c b0 00 00 00    	jl     6900dc <step3d_t_mod_mp_step3d_t_tile_+0x946c>
  69002c:	48 83 ff 04          	cmp    $0x4,%rdi
  690030:	0f 8c 80 02 00 00    	jl     6902b6 <step3d_t_mod_mp_step3d_t_tile_+0x9646>
  690036:	4c 89 da             	mov    %r11,%rdx
  690039:	4c 89 e8             	mov    %r13,%rax
  69003c:	48 0f af 95 a0 fd ff 	imul   -0x260(%rbp),%rdx
  690043:	ff 
  690044:	49 0f af c3          	imul   %r11,%rax
  690048:	4c 8b b5 30 fe ff ff 	mov    -0x1d0(%rbp),%r14
  69004f:	45 33 c0             	xor    %r8d,%r8d
  690052:	48 03 85 20 fc ff ff 	add    -0x3e0(%rbp),%rax
  690059:	49 8d 34 14          	lea    (%r12,%rdx,1),%rsi
  69005d:	4d 89 f7             	mov    %r14,%r15
  690060:	49 8d 0c 12          	lea    (%r10,%rdx,1),%rcx
  690064:	49 03 d1             	add    %r9,%rdx
  690067:	c4 a1 7d 10 04 c0    	vmovupd (%rax,%r8,8),%ymm0
  69006d:	c4 a1 7d 5c 4c c2 08 	vsubpd 0x8(%rdx,%r8,8),%ymm0,%ymm1
  690074:	c4 a1 75 5c 14 c6    	vsubpd (%rsi,%r8,8),%ymm1,%ymm2
  69007a:	c4 a1 7d 11 54 c1 08 	vmovupd %ymm2,0x8(%rcx,%r8,8)
  690081:	49 83 c0 04          	add    $0x4,%r8
  690085:	4d 3b c7             	cmp    %r15,%r8
  690088:	72 dd                	jb     690067 <step3d_t_mod_mp_step3d_t_tile_+0x93f7>
  69008a:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  690091:	4c 3b f7             	cmp    %rdi,%r14
  690094:	73 46                	jae    6900dc <step3d_t_mod_mp_step3d_t_tile_+0x946c>
  690096:	4c 89 da             	mov    %r11,%rdx
  690099:	4c 89 e8             	mov    %r13,%rax
  69009c:	48 0f af 95 a0 fd ff 	imul   -0x260(%rbp),%rdx
  6900a3:	ff 
  6900a4:	49 0f af c3          	imul   %r11,%rax
  6900a8:	48 03 85 20 fc ff ff 	add    -0x3e0(%rbp),%rax
  6900af:	49 8d 34 14          	lea    (%r12,%rdx,1),%rsi
  6900b3:	49 8d 0c 12          	lea    (%r10,%rdx,1),%rcx
  6900b7:	49 03 d1             	add    %r9,%rdx
  6900ba:	c4 a1 7b 10 04 f0    	vmovsd (%rax,%r14,8),%xmm0
  6900c0:	c4 a1 7b 5c 4c f2 08 	vsubsd 0x8(%rdx,%r14,8),%xmm0,%xmm1
  6900c7:	c4 a1 73 5c 14 f6    	vsubsd (%rsi,%r14,8),%xmm1,%xmm2
  6900cd:	c4 a1 7b 11 54 f1 08 	vmovsd %xmm2,0x8(%rcx,%r14,8)
  6900d4:	49 ff c6             	inc    %r14
  6900d7:	4c 3b f7             	cmp    %rdi,%r14
  6900da:	72 de                	jb     6900ba <step3d_t_mod_mp_step3d_t_tile_+0x944a>
  6900dc:	49 ff c3             	inc    %r11
  6900df:	4c 3b 9d 58 fc ff ff 	cmp    -0x3a8(%rbp),%r11
  6900e6:	0f 82 33 ff ff ff    	jb     69001f <step3d_t_mod_mp_step3d_t_tile_+0x93af>
  6900ec:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  6900f2:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  6900f9:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  690100:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  690107:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  69010e:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  690115:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  69011c:	e9 5e f8 ff ff       	jmpq   68f97f <step3d_t_mod_mp_step3d_t_tile_+0x8d0f>
  690121:	45 33 db             	xor    %r11d,%r11d
  690124:	48 83 bd 58 fc ff ff 	cmpq   $0x0,-0x3a8(%rbp)
  69012b:	00 
  69012c:	0f 8e 8c 01 00 00    	jle    6902be <step3d_t_mod_mp_step3d_t_tile_+0x964e>
  690132:	44 89 95 a0 fb ff ff 	mov    %r10d,-0x460(%rbp)
  690139:	89 b5 d0 fb ff ff    	mov    %esi,-0x430(%rbp)
  69013f:	44 89 8d d8 fb ff ff 	mov    %r9d,-0x428(%rbp)
  690146:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  69014d:	4c 8b a5 00 fb ff ff 	mov    -0x500(%rbp),%r12
  690154:	4c 8b b5 c8 fd ff ff 	mov    -0x238(%rbp),%r14
  69015b:	4c 8b 95 d0 f9 ff ff 	mov    -0x630(%rbp),%r10
  690162:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  690169:	44 3b bd b8 fd ff ff 	cmp    -0x248(%rbp),%r15d
  690170:	0f 8c fb 00 00 00    	jl     690271 <step3d_t_mod_mp_step3d_t_tile_+0x9601>
  690176:	48 83 ff 04          	cmp    $0x4,%rdi
  69017a:	0f 8c 8d 09 00 00    	jl     690b0d <step3d_t_mod_mp_step3d_t_tile_+0x9e9d>
  690180:	4c 89 da             	mov    %r11,%rdx
  690183:	4c 89 d8             	mov    %r11,%rax
  690186:	48 0f af 95 a0 fd ff 	imul   -0x260(%rbp),%rdx
  69018d:	ff 
  69018e:	48 0f af 85 10 fc ff 	imul   -0x3f0(%rbp),%rax
  690195:	ff 
  690196:	45 33 c0             	xor    %r8d,%r8d
  690199:	49 8d 34 16          	lea    (%r14,%rdx,1),%rsi
  69019d:	4c 8b 8d 30 fe ff ff 	mov    -0x1d0(%rbp),%r9
  6901a4:	49 8d 0c 14          	lea    (%r12,%rdx,1),%rcx
  6901a8:	48 03 95 d8 fd ff ff 	add    -0x228(%rbp),%rdx
  6901af:	45 33 ed             	xor    %r13d,%r13d
  6901b2:	48 03 85 28 fc ff ff 	add    -0x3d8(%rbp),%rax
  6901b9:	4d 89 ce             	mov    %r9,%r14
  6901bc:	0f 1f 40 00          	nopl   0x0(%rax)
  6901c0:	4e 8d 3c 28          	lea    (%rax,%r13,1),%r15
  6901c4:	c4 c1 7b 10 07       	vmovsd (%r15),%xmm0
  6901c9:	4f 8d 6c 95 00       	lea    0x0(%r13,%r10,4),%r13
  6901ce:	c4 81 79 16 14 17    	vmovhpd (%r15,%r10,1),%xmm0,%xmm2
  6901d4:	4f 8d 3c 57          	lea    (%r15,%r10,2),%r15
  6901d8:	c4 c1 7b 10 0f       	vmovsd (%r15),%xmm1
  6901dd:	c4 81 71 16 1c 17    	vmovhpd (%r15,%r10,1),%xmm1,%xmm3
  6901e3:	c4 e3 6d 18 e3 01    	vinsertf128 $0x1,%xmm3,%ymm2,%ymm4
  6901e9:	c4 a1 5d 5c 6c c2 08 	vsubpd 0x8(%rdx,%r8,8),%ymm4,%ymm5
  6901f0:	c4 a1 55 5c 34 c6    	vsubpd (%rsi,%r8,8),%ymm5,%ymm6
  6901f6:	c4 a1 7d 11 74 c1 08 	vmovupd %ymm6,0x8(%rcx,%r8,8)
  6901fd:	49 83 c0 04          	add    $0x4,%r8
  690201:	4d 3b c6             	cmp    %r14,%r8
  690204:	72 ba                	jb     6901c0 <step3d_t_mod_mp_step3d_t_tile_+0x9550>
  690206:	4c 8b b5 c8 fd ff ff 	mov    -0x238(%rbp),%r14
  69020d:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  690214:	4d 89 d0             	mov    %r10,%r8
  690217:	4d 0f af c1          	imul   %r9,%r8
  69021b:	4c 3b cf             	cmp    %rdi,%r9
  69021e:	73 51                	jae    690271 <step3d_t_mod_mp_step3d_t_tile_+0x9601>
  690220:	4c 89 da             	mov    %r11,%rdx
  690223:	4c 89 d8             	mov    %r11,%rax
  690226:	48 0f af 95 a0 fd ff 	imul   -0x260(%rbp),%rdx
  69022d:	ff 
  69022e:	48 0f af 85 10 fc ff 	imul   -0x3f0(%rbp),%rax
  690235:	ff 
  690236:	48 03 85 28 fc ff ff 	add    -0x3d8(%rbp),%rax
  69023d:	49 8d 34 16          	lea    (%r14,%rdx,1),%rsi
  690241:	49 8d 0c 14          	lea    (%r12,%rdx,1),%rcx
  690245:	48 03 95 d8 fd ff ff 	add    -0x228(%rbp),%rdx
  69024c:	c4 c1 7b 10 04 00    	vmovsd (%r8,%rax,1),%xmm0
  690252:	4d 03 c2             	add    %r10,%r8
  690255:	c4 a1 7b 5c 4c ca 08 	vsubsd 0x8(%rdx,%r9,8),%xmm0,%xmm1
  69025c:	c4 a1 73 5c 14 ce    	vsubsd (%rsi,%r9,8),%xmm1,%xmm2
  690262:	c4 a1 7b 11 54 c9 08 	vmovsd %xmm2,0x8(%rcx,%r9,8)
  690269:	49 ff c1             	inc    %r9
  69026c:	4c 3b cf             	cmp    %rdi,%r9
  69026f:	72 db                	jb     69024c <step3d_t_mod_mp_step3d_t_tile_+0x95dc>
  690271:	49 ff c3             	inc    %r11
  690274:	4c 3b 9d 58 fc ff ff 	cmp    -0x3a8(%rbp),%r11
  69027b:	0f 82 e8 fe ff ff    	jb     690169 <step3d_t_mod_mp_step3d_t_tile_+0x94f9>
  690281:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  690287:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  69028e:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  690295:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  69029c:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  6902a3:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  6902aa:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  6902b1:	e9 c9 f6 ff ff       	jmpq   68f97f <step3d_t_mod_mp_step3d_t_tile_+0x8d0f>
  6902b6:	45 33 f6             	xor    %r14d,%r14d
  6902b9:	e9 d3 fd ff ff       	jmpq   690091 <step3d_t_mod_mp_step3d_t_tile_+0x9421>
  6902be:	44 8b 9d c0 fd ff ff 	mov    -0x240(%rbp),%r11d
  6902c5:	44 3b 9d b8 fd ff ff 	cmp    -0x248(%rbp),%r11d
  6902cc:	0f 8c b4 00 00 00    	jl     690386 <step3d_t_mod_mp_step3d_t_tile_+0x9716>
  6902d2:	48 83 ff 04          	cmp    $0x4,%rdi
  6902d6:	0f 8c 29 08 00 00    	jl     690b05 <step3d_t_mod_mp_step3d_t_tile_+0x9e95>
  6902dc:	4c 8b 85 d8 fd ff ff 	mov    -0x228(%rbp),%r8
  6902e3:	49 89 d4             	mov    %rdx,%r12
  6902e6:	4c 8b ad 00 fb ff ff 	mov    -0x500(%rbp),%r13
  6902ed:	45 33 db             	xor    %r11d,%r11d
  6902f0:	4c 8b b5 a8 fd ff ff 	mov    -0x258(%rbp),%r14
  6902f7:	4c 8b bd b0 fd ff ff 	mov    -0x250(%rbp),%r15
  6902fe:	c4 81 35 5e 4c dd 08 	vdivpd 0x8(%r13,%r11,8),%ymm9,%ymm1
  690305:	c4 81 75 59 44 d8 08 	vmulpd 0x8(%r8,%r11,8),%ymm1,%ymm0
  69030c:	c4 81 75 59 54 de 08 	vmulpd 0x8(%r14,%r11,8),%ymm1,%ymm2
  690313:	c4 81 7d 11 44 df 08 	vmovupd %ymm0,0x8(%r15,%r11,8)
  69031a:	c4 81 7d 11 54 de 08 	vmovupd %ymm2,0x8(%r14,%r11,8)
  690321:	49 83 c3 04          	add    $0x4,%r11
  690325:	4c 3b da             	cmp    %rdx,%r11
  690328:	72 d4                	jb     6902fe <step3d_t_mod_mp_step3d_t_tile_+0x968e>
  69032a:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  690331:	4c 3b e7             	cmp    %rdi,%r12
  690334:	0f 83 42 08 00 00    	jae    690b7c <step3d_t_mod_mp_step3d_t_tile_+0x9f0c>
  69033a:	4c 8b 9d d8 fd ff ff 	mov    -0x228(%rbp),%r11
  690341:	4c 8b ad 00 fb ff ff 	mov    -0x500(%rbp),%r13
  690348:	4c 8b b5 a8 fd ff ff 	mov    -0x258(%rbp),%r14
  69034f:	4c 8b bd b0 fd ff ff 	mov    -0x250(%rbp),%r15
  690356:	c4 81 23 5e 4c e5 08 	vdivsd 0x8(%r13,%r12,8),%xmm11,%xmm1
  69035d:	c4 81 73 59 44 e3 08 	vmulsd 0x8(%r11,%r12,8),%xmm1,%xmm0
  690364:	c4 81 73 59 54 e6 08 	vmulsd 0x8(%r14,%r12,8),%xmm1,%xmm2
  69036b:	c4 81 7b 11 44 e7 08 	vmovsd %xmm0,0x8(%r15,%r12,8)
  690372:	c4 81 7b 11 54 e6 08 	vmovsd %xmm2,0x8(%r14,%r12,8)
  690379:	49 ff c4             	inc    %r12
  69037c:	4c 3b e7             	cmp    %rdi,%r12
  69037f:	72 d5                	jb     690356 <step3d_t_mod_mp_step3d_t_tile_+0x96e6>
  690381:	e9 f6 07 00 00       	jmpq   690b7c <step3d_t_mod_mp_step3d_t_tile_+0x9f0c>
  690386:	48 83 bd 28 fe ff ff 	cmpq   $0x2,-0x1d8(%rbp)
  69038d:	02 
  69038e:	0f 8c cb 03 00 00    	jl     69075f <step3d_t_mod_mp_step3d_t_tile_+0x9aef>
  690394:	41 bb 01 00 00 00    	mov    $0x1,%r11d
  69039a:	48 83 bd 68 fd ff ff 	cmpq   $0x1,-0x298(%rbp)
  6903a1:	01 
  6903a2:	0f 86 b7 03 00 00    	jbe    69075f <step3d_t_mod_mp_step3d_t_tile_+0x9aef>
  6903a8:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  6903af:	89 b5 d0 fb ff ff    	mov    %esi,-0x430(%rbp)
  6903b5:	44 89 8d d8 fb ff ff 	mov    %r9d,-0x428(%rbp)
  6903bc:	44 89 95 a0 fb ff ff 	mov    %r10d,-0x460(%rbp)
  6903c3:	48 8b 85 f0 fa ff ff 	mov    -0x510(%rbp),%rax
  6903ca:	48 8b 8d 88 fd ff ff 	mov    -0x278(%rbp),%rcx
  6903d1:	49 ff c3             	inc    %r11
  6903d4:	4c 3b 9d 68 fd ff ff 	cmp    -0x298(%rbp),%r11
  6903db:	0f 83 47 03 00 00    	jae    690728 <step3d_t_mod_mp_step3d_t_tile_+0x9ab8>
  6903e1:	8b 95 c0 fd ff ff    	mov    -0x240(%rbp),%edx
  6903e7:	3b 95 b8 fd ff ff    	cmp    -0x248(%rbp),%edx
  6903ed:	7c e2                	jl     6903d1 <step3d_t_mod_mp_step3d_t_tile_+0x9761>
  6903ef:	48 83 ff 04          	cmp    $0x4,%rdi
  6903f3:	0f 8c f6 06 00 00    	jl     690aef <step3d_t_mod_mp_step3d_t_tile_+0x9e7f>
  6903f9:	4d 89 de             	mov    %r11,%r14
  6903fc:	45 33 ff             	xor    %r15d,%r15d
  6903ff:	4c 0f af b5 a0 fd ff 	imul   -0x260(%rbp),%r14
  690406:	ff 
  690407:	4c 8b 95 90 fd ff ff 	mov    -0x270(%rbp),%r10
  69040e:	4e 8d 2c 30          	lea    (%rax,%r14,1),%r13
  690412:	4c 8b 8d 98 fd ff ff 	mov    -0x268(%rbp),%r9
  690419:	4c 8b 85 b0 fd ff ff 	mov    -0x250(%rbp),%r8
  690420:	48 8b b5 a8 fd ff ff 	mov    -0x258(%rbp),%rsi
  690427:	4f 8d 24 32          	lea    (%r10,%r14,1),%r12
  69042b:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  690432:	4e 8d 14 31          	lea    (%rcx,%r14,1),%r10
  690436:	48 89 d1             	mov    %rdx,%rcx
  690439:	4d 03 ce             	add    %r14,%r9
  69043c:	4d 03 c6             	add    %r14,%r8
  69043f:	49 03 f6             	add    %r14,%rsi
  690442:	4c 03 b5 d8 fd ff ff 	add    -0x228(%rbp),%r14
  690449:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  690450:	c4 81 7d 10 64 fe 08 	vmovupd 0x8(%r14,%r15,8),%ymm4
  690457:	c4 81 7d 10 44 f9 10 	vmovupd 0x10(%r9,%r15,8),%ymm0
  69045e:	c4 81 7d 10 6c fc 10 	vmovupd 0x10(%r12,%r15,8),%ymm5
  690465:	c4 81 5d 59 4c f8 08 	vmulpd 0x8(%r8,%r15,8),%ymm4,%ymm1
  69046c:	c4 a1 5d 59 74 fe 08 	vmulpd 0x8(%rsi,%r15,8),%ymm4,%ymm6
  690473:	c5 fd 5c d1          	vsubpd %ymm1,%ymm0,%ymm2
  690477:	c5 55 5c c6          	vsubpd %ymm6,%ymm5,%ymm8
  69047b:	c5 b5 5e fa          	vdivpd %ymm2,%ymm9,%ymm7
  69047f:	c4 81 45 59 5c fd 10 	vmulpd 0x10(%r13,%r15,8),%ymm7,%ymm3
  690486:	c4 41 45 59 e8       	vmulpd %ymm8,%ymm7,%ymm13
  69048b:	c4 81 7d 11 5c fa 10 	vmovupd %ymm3,0x10(%r10,%r15,8)
  690492:	c4 01 7d 11 6c fc 10 	vmovupd %ymm13,0x10(%r12,%r15,8)
  690499:	49 83 c7 04          	add    $0x4,%r15
  69049d:	4c 3b f9             	cmp    %rcx,%r15
  6904a0:	72 ae                	jb     690450 <step3d_t_mod_mp_step3d_t_tile_+0x97e0>
  6904a2:	48 8b 8d 88 fd ff ff 	mov    -0x278(%rbp),%rcx
  6904a9:	48 3b d7             	cmp    %rdi,%rdx
  6904ac:	0f 83 9e 00 00 00    	jae    690550 <step3d_t_mod_mp_step3d_t_tile_+0x98e0>
  6904b2:	4d 89 dc             	mov    %r11,%r12
  6904b5:	4c 0f af a5 a0 fd ff 	imul   -0x260(%rbp),%r12
  6904bc:	ff 
  6904bd:	4c 8b 85 90 fd ff ff 	mov    -0x270(%rbp),%r8
  6904c4:	4e 8d 14 20          	lea    (%rax,%r12,1),%r10
  6904c8:	48 8b b5 98 fd ff ff 	mov    -0x268(%rbp),%rsi
  6904cf:	4c 8b b5 b0 fd ff ff 	mov    -0x250(%rbp),%r14
  6904d6:	4c 8b ad a8 fd ff ff 	mov    -0x258(%rbp),%r13
  6904dd:	4f 8d 0c 20          	lea    (%r8,%r12,1),%r9
  6904e1:	4e 8d 04 21          	lea    (%rcx,%r12,1),%r8
  6904e5:	49 03 f4             	add    %r12,%rsi
  6904e8:	4d 03 f4             	add    %r12,%r14
  6904eb:	4d 03 ec             	add    %r12,%r13
  6904ee:	4c 03 a5 d8 fd ff ff 	add    -0x228(%rbp),%r12
  6904f5:	0f 1f 40 00          	nopl   0x0(%rax)
  6904f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  690500:	c4 c1 7b 10 64 d4 08 	vmovsd 0x8(%r12,%rdx,8),%xmm4
  690507:	c4 c1 5b 59 4c d6 08 	vmulsd 0x8(%r14,%rdx,8),%xmm4,%xmm1
  69050e:	c4 c1 5b 59 74 d5 08 	vmulsd 0x8(%r13,%rdx,8),%xmm4,%xmm6
  690515:	c5 fb 10 44 d6 10    	vmovsd 0x10(%rsi,%rdx,8),%xmm0
  69051b:	c4 c1 7b 10 6c d1 10 	vmovsd 0x10(%r9,%rdx,8),%xmm5
  690522:	c5 fb 5c d1          	vsubsd %xmm1,%xmm0,%xmm2
  690526:	c5 53 5c c6          	vsubsd %xmm6,%xmm5,%xmm8
  69052a:	c5 a3 5e fa          	vdivsd %xmm2,%xmm11,%xmm7
  69052e:	c4 c1 43 59 5c d2 10 	vmulsd 0x10(%r10,%rdx,8),%xmm7,%xmm3
  690535:	c4 41 43 59 e8       	vmulsd %xmm8,%xmm7,%xmm13
  69053a:	c4 c1 7b 11 5c d0 10 	vmovsd %xmm3,0x10(%r8,%rdx,8)
  690541:	c4 41 7b 11 6c d1 10 	vmovsd %xmm13,0x10(%r9,%rdx,8)
  690548:	48 ff c2             	inc    %rdx
  69054b:	48 3b d7             	cmp    %rdi,%rdx
  69054e:	72 b0                	jb     690500 <step3d_t_mod_mp_step3d_t_tile_+0x9890>
  690550:	49 ff c3             	inc    %r11
  690553:	4c 3b 9d 68 fd ff ff 	cmp    -0x298(%rbp),%r11
  69055a:	0f 82 81 fe ff ff    	jb     6903e1 <step3d_t_mod_mp_step3d_t_tile_+0x9771>
  690560:	48 89 85 f0 fa ff ff 	mov    %rax,-0x510(%rbp)
  690567:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  69056d:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  690574:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  69057b:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  690582:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  690589:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  690590:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  690597:	48 83 ff 04          	cmp    $0x4,%rdi
  69059b:	0f 8c 46 05 00 00    	jl     690ae7 <step3d_t_mod_mp_step3d_t_tile_+0x9e77>
  6905a1:	4d 63 fa             	movslq %r10d,%r15
  6905a4:	45 33 ed             	xor    %r13d,%r13d
  6905a7:	4c 0f af f9          	imul   %rcx,%r15
  6905ab:	89 b5 d0 fb ff ff    	mov    %esi,-0x430(%rbp)
  6905b1:	49 89 d3             	mov    %rdx,%r11
  6905b4:	44 89 8d d8 fb ff ff 	mov    %r9d,-0x428(%rbp)
  6905bb:	45 33 e4             	xor    %r12d,%r12d
  6905be:	44 89 95 a0 fb ff ff 	mov    %r10d,-0x460(%rbp)
  6905c5:	4c 8d 34 40          	lea    (%rax,%rax,2),%r14
  6905c9:	4c 03 bd 88 fb ff ff 	add    -0x478(%rbp),%r15
  6905d0:	48 8b b5 68 fb ff ff 	mov    -0x498(%rbp),%rsi
  6905d7:	48 8b bd 10 fb ff ff 	mov    -0x4f0(%rbp),%rdi
  6905de:	4c 8b 85 90 fb ff ff 	mov    -0x470(%rbp),%r8
  6905e5:	4c 8b 8d 20 fb ff ff 	mov    -0x4e0(%rbp),%r9
  6905ec:	4c 8b 95 18 fb ff ff 	mov    -0x4e8(%rbp),%r10
  6905f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  6905f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  6905ff:	00 
  690600:	c4 81 7d 10 14 e8    	vmovupd (%r8,%r13,8),%ymm2
  690606:	4b 8d 0c 3c          	lea    (%r12,%r15,1),%rcx
  69060a:	c4 a1 7d 10 04 ee    	vmovupd (%rsi,%r13,8),%ymm0
  690610:	c4 a1 7d 10 1c ef    	vmovupd (%rdi,%r13,8),%ymm3
  690616:	c4 81 6d 59 0c e9    	vmulpd (%r9,%r13,8),%ymm2,%ymm1
  69061c:	c4 81 6d 59 24 ea    	vmulpd (%r10,%r13,8),%ymm2,%ymm4
  690622:	c5 fd 5c e9          	vsubpd %ymm1,%ymm0,%ymm5
  690626:	c5 e5 5c f4          	vsubpd %ymm4,%ymm3,%ymm6
  69062a:	c5 d5 5e fe          	vdivpd %ymm6,%ymm5,%ymm7
  69062e:	4d 8d 24 84          	lea    (%r12,%rax,4),%r12
  690632:	c4 a1 7d 11 3c ee    	vmovupd %ymm7,(%rsi,%r13,8)
  690638:	49 83 c5 04          	add    $0x4,%r13
  69063c:	4c 3b ea             	cmp    %rdx,%r13
  69063f:	c4 c3 7d 19 f8 01    	vextractf128 $0x1,%ymm7,%xmm8
  690645:	c5 fb 11 39          	vmovsd %xmm7,(%rcx)
  690649:	c5 f9 17 3c 08       	vmovhpd %xmm7,(%rax,%rcx,1)
  69064e:	c5 7b 11 04 41       	vmovsd %xmm8,(%rcx,%rax,2)
  690653:	c4 41 79 17 04 0e    	vmovhpd %xmm8,(%r14,%rcx,1)
  690659:	72 a5                	jb     690600 <step3d_t_mod_mp_step3d_t_tile_+0x9990>
  69065b:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  690661:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  690668:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  69066f:	48 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%rdi
  690676:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  69067d:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  690684:	49 89 c4             	mov    %rax,%r12
  690687:	4d 0f af e3          	imul   %r11,%r12
  69068b:	4c 3b df             	cmp    %rdi,%r11
  69068e:	0f 83 cb 00 00 00    	jae    69075f <step3d_t_mod_mp_step3d_t_tile_+0x9aef>
  690694:	4d 63 ea             	movslq %r10d,%r13
  690697:	4c 0f af e9          	imul   %rcx,%r13
  69069b:	4c 03 ad 88 fb ff ff 	add    -0x478(%rbp),%r13
  6906a2:	48 8b 95 68 fb ff ff 	mov    -0x498(%rbp),%rdx
  6906a9:	48 8b 8d 10 fb ff ff 	mov    -0x4f0(%rbp),%rcx
  6906b0:	4c 8b 85 90 fb ff ff 	mov    -0x470(%rbp),%r8
  6906b7:	4c 8b b5 20 fb ff ff 	mov    -0x4e0(%rbp),%r14
  6906be:	4c 8b bd 18 fb ff ff 	mov    -0x4e8(%rbp),%r15
  6906c5:	0f 1f 40 00          	nopl   0x0(%rax)
  6906c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  6906d0:	c4 81 7b 10 14 d8    	vmovsd (%r8,%r11,8),%xmm2
  6906d6:	c4 81 6b 59 0c de    	vmulsd (%r14,%r11,8),%xmm2,%xmm1
  6906dc:	c4 81 6b 59 24 df    	vmulsd (%r15,%r11,8),%xmm2,%xmm4
  6906e2:	c4 a1 7b 10 04 da    	vmovsd (%rdx,%r11,8),%xmm0
  6906e8:	c4 a1 7b 10 1c d9    	vmovsd (%rcx,%r11,8),%xmm3
  6906ee:	c5 fb 5c e9          	vsubsd %xmm1,%xmm0,%xmm5
  6906f2:	c5 e3 5c f4          	vsubsd %xmm4,%xmm3,%xmm6
  6906f6:	c5 d3 5e fe          	vdivsd %xmm6,%xmm5,%xmm7
  6906fa:	c4 a1 7b 11 3c da    	vmovsd %xmm7,(%rdx,%r11,8)
  690700:	49 ff c3             	inc    %r11
  690703:	c4 81 7b 11 3c 2c    	vmovsd %xmm7,(%r12,%r13,1)
  690709:	4c 03 e0             	add    %rax,%r12
  69070c:	4c 3b df             	cmp    %rdi,%r11
  69070f:	72 bf                	jb     6906d0 <step3d_t_mod_mp_step3d_t_tile_+0x9a60>
  690711:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  690718:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  69071f:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  690726:	eb 37                	jmp    69075f <step3d_t_mod_mp_step3d_t_tile_+0x9aef>
  690728:	48 89 85 f0 fa ff ff 	mov    %rax,-0x510(%rbp)
  69072f:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  690735:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  69073c:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  690743:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  69074a:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  690751:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  690758:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  69075f:	45 33 e4             	xor    %r12d,%r12d
  690762:	45 33 ed             	xor    %r13d,%r13d
  690765:	45 33 db             	xor    %r11d,%r11d
  690768:	45 85 c9             	test   %r9d,%r9d
  69076b:	0f 8e 2b 03 00 00    	jle    690a9c <step3d_t_mod_mp_step3d_t_tile_+0x9e2c>
  690771:	4c 8b b5 a0 fd ff ff 	mov    -0x260(%rbp),%r14
  690778:	4c 8b bd 28 fe ff ff 	mov    -0x1d8(%rbp),%r15
  69077f:	4d 0f af f7          	imul   %r15,%r14
  690783:	4c 8d 85 48 fd ff ff 	lea    -0x2b8(%rbp),%r8
  69078a:	4d 89 18             	mov    %r11,(%r8)
  69078d:	4c 8b 9d 00 fd ff ff 	mov    -0x300(%rbp),%r11
  690794:	4d 63 d2             	movslq %r10d,%r10
  690797:	4c 0f af d1          	imul   %rcx,%r10
  69079b:	89 b5 d0 fb ff ff    	mov    %esi,-0x430(%rbp)
  6907a1:	4d 03 de             	add    %r14,%r11
  6907a4:	48 8d b5 40 fd ff ff 	lea    -0x2c0(%rbp),%rsi
  6907ab:	4c 89 1e             	mov    %r11,(%rsi)
  6907ae:	4c 8b 9d e8 f8 ff ff 	mov    -0x718(%rbp),%r11
  6907b5:	48 8b 36             	mov    (%rsi),%rsi
  6907b8:	44 89 8d d8 fb ff ff 	mov    %r9d,-0x428(%rbp)
  6907bf:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  6907c6:	4d 03 de             	add    %r14,%r11
  6907c9:	4c 03 b5 a8 fd ff ff 	add    -0x258(%rbp),%r14
  6907d0:	48 8d 85 80 f4 ff ff 	lea    -0xb80(%rbp),%rax
  6907d7:	4c 89 30             	mov    %r14,(%rax)
  6907da:	4c 8b b5 78 fd ff ff 	mov    -0x288(%rbp),%r14
  6907e1:	4d 0f af f7          	imul   %r15,%r14
  6907e5:	4c 8d 8d 78 f4 ff ff 	lea    -0xb88(%rbp),%r9
  6907ec:	4d 89 19             	mov    %r11,(%r9)
  6907ef:	4c 8b bd d0 f7 ff ff 	mov    -0x830(%rbp),%r15
  6907f6:	4c 8b 9d b8 f9 ff ff 	mov    -0x648(%rbp),%r11
  6907fd:	48 8b 08             	mov    (%rax),%rcx
  690800:	49 8b 11             	mov    (%r9),%rdx
  690803:	4d 03 fb             	add    %r11,%r15
  690806:	4d 03 fa             	add    %r10,%r15
  690809:	4d 03 fe             	add    %r14,%r15
  69080c:	4c 89 bd 18 fd ff ff 	mov    %r15,-0x2e8(%rbp)
  690813:	4c 8b bd f0 f7 ff ff 	mov    -0x810(%rbp),%r15
  69081a:	4d 03 df             	add    %r15,%r11
  69081d:	4d 03 d3             	add    %r11,%r10
  690820:	4d 03 f2             	add    %r10,%r14
  690823:	4d 8b 18             	mov    (%r8),%r11
  690826:	4c 89 b5 08 fd ff ff 	mov    %r14,-0x2f8(%rbp)
  69082d:	48 83 bd e0 fd ff ff 	cmpq   $0x8,-0x220(%rbp)
  690834:	08 
  690835:	0f 85 c1 00 00 00    	jne    6908fc <step3d_t_mod_mp_step3d_t_tile_+0x9c8c>
  69083b:	8b 85 b8 fd ff ff    	mov    -0x248(%rbp),%eax
  690841:	3b 85 c0 fd ff ff    	cmp    -0x240(%rbp),%eax
  690847:	0f 8f 08 02 00 00    	jg     690a55 <step3d_t_mod_mp_step3d_t_tile_+0x9de5>
  69084d:	48 83 ff 04          	cmp    $0x4,%rdi
  690851:	0f 8c 9f 02 00 00    	jl     690af6 <step3d_t_mod_mp_step3d_t_tile_+0x9e86>
  690857:	4c 8b b5 08 fd ff ff 	mov    -0x2f8(%rbp),%r14
  69085e:	45 33 d2             	xor    %r10d,%r10d
  690861:	4c 8b bd 30 fe ff ff 	mov    -0x1d0(%rbp),%r15
  690868:	4e 8d 0c 2e          	lea    (%rsi,%r13,1),%r9
  69086c:	4c 89 ff             	mov    %r15,%rdi
  69086f:	4e 8d 04 2a          	lea    (%rdx,%r13,1),%r8
  690873:	4a 8d 04 29          	lea    (%rcx,%r13,1),%rax
  690877:	4d 03 f3             	add    %r11,%r14
  69087a:	c4 81 7d 10 04 d1    	vmovupd (%r9,%r10,8),%ymm0
  690880:	c4 81 7d 10 0c d0    	vmovupd (%r8,%r10,8),%ymm1
  690886:	c4 a1 7d 59 54 d0 08 	vmulpd 0x8(%rax,%r10,8),%ymm0,%ymm2
  69088d:	c5 f5 5c da          	vsubpd %ymm2,%ymm1,%ymm3
  690891:	c4 81 7d 11 1c d0    	vmovupd %ymm3,(%r8,%r10,8)
  690897:	c4 81 7d 11 1c d6    	vmovupd %ymm3,(%r14,%r10,8)
  69089d:	49 83 c2 04          	add    $0x4,%r10
  6908a1:	4c 3b d7             	cmp    %rdi,%r10
  6908a4:	72 d4                	jb     69087a <step3d_t_mod_mp_step3d_t_tile_+0x9c0a>
  6908a6:	48 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%rdi
  6908ad:	4c 3b ff             	cmp    %rdi,%r15
  6908b0:	0f 83 9f 01 00 00    	jae    690a55 <step3d_t_mod_mp_step3d_t_tile_+0x9de5>
  6908b6:	48 8b 85 08 fd ff ff 	mov    -0x2f8(%rbp),%rax
  6908bd:	4e 8d 14 2e          	lea    (%rsi,%r13,1),%r10
  6908c1:	4e 8d 0c 2a          	lea    (%rdx,%r13,1),%r9
  6908c5:	4e 8d 04 29          	lea    (%rcx,%r13,1),%r8
  6908c9:	49 03 c3             	add    %r11,%rax
  6908cc:	c4 81 7b 10 04 fa    	vmovsd (%r10,%r15,8),%xmm0
  6908d2:	c4 81 7b 59 54 f8 08 	vmulsd 0x8(%r8,%r15,8),%xmm0,%xmm2
  6908d9:	c4 81 7b 10 0c f9    	vmovsd (%r9,%r15,8),%xmm1
  6908df:	c5 f3 5c da          	vsubsd %xmm2,%xmm1,%xmm3
  6908e3:	c4 81 7b 11 1c f9    	vmovsd %xmm3,(%r9,%r15,8)
  6908e9:	c4 a1 7b 11 1c f8    	vmovsd %xmm3,(%rax,%r15,8)
  6908ef:	49 ff c7             	inc    %r15
  6908f2:	4c 3b ff             	cmp    %rdi,%r15
  6908f5:	72 d5                	jb     6908cc <step3d_t_mod_mp_step3d_t_tile_+0x9c5c>
  6908f7:	e9 59 01 00 00       	jmpq   690a55 <step3d_t_mod_mp_step3d_t_tile_+0x9de5>
  6908fc:	8b 85 b8 fd ff ff    	mov    -0x248(%rbp),%eax
  690902:	3b 85 c0 fd ff ff    	cmp    -0x240(%rbp),%eax
  690908:	0f 8f 47 01 00 00    	jg     690a55 <step3d_t_mod_mp_step3d_t_tile_+0x9de5>
  69090e:	48 83 ff 04          	cmp    $0x4,%rdi
  690912:	0f 8c e6 01 00 00    	jl     690afe <step3d_t_mod_mp_step3d_t_tile_+0x9e8e>
  690918:	4c 8b bd 18 fd ff ff 	mov    -0x2e8(%rbp),%r15
  69091f:	45 33 f6             	xor    %r14d,%r14d
  690922:	4e 8d 14 2e          	lea    (%rsi,%r13,1),%r10
  690926:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
  69092d:	4e 8d 0c 2a          	lea    (%rdx,%r13,1),%r9
  690931:	4c 89 9d 48 fd ff ff 	mov    %r11,-0x2b8(%rbp)
  690938:	4d 03 fb             	add    %r11,%r15
  69093b:	4c 89 bd 10 fd ff ff 	mov    %r15,-0x2f0(%rbp)
  690942:	4e 8d 04 29          	lea    (%rcx,%r13,1),%r8
  690946:	4c 8b bd e0 fd ff ff 	mov    -0x220(%rbp),%r15
  69094d:	4c 89 a5 58 fd ff ff 	mov    %r12,-0x2a8(%rbp)
  690954:	4c 89 ad 50 fd ff ff 	mov    %r13,-0x2b0(%rbp)
  69095b:	49 89 c5             	mov    %rax,%r13
  69095e:	4d 89 f3             	mov    %r14,%r11
  690961:	4f 8d 3c 7f          	lea    (%r15,%r15,2),%r15
  690965:	4c 89 ff             	mov    %r15,%rdi
  690968:	4c 8b a5 10 fd ff ff 	mov    -0x2f0(%rbp),%r12
  69096f:	4c 8b bd e0 fd ff ff 	mov    -0x220(%rbp),%r15
  690976:	0f 1f 00             	nopl   (%rax)
  690979:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  690980:	c4 81 7d 10 04 f2    	vmovupd (%r10,%r14,8),%ymm0
  690986:	4b 8d 34 23          	lea    (%r11,%r12,1),%rsi
  69098a:	c4 81 7d 10 0c f1    	vmovupd (%r9,%r14,8),%ymm1
  690990:	c4 81 7d 59 54 f0 08 	vmulpd 0x8(%r8,%r14,8),%ymm0,%ymm2
  690997:	c5 f5 5c da          	vsubpd %ymm2,%ymm1,%ymm3
  69099b:	4f 8d 1c bb          	lea    (%r11,%r15,4),%r11
  69099f:	c4 81 7d 11 1c f1    	vmovupd %ymm3,(%r9,%r14,8)
  6909a5:	49 83 c6 04          	add    $0x4,%r14
  6909a9:	4d 3b f5             	cmp    %r13,%r14
  6909ac:	c4 e3 7d 19 dc 01    	vextractf128 $0x1,%ymm3,%xmm4
  6909b2:	c5 fb 11 1e          	vmovsd %xmm3,(%rsi)
  6909b6:	c4 c1 79 17 1c 37    	vmovhpd %xmm3,(%r15,%rsi,1)
  6909bc:	c4 a1 7b 11 24 7e    	vmovsd %xmm4,(%rsi,%r15,2)
  6909c2:	c5 f9 17 24 37       	vmovhpd %xmm4,(%rdi,%rsi,1)
  6909c7:	72 b7                	jb     690980 <step3d_t_mod_mp_step3d_t_tile_+0x9d10>
  6909c9:	48 8b b5 40 fd ff ff 	mov    -0x2c0(%rbp),%rsi
  6909d0:	4c 8b 9d 48 fd ff ff 	mov    -0x2b8(%rbp),%r11
  6909d7:	4c 8b ad 50 fd ff ff 	mov    -0x2b0(%rbp),%r13
  6909de:	4c 8b a5 58 fd ff ff 	mov    -0x2a8(%rbp),%r12
  6909e5:	48 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%rdi
  6909ec:	4c 8b 95 e0 fd ff ff 	mov    -0x220(%rbp),%r10
  6909f3:	4c 0f af d0          	imul   %rax,%r10
  6909f7:	48 3b c7             	cmp    %rdi,%rax
  6909fa:	73 59                	jae    690a55 <step3d_t_mod_mp_step3d_t_tile_+0x9de5>
  6909fc:	4c 8b bd 18 fd ff ff 	mov    -0x2e8(%rbp),%r15
  690a03:	4e 8d 0c 2e          	lea    (%rsi,%r13,1),%r9
  690a07:	4c 89 a5 58 fd ff ff 	mov    %r12,-0x2a8(%rbp)
  690a0e:	4e 8d 04 2a          	lea    (%rdx,%r13,1),%r8
  690a12:	4c 8b a5 e0 fd ff ff 	mov    -0x220(%rbp),%r12
  690a19:	4e 8d 34 29          	lea    (%rcx,%r13,1),%r14
  690a1d:	4d 03 fb             	add    %r11,%r15
  690a20:	c4 c1 7b 10 04 c1    	vmovsd (%r9,%rax,8),%xmm0
  690a26:	c4 c1 7b 59 54 c6 08 	vmulsd 0x8(%r14,%rax,8),%xmm0,%xmm2
  690a2d:	c4 c1 7b 10 0c c0    	vmovsd (%r8,%rax,8),%xmm1
  690a33:	c5 f3 5c da          	vsubsd %xmm2,%xmm1,%xmm3
  690a37:	c4 c1 7b 11 1c c0    	vmovsd %xmm3,(%r8,%rax,8)
  690a3d:	48 ff c0             	inc    %rax
  690a40:	c4 81 7b 11 1c 3a    	vmovsd %xmm3,(%r10,%r15,1)
  690a46:	4d 03 d4             	add    %r12,%r10
  690a49:	48 3b c7             	cmp    %rdi,%rax
  690a4c:	72 d2                	jb     690a20 <step3d_t_mod_mp_step3d_t_tile_+0x9db0>
  690a4e:	4c 8b a5 58 fd ff ff 	mov    -0x2a8(%rbp),%r12
  690a55:	49 ff c4             	inc    %r12
  690a58:	4c 03 ad 20 fe ff ff 	add    -0x1e0(%rbp),%r13
  690a5f:	4c 03 9d 18 fe ff ff 	add    -0x1e8(%rbp),%r11
  690a66:	4c 3b a5 28 fe ff ff 	cmp    -0x1d8(%rbp),%r12
  690a6d:	0f 82 ba fd ff ff    	jb     69082d <step3d_t_mod_mp_step3d_t_tile_+0x9bbd>
  690a73:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  690a79:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  690a80:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  690a87:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  690a8e:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  690a95:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  690a9c:	41 89 f2             	mov    %esi,%r10d
  690a9f:	3b b5 00 fc ff ff    	cmp    -0x400(%rbp),%esi
  690aa5:	0f 82 ba ee ff ff    	jb     68f965 <step3d_t_mod_mp_step3d_t_tile_+0x8cf5>
  690aab:	48 8b 8d b0 f9 ff ff 	mov    -0x650(%rbp),%rcx
  690ab2:	8b b5 e0 f8 ff ff    	mov    -0x720(%rbp),%esi
  690ab8:	ff c6                	inc    %esi
  690aba:	48 ff c1             	inc    %rcx
  690abd:	3b b5 c8 f9 ff ff    	cmp    -0x638(%rbp),%esi
  690ac3:	0f 82 33 8e ff ff    	jb     6898fc <step3d_t_mod_mp_step3d_t_tile_+0x2c8c>
  690ac9:	e9 37 86 ff ff       	jmpq   689105 <step3d_t_mod_mp_step3d_t_tile_+0x2495>
  690ace:	44 8b 9d c0 fd ff ff 	mov    -0x240(%rbp),%r11d
  690ad5:	44 3b 9d b8 fd ff ff 	cmp    -0x248(%rbp),%r11d
  690adc:	0f 8d b5 fa ff ff    	jge    690597 <step3d_t_mod_mp_step3d_t_tile_+0x9927>
  690ae2:	e9 78 fc ff ff       	jmpq   69075f <step3d_t_mod_mp_step3d_t_tile_+0x9aef>
  690ae7:	45 33 db             	xor    %r11d,%r11d
  690aea:	e9 95 fb ff ff       	jmpq   690684 <step3d_t_mod_mp_step3d_t_tile_+0x9a14>
  690aef:	33 d2                	xor    %edx,%edx
  690af1:	e9 b3 f9 ff ff       	jmpq   6904a9 <step3d_t_mod_mp_step3d_t_tile_+0x9839>
  690af6:	45 33 ff             	xor    %r15d,%r15d
  690af9:	e9 af fd ff ff       	jmpq   6908ad <step3d_t_mod_mp_step3d_t_tile_+0x9c3d>
  690afe:	33 c0                	xor    %eax,%eax
  690b00:	e9 e7 fe ff ff       	jmpq   6909ec <step3d_t_mod_mp_step3d_t_tile_+0x9d7c>
  690b05:	45 33 e4             	xor    %r12d,%r12d
  690b08:	e9 24 f8 ff ff       	jmpq   690331 <step3d_t_mod_mp_step3d_t_tile_+0x96c1>
  690b0d:	45 33 c9             	xor    %r9d,%r9d
  690b10:	e9 ff f6 ff ff       	jmpq   690214 <step3d_t_mod_mp_step3d_t_tile_+0x95a4>
  690b15:	45 33 ed             	xor    %r13d,%r13d
  690b18:	e9 2d ea ff ff       	jmpq   68f54a <step3d_t_mod_mp_step3d_t_tile_+0x88da>
  690b1d:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  690b23:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  690b2a:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  690b31:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  690b38:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  690b3f:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  690b46:	e9 87 f7 ff ff       	jmpq   6902d2 <step3d_t_mod_mp_step3d_t_tile_+0x9662>
  690b4b:	45 33 c0             	xor    %r8d,%r8d
  690b4e:	e9 c9 ee ff ff       	jmpq   68fa1c <step3d_t_mod_mp_step3d_t_tile_+0x8dac>
  690b53:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  690b59:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  690b60:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  690b67:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  690b6e:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  690b75:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  690b7c:	45 33 db             	xor    %r11d,%r11d
  690b7f:	48 83 bd 28 fe ff ff 	cmpq   $0x2,-0x1d8(%rbp)
  690b86:	02 
  690b87:	0f 8c 41 ff ff ff    	jl     690ace <step3d_t_mod_mp_step3d_t_tile_+0x9e5e>
  690b8d:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  690b94:	89 b5 d0 fb ff ff    	mov    %esi,-0x430(%rbp)
  690b9a:	44 89 8d d8 fb ff ff 	mov    %r9d,-0x428(%rbp)
  690ba1:	44 89 95 a0 fb ff ff 	mov    %r10d,-0x460(%rbp)
  690ba8:	48 8b 85 f0 fa ff ff 	mov    -0x510(%rbp),%rax
  690baf:	48 8b 8d 88 fd ff ff 	mov    -0x278(%rbp),%rcx
  690bb6:	e9 26 f8 ff ff       	jmpq   6903e1 <step3d_t_mod_mp_step3d_t_tile_+0x9771>
  690bbb:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  690bc1:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  690bc8:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  690bcf:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  690bd6:	48 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%rdi
  690bdd:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  690be4:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  690beb:	e9 e2 f6 ff ff       	jmpq   6902d2 <step3d_t_mod_mp_step3d_t_tile_+0x9662>
  690bf0:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  690bf6:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  690bfd:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  690c04:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  690c0b:	48 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%rdi
  690c12:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  690c19:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  690c20:	e9 57 ff ff ff       	jmpq   690b7c <step3d_t_mod_mp_step3d_t_tile_+0x9f0c>
  690c25:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  690c2b:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  690c32:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  690c39:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  690c40:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  690c47:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  690c4e:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  690c55:	48 83 ff 04          	cmp    $0x4,%rdi
  690c59:	7c 5a                	jl     690cb5 <step3d_t_mod_mp_step3d_t_tile_+0xa045>
  690c5b:	4c 8b ad 88 fa ff ff 	mov    -0x578(%rbp),%r13
  690c62:	49 89 d3             	mov    %rdx,%r11
  690c65:	4c 8b b5 c8 fd ff ff 	mov    -0x238(%rbp),%r14
  690c6c:	45 33 e4             	xor    %r12d,%r12d
  690c6f:	c4 01 7d 11 14 e6    	vmovupd %ymm10,(%r14,%r12,8)
  690c75:	c4 01 7d 11 54 e5 00 	vmovupd %ymm10,0x0(%r13,%r12,8)
  690c7c:	49 83 c4 04          	add    $0x4,%r12
  690c80:	4c 3b e2             	cmp    %rdx,%r12
  690c83:	72 ea                	jb     690c6f <step3d_t_mod_mp_step3d_t_tile_+0x9fff>
  690c85:	4c 3b df             	cmp    %rdi,%r11
  690c88:	0f 83 34 f3 ff ff    	jae    68ffc2 <step3d_t_mod_mp_step3d_t_tile_+0x9352>
  690c8e:	4c 8b a5 88 fa ff ff 	mov    -0x578(%rbp),%r12
  690c95:	45 33 f6             	xor    %r14d,%r14d
  690c98:	4c 8b ad c8 fd ff ff 	mov    -0x238(%rbp),%r13
  690c9f:	4f 89 74 dd 00       	mov    %r14,0x0(%r13,%r11,8)
  690ca4:	4f 89 34 dc          	mov    %r14,(%r12,%r11,8)
  690ca8:	49 ff c3             	inc    %r11
  690cab:	4c 3b df             	cmp    %rdi,%r11
  690cae:	72 ef                	jb     690c9f <step3d_t_mod_mp_step3d_t_tile_+0xa02f>
  690cb0:	e9 0d f3 ff ff       	jmpq   68ffc2 <step3d_t_mod_mp_step3d_t_tile_+0x9352>
  690cb5:	45 33 db             	xor    %r11d,%r11d
  690cb8:	eb cb                	jmp    690c85 <step3d_t_mod_mp_step3d_t_tile_+0xa015>
  690cba:	45 33 d2             	xor    %r10d,%r10d
  690cbd:	e9 1e f0 ff ff       	jmpq   68fce0 <step3d_t_mod_mp_step3d_t_tile_+0x9070>
  690cc2:	44 8b 9d c0 fd ff ff 	mov    -0x240(%rbp),%r11d
  690cc9:	44 3b 9d b8 fd ff ff 	cmp    -0x248(%rbp),%r11d
  690cd0:	7d 83                	jge    690c55 <step3d_t_mod_mp_step3d_t_tile_+0x9fe5>
  690cd2:	48 83 bd d0 f9 ff ff 	cmpq   $0x8,-0x630(%rbp)
  690cd9:	08 
  690cda:	75 27                	jne    690d03 <step3d_t_mod_mp_step3d_t_tile_+0xa093>
  690cdc:	48 83 bd 58 fc ff ff 	cmpq   $0x0,-0x3a8(%rbp)
  690ce3:	00 
  690ce4:	0f 8e d4 f5 ff ff    	jle    6902be <step3d_t_mod_mp_step3d_t_tile_+0x964e>
  690cea:	41 bb 01 00 00 00    	mov    $0x1,%r11d
  690cf0:	48 83 bd 58 fc ff ff 	cmpq   $0x1,-0x3a8(%rbp)
  690cf7:	01 
  690cf8:	0f 87 e3 f2 ff ff    	ja     68ffe1 <step3d_t_mod_mp_step3d_t_tile_+0x9371>
  690cfe:	e9 7c ec ff ff       	jmpq   68f97f <step3d_t_mod_mp_step3d_t_tile_+0x8d0f>
  690d03:	48 83 bd 58 fc ff ff 	cmpq   $0x0,-0x3a8(%rbp)
  690d0a:	00 
  690d0b:	0f 8e ad f5 ff ff    	jle    6902be <step3d_t_mod_mp_step3d_t_tile_+0x964e>
  690d11:	41 bb 01 00 00 00    	mov    $0x1,%r11d
  690d17:	48 83 bd 58 fc ff ff 	cmpq   $0x1,-0x3a8(%rbp)
  690d1e:	01 
  690d1f:	0f 87 0d f4 ff ff    	ja     690132 <step3d_t_mod_mp_step3d_t_tile_+0x94c2>
  690d25:	e9 55 ec ff ff       	jmpq   68f97f <step3d_t_mod_mp_step3d_t_tile_+0x8d0f>
  690d2a:	45 33 ff             	xor    %r15d,%r15d
  690d2d:	e9 b5 f1 ff ff       	jmpq   68fee7 <step3d_t_mod_mp_step3d_t_tile_+0x9277>
  690d32:	45 33 e4             	xor    %r12d,%r12d
  690d35:	e9 7b e9 ff ff       	jmpq   68f6b5 <step3d_t_mod_mp_step3d_t_tile_+0x8a45>
  690d3a:	33 ff                	xor    %edi,%edi
  690d3c:	e9 99 e1 ff ff       	jmpq   68eeda <step3d_t_mod_mp_step3d_t_tile_+0x826a>
  690d41:	45 33 c0             	xor    %r8d,%r8d
  690d44:	4d 85 db             	test   %r11,%r11
  690d47:	0f 85 6e df ff ff    	jne    68ecbb <step3d_t_mod_mp_step3d_t_tile_+0x804b>
  690d4d:	eb eb                	jmp    690d3a <step3d_t_mod_mp_step3d_t_tile_+0xa0ca>
  690d4f:	33 c0                	xor    %eax,%eax
  690d51:	e9 12 94 ff ff       	jmpq   68a168 <step3d_t_mod_mp_step3d_t_tile_+0x34f8>
  690d56:	48 8b 95 b8 fb ff ff 	mov    -0x448(%rbp),%rdx
  690d5d:	4c 8b a5 a8 fb ff ff 	mov    -0x458(%rbp),%r12
  690d64:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  690d6b:	e9 db e1 ff ff       	jmpq   68ef4b <step3d_t_mod_mp_step3d_t_tile_+0x82db>
  690d70:	8b 85 c0 fd ff ff    	mov    -0x240(%rbp),%eax
  690d76:	3b 85 b8 fd ff ff    	cmp    -0x248(%rbp),%eax
  690d7c:	0f 8d 7f dd ff ff    	jge    68eb01 <step3d_t_mod_mp_step3d_t_tile_+0x7e91>
  690d82:	e9 c4 e1 ff ff       	jmpq   68ef4b <step3d_t_mod_mp_step3d_t_tile_+0x82db>
  690d87:	48 8b 95 b8 fb ff ff 	mov    -0x448(%rbp),%rdx
  690d8e:	4c 8b a5 a8 fb ff ff 	mov    -0x458(%rbp),%r12
  690d95:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  690d9c:	4c 8b 9d 60 fd ff ff 	mov    -0x2a0(%rbp),%r11
  690da3:	e9 59 dd ff ff       	jmpq   68eb01 <step3d_t_mod_mp_step3d_t_tile_+0x7e91>
  690da8:	33 d2                	xor    %edx,%edx
  690daa:	e9 4b 97 ff ff       	jmpq   68a4fa <step3d_t_mod_mp_step3d_t_tile_+0x388a>
  690daf:	48 8b 95 b8 fb ff ff 	mov    -0x448(%rbp),%rdx
  690db6:	4c 8b a5 a8 fb ff ff 	mov    -0x458(%rbp),%r12
  690dbd:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  690dc4:	4c 8b 9d 60 fd ff ff 	mov    -0x2a0(%rbp),%r11
  690dcb:	e9 7b e1 ff ff       	jmpq   68ef4b <step3d_t_mod_mp_step3d_t_tile_+0x82db>
  690dd0:	45 33 d2             	xor    %r10d,%r10d
  690dd3:	e9 0f a9 ff ff       	jmpq   68b6e7 <step3d_t_mod_mp_step3d_t_tile_+0x4a77>
  690dd8:	33 c9                	xor    %ecx,%ecx
  690dda:	e9 9f b0 ff ff       	jmpq   68be7e <step3d_t_mod_mp_step3d_t_tile_+0x520e>
  690ddf:	45 33 f6             	xor    %r14d,%r14d
  690de2:	e9 f7 b7 ff ff       	jmpq   68c5de <step3d_t_mod_mp_step3d_t_tile_+0x596e>
  690de7:	48 83 bd 70 fd ff ff 	cmpq   $0x4,-0x290(%rbp)
  690dee:	04 
  690def:	7c 6d                	jl     690e5e <step3d_t_mod_mp_step3d_t_tile_+0xa1ee>
  690df1:	48 8b 8d 40 f8 ff ff 	mov    -0x7c0(%rbp),%rcx
  690df8:	33 ff                	xor    %edi,%edi
  690dfa:	48 8b 95 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdx
  690e01:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  690e08:	49 89 c0             	mov    %rax,%r8
  690e0b:	48 03 ce             	add    %rsi,%rcx
  690e0e:	48 03 d6             	add    %rsi,%rdx
  690e11:	c5 fd 10 04 fa       	vmovupd (%rdx,%rdi,8),%ymm0
  690e16:	c5 fd 11 04 f9       	vmovupd %ymm0,(%rcx,%rdi,8)
  690e1b:	48 83 c7 04          	add    $0x4,%rdi
  690e1f:	49 3b f8             	cmp    %r8,%rdi
  690e22:	72 ed                	jb     690e11 <step3d_t_mod_mp_step3d_t_tile_+0xa1a1>
  690e24:	48 3b 85 70 fd ff ff 	cmp    -0x290(%rbp),%rax
  690e2b:	0f 83 98 be ff ff    	jae    68ccc9 <step3d_t_mod_mp_step3d_t_tile_+0x6059>
  690e31:	48 8b 95 40 f8 ff ff 	mov    -0x7c0(%rbp),%rdx
  690e38:	48 8b bd 70 fd ff ff 	mov    -0x290(%rbp),%rdi
  690e3f:	48 03 d6             	add    %rsi,%rdx
  690e42:	48 03 b5 38 f8 ff ff 	add    -0x7c8(%rbp),%rsi
  690e49:	48 8b 0c c6          	mov    (%rsi,%rax,8),%rcx
  690e4d:	48 89 0c c2          	mov    %rcx,(%rdx,%rax,8)
  690e51:	48 ff c0             	inc    %rax
  690e54:	48 3b c7             	cmp    %rdi,%rax
  690e57:	72 f0                	jb     690e49 <step3d_t_mod_mp_step3d_t_tile_+0xa1d9>
  690e59:	e9 6b be ff ff       	jmpq   68ccc9 <step3d_t_mod_mp_step3d_t_tile_+0x6059>
  690e5e:	33 c0                	xor    %eax,%eax
  690e60:	eb c2                	jmp    690e24 <step3d_t_mod_mp_step3d_t_tile_+0xa1b4>
  690e62:	45 33 db             	xor    %r11d,%r11d
  690e65:	e9 aa bf ff ff       	jmpq   68ce14 <step3d_t_mod_mp_step3d_t_tile_+0x61a4>
  690e6a:	33 c0                	xor    %eax,%eax
  690e6c:	e9 32 c2 ff ff       	jmpq   68d0a3 <step3d_t_mod_mp_step3d_t_tile_+0x6433>
  690e71:	4c 8b b5 28 f5 ff ff 	mov    -0xad8(%rbp),%r14
  690e78:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  690e7c:	c4 81 7b 10 04 2e    	vmovsd (%r14,%r13,1),%xmm0
  690e82:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
  690e86:	0f 85 0f cc ff ff    	jne    68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  690e8c:	0f 8a 09 cc ff ff    	jp     68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  690e92:	4c 89 9d c0 f8 ff ff 	mov    %r11,-0x740(%rbp)
  690e99:	4c 8b 9d f0 f4 ff ff 	mov    -0xb10(%rbp),%r11
  690ea0:	4c 8b bd 88 fe ff ff 	mov    -0x178(%rbp),%r15
  690ea7:	4c 8b b5 70 fe ff ff 	mov    -0x190(%rbp),%r14
  690eae:	4c 8b ad f8 f4 ff ff 	mov    -0xb08(%rbp),%r13
  690eb5:	4d 0f af fb          	imul   %r11,%r15
  690eb9:	4d 0f af f5          	imul   %r13,%r14
  690ebd:	4d 03 fe             	add    %r14,%r15
  690ec0:	4d 89 ee             	mov    %r13,%r14
  690ec3:	4c 0f af f6          	imul   %rsi,%r14
  690ec7:	4c 0f af ad 70 ff ff 	imul   -0x90(%rbp),%r13
  690ece:	ff 
  690ecf:	c4 81 7b 10 04 27    	vmovsd (%r15,%r12,1),%xmm0
  690ed5:	4d 89 df             	mov    %r11,%r15
  690ed8:	4c 0f af bd a8 f8 ff 	imul   -0x758(%rbp),%r15
  690edf:	ff 
  690ee0:	4c 03 f8             	add    %rax,%r15
  690ee3:	4f 8d 5c dd 00       	lea    0x0(%r13,%r11,8),%r11
  690ee8:	4c 8b ad 80 f8 ff ff 	mov    -0x780(%rbp),%r13
  690eef:	c4 81 7b 59 0c 3e    	vmulsd (%r14,%r15,1),%xmm0,%xmm1
  690ef5:	c4 81 7b 11 0c 2b    	vmovsd %xmm1,(%r11,%r13,1)
  690efb:	4c 8b 9d c0 f8 ff ff 	mov    -0x740(%rbp),%r11
  690f02:	e9 94 cb ff ff       	jmpq   68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  690f07:	4c 8b b5 28 f5 ff ff 	mov    -0xad8(%rbp),%r14
  690f0e:	c4 81 7b 10 04 2e    	vmovsd (%r14,%r13,1),%xmm0
  690f14:	c5 f9 2e 05 e4 62 23 	vucomisd 0x2362e4(%rip),%xmm0        # 8c7200 <__STRLITPACK_199.115+0x70>
  690f1b:	00 
  690f1c:	0f 85 5a cb ff ff    	jne    68da7c <step3d_t_mod_mp_step3d_t_tile_+0x6e0c>
  690f22:	0f 8a 54 cb ff ff    	jp     68da7c <step3d_t_mod_mp_step3d_t_tile_+0x6e0c>
  690f28:	48 89 85 e8 f4 ff ff 	mov    %rax,-0xb18(%rbp)
  690f2f:	48 8b 85 f0 f4 ff ff 	mov    -0xb10(%rbp),%rax
  690f36:	4c 8b bd 88 fe ff ff 	mov    -0x178(%rbp),%r15
  690f3d:	4c 8b b5 70 fe ff ff 	mov    -0x190(%rbp),%r14
  690f44:	4c 8b ad f8 f4 ff ff 	mov    -0xb08(%rbp),%r13
  690f4b:	4c 0f af f8          	imul   %rax,%r15
  690f4f:	4d 0f af f5          	imul   %r13,%r14
  690f53:	4d 03 fe             	add    %r14,%r15
  690f56:	4d 89 ee             	mov    %r13,%r14
  690f59:	4c 0f af f6          	imul   %rsi,%r14
  690f5d:	4c 0f af ad 70 ff ff 	imul   -0x90(%rbp),%r13
  690f64:	ff 
  690f65:	c4 81 7b 10 04 27    	vmovsd (%r15,%r12,1),%xmm0
  690f6b:	49 89 c7             	mov    %rax,%r15
  690f6e:	4c 0f af bd a8 f8 ff 	imul   -0x758(%rbp),%r15
  690f75:	ff 
  690f76:	4c 03 bd b8 f8 ff ff 	add    -0x748(%rbp),%r15
  690f7d:	49 8d 44 c5 00       	lea    0x0(%r13,%rax,8),%rax
  690f82:	4c 8b ad 80 f8 ff ff 	mov    -0x780(%rbp),%r13
  690f89:	c4 81 7b 59 0c 3e    	vmulsd (%r14,%r15,1),%xmm0,%xmm1
  690f8f:	c4 a1 7b 11 0c 28    	vmovsd %xmm1,(%rax,%r13,1)
  690f95:	48 8b 85 e8 f4 ff ff 	mov    -0xb18(%rbp),%rax
  690f9c:	e9 fa ca ff ff       	jmpq   68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  690fa1:	33 c0                	xor    %eax,%eax
  690fa3:	e9 ce d0 ff ff       	jmpq   68e076 <step3d_t_mod_mp_step3d_t_tile_+0x7406>
  690fa8:	45 33 f6             	xor    %r14d,%r14d
  690fab:	e9 57 d4 ff ff       	jmpq   68e407 <step3d_t_mod_mp_step3d_t_tile_+0x7797>
  690fb0:	48 8b 85 80 fa ff ff 	mov    -0x580(%rbp),%rax
  690fb7:	48 89 85 60 fa ff ff 	mov    %rax,-0x5a0(%rbp)
  690fbe:	48 3b 85 78 fa ff ff 	cmp    -0x588(%rbp),%rax
  690fc5:	0f 83 54 d5 ff ff    	jae    68e51f <step3d_t_mod_mp_step3d_t_tile_+0x78af>
  690fcb:	48 8b 85 f0 f8 ff ff 	mov    -0x710(%rbp),%rax
  690fd2:	4c 8b 38             	mov    (%rax),%r15
  690fd5:	48 8b 85 60 fa ff ff 	mov    -0x5a0(%rbp),%rax
  690fdc:	48 8d 50 01          	lea    0x1(%rax),%rdx
  690fe0:	48 89 95 80 fa ff ff 	mov    %rdx,-0x580(%rbp)
  690fe7:	e9 d7 a8 ff ff       	jmpq   68b8c3 <step3d_t_mod_mp_step3d_t_tile_+0x4c53>
  690fec:	c7 85 80 fb ff ff 01 	movl   $0x1,-0x480(%rbp)
  690ff3:	00 00 00 
  690ff6:	e9 20 ce ff ff       	jmpq   68de1b <step3d_t_mod_mp_step3d_t_tile_+0x71ab>
  690ffb:	44 3b b5 58 ff ff ff 	cmp    -0xa8(%rbp),%r14d
  691002:	0f 8c 93 ca ff ff    	jl     68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  691008:	44 3b b5 28 fe ff ff 	cmp    -0x1d8(%rbp),%r14d
  69100f:	0f 8f 86 ca ff ff    	jg     68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  691015:	44 3b ad 00 fb ff ff 	cmp    -0x500(%rbp),%r13d
  69101c:	0f 8c 79 ca ff ff    	jl     68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  691022:	44 3b ad 10 fb ff ff 	cmp    -0x4f0(%rbp),%r13d
  691029:	0f 8f 6c ca ff ff    	jg     68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  69102f:	4c 8b bd 90 f8 ff ff 	mov    -0x770(%rbp),%r15
  691036:	4d 63 f6             	movslq %r14d,%r14
  691039:	4d 63 ed             	movslq %r13d,%r13
  69103c:	4c 89 b5 d8 f4 ff ff 	mov    %r14,-0xb28(%rbp)
  691043:	4c 89 ad e0 f4 ff ff 	mov    %r13,-0xb20(%rbp)
  69104a:	43 f6 44 9f 04 01    	testb  $0x1,0x4(%r15,%r11,4)
  691050:	0f 84 b7 00 00 00    	je     69110d <step3d_t_mod_mp_step3d_t_tile_+0xa49d>
  691056:	4d 89 f5             	mov    %r14,%r13
  691059:	4c 89 a5 d0 f4 ff ff 	mov    %r12,-0xb30(%rbp)
  691060:	4c 8b bd 90 fe ff ff 	mov    -0x170(%rbp),%r15
  691067:	4c 8b a5 68 fe ff ff 	mov    -0x198(%rbp),%r12
  69106e:	4c 8b b5 e0 f4 ff ff 	mov    -0xb20(%rbp),%r14
  691075:	4d 0f af fd          	imul   %r13,%r15
  691079:	4d 0f af e6          	imul   %r14,%r12
  69107d:	4c 0f af b5 70 ff ff 	imul   -0x90(%rbp),%r14
  691084:	ff 
  691085:	4d 03 fc             	add    %r12,%r15
  691088:	4c 8b a5 88 f8 ff ff 	mov    -0x778(%rbp),%r12
  69108f:	c4 81 7b 10 04 27    	vmovsd (%r15,%r12,1),%xmm0
  691095:	4f 8d 24 ee          	lea    (%r14,%r13,8),%r12
  691099:	4c 8b ac 11 80 02 00 	mov    0x280(%rcx,%rdx,1),%r13
  6910a0:	00 
  6910a1:	49 f7 dd             	neg    %r13
  6910a4:	4c 8b b5 80 fa ff ff 	mov    -0x580(%rbp),%r14
  6910ab:	4c 03 ad 70 f8 ff ff 	add    -0x790(%rbp),%r13
  6910b2:	4c 2b b4 11 98 02 00 	sub    0x298(%rcx,%rdx,1),%r14
  6910b9:	00 
  6910ba:	4c 0f af ac 11 78 02 	imul   0x278(%rcx,%rdx,1),%r13
  6910c1:	00 00 
  6910c3:	4c 0f af b4 11 90 02 	imul   0x290(%rcx,%rdx,1),%r14
  6910ca:	00 00 
  6910cc:	4c 8b bc 11 68 02 00 	mov    0x268(%rcx,%rdx,1),%r15
  6910d3:	00 
  6910d4:	49 f7 df             	neg    %r15
  6910d7:	4d 03 fa             	add    %r10,%r15
  6910da:	4c 0f af bc 11 60 02 	imul   0x260(%rcx,%rdx,1),%r15
  6910e1:	00 00 
  6910e3:	4c 03 ac 11 28 02 00 	add    0x228(%rcx,%rdx,1),%r13
  6910ea:	00 
  6910eb:	4d 03 f5             	add    %r13,%r14
  6910ee:	4c 8b ad 78 f8 ff ff 	mov    -0x788(%rbp),%r13
  6910f5:	c4 81 7b 59 0c 3e    	vmulsd (%r14,%r15,1),%xmm0,%xmm1
  6910fb:	c4 81 7b 11 0c 2c    	vmovsd %xmm1,(%r12,%r13,1)
  691101:	4c 8b a5 d0 f4 ff ff 	mov    -0xb30(%rbp),%r12
  691108:	e9 8e c9 ff ff       	jmpq   68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  69110d:	4d 89 f5             	mov    %r14,%r13
  691110:	4c 8b b5 e0 f4 ff ff 	mov    -0xb20(%rbp),%r14
  691117:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  69111b:	4c 0f af ad 20 f5 ff 	imul   -0xae0(%rbp),%r13
  691122:	ff 
  691123:	4c 0f af b5 18 f5 ff 	imul   -0xae8(%rbp),%r14
  69112a:	ff 
  69112b:	4d 03 ee             	add    %r14,%r13
  69112e:	4c 8b bd 00 f5 ff ff 	mov    -0xb00(%rbp),%r15
  691135:	c4 81 7b 10 4c 3d 00 	vmovsd 0x0(%r13,%r15,1),%xmm1
  69113c:	c5 f9 2e c8          	vucomisd %xmm0,%xmm1
  691140:	7a 06                	jp     691148 <step3d_t_mod_mp_step3d_t_tile_+0xa4d8>
  691142:	0f 84 b4 00 00 00    	je     6911fc <step3d_t_mod_mp_step3d_t_tile_+0xa58c>
  691148:	c5 fb 10 05 b0 60 23 	vmovsd 0x2360b0(%rip),%xmm0        # 8c7200 <__STRLITPACK_199.115+0x70>
  69114f:	00 
  691150:	c5 f9 2e c8          	vucomisd %xmm0,%xmm1
  691154:	0f 85 41 c9 ff ff    	jne    68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  69115a:	0f 8a 3b c9 ff ff    	jp     68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  691160:	4c 8b b5 08 f5 ff ff 	mov    -0xaf8(%rbp),%r14
  691167:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  69116b:	c4 81 7b 10 04 2e    	vmovsd (%r14,%r13,1),%xmm0
  691171:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
  691175:	0f 85 20 c9 ff ff    	jne    68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  69117b:	0f 8a 1a c9 ff ff    	jp     68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  691181:	4c 8b ad d8 f4 ff ff 	mov    -0xb28(%rbp),%r13
  691188:	4c 89 a5 d0 f4 ff ff 	mov    %r12,-0xb30(%rbp)
  69118f:	4c 8b b5 90 fe ff ff 	mov    -0x170(%rbp),%r14
  691196:	4c 8b bd 68 fe ff ff 	mov    -0x198(%rbp),%r15
  69119d:	4c 8b a5 e0 f4 ff ff 	mov    -0xb20(%rbp),%r12
  6911a4:	4d 0f af f5          	imul   %r13,%r14
  6911a8:	4d 0f af fc          	imul   %r12,%r15
  6911ac:	4d 03 f7             	add    %r15,%r14
  6911af:	4c 8b bd 88 f8 ff ff 	mov    -0x778(%rbp),%r15
  6911b6:	c4 81 7b 10 04 3e    	vmovsd (%r14,%r15,1),%xmm0
  6911bc:	4d 89 ef             	mov    %r13,%r15
  6911bf:	4c 0f af bd a8 f8 ff 	imul   -0x758(%rbp),%r15
  6911c6:	ff 
  6911c7:	4d 89 e6             	mov    %r12,%r14
  6911ca:	4c 03 f8             	add    %rax,%r15
  6911cd:	4c 0f af f6          	imul   %rsi,%r14
  6911d1:	4c 0f af a5 70 ff ff 	imul   -0x90(%rbp),%r12
  6911d8:	ff 
  6911d9:	c4 81 7b 59 0c 3e    	vmulsd (%r14,%r15,1),%xmm0,%xmm1
  6911df:	4f 8d 24 ec          	lea    (%r12,%r13,8),%r12
  6911e3:	4c 8b ad 78 f8 ff ff 	mov    -0x788(%rbp),%r13
  6911ea:	c4 81 7b 11 0c 2c    	vmovsd %xmm1,(%r12,%r13,1)
  6911f0:	4c 8b a5 d0 f4 ff ff 	mov    -0xb30(%rbp),%r12
  6911f7:	e9 9f c8 ff ff       	jmpq   68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  6911fc:	4c 8b b5 08 f5 ff ff 	mov    -0xaf8(%rbp),%r14
  691203:	c4 81 7b 10 04 2e    	vmovsd (%r14,%r13,1),%xmm0
  691209:	c5 f9 2e 05 ef 5f 23 	vucomisd 0x235fef(%rip),%xmm0        # 8c7200 <__STRLITPACK_199.115+0x70>
  691210:	00 
  691211:	0f 85 31 ff ff ff    	jne    691148 <step3d_t_mod_mp_step3d_t_tile_+0xa4d8>
  691217:	0f 8a 2b ff ff ff    	jp     691148 <step3d_t_mod_mp_step3d_t_tile_+0xa4d8>
  69121d:	4c 8b ad d8 f4 ff ff 	mov    -0xb28(%rbp),%r13
  691224:	4c 89 a5 d0 f4 ff ff 	mov    %r12,-0xb30(%rbp)
  69122b:	4c 8b b5 90 fe ff ff 	mov    -0x170(%rbp),%r14
  691232:	4c 8b bd 68 fe ff ff 	mov    -0x198(%rbp),%r15
  691239:	4c 8b a5 e0 f4 ff ff 	mov    -0xb20(%rbp),%r12
  691240:	4d 0f af f5          	imul   %r13,%r14
  691244:	4d 0f af fc          	imul   %r12,%r15
  691248:	4d 03 f7             	add    %r15,%r14
  69124b:	4c 8b bd 88 f8 ff ff 	mov    -0x778(%rbp),%r15
  691252:	c4 81 7b 10 04 3e    	vmovsd (%r14,%r15,1),%xmm0
  691258:	4d 89 ef             	mov    %r13,%r15
  69125b:	4c 0f af bd a8 f8 ff 	imul   -0x758(%rbp),%r15
  691262:	ff 
  691263:	4d 89 e6             	mov    %r12,%r14
  691266:	4c 0f af f6          	imul   %rsi,%r14
  69126a:	4c 0f af a5 70 ff ff 	imul   -0x90(%rbp),%r12
  691271:	ff 
  691272:	4c 03 bd b0 f8 ff ff 	add    -0x750(%rbp),%r15
  691279:	4f 8d 24 ec          	lea    (%r12,%r13,8),%r12
  69127d:	4c 8b ad 78 f8 ff ff 	mov    -0x788(%rbp),%r13
  691284:	c4 81 7b 59 0c 3e    	vmulsd (%r14,%r15,1),%xmm0,%xmm1
  69128a:	c4 81 7b 11 0c 2c    	vmovsd %xmm1,(%r12,%r13,1)
  691290:	4c 8b a5 d0 f4 ff ff 	mov    -0xb30(%rbp),%r12
  691297:	e9 ff c7 ff ff       	jmpq   68da9b <step3d_t_mod_mp_step3d_t_tile_+0x6e2b>
  69129c:	48 c7 85 f8 fe ff ff 	movq   $0x0,-0x108(%rbp)
  6912a3:	00 00 00 00 
  6912a7:	e9 26 c2 ff ff       	jmpq   68d4d2 <step3d_t_mod_mp_step3d_t_tile_+0x6862>
  6912ac:	48 83 bd 70 fd ff ff 	cmpq   $0x4,-0x290(%rbp)
  6912b3:	04 
  6912b4:	7c 6d                	jl     691323 <step3d_t_mod_mp_step3d_t_tile_+0xa6b3>
  6912b6:	48 8b 8d 48 f8 ff ff 	mov    -0x7b8(%rbp),%rcx
  6912bd:	33 ff                	xor    %edi,%edi
  6912bf:	48 8b 95 b0 fa ff ff 	mov    -0x550(%rbp),%rdx
  6912c6:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  6912cd:	49 89 c0             	mov    %rax,%r8
  6912d0:	48 03 ce             	add    %rsi,%rcx
  6912d3:	48 03 d6             	add    %rsi,%rdx
  6912d6:	c5 fd 10 04 fa       	vmovupd (%rdx,%rdi,8),%ymm0
  6912db:	c5 fd 11 04 f9       	vmovupd %ymm0,(%rcx,%rdi,8)
  6912e0:	48 83 c7 04          	add    $0x4,%rdi
  6912e4:	49 3b f8             	cmp    %r8,%rdi
  6912e7:	72 ed                	jb     6912d6 <step3d_t_mod_mp_step3d_t_tile_+0xa666>
  6912e9:	48 3b 85 70 fd ff ff 	cmp    -0x290(%rbp),%rax
  6912f0:	0f 83 ac b8 ff ff    	jae    68cba2 <step3d_t_mod_mp_step3d_t_tile_+0x5f32>
  6912f6:	48 8b 95 48 f8 ff ff 	mov    -0x7b8(%rbp),%rdx
  6912fd:	48 8b bd 70 fd ff ff 	mov    -0x290(%rbp),%rdi
  691304:	48 03 d6             	add    %rsi,%rdx
  691307:	48 03 b5 b0 fa ff ff 	add    -0x550(%rbp),%rsi
  69130e:	48 8b 0c c6          	mov    (%rsi,%rax,8),%rcx
  691312:	48 89 0c c2          	mov    %rcx,(%rdx,%rax,8)
  691316:	48 ff c0             	inc    %rax
  691319:	48 3b c7             	cmp    %rdi,%rax
  69131c:	72 f0                	jb     69130e <step3d_t_mod_mp_step3d_t_tile_+0xa69e>
  69131e:	e9 7f b8 ff ff       	jmpq   68cba2 <step3d_t_mod_mp_step3d_t_tile_+0x5f32>
  691323:	33 c0                	xor    %eax,%eax
  691325:	eb c2                	jmp    6912e9 <step3d_t_mod_mp_step3d_t_tile_+0xa679>
  691327:	45 33 db             	xor    %r11d,%r11d
  69132a:	e9 b5 b6 ff ff       	jmpq   68c9e4 <step3d_t_mod_mp_step3d_t_tile_+0x5d74>
  69132f:	48 c7 85 d0 fe ff ff 	movq   $0x0,-0x130(%rbp)
  691336:	00 00 00 00 
  69133a:	e9 bd af ff ff       	jmpq   68c2fc <step3d_t_mod_mp_step3d_t_tile_+0x568c>
  69133f:	45 33 e4             	xor    %r12d,%r12d
  691342:	e9 f9 a8 ff ff       	jmpq   68bc40 <step3d_t_mod_mp_step3d_t_tile_+0x4fd0>
  691347:	33 f6                	xor    %esi,%esi
  691349:	e9 2d a5 ff ff       	jmpq   68b87b <step3d_t_mod_mp_step3d_t_tile_+0x4c0b>
  69134e:	48 89 b5 60 fa ff ff 	mov    %rsi,-0x5a0(%rbp)
  691355:	4c 89 8d 78 fa ff ff 	mov    %r9,-0x588(%rbp)
  69135c:	4c 89 9d 38 f9 ff ff 	mov    %r11,-0x6c8(%rbp)
  691363:	e9 6d fc ff ff       	jmpq   690fd5 <step3d_t_mod_mp_step3d_t_tile_+0xa365>
  691368:	45 33 db             	xor    %r11d,%r11d
  69136b:	e9 ca d5 ff ff       	jmpq   68e93a <step3d_t_mod_mp_step3d_t_tile_+0x7cca>
  691370:	33 c0                	xor    %eax,%eax
  691372:	e9 c4 d6 ff ff       	jmpq   68ea3b <step3d_t_mod_mp_step3d_t_tile_+0x7dcb>
  691377:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  69137e:	00 00 

