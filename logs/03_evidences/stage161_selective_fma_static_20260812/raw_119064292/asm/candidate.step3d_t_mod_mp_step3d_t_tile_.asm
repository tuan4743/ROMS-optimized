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
  687462:	ba 83 e5 68 00       	mov    $0x68e583,%edx
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
  687549:	e8 35 70 00 00       	callq  68e583 <step3d_t_mod_mp_step3d_t_tile_+0x7913>
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
  687586:	ba 0d a6 68 00       	mov    $0x68a60d,%edx
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
  687859:	e8 af 2d 00 00       	callq  68a60d <step3d_t_mod_mp_step3d_t_tile_+0x399d>
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
  687894:	0f 85 96 15 00 00    	jne    688e30 <step3d_t_mod_mp_step3d_t_tile_+0x21c0>
  68789a:	bf bc 56 b3 00       	mov    $0xb356bc,%edi
  68789f:	33 c0                	xor    %eax,%eax
  6878a1:	e8 ba 64 d8 ff       	callq  40dd60 <__kmpc_ok_to_fork@plt>
  6878a6:	85 c0                	test   %eax,%eax
  6878a8:	0f 84 0b 01 00 00    	je     6879b9 <step3d_t_mod_mp_step3d_t_tile_+0xd49>
  6878ae:	48 81 c4 40 ff ff ff 	add    $0xffffffffffffff40,%rsp
  6878b5:	4c 8d 95 58 f9 ff ff 	lea    -0x6a8(%rbp),%r10
  6878bc:	ba 5f 8e 68 00       	mov    $0x688e5f,%edx
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
  687ac5:	e8 95 13 00 00       	callq  688e5f <step3d_t_mod_mp_step3d_t_tile_+0x21ef>
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
  687b41:	0f 8e 07 10 00 00    	jle    688b4e <step3d_t_mod_mp_step3d_t_tile_+0x1ede>
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
  687cb1:	0f 84 28 07 00 00    	je     6883df <step3d_t_mod_mp_step3d_t_tile_+0x176f>
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
  687d0b:	0f 84 ef 06 00 00    	je     688400 <step3d_t_mod_mp_step3d_t_tile_+0x1790>
  687d11:	4d 85 d2             	test   %r10,%r10
  687d14:	0f 8e 98 0c 00 00    	jle    6889b2 <step3d_t_mod_mp_step3d_t_tile_+0x1d42>
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
  687f29:	0f 85 de 01 00 00    	jne    68810d <step3d_t_mod_mp_step3d_t_tile_+0x149d>
  687f2f:	48 83 bc 11 e0 06 00 	cmpq   $0x8,0x6e0(%rcx,%rdx,1)
  687f36:	00 08 
  687f38:	0f 85 cf 01 00 00    	jne    68810d <step3d_t_mod_mp_step3d_t_tile_+0x149d>
  687f3e:	48 83 bc 11 d0 04 00 	cmpq   $0x8,0x4d0(%rcx,%rdx,1)
  687f45:	00 08 
  687f47:	0f 85 c0 01 00 00    	jne    68810d <step3d_t_mod_mp_step3d_t_tile_+0x149d>
  687f4d:	49 ff c3             	inc    %r11
  687f50:	33 ff                	xor    %edi,%edi
  687f52:	4d 3b e7             	cmp    %r15,%r12
  687f55:	0f 8c 1c 6b 00 00    	jl     68ea77 <step3d_t_mod_mp_step3d_t_tile_+0x7e07>
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
  687fa2:	0f 8c 49 01 00 00    	jl     6880f1 <step3d_t_mod_mp_step3d_t_tile_+0x1481>
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
  6880c8:	c4 81 7b 10 1c c8    	vmovsd (%r8,%r9,8),%xmm3
  6880ce:	c4 a1 7b 10 0c c8    	vmovsd (%rax,%r9,8),%xmm1
  6880d4:	c4 a1 7b 59 24 ce    	vmulsd (%rsi,%r9,8),%xmm0,%xmm4
  6880da:	c5 f3 5c d3          	vsubsd %xmm3,%xmm1,%xmm2
  6880de:	c4 e2 e9 a9 e3       	vfmadd213sd %xmm3,%xmm2,%xmm4
  6880e3:	c4 81 7b 11 24 c8    	vmovsd %xmm4,(%r8,%r9,8)
  6880e9:	49 ff c1             	inc    %r9
  6880ec:	4d 3b ca             	cmp    %r10,%r9
  6880ef:	72 d7                	jb     6880c8 <step3d_t_mod_mp_step3d_t_tile_+0x1458>
  6880f1:	48 ff c7             	inc    %rdi
  6880f4:	4c 03 85 f8 f9 ff ff 	add    -0x608(%rbp),%r8
  6880fb:	48 3b bd 00 fa ff ff 	cmp    -0x600(%rbp),%rdi
  688102:	0f 82 81 fe ff ff    	jb     687f89 <step3d_t_mod_mp_step3d_t_tile_+0x1319>
  688108:	e9 46 02 00 00       	jmpq   688353 <step3d_t_mod_mp_step3d_t_tile_+0x16e3>
  68810d:	33 c0                	xor    %eax,%eax
  68810f:	49 ff c3             	inc    %r11
  688112:	33 f6                	xor    %esi,%esi
  688114:	4d 3b e7             	cmp    %r15,%r12
  688117:	0f 8c 5a 69 00 00    	jl     68ea77 <step3d_t_mod_mp_step3d_t_tile_+0x7e07>
  68811d:	4c 89 95 40 fa ff ff 	mov    %r10,-0x5c0(%rbp)
  688124:	4b 8d 7c 05 00       	lea    0x0(%r13,%r8,1),%rdi
  688129:	48 89 bd 28 f5 ff ff 	mov    %rdi,-0xad8(%rbp)
  688130:	4f 8d 0c 06          	lea    (%r14,%r8,1),%r9
  688134:	4c 89 8d a8 f4 ff ff 	mov    %r9,-0xb58(%rbp)
  68813b:	4c 89 9d 18 f5 ff ff 	mov    %r11,-0xae8(%rbp)
  688142:	4c 89 a5 48 fa ff ff 	mov    %r12,-0x5b8(%rbp)
  688149:	4c 89 bd 78 fa ff ff 	mov    %r15,-0x588(%rbp)
  688150:	48 8b bd 08 fa ff ff 	mov    -0x5f8(%rbp),%rdi
  688157:	48 c7 85 e8 f9 ff ff 	movq   $0x0,-0x618(%rbp)
  68815e:	00 00 00 00 
  688162:	48 3b bd f0 f9 ff ff 	cmp    -0x610(%rbp),%rdi
  688169:	0f 8f cd 01 00 00    	jg     68833c <step3d_t_mod_mp_step3d_t_tile_+0x16cc>
  68816f:	4c 8b 85 28 f5 ff ff 	mov    -0xad8(%rbp),%r8
  688176:	49 89 fa             	mov    %rdi,%r10
  688179:	4d 89 d6             	mov    %r10,%r14
  68817c:	48 89 b5 88 f5 ff ff 	mov    %rsi,-0xa78(%rbp)
  688183:	4c 8b 9c 11 e8 06 00 	mov    0x6e8(%rcx,%rdx,1),%r11
  68818a:	00 
  68818b:	4d 8d 0c 30          	lea    (%r8,%rsi,1),%r9
  68818f:	48 8b b4 11 e0 06 00 	mov    0x6e0(%rcx,%rdx,1),%rsi
  688196:	00 
  688197:	4c 0f af f6          	imul   %rsi,%r14
  68819b:	4c 0f af de          	imul   %rsi,%r11
  68819f:	48 89 b5 48 f5 ff ff 	mov    %rsi,-0xab8(%rbp)
  6881a6:	48 8b b4 11 20 05 00 	mov    0x520(%rcx,%rdx,1),%rsi
  6881ad:	00 
  6881ae:	48 f7 de             	neg    %rsi
  6881b1:	4c 89 b5 38 f5 ff ff 	mov    %r14,-0xac8(%rbp)
  6881b8:	4c 8b b4 11 d0 04 00 	mov    0x4d0(%rcx,%rdx,1),%r14
  6881bf:	00 
  6881c0:	4d 0f af d6          	imul   %r14,%r10
  6881c4:	4c 8b bd 78 f5 ff ff 	mov    -0xa88(%rbp),%r15
  6881cb:	49 03 f7             	add    %r15,%rsi
  6881ce:	48 0f af b4 11 18 05 	imul   0x518(%rcx,%rdx,1),%rsi
  6881d5:	00 00 
  6881d7:	4c 8b a5 68 f5 ff ff 	mov    -0xa98(%rbp),%r12
  6881de:	48 8b bd 80 f5 ff ff 	mov    -0xa80(%rbp),%rdi
  6881e5:	4c 89 95 40 f5 ff ff 	mov    %r10,-0xac0(%rbp)
  6881ec:	4c 8b 95 78 fa ff ff 	mov    -0x588(%rbp),%r10
  6881f3:	c4 c1 7b 10 04 fc    	vmovsd (%r12,%rdi,8),%xmm0
  6881f9:	4c 8b a4 11 30 07 00 	mov    0x730(%rcx,%rdx,1),%r12
  688200:	00 
  688201:	48 89 b5 d0 f9 ff ff 	mov    %rsi,-0x630(%rbp)
  688208:	49 f7 dc             	neg    %r12
  68820b:	48 8b bc 11 18 07 00 	mov    0x718(%rcx,%rdx,1),%rdi
  688212:	00 
  688213:	4d 03 e7             	add    %r15,%r12
  688216:	48 8b b4 11 08 05 00 	mov    0x508(%rcx,%rdx,1),%rsi
  68821d:	00 
  68821e:	48 f7 df             	neg    %rdi
  688221:	48 f7 de             	neg    %rsi
  688224:	4c 8b bc 11 d8 04 00 	mov    0x4d8(%rcx,%rdx,1),%r15
  68822b:	00 
  68822c:	4c 8b ad 18 f5 ff ff 	mov    -0xae8(%rbp),%r13
  688233:	49 03 fd             	add    %r13,%rdi
  688236:	4c 8b 84 11 00 07 00 	mov    0x700(%rcx,%rdx,1),%r8
  68823d:	00 
  68823e:	49 03 f5             	add    %r13,%rsi
  688241:	4c 8b ac 11 f0 04 00 	mov    0x4f0(%rcx,%rdx,1),%r13
  688248:	00 
  688249:	49 f7 d8             	neg    %r8
  68824c:	4c 89 b5 50 f5 ff ff 	mov    %r14,-0xab0(%rbp)
  688253:	49 f7 dd             	neg    %r13
  688256:	4d 0f af fe          	imul   %r14,%r15
  68825a:	48 0f af bc 11 10 07 	imul   0x710(%rcx,%rdx,1),%rdi
  688261:	00 00 
  688263:	48 0f af b4 11 00 05 	imul   0x500(%rcx,%rdx,1),%rsi
  68826a:	00 00 
  68826c:	4c 0f af a4 11 28 07 	imul   0x728(%rcx,%rdx,1),%r12
  688273:	00 00 
  688275:	4c 89 8d 30 f5 ff ff 	mov    %r9,-0xad0(%rbp)
  68827c:	4d 8d 34 02          	lea    (%r10,%rax,1),%r14
  688280:	4d 03 c6             	add    %r14,%r8
  688283:	4d 03 ee             	add    %r14,%r13
  688286:	4c 0f af 84 11 f8 06 	imul   0x6f8(%rcx,%rdx,1),%r8
  68828d:	00 00 
  68828f:	4c 0f af ac 11 e8 04 	imul   0x4e8(%rcx,%rdx,1),%r13
  688296:	00 00 
  688298:	4c 8b 8c 11 a8 06 00 	mov    0x6a8(%rcx,%rdx,1),%r9
  68829f:	00 
  6882a0:	4d 2b cb             	sub    %r11,%r9
  6882a3:	4c 8b 9c 11 98 04 00 	mov    0x498(%rcx,%rdx,1),%r11
  6882aa:	00 
  6882ab:	4d 03 c1             	add    %r9,%r8
  6882ae:	4d 2b df             	sub    %r15,%r11
  6882b1:	49 03 f8             	add    %r8,%rdi
  6882b4:	4d 03 eb             	add    %r11,%r13
  6882b7:	4c 03 e7             	add    %rdi,%r12
  6882ba:	49 03 f5             	add    %r13,%rsi
  6882bd:	48 8b bd d0 f9 ff ff 	mov    -0x630(%rbp),%rdi
  6882c4:	48 8b 8d 40 f5 ff ff 	mov    -0xac0(%rbp),%rcx
  6882cb:	48 03 fe             	add    %rsi,%rdi
  6882ce:	48 8b b5 88 f5 ff ff 	mov    -0xa78(%rbp),%rsi
  6882d5:	4c 8b 85 50 f5 ff ff 	mov    -0xab0(%rbp),%r8
  6882dc:	4c 8b 8d 38 f5 ff ff 	mov    -0xac8(%rbp),%r9
  6882e3:	4c 8b 95 48 f5 ff ff 	mov    -0xab8(%rbp),%r10
  6882ea:	4c 8b 9d 30 f5 ff ff 	mov    -0xad0(%rbp),%r11
  6882f1:	4c 8b ad e8 f9 ff ff 	mov    -0x618(%rbp),%r13
  6882f8:	4c 8b b5 10 f5 ff ff 	mov    -0xaf0(%rbp),%r14
  6882ff:	4c 8b bd 70 f5 ff ff 	mov    -0xa90(%rbp),%r15
  688306:	c4 c1 7b 10 1b       	vmovsd (%r11),%xmm3
  68830b:	49 ff c5             	inc    %r13
  68830e:	c5 fb 10 0c 39       	vmovsd (%rcx,%rdi,1),%xmm1
  688313:	49 03 c8             	add    %r8,%rcx
  688316:	c4 81 7b 59 24 21    	vmulsd (%r9,%r12,1),%xmm0,%xmm4
  68831c:	c5 f3 5c d3          	vsubsd %xmm3,%xmm1,%xmm2
  688320:	c4 e2 e9 a9 e3       	vfmadd213sd %xmm3,%xmm2,%xmm4
  688325:	4d 03 ca             	add    %r10,%r9
  688328:	c4 c1 7b 11 23       	vmovsd %xmm4,(%r11)
  68832d:	4d 03 df             	add    %r15,%r11
  688330:	4d 3b ee             	cmp    %r14,%r13
  688333:	72 d1                	jb     688306 <step3d_t_mod_mp_step3d_t_tile_+0x1696>
  688335:	48 8b 8d 20 f5 ff ff 	mov    -0xae0(%rbp),%rcx
  68833c:	48 ff c0             	inc    %rax
  68833f:	48 03 b5 f8 f9 ff ff 	add    -0x608(%rbp),%rsi
  688346:	48 3b 85 00 fa ff ff 	cmp    -0x600(%rbp),%rax
  68834d:	0f 82 fd fd ff ff    	jb     688150 <step3d_t_mod_mp_step3d_t_tile_+0x14e0>
  688353:	4c 8b 95 40 fa ff ff 	mov    -0x5c0(%rbp),%r10
  68835a:	4c 8b 8d a8 f4 ff ff 	mov    -0xb58(%rbp),%r9
  688361:	4c 8b 9d 18 f5 ff ff 	mov    -0xae8(%rbp),%r11
  688368:	4c 8b ad b0 f4 ff ff 	mov    -0xb50(%rbp),%r13
  68836f:	4c 8b b5 b8 f4 ff ff 	mov    -0xb48(%rbp),%r14
  688376:	4c 8b a5 48 fa ff ff 	mov    -0x5b8(%rbp),%r12
  68837d:	4c 8b bd 78 fa ff ff 	mov    -0x588(%rbp),%r15
  688384:	4d 89 c8             	mov    %r9,%r8
  688387:	4d 3b da             	cmp    %r10,%r11
  68838a:	0f 82 91 fb ff ff    	jb     687f21 <step3d_t_mod_mp_step3d_t_tile_+0x12b1>
  688390:	4c 89 bd 78 fa ff ff 	mov    %r15,-0x588(%rbp)
  688397:	4c 8b ad c0 f4 ff ff 	mov    -0xb40(%rbp),%r13
  68839e:	4c 8b bd 90 f4 ff ff 	mov    -0xb70(%rbp),%r15
  6883a5:	4c 8b b5 98 f4 ff ff 	mov    -0xb68(%rbp),%r14
  6883ac:	48 8b 8d c8 f4 ff ff 	mov    -0xb38(%rbp),%rcx
  6883b3:	48 8b bd d0 f4 ff ff 	mov    -0xb30(%rbp),%rdi
  6883ba:	48 8b b5 d8 f4 ff ff 	mov    -0xb28(%rbp),%rsi
  6883c1:	4c 8b 8d e0 f4 ff ff 	mov    -0xb20(%rbp),%r9
  6883c8:	48 8b 95 e8 f4 ff ff 	mov    -0xb18(%rbp),%rdx
  6883cf:	4c 8b 85 f0 f4 ff ff 	mov    -0xb10(%rbp),%r8
  6883d6:	48 8b 85 f8 f4 ff ff 	mov    -0xb08(%rbp),%rax
  6883dd:	eb 38                	jmp    688417 <step3d_t_mod_mp_step3d_t_tile_+0x17a7>
  6883df:	49 c1 e1 02          	shl    $0x2,%r9
  6883e3:	4c 8d 14 86          	lea    (%rsi,%rax,4),%r10
  6883e7:	4d 2b d1             	sub    %r9,%r10
  6883ea:	4c 8d 2c 85 00 00 00 	lea    0x0(,%rax,4),%r13
  6883f1:	00 
  6883f2:	4c 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%r8
  6883f9:	48 8b 53 40          	mov    0x40(%rbx),%rdx
  6883fd:	4d 63 12             	movslq (%r10),%r10
  688400:	4d 85 d2             	test   %r10,%r10
  688403:	0f 8e a9 05 00 00    	jle    6889b2 <step3d_t_mod_mp_step3d_t_tile_+0x1d42>
  688409:	4c 63 b5 94 f9 ff ff 	movslq -0x66c(%rbp),%r14
  688410:	4c 63 bd c8 f9 ff ff 	movslq -0x638(%rbp),%r15
  688417:	48 89 95 e8 f4 ff ff 	mov    %rdx,-0xb18(%rbp)
  68841e:	4c 89 95 40 fa ff ff 	mov    %r10,-0x5c0(%rbp)
  688425:	4d 8b 90 80 00 00 00 	mov    0x80(%r8),%r10
  68842c:	48 63 12             	movslq (%rdx),%rdx
  68842f:	49 0f af d2          	imul   %r10,%rdx
  688433:	4c 89 ad c0 f4 ff ff 	mov    %r13,-0xb40(%rbp)
  68843a:	44 8b ad 64 f9 ff ff 	mov    -0x69c(%rbp),%r13d
  688441:	44 89 ad a8 fa ff ff 	mov    %r13d,-0x558(%rbp)
  688448:	4c 8b 6b 48          	mov    0x48(%rbx),%r13
  68844c:	48 89 85 f8 f4 ff ff 	mov    %rax,-0xb08(%rbp)
  688453:	8b 85 5c f9 ff ff    	mov    -0x6a4(%rbp),%eax
  688459:	48 89 95 80 f4 ff ff 	mov    %rdx,-0xb80(%rbp)
  688460:	89 85 e8 fa ff ff    	mov    %eax,-0x518(%rbp)
  688466:	49 8b 55 38          	mov    0x38(%r13),%rdx
  68846a:	48 98                	cltq   
  68846c:	48 89 95 50 fa ff ff 	mov    %rdx,-0x5b0(%rbp)
  688473:	48 0f af d0          	imul   %rax,%rdx
  688477:	4c 89 bd 90 f4 ff ff 	mov    %r15,-0xb70(%rbp)
  68847e:	4d 8b 7d 50          	mov    0x50(%r13),%r15
  688482:	4d 8b 98 98 00 00 00 	mov    0x98(%r8),%r11
  688489:	4c 89 bd c0 fa ff ff 	mov    %r15,-0x540(%rbp)
  688490:	48 89 8d c8 f4 ff ff 	mov    %rcx,-0xb38(%rbp)
  688497:	4c 63 bd a8 fa ff ff 	movslq -0x558(%rbp),%r15
  68849e:	49 0f af cb          	imul   %r11,%rcx
  6884a2:	4c 2b f8             	sub    %rax,%r15
  6884a5:	4c 2b d9             	sub    %rcx,%r11
  6884a8:	49 ff c7             	inc    %r15
  6884ab:	4c 89 bd 18 fa ff ff 	mov    %r15,-0x5e8(%rbp)
  6884b2:	44 8b bd a8 fa ff ff 	mov    -0x558(%rbp),%r15d
  6884b9:	44 2b f8             	sub    %eax,%r15d
  6884bc:	41 ff c7             	inc    %r15d
  6884bf:	48 89 bd d0 f4 ff ff 	mov    %rdi,-0xb30(%rbp)
  6884c6:	49 8b 38             	mov    (%r8),%rdi
  6884c9:	44 89 bd e0 fa ff ff 	mov    %r15d,-0x520(%rbp)
  6884d0:	41 d1 ef             	shr    %r15d
  6884d3:	48 8d 8d 98 f4 ff ff 	lea    -0xb68(%rbp),%rcx
  6884da:	4c 89 31             	mov    %r14,(%rcx)
  6884dd:	45 33 f6             	xor    %r14d,%r14d
  6884e0:	4c 89 b5 70 fa ff ff 	mov    %r14,-0x590(%rbp)
  6884e7:	4c 89 b5 60 fa ff ff 	mov    %r14,-0x5a0(%rbp)
  6884ee:	4d 8b 75 00          	mov    0x0(%r13),%r14
  6884f2:	48 89 95 88 f4 ff ff 	mov    %rdx,-0xb78(%rbp)
  6884f9:	48 8b 95 78 fa ff ff 	mov    -0x588(%rbp),%rdx
  688500:	4c 89 a5 48 fa ff ff 	mov    %r12,-0x5b8(%rbp)
  688507:	4c 2b e2             	sub    %rdx,%r12
  68850a:	4c 89 8d e0 f4 ff ff 	mov    %r9,-0xb20(%rbp)
  688511:	49 ff c4             	inc    %r12
  688514:	44 89 bd d0 fa ff ff 	mov    %r15d,-0x530(%rbp)
  68851b:	4d 8b 48 68          	mov    0x68(%r8),%r9
  68851f:	4c 89 bd 98 fa ff ff 	mov    %r15,-0x568(%rbp)
  688526:	49 89 ff             	mov    %rdi,%r15
  688529:	48 89 b5 d8 f4 ff ff 	mov    %rsi,-0xb28(%rbp)
  688530:	4d 2b fa             	sub    %r10,%r15
  688533:	4c 89 85 f0 f4 ff ff 	mov    %r8,-0xb10(%rbp)
  68853a:	4d 03 d1             	add    %r9,%r10
  68853d:	49 8b 70 50          	mov    0x50(%r8),%rsi
  688541:	4d 8b 40 38          	mov    0x38(%r8),%r8
  688545:	4d 89 c5             	mov    %r8,%r13
  688548:	4c 89 a5 d8 fa ff ff 	mov    %r12,-0x528(%rbp)
  68854f:	4c 8d 24 c7          	lea    (%rdi,%rax,8),%r12
  688553:	4c 0f af e8          	imul   %rax,%r13
  688557:	4d 2b e2             	sub    %r10,%r12
  68855a:	4d 8d 14 c6          	lea    (%r14,%rax,8),%r10
  68855e:	48 89 d0             	mov    %rdx,%rax
  688561:	4c 89 ff             	mov    %r15,%rdi
  688564:	48 0f af c6          	imul   %rsi,%rax
  688568:	48 8b 09             	mov    (%rcx),%rcx
  68856b:	49 2b f9             	sub    %r9,%rdi
  68856e:	49 0f af c8          	imul   %r8,%rcx
  688572:	4c 89 8d 68 fa ff ff 	mov    %r9,-0x598(%rbp)
  688579:	4c 03 c8             	add    %rax,%r9
  68857c:	49 03 c5             	add    %r13,%rax
  68857f:	48 f7 d9             	neg    %rcx
  688582:	49 2b c3             	sub    %r11,%rax
  688585:	48 03 8d 80 f4 ff ff 	add    -0xb80(%rbp),%rcx
  68858c:	4c 03 f8             	add    %rax,%r15
  68858f:	4c 03 f9             	add    %rcx,%r15
  688592:	48 f7 d9             	neg    %rcx
  688595:	49 03 cb             	add    %r11,%rcx
  688598:	49 f7 db             	neg    %r11
  68859b:	4d 03 d9             	add    %r9,%r11
  68859e:	4d 03 e3             	add    %r11,%r12
  6885a1:	4c 8b 9d 90 f4 ff ff 	mov    -0xb70(%rbp),%r11
  6885a8:	4c 89 d8             	mov    %r11,%rax
  6885ab:	48 0f af c6          	imul   %rsi,%rax
  6885af:	48 89 b5 c8 fa ff ff 	mov    %rsi,-0x538(%rbp)
  6885b6:	4c 2b f8             	sub    %rax,%r15
  6885b9:	48 8b b5 c0 fa ff ff 	mov    -0x540(%rbp),%rsi
  6885c0:	48 0f af d6          	imul   %rsi,%rdx
  6885c4:	4c 0f af de          	imul   %rsi,%r11
  6885c8:	4c 89 bd 38 fa ff ff 	mov    %r15,-0x5c8(%rbp)
  6885cf:	4d 89 c7             	mov    %r8,%r15
  6885d2:	49 f7 df             	neg    %r15
  6885d5:	4c 03 f2             	add    %rdx,%r14
  6885d8:	4d 03 fd             	add    %r13,%r15
  6885db:	4d 03 e8             	add    %r8,%r13
  6885de:	4d 03 f9             	add    %r9,%r15
  6885e1:	4d 03 cd             	add    %r13,%r9
  6885e4:	4c 03 ff             	add    %rdi,%r15
  6885e7:	49 03 f9             	add    %r9,%rdi
  6885ea:	4c 8b 8d 98 f4 ff ff 	mov    -0xb68(%rbp),%r9
  6885f1:	4c 03 d2             	add    %rdx,%r10
  6885f4:	48 8d b5 50 fa ff ff 	lea    -0x5b0(%rbp),%rsi
  6885fb:	48 8b 16             	mov    (%rsi),%rdx
  6885fe:	48 2b f9             	sub    %rcx,%rdi
  688601:	4c 89 85 58 fa ff ff 	mov    %r8,-0x5a8(%rbp)
  688608:	4d 89 c8             	mov    %r9,%r8
  68860b:	4c 0f af c2          	imul   %rdx,%r8
  68860f:	48 2b f8             	sub    %rax,%rdi
  688612:	4c 2b f9             	sub    %rcx,%r15
  688615:	48 89 bd 20 fa ff ff 	mov    %rdi,-0x5e0(%rbp)
  68861c:	4b 8d 3c cb          	lea    (%r11,%r9,8),%rdi
  688620:	48 8b 8d 88 f4 ff ff 	mov    -0xb78(%rbp),%rcx
  688627:	4c 2b d7             	sub    %rdi,%r10
  68862a:	49 c1 e1 03          	shl    $0x3,%r9
  68862e:	4d 03 c3             	add    %r11,%r8
  688631:	4c 89 95 78 f4 ff ff 	mov    %r10,-0xb88(%rbp)
  688638:	4c 2b f8             	sub    %rax,%r15
  68863b:	4c 8b 95 80 f4 ff ff 	mov    -0xb80(%rbp),%r10
  688642:	4c 8d 1c 0a          	lea    (%rdx,%rcx,1),%r11
  688646:	4d 2b d1             	sub    %r9,%r10
  688649:	48 f7 da             	neg    %rdx
  68864c:	4d 03 e2             	add    %r10,%r12
  68864f:	4d 03 de             	add    %r14,%r11
  688652:	4c 2b e0             	sub    %rax,%r12
  688655:	49 8d 04 0e          	lea    (%r14,%rcx,1),%rax
  688659:	48 03 ca             	add    %rdx,%rcx
  68865c:	4d 2b d8             	sub    %r8,%r11
  68865f:	4c 03 f1             	add    %rcx,%r14
  688662:	49 2b c0             	sub    %r8,%rax
  688665:	4d 2b f0             	sub    %r8,%r14
  688668:	4c 89 b5 b8 fa ff ff 	mov    %r14,-0x548(%rbp)
  68866f:	4c 8b b5 18 fa ff ff 	mov    -0x5e8(%rbp),%r14
  688676:	41 83 e6 fc          	and    $0xfffffffc,%r14d
  68867a:	4d 63 f6             	movslq %r14d,%r14
  68867d:	4c 89 a5 28 fa ff ff 	mov    %r12,-0x5d8(%rbp)
  688684:	48 89 85 a0 fa ff ff 	mov    %rax,-0x560(%rbp)
  68868b:	4c 89 9d 80 fa ff ff 	mov    %r11,-0x580(%rbp)
  688692:	4c 89 bd 30 fa ff ff 	mov    %r15,-0x5d0(%rbp)
  688699:	4c 8b 95 40 fa ff ff 	mov    -0x5c0(%rbp),%r10
  6886a0:	4c 8b ad c0 f4 ff ff 	mov    -0xb40(%rbp),%r13
  6886a7:	48 8b 85 f8 f4 ff ff 	mov    -0xb08(%rbp),%rax
  6886ae:	4c 8b a5 48 fa ff ff 	mov    -0x5b8(%rbp),%r12
  6886b5:	48 8b 36             	mov    (%rsi),%rsi
  6886b8:	48 8b bd 58 fa ff ff 	mov    -0x5a8(%rbp),%rdi
  6886bf:	4c 8b 85 60 fa ff ff 	mov    -0x5a0(%rbp),%r8
  6886c6:	4c 8b 8d 68 fa ff ff 	mov    -0x598(%rbp),%r9
  6886cd:	4c 8b 9d 70 fa ff ff 	mov    -0x590(%rbp),%r11
  6886d4:	4c 89 b5 10 fa ff ff 	mov    %r14,-0x5f0(%rbp)
  6886db:	48 83 ff 08          	cmp    $0x8,%rdi
  6886df:	0f 85 0f 01 00 00    	jne    6887f4 <step3d_t_mod_mp_step3d_t_tile_+0x1b84>
  6886e5:	48 83 fe 08          	cmp    $0x8,%rsi
  6886e9:	0f 85 05 01 00 00    	jne    6887f4 <step3d_t_mod_mp_step3d_t_tile_+0x1b84>
  6886ef:	48 8b 95 78 f4 ff ff 	mov    -0xb88(%rbp),%rdx
  6886f6:	33 c9                	xor    %ecx,%ecx
  6886f8:	4c 3b a5 78 fa ff ff 	cmp    -0x588(%rbp),%r12
  6886ff:	0f 8c 66 02 00 00    	jl     68896b <step3d_t_mod_mp_step3d_t_tile_+0x1cfb>
  688705:	48 8b 85 28 fa ff ff 	mov    -0x5d8(%rbp),%rax
  68870c:	4c 89 85 60 fa ff ff 	mov    %r8,-0x5a0(%rbp)
  688713:	4c 89 9d 70 fa ff ff 	mov    %r11,-0x590(%rbp)
  68871a:	4c 89 95 40 fa ff ff 	mov    %r10,-0x5c0(%rbp)
  688721:	49 03 c0             	add    %r8,%rax
  688724:	4c 89 a5 48 fa ff ff 	mov    %r12,-0x5b8(%rbp)
  68872b:	48 8b b5 10 fa ff ff 	mov    -0x5f0(%rbp),%rsi
  688732:	48 8b bd d8 fa ff ff 	mov    -0x528(%rbp),%rdi
  688739:	4c 8b 85 18 fa ff ff 	mov    -0x5e8(%rbp),%r8
  688740:	4c 8b 8d c0 fa ff ff 	mov    -0x540(%rbp),%r9
  688747:	4c 8b 95 c8 fa ff ff 	mov    -0x538(%rbp),%r10
  68874e:	44 8b 9d a8 fa ff ff 	mov    -0x558(%rbp),%r11d
  688755:	44 8b a5 e8 fa ff ff 	mov    -0x518(%rbp),%r12d
  68875c:	45 3b dc             	cmp    %r12d,%r11d
  68875f:	7c 4f                	jl     6887b0 <step3d_t_mod_mp_step3d_t_tile_+0x1b40>
  688761:	49 83 f8 04          	cmp    $0x4,%r8
  688765:	0f 8c 15 63 00 00    	jl     68ea80 <step3d_t_mod_mp_step3d_t_tile_+0x7e10>
  68876b:	49 89 f5             	mov    %rsi,%r13
  68876e:	45 33 ff             	xor    %r15d,%r15d
  688771:	49 89 c6             	mov    %rax,%r14
  688774:	c4 c1 7d 10 06       	vmovupd (%r14),%ymm0
  688779:	c4 a1 7d 59 0c fa    	vmulpd (%rdx,%r15,8),%ymm0,%ymm1
  68877f:	49 83 c7 04          	add    $0x4,%r15
  688783:	c4 c1 7d 11 0e       	vmovupd %ymm1,(%r14)
  688788:	49 83 c6 20          	add    $0x20,%r14
  68878c:	4c 3b fe             	cmp    %rsi,%r15
  68878f:	72 e3                	jb     688774 <step3d_t_mod_mp_step3d_t_tile_+0x1b04>
  688791:	4d 3b e8             	cmp    %r8,%r13
  688794:	73 1a                	jae    6887b0 <step3d_t_mod_mp_step3d_t_tile_+0x1b40>
  688796:	c4 a1 7b 10 04 e8    	vmovsd (%rax,%r13,8),%xmm0
  68879c:	c4 a1 7b 59 0c ea    	vmulsd (%rdx,%r13,8),%xmm0,%xmm1
  6887a2:	c4 a1 7b 11 0c e8    	vmovsd %xmm1,(%rax,%r13,8)
  6887a8:	49 ff c5             	inc    %r13
  6887ab:	4d 3b e8             	cmp    %r8,%r13
  6887ae:	72 e6                	jb     688796 <step3d_t_mod_mp_step3d_t_tile_+0x1b26>
  6887b0:	48 ff c1             	inc    %rcx
  6887b3:	49 03 c2             	add    %r10,%rax
  6887b6:	49 03 d1             	add    %r9,%rdx
  6887b9:	48 3b cf             	cmp    %rdi,%rcx
  6887bc:	72 9e                	jb     68875c <step3d_t_mod_mp_step3d_t_tile_+0x1aec>
  6887be:	48 8b b5 50 fa ff ff 	mov    -0x5b0(%rbp),%rsi
  6887c5:	48 8b bd 58 fa ff ff 	mov    -0x5a8(%rbp),%rdi
  6887cc:	4c 8b 85 60 fa ff ff 	mov    -0x5a0(%rbp),%r8
  6887d3:	4c 8b 8d 68 fa ff ff 	mov    -0x598(%rbp),%r9
  6887da:	4c 8b 9d 70 fa ff ff 	mov    -0x590(%rbp),%r11
  6887e1:	4c 8b 95 40 fa ff ff 	mov    -0x5c0(%rbp),%r10
  6887e8:	4c 8b a5 48 fa ff ff 	mov    -0x5b8(%rbp),%r12
  6887ef:	e9 77 01 00 00       	jmpq   68896b <step3d_t_mod_mp_step3d_t_tile_+0x1cfb>
  6887f4:	33 c9                	xor    %ecx,%ecx
  6887f6:	33 d2                	xor    %edx,%edx
  6887f8:	33 c0                	xor    %eax,%eax
  6887fa:	4c 3b a5 78 fa ff ff 	cmp    -0x588(%rbp),%r12
  688801:	0f 8c 64 01 00 00    	jl     68896b <step3d_t_mod_mp_step3d_t_tile_+0x1cfb>
  688807:	4c 8b bd 38 fa ff ff 	mov    -0x5c8(%rbp),%r15
  68880e:	4c 8b b5 30 fa ff ff 	mov    -0x5d0(%rbp),%r14
  688815:	4c 8b ad 20 fa ff ff 	mov    -0x5e0(%rbp),%r13
  68881c:	4c 89 85 60 fa ff ff 	mov    %r8,-0x5a0(%rbp)
  688823:	4d 03 f8             	add    %r8,%r15
  688826:	4c 89 bd 90 fa ff ff 	mov    %r15,-0x570(%rbp)
  68882d:	4d 03 f0             	add    %r8,%r14
  688830:	4c 89 b5 b0 fa ff ff 	mov    %r14,-0x550(%rbp)
  688837:	4d 03 e8             	add    %r8,%r13
  68883a:	4c 89 ad 88 fa ff ff 	mov    %r13,-0x578(%rbp)
  688841:	4c 89 9d 70 fa ff ff 	mov    %r11,-0x590(%rbp)
  688848:	4c 89 95 40 fa ff ff 	mov    %r10,-0x5c0(%rbp)
  68884f:	4c 89 a5 48 fa ff ff 	mov    %r12,-0x5b8(%rbp)
  688856:	44 8b bd a8 fa ff ff 	mov    -0x558(%rbp),%r15d
  68885d:	44 3b bd e8 fa ff ff 	cmp    -0x518(%rbp),%r15d
  688864:	0f 8c c0 00 00 00    	jl     68892a <step3d_t_mod_mp_step3d_t_tile_+0x1cba>
  68886a:	45 33 ed             	xor    %r13d,%r13d
  68886d:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  688873:	45 33 f6             	xor    %r14d,%r14d
  688876:	45 33 e4             	xor    %r12d,%r12d
  688879:	83 bd d0 fa ff ff 00 	cmpl   $0x0,-0x530(%rbp)
  688880:	74 6d                	je     6888ef <step3d_t_mod_mp_step3d_t_tile_+0x1c7f>
  688882:	4c 8b 9d 88 fa ff ff 	mov    -0x578(%rbp),%r11
  688889:	4c 8b 95 a0 fa ff ff 	mov    -0x560(%rbp),%r10
  688890:	4c 8b 8d 80 fa ff ff 	mov    -0x580(%rbp),%r9
  688897:	4c 8b 85 90 fa ff ff 	mov    -0x570(%rbp),%r8
  68889e:	4c 03 d8             	add    %rax,%r11
  6888a1:	4c 8b bd 98 fa ff ff 	mov    -0x568(%rbp),%r15
  6888a8:	4c 03 d2             	add    %rdx,%r10
  6888ab:	4c 03 ca             	add    %rdx,%r9
  6888ae:	4c 03 c0             	add    %rax,%r8
  6888b1:	c4 81 7b 10 04 70    	vmovsd (%r8,%r14,2),%xmm0
  6888b7:	49 ff c5             	inc    %r13
  6888ba:	c4 81 7b 10 14 73    	vmovsd (%r11,%r14,2),%xmm2
  6888c0:	c4 81 7b 59 0c 62    	vmulsd (%r10,%r12,2),%xmm0,%xmm1
  6888c6:	c4 81 6b 59 1c 61    	vmulsd (%r9,%r12,2),%xmm2,%xmm3
  6888cc:	c4 81 7b 11 0c 70    	vmovsd %xmm1,(%r8,%r14,2)
  6888d2:	4c 03 e6             	add    %rsi,%r12
  6888d5:	c4 81 7b 11 1c 73    	vmovsd %xmm3,(%r11,%r14,2)
  6888db:	4c 03 f7             	add    %rdi,%r14
  6888de:	4d 3b ef             	cmp    %r15,%r13
  6888e1:	72 ce                	jb     6888b1 <step3d_t_mod_mp_step3d_t_tile_+0x1c41>
  6888e3:	44 8b bd a8 fa ff ff 	mov    -0x558(%rbp),%r15d
  6888ea:	47 8d 4c 2d 01       	lea    0x1(%r13,%r13,1),%r9d
  6888ef:	45 8d 41 ff          	lea    -0x1(%r9),%r8d
  6888f3:	44 3b 85 e0 fa ff ff 	cmp    -0x520(%rbp),%r8d
  6888fa:	73 2e                	jae    68892a <step3d_t_mod_mp_step3d_t_tile_+0x1cba>
  6888fc:	4d 63 c9             	movslq %r9d,%r9
  6888ff:	49 89 f8             	mov    %rdi,%r8
  688902:	4d 0f af c1          	imul   %r9,%r8
  688906:	4c 0f af ce          	imul   %rsi,%r9
  68890a:	4c 03 85 b0 fa ff ff 	add    -0x550(%rbp),%r8
  688911:	4c 03 8d b8 fa ff ff 	add    -0x548(%rbp),%r9
  688918:	c4 c1 7b 10 04 00    	vmovsd (%r8,%rax,1),%xmm0
  68891e:	c4 c1 7b 59 0c 11    	vmulsd (%r9,%rdx,1),%xmm0,%xmm1
  688924:	c4 c1 7b 11 0c 00    	vmovsd %xmm1,(%r8,%rax,1)
  68892a:	48 ff c1             	inc    %rcx
  68892d:	48 03 95 c0 fa ff ff 	add    -0x540(%rbp),%rdx
  688934:	48 03 85 c8 fa ff ff 	add    -0x538(%rbp),%rax
  68893b:	48 3b 8d d8 fa ff ff 	cmp    -0x528(%rbp),%rcx
  688942:	0f 82 15 ff ff ff    	jb     68885d <step3d_t_mod_mp_step3d_t_tile_+0x1bed>
  688948:	4c 8b 85 60 fa ff ff 	mov    -0x5a0(%rbp),%r8
  68894f:	4c 8b 8d 68 fa ff ff 	mov    -0x598(%rbp),%r9
  688956:	4c 8b 9d 70 fa ff ff 	mov    -0x590(%rbp),%r11
  68895d:	4c 8b 95 40 fa ff ff 	mov    -0x5c0(%rbp),%r10
  688964:	4c 8b a5 48 fa ff ff 	mov    -0x5b8(%rbp),%r12
  68896b:	49 ff c3             	inc    %r11
  68896e:	4d 03 c1             	add    %r9,%r8
  688971:	4d 3b da             	cmp    %r10,%r11
  688974:	0f 82 61 fd ff ff    	jb     6886db <step3d_t_mod_mp_step3d_t_tile_+0x1a6b>
  68897a:	4c 8b ad c0 f4 ff ff 	mov    -0xb40(%rbp),%r13
  688981:	48 8b 8d c8 f4 ff ff 	mov    -0xb38(%rbp),%rcx
  688988:	48 8b bd d0 f4 ff ff 	mov    -0xb30(%rbp),%rdi
  68898f:	48 8b b5 d8 f4 ff ff 	mov    -0xb28(%rbp),%rsi
  688996:	4c 8b 8d e0 f4 ff ff 	mov    -0xb20(%rbp),%r9
  68899d:	48 8b 95 e8 f4 ff ff 	mov    -0xb18(%rbp),%rdx
  6889a4:	4c 8b 85 f0 f4 ff ff 	mov    -0xb10(%rbp),%r8
  6889ab:	48 8b 85 f8 f4 ff ff 	mov    -0xb08(%rbp),%rax
  6889b2:	4c 8b 15 e7 51 4b 00 	mov    0x4b51e7(%rip),%r10        # b3dba0 <mod_scalars_mp_ewperiodic_+0x40>
  6889b9:	49 c1 e2 02          	shl    $0x2,%r10
  6889bd:	4c 8b 1d 7c 4e 4b 00 	mov    0x4b4e7c(%rip),%r11        # b3d840 <mod_scalars_mp_nsperiodic_+0x40>
  6889c4:	49 f7 da             	neg    %r10
  6889c7:	49 c1 e3 02          	shl    $0x2,%r11
  6889cb:	4c 03 15 8e 51 4b 00 	add    0x4b518e(%rip),%r10        # b3db60 <mod_scalars_mp_ewperiodic_>
  6889d2:	49 f7 db             	neg    %r11
  6889d5:	4c 03 1d 24 4e 4b 00 	add    0x4b4e24(%rip),%r11        # b3d800 <mod_scalars_mp_nsperiodic_>
  6889dc:	47 8b 74 15 00       	mov    0x0(%r13,%r10,1),%r14d
  6889e1:	47 0b 74 1d 00       	or     0x0(%r13,%r11,1),%r14d
  6889e6:	41 f7 c6 01 00 00 00 	test   $0x1,%r14d
  6889ed:	0f 84 35 01 00 00    	je     688b28 <step3d_t_mod_mp_step3d_t_tile_+0x1eb8>
  6889f3:	48 63 02             	movslq (%rdx),%rax
  6889f6:	48 ff c9             	dec    %rcx
  6889f9:	48 ff c8             	dec    %rax
  6889fc:	49 2b f1             	sub    %r9,%rsi
  6889ff:	49 0f af 80 80 00 00 	imul   0x80(%r8),%rax
  688a06:	00 
  688a07:	49 0f af 88 98 00 00 	imul   0x98(%r8),%rcx
  688a0e:	00 
  688a0f:	4d 8b 58 30          	mov    0x30(%r8),%r11
  688a13:	45 33 f6             	xor    %r14d,%r14d
  688a16:	4d 85 db             	test   %r11,%r11
  688a19:	4d 0f 4e de          	cmovle %r14,%r11
  688a1d:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  688a23:	48 83 c4 e0          	add    $0xffffffffffffffe0,%rsp
  688a27:	49 03 f5             	add    %r13,%rsi
  688a2a:	4d 8b 68 48          	mov    0x48(%r8),%r13
  688a2e:	4d 85 ed             	test   %r13,%r13
  688a31:	4d 8b 78 60          	mov    0x60(%r8),%r15
  688a35:	4d 0f 4e ee          	cmovle %r14,%r13
  688a39:	4d 85 ff             	test   %r15,%r15
  688a3c:	48 c7 04 24 b8 19 8c 	movq   $0x8c19b8,(%rsp)
  688a43:	00 
  688a44:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  688a49:	48 8d b5 90 f5 ff ff 	lea    -0xa70(%rbp),%rsi
  688a50:	49 8b 50 50          	mov    0x50(%r8),%rdx
  688a54:	4d 0f 4e fe          	cmovle %r14,%r15
  688a58:	49 03 00             	add    (%r8),%rax
  688a5b:	48 03 c1             	add    %rcx,%rax
  688a5e:	49 8b 48 68          	mov    0x68(%r8),%rcx
  688a62:	48 89 06             	mov    %rax,(%rsi)
  688a65:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  688a6a:	49 8b 40 38          	mov    0x38(%r8),%rax
  688a6e:	48 89 56 50          	mov    %rdx,0x50(%rsi)
  688a72:	48 89 4e 68          	mov    %rcx,0x68(%rsi)
  688a76:	48 8b b5 a0 f9 ff ff 	mov    -0x660(%rbp),%rsi
  688a7d:	48 8b 95 a8 f9 ff ff 	mov    -0x658(%rbp),%rdx
  688a84:	48 8b 8d b0 f9 ff ff 	mov    -0x650(%rbp),%rcx
  688a8b:	4c 8b 85 b8 f9 ff ff 	mov    -0x648(%rbp),%r8
  688a92:	4c 8b 8d c0 f9 ff ff 	mov    -0x640(%rbp),%r9
  688a99:	48 c7 85 98 f5 ff ff 	movq   $0x8,-0xa68(%rbp)
  688aa0:	08 00 00 00 
  688aa4:	48 c7 85 b0 f5 ff ff 	movq   $0x3,-0xa50(%rbp)
  688aab:	03 00 00 00 
  688aaf:	4c 89 b5 a0 f5 ff ff 	mov    %r14,-0xa60(%rbp)
  688ab6:	4c 89 95 d0 f5 ff ff 	mov    %r10,-0xa30(%rbp)
  688abd:	4c 89 95 e8 f5 ff ff 	mov    %r10,-0xa18(%rbp)
  688ac4:	4c 89 95 00 f6 ff ff 	mov    %r10,-0xa00(%rbp)
  688acb:	4c 89 95 a8 f5 ff ff 	mov    %r10,-0xa58(%rbp)
  688ad2:	4c 89 9d c0 f5 ff ff 	mov    %r11,-0xa40(%rbp)
  688ad9:	4c 89 ad d8 f5 ff ff 	mov    %r13,-0xa28(%rbp)
  688ae0:	4c 89 bd f0 f5 ff ff 	mov    %r15,-0xa10(%rbp)
  688ae7:	48 89 85 c8 f5 ff ff 	mov    %rax,-0xa38(%rbp)
  688aee:	c5 f8 77             	vzeroupper 
  688af1:	e8 ca 16 f8 ff       	callq  60a1c0 <exchange_3d_mod_mp_exchange_r3d_tile_>
  688af6:	48 83 c4 20          	add    $0x20,%rsp
  688afa:	48 8b bd 98 f9 ff ff 	mov    -0x668(%rbp),%rdi
  688b01:	4c 8b 0d d8 35 4b 00 	mov    0x4b35d8(%rip),%r9        # b3c0e0 <mod_param_mp_n_+0x40>
  688b08:	48 8b 35 91 35 4b 00 	mov    0x4b3591(%rip),%rsi        # b3c0a0 <mod_param_mp_n_>
  688b0f:	48 63 07             	movslq (%rdi),%rax
  688b12:	48 63 8d d8 f9 ff ff 	movslq -0x628(%rbp),%rcx
  688b19:	4c 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%r8
  688b20:	48 8b 53 40          	mov    0x40(%rbx),%rdx
  688b24:	49 c1 e1 02          	shl    $0x2,%r9
  688b28:	ff c1                	inc    %ecx
  688b2a:	89 8d d8 f9 ff ff    	mov    %ecx,-0x628(%rbp)
  688b30:	3b 8d 08 f5 ff ff    	cmp    -0xaf8(%rbp),%ecx
  688b36:	7f 13                	jg     688b4b <step3d_t_mod_mp_step3d_t_tile_+0x1edb>
  688b38:	4c 8b 1d 41 35 4b 00 	mov    0x4b3541(%rip),%r11        # b3c080 <mod_param_mp_nt_+0x40>
  688b3f:	4c 8b 15 fa 34 4b 00 	mov    0x4b34fa(%rip),%r10        # b3c040 <mod_param_mp_nt_>
  688b46:	e9 0a f0 ff ff       	jmpq   687b55 <step3d_t_mod_mp_step3d_t_tile_+0xee5>
  688b4b:	45 33 f6             	xor    %r14d,%r14d
  688b4e:	4c 63 22             	movslq (%rdx),%r12
  688b51:	49 2b f1             	sub    %r9,%rsi
  688b54:	49 ff cc             	dec    %r12
  688b57:	4c 8d 9d 70 f4 ff ff 	lea    -0xb90(%rbp),%r11
  688b5e:	4d 0f af a0 80 00 00 	imul   0x80(%r8),%r12
  688b65:	00 
  688b66:	4d 03 20             	add    (%r8),%r12
  688b69:	4c 8d 14 86          	lea    (%rsi,%rax,4),%r10
  688b6d:	4c 8b 3d cc 4c 4b 00 	mov    0x4b4ccc(%rip),%r15        # b3d840 <mod_scalars_mp_nsperiodic_+0x40>
  688b74:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  688b7a:	49 c1 e7 02          	shl    $0x2,%r15
  688b7e:	4d 89 23             	mov    %r12,(%r11)
  688b81:	4c 8b 25 78 4c 4b 00 	mov    0x4b4c78(%rip),%r12        # b3d800 <mod_scalars_mp_nsperiodic_>
  688b88:	48 8b 0d 11 50 4b 00 	mov    0x4b5011(%rip),%rcx        # b3dba0 <mod_scalars_mp_ewperiodic_+0x40>
  688b8f:	4d 2b e7             	sub    %r15,%r12
  688b92:	48 c1 e1 02          	shl    $0x2,%rcx
  688b96:	48 8b 35 c3 4f 4b 00 	mov    0x4b4fc3(%rip),%rsi        # b3db60 <mod_scalars_mp_ewperiodic_>
  688b9d:	48 2b f1             	sub    %rcx,%rsi
  688ba0:	41 56                	push   %r14
  688ba2:	41 56                	push   %r14
  688ba4:	41 53                	push   %r11
  688ba6:	49 c7 43 08 08 00 00 	movq   $0x8,0x8(%r11)
  688bad:	00 
  688bae:	49 8d 14 84          	lea    (%r12,%rax,4),%rdx
  688bb2:	52                   	push   %rdx
  688bb3:	49 8b 50 30          	mov    0x30(%r8),%rdx
  688bb7:	48 8d 04 86          	lea    (%rsi,%rax,4),%rax
  688bbb:	50                   	push   %rax
  688bbc:	68 88 23 cc 00       	pushq  $0xcc2388
  688bc1:	68 90 4a b8 00       	pushq  $0xb84a90
  688bc6:	41 bc b8 19 8c 00    	mov    $0x8c19b8,%r12d
  688bcc:	48 85 d2             	test   %rdx,%rdx
  688bcf:	41 54                	push   %r12
  688bd1:	49 8b 70 48          	mov    0x48(%r8),%rsi
  688bd5:	49 0f 4e d6          	cmovle %r14,%rdx
  688bd9:	41 52                	push   %r10
  688bdb:	48 85 f6             	test   %rsi,%rsi
  688bde:	4c 89 e1             	mov    %r12,%rcx
  688be1:	49 c7 43 20 04 00 00 	movq   $0x4,0x20(%r11)
  688be8:	00 
  688be9:	4d 89 73 10          	mov    %r14,0x10(%r11)
  688bed:	49 0f 4e f6          	cmovle %r14,%rsi
  688bf1:	4d 89 6b 40          	mov    %r13,0x40(%r11)
  688bf5:	4d 89 6b 58          	mov    %r13,0x58(%r11)
  688bf9:	4d 89 6b 70          	mov    %r13,0x70(%r11)
  688bfd:	4c 89 ad f8 f4 ff ff 	mov    %r13,-0xb08(%rbp)
  688c04:	4d 89 6b 18          	mov    %r13,0x18(%r11)
  688c08:	41 54                	push   %r12
  688c0a:	4d 8b 48 60          	mov    0x60(%r8),%r9
  688c0e:	4d 85 c9             	test   %r9,%r9
  688c11:	48 63 05 78 be 4f 00 	movslq 0x4fbe78(%rip),%rax        # b84a90 <mod_param_mp_nat_>
  688c18:	49 89 c2             	mov    %rax,%r10
  688c1b:	ff b5 c0 f9 ff ff    	pushq  -0x640(%rbp)
  688c21:	ff b5 b8 f9 ff ff    	pushq  -0x648(%rbp)
  688c27:	49 89 53 30          	mov    %rdx,0x30(%r11)
  688c2b:	ba e8 b6 b3 00       	mov    $0xb3b6e8,%edx
  688c30:	4d 8b 58 38          	mov    0x38(%r8),%r11
  688c34:	4d 0f 4e ce          	cmovle %r14,%r9
  688c38:	4d 8b 68 50          	mov    0x50(%r8),%r13
  688c3c:	4d 8b 78 68          	mov    0x68(%r8),%r15
  688c40:	4d 8b 80 98 00 00 00 	mov    0x98(%r8),%r8
  688c47:	49 c1 fa 3f          	sar    $0x3f,%r10
  688c4b:	48 89 b5 b8 f4 ff ff 	mov    %rsi,-0xb48(%rbp)
  688c52:	4c 89 8d d0 f4 ff ff 	mov    %r9,-0xb30(%rbp)
  688c59:	4c 89 85 f0 f4 ff ff 	mov    %r8,-0xb10(%rbp)
  688c60:	c4 e2 a8 f2 c0       	andn   %rax,%r10,%rax
  688c65:	48 8b b5 a0 f9 ff ff 	mov    -0x660(%rbp),%rsi
  688c6c:	4c 8b 85 a8 f9 ff ff 	mov    -0x658(%rbp),%r8
  688c73:	4c 8b 8d b0 f9 ff ff 	mov    -0x650(%rbp),%r9
  688c7a:	4c 89 9d a8 f4 ff ff 	mov    %r11,-0xb58(%rbp)
  688c81:	4c 89 ad c0 f4 ff ff 	mov    %r13,-0xb40(%rbp)
  688c88:	4c 89 bd d8 f4 ff ff 	mov    %r15,-0xb28(%rbp)
  688c8f:	48 89 85 e8 f4 ff ff 	mov    %rax,-0xb18(%rbp)
  688c96:	c5 f8 77             	vzeroupper 
  688c99:	e8 b2 c2 fb ff       	callq  644f50 <mp_exchange_mod_mp_mp_exchange4d_>
  688c9e:	48 83 c4 60          	add    $0x60,%rsp
  688ca2:	48 8b 3d d7 33 4b 00 	mov    0x4b33d7(%rip),%rdi        # b3c080 <mod_param_mp_nt_+0x40>
  688ca9:	4c 8d 9d 00 f5 ff ff 	lea    -0xb00(%rbp),%r11
  688cb0:	48 c1 e7 02          	shl    $0x2,%rdi
  688cb4:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  688cba:	4c 8b 15 7f 33 4b 00 	mov    0x4b337f(%rip),%r10        # b3c040 <mod_param_mp_nt_>
  688cc1:	4c 89 e1             	mov    %r12,%rcx
  688cc4:	4c 2b d7             	sub    %rdi,%r10
  688cc7:	48 8b bd 98 f9 ff ff 	mov    -0x668(%rbp),%rdi
  688cce:	4c 8b 2d 6b 4b 4b 00 	mov    0x4b4b6b(%rip),%r13        # b3d840 <mod_scalars_mp_nsperiodic_+0x40>
  688cd5:	49 c1 e5 02          	shl    $0x2,%r13
  688cd9:	4c 8b 0d 20 4b 4b 00 	mov    0x4b4b20(%rip),%r9        # b3d800 <mod_scalars_mp_nsperiodic_>
  688ce0:	4c 8b 3d b9 4e 4b 00 	mov    0x4b4eb9(%rip),%r15        # b3dba0 <mod_scalars_mp_ewperiodic_+0x40>
  688ce7:	4d 2b cd             	sub    %r13,%r9
  688cea:	49 c1 e7 02          	shl    $0x2,%r15
  688cee:	48 8b 05 6b 4e 4b 00 	mov    0x4b4e6b(%rip),%rax        # b3db60 <mod_scalars_mp_ewperiodic_>
  688cf5:	48 63 17             	movslq (%rdi),%rdx
  688cf8:	49 2b c7             	sub    %r15,%rax
  688cfb:	41 56                	push   %r14
  688cfd:	41 56                	push   %r14
  688cff:	41 53                	push   %r11
  688d01:	4d 89 43 40          	mov    %r8,0x40(%r11)
  688d05:	4d 8d 0c 91          	lea    (%r9,%rdx,4),%r9
  688d09:	41 51                	push   %r9
  688d0b:	4d 89 43 58          	mov    %r8,0x58(%r11)
  688d0f:	4c 8d 0c 90          	lea    (%rax,%rdx,4),%r9
  688d13:	41 51                	push   %r9
  688d15:	68 88 23 cc 00       	pushq  $0xcc2388
  688d1a:	4d 89 43 70          	mov    %r8,0x70(%r11)
  688d1e:	4d 8d 14 92          	lea    (%r10,%rdx,4),%r10
  688d22:	41 52                	push   %r10
  688d24:	4c 89 85 88 f5 ff ff 	mov    %r8,-0xa78(%rbp)
  688d2b:	4c 8d 8d 08 f9 ff ff 	lea    -0x6f8(%rbp),%r9
  688d32:	41 51                	push   %r9
  688d34:	4c 8b 0d a5 33 4b 00 	mov    0x4b33a5(%rip),%r9        # b3c0e0 <mod_param_mp_n_+0x40>
  688d3b:	49 c1 e1 02          	shl    $0x2,%r9
  688d3f:	4d 89 43 18          	mov    %r8,0x18(%r11)
  688d43:	4c 8b 05 56 33 4b 00 	mov    0x4b3356(%rip),%r8        # b3c0a0 <mod_param_mp_n_>
  688d4a:	4d 2b c1             	sub    %r9,%r8
  688d4d:	49 c7 43 08 08 00 00 	movq   $0x8,0x8(%r11)
  688d54:	00 
  688d55:	49 c7 43 20 04 00 00 	movq   $0x4,0x20(%r11)
  688d5c:	00 
  688d5d:	4d 89 73 10          	mov    %r14,0x10(%r11)
  688d61:	4c 63 0d 28 bd 4f 00 	movslq 0x4fbd28(%rip),%r9        # b84a90 <mod_param_mp_nat_>
  688d68:	4d 8d 04 90          	lea    (%r8,%rdx,4),%r8
  688d6c:	41 50                	push   %r8
  688d6e:	4c 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%r8
  688d75:	41 54                	push   %r12
  688d77:	ff b5 c0 f9 ff ff    	pushq  -0x640(%rbp)
  688d7d:	ff b5 b8 f9 ff ff    	pushq  -0x648(%rbp)
  688d83:	49 8b 50 30          	mov    0x30(%r8),%rdx
  688d87:	48 85 d2             	test   %rdx,%rdx
  688d8a:	49 8b 70 48          	mov    0x48(%r8),%rsi
  688d8e:	49 0f 4e d6          	cmovle %r14,%rdx
  688d92:	48 85 f6             	test   %rsi,%rsi
  688d95:	49 8b 40 60          	mov    0x60(%r8),%rax
  688d99:	49 0f 4e f6          	cmovle %r14,%rsi
  688d9d:	48 85 c0             	test   %rax,%rax
  688da0:	49 89 53 30          	mov    %rdx,0x30(%r11)
  688da4:	49 63 12             	movslq (%r10),%rdx
  688da7:	49 0f 4e c6          	cmovle %r14,%rax
  688dab:	49 2b d1             	sub    %r9,%rdx
  688dae:	49 89 43 60          	mov    %rax,0x60(%r11)
  688db2:	4c 0f 4f f2          	cmovg  %rdx,%r14
  688db6:	49 8b 50 38          	mov    0x38(%r8),%rdx
  688dba:	4d 89 73 78          	mov    %r14,0x78(%r11)
  688dbe:	49 89 53 38          	mov    %rdx,0x38(%r11)
  688dc2:	4c 8b 73 40          	mov    0x40(%rbx),%r14
  688dc6:	49 8b 50 50          	mov    0x50(%r8),%rdx
  688dca:	49 89 53 50          	mov    %rdx,0x50(%r11)
  688dce:	49 8b 50 68          	mov    0x68(%r8),%rdx
  688dd2:	49 89 53 68          	mov    %rdx,0x68(%r11)
  688dd6:	49 63 16             	movslq (%r14),%rdx
  688dd9:	48 ff ca             	dec    %rdx
  688ddc:	49 8b 80 98 00 00 00 	mov    0x98(%r8),%rax
  688de3:	49 0f af 90 80 00 00 	imul   0x80(%r8),%rdx
  688dea:	00 
  688deb:	48 89 85 80 f5 ff ff 	mov    %rax,-0xa80(%rbp)
  688df2:	49 0f af c1          	imul   %r9,%rax
  688df6:	49 03 10             	add    (%r8),%rdx
  688df9:	41 ff c1             	inc    %r9d
  688dfc:	48 03 d0             	add    %rax,%rdx
  688dff:	49 89 13             	mov    %rdx,(%r11)
  688e02:	ba e8 b6 b3 00       	mov    $0xb3b6e8,%edx
  688e07:	49 89 73 48          	mov    %rsi,0x48(%r11)
  688e0b:	44 89 8d 08 f9 ff ff 	mov    %r9d,-0x6f8(%rbp)
  688e12:	48 8b b5 a0 f9 ff ff 	mov    -0x660(%rbp),%rsi
  688e19:	4c 8b 85 a8 f9 ff ff 	mov    -0x658(%rbp),%r8
  688e20:	4c 8b 8d b0 f9 ff ff 	mov    -0x650(%rbp),%r9
  688e27:	e8 84 77 fe ff       	callq  6705b0 <mp_exchange_mod_mp_mp_exchange4d_q_>
  688e2c:	48 83 c4 60          	add    $0x60,%rsp
  688e30:	48 8b 85 30 f9 ff ff 	mov    -0x6d0(%rbp),%rax
  688e37:	48 89 c4             	mov    %rax,%rsp
  688e3a:	4c 8b bd 10 f9 ff ff 	mov    -0x6f0(%rbp),%r15
  688e41:	4c 8b b5 18 f9 ff ff 	mov    -0x6e8(%rbp),%r14
  688e48:	4c 8b ad 20 f9 ff ff 	mov    -0x6e0(%rbp),%r13
  688e4f:	4c 8b a5 28 f9 ff ff 	mov    -0x6d8(%rbp),%r12
  688e56:	48 89 ec             	mov    %rbp,%rsp
  688e59:	5d                   	pop    %rbp
  688e5a:	48 89 dc             	mov    %rbx,%rsp
  688e5d:	5b                   	pop    %rbx
  688e5e:	c3                   	retq   
  688e5f:	53                   	push   %rbx
  688e60:	48 89 e3             	mov    %rsp,%rbx
  688e63:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  688e67:	55                   	push   %rbp
  688e68:	55                   	push   %rbp
  688e69:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  688e6d:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  688e72:	48 89 e5             	mov    %rsp,%rbp
  688e75:	48 81 ec 90 0b 00 00 	sub    $0xb90,%rsp
  688e7c:	4c 89 bd 10 f9 ff ff 	mov    %r15,-0x6f0(%rbp)
  688e83:	4c 89 ad 20 f9 ff ff 	mov    %r13,-0x6e0(%rbp)
  688e8a:	4c 8b 7b 20          	mov    0x20(%rbx),%r15
  688e8e:	4c 8b 6b 18          	mov    0x18(%rbx),%r13
  688e92:	48 8b 43 38          	mov    0x38(%rbx),%rax
  688e96:	48 8b 73 40          	mov    0x40(%rbx),%rsi
  688e9a:	4c 89 a5 28 f9 ff ff 	mov    %r12,-0x6d8(%rbp)
  688ea1:	4c 8b 63 10          	mov    0x10(%rbx),%r12
  688ea5:	4d 8b 3f             	mov    (%r15),%r15
  688ea8:	4d 8b 6d 00          	mov    0x0(%r13),%r13
  688eac:	4c 89 bd b8 f4 ff ff 	mov    %r15,-0xb48(%rbp)
  688eb3:	4c 89 ad 88 f4 ff ff 	mov    %r13,-0xb78(%rbp)
  688eba:	44 8b 3a             	mov    (%rdx),%r15d
  688ebd:	4d 8b 28             	mov    (%r8),%r13
  688ec0:	48 8b 53 50          	mov    0x50(%rbx),%rdx
  688ec4:	4c 8b 53 28          	mov    0x28(%rbx),%r10
  688ec8:	4c 8b 43 58          	mov    0x58(%rbx),%r8
  688ecc:	8b 00                	mov    (%rax),%eax
  688ece:	8b 36                	mov    (%rsi),%esi
  688ed0:	45 8b 24 24          	mov    (%r12),%r12d
  688ed4:	89 85 10 fa ff ff    	mov    %eax,-0x5f0(%rbp)
  688eda:	89 b5 c8 f8 ff ff    	mov    %esi,-0x738(%rbp)
  688ee0:	41 8b 01             	mov    (%r9),%eax
  688ee3:	48 8b 73 68          	mov    0x68(%rbx),%rsi
  688ee7:	44 89 a5 c0 fd ff ff 	mov    %r12d,-0x240(%rbp)
  688eee:	44 8b 21             	mov    (%rcx),%r12d
  688ef1:	89 85 b8 fd ff ff    	mov    %eax,-0x248(%rbp)
  688ef7:	48 8b 0a             	mov    (%rdx),%rcx
  688efa:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
  688efe:	48 8b 53 60          	mov    0x60(%rbx),%rdx
  688f02:	4d 8b 12             	mov    (%r10),%r10
  688f05:	49 8b 00             	mov    (%r8),%rax
  688f08:	8b 3f                	mov    (%rdi),%edi
  688f0a:	4c 89 95 98 f4 ff ff 	mov    %r10,-0xb68(%rbp)
  688f11:	48 89 85 a0 f4 ff ff 	mov    %rax,-0xb60(%rbp)
  688f18:	48 8d 43 70          	lea    0x70(%rbx),%rax
  688f1c:	4c 8b 00             	mov    (%rax),%r8
  688f1f:	4c 8b 50 10          	mov    0x10(%rax),%r10
  688f23:	48 8b 40 18          	mov    0x18(%rax),%rax
  688f27:	89 bd c0 f9 ff ff    	mov    %edi,-0x640(%rbp)
  688f2d:	48 63 3e             	movslq (%rsi),%rdi
  688f30:	4c 89 b5 18 f9 ff ff 	mov    %r14,-0x6e8(%rbp)
  688f37:	48 8d 73 48          	lea    0x48(%rbx),%rsi
  688f3b:	4c 8b 36             	mov    (%rsi),%r14
  688f3e:	48 89 8d a8 f4 ff ff 	mov    %rcx,-0xb58(%rbp)
  688f45:	4d 8b 1b             	mov    (%r11),%r11
  688f48:	48 8b 0a             	mov    (%rdx),%rcx
  688f4b:	48 89 bd 18 f7 ff ff 	mov    %rdi,-0x8e8(%rbp)
  688f52:	48 8b 7e 70          	mov    0x70(%rsi),%rdi
  688f56:	48 8b 76 68          	mov    0x68(%rsi),%rsi
  688f5a:	4c 89 9d 90 f4 ff ff 	mov    %r11,-0xb70(%rbp)
  688f61:	48 89 8d b0 f4 ff ff 	mov    %rcx,-0xb50(%rbp)
  688f68:	4d 63 08             	movslq (%r8),%r9
  688f6b:	4d 63 1a             	movslq (%r10),%r11
  688f6e:	48 63 10             	movslq (%rax),%rdx
  688f71:	33 c0                	xor    %eax,%eax
  688f73:	48 8b 8b a8 00 00 00 	mov    0xa8(%rbx),%rcx
  688f7a:	48 89 bd 80 f4 ff ff 	mov    %rdi,-0xb80(%rbp)
  688f81:	48 8d bd d0 f4 ff ff 	lea    -0xb30(%rbp),%rdi
  688f88:	48 89 77 a8          	mov    %rsi,-0x58(%rdi)
  688f8c:	48 8b b3 c0 00 00 00 	mov    0xc0(%rbx),%rsi
  688f93:	4d 8b 36             	mov    (%r14),%r14
  688f96:	4c 89 8d 20 f7 ff ff 	mov    %r9,-0x8e0(%rbp)
  688f9d:	4c 89 9d 10 f7 ff ff 	mov    %r11,-0x8f0(%rbp)
  688fa4:	48 89 95 08 f7 ff ff 	mov    %rdx,-0x8f8(%rbp)
  688fab:	48 89 4f a0          	mov    %rcx,-0x60(%rdi)
  688faf:	e8 fc 54 df ff       	callq  47e4b0 <_f90_dope_vector_init>
  688fb4:	48 89 85 58 f8 ff ff 	mov    %rax,-0x7a8(%rbp)
  688fbb:	48 83 c0 1f          	add    $0x1f,%rax
  688fbf:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  688fc3:	48 2b e0             	sub    %rax,%rsp
  688fc6:	48 89 e0             	mov    %rsp,%rax
  688fc9:	48 89 85 50 f8 ff ff 	mov    %rax,-0x7b0(%rbp)
  688fd0:	48 89 c2             	mov    %rax,%rdx
  688fd3:	48 8d bd 30 f5 ff ff 	lea    -0xad0(%rbp),%rdi
  688fda:	33 c0                	xor    %eax,%eax
  688fdc:	48 8b b5 80 f4 ff ff 	mov    -0xb80(%rbp),%rsi
  688fe3:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  688fe7:	e8 c4 54 df ff       	callq  47e4b0 <_f90_dope_vector_init>
  688fec:	48 89 85 68 f8 ff ff 	mov    %rax,-0x798(%rbp)
  688ff3:	48 83 c0 1f          	add    $0x1f,%rax
  688ff7:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  688ffb:	48 2b e0             	sub    %rax,%rsp
  688ffe:	48 89 e0             	mov    %rsp,%rax
  689001:	48 89 85 60 f8 ff ff 	mov    %rax,-0x7a0(%rbp)
  689008:	48 89 c2             	mov    %rax,%rdx
  68900b:	48 8d bd 90 f5 ff ff 	lea    -0xa70(%rbp),%rdi
  689012:	33 c0                	xor    %eax,%eax
  689014:	48 8b b5 78 f4 ff ff 	mov    -0xb88(%rbp),%rsi
  68901b:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  68901f:	e8 8c 54 df ff       	callq  47e4b0 <_f90_dope_vector_init>
  689024:	48 89 85 78 f8 ff ff 	mov    %rax,-0x788(%rbp)
  68902b:	48 83 c0 1f          	add    $0x1f,%rax
  68902f:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  689033:	48 2b e0             	sub    %rax,%rsp
  689036:	48 89 e0             	mov    %rsp,%rax
  689039:	48 89 85 70 f8 ff ff 	mov    %rax,-0x790(%rbp)
  689040:	48 89 c2             	mov    %rax,%rdx
  689043:	48 8d bd f0 f5 ff ff 	lea    -0xa10(%rbp),%rdi
  68904a:	33 c0                	xor    %eax,%eax
  68904c:	48 8b b5 70 f4 ff ff 	mov    -0xb90(%rbp),%rsi
  689053:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  689057:	e8 54 54 df ff       	callq  47e4b0 <_f90_dope_vector_init>
  68905c:	48 89 85 80 f8 ff ff 	mov    %rax,-0x780(%rbp)
  689063:	48 83 c0 1f          	add    $0x1f,%rax
  689067:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68906b:	48 2b e0             	sub    %rax,%rsp
  68906e:	48 89 e0             	mov    %rsp,%rax
  689071:	48 89 85 88 f8 ff ff 	mov    %rax,-0x778(%rbp)
  689078:	48 89 85 f0 f5 ff ff 	mov    %rax,-0xa10(%rbp)
  68907f:	45 3b e7             	cmp    %r15d,%r12d
  689082:	0f 8c 8a 00 00 00    	jl     689112 <step3d_t_mod_mp_step3d_t_tile_+0x24a2>
  689088:	48 83 c4 e0          	add    $0xffffffffffffffe0,%rsp
  68908c:	48 8d 85 24 fa ff ff 	lea    -0x5dc(%rbp),%rax
  689093:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  689099:	bf bc 56 b3 00       	mov    $0xb356bc,%edi
  68909e:	ba 22 00 00 00       	mov    $0x22,%edx
  6890a3:	48 8d 8d 20 fa ff ff 	lea    -0x5e0(%rbp),%rcx
  6890aa:	44 89 78 f4          	mov    %r15d,-0xc(%rax)
  6890ae:	4c 8d 85 18 fa ff ff 	lea    -0x5e8(%rbp),%r8
  6890b5:	48 89 04 24          	mov    %rax,(%rsp)
  6890b9:	4c 8d 8d 1c fa ff ff 	lea    -0x5e4(%rbp),%r9
  6890c0:	44 89 54 24 08       	mov    %r10d,0x8(%rsp)
  6890c5:	44 89 54 24 10       	mov    %r10d,0x10(%rsp)
  6890ca:	8b 70 9c             	mov    -0x64(%rax),%esi
  6890cd:	44 89 60 f8          	mov    %r12d,-0x8(%rax)
  6890d1:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%rax)
  6890d8:	44 89 10             	mov    %r10d,(%rax)
  6890db:	e8 50 4d d8 ff       	callq  40de30 <__kmpc_for_static_init_4@plt>
  6890e0:	48 83 c4 20          	add    $0x20,%rsp
  6890e4:	8b 85 18 fa ff ff    	mov    -0x5e8(%rbp),%eax
  6890ea:	8b 95 1c fa ff ff    	mov    -0x5e4(%rbp),%edx
  6890f0:	89 85 28 f7 ff ff    	mov    %eax,-0x8d8(%rbp)
  6890f6:	41 3b c4             	cmp    %r12d,%eax
  6890f9:	0f 8e 99 00 00 00    	jle    689198 <step3d_t_mod_mp_step3d_t_tile_+0x2528>
  6890ff:	bf bc 56 b3 00       	mov    $0xb356bc,%edi
  689104:	8b b5 c0 f9 ff ff    	mov    -0x640(%rbp),%esi
  68910a:	c5 f8 77             	vzeroupper 
  68910d:	e8 ee 4f d8 ff       	callq  40e100 <__kmpc_for_static_fini@plt>
  689112:	48 8b 95 88 f8 ff ff 	mov    -0x778(%rbp),%rdx
  689119:	48 8b 85 80 f8 ff ff 	mov    -0x780(%rbp),%rax
  689120:	48 83 c0 1f          	add    $0x1f,%rax
  689124:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  689128:	48 03 e0             	add    %rax,%rsp
  68912b:	48 8b 95 70 f8 ff ff 	mov    -0x790(%rbp),%rdx
  689132:	48 8b 85 78 f8 ff ff 	mov    -0x788(%rbp),%rax
  689139:	48 83 c0 1f          	add    $0x1f,%rax
  68913d:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  689141:	48 03 e0             	add    %rax,%rsp
  689144:	48 8b 95 60 f8 ff ff 	mov    -0x7a0(%rbp),%rdx
  68914b:	48 8b 85 68 f8 ff ff 	mov    -0x798(%rbp),%rax
  689152:	48 83 c0 1f          	add    $0x1f,%rax
  689156:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68915a:	48 03 e0             	add    %rax,%rsp
  68915d:	48 8b 95 50 f8 ff ff 	mov    -0x7b0(%rbp),%rdx
  689164:	48 8b 85 58 f8 ff ff 	mov    -0x7a8(%rbp),%rax
  68916b:	48 83 c0 1f          	add    $0x1f,%rax
  68916f:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  689173:	48 03 e0             	add    %rax,%rsp
  689176:	4c 8b bd 10 f9 ff ff 	mov    -0x6f0(%rbp),%r15
  68917d:	4c 8b b5 18 f9 ff ff 	mov    -0x6e8(%rbp),%r14
  689184:	4c 8b ad 20 f9 ff ff 	mov    -0x6e0(%rbp),%r13
  68918b:	4c 8b a5 28 f9 ff ff 	mov    -0x6d8(%rbp),%r12
  689192:	c9                   	leaveq 
  689193:	48 89 dc             	mov    %rbx,%rsp
  689196:	5b                   	pop    %rbx
  689197:	c3                   	retq   
  689198:	41 3b d4             	cmp    %r12d,%edx
  68919b:	49 63 06             	movslq (%r14),%rax
  68919e:	44 0f 4c e2          	cmovl  %edx,%r12d
  6891a2:	48 8b 15 d7 2e 4b 00 	mov    0x4b2ed7(%rip),%rdx        # b3c080 <mod_param_mp_nt_+0x40>
  6891a9:	48 c1 e2 02          	shl    $0x2,%rdx
  6891ad:	48 f7 da             	neg    %rdx
  6891b0:	4c 8b 35 29 2f 4b 00 	mov    0x4b2f29(%rip),%r14        # b3c0e0 <mod_param_mp_n_+0x40>
  6891b7:	49 c1 e6 02          	shl    $0x2,%r14
  6891bb:	49 63 7d 00          	movslq 0x0(%r13),%rdi
  6891bf:	49 f7 de             	neg    %r14
  6891c2:	48 03 15 77 2e 4b 00 	add    0x4b2e77(%rip),%rdx        # b3c040 <mod_param_mp_nt_>
  6891c9:	4c 8b 1d 50 a6 4b 00 	mov    0x4ba650(%rip),%r11        # b43820 <mod_sources_mp_nsrc_>
  6891d0:	4c 89 9d 30 f7 ff ff 	mov    %r11,-0x8d0(%rbp)
  6891d7:	4c 03 35 c2 2e 4b 00 	add    0x4b2ec2(%rip),%r14        # b3c0a0 <mod_param_mp_n_>
  6891de:	4c 8b 9d b8 f4 ff ff 	mov    -0xb48(%rbp),%r11
  6891e5:	4c 89 b5 d8 f8 ff ff 	mov    %r14,-0x728(%rbp)
  6891ec:	44 8b 34 ba          	mov    (%rdx,%rdi,4),%r14d
  6891f0:	48 8b 15 c9 a5 4b 00 	mov    0x4ba5c9(%rip),%rdx        # b437c0 <mod_sources_mp_sources_>
  6891f7:	48 89 95 98 f8 ff ff 	mov    %rdx,-0x768(%rbp)
  6891fe:	49 8b 93 80 00 00 00 	mov    0x80(%r11),%rdx
  689205:	48 0f af c2          	imul   %rdx,%rax
  689209:	c5 7d 10 0d 6f bb 23 	vmovupd 0x23bb6f(%rip),%ymm9        # 8c4d80 <var$630.126.450+0xc0>
  689210:	00 
  689211:	c5 7b 10 25 af ac 4b 	vmovsd 0x4bacaf(%rip),%xmm12        # b43ec8 <mod_scalars_mp_lambda_>
  689218:	00 
  689219:	c5 7b 10 1d df dd 23 	vmovsd 0x23dddf(%rip),%xmm11        # 8c7000 <__STRLITPACK_199.115+0x70>
  689220:	00 
  689221:	48 8b 35 18 21 4b 00 	mov    0x4b2118(%rip),%rsi        # b3b340 <mod_scalars_mp_dt_>
  689228:	48 89 b5 50 f7 ff ff 	mov    %rsi,-0x8b0(%rbp)
  68922f:	44 2b a5 28 f7 ff ff 	sub    -0x8d8(%rbp),%r12d
  689236:	48 8b 35 fb 52 4b 00 	mov    0x4b52fb(%rip),%rsi        # b3e538 <mod_scalars_mp_ltracersrc_+0x58>
  68923d:	41 ff c4             	inc    %r12d
  689240:	48 89 b5 58 f7 ff ff 	mov    %rsi,-0x8a8(%rbp)
  689247:	44 89 a5 c8 f9 ff ff 	mov    %r12d,-0x638(%rbp)
  68924e:	48 8b b5 b0 f4 ff ff 	mov    -0xb50(%rbp),%rsi
  689255:	4c 8b 25 24 21 4b 00 	mov    0x4b2124(%rip),%r12        # b3b380 <mod_scalars_mp_dt_+0x40>
  68925c:	48 89 85 a8 f9 ff ff 	mov    %rax,-0x658(%rbp)
  689263:	4c 89 a5 48 f7 ff ff 	mov    %r12,-0x8b8(%rbp)
  68926a:	4c 8b 3d 9f 52 4b 00 	mov    0x4b529f(%rip),%r15        # b3e510 <mod_scalars_mp_ltracersrc_+0x30>
  689271:	49 8b 43 68          	mov    0x68(%r11),%rax
  689275:	4c 8b 25 b4 52 4b 00 	mov    0x4b52b4(%rip),%r12        # b3e530 <mod_scalars_mp_ltracersrc_+0x50>
  68927c:	4c 89 bd e0 fb ff ff 	mov    %r15,-0x420(%rbp)
  689283:	49 89 c7             	mov    %rax,%r15
  689286:	4c 89 a5 38 f7 ff ff 	mov    %r12,-0x8c8(%rbp)
  68928d:	49 f7 df             	neg    %r15
  689290:	4c 8b 66 68          	mov    0x68(%rsi),%r12
  689294:	4c 89 bd 18 fe ff ff 	mov    %r15,-0x1e8(%rbp)
  68929b:	4c 8b 3e             	mov    (%rsi),%r15
  68929e:	4c 89 a5 10 fc ff ff 	mov    %r12,-0x3f0(%rbp)
  6892a5:	4d 2b fc             	sub    %r12,%r15
  6892a8:	4c 8b 66 50          	mov    0x50(%rsi),%r12
  6892ac:	48 8b 76 38          	mov    0x38(%rsi),%rsi
  6892b0:	48 89 b5 d0 f9 ff ff 	mov    %rsi,-0x630(%rbp)
  6892b7:	48 8b b5 a8 f4 ff ff 	mov    -0xb58(%rbp),%rsi
  6892be:	4c 89 bd 70 f4 ff ff 	mov    %r15,-0xb90(%rbp)
  6892c5:	4c 89 a5 58 f9 ff ff 	mov    %r12,-0x6a8(%rbp)
  6892cc:	4c 8b 7e 68          	mov    0x68(%rsi),%r15
  6892d0:	4c 8b 26             	mov    (%rsi),%r12
  6892d3:	4c 89 bd e0 fa ff ff 	mov    %r15,-0x520(%rbp)
  6892da:	4d 2b e7             	sub    %r15,%r12
  6892dd:	4c 8b 7e 50          	mov    0x50(%rsi),%r15
  6892e1:	4c 89 bd 60 f9 ff ff 	mov    %r15,-0x6a0(%rbp)
  6892e8:	4c 8b bd a0 f4 ff ff 	mov    -0xb60(%rbp),%r15
  6892ef:	4c 89 a5 98 f9 ff ff 	mov    %r12,-0x668(%rbp)
  6892f6:	44 89 b5 00 fc ff ff 	mov    %r14d,-0x400(%rbp)
  6892fd:	4d 8b 27             	mov    (%r15),%r12
  689300:	4c 89 a5 80 f9 ff ff 	mov    %r12,-0x680(%rbp)
  689307:	4d 8b a7 80 00 00 00 	mov    0x80(%r15),%r12
  68930e:	4c 89 a5 e8 f9 ff ff 	mov    %r12,-0x618(%rbp)
  689315:	4d 8b 67 68          	mov    0x68(%r15),%r12
  689319:	4c 89 a5 d8 fa ff ff 	mov    %r12,-0x528(%rbp)
  689320:	4d 8b 67 50          	mov    0x50(%r15),%r12
  689324:	4c 89 a5 48 f9 ff ff 	mov    %r12,-0x6b8(%rbp)
  68932b:	4c 8b 25 ae 82 4b 00 	mov    0x4b82ae(%rip),%r12        # b415e0 <mod_scalars_mp_lwsrc_>
  689332:	4c 89 a5 88 f7 ff ff 	mov    %r12,-0x878(%rbp)
  689339:	4c 8b a5 98 f4 ff ff 	mov    -0xb68(%rbp),%r12
  689340:	4d 8b 7f 38          	mov    0x38(%r15),%r15
  689344:	4c 89 bd d8 f9 ff ff 	mov    %r15,-0x628(%rbp)
  68934b:	4c 8b 3d ce 82 4b 00 	mov    0x4b82ce(%rip),%r15        # b41620 <mod_scalars_mp_lwsrc_+0x40>
  689352:	4c 89 bd 90 f7 ff ff 	mov    %r15,-0x870(%rbp)
  689359:	4d 8b 3c 24          	mov    (%r12),%r15
  68935d:	4c 89 bd 80 f7 ff ff 	mov    %r15,-0x880(%rbp)
  689364:	4d 8b 7c 24 50       	mov    0x50(%r12),%r15
  689369:	4c 89 bd a0 f7 ff ff 	mov    %r15,-0x860(%rbp)
  689370:	4c 8b bd 90 f4 ff ff 	mov    -0xb70(%rbp),%r15
  689377:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  68937c:	4c 89 a5 f0 fb ff ff 	mov    %r12,-0x410(%rbp)
  689383:	4d 8b 27             	mov    (%r15),%r12
  689386:	4c 89 a5 78 f7 ff ff 	mov    %r12,-0x888(%rbp)
  68938d:	4d 8b 67 50          	mov    0x50(%r15),%r12
  689391:	4c 89 a5 a8 f7 ff ff 	mov    %r12,-0x858(%rbp)
  689398:	4c 8b a5 88 f4 ff ff 	mov    -0xb78(%rbp),%r12
  68939f:	4d 8b 7f 38          	mov    0x38(%r15),%r15
  6893a3:	4c 89 bd f8 fb ff ff 	mov    %r15,-0x408(%rbp)
  6893aa:	4d 8b 3c 24          	mov    (%r12),%r15
  6893ae:	4c 89 bd b8 f7 ff ff 	mov    %r15,-0x848(%rbp)
  6893b5:	4d 8b 7c 24 68       	mov    0x68(%r12),%r15
  6893ba:	4c 89 bd 48 fc ff ff 	mov    %r15,-0x3b8(%rbp)
  6893c1:	4d 8b 7c 24 50       	mov    0x50(%r12),%r15
  6893c6:	4d 63 f6             	movslq %r14d,%r14
  6893c9:	4c 89 bd 98 f7 ff ff 	mov    %r15,-0x868(%rbp)
  6893d0:	4c 89 b5 e8 fb ff ff 	mov    %r14,-0x418(%rbp)
  6893d7:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  6893de:	44 8b b5 b8 fd ff ff 	mov    -0x248(%rbp),%r14d
  6893e5:	45 2b fe             	sub    %r14d,%r15d
  6893e8:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  6893ed:	41 ff c7             	inc    %r15d
  6893f0:	4d 63 f6             	movslq %r14d,%r14
  6893f3:	4c 89 a5 d0 fd ff ff 	mov    %r12,-0x230(%rbp)
  6893fa:	4d 89 f4             	mov    %r14,%r12
  6893fd:	48 8b 76 38          	mov    0x38(%rsi),%rsi
  689401:	4c 0f af e6          	imul   %rsi,%r12
  689405:	44 8b 0d 84 b6 4f 00 	mov    0x4fb684(%rip),%r9d        # b84a90 <mod_param_mp_nat_>
  68940c:	48 89 bd f8 fa ff ff 	mov    %rdi,-0x508(%rbp)
  689413:	44 89 8d c0 fb ff ff 	mov    %r9d,-0x440(%rbp)
  68941a:	48 8b 0d 3f a4 4b 00 	mov    0x4ba43f(%rip),%rcx        # b43860 <mod_sources_mp_nsrc_+0x40>
  689421:	48 8b 3d d8 a3 4b 00 	mov    0x4ba3d8(%rip),%rdi        # b43800 <mod_sources_mp_sources_+0x40>
  689428:	4c 8b 0d b1 50 4b 00 	mov    0x4b50b1(%rip),%r9        # b3e4e0 <mod_scalars_mp_ltracersrc_>
  68942f:	48 89 b5 e0 f9 ff ff 	mov    %rsi,-0x620(%rbp)
  689436:	4c 89 f6             	mov    %r14,%rsi
  689439:	48 89 8d 60 f7 ff ff 	mov    %rcx,-0x8a0(%rbp)
  689440:	48 89 bd 68 f7 ff ff 	mov    %rdi,-0x898(%rbp)
  689447:	4c 89 8d 70 f7 ff ff 	mov    %r9,-0x890(%rbp)
  68944e:	49 8b 0b             	mov    (%r11),%rcx
  689451:	4d 8b 8b 98 00 00 00 	mov    0x98(%r11),%r9
  689458:	49 8b 7b 50          	mov    0x50(%r11),%rdi
  68945c:	4d 8b 5b 38          	mov    0x38(%r11),%r11
  689460:	49 0f af f3          	imul   %r11,%rsi
  689464:	4c 8b 85 18 f7 ff ff 	mov    -0x8e8(%rbp),%r8
  68946b:	4c 8b 95 20 f7 ff ff 	mov    -0x8e0(%rbp),%r10
  689472:	4c 89 9d e0 fd ff ff 	mov    %r11,-0x220(%rbp)
  689479:	4d 2b d0             	sub    %r8,%r10
  68947c:	49 c1 e0 03          	shl    $0x3,%r8
  689480:	4e 8d 1c f5 00 00 00 	lea    0x0(,%r14,8),%r11
  689487:	00 
  689488:	44 89 bd 70 fd ff ff 	mov    %r15d,-0x290(%rbp)
  68948f:	41 d1 ef             	shr    %r15d
  689492:	4c 89 9d 48 f8 ff ff 	mov    %r11,-0x7b8(%rbp)
  689499:	4d 2b d8             	sub    %r8,%r11
  68949c:	44 89 bd 30 fd ff ff 	mov    %r15d,-0x2d0(%rbp)
  6894a3:	4c 89 bd f8 fc ff ff 	mov    %r15,-0x308(%rbp)
  6894aa:	4c 89 a5 90 f9 ff ff 	mov    %r12,-0x670(%rbp)
  6894b1:	4c 8b bd 90 f5 ff ff 	mov    -0xa70(%rbp),%r15
  6894b8:	4c 8b a5 f0 f5 ff ff 	mov    -0xa10(%rbp),%r12
  6894bf:	4c 89 85 18 f7 ff ff 	mov    %r8,-0x8e8(%rbp)
  6894c6:	4c 8b 2d 53 50 4b 00 	mov    0x4b5053(%rip),%r13        # b3e520 <mod_scalars_mp_ltracersrc_+0x40>
  6894cd:	4f 8d 04 3b          	lea    (%r11,%r15,1),%r8
  6894d1:	4c 89 85 f0 f8 ff ff 	mov    %r8,-0x710(%rbp)
  6894d8:	4f 8d 04 23          	lea    (%r11,%r12,1),%r8
  6894dc:	4c 89 85 00 fd ff ff 	mov    %r8,-0x300(%rbp)
  6894e3:	4d 89 d0             	mov    %r10,%r8
  6894e6:	49 c1 e0 04          	shl    $0x4,%r8
  6894ea:	4c 89 ad 40 f7 ff ff 	mov    %r13,-0x8c0(%rbp)
  6894f1:	4d 03 c3             	add    %r11,%r8
  6894f4:	4c 8b ad d0 f4 ff ff 	mov    -0xb30(%rbp),%r13
  6894fb:	48 89 b5 70 f9 ff ff 	mov    %rsi,-0x690(%rbp)
  689502:	48 8b b5 30 f5 ff ff 	mov    -0xad0(%rbp),%rsi
  689509:	4c 89 b5 10 f8 ff ff 	mov    %r14,-0x7f0(%rbp)
  689510:	4f 8d 34 2b          	lea    (%r11,%r13,1),%r14
  689514:	4c 89 b5 c8 fd ff ff 	mov    %r14,-0x238(%rbp)
  68951b:	4c 89 ad 38 f8 ff ff 	mov    %r13,-0x7c8(%rbp)
  689522:	4d 8d 34 33          	lea    (%r11,%rsi,1),%r14
  689526:	4c 89 b5 e8 f8 ff ff 	mov    %r14,-0x718(%rbp)
  68952d:	4f 8d 34 d3          	lea    (%r11,%r10,8),%r14
  689531:	4c 89 8d c8 fb ff ff 	mov    %r9,-0x438(%rbp)
  689538:	4f 8d 1c 07          	lea    (%r15,%r8,1),%r11
  68953c:	4d 03 fe             	add    %r14,%r15
  68953f:	4c 89 bd 00 fb ff ff 	mov    %r15,-0x500(%rbp)
  689546:	4f 8d 3c 04          	lea    (%r12,%r8,1),%r15
  68954a:	4d 03 e6             	add    %r14,%r12
  68954d:	4c 89 a5 b0 fd ff ff 	mov    %r12,-0x250(%rbp)
  689554:	4e 8d 24 06          	lea    (%rsi,%r8,1),%r12
  689558:	4c 89 a5 90 fd ff ff 	mov    %r12,-0x270(%rbp)
  68955f:	4d 03 c5             	add    %r13,%r8
  689562:	4c 63 a5 28 f7 ff ff 	movslq -0x8d8(%rbp),%r12
  689569:	49 03 f6             	add    %r14,%rsi
  68956c:	4d 03 f5             	add    %r13,%r14
  68956f:	4d 89 e5             	mov    %r12,%r13
  689572:	4c 0f af ad 60 f9 ff 	imul   -0x6a0(%rbp),%r13
  689579:	ff 
  68957a:	4c 89 b5 d8 fd ff ff 	mov    %r14,-0x228(%rbp)
  689581:	49 89 ce             	mov    %rcx,%r14
  689584:	4d 2b f1             	sub    %r9,%r14
  689587:	4c 2b ca             	sub    %rdx,%r9
  68958a:	4c 89 85 f0 fa ff ff 	mov    %r8,-0x510(%rbp)
  689591:	4d 89 e0             	mov    %r12,%r8
  689594:	4c 89 a5 00 f8 ff ff 	mov    %r12,-0x800(%rbp)
  68959b:	4c 0f af e7          	imul   %rdi,%r12
  68959f:	4c 0f af 85 58 f9 ff 	imul   -0x6a8(%rbp),%r8
  6895a6:	ff 
  6895a7:	4c 89 9d 98 fd ff ff 	mov    %r11,-0x268(%rbp)
  6895ae:	4c 89 8d b0 f7 ff ff 	mov    %r9,-0x850(%rbp)
  6895b5:	4c 8b 9d 08 f7 ff ff 	mov    -0x8f8(%rbp),%r11
  6895bc:	4c 89 b5 c8 f7 ff ff 	mov    %r14,-0x838(%rbp)
  6895c3:	4d 03 f1             	add    %r9,%r14
  6895c6:	4c 0f af df          	imul   %rdi,%r11
  6895ca:	4c 8b 8d e0 fd ff ff 	mov    -0x220(%rbp),%r9
  6895d1:	4c 89 ad 80 f4 ff ff 	mov    %r13,-0xb80(%rbp)
  6895d8:	4c 8b ad 10 f7 ff ff 	mov    -0x8f0(%rbp),%r13
  6895df:	4d 0f af e9          	imul   %r9,%r13
  6895e3:	48 89 bd 68 f9 ff ff 	mov    %rdi,-0x698(%rbp)
  6895ea:	4c 89 e7             	mov    %r12,%rdi
  6895ed:	49 2b fb             	sub    %r11,%rdi
  6895f0:	4c 89 bd 88 fd ff ff 	mov    %r15,-0x278(%rbp)
  6895f7:	4e 8d 3c 18          	lea    (%rax,%r11,1),%r15
  6895fb:	4c 89 85 78 f4 ff ff 	mov    %r8,-0xb88(%rbp)
  689602:	49 89 f8             	mov    %rdi,%r8
  689605:	4c 89 a5 20 f8 ff ff 	mov    %r12,-0x7e0(%rbp)
  68960c:	4d 2b e5             	sub    %r13,%r12
  68960f:	4c 89 bd d8 f7 ff ff 	mov    %r15,-0x828(%rbp)
  689616:	49 f7 d8             	neg    %r8
  689619:	4d 2b fc             	sub    %r12,%r15
  68961c:	49 f7 d8             	neg    %r8
  68961f:	49 f7 df             	neg    %r15
  689622:	4d 03 c6             	add    %r14,%r8
  689625:	4c 89 b5 e8 f7 ff ff 	mov    %r14,-0x818(%rbp)
  68962c:	4d 03 fe             	add    %r14,%r15
  68962f:	4c 8b b5 a8 f9 ff ff 	mov    -0x658(%rbp),%r14
  689636:	4c 89 95 20 f7 ff ff 	mov    %r10,-0x8e0(%rbp)
  68963d:	4e 8d 14 d5 08 00 00 	lea    0x8(,%r10,8),%r10
  689644:	00 
  689645:	48 89 b5 a8 fd ff ff 	mov    %rsi,-0x258(%rbp)
  68964c:	48 89 c6             	mov    %rax,%rsi
  68964f:	4c 89 95 a0 fd ff ff 	mov    %r10,-0x260(%rbp)
  689656:	49 f7 da             	neg    %r10
  689659:	4c 89 95 20 fe ff ff 	mov    %r10,-0x1e0(%rbp)
  689660:	49 2b f3             	sub    %r11,%rsi
  689663:	4c 89 9d e0 f7 ff ff 	mov    %r11,-0x820(%rbp)
  68966a:	4d 89 eb             	mov    %r13,%r11
  68966d:	4c 8b 95 70 f9 ff ff 	mov    -0x690(%rbp),%r10
  689674:	4d 03 e9             	add    %r9,%r13
  689677:	4d 2b da             	sub    %r10,%r11
  68967a:	4d 03 ce             	add    %r14,%r9
  68967d:	49 f7 d9             	neg    %r9
  689680:	4d 03 cb             	add    %r11,%r9
  689683:	49 f7 d9             	neg    %r9
  689686:	4d 03 c8             	add    %r8,%r9
  689689:	4c 89 8d 00 f9 ff ff 	mov    %r9,-0x700(%rbp)
  689690:	4f 8d 0c 32          	lea    (%r10,%r14,1),%r9
  689694:	4d 2b e9             	sub    %r9,%r13
  689697:	4d 03 cc             	add    %r12,%r9
  68969a:	4d 2b c5             	sub    %r13,%r8
  68969d:	4c 89 85 08 f9 ff ff 	mov    %r8,-0x6f8(%rbp)
  6896a4:	4c 8d 04 02          	lea    (%rdx,%rax,1),%r8
  6896a8:	48 89 85 78 fd ff ff 	mov    %rax,-0x288(%rbp)
  6896af:	4c 89 c0             	mov    %r8,%rax
  6896b2:	48 2b c7             	sub    %rdi,%rax
  6896b5:	48 89 95 28 f8 ff ff 	mov    %rdx,-0x7d8(%rbp)
  6896bc:	4c 89 c2             	mov    %r8,%rdx
  6896bf:	48 f7 d8             	neg    %rax
  6896c2:	48 2b d6             	sub    %rsi,%rdx
  6896c5:	48 03 c1             	add    %rcx,%rax
  6896c8:	48 f7 da             	neg    %rdx
  6896cb:	49 2b c3             	sub    %r11,%rax
  6896ce:	48 03 d1             	add    %rcx,%rdx
  6896d1:	49 03 c6             	add    %r14,%rax
  6896d4:	49 03 d1             	add    %r9,%rdx
  6896d7:	4c 89 bd f8 f8 ff ff 	mov    %r15,-0x708(%rbp)
  6896de:	48 89 85 d0 f7 ff ff 	mov    %rax,-0x830(%rbp)
  6896e5:	48 63 85 c0 fd ff ff 	movslq -0x240(%rbp),%rax
  6896ec:	4c 8b bd 10 f8 ff ff 	mov    -0x7f0(%rbp),%r15
  6896f3:	49 2b c7             	sub    %r15,%rax
  6896f6:	48 89 95 30 f9 ff ff 	mov    %rdx,-0x6d0(%rbp)
  6896fd:	48 ff c0             	inc    %rax
  689700:	48 8b 95 10 f7 ff ff 	mov    -0x8f0(%rbp),%rdx
  689707:	48 89 85 60 fd ff ff 	mov    %rax,-0x2a0(%rbp)
  68970e:	89 85 c0 f7 ff ff    	mov    %eax,-0x840(%rbp)
  689714:	83 e0 fc             	and    $0xfffffffc,%eax
  689717:	4c 8d 14 d5 00 00 00 	lea    0x0(,%rdx,8),%r10
  68971e:	00 
  68971f:	48 63 c0             	movslq %eax,%rax
  689722:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
  689729:	48 8b 85 48 f8 ff ff 	mov    -0x7b8(%rbp),%rax
  689730:	49 2b c2             	sub    %r10,%rax
  689733:	48 89 8d 40 f8 ff ff 	mov    %rcx,-0x7c0(%rbp)
  68973a:	48 89 bd 30 f8 ff ff 	mov    %rdi,-0x7d0(%rbp)
  689741:	4c 89 a5 f8 f7 ff ff 	mov    %r12,-0x808(%rbp)
  689748:	4c 8b ad e0 fa ff ff 	mov    -0x520(%rbp),%r13
  68974f:	4c 8d 0c 08          	lea    (%rax,%rcx,1),%r9
  689753:	4d 2b c8             	sub    %r8,%r9
  689756:	48 8b 8d 20 f8 ff ff 	mov    -0x7e0(%rbp),%rcx
  68975d:	48 89 b5 18 f8 ff ff 	mov    %rsi,-0x7e8(%rbp)
  689764:	4c 8b 95 80 f4 ff ff 	mov    -0xb80(%rbp),%r10
  68976b:	4c 89 9d 08 f8 ff ff 	mov    %r11,-0x7f8(%rbp)
  689772:	49 03 f9             	add    %r9,%rdi
  689775:	49 03 fe             	add    %r14,%rdi
  689778:	4f 8d 5c 2d 00       	lea    0x0(%r13,%r13,1),%r11
  68977d:	48 89 bd f0 f7 ff ff 	mov    %rdi,-0x810(%rbp)
  689784:	4a 8d 3c 31          	lea    (%rcx,%r14,1),%rdi
  689788:	48 8b 8d 08 f7 ff ff 	mov    -0x8f8(%rbp),%rcx
  68978f:	49 89 cc             	mov    %rcx,%r12
  689792:	4c 0f af a5 60 f9 ff 	imul   -0x6a0(%rbp),%r12
  689799:	ff 
  68979a:	48 03 fe             	add    %rsi,%rdi
  68979d:	4d 2b dc             	sub    %r12,%r11
  6897a0:	4c 03 cf             	add    %rdi,%r9
  6897a3:	4c 89 ef             	mov    %r13,%rdi
  6897a6:	4c 89 8d 40 f9 ff ff 	mov    %r9,-0x6c0(%rbp)
  6897ad:	49 2b fc             	sub    %r12,%rdi
  6897b0:	4c 8b 8d 98 f9 ff ff 	mov    -0x668(%rbp),%r9
  6897b7:	4c 8b ad e8 f9 ff ff 	mov    -0x618(%rbp),%r13
  6897be:	4c 8b a5 d8 fa ff ff 	mov    -0x528(%rbp),%r12
  6897c5:	c7 85 e0 f8 ff ff 00 	movl   $0x0,-0x720(%rbp)
  6897cc:	00 00 00 
  6897cf:	4e 8d 04 08          	lea    (%rax,%r9,1),%r8
  6897d3:	48 89 85 48 f8 ff ff 	mov    %rax,-0x7b8(%rbp)
  6897da:	4a 8d 34 07          	lea    (%rdi,%r8,1),%rsi
  6897de:	49 03 f2             	add    %r10,%rsi
  6897e1:	4d 03 c3             	add    %r11,%r8
  6897e4:	48 89 b5 38 f9 ff ff 	mov    %rsi,-0x6c8(%rbp)
  6897eb:	48 89 d6             	mov    %rdx,%rsi
  6897ee:	48 0f af b5 e0 f9 ff 	imul   -0x620(%rbp),%rsi
  6897f5:	ff 
  6897f6:	4d 03 c2             	add    %r10,%r8
  6897f9:	4c 2b d6             	sub    %rsi,%r10
  6897fc:	48 89 ce             	mov    %rcx,%rsi
  6897ff:	48 f7 da             	neg    %rdx
  689802:	48 2b b5 00 f8 ff ff 	sub    -0x800(%rbp),%rsi
  689809:	49 03 d7             	add    %r15,%rdx
  68980c:	48 0f af b5 48 f9 ff 	imul   -0x6b8(%rbp),%rsi
  689813:	ff 
  689814:	48 0f af 8d 58 f9 ff 	imul   -0x6a8(%rbp),%rcx
  68981b:	ff 
  68981c:	49 03 f9             	add    %r9,%rdi
  68981f:	4d 03 cb             	add    %r11,%r9
  689822:	49 89 d3             	mov    %rdx,%r11
  689825:	4d 03 ca             	add    %r10,%r9
  689828:	4c 0f af 9d d8 f9 ff 	imul   -0x628(%rbp),%r11
  68982f:	ff 
  689830:	48 0f af 95 d0 f9 ff 	imul   -0x630(%rbp),%rdx
  689837:	ff 
  689838:	49 03 fa             	add    %r10,%rdi
  68983b:	48 f7 d9             	neg    %rcx
  68983e:	4c 8b 95 90 f9 ff ff 	mov    -0x670(%rbp),%r10
  689845:	4d 03 ca             	add    %r10,%r9
  689848:	4c 03 d7             	add    %rdi,%r10
  68984b:	48 8b bd 80 f9 ff ff 	mov    -0x680(%rbp),%rdi
  689852:	49 89 ff             	mov    %rdi,%r15
  689855:	4d 2b fd             	sub    %r13,%r15
  689858:	4d 2b ec             	sub    %r12,%r13
  68985b:	4d 03 fc             	add    %r12,%r15
  68985e:	48 03 f8             	add    %rax,%rdi
  689861:	4c 2b fe             	sub    %rsi,%r15
  689864:	49 03 f5             	add    %r13,%rsi
  689867:	4d 03 df             	add    %r15,%r11
  68986a:	48 2b fe             	sub    %rsi,%rdi
  68986d:	4c 8b bd 70 f4 ff ff 	mov    -0xb90(%rbp),%r15
  689874:	48 03 8d 10 fc ff ff 	add    -0x3f0(%rbp),%rcx
  68987b:	4c 89 9d 50 f9 ff ff 	mov    %r11,-0x6b0(%rbp)
  689882:	4e 8d 1c 38          	lea    (%rax,%r15,1),%r11
  689886:	4c 03 f9             	add    %rcx,%r15
  689889:	4c 03 d9             	add    %rcx,%r11
  68988c:	48 8b 8d 78 f4 ff ff 	mov    -0xb88(%rbp),%rcx
  689893:	4c 03 f9             	add    %rcx,%r15
  689896:	49 03 d7             	add    %r15,%rdx
  689899:	4c 03 d9             	add    %rcx,%r11
  68989c:	4c 89 9d 78 f9 ff ff 	mov    %r11,-0x688(%rbp)
  6898a3:	33 c9                	xor    %ecx,%ecx
  6898a5:	c4 41 2d 57 d2       	vxorpd %ymm10,%ymm10,%ymm10
  6898aa:	44 8b a5 c8 f9 ff ff 	mov    -0x638(%rbp),%r12d
  6898b1:	4c 8b ad a8 fd ff ff 	mov    -0x258(%rbp),%r13
  6898b8:	4c 8b bd b0 fd ff ff 	mov    -0x250(%rbp),%r15
  6898bf:	4c 8b 9d 00 fb ff ff 	mov    -0x500(%rbp),%r11
  6898c6:	8b b5 e0 f8 ff ff    	mov    -0x720(%rbp),%esi
  6898cc:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  6898d3:	48 89 bd 80 f9 ff ff 	mov    %rdi,-0x680(%rbp)
  6898da:	48 89 95 88 f9 ff ff 	mov    %rdx,-0x678(%rbp)
  6898e1:	4c 89 95 90 f9 ff ff 	mov    %r10,-0x670(%rbp)
  6898e8:	4c 89 8d 98 f9 ff ff 	mov    %r9,-0x668(%rbp)
  6898ef:	4c 89 85 a0 f9 ff ff 	mov    %r8,-0x660(%rbp)
  6898f6:	33 d2                	xor    %edx,%edx
  6898f8:	48 83 bd e8 fb ff ff 	cmpq   $0x0,-0x418(%rbp)
  6898ff:	00 
  689900:	0f 8e 8e 5d 00 00    	jle    68f694 <step3d_t_mod_mp_step3d_t_tile_+0x8a24>
  689906:	4c 8b bd d8 f8 ff ff 	mov    -0x728(%rbp),%r15
  68990d:	4c 8b a5 f8 fa ff ff 	mov    -0x508(%rbp),%r12
  689914:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
  689919:	4c 8b 8d 60 f7 ff ff 	mov    -0x8a0(%rbp),%r9
  689920:	4c 8b ad 40 f7 ff ff 	mov    -0x8c0(%rbp),%r13
  689927:	47 8b 04 a7          	mov    (%r15,%r12,4),%r8d
  68992b:	4c 8b a5 10 f8 ff ff 	mov    -0x7f0(%rbp),%r12
  689932:	4a 8d 3c 8d 00 00 00 	lea    0x0(,%r9,4),%rdi
  689939:	00 
  68993a:	4d 89 e1             	mov    %r12,%r9
  68993d:	48 f7 df             	neg    %rdi
  689940:	4c 0f af 8d f8 fb ff 	imul   -0x408(%rbp),%r9
  689947:	ff 
  689948:	c5 fd 10 35 d0 b6 23 	vmovupd 0x23b6d0(%rip),%ymm6        # 8c5020 <var$630.126.450+0x360>
  68994f:	00 
  689950:	c5 f9 10 2d 48 ce 23 	vmovupd 0x23ce48(%rip),%xmm5        # 8c67a0 <__STRLITPACK_19.34+0x10>
  689957:	00 
  689958:	c5 fb 10 25 b8 d6 23 	vmovsd 0x23d6b8(%rip),%xmm4        # 8c7018 <__STRLITPACK_199.115+0x88>
  68995f:	00 
  689960:	c5 f9 10 3d 58 ce 23 	vmovupd 0x23ce58(%rip),%xmm7        # 8c67c0 <__STRLITPACK_19.34+0x30>
  689967:	00 
  689968:	c5 f9 10 1d 60 ce 23 	vmovupd 0x23ce60(%rip),%xmm3        # 8c67d0 <__STRLITPACK_19.34+0x40>
  68996f:	00 
  689970:	48 03 bd 30 f7 ff ff 	add    -0x8d0(%rbp),%rdi
  689977:	4e 8d 34 ad 00 00 00 	lea    0x0(,%r13,4),%r14
  68997e:	00 
  68997f:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  689986:	45 8d 58 fe          	lea    -0x2(%r8),%r11d
  68998a:	48 8b 85 48 f7 ff ff 	mov    -0x8b8(%rbp),%rax
  689991:	48 89 bd c0 f8 ff ff 	mov    %rdi,-0x740(%rbp)
  689998:	48 8b bd 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdi
  68999f:	48 2b bd 18 f7 ff ff 	sub    -0x8e8(%rbp),%rdi
  6899a6:	4c 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%r10
  6899ad:	00 
  6899ae:	4c 8b ad 20 f7 ff ff 	mov    -0x8e0(%rbp),%r13
  6899b5:	49 f7 da             	neg    %r10
  6899b8:	4d 63 c0             	movslq %r8d,%r8
  6899bb:	4c 89 e0             	mov    %r12,%rax
  6899be:	89 b5 e0 f8 ff ff    	mov    %esi,-0x720(%rbp)
  6899c4:	48 8b b5 70 f7 ff ff 	mov    -0x890(%rbp),%rsi
  6899cb:	4c 89 b5 a8 fb ff ff 	mov    %r14,-0x458(%rbp)
  6899d2:	49 2b f6             	sub    %r14,%rsi
  6899d5:	4c 03 95 50 f7 ff ff 	add    -0x8b0(%rbp),%r10
  6899dc:	4e 8d 34 ef          	lea    (%rdi,%r13,8),%r14
  6899e0:	4c 89 b5 e8 f6 ff ff 	mov    %r14,-0x918(%rbp)
  6899e7:	4c 8b b5 00 f8 ff ff 	mov    -0x800(%rbp),%r14
  6899ee:	4c 89 f7             	mov    %r14,%rdi
  6899f1:	4c 89 8d 90 f4 ff ff 	mov    %r9,-0xb70(%rbp)
  6899f8:	4d 89 f1             	mov    %r14,%r9
  6899fb:	4c 89 85 80 fd ff ff 	mov    %r8,-0x280(%rbp)
  689a02:	4c 8b bd a0 fd ff ff 	mov    -0x260(%rbp),%r15
  689a09:	4c 89 95 60 fb ff ff 	mov    %r10,-0x4a0(%rbp)
  689a10:	4d 8d 50 ff          	lea    -0x1(%r8),%r10
  689a14:	48 89 b5 b0 f8 ff ff 	mov    %rsi,-0x750(%rbp)
  689a1b:	4c 89 fe             	mov    %r15,%rsi
  689a1e:	4d 0f af f8          	imul   %r8,%r15
  689a22:	49 0f af f2          	imul   %r10,%rsi
  689a26:	48 0f af 85 f0 fb ff 	imul   -0x410(%rbp),%rax
  689a2d:	ff 
  689a2e:	c5 fd 10 05 0a b6 23 	vmovupd 0x23b60a(%rip),%ymm0        # 8c5040 <var$630.126.450+0x380>
  689a35:	00 
  689a36:	c5 fb 10 15 22 d9 23 	vmovsd 0x23d922(%rip),%xmm2        # 8c7360 <__STRLITPACK_199.115+0x3d0>
  689a3d:	00 
  689a3e:	c5 fb 10 0d 22 d9 23 	vmovsd 0x23d922(%rip),%xmm1        # 8c7368 <__STRLITPACK_199.115+0x3d8>
  689a45:	00 
  689a46:	c5 7b 11 a5 d0 f8 ff 	vmovsd %xmm12,-0x730(%rbp)
  689a4d:	ff 
  689a4e:	4c 8b 85 a8 f7 ff ff 	mov    -0x858(%rbp),%r8
  689a55:	4d 0f af c8          	imul   %r8,%r9
  689a59:	4c 0f af c1          	imul   %rcx,%r8
  689a5d:	4c 8b ad a0 f7 ff ff 	mov    -0x860(%rbp),%r13
  689a64:	49 0f af fd          	imul   %r13,%rdi
  689a68:	4c 0f af e9          	imul   %rcx,%r13
  689a6c:	4c 89 85 40 fb ff ff 	mov    %r8,-0x4c0(%rbp)
  689a73:	4c 8b 85 68 f9 ff ff 	mov    -0x698(%rbp),%r8
  689a7a:	4c 0f af c1          	imul   %rcx,%r8
  689a7e:	48 89 85 88 f4 ff ff 	mov    %rax,-0xb78(%rbp)
  689a85:	48 8b 85 c8 fd ff ff 	mov    -0x238(%rbp),%rax
  689a8c:	48 03 f0             	add    %rax,%rsi
  689a8f:	48 89 b5 08 fe ff ff 	mov    %rsi,-0x1f8(%rbp)
  689a96:	4c 03 f8             	add    %rax,%r15
  689a99:	48 8b b5 98 f7 ff ff 	mov    -0x868(%rbp),%rsi
  689aa0:	4c 89 ad 48 fb ff ff 	mov    %r13,-0x4b8(%rbp)
  689aa7:	49 89 f5             	mov    %rsi,%r13
  689aaa:	48 89 8d b0 f9 ff ff 	mov    %rcx,-0x650(%rbp)
  689ab1:	4c 0f af e9          	imul   %rcx,%r13
  689ab5:	4c 0f af f6          	imul   %rsi,%r14
  689ab9:	48 8b 8d 30 f9 ff ff 	mov    -0x6d0(%rbp),%rcx
  689ac0:	4c 89 bd 00 fe ff ff 	mov    %r15,-0x200(%rbp)
  689ac7:	4c 89 8d a0 f4 ff ff 	mov    %r9,-0xb60(%rbp)
  689ace:	44 8b 8d c0 f7 ff ff 	mov    -0x840(%rbp),%r9d
  689ad5:	4a 8d 04 01          	lea    (%rcx,%r8,1),%rax
  689ad9:	48 8b 8d 40 f9 ff ff 	mov    -0x6c0(%rbp),%rcx
  689ae0:	41 83 e1 fe          	and    $0xfffffffe,%r9d
  689ae4:	4d 63 c9             	movslq %r9d,%r9
  689ae7:	4c 89 8d f8 fd ff ff 	mov    %r9,-0x208(%rbp)
  689aee:	4c 8b 8d 48 fc ff ff 	mov    -0x3b8(%rbp),%r9
  689af5:	4e 8d 3c 01          	lea    (%rcx,%r8,1),%r15
  689af9:	4c 89 bd b0 fa ff ff 	mov    %r15,-0x550(%rbp)
  689b00:	4c 8b bd 08 f7 ff ff 	mov    -0x8f8(%rbp),%r15
  689b07:	4c 0f af fe          	imul   %rsi,%r15
  689b0b:	48 89 85 b8 fa ff ff 	mov    %rax,-0x548(%rbp)
  689b12:	4b 8d 0c 09          	lea    (%r9,%r9,1),%rcx
  689b16:	48 8b 85 b8 f7 ff ff 	mov    -0x848(%rbp),%rax
  689b1d:	49 2b cf             	sub    %r15,%rcx
  689b20:	48 8b b5 48 f8 ff ff 	mov    -0x7b8(%rbp),%rsi
  689b27:	48 89 95 b8 fb ff ff 	mov    %rdx,-0x448(%rbp)
  689b2e:	48 8b 95 e0 fb ff ff 	mov    -0x420(%rbp),%rdx
  689b35:	48 d1 ea             	shr    %rdx
  689b38:	48 03 f0             	add    %rax,%rsi
  689b3b:	48 03 f1             	add    %rcx,%rsi
  689b3e:	4c 89 f1             	mov    %r14,%rcx
  689b41:	49 03 f6             	add    %r14,%rsi
  689b44:	49 f7 de             	neg    %r14
  689b47:	48 89 95 b0 fb ff ff 	mov    %rdx,-0x450(%rbp)
  689b4e:	49 03 f5             	add    %r13,%rsi
  689b51:	48 8b 95 d0 fd ff ff 	mov    -0x230(%rbp),%rdx
  689b58:	4d 03 f7             	add    %r15,%r14
  689b5b:	48 89 b5 70 f4 ff ff 	mov    %rsi,-0xb90(%rbp)
  689b62:	49 f7 de             	neg    %r14
  689b65:	48 8b b5 10 f7 ff ff 	mov    -0x8f0(%rbp),%rsi
  689b6c:	4c 0f af e2          	imul   %rdx,%r12
  689b70:	48 0f af f2          	imul   %rdx,%rsi
  689b74:	4d 63 db             	movslq %r11d,%r11
  689b77:	48 2b ce             	sub    %rsi,%rcx
  689b7a:	4c 89 9d d0 fa ff ff 	mov    %r11,-0x530(%rbp)
  689b81:	49 2b f4             	sub    %r12,%rsi
  689b84:	48 89 bd a8 f4 ff ff 	mov    %rdi,-0xb58(%rbp)
  689b8b:	4c 89 a5 98 f4 ff ff 	mov    %r12,-0xb68(%rbp)
  689b92:	48 8b bd 08 f8 ff ff 	mov    -0x7f8(%rbp),%rdi
  689b99:	4d 8d 5b ff          	lea    -0x1(%r11),%r11
  689b9d:	4c 89 9d 50 fc ff ff 	mov    %r11,-0x3b0(%rbp)
  689ba4:	4e 8d 1c 48          	lea    (%rax,%r9,2),%r11
  689ba8:	4d 0f af ca          	imul   %r10,%r9
  689bac:	4d 03 f3             	add    %r11,%r14
  689baf:	4d 2b df             	sub    %r15,%r11
  689bb2:	4c 2b f6             	sub    %rsi,%r14
  689bb5:	4c 03 d9             	add    %rcx,%r11
  689bb8:	4d 03 dc             	add    %r12,%r11
  689bbb:	49 2b c7             	sub    %r15,%rax
  689bbe:	4d 03 dd             	add    %r13,%r11
  689bc1:	48 03 c1             	add    %rcx,%rax
  689bc4:	4d 03 cc             	add    %r12,%r9
  689bc7:	4c 89 9d f0 fc ff ff 	mov    %r11,-0x310(%rbp)
  689bce:	49 8d 14 56          	lea    (%r14,%rdx,2),%rdx
  689bd2:	49 03 d5             	add    %r13,%rdx
  689bd5:	49 03 c1             	add    %r9,%rax
  689bd8:	48 89 95 e8 fc ff ff 	mov    %rdx,-0x318(%rbp)
  689bdf:	49 03 c5             	add    %r13,%rax
  689be2:	48 8b 95 28 f8 ff ff 	mov    -0x7d8(%rbp),%rdx
  689be9:	4c 8b 8d 40 f8 ff ff 	mov    -0x7c0(%rbp),%r9
  689bf0:	4d 89 cc             	mov    %r9,%r12
  689bf3:	48 2b bd 30 f8 ff ff 	sub    -0x7d0(%rbp),%rdi
  689bfa:	48 89 85 10 fe ff ff 	mov    %rax,-0x1f0(%rbp)
  689c01:	4c 8d 1c 52          	lea    (%rdx,%rdx,2),%r11
  689c05:	49 2b d3             	sub    %r11,%rdx
  689c08:	4c 2b e2             	sub    %rdx,%r12
  689c0b:	4c 2b e7             	sub    %rdi,%r12
  689c0e:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  689c15:	4c 89 ad e8 fd ff ff 	mov    %r13,-0x218(%rbp)
  689c1c:	4c 8b b5 78 fd ff ff 	mov    -0x288(%rbp),%r14
  689c23:	4c 89 bd b8 f4 ff ff 	mov    %r15,-0xb48(%rbp)
  689c2a:	4f 8d 2c 04          	lea    (%r12,%r8,1),%r13
  689c2e:	4c 89 ad 38 fb ff ff 	mov    %r13,-0x4c8(%rbp)
  689c35:	4d 8d 2c 44          	lea    (%r12,%rax,2),%r13
  689c39:	4d 03 e8             	add    %r8,%r13
  689c3c:	4d 89 f7             	mov    %r14,%r15
  689c3f:	4c 89 ad 60 fa ff ff 	mov    %r13,-0x5a0(%rbp)
  689c46:	4d 2b de             	sub    %r14,%r11
  689c49:	4c 8b ad 80 fd ff ff 	mov    -0x280(%rbp),%r13
  689c50:	4d 0f af fd          	imul   %r13,%r15
  689c54:	48 8b b5 d8 f7 ff ff 	mov    -0x828(%rbp),%rsi
  689c5b:	48 89 8d c0 f4 ff ff 	mov    %rcx,-0xb40(%rbp)
  689c62:	48 8b 8d 70 f9 ff ff 	mov    -0x690(%rbp),%rcx
  689c69:	4c 03 f9             	add    %rcx,%r15
  689c6c:	4c 89 95 00 f7 ff ff 	mov    %r10,-0x900(%rbp)
  689c73:	4c 8d 24 16          	lea    (%rsi,%rdx,1),%r12
  689c77:	49 f7 dc             	neg    %r12
  689c7a:	48 8b b5 f8 f7 ff ff 	mov    -0x808(%rbp),%rsi
  689c81:	4d 03 e1             	add    %r9,%r12
  689c84:	4c 03 fe             	add    %rsi,%r15
  689c87:	4d 03 fc             	add    %r12,%r15
  689c8a:	4d 03 f8             	add    %r8,%r15
  689c8d:	4c 89 bd 70 fb ff ff 	mov    %r15,-0x490(%rbp)
  689c94:	4d 89 f7             	mov    %r14,%r15
  689c97:	4d 0f af fa          	imul   %r10,%r15
  689c9b:	4c 03 f9             	add    %rcx,%r15
  689c9e:	4d 8d 55 fe          	lea    -0x2(%r13),%r10
  689ca2:	4d 0f af d6          	imul   %r14,%r10
  689ca6:	4c 03 d1             	add    %rcx,%r10
  689ca9:	4c 03 fe             	add    %rsi,%r15
  689cac:	4c 03 d6             	add    %rsi,%r10
  689caf:	4d 03 fc             	add    %r12,%r15
  689cb2:	4d 03 e2             	add    %r10,%r12
  689cb5:	4d 03 f8             	add    %r8,%r15
  689cb8:	4d 03 e0             	add    %r8,%r12
  689cbb:	4c 89 a5 08 fb ff ff 	mov    %r12,-0x4f8(%rbp)
  689cc2:	4c 8b 95 c8 f7 ff ff 	mov    -0x838(%rbp),%r10
  689cc9:	4c 8b ad 48 f8 ff ff 	mov    -0x7b8(%rbp),%r13
  689cd0:	4c 8b a5 b0 f7 ff ff 	mov    -0x850(%rbp),%r12
  689cd7:	4c 89 bd 78 fb ff ff 	mov    %r15,-0x488(%rbp)
  689cde:	48 89 bd b0 f4 ff ff 	mov    %rdi,-0xb50(%rbp)
  689ce5:	4d 03 d5             	add    %r13,%r10
  689ce8:	48 89 95 c8 f4 ff ff 	mov    %rdx,-0xb38(%rbp)
  689cef:	4f 8d 2c 1c          	lea    (%r12,%r11,1),%r13
  689cf3:	4d 03 d5             	add    %r13,%r10
  689cf6:	4c 8b ad 18 f8 ff ff 	mov    -0x7e8(%rbp),%r13
  689cfd:	4c 8b a5 20 f8 ff ff 	mov    -0x7e0(%rbp),%r12
  689d04:	4f 8d 7c 15 00       	lea    0x0(%r13,%r10,1),%r15
  689d09:	4d 03 fc             	add    %r12,%r15
  689d0c:	4d 03 f8             	add    %r8,%r15
  689d0f:	4c 89 bd 70 fa ff ff 	mov    %r15,-0x590(%rbp)
  689d16:	4f 8d 7c 1d 00       	lea    0x0(%r13,%r11,1),%r15
  689d1b:	4c 8b ad e8 f7 ff ff 	mov    -0x818(%rbp),%r13
  689d22:	4d 03 fd             	add    %r13,%r15
  689d25:	4c 03 fe             	add    %rsi,%r15
  689d28:	4c 03 f9             	add    %rcx,%r15
  689d2b:	4d 03 f8             	add    %r8,%r15
  689d2e:	4c 89 bd 80 fa ff ff 	mov    %r15,-0x580(%rbp)
  689d35:	4f 8d 3c 36          	lea    (%r14,%r14,1),%r15
  689d39:	4d 2b f7             	sub    %r15,%r14
  689d3c:	4c 03 f2             	add    %rdx,%r14
  689d3f:	49 f7 de             	neg    %r14
  689d42:	4d 03 f1             	add    %r9,%r14
  689d45:	4c 2b f7             	sub    %rdi,%r14
  689d48:	4c 2b bd e0 f7 ff ff 	sub    -0x820(%rbp),%r15
  689d4f:	4f 8d 0c 06          	lea    (%r14,%r8,1),%r9
  689d53:	4c 89 8d 30 fb ff ff 	mov    %r9,-0x4d0(%rbp)
  689d5a:	4f 8d 0c 3a          	lea    (%r10,%r15,1),%r9
  689d5e:	4d 03 fb             	add    %r11,%r15
  689d61:	4d 03 fd             	add    %r13,%r15
  689d64:	4d 8d 34 46          	lea    (%r14,%rax,2),%r14
  689d68:	4c 03 fe             	add    %rsi,%r15
  689d6b:	4d 03 cc             	add    %r12,%r9
  689d6e:	4c 03 f9             	add    %rcx,%r15
  689d71:	4d 03 f0             	add    %r8,%r14
  689d74:	4d 03 f8             	add    %r8,%r15
  689d77:	4d 03 c8             	add    %r8,%r9
  689d7a:	4c 89 bd 48 fa ff ff 	mov    %r15,-0x5b8(%rbp)
  689d81:	4c 8b bd 78 fd ff ff 	mov    -0x288(%rbp),%r15
  689d88:	4c 89 b5 50 fa ff ff 	mov    %r14,-0x5b0(%rbp)
  689d8f:	4d 89 fe             	mov    %r15,%r14
  689d92:	4c 89 8d 78 fa ff ff 	mov    %r9,-0x588(%rbp)
  689d99:	4f 8d 0c 7f          	lea    (%r15,%r15,2),%r9
  689d9d:	4d 2b f1             	sub    %r9,%r14
  689da0:	4c 03 f2             	add    %rdx,%r14
  689da3:	49 f7 de             	neg    %r14
  689da6:	4c 03 b5 40 f8 ff ff 	add    -0x7c0(%rbp),%r14
  689dad:	4c 2b f7             	sub    %rdi,%r14
  689db0:	48 8b bd e0 f7 ff ff 	mov    -0x820(%rbp),%rdi
  689db7:	4c 2b cf             	sub    %rdi,%r9
  689dba:	4b 8d 14 06          	lea    (%r14,%r8,1),%rdx
  689dbe:	48 89 95 28 fb ff ff 	mov    %rdx,-0x4d8(%rbp)
  689dc5:	4d 8d 34 46          	lea    (%r14,%rax,2),%r14
  689dc9:	4d 03 f0             	add    %r8,%r14
  689dcc:	4b 8d 14 0a          	lea    (%r10,%r9,1),%rdx
  689dd0:	49 03 d4             	add    %r12,%rdx
  689dd3:	4d 03 cb             	add    %r11,%r9
  689dd6:	4c 89 b5 58 fa ff ff 	mov    %r14,-0x5a8(%rbp)
  689ddd:	4e 8d 34 bd 00 00 00 	lea    0x0(,%r15,4),%r14
  689de4:	00 
  689de5:	49 03 d0             	add    %r8,%rdx
  689de8:	4d 03 cd             	add    %r13,%r9
  689deb:	48 89 95 68 fa ff ff 	mov    %rdx,-0x598(%rbp)
  689df2:	4c 89 f2             	mov    %r14,%rdx
  689df5:	49 f7 de             	neg    %r14
  689df8:	48 2b d7             	sub    %rdi,%rdx
  689dfb:	4d 03 f7             	add    %r15,%r14
  689dfe:	4c 03 da             	add    %rdx,%r11
  689e01:	48 8b bd c8 f4 ff ff 	mov    -0xb38(%rbp),%rdi
  689e08:	4d 03 dd             	add    %r13,%r11
  689e0b:	49 03 fe             	add    %r14,%rdi
  689e0e:	4c 03 ce             	add    %rsi,%r9
  689e11:	48 f7 df             	neg    %rdi
  689e14:	4c 03 de             	add    %rsi,%r11
  689e17:	48 03 bd 40 f8 ff ff 	add    -0x7c0(%rbp),%rdi
  689e1e:	4c 03 c9             	add    %rcx,%r9
  689e21:	48 2b bd b0 f4 ff ff 	sub    -0xb50(%rbp),%rdi
  689e28:	4c 03 d9             	add    %rcx,%r11
  689e2b:	4c 03 d2             	add    %rdx,%r10
  689e2e:	4d 03 c8             	add    %r8,%r9
  689e31:	4d 03 d4             	add    %r12,%r10
  689e34:	4d 03 d8             	add    %r8,%r11
  689e37:	4d 03 d0             	add    %r8,%r10
  689e3a:	48 8d 0c 47          	lea    (%rdi,%rax,2),%rcx
  689e3e:	48 8b bd 90 f7 ff ff 	mov    -0x870(%rbp),%rdi
  689e45:	4c 03 c1             	add    %rcx,%r8
  689e48:	48 8b 8d 38 f7 ff ff 	mov    -0x8c8(%rbp),%rcx
  689e4f:	48 8b b5 68 f7 ff ff 	mov    -0x898(%rbp),%rsi
  689e56:	48 f7 de             	neg    %rsi
  689e59:	4c 8d 2c bd 00 00 00 	lea    0x0(,%rdi,4),%r13
  689e60:	00 
  689e61:	49 f7 dd             	neg    %r13
  689e64:	4c 03 ad 88 f7 ff ff 	add    -0x878(%rbp),%r13
  689e6b:	48 8b bd f8 fa ff ff 	mov    -0x508(%rbp),%rdi
  689e72:	48 03 f7             	add    %rdi,%rsi
  689e75:	49 89 f6             	mov    %rsi,%r14
  689e78:	49 c1 e6 05          	shl    $0x5,%r14
  689e7c:	41 8b 54 bd 00       	mov    0x0(%r13,%rdi,4),%edx
  689e81:	4c 03 f6             	add    %rsi,%r14
  689e84:	4c 8b ad 58 f7 ff ff 	mov    -0x8a8(%rbp),%r13
  689e8b:	83 e2 01             	and    $0x1,%edx
  689e8e:	4c 0f af e9          	imul   %rcx,%r13
  689e92:	48 0f af cf          	imul   %rdi,%rcx
  689e96:	48 8d b5 a8 fb ff ff 	lea    -0x458(%rbp),%rsi
  689e9d:	4c 8b 3e             	mov    (%rsi),%r15
  689ea0:	4d 2b fd             	sub    %r13,%r15
  689ea3:	4c 2b e9             	sub    %rcx,%r13
  689ea6:	48 8d 85 b0 f8 ff ff 	lea    -0x750(%rbp),%rax
  689ead:	4c 8b 20             	mov    (%rax),%r12
  689eb0:	4d 03 fc             	add    %r12,%r15
  689eb3:	49 c1 e6 05          	shl    $0x5,%r14
  689eb7:	4c 03 f9             	add    %rcx,%r15
  689eba:	4c 89 b5 b8 f8 ff ff 	mov    %r14,-0x748(%rbp)
  689ec1:	4d 2b e5             	sub    %r13,%r12
  689ec4:	48 8b 8d b8 f7 ff ff 	mov    -0x848(%rbp),%rcx
  689ecb:	49 f7 dd             	neg    %r13
  689ece:	4c 8b b5 48 fc ff ff 	mov    -0x3b8(%rbp),%r14
  689ed5:	89 95 08 fc ff ff    	mov    %edx,-0x3f8(%rbp)
  689edb:	8b bd 28 f7 ff ff    	mov    -0x8d8(%rbp),%edi
  689ee1:	8b 95 e0 f8 ff ff    	mov    -0x720(%rbp),%edx
  689ee7:	4c 89 3e             	mov    %r15,(%rsi)
  689eea:	4d 8d 3c 0e          	lea    (%r14,%rcx,1),%r15
  689eee:	4c 2b bd b8 f4 ff ff 	sub    -0xb48(%rbp),%r15
  689ef5:	4c 03 ad 70 f7 ff ff 	add    -0x890(%rbp),%r13
  689efc:	8d 34 17             	lea    (%rdi,%rdx,1),%esi
  689eff:	48 8b bd c0 f4 ff ff 	mov    -0xb40(%rbp),%rdi
  689f06:	49 03 ff             	add    %r15,%rdi
  689f09:	4c 89 ad 80 fb ff ff 	mov    %r13,-0x480(%rbp)
  689f10:	4c 8b ad 98 f4 ff ff 	mov    -0xb68(%rbp),%r13
  689f17:	4c 03 ef             	add    %rdi,%r13
  689f1a:	4c 8d bd e8 fd ff ff 	lea    -0x218(%rbp),%r15
  689f21:	49 8b 3f             	mov    (%r15),%rdi
  689f24:	49 03 fd             	add    %r13,%rdi
  689f27:	4c 8b ad 08 f7 ff ff 	mov    -0x8f8(%rbp),%r13
  689f2e:	89 b5 90 f8 ff ff    	mov    %esi,-0x770(%rbp)
  689f34:	4c 89 ee             	mov    %r13,%rsi
  689f37:	48 0f af b5 a0 f7 ff 	imul   -0x860(%rbp),%rsi
  689f3e:	ff 
  689f3f:	4c 0f af ad a8 f7 ff 	imul   -0x858(%rbp),%r13
  689f46:	ff 
  689f47:	4c 8b b5 10 f7 ff ff 	mov    -0x8f0(%rbp),%r14
  689f4e:	4c 89 f2             	mov    %r14,%rdx
  689f51:	48 8b 8d f0 fb ff ff 	mov    -0x410(%rbp),%rcx
  689f58:	48 f7 de             	neg    %rsi
  689f5b:	48 0f af d1          	imul   %rcx,%rdx
  689f5f:	4c 89 20             	mov    %r12,(%rax)
  689f62:	49 f7 dd             	neg    %r13
  689f65:	48 03 b5 80 f7 ff ff 	add    -0x880(%rbp),%rsi
  689f6c:	4c 8b a5 a8 f4 ff ff 	mov    -0xb58(%rbp),%r12
  689f73:	4c 03 ad 78 f7 ff ff 	add    -0x888(%rbp),%r13
  689f7a:	4c 89 9d 30 fa ff ff 	mov    %r11,-0x5d0(%rbp)
  689f81:	49 89 3f             	mov    %rdi,(%r15)
  689f84:	4e 8d 3c 26          	lea    (%rsi,%r12,1),%r15
  689f88:	4c 2b e2             	sub    %rdx,%r12
  689f8b:	49 03 f4             	add    %r12,%rsi
  689f8e:	4c 8b a5 88 f4 ff ff 	mov    -0xb78(%rbp),%r12
  689f95:	49 2b d4             	sub    %r12,%rdx
  689f98:	4c 2b fa             	sub    %rdx,%r15
  689f9b:	48 8d bd 48 fb ff ff 	lea    -0x4b8(%rbp),%rdi
  689fa2:	48 8b 17             	mov    (%rdi),%rdx
  689fa5:	4c 03 fa             	add    %rdx,%r15
  689fa8:	4c 89 bd 58 fb ff ff 	mov    %r15,-0x4a8(%rbp)
  689faf:	49 8d 0c 4c          	lea    (%r12,%rcx,2),%rcx
  689fb3:	4c 8b bd f8 fb ff ff 	mov    -0x408(%rbp),%r15
  689fba:	48 03 f1             	add    %rcx,%rsi
  689fbd:	4d 0f af f7          	imul   %r15,%r14
  689fc1:	48 03 d6             	add    %rsi,%rdx
  689fc4:	48 89 17             	mov    %rdx,(%rdi)
  689fc7:	48 8b 95 a0 f4 ff ff 	mov    -0xb60(%rbp),%rdx
  689fce:	4c 8b a5 90 f4 ff ff 	mov    -0xb70(%rbp),%r12
  689fd5:	4c 8b 9d 60 fd ff ff 	mov    -0x2a0(%rbp),%r11
  689fdc:	49 8d 74 15 00       	lea    0x0(%r13,%rdx,1),%rsi
  689fe1:	49 2b d6             	sub    %r14,%rdx
  689fe4:	4d 2b f4             	sub    %r12,%r14
  689fe7:	49 2b f6             	sub    %r14,%rsi
  689fea:	4c 03 ea             	add    %rdx,%r13
  689fed:	4c 8d b5 40 fb ff ff 	lea    -0x4c0(%rbp),%r14
  689ff4:	49 8b 16             	mov    (%r14),%rdx
  689ff7:	48 03 f2             	add    %rdx,%rsi
  689ffa:	48 89 b5 50 fb ff ff 	mov    %rsi,-0x4b0(%rbp)
  68a001:	4b 8d 34 7c          	lea    (%r12,%r15,2),%rsi
  68a005:	4c 03 ee             	add    %rsi,%r13
  68a008:	49 03 d5             	add    %r13,%rdx
  68a00b:	49 89 16             	mov    %rdx,(%r14)
  68a00e:	48 8b 95 b8 fb ff ff 	mov    -0x448(%rbp),%rdx
  68a015:	4c 8b b5 80 fd ff ff 	mov    -0x280(%rbp),%r14
  68a01c:	4c 8b a5 a8 fb ff ff 	mov    -0x458(%rbp),%r12
  68a023:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  68a02a:	4c 89 85 28 fa ff ff 	mov    %r8,-0x5d8(%rbp)
  68a031:	4c 89 95 38 fa ff ff 	mov    %r10,-0x5c8(%rbp)
  68a038:	4c 89 8d 40 fa ff ff 	mov    %r9,-0x5c0(%rbp)
  68a03f:	48 83 bd d0 fd ff ff 	cmpq   $0x8,-0x230(%rbp)
  68a046:	08 
  68a047:	0f 85 d6 01 00 00    	jne    68a223 <step3d_t_mod_mp_step3d_t_tile_+0x35b3>
  68a04d:	48 83 bd e0 fd ff ff 	cmpq   $0x8,-0x220(%rbp)
  68a054:	08 
  68a055:	0f 85 c8 01 00 00    	jne    68a223 <step3d_t_mod_mp_step3d_t_tile_+0x35b3>
  68a05b:	45 33 c9             	xor    %r9d,%r9d
  68a05e:	4c 8b 85 f0 fa ff ff 	mov    -0x510(%rbp),%r8
  68a065:	33 f6                	xor    %esi,%esi
  68a067:	48 8b bd 70 f4 ff ff 	mov    -0xb90(%rbp),%rdi
  68a06e:	48 83 bd d0 fa ff ff 	cmpq   $0x2,-0x530(%rbp)
  68a075:	02 
  68a076:	0f 8c ec 6b 00 00    	jl     690c68 <step3d_t_mod_mp_step3d_t_tile_+0x9ff8>
  68a07c:	48 8b 85 c8 fb ff ff 	mov    -0x438(%rbp),%rax
  68a083:	48 0f af c2          	imul   %rdx,%rax
  68a087:	48 8b 8d 70 fa ff ff 	mov    -0x590(%rbp),%rcx
  68a08e:	4c 8b 95 78 fa ff ff 	mov    -0x588(%rbp),%r10
  68a095:	4c 8b b5 68 fa ff ff 	mov    -0x598(%rbp),%r14
  68a09c:	48 89 95 b8 fb ff ff 	mov    %rdx,-0x448(%rbp)
  68a0a3:	48 03 c8             	add    %rax,%rcx
  68a0a6:	4d 8d 3c 02          	lea    (%r10,%rax,1),%r15
  68a0aa:	4c 89 bd e0 fc ff ff 	mov    %r15,-0x320(%rbp)
  68a0b1:	4d 8d 14 06          	lea    (%r14,%rax,1),%r10
  68a0b5:	48 03 85 38 fa ff ff 	add    -0x5c8(%rbp),%rax
  68a0bc:	48 89 85 d0 fc ff ff 	mov    %rax,-0x330(%rbp)
  68a0c3:	4c 89 95 d8 fc ff ff 	mov    %r10,-0x328(%rbp)
  68a0ca:	8b 85 c0 fd ff ff    	mov    -0x240(%rbp),%eax
  68a0d0:	3b 85 b8 fd ff ff    	cmp    -0x248(%rbp),%eax
  68a0d6:	0f 8c 1d 01 00 00    	jl     68a1f9 <step3d_t_mod_mp_step3d_t_tile_+0x3589>
  68a0dc:	49 83 fb 04          	cmp    $0x4,%r11
  68a0e0:	0f 8c 61 6b 00 00    	jl     690c47 <step3d_t_mod_mp_step3d_t_tile_+0x9fd7>
  68a0e6:	4c 8b ad d0 fc ff ff 	mov    -0x330(%rbp),%r13
  68a0ed:	45 33 ff             	xor    %r15d,%r15d
  68a0f0:	4c 8b a5 d8 fc ff ff 	mov    -0x328(%rbp),%r12
  68a0f7:	48 8b 95 e0 fc ff ff 	mov    -0x320(%rbp),%rdx
  68a0fe:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
  68a105:	4d 8d 74 35 00       	lea    0x0(%r13,%rsi,1),%r14
  68a10a:	49 89 c3             	mov    %rax,%r11
  68a10d:	4c 8d 2c 31          	lea    (%rcx,%rsi,1),%r13
  68a111:	4c 03 e6             	add    %rsi,%r12
  68a114:	4c 8d 14 32          	lea    (%rdx,%rsi,1),%r10
  68a118:	4c 89 c2             	mov    %r8,%rdx
  68a11b:	c4 01 7d 10 6c fd 00 	vmovupd 0x0(%r13,%r15,8),%ymm13
  68a122:	c4 01 7d 10 24 fa    	vmovupd (%r10,%r15,8),%ymm12
  68a128:	c4 01 15 58 34 fe    	vaddpd (%r14,%r15,8),%ymm13,%ymm14
  68a12e:	c4 01 1d 58 3c fc    	vaddpd (%r12,%r15,8),%ymm12,%ymm15
  68a134:	c4 41 7d 59 e6       	vmulpd %ymm14,%ymm0,%ymm12
  68a139:	c4 62 85 ba e6       	vfmsub231pd %ymm6,%ymm15,%ymm12
  68a13e:	c4 21 1d 59 2c ff    	vmulpd (%rdi,%r15,8),%ymm12,%ymm13
  68a144:	49 83 c7 04          	add    $0x4,%r15
  68a148:	c5 7d 11 6a 10       	vmovupd %ymm13,0x10(%rdx)
  68a14d:	48 83 c2 20          	add    $0x20,%rdx
  68a151:	4d 3b fb             	cmp    %r11,%r15
  68a154:	72 c5                	jb     68a11b <step3d_t_mod_mp_step3d_t_tile_+0x34ab>
  68a156:	4c 8b 9d 60 fd ff ff 	mov    -0x2a0(%rbp),%r11
  68a15d:	4c 8d 34 c5 00 00 00 	lea    0x0(,%rax,8),%r14
  68a164:	00 
  68a165:	49 3b c3             	cmp    %r11,%rax
  68a168:	73 65                	jae    68a1cf <step3d_t_mod_mp_step3d_t_tile_+0x355f>
  68a16a:	4c 8b 95 d0 fc ff ff 	mov    -0x330(%rbp),%r10
  68a171:	4d 8d 2c c0          	lea    (%r8,%rax,8),%r13
  68a175:	48 8b 95 d8 fc ff ff 	mov    -0x328(%rbp),%rdx
  68a17c:	4c 8b bd e0 fc ff ff 	mov    -0x320(%rbp),%r15
  68a183:	4d 8d 24 32          	lea    (%r10,%rsi,1),%r12
  68a187:	4c 8d 14 31          	lea    (%rcx,%rsi,1),%r10
  68a18b:	48 03 d6             	add    %rsi,%rdx
  68a18e:	4c 03 fe             	add    %rsi,%r15
  68a191:	c4 01 7b 10 2c 16    	vmovsd (%r14,%r10,1),%xmm13
  68a197:	48 ff c0             	inc    %rax
  68a19a:	c4 01 7b 10 24 3e    	vmovsd (%r14,%r15,1),%xmm12
  68a1a0:	c4 01 13 58 34 26    	vaddsd (%r14,%r12,1),%xmm13,%xmm14
  68a1a6:	c4 41 1b 58 3c 16    	vaddsd (%r14,%rdx,1),%xmm12,%xmm15
  68a1ac:	c4 41 73 59 e6       	vmulsd %xmm14,%xmm1,%xmm12
  68a1b1:	c4 62 81 bb e2       	vfmsub231sd %xmm2,%xmm15,%xmm12
  68a1b6:	c4 41 1b 59 2c 3e    	vmulsd (%r14,%rdi,1),%xmm12,%xmm13
  68a1bc:	49 83 c6 08          	add    $0x8,%r14
  68a1c0:	c4 41 7b 11 6d 10    	vmovsd %xmm13,0x10(%r13)
  68a1c6:	49 83 c5 08          	add    $0x8,%r13
  68a1ca:	49 3b c3             	cmp    %r11,%rax
  68a1cd:	72 c2                	jb     68a191 <step3d_t_mod_mp_step3d_t_tile_+0x3521>
  68a1cf:	49 ff c1             	inc    %r9
  68a1d2:	4c 03 85 a0 fd ff ff 	add    -0x260(%rbp),%r8
  68a1d9:	48 03 bd 48 fc ff ff 	add    -0x3b8(%rbp),%rdi
  68a1e0:	48 03 b5 78 fd ff ff 	add    -0x288(%rbp),%rsi
  68a1e7:	4c 3b 8d 50 fc ff ff 	cmp    -0x3b0(%rbp),%r9
  68a1ee:	0f 82 d6 fe ff ff    	jb     68a0ca <step3d_t_mod_mp_step3d_t_tile_+0x345a>
  68a1f4:	e9 8f 48 00 00       	jmpq   68ea88 <step3d_t_mod_mp_step3d_t_tile_+0x7e18>
  68a1f9:	49 ff c1             	inc    %r9
  68a1fc:	4c 03 85 a0 fd ff ff 	add    -0x260(%rbp),%r8
  68a203:	48 03 bd 48 fc ff ff 	add    -0x3b8(%rbp),%rdi
  68a20a:	48 03 b5 78 fd ff ff 	add    -0x288(%rbp),%rsi
  68a211:	4c 3b 8d 50 fc ff ff 	cmp    -0x3b0(%rbp),%r9
  68a218:	0f 82 ac fe ff ff    	jb     68a0ca <step3d_t_mod_mp_step3d_t_tile_+0x345a>
  68a21e:	e9 2b 6a 00 00       	jmpq   690c4e <step3d_t_mod_mp_step3d_t_tile_+0x9fde>
  68a223:	33 f6                	xor    %esi,%esi
  68a225:	33 ff                	xor    %edi,%edi
  68a227:	48 8b 8d f0 fa ff ff 	mov    -0x510(%rbp),%rcx
  68a22e:	33 c0                	xor    %eax,%eax
  68a230:	48 83 bd d0 fa ff ff 	cmpq   $0x2,-0x530(%rbp)
  68a237:	02 
  68a238:	0f 8c 2a 6a 00 00    	jl     690c68 <step3d_t_mod_mp_step3d_t_tile_+0x9ff8>
  68a23e:	4c 8b b5 c8 fb ff ff 	mov    -0x438(%rbp),%r14
  68a245:	4c 0f af f2          	imul   %rdx,%r14
  68a249:	4c 8b 85 40 fa ff ff 	mov    -0x5c0(%rbp),%r8
  68a250:	4c 8b 95 80 fa ff ff 	mov    -0x580(%rbp),%r10
  68a257:	4c 8b 8d 48 fa ff ff 	mov    -0x5b8(%rbp),%r9
  68a25e:	48 89 95 b8 fb ff ff 	mov    %rdx,-0x448(%rbp)
  68a265:	4f 8d 3c 30          	lea    (%r8,%r14,1),%r15
  68a269:	4c 89 bd 78 fc ff ff 	mov    %r15,-0x388(%rbp)
  68a270:	4d 03 d6             	add    %r14,%r10
  68a273:	4c 8b bd 28 fa ff ff 	mov    -0x5d8(%rbp),%r15
  68a27a:	4d 03 ce             	add    %r14,%r9
  68a27d:	4c 8b 85 30 fa ff ff 	mov    -0x5d0(%rbp),%r8
  68a284:	4c 89 8d b0 fc ff ff 	mov    %r9,-0x350(%rbp)
  68a28b:	4c 89 95 a8 fc ff ff 	mov    %r10,-0x358(%rbp)
  68a292:	4d 03 fe             	add    %r14,%r15
  68a295:	4c 89 bd 70 fc ff ff 	mov    %r15,-0x390(%rbp)
  68a29c:	4d 03 c6             	add    %r14,%r8
  68a29f:	4c 8b bd 60 fa ff ff 	mov    -0x5a0(%rbp),%r15
  68a2a6:	4c 89 85 a0 fc ff ff 	mov    %r8,-0x360(%rbp)
  68a2ad:	4d 03 fe             	add    %r14,%r15
  68a2b0:	4c 89 bd 68 fc ff ff 	mov    %r15,-0x398(%rbp)
  68a2b7:	4c 8b bd 58 fa ff ff 	mov    -0x5a8(%rbp),%r15
  68a2be:	4d 03 fe             	add    %r14,%r15
  68a2c1:	4c 03 b5 50 fa ff ff 	add    -0x5b0(%rbp),%r14
  68a2c8:	4c 89 bd 60 fc ff ff 	mov    %r15,-0x3a0(%rbp)
  68a2cf:	4c 89 b5 98 fc ff ff 	mov    %r14,-0x368(%rbp)
  68a2d6:	8b 95 c0 fd ff ff    	mov    -0x240(%rbp),%edx
  68a2dc:	3b 95 b8 fd ff ff    	cmp    -0x248(%rbp),%edx
  68a2e2:	0f 8c fb 02 00 00    	jl     68a5e3 <step3d_t_mod_mp_step3d_t_tile_+0x3973>
  68a2e8:	48 83 bd 60 fd ff ff 	cmpq   $0x4,-0x2a0(%rbp)
  68a2ef:	04 
  68a2f0:	0f 8c aa 69 00 00    	jl     690ca0 <step3d_t_mod_mp_step3d_t_tile_+0xa030>
  68a2f6:	4c 8b 85 70 fc ff ff 	mov    -0x390(%rbp),%r8
  68a2fd:	45 33 ff             	xor    %r15d,%r15d
  68a300:	4c 8b b5 f0 fc ff ff 	mov    -0x310(%rbp),%r14
  68a307:	4c 8b ad a8 fc ff ff 	mov    -0x358(%rbp),%r13
  68a30e:	4c 8b a5 b0 fc ff ff 	mov    -0x350(%rbp),%r12
  68a315:	4c 03 c0             	add    %rax,%r8
  68a318:	4c 89 85 50 fe ff ff 	mov    %r8,-0x1b0(%rbp)
  68a31f:	4c 03 f7             	add    %rdi,%r14
  68a322:	4c 8b 85 68 fc ff ff 	mov    -0x398(%rbp),%r8
  68a329:	4c 03 e8             	add    %rax,%r13
  68a32c:	4c 8b 9d 78 fc ff ff 	mov    -0x388(%rbp),%r11
  68a333:	4c 03 e0             	add    %rax,%r12
  68a336:	4c 8b 95 a0 fc ff ff 	mov    -0x360(%rbp),%r10
  68a33d:	4c 8b 8d e8 fc ff ff 	mov    -0x318(%rbp),%r9
  68a344:	4c 03 c0             	add    %rax,%r8
  68a347:	4c 89 85 48 fe ff ff 	mov    %r8,-0x1b8(%rbp)
  68a34e:	4c 03 d8             	add    %rax,%r11
  68a351:	4c 8b 85 60 fc ff ff 	mov    -0x3a0(%rbp),%r8
  68a358:	4c 03 d0             	add    %rax,%r10
  68a35b:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  68a362:	4c 03 cf             	add    %rdi,%r9
  68a365:	48 89 8d b8 fc ff ff 	mov    %rcx,-0x348(%rbp)
  68a36c:	48 89 95 c0 fc ff ff 	mov    %rdx,-0x340(%rbp)
  68a373:	4c 03 c0             	add    %rax,%r8
  68a376:	4c 89 85 40 fe ff ff 	mov    %r8,-0x1c0(%rbp)
  68a37d:	4c 8b 85 98 fc ff ff 	mov    -0x368(%rbp),%r8
  68a384:	48 89 85 c8 fc ff ff 	mov    %rax,-0x338(%rbp)
  68a38b:	48 89 8d 88 fc ff ff 	mov    %rcx,-0x378(%rbp)
  68a392:	48 89 b5 80 fc ff ff 	mov    %rsi,-0x380(%rbp)
  68a399:	4c 03 c0             	add    %rax,%r8
  68a39c:	4c 89 85 38 fe ff ff 	mov    %r8,-0x1c8(%rbp)
  68a3a3:	45 33 c0             	xor    %r8d,%r8d
  68a3a6:	48 89 bd 90 fc ff ff 	mov    %rdi,-0x370(%rbp)
  68a3ad:	48 8b 85 b8 fc ff ff 	mov    -0x348(%rbp),%rax
  68a3b4:	4c 89 c2             	mov    %r8,%rdx
  68a3b7:	48 8b 8d d0 fd ff ff 	mov    -0x230(%rbp),%rcx
  68a3be:	48 8b b5 e0 fd ff ff 	mov    -0x220(%rbp),%rsi
  68a3c5:	49 83 c7 04          	add    $0x4,%r15
  68a3c9:	4b 8d 3c 06          	lea    (%r14,%r8,1),%rdi
  68a3cd:	c5 7b 10 27          	vmovsd (%rdi),%xmm12
  68a3d1:	c5 19 16 2c 0f       	vmovhpd (%rdi,%rcx,1),%xmm12,%xmm13
  68a3d6:	49 8d 3c 14          	lea    (%r12,%rdx,1),%rdi
  68a3da:	c5 7b 10 3f          	vmovsd (%rdi),%xmm15
  68a3de:	c5 01 16 24 37       	vmovhpd (%rdi,%rsi,1),%xmm15,%xmm12
  68a3e3:	49 8d 3c 13          	lea    (%r11,%rdx,1),%rdi
  68a3e7:	c5 7b 10 37          	vmovsd (%rdi),%xmm14
  68a3eb:	c5 09 16 3c 37       	vmovhpd (%rdi,%rsi,1),%xmm14,%xmm15
  68a3f0:	49 8d 7c 15 00       	lea    0x0(%r13,%rdx,1),%rdi
  68a3f5:	c4 41 19 58 f7       	vaddpd %xmm15,%xmm12,%xmm14
  68a3fa:	c5 7b 10 27          	vmovsd (%rdi),%xmm12
  68a3fe:	c5 19 16 3c 37       	vmovhpd (%rdi,%rsi,1),%xmm12,%xmm15
  68a403:	49 8d 3c 12          	lea    (%r10,%rdx,1),%rdi
  68a407:	c5 7b 10 27          	vmovsd (%rdi),%xmm12
  68a40b:	c5 19 16 24 37       	vmovhpd (%rdi,%rsi,1),%xmm12,%xmm12
  68a410:	4b 8d 3c 01          	lea    (%r9,%r8,1),%rdi
  68a414:	c4 41 01 58 fc       	vaddpd %xmm12,%xmm15,%xmm15
  68a419:	c4 41 61 59 e7       	vmulpd %xmm15,%xmm3,%xmm12
  68a41e:	c4 62 89 ba e7       	vfmsub231pd %xmm7,%xmm14,%xmm12
  68a423:	4d 8d 04 88          	lea    (%r8,%rcx,4),%r8
  68a427:	c5 7b 10 37          	vmovsd (%rdi),%xmm14
  68a42b:	c5 09 16 34 0f       	vmovhpd (%rdi,%rcx,1),%xmm14,%xmm14
  68a430:	c4 41 11 59 ec       	vmulpd %xmm12,%xmm13,%xmm13
  68a435:	48 8b bd 38 fe ff ff 	mov    -0x1c8(%rbp),%rdi
  68a43c:	c5 79 11 68 10       	vmovupd %xmm13,0x10(%rax)
  68a441:	48 03 fa             	add    %rdx,%rdi
  68a444:	c5 7b 10 2f          	vmovsd (%rdi),%xmm13
  68a448:	c5 11 16 3c 37       	vmovhpd (%rdi,%rsi,1),%xmm13,%xmm15
  68a44d:	48 8b bd 40 fe ff ff 	mov    -0x1c0(%rbp),%rdi
  68a454:	48 03 fa             	add    %rdx,%rdi
  68a457:	c5 7b 10 27          	vmovsd (%rdi),%xmm12
  68a45b:	c5 19 16 2c 37       	vmovhpd (%rdi,%rsi,1),%xmm12,%xmm13
  68a460:	48 8b bd 48 fe ff ff 	mov    -0x1b8(%rbp),%rdi
  68a467:	c4 41 01 58 ed       	vaddpd %xmm13,%xmm15,%xmm13
  68a46c:	48 03 fa             	add    %rdx,%rdi
  68a46f:	c5 7b 10 27          	vmovsd (%rdi),%xmm12
  68a473:	c5 19 16 24 37       	vmovhpd (%rdi,%rsi,1),%xmm12,%xmm12
  68a478:	48 8b bd 50 fe ff ff 	mov    -0x1b0(%rbp),%rdi
  68a47f:	48 03 fa             	add    %rdx,%rdi
  68a482:	c5 7b 10 3f          	vmovsd (%rdi),%xmm15
  68a486:	48 8d 14 b2          	lea    (%rdx,%rsi,4),%rdx
  68a48a:	c5 01 16 3c 37       	vmovhpd (%rdi,%rsi,1),%xmm15,%xmm15
  68a48f:	c4 41 19 58 e7       	vaddpd %xmm15,%xmm12,%xmm12
  68a494:	c4 41 61 59 fc       	vmulpd %xmm12,%xmm3,%xmm15
  68a499:	c4 62 91 ba ff       	vfmsub231pd %xmm7,%xmm13,%xmm15
  68a49e:	c4 41 09 59 f7       	vmulpd %xmm15,%xmm14,%xmm14
  68a4a3:	c5 79 11 70 20       	vmovupd %xmm14,0x20(%rax)
  68a4a8:	48 83 c0 20          	add    $0x20,%rax
  68a4ac:	4c 3b bd 30 fe ff ff 	cmp    -0x1d0(%rbp),%r15
  68a4b3:	0f 82 0c ff ff ff    	jb     68a3c5 <step3d_t_mod_mp_step3d_t_tile_+0x3755>
  68a4b9:	48 8b 95 c0 fc ff ff 	mov    -0x340(%rbp),%rdx
  68a4c0:	48 8b 85 c8 fc ff ff 	mov    -0x338(%rbp),%rax
  68a4c7:	48 8b bd 90 fc ff ff 	mov    -0x370(%rbp),%rdi
  68a4ce:	48 8b 8d 88 fc ff ff 	mov    -0x378(%rbp),%rcx
  68a4d5:	48 8b b5 80 fc ff ff 	mov    -0x380(%rbp),%rsi
  68a4dc:	4c 8b ad e0 fd ff ff 	mov    -0x220(%rbp),%r13
  68a4e3:	4c 8b bd d0 fd ff ff 	mov    -0x230(%rbp),%r15
  68a4ea:	4c 0f af ea          	imul   %rdx,%r13
  68a4ee:	4c 0f af fa          	imul   %rdx,%r15
  68a4f2:	48 3b 95 60 fd ff ff 	cmp    -0x2a0(%rbp),%rdx
  68a4f9:	0f 83 ba 00 00 00    	jae    68a5b9 <step3d_t_mod_mp_step3d_t_tile_+0x3949>
  68a4ff:	4c 8b a5 f0 fc ff ff 	mov    -0x310(%rbp),%r12
  68a506:	4c 8d 34 d1          	lea    (%rcx,%rdx,8),%r14
  68a50a:	4c 8b 9d a8 fc ff ff 	mov    -0x358(%rbp),%r11
  68a511:	4c 8b 95 b0 fc ff ff 	mov    -0x350(%rbp),%r10
  68a518:	4c 8b 8d 78 fc ff ff 	mov    -0x388(%rbp),%r9
  68a51f:	4c 03 e7             	add    %rdi,%r12
  68a522:	4c 8b 85 a0 fc ff ff 	mov    -0x360(%rbp),%r8
  68a529:	4c 03 d8             	add    %rax,%r11
  68a52c:	48 89 bd 90 fc ff ff 	mov    %rdi,-0x370(%rbp)
  68a533:	4c 03 d0             	add    %rax,%r10
  68a536:	48 89 8d 88 fc ff ff 	mov    %rcx,-0x378(%rbp)
  68a53d:	4c 03 c8             	add    %rax,%r9
  68a540:	48 89 b5 80 fc ff ff 	mov    %rsi,-0x380(%rbp)
  68a547:	4c 03 c0             	add    %rax,%r8
  68a54a:	48 8b 8d 60 fd ff ff 	mov    -0x2a0(%rbp),%rcx
  68a551:	48 8b b5 d0 fd ff ff 	mov    -0x230(%rbp),%rsi
  68a558:	48 8b bd e0 fd ff ff 	mov    -0x220(%rbp),%rdi
  68a55f:	90                   	nop
  68a560:	c4 01 7b 10 6c 1d 00 	vmovsd 0x0(%r13,%r11,1),%xmm13
  68a567:	48 ff c2             	inc    %rdx
  68a56a:	c4 01 7b 10 64 15 00 	vmovsd 0x0(%r13,%r10,1),%xmm12
  68a571:	c4 01 13 58 74 05 00 	vaddsd 0x0(%r13,%r8,1),%xmm13,%xmm14
  68a578:	c4 01 1b 58 7c 0d 00 	vaddsd 0x0(%r13,%r9,1),%xmm12,%xmm15
  68a57f:	c4 41 73 59 e6       	vmulsd %xmm14,%xmm1,%xmm12
  68a584:	c4 62 81 bb e2       	vfmsub231sd %xmm2,%xmm15,%xmm12
  68a589:	4c 03 ef             	add    %rdi,%r13
  68a58c:	c4 01 1b 59 2c 27    	vmulsd (%r15,%r12,1),%xmm12,%xmm13
  68a592:	4c 03 fe             	add    %rsi,%r15
  68a595:	c4 41 7b 11 6e 10    	vmovsd %xmm13,0x10(%r14)
  68a59b:	49 83 c6 08          	add    $0x8,%r14
  68a59f:	48 3b d1             	cmp    %rcx,%rdx
  68a5a2:	72 bc                	jb     68a560 <step3d_t_mod_mp_step3d_t_tile_+0x38f0>
  68a5a4:	48 8b bd 90 fc ff ff 	mov    -0x370(%rbp),%rdi
  68a5ab:	48 8b 8d 88 fc ff ff 	mov    -0x378(%rbp),%rcx
  68a5b2:	48 8b b5 80 fc ff ff 	mov    -0x380(%rbp),%rsi
  68a5b9:	48 ff c6             	inc    %rsi
  68a5bc:	48 03 8d a0 fd ff ff 	add    -0x260(%rbp),%rcx
  68a5c3:	48 03 bd 48 fc ff ff 	add    -0x3b8(%rbp),%rdi
  68a5ca:	48 03 85 78 fd ff ff 	add    -0x288(%rbp),%rax
  68a5d1:	48 3b b5 50 fc ff ff 	cmp    -0x3b0(%rbp),%rsi
  68a5d8:	0f 82 f8 fc ff ff    	jb     68a2d6 <step3d_t_mod_mp_step3d_t_tile_+0x3666>
  68a5de:	e9 9c 66 00 00       	jmpq   690c7f <step3d_t_mod_mp_step3d_t_tile_+0xa00f>
  68a5e3:	48 ff c6             	inc    %rsi
  68a5e6:	48 03 8d a0 fd ff ff 	add    -0x260(%rbp),%rcx
  68a5ed:	48 03 bd 48 fc ff ff 	add    -0x3b8(%rbp),%rdi
  68a5f4:	48 03 85 78 fd ff ff 	add    -0x288(%rbp),%rax
  68a5fb:	48 3b b5 50 fc ff ff 	cmp    -0x3b0(%rbp),%rsi
  68a602:	0f 82 ce fc ff ff    	jb     68a2d6 <step3d_t_mod_mp_step3d_t_tile_+0x3666>
  68a608:	e9 9a 66 00 00       	jmpq   690ca7 <step3d_t_mod_mp_step3d_t_tile_+0xa037>
  68a60d:	53                   	push   %rbx
  68a60e:	48 89 e3             	mov    %rsp,%rbx
  68a611:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  68a615:	55                   	push   %rbp
  68a616:	55                   	push   %rbp
  68a617:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  68a61b:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  68a620:	48 89 e5             	mov    %rsp,%rbp
  68a623:	48 81 ec 90 0b 00 00 	sub    $0xb90,%rsp
  68a62a:	4c 89 b5 18 f9 ff ff 	mov    %r14,-0x6e8(%rbp)
  68a631:	4c 8b 73 38          	mov    0x38(%rbx),%r14
  68a635:	48 89 95 f0 f8 ff ff 	mov    %rdx,-0x710(%rbp)
  68a63c:	48 8b 53 10          	mov    0x10(%rbx),%rdx
  68a640:	4c 89 ad 20 f9 ff ff 	mov    %r13,-0x6e0(%rbp)
  68a647:	4c 8b 6b 30          	mov    0x30(%rbx),%r13
  68a64b:	45 8b 36             	mov    (%r14),%r14d
  68a64e:	44 89 b5 28 fe ff ff 	mov    %r14d,-0x1d8(%rbp)
  68a655:	4c 89 a5 28 f9 ff ff 	mov    %r12,-0x6d8(%rbp)
  68a65c:	4c 63 32             	movslq (%rdx),%r14
  68a65f:	4c 8b 5b 20          	mov    0x20(%rbx),%r11
  68a663:	4c 8b 63 40          	mov    0x40(%rbx),%r12
  68a667:	48 8b 73 48          	mov    0x48(%rbx),%rsi
  68a66b:	8b 11                	mov    (%rcx),%edx
  68a66d:	48 8b 4b 50          	mov    0x50(%rbx),%rcx
  68a671:	45 8b 6d 00          	mov    0x0(%r13),%r13d
  68a675:	4c 89 bd 10 f9 ff ff 	mov    %r15,-0x6f0(%rbp)
  68a67c:	4c 8b 7b 18          	mov    0x18(%rbx),%r15
  68a680:	8b 07                	mov    (%rdi),%eax
  68a682:	44 89 ad 58 ff ff ff 	mov    %r13d,-0xa8(%rbp)
  68a689:	4d 63 29             	movslq (%r9),%r13
  68a68c:	89 85 d0 f8 ff ff    	mov    %eax,-0x730(%rbp)
  68a692:	4c 8b 53 28          	mov    0x28(%rbx),%r10
  68a696:	48 63 06             	movslq (%rsi),%rax
  68a699:	4d 8b 24 24          	mov    (%r12),%r12
  68a69d:	4d 8b 1b             	mov    (%r11),%r11
  68a6a0:	4c 89 ad 30 fe ff ff 	mov    %r13,-0x1d0(%rbp)
  68a6a7:	48 63 31             	movslq (%rcx),%rsi
  68a6aa:	48 8d 4b 78          	lea    0x78(%rbx),%rcx
  68a6ae:	4c 8b 29             	mov    (%rcx),%r13
  68a6b1:	89 95 00 fb ff ff    	mov    %edx,-0x500(%rbp)
  68a6b7:	4c 89 a5 f8 f4 ff ff 	mov    %r12,-0xb08(%rbp)
  68a6be:	4c 89 9d e8 f4 ff ff 	mov    %r11,-0xb18(%rbp)
  68a6c5:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  68a6c9:	48 8b 79 e0          	mov    -0x20(%rcx),%rdi
  68a6cd:	4c 8b 49 e8          	mov    -0x18(%rcx),%r9
  68a6d1:	4c 8b 59 f0          	mov    -0x10(%rcx),%r11
  68a6d5:	4d 8b 27             	mov    (%r15),%r12
  68a6d8:	48 89 b5 e8 fa ff ff 	mov    %rsi,-0x518(%rbp)
  68a6df:	48 89 85 f0 fa ff ff 	mov    %rax,-0x510(%rbp)
  68a6e6:	48 8b 71 10          	mov    0x10(%rcx),%rsi
  68a6ea:	41 8b 00             	mov    (%r8),%eax
  68a6ed:	4c 89 a5 50 f8 ff ff 	mov    %r12,-0x7b0(%rbp)
  68a6f4:	4c 8b 61 f8          	mov    -0x8(%rcx),%r12
  68a6f8:	4d 8b 12             	mov    (%r10),%r10
  68a6fb:	89 85 f8 fa ff ff    	mov    %eax,-0x508(%rbp)
  68a701:	49 8b 45 00          	mov    0x0(%r13),%rax
  68a705:	4c 89 95 78 fb ff ff 	mov    %r10,-0x488(%rbp)
  68a70c:	48 8b 0a             	mov    (%rdx),%rcx
  68a70f:	4c 8b 07             	mov    (%rdi),%r8
  68a712:	4d 8b 11             	mov    (%r9),%r10
  68a715:	4d 8b 3b             	mov    (%r11),%r15
  68a718:	48 89 85 40 fb ff ff 	mov    %rax,-0x4c0(%rbp)
  68a71f:	48 8b 3e             	mov    (%rsi),%rdi
  68a722:	48 8d b3 98 00 00 00 	lea    0x98(%rbx),%rsi
  68a729:	4c 8b 0e             	mov    (%rsi),%r9
  68a72c:	4c 8b 5e 10          	mov    0x10(%rsi),%r11
  68a730:	48 8b 46 30          	mov    0x30(%rsi),%rax
  68a734:	48 89 8d 48 fb ff ff 	mov    %rcx,-0x4b8(%rbp)
  68a73b:	4c 89 b5 20 fe ff ff 	mov    %r14,-0x1e0(%rbp)
  68a742:	4c 89 bd 38 f5 ff ff 	mov    %r15,-0xac8(%rbp)
  68a749:	48 8b 4e 38          	mov    0x38(%rsi),%rcx
  68a74d:	4c 8b 7e 18          	mov    0x18(%rsi),%r15
  68a751:	4d 8b 34 24          	mov    (%r12),%r14
  68a755:	48 89 bd 50 fb ff ff 	mov    %rdi,-0x4b0(%rbp)
  68a75c:	4c 89 8d 68 fb ff ff 	mov    %r9,-0x498(%rbp)
  68a763:	4c 89 9d 58 fb ff ff 	mov    %r11,-0x4a8(%rbp)
  68a76a:	4c 8d 9b d8 00 00 00 	lea    0xd8(%rbx),%r11
  68a771:	49 8b 3b             	mov    (%r11),%rdi
  68a774:	4d 8b 4b 10          	mov    0x10(%r11),%r9
  68a778:	4d 8b 5b 18          	mov    0x18(%r11),%r11
  68a77c:	4c 89 b5 38 fb ff ff 	mov    %r14,-0x4c8(%rbp)
  68a783:	4c 8d a3 b8 00 00 00 	lea    0xb8(%rbx),%r12
  68a78a:	4d 8b 34 24          	mov    (%r12),%r14
  68a78e:	4d 8b 6c 24 08       	mov    0x8(%r12),%r13
  68a793:	4c 89 85 f0 f4 ff ff 	mov    %r8,-0xb10(%rbp)
  68a79a:	4c 89 95 30 f5 ff ff 	mov    %r10,-0xad0(%rbp)
  68a7a1:	4d 8b 44 24 d8       	mov    -0x28(%r12),%r8
  68a7a6:	4d 8b 54 24 e8       	mov    -0x18(%r12),%r10
  68a7ab:	48 63 10             	movslq (%rax),%rdx
  68a7ae:	49 8b 44 24 40       	mov    0x40(%r12),%rax
  68a7b3:	48 63 31             	movslq (%rcx),%rsi
  68a7b6:	4c 89 85 70 fb ff ff 	mov    %r8,-0x490(%rbp)
  68a7bd:	4c 89 95 60 fb ff ff 	mov    %r10,-0x4a0(%rbp)
  68a7c4:	4d 8b 27             	mov    (%r15),%r12
  68a7c7:	48 89 95 88 fb ff ff 	mov    %rdx,-0x478(%rbp)
  68a7ce:	4c 63 07             	movslq (%rdi),%r8
  68a7d1:	48 8d bd 70 f4 ff ff 	lea    -0xb90(%rbp),%rdi
  68a7d8:	4d 63 11             	movslq (%r9),%r10
  68a7db:	4d 63 3b             	movslq (%r11),%r15
  68a7de:	48 89 47 60          	mov    %rax,0x60(%rdi)
  68a7e2:	33 c0                	xor    %eax,%eax
  68a7e4:	4c 8d 9b 00 01 00 00 	lea    0x100(%rbx),%r11
  68a7eb:	49 8b 13             	mov    (%r11),%rdx
  68a7ee:	49 8b 4b 08          	mov    0x8(%r11),%rcx
  68a7f2:	48 89 b5 40 f5 ff ff 	mov    %rsi,-0xac0(%rbp)
  68a7f9:	49 8b 73 10          	mov    0x10(%r11),%rsi
  68a7fd:	4d 8b 36             	mov    (%r14),%r14
  68a800:	4d 8b 6d 00          	mov    0x0(%r13),%r13
  68a804:	4c 89 85 90 fb ff ff 	mov    %r8,-0x470(%rbp)
  68a80b:	4c 89 95 00 f9 ff ff 	mov    %r10,-0x700(%rbp)
  68a812:	4c 89 bd f8 f8 ff ff 	mov    %r15,-0x708(%rbp)
  68a819:	48 89 57 68          	mov    %rdx,0x68(%rdi)
  68a81d:	48 89 4f 70          	mov    %rcx,0x70(%rdi)
  68a821:	e8 8a 3c df ff       	callq  47e4b0 <_f90_dope_vector_init>
  68a826:	48 89 85 80 f5 ff ff 	mov    %rax,-0xa80(%rbp)
  68a82d:	48 83 c0 1f          	add    $0x1f,%rax
  68a831:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68a835:	48 2b e0             	sub    %rax,%rsp
  68a838:	48 89 e0             	mov    %rsp,%rax
  68a83b:	48 89 85 78 f5 ff ff 	mov    %rax,-0xa88(%rbp)
  68a842:	48 89 c2             	mov    %rax,%rdx
  68a845:	48 8d bd f0 f5 ff ff 	lea    -0xa10(%rbp),%rdi
  68a84c:	33 c0                	xor    %eax,%eax
  68a84e:	48 8b b5 e0 f4 ff ff 	mov    -0xb20(%rbp),%rsi
  68a855:	48 89 95 70 f4 ff ff 	mov    %rdx,-0xb90(%rbp)
  68a85c:	e8 4f 3c df ff       	callq  47e4b0 <_f90_dope_vector_init>
  68a861:	48 89 85 90 f5 ff ff 	mov    %rax,-0xa70(%rbp)
  68a868:	48 83 c0 1f          	add    $0x1f,%rax
  68a86c:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68a870:	48 2b e0             	sub    %rax,%rsp
  68a873:	48 89 e0             	mov    %rsp,%rax
  68a876:	48 89 85 88 f5 ff ff 	mov    %rax,-0xa78(%rbp)
  68a87d:	48 89 c2             	mov    %rax,%rdx
  68a880:	48 8d bd 50 f6 ff ff 	lea    -0x9b0(%rbp),%rdi
  68a887:	33 c0                	xor    %eax,%eax
  68a889:	48 8b b5 d8 f4 ff ff 	mov    -0xb28(%rbp),%rsi
  68a890:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  68a894:	e8 17 3c df ff       	callq  47e4b0 <_f90_dope_vector_init>
  68a899:	48 89 85 a0 f5 ff ff 	mov    %rax,-0xa60(%rbp)
  68a8a0:	48 83 c0 1f          	add    $0x1f,%rax
  68a8a4:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68a8a8:	48 2b e0             	sub    %rax,%rsp
  68a8ab:	48 89 e0             	mov    %rsp,%rax
  68a8ae:	48 89 85 98 f5 ff ff 	mov    %rax,-0xa68(%rbp)
  68a8b5:	48 89 c2             	mov    %rax,%rdx
  68a8b8:	48 8d bd b0 f6 ff ff 	lea    -0x950(%rbp),%rdi
  68a8bf:	33 c0                	xor    %eax,%eax
  68a8c1:	48 8b b5 d0 f4 ff ff 	mov    -0xb30(%rbp),%rsi
  68a8c8:	48 89 57 a0          	mov    %rdx,-0x60(%rdi)
  68a8cc:	e8 df 3b df ff       	callq  47e4b0 <_f90_dope_vector_init>
  68a8d1:	48 89 85 a8 f5 ff ff 	mov    %rax,-0xa58(%rbp)
  68a8d8:	48 83 c0 1f          	add    $0x1f,%rax
  68a8dc:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68a8e0:	48 2b e0             	sub    %rax,%rsp
  68a8e3:	48 89 e0             	mov    %rsp,%rax
  68a8e6:	48 89 85 b0 f5 ff ff 	mov    %rax,-0xa50(%rbp)
  68a8ed:	48 8b 95 f0 f8 ff ff 	mov    -0x710(%rbp),%rdx
  68a8f4:	4c 8b 05 e5 17 4b 00 	mov    0x4b17e5(%rip),%r8        # b3c0e0 <mod_param_mp_n_+0x40>
  68a8fb:	49 f7 d8             	neg    %r8
  68a8fe:	48 8b 0a             	mov    (%rdx),%rcx
  68a901:	48 8b 3d 98 17 4b 00 	mov    0x4b1798(%rip),%rdi        # b3c0a0 <mod_param_mp_n_>
  68a908:	48 63 31             	movslq (%rcx),%rsi
  68a90b:	4c 03 c6             	add    %rsi,%r8
  68a90e:	48 89 85 b0 f6 ff ff 	mov    %rax,-0x950(%rbp)
  68a915:	46 8b 3c 87          	mov    (%rdi,%r8,4),%r15d
  68a919:	45 85 ff             	test   %r15d,%r15d
  68a91c:	0f 8e db 3b 00 00    	jle    68e4fd <step3d_t_mod_mp_step3d_t_tile_+0x788d>
  68a922:	48 83 c4 e0          	add    $0xffffffffffffffe0,%rsp
  68a926:	48 8d 85 ec f8 ff ff 	lea    -0x714(%rbp),%rax
  68a92d:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  68a933:	bf 70 56 b3 00       	mov    $0xb35670,%edi
  68a938:	ba 22 00 00 00       	mov    $0x22,%edx
  68a93d:	48 8d 8d e8 f8 ff ff 	lea    -0x718(%rbp),%rcx
  68a944:	44 89 78 f8          	mov    %r15d,-0x8(%rax)
  68a948:	4c 8d 85 e0 f8 ff ff 	lea    -0x720(%rbp),%r8
  68a94f:	48 89 04 24          	mov    %rax,(%rsp)
  68a953:	4c 8d 8d e4 f8 ff ff 	lea    -0x71c(%rbp),%r9
  68a95a:	44 89 54 24 08       	mov    %r10d,0x8(%rsp)
  68a95f:	44 89 54 24 10       	mov    %r10d,0x10(%rsp)
  68a964:	8b 70 e4             	mov    -0x1c(%rax),%esi
  68a967:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%rax)
  68a96e:	44 89 50 f4          	mov    %r10d,-0xc(%rax)
  68a972:	44 89 10             	mov    %r10d,(%rax)
  68a975:	e8 b6 34 d8 ff       	callq  40de30 <__kmpc_for_static_init_4@plt>
  68a97a:	48 83 c4 20          	add    $0x20,%rsp
  68a97e:	4d 63 ff             	movslq %r15d,%r15
  68a981:	48 63 85 e0 f8 ff ff 	movslq -0x720(%rbp),%rax
  68a988:	8b 95 e4 f8 ff ff    	mov    -0x71c(%rbp),%edx
  68a98e:	48 89 85 08 f9 ff ff 	mov    %rax,-0x6f8(%rbp)
  68a995:	49 3b c7             	cmp    %r15,%rax
  68a998:	0f 8f 4c 3b 00 00    	jg     68e4ea <step3d_t_mod_mp_step3d_t_tile_+0x787a>
  68a99e:	49 63 45 00          	movslq 0x0(%r13),%rax
  68a9a2:	41 3b d7             	cmp    %r15d,%edx
  68a9a5:	48 89 85 30 f9 ff ff 	mov    %rax,-0x6d0(%rbp)
  68a9ac:	49 8b 3c 24          	mov    (%r12),%rdi
  68a9b0:	44 0f 4c fa          	cmovl  %edx,%r15d
  68a9b4:	49 8b 44 24 50       	mov    0x50(%r12),%rax
  68a9b9:	4d 8b 64 24 38       	mov    0x38(%r12),%r12
  68a9be:	4c 8b 9d 88 fb ff ff 	mov    -0x478(%rbp),%r11
  68a9c5:	4c 29 9d 40 f5 ff ff 	sub    %r11,-0xac0(%rbp)
  68a9cc:	4c 89 65 88          	mov    %r12,-0x78(%rbp)
  68a9d0:	4d 8b 1e             	mov    (%r14),%r11
  68a9d3:	4d 8b 66 38          	mov    0x38(%r14),%r12
  68a9d7:	49 8b 4e 50          	mov    0x50(%r14),%rcx
  68a9db:	4c 8b b5 38 f5 ff ff 	mov    -0xac8(%rbp),%r14
  68a9e2:	4c 8b 85 30 f5 ff ff 	mov    -0xad0(%rbp),%r8
  68a9e9:	48 89 bd b0 f9 ff ff 	mov    %rdi,-0x650(%rbp)
  68a9f0:	49 8b 76 38          	mov    0x38(%r14),%rsi
  68a9f4:	48 89 b5 20 f5 ff ff 	mov    %rsi,-0xae0(%rbp)
  68a9fb:	48 8b b5 f8 f4 ff ff 	mov    -0xb08(%rbp),%rsi
  68aa02:	49 8b 3e             	mov    (%r14),%rdi
  68aa05:	49 8b 56 50          	mov    0x50(%r14),%rdx
  68aa09:	4c 89 9d b8 f9 ff ff 	mov    %r11,-0x648(%rbp)
  68aa10:	4c 89 65 90          	mov    %r12,-0x70(%rbp)
  68aa14:	48 89 bd 28 f5 ff ff 	mov    %rdi,-0xad8(%rbp)
  68aa1b:	48 89 95 18 f5 ff ff 	mov    %rdx,-0xae8(%rbp)
  68aa22:	4d 8b 18             	mov    (%r8),%r11
  68aa25:	49 8b 78 38          	mov    0x38(%r8),%rdi
  68aa29:	49 8b 50 68          	mov    0x68(%r8),%rdx
  68aa2d:	4c 2b da             	sub    %rdx,%r11
  68aa30:	4d 8b 60 50          	mov    0x50(%r8),%r12
  68aa34:	4c 8b 46 38          	mov    0x38(%rsi),%r8
  68aa38:	4c 89 85 88 fe ff ff 	mov    %r8,-0x178(%rbp)
  68aa3f:	4d 63 ff             	movslq %r15d,%r15
  68aa42:	4c 8b 85 f0 f4 ff ff 	mov    -0xb10(%rbp),%r8
  68aa49:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  68aa50:	4d 2b fd             	sub    %r13,%r15
  68aa53:	49 ff c7             	inc    %r15
  68aa56:	4c 89 bd b8 f5 ff ff 	mov    %r15,-0xa48(%rbp)
  68aa5d:	4c 8b 16             	mov    (%rsi),%r10
  68aa60:	4c 8b 4e 68          	mov    0x68(%rsi),%r9
  68aa64:	4d 2b d1             	sub    %r9,%r10
  68aa67:	4c 8b 76 50          	mov    0x50(%rsi),%r14
  68aa6b:	4c 8b bd 78 fb ff ff 	mov    -0x488(%rbp),%r15
  68aa72:	49 8b 70 50          	mov    0x50(%r8),%rsi
  68aa76:	48 89 b5 80 fe ff ff 	mov    %rsi,-0x180(%rbp)
  68aa7d:	48 8b b5 e8 f4 ff ff 	mov    -0xb18(%rbp),%rsi
  68aa84:	4c 89 8d 60 f9 ff ff 	mov    %r9,-0x6a0(%rbp)
  68aa8b:	4d 63 0f             	movslq (%r15),%r9
  68aa8e:	4c 89 95 68 f8 ff ff 	mov    %r10,-0x798(%rbp)
  68aa95:	4c 89 8d d8 f8 ff ff 	mov    %r9,-0x728(%rbp)
  68aa9c:	4d 8b 10             	mov    (%r8),%r10
  68aa9f:	4d 8b 48 38          	mov    0x38(%r8),%r9
  68aaa3:	4c 8b 46 38          	mov    0x38(%rsi),%r8
  68aaa7:	4c 89 85 90 f9 ff ff 	mov    %r8,-0x670(%rbp)
  68aaae:	44 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%r8d
  68aab5:	4c 8b 3e             	mov    (%rsi),%r15
  68aab8:	4c 89 bd 98 f9 ff ff 	mov    %r15,-0x668(%rbp)
  68aabf:	4c 89 95 a0 f9 ff ff 	mov    %r10,-0x660(%rbp)
  68aac6:	45 8d 78 01          	lea    0x1(%r8),%r15d
  68aaca:	44 89 bd 10 fb ff ff 	mov    %r15d,-0x4f0(%rbp)
  68aad1:	4c 63 bd 00 fb ff ff 	movslq -0x500(%rbp),%r15
  68aad8:	4c 8b 56 50          	mov    0x50(%rsi),%r10
  68aadc:	4c 89 fe             	mov    %r15,%rsi
  68aadf:	48 0f af f0          	imul   %rax,%rsi
  68aae3:	4c 0f af ea          	imul   %rdx,%r13
  68aae7:	c5 fd 10 0d f1 a4 23 	vmovupd 0x23a4f1(%rip),%ymm1        # 8c4fe0 <var$630.126.450+0x320>
  68aaee:	00 
  68aaef:	c5 f9 10 2d a9 bc 23 	vmovupd 0x23bca9(%rip),%xmm5        # 8c67a0 <__STRLITPACK_19.34+0x10>
  68aaf6:	00 
  68aaf7:	c5 f9 10 25 b1 bc 23 	vmovupd 0x23bcb1(%rip),%xmm4        # 8c67b0 <__STRLITPACK_19.34+0x20>
  68aafe:	00 
  68aaff:	c5 fb 10 1d 11 c5 23 	vmovsd 0x23c511(%rip),%xmm3        # 8c7018 <__STRLITPACK_199.115+0x88>
  68ab06:	00 
  68ab07:	c5 fb 10 15 49 c8 23 	vmovsd 0x23c849(%rip),%xmm2        # 8c7358 <__STRLITPACK_199.115+0x3c8>
  68ab0e:	00 
  68ab0f:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
  68ab16:	4c 89 f8             	mov    %r15,%rax
  68ab19:	48 89 b5 e0 f4 ff ff 	mov    %rsi,-0xb20(%rbp)
  68ab20:	4c 89 fe             	mov    %r15,%rsi
  68ab23:	48 0f af c1          	imul   %rcx,%rax
  68ab27:	49 0f af f6          	imul   %r14,%rsi
  68ab2b:	c5 fd 10 05 cd a4 23 	vmovupd 0x23a4cd(%rip),%ymm0        # 8c5000 <var$630.126.450+0x340>
  68ab32:	00 
  68ab33:	4d 63 c0             	movslq %r8d,%r8
  68ab36:	4c 89 85 d8 f4 ff ff 	mov    %r8,-0xb28(%rbp)
  68ab3d:	4d 2b c7             	sub    %r15,%r8
  68ab40:	48 89 85 48 f5 ff ff 	mov    %rax,-0xab8(%rbp)
  68ab47:	48 89 b5 c0 f9 ff ff 	mov    %rsi,-0x640(%rbp)
  68ab4e:	4c 89 fe             	mov    %r15,%rsi
  68ab51:	4c 89 95 78 fe ff ff 	mov    %r10,-0x188(%rbp)
  68ab58:	49 0f af f2          	imul   %r10,%rsi
  68ab5c:	4c 89 8d 88 f9 ff ff 	mov    %r9,-0x678(%rbp)
  68ab63:	49 8d 40 01          	lea    0x1(%r8),%rax
  68ab67:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  68ab6e:	48 63 85 58 ff ff ff 	movslq -0xa8(%rbp),%rax
  68ab75:	49 89 c2             	mov    %rax,%r10
  68ab78:	4d 0f af d1          	imul   %r9,%r10
  68ab7c:	49 89 c1             	mov    %rax,%r9
  68ab7f:	4c 0f af 8d 88 fe ff 	imul   -0x178(%rbp),%r9
  68ab86:	ff 
  68ab87:	4c 89 b5 70 fe ff ff 	mov    %r14,-0x190(%rbp)
  68ab8e:	4d 8d 70 03          	lea    0x3(%r8),%r14
  68ab92:	4c 89 b5 60 ff ff ff 	mov    %r14,-0xa0(%rbp)
  68ab99:	49 83 c0 02          	add    $0x2,%r8
  68ab9d:	4c 63 b5 28 fe ff ff 	movslq -0x1d8(%rbp),%r14
  68aba4:	4c 89 95 60 f5 ff ff 	mov    %r10,-0xaa0(%rbp)
  68abab:	4d 89 f2             	mov    %r14,%r10
  68abae:	4c 2b d0             	sub    %rax,%r10
  68abb1:	4c 89 8d 68 f5 ff ff 	mov    %r9,-0xa98(%rbp)
  68abb8:	48 89 8d 60 fe ff ff 	mov    %rcx,-0x1a0(%rbp)
  68abbf:	4c 89 f9             	mov    %r15,%rcx
  68abc2:	4c 89 a5 68 fe ff ff 	mov    %r12,-0x198(%rbp)
  68abc9:	49 0f af cc          	imul   %r12,%rcx
  68abcd:	48 89 b5 58 f5 ff ff 	mov    %rsi,-0xaa8(%rbp)
  68abd4:	4d 8d 4a 03          	lea    0x3(%r10),%r9
  68abd8:	4c 89 8d 50 ff ff ff 	mov    %r9,-0xb0(%rbp)
  68abdf:	4d 8d 4a 02          	lea    0x2(%r10),%r9
  68abe3:	4c 89 8d 78 fd ff ff 	mov    %r9,-0x288(%rbp)
  68abea:	4e 8d 0c d5 08 00 00 	lea    0x8(,%r10,8),%r9
  68abf1:	00 
  68abf2:	49 ff c2             	inc    %r10
  68abf5:	48 89 c6             	mov    %rax,%rsi
  68abf8:	4c 89 95 70 fd ff ff 	mov    %r10,-0x290(%rbp)
  68abff:	4c 89 8d f0 f7 ff ff 	mov    %r9,-0x810(%rbp)
  68ac06:	45 89 d1             	mov    %r10d,%r9d
  68ac09:	41 83 e1 fe          	and    $0xfffffffe,%r9d
  68ac0d:	4d 63 c9             	movslq %r9d,%r9
  68ac10:	4c 89 4d 80          	mov    %r9,-0x80(%rbp)
  68ac14:	4c 8b 8d f8 f8 ff ff 	mov    -0x708(%rbp),%r9
  68ac1b:	4d 0f af cc          	imul   %r12,%r9
  68ac1f:	48 0f af f7          	imul   %rdi,%rsi
  68ac23:	4d 89 ec             	mov    %r13,%r12
  68ac26:	4d 03 eb             	add    %r11,%r13
  68ac29:	4d 2b e1             	sub    %r9,%r12
  68ac2c:	4c 2b c9             	sub    %rcx,%r9
  68ac2f:	4c 89 a5 a8 f9 ff ff 	mov    %r12,-0x658(%rbp)
  68ac36:	48 89 95 58 f9 ff ff 	mov    %rdx,-0x6a8(%rbp)
  68ac3d:	4c 89 9d d0 f4 ff ff 	mov    %r11,-0xb30(%rbp)
  68ac44:	48 89 8d 50 f5 ff ff 	mov    %rcx,-0xab0(%rbp)
  68ac4b:	4b 8d 14 23          	lea    (%r11,%r12,1),%rdx
  68ac4f:	4c 8b a5 00 f9 ff ff 	mov    -0x700(%rbp),%r12
  68ac56:	49 89 d3             	mov    %rdx,%r11
  68ac59:	4c 0f af e7          	imul   %rdi,%r12
  68ac5d:	4d 2b dc             	sub    %r12,%r11
  68ac60:	49 2b cc             	sub    %r12,%rcx
  68ac63:	4c 2b e6             	sub    %rsi,%r12
  68ac66:	48 03 d1             	add    %rcx,%rdx
  68ac69:	4d 03 cc             	add    %r12,%r9
  68ac6c:	48 03 d6             	add    %rsi,%rdx
  68ac6f:	4d 2b e9             	sub    %r9,%r13
  68ac72:	4a 8d 34 fd f8 ff ff 	lea    -0x8(,%r15,8),%rsi
  68ac79:	ff 
  68ac7a:	4c 89 85 38 fe ff ff 	mov    %r8,-0x1c8(%rbp)
  68ac81:	4e 8d 04 fd 00 00 00 	lea    0x0(,%r15,8),%r8
  68ac88:	00 
  68ac89:	48 89 95 40 f9 ff ff 	mov    %rdx,-0x6c0(%rbp)
  68ac90:	48 89 bd 90 fe ff ff 	mov    %rdi,-0x170(%rbp)
  68ac97:	4c 89 9d 58 f8 ff ff 	mov    %r11,-0x7a8(%rbp)
  68ac9e:	4d 8d 6c 7d 00       	lea    0x0(%r13,%rdi,2),%r13
  68aca3:	4c 89 ad 48 f9 ff ff 	mov    %r13,-0x6b8(%rbp)
  68acaa:	4c 8b ad 40 f5 ff ff 	mov    -0xac0(%rbp),%r13
  68acb1:	4c 89 ef             	mov    %r13,%rdi
  68acb4:	48 c1 e7 04          	shl    $0x4,%rdi
  68acb8:	48 89 bd c0 f5 ff ff 	mov    %rdi,-0xa40(%rbp)
  68acbf:	49 8d 55 01          	lea    0x1(%r13),%rdx
  68acc3:	4c 0f af c2          	imul   %rdx,%r8
  68acc7:	48 0f af f2          	imul   %rdx,%rsi
  68accb:	4c 8b 9d 88 fb ff ff 	mov    -0x478(%rbp),%r11
  68acd2:	4e 8d 0c ed 08 00 00 	lea    0x8(,%r13,8),%r9
  68acd9:	00 
  68acda:	48 8b bd d8 f4 ff ff 	mov    -0xb28(%rbp),%rdi
  68ace1:	4c 89 bd 78 f9 ff ff 	mov    %r15,-0x688(%rbp)
  68ace8:	48 89 85 98 fb ff ff 	mov    %rax,-0x468(%rbp)
  68acef:	4e 8d 24 dd 00 00 00 	lea    0x0(,%r11,8),%r12
  68acf6:	00 
  68acf7:	49 c1 e6 03          	shl    $0x3,%r14
  68acfb:	4e 8d 1c ed 00 00 00 	lea    0x0(,%r13,8),%r11
  68ad02:	00 
  68ad03:	4c 89 a5 60 f8 ff ff 	mov    %r12,-0x7a0(%rbp)
  68ad0a:	4c 8d 3c fd 10 00 00 	lea    0x10(,%rdi,8),%r15
  68ad11:	00 
  68ad12:	4d 2b f4             	sub    %r12,%r14
  68ad15:	48 8d 0c fd 08 00 00 	lea    0x8(,%rdi,8),%rcx
  68ad1c:	00 
  68ad1d:	48 0f af ca          	imul   %rdx,%rcx
  68ad21:	4c 0f af fa          	imul   %rdx,%r15
  68ad25:	44 89 95 48 fe ff ff 	mov    %r10d,-0x1b8(%rbp)
  68ad2c:	4b 8d 3c e8          	lea    (%r8,%r13,8),%rdi
  68ad30:	4c 8b ad 90 fb ff ff 	mov    -0x470(%rbp),%r13
  68ad37:	48 c1 e0 03          	shl    $0x3,%rax
  68ad3b:	4d 0f af e9          	imul   %r9,%r13
  68ad3f:	48 89 85 d8 f9 ff ff 	mov    %rax,-0x628(%rbp)
  68ad46:	49 2b c4             	sub    %r12,%rax
  68ad49:	4d 89 dc             	mov    %r11,%r12
  68ad4c:	41 83 e2 fc          	and    $0xfffffffc,%r10d
  68ad50:	49 f7 dc             	neg    %r12
  68ad53:	4d 2b dd             	sub    %r13,%r11
  68ad56:	4d 63 d2             	movslq %r10d,%r10
  68ad59:	4c 89 95 78 ff ff ff 	mov    %r10,-0x88(%rbp)
  68ad60:	4e 8d 14 00          	lea    (%rax,%r8,1),%r10
  68ad64:	48 89 95 70 f5 ff ff 	mov    %rdx,-0xa90(%rbp)
  68ad6b:	4d 03 da             	add    %r10,%r11
  68ad6e:	4c 89 9d c8 f9 ff ff 	mov    %r11,-0x638(%rbp)
  68ad75:	4b 8d 14 04          	lea    (%r12,%r8,1),%rdx
  68ad79:	4d 2b e5             	sub    %r13,%r12
  68ad7c:	4c 8d 1c 10          	lea    (%rax,%rdx,1),%r11
  68ad80:	4d 03 e2             	add    %r10,%r12
  68ad83:	4d 2b d5             	sub    %r13,%r10
  68ad86:	4c 89 95 c0 fa ff ff 	mov    %r10,-0x540(%rbp)
  68ad8d:	4c 8d 14 38          	lea    (%rax,%rdi,1),%r10
  68ad91:	49 03 fe             	add    %r14,%rdi
  68ad94:	49 03 d6             	add    %r14,%rdx
  68ad97:	4d 03 f0             	add    %r8,%r14
  68ad9a:	4d 2b d5             	sub    %r13,%r10
  68ad9d:	4d 2b f5             	sub    %r13,%r14
  68ada0:	4d 2b dd             	sub    %r13,%r11
  68ada3:	48 89 8d 20 f8 ff ff 	mov    %rcx,-0x7e0(%rbp)
  68adaa:	49 2b fd             	sub    %r13,%rdi
  68adad:	4c 89 b5 e8 f7 ff ff 	mov    %r14,-0x818(%rbp)
  68adb4:	4c 8d 34 08          	lea    (%rax,%rcx,1),%r14
  68adb8:	49 2b cd             	sub    %r13,%rcx
  68adbb:	4d 2b f5             	sub    %r13,%r14
  68adbe:	4c 89 95 c8 f5 ff ff 	mov    %r10,-0xa38(%rbp)
  68adc5:	48 03 c8             	add    %rax,%rcx
  68adc8:	4c 8b 95 f8 f8 ff ff 	mov    -0x708(%rbp),%r10
  68adcf:	49 2b d5             	sub    %r13,%rdx
  68add2:	48 89 8d 38 f8 ff ff 	mov    %rcx,-0x7c8(%rbp)
  68add9:	4c 89 d1             	mov    %r10,%rcx
  68addc:	48 0f af 8d 58 fe ff 	imul   -0x1a8(%rbp),%rcx
  68ade3:	ff 
  68ade4:	4c 89 85 a0 fb ff ff 	mov    %r8,-0x460(%rbp)
  68adeb:	4d 2b c5             	sub    %r13,%r8
  68adee:	4c 89 9d d0 f5 ff ff 	mov    %r11,-0xa30(%rbp)
  68adf5:	4e 8d 1c 38          	lea    (%rax,%r15,1),%r11
  68adf9:	4c 89 85 f0 f9 ff ff 	mov    %r8,-0x610(%rbp)
  68ae00:	4d 2b dd             	sub    %r13,%r11
  68ae03:	4c 89 9d f8 f7 ff ff 	mov    %r11,-0x808(%rbp)
  68ae0a:	4c 89 a5 a8 fa ff ff 	mov    %r12,-0x558(%rbp)
  68ae11:	4e 8d 1c 00          	lea    (%rax,%r8,1),%r11
  68ae15:	4c 8b 85 00 f9 ff ff 	mov    -0x700(%rbp),%r8
  68ae1c:	4c 8d 24 30          	lea    (%rax,%rsi,1),%r12
  68ae20:	4c 89 9d b0 fa ff ff 	mov    %r11,-0x550(%rbp)
  68ae27:	4d 89 c3             	mov    %r8,%r11
  68ae2a:	49 f7 db             	neg    %r11
  68ae2d:	4d 2b e5             	sub    %r13,%r12
  68ae30:	4c 03 9d 98 fb ff ff 	add    -0x468(%rbp),%r11
  68ae37:	4c 89 b5 00 f8 ff ff 	mov    %r14,-0x800(%rbp)
  68ae3e:	4c 8b b5 b0 f9 ff ff 	mov    -0x650(%rbp),%r14
  68ae45:	4c 89 a5 08 f8 ff ff 	mov    %r12,-0x7f8(%rbp)
  68ae4c:	4d 89 f4             	mov    %r14,%r12
  68ae4f:	48 89 bd e0 f5 ff ff 	mov    %rdi,-0xa20(%rbp)
  68ae56:	4c 89 df             	mov    %r11,%rdi
  68ae59:	4c 2b e1             	sub    %rcx,%r12
  68ae5c:	48 0f af 7d 88       	imul   -0x78(%rbp),%rdi
  68ae61:	4c 0f af 5d 90       	imul   -0x70(%rbp),%r11
  68ae66:	48 89 95 e8 f5 ff ff 	mov    %rdx,-0xa18(%rbp)
  68ae6d:	48 8b 95 e0 f4 ff ff 	mov    -0xb20(%rbp),%rdx
  68ae74:	4c 03 e2             	add    %rdx,%r12
  68ae77:	48 2b ca             	sub    %rdx,%rcx
  68ae7a:	4c 89 d2             	mov    %r10,%rdx
  68ae7d:	48 0f af 95 60 fe ff 	imul   -0x1a0(%rbp),%rdx
  68ae84:	ff 
  68ae85:	48 89 b5 10 f8 ff ff 	mov    %rsi,-0x7f0(%rbp)
  68ae8c:	49 2b f5             	sub    %r13,%rsi
  68ae8f:	49 03 fc             	add    %r12,%rdi
  68ae92:	48 03 f0             	add    %rax,%rsi
  68ae95:	48 89 bd 50 f9 ff ff 	mov    %rdi,-0x6b0(%rbp)
  68ae9c:	4e 8d 24 c5 00 00 00 	lea    0x0(,%r8,8),%r12
  68aea3:	00 
  68aea4:	48 8b bd b8 f9 ff ff 	mov    -0x648(%rbp),%rdi
  68aeab:	48 89 b5 48 f8 ff ff 	mov    %rsi,-0x7b8(%rbp)
  68aeb2:	48 89 fe             	mov    %rdi,%rsi
  68aeb5:	4c 89 bd 18 f8 ff ff 	mov    %r15,-0x7e8(%rbp)
  68aebc:	4d 2b fd             	sub    %r13,%r15
  68aebf:	48 2b f2             	sub    %rdx,%rsi
  68aec2:	4c 03 f8             	add    %rax,%r15
  68aec5:	4c 89 bd 40 f8 ff ff 	mov    %r15,-0x7c0(%rbp)
  68aecc:	4c 8b bd 48 f5 ff ff 	mov    -0xab8(%rbp),%r15
  68aed3:	49 03 f7             	add    %r15,%rsi
  68aed6:	4c 03 de             	add    %rsi,%r11
  68aed9:	49 2b d7             	sub    %r15,%rdx
  68aedc:	4c 89 9d d0 f9 ff ff 	mov    %r11,-0x630(%rbp)
  68aee3:	4c 8b 9d d8 f9 ff ff 	mov    -0x628(%rbp),%r11
  68aeea:	4d 2b dc             	sub    %r12,%r11
  68aeed:	49 f7 dc             	neg    %r12
  68aef0:	4c 89 8d 70 ff ff ff 	mov    %r9,-0x90(%rbp)
  68aef7:	4d 03 f3             	add    %r11,%r14
  68aefa:	4c 8b 8d d0 f4 ff ff 	mov    -0xb30(%rbp),%r9
  68af01:	4c 2b f1             	sub    %rcx,%r14
  68af04:	4d 03 cb             	add    %r11,%r9
  68af07:	49 03 fb             	add    %r11,%rdi
  68af0a:	48 8b b5 a8 f9 ff ff 	mov    -0x658(%rbp),%rsi
  68af11:	48 2b fa             	sub    %rdx,%rdi
  68af14:	4c 89 b5 b0 f9 ff ff 	mov    %r14,-0x650(%rbp)
  68af1b:	49 03 f1             	add    %r9,%rsi
  68af1e:	4d 89 d6             	mov    %r10,%r14
  68af21:	4d 89 d1             	mov    %r10,%r9
  68af24:	48 8b 8d 18 f5 ff ff 	mov    -0xae8(%rbp),%rcx
  68af2b:	48 03 b5 50 f5 ff ff 	add    -0xab0(%rbp),%rsi
  68af32:	4c 0f af f1          	imul   %rcx,%r14
  68af36:	4c 0f af 8d 70 fe ff 	imul   -0x190(%rbp),%r9
  68af3d:	ff 
  68af3e:	48 89 b5 a8 f9 ff ff 	mov    %rsi,-0x658(%rbp)
  68af45:	4c 89 c6             	mov    %r8,%rsi
  68af48:	48 8b 95 20 f5 ff ff 	mov    -0xae0(%rbp),%rdx
  68af4f:	48 f7 d9             	neg    %rcx
  68af52:	48 0f af f2          	imul   %rdx,%rsi
  68af56:	4c 8b bd 28 f5 ff ff 	mov    -0xad8(%rbp),%r15
  68af5d:	48 2b ce             	sub    %rsi,%rcx
  68af60:	4d 2b fe             	sub    %r14,%r15
  68af63:	48 89 bd b8 f9 ff ff 	mov    %rdi,-0x648(%rbp)
  68af6a:	4c 89 ff             	mov    %r15,%rdi
  68af6d:	48 2b fe             	sub    %rsi,%rdi
  68af70:	48 03 f2             	add    %rdx,%rsi
  68af73:	49 03 cf             	add    %r15,%rcx
  68af76:	4c 2b fe             	sub    %rsi,%r15
  68af79:	48 8b b5 08 f9 ff ff 	mov    -0x6f8(%rbp),%rsi
  68af80:	48 0f af b5 60 f9 ff 	imul   -0x6a0(%rbp),%rsi
  68af87:	ff 
  68af88:	48 89 bd 00 f5 ff ff 	mov    %rdi,-0xb00(%rbp)
  68af8f:	8b bd 28 fe ff ff    	mov    -0x1d8(%rbp),%edi
  68af95:	48 89 8d 08 f5 ff ff 	mov    %rcx,-0xaf8(%rbp)
  68af9c:	48 89 f1             	mov    %rsi,%rcx
  68af9f:	49 2b c9             	sub    %r9,%rcx
  68afa2:	4c 89 bd 28 f5 ff ff 	mov    %r15,-0xad8(%rbp)
  68afa9:	44 8d 77 01          	lea    0x1(%rdi),%r14d
  68afad:	44 89 b5 40 fe ff ff 	mov    %r14d,-0x1c0(%rbp)
  68afb4:	4c 8b b5 68 f8 ff ff 	mov    -0x798(%rbp),%r14
  68afbb:	4c 8b bd c0 f9 ff ff 	mov    -0x640(%rbp),%r15
  68afc2:	49 03 f6             	add    %r14,%rsi
  68afc5:	4d 2b cf             	sub    %r15,%r9
  68afc8:	4c 89 ad 90 fb ff ff 	mov    %r13,-0x470(%rbp)
  68afcf:	4b 8d 14 33          	lea    (%r11,%r14,1),%rdx
  68afd3:	48 03 d1             	add    %rcx,%rdx
  68afd6:	4c 03 f1             	add    %rcx,%r14
  68afd9:	49 03 d7             	add    %r15,%rdx
  68afdc:	48 89 95 e0 f9 ff ff 	mov    %rdx,-0x620(%rbp)
  68afe3:	4c 89 c2             	mov    %r8,%rdx
  68afe6:	48 8b 8d 88 fe ff ff 	mov    -0x178(%rbp),%rcx
  68afed:	48 0f af d1          	imul   %rcx,%rdx
  68aff1:	4c 2b fa             	sub    %rdx,%r15
  68aff4:	4d 03 fe             	add    %r14,%r15
  68aff7:	4c 2b f2             	sub    %rdx,%r14
  68affa:	4c 89 b5 68 f8 ff ff 	mov    %r14,-0x798(%rbp)
  68b001:	4c 8b b5 68 f5 ff ff 	mov    -0xa98(%rbp),%r14
  68b008:	49 2b d6             	sub    %r14,%rdx
  68b00b:	4c 03 ca             	add    %rdx,%r9
  68b00e:	4d 03 fe             	add    %r14,%r15
  68b011:	49 2b f1             	sub    %r9,%rsi
  68b014:	48 8b 95 e8 fa ff ff 	mov    -0x518(%rbp),%rdx
  68b01b:	4c 89 bd c0 f9 ff ff 	mov    %r15,-0x640(%rbp)
  68b022:	48 c7 85 38 f9 ff ff 	movq   $0x0,-0x6c8(%rbp)
  68b029:	00 00 00 00 
  68b02d:	4c 89 9d d8 f9 ff ff 	mov    %r11,-0x628(%rbp)
  68b034:	4c 8d 0c 4e          	lea    (%rsi,%rcx,2),%r9
  68b038:	48 8b 8d f0 fa ff ff 	mov    -0x510(%rbp),%rcx
  68b03f:	48 2b d1             	sub    %rcx,%rdx
  68b042:	48 ff c2             	inc    %rdx
  68b045:	48 89 95 50 fe ff ff 	mov    %rdx,-0x1b0(%rbp)
  68b04c:	4c 8d 3c cd 00 00 00 	lea    0x0(,%rcx,8),%r15
  68b053:	00 
  68b054:	48 8b 95 70 f5 ff ff 	mov    -0xa90(%rbp),%rdx
  68b05b:	49 0f af d7          	imul   %r15,%rdx
  68b05f:	49 89 d6             	mov    %rdx,%r14
  68b062:	4d 2b f5             	sub    %r13,%r14
  68b065:	4c 03 f0             	add    %rax,%r14
  68b068:	48 03 c2             	add    %rdx,%rax
  68b06b:	4c 89 b5 70 f9 ff ff 	mov    %r14,-0x690(%rbp)
  68b072:	4d 89 d6             	mov    %r10,%r14
  68b075:	48 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%rdx
  68b07c:	49 2b c5             	sub    %r13,%rax
  68b07f:	4c 0f af f2          	imul   %rdx,%r14
  68b083:	48 0f af ca          	imul   %rdx,%rcx
  68b087:	4c 0f af 95 78 fe ff 	imul   -0x188(%rbp),%r10
  68b08e:	ff 
  68b08f:	4c 89 8d 68 f9 ff ff 	mov    %r9,-0x698(%rbp)
  68b096:	44 8b 8d 00 fb ff ff 	mov    -0x500(%rbp),%r9d
  68b09d:	4c 8b bd a0 f9 ff ff 	mov    -0x660(%rbp),%r15
  68b0a4:	48 89 85 e8 f9 ff ff 	mov    %rax,-0x618(%rbp)
  68b0ab:	41 8d 71 ff          	lea    -0x1(%r9),%esi
  68b0af:	89 b5 18 fb ff ff    	mov    %esi,-0x4e8(%rbp)
  68b0b5:	8b b5 58 ff ff ff    	mov    -0xa8(%rbp),%esi
  68b0bb:	2b fe                	sub    %esi,%edi
  68b0bd:	ff c7                	inc    %edi
  68b0bf:	89 bd 10 f5 ff ff    	mov    %edi,-0xaf0(%rbp)
  68b0c5:	4c 89 ff             	mov    %r15,%rdi
  68b0c8:	49 2b fe             	sub    %r14,%rdi
  68b0cb:	4d 03 fb             	add    %r11,%r15
  68b0ce:	4c 2b f1             	sub    %rcx,%r14
  68b0d1:	8d 76 ff             	lea    -0x1(%rsi),%esi
  68b0d4:	4d 2b fe             	sub    %r14,%r15
  68b0d7:	4c 89 bd a0 f9 ff ff 	mov    %r15,-0x660(%rbp)
  68b0de:	4d 89 c7             	mov    %r8,%r15
  68b0e1:	4c 8b b5 88 f9 ff ff 	mov    -0x678(%rbp),%r14
  68b0e8:	48 8d 14 0f          	lea    (%rdi,%rcx,1),%rdx
  68b0ec:	4d 0f af fe          	imul   %r14,%r15
  68b0f0:	49 2b cf             	sub    %r15,%rcx
  68b0f3:	48 03 f9             	add    %rcx,%rdi
  68b0f6:	48 8b 8d 60 f5 ff ff 	mov    -0xaa0(%rbp),%rcx
  68b0fd:	4c 2b f9             	sub    %rcx,%r15
  68b100:	49 2b d7             	sub    %r15,%rdx
  68b103:	89 b5 b8 fa ff ff    	mov    %esi,-0x548(%rbp)
  68b109:	4e 8d 3c 71          	lea    (%rcx,%r14,2),%r15
  68b10d:	48 8b 8d 78 fd ff ff 	mov    -0x288(%rbp),%rcx
  68b114:	49 03 ff             	add    %r15,%rdi
  68b117:	4c 8b b5 50 ff ff ff 	mov    -0xb0(%rbp),%r14
  68b11e:	83 e1 fc             	and    $0xfffffffc,%ecx
  68b121:	48 63 c9             	movslq %ecx,%rcx
  68b124:	41 83 e6 fc          	and    $0xfffffffc,%r14d
  68b128:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
  68b12c:	8b 8d f8 fa ff ff    	mov    -0x508(%rbp),%ecx
  68b132:	41 2b c9             	sub    %r9d,%ecx
  68b135:	ff c1                	inc    %ecx
  68b137:	4c 8b 8d 30 fe ff ff 	mov    -0x1d0(%rbp),%r9
  68b13e:	89 8d 30 f8 ff ff    	mov    %ecx,-0x7d0(%rbp)
  68b144:	4e 8d 3c cd 00 00 00 	lea    0x0(,%r9,8),%r15
  68b14b:	00 
  68b14c:	4d 03 e7             	add    %r15,%r12
  68b14f:	d1 e9                	shr    %ecx
  68b151:	4c 2b bd 60 f8 ff ff 	sub    -0x7a0(%rbp),%r15
  68b158:	89 8d 28 f8 ff ff    	mov    %ecx,-0x7d8(%rbp)
  68b15e:	48 89 8d d8 f5 ff ff 	mov    %rcx,-0xa28(%rbp)
  68b165:	48 8b 8d f0 f9 ff ff 	mov    -0x610(%rbp),%rcx
  68b16c:	49 03 cf             	add    %r15,%rcx
  68b16f:	4c 03 bd a0 fb ff ff 	add    -0x460(%rbp),%r15
  68b176:	4d 2b fd             	sub    %r13,%r15
  68b179:	4c 8b ad 98 f9 ff ff 	mov    -0x668(%rbp),%r13
  68b180:	4d 63 f6             	movslq %r14d,%r14
  68b183:	4c 89 bd 80 f9 ff ff 	mov    %r15,-0x680(%rbp)
  68b18a:	4c 89 b5 48 ff ff ff 	mov    %r14,-0xb8(%rbp)
  68b191:	4d 89 ee             	mov    %r13,%r14
  68b194:	4c 8b bd 58 f5 ff ff 	mov    -0xaa8(%rbp),%r15
  68b19b:	4d 2b f2             	sub    %r10,%r14
  68b19e:	4d 03 ec             	add    %r12,%r13
  68b1a1:	4d 2b d7             	sub    %r15,%r10
  68b1a4:	4d 2b ea             	sub    %r10,%r13
  68b1a7:	4c 89 ad 98 f9 ff ff 	mov    %r13,-0x668(%rbp)
  68b1ae:	4c 8b ad 90 f9 ff ff 	mov    -0x670(%rbp),%r13
  68b1b5:	4f 8d 14 3e          	lea    (%r14,%r15,1),%r10
  68b1b9:	48 8b b5 20 fe ff ff 	mov    -0x1e0(%rbp),%rsi
  68b1c0:	4d 0f af c5          	imul   %r13,%r8
  68b1c4:	41 2b f1             	sub    %r9d,%esi
  68b1c7:	4d 2b f8             	sub    %r8,%r15
  68b1ca:	4d 0f af cd          	imul   %r13,%r9
  68b1ce:	48 63 f6             	movslq %esi,%rsi
  68b1d1:	4d 2b c1             	sub    %r9,%r8
  68b1d4:	48 ff c6             	inc    %rsi
  68b1d7:	4d 03 f7             	add    %r15,%r14
  68b1da:	48 89 b5 80 fd ff ff 	mov    %rsi,-0x280(%rbp)
  68b1e1:	4d 2b d0             	sub    %r8,%r10
  68b1e4:	89 b5 98 fe ff ff    	mov    %esi,-0x168(%rbp)
  68b1ea:	4f 8d 04 69          	lea    (%r9,%r13,2),%r8
  68b1ee:	4d 03 f0             	add    %r8,%r14
  68b1f1:	83 e6 fc             	and    $0xfffffffc,%esi
  68b1f4:	48 63 f6             	movslq %esi,%rsi
  68b1f7:	4c 89 95 a0 fe ff ff 	mov    %r10,-0x160(%rbp)
  68b1fe:	4c 89 b5 b0 fb ff ff 	mov    %r14,-0x450(%rbp)
  68b205:	4c 89 a5 f8 f9 ff ff 	mov    %r12,-0x608(%rbp)
  68b20c:	4c 8b 85 e0 f9 ff ff 	mov    -0x620(%rbp),%r8
  68b213:	4c 8b 95 b8 f5 ff ff 	mov    -0xa48(%rbp),%r10
  68b21a:	4c 8b 9d 38 f9 ff ff 	mov    -0x6c8(%rbp),%r11
  68b221:	44 8b a5 00 fb ff ff 	mov    -0x500(%rbp),%r12d
  68b228:	44 8b ad f8 fa ff ff 	mov    -0x508(%rbp),%r13d
  68b22f:	4c 8b b5 f0 f8 ff ff 	mov    -0x710(%rbp),%r14
  68b236:	48 89 b5 b8 fb ff ff 	mov    %rsi,-0x448(%rbp)
  68b23d:	48 89 8d f0 f9 ff ff 	mov    %rcx,-0x610(%rbp)
  68b244:	48 89 bd a8 fb ff ff 	mov    %rdi,-0x458(%rbp)
  68b24b:	48 89 95 a8 fe ff ff 	mov    %rdx,-0x158(%rbp)
  68b252:	4d 8b 3e             	mov    (%r14),%r15
  68b255:	33 f6                	xor    %esi,%esi
  68b257:	48 8b 15 22 0e 4b 00 	mov    0x4b0e22(%rip),%rdx        # b3c080 <mod_param_mp_nt_+0x40>
  68b25e:	48 f7 da             	neg    %rdx
  68b261:	4d 63 0f             	movslq (%r15),%r9
  68b264:	49 03 d1             	add    %r9,%rdx
  68b267:	48 8b 05 d2 0d 4b 00 	mov    0x4b0dd2(%rip),%rax        # b3c040 <mod_param_mp_nt_>
  68b26e:	4c 63 0c 90          	movslq (%rax,%rdx,4),%r9
  68b272:	4d 85 c9             	test   %r9,%r9
  68b275:	0f 8e 63 32 00 00    	jle    68e4de <step3d_t_mod_mp_step3d_t_tile_+0x786e>
  68b27b:	45 3b ec             	cmp    %r12d,%r13d
  68b27e:	0f 8c c2 5f 00 00    	jl     691246 <step3d_t_mod_mp_step3d_t_tile_+0xa5d6>
  68b284:	4c 8b 85 50 f8 ff ff 	mov    -0x7b0(%rbp),%r8
  68b28b:	48 8b 85 b0 f6 ff ff 	mov    -0x950(%rbp),%rax
  68b292:	48 89 85 40 fd ff ff 	mov    %rax,-0x2c0(%rbp)
  68b299:	49 8b 10             	mov    (%r8),%rdx
  68b29c:	48 89 95 b0 fe ff ff 	mov    %rdx,-0x150(%rbp)
  68b2a3:	49 8b 80 98 00 00 00 	mov    0x98(%r8),%rax
  68b2aa:	49 8b b8 80 00 00 00 	mov    0x80(%r8),%rdi
  68b2b1:	49 8b 48 68          	mov    0x68(%r8),%rcx
  68b2b5:	49 8b 50 50          	mov    0x50(%r8),%rdx
  68b2b9:	4d 8b 40 38          	mov    0x38(%r8),%r8
  68b2bd:	4c 89 bd 08 fb ff ff 	mov    %r15,-0x4f8(%rbp)
  68b2c4:	48 89 85 b8 fe ff ff 	mov    %rax,-0x148(%rbp)
  68b2cb:	4c 89 45 f8          	mov    %r8,-0x8(%rbp)
  68b2cf:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
  68b2d6:	48 89 8d 68 fa ff ff 	mov    %rcx,-0x598(%rbp)
  68b2dd:	48 89 bd 70 fa ff ff 	mov    %rdi,-0x590(%rbp)
  68b2e4:	4c 89 8d 78 fa ff ff 	mov    %r9,-0x588(%rbp)
  68b2eb:	4c 89 9d 38 f9 ff ff 	mov    %r11,-0x6c8(%rbp)
  68b2f2:	48 83 7d f8 08       	cmpq   $0x8,-0x8(%rbp)
  68b2f7:	74 2c                	je     68b325 <step3d_t_mod_mp_step3d_t_tile_+0x46b5>
  68b2f9:	48 89 b5 60 fa ff ff 	mov    %rsi,-0x5a0(%rbp)
  68b300:	48 8b bd 40 fd ff ff 	mov    -0x2c0(%rbp),%rdi
  68b307:	48 8b 95 b0 fe ff ff 	mov    -0x150(%rbp),%rdx
  68b30e:	48 8b 8d b8 fe ff ff 	mov    -0x148(%rbp),%rcx
  68b315:	48 8b 85 68 fa ff ff 	mov    -0x598(%rbp),%rax
  68b31c:	48 8b b5 70 fa ff ff 	mov    -0x590(%rbp),%rsi
  68b323:	eb 38                	jmp    68b35d <step3d_t_mod_mp_step3d_t_tile_+0x46ed>
  68b325:	48 89 b5 60 fa ff ff 	mov    %rsi,-0x5a0(%rbp)
  68b32c:	48 8b bd 40 fd ff ff 	mov    -0x2c0(%rbp),%rdi
  68b333:	48 8b 95 b0 fe ff ff 	mov    -0x150(%rbp),%rdx
  68b33a:	48 8b 8d b8 fe ff ff 	mov    -0x148(%rbp),%rcx
  68b341:	48 8b 85 68 fa ff ff 	mov    -0x598(%rbp),%rax
  68b348:	48 8b b5 70 fa ff ff 	mov    -0x590(%rbp),%rsi
  68b34f:	48 83 bd 90 f9 ff ff 	cmpq   $0x8,-0x670(%rbp)
  68b356:	08 
  68b357:	0f 84 11 04 00 00    	je     68b76e <step3d_t_mod_mp_step3d_t_tile_+0x4afe>
  68b35d:	4c 8b 95 60 fa ff ff 	mov    -0x5a0(%rbp),%r10
  68b364:	48 2b d1             	sub    %rcx,%rdx
  68b367:	4c 8b bd 08 f9 ff ff 	mov    -0x6f8(%rbp),%r15
  68b36e:	45 33 db             	xor    %r11d,%r11d
  68b371:	4c 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%r8
  68b378:	4d 89 c5             	mov    %r8,%r13
  68b37b:	4c 0f af ad 78 f9 ff 	imul   -0x688(%rbp),%r13
  68b382:	ff 
  68b383:	45 33 e4             	xor    %r12d,%r12d
  68b386:	4d 8d 4a 01          	lea    0x1(%r10),%r9
  68b38a:	4c 8b 95 38 f9 ff ff 	mov    -0x6c8(%rbp),%r10
  68b391:	4c 89 8d 80 fa ff ff 	mov    %r9,-0x580(%rbp)
  68b398:	49 0f af c9          	imul   %r9,%rcx
  68b39c:	4c 8b 4d f8          	mov    -0x8(%rbp),%r9
  68b3a0:	4f 8d 34 17          	lea    (%r15,%r10,1),%r14
  68b3a4:	4c 8b bd f8 f8 ff ff 	mov    -0x708(%rbp),%r15
  68b3ab:	4d 0f af f8          	imul   %r8,%r15
  68b3af:	4c 0f af f0          	imul   %rax,%r14
  68b3b3:	4d 89 e8             	mov    %r13,%r8
  68b3b6:	49 f7 dd             	neg    %r13
  68b3b9:	4d 03 ef             	add    %r15,%r13
  68b3bc:	4c 03 f8             	add    %rax,%r15
  68b3bf:	48 f7 d8             	neg    %rax
  68b3c2:	49 03 c6             	add    %r14,%rax
  68b3c5:	49 2b c5             	sub    %r13,%rax
  68b3c8:	4c 8d 2c 76          	lea    (%rsi,%rsi,2),%r13
  68b3cc:	4d 03 f5             	add    %r13,%r14
  68b3cf:	49 f7 dd             	neg    %r13
  68b3d2:	4c 03 ee             	add    %rsi,%r13
  68b3d5:	48 f7 de             	neg    %rsi
  68b3d8:	4d 2b f7             	sub    %r15,%r14
  68b3db:	48 03 f2             	add    %rdx,%rsi
  68b3de:	49 03 f6             	add    %r14,%rsi
  68b3e1:	4d 89 ce             	mov    %r9,%r14
  68b3e4:	4c 8b 95 00 f9 ff ff 	mov    -0x700(%rbp),%r10
  68b3eb:	49 2b d5             	sub    %r13,%rdx
  68b3ee:	4c 0f af b5 30 fe ff 	imul   -0x1d0(%rbp),%r14
  68b3f5:	ff 
  68b3f6:	4d 0f af d1          	imul   %r9,%r10
  68b3fa:	4d 2b c2             	sub    %r10,%r8
  68b3fd:	48 03 d0             	add    %rax,%rdx
  68b400:	4d 2b d6             	sub    %r14,%r10
  68b403:	4f 8d 2c 4e          	lea    (%r14,%r9,2),%r13
  68b407:	49 2b d2             	sub    %r10,%rdx
  68b40a:	4f 8d 14 31          	lea    (%r9,%r14,1),%r10
  68b40e:	49 f7 d9             	neg    %r9
  68b411:	4d 03 e8             	add    %r8,%r13
  68b414:	4d 03 ce             	add    %r14,%r9
  68b417:	4d 03 d0             	add    %r8,%r10
  68b41a:	48 8b 85 f0 f9 ff ff 	mov    -0x610(%rbp),%rax
  68b421:	4d 03 c1             	add    %r9,%r8
  68b424:	4c 03 ee             	add    %rsi,%r13
  68b427:	4c 03 d6             	add    %rsi,%r10
  68b42a:	49 03 f0             	add    %r8,%rsi
  68b42d:	4c 03 e9             	add    %rcx,%r13
  68b430:	48 03 d1             	add    %rcx,%rdx
  68b433:	48 03 c7             	add    %rdi,%rax
  68b436:	48 03 bd 80 f9 ff ff 	add    -0x680(%rbp),%rdi
  68b43d:	4c 03 d1             	add    %rcx,%r10
  68b440:	48 03 ce             	add    %rsi,%rcx
  68b443:	45 33 c0             	xor    %r8d,%r8d
  68b446:	4c 89 ad c0 fb ff ff 	mov    %r13,-0x440(%rbp)
  68b44d:	33 f6                	xor    %esi,%esi
  68b44f:	48 89 bd 40 fd ff ff 	mov    %rdi,-0x2c0(%rbp)
  68b456:	48 89 95 b0 fe ff ff 	mov    %rdx,-0x150(%rbp)
  68b45d:	48 89 8d b8 fe ff ff 	mov    %rcx,-0x148(%rbp)
  68b464:	4c 89 95 c8 fb ff ff 	mov    %r10,-0x438(%rbp)
  68b46b:	48 89 85 d0 fb ff ff 	mov    %rax,-0x430(%rbp)
  68b472:	4c 8b b5 80 fd ff ff 	mov    -0x280(%rbp),%r14
  68b479:	4c 8b ad 90 f9 ff ff 	mov    -0x670(%rbp),%r13
  68b480:	48 8b 85 20 fe ff ff 	mov    -0x1e0(%rbp),%rax
  68b487:	48 3b 85 30 fe ff ff 	cmp    -0x1d0(%rbp),%rax
  68b48e:	0f 8c b0 02 00 00    	jl     68b744 <step3d_t_mod_mp_step3d_t_tile_+0x4ad4>
  68b494:	49 83 fe 04          	cmp    $0x4,%r14
  68b498:	0f 8c 2a 58 00 00    	jl     690cc8 <step3d_t_mod_mp_step3d_t_tile_+0xa058>
  68b49e:	48 8b 85 40 fd ff ff 	mov    -0x2c0(%rbp),%rax
  68b4a5:	48 03 c6             	add    %rsi,%rax
  68b4a8:	48 89 85 48 fd ff ff 	mov    %rax,-0x2b8(%rbp)
  68b4af:	48 83 e0 0f          	and    $0xf,%rax
  68b4b3:	85 c0                	test   %eax,%eax
  68b4b5:	74 0d                	je     68b4c4 <step3d_t_mod_mp_step3d_t_tile_+0x4854>
  68b4b7:	a8 07                	test   $0x7,%al
  68b4b9:	0f 85 09 58 00 00    	jne    690cc8 <step3d_t_mod_mp_step3d_t_tile_+0xa058>
  68b4bf:	b8 01 00 00 00       	mov    $0x1,%eax
  68b4c4:	41 89 c1             	mov    %eax,%r9d
  68b4c7:	49 8d 51 04          	lea    0x4(%r9),%rdx
  68b4cb:	4c 3b f2             	cmp    %rdx,%r14
  68b4ce:	0f 8c f4 57 00 00    	jl     690cc8 <step3d_t_mod_mp_step3d_t_tile_+0xa058>
  68b4d4:	4c 8b bd b8 fe ff ff 	mov    -0x148(%rbp),%r15
  68b4db:	33 c9                	xor    %ecx,%ecx
  68b4dd:	8b 95 98 fe ff ff    	mov    -0x168(%rbp),%edx
  68b4e3:	41 89 d2             	mov    %edx,%r10d
  68b4e6:	44 2b d0             	sub    %eax,%r10d
  68b4e9:	33 ff                	xor    %edi,%edi
  68b4eb:	41 83 e2 03          	and    $0x3,%r10d
  68b4ef:	4d 03 fb             	add    %r11,%r15
  68b4f2:	4c 89 7d a8          	mov    %r15,-0x58(%rbp)
  68b4f6:	41 f7 da             	neg    %r10d
  68b4f9:	4c 8b bd b0 fe ff ff 	mov    -0x150(%rbp),%r15
  68b500:	44 03 d2             	add    %edx,%r10d
  68b503:	4d 63 d2             	movslq %r10d,%r10
  68b506:	33 d2                	xor    %edx,%edx
  68b508:	4d 03 fb             	add    %r11,%r15
  68b50b:	4c 89 bd c8 fe ff ff 	mov    %r15,-0x138(%rbp)
  68b512:	4c 8b bd a0 fe ff ff 	mov    -0x160(%rbp),%r15
  68b519:	4d 03 f8             	add    %r8,%r15
  68b51c:	4c 89 bd c0 fe ff ff 	mov    %r15,-0x140(%rbp)
  68b523:	85 c0                	test   %eax,%eax
  68b525:	76 61                	jbe    68b588 <step3d_t_mod_mp_step3d_t_tile_+0x4918>
  68b527:	4c 89 a5 88 fd ff ff 	mov    %r12,-0x278(%rbp)
  68b52e:	4c 89 9d 90 fd ff ff 	mov    %r11,-0x270(%rbp)
  68b535:	4c 89 f8             	mov    %r15,%rax
  68b538:	4c 8b 9d c8 fe ff ff 	mov    -0x138(%rbp),%r11
  68b53f:	4c 8b 65 a8          	mov    -0x58(%rbp),%r12
  68b543:	4c 8b b5 48 fd ff ff 	mov    -0x2b8(%rbp),%r14
  68b54a:	4c 8b 7d f8          	mov    -0x8(%rbp),%r15
  68b54e:	c4 a1 7b 10 04 1a    	vmovsd (%rdx,%r11,1),%xmm0
  68b554:	c4 a1 7b 5c 0c 22    	vsubsd (%rdx,%r12,1),%xmm0,%xmm1
  68b55a:	49 03 d7             	add    %r15,%rdx
  68b55d:	c5 f3 59 14 07       	vmulsd (%rdi,%rax,1),%xmm1,%xmm2
  68b562:	49 03 fd             	add    %r13,%rdi
  68b565:	c4 c1 7b 11 14 ce    	vmovsd %xmm2,(%r14,%rcx,8)
  68b56b:	48 ff c1             	inc    %rcx
  68b56e:	49 3b c9             	cmp    %r9,%rcx
  68b571:	72 db                	jb     68b54e <step3d_t_mod_mp_step3d_t_tile_+0x48de>
  68b573:	4c 8b a5 88 fd ff ff 	mov    -0x278(%rbp),%r12
  68b57a:	4c 8b 9d 90 fd ff ff 	mov    -0x270(%rbp),%r11
  68b581:	4c 8b b5 80 fd ff ff 	mov    -0x280(%rbp),%r14
  68b588:	4c 8b bd c0 fb ff ff 	mov    -0x440(%rbp),%r15
  68b58f:	4c 89 ef             	mov    %r13,%rdi
  68b592:	48 8b 95 d0 fb ff ff 	mov    -0x430(%rbp),%rdx
  68b599:	48 8b 85 c8 fb ff ff 	mov    -0x438(%rbp),%rax
  68b5a0:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  68b5a4:	4d 03 fb             	add    %r11,%r15
  68b5a7:	4c 89 bd d8 fb ff ff 	mov    %r15,-0x428(%rbp)
  68b5ae:	48 03 d6             	add    %rsi,%rdx
  68b5b1:	4c 8b bd b0 fb ff ff 	mov    -0x450(%rbp),%r15
  68b5b8:	49 03 c3             	add    %r11,%rax
  68b5bb:	4c 89 55 a0          	mov    %r10,-0x60(%rbp)
  68b5bf:	48 89 b5 98 fd ff ff 	mov    %rsi,-0x268(%rbp)
  68b5c6:	4c 89 85 a0 fd ff ff 	mov    %r8,-0x260(%rbp)
  68b5cd:	4d 03 f8             	add    %r8,%r15
  68b5d0:	4c 89 a5 88 fd ff ff 	mov    %r12,-0x278(%rbp)
  68b5d7:	4c 89 9d 90 fd ff ff 	mov    %r11,-0x270(%rbp)
  68b5de:	49 0f af f9          	imul   %r9,%rdi
  68b5e2:	49 0f af c9          	imul   %r9,%rcx
  68b5e6:	4d 89 fe             	mov    %r15,%r14
  68b5e9:	48 8b b5 d8 fb ff ff 	mov    -0x428(%rbp),%rsi
  68b5f0:	4c 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%r8
  68b5f7:	4c 8b 95 c8 fe ff ff 	mov    -0x138(%rbp),%r10
  68b5fe:	4c 8b 9d 48 fd ff ff 	mov    -0x2b8(%rbp),%r11
  68b605:	4c 8b 65 f8          	mov    -0x8(%rbp),%r12
  68b609:	4d 8d 3c 0a          	lea    (%r10,%rcx,1),%r15
  68b60d:	c4 c1 7b 10 07       	vmovsd (%r15),%xmm0
  68b612:	c4 81 79 16 14 27    	vmovhpd (%r15,%r12,1),%xmm0,%xmm2
  68b618:	4c 8b 7d a8          	mov    -0x58(%rbp),%r15
  68b61c:	4c 03 f9             	add    %rcx,%r15
  68b61f:	c4 c1 7b 10 0f       	vmovsd (%r15),%xmm1
  68b624:	c4 81 71 16 1c 27    	vmovhpd (%r15,%r12,1),%xmm1,%xmm3
  68b62a:	4d 8d 3c 38          	lea    (%r8,%rdi,1),%r15
  68b62e:	c4 c1 7b 10 27       	vmovsd (%r15),%xmm4
  68b633:	c4 81 59 16 34 2f    	vmovhpd (%r15,%r13,1),%xmm4,%xmm6
  68b639:	4c 8d 3c 0e          	lea    (%rsi,%rcx,1),%r15
  68b63d:	c4 41 7b 10 07       	vmovsd (%r15),%xmm8
  68b642:	c4 01 39 16 14 27    	vmovhpd (%r15,%r12,1),%xmm8,%xmm10
  68b648:	4c 8d 3c 08          	lea    (%rax,%rcx,1),%r15
  68b64c:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  68b651:	4a 8d 0c a1          	lea    (%rcx,%r12,4),%rcx
  68b655:	c4 01 31 16 1c 27    	vmovhpd (%r15,%r12,1),%xmm9,%xmm11
  68b65b:	4d 8d 3c 3e          	lea    (%r14,%rdi,1),%r15
  68b65f:	c5 e9 5c eb          	vsubpd %xmm3,%xmm2,%xmm5
  68b663:	c4 41 29 5c eb       	vsubpd %xmm11,%xmm10,%xmm13
  68b668:	c5 d1 59 fe          	vmulpd %xmm6,%xmm5,%xmm7
  68b66c:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  68b671:	4a 8d 3c af          	lea    (%rdi,%r13,4),%rdi
  68b675:	c4 01 19 16 34 2f    	vmovhpd (%r15,%r13,1),%xmm12,%xmm14
  68b67b:	c4 41 11 59 fe       	vmulpd %xmm14,%xmm13,%xmm15
  68b680:	c4 81 79 11 3c cb    	vmovupd %xmm7,(%r11,%r9,8)
  68b686:	c4 21 79 11 7c ca 10 	vmovupd %xmm15,0x10(%rdx,%r9,8)
  68b68d:	49 83 c1 04          	add    $0x4,%r9
  68b691:	4c 3b 4d a0          	cmp    -0x60(%rbp),%r9
  68b695:	0f 82 6e ff ff ff    	jb     68b609 <step3d_t_mod_mp_step3d_t_tile_+0x4999>
  68b69b:	4c 8b 55 a0          	mov    -0x60(%rbp),%r10
  68b69f:	48 8b b5 98 fd ff ff 	mov    -0x268(%rbp),%rsi
  68b6a6:	4c 8b 85 a0 fd ff ff 	mov    -0x260(%rbp),%r8
  68b6ad:	4c 8b a5 88 fd ff ff 	mov    -0x278(%rbp),%r12
  68b6b4:	4c 8b 9d 90 fd ff ff 	mov    -0x270(%rbp),%r11
  68b6bb:	4c 8b b5 80 fd ff ff 	mov    -0x280(%rbp),%r14
  68b6c2:	4c 89 e9             	mov    %r13,%rcx
  68b6c5:	4c 8b 4d f8          	mov    -0x8(%rbp),%r9
  68b6c9:	4d 0f af ca          	imul   %r10,%r9
  68b6cd:	49 0f af ca          	imul   %r10,%rcx
  68b6d1:	4d 3b d6             	cmp    %r14,%r10
  68b6d4:	73 6e                	jae    68b744 <step3d_t_mod_mp_step3d_t_tile_+0x4ad4>
  68b6d6:	4c 8b bd a0 fe ff ff 	mov    -0x160(%rbp),%r15
  68b6dd:	48 8b 95 40 fd ff ff 	mov    -0x2c0(%rbp),%rdx
  68b6e4:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  68b6eb:	48 8b bd b0 fe ff ff 	mov    -0x150(%rbp),%rdi
  68b6f2:	4d 03 f8             	add    %r8,%r15
  68b6f5:	4c 89 bd e0 fb ff ff 	mov    %r15,-0x420(%rbp)
  68b6fc:	48 03 d6             	add    %rsi,%rdx
  68b6ff:	4c 89 9d 90 fd ff ff 	mov    %r11,-0x270(%rbp)
  68b706:	49 03 c3             	add    %r11,%rax
  68b709:	4c 8b 7d f8          	mov    -0x8(%rbp),%r15
  68b70d:	49 03 fb             	add    %r11,%rdi
  68b710:	4c 8b 9d e0 fb ff ff 	mov    -0x420(%rbp),%r11
  68b717:	c4 c1 7b 10 04 39    	vmovsd (%r9,%rdi,1),%xmm0
  68b71d:	c4 c1 7b 5c 0c 01    	vsubsd (%r9,%rax,1),%xmm0,%xmm1
  68b723:	4d 03 cf             	add    %r15,%r9
  68b726:	c4 a1 73 59 14 19    	vmulsd (%rcx,%r11,1),%xmm1,%xmm2
  68b72c:	49 03 cd             	add    %r13,%rcx
  68b72f:	c4 a1 7b 11 14 d2    	vmovsd %xmm2,(%rdx,%r10,8)
  68b735:	49 ff c2             	inc    %r10
  68b738:	4d 3b d6             	cmp    %r14,%r10
  68b73b:	72 da                	jb     68b717 <step3d_t_mod_mp_step3d_t_tile_+0x4aa7>
  68b73d:	4c 8b 9d 90 fd ff ff 	mov    -0x270(%rbp),%r11
  68b744:	49 ff c4             	inc    %r12
  68b747:	4c 03 9d 00 ff ff ff 	add    -0x100(%rbp),%r11
  68b74e:	4c 03 85 78 fe ff ff 	add    -0x188(%rbp),%r8
  68b755:	48 03 b5 70 ff ff ff 	add    -0x90(%rbp),%rsi
  68b75c:	4c 3b a5 68 ff ff ff 	cmp    -0x98(%rbp),%r12
  68b763:	0f 82 17 fd ff ff    	jb     68b480 <step3d_t_mod_mp_step3d_t_tile_+0x4810>
  68b769:	e9 29 01 00 00       	jmpq   68b897 <step3d_t_mod_mp_step3d_t_tile_+0x4c27>
  68b76e:	4c 8b ad 38 f9 ff ff 	mov    -0x6c8(%rbp),%r13
  68b775:	48 2b d1             	sub    %rcx,%rdx
  68b778:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  68b77f:	4c 8d 1c 76          	lea    (%rsi,%rsi,2),%r11
  68b783:	4c 8b 85 60 fa ff ff 	mov    -0x5a0(%rbp),%r8
  68b78a:	49 f7 db             	neg    %r11
  68b78d:	49 03 f3             	add    %r11,%rsi
  68b790:	45 33 c9             	xor    %r9d,%r9d
  68b793:	48 03 95 f8 f9 ff ff 	add    -0x608(%rbp),%rdx
  68b79a:	4f 8d 34 2c          	lea    (%r12,%r13,1),%r14
  68b79e:	4c 0f af f0          	imul   %rax,%r14
  68b7a2:	4c 2b f0             	sub    %rax,%r14
  68b7a5:	4d 8d 50 01          	lea    0x1(%r8),%r10
  68b7a9:	4c 8b 85 f8 f8 ff ff 	mov    -0x708(%rbp),%r8
  68b7b0:	49 2b f6             	sub    %r14,%rsi
  68b7b3:	49 f7 d8             	neg    %r8
  68b7b6:	48 2b d6             	sub    %rsi,%rdx
  68b7b9:	4c 03 85 78 f9 ff ff 	add    -0x688(%rbp),%r8
  68b7c0:	49 0f af ca          	imul   %r10,%rcx
  68b7c4:	4c 0f af 85 00 ff ff 	imul   -0x100(%rbp),%r8
  68b7cb:	ff 
  68b7cc:	48 03 d1             	add    %rcx,%rdx
  68b7cf:	4c 89 95 80 fa ff ff 	mov    %r10,-0x580(%rbp)
  68b7d6:	4c 03 c2             	add    %rdx,%r8
  68b7d9:	48 03 bd 80 f9 ff ff 	add    -0x680(%rbp),%rdi
  68b7e0:	48 8b 8d 98 f9 ff ff 	mov    -0x668(%rbp),%rcx
  68b7e7:	4c 8b 95 00 ff ff ff 	mov    -0x100(%rbp),%r10
  68b7ee:	4c 8b 9d 80 fd ff ff 	mov    -0x280(%rbp),%r11
  68b7f5:	4c 8b a5 70 ff ff ff 	mov    -0x90(%rbp),%r12
  68b7fc:	4c 8b ad 68 ff ff ff 	mov    -0x98(%rbp),%r13
  68b803:	4c 8b b5 30 fe ff ff 	mov    -0x1d0(%rbp),%r14
  68b80a:	4c 8b bd 20 fe ff ff 	mov    -0x1e0(%rbp),%r15
  68b811:	4d 3b fe             	cmp    %r14,%r15
  68b814:	7c 68                	jl     68b87e <step3d_t_mod_mp_step3d_t_tile_+0x4c0e>
  68b816:	49 83 fb 04          	cmp    $0x4,%r11
  68b81a:	0f 8c 1f 5a 00 00    	jl     69123f <step3d_t_mod_mp_step3d_t_tile_+0xa5cf>
  68b820:	48 8b b5 b8 fb ff ff 	mov    -0x448(%rbp),%rsi
  68b827:	33 d2                	xor    %edx,%edx
  68b829:	4c 89 c0             	mov    %r8,%rax
  68b82c:	49 89 f7             	mov    %rsi,%r15
  68b82f:	c5 fd 10 00          	vmovupd (%rax),%ymm0
  68b833:	c5 fd 5c 48 f8       	vsubpd -0x8(%rax),%ymm0,%ymm1
  68b838:	48 83 c0 20          	add    $0x20,%rax
  68b83c:	c5 f5 59 14 d1       	vmulpd (%rcx,%rdx,8),%ymm1,%ymm2
  68b841:	c5 fd 11 14 d7       	vmovupd %ymm2,(%rdi,%rdx,8)
  68b846:	48 83 c2 04          	add    $0x4,%rdx
  68b84a:	49 3b d7             	cmp    %r15,%rdx
  68b84d:	72 e0                	jb     68b82f <step3d_t_mod_mp_step3d_t_tile_+0x4bbf>
  68b84f:	4c 8b bd 20 fe ff ff 	mov    -0x1e0(%rbp),%r15
  68b856:	49 3b f3             	cmp    %r11,%rsi
  68b859:	73 23                	jae    68b87e <step3d_t_mod_mp_step3d_t_tile_+0x4c0e>
  68b85b:	49 8d 04 f0          	lea    (%r8,%rsi,8),%rax
  68b85f:	c5 fb 10 00          	vmovsd (%rax),%xmm0
  68b863:	c5 fb 5c 48 f8       	vsubsd -0x8(%rax),%xmm0,%xmm1
  68b868:	48 83 c0 08          	add    $0x8,%rax
  68b86c:	c5 f3 59 14 f1       	vmulsd (%rcx,%rsi,8),%xmm1,%xmm2
  68b871:	c5 fb 11 14 f7       	vmovsd %xmm2,(%rdi,%rsi,8)
  68b876:	48 ff c6             	inc    %rsi
  68b879:	49 3b f3             	cmp    %r11,%rsi
  68b87c:	72 e1                	jb     68b85f <step3d_t_mod_mp_step3d_t_tile_+0x4bef>
  68b87e:	49 ff c1             	inc    %r9
  68b881:	49 03 fc             	add    %r12,%rdi
  68b884:	48 03 8d 78 fe ff ff 	add    -0x188(%rbp),%rcx
  68b88b:	4d 03 c2             	add    %r10,%r8
  68b88e:	4d 3b cd             	cmp    %r13,%r9
  68b891:	0f 82 7a ff ff ff    	jb     68b811 <step3d_t_mod_mp_step3d_t_tile_+0x4ba1>
  68b897:	4c 8b bd 08 fb ff ff 	mov    -0x4f8(%rbp),%r15
  68b89e:	4c 8b 25 13 29 4b 00 	mov    0x4b2913(%rip),%r12        # b3e1b8 <mod_scalars_mp_compositegrid_+0x58>
  68b8a5:	4d 89 e1             	mov    %r12,%r9
  68b8a8:	49 f7 d9             	neg    %r9
  68b8ab:	4d 63 2f             	movslq (%r15),%r13
  68b8ae:	4d 03 cd             	add    %r13,%r9
  68b8b1:	4c 8b 15 f8 28 4b 00 	mov    0x4b28f8(%rip),%r10        # b3e1b0 <mod_scalars_mp_compositegrid_+0x50>
  68b8b8:	4d 0f af ca          	imul   %r10,%r9
  68b8bc:	48 8b 05 dd 28 4b 00 	mov    0x4b28dd(%rip),%rax        # b3e1a0 <mod_scalars_mp_compositegrid_+0x40>
  68b8c3:	4c 89 95 28 fb ff ff 	mov    %r10,-0x4d8(%rbp)
  68b8ca:	48 8b 15 8f 28 4b 00 	mov    0x4b288f(%rip),%rdx        # b3e160 <mod_scalars_mp_compositegrid_>
  68b8d1:	48 89 95 30 fb ff ff 	mov    %rdx,-0x4d0(%rbp)
  68b8d8:	4c 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%r10
  68b8df:	00 
  68b8e0:	49 f7 da             	neg    %r10
  68b8e3:	4c 03 d2             	add    %rdx,%r10
  68b8e6:	48 89 85 20 fb ff ff 	mov    %rax,-0x4e0(%rbp)
  68b8ed:	43 f6 44 0a 04 01    	testb  $0x1,0x4(%r10,%r9,1)
  68b8f3:	0f 85 41 01 00 00    	jne    68ba3a <step3d_t_mod_mp_step3d_t_tile_+0x4dca>
  68b8f9:	4c 8b 3d a0 22 4b 00 	mov    0x4b22a0(%rip),%r15        # b3dba0 <mod_scalars_mp_ewperiodic_+0x40>
  68b900:	4a 8d 04 bd 00 00 00 	lea    0x0(,%r15,4),%rax
  68b907:	00 
  68b908:	48 f7 d8             	neg    %rax
  68b90b:	48 03 05 4e 22 4b 00 	add    0x4b224e(%rip),%rax        # b3db60 <mod_scalars_mp_ewperiodic_>
  68b912:	42 f6 04 a8 01       	testb  $0x1,(%rax,%r13,4)
  68b917:	0f 85 1d 01 00 00    	jne    68ba3a <step3d_t_mod_mp_step3d_t_tile_+0x4dca>
  68b91d:	48 8b 0d dc 25 4b 00 	mov    0x4b25dc(%rip),%rcx        # b3df00 <mod_param_mp_domain_+0x40>
  68b924:	48 f7 d9             	neg    %rcx
  68b927:	49 03 cd             	add    %r13,%rcx
  68b92a:	48 89 c8             	mov    %rcx,%rax
  68b92d:	48 c1 e0 05          	shl    $0x5,%rax
  68b931:	48 c1 e1 0b          	shl    $0xb,%rcx
  68b935:	48 2b c8             	sub    %rax,%rcx
  68b938:	48 8b 15 81 25 4b 00 	mov    0x4b2581(%rip),%rdx        # b3dec0 <mod_param_mp_domain_>
  68b93f:	48 8b bc 0a 88 00 00 	mov    0x88(%rdx,%rcx,1),%rdi
  68b946:	00 
  68b947:	48 f7 df             	neg    %rdi
  68b94a:	48 03 bd d8 f8 ff ff 	add    -0x728(%rbp),%rdi
  68b951:	48 0f af bc 0a 80 00 	imul   0x80(%rdx,%rcx,1),%rdi
  68b958:	00 00 
  68b95a:	48 8b 74 0a 48       	mov    0x48(%rdx,%rcx,1),%rsi
  68b95f:	f6 04 3e 01          	testb  $0x1,(%rsi,%rdi,1)
  68b963:	0f 84 d1 00 00 00    	je     68ba3a <step3d_t_mod_mp_step3d_t_tile_+0x4dca>
  68b969:	8b 85 f8 fa ff ff    	mov    -0x508(%rbp),%eax
  68b96f:	3b 85 00 fb ff ff    	cmp    -0x500(%rbp),%eax
  68b975:	0f 8c b2 00 00 00    	jl     68ba2d <step3d_t_mod_mp_step3d_t_tile_+0x4dbd>
  68b97b:	ba 01 00 00 00       	mov    $0x1,%edx
  68b980:	45 33 f6             	xor    %r14d,%r14d
  68b983:	48 8b 85 b0 f6 ff ff 	mov    -0x950(%rbp),%rax
  68b98a:	45 33 db             	xor    %r11d,%r11d
  68b98d:	83 bd 28 f8 ff ff 00 	cmpl   $0x0,-0x7d8(%rbp)
  68b994:	74 5f                	je     68b9f5 <step3d_t_mod_mp_step3d_t_tile_+0x4d85>
  68b996:	4c 8b 85 c8 f5 ff ff 	mov    -0xa38(%rbp),%r8
  68b99d:	48 8b bd b0 fa ff ff 	mov    -0x550(%rbp),%rdi
  68b9a4:	48 8b 95 c0 fa ff ff 	mov    -0x540(%rbp),%rdx
  68b9ab:	48 8b 8d c0 f5 ff ff 	mov    -0xa40(%rbp),%rcx
  68b9b2:	4c 03 c0             	add    %rax,%r8
  68b9b5:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68b9bc:	48 03 f8             	add    %rax,%rdi
  68b9bf:	48 8d 34 10          	lea    (%rax,%rdx,1),%rsi
  68b9c3:	48 8b 95 d8 f5 ff ff 	mov    -0xa28(%rbp),%rdx
  68b9ca:	4d 8b 2c 3b          	mov    (%r11,%rdi,1),%r13
  68b9ce:	49 ff c6             	inc    %r14
  68b9d1:	4d 89 6c 33 f8       	mov    %r13,-0x8(%r11,%rsi,1)
  68b9d6:	4f 8b 6c 03 08       	mov    0x8(%r11,%r8,1),%r13
  68b9db:	4f 89 2c 03          	mov    %r13,(%r11,%r8,1)
  68b9df:	4d 8d 5c 0b 10       	lea    0x10(%r11,%rcx,1),%r11
  68b9e4:	4c 3b f2             	cmp    %rdx,%r14
  68b9e7:	72 e1                	jb     68b9ca <step3d_t_mod_mp_step3d_t_tile_+0x4d5a>
  68b9e9:	4c 8b ad c8 fa ff ff 	mov    -0x538(%rbp),%r13
  68b9f0:	43 8d 54 36 01       	lea    0x1(%r14,%r14,1),%edx
  68b9f5:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  68b9f8:	3b 8d 30 f8 ff ff    	cmp    -0x7d0(%rbp),%ecx
  68b9fe:	73 20                	jae    68ba20 <step3d_t_mod_mp_step3d_t_tile_+0x4db0>
  68ba00:	48 63 d2             	movslq %edx,%rdx
  68ba03:	48 0f af 95 70 ff ff 	imul   -0x90(%rbp),%rdx
  68ba0a:	ff 
  68ba0b:	48 8b 8d d0 f5 ff ff 	mov    -0xa30(%rbp),%rcx
  68ba12:	48 8d 3c 08          	lea    (%rax,%rcx,1),%rdi
  68ba16:	48 8b 74 3a f8       	mov    -0x8(%rdx,%rdi,1),%rsi
  68ba1b:	48 89 74 3a f0       	mov    %rsi,-0x10(%rdx,%rdi,1)
  68ba20:	43 f6 44 0a 0c 01    	testb  $0x1,0xc(%r10,%r9,1)
  68ba26:	74 25                	je     68ba4d <step3d_t_mod_mp_step3d_t_tile_+0x4ddd>
  68ba28:	e9 35 01 00 00       	jmpq   68bb62 <step3d_t_mod_mp_step3d_t_tile_+0x4ef2>
  68ba2d:	43 f6 44 0a 0c 01    	testb  $0x1,0xc(%r10,%r9,1)
  68ba33:	74 18                	je     68ba4d <step3d_t_mod_mp_step3d_t_tile_+0x4ddd>
  68ba35:	e9 a2 09 00 00       	jmpq   68c3dc <step3d_t_mod_mp_step3d_t_tile_+0x576c>
  68ba3a:	43 f6 44 0a 0c 01    	testb  $0x1,0xc(%r10,%r9,1)
  68ba40:	0f 85 03 01 00 00    	jne    68bb49 <step3d_t_mod_mp_step3d_t_tile_+0x4ed9>
  68ba46:	4c 8b 3d 53 21 4b 00 	mov    0x4b2153(%rip),%r15        # b3dba0 <mod_scalars_mp_ewperiodic_+0x40>
  68ba4d:	49 c1 e7 02          	shl    $0x2,%r15
  68ba51:	49 f7 df             	neg    %r15
  68ba54:	4c 03 3d 05 21 4b 00 	add    0x4b2105(%rip),%r15        # b3db60 <mod_scalars_mp_ewperiodic_>
  68ba5b:	43 f6 04 af 01       	testb  $0x1,(%r15,%r13,4)
  68ba60:	0f 85 e3 00 00 00    	jne    68bb49 <step3d_t_mod_mp_step3d_t_tile_+0x4ed9>
  68ba66:	48 8b 0d 93 24 4b 00 	mov    0x4b2493(%rip),%rcx        # b3df00 <mod_param_mp_domain_+0x40>
  68ba6d:	48 f7 d9             	neg    %rcx
  68ba70:	49 03 cd             	add    %r13,%rcx
  68ba73:	48 89 c8             	mov    %rcx,%rax
  68ba76:	48 c1 e0 05          	shl    $0x5,%rax
  68ba7a:	48 c1 e1 0b          	shl    $0xb,%rcx
  68ba7e:	48 2b c8             	sub    %rax,%rcx
  68ba81:	48 8b 15 38 24 4b 00 	mov    0x4b2438(%rip),%rdx        # b3dec0 <mod_param_mp_domain_>
  68ba88:	48 8b 7c 0a 40       	mov    0x40(%rdx,%rcx,1),%rdi
  68ba8d:	48 f7 df             	neg    %rdi
  68ba90:	48 03 bd d8 f8 ff ff 	add    -0x728(%rbp),%rdi
  68ba97:	48 0f af 7c 0a 38    	imul   0x38(%rdx,%rcx,1),%rdi
  68ba9d:	48 8b 34 0a          	mov    (%rdx,%rcx,1),%rsi
  68baa1:	f6 04 3e 01          	testb  $0x1,(%rsi,%rdi,1)
  68baa5:	0f 84 9e 00 00 00    	je     68bb49 <step3d_t_mod_mp_step3d_t_tile_+0x4ed9>
  68baab:	8b 85 f8 fa ff ff    	mov    -0x508(%rbp),%eax
  68bab1:	3b 85 00 fb ff ff    	cmp    -0x500(%rbp),%eax
  68bab7:	0f 8c 1f 09 00 00    	jl     68c3dc <step3d_t_mod_mp_step3d_t_tile_+0x576c>
  68babd:	ba 01 00 00 00       	mov    $0x1,%edx
  68bac2:	33 c9                	xor    %ecx,%ecx
  68bac4:	48 8b 85 b0 f6 ff ff 	mov    -0x950(%rbp),%rax
  68bacb:	33 f6                	xor    %esi,%esi
  68bacd:	83 bd 28 f8 ff ff 00 	cmpl   $0x0,-0x7d8(%rbp)
  68bad4:	74 47                	je     68bb1d <step3d_t_mod_mp_step3d_t_tile_+0x4ead>
  68bad6:	48 8b 95 e0 f5 ff ff 	mov    -0xa20(%rbp),%rdx
  68badd:	48 8b bd e8 f7 ff ff 	mov    -0x818(%rbp),%rdi
  68bae4:	4c 8b b5 d8 f5 ff ff 	mov    -0xa28(%rbp),%r14
  68baeb:	4c 8b bd c0 f5 ff ff 	mov    -0xa40(%rbp),%r15
  68baf2:	48 03 d0             	add    %rax,%rdx
  68baf5:	48 03 f8             	add    %rax,%rdi
  68baf8:	48 ff c1             	inc    %rcx
  68bafb:	4c 8b 44 3e 08       	mov    0x8(%rsi,%rdi,1),%r8
  68bb00:	4c 8b 5c 16 10       	mov    0x10(%rsi,%rdx,1),%r11
  68bb05:	4c 89 44 3e 10       	mov    %r8,0x10(%rsi,%rdi,1)
  68bb0a:	4c 89 5c 16 18       	mov    %r11,0x18(%rsi,%rdx,1)
  68bb0f:	4a 8d 74 3e 10       	lea    0x10(%rsi,%r15,1),%rsi
  68bb14:	49 3b ce             	cmp    %r14,%rcx
  68bb17:	72 df                	jb     68baf8 <step3d_t_mod_mp_step3d_t_tile_+0x4e88>
  68bb19:	8d 54 09 01          	lea    0x1(%rcx,%rcx,1),%edx
  68bb1d:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  68bb20:	3b 8d 30 f8 ff ff    	cmp    -0x7d0(%rbp),%ecx
  68bb26:	73 3a                	jae    68bb62 <step3d_t_mod_mp_step3d_t_tile_+0x4ef2>
  68bb28:	48 63 d2             	movslq %edx,%rdx
  68bb2b:	48 0f af 95 70 ff ff 	imul   -0x90(%rbp),%rdx
  68bb32:	ff 
  68bb33:	48 8b 8d e8 f5 ff ff 	mov    -0xa18(%rbp),%rcx
  68bb3a:	48 8d 3c 08          	lea    (%rax,%rcx,1),%rdi
  68bb3e:	48 8b 34 3a          	mov    (%rdx,%rdi,1),%rsi
  68bb42:	48 89 74 3a 08       	mov    %rsi,0x8(%rdx,%rdi,1)
  68bb47:	eb 19                	jmp    68bb62 <step3d_t_mod_mp_step3d_t_tile_+0x4ef2>
  68bb49:	8b 85 f8 fa ff ff    	mov    -0x508(%rbp),%eax
  68bb4f:	3b 85 00 fb ff ff    	cmp    -0x500(%rbp),%eax
  68bb55:	0f 8c 81 08 00 00    	jl     68c3dc <step3d_t_mod_mp_step3d_t_tile_+0x576c>
  68bb5b:	48 8b 85 b0 f6 ff ff 	mov    -0x950(%rbp),%rax
  68bb62:	4c 8b 85 f0 f5 ff ff 	mov    -0xa10(%rbp),%r8
  68bb69:	33 c9                	xor    %ecx,%ecx
  68bb6b:	48 8b 95 b0 fa ff ff 	mov    -0x550(%rbp),%rdx
  68bb72:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68bb79:	4c 89 85 e8 fb ff ff 	mov    %r8,-0x418(%rbp)
  68bb80:	4c 89 95 d0 fa ff ff 	mov    %r10,-0x530(%rbp)
  68bb87:	4a 8d 3c 02          	lea    (%rdx,%r8,1),%rdi
  68bb8b:	4c 89 8d d8 fa ff ff 	mov    %r9,-0x528(%rbp)
  68bb92:	48 8d 34 10          	lea    (%rax,%rdx,1),%rsi
  68bb96:	48 03 85 c0 fa ff ff 	add    -0x540(%rbp),%rax
  68bb9d:	33 d2                	xor    %edx,%edx
  68bb9f:	44 8b ad b8 fa ff ff 	mov    -0x548(%rbp),%r13d
  68bba6:	44 8b b5 40 fe ff ff 	mov    -0x1c0(%rbp),%r14d
  68bbad:	4c 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%r15
  68bbb4:	4c 89 a5 e0 fa ff ff 	mov    %r12,-0x520(%rbp)
  68bbbb:	c5 fd 10 05 1d 94 23 	vmovupd 0x23941d(%rip),%ymm0        # 8c4fe0 <var$630.126.450+0x320>
  68bbc2:	00 
  68bbc3:	c5 fb 10 0d 4d b4 23 	vmovsd 0x23b44d(%rip),%xmm1        # 8c7018 <__STRLITPACK_199.115+0x88>
  68bbca:	00 
  68bbcb:	45 3b f5             	cmp    %r13d,%r14d
  68bbce:	7c 7c                	jl     68bc4c <step3d_t_mod_mp_step3d_t_tile_+0x4fdc>
  68bbd0:	49 83 ff 04          	cmp    $0x4,%r15
  68bbd4:	0f 8c 5d 56 00 00    	jl     691237 <step3d_t_mod_mp_step3d_t_tile_+0xa5c7>
  68bbda:	4c 8b a5 48 ff ff ff 	mov    -0xb8(%rbp),%r12
  68bbe1:	45 33 db             	xor    %r11d,%r11d
  68bbe4:	4d 89 e7             	mov    %r12,%r15
  68bbe7:	4c 8d 14 17          	lea    (%rdi,%rdx,1),%r10
  68bbeb:	4c 8d 0c 16          	lea    (%rsi,%rdx,1),%r9
  68bbef:	4c 8d 04 10          	lea    (%rax,%rdx,1),%r8
  68bbf3:	c4 81 7d 10 14 d8    	vmovupd (%r8,%r11,8),%ymm2
  68bbf9:	c4 81 6d 58 5c d9 f8 	vaddpd -0x8(%r9,%r11,8),%ymm2,%ymm3
  68bc00:	c5 fd 59 e3          	vmulpd %ymm3,%ymm0,%ymm4
  68bc04:	c4 81 7d 11 64 da f8 	vmovupd %ymm4,-0x8(%r10,%r11,8)
  68bc0b:	49 83 c3 04          	add    $0x4,%r11
  68bc0f:	4d 3b df             	cmp    %r15,%r11
  68bc12:	72 df                	jb     68bbf3 <step3d_t_mod_mp_step3d_t_tile_+0x4f83>
  68bc14:	4c 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%r15
  68bc1b:	4d 3b e7             	cmp    %r15,%r12
  68bc1e:	73 2c                	jae    68bc4c <step3d_t_mod_mp_step3d_t_tile_+0x4fdc>
  68bc20:	4c 8d 14 17          	lea    (%rdi,%rdx,1),%r10
  68bc24:	4c 8d 0c 16          	lea    (%rsi,%rdx,1),%r9
  68bc28:	4c 8d 04 10          	lea    (%rax,%rdx,1),%r8
  68bc2c:	c4 81 7b 10 14 e0    	vmovsd (%r8,%r12,8),%xmm2
  68bc32:	c4 81 6b 58 5c e1 f8 	vaddsd -0x8(%r9,%r12,8),%xmm2,%xmm3
  68bc39:	c5 f3 59 e3          	vmulsd %xmm3,%xmm1,%xmm4
  68bc3d:	c4 81 7b 11 64 e2 f8 	vmovsd %xmm4,-0x8(%r10,%r12,8)
  68bc44:	49 ff c4             	inc    %r12
  68bc47:	4d 3b e7             	cmp    %r15,%r12
  68bc4a:	72 e0                	jb     68bc2c <step3d_t_mod_mp_step3d_t_tile_+0x4fbc>
  68bc4c:	48 ff c1             	inc    %rcx
  68bc4f:	48 03 95 70 ff ff ff 	add    -0x90(%rbp),%rdx
  68bc56:	48 3b 8d 68 ff ff ff 	cmp    -0x98(%rbp),%rcx
  68bc5d:	0f 82 68 ff ff ff    	jb     68bbcb <step3d_t_mod_mp_step3d_t_tile_+0x4f5b>
  68bc63:	48 8b 95 50 f8 ff ff 	mov    -0x7b0(%rbp),%rdx
  68bc6a:	4c 8b 85 e8 fb ff ff 	mov    -0x418(%rbp),%r8
  68bc71:	4c 8b 95 d0 fa ff ff 	mov    -0x530(%rbp),%r10
  68bc78:	4c 8b b2 80 00 00 00 	mov    0x80(%rdx),%r14
  68bc7f:	4c 89 b5 10 fa ff ff 	mov    %r14,-0x5f0(%rbp)
  68bc86:	48 8b 0a             	mov    (%rdx),%rcx
  68bc89:	4c 8b 9a 98 00 00 00 	mov    0x98(%rdx),%r11
  68bc90:	4c 8b 7a 68          	mov    0x68(%rdx),%r15
  68bc94:	4c 8b 72 50          	mov    0x50(%rdx),%r14
  68bc98:	48 8b 52 38          	mov    0x38(%rdx),%rdx
  68bc9c:	4c 8b 8d d8 fa ff ff 	mov    -0x528(%rbp),%r9
  68bca3:	4c 8b a5 e0 fa ff ff 	mov    -0x520(%rbp),%r12
  68bcaa:	4c 8b ad c8 fa ff ff 	mov    -0x538(%rbp),%r13
  68bcb1:	4c 89 bd 08 fa ff ff 	mov    %r15,-0x5f8(%rbp)
  68bcb8:	4c 89 b5 08 ff ff ff 	mov    %r14,-0xf8(%rbp)
  68bcbf:	48 89 95 10 ff ff ff 	mov    %rdx,-0xf0(%rbp)
  68bcc6:	48 83 bd 88 fe ff ff 	cmpq   $0x8,-0x178(%rbp)
  68bccd:	08 
  68bcce:	0f 85 0f 02 00 00    	jne    68bee3 <step3d_t_mod_mp_step3d_t_tile_+0x5273>
  68bcd4:	48 83 bd 10 ff ff ff 	cmpq   $0x8,-0xf0(%rbp)
  68bcdb:	08 
  68bcdc:	0f 85 01 02 00 00    	jne    68bee3 <step3d_t_mod_mp_step3d_t_tile_+0x5273>
  68bce2:	4c 8b b5 38 f9 ff ff 	mov    -0x6c8(%rbp),%r14
  68bce9:	4c 89 de             	mov    %r11,%rsi
  68bcec:	4c 8b bd 60 f9 ff ff 	mov    -0x6a0(%rbp),%r15
  68bcf3:	33 d2                	xor    %edx,%edx
  68bcf5:	4d 0f af fe          	imul   %r14,%r15
  68bcf9:	48 0f af b5 80 fa ff 	imul   -0x580(%rbp),%rsi
  68bd00:	ff 
  68bd01:	c5 fd 10 05 f7 92 23 	vmovupd 0x2392f7(%rip),%ymm0        # 8c5000 <var$630.126.450+0x340>
  68bd08:	00 
  68bd09:	c5 fb 10 15 47 b6 23 	vmovsd 0x23b647(%rip),%xmm2        # 8c7358 <__STRLITPACK_199.115+0x3c8>
  68bd10:	00 
  68bd11:	c5 fb 10 1d ff b2 23 	vmovsd 0x23b2ff(%rip),%xmm3        # 8c7018 <__STRLITPACK_199.115+0x88>
  68bd18:	00 
  68bd19:	c5 fd 10 0d bf 92 23 	vmovupd 0x2392bf(%rip),%ymm1        # 8c4fe0 <var$630.126.450+0x320>
  68bd20:	00 
  68bd21:	4c 03 bd e0 f9 ff ff 	add    -0x620(%rbp),%r15
  68bd28:	48 03 ce             	add    %rsi,%rcx
  68bd2b:	4c 89 bd 50 fa ff ff 	mov    %r15,-0x5b0(%rbp)
  68bd32:	4c 8b bd 10 fa ff ff 	mov    -0x5f0(%rbp),%r15
  68bd39:	4d 03 df             	add    %r15,%r11
  68bd3c:	48 89 95 38 fa ff ff 	mov    %rdx,-0x5c8(%rbp)
  68bd43:	48 89 95 20 fa ff ff 	mov    %rdx,-0x5e0(%rbp)
  68bd4a:	4b 8d 34 7f          	lea    (%r15,%r15,2),%rsi
  68bd4e:	4c 8b bd 08 f9 ff ff 	mov    -0x6f8(%rbp),%r15
  68bd55:	48 8b 95 f8 f8 ff ff 	mov    -0x708(%rbp),%rdx
  68bd5c:	48 f7 da             	neg    %rdx
  68bd5f:	48 03 95 78 f9 ff ff 	add    -0x688(%rbp),%rdx
  68bd66:	4d 03 f7             	add    %r15,%r14
  68bd69:	4c 8b bd 08 fa ff ff 	mov    -0x5f8(%rbp),%r15
  68bd70:	4d 0f af f7          	imul   %r15,%r14
  68bd74:	48 0f af 95 08 ff ff 	imul   -0xf8(%rbp),%rdx
  68bd7b:	ff 
  68bd7c:	49 03 f6             	add    %r14,%rsi
  68bd7f:	48 03 8d d8 f9 ff ff 	add    -0x628(%rbp),%rcx
  68bd86:	4c 2b de             	sub    %rsi,%r11
  68bd89:	49 2b cb             	sub    %r11,%rcx
  68bd8c:	4c 03 85 c0 fa ff ff 	add    -0x540(%rbp),%r8
  68bd93:	49 2b cf             	sub    %r15,%rcx
  68bd96:	4c 89 85 e8 fb ff ff 	mov    %r8,-0x418(%rbp)
  68bd9d:	48 03 d1             	add    %rcx,%rdx
  68bda0:	4c 89 95 d0 fa ff ff 	mov    %r10,-0x530(%rbp)
  68bda7:	4c 89 8d d8 fa ff ff 	mov    %r9,-0x528(%rbp)
  68bdae:	4c 89 a5 e0 fa ff ff 	mov    %r12,-0x520(%rbp)
  68bdb5:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68bdbc:	4c 8b 8d 50 fa ff ff 	mov    -0x5b0(%rbp),%r9
  68bdc3:	48 8b b5 20 fa ff ff 	mov    -0x5e0(%rbp),%rsi
  68bdca:	4c 8b 85 38 fa ff ff 	mov    -0x5c8(%rbp),%r8
  68bdd1:	4c 8b 95 78 fd ff ff 	mov    -0x288(%rbp),%r10
  68bdd8:	8b 8d 40 fe ff ff    	mov    -0x1c0(%rbp),%ecx
  68bdde:	3b 8d 58 ff ff ff    	cmp    -0xa8(%rbp),%ecx
  68bde4:	0f 8c cf 00 00 00    	jl     68beb9 <step3d_t_mod_mp_step3d_t_tile_+0x5249>
  68bdea:	49 83 fa 04          	cmp    $0x4,%r10
  68bdee:	0f 8c dc 4e 00 00    	jl     690cd0 <step3d_t_mod_mp_step3d_t_tile_+0xa060>
  68bdf4:	4c 8b 9d e8 fb ff ff 	mov    -0x418(%rbp),%r11
  68bdfb:	45 33 ed             	xor    %r13d,%r13d
  68bdfe:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
  68be02:	4c 8d 24 37          	lea    (%rdi,%rsi,1),%r12
  68be06:	49 89 d6             	mov    %rdx,%r14
  68be09:	4c 8d 3c 30          	lea    (%rax,%rsi,1),%r15
  68be0d:	49 89 ca             	mov    %rcx,%r10
  68be10:	4c 03 de             	add    %rsi,%r11
  68be13:	c4 c1 7d 10 66 f8    	vmovupd -0x8(%r14),%ymm4
  68be19:	c4 81 7d 10 2c eb    	vmovupd (%r11,%r13,8),%ymm5
  68be1f:	c4 81 75 59 3c e9    	vmulpd (%r9,%r13,8),%ymm1,%ymm7
  68be25:	c4 41 5d 58 06       	vaddpd (%r14),%ymm4,%ymm8
  68be2a:	c4 81 55 5c 74 ec f8 	vsubpd -0x8(%r12,%r13,8),%ymm5,%ymm6
  68be31:	c4 62 cd bc c0       	vfnmadd231pd %ymm0,%ymm6,%ymm8
  68be36:	49 83 c6 20          	add    $0x20,%r14
  68be3a:	c4 41 45 59 c8       	vmulpd %ymm8,%ymm7,%ymm9
  68be3f:	c4 01 7d 11 0c ef    	vmovupd %ymm9,(%r15,%r13,8)
  68be45:	49 83 c5 04          	add    $0x4,%r13
  68be49:	4d 3b ea             	cmp    %r10,%r13
  68be4c:	72 c5                	jb     68be13 <step3d_t_mod_mp_step3d_t_tile_+0x51a3>
  68be4e:	4c 8b 95 78 fd ff ff 	mov    -0x288(%rbp),%r10
  68be55:	4c 8d 24 cd 00 00 00 	lea    0x0(,%rcx,8),%r12
  68be5c:	00 
  68be5d:	49 3b ca             	cmp    %r10,%rcx
  68be60:	73 57                	jae    68beb9 <step3d_t_mod_mp_step3d_t_tile_+0x5249>
  68be62:	4c 8b ad e8 fb ff ff 	mov    -0x418(%rbp),%r13
  68be69:	4c 8d 1c 37          	lea    (%rdi,%rsi,1),%r11
  68be6d:	4c 8d 34 30          	lea    (%rax,%rsi,1),%r14
  68be71:	4d 8d 7c 35 00       	lea    0x0(%r13,%rsi,1),%r15
  68be76:	4c 8d 2c ca          	lea    (%rdx,%rcx,8),%r13
  68be7a:	c4 81 7b 10 24 3c    	vmovsd (%r12,%r15,1),%xmm4
  68be80:	48 ff c1             	inc    %rcx
  68be83:	c4 c1 7b 10 6d f8    	vmovsd -0x8(%r13),%xmm5
  68be89:	c4 81 63 59 3c 0c    	vmulsd (%r12,%r9,1),%xmm3,%xmm7
  68be8f:	c4 81 5b 5c 74 1c f8 	vsubsd -0x8(%r12,%r11,1),%xmm4,%xmm6
  68be96:	c4 41 53 58 45 00    	vaddsd 0x0(%r13),%xmm5,%xmm8
  68be9c:	c4 62 c9 bd c2       	vfnmadd231sd %xmm2,%xmm6,%xmm8
  68bea1:	49 83 c5 08          	add    $0x8,%r13
  68bea5:	c4 41 43 59 c8       	vmulsd %xmm8,%xmm7,%xmm9
  68beaa:	c4 01 7b 11 0c 34    	vmovsd %xmm9,(%r12,%r14,1)
  68beb0:	49 83 c4 08          	add    $0x8,%r12
  68beb4:	49 3b ca             	cmp    %r10,%rcx
  68beb7:	72 c1                	jb     68be7a <step3d_t_mod_mp_step3d_t_tile_+0x520a>
  68beb9:	49 ff c0             	inc    %r8
  68bebc:	48 03 b5 70 ff ff ff 	add    -0x90(%rbp),%rsi
  68bec3:	4c 03 8d 70 fe ff ff 	add    -0x190(%rbp),%r9
  68beca:	48 03 95 08 ff ff ff 	add    -0xf8(%rbp),%rdx
  68bed1:	4c 3b 85 68 ff ff ff 	cmp    -0x98(%rbp),%r8
  68bed8:	0f 82 fa fe ff ff    	jb     68bdd8 <step3d_t_mod_mp_step3d_t_tile_+0x5168>
  68bede:	e9 dd 04 00 00       	jmpq   68c3c0 <step3d_t_mod_mp_step3d_t_tile_+0x5750>
  68bee3:	8b 95 f8 fa ff ff    	mov    -0x508(%rbp),%edx
  68bee9:	45 33 f6             	xor    %r14d,%r14d
  68beec:	4c 89 b5 c0 fd ff ff 	mov    %r14,-0x240(%rbp)
  68bef3:	4c 89 b5 b8 fd ff ff 	mov    %r14,-0x248(%rbp)
  68befa:	4c 89 b5 b0 fd ff ff 	mov    %r14,-0x250(%rbp)
  68bf01:	4c 89 b5 a8 fd ff ff 	mov    %r14,-0x258(%rbp)
  68bf08:	3b 95 00 fb ff ff    	cmp    -0x500(%rbp),%edx
  68bf0e:	0f 8c c8 04 00 00    	jl     68c3dc <step3d_t_mod_mp_step3d_t_tile_+0x576c>
  68bf14:	4c 89 a5 e0 fa ff ff 	mov    %r12,-0x520(%rbp)
  68bf1b:	4d 89 dc             	mov    %r11,%r12
  68bf1e:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68bf25:	48 89 85 18 fc ff ff 	mov    %rax,-0x3e8(%rbp)
  68bf2c:	4c 0f af a5 80 fa ff 	imul   -0x580(%rbp),%r12
  68bf33:	ff 
  68bf34:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  68bf3b:	49 03 cc             	add    %r12,%rcx
  68bf3e:	48 8b 85 38 f9 ff ff 	mov    -0x6c8(%rbp),%rax
  68bf45:	48 89 bd 28 fc ff ff 	mov    %rdi,-0x3d8(%rbp)
  68bf4c:	4c 89 ff             	mov    %r15,%rdi
  68bf4f:	4c 8b b5 c0 fa ff ff 	mov    -0x540(%rbp),%r14
  68bf56:	4d 8d 7c 05 00       	lea    0x0(%r13,%rax,1),%r15
  68bf5b:	4c 0f af ff          	imul   %rdi,%r15
  68bf5f:	48 89 b5 20 fc ff ff 	mov    %rsi,-0x3e0(%rbp)
  68bf66:	48 8b b5 10 ff ff ff 	mov    -0xf0(%rbp),%rsi
  68bf6d:	4c 8b a5 10 fa ff ff 	mov    -0x5f0(%rbp),%r12
  68bf74:	48 8b 95 08 ff ff ff 	mov    -0xf8(%rbp),%rdx
  68bf7b:	4c 89 8d d8 fa ff ff 	mov    %r9,-0x528(%rbp)
  68bf82:	49 89 f1             	mov    %rsi,%r9
  68bf85:	4c 89 95 d0 fa ff ff 	mov    %r10,-0x530(%rbp)
  68bf8c:	49 89 d2             	mov    %rdx,%r10
  68bf8f:	4c 89 85 e8 fb ff ff 	mov    %r8,-0x418(%rbp)
  68bf96:	4d 03 c6             	add    %r14,%r8
  68bf99:	4c 89 85 e8 fc ff ff 	mov    %r8,-0x318(%rbp)
  68bfa0:	4f 8d 2c 64          	lea    (%r12,%r12,2),%r13
  68bfa4:	4c 8b b5 f8 f8 ff ff 	mov    -0x708(%rbp),%r14
  68bfab:	4c 8b 85 00 f9 ff ff 	mov    -0x700(%rbp),%r8
  68bfb2:	4c 0f af 95 78 f9 ff 	imul   -0x688(%rbp),%r10
  68bfb9:	ff 
  68bfba:	4c 0f af 8d 98 fb ff 	imul   -0x468(%rbp),%r9
  68bfc1:	ff 
  68bfc2:	4c 0f af f2          	imul   %rdx,%r14
  68bfc6:	4c 0f af c6          	imul   %rsi,%r8
  68bfca:	c5 fb 10 05 86 b3 23 	vmovsd 0x23b386(%rip),%xmm0        # 8c7358 <__STRLITPACK_199.115+0x3c8>
  68bfd1:	00 
  68bfd2:	4b 8d 14 23          	lea    (%r11,%r12,1),%rdx
  68bfd6:	4d 2b e5             	sub    %r13,%r12
  68bfd9:	4d 03 ef             	add    %r15,%r13
  68bfdc:	4c 2b ff             	sub    %rdi,%r15
  68bfdf:	48 f7 da             	neg    %rdx
  68bfe2:	4d 2b e7             	sub    %r15,%r12
  68bfe5:	48 03 d1             	add    %rcx,%rdx
  68bfe8:	4c 8b bd 60 f9 ff ff 	mov    -0x6a0(%rbp),%r15
  68bfef:	49 2b cb             	sub    %r11,%rcx
  68bff2:	4c 0f af f8          	imul   %rax,%r15
  68bff6:	49 03 fe             	add    %r14,%rdi
  68bff9:	4d 2b f2             	sub    %r10,%r14
  68bffc:	4d 2b d0             	sub    %r8,%r10
  68bfff:	4d 2b c1             	sub    %r9,%r8
  68c002:	4c 8b 9d c0 f9 ff ff 	mov    -0x640(%rbp),%r11
  68c009:	49 2b cc             	sub    %r12,%rcx
  68c00c:	4d 03 f0             	add    %r8,%r14
  68c00f:	4c 2b ef             	sub    %rdi,%r13
  68c012:	49 2b ce             	sub    %r14,%rcx
  68c015:	49 03 d5             	add    %r13,%rdx
  68c018:	49 03 d2             	add    %r10,%rdx
  68c01b:	4b 8d 04 3b          	lea    (%r11,%r15,1),%rax
  68c01f:	49 89 f3             	mov    %rsi,%r11
  68c022:	49 03 d1             	add    %r9,%rdx
  68c025:	49 f7 db             	neg    %r11
  68c028:	4c 03 d9             	add    %rcx,%r11
  68c02b:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
  68c02f:	4c 03 bd 68 f9 ff ff 	add    -0x698(%rbp),%r15
  68c036:	48 8d 0c 71          	lea    (%rcx,%rsi,2),%rcx
  68c03a:	48 89 85 08 fd ff ff 	mov    %rax,-0x2f8(%rbp)
  68c041:	4c 89 9d 00 fc ff ff 	mov    %r11,-0x400(%rbp)
  68c048:	48 8b b5 20 fc ff ff 	mov    -0x3e0(%rbp),%rsi
  68c04f:	48 8b bd 28 fc ff ff 	mov    -0x3d8(%rbp),%rdi
  68c056:	4c 8b 85 e8 fb ff ff 	mov    -0x418(%rbp),%r8
  68c05d:	4c 8b 8d a8 fd ff ff 	mov    -0x258(%rbp),%r9
  68c064:	4c 8b 9d b0 fd ff ff 	mov    -0x250(%rbp),%r11
  68c06b:	4c 8b a5 b8 fd ff ff 	mov    -0x248(%rbp),%r12
  68c072:	4c 8b ad c0 fd ff ff 	mov    -0x240(%rbp),%r13
  68c079:	4c 8b 95 78 fd ff ff 	mov    -0x288(%rbp),%r10
  68c080:	4c 89 bd f0 fb ff ff 	mov    %r15,-0x410(%rbp)
  68c087:	48 89 8d f8 fb ff ff 	mov    %rcx,-0x408(%rbp)
  68c08e:	4c 89 b5 08 fc ff ff 	mov    %r14,-0x3f8(%rbp)
  68c095:	48 89 95 10 fc ff ff 	mov    %rdx,-0x3f0(%rbp)
  68c09c:	c5 fb 10 1d 74 af 23 	vmovsd 0x23af74(%rip),%xmm3        # 8c7018 <__STRLITPACK_199.115+0x88>
  68c0a3:	00 
  68c0a4:	c5 f9 10 0d 04 a7 23 	vmovupd 0x23a704(%rip),%xmm1        # 8c67b0 <__STRLITPACK_19.34+0x20>
  68c0ab:	00 
  68c0ac:	c5 f9 10 15 ec a6 23 	vmovupd 0x23a6ec(%rip),%xmm2        # 8c67a0 <__STRLITPACK_19.34+0x10>
  68c0b3:	00 
  68c0b4:	8b 85 40 fe ff ff    	mov    -0x1c0(%rbp),%eax
  68c0ba:	3b 85 58 ff ff ff    	cmp    -0xa8(%rbp),%eax
  68c0c0:	0f 8c d5 02 00 00    	jl     68c39b <step3d_t_mod_mp_step3d_t_tile_+0x572b>
  68c0c6:	49 83 fa 04          	cmp    $0x4,%r10
  68c0ca:	0f 8c 57 51 00 00    	jl     691227 <step3d_t_mod_mp_step3d_t_tile_+0xa5b7>
  68c0d0:	4c 8b 85 08 fc ff ff 	mov    -0x3f8(%rbp),%r8
  68c0d7:	4c 8b bd 10 fc ff ff 	mov    -0x3f0(%rbp),%r15
  68c0de:	4c 8b b5 20 fc ff ff 	mov    -0x3e0(%rbp),%r14
  68c0e5:	48 8b 75 98          	mov    -0x68(%rbp),%rsi
  68c0e9:	4b 8d 04 08          	lea    (%r8,%r9,1),%rax
  68c0ed:	48 89 85 40 fc ff ff 	mov    %rax,-0x3c0(%rbp)
  68c0f4:	4f 8d 04 0f          	lea    (%r15,%r9,1),%r8
  68c0f8:	48 8b 85 00 fc ff ff 	mov    -0x400(%rbp),%rax
  68c0ff:	4d 03 f4             	add    %r12,%r14
  68c102:	4c 89 45 c0          	mov    %r8,-0x40(%rbp)
  68c106:	4c 8b 85 f0 fb ff ff 	mov    -0x410(%rbp),%r8
  68c10d:	48 8b 8d 18 fc ff ff 	mov    -0x3e8(%rbp),%rcx
  68c114:	4e 8d 3c 08          	lea    (%rax,%r9,1),%r15
  68c118:	4c 89 7d b8          	mov    %r15,-0x48(%rbp)
  68c11c:	4c 8b bd 88 fb ff ff 	mov    -0x478(%rbp),%r15
  68c123:	4b 8d 04 18          	lea    (%r8,%r11,1),%rax
  68c127:	48 89 85 38 fc ff ff 	mov    %rax,-0x3c8(%rbp)
  68c12e:	49 03 cc             	add    %r12,%rcx
  68c131:	48 8b 95 08 fd ff ff 	mov    -0x2f8(%rbp),%rdx
  68c138:	48 8b bd f8 fb ff ff 	mov    -0x408(%rbp),%rdi
  68c13f:	4a 8d 04 fd 00 00 00 	lea    0x0(,%r15,8),%rax
  68c146:	00 
  68c147:	48 f7 d8             	neg    %rax
  68c14a:	4c 8b bd 98 fb ff ff 	mov    -0x468(%rbp),%r15
  68c151:	49 03 d3             	add    %r11,%rdx
  68c154:	48 89 b5 d0 fe ff ff 	mov    %rsi,-0x130(%rbp)
  68c15b:	33 f6                	xor    %esi,%esi
  68c15d:	45 33 c0             	xor    %r8d,%r8d
  68c160:	49 03 f9             	add    %r9,%rdi
  68c163:	4a 8d 04 f8          	lea    (%rax,%r15,8),%rax
  68c167:	4c 8b bd 90 fb ff ff 	mov    -0x470(%rbp),%r15
  68c16e:	48 03 85 a0 fb ff ff 	add    -0x460(%rbp),%rax
  68c175:	49 f7 df             	neg    %r15
  68c178:	4c 89 a5 30 fc ff ff 	mov    %r12,-0x3d0(%rbp)
  68c17f:	49 03 c7             	add    %r15,%rax
  68c182:	4c 89 75 b0          	mov    %r14,-0x50(%rbp)
  68c186:	4c 89 8d a8 fd ff ff 	mov    %r9,-0x258(%rbp)
  68c18d:	4c 89 9d b0 fd ff ff 	mov    %r11,-0x250(%rbp)
  68c194:	4c 89 a5 b8 fd ff ff 	mov    %r12,-0x248(%rbp)
  68c19b:	4c 89 ad c0 fd ff ff 	mov    %r13,-0x240(%rbp)
  68c1a2:	48 03 85 e8 fb ff ff 	add    -0x418(%rbp),%rax
  68c1a9:	4c 8b b5 30 fc ff ff 	mov    -0x3d0(%rbp),%r14
  68c1b0:	4d 89 c1             	mov    %r8,%r9
  68c1b3:	4c 8b 95 38 fc ff ff 	mov    -0x3c8(%rbp),%r10
  68c1ba:	4c 8b 9d 40 fc ff ff 	mov    -0x3c0(%rbp),%r11
  68c1c1:	4c 8b a5 10 ff ff ff 	mov    -0xf0(%rbp),%r12
  68c1c8:	4c 8b ad 88 fe ff ff 	mov    -0x178(%rbp),%r13
  68c1cf:	c4 c1 79 10 24 06    	vmovupd (%r14,%rax,1),%xmm4
  68c1d5:	c4 41 59 5c 5c 06 f8 	vsubpd -0x8(%r14,%rax,1),%xmm4,%xmm11
  68c1dc:	4e 8d 3c 02          	lea    (%rdx,%r8,1),%r15
  68c1e0:	c4 c1 7b 10 2f       	vmovsd (%r15),%xmm5
  68c1e5:	c4 81 51 16 34 2f    	vmovhpd (%r15,%r13,1),%xmm5,%xmm6
  68c1eb:	4c 8b 7d b8          	mov    -0x48(%rbp),%r15
  68c1ef:	c5 49 59 e2          	vmulpd %xmm2,%xmm6,%xmm12
  68c1f3:	4d 03 f9             	add    %r9,%r15
  68c1f6:	c4 c1 7b 10 3f       	vmovsd (%r15),%xmm7
  68c1fb:	c4 01 41 16 0c 27    	vmovhpd (%r15,%r12,1),%xmm7,%xmm9
  68c201:	4c 8b 7d c0          	mov    -0x40(%rbp),%r15
  68c205:	4d 03 f9             	add    %r9,%r15
  68c208:	c4 41 7b 10 07       	vmovsd (%r15),%xmm8
  68c20d:	c4 01 39 16 14 27    	vmovhpd (%r15,%r12,1),%xmm8,%xmm10
  68c213:	4f 8d 3c 02          	lea    (%r10,%r8,1),%r15
  68c217:	c4 41 31 58 ea       	vaddpd %xmm10,%xmm9,%xmm13
  68c21c:	c4 62 a1 bc e9       	vfnmadd231pd %xmm1,%xmm11,%xmm13
  68c221:	4f 8d 04 a8          	lea    (%r8,%r13,4),%r8
  68c225:	c4 c1 7b 10 27       	vmovsd (%r15),%xmm4
  68c22a:	c4 81 59 16 2c 2f    	vmovhpd (%r15,%r13,1),%xmm4,%xmm5
  68c230:	c5 51 59 da          	vmulpd %xmm2,%xmm5,%xmm11
  68c234:	c4 41 19 59 f5       	vmulpd %xmm13,%xmm12,%xmm14
  68c239:	c5 79 11 34 f1       	vmovupd %xmm14,(%rcx,%rsi,8)
  68c23e:	c4 41 79 10 7c 06 10 	vmovupd 0x10(%r14,%rax,1),%xmm15
  68c245:	c4 41 01 5c 54 06 08 	vsubpd 0x8(%r14,%rax,1),%xmm15,%xmm10
  68c24c:	49 83 c6 20          	add    $0x20,%r14
  68c250:	4f 8d 3c 0b          	lea    (%r11,%r9,1),%r15
  68c254:	c4 c1 7b 10 37       	vmovsd (%r15),%xmm6
  68c259:	c4 01 49 16 04 27    	vmovhpd (%r15,%r12,1),%xmm6,%xmm8
  68c25f:	4e 8d 3c 0f          	lea    (%rdi,%r9,1),%r15
  68c263:	c4 c1 7b 10 3f       	vmovsd (%r15),%xmm7
  68c268:	4f 8d 0c a1          	lea    (%r9,%r12,4),%r9
  68c26c:	c4 01 41 16 0c 27    	vmovhpd (%r15,%r12,1),%xmm7,%xmm9
  68c272:	c4 41 39 58 e1       	vaddpd %xmm9,%xmm8,%xmm12
  68c277:	c4 62 a9 bc e1       	vfnmadd231pd %xmm1,%xmm10,%xmm12
  68c27c:	c4 41 21 59 ec       	vmulpd %xmm12,%xmm11,%xmm13
  68c281:	4c 8b 7d b0          	mov    -0x50(%rbp),%r15
  68c285:	c4 41 79 11 6c f7 10 	vmovupd %xmm13,0x10(%r15,%rsi,8)
  68c28c:	48 83 c6 04          	add    $0x4,%rsi
  68c290:	48 3b 75 98          	cmp    -0x68(%rbp),%rsi
  68c294:	0f 82 35 ff ff ff    	jb     68c1cf <step3d_t_mod_mp_step3d_t_tile_+0x555f>
  68c29a:	4c 8b 8d a8 fd ff ff 	mov    -0x258(%rbp),%r9
  68c2a1:	4c 8b 9d b0 fd ff ff 	mov    -0x250(%rbp),%r11
  68c2a8:	4c 8b a5 b8 fd ff ff 	mov    -0x248(%rbp),%r12
  68c2af:	4c 8b ad c0 fd ff ff 	mov    -0x240(%rbp),%r13
  68c2b6:	4c 8b 95 78 fd ff ff 	mov    -0x288(%rbp),%r10
  68c2bd:	4c 8b b5 10 ff ff ff 	mov    -0xf0(%rbp),%r14
  68c2c4:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  68c2cb:	4c 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%r8
  68c2d2:	4c 0f af f0          	imul   %rax,%r14
  68c2d6:	4c 0f af c0          	imul   %rax,%r8
  68c2da:	49 3b c2             	cmp    %r10,%rax
  68c2dd:	0f 83 b8 00 00 00    	jae    68c39b <step3d_t_mod_mp_step3d_t_tile_+0x572b>
  68c2e3:	48 8b bd 28 fc ff ff 	mov    -0x3d8(%rbp),%rdi
  68c2ea:	48 8b b5 e8 fc ff ff 	mov    -0x318(%rbp),%rsi
  68c2f1:	48 8b 8d 18 fc ff ff 	mov    -0x3e8(%rbp),%rcx
  68c2f8:	48 8b 95 08 fd ff ff 	mov    -0x2f8(%rbp),%rdx
  68c2ff:	49 03 fc             	add    %r12,%rdi
  68c302:	4c 8b bd 10 fc ff ff 	mov    -0x3f0(%rbp),%r15
  68c309:	49 03 f4             	add    %r12,%rsi
  68c30c:	48 8b 85 00 fc ff ff 	mov    -0x400(%rbp),%rax
  68c313:	49 03 cc             	add    %r12,%rcx
  68c316:	4c 89 9d b0 fd ff ff 	mov    %r11,-0x250(%rbp)
  68c31d:	49 03 d3             	add    %r11,%rdx
  68c320:	4c 89 a5 b8 fd ff ff 	mov    %r12,-0x248(%rbp)
  68c327:	4d 03 f9             	add    %r9,%r15
  68c32a:	4c 89 ad c0 fd ff ff 	mov    %r13,-0x240(%rbp)
  68c331:	49 03 c1             	add    %r9,%rax
  68c334:	4c 8b 9d d0 fe ff ff 	mov    -0x130(%rbp),%r11
  68c33b:	4c 8b a5 10 ff ff ff 	mov    -0xf0(%rbp),%r12
  68c342:	4c 8b ad 88 fe ff ff 	mov    -0x178(%rbp),%r13
  68c349:	c4 a1 7b 10 24 de    	vmovsd (%rsi,%r11,8),%xmm4
  68c34f:	c4 c1 7b 10 2c 06    	vmovsd (%r14,%rax,1),%xmm5
  68c355:	c4 c1 63 59 3c 10    	vmulsd (%r8,%rdx,1),%xmm3,%xmm7
  68c35b:	4d 03 c5             	add    %r13,%r8
  68c35e:	c4 a1 5b 5c 74 df f8 	vsubsd -0x8(%rdi,%r11,8),%xmm4,%xmm6
  68c365:	c4 01 53 58 04 3e    	vaddsd (%r14,%r15,1),%xmm5,%xmm8
  68c36b:	c4 62 c9 bd c0       	vfnmadd231sd %xmm0,%xmm6,%xmm8
  68c370:	4d 03 f4             	add    %r12,%r14
  68c373:	c4 41 43 59 c8       	vmulsd %xmm8,%xmm7,%xmm9
  68c378:	c4 21 7b 11 0c d9    	vmovsd %xmm9,(%rcx,%r11,8)
  68c37e:	49 ff c3             	inc    %r11
  68c381:	4d 3b da             	cmp    %r10,%r11
  68c384:	72 c3                	jb     68c349 <step3d_t_mod_mp_step3d_t_tile_+0x56d9>
  68c386:	4c 8b 9d b0 fd ff ff 	mov    -0x250(%rbp),%r11
  68c38d:	4c 8b a5 b8 fd ff ff 	mov    -0x248(%rbp),%r12
  68c394:	4c 8b ad c0 fd ff ff 	mov    -0x240(%rbp),%r13
  68c39b:	49 ff c5             	inc    %r13
  68c39e:	4c 03 a5 70 ff ff ff 	add    -0x90(%rbp),%r12
  68c3a5:	4c 03 9d 70 fe ff ff 	add    -0x190(%rbp),%r11
  68c3ac:	4c 03 8d 08 ff ff ff 	add    -0xf8(%rbp),%r9
  68c3b3:	4c 3b ad 68 ff ff ff 	cmp    -0x98(%rbp),%r13
  68c3ba:	0f 82 f4 fc ff ff    	jb     68c0b4 <step3d_t_mod_mp_step3d_t_tile_+0x5444>
  68c3c0:	4c 8b 95 d0 fa ff ff 	mov    -0x530(%rbp),%r10
  68c3c7:	4c 8b 8d d8 fa ff ff 	mov    -0x528(%rbp),%r9
  68c3ce:	4c 8b a5 e0 fa ff ff 	mov    -0x520(%rbp),%r12
  68c3d5:	4c 8b ad c8 fa ff ff 	mov    -0x538(%rbp),%r13
  68c3dc:	48 8b 85 e8 fa ff ff 	mov    -0x518(%rbp),%rax
  68c3e3:	48 3b 85 f0 fa ff ff 	cmp    -0x510(%rbp),%rax
  68c3ea:	0f 8c 67 06 00 00    	jl     68ca57 <step3d_t_mod_mp_step3d_t_tile_+0x5de7>
  68c3f0:	4c 8b 85 50 f8 ff ff 	mov    -0x7b0(%rbp),%r8
  68c3f7:	48 8b 85 50 f6 ff ff 	mov    -0x9b0(%rbp),%rax
  68c3fe:	49 8b 88 80 00 00 00 	mov    0x80(%r8),%rcx
  68c405:	49 8b 70 68          	mov    0x68(%r8),%rsi
  68c409:	49 8b 78 50          	mov    0x50(%r8),%rdi
  68c40d:	4d 8b 70 38          	mov    0x38(%r8),%r14
  68c411:	4d 8b 18             	mov    (%r8),%r11
  68c414:	49 8b 90 98 00 00 00 	mov    0x98(%r8),%rdx
  68c41b:	48 89 8d 18 fa ff ff 	mov    %rcx,-0x5e8(%rbp)
  68c422:	48 89 b5 30 fa ff ff 	mov    %rsi,-0x5d0(%rbp)
  68c429:	48 89 bd 28 ff ff ff 	mov    %rdi,-0xd8(%rbp)
  68c430:	4c 89 b5 18 ff ff ff 	mov    %r14,-0xe8(%rbp)
  68c437:	49 83 fe 08          	cmp    $0x8,%r14
  68c43b:	0f 85 a5 01 00 00    	jne    68c5e6 <step3d_t_mod_mp_step3d_t_tile_+0x5976>
  68c441:	48 83 bd 88 f9 ff ff 	cmpq   $0x8,-0x678(%rbp)
  68c448:	08 
  68c449:	0f 85 97 01 00 00    	jne    68c5e6 <step3d_t_mod_mp_step3d_t_tile_+0x5976>
  68c44f:	48 8b bd 08 f9 ff ff 	mov    -0x6f8(%rbp),%rdi
  68c456:	33 c9                	xor    %ecx,%ecx
  68c458:	48 8b b5 38 f9 ff ff 	mov    -0x6c8(%rbp),%rsi
  68c45f:	48 03 85 e8 f9 ff ff 	add    -0x618(%rbp),%rax
  68c466:	48 89 85 50 fd ff ff 	mov    %rax,-0x2b0(%rbp)
  68c46d:	48 89 d0             	mov    %rdx,%rax
  68c470:	4c 89 a5 e0 fa ff ff 	mov    %r12,-0x520(%rbp)
  68c477:	4c 8d 3c 37          	lea    (%rdi,%rsi,1),%r15
  68c47b:	4c 8b a5 30 fa ff ff 	mov    -0x5d0(%rbp),%r12
  68c482:	48 0f af 85 80 fa ff 	imul   -0x580(%rbp),%rax
  68c489:	ff 
  68c48a:	4d 0f af fc          	imul   %r12,%r15
  68c48e:	48 8b b5 28 ff ff ff 	mov    -0xd8(%rbp),%rsi
  68c495:	49 8d 3c 03          	lea    (%r11,%rax,1),%rdi
  68c499:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68c4a0:	49 89 f5             	mov    %rsi,%r13
  68c4a3:	4c 8b b5 f8 f8 ff ff 	mov    -0x708(%rbp),%r14
  68c4aa:	48 2b c2             	sub    %rdx,%rax
  68c4ad:	4c 0f af ad f0 fa ff 	imul   -0x510(%rbp),%r13
  68c4b4:	ff 
  68c4b5:	4c 0f af f6          	imul   %rsi,%r14
  68c4b9:	4c 89 8d d8 fa ff ff 	mov    %r9,-0x528(%rbp)
  68c4c0:	48 f7 de             	neg    %rsi
  68c4c3:	4c 8b 8d 18 fa ff ff 	mov    -0x5e8(%rbp),%r9
  68c4ca:	49 03 d1             	add    %r9,%rdx
  68c4cd:	4c 89 95 d0 fa ff ff 	mov    %r10,-0x530(%rbp)
  68c4d4:	4c 8b 85 d8 f9 ff ff 	mov    -0x628(%rbp),%r8
  68c4db:	49 03 f8             	add    %r8,%rdi
  68c4de:	4d 03 d8             	add    %r8,%r11
  68c4e1:	4f 8d 14 49          	lea    (%r9,%r9,2),%r10
  68c4e5:	4d 2b ca             	sub    %r10,%r9
  68c4e8:	4d 03 d7             	add    %r15,%r10
  68c4eb:	49 2b d2             	sub    %r10,%rdx
  68c4ee:	49 2b c1             	sub    %r9,%rax
  68c4f1:	4d 2b fc             	sub    %r12,%r15
  68c4f4:	4d 03 e6             	add    %r14,%r12
  68c4f7:	4d 2b f5             	sub    %r13,%r14
  68c4fa:	48 2b fa             	sub    %rdx,%rdi
  68c4fd:	4c 03 d8             	add    %rax,%r11
  68c500:	4d 2b fe             	sub    %r14,%r15
  68c503:	49 2b fc             	sub    %r12,%rdi
  68c506:	4d 03 df             	add    %r15,%r11
  68c509:	49 03 fd             	add    %r13,%rdi
  68c50c:	49 03 f3             	add    %r11,%rsi
  68c50f:	48 8b 95 a0 f9 ff ff 	mov    -0x660(%rbp),%rdx
  68c516:	48 8b 85 50 fd ff ff 	mov    -0x2b0(%rbp),%rax
  68c51d:	4c 8b 95 d0 fa ff ff 	mov    -0x530(%rbp),%r10
  68c524:	4c 8b 8d d8 fa ff ff 	mov    -0x528(%rbp),%r9
  68c52b:	49 89 cb             	mov    %rcx,%r11
  68c52e:	4c 8b a5 70 ff ff ff 	mov    -0x90(%rbp),%r12
  68c535:	4c 8b ad 70 fd ff ff 	mov    -0x290(%rbp),%r13
  68c53c:	44 8b bd 28 fe ff ff 	mov    -0x1d8(%rbp),%r15d
  68c543:	44 3b bd 58 ff ff ff 	cmp    -0xa8(%rbp),%r15d
  68c54a:	7c 74                	jl     68c5c0 <step3d_t_mod_mp_step3d_t_tile_+0x5950>
  68c54c:	49 83 fd 04          	cmp    $0x4,%r13
  68c550:	0f 8c 81 47 00 00    	jl     690cd7 <step3d_t_mod_mp_step3d_t_tile_+0xa067>
  68c556:	4c 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%r14
  68c55d:	45 33 d2             	xor    %r10d,%r10d
  68c560:	4d 89 f7             	mov    %r14,%r15
  68c563:	4c 8d 0c 0e          	lea    (%rsi,%rcx,1),%r9
  68c567:	4c 8d 04 0f          	lea    (%rdi,%rcx,1),%r8
  68c56b:	c4 81 7d 10 04 d0    	vmovupd (%r8,%r10,8),%ymm0
  68c571:	c4 81 7d 5c 0c d1    	vsubpd (%r9,%r10,8),%ymm0,%ymm1
  68c577:	c4 a1 75 59 14 d2    	vmulpd (%rdx,%r10,8),%ymm1,%ymm2
  68c57d:	c4 a1 7d 11 14 d0    	vmovupd %ymm2,(%rax,%r10,8)
  68c583:	49 83 c2 04          	add    $0x4,%r10
  68c587:	4d 3b d7             	cmp    %r15,%r10
  68c58a:	72 df                	jb     68c56b <step3d_t_mod_mp_step3d_t_tile_+0x58fb>
  68c58c:	44 8b bd 28 fe ff ff 	mov    -0x1d8(%rbp),%r15d
  68c593:	4d 3b f5             	cmp    %r13,%r14
  68c596:	73 28                	jae    68c5c0 <step3d_t_mod_mp_step3d_t_tile_+0x5950>
  68c598:	4c 8d 0c 0e          	lea    (%rsi,%rcx,1),%r9
  68c59c:	4c 8d 04 0f          	lea    (%rdi,%rcx,1),%r8
  68c5a0:	c4 81 7b 10 04 f0    	vmovsd (%r8,%r14,8),%xmm0
  68c5a6:	c4 81 7b 5c 0c f1    	vsubsd (%r9,%r14,8),%xmm0,%xmm1
  68c5ac:	c4 a1 73 59 14 f2    	vmulsd (%rdx,%r14,8),%xmm1,%xmm2
  68c5b2:	c4 a1 7b 11 14 f0    	vmovsd %xmm2,(%rax,%r14,8)
  68c5b8:	49 ff c6             	inc    %r14
  68c5bb:	4d 3b f5             	cmp    %r13,%r14
  68c5be:	72 e0                	jb     68c5a0 <step3d_t_mod_mp_step3d_t_tile_+0x5930>
  68c5c0:	49 ff c3             	inc    %r11
  68c5c3:	49 03 c4             	add    %r12,%rax
  68c5c6:	48 03 8d 28 ff ff ff 	add    -0xd8(%rbp),%rcx
  68c5cd:	48 03 95 80 fe ff ff 	add    -0x180(%rbp),%rdx
  68c5d4:	4c 3b 9d 50 fe ff ff 	cmp    -0x1b0(%rbp),%r11
  68c5db:	0f 82 62 ff ff ff    	jb     68c543 <step3d_t_mod_mp_step3d_t_tile_+0x58d3>
  68c5e1:	e9 55 04 00 00       	jmpq   68ca3b <step3d_t_mod_mp_step3d_t_tile_+0x5dcb>
  68c5e6:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68c5ed:	49 89 d5             	mov    %rdx,%r13
  68c5f0:	4c 0f af ad 80 fa ff 	imul   -0x580(%rbp),%r13
  68c5f7:	ff 
  68c5f8:	4c 8b bd 08 f9 ff ff 	mov    -0x6f8(%rbp),%r15
  68c5ff:	4d 03 dd             	add    %r13,%r11
  68c602:	4c 8b b5 38 f9 ff ff 	mov    -0x6c8(%rbp),%r14
  68c609:	4c 89 8d d8 fa ff ff 	mov    %r9,-0x528(%rbp)
  68c610:	48 89 f7             	mov    %rsi,%rdi
  68c613:	49 89 cd             	mov    %rcx,%r13
  68c616:	4f 8d 0c 37          	lea    (%r15,%r14,1),%r9
  68c61a:	4c 0f af cf          	imul   %rdi,%r9
  68c61e:	4c 89 a5 e0 fa ff ff 	mov    %r12,-0x520(%rbp)
  68c625:	4f 8d 7c 6d 00       	lea    0x0(%r13,%r13,2),%r15
  68c62a:	4c 8b a5 f8 f8 ff ff 	mov    -0x708(%rbp),%r12
  68c631:	4e 8d 34 2a          	lea    (%rdx,%r13,1),%r14
  68c635:	48 8b 8d 28 ff ff ff 	mov    -0xd8(%rbp),%rcx
  68c63c:	4d 2b ef             	sub    %r15,%r13
  68c63f:	4c 0f af e1          	imul   %rcx,%r12
  68c643:	4c 89 95 d0 fa ff ff 	mov    %r10,-0x530(%rbp)
  68c64a:	4d 03 f9             	add    %r9,%r15
  68c64d:	48 8b b5 18 ff ff ff 	mov    -0xe8(%rbp),%rsi
  68c654:	4c 2b cf             	sub    %rdi,%r9
  68c657:	4c 8b 95 00 f9 ff ff 	mov    -0x700(%rbp),%r10
  68c65e:	49 89 f0             	mov    %rsi,%r8
  68c661:	4c 0f af d6          	imul   %rsi,%r10
  68c665:	4c 0f af 85 98 fb ff 	imul   -0x468(%rbp),%r8
  68c66c:	ff 
  68c66d:	4d 2b e9             	sub    %r9,%r13
  68c670:	49 89 c9             	mov    %rcx,%r9
  68c673:	48 0f af 8d f0 fa ff 	imul   -0x510(%rbp),%rcx
  68c67a:	ff 
  68c67b:	49 f7 de             	neg    %r14
  68c67e:	49 03 fc             	add    %r12,%rdi
  68c681:	4d 03 f3             	add    %r11,%r14
  68c684:	4c 2b da             	sub    %rdx,%r11
  68c687:	48 8b 95 70 f9 ff ff 	mov    -0x690(%rbp),%rdx
  68c68e:	49 f7 d9             	neg    %r9
  68c691:	4c 2b ff             	sub    %rdi,%r15
  68c694:	4c 89 d6             	mov    %r10,%rsi
  68c697:	4c 2b e1             	sub    %rcx,%r12
  68c69a:	49 2b f0             	sub    %r8,%rsi
  68c69d:	4d 2b dd             	sub    %r13,%r11
  68c6a0:	48 8d 3c 10          	lea    (%rax,%rdx,1),%rdi
  68c6a4:	48 89 bd 00 fd ff ff 	mov    %rdi,-0x300(%rbp)
  68c6ab:	4c 89 cf             	mov    %r9,%rdi
  68c6ae:	49 2b fa             	sub    %r10,%rdi
  68c6b1:	49 f7 da             	neg    %r10
  68c6b4:	48 f7 df             	neg    %rdi
  68c6b7:	4c 03 d1             	add    %rcx,%r10
  68c6ba:	49 03 fc             	add    %r12,%rdi
  68c6bd:	49 03 c9             	add    %r9,%rcx
  68c6c0:	4d 03 f7             	add    %r15,%r14
  68c6c3:	48 f7 df             	neg    %rdi
  68c6c6:	48 2b ce             	sub    %rsi,%rcx
  68c6c9:	4c 03 e6             	add    %rsi,%r12
  68c6cc:	49 03 fb             	add    %r11,%rdi
  68c6cf:	4d 03 d6             	add    %r14,%r10
  68c6d2:	4c 03 f1             	add    %rcx,%r14
  68c6d5:	4d 2b dc             	sub    %r12,%r11
  68c6d8:	48 8b 95 18 ff ff ff 	mov    -0xe8(%rbp),%rdx
  68c6df:	49 03 f8             	add    %r8,%rdi
  68c6e2:	48 c7 85 d0 fd ff ff 	movq   $0x0,-0x230(%rbp)
  68c6e9:	00 00 00 00 
  68c6ed:	4d 03 c2             	add    %r10,%r8
  68c6f0:	48 8b b5 d0 fd ff ff 	mov    -0x230(%rbp),%rsi
  68c6f7:	48 89 f1             	mov    %rsi,%rcx
  68c6fa:	48 03 85 e8 f9 ff ff 	add    -0x618(%rbp),%rax
  68c701:	4d 8d 34 56          	lea    (%r14,%rdx,2),%r14
  68c705:	4d 8d 1c 53          	lea    (%r11,%rdx,2),%r11
  68c709:	48 89 ca             	mov    %rcx,%rdx
  68c70c:	4c 8b 95 d0 fa ff ff 	mov    -0x530(%rbp),%r10
  68c713:	4c 8b 8d d8 fa ff ff 	mov    -0x528(%rbp),%r9
  68c71a:	4c 8b ad 70 fd ff ff 	mov    -0x290(%rbp),%r13
  68c721:	4c 8b a5 88 f9 ff ff 	mov    -0x678(%rbp),%r12
  68c728:	4c 89 9d 48 fc ff ff 	mov    %r11,-0x3b8(%rbp)
  68c72f:	4c 89 b5 50 fc ff ff 	mov    %r14,-0x3b0(%rbp)
  68c736:	49 89 f6             	mov    %rsi,%r14
  68c739:	4c 89 85 d8 fe ff ff 	mov    %r8,-0x128(%rbp)
  68c740:	48 89 bd e0 fe ff ff 	mov    %rdi,-0x120(%rbp)
  68c747:	48 89 85 50 fd ff ff 	mov    %rax,-0x2b0(%rbp)
  68c74e:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
  68c754:	3b 85 58 ff ff ff    	cmp    -0xa8(%rbp),%eax
  68c75a:	0f 8c b6 02 00 00    	jl     68ca16 <step3d_t_mod_mp_step3d_t_tile_+0x5da6>
  68c760:	49 83 fd 04          	cmp    $0x4,%r13
  68c764:	0f 8c b5 4a 00 00    	jl     69121f <step3d_t_mod_mp_step3d_t_tile_+0xa5af>
  68c76a:	48 8b 85 50 fd ff ff 	mov    -0x2b0(%rbp),%rax
  68c771:	48 03 c2             	add    %rdx,%rax
  68c774:	48 89 85 58 fd ff ff 	mov    %rax,-0x2a8(%rbp)
  68c77b:	48 83 e0 0f          	and    $0xf,%rax
  68c77f:	85 c0                	test   %eax,%eax
  68c781:	74 0d                	je     68c790 <step3d_t_mod_mp_step3d_t_tile_+0x5b20>
  68c783:	a8 07                	test   $0x7,%al
  68c785:	0f 85 94 4a 00 00    	jne    69121f <step3d_t_mod_mp_step3d_t_tile_+0xa5af>
  68c78b:	b8 01 00 00 00       	mov    $0x1,%eax
  68c790:	41 89 c2             	mov    %eax,%r10d
  68c793:	49 8d 7a 04          	lea    0x4(%r10),%rdi
  68c797:	4c 3b ef             	cmp    %rdi,%r13
  68c79a:	0f 8c 7f 4a 00 00    	jl     69121f <step3d_t_mod_mp_step3d_t_tile_+0xa5af>
  68c7a0:	4c 8b bd e0 fe ff ff 	mov    -0x120(%rbp),%r15
  68c7a7:	45 33 c0             	xor    %r8d,%r8d
  68c7aa:	8b bd 48 fe ff ff    	mov    -0x1b8(%rbp),%edi
  68c7b0:	41 89 fb             	mov    %edi,%r11d
  68c7b3:	44 2b d8             	sub    %eax,%r11d
  68c7b6:	45 33 c9             	xor    %r9d,%r9d
  68c7b9:	41 83 e3 03          	and    $0x3,%r11d
  68c7bd:	4c 03 fe             	add    %rsi,%r15
  68c7c0:	4c 89 7d d0          	mov    %r15,-0x30(%rbp)
  68c7c4:	41 f7 db             	neg    %r11d
  68c7c7:	4c 8b bd d8 fe ff ff 	mov    -0x128(%rbp),%r15
  68c7ce:	44 03 df             	add    %edi,%r11d
  68c7d1:	4d 63 db             	movslq %r11d,%r11
  68c7d4:	33 ff                	xor    %edi,%edi
  68c7d6:	4c 03 fe             	add    %rsi,%r15
  68c7d9:	4c 89 bd f0 fe ff ff 	mov    %r15,-0x110(%rbp)
  68c7e0:	4c 8b bd a8 fe ff ff 	mov    -0x158(%rbp),%r15
  68c7e7:	4c 03 f9             	add    %rcx,%r15
  68c7ea:	4c 89 bd e8 fe ff ff 	mov    %r15,-0x118(%rbp)
  68c7f1:	85 c0                	test   %eax,%eax
  68c7f3:	76 64                	jbe    68c859 <step3d_t_mod_mp_step3d_t_tile_+0x5be9>
  68c7f5:	48 89 b5 c8 fd ff ff 	mov    %rsi,-0x238(%rbp)
  68c7fc:	4c 89 b5 d0 fd ff ff 	mov    %r14,-0x230(%rbp)
  68c803:	4c 89 f8             	mov    %r15,%rax
  68c806:	48 8b b5 f0 fe ff ff 	mov    -0x110(%rbp),%rsi
  68c80d:	4c 8b 6d d0          	mov    -0x30(%rbp),%r13
  68c811:	4c 8b b5 58 fd ff ff 	mov    -0x2a8(%rbp),%r14
  68c818:	4c 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%r15
  68c81f:	c5 fb 10 04 37       	vmovsd (%rdi,%rsi,1),%xmm0
  68c824:	c4 a1 7b 5c 0c 2f    	vsubsd (%rdi,%r13,1),%xmm0,%xmm1
  68c82a:	49 03 ff             	add    %r15,%rdi
  68c82d:	c4 c1 73 59 14 01    	vmulsd (%r9,%rax,1),%xmm1,%xmm2
  68c833:	4d 03 cc             	add    %r12,%r9
  68c836:	c4 81 7b 11 14 c6    	vmovsd %xmm2,(%r14,%r8,8)
  68c83c:	49 ff c0             	inc    %r8
  68c83f:	4d 3b c2             	cmp    %r10,%r8
  68c842:	72 db                	jb     68c81f <step3d_t_mod_mp_step3d_t_tile_+0x5baf>
  68c844:	48 8b b5 c8 fd ff ff 	mov    -0x238(%rbp),%rsi
  68c84b:	4c 8b b5 d0 fd ff ff 	mov    -0x230(%rbp),%r14
  68c852:	4c 8b ad 70 fd ff ff 	mov    -0x290(%rbp),%r13
  68c859:	4c 8b bd 48 fc ff ff 	mov    -0x3b8(%rbp),%r15
  68c860:	4d 89 e1             	mov    %r12,%r9
  68c863:	48 8b bd 00 fd ff ff 	mov    -0x300(%rbp),%rdi
  68c86a:	48 8b 85 50 fc ff ff 	mov    -0x3b0(%rbp),%rax
  68c871:	4c 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%r8
  68c878:	4c 03 fe             	add    %rsi,%r15
  68c87b:	4c 89 bd 58 fc ff ff 	mov    %r15,-0x3a8(%rbp)
  68c882:	48 03 fa             	add    %rdx,%rdi
  68c885:	4c 8b bd a8 fb ff ff 	mov    -0x458(%rbp),%r15
  68c88c:	48 03 c6             	add    %rsi,%rax
  68c88f:	4c 89 5d c8          	mov    %r11,-0x38(%rbp)
  68c893:	48 89 95 d8 fd ff ff 	mov    %rdx,-0x228(%rbp)
  68c89a:	48 89 8d e0 fd ff ff 	mov    %rcx,-0x220(%rbp)
  68c8a1:	4c 03 f9             	add    %rcx,%r15
  68c8a4:	48 89 b5 c8 fd ff ff 	mov    %rsi,-0x238(%rbp)
  68c8ab:	4c 89 b5 d0 fd ff ff 	mov    %r14,-0x230(%rbp)
  68c8b2:	4d 0f af ca          	imul   %r10,%r9
  68c8b6:	4d 0f af c2          	imul   %r10,%r8
  68c8ba:	4d 89 fe             	mov    %r15,%r14
  68c8bd:	48 8b 95 58 fc ff ff 	mov    -0x3a8(%rbp),%rdx
  68c8c4:	48 8b 8d e8 fe ff ff 	mov    -0x118(%rbp),%rcx
  68c8cb:	48 8b b5 f0 fe ff ff 	mov    -0x110(%rbp),%rsi
  68c8d2:	4c 8b 9d 58 fd ff ff 	mov    -0x2a8(%rbp),%r11
  68c8d9:	4c 8b ad 18 ff ff ff 	mov    -0xe8(%rbp),%r13
  68c8e0:	4e 8d 3c 06          	lea    (%rsi,%r8,1),%r15
  68c8e4:	c4 c1 7b 10 07       	vmovsd (%r15),%xmm0
  68c8e9:	c4 81 79 16 14 2f    	vmovhpd (%r15,%r13,1),%xmm0,%xmm2
  68c8ef:	4c 8b 7d d0          	mov    -0x30(%rbp),%r15
  68c8f3:	4d 03 f8             	add    %r8,%r15
  68c8f6:	c4 c1 7b 10 0f       	vmovsd (%r15),%xmm1
  68c8fb:	c4 81 71 16 1c 2f    	vmovhpd (%r15,%r13,1),%xmm1,%xmm3
  68c901:	4e 8d 3c 09          	lea    (%rcx,%r9,1),%r15
  68c905:	c4 c1 7b 10 27       	vmovsd (%r15),%xmm4
  68c90a:	c4 81 59 16 34 27    	vmovhpd (%r15,%r12,1),%xmm4,%xmm6
  68c910:	4e 8d 3c 02          	lea    (%rdx,%r8,1),%r15
  68c914:	c4 41 7b 10 07       	vmovsd (%r15),%xmm8
  68c919:	c4 01 39 16 14 2f    	vmovhpd (%r15,%r13,1),%xmm8,%xmm10
  68c91f:	4e 8d 3c 00          	lea    (%rax,%r8,1),%r15
  68c923:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  68c928:	4f 8d 04 a8          	lea    (%r8,%r13,4),%r8
  68c92c:	c4 01 31 16 1c 2f    	vmovhpd (%r15,%r13,1),%xmm9,%xmm11
  68c932:	4f 8d 3c 0e          	lea    (%r14,%r9,1),%r15
  68c936:	c5 e9 5c eb          	vsubpd %xmm3,%xmm2,%xmm5
  68c93a:	c4 41 29 5c eb       	vsubpd %xmm11,%xmm10,%xmm13
  68c93f:	c5 d1 59 fe          	vmulpd %xmm6,%xmm5,%xmm7
  68c943:	c4 41 7b 10 27       	vmovsd (%r15),%xmm12
  68c948:	4f 8d 0c a1          	lea    (%r9,%r12,4),%r9
  68c94c:	c4 01 19 16 34 27    	vmovhpd (%r15,%r12,1),%xmm12,%xmm14
  68c952:	c4 41 11 59 fe       	vmulpd %xmm14,%xmm13,%xmm15
  68c957:	c4 81 79 11 3c d3    	vmovupd %xmm7,(%r11,%r10,8)
  68c95d:	c4 21 79 11 7c d7 10 	vmovupd %xmm15,0x10(%rdi,%r10,8)
  68c964:	49 83 c2 04          	add    $0x4,%r10
  68c968:	4c 3b 55 c8          	cmp    -0x38(%rbp),%r10
  68c96c:	0f 82 6e ff ff ff    	jb     68c8e0 <step3d_t_mod_mp_step3d_t_tile_+0x5c70>
  68c972:	4c 8b 5d c8          	mov    -0x38(%rbp),%r11
  68c976:	48 8b 95 d8 fd ff ff 	mov    -0x228(%rbp),%rdx
  68c97d:	48 8b 8d e0 fd ff ff 	mov    -0x220(%rbp),%rcx
  68c984:	48 8b b5 c8 fd ff ff 	mov    -0x238(%rbp),%rsi
  68c98b:	4c 8b b5 d0 fd ff ff 	mov    -0x230(%rbp),%r14
  68c992:	4c 8b ad 70 fd ff ff 	mov    -0x290(%rbp),%r13
  68c999:	4d 89 e0             	mov    %r12,%r8
  68c99c:	4c 8b 95 18 ff ff ff 	mov    -0xe8(%rbp),%r10
  68c9a3:	4d 0f af d3          	imul   %r11,%r10
  68c9a7:	4d 0f af c3          	imul   %r11,%r8
  68c9ab:	4d 3b dd             	cmp    %r13,%r11
  68c9ae:	73 66                	jae    68ca16 <step3d_t_mod_mp_step3d_t_tile_+0x5da6>
  68c9b0:	4c 8b bd a8 fe ff ff 	mov    -0x158(%rbp),%r15
  68c9b7:	48 8b bd 50 fd ff ff 	mov    -0x2b0(%rbp),%rdi
  68c9be:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  68c9c5:	4c 8b 8d d8 fe ff ff 	mov    -0x128(%rbp),%r9
  68c9cc:	4c 03 f9             	add    %rcx,%r15
  68c9cf:	48 03 fa             	add    %rdx,%rdi
  68c9d2:	4c 89 b5 d0 fd ff ff 	mov    %r14,-0x230(%rbp)
  68c9d9:	48 03 c6             	add    %rsi,%rax
  68c9dc:	4d 89 fe             	mov    %r15,%r14
  68c9df:	4c 03 ce             	add    %rsi,%r9
  68c9e2:	4c 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%r15
  68c9e9:	c4 81 7b 10 04 0a    	vmovsd (%r10,%r9,1),%xmm0
  68c9ef:	c4 c1 7b 5c 0c 02    	vsubsd (%r10,%rax,1),%xmm0,%xmm1
  68c9f5:	4d 03 d7             	add    %r15,%r10
  68c9f8:	c4 81 73 59 14 30    	vmulsd (%r8,%r14,1),%xmm1,%xmm2
  68c9fe:	4d 03 c4             	add    %r12,%r8
  68ca01:	c4 a1 7b 11 14 df    	vmovsd %xmm2,(%rdi,%r11,8)
  68ca07:	49 ff c3             	inc    %r11
  68ca0a:	4d 3b dd             	cmp    %r13,%r11
  68ca0d:	72 da                	jb     68c9e9 <step3d_t_mod_mp_step3d_t_tile_+0x5d79>
  68ca0f:	4c 8b b5 d0 fd ff ff 	mov    -0x230(%rbp),%r14
  68ca16:	49 ff c6             	inc    %r14
  68ca19:	48 03 b5 28 ff ff ff 	add    -0xd8(%rbp),%rsi
  68ca20:	48 03 8d 80 fe ff ff 	add    -0x180(%rbp),%rcx
  68ca27:	48 03 95 70 ff ff ff 	add    -0x90(%rbp),%rdx
  68ca2e:	4c 3b b5 50 fe ff ff 	cmp    -0x1b0(%rbp),%r14
  68ca35:	0f 82 13 fd ff ff    	jb     68c74e <step3d_t_mod_mp_step3d_t_tile_+0x5ade>
  68ca3b:	4c 8b 95 d0 fa ff ff 	mov    -0x530(%rbp),%r10
  68ca42:	4c 8b 8d d8 fa ff ff 	mov    -0x528(%rbp),%r9
  68ca49:	4c 8b a5 e0 fa ff ff 	mov    -0x520(%rbp),%r12
  68ca50:	4c 8b ad c8 fa ff ff 	mov    -0x538(%rbp),%r13
  68ca57:	43 f6 44 0a 08 01    	testb  $0x1,0x8(%r10,%r9,1)
  68ca5d:	0f 85 f4 00 00 00    	jne    68cb57 <step3d_t_mod_mp_step3d_t_tile_+0x5ee7>
  68ca63:	48 8b 05 d6 0d 4b 00 	mov    0x4b0dd6(%rip),%rax        # b3d840 <mod_scalars_mp_nsperiodic_+0x40>
  68ca6a:	48 c1 e0 02          	shl    $0x2,%rax
  68ca6e:	48 f7 d8             	neg    %rax
  68ca71:	48 03 05 88 0d 4b 00 	add    0x4b0d88(%rip),%rax        # b3d800 <mod_scalars_mp_nsperiodic_>
  68ca78:	42 f6 04 a8 01       	testb  $0x1,(%rax,%r13,4)
  68ca7d:	0f 85 d4 00 00 00    	jne    68cb57 <step3d_t_mod_mp_step3d_t_tile_+0x5ee7>
  68ca83:	48 8b 0d 76 14 4b 00 	mov    0x4b1476(%rip),%rcx        # b3df00 <mod_param_mp_domain_+0x40>
  68ca8a:	48 f7 d9             	neg    %rcx
  68ca8d:	49 03 cd             	add    %r13,%rcx
  68ca90:	48 89 c8             	mov    %rcx,%rax
  68ca93:	48 c1 e0 05          	shl    $0x5,%rax
  68ca97:	48 c1 e1 0b          	shl    $0xb,%rcx
  68ca9b:	48 2b c8             	sub    %rax,%rcx
  68ca9e:	48 8b 15 1b 14 4b 00 	mov    0x4b141b(%rip),%rdx        # b3dec0 <mod_param_mp_domain_>
  68caa5:	48 8b bc 0a 18 01 00 	mov    0x118(%rdx,%rcx,1),%rdi
  68caac:	00 
  68caad:	48 f7 df             	neg    %rdi
  68cab0:	48 03 bd d8 f8 ff ff 	add    -0x728(%rbp),%rdi
  68cab7:	48 0f af bc 0a 10 01 	imul   0x110(%rdx,%rcx,1),%rdi
  68cabe:	00 00 
  68cac0:	48 8b b4 0a d8 00 00 	mov    0xd8(%rdx,%rcx,1),%rsi
  68cac7:	00 
  68cac8:	f6 04 3e 01          	testb  $0x1,(%rsi,%rdi,1)
  68cacc:	0f 84 85 00 00 00    	je     68cb57 <step3d_t_mod_mp_step3d_t_tile_+0x5ee7>
  68cad2:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
  68cad8:	3b 85 58 ff ff ff    	cmp    -0xa8(%rbp),%eax
  68cade:	7c 77                	jl     68cb57 <step3d_t_mod_mp_step3d_t_tile_+0x5ee7>
  68cae0:	48 8b b5 50 f6 ff ff 	mov    -0x9b0(%rbp),%rsi
  68cae7:	83 bd 10 f5 ff ff 0c 	cmpl   $0xc,-0xaf0(%rbp)
  68caee:	0f 8e b0 46 00 00    	jle    6911a4 <step3d_t_mod_mp_step3d_t_tile_+0xa534>
  68caf4:	48 8b 8d 10 f8 ff ff 	mov    -0x7f0(%rbp),%rcx
  68cafb:	45 33 d2             	xor    %r10d,%r10d
  68cafe:	48 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%rdx
  68cb05:	45 33 c9             	xor    %r9d,%r9d
  68cb08:	4c 8b 85 f0 f7 ff ff 	mov    -0x810(%rbp),%r8
  68cb0f:	48 8d 04 31          	lea    (%rcx,%rsi,1),%rax
  68cb13:	48 2b c2             	sub    %rdx,%rax
  68cb16:	48 8d 3c 16          	lea    (%rsi,%rdx,1),%rdi
  68cb1a:	48 2b c6             	sub    %rsi,%rax
  68cb1d:	48 2b f9             	sub    %rcx,%rdi
  68cb20:	49 3b c0             	cmp    %r8,%rax
  68cb23:	41 0f 9f c2          	setg   %r10b
  68cb27:	48 2b fe             	sub    %rsi,%rdi
  68cb2a:	49 3b f8             	cmp    %r8,%rdi
  68cb2d:	41 0f 9f c1          	setg   %r9b
  68cb31:	45 0b d1             	or     %r9d,%r10d
  68cb34:	0f 84 6a 46 00 00    	je     6911a4 <step3d_t_mod_mp_step3d_t_tile_+0xa534>
  68cb3a:	48 8b 85 08 f8 ff ff 	mov    -0x7f8(%rbp),%rax
  68cb41:	4c 89 c2             	mov    %r8,%rdx
  68cb44:	c5 f8 77             	vzeroupper 
  68cb47:	48 8d 3c 30          	lea    (%rax,%rsi,1),%rdi
  68cb4b:	48 03 b5 c0 fa ff ff 	add    -0x540(%rbp),%rsi
  68cb52:	e8 e9 bf e4 ff       	callq  4d8b40 <_intel_fast_memcpy>
  68cb57:	49 f7 dc             	neg    %r12
  68cb5a:	4d 03 e5             	add    %r13,%r12
  68cb5d:	4c 0f af a5 28 fb ff 	imul   -0x4d8(%rbp),%r12
  68cb64:	ff 
  68cb65:	48 8b 85 20 fb ff ff 	mov    -0x4e0(%rbp),%rax
  68cb6c:	48 c1 e0 02          	shl    $0x2,%rax
  68cb70:	48 8b 95 30 fb ff ff 	mov    -0x4d0(%rbp),%rdx
  68cb77:	48 2b d0             	sub    %rax,%rdx
  68cb7a:	42 f6 44 22 10 01    	testb  $0x1,0x10(%rdx,%r12,1)
  68cb80:	0f 85 f8 00 00 00    	jne    68cc7e <step3d_t_mod_mp_step3d_t_tile_+0x600e>
  68cb86:	48 8b 05 b3 0c 4b 00 	mov    0x4b0cb3(%rip),%rax        # b3d840 <mod_scalars_mp_nsperiodic_+0x40>
  68cb8d:	48 c1 e0 02          	shl    $0x2,%rax
  68cb91:	48 f7 d8             	neg    %rax
  68cb94:	48 03 05 65 0c 4b 00 	add    0x4b0c65(%rip),%rax        # b3d800 <mod_scalars_mp_nsperiodic_>
  68cb9b:	42 f6 04 a8 01       	testb  $0x1,(%rax,%r13,4)
  68cba0:	0f 85 d8 00 00 00    	jne    68cc7e <step3d_t_mod_mp_step3d_t_tile_+0x600e>
  68cba6:	48 8b 0d 53 13 4b 00 	mov    0x4b1353(%rip),%rcx        # b3df00 <mod_param_mp_domain_+0x40>
  68cbad:	48 f7 d9             	neg    %rcx
  68cbb0:	49 03 cd             	add    %r13,%rcx
  68cbb3:	48 89 c8             	mov    %rcx,%rax
  68cbb6:	48 c1 e0 05          	shl    $0x5,%rax
  68cbba:	48 c1 e1 0b          	shl    $0xb,%rcx
  68cbbe:	48 2b c8             	sub    %rax,%rcx
  68cbc1:	48 8b 15 f8 12 4b 00 	mov    0x4b12f8(%rip),%rdx        # b3dec0 <mod_param_mp_domain_>
  68cbc8:	48 8b bc 0a d0 00 00 	mov    0xd0(%rdx,%rcx,1),%rdi
  68cbcf:	00 
  68cbd0:	48 f7 df             	neg    %rdi
  68cbd3:	48 03 bd d8 f8 ff ff 	add    -0x728(%rbp),%rdi
  68cbda:	48 0f af bc 0a c8 00 	imul   0xc8(%rdx,%rcx,1),%rdi
  68cbe1:	00 00 
  68cbe3:	48 8b b4 0a 90 00 00 	mov    0x90(%rdx,%rcx,1),%rsi
  68cbea:	00 
  68cbeb:	f6 04 3e 01          	testb  $0x1,(%rsi,%rdi,1)
  68cbef:	0f 84 89 00 00 00    	je     68cc7e <step3d_t_mod_mp_step3d_t_tile_+0x600e>
  68cbf5:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
  68cbfb:	3b 85 58 ff ff ff    	cmp    -0xa8(%rbp),%eax
  68cc01:	0f 8c d2 00 00 00    	jl     68ccd9 <step3d_t_mod_mp_step3d_t_tile_+0x6069>
  68cc07:	48 8b b5 50 f6 ff ff 	mov    -0x9b0(%rbp),%rsi
  68cc0e:	83 bd 10 f5 ff ff 0c 	cmpl   $0xc,-0xaf0(%rbp)
  68cc15:	0f 8e c4 40 00 00    	jle    690cdf <step3d_t_mod_mp_step3d_t_tile_+0xa06f>
  68cc1b:	48 8b 8d 18 f8 ff ff 	mov    -0x7e8(%rbp),%rcx
  68cc22:	45 33 d2             	xor    %r10d,%r10d
  68cc25:	48 8b 95 20 f8 ff ff 	mov    -0x7e0(%rbp),%rdx
  68cc2c:	45 33 c9             	xor    %r9d,%r9d
  68cc2f:	4c 8b 85 f0 f7 ff ff 	mov    -0x810(%rbp),%r8
  68cc36:	48 8d 04 0e          	lea    (%rsi,%rcx,1),%rax
  68cc3a:	48 2b c2             	sub    %rdx,%rax
  68cc3d:	48 8d 3c 16          	lea    (%rsi,%rdx,1),%rdi
  68cc41:	48 2b c6             	sub    %rsi,%rax
  68cc44:	48 2b f9             	sub    %rcx,%rdi
  68cc47:	49 3b c0             	cmp    %r8,%rax
  68cc4a:	41 0f 9f c2          	setg   %r10b
  68cc4e:	48 2b fe             	sub    %rsi,%rdi
  68cc51:	49 3b f8             	cmp    %r8,%rdi
  68cc54:	41 0f 9f c1          	setg   %r9b
  68cc58:	45 0b d1             	or     %r9d,%r10d
  68cc5b:	0f 84 7e 40 00 00    	je     690cdf <step3d_t_mod_mp_step3d_t_tile_+0xa06f>
  68cc61:	48 8b 85 f8 f7 ff ff 	mov    -0x808(%rbp),%rax
  68cc68:	4c 89 c2             	mov    %r8,%rdx
  68cc6b:	c5 f8 77             	vzeroupper 
  68cc6e:	48 8d 3c 06          	lea    (%rsi,%rax,1),%rdi
  68cc72:	48 03 b5 00 f8 ff ff 	add    -0x800(%rbp),%rsi
  68cc79:	e8 c2 be e4 ff       	callq  4d8b40 <_intel_fast_memcpy>
  68cc7e:	8b 85 10 fb ff ff    	mov    -0x4f0(%rbp),%eax
  68cc84:	45 33 ff             	xor    %r15d,%r15d
  68cc87:	3b 85 18 fb ff ff    	cmp    -0x4e8(%rbp),%eax
  68cc8d:	0f 8c 8e 01 00 00    	jl     68ce21 <step3d_t_mod_mp_step3d_t_tile_+0x61b1>
  68cc93:	4c 8b b5 f0 f5 ff ff 	mov    -0xa10(%rbp),%r14
  68cc9a:	4c 8b a5 50 f6 ff ff 	mov    -0x9b0(%rbp),%r12
  68cca1:	48 8b bd c0 fa ff ff 	mov    -0x540(%rbp),%rdi
  68cca8:	4c 8b 85 a8 fa ff ff 	mov    -0x558(%rbp),%r8
  68ccaf:	4c 8b 8d 70 fd ff ff 	mov    -0x290(%rbp),%r9
  68ccb6:	44 8b 95 28 fe ff ff 	mov    -0x1d8(%rbp),%r10d
  68ccbd:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68ccc4:	c5 fd 10 05 14 83 23 	vmovupd 0x238314(%rip),%ymm0        # 8c4fe0 <var$630.126.450+0x320>
  68cccb:	00 
  68cccc:	c5 fb 10 0d 44 a3 23 	vmovsd 0x23a344(%rip),%xmm1        # 8c7018 <__STRLITPACK_199.115+0x88>
  68ccd3:	00 
  68ccd4:	e9 93 00 00 00       	jmpq   68cd6c <step3d_t_mod_mp_step3d_t_tile_+0x60fc>
  68ccd9:	8b 85 10 fb ff ff    	mov    -0x4f0(%rbp),%eax
  68ccdf:	3b 85 18 fb ff ff    	cmp    -0x4e8(%rbp),%eax
  68cce5:	0f 8c 36 01 00 00    	jl     68ce21 <step3d_t_mod_mp_step3d_t_tile_+0x61b1>
  68cceb:	4c 8b b5 f0 f5 ff ff 	mov    -0xa10(%rbp),%r14
  68ccf2:	4c 8b a5 50 f6 ff ff 	mov    -0x9b0(%rbp),%r12
  68ccf9:	48 83 bd 60 ff ff ff 	cmpq   $0x1,-0xa0(%rbp)
  68cd00:	01 
  68cd01:	0f 86 1a 01 00 00    	jbe    68ce21 <step3d_t_mod_mp_step3d_t_tile_+0x61b1>
  68cd07:	48 83 bd 60 ff ff ff 	cmpq   $0x2,-0xa0(%rbp)
  68cd0e:	02 
  68cd0f:	0f 86 0c 01 00 00    	jbe    68ce21 <step3d_t_mod_mp_step3d_t_tile_+0x61b1>
  68cd15:	41 bf 03 00 00 00    	mov    $0x3,%r15d
  68cd1b:	48 83 bd 60 ff ff ff 	cmpq   $0x3,-0xa0(%rbp)
  68cd22:	03 
  68cd23:	0f 86 f8 00 00 00    	jbe    68ce21 <step3d_t_mod_mp_step3d_t_tile_+0x61b1>
  68cd29:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68cd30:	c5 fd 10 05 a8 82 23 	vmovupd 0x2382a8(%rip),%ymm0        # 8c4fe0 <var$630.126.450+0x320>
  68cd37:	00 
  68cd38:	c5 fb 10 0d d8 a2 23 	vmovsd 0x23a2d8(%rip),%xmm1        # 8c7018 <__STRLITPACK_199.115+0x88>
  68cd3f:	00 
  68cd40:	48 8b bd c0 fa ff ff 	mov    -0x540(%rbp),%rdi
  68cd47:	4c 8b 85 a8 fa ff ff 	mov    -0x558(%rbp),%r8
  68cd4e:	4c 8b 8d 70 fd ff ff 	mov    -0x290(%rbp),%r9
  68cd55:	44 8b 95 28 fe ff ff 	mov    -0x1d8(%rbp),%r10d
  68cd5c:	49 ff c7             	inc    %r15
  68cd5f:	4c 3b bd 60 ff ff ff 	cmp    -0xa0(%rbp),%r15
  68cd66:	0f 83 a7 00 00 00    	jae    68ce13 <step3d_t_mod_mp_step3d_t_tile_+0x61a3>
  68cd6c:	44 3b 95 58 ff ff ff 	cmp    -0xa8(%rbp),%r10d
  68cd73:	7c e7                	jl     68cd5c <step3d_t_mod_mp_step3d_t_tile_+0x60ec>
  68cd75:	49 83 f9 04          	cmp    $0x4,%r9
  68cd79:	0f 8c db 3f 00 00    	jl     690d5a <step3d_t_mod_mp_step3d_t_tile_+0xa0ea>
  68cd7f:	4c 89 f9             	mov    %r15,%rcx
  68cd82:	4d 8d 2c 3c          	lea    (%r12,%rdi,1),%r13
  68cd86:	48 0f af 8d 70 ff ff 	imul   -0x90(%rbp),%rcx
  68cd8d:	ff 
  68cd8e:	4c 8b 9d 78 ff ff ff 	mov    -0x88(%rbp),%r11
  68cd95:	49 8d 04 0e          	lea    (%r14,%rcx,1),%rax
  68cd99:	33 d2                	xor    %edx,%edx
  68cd9b:	49 8d 34 0c          	lea    (%r12,%rcx,1),%rsi
  68cd9f:	49 03 c0             	add    %r8,%rax
  68cda2:	49 03 f0             	add    %r8,%rsi
  68cda5:	49 03 cd             	add    %r13,%rcx
  68cda8:	4d 89 dd             	mov    %r11,%r13
  68cdab:	c5 fd 10 14 d1       	vmovupd (%rcx,%rdx,8),%ymm2
  68cdb0:	c5 ed 58 5c d6 f8    	vaddpd -0x8(%rsi,%rdx,8),%ymm2,%ymm3
  68cdb6:	c5 fd 59 e3          	vmulpd %ymm3,%ymm0,%ymm4
  68cdba:	c5 fd 11 64 d0 f8    	vmovupd %ymm4,-0x8(%rax,%rdx,8)
  68cdc0:	48 83 c2 04          	add    $0x4,%rdx
  68cdc4:	49 3b d5             	cmp    %r13,%rdx
  68cdc7:	72 e2                	jb     68cdab <step3d_t_mod_mp_step3d_t_tile_+0x613b>
  68cdc9:	4d 3b d9             	cmp    %r9,%r11
  68cdcc:	73 8e                	jae    68cd5c <step3d_t_mod_mp_step3d_t_tile_+0x60ec>
  68cdce:	4c 89 f8             	mov    %r15,%rax
  68cdd1:	49 8d 34 3c          	lea    (%r12,%rdi,1),%rsi
  68cdd5:	48 0f af 85 70 ff ff 	imul   -0x90(%rbp),%rax
  68cddc:	ff 
  68cddd:	49 8d 0c 06          	lea    (%r14,%rax,1),%rcx
  68cde1:	49 03 c8             	add    %r8,%rcx
  68cde4:	49 8d 14 04          	lea    (%r12,%rax,1),%rdx
  68cde8:	49 03 d0             	add    %r8,%rdx
  68cdeb:	48 03 c6             	add    %rsi,%rax
  68cdee:	c4 a1 7b 10 14 d8    	vmovsd (%rax,%r11,8),%xmm2
  68cdf4:	c4 a1 6b 58 5c da f8 	vaddsd -0x8(%rdx,%r11,8),%xmm2,%xmm3
  68cdfb:	c5 f3 59 e3          	vmulsd %xmm3,%xmm1,%xmm4
  68cdff:	c4 a1 7b 11 64 d9 f8 	vmovsd %xmm4,-0x8(%rcx,%r11,8)
  68ce06:	49 ff c3             	inc    %r11
  68ce09:	4d 3b d9             	cmp    %r9,%r11
  68ce0c:	72 e0                	jb     68cdee <step3d_t_mod_mp_step3d_t_tile_+0x617e>
  68ce0e:	e9 49 ff ff ff       	jmpq   68cd5c <step3d_t_mod_mp_step3d_t_tile_+0x60ec>
  68ce13:	4c 89 85 a8 fa ff ff 	mov    %r8,-0x558(%rbp)
  68ce1a:	4c 8b ad c8 fa ff ff 	mov    -0x538(%rbp),%r13
  68ce21:	8b 85 10 fb ff ff    	mov    -0x4f0(%rbp),%eax
  68ce27:	3b 85 00 fb ff ff    	cmp    -0x500(%rbp),%eax
  68ce2d:	0f 8c 51 07 00 00    	jl     68d584 <step3d_t_mod_mp_step3d_t_tile_+0x6914>
  68ce33:	48 8b bd 50 f8 ff ff 	mov    -0x7b0(%rbp),%rdi
  68ce3a:	48 8b 8d f0 f5 ff ff 	mov    -0xa10(%rbp),%rcx
  68ce41:	48 8b 95 50 f6 ff ff 	mov    -0x9b0(%rbp),%rdx
  68ce48:	4c 8d 4f 68          	lea    0x68(%rdi),%r9
  68ce4c:	49 8b 01             	mov    (%r9),%rax
  68ce4f:	49 8b 71 e8          	mov    -0x18(%r9),%rsi
  68ce53:	4d 8b 41 d0          	mov    -0x30(%r9),%r8
  68ce57:	4d 8b 71 98          	mov    -0x68(%r9),%r14
  68ce5b:	4d 8b 61 30          	mov    0x30(%r9),%r12
  68ce5f:	4d 8b 59 18          	mov    0x18(%r9),%r11
  68ce63:	48 89 85 48 fa ff ff 	mov    %rax,-0x5b8(%rbp)
  68ce6a:	48 89 b5 30 ff ff ff 	mov    %rsi,-0xd0(%rbp)
  68ce71:	4c 89 85 20 ff ff ff 	mov    %r8,-0xe0(%rbp)
  68ce78:	48 83 bd 90 fe ff ff 	cmpq   $0x8,-0x170(%rbp)
  68ce7f:	08 
  68ce80:	0f 85 61 02 00 00    	jne    68d0e7 <step3d_t_mod_mp_step3d_t_tile_+0x6477>
  68ce86:	48 83 bd 20 ff ff ff 	cmpq   $0x8,-0xe0(%rbp)
  68ce8d:	08 
  68ce8e:	0f 85 53 02 00 00    	jne    68d0e7 <step3d_t_mod_mp_step3d_t_tile_+0x6477>
  68ce94:	4d 89 e1             	mov    %r12,%r9
  68ce97:	4f 8d 14 5b          	lea    (%r11,%r11,2),%r10
  68ce9b:	4c 0f af 8d 80 fa ff 	imul   -0x580(%rbp),%r9
  68cea2:	ff 
  68cea3:	c5 fd 10 05 55 81 23 	vmovupd 0x238155(%rip),%ymm0        # 8c5000 <var$630.126.450+0x340>
  68ceaa:	00 
  68ceab:	c5 fb 10 15 a5 a4 23 	vmovsd 0x23a4a5(%rip),%xmm2        # 8c7358 <__STRLITPACK_199.115+0x3c8>
  68ceb2:	00 
  68ceb3:	c5 fb 10 1d 5d a1 23 	vmovsd 0x23a15d(%rip),%xmm3        # 8c7018 <__STRLITPACK_199.115+0x88>
  68ceba:	00 
  68cebb:	c5 fd 10 0d 1d 81 23 	vmovupd 0x23811d(%rip),%ymm1        # 8c4fe0 <var$630.126.450+0x320>
  68cec2:	00 
  68cec3:	48 8b 85 c0 fa ff ff 	mov    -0x540(%rbp),%rax
  68ceca:	48 03 d0             	add    %rax,%rdx
  68cecd:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68ced4:	48 89 95 68 fc ff ff 	mov    %rdx,-0x398(%rbp)
  68cedb:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  68cee2:	48 8b 95 38 f9 ff ff 	mov    -0x6c8(%rbp),%rdx
  68cee9:	49 89 f7             	mov    %rsi,%r15
  68ceec:	4d 89 f8             	mov    %r15,%r8
  68ceef:	48 8b b5 48 fa ff ff 	mov    -0x5b8(%rbp),%rsi
  68cef6:	48 8b bd f8 f8 ff ff 	mov    -0x708(%rbp),%rdi
  68cefd:	49 03 d5             	add    %r13,%rdx
  68cf00:	4c 8b ad a8 fa ff ff 	mov    -0x558(%rbp),%r13
  68cf07:	48 0f af d6          	imul   %rsi,%rdx
  68cf0b:	4c 0f af 85 78 f9 ff 	imul   -0x688(%rbp),%r8
  68cf12:	ff 
  68cf13:	49 0f af ff          	imul   %r15,%rdi
  68cf17:	49 f7 df             	neg    %r15
  68cf1a:	4c 03 e9             	add    %rcx,%r13
  68cf1d:	48 03 c8             	add    %rax,%rcx
  68cf20:	4b 8d 04 0e          	lea    (%r14,%r9,1),%rax
  68cf24:	4d 2b cc             	sub    %r12,%r9
  68cf27:	4d 03 e3             	add    %r11,%r12
  68cf2a:	4d 2b da             	sub    %r10,%r11
  68cf2d:	4c 03 d2             	add    %rdx,%r10
  68cf30:	4c 89 ad 28 fa ff ff 	mov    %r13,-0x5d8(%rbp)
  68cf37:	4d 2b cb             	sub    %r11,%r9
  68cf3a:	4c 8b ad d8 f9 ff ff 	mov    -0x628(%rbp),%r13
  68cf41:	4d 03 f5             	add    %r13,%r14
  68cf44:	4d 03 f1             	add    %r9,%r14
  68cf47:	49 03 c5             	add    %r13,%rax
  68cf4a:	4c 8b 8d 58 f9 ff ff 	mov    -0x6a8(%rbp),%r9
  68cf51:	4d 2b e2             	sub    %r10,%r12
  68cf54:	4c 0f af 8d 38 f9 ff 	imul   -0x6c8(%rbp),%r9
  68cf5b:	ff 
  68cf5c:	48 2b d6             	sub    %rsi,%rdx
  68cf5f:	48 03 f7             	add    %rdi,%rsi
  68cf62:	49 2b f8             	sub    %r8,%rdi
  68cf65:	49 2b c4             	sub    %r12,%rax
  68cf68:	48 2b d7             	sub    %rdi,%rdx
  68cf6b:	48 2b c6             	sub    %rsi,%rax
  68cf6e:	4c 03 f2             	add    %rdx,%r14
  68cf71:	49 03 c0             	add    %r8,%rax
  68cf74:	48 c7 85 40 fa ff ff 	movq   $0x0,-0x5c0(%rbp)
  68cf7b:	00 00 00 00 
  68cf7f:	4d 03 fe             	add    %r14,%r15
  68cf82:	4c 8b 85 40 fa ff ff 	mov    -0x5c0(%rbp),%r8
  68cf89:	4c 89 c7             	mov    %r8,%rdi
  68cf8c:	4c 03 8d a8 f9 ff ff 	add    -0x658(%rbp),%r9
  68cf93:	4c 8b ad c8 fa ff ff 	mov    -0x538(%rbp),%r13
  68cf9a:	48 8b 95 28 fa ff ff 	mov    -0x5d8(%rbp),%rdx
  68cfa1:	48 8b b5 70 fd ff ff 	mov    -0x290(%rbp),%rsi
  68cfa8:	48 89 8d 60 fc ff ff 	mov    %rcx,-0x3a0(%rbp)
  68cfaf:	4c 89 c1             	mov    %r8,%rcx
  68cfb2:	4c 89 bd 70 fc ff ff 	mov    %r15,-0x390(%rbp)
  68cfb9:	48 89 85 78 fc ff ff 	mov    %rax,-0x388(%rbp)
  68cfc0:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
  68cfc6:	3b 85 58 ff ff ff    	cmp    -0xa8(%rbp),%eax
  68cfcc:	0f 8c eb 00 00 00    	jl     68d0bd <step3d_t_mod_mp_step3d_t_tile_+0x644d>
  68cfd2:	48 83 fe 04          	cmp    $0x4,%rsi
  68cfd6:	0f 8c 86 3d 00 00    	jl     690d62 <step3d_t_mod_mp_step3d_t_tile_+0xa0f2>
  68cfdc:	4c 8b a5 68 fc ff ff 	mov    -0x398(%rbp),%r12
  68cfe3:	45 33 f6             	xor    %r14d,%r14d
  68cfe6:	4c 8b 9d 60 fc ff ff 	mov    -0x3a0(%rbp),%r11
  68cfed:	4e 8d 2c 02          	lea    (%rdx,%r8,1),%r13
  68cff1:	4c 8b 95 78 fc ff ff 	mov    -0x388(%rbp),%r10
  68cff8:	4c 8b bd 70 fc ff ff 	mov    -0x390(%rbp),%r15
  68cfff:	4d 03 e0             	add    %r8,%r12
  68d002:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  68d009:	4d 03 d8             	add    %r8,%r11
  68d00c:	48 89 c6             	mov    %rax,%rsi
  68d00f:	4c 03 d7             	add    %rdi,%r10
  68d012:	4c 03 ff             	add    %rdi,%r15
  68d015:	c4 81 7d 10 24 f7    	vmovupd (%r15,%r14,8),%ymm4
  68d01b:	c4 81 7d 10 2c f3    	vmovupd (%r11,%r14,8),%ymm5
  68d021:	c4 81 75 59 3c f1    	vmulpd (%r9,%r14,8),%ymm1,%ymm7
  68d027:	c4 01 5d 58 04 f2    	vaddpd (%r10,%r14,8),%ymm4,%ymm8
  68d02d:	c4 81 55 5c 74 f5 f8 	vsubpd -0x8(%r13,%r14,8),%ymm5,%ymm6
  68d034:	c4 62 cd bc c0       	vfnmadd231pd %ymm0,%ymm6,%ymm8
  68d039:	c4 41 45 59 c8       	vmulpd %ymm8,%ymm7,%ymm9
  68d03e:	c4 01 7d 11 0c f4    	vmovupd %ymm9,(%r12,%r14,8)
  68d044:	49 83 c6 04          	add    $0x4,%r14
  68d048:	4c 3b f6             	cmp    %rsi,%r14
  68d04b:	72 c8                	jb     68d015 <step3d_t_mod_mp_step3d_t_tile_+0x63a5>
  68d04d:	48 8b b5 70 fd ff ff 	mov    -0x290(%rbp),%rsi
  68d054:	48 3b c6             	cmp    %rsi,%rax
  68d057:	73 64                	jae    68d0bd <step3d_t_mod_mp_step3d_t_tile_+0x644d>
  68d059:	4c 8b 9d 68 fc ff ff 	mov    -0x398(%rbp),%r11
  68d060:	4e 8d 24 02          	lea    (%rdx,%r8,1),%r12
  68d064:	4c 8b 95 60 fc ff ff 	mov    -0x3a0(%rbp),%r10
  68d06b:	4c 8b b5 78 fc ff ff 	mov    -0x388(%rbp),%r14
  68d072:	4c 8b ad 70 fc ff ff 	mov    -0x390(%rbp),%r13
  68d079:	4d 03 d8             	add    %r8,%r11
  68d07c:	4d 03 d0             	add    %r8,%r10
  68d07f:	4c 03 f7             	add    %rdi,%r14
  68d082:	4c 03 ef             	add    %rdi,%r13
  68d085:	c4 c1 7b 10 24 c2    	vmovsd (%r10,%rax,8),%xmm4
  68d08b:	c4 c1 7b 10 6c c5 00 	vmovsd 0x0(%r13,%rax,8),%xmm5
  68d092:	c4 c1 63 59 3c c1    	vmulsd (%r9,%rax,8),%xmm3,%xmm7
  68d098:	c4 c1 5b 5c 74 c4 f8 	vsubsd -0x8(%r12,%rax,8),%xmm4,%xmm6
  68d09f:	c4 41 53 58 04 c6    	vaddsd (%r14,%rax,8),%xmm5,%xmm8
  68d0a5:	c4 62 c9 bd c2       	vfnmadd231sd %xmm2,%xmm6,%xmm8
  68d0aa:	c4 41 43 59 c8       	vmulsd %xmm8,%xmm7,%xmm9
  68d0af:	c4 41 7b 11 0c c3    	vmovsd %xmm9,(%r11,%rax,8)
  68d0b5:	48 ff c0             	inc    %rax
  68d0b8:	48 3b c6             	cmp    %rsi,%rax
  68d0bb:	72 c8                	jb     68d085 <step3d_t_mod_mp_step3d_t_tile_+0x6415>
  68d0bd:	48 ff c1             	inc    %rcx
  68d0c0:	4c 03 85 70 ff ff ff 	add    -0x90(%rbp),%r8
  68d0c7:	4c 03 8d 68 fe ff ff 	add    -0x198(%rbp),%r9
  68d0ce:	48 03 bd 30 ff ff ff 	add    -0xd0(%rbp),%rdi
  68d0d5:	48 3b 8d 38 fe ff ff 	cmp    -0x1c8(%rbp),%rcx
  68d0dc:	0f 82 de fe ff ff    	jb     68cfc0 <step3d_t_mod_mp_step3d_t_tile_+0x6350>
  68d0e2:	e9 96 04 00 00       	jmpq   68d57d <step3d_t_mod_mp_step3d_t_tile_+0x690d>
  68d0e7:	4c 8b bd 38 f9 ff ff 	mov    -0x6c8(%rbp),%r15
  68d0ee:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68d0f5:	4c 8b ad 58 f9 ff ff 	mov    -0x6a8(%rbp),%r13
  68d0fc:	4d 0f af ef          	imul   %r15,%r13
  68d100:	4c 8b 8d 40 f9 ff ff 	mov    -0x6c0(%rbp),%r9
  68d107:	48 89 f7             	mov    %rsi,%rdi
  68d10a:	4d 89 c2             	mov    %r8,%r10
  68d10d:	4c 89 d0             	mov    %r10,%rax
  68d110:	4f 8d 04 29          	lea    (%r9,%r13,1),%r8
  68d114:	4c 03 ad 48 f9 ff ff 	add    -0x6b8(%rbp),%r13
  68d11b:	4d 89 e1             	mov    %r12,%r9
  68d11e:	4c 89 ad f8 fc ff ff 	mov    %r13,-0x308(%rbp)
  68d125:	4c 8b ad 08 f9 ff ff 	mov    -0x6f8(%rbp),%r13
  68d12c:	4c 0f af 8d 80 fa ff 	imul   -0x580(%rbp),%r9
  68d133:	ff 
  68d134:	48 0f af bd 78 f9 ff 	imul   -0x688(%rbp),%rdi
  68d13b:	ff 
  68d13c:	48 0f af 85 98 fb ff 	imul   -0x468(%rbp),%rax
  68d143:	ff 
  68d144:	4d 03 f1             	add    %r9,%r14
  68d147:	4d 03 fd             	add    %r13,%r15
  68d14a:	4c 8b ad 48 fa ff ff 	mov    -0x5b8(%rbp),%r13
  68d151:	4d 89 f1             	mov    %r14,%r9
  68d154:	4d 0f af fd          	imul   %r13,%r15
  68d158:	4c 89 85 f0 fc ff ff 	mov    %r8,-0x310(%rbp)
  68d15f:	4f 8d 04 5b          	lea    (%r11,%r11,2),%r8
  68d163:	4d 2b cc             	sub    %r12,%r9
  68d166:	4d 03 e3             	add    %r11,%r12
  68d169:	4d 2b d8             	sub    %r8,%r11
  68d16c:	4d 03 c7             	add    %r15,%r8
  68d16f:	4d 2b fd             	sub    %r13,%r15
  68d172:	4d 2b f4             	sub    %r12,%r14
  68d175:	4d 2b df             	sub    %r15,%r11
  68d178:	4d 2b cb             	sub    %r11,%r9
  68d17b:	4c 8b 9d f8 f8 ff ff 	mov    -0x708(%rbp),%r11
  68d182:	4c 0f af de          	imul   %rsi,%r11
  68d186:	4d 03 eb             	add    %r11,%r13
  68d189:	48 f7 de             	neg    %rsi
  68d18c:	4d 2b c5             	sub    %r13,%r8
  68d18f:	49 89 f4             	mov    %rsi,%r12
  68d192:	4d 03 f0             	add    %r8,%r14
  68d195:	4c 2b df             	sub    %rdi,%r11
  68d198:	4c 8b 85 00 f9 ff ff 	mov    -0x700(%rbp),%r8
  68d19f:	4d 0f af c2          	imul   %r10,%r8
  68d1a3:	4d 89 c5             	mov    %r8,%r13
  68d1a6:	4d 2b e0             	sub    %r8,%r12
  68d1a9:	49 f7 d8             	neg    %r8
  68d1ac:	4c 2b e8             	sub    %rax,%r13
  68d1af:	4c 03 c7             	add    %rdi,%r8
  68d1b2:	48 03 fe             	add    %rsi,%rdi
  68d1b5:	49 2b fd             	sub    %r13,%rdi
  68d1b8:	49 f7 dc             	neg    %r12
  68d1bb:	4d 03 c6             	add    %r14,%r8
  68d1be:	4c 03 f7             	add    %rdi,%r14
  68d1c1:	4d 03 e3             	add    %r11,%r12
  68d1c4:	4d 03 dd             	add    %r13,%r11
  68d1c7:	49 f7 dc             	neg    %r12
  68d1ca:	4d 03 e1             	add    %r9,%r12
  68d1cd:	4d 2b cb             	sub    %r11,%r9
  68d1d0:	4c 03 e0             	add    %rax,%r12
  68d1d3:	49 03 c0             	add    %r8,%rax
  68d1d6:	4c 89 a5 10 fd ff ff 	mov    %r12,-0x2f0(%rbp)
  68d1dd:	4f 8d 24 56          	lea    (%r14,%r10,2),%r12
  68d1e1:	4c 8b b5 b0 fa ff ff 	mov    -0x550(%rbp),%r14
  68d1e8:	48 c7 85 00 fe ff ff 	movq   $0x0,-0x200(%rbp)
  68d1ef:	00 00 00 00 
  68d1f3:	4f 8d 1c 51          	lea    (%r9,%r10,2),%r11
  68d1f7:	48 8b b5 c0 fa ff ff 	mov    -0x540(%rbp),%rsi
  68d1fe:	4c 8b 85 00 fe ff ff 	mov    -0x200(%rbp),%r8
  68d205:	4d 8d 14 16          	lea    (%r14,%rdx,1),%r10
  68d209:	48 03 d6             	add    %rsi,%rdx
  68d20c:	4d 8d 0c 0e          	lea    (%r14,%rcx,1),%r9
  68d210:	4c 8b b5 a8 fa ff ff 	mov    -0x558(%rbp),%r14
  68d217:	4c 89 c7             	mov    %r8,%rdi
  68d21a:	4c 89 a5 88 fc ff ff 	mov    %r12,-0x378(%rbp)
  68d221:	4d 89 c5             	mov    %r8,%r13
  68d224:	4c 89 9d 80 fc ff ff 	mov    %r11,-0x380(%rbp)
  68d22b:	4c 03 f1             	add    %rcx,%r14
  68d22e:	48 03 ce             	add    %rsi,%rcx
  68d231:	48 89 fe             	mov    %rdi,%rsi
  68d234:	48 89 8d 60 fc ff ff 	mov    %rcx,-0x3a0(%rbp)
  68d23b:	48 89 95 68 fc ff ff 	mov    %rdx,-0x398(%rbp)
  68d242:	4c 89 b5 90 fc ff ff 	mov    %r14,-0x370(%rbp)
  68d249:	4c 89 8d 98 fc ff ff 	mov    %r9,-0x368(%rbp)
  68d250:	4c 89 95 a0 fc ff ff 	mov    %r10,-0x360(%rbp)
  68d257:	48 89 85 a8 fc ff ff 	mov    %rax,-0x358(%rbp)
  68d25e:	c5 fb 10 0d f2 a0 23 	vmovsd 0x23a0f2(%rip),%xmm1        # 8c7358 <__STRLITPACK_199.115+0x3c8>
  68d265:	00 
  68d266:	c5 fb 10 25 aa 9d 23 	vmovsd 0x239daa(%rip),%xmm4        # 8c7018 <__STRLITPACK_199.115+0x88>
  68d26d:	00 
  68d26e:	c5 f9 10 15 3a 95 23 	vmovupd 0x23953a(%rip),%xmm2        # 8c67b0 <__STRLITPACK_19.34+0x20>
  68d275:	00 
  68d276:	c5 f9 10 1d 22 95 23 	vmovupd 0x239522(%rip),%xmm3        # 8c67a0 <__STRLITPACK_19.34+0x10>
  68d27d:	00 
  68d27e:	4c 8b a5 70 fd ff ff 	mov    -0x290(%rbp),%r12
  68d285:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
  68d28b:	3b 85 58 ff ff ff    	cmp    -0xa8(%rbp),%eax
  68d291:	0f 8c c1 02 00 00    	jl     68d558 <step3d_t_mod_mp_step3d_t_tile_+0x68e8>
  68d297:	49 83 fc 04          	cmp    $0x4,%r12
  68d29b:	0f 8c f3 3e 00 00    	jl     691194 <step3d_t_mod_mp_step3d_t_tile_+0xa524>
  68d2a1:	48 8b 85 68 fc ff ff 	mov    -0x398(%rbp),%rax
  68d2a8:	4c 8b b5 98 fc ff ff 	mov    -0x368(%rbp),%r14
  68d2af:	4c 8b bd a0 fc ff ff 	mov    -0x360(%rbp),%r15
  68d2b6:	4c 8b 9d 78 ff ff ff 	mov    -0x88(%rbp),%r11
  68d2bd:	48 03 c6             	add    %rsi,%rax
  68d2c0:	48 89 85 c0 fc ff ff 	mov    %rax,-0x340(%rbp)
  68d2c7:	4c 03 f6             	add    %rsi,%r14
  68d2ca:	48 8b 85 60 fc ff ff 	mov    -0x3a0(%rbp),%rax
  68d2d1:	4c 03 fe             	add    %rsi,%r15
  68d2d4:	4c 8b 95 f0 fc ff ff 	mov    -0x310(%rbp),%r10
  68d2db:	4c 8b 8d 10 fd ff ff 	mov    -0x2f0(%rbp),%r9
  68d2e2:	48 8b 8d a8 fc ff ff 	mov    -0x358(%rbp),%rcx
  68d2e9:	48 03 c6             	add    %rsi,%rax
  68d2ec:	48 89 85 b8 fc ff ff 	mov    %rax,-0x348(%rbp)
  68d2f3:	4d 03 d0             	add    %r8,%r10
  68d2f6:	48 8b 85 f8 fc ff ff 	mov    -0x308(%rbp),%rax
  68d2fd:	4c 03 cf             	add    %rdi,%r9
  68d300:	48 8b 95 90 fc ff ff 	mov    -0x370(%rbp),%rdx
  68d307:	48 03 cf             	add    %rdi,%rcx
  68d30a:	4c 89 9d f8 fe ff ff 	mov    %r11,-0x108(%rbp)
  68d311:	45 33 db             	xor    %r11d,%r11d
  68d314:	4c 89 75 e0          	mov    %r14,-0x20(%rbp)
  68d318:	49 03 c0             	add    %r8,%rax
  68d31b:	48 89 85 b0 fc ff ff 	mov    %rax,-0x350(%rbp)
  68d322:	48 03 d6             	add    %rsi,%rdx
  68d325:	48 8b 85 88 fc ff ff 	mov    -0x378(%rbp),%rax
  68d32c:	48 89 b5 e8 fd ff ff 	mov    %rsi,-0x218(%rbp)
  68d333:	48 89 bd f0 fd ff ff 	mov    %rdi,-0x210(%rbp)
  68d33a:	4c 89 85 f8 fd ff ff 	mov    %r8,-0x208(%rbp)
  68d341:	48 03 c7             	add    %rdi,%rax
  68d344:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  68d348:	48 8b 85 80 fc ff ff 	mov    -0x380(%rbp),%rax
  68d34f:	4c 89 ad 00 fe ff ff 	mov    %r13,-0x200(%rbp)
  68d356:	4c 89 7d d8          	mov    %r15,-0x28(%rbp)
  68d35a:	4c 8b 85 b8 fc ff ff 	mov    -0x348(%rbp),%r8
  68d361:	48 03 c7             	add    %rdi,%rax
  68d364:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  68d368:	33 c0                	xor    %eax,%eax
  68d36a:	48 89 c6             	mov    %rax,%rsi
  68d36d:	48 8b bd b0 fc ff ff 	mov    -0x350(%rbp),%rdi
  68d374:	4c 8b a5 c0 fc ff ff 	mov    -0x340(%rbp),%r12
  68d37b:	4c 8b ad 20 ff ff ff 	mov    -0xe0(%rbp),%r13
  68d382:	4c 8b b5 90 fe ff ff 	mov    -0x170(%rbp),%r14
  68d389:	4c 8b 7d e0          	mov    -0x20(%rbp),%r15
  68d38d:	c4 81 79 10 2c d8    	vmovupd (%r8,%r11,8),%xmm5
  68d393:	c4 81 79 10 74 df 10 	vmovupd 0x10(%r15,%r11,8),%xmm6
  68d39a:	c4 21 51 5c 6c da f8 	vsubpd -0x8(%rdx,%r11,8),%xmm5,%xmm13
  68d3a1:	c4 a1 49 5c 44 da 08 	vsubpd 0x8(%rdx,%r11,8),%xmm6,%xmm0
  68d3a8:	4d 8d 3c 02          	lea    (%r10,%rax,1),%r15
  68d3ac:	c4 c1 7b 10 3f       	vmovsd (%r15),%xmm7
  68d3b1:	c4 01 41 16 04 37    	vmovhpd (%r15,%r14,1),%xmm7,%xmm8
  68d3b7:	4d 8d 3c 31          	lea    (%r9,%rsi,1),%r15
  68d3bb:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  68d3c0:	c4 01 31 16 1c 2f    	vmovhpd (%r15,%r13,1),%xmm9,%xmm11
  68d3c6:	4c 8d 3c 31          	lea    (%rcx,%rsi,1),%r15
  68d3ca:	c4 41 7b 10 17       	vmovsd (%r15),%xmm10
  68d3cf:	c4 01 29 16 24 2f    	vmovhpd (%r15,%r13,1),%xmm10,%xmm12
  68d3d5:	4c 8d 3c 07          	lea    (%rdi,%rax,1),%r15
  68d3d9:	c4 c1 7b 10 37       	vmovsd (%r15),%xmm6
  68d3de:	4a 8d 04 b0          	lea    (%rax,%r14,4),%rax
  68d3e2:	c4 81 49 16 3c 37    	vmovhpd (%r15,%r14,1),%xmm6,%xmm7
  68d3e8:	4c 8b 7d f0          	mov    -0x10(%rbp),%r15
  68d3ec:	c5 39 59 f3          	vmulpd %xmm3,%xmm8,%xmm14
  68d3f0:	c4 41 21 58 fc       	vaddpd %xmm12,%xmm11,%xmm15
  68d3f5:	c5 41 59 e3          	vmulpd %xmm3,%xmm7,%xmm12
  68d3f9:	c4 62 91 bc fa       	vfnmadd231pd %xmm2,%xmm13,%xmm15
  68d3fe:	c4 c1 09 59 ef       	vmulpd %xmm15,%xmm14,%xmm5
  68d403:	c4 81 79 11 2c dc    	vmovupd %xmm5,(%r12,%r11,8)
  68d409:	4c 03 fe             	add    %rsi,%r15
  68d40c:	c4 41 7b 10 07       	vmovsd (%r15),%xmm8
  68d411:	c4 01 39 16 14 2f    	vmovhpd (%r15,%r13,1),%xmm8,%xmm10
  68d417:	4c 8b 7d e8          	mov    -0x18(%rbp),%r15
  68d41b:	4c 03 fe             	add    %rsi,%r15
  68d41e:	c4 41 7b 10 0f       	vmovsd (%r15),%xmm9
  68d423:	4a 8d 34 ae          	lea    (%rsi,%r13,4),%rsi
  68d427:	c4 01 31 16 1c 2f    	vmovhpd (%r15,%r13,1),%xmm9,%xmm11
  68d42d:	c4 41 29 58 eb       	vaddpd %xmm11,%xmm10,%xmm13
  68d432:	c4 62 f9 bc ea       	vfnmadd231pd %xmm2,%xmm0,%xmm13
  68d437:	c4 c1 19 59 c5       	vmulpd %xmm13,%xmm12,%xmm0
  68d43c:	4c 8b 7d d8          	mov    -0x28(%rbp),%r15
  68d440:	c4 81 79 11 44 df 10 	vmovupd %xmm0,0x10(%r15,%r11,8)
  68d447:	49 83 c3 04          	add    $0x4,%r11
  68d44b:	4c 3b 9d 78 ff ff ff 	cmp    -0x88(%rbp),%r11
  68d452:	0f 82 31 ff ff ff    	jb     68d389 <step3d_t_mod_mp_step3d_t_tile_+0x6719>
  68d458:	48 8b b5 e8 fd ff ff 	mov    -0x218(%rbp),%rsi
  68d45f:	48 8b bd f0 fd ff ff 	mov    -0x210(%rbp),%rdi
  68d466:	4c 8b 85 f8 fd ff ff 	mov    -0x208(%rbp),%r8
  68d46d:	4c 8b ad 00 fe ff ff 	mov    -0x200(%rbp),%r13
  68d474:	4c 8b a5 70 fd ff ff 	mov    -0x290(%rbp),%r12
  68d47b:	4c 8b 9d 20 ff ff ff 	mov    -0xe0(%rbp),%r11
  68d482:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
  68d489:	4c 8b 95 90 fe ff ff 	mov    -0x170(%rbp),%r10
  68d490:	4c 0f af d8          	imul   %rax,%r11
  68d494:	4c 0f af d0          	imul   %rax,%r10
  68d498:	49 3b c4             	cmp    %r12,%rax
  68d49b:	0f 83 b7 00 00 00    	jae    68d558 <step3d_t_mod_mp_step3d_t_tile_+0x68e8>
  68d4a1:	4c 8b 8d f0 fc ff ff 	mov    -0x310(%rbp),%r9
  68d4a8:	48 8b 8d 10 fd ff ff 	mov    -0x2f0(%rbp),%rcx
  68d4af:	48 8b 95 a8 fc ff ff 	mov    -0x358(%rbp),%rdx
  68d4b6:	48 8b 85 90 fc ff ff 	mov    -0x370(%rbp),%rax
  68d4bd:	4d 03 c8             	add    %r8,%r9
  68d4c0:	4c 8b bd 68 fc ff ff 	mov    -0x398(%rbp),%r15
  68d4c7:	48 03 cf             	add    %rdi,%rcx
  68d4ca:	4c 8b b5 60 fc ff ff 	mov    -0x3a0(%rbp),%r14
  68d4d1:	48 03 d7             	add    %rdi,%rdx
  68d4d4:	48 89 bd f0 fd ff ff 	mov    %rdi,-0x210(%rbp)
  68d4db:	48 03 c6             	add    %rsi,%rax
  68d4de:	4c 89 85 f8 fd ff ff 	mov    %r8,-0x208(%rbp)
  68d4e5:	4c 03 fe             	add    %rsi,%r15
  68d4e8:	4c 89 ad 00 fe ff ff 	mov    %r13,-0x200(%rbp)
  68d4ef:	4c 03 f6             	add    %rsi,%r14
  68d4f2:	48 8b bd f8 fe ff ff 	mov    -0x108(%rbp),%rdi
  68d4f9:	4c 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%r8
  68d500:	4c 8b ad 90 fe ff ff 	mov    -0x170(%rbp),%r13
  68d507:	c4 c1 7b 10 04 fe    	vmovsd (%r14,%rdi,8),%xmm0
  68d50d:	c4 c1 7b 10 2c 0b    	vmovsd (%r11,%rcx,1),%xmm5
  68d513:	c4 81 5b 59 3c 0a    	vmulsd (%r10,%r9,1),%xmm4,%xmm7
  68d519:	4d 03 d5             	add    %r13,%r10
  68d51c:	c5 fb 5c 74 f8 f8    	vsubsd -0x8(%rax,%rdi,8),%xmm0,%xmm6
  68d522:	c4 41 53 58 04 13    	vaddsd (%r11,%rdx,1),%xmm5,%xmm8
  68d528:	c4 62 c9 bd c1       	vfnmadd231sd %xmm1,%xmm6,%xmm8
  68d52d:	4d 03 d8             	add    %r8,%r11
  68d530:	c4 41 43 59 c8       	vmulsd %xmm8,%xmm7,%xmm9
  68d535:	c4 41 7b 11 0c ff    	vmovsd %xmm9,(%r15,%rdi,8)
  68d53b:	48 ff c7             	inc    %rdi
  68d53e:	49 3b fc             	cmp    %r12,%rdi
  68d541:	72 c4                	jb     68d507 <step3d_t_mod_mp_step3d_t_tile_+0x6897>
  68d543:	48 8b bd f0 fd ff ff 	mov    -0x210(%rbp),%rdi
  68d54a:	4c 8b 85 f8 fd ff ff 	mov    -0x208(%rbp),%r8
  68d551:	4c 8b ad 00 fe ff ff 	mov    -0x200(%rbp),%r13
  68d558:	49 ff c5             	inc    %r13
  68d55b:	4c 03 85 68 fe ff ff 	add    -0x198(%rbp),%r8
  68d562:	48 03 bd 30 ff ff ff 	add    -0xd0(%rbp),%rdi
  68d569:	48 03 b5 70 ff ff ff 	add    -0x90(%rbp),%rsi
  68d570:	4c 3b ad 38 fe ff ff 	cmp    -0x1c8(%rbp),%r13
  68d577:	0f 82 08 fd ff ff    	jb     68d285 <step3d_t_mod_mp_step3d_t_tile_+0x6615>
  68d57d:	4c 8b ad c8 fa ff ff 	mov    -0x538(%rbp),%r13
  68d584:	4c 8b 15 85 0f 4b 00 	mov    0x4b0f85(%rip),%r10        # b3e510 <mod_scalars_mp_ltracersrc_+0x30>
  68d58b:	45 33 e4             	xor    %r12d,%r12d
  68d58e:	4c 8b 1d 8b 0f 4b 00 	mov    0x4b0f8b(%rip),%r11        # b3e520 <mod_scalars_mp_ltracersrc_+0x40>
  68d595:	4d 85 d2             	test   %r10,%r10
  68d598:	0f 8e 91 00 00 00    	jle    68d62f <step3d_t_mod_mp_step3d_t_tile_+0x69bf>
  68d59e:	4c 89 d2             	mov    %r10,%rdx
  68d5a1:	b9 01 00 00 00       	mov    $0x1,%ecx
  68d5a6:	4c 8b 0d 33 0f 4b 00 	mov    0x4b0f33(%rip),%r9        # b3e4e0 <mod_scalars_mp_ltracersrc_>
  68d5ad:	33 c0                	xor    %eax,%eax
  68d5af:	4c 8b 35 82 0f 4b 00 	mov    0x4b0f82(%rip),%r14        # b3e538 <mod_scalars_mp_ltracersrc_+0x58>
  68d5b6:	4c 8b 05 73 0f 4b 00 	mov    0x4b0f73(%rip),%r8        # b3e530 <mod_scalars_mp_ltracersrc_+0x50>
  68d5bd:	48 d1 ea             	shr    %rdx
  68d5c0:	74 45                	je     68d607 <step3d_t_mod_mp_step3d_t_tile_+0x6997>
  68d5c2:	4d 89 ef             	mov    %r13,%r15
  68d5c5:	4c 89 c6             	mov    %r8,%rsi
  68d5c8:	4d 0f af f8          	imul   %r8,%r15
  68d5cc:	49 0f af f6          	imul   %r14,%rsi
  68d5d0:	4c 89 ff             	mov    %r15,%rdi
  68d5d3:	4a 8d 0c 9d 00 00 00 	lea    0x0(,%r11,4),%rcx
  68d5da:	00 
  68d5db:	48 f7 d9             	neg    %rcx
  68d5de:	4f 8d 3c 9f          	lea    (%r15,%r11,4),%r15
  68d5e2:	49 03 c9             	add    %r9,%rcx
  68d5e5:	48 2b fe             	sub    %rsi,%rdi
  68d5e8:	49 03 cf             	add    %r15,%rcx
  68d5eb:	49 03 f9             	add    %r9,%rdi
  68d5ee:	48 2b ce             	sub    %rsi,%rcx
  68d5f1:	44 0b 24 c1          	or     (%rcx,%rax,8),%r12d
  68d5f5:	44 0b 64 c7 04       	or     0x4(%rdi,%rax,8),%r12d
  68d5fa:	48 ff c0             	inc    %rax
  68d5fd:	48 3b c2             	cmp    %rdx,%rax
  68d600:	72 ef                	jb     68d5f1 <step3d_t_mod_mp_step3d_t_tile_+0x6981>
  68d602:	48 8d 4c 00 01       	lea    0x1(%rax,%rax,1),%rcx
  68d607:	48 8d 41 ff          	lea    -0x1(%rcx),%rax
  68d60b:	49 3b c2             	cmp    %r10,%rax
  68d60e:	73 1f                	jae    68d62f <step3d_t_mod_mp_step3d_t_tile_+0x69bf>
  68d610:	49 f7 de             	neg    %r14
  68d613:	4c 89 da             	mov    %r11,%rdx
  68d616:	4d 03 f5             	add    %r13,%r14
  68d619:	49 8d 44 0b ff       	lea    -0x1(%r11,%rcx,1),%rax
  68d61e:	4d 0f af f0          	imul   %r8,%r14
  68d622:	48 f7 da             	neg    %rdx
  68d625:	4d 03 f1             	add    %r9,%r14
  68d628:	48 03 d0             	add    %rax,%rdx
  68d62b:	45 0b 24 96          	or     (%r14,%rdx,4),%r12d
  68d62f:	48 8b 05 4a 40 4b 00 	mov    0x4b404a(%rip),%rax        # b41680 <mod_scalars_mp_luvsrc_+0x40>
  68d636:	48 c1 e0 02          	shl    $0x2,%rax
  68d63a:	48 f7 d8             	neg    %rax
  68d63d:	48 03 05 fc 3f 4b 00 	add    0x4b3ffc(%rip),%rax        # b41640 <mod_scalars_mp_luvsrc_>
  68d644:	42 f6 04 a8 01       	testb  $0x1,(%rax,%r13,4)
  68d649:	0f 84 05 04 00 00    	je     68da54 <step3d_t_mod_mp_step3d_t_tile_+0x6de4>
  68d64f:	41 f7 c4 01 00 00 00 	test   $0x1,%r12d
  68d656:	0f 84 f8 03 00 00    	je     68da54 <step3d_t_mod_mp_step3d_t_tile_+0x6de4>
  68d65c:	48 8b 05 fd 61 4b 00 	mov    0x4b61fd(%rip),%rax        # b43860 <mod_sources_mp_nsrc_+0x40>
  68d663:	48 c1 e0 02          	shl    $0x2,%rax
  68d667:	48 f7 d8             	neg    %rax
  68d66a:	48 03 05 af 61 4b 00 	add    0x4b61af(%rip),%rax        # b43820 <mod_sources_mp_nsrc_>
  68d671:	48 c7 85 c8 f8 ff ff 	movq   $0x0,-0x738(%rbp)
  68d678:	00 00 00 00 
  68d67c:	4a 63 14 a8          	movslq (%rax,%r13,4),%rdx
  68d680:	48 89 95 88 fa ff ff 	mov    %rdx,-0x578(%rbp)
  68d687:	48 85 d2             	test   %rdx,%rdx
  68d68a:	0f 8e c4 03 00 00    	jle    68da54 <step3d_t_mod_mp_step3d_t_tile_+0x6de4>
  68d690:	48 8b 0d 69 61 4b 00 	mov    0x4b6169(%rip),%rcx        # b43800 <mod_sources_mp_sources_+0x40>
  68d697:	49 f7 db             	neg    %r11
  68d69a:	4c 8b 15 97 0e 4b 00 	mov    0x4b0e97(%rip),%r10        # b3e538 <mod_scalars_mp_ltracersrc_+0x58>
  68d6a1:	48 f7 d9             	neg    %rcx
  68d6a4:	48 8b b5 50 f6 ff ff 	mov    -0x9b0(%rbp),%rsi
  68d6ab:	49 f7 da             	neg    %r10
  68d6ae:	48 8b 85 60 f8 ff ff 	mov    -0x7a0(%rbp),%rax
  68d6b5:	48 2b f0             	sub    %rax,%rsi
  68d6b8:	4c 8b bd b0 f6 ff ff 	mov    -0x950(%rbp),%r15
  68d6bf:	49 03 cd             	add    %r13,%rcx
  68d6c2:	4c 2b f8             	sub    %rax,%r15
  68d6c5:	4d 03 d5             	add    %r13,%r10
  68d6c8:	48 8b 85 38 f9 ff ff 	mov    -0x6c8(%rbp),%rax
  68d6cf:	4c 89 ad c8 fa ff ff 	mov    %r13,-0x538(%rbp)
  68d6d6:	4c 8b ad 58 f9 ff ff 	mov    -0x6a8(%rbp),%r13
  68d6dd:	4c 0f af e8          	imul   %rax,%r13
  68d6e1:	4c 0f af 15 47 0e 4b 	imul   0x4b0e47(%rip),%r10        # b3e530 <mod_scalars_mp_ltracersrc_+0x50>
  68d6e8:	00 
  68d6e9:	4c 03 9d 60 fa ff ff 	add    -0x5a0(%rbp),%r11
  68d6f0:	4c 89 9d c0 f8 ff ff 	mov    %r11,-0x740(%rbp)
  68d6f7:	4c 8b 9d 50 f8 ff ff 	mov    -0x7b0(%rbp),%r11
  68d6fe:	4c 03 ad 58 f8 ff ff 	add    -0x7a8(%rbp),%r13
  68d705:	4c 89 ad 88 f8 ff ff 	mov    %r13,-0x778(%rbp)
  68d70c:	4d 8b 8b 98 00 00 00 	mov    0x98(%r11),%r9
  68d713:	4c 8b ad 80 fa ff ff 	mov    -0x580(%rbp),%r13
  68d71a:	4d 0f af e9          	imul   %r9,%r13
  68d71e:	4c 8b b5 90 fb ff ff 	mov    -0x470(%rbp),%r14
  68d725:	49 2b f6             	sub    %r14,%rsi
  68d728:	49 8b 53 38          	mov    0x38(%r11),%rdx
  68d72c:	4d 2b fe             	sub    %r14,%r15
  68d72f:	48 89 b5 78 f8 ff ff 	mov    %rsi,-0x788(%rbp)
  68d736:	4d 8b 83 80 00 00 00 	mov    0x80(%r11),%r8
  68d73d:	49 8b 7b 68          	mov    0x68(%r11),%rdi
  68d741:	49 8b 73 50          	mov    0x50(%r11),%rsi
  68d745:	4d 03 2b             	add    (%r11),%r13
  68d748:	4c 8b 9d 00 f9 ff ff 	mov    -0x700(%rbp),%r11
  68d74f:	48 89 95 a8 f8 ff ff 	mov    %rdx,-0x758(%rbp)
  68d756:	4c 0f af da          	imul   %rdx,%r11
  68d75a:	48 89 ca             	mov    %rcx,%rdx
  68d75d:	48 c1 e2 05          	shl    $0x5,%rdx
  68d761:	48 03 d1             	add    %rcx,%rdx
  68d764:	48 c1 e2 05          	shl    $0x5,%rdx
  68d768:	48 8b 0d 51 60 4b 00 	mov    0x4b6051(%rip),%rcx        # b437c0 <mod_sources_mp_sources_>
  68d76f:	4c 8b a5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r12
  68d776:	4c 03 15 63 0d 4b 00 	add    0x4b0d63(%rip),%r10        # b3e4e0 <mod_scalars_mp_ltracersrc_>
  68d77d:	4c 89 95 90 f8 ff ff 	mov    %r10,-0x770(%rbp)
  68d784:	4c 8b 74 11 38       	mov    0x38(%rcx,%rdx,1),%r14
  68d789:	4d 8d 14 04          	lea    (%r12,%rax,1),%r10
  68d78d:	48 8b 44 11 40       	mov    0x40(%rcx,%rdx,1),%rax
  68d792:	49 0f af c6          	imul   %r14,%rax
  68d796:	4c 89 bd 80 f8 ff ff 	mov    %r15,-0x780(%rbp)
  68d79d:	4c 8b 3c 11          	mov    (%rcx,%rdx,1),%r15
  68d7a1:	4c 89 b5 90 fa ff ff 	mov    %r14,-0x570(%rbp)
  68d7a8:	4c 2b f8             	sub    %rax,%r15
  68d7ab:	4c 8b b4 11 88 00 00 	mov    0x88(%rcx,%rdx,1),%r14
  68d7b2:	00 
  68d7b3:	48 8b 84 11 80 00 00 	mov    0x80(%rcx,%rdx,1),%rax
  68d7ba:	00 
  68d7bb:	4c 0f af f0          	imul   %rax,%r14
  68d7bf:	4c 89 bd 98 f8 ff ff 	mov    %r15,-0x768(%rbp)
  68d7c6:	4c 8b 7c 11 48       	mov    0x48(%rcx,%rdx,1),%r15
  68d7cb:	48 89 85 98 fa ff ff 	mov    %rax,-0x568(%rbp)
  68d7d2:	4d 2b fe             	sub    %r14,%r15
  68d7d5:	4c 8b b4 11 d0 00 00 	mov    0xd0(%rcx,%rdx,1),%r14
  68d7dc:	00 
  68d7dd:	48 8b 84 11 c8 00 00 	mov    0xc8(%rcx,%rdx,1),%rax
  68d7e4:	00 
  68d7e5:	4c 0f af f0          	imul   %rax,%r14
  68d7e9:	4c 89 95 70 f8 ff ff 	mov    %r10,-0x790(%rbp)
  68d7f0:	4c 0f af d7          	imul   %rdi,%r10
  68d7f4:	4c 8b a5 f8 f8 ff ff 	mov    -0x708(%rbp),%r12
  68d7fb:	4c 0f af e6          	imul   %rsi,%r12
  68d7ff:	4c 89 bd a0 f8 ff ff 	mov    %r15,-0x760(%rbp)
  68d806:	4c 8b bc 11 90 00 00 	mov    0x90(%rcx,%rdx,1),%r15
  68d80d:	00 
  68d80e:	48 89 85 a0 fa ff ff 	mov    %rax,-0x560(%rbp)
  68d815:	4d 2b fe             	sub    %r14,%r15
  68d818:	4f 8d 34 40          	lea    (%r8,%r8,2),%r14
  68d81c:	4b 8d 04 01          	lea    (%r9,%r8,1),%rax
  68d820:	4d 2b c6             	sub    %r14,%r8
  68d823:	48 f7 d8             	neg    %rax
  68d826:	4d 03 f2             	add    %r10,%r14
  68d829:	4c 2b d7             	sub    %rdi,%r10
  68d82c:	49 03 c5             	add    %r13,%rax
  68d82f:	4d 2b e9             	sub    %r9,%r13
  68d832:	4d 2b c2             	sub    %r10,%r8
  68d835:	4d 2b e8             	sub    %r8,%r13
  68d838:	4e 8d 04 26          	lea    (%rsi,%r12,1),%r8
  68d83c:	49 03 fc             	add    %r12,%rdi
  68d83f:	49 f7 d8             	neg    %r8
  68d842:	4d 03 e3             	add    %r11,%r12
  68d845:	4d 03 c5             	add    %r13,%r8
  68d848:	4d 2b ec             	sub    %r12,%r13
  68d84b:	4c 2b f7             	sub    %rdi,%r14
  68d84e:	4c 8b a5 60 f9 ff ff 	mov    -0x6a0(%rbp),%r12
  68d855:	4d 2b c3             	sub    %r11,%r8
  68d858:	4c 0f af a5 38 f9 ff 	imul   -0x6c8(%rbp),%r12
  68d85f:	ff 
  68d860:	48 8b bd a8 f8 ff ff 	mov    -0x758(%rbp),%rdi
  68d867:	49 03 c6             	add    %r14,%rax
  68d86a:	48 f7 df             	neg    %rdi
  68d86d:	49 2b c3             	sub    %r11,%rax
  68d870:	49 03 fd             	add    %r13,%rdi
  68d873:	48 89 bd b8 f8 ff ff 	mov    %rdi,-0x748(%rbp)
  68d87a:	4c 89 85 b0 f8 ff ff 	mov    %r8,-0x750(%rbp)
  68d881:	4c 03 a5 68 f8 ff ff 	add    -0x798(%rbp),%r12
  68d888:	4c 8b 9d c0 f8 ff ff 	mov    -0x740(%rbp),%r11
  68d88f:	4c 89 ff             	mov    %r15,%rdi
  68d892:	4c 8b 85 a0 f8 ff ff 	mov    -0x760(%rbp),%r8
  68d899:	4c 8b 8d 98 f8 ff ff 	mov    -0x768(%rbp),%r9
  68d8a0:	4c 8b 95 c8 f8 ff ff 	mov    -0x738(%rbp),%r10
  68d8a7:	49 ff c2             	inc    %r10
  68d8aa:	4c 8b bd a0 fa ff ff 	mov    -0x560(%rbp),%r15
  68d8b1:	4d 0f af fa          	imul   %r10,%r15
  68d8b5:	4c 8b b5 90 fa ff ff 	mov    -0x570(%rbp),%r14
  68d8bc:	4c 8b ad 98 fa ff ff 	mov    -0x568(%rbp),%r13
  68d8c3:	4d 0f af f2          	imul   %r10,%r14
  68d8c7:	4d 0f af ea          	imul   %r10,%r13
  68d8cb:	c4 21 7b 2c 3c 3f    	vcvttsd2si (%rdi,%r15,1),%r15d
  68d8d1:	47 8b 34 31          	mov    (%r9,%r14,1),%r14d
  68d8d5:	47 8b 2c 28          	mov    (%r8,%r13,1),%r13d
  68d8d9:	45 85 ff             	test   %r15d,%r15d
  68d8dc:	0f 85 54 01 00 00    	jne    68da36 <step3d_t_mod_mp_step3d_t_tile_+0x6dc6>
  68d8e2:	44 3b b5 58 ff ff ff 	cmp    -0xa8(%rbp),%r14d
  68d8e9:	0f 8c 51 01 00 00    	jl     68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  68d8ef:	44 3b b5 40 fe ff ff 	cmp    -0x1c0(%rbp),%r14d
  68d8f6:	0f 8f 44 01 00 00    	jg     68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  68d8fc:	44 3b ad 00 fb ff ff 	cmp    -0x500(%rbp),%r13d
  68d903:	0f 8c 37 01 00 00    	jl     68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  68d909:	44 3b ad f8 fa ff ff 	cmp    -0x508(%rbp),%r13d
  68d910:	0f 8f 2a 01 00 00    	jg     68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  68d916:	4c 8b bd 90 f8 ff ff 	mov    -0x770(%rbp),%r15
  68d91d:	4d 63 f6             	movslq %r14d,%r14
  68d920:	4d 63 ed             	movslq %r13d,%r13
  68d923:	4c 89 b5 f0 f4 ff ff 	mov    %r14,-0xb10(%rbp)
  68d92a:	4c 89 ad f8 f4 ff ff 	mov    %r13,-0xb08(%rbp)
  68d931:	43 f6 44 9f 04 01    	testb  $0x1,0x4(%r15,%r11,4)
  68d937:	0f 84 a9 00 00 00    	je     68d9e6 <step3d_t_mod_mp_step3d_t_tile_+0x6d76>
  68d93d:	4d 89 ef             	mov    %r13,%r15
  68d940:	48 89 85 e8 f4 ff ff 	mov    %rax,-0xb18(%rbp)
  68d947:	4c 89 f0             	mov    %r14,%rax
  68d94a:	4c 8b b5 88 fe ff ff 	mov    -0x178(%rbp),%r14
  68d951:	4c 8b ad 70 fe ff ff 	mov    -0x190(%rbp),%r13
  68d958:	4c 0f af f0          	imul   %rax,%r14
  68d95c:	4d 0f af ef          	imul   %r15,%r13
  68d960:	4c 0f af bd 70 ff ff 	imul   -0x90(%rbp),%r15
  68d967:	ff 
  68d968:	4d 03 f5             	add    %r13,%r14
  68d96b:	49 8d 04 c7          	lea    (%r15,%rax,8),%rax
  68d96f:	4c 8b ac 11 80 02 00 	mov    0x280(%rcx,%rdx,1),%r13
  68d976:	00 
  68d977:	49 f7 dd             	neg    %r13
  68d97a:	4c 03 ad 70 f8 ff ff 	add    -0x790(%rbp),%r13
  68d981:	c4 81 7b 10 04 26    	vmovsd (%r14,%r12,1),%xmm0
  68d987:	4c 8b b5 80 fa ff ff 	mov    -0x580(%rbp),%r14
  68d98e:	4c 2b b4 11 98 02 00 	sub    0x298(%rcx,%rdx,1),%r14
  68d995:	00 
  68d996:	4c 0f af ac 11 78 02 	imul   0x278(%rcx,%rdx,1),%r13
  68d99d:	00 00 
  68d99f:	4c 0f af b4 11 90 02 	imul   0x290(%rcx,%rdx,1),%r14
  68d9a6:	00 00 
  68d9a8:	4c 8b bc 11 68 02 00 	mov    0x268(%rcx,%rdx,1),%r15
  68d9af:	00 
  68d9b0:	49 f7 df             	neg    %r15
  68d9b3:	4d 03 fa             	add    %r10,%r15
  68d9b6:	4c 0f af bc 11 60 02 	imul   0x260(%rcx,%rdx,1),%r15
  68d9bd:	00 00 
  68d9bf:	4c 03 ac 11 28 02 00 	add    0x228(%rcx,%rdx,1),%r13
  68d9c6:	00 
  68d9c7:	4d 03 f5             	add    %r13,%r14
  68d9ca:	4c 8b ad 80 f8 ff ff 	mov    -0x780(%rbp),%r13
  68d9d1:	c4 81 7b 59 0c 3e    	vmulsd (%r14,%r15,1),%xmm0,%xmm1
  68d9d7:	c4 a1 7b 11 0c 28    	vmovsd %xmm1,(%rax,%r13,1)
  68d9dd:	48 8b 85 e8 f4 ff ff 	mov    -0xb18(%rbp),%rax
  68d9e4:	eb 5a                	jmp    68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  68d9e6:	4d 89 f5             	mov    %r14,%r13
  68d9e9:	4c 8b b5 f8 f4 ff ff 	mov    -0xb08(%rbp),%r14
  68d9f0:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  68d9f4:	4c 0f af ad 20 f5 ff 	imul   -0xae0(%rbp),%r13
  68d9fb:	ff 
  68d9fc:	4c 0f af b5 18 f5 ff 	imul   -0xae8(%rbp),%r14
  68da03:	ff 
  68da04:	4d 03 ee             	add    %r14,%r13
  68da07:	4c 8b bd 00 f5 ff ff 	mov    -0xb00(%rbp),%r15
  68da0e:	c4 81 7b 10 4c 3d 00 	vmovsd 0x0(%r13,%r15,1),%xmm1
  68da15:	c5 f9 2e c8          	vucomisd %xmm0,%xmm1
  68da19:	7a 06                	jp     68da21 <step3d_t_mod_mp_step3d_t_tile_+0x6db1>
  68da1b:	0f 84 de 33 00 00    	je     690dff <step3d_t_mod_mp_step3d_t_tile_+0xa18f>
  68da21:	c5 fb 10 05 d7 95 23 	vmovsd 0x2395d7(%rip),%xmm0        # 8c7000 <__STRLITPACK_199.115+0x70>
  68da28:	00 
  68da29:	c5 f9 2e c8          	vucomisd %xmm0,%xmm1
  68da2d:	75 11                	jne    68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  68da2f:	7a 0f                	jp     68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  68da31:	e9 33 33 00 00       	jmpq   690d69 <step3d_t_mod_mp_step3d_t_tile_+0xa0f9>
  68da36:	41 83 ff 01          	cmp    $0x1,%r15d
  68da3a:	0f 84 b3 34 00 00    	je     690ef3 <step3d_t_mod_mp_step3d_t_tile_+0xa283>
  68da40:	4c 3b 95 88 fa ff ff 	cmp    -0x578(%rbp),%r10
  68da47:	0f 82 5a fe ff ff    	jb     68d8a7 <step3d_t_mod_mp_step3d_t_tile_+0x6c37>
  68da4d:	4c 8b ad c8 fa ff ff 	mov    -0x538(%rbp),%r13
  68da54:	48 8b 05 e5 06 4b 00 	mov    0x4b06e5(%rip),%rax        # b3e140 <mod_scalars_mp_refinedgrid_+0x40>
  68da5b:	48 c1 e0 02          	shl    $0x2,%rax
  68da5f:	48 f7 d8             	neg    %rax
  68da62:	48 03 05 97 06 4b 00 	add    0x4b0697(%rip),%rax        # b3e100 <mod_scalars_mp_refinedgrid_>
  68da69:	42 f6 04 a8 01       	testb  $0x1,(%rax,%r13,4)
  68da6e:	0f 84 4c 03 00 00    	je     68ddc0 <step3d_t_mod_mp_step3d_t_tile_+0x7150>
  68da74:	ba 01 00 00 00       	mov    $0x1,%edx
  68da79:	b8 01 00 00 00       	mov    $0x1,%eax
  68da7e:	4c 63 2d 8b 24 56 00 	movslq 0x56248b(%rip),%r13        # beff10 <mod_nesting_mp_ncontact_>
  68da85:	48 89 d7             	mov    %rdx,%rdi
  68da88:	4d 85 ed             	test   %r13,%r13
  68da8b:	0f 8e 53 34 00 00    	jle    690ee4 <step3d_t_mod_mp_step3d_t_tile_+0xa274>
  68da91:	48 8b 8d 08 f9 ff ff 	mov    -0x6f8(%rbp),%rcx
  68da98:	48 8b b5 38 f9 ff ff 	mov    -0x6c8(%rbp),%rsi
  68da9f:	4c 8b b5 60 fa ff ff 	mov    -0x5a0(%rbp),%r14
  68daa6:	4c 8b bd f0 f8 ff ff 	mov    -0x710(%rbp),%r15
  68daad:	4c 8d 24 31          	lea    (%rcx,%rsi,1),%r12
  68dab1:	48 8b 0d 08 28 4b 00 	mov    0x4b2808(%rip),%rcx        # b402c0 <mod_nesting_mp_rcontact_+0x40>
  68dab8:	48 f7 d9             	neg    %rcx
  68dabb:	48 03 ca             	add    %rdx,%rcx
  68dabe:	4c 69 c1 d0 02 00 00 	imul   $0x2d0,%rcx,%r8
  68dac5:	48 8b 3d b4 27 4b 00 	mov    0x4b27b4(%rip),%rdi        # b40280 <mod_nesting_mp_rcontact_>
  68dacc:	4d 8b 0f             	mov    (%r15),%r9
  68dacf:	42 8b 74 07 08       	mov    0x8(%rdi,%r8,1),%esi
  68dad4:	46 8b 5c 07 0c       	mov    0xc(%rdi,%r8,1),%r11d
  68dad9:	45 8b 11             	mov    (%r9),%r10d
  68dadc:	89 b5 84 fb ff ff    	mov    %esi,-0x47c(%rbp)
  68dae2:	44 89 9d 40 ff ff ff 	mov    %r11d,-0xc0(%rbp)
  68dae9:	45 3b d3             	cmp    %r11d,%r10d
  68daec:	0f 85 ba 02 00 00    	jne    68ddac <step3d_t_mod_mp_step3d_t_tile_+0x713c>
  68daf2:	4d 63 d2             	movslq %r10d,%r10
  68daf5:	48 8d 8d a0 f7 ff ff 	lea    -0x860(%rbp),%rcx
  68dafc:	51                   	push   %rcx
  68dafd:	48 8b 0d 7c d8 4a 00 	mov    0x4ad87c(%rip),%rcx        # b3b380 <mod_scalars_mp_dt_+0x40>
  68db04:	48 8d b5 58 f7 ff ff 	lea    -0x8a8(%rbp),%rsi
  68db0b:	48 f7 d9             	neg    %rcx
  68db0e:	48 8d bd 10 f7 ff ff 	lea    -0x8f0(%rbp),%rdi
  68db15:	49 03 ca             	add    %r10,%rcx
  68db18:	4c 8d 85 30 f5 ff ff 	lea    -0xad0(%rbp),%r8
  68db1f:	89 85 80 fb ff ff    	mov    %eax,-0x480(%rbp)
  68db25:	b8 01 00 00 00       	mov    $0x1,%eax
  68db2a:	49 89 40 20          	mov    %rax,0x20(%r8)
  68db2e:	4c 8d 8d 50 f6 ff ff 	lea    -0x9b0(%rbp),%r9
  68db35:	49 89 40 40          	mov    %rax,0x40(%r8)
  68db39:	45 33 db             	xor    %r11d,%r11d
  68db3c:	49 89 40 18          	mov    %rax,0x18(%r8)
  68db40:	48 89 46 d8          	mov    %rax,-0x28(%rsi)
  68db44:	48 89 46 f8          	mov    %rax,-0x8(%rsi)
  68db48:	48 89 46 d0          	mov    %rax,-0x30(%rsi)
  68db4c:	48 89 46 20          	mov    %rax,0x20(%rsi)
  68db50:	48 89 46 40          	mov    %rax,0x40(%rsi)
  68db54:	48 89 46 18          	mov    %rax,0x18(%rsi)
  68db58:	48 89 46 68          	mov    %rax,0x68(%rsi)
  68db5c:	48 89 85 e0 f7 ff ff 	mov    %rax,-0x820(%rbp)
  68db63:	48 89 46 60          	mov    %rax,0x60(%rsi)
  68db67:	48 8b 05 d2 d7 4a 00 	mov    0x4ad7d2(%rip),%rax        # b3b340 <mod_scalars_mp_dt_>
  68db6e:	56                   	push   %rsi
  68db6f:	57                   	push   %rdi
  68db70:	48 2b 15 a1 62 4b 00 	sub    0x4b62a1(%rip),%rdx        # b43e18 <mod_nesting_mp_bry_contact_+0x58>
  68db77:	4c 8d 14 c8          	lea    (%rax,%rcx,8),%r10
  68db7b:	48 69 05 7a 62 4b 00 	imul   $0xfffffffffffffe50,0x4b627a(%rip),%rax        # b43e00 <mod_nesting_mp_bry_contact_+0x40>
  68db82:	50 fe ff ff 
  68db86:	48 0f af 15 82 62 4b 	imul   0x4b6282(%rip),%rdx        # b43e10 <mod_nesting_mp_bry_contact_+0x50>
  68db8d:	00 
  68db8e:	41 50                	push   %r8
  68db90:	4d 89 58 10          	mov    %r11,0x10(%r8)
  68db94:	be 08 00 00 00       	mov    $0x8,%esi
  68db99:	4c 89 5f 10          	mov    %r11,0x10(%rdi)
  68db9d:	4c 89 5f 58          	mov    %r11,0x58(%rdi)
  68dba1:	4c 89 9d b0 f7 ff ff 	mov    %r11,-0x850(%rbp)
  68dba8:	4c 8d 9d b0 f6 ff ff 	lea    -0x950(%rbp),%r11
  68dbaf:	41 51                	push   %r9
  68dbb1:	41 53                	push   %r11
  68dbb3:	41 52                	push   %r10
  68dbb5:	ff b5 58 fb ff ff    	pushq  -0x4a8(%rbp)
  68dbbb:	ff b5 60 fb ff ff    	pushq  -0x4a0(%rbp)
  68dbc1:	ff b5 68 fb ff ff    	pushq  -0x498(%rbp)
  68dbc7:	ff b5 70 fb ff ff    	pushq  -0x490(%rbp)
  68dbcd:	ff b5 50 fb ff ff    	pushq  -0x4b0(%rbp)
  68dbd3:	ff b5 48 fb ff ff    	pushq  -0x4b8(%rbp)
  68dbd9:	ff b5 40 fb ff ff    	pushq  -0x4c0(%rbp)
  68dbdf:	49 89 70 08          	mov    %rsi,0x8(%r8)
  68dbe3:	48 03 05 d6 61 4b 00 	add    0x4b61d6(%rip),%rax        # b43dc0 <mod_nesting_mp_bry_contact_>
  68dbea:	48 89 77 08          	mov    %rsi,0x8(%rdi)
  68dbee:	48 89 77 50          	mov    %rsi,0x50(%rdi)
  68dbf2:	48 8b 8c 10 18 03 00 	mov    0x318(%rax,%rdx,1),%rcx
  68dbf9:	00 
  68dbfa:	49 89 48 30          	mov    %rcx,0x30(%r8)
  68dbfe:	48 89 b5 a8 f7 ff ff 	mov    %rsi,-0x858(%rbp)
  68dc05:	48 8b b4 10 a0 06 00 	mov    0x6a0(%rax,%rdx,1),%rsi
  68dc0c:	00 
  68dc0d:	48 8b 8c 10 b8 06 00 	mov    0x6b8(%rax,%rdx,1),%rcx
  68dc14:	00 
  68dc15:	48 f7 de             	neg    %rsi
  68dc18:	48 f7 d9             	neg    %rcx
  68dc1b:	49 03 f4             	add    %r12,%rsi
  68dc1e:	4c 8b 8c 10 40 03 00 	mov    0x340(%rax,%rdx,1),%r9
  68dc25:	00 
  68dc26:	49 03 ce             	add    %r14,%rcx
  68dc29:	4c 8b 84 10 58 03 00 	mov    0x358(%rax,%rdx,1),%r8
  68dc30:	00 
  68dc31:	49 f7 d9             	neg    %r9
  68dc34:	49 f7 d8             	neg    %r8
  68dc37:	4d 03 cc             	add    %r12,%r9
  68dc3a:	48 0f af b4 10 98 06 	imul   0x698(%rax,%rdx,1),%rsi
  68dc41:	00 00 
  68dc43:	4c 0f af 8c 10 38 03 	imul   0x338(%rax,%rdx,1),%r9
  68dc4a:	00 00 
  68dc4c:	4d 03 c6             	add    %r14,%r8
  68dc4f:	48 ff c1             	inc    %rcx
  68dc52:	48 0f af 8c 10 b0 06 	imul   0x6b0(%rax,%rdx,1),%rcx
  68dc59:	00 00 
  68dc5b:	49 ff c0             	inc    %r8
  68dc5e:	4c 0f af 84 10 50 03 	imul   0x350(%rax,%rdx,1),%r8
  68dc65:	00 00 
  68dc67:	48 8b bc 10 20 03 00 	mov    0x320(%rax,%rdx,1),%rdi
  68dc6e:	00 
  68dc6f:	48 89 bd 68 f5 ff ff 	mov    %rdi,-0xa98(%rbp)
  68dc76:	48 03 b4 10 48 06 00 	add    0x648(%rax,%rdx,1),%rsi
  68dc7d:	00 
  68dc7e:	48 8b bc 10 c8 04 00 	mov    0x4c8(%rax,%rdx,1),%rdi
  68dc85:	00 
  68dc86:	48 03 f1             	add    %rcx,%rsi
  68dc89:	4c 03 8c 10 e8 02 00 	add    0x2e8(%rax,%rdx,1),%r9
  68dc90:	00 
  68dc91:	4c 8b 94 10 78 06 00 	mov    0x678(%rax,%rdx,1),%r10
  68dc98:	00 
  68dc99:	4d 03 c8             	add    %r8,%r9
  68dc9c:	49 89 73 60          	mov    %rsi,0x60(%r11)
  68dca0:	48 89 bd 88 f7 ff ff 	mov    %rdi,-0x878(%rbp)
  68dca7:	48 8b bc 10 50 08 00 	mov    0x850(%rax,%rdx,1),%rdi
  68dcae:	00 
  68dcaf:	48 8b b4 10 68 08 00 	mov    0x868(%rax,%rdx,1),%rsi
  68dcb6:	00 
  68dcb7:	48 f7 df             	neg    %rdi
  68dcba:	48 f7 de             	neg    %rsi
  68dcbd:	49 03 fc             	add    %r12,%rdi
  68dcc0:	4c 89 8d 30 f5 ff ff 	mov    %r9,-0xad0(%rbp)
  68dcc7:	49 03 f6             	add    %r14,%rsi
  68dcca:	4c 89 95 40 f7 ff ff 	mov    %r10,-0x8c0(%rbp)
  68dcd1:	48 ff c6             	inc    %rsi
  68dcd4:	4c 8b 94 10 f0 04 00 	mov    0x4f0(%rax,%rdx,1),%r10
  68dcdb:	00 
  68dcdc:	4c 8b 8c 10 08 05 00 	mov    0x508(%rax,%rdx,1),%r9
  68dce3:	00 
  68dce4:	49 f7 da             	neg    %r10
  68dce7:	49 f7 d9             	neg    %r9
  68dcea:	4d 03 d4             	add    %r12,%r10
  68dced:	48 0f af bc 10 48 08 	imul   0x848(%rax,%rdx,1),%rdi
  68dcf4:	00 00 
  68dcf6:	48 0f af b4 10 60 08 	imul   0x860(%rax,%rdx,1),%rsi
  68dcfd:	00 00 
  68dcff:	4c 0f af 94 10 e8 04 	imul   0x4e8(%rax,%rdx,1),%r10
  68dd06:	00 00 
  68dd08:	4d 03 ce             	add    %r14,%r9
  68dd0b:	49 ff c1             	inc    %r9
  68dd0e:	4c 0f af 8c 10 00 05 	imul   0x500(%rax,%rdx,1),%r9
  68dd15:	00 00 
  68dd17:	4c 8b 9c 10 80 06 00 	mov    0x680(%rax,%rdx,1),%r11
  68dd1e:	00 
  68dd1f:	48 03 bc 10 f8 07 00 	add    0x7f8(%rax,%rdx,1),%rdi
  68dd26:	00 
  68dd27:	48 8b 8c 10 30 08 00 	mov    0x830(%rax,%rdx,1),%rcx
  68dd2e:	00 
  68dd2f:	48 03 fe             	add    %rsi,%rdi
  68dd32:	4c 8b 84 10 d0 04 00 	mov    0x4d0(%rax,%rdx,1),%r8
  68dd39:	00 
  68dd3a:	48 8d b5 40 ff ff ff 	lea    -0xc0(%rbp),%rsi
  68dd41:	4c 03 94 10 98 04 00 	add    0x498(%rax,%rdx,1),%r10
  68dd48:	00 
  68dd49:	4c 89 9d 48 f7 ff ff 	mov    %r11,-0x8b8(%rbp)
  68dd50:	4d 03 d1             	add    %r9,%r10
  68dd53:	4c 8b 9c 10 28 08 00 	mov    0x828(%rax,%rdx,1),%r11
  68dd5a:	00 
  68dd5b:	48 8d 95 80 fb ff ff 	lea    -0x480(%rbp),%rdx
  68dd62:	48 89 8d d8 f7 ff ff 	mov    %rcx,-0x828(%rbp)
  68dd69:	b9 e8 b6 b3 00       	mov    $0xb3b6e8,%ecx
  68dd6e:	48 89 bd a0 f7 ff ff 	mov    %rdi,-0x860(%rbp)
  68dd75:	48 8d bd 84 fb ff ff 	lea    -0x47c(%rbp),%rdi
  68dd7c:	4c 89 85 90 f7 ff ff 	mov    %r8,-0x870(%rbp)
  68dd83:	4c 8b 42 f8          	mov    -0x8(%rdx),%r8
  68dd87:	4c 8b 4a b8          	mov    -0x48(%rdx),%r9
  68dd8b:	4c 89 95 58 f7 ff ff 	mov    %r10,-0x8a8(%rbp)
  68dd92:	4c 89 9d d0 f7 ff ff 	mov    %r11,-0x830(%rbp)
  68dd99:	c5 f8 77             	vzeroupper 
  68dd9c:	e8 0f f5 fc ff       	callq  65d2b0 <nesting_mod_mp_bry_fluxes_>
  68dda1:	48 83 c4 70          	add    $0x70,%rsp
  68dda5:	48 63 95 80 fb ff ff 	movslq -0x480(%rbp),%rdx
  68ddac:	48 ff c2             	inc    %rdx
  68ddaf:	89 d0                	mov    %edx,%eax
  68ddb1:	49 3b d5             	cmp    %r13,%rdx
  68ddb4:	0f 8e f7 fc ff ff    	jle    68dab1 <step3d_t_mod_mp_step3d_t_tile_+0x6e41>
  68ddba:	89 85 80 fb ff ff    	mov    %eax,-0x480(%rbp)
  68ddc0:	8b 85 f8 fa ff ff    	mov    -0x508(%rbp),%eax
  68ddc6:	3b 85 00 fb ff ff    	cmp    -0x500(%rbp),%eax
  68ddcc:	0f 8c d6 30 00 00    	jl     690ea8 <step3d_t_mod_mp_step3d_t_tile_+0xa238>
  68ddd2:	48 8b 85 f0 f8 ff ff 	mov    -0x710(%rbp),%rax
  68ddd9:	4c 8b a5 50 f8 ff ff 	mov    -0x7b0(%rbp),%r12
  68dde0:	48 8b 3d 59 d5 4a 00 	mov    0x4ad559(%rip),%rdi        # b3b340 <mod_scalars_mp_dt_>
  68dde7:	48 8b 10             	mov    (%rax),%rdx
  68ddea:	49 8d 44 24 50       	lea    0x50(%r12),%rax
  68ddef:	4c 8b 18             	mov    (%rax),%r11
  68ddf2:	4c 8b 68 e8          	mov    -0x18(%rax),%r13
  68ddf6:	48 89 bd 68 fd ff ff 	mov    %rdi,-0x298(%rbp)
  68ddfd:	48 89 95 08 fb ff ff 	mov    %rdx,-0x4f8(%rbp)
  68de04:	4c 63 12             	movslq (%rdx),%r10
  68de07:	4c 8b 05 72 d5 4a 00 	mov    0x4ad572(%rip),%r8        # b3b380 <mod_scalars_mp_dt_+0x40>
  68de0e:	4c 8b 8d 50 f6 ff ff 	mov    -0x9b0(%rbp),%r9
  68de15:	48 8b bd b0 f6 ff ff 	mov    -0x950(%rbp),%rdi
  68de1c:	48 8b 50 b0          	mov    -0x50(%rax),%rdx
  68de20:	48 8b 48 48          	mov    0x48(%rax),%rcx
  68de24:	48 8b 70 30          	mov    0x30(%rax),%rsi
  68de28:	48 8b 40 18          	mov    0x18(%rax),%rax
  68de2c:	4c 89 9d 00 ff ff ff 	mov    %r11,-0x100(%rbp)
  68de33:	4c 89 6d f8          	mov    %r13,-0x8(%rbp)
  68de37:	48 83 7d 88 08       	cmpq   $0x8,-0x78(%rbp)
  68de3c:	0f 85 c6 02 00 00    	jne    68e108 <step3d_t_mod_mp_step3d_t_tile_+0x7498>
  68de42:	48 83 7d 90 08       	cmpq   $0x8,-0x70(%rbp)
  68de47:	0f 85 bb 02 00 00    	jne    68e108 <step3d_t_mod_mp_step3d_t_tile_+0x7498>
  68de4d:	48 83 7d f8 08       	cmpq   $0x8,-0x8(%rbp)
  68de52:	0f 85 b0 02 00 00    	jne    68e108 <step3d_t_mod_mp_step3d_t_tile_+0x7498>
  68de58:	4c 8b b5 b0 fa ff ff 	mov    -0x550(%rbp),%r14
  68de5f:	49 f7 d8             	neg    %r8
  68de62:	4c 8b ad 60 fa ff ff 	mov    -0x5a0(%rbp),%r13
  68de69:	4d 03 c2             	add    %r10,%r8
  68de6c:	4c 0f af e9          	imul   %rcx,%r13
  68de70:	4c 03 ea             	add    %rdx,%r13
  68de73:	4e 8d 3c 37          	lea    (%rdi,%r14,1),%r15
  68de77:	4c 89 bd d0 fc ff ff 	mov    %r15,-0x330(%rbp)
  68de7e:	45 33 e4             	xor    %r12d,%r12d
  68de81:	4c 8b bd 30 f9 ff ff 	mov    -0x6d0(%rbp),%r15
  68de88:	4c 0f af fe          	imul   %rsi,%r15
  68de8c:	4c 8b 95 c8 f9 ff ff 	mov    -0x638(%rbp),%r10
  68de93:	4c 2b fe             	sub    %rsi,%r15
  68de96:	4c 8b b5 b0 f9 ff ff 	mov    -0x650(%rbp),%r14
  68de9d:	4c 03 ad d8 f9 ff ff 	add    -0x628(%rbp),%r13
  68dea4:	4c 89 b5 00 fa ff ff 	mov    %r14,-0x600(%rbp)
  68deab:	4d 03 ef             	add    %r15,%r13
  68deae:	4c 8b bd 38 f9 ff ff 	mov    -0x6c8(%rbp),%r15
  68deb5:	4f 8d 1c 11          	lea    (%r9,%r10,1),%r11
  68deb9:	4c 8b b5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r14
  68dec0:	4c 8b 95 c0 fa ff ff 	mov    -0x540(%rbp),%r10
  68dec7:	4c 89 9d e0 fc ff ff 	mov    %r11,-0x320(%rbp)
  68dece:	4d 03 ca             	add    %r10,%r9
  68ded1:	4d 03 f7             	add    %r15,%r14
  68ded4:	4c 0f af f0          	imul   %rax,%r14
  68ded8:	4c 2b f0             	sub    %rax,%r14
  68dedb:	4e 8d 1c 17          	lea    (%rdi,%r10,1),%r11
  68dedf:	4c 8b 95 f8 f8 ff ff 	mov    -0x708(%rbp),%r10
  68dee6:	4d 03 ee             	add    %r14,%r13
  68dee9:	49 f7 da             	neg    %r10
  68deec:	4c 03 95 78 f9 ff ff 	add    -0x688(%rbp),%r10
  68def3:	4c 0f af 95 00 ff ff 	imul   -0x100(%rbp),%r10
  68defa:	ff 
  68defb:	4c 89 9d d8 fc ff ff 	mov    %r11,-0x328(%rbp)
  68df02:	4d 03 d5             	add    %r13,%r10
  68df05:	48 89 95 b0 fe ff ff 	mov    %rdx,-0x150(%rbp)
  68df0c:	48 89 8d b8 fe ff ff 	mov    %rcx,-0x148(%rbp)
  68df13:	48 89 b5 70 fa ff ff 	mov    %rsi,-0x590(%rbp)
  68df1a:	4c 8b 9d b8 f9 ff ff 	mov    -0x648(%rbp),%r11
  68df21:	48 8b 95 00 fa ff ff 	mov    -0x600(%rbp),%rdx
  68df28:	4c 89 e1             	mov    %r12,%rcx
  68df2b:	48 8b b5 70 fd ff ff 	mov    -0x290(%rbp),%rsi
  68df32:	4c 89 85 60 fd ff ff 	mov    %r8,-0x2a0(%rbp)
  68df39:	4c 89 8d c8 fc ff ff 	mov    %r9,-0x338(%rbp)
  68df40:	48 89 bd 40 fd ff ff 	mov    %rdi,-0x2c0(%rbp)
  68df47:	48 89 85 68 fa ff ff 	mov    %rax,-0x598(%rbp)
  68df4e:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
  68df54:	3b 85 58 ff ff ff    	cmp    -0xa8(%rbp),%eax
  68df5a:	0f 8c 39 01 00 00    	jl     68e099 <step3d_t_mod_mp_step3d_t_tile_+0x7429>
  68df60:	48 8b 85 68 fd ff ff 	mov    -0x298(%rbp),%rax
  68df67:	48 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%rdi
  68df6e:	c5 fb 10 04 f8       	vmovsd (%rax,%rdi,8),%xmm0
  68df73:	48 83 fe 04          	cmp    $0x4,%rsi
  68df77:	0f 8c 1c 2f 00 00    	jl     690e99 <step3d_t_mod_mp_step3d_t_tile_+0xa229>
  68df7d:	4c 8b 8d e0 fc ff ff 	mov    -0x320(%rbp),%r9
  68df84:	45 33 ed             	xor    %r13d,%r13d
  68df87:	4c 8b 85 d0 fc ff ff 	mov    -0x330(%rbp),%r8
  68df8e:	48 8b bd c8 fc ff ff 	mov    -0x338(%rbp),%rdi
  68df95:	4c 8b b5 d8 fc ff ff 	mov    -0x328(%rbp),%r14
  68df9c:	4c 03 c9             	add    %rcx,%r9
  68df9f:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  68dfa6:	4c 03 c1             	add    %rcx,%r8
  68dfa9:	c4 e2 7d 19 c8       	vbroadcastsd %xmm0,%ymm1
  68dfae:	48 03 f9             	add    %rcx,%rdi
  68dfb1:	48 89 c6             	mov    %rax,%rsi
  68dfb4:	4d 8d 3c 0e          	lea    (%r14,%rcx,1),%r15
  68dfb8:	4d 89 d6             	mov    %r10,%r14
  68dfbb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  68dfc0:	c4 a1 75 59 14 ea    	vmulpd (%rdx,%r13,8),%ymm1,%ymm2
  68dfc6:	c4 81 7d 10 64 e9 08 	vmovupd 0x8(%r9,%r13,8),%ymm4
  68dfcd:	c4 81 7d 10 5c e8 08 	vmovupd 0x8(%r8,%r13,8),%ymm3
  68dfd4:	c4 41 7d 10 06       	vmovupd (%r14),%ymm8
  68dfd9:	c4 01 6d 59 0c eb    	vmulpd (%r11,%r13,8),%ymm2,%ymm9
  68dfdf:	c4 a1 5d 5c 2c ef    	vsubpd (%rdi,%r13,8),%ymm4,%ymm5
  68dfe5:	c4 81 65 5c 34 ef    	vsubpd (%r15,%r13,8),%ymm3,%ymm6
  68dfeb:	c5 b5 59 fd          	vmulpd %ymm5,%ymm9,%ymm7
  68dfef:	c4 62 cd a8 cf       	vfmadd213pd %ymm7,%ymm6,%ymm9
  68dff4:	49 83 c5 04          	add    $0x4,%r13
  68dff8:	c4 41 3d 5c d1       	vsubpd %ymm9,%ymm8,%ymm10
  68dffd:	c4 41 7d 11 16       	vmovupd %ymm10,(%r14)
  68e002:	49 83 c6 20          	add    $0x20,%r14
  68e006:	4c 3b ee             	cmp    %rsi,%r13
  68e009:	72 b5                	jb     68dfc0 <step3d_t_mod_mp_step3d_t_tile_+0x7350>
  68e00b:	48 8b b5 70 fd ff ff 	mov    -0x290(%rbp),%rsi
  68e012:	48 3b c6             	cmp    %rsi,%rax
  68e015:	0f 83 7e 00 00 00    	jae    68e099 <step3d_t_mod_mp_step3d_t_tile_+0x7429>
  68e01b:	4c 8b 85 e0 fc ff ff 	mov    -0x320(%rbp),%r8
  68e022:	48 8b bd d0 fc ff ff 	mov    -0x330(%rbp),%rdi
  68e029:	4c 8b b5 c8 fc ff ff 	mov    -0x338(%rbp),%r14
  68e030:	4c 8b 8d d8 fc ff ff 	mov    -0x328(%rbp),%r9
  68e037:	4c 03 c1             	add    %rcx,%r8
  68e03a:	48 03 f9             	add    %rcx,%rdi
  68e03d:	4c 03 f1             	add    %rcx,%r14
  68e040:	4d 8d 2c 09          	lea    (%r9,%rcx,1),%r13
  68e044:	4d 8d 0c c2          	lea    (%r10,%rax,8),%r9
  68e048:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  68e04f:	00 
  68e050:	c5 fb 59 0c c2       	vmulsd (%rdx,%rax,8),%xmm0,%xmm1
  68e055:	c4 c1 7b 10 5c c0 08 	vmovsd 0x8(%r8,%rax,8),%xmm3
  68e05c:	c4 41 73 59 04 c3    	vmulsd (%r11,%rax,8),%xmm1,%xmm8
  68e062:	c4 c1 63 5c 24 c6    	vsubsd (%r14,%rax,8),%xmm3,%xmm4
  68e068:	c5 fb 10 54 c7 08    	vmovsd 0x8(%rdi,%rax,8),%xmm2
  68e06e:	c5 bb 59 f4          	vmulsd %xmm4,%xmm8,%xmm6
  68e072:	c4 c1 6b 5c 6c c5 00 	vsubsd 0x0(%r13,%rax,8),%xmm2,%xmm5
  68e079:	c4 62 d1 a9 c6       	vfmadd213sd %xmm6,%xmm5,%xmm8
  68e07e:	48 ff c0             	inc    %rax
  68e081:	c4 c1 7b 10 39       	vmovsd (%r9),%xmm7
  68e086:	c4 41 43 5c c8       	vsubsd %xmm8,%xmm7,%xmm9
  68e08b:	c4 41 7b 11 09       	vmovsd %xmm9,(%r9)
  68e090:	49 83 c1 08          	add    $0x8,%r9
  68e094:	48 3b c6             	cmp    %rsi,%rax
  68e097:	72 b7                	jb     68e050 <step3d_t_mod_mp_step3d_t_tile_+0x73e0>
  68e099:	49 ff c4             	inc    %r12
  68e09c:	48 03 8d 70 ff ff ff 	add    -0x90(%rbp),%rcx
  68e0a3:	48 03 95 58 fe ff ff 	add    -0x1a8(%rbp),%rdx
  68e0aa:	4c 03 9d 60 fe ff ff 	add    -0x1a0(%rbp),%r11
  68e0b1:	4c 03 95 00 ff ff ff 	add    -0x100(%rbp),%r10
  68e0b8:	4c 3b a5 68 ff ff ff 	cmp    -0x98(%rbp),%r12
  68e0bf:	0f 82 89 fe ff ff    	jb     68df4e <step3d_t_mod_mp_step3d_t_tile_+0x72de>
  68e0c5:	4c 8b 85 80 fa ff ff 	mov    -0x580(%rbp),%r8
  68e0cc:	48 8b bd 40 fd ff ff 	mov    -0x2c0(%rbp),%rdi
  68e0d3:	48 8b 95 b0 fe ff ff 	mov    -0x150(%rbp),%rdx
  68e0da:	48 8b 8d b8 fe ff ff 	mov    -0x148(%rbp),%rcx
  68e0e1:	48 8b 85 68 fa ff ff 	mov    -0x598(%rbp),%rax
  68e0e8:	48 8b b5 70 fa ff ff 	mov    -0x590(%rbp),%rsi
  68e0ef:	4c 89 85 60 fa ff ff 	mov    %r8,-0x5a0(%rbp)
  68e0f6:	4c 3b 85 78 fa ff ff 	cmp    -0x588(%rbp),%r8
  68e0fd:	0f 82 4c d2 ff ff    	jb     68b34f <step3d_t_mod_mp_step3d_t_tile_+0x46df>
  68e103:	e9 b3 03 00 00       	jmpq   68e4bb <step3d_t_mod_mp_step3d_t_tile_+0x784b>
  68e108:	48 89 b5 70 fa ff ff 	mov    %rsi,-0x590(%rbp)
  68e10f:	48 89 bd 40 fd ff ff 	mov    %rdi,-0x2c0(%rbp)
  68e116:	48 89 95 b0 fe ff ff 	mov    %rdx,-0x150(%rbp)
  68e11d:	48 89 8d b8 fe ff ff 	mov    %rcx,-0x148(%rbp)
  68e124:	48 89 85 68 fa ff ff 	mov    %rax,-0x598(%rbp)
  68e12b:	48 8b b5 60 fa ff ff 	mov    -0x5a0(%rbp),%rsi
  68e132:	49 f7 d8             	neg    %r8
  68e135:	45 33 ed             	xor    %r13d,%r13d
  68e138:	4c 8b bd 70 fa ff ff 	mov    -0x590(%rbp),%r15
  68e13f:	4d 03 c2             	add    %r10,%r8
  68e142:	4c 8b 95 30 f9 ff ff 	mov    -0x6d0(%rbp),%r10
  68e149:	4d 0f af d7          	imul   %r15,%r10
  68e14d:	48 0f af b5 b8 fe ff 	imul   -0x148(%rbp),%rsi
  68e154:	ff 
  68e155:	4c 8b b5 d0 f9 ff ff 	mov    -0x630(%rbp),%r14
  68e15c:	4d 2b d7             	sub    %r15,%r10
  68e15f:	4c 89 b5 58 fa ff ff 	mov    %r14,-0x5a8(%rbp)
  68e166:	4c 8b b5 08 f9 ff ff 	mov    -0x6f8(%rbp),%r14
  68e16d:	4c 8b bd 38 f9 ff ff 	mov    -0x6c8(%rbp),%r15
  68e174:	4c 8b a5 c8 f9 ff ff 	mov    -0x638(%rbp),%r12
  68e17b:	48 8b 85 c0 fa ff ff 	mov    -0x540(%rbp),%rax
  68e182:	48 8b 95 b0 fa ff ff 	mov    -0x550(%rbp),%rdx
  68e189:	4d 03 fe             	add    %r14,%r15
  68e18c:	49 89 fb             	mov    %rdi,%r11
  68e18f:	4d 03 e1             	add    %r9,%r12
  68e192:	4c 8b b5 68 fa ff ff 	mov    -0x598(%rbp),%r14
  68e199:	4c 03 c8             	add    %rax,%r9
  68e19c:	4d 0f af fe          	imul   %r14,%r15
  68e1a0:	48 8b bd 00 f9 ff ff 	mov    -0x700(%rbp),%rdi
  68e1a7:	49 8d 0c 13          	lea    (%r11,%rdx,1),%rcx
  68e1ab:	48 f7 df             	neg    %rdi
  68e1ae:	4c 03 d8             	add    %rax,%r11
  68e1b1:	48 8b 85 f8 f8 ff ff 	mov    -0x708(%rbp),%rax
  68e1b8:	4d 2b fe             	sub    %r14,%r15
  68e1bb:	48 03 bd 98 fb ff ff 	add    -0x468(%rbp),%rdi
  68e1c2:	48 f7 d8             	neg    %rax
  68e1c5:	48 03 85 78 f9 ff ff 	add    -0x688(%rbp),%rax
  68e1cc:	4d 03 d7             	add    %r15,%r10
  68e1cf:	48 0f af 7d f8       	imul   -0x8(%rbp),%rdi
  68e1d4:	48 0f af 85 00 ff ff 	imul   -0x100(%rbp),%rax
  68e1db:	ff 
  68e1dc:	48 03 b5 b0 fe ff ff 	add    -0x150(%rbp),%rsi
  68e1e3:	49 03 f2             	add    %r10,%rsi
  68e1e6:	48 03 fe             	add    %rsi,%rdi
  68e1e9:	4c 89 a5 20 fd ff ff 	mov    %r12,-0x2e0(%rbp)
  68e1f0:	48 03 c7             	add    %rdi,%rax
  68e1f3:	4c 89 ad 38 ff ff ff 	mov    %r13,-0xc8(%rbp)
  68e1fa:	48 89 8d 38 fd ff ff 	mov    %rcx,-0x2c8(%rbp)
  68e201:	33 c9                	xor    %ecx,%ecx
  68e203:	48 8b 95 50 f9 ff ff 	mov    -0x6b0(%rbp),%rdx
  68e20a:	4c 8b a5 58 fa ff ff 	mov    -0x5a8(%rbp),%r12
  68e211:	4c 8b ad 70 fd ff ff 	mov    -0x290(%rbp),%r13
  68e218:	4c 89 85 60 fd ff ff 	mov    %r8,-0x2a0(%rbp)
  68e21f:	4c 89 9d 18 fd ff ff 	mov    %r11,-0x2e8(%rbp)
  68e226:	4c 89 8d c8 fc ff ff 	mov    %r9,-0x338(%rbp)
  68e22d:	8b b5 28 fe ff ff    	mov    -0x1d8(%rbp),%esi
  68e233:	3b b5 58 ff ff ff    	cmp    -0xa8(%rbp),%esi
  68e239:	0f 8c 2e 02 00 00    	jl     68e46d <step3d_t_mod_mp_step3d_t_tile_+0x77fd>
  68e23f:	48 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%rdi
  68e246:	48 8b b5 68 fd ff ff 	mov    -0x298(%rbp),%rsi
  68e24d:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  68e252:	c5 fb 10 04 fe       	vmovsd (%rsi,%rdi,8),%xmm0
  68e257:	0f 84 43 2c 00 00    	je     690ea0 <step3d_t_mod_mp_step3d_t_tile_+0xa230>
  68e25d:	49 83 fd 02          	cmp    $0x2,%r13
  68e261:	0f 8c 39 2c 00 00    	jl     690ea0 <step3d_t_mod_mp_step3d_t_tile_+0xa230>
  68e267:	4c 8b 9d 88 fb ff ff 	mov    -0x478(%rbp),%r11
  68e26e:	45 33 d2             	xor    %r10d,%r10d
  68e271:	4c 8b 8d 20 fd ff ff 	mov    -0x2e0(%rbp),%r9
  68e278:	33 ff                	xor    %edi,%edi
  68e27a:	48 8b b5 c8 fc ff ff 	mov    -0x338(%rbp),%rsi
  68e281:	4c 8b 75 80          	mov    -0x80(%rbp),%r14
  68e285:	4e 8d 3c dd 00 00 00 	lea    0x0(,%r11,8),%r15
  68e28c:	00 
  68e28d:	49 f7 df             	neg    %r15
  68e290:	4c 03 c9             	add    %rcx,%r9
  68e293:	4c 8b 9d 98 fb ff ff 	mov    -0x468(%rbp),%r11
  68e29a:	4c 8d 04 0e          	lea    (%rsi,%rcx,1),%r8
  68e29e:	48 89 85 30 fd ff ff 	mov    %rax,-0x2d0(%rbp)
  68e2a5:	33 f6                	xor    %esi,%esi
  68e2a7:	48 89 8d 28 fd ff ff 	mov    %rcx,-0x2d8(%rbp)
  68e2ae:	48 89 85 10 fe ff ff 	mov    %rax,-0x1f0(%rbp)
  68e2b5:	4f 8d 1c df          	lea    (%r15,%r11,8),%r11
  68e2b9:	4c 8b bd 90 fb ff ff 	mov    -0x470(%rbp),%r15
  68e2c0:	4c 03 9d a0 fb ff ff 	add    -0x460(%rbp),%r11
  68e2c7:	49 f7 df             	neg    %r15
  68e2ca:	4d 03 df             	add    %r15,%r11
  68e2cd:	48 89 8d 18 fe ff ff 	mov    %rcx,-0x1e8(%rbp)
  68e2d4:	c5 fb 12 c8          	vmovddup %xmm0,%xmm1
  68e2d8:	4c 03 9d 40 fd ff ff 	add    -0x2c0(%rbp),%r11
  68e2df:	48 8b 85 28 fd ff ff 	mov    -0x2d8(%rbp),%rax
  68e2e6:	48 8b 8d 30 fd ff ff 	mov    -0x2d0(%rbp),%rcx
  68e2ed:	4c 8b 6d f8          	mov    -0x8(%rbp),%r13
  68e2f1:	4c 89 b5 08 fe ff ff 	mov    %r14,-0x1f8(%rbp)
  68e2f8:	4c 8b 7d 88          	mov    -0x78(%rbp),%r15
  68e2fc:	4c 8d 34 3a          	lea    (%rdx,%rdi,1),%r14
  68e300:	c4 c1 7b 10 2e       	vmovsd (%r14),%xmm5
  68e305:	c4 81 79 10 5c d1 08 	vmovupd 0x8(%r9,%r10,8),%xmm3
  68e30c:	c4 a1 79 10 54 18 08 	vmovupd 0x8(%rax,%r11,1),%xmm2
  68e313:	c4 01 61 5c 14 d0    	vsubpd (%r8,%r10,8),%xmm3,%xmm10
  68e319:	c4 21 69 5c 1c 18    	vsubpd (%rax,%r11,1),%xmm2,%xmm11
  68e31f:	c4 81 51 16 34 3e    	vmovhpd (%r14,%r15,1),%xmm5,%xmm6
  68e325:	4a 8d 3c 7f          	lea    (%rdi,%r15,2),%rdi
  68e329:	c5 71 59 c6          	vmulpd %xmm6,%xmm1,%xmm8
  68e32d:	4c 8b 7d 90          	mov    -0x70(%rbp),%r15
  68e331:	4d 8d 34 34          	lea    (%r12,%rsi,1),%r14
  68e335:	c4 c1 7b 10 3e       	vmovsd (%r14),%xmm7
  68e33a:	49 83 c2 02          	add    $0x2,%r10
  68e33e:	c5 fb 10 21          	vmovsd (%rcx),%xmm4
  68e342:	48 83 c0 10          	add    $0x10,%rax
  68e346:	c4 01 41 16 0c 3e    	vmovhpd (%r14,%r15,1),%xmm7,%xmm9
  68e34c:	4a 8d 34 7e          	lea    (%rsi,%r15,2),%rsi
  68e350:	c4 41 39 59 f1       	vmulpd %xmm9,%xmm8,%xmm14
  68e355:	c4 41 09 59 e2       	vmulpd %xmm10,%xmm14,%xmm12
  68e35a:	c4 42 a1 a8 f4       	vfmadd213pd %xmm12,%xmm11,%xmm14
  68e35f:	c4 21 59 16 2c 29    	vmovhpd (%rcx,%r13,1),%xmm4,%xmm13
  68e365:	c4 41 11 5c fe       	vsubpd %xmm14,%xmm13,%xmm15
  68e36a:	c5 7b 11 39          	vmovsd %xmm15,(%rcx)
  68e36e:	c4 41 79 17 7c 0d 00 	vmovhpd %xmm15,0x0(%r13,%rcx,1)
  68e375:	4a 8d 0c 69          	lea    (%rcx,%r13,2),%rcx
  68e379:	4c 3b 55 80          	cmp    -0x80(%rbp),%r10
  68e37d:	0f 82 75 ff ff ff    	jb     68e2f8 <step3d_t_mod_mp_step3d_t_tile_+0x7688>
  68e383:	4c 8b b5 08 fe ff ff 	mov    -0x1f8(%rbp),%r14
  68e38a:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
  68e391:	48 8b 8d 18 fe ff ff 	mov    -0x1e8(%rbp),%rcx
  68e398:	4c 8b ad 70 fd ff ff 	mov    -0x290(%rbp),%r13
  68e39f:	4c 8b 45 f8          	mov    -0x8(%rbp),%r8
  68e3a3:	4c 8b 5d 90          	mov    -0x70(%rbp),%r11
  68e3a7:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  68e3ab:	4d 0f af c6          	imul   %r14,%r8
  68e3af:	4d 0f af de          	imul   %r14,%r11
  68e3b3:	49 0f af fe          	imul   %r14,%rdi
  68e3b7:	4d 3b f5             	cmp    %r13,%r14
  68e3ba:	0f 83 ad 00 00 00    	jae    68e46d <step3d_t_mod_mp_step3d_t_tile_+0x77fd>
  68e3c0:	48 8b b5 20 fd ff ff 	mov    -0x2e0(%rbp),%rsi
  68e3c7:	4c 03 c0             	add    %rax,%r8
  68e3ca:	4c 8b 8d 38 fd ff ff 	mov    -0x2c8(%rbp),%r9
  68e3d1:	4c 8b 95 c8 fc ff ff 	mov    -0x338(%rbp),%r10
  68e3d8:	4c 8b bd 18 fd ff ff 	mov    -0x2e8(%rbp),%r15
  68e3df:	48 03 f1             	add    %rcx,%rsi
  68e3e2:	48 89 85 10 fe ff ff 	mov    %rax,-0x1f0(%rbp)
  68e3e9:	4c 03 c9             	add    %rcx,%r9
  68e3ec:	48 89 8d 18 fe ff ff 	mov    %rcx,-0x1e8(%rbp)
  68e3f3:	4c 03 d1             	add    %rcx,%r10
  68e3f6:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  68e3fa:	4c 03 f9             	add    %rcx,%r15
  68e3fd:	48 8b 4d 88          	mov    -0x78(%rbp),%rcx
  68e401:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  68e408:	00 
  68e409:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  68e410:	c5 fb 59 0c 17       	vmulsd (%rdi,%rdx,1),%xmm0,%xmm1
  68e415:	48 03 f9             	add    %rcx,%rdi
  68e418:	c4 a1 7b 10 5c f6 08 	vmovsd 0x8(%rsi,%r14,8),%xmm3
  68e41f:	c4 01 73 59 04 23    	vmulsd (%r11,%r12,1),%xmm1,%xmm8
  68e425:	4c 03 d8             	add    %rax,%r11
  68e428:	c4 81 63 5c 24 f2    	vsubsd (%r10,%r14,8),%xmm3,%xmm4
  68e42e:	c4 81 7b 10 54 f1 08 	vmovsd 0x8(%r9,%r14,8),%xmm2
  68e435:	c5 bb 59 f4          	vmulsd %xmm4,%xmm8,%xmm6
  68e439:	c4 81 6b 5c 2c f7    	vsubsd (%r15,%r14,8),%xmm2,%xmm5
  68e43f:	c4 62 d1 a9 c6       	vfmadd213sd %xmm6,%xmm5,%xmm8
  68e444:	49 ff c6             	inc    %r14
  68e447:	c4 c1 7b 10 38       	vmovsd (%r8),%xmm7
  68e44c:	c4 41 43 5c c8       	vsubsd %xmm8,%xmm7,%xmm9
  68e451:	c4 41 7b 11 08       	vmovsd %xmm9,(%r8)
  68e456:	4c 03 45 f8          	add    -0x8(%rbp),%r8
  68e45a:	4d 3b f5             	cmp    %r13,%r14
  68e45d:	72 b1                	jb     68e410 <step3d_t_mod_mp_step3d_t_tile_+0x77a0>
  68e45f:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
  68e466:	48 8b 8d 18 fe ff ff 	mov    -0x1e8(%rbp),%rcx
  68e46d:	48 8b b5 38 ff ff ff 	mov    -0xc8(%rbp),%rsi
  68e474:	48 ff c6             	inc    %rsi
  68e477:	48 03 8d 70 ff ff ff 	add    -0x90(%rbp),%rcx
  68e47e:	48 03 95 58 fe ff ff 	add    -0x1a8(%rbp),%rdx
  68e485:	4c 03 a5 60 fe ff ff 	add    -0x1a0(%rbp),%r12
  68e48c:	48 03 85 00 ff ff ff 	add    -0x100(%rbp),%rax
  68e493:	48 89 b5 38 ff ff ff 	mov    %rsi,-0xc8(%rbp)
  68e49a:	48 3b b5 68 ff ff ff 	cmp    -0x98(%rbp),%rsi
  68e4a1:	0f 82 86 fd ff ff    	jb     68e22d <step3d_t_mod_mp_step3d_t_tile_+0x75bd>
  68e4a7:	48 8b b5 80 fa ff ff 	mov    -0x580(%rbp),%rsi
  68e4ae:	48 3b b5 78 fa ff ff 	cmp    -0x588(%rbp),%rsi
  68e4b5:	0f 82 37 ce ff ff    	jb     68b2f2 <step3d_t_mod_mp_step3d_t_tile_+0x4682>
  68e4bb:	4c 8b 95 b8 f5 ff ff 	mov    -0xa48(%rbp),%r10
  68e4c2:	4c 8b 9d 38 f9 ff ff 	mov    -0x6c8(%rbp),%r11
  68e4c9:	44 8b a5 00 fb ff ff 	mov    -0x500(%rbp),%r12d
  68e4d0:	44 8b ad f8 fa ff ff 	mov    -0x508(%rbp),%r13d
  68e4d7:	4c 8b b5 f0 f8 ff ff 	mov    -0x710(%rbp),%r14
  68e4de:	49 ff c3             	inc    %r11
  68e4e1:	4d 3b da             	cmp    %r10,%r11
  68e4e4:	0f 82 68 cd ff ff    	jb     68b252 <step3d_t_mod_mp_step3d_t_tile_+0x45e2>
  68e4ea:	bf 70 56 b3 00       	mov    $0xb35670,%edi
  68e4ef:	8b b5 d0 f8 ff ff    	mov    -0x730(%rbp),%esi
  68e4f5:	c5 f8 77             	vzeroupper 
  68e4f8:	e8 03 fc d7 ff       	callq  40e100 <__kmpc_for_static_fini@plt>
  68e4fd:	48 8b 95 b0 f5 ff ff 	mov    -0xa50(%rbp),%rdx
  68e504:	48 8b 85 a8 f5 ff ff 	mov    -0xa58(%rbp),%rax
  68e50b:	48 83 c0 1f          	add    $0x1f,%rax
  68e50f:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68e513:	48 03 e0             	add    %rax,%rsp
  68e516:	48 8b 95 98 f5 ff ff 	mov    -0xa68(%rbp),%rdx
  68e51d:	48 8b 85 a0 f5 ff ff 	mov    -0xa60(%rbp),%rax
  68e524:	48 83 c0 1f          	add    $0x1f,%rax
  68e528:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68e52c:	48 03 e0             	add    %rax,%rsp
  68e52f:	48 8b 95 88 f5 ff ff 	mov    -0xa78(%rbp),%rdx
  68e536:	48 8b 85 90 f5 ff ff 	mov    -0xa70(%rbp),%rax
  68e53d:	48 83 c0 1f          	add    $0x1f,%rax
  68e541:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68e545:	48 03 e0             	add    %rax,%rsp
  68e548:	48 8b 95 78 f5 ff ff 	mov    -0xa88(%rbp),%rdx
  68e54f:	48 8b 85 80 f5 ff ff 	mov    -0xa80(%rbp),%rax
  68e556:	48 83 c0 1f          	add    $0x1f,%rax
  68e55a:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  68e55e:	48 03 e0             	add    %rax,%rsp
  68e561:	4c 8b bd 10 f9 ff ff 	mov    -0x6f0(%rbp),%r15
  68e568:	4c 8b b5 18 f9 ff ff 	mov    -0x6e8(%rbp),%r14
  68e56f:	4c 8b ad 20 f9 ff ff 	mov    -0x6e0(%rbp),%r13
  68e576:	4c 8b a5 28 f9 ff ff 	mov    -0x6d8(%rbp),%r12
  68e57d:	c9                   	leaveq 
  68e57e:	48 89 dc             	mov    %rbx,%rsp
  68e581:	5b                   	pop    %rbx
  68e582:	c3                   	retq   
  68e583:	53                   	push   %rbx
  68e584:	48 89 e3             	mov    %rsp,%rbx
  68e587:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  68e58b:	55                   	push   %rbp
  68e58c:	55                   	push   %rbp
  68e58d:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  68e591:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  68e596:	48 89 e5             	mov    %rsp,%rbp
  68e599:	48 81 ec 90 0b 00 00 	sub    $0xb90,%rsp
  68e5a0:	4c 89 a5 28 f9 ff ff 	mov    %r12,-0x6d8(%rbp)
  68e5a7:	48 8b 73 18          	mov    0x18(%rbx),%rsi
  68e5ab:	4c 8b 63 30          	mov    0x30(%rbx),%r12
  68e5af:	48 8b 43 28          	mov    0x28(%rbx),%rax
  68e5b3:	48 89 b5 88 f4 ff ff 	mov    %rsi,-0xb78(%rbp)
  68e5ba:	48 8b 73 20          	mov    0x20(%rbx),%rsi
  68e5be:	48 8b 12             	mov    (%rdx),%rdx
  68e5c1:	4d 63 24 24          	movslq (%r12),%r12
  68e5c5:	48 63 09             	movslq (%rcx),%rcx
  68e5c8:	4c 89 a5 90 f4 ff ff 	mov    %r12,-0xb70(%rbp)
  68e5cf:	48 63 00             	movslq (%rax),%rax
  68e5d2:	48 89 8d f0 f4 ff ff 	mov    %rcx,-0xb10(%rbp)
  68e5d9:	4c 8b 26             	mov    (%rsi),%r12
  68e5dc:	48 8b 0d fd da 4a 00 	mov    0x4adafd(%rip),%rcx        # b3c0e0 <mod_param_mp_n_+0x40>
  68e5e3:	48 f7 d9             	neg    %rcx
  68e5e6:	48 89 85 a0 f4 ff ff 	mov    %rax,-0xb60(%rbp)
  68e5ed:	4c 89 a5 98 f4 ff ff 	mov    %r12,-0xb68(%rbp)
  68e5f4:	48 63 02             	movslq (%rdx),%rax
  68e5f7:	48 03 c8             	add    %rax,%rcx
  68e5fa:	4c 89 bd 10 f9 ff ff 	mov    %r15,-0x6f0(%rbp)
  68e601:	4d 63 21             	movslq (%r9),%r12
  68e604:	4c 8b 5b 10          	mov    0x10(%rbx),%r11
  68e608:	4c 8b 53 38          	mov    0x38(%rbx),%r10
  68e60c:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
  68e610:	48 8b 15 89 da 4a 00 	mov    0x4ada89(%rip),%rdx        # b3c0a0 <mod_param_mp_n_>
  68e617:	4c 89 ad 20 f9 ff ff 	mov    %r13,-0x6e0(%rbp)
  68e61e:	4c 89 a5 80 f4 ff ff 	mov    %r12,-0xb80(%rbp)
  68e625:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
  68e629:	4c 8b 63 58          	mov    0x58(%rbx),%r12
  68e62d:	4c 89 b5 18 f9 ff ff 	mov    %r14,-0x6e8(%rbp)
  68e634:	44 8b 37             	mov    (%rdi),%r14d
  68e637:	49 63 3f             	movslq (%r15),%rdi
  68e63a:	4d 63 12             	movslq (%r10),%r10
  68e63d:	4d 63 1b             	movslq (%r11),%r11
  68e640:	4d 63 00             	movslq (%r8),%r8
  68e643:	44 89 b5 e0 f4 ff ff 	mov    %r14d,-0xb20(%rbp)
  68e64a:	4c 63 34 8a          	movslq (%rdx,%rcx,4),%r14
  68e64e:	48 89 bd b0 f4 ff ff 	mov    %rdi,-0xb50(%rbp)
  68e655:	4d 63 6d 00          	movslq 0x0(%r13),%r13
  68e659:	4c 89 95 a8 f4 ff ff 	mov    %r10,-0xb58(%rbp)
  68e660:	4c 89 9d 78 f4 ff ff 	mov    %r11,-0xb88(%rbp)
  68e667:	4c 89 85 e8 f4 ff ff 	mov    %r8,-0xb18(%rbp)
  68e66e:	4d 63 24 24          	movslq (%r12),%r12
  68e672:	4d 85 f6             	test   %r14,%r14
  68e675:	0f 8e da 03 00 00    	jle    68ea55 <step3d_t_mod_mp_step3d_t_tile_+0x7de5>
  68e67b:	4d 89 c7             	mov    %r8,%r15
  68e67e:	48 83 c4 e0          	add    $0xffffffffffffffe0,%rsp
  68e682:	4c 2b bd f0 f4 ff ff 	sub    -0xb10(%rbp),%r15
  68e689:	48 8d 85 c8 f4 ff ff 	lea    -0xb38(%rbp),%rax
  68e690:	49 ff c7             	inc    %r15
  68e693:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  68e699:	4d 0f af f7          	imul   %r15,%r14
  68e69d:	48 89 04 24          	mov    %rax,(%rsp)
  68e6a1:	bf 24 56 b3 00       	mov    $0xb35624,%edi
  68e6a6:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
  68e6ab:	ba 22 00 00 00       	mov    $0x22,%edx
  68e6b0:	4c 89 54 24 10       	mov    %r10,0x10(%rsp)
  68e6b5:	48 8d 8d 08 f5 ff ff 	lea    -0xaf8(%rbp),%rcx
  68e6bc:	8b 70 18             	mov    0x18(%rax),%esi
  68e6bf:	4c 8d 85 b8 f4 ff ff 	lea    -0xb48(%rbp),%r8
  68e6c6:	49 ff ce             	dec    %r14
  68e6c9:	4c 8d 8d c0 f4 ff ff 	lea    -0xb40(%rbp),%r9
  68e6d0:	48 c7 40 f0 00 00 00 	movq   $0x0,-0x10(%rax)
  68e6d7:	00 
  68e6d8:	c7 40 40 00 00 00 00 	movl   $0x0,0x40(%rax)
  68e6df:	4c 89 70 f8          	mov    %r14,-0x8(%rax)
  68e6e3:	4c 89 10             	mov    %r10,(%rax)
  68e6e6:	e8 a5 fb d7 ff       	callq  40e290 <__kmpc_for_static_init_8@plt>
  68e6eb:	48 83 c4 20          	add    $0x20,%rsp
  68e6ef:	48 8b 85 b8 f4 ff ff 	mov    -0xb48(%rbp),%rax
  68e6f6:	48 89 85 d0 f4 ff ff 	mov    %rax,-0xb30(%rbp)
  68e6fd:	49 3b c6             	cmp    %r14,%rax
  68e700:	48 8b 85 c0 f4 ff ff 	mov    -0xb40(%rbp),%rax
  68e707:	0f 8f 35 03 00 00    	jg     68ea42 <step3d_t_mod_mp_step3d_t_tile_+0x7dd2>
  68e70d:	48 8b bd a0 f4 ff ff 	mov    -0xb60(%rbp),%rdi
  68e714:	49 3b c6             	cmp    %r14,%rax
  68e717:	4c 8b 85 90 f4 ff ff 	mov    -0xb70(%rbp),%r8
  68e71e:	4c 8b 8d a8 f4 ff ff 	mov    -0xb58(%rbp),%r9
  68e725:	4c 0f 4c f0          	cmovl  %rax,%r14
  68e729:	4c 2b c7             	sub    %rdi,%r8
  68e72c:	4d 2b e9             	sub    %r9,%r13
  68e72f:	48 8b 95 b0 f4 ff ff 	mov    -0xb50(%rbp),%rdx
  68e736:	49 ff c5             	inc    %r13
  68e739:	4c 8b 9d 80 f4 ff ff 	mov    -0xb80(%rbp),%r11
  68e740:	48 8b b5 88 f4 ff ff 	mov    -0xb78(%rbp),%rsi
  68e747:	4c 2b b5 d0 f4 ff ff 	sub    -0xb30(%rbp),%r14
  68e74e:	4e 8d 04 c5 08 00 00 	lea    0x8(,%r8,8),%r8
  68e755:	00 
  68e756:	4d 0f af c8          	imul   %r8,%r9
  68e75a:	4d 0f af e8          	imul   %r8,%r13
  68e75e:	c5 fd 10 0d 1a 66 23 	vmovupd 0x23661a(%rip),%ymm1        # 8c4d80 <var$630.126.450+0xc0>
  68e765:	00 
  68e766:	c5 fb 10 05 92 88 23 	vmovsd 0x238892(%rip),%xmm0        # 8c7000 <__STRLITPACK_199.115+0x70>
  68e76d:	00 
  68e76e:	49 ff c6             	inc    %r14
  68e771:	4d 8d 0c f9          	lea    (%r9,%rdi,8),%r9
  68e775:	48 8b bd 98 f4 ff ff 	mov    -0xb68(%rbp),%rdi
  68e77c:	4a 8d 34 de          	lea    (%rsi,%r11,8),%rsi
  68e780:	49 2b f1             	sub    %r9,%rsi
  68e783:	48 c7 85 d8 f4 ff ff 	movq   $0x0,-0xb28(%rbp)
  68e78a:	00 00 00 00 
  68e78e:	49 2b f5             	sub    %r13,%rsi
  68e791:	4c 8b 57 50          	mov    0x50(%rdi),%r10
  68e795:	4c 89 95 18 f5 ff ff 	mov    %r10,-0xae8(%rbp)
  68e79c:	4d 0f af e2          	imul   %r10,%r12
  68e7a0:	49 89 d2             	mov    %rdx,%r10
  68e7a3:	49 f7 da             	neg    %r10
  68e7a6:	4d 03 d3             	add    %r11,%r10
  68e7a9:	48 8b 4f 38          	mov    0x38(%rdi),%rcx
  68e7ad:	4c 0f af d1          	imul   %rcx,%r10
  68e7b1:	48 8b 07             	mov    (%rdi),%rax
  68e7b4:	4c 8b 4f 68          	mov    0x68(%rdi),%r9
  68e7b8:	49 2b c1             	sub    %r9,%rax
  68e7bb:	48 89 8d 70 f4 ff ff 	mov    %rcx,-0xb90(%rbp)
  68e7c2:	48 89 c1             	mov    %rax,%rcx
  68e7c5:	49 2b cc             	sub    %r12,%rcx
  68e7c8:	4c 03 d1             	add    %rcx,%r10
  68e7cb:	48 c1 e2 03          	shl    $0x3,%rdx
  68e7cf:	4c 89 95 10 f5 ff ff 	mov    %r10,-0xaf0(%rbp)
  68e7d6:	4e 8d 14 dd 00 00 00 	lea    0x0(,%r11,8),%r10
  68e7dd:	00 
  68e7de:	48 8b bd 78 f4 ff ff 	mov    -0xb88(%rbp),%rdi
  68e7e5:	4c 2b d2             	sub    %rdx,%r10
  68e7e8:	49 2b fb             	sub    %r11,%rdi
  68e7eb:	4c 03 d0             	add    %rax,%r10
  68e7ee:	48 ff c7             	inc    %rdi
  68e7f1:	4d 2b d4             	sub    %r12,%r10
  68e7f4:	41 89 fc             	mov    %edi,%r12d
  68e7f7:	41 83 e4 fc          	and    $0xfffffffc,%r12d
  68e7fb:	4d 63 e4             	movslq %r12d,%r12
  68e7fe:	48 8b 8d 70 f4 ff ff 	mov    -0xb90(%rbp),%rcx
  68e805:	4c 89 95 20 f5 ff ff 	mov    %r10,-0xae0(%rbp)
  68e80c:	4c 89 a5 28 f5 ff ff 	mov    %r12,-0xad8(%rbp)
  68e813:	4c 89 b5 f8 f4 ff ff 	mov    %r14,-0xb08(%rbp)
  68e81a:	4c 89 bd 00 f5 ff ff 	mov    %r15,-0xb00(%rbp)
  68e821:	4c 8b b5 d0 f4 ff ff 	mov    -0xb30(%rbp),%r14
  68e828:	4c 8b bd d8 f4 ff ff 	mov    -0xb28(%rbp),%r15
  68e82f:	4c 8b 95 f0 f4 ff ff 	mov    -0xb10(%rbp),%r10
  68e836:	4b 8d 04 3e          	lea    (%r14,%r15,1),%rax
  68e83a:	48 99                	cqto   
  68e83c:	48 f7 bd 00 f5 ff ff 	idivq  -0xb00(%rbp)
  68e843:	48 ff c0             	inc    %rax
  68e846:	49 03 d2             	add    %r10,%rdx
  68e849:	4c 63 f0             	movslq %eax,%r14
  68e84c:	4c 63 fa             	movslq %edx,%r15
  68e84f:	4c 3b 95 e8 f4 ff ff 	cmp    -0xb18(%rbp),%r10
  68e856:	0f 8f c8 01 00 00    	jg     68ea24 <step3d_t_mod_mp_step3d_t_tile_+0x7db4>
  68e85c:	48 83 f9 08          	cmp    $0x8,%rcx
  68e860:	0f 85 bc 00 00 00    	jne    68e922 <step3d_t_mod_mp_step3d_t_tile_+0x7cb2>
  68e866:	48 8b 85 80 f4 ff ff 	mov    -0xb80(%rbp),%rax
  68e86d:	48 3b 85 78 f4 ff ff 	cmp    -0xb88(%rbp),%rax
  68e874:	0f 8f aa 01 00 00    	jg     68ea24 <step3d_t_mod_mp_step3d_t_tile_+0x7db4>
  68e87a:	48 83 ff 04          	cmp    $0x4,%rdi
  68e87e:	0f 8c dc 29 00 00    	jl     691260 <step3d_t_mod_mp_step3d_t_tile_+0xa5f0>
  68e884:	4c 89 f2             	mov    %r14,%rdx
  68e887:	4c 89 f8             	mov    %r15,%rax
  68e88a:	49 0f af d5          	imul   %r13,%rdx
  68e88e:	49 0f af c0          	imul   %r8,%rax
  68e892:	4d 89 cc             	mov    %r9,%r12
  68e895:	48 03 d6             	add    %rsi,%rdx
  68e898:	4d 0f af e6          	imul   %r14,%r12
  68e89c:	48 03 d0             	add    %rax,%rdx
  68e89f:	45 33 d2             	xor    %r10d,%r10d
  68e8a2:	48 8b 85 18 f5 ff ff 	mov    -0xae8(%rbp),%rax
  68e8a9:	49 0f af c7          	imul   %r15,%rax
  68e8ad:	4c 03 a5 20 f5 ff ff 	add    -0xae0(%rbp),%r12
  68e8b4:	4c 8b 9d 28 f5 ff ff 	mov    -0xad8(%rbp),%r11
  68e8bb:	49 03 c4             	add    %r12,%rax
  68e8be:	4d 89 dc             	mov    %r11,%r12
  68e8c1:	c4 a1 75 5e 14 d0    	vdivpd (%rax,%r10,8),%ymm1,%ymm2
  68e8c7:	c4 a1 7d 11 14 d2    	vmovupd %ymm2,(%rdx,%r10,8)
  68e8cd:	49 83 c2 04          	add    $0x4,%r10
  68e8d1:	4d 3b d4             	cmp    %r12,%r10
  68e8d4:	72 eb                	jb     68e8c1 <step3d_t_mod_mp_step3d_t_tile_+0x7c51>
  68e8d6:	4c 3b df             	cmp    %rdi,%r11
  68e8d9:	0f 83 45 01 00 00    	jae    68ea24 <step3d_t_mod_mp_step3d_t_tile_+0x7db4>
  68e8df:	4c 89 f0             	mov    %r14,%rax
  68e8e2:	4c 89 fa             	mov    %r15,%rdx
  68e8e5:	49 0f af c5          	imul   %r13,%rax
  68e8e9:	4d 0f af f1          	imul   %r9,%r14
  68e8ed:	49 0f af d0          	imul   %r8,%rdx
  68e8f1:	4c 0f af bd 18 f5 ff 	imul   -0xae8(%rbp),%r15
  68e8f8:	ff 
  68e8f9:	4c 03 b5 20 f5 ff ff 	add    -0xae0(%rbp),%r14
  68e900:	48 03 c6             	add    %rsi,%rax
  68e903:	48 03 c2             	add    %rdx,%rax
  68e906:	4d 03 fe             	add    %r14,%r15
  68e909:	c4 81 7b 5e 14 df    	vdivsd (%r15,%r11,8),%xmm0,%xmm2
  68e90f:	c4 a1 7b 11 14 d8    	vmovsd %xmm2,(%rax,%r11,8)
  68e915:	49 ff c3             	inc    %r11
  68e918:	4c 3b df             	cmp    %rdi,%r11
  68e91b:	72 ec                	jb     68e909 <step3d_t_mod_mp_step3d_t_tile_+0x7c99>
  68e91d:	e9 02 01 00 00       	jmpq   68ea24 <step3d_t_mod_mp_step3d_t_tile_+0x7db4>
  68e922:	48 8b 85 80 f4 ff ff 	mov    -0xb80(%rbp),%rax
  68e929:	48 3b 85 78 f4 ff ff 	cmp    -0xb88(%rbp),%rax
  68e930:	0f 8f ee 00 00 00    	jg     68ea24 <step3d_t_mod_mp_step3d_t_tile_+0x7db4>
  68e936:	48 83 ff 04          	cmp    $0x4,%rdi
  68e93a:	0f 8c 28 29 00 00    	jl     691268 <step3d_t_mod_mp_step3d_t_tile_+0xa5f8>
  68e940:	4c 89 ca             	mov    %r9,%rdx
  68e943:	4d 89 fb             	mov    %r15,%r11
  68e946:	49 0f af d6          	imul   %r14,%rdx
  68e94a:	4d 0f af d8          	imul   %r8,%r11
  68e94e:	4c 8b a5 18 f5 ff ff 	mov    -0xae8(%rbp),%r12
  68e955:	45 33 d2             	xor    %r10d,%r10d
  68e958:	4d 0f af e7          	imul   %r15,%r12
  68e95c:	48 03 95 10 f5 ff ff 	add    -0xaf0(%rbp),%rdx
  68e963:	49 03 d4             	add    %r12,%rdx
  68e966:	4d 89 f4             	mov    %r14,%r12
  68e969:	4d 0f af e5          	imul   %r13,%r12
  68e96d:	4c 03 e6             	add    %rsi,%r12
  68e970:	48 8b 85 28 f5 ff ff 	mov    -0xad8(%rbp),%rax
  68e977:	4d 03 e3             	add    %r11,%r12
  68e97a:	48 89 bd 70 f4 ff ff 	mov    %rdi,-0xb90(%rbp)
  68e981:	45 33 db             	xor    %r11d,%r11d
  68e984:	4c 89 8d 88 f4 ff ff 	mov    %r9,-0xb78(%rbp)
  68e98b:	48 89 c7             	mov    %rax,%rdi
  68e98e:	4e 8d 0c 1a          	lea    (%rdx,%r11,1),%r9
  68e992:	c4 c1 7b 10 11       	vmovsd (%r9),%xmm2
  68e997:	4d 8d 1c 8b          	lea    (%r11,%rcx,4),%r11
  68e99b:	c4 c1 69 16 24 09    	vmovhpd (%r9,%rcx,1),%xmm2,%xmm4
  68e9a1:	4d 8d 0c 49          	lea    (%r9,%rcx,2),%r9
  68e9a5:	c4 c1 7b 10 19       	vmovsd (%r9),%xmm3
  68e9aa:	c4 c1 61 16 2c 09    	vmovhpd (%r9,%rcx,1),%xmm3,%xmm5
  68e9b0:	c4 e3 5d 18 f5 01    	vinsertf128 $0x1,%xmm5,%ymm4,%ymm6
  68e9b6:	c5 f5 5e fe          	vdivpd %ymm6,%ymm1,%ymm7
  68e9ba:	c4 81 7d 11 3c d4    	vmovupd %ymm7,(%r12,%r10,8)
  68e9c0:	49 83 c2 04          	add    $0x4,%r10
  68e9c4:	4c 3b d7             	cmp    %rdi,%r10
  68e9c7:	72 c5                	jb     68e98e <step3d_t_mod_mp_step3d_t_tile_+0x7d1e>
  68e9c9:	48 8b bd 70 f4 ff ff 	mov    -0xb90(%rbp),%rdi
  68e9d0:	4c 8b 8d 88 f4 ff ff 	mov    -0xb78(%rbp),%r9
  68e9d7:	49 89 ca             	mov    %rcx,%r10
  68e9da:	4c 0f af d0          	imul   %rax,%r10
  68e9de:	48 3b c7             	cmp    %rdi,%rax
  68e9e1:	73 41                	jae    68ea24 <step3d_t_mod_mp_step3d_t_tile_+0x7db4>
  68e9e3:	4c 89 ca             	mov    %r9,%rdx
  68e9e6:	49 0f af d6          	imul   %r14,%rdx
  68e9ea:	4d 0f af f5          	imul   %r13,%r14
  68e9ee:	4c 8b 9d 18 f5 ff ff 	mov    -0xae8(%rbp),%r11
  68e9f5:	4c 03 f6             	add    %rsi,%r14
  68e9f8:	4d 0f af df          	imul   %r15,%r11
  68e9fc:	4d 0f af f8          	imul   %r8,%r15
  68ea00:	48 03 95 10 f5 ff ff 	add    -0xaf0(%rbp),%rdx
  68ea07:	4d 03 f7             	add    %r15,%r14
  68ea0a:	49 03 d3             	add    %r11,%rdx
  68ea0d:	c4 c1 7b 5e 14 12    	vdivsd (%r10,%rdx,1),%xmm0,%xmm2
  68ea13:	c4 c1 7b 11 14 c6    	vmovsd %xmm2,(%r14,%rax,8)
  68ea19:	48 ff c0             	inc    %rax
  68ea1c:	4c 03 d1             	add    %rcx,%r10
  68ea1f:	48 3b c7             	cmp    %rdi,%rax
  68ea22:	72 e9                	jb     68ea0d <step3d_t_mod_mp_step3d_t_tile_+0x7d9d>
  68ea24:	48 8b 85 d8 f4 ff ff 	mov    -0xb28(%rbp),%rax
  68ea2b:	48 ff c0             	inc    %rax
  68ea2e:	48 89 85 d8 f4 ff ff 	mov    %rax,-0xb28(%rbp)
  68ea35:	48 3b 85 f8 f4 ff ff 	cmp    -0xb08(%rbp),%rax
  68ea3c:	0f 82 df fd ff ff    	jb     68e821 <step3d_t_mod_mp_step3d_t_tile_+0x7bb1>
  68ea42:	bf 24 56 b3 00       	mov    $0xb35624,%edi
  68ea47:	8b b5 e0 f4 ff ff    	mov    -0xb20(%rbp),%esi
  68ea4d:	c5 f8 77             	vzeroupper 
  68ea50:	e8 ab f6 d7 ff       	callq  40e100 <__kmpc_for_static_fini@plt>
  68ea55:	4c 8b bd 10 f9 ff ff 	mov    -0x6f0(%rbp),%r15
  68ea5c:	4c 8b b5 18 f9 ff ff 	mov    -0x6e8(%rbp),%r14
  68ea63:	4c 8b ad 20 f9 ff ff 	mov    -0x6e0(%rbp),%r13
  68ea6a:	4c 8b a5 28 f9 ff ff 	mov    -0x6d8(%rbp),%r12
  68ea71:	c9                   	leaveq 
  68ea72:	48 89 dc             	mov    %rbx,%rsp
  68ea75:	5b                   	pop    %rbx
  68ea76:	c3                   	retq   
  68ea77:	4f 8d 0c 06          	lea    (%r14,%r8,1),%r9
  68ea7b:	e9 04 99 ff ff       	jmpq   688384 <step3d_t_mod_mp_step3d_t_tile_+0x1714>
  68ea80:	45 33 ed             	xor    %r13d,%r13d
  68ea83:	e9 09 9d ff ff       	jmpq   688791 <step3d_t_mod_mp_step3d_t_tile_+0x1b21>
  68ea88:	48 8b 95 b8 fb ff ff 	mov    -0x448(%rbp),%rdx
  68ea8f:	4c 8b a5 a8 fb ff ff 	mov    -0x458(%rbp),%r12
  68ea96:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  68ea9d:	49 83 fb 02          	cmp    $0x2,%r11
  68eaa1:	0f 8c 92 21 00 00    	jl     690c39 <step3d_t_mod_mp_step3d_t_tile_+0x9fc9>
  68eaa7:	4c 8b 95 c8 fb ff ff 	mov    -0x438(%rbp),%r10
  68eaae:	45 33 c0             	xor    %r8d,%r8d
  68eab1:	4c 0f af d2          	imul   %rdx,%r10
  68eab5:	48 8b bd 08 fb ff ff 	mov    -0x4f8(%rbp),%rdi
  68eabc:	45 33 f6             	xor    %r14d,%r14d
  68eabf:	48 8b b5 78 fb ff ff 	mov    -0x488(%rbp),%rsi
  68eac6:	48 8b 8d 70 fb ff ff 	mov    -0x490(%rbp),%rcx
  68eacd:	4c 8b bd 30 fb ff ff 	mov    -0x4d0(%rbp),%r15
  68ead4:	49 03 fa             	add    %r10,%rdi
  68ead7:	48 8b 85 38 fb ff ff 	mov    -0x4c8(%rbp),%rax
  68eade:	49 03 f2             	add    %r10,%rsi
  68eae1:	48 89 95 b8 fb ff ff 	mov    %rdx,-0x448(%rbp)
  68eae8:	49 03 ca             	add    %r10,%rcx
  68eaeb:	48 8b 95 d8 fd ff ff 	mov    -0x228(%rbp),%rdx
  68eaf2:	4d 03 fa             	add    %r10,%r15
  68eaf5:	4c 8b 9d d0 fd ff ff 	mov    -0x230(%rbp),%r11
  68eafc:	4e 8d 0c 10          	lea    (%rax,%r10,1),%r9
  68eb00:	4c 03 95 28 fb ff ff 	add    -0x4d8(%rbp),%r10
  68eb07:	33 c0                	xor    %eax,%eax
  68eb09:	4c 8b a5 e0 fd ff ff 	mov    -0x220(%rbp),%r12
  68eb10:	4c 8b ad e8 fd ff ff 	mov    -0x218(%rbp),%r13
  68eb17:	4d 03 ee             	add    %r14,%r13
  68eb1a:	c4 41 7b 10 6d 00    	vmovsd 0x0(%r13),%xmm13
  68eb20:	c4 01 11 16 64 1d 00 	vmovhpd 0x0(%r13,%r11,1),%xmm13,%xmm12
  68eb27:	4d 8d 2c 01          	lea    (%r9,%rax,1),%r13
  68eb2b:	c4 41 7b 10 7d 00    	vmovsd 0x0(%r13),%xmm15
  68eb31:	c4 01 01 16 74 25 00 	vmovhpd 0x0(%r13,%r12,1),%xmm15,%xmm14
  68eb38:	4d 8d 2c 07          	lea    (%r15,%rax,1),%r13
  68eb3c:	c4 41 7b 10 6d 00    	vmovsd 0x0(%r13),%xmm13
  68eb42:	c4 01 11 16 7c 25 00 	vmovhpd 0x0(%r13,%r12,1),%xmm13,%xmm15
  68eb49:	4d 8d 2c 02          	lea    (%r10,%rax,1),%r13
  68eb4d:	c4 41 41 59 ff       	vmulpd %xmm15,%xmm7,%xmm15
  68eb52:	c4 62 89 b8 fd       	vfmadd231pd %xmm5,%xmm14,%xmm15
  68eb57:	c4 41 7b 10 75 00    	vmovsd 0x0(%r13),%xmm14
  68eb5d:	c4 01 09 16 74 25 00 	vmovhpd 0x0(%r13,%r12,1),%xmm14,%xmm14
  68eb64:	c4 62 89 bc fb       	vfnmadd231pd %xmm3,%xmm14,%xmm15
  68eb69:	c4 41 19 59 e7       	vmulpd %xmm15,%xmm12,%xmm12
  68eb6e:	4c 8b ad c8 fd ff ff 	mov    -0x238(%rbp),%r13
  68eb75:	c4 21 79 11 64 c2 08 	vmovupd %xmm12,0x8(%rdx,%r8,8)
  68eb7c:	c4 01 79 11 44 c5 00 	vmovupd %xmm8,0x0(%r13,%r8,8)
  68eb83:	4c 8b ad 10 fe ff ff 	mov    -0x1f0(%rbp),%r13
  68eb8a:	4d 03 ee             	add    %r14,%r13
  68eb8d:	c4 41 7b 10 75 00    	vmovsd 0x0(%r13),%xmm14
  68eb93:	4f 8d 34 5e          	lea    (%r14,%r11,2),%r14
  68eb97:	c4 01 09 16 74 1d 00 	vmovhpd 0x0(%r13,%r11,1),%xmm14,%xmm14
  68eb9e:	4c 8d 2c 01          	lea    (%rcx,%rax,1),%r13
  68eba2:	c4 41 7b 10 65 00    	vmovsd 0x0(%r13),%xmm12
  68eba8:	c4 01 19 16 6c 25 00 	vmovhpd 0x0(%r13,%r12,1),%xmm12,%xmm13
  68ebaf:	4c 8d 2c 06          	lea    (%rsi,%rax,1),%r13
  68ebb3:	c4 41 7b 10 7d 00    	vmovsd 0x0(%r13),%xmm15
  68ebb9:	c4 01 01 16 64 25 00 	vmovhpd 0x0(%r13,%r12,1),%xmm15,%xmm12
  68ebc0:	4c 8d 2c 07          	lea    (%rdi,%rax,1),%r13
  68ebc4:	c4 41 41 59 e4       	vmulpd %xmm12,%xmm7,%xmm12
  68ebc9:	c4 62 91 b8 e5       	vfmadd231pd %xmm5,%xmm13,%xmm12
  68ebce:	4a 8d 04 60          	lea    (%rax,%r12,2),%rax
  68ebd2:	c4 41 7b 10 6d 00    	vmovsd 0x0(%r13),%xmm13
  68ebd8:	c4 01 11 16 6c 25 00 	vmovhpd 0x0(%r13,%r12,1),%xmm13,%xmm13
  68ebdf:	c4 62 91 bc e3       	vfnmadd231pd %xmm3,%xmm13,%xmm12
  68ebe4:	c4 41 09 59 e4       	vmulpd %xmm12,%xmm14,%xmm12
  68ebe9:	4c 8b ad 08 fe ff ff 	mov    -0x1f8(%rbp),%r13
  68ebf0:	c4 01 79 11 64 c5 00 	vmovupd %xmm12,0x0(%r13,%r8,8)
  68ebf7:	4c 8b ad 00 fe ff ff 	mov    -0x200(%rbp),%r13
  68ebfe:	c4 01 79 11 44 c5 00 	vmovupd %xmm8,0x0(%r13,%r8,8)
  68ec05:	49 83 c0 02          	add    $0x2,%r8
  68ec09:	4c 3b 85 f8 fd ff ff 	cmp    -0x208(%rbp),%r8
  68ec10:	0f 82 fa fe ff ff    	jb     68eb10 <step3d_t_mod_mp_step3d_t_tile_+0x7ea0>
  68ec16:	4c 8b 9d 60 fd ff ff 	mov    -0x2a0(%rbp),%r11
  68ec1d:	4c 8b 85 f8 fd ff ff 	mov    -0x208(%rbp),%r8
  68ec24:	48 8b 95 b8 fb ff ff 	mov    -0x448(%rbp),%rdx
  68ec2b:	4c 8b a5 a8 fb ff ff 	mov    -0x458(%rbp),%r12
  68ec32:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  68ec39:	4d 3b c3             	cmp    %r11,%r8
  68ec3c:	0f 83 13 01 00 00    	jae    68ed55 <step3d_t_mod_mp_step3d_t_tile_+0x80e5>
  68ec42:	4c 8b bd c8 fb ff ff 	mov    -0x438(%rbp),%r15
  68ec49:	4c 0f af fa          	imul   %rdx,%r15
  68ec4d:	48 8b b5 08 fb ff ff 	mov    -0x4f8(%rbp),%rsi
  68ec54:	48 8b 8d 78 fb ff ff 	mov    -0x488(%rbp),%rcx
  68ec5b:	48 8b 85 70 fb ff ff 	mov    -0x490(%rbp),%rax
  68ec62:	4c 8b 95 30 fb ff ff 	mov    -0x4d0(%rbp),%r10
  68ec69:	49 03 f7             	add    %r15,%rsi
  68ec6c:	4c 8b 8d 38 fb ff ff 	mov    -0x4c8(%rbp),%r9
  68ec73:	49 03 cf             	add    %r15,%rcx
  68ec76:	4c 8b b5 e0 fd ff ff 	mov    -0x220(%rbp),%r14
  68ec7d:	49 03 c7             	add    %r15,%rax
  68ec80:	48 8b bd d0 fd ff ff 	mov    -0x230(%rbp),%rdi
  68ec87:	4d 03 d7             	add    %r15,%r10
  68ec8a:	4c 8b a5 00 fe ff ff 	mov    -0x200(%rbp),%r12
  68ec91:	4d 03 cf             	add    %r15,%r9
  68ec94:	4c 03 bd 28 fb ff ff 	add    -0x4d8(%rbp),%r15
  68ec9b:	4c 8b ad c8 fd ff ff 	mov    -0x238(%rbp),%r13
  68eca2:	4d 0f af f0          	imul   %r8,%r14
  68eca6:	49 0f af f8          	imul   %r8,%rdi
  68ecaa:	48 89 95 b8 fb ff ff 	mov    %rdx,-0x448(%rbp)
  68ecb1:	4c 89 bd f0 fd ff ff 	mov    %r15,-0x210(%rbp)
  68ecb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  68ecbf:	00 
  68ecc0:	c4 01 6b 59 24 16    	vmulsd (%r14,%r10,1),%xmm2,%xmm12
  68ecc6:	c4 41 6b 59 34 0e    	vmulsd (%r14,%rcx,1),%xmm2,%xmm14
  68eccc:	c4 02 d9 b9 24 0e    	vfmadd231sd (%r14,%r9,1),%xmm4,%xmm12
  68ecd2:	c4 42 d9 b9 34 06    	vfmadd231sd (%r14,%rax,1),%xmm4,%xmm14
  68ecd8:	4c 8b bd f0 fd ff ff 	mov    -0x210(%rbp),%r15
  68ecdf:	48 8b 95 e8 fd ff ff 	mov    -0x218(%rbp),%rdx
  68ece6:	c4 42 f1 bd 34 36    	vfnmadd231sd (%r14,%rsi,1),%xmm1,%xmm14
  68ecec:	c4 02 f1 bd 24 3e    	vfnmadd231sd (%r14,%r15,1),%xmm1,%xmm12
  68ecf2:	c5 1b 59 2c 17       	vmulsd (%rdi,%rdx,1),%xmm12,%xmm13
  68ecf7:	33 d2                	xor    %edx,%edx
  68ecf9:	4c 8b bd d8 fd ff ff 	mov    -0x228(%rbp),%r15
  68ed00:	4c 03 b5 e0 fd ff ff 	add    -0x220(%rbp),%r14
  68ed07:	c4 01 7b 11 6c c7 08 	vmovsd %xmm13,0x8(%r15,%r8,8)
  68ed0e:	4c 8b bd 10 fe ff ff 	mov    -0x1f0(%rbp),%r15
  68ed15:	4b 89 54 c5 00       	mov    %rdx,0x0(%r13,%r8,8)
  68ed1a:	c4 21 0b 59 3c 3f    	vmulsd (%rdi,%r15,1),%xmm14,%xmm15
  68ed20:	4c 8b bd 08 fe ff ff 	mov    -0x1f8(%rbp),%r15
  68ed27:	48 03 bd d0 fd ff ff 	add    -0x230(%rbp),%rdi
  68ed2e:	c4 01 7b 11 3c c7    	vmovsd %xmm15,(%r15,%r8,8)
  68ed34:	4b 89 14 c4          	mov    %rdx,(%r12,%r8,8)
  68ed38:	49 ff c0             	inc    %r8
  68ed3b:	4d 3b c3             	cmp    %r11,%r8
  68ed3e:	72 80                	jb     68ecc0 <step3d_t_mod_mp_step3d_t_tile_+0x8050>
  68ed40:	48 8b 95 b8 fb ff ff 	mov    -0x448(%rbp),%rdx
  68ed47:	4c 8b a5 a8 fb ff ff 	mov    -0x458(%rbp),%r12
  68ed4e:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  68ed55:	49 83 fb 04          	cmp    $0x4,%r11
  68ed59:	0f 8c d3 1e 00 00    	jl     690c32 <step3d_t_mod_mp_step3d_t_tile_+0x9fc2>
  68ed5f:	48 8b bd 60 fb ff ff 	mov    -0x4a0(%rbp),%rdi
  68ed66:	48 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%rax
  68ed6d:	4c 8b 85 48 fb ff ff 	mov    -0x4b8(%rbp),%r8
  68ed74:	4c 8b 8d 50 fb ff ff 	mov    -0x4b0(%rbp),%r9
  68ed7b:	c5 7b 12 24 c7       	vmovddup (%rdi,%rax,8),%xmm12
  68ed80:	33 c0                	xor    %eax,%eax
  68ed82:	48 8b bd 30 fe ff ff 	mov    -0x1d0(%rbp),%rdi
  68ed89:	33 c9                	xor    %ecx,%ecx
  68ed8b:	48 89 bd 98 fb ff ff 	mov    %rdi,-0x468(%rbp)
  68ed92:	33 f6                	xor    %esi,%esi
  68ed94:	48 8b bd 40 fb ff ff 	mov    -0x4c0(%rbp),%rdi
  68ed9b:	4c 8b 95 58 fb ff ff 	mov    -0x4a8(%rbp),%r10
  68eda2:	4c 8b 9d 30 fe ff ff 	mov    -0x1d0(%rbp),%r11
  68eda9:	4c 8b a5 00 fd ff ff 	mov    -0x300(%rbp),%r12
  68edb0:	4c 8b ad f8 fb ff ff 	mov    -0x408(%rbp),%r13
  68edb7:	4c 8b b5 f0 fb ff ff 	mov    -0x410(%rbp),%r14
  68edbe:	66 90                	xchg   %ax,%ax
  68edc0:	4d 8d 3c 0a          	lea    (%r10,%rcx,1),%r15
  68edc4:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  68edc9:	c4 01 11 16 34 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm14
  68edcf:	4d 8d 3c 31          	lea    (%r9,%rsi,1),%r15
  68edd3:	c4 41 19 59 ee       	vmulpd %xmm14,%xmm12,%xmm13
  68edd8:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  68eddd:	c4 01 01 16 34 2f    	vmovhpd (%r15,%r13,1),%xmm15,%xmm14
  68ede3:	4d 8d 3c 08          	lea    (%r8,%rcx,1),%r15
  68ede7:	c4 41 11 59 fe       	vmulpd %xmm14,%xmm13,%xmm15
  68edec:	c4 41 7b 10 2f       	vmovsd (%r15),%xmm13
  68edf1:	4a 8d 0c b1          	lea    (%rcx,%r14,4),%rcx
  68edf5:	c4 01 11 16 34 37    	vmovhpd (%r15,%r14,1),%xmm13,%xmm14
  68edfb:	4c 8d 3c 37          	lea    (%rdi,%rsi,1),%r15
  68edff:	c4 41 19 59 ee       	vmulpd %xmm14,%xmm12,%xmm13
  68ee04:	c4 41 79 11 3c c4    	vmovupd %xmm15,(%r12,%rax,8)
  68ee0a:	c4 41 7b 10 3f       	vmovsd (%r15),%xmm15
  68ee0f:	4a 8d 34 ae          	lea    (%rsi,%r13,4),%rsi
  68ee13:	c4 01 01 16 34 2f    	vmovhpd (%r15,%r13,1),%xmm15,%xmm14
  68ee19:	c4 41 11 59 fe       	vmulpd %xmm14,%xmm13,%xmm15
  68ee1e:	c4 41 79 11 7c c4 10 	vmovupd %xmm15,0x10(%r12,%rax,8)
  68ee25:	48 83 c0 04          	add    $0x4,%rax
  68ee29:	49 3b c3             	cmp    %r11,%rax
  68ee2c:	72 92                	jb     68edc0 <step3d_t_mod_mp_step3d_t_tile_+0x8150>
  68ee2e:	48 8b bd 98 fb ff ff 	mov    -0x468(%rbp),%rdi
  68ee35:	4c 8b a5 a8 fb ff ff 	mov    -0x458(%rbp),%r12
  68ee3c:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  68ee43:	4c 8b 9d 60 fd ff ff 	mov    -0x2a0(%rbp),%r11
  68ee4a:	48 8b 85 f8 fb ff ff 	mov    -0x408(%rbp),%rax
  68ee51:	48 8b 8d f0 fb ff ff 	mov    -0x410(%rbp),%rcx
  68ee58:	48 0f af c7          	imul   %rdi,%rax
  68ee5c:	48 0f af cf          	imul   %rdi,%rcx
  68ee60:	49 3b fb             	cmp    %r11,%rdi
  68ee63:	73 56                	jae    68eebb <step3d_t_mod_mp_step3d_t_tile_+0x824b>
  68ee65:	48 8b b5 60 fb ff ff 	mov    -0x4a0(%rbp),%rsi
  68ee6c:	4c 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%r8
  68ee73:	4c 8b 8d 00 fd ff ff 	mov    -0x300(%rbp),%r9
  68ee7a:	4c 8b 95 f8 fb ff ff 	mov    -0x408(%rbp),%r10
  68ee81:	c4 21 7b 10 24 c6    	vmovsd (%rsi,%r8,8),%xmm12
  68ee87:	48 8b b5 50 fb ff ff 	mov    -0x4b0(%rbp),%rsi
  68ee8e:	4c 8b 85 58 fb ff ff 	mov    -0x4a8(%rbp),%r8
  68ee95:	4c 8b b5 f0 fb ff ff 	mov    -0x410(%rbp),%r14
  68ee9c:	c4 21 1b 59 2c 01    	vmulsd (%rcx,%r8,1),%xmm12,%xmm13
  68eea2:	49 03 ce             	add    %r14,%rcx
  68eea5:	c5 13 59 34 30       	vmulsd (%rax,%rsi,1),%xmm13,%xmm14
  68eeaa:	49 03 c2             	add    %r10,%rax
  68eead:	c4 41 7b 11 34 f9    	vmovsd %xmm14,(%r9,%rdi,8)
  68eeb3:	48 ff c7             	inc    %rdi
  68eeb6:	49 3b fb             	cmp    %r11,%rdi
  68eeb9:	72 e1                	jb     68ee9c <step3d_t_mod_mp_step3d_t_tile_+0x822c>
  68eebb:	33 c9                	xor    %ecx,%ecx
  68eebd:	48 83 bd e0 fb ff ff 	cmpq   $0x0,-0x420(%rbp)
  68eec4:	00 
  68eec5:	7e 38                	jle    68eeff <step3d_t_mod_mp_step3d_t_tile_+0x828f>
  68eec7:	be 01 00 00 00       	mov    $0x1,%esi
  68eecc:	33 c0                	xor    %eax,%eax
  68eece:	4d 85 ed             	test   %r13,%r13
  68eed1:	74 1c                	je     68eeef <step3d_t_mod_mp_step3d_t_tile_+0x827f>
  68eed3:	48 8b b5 80 fb ff ff 	mov    -0x480(%rbp),%rsi
  68eeda:	41 0b 0c c4          	or     (%r12,%rax,8),%ecx
  68eede:	0b 4c c6 04          	or     0x4(%rsi,%rax,8),%ecx
  68eee2:	48 ff c0             	inc    %rax
  68eee5:	49 3b c5             	cmp    %r13,%rax
  68eee8:	72 f0                	jb     68eeda <step3d_t_mod_mp_step3d_t_tile_+0x826a>
  68eeea:	48 8d 74 00 01       	lea    0x1(%rax,%rax,1),%rsi
  68eeef:	48 ff ce             	dec    %rsi
  68eef2:	48 3b b5 e0 fb ff ff 	cmp    -0x420(%rbp),%rsi
  68eef9:	73 04                	jae    68eeff <step3d_t_mod_mp_step3d_t_tile_+0x828f>
  68eefb:	41 0b 0c b4          	or     (%r12,%rsi,4),%ecx
  68eeff:	83 bd 08 fc ff ff 00 	cmpl   $0x0,-0x3f8(%rbp)
  68ef06:	0f 84 cc 04 00 00    	je     68f3d8 <step3d_t_mod_mp_step3d_t_tile_+0x8768>
  68ef0c:	f6 c1 01             	test   $0x1,%cl
  68ef0f:	0f 84 c3 04 00 00    	je     68f3d8 <step3d_t_mod_mp_step3d_t_tile_+0x8768>
  68ef15:	48 8b bd c0 f8 ff ff 	mov    -0x740(%rbp),%rdi
  68ef1c:	45 33 c0             	xor    %r8d,%r8d
  68ef1f:	48 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%rax
  68ef26:	4c 8d 72 01          	lea    0x1(%rdx),%r14
  68ef2a:	48 63 3c 87          	movslq (%rdi,%rax,4),%rdi
  68ef2e:	48 85 ff             	test   %rdi,%rdi
  68ef31:	0f 8e a5 04 00 00    	jle    68f3dc <step3d_t_mod_mp_step3d_t_tile_+0x876c>
  68ef37:	4c 8b bd 98 f8 ff ff 	mov    -0x768(%rbp),%r15
  68ef3e:	45 33 c9             	xor    %r9d,%r9d
  68ef41:	48 8b 8d b8 f8 ff ff 	mov    -0x748(%rbp),%rcx
  68ef48:	48 89 95 b8 fb ff ff 	mov    %rdx,-0x448(%rbp)
  68ef4f:	4c 89 b5 c8 fa ff ff 	mov    %r14,-0x538(%rbp)
  68ef56:	49 8b 84 0f 80 00 00 	mov    0x80(%r15,%rcx,1),%rax
  68ef5d:	00 
  68ef5e:	4d 8b 94 0f 88 00 00 	mov    0x88(%r15,%rcx,1),%r10
  68ef65:	00 
  68ef66:	4c 0f af d0          	imul   %rax,%r10
  68ef6a:	48 89 85 a8 f8 ff ff 	mov    %rax,-0x758(%rbp)
  68ef71:	49 8b 44 0f 48       	mov    0x48(%r15,%rcx,1),%rax
  68ef76:	49 8b 74 0f 40       	mov    0x40(%r15,%rcx,1),%rsi
  68ef7b:	49 2b c2             	sub    %r10,%rax
  68ef7e:	4d 8b 54 0f 38       	mov    0x38(%r15,%rcx,1),%r10
  68ef83:	49 0f af f2          	imul   %r10,%rsi
  68ef87:	49 8b 0c 0f          	mov    (%r15,%rcx,1),%rcx
  68ef8b:	48 2b ce             	sub    %rsi,%rcx
  68ef8e:	48 8b b5 b0 f8 ff ff 	mov    -0x750(%rbp),%rsi
  68ef95:	48 89 85 a0 f8 ff ff 	mov    %rax,-0x760(%rbp)
  68ef9c:	33 c0                	xor    %eax,%eax
  68ef9e:	4c 8b 9d a0 f8 ff ff 	mov    -0x760(%rbp),%r11
  68efa5:	8b 74 96 04          	mov    0x4(%rsi,%rdx,4),%esi
  68efa9:	4c 8b a5 a8 f8 ff ff 	mov    -0x758(%rbp),%r12
  68efb0:	83 e6 01             	and    $0x1,%esi
  68efb3:	49 03 c2             	add    %r10,%rax
  68efb6:	4d 03 cc             	add    %r12,%r9
  68efb9:	4d 8d 68 01          	lea    0x1(%r8),%r13
  68efbd:	44 8b 34 08          	mov    (%rax,%rcx,1),%r14d
  68efc1:	43 8b 14 19          	mov    (%r9,%r11,1),%edx
  68efc5:	85 f6                	test   %esi,%esi
  68efc7:	0f 84 da 03 00 00    	je     68f3a7 <step3d_t_mod_mp_step3d_t_tile_+0x8737>
  68efcd:	44 3b b5 10 fa ff ff 	cmp    -0x5f0(%rbp),%r14d
  68efd4:	0f 8c cd 03 00 00    	jl     68f3a7 <step3d_t_mod_mp_step3d_t_tile_+0x8737>
  68efda:	44 3b b5 c8 f8 ff ff 	cmp    -0x738(%rbp),%r14d
  68efe1:	0f 8f c0 03 00 00    	jg     68f3a7 <step3d_t_mod_mp_step3d_t_tile_+0x8737>
  68efe7:	3b 95 90 f8 ff ff    	cmp    -0x770(%rbp),%edx
  68efed:	0f 85 b4 03 00 00    	jne    68f3a7 <step3d_t_mod_mp_step3d_t_tile_+0x8737>
  68eff3:	48 8b 95 98 f8 ff ff 	mov    -0x768(%rbp),%rdx
  68effa:	4c 8b bd b8 f8 ff ff 	mov    -0x748(%rbp),%r15
  68f001:	4a 8b 94 3a 00 02 00 	mov    0x200(%rdx,%r15,1),%rdx
  68f008:	00 
  68f009:	48 89 95 88 f6 ff ff 	mov    %rdx,-0x978(%rbp)
  68f010:	48 83 fa 08          	cmp    $0x8,%rdx
  68f014:	0f 85 aa 01 00 00    	jne    68f1c4 <step3d_t_mod_mp_step3d_t_tile_+0x8554>
  68f01a:	48 8b 95 98 f8 ff ff 	mov    -0x768(%rbp),%rdx
  68f021:	4a 83 bc 3a 60 02 00 	cmpq   $0x8,0x260(%rdx,%r15,1)
  68f028:	00 08 
  68f02a:	0f 85 94 01 00 00    	jne    68f1c4 <step3d_t_mod_mp_step3d_t_tile_+0x8554>
  68f030:	48 c7 85 80 f6 ff ff 	movq   $0x0,-0x980(%rbp)
  68f037:	00 00 00 00 
  68f03b:	48 83 bd 00 f7 ff ff 	cmpq   $0x0,-0x900(%rbp)
  68f042:	00 
  68f043:	0f 8e 5e 03 00 00    	jle    68f3a7 <step3d_t_mod_mp_step3d_t_tile_+0x8737>
  68f049:	4d 63 f6             	movslq %r14d,%r14
  68f04c:	48 89 85 60 f6 ff ff 	mov    %rax,-0x9a0(%rbp)
  68f053:	48 8b 85 e8 f6 ff ff 	mov    -0x918(%rbp),%rax
  68f05a:	4c 89 ad f0 f6 ff ff 	mov    %r13,-0x910(%rbp)
  68f061:	48 89 8d 58 f6 ff ff 	mov    %rcx,-0x9a8(%rbp)
  68f068:	48 8b 95 b8 fb ff ff 	mov    -0x448(%rbp),%rdx
  68f06f:	4e 8d 6c f0 08       	lea    0x8(%rax,%r14,8),%r13
  68f074:	4c 89 ad 90 f6 ff ff 	mov    %r13,-0x970(%rbp)
  68f07b:	4c 8b ad 98 f8 ff ff 	mov    -0x768(%rbp),%r13
  68f082:	4d 89 fe             	mov    %r15,%r14
  68f085:	89 b5 50 f6 ff ff    	mov    %esi,-0x9b0(%rbp)
  68f08b:	33 f6                	xor    %esi,%esi
  68f08d:	48 89 b5 b0 f6 ff ff 	mov    %rsi,-0x950(%rbp)
  68f094:	4b 8b 84 35 78 02 00 	mov    0x278(%r13,%r14,1),%rax
  68f09b:	00 
  68f09c:	4f 8b bc 35 80 02 00 	mov    0x280(%r13,%r14,1),%r15
  68f0a3:	00 
  68f0a4:	4c 0f af f8          	imul   %rax,%r15
  68f0a8:	4b 8b 8c 35 68 02 00 	mov    0x268(%r13,%r14,1),%rcx
  68f0af:	00 
  68f0b0:	48 89 b5 b8 f6 ff ff 	mov    %rsi,-0x948(%rbp)
  68f0b7:	4b 8b b4 35 20 02 00 	mov    0x220(%r13,%r14,1),%rsi
  68f0be:	00 
  68f0bf:	48 89 85 c8 f6 ff ff 	mov    %rax,-0x938(%rbp)
  68f0c6:	4d 8d 3c cf          	lea    (%r15,%rcx,8),%r15
  68f0ca:	4b 8b 8c 35 98 02 00 	mov    0x298(%r13,%r14,1),%rcx
  68f0d1:	00 
  68f0d2:	48 f7 d9             	neg    %rcx
  68f0d5:	4c 89 95 68 f6 ff ff 	mov    %r10,-0x998(%rbp)
  68f0dc:	4c 89 8d 70 f6 ff ff 	mov    %r9,-0x990(%rbp)
  68f0e3:	48 89 bd 78 f6 ff ff 	mov    %rdi,-0x988(%rbp)
  68f0ea:	4c 8b 8d b0 f6 ff ff 	mov    -0x950(%rbp),%r9
  68f0f1:	48 8d 4c 11 01       	lea    0x1(%rcx,%rdx,1),%rcx
  68f0f6:	4b 8b 94 35 28 02 00 	mov    0x228(%r13,%r14,1),%rdx
  68f0fd:	00 
  68f0fe:	49 2b d7             	sub    %r15,%rdx
  68f101:	4f 8b bc 35 18 02 00 	mov    0x218(%r13,%r14,1),%r15
  68f108:	00 
  68f109:	4b 0f af 8c 35 90 02 	imul   0x290(%r13,%r14,1),%rcx
  68f110:	00 00 
  68f112:	49 0f af f7          	imul   %r15,%rsi
  68f116:	4a 8d 14 c2          	lea    (%rdx,%r8,8),%rdx
  68f11a:	48 03 ca             	add    %rdx,%rcx
  68f11d:	4b 8b 94 35 08 02 00 	mov    0x208(%r13,%r14,1),%rdx
  68f124:	00 
  68f125:	4f 8b b4 35 c8 01 00 	mov    0x1c8(%r13,%r14,1),%r14
  68f12c:	00 
  68f12d:	48 c1 e2 03          	shl    $0x3,%rdx
  68f131:	4c 2b f6             	sub    %rsi,%r14
  68f134:	4c 2b f2             	sub    %rdx,%r14
  68f137:	48 89 8d e0 f6 ff ff 	mov    %rcx,-0x920(%rbp)
  68f13e:	4c 8b ad f0 f6 ff ff 	mov    -0x910(%rbp),%r13
  68f145:	48 8b b5 b8 f6 ff ff 	mov    -0x948(%rbp),%rsi
  68f14c:	4b 8d 14 c6          	lea    (%r14,%r8,8),%rdx
  68f150:	4c 89 ff             	mov    %r15,%rdi
  68f153:	4c 8d 34 41          	lea    (%rcx,%rax,2),%r14
  68f157:	4e 8d 04 7a          	lea    (%rdx,%r15,2),%r8
  68f15b:	48 8b 85 e0 f6 ff ff 	mov    -0x920(%rbp),%rax
  68f162:	48 8b 8d 90 f6 ff ff 	mov    -0x970(%rbp),%rcx
  68f169:	4c 8b 95 c8 f6 ff ff 	mov    -0x938(%rbp),%r10
  68f170:	4c 8b 9d 80 f6 ff ff 	mov    -0x980(%rbp),%r11
  68f177:	4c 8b a5 00 f7 ff ff 	mov    -0x900(%rbp),%r12
  68f17e:	4c 8b bd a0 fd ff ff 	mov    -0x260(%rbp),%r15
  68f185:	c4 41 7b 10 60 08    	vmovsd 0x8(%r8),%xmm12
  68f18b:	4d 03 ca             	add    %r10,%r9
  68f18e:	c4 41 1b 59 76 08    	vmulsd 0x8(%r14),%xmm12,%xmm14
  68f194:	48 03 f7             	add    %rdi,%rsi
  68f197:	c4 41 7b 10 6c 01 08 	vmovsd 0x8(%r9,%rax,1),%xmm13
  68f19e:	49 ff c3             	inc    %r11
  68f1a1:	c4 62 91 b9 74 16 08 	vfmadd231sd 0x8(%rsi,%rdx,1),%xmm13,%xmm14
  68f1a8:	4c 03 c7             	add    %rdi,%r8
  68f1ab:	c4 62 d9 a9 31       	vfmadd213sd (%rcx),%xmm4,%xmm14
  68f1b0:	4d 03 f2             	add    %r10,%r14
  68f1b3:	c5 7b 11 31          	vmovsd %xmm14,(%rcx)
  68f1b7:	49 03 cf             	add    %r15,%rcx
  68f1ba:	4d 3b dc             	cmp    %r12,%r11
  68f1bd:	72 c6                	jb     68f185 <step3d_t_mod_mp_step3d_t_tile_+0x8515>
  68f1bf:	e9 ac 01 00 00       	jmpq   68f370 <step3d_t_mod_mp_step3d_t_tile_+0x8700>
  68f1c4:	48 c7 85 f8 f6 ff ff 	movq   $0x0,-0x908(%rbp)
  68f1cb:	00 00 00 00 
  68f1cf:	48 83 bd 00 f7 ff ff 	cmpq   $0x0,-0x900(%rbp)
  68f1d6:	00 
  68f1d7:	0f 8e ca 01 00 00    	jle    68f3a7 <step3d_t_mod_mp_step3d_t_tile_+0x8737>
  68f1dd:	4d 63 f6             	movslq %r14d,%r14
  68f1e0:	48 8b 95 e8 f6 ff ff 	mov    -0x918(%rbp),%rdx
  68f1e7:	4c 89 ad f0 f6 ff ff 	mov    %r13,-0x910(%rbp)
  68f1ee:	48 89 85 60 f6 ff ff 	mov    %rax,-0x9a0(%rbp)
  68f1f5:	48 89 8d 58 f6 ff ff 	mov    %rcx,-0x9a8(%rbp)
  68f1fc:	4e 8d 6c f2 08       	lea    0x8(%rdx,%r14,8),%r13
  68f201:	4c 89 ad 98 f6 ff ff 	mov    %r13,-0x968(%rbp)
  68f208:	4c 8b ad 98 f8 ff ff 	mov    -0x768(%rbp),%r13
  68f20f:	4d 89 fe             	mov    %r15,%r14
  68f212:	89 b5 50 f6 ff ff    	mov    %esi,-0x9b0(%rbp)
  68f218:	4b 8b 84 35 68 02 00 	mov    0x268(%r13,%r14,1),%rax
  68f21f:	00 
  68f220:	48 f7 d8             	neg    %rax
  68f223:	4b 8b 8c 35 78 02 00 	mov    0x278(%r13,%r14,1),%rcx
  68f22a:	00 
  68f22b:	4b 8b 94 35 80 02 00 	mov    0x280(%r13,%r14,1),%rdx
  68f232:	00 
  68f233:	48 0f af d1          	imul   %rcx,%rdx
  68f237:	48 89 8d a8 f6 ff ff 	mov    %rcx,-0x958(%rbp)
  68f23e:	4c 8d 3c 09          	lea    (%rcx,%rcx,1),%r15
  68f242:	4c 89 bd a0 f6 ff ff 	mov    %r15,-0x960(%rbp)
  68f249:	4a 8d 74 00 01       	lea    0x1(%rax,%r8,1),%rsi
  68f24e:	4f 8b bc 35 98 02 00 	mov    0x298(%r13,%r14,1),%r15
  68f255:	00 
  68f256:	33 c0                	xor    %eax,%eax
  68f258:	49 f7 df             	neg    %r15
  68f25b:	4b 0f af b4 35 60 02 	imul   0x260(%r13,%r14,1),%rsi
  68f262:	00 00 
  68f264:	4c 03 bd c8 fa ff ff 	add    -0x538(%rbp),%r15
  68f26b:	4f 0f af bc 35 90 02 	imul   0x290(%r13,%r14,1),%r15
  68f272:	00 00 
  68f274:	4b 8b 8c 35 28 02 00 	mov    0x228(%r13,%r14,1),%rcx
  68f27b:	00 
  68f27c:	48 2b ca             	sub    %rdx,%rcx
  68f27f:	48 03 f1             	add    %rcx,%rsi
  68f282:	4c 03 fe             	add    %rsi,%r15
  68f285:	4b 8b b4 35 08 02 00 	mov    0x208(%r13,%r14,1),%rsi
  68f28c:	00 
  68f28d:	48 f7 de             	neg    %rsi
  68f290:	48 89 85 c0 f6 ff ff 	mov    %rax,-0x940(%rbp)
  68f297:	48 89 85 d0 f6 ff ff 	mov    %rax,-0x930(%rbp)
  68f29e:	4b 8b 8c 35 18 02 00 	mov    0x218(%r13,%r14,1),%rcx
  68f2a5:	00 
  68f2a6:	4b 8b 84 35 20 02 00 	mov    0x220(%r13,%r14,1),%rax
  68f2ad:	00 
  68f2ae:	4a 8d 54 06 01       	lea    0x1(%rsi,%r8,1),%rdx
  68f2b3:	48 0f af c1          	imul   %rcx,%rax
  68f2b7:	48 0f af 95 88 f6 ff 	imul   -0x978(%rbp),%rdx
  68f2be:	ff 
  68f2bf:	4b 8b b4 35 c8 01 00 	mov    0x1c8(%r13,%r14,1),%rsi
  68f2c6:	00 
  68f2c7:	4c 8d 04 09          	lea    (%rcx,%rcx,1),%r8
  68f2cb:	48 2b f0             	sub    %rax,%rsi
  68f2ce:	48 03 d6             	add    %rsi,%rdx
  68f2d1:	48 89 8d d8 f6 ff ff 	mov    %rcx,-0x928(%rbp)
  68f2d8:	4c 89 95 68 f6 ff ff 	mov    %r10,-0x998(%rbp)
  68f2df:	4c 89 8d 70 f6 ff ff 	mov    %r9,-0x990(%rbp)
  68f2e6:	48 89 bd 78 f6 ff ff 	mov    %rdi,-0x988(%rbp)
  68f2ed:	4c 8b ad f0 f6 ff ff 	mov    -0x910(%rbp),%r13
  68f2f4:	48 8b 85 98 f6 ff ff 	mov    -0x968(%rbp),%rax
  68f2fb:	4c 89 f9             	mov    %r15,%rcx
  68f2fe:	48 8b b5 d0 f6 ff ff 	mov    -0x930(%rbp),%rsi
  68f305:	4c 89 c7             	mov    %r8,%rdi
  68f308:	4c 8b 85 d8 f6 ff ff 	mov    -0x928(%rbp),%r8
  68f30f:	4c 8b 8d c0 f6 ff ff 	mov    -0x940(%rbp),%r9
  68f316:	4c 8b 95 a0 f6 ff ff 	mov    -0x960(%rbp),%r10
  68f31d:	4c 8b 9d a8 f6 ff ff 	mov    -0x958(%rbp),%r11
  68f324:	4c 8b a5 f8 f6 ff ff 	mov    -0x908(%rbp),%r12
  68f32b:	4c 8b b5 00 f7 ff ff 	mov    -0x900(%rbp),%r14
  68f332:	4c 8b bd a0 fd ff ff 	mov    -0x260(%rbp),%r15
  68f339:	c5 7b 10 24 17       	vmovsd (%rdi,%rdx,1),%xmm12
  68f33e:	4d 03 cb             	add    %r11,%r9
  68f341:	c4 41 1b 59 34 0a    	vmulsd (%r10,%rcx,1),%xmm12,%xmm14
  68f347:	49 03 f0             	add    %r8,%rsi
  68f34a:	c4 41 7b 10 2c 09    	vmovsd (%r9,%rcx,1),%xmm13
  68f350:	49 ff c4             	inc    %r12
  68f353:	c4 62 91 b9 34 16    	vfmadd231sd (%rsi,%rdx,1),%xmm13,%xmm14
  68f359:	49 03 f8             	add    %r8,%rdi
  68f35c:	c4 62 d9 a9 30       	vfmadd213sd (%rax),%xmm4,%xmm14
  68f361:	4d 03 d3             	add    %r11,%r10
  68f364:	c5 7b 11 30          	vmovsd %xmm14,(%rax)
  68f368:	49 03 c7             	add    %r15,%rax
  68f36b:	4d 3b e6             	cmp    %r14,%r12
  68f36e:	72 c9                	jb     68f339 <step3d_t_mod_mp_step3d_t_tile_+0x86c9>
  68f370:	8b b5 50 f6 ff ff    	mov    -0x9b0(%rbp),%esi
  68f376:	48 8b 8d 58 f6 ff ff 	mov    -0x9a8(%rbp),%rcx
  68f37d:	48 8b 85 60 f6 ff ff 	mov    -0x9a0(%rbp),%rax
  68f384:	4c 8b 95 68 f6 ff ff 	mov    -0x998(%rbp),%r10
  68f38b:	4c 8b 9d a0 f8 ff ff 	mov    -0x760(%rbp),%r11
  68f392:	4c 8b 8d 70 f6 ff ff 	mov    -0x990(%rbp),%r9
  68f399:	4c 8b a5 a8 f8 ff ff 	mov    -0x758(%rbp),%r12
  68f3a0:	48 8b bd 78 f6 ff ff 	mov    -0x988(%rbp),%rdi
  68f3a7:	4d 89 e8             	mov    %r13,%r8
  68f3aa:	4c 3b ef             	cmp    %rdi,%r13
  68f3ad:	0f 82 00 fc ff ff    	jb     68efb3 <step3d_t_mod_mp_step3d_t_tile_+0x8343>
  68f3b3:	48 8b 95 b8 fb ff ff 	mov    -0x448(%rbp),%rdx
  68f3ba:	4c 8b b5 c8 fa ff ff 	mov    -0x538(%rbp),%r14
  68f3c1:	4c 8b a5 a8 fb ff ff 	mov    -0x458(%rbp),%r12
  68f3c8:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  68f3cf:	4c 8b 9d 60 fd ff ff 	mov    -0x2a0(%rbp),%r11
  68f3d6:	eb 04                	jmp    68f3dc <step3d_t_mod_mp_step3d_t_tile_+0x876c>
  68f3d8:	4c 8d 72 01          	lea    0x1(%rdx),%r14
  68f3dc:	48 83 bd e0 fd ff ff 	cmpq   $0x8,-0x220(%rbp)
  68f3e3:	08 
  68f3e4:	0f 85 10 01 00 00    	jne    68f4fa <step3d_t_mod_mp_step3d_t_tile_+0x888a>
  68f3ea:	33 c0                	xor    %eax,%eax
  68f3ec:	33 c9                	xor    %ecx,%ecx
  68f3ee:	48 83 bd 80 fd ff ff 	cmpq   $0x0,-0x280(%rbp)
  68f3f5:	00 
  68f3f6:	0f 8e 6c 02 00 00    	jle    68f668 <step3d_t_mod_mp_step3d_t_tile_+0x89f8>
  68f3fc:	48 0f af 95 c8 fb ff 	imul   -0x438(%rbp),%rdx
  68f403:	ff 
  68f404:	4c 89 b5 c8 fa ff ff 	mov    %r14,-0x538(%rbp)
  68f40b:	48 03 95 b0 fa ff ff 	add    -0x550(%rbp),%rdx
  68f412:	4c 8b 95 d8 fd ff ff 	mov    -0x228(%rbp),%r10
  68f419:	4c 8b a5 c8 fd ff ff 	mov    -0x238(%rbp),%r12
  68f420:	4c 8b b5 78 fd ff ff 	mov    -0x288(%rbp),%r14
  68f427:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  68f42e:	44 3b bd b8 fd ff ff 	cmp    -0x248(%rbp),%r15d
  68f435:	0f 8c a0 00 00 00    	jl     68f4db <step3d_t_mod_mp_step3d_t_tile_+0x886b>
  68f43b:	49 83 fb 04          	cmp    $0x4,%r11
  68f43f:	0f 8c c8 15 00 00    	jl     690a0d <step3d_t_mod_mp_step3d_t_tile_+0x9d9d>
  68f445:	4c 8b ad 30 fe ff ff 	mov    -0x1d0(%rbp),%r13
  68f44c:	45 33 c0             	xor    %r8d,%r8d
  68f44f:	4c 8b bd 00 fd ff ff 	mov    -0x300(%rbp),%r15
  68f456:	49 8d 3c 0c          	lea    (%r12,%rcx,1),%rdi
  68f45a:	48 89 d6             	mov    %rdx,%rsi
  68f45d:	4d 8d 0c 0a          	lea    (%r10,%rcx,1),%r9
  68f461:	4d 89 ee             	mov    %r13,%r14
  68f464:	c4 01 7d 10 64 c1 08 	vmovupd 0x8(%r9,%r8,8),%ymm12
  68f46b:	c4 01 7d 10 2c c7    	vmovupd (%r15,%r8,8),%ymm13
  68f471:	c4 21 1d 5c 34 c7    	vsubpd (%rdi,%r8,8),%ymm12,%ymm14
  68f477:	c4 62 95 ac 36       	vfnmadd213pd (%rsi),%ymm13,%ymm14
  68f47c:	49 83 c0 04          	add    $0x4,%r8
  68f480:	c5 7d 11 36          	vmovupd %ymm14,(%rsi)
  68f484:	48 83 c6 20          	add    $0x20,%rsi
  68f488:	4d 3b c6             	cmp    %r14,%r8
  68f48b:	72 d7                	jb     68f464 <step3d_t_mod_mp_step3d_t_tile_+0x87f4>
  68f48d:	4c 8b b5 78 fd ff ff 	mov    -0x288(%rbp),%r14
  68f494:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  68f49b:	4d 3b eb             	cmp    %r11,%r13
  68f49e:	73 3b                	jae    68f4db <step3d_t_mod_mp_step3d_t_tile_+0x886b>
  68f4a0:	4c 8b 8d 00 fd ff ff 	mov    -0x300(%rbp),%r9
  68f4a7:	4d 8d 04 0c          	lea    (%r12,%rcx,1),%r8
  68f4ab:	49 8d 3c 0a          	lea    (%r10,%rcx,1),%rdi
  68f4af:	4a 8d 34 ea          	lea    (%rdx,%r13,8),%rsi
  68f4b3:	c4 21 7b 10 64 ef 08 	vmovsd 0x8(%rdi,%r13,8),%xmm12
  68f4ba:	c4 01 7b 10 2c e9    	vmovsd (%r9,%r13,8),%xmm13
  68f4c0:	c4 01 1b 5c 34 e8    	vsubsd (%r8,%r13,8),%xmm12,%xmm14
  68f4c6:	49 ff c5             	inc    %r13
  68f4c9:	c4 62 91 ad 36       	vfnmadd213sd (%rsi),%xmm13,%xmm14
  68f4ce:	c5 7b 11 36          	vmovsd %xmm14,(%rsi)
  68f4d2:	48 83 c6 08          	add    $0x8,%rsi
  68f4d6:	4d 3b eb             	cmp    %r11,%r13
  68f4d9:	72 d8                	jb     68f4b3 <step3d_t_mod_mp_step3d_t_tile_+0x8843>
  68f4db:	48 ff c0             	inc    %rax
  68f4de:	49 03 d6             	add    %r14,%rdx
  68f4e1:	48 03 8d a0 fd ff ff 	add    -0x260(%rbp),%rcx
  68f4e8:	48 3b 85 80 fd ff ff 	cmp    -0x280(%rbp),%rax
  68f4ef:	0f 82 39 ff ff ff    	jb     68f42e <step3d_t_mod_mp_step3d_t_tile_+0x87be>
  68f4f5:	e9 59 01 00 00       	jmpq   68f653 <step3d_t_mod_mp_step3d_t_tile_+0x89e3>
  68f4fa:	33 c0                	xor    %eax,%eax
  68f4fc:	33 c9                	xor    %ecx,%ecx
  68f4fe:	48 83 bd 80 fd ff ff 	cmpq   $0x0,-0x280(%rbp)
  68f505:	00 
  68f506:	0f 8e 5c 01 00 00    	jle    68f668 <step3d_t_mod_mp_step3d_t_tile_+0x89f8>
  68f50c:	48 0f af 95 c8 fb ff 	imul   -0x438(%rbp),%rdx
  68f513:	ff 
  68f514:	4c 89 b5 c8 fa ff ff 	mov    %r14,-0x538(%rbp)
  68f51b:	48 03 95 b8 fa ff ff 	add    -0x548(%rbp),%rdx
  68f522:	4c 8b b5 d8 fd ff ff 	mov    -0x228(%rbp),%r14
  68f529:	4c 8b bd c8 fd ff ff 	mov    -0x238(%rbp),%r15
  68f530:	4c 8b ad e0 fd ff ff 	mov    -0x220(%rbp),%r13
  68f537:	8b b5 c0 fd ff ff    	mov    -0x240(%rbp),%esi
  68f53d:	3b b5 b8 fd ff ff    	cmp    -0x248(%rbp),%esi
  68f543:	0f 8c ec 00 00 00    	jl     68f635 <step3d_t_mod_mp_step3d_t_tile_+0x89c5>
  68f549:	4d 85 ed             	test   %r13,%r13
  68f54c:	0f 84 d8 16 00 00    	je     690c2a <step3d_t_mod_mp_step3d_t_tile_+0x9fba>
  68f552:	49 83 fb 04          	cmp    $0x4,%r11
  68f556:	0f 8c ce 16 00 00    	jl     690c2a <step3d_t_mod_mp_step3d_t_tile_+0x9fba>
  68f55c:	4c 8b a5 30 fe ff ff 	mov    -0x1d0(%rbp),%r12
  68f563:	45 33 c9             	xor    %r9d,%r9d
  68f566:	48 89 d7             	mov    %rdx,%rdi
  68f569:	4d 8d 04 0f          	lea    (%r15,%rcx,1),%r8
  68f56d:	4c 8b bd 00 fd ff ff 	mov    -0x300(%rbp),%r15
  68f574:	49 8d 34 0e          	lea    (%r14,%rcx,1),%rsi
  68f578:	4d 89 e6             	mov    %r12,%r14
  68f57b:	4f 8d 54 6d 00       	lea    0x0(%r13,%r13,2),%r10
  68f580:	c4 21 7d 10 6c ce 08 	vmovupd 0x8(%rsi,%r9,8),%ymm13
  68f587:	4e 8d 1c 6f          	lea    (%rdi,%r13,2),%r11
  68f58b:	c5 7b 10 37          	vmovsd (%rdi),%xmm14
  68f58f:	c4 21 09 16 3c 2f    	vmovhpd (%rdi,%r13,1),%xmm14,%xmm15
  68f595:	c4 01 15 5c 24 c8    	vsubpd (%r8,%r9,8),%ymm13,%ymm12
  68f59b:	c4 41 7b 10 2b       	vmovsd (%r11),%xmm13
  68f5a0:	c4 01 11 16 34 2b    	vmovhpd (%r11,%r13,1),%xmm13,%xmm14
  68f5a6:	c4 43 05 18 ee 01    	vinsertf128 $0x1,%xmm14,%ymm15,%ymm13
  68f5ac:	c4 02 9d bc 2c cf    	vfnmadd231pd (%r15,%r9,8),%ymm12,%ymm13
  68f5b2:	49 83 c1 04          	add    $0x4,%r9
  68f5b6:	4d 3b ce             	cmp    %r14,%r9
  68f5b9:	c4 43 7d 19 ec 01    	vextractf128 $0x1,%ymm13,%xmm12
  68f5bf:	c5 7b 11 2f          	vmovsd %xmm13,(%rdi)
  68f5c3:	c4 41 79 17 6c 3d 00 	vmovhpd %xmm13,0x0(%r13,%rdi,1)
  68f5ca:	c4 41 7b 11 23       	vmovsd %xmm12,(%r11)
  68f5cf:	c4 41 79 17 24 3a    	vmovhpd %xmm12,(%r10,%rdi,1)
  68f5d5:	4a 8d 3c af          	lea    (%rdi,%r13,4),%rdi
  68f5d9:	72 a5                	jb     68f580 <step3d_t_mod_mp_step3d_t_tile_+0x8910>
  68f5db:	4c 8b 9d 60 fd ff ff 	mov    -0x2a0(%rbp),%r11
  68f5e2:	4c 8b b5 d8 fd ff ff 	mov    -0x228(%rbp),%r14
  68f5e9:	4c 8b bd c8 fd ff ff 	mov    -0x238(%rbp),%r15
  68f5f0:	4c 89 ee             	mov    %r13,%rsi
  68f5f3:	49 0f af f4          	imul   %r12,%rsi
  68f5f7:	4d 3b e3             	cmp    %r11,%r12
  68f5fa:	73 39                	jae    68f635 <step3d_t_mod_mp_step3d_t_tile_+0x89c5>
  68f5fc:	4c 8b 8d 00 fd ff ff 	mov    -0x300(%rbp),%r9
  68f603:	48 03 f2             	add    %rdx,%rsi
  68f606:	4d 8d 04 0f          	lea    (%r15,%rcx,1),%r8
  68f60a:	49 8d 3c 0e          	lea    (%r14,%rcx,1),%rdi
  68f60e:	c4 21 7b 10 64 e7 08 	vmovsd 0x8(%rdi,%r12,8),%xmm12
  68f615:	c4 01 7b 10 2c e1    	vmovsd (%r9,%r12,8),%xmm13
  68f61b:	c4 01 1b 5c 34 e0    	vsubsd (%r8,%r12,8),%xmm12,%xmm14
  68f621:	49 ff c4             	inc    %r12
  68f624:	c4 62 91 ad 36       	vfnmadd213sd (%rsi),%xmm13,%xmm14
  68f629:	c5 7b 11 36          	vmovsd %xmm14,(%rsi)
  68f62d:	49 03 f5             	add    %r13,%rsi
  68f630:	4d 3b e3             	cmp    %r11,%r12
  68f633:	72 d9                	jb     68f60e <step3d_t_mod_mp_step3d_t_tile_+0x899e>
  68f635:	48 ff c0             	inc    %rax
  68f638:	48 03 8d a0 fd ff ff 	add    -0x260(%rbp),%rcx
  68f63f:	48 03 95 78 fd ff ff 	add    -0x288(%rbp),%rdx
  68f646:	48 3b 85 80 fd ff ff 	cmp    -0x280(%rbp),%rax
  68f64d:	0f 82 e4 fe ff ff    	jb     68f537 <step3d_t_mod_mp_step3d_t_tile_+0x88c7>
  68f653:	4c 8b b5 c8 fa ff ff 	mov    -0x538(%rbp),%r14
  68f65a:	4c 8b a5 a8 fb ff ff 	mov    -0x458(%rbp),%r12
  68f661:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  68f668:	4c 89 f2             	mov    %r14,%rdx
  68f66b:	4c 3b b5 e8 fb ff ff 	cmp    -0x418(%rbp),%r14
  68f672:	0f 82 c7 a9 ff ff    	jb     68a03f <step3d_t_mod_mp_step3d_t_tile_+0x33cf>
  68f678:	c5 7b 10 a5 d0 f8 ff 	vmovsd -0x730(%rbp),%xmm12
  68f67f:	ff 
  68f680:	48 8b 8d b0 f9 ff ff 	mov    -0x650(%rbp),%rcx
  68f687:	8b b5 e0 f8 ff ff    	mov    -0x720(%rbp),%esi
  68f68d:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  68f694:	45 33 d2             	xor    %r10d,%r10d
  68f697:	83 bd 00 fc ff ff 00 	cmpl   $0x0,-0x400(%rbp)
  68f69e:	0f 8e 0c 13 00 00    	jle    6909b0 <step3d_t_mod_mp_step3d_t_tile_+0x9d40>
  68f6a4:	4c 8b 8d d8 f8 ff ff 	mov    -0x728(%rbp),%r9
  68f6ab:	48 8b 95 f8 fa ff ff 	mov    -0x508(%rbp),%rdx
  68f6b2:	4c 8b 9d a0 fd ff ff 	mov    -0x260(%rbp),%r11
  68f6b9:	4d 89 d8             	mov    %r11,%r8
  68f6bc:	4c 8b b5 00 fd ff ff 	mov    -0x300(%rbp),%r14
  68f6c3:	41 8b 3c 91          	mov    (%r9,%rdx,4),%edi
  68f6c7:	4c 8b a5 e8 f8 ff ff 	mov    -0x718(%rbp),%r12
  68f6ce:	48 89 8d b0 f9 ff ff 	mov    %rcx,-0x650(%rbp)
  68f6d5:	89 b5 e0 f8 ff ff    	mov    %esi,-0x720(%rbp)
  68f6db:	44 8d 4f ff          	lea    -0x1(%rdi),%r9d
  68f6df:	48 63 ff             	movslq %edi,%rdi
  68f6e2:	4c 0f af df          	imul   %rdi,%r11
  68f6e6:	49 63 d1             	movslq %r9d,%rdx
  68f6e9:	4c 8d 6f ff          	lea    -0x1(%rdi),%r13
  68f6ed:	4d 0f af c5          	imul   %r13,%r8
  68f6f1:	4c 89 ad e8 fa ff ff 	mov    %r13,-0x518(%rbp)
  68f6f8:	4f 8d 3c 06          	lea    (%r14,%r8,1),%r15
  68f6fc:	4c 8b b5 c8 fd ff ff 	mov    -0x238(%rbp),%r14
  68f703:	4f 8d 2c 04          	lea    (%r12,%r8,1),%r13
  68f707:	4c 89 bd 18 fb ff ff 	mov    %r15,-0x4e8(%rbp)
  68f70e:	4d 03 c6             	add    %r14,%r8
  68f711:	4c 89 ad 20 fb ff ff 	mov    %r13,-0x4e0(%rbp)
  68f718:	4c 8b ad f0 f8 ff ff 	mov    -0x710(%rbp),%r13
  68f71f:	4f 8d 3c 1e          	lea    (%r14,%r11,1),%r15
  68f723:	4c 89 bd 88 fa ff ff 	mov    %r15,-0x578(%rbp)
  68f72a:	4c 8b bd 78 fd ff ff 	mov    -0x288(%rbp),%r15
  68f731:	4c 0f af ff          	imul   %rdi,%r15
  68f735:	4c 03 bd 70 f9 ff ff 	add    -0x690(%rbp),%r15
  68f73c:	4f 8d 74 1d 00       	lea    0x0(%r13,%r11,1),%r14
  68f741:	4d 03 dc             	add    %r12,%r11
  68f744:	4c 8b a5 68 f9 ff ff 	mov    -0x698(%rbp),%r12
  68f74b:	4c 0f af e1          	imul   %rcx,%r12
  68f74f:	4c 03 bd f8 f8 ff ff 	add    -0x708(%rbp),%r15
  68f756:	4c 03 bd a8 f9 ff ff 	add    -0x658(%rbp),%r15
  68f75d:	4d 03 fc             	add    %r12,%r15
  68f760:	4c 89 bd 88 fb ff ff 	mov    %r15,-0x478(%rbp)
  68f767:	4c 8b bd 00 f9 ff ff 	mov    -0x700(%rbp),%r15
  68f76e:	4c 89 b5 10 fb ff ff 	mov    %r14,-0x4f0(%rbp)
  68f775:	4c 8b b5 60 f9 ff ff 	mov    -0x6a0(%rbp),%r14
  68f77c:	4c 0f af f1          	imul   %rcx,%r14
  68f780:	4c 89 9d 68 fb ff ff 	mov    %r11,-0x498(%rbp)
  68f787:	4d 03 fc             	add    %r12,%r15
  68f78a:	4c 89 bd 90 fa ff ff 	mov    %r15,-0x570(%rbp)
  68f791:	4c 8b bd 08 f9 ff ff 	mov    -0x6f8(%rbp),%r15
  68f798:	4c 8b 9d 48 f9 ff ff 	mov    -0x6b8(%rbp),%r11
  68f79f:	4c 0f af d9          	imul   %rcx,%r11
  68f7a3:	4c 8b ad 58 f9 ff ff 	mov    -0x6a8(%rbp),%r13
  68f7aa:	4d 03 fc             	add    %r12,%r15
  68f7ad:	4c 89 bd 98 fa ff ff 	mov    %r15,-0x568(%rbp)
  68f7b4:	4c 8b bd 30 f9 ff ff 	mov    -0x6d0(%rbp),%r15
  68f7bb:	4c 0f af e9          	imul   %rcx,%r13
  68f7bf:	4c 89 85 90 fb ff ff 	mov    %r8,-0x470(%rbp)
  68f7c6:	4d 03 fc             	add    %r12,%r15
  68f7c9:	4c 89 bd a0 fa ff ff 	mov    %r15,-0x560(%rbp)
  68f7d0:	4c 8b bd 40 f9 ff ff 	mov    -0x6c0(%rbp),%r15
  68f7d7:	48 89 bd 58 fc ff ff 	mov    %rdi,-0x3a8(%rbp)
  68f7de:	48 89 95 28 fe ff ff 	mov    %rdx,-0x1d8(%rbp)
  68f7e5:	4c 89 a5 b8 f9 ff ff 	mov    %r12,-0x648(%rbp)
  68f7ec:	4d 03 fc             	add    %r12,%r15
  68f7ef:	4c 89 bd a8 fa ff ff 	mov    %r15,-0x558(%rbp)
  68f7f6:	4c 8d 7a ff          	lea    -0x1(%rdx),%r15
  68f7fa:	4c 89 bd 68 fd ff ff 	mov    %r15,-0x298(%rbp)
  68f801:	4c 8b bd 38 f9 ff ff 	mov    -0x6c8(%rbp),%r15
  68f808:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  68f80f:	48 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%rdi
  68f816:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  68f81d:	4d 03 fe             	add    %r14,%r15
  68f820:	4c 89 bd f0 f9 ff ff 	mov    %r15,-0x610(%rbp)
  68f827:	4c 8b bd a0 f9 ff ff 	mov    -0x660(%rbp),%r15
  68f82e:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  68f835:	4d 03 fe             	add    %r14,%r15
  68f838:	4c 89 bd f8 f9 ff ff 	mov    %r15,-0x608(%rbp)
  68f83f:	4c 8b bd 98 f9 ff ff 	mov    -0x668(%rbp),%r15
  68f846:	4d 03 fe             	add    %r14,%r15
  68f849:	4c 89 bd 18 fc ff ff 	mov    %r15,-0x3e8(%rbp)
  68f850:	4c 8b bd 50 f9 ff ff 	mov    -0x6b0(%rbp),%r15
  68f857:	4c 03 b5 90 f9 ff ff 	add    -0x670(%rbp),%r14
  68f85e:	4c 89 b5 30 fc ff ff 	mov    %r14,-0x3d0(%rbp)
  68f865:	4d 03 fb             	add    %r11,%r15
  68f868:	4c 89 bd 00 fa ff ff 	mov    %r15,-0x600(%rbp)
  68f86f:	4c 8b bd 78 f9 ff ff 	mov    -0x688(%rbp),%r15
  68f876:	4c 03 9d 80 f9 ff ff 	add    -0x680(%rbp),%r11
  68f87d:	4c 89 9d 08 fa ff ff 	mov    %r11,-0x5f8(%rbp)
  68f884:	4d 03 fd             	add    %r13,%r15
  68f887:	4c 03 ad 88 f9 ff ff 	add    -0x678(%rbp),%r13
  68f88e:	4c 89 bd 20 fc ff ff 	mov    %r15,-0x3e0(%rbp)
  68f895:	4c 89 ad 28 fc ff ff 	mov    %r13,-0x3d8(%rbp)
  68f89c:	45 89 c4             	mov    %r8d,%r12d
  68f89f:	41 8d 72 01          	lea    0x1(%r10),%esi
  68f8a3:	44 3b c6             	cmp    %esi,%r8d
  68f8a6:	44 0f 4d e6          	cmovge %esi,%r12d
  68f8aa:	4d 63 e4             	movslq %r12d,%r12
  68f8ad:	83 fe 02             	cmp    $0x2,%esi
  68f8b0:	0f 8e 61 02 00 00    	jle    68fb17 <step3d_t_mod_mp_step3d_t_tile_+0x8ea7>
  68f8b6:	48 83 f8 08          	cmp    $0x8,%rax
  68f8ba:	0f 85 ee 00 00 00    	jne    68f9ae <step3d_t_mod_mp_step3d_t_tile_+0x8d3e>
  68f8c0:	4c 8b ad a8 fd ff ff 	mov    -0x258(%rbp),%r13
  68f8c7:	45 33 e4             	xor    %r12d,%r12d
  68f8ca:	48 83 bd 58 fc ff ff 	cmpq   $0x0,-0x3a8(%rbp)
  68f8d1:	00 
  68f8d2:	0f 8e 26 09 00 00    	jle    6901fe <step3d_t_mod_mp_step3d_t_tile_+0x958e>
  68f8d8:	4d 63 da             	movslq %r10d,%r11
  68f8db:	4c 0f af d9          	imul   %rcx,%r11
  68f8df:	89 b5 d0 fb ff ff    	mov    %esi,-0x430(%rbp)
  68f8e5:	44 89 8d d8 fb ff ff 	mov    %r9d,-0x428(%rbp)
  68f8ec:	44 89 95 a0 fb ff ff 	mov    %r10d,-0x460(%rbp)
  68f8f3:	4c 03 9d a8 fa ff ff 	add    -0x558(%rbp),%r11
  68f8fa:	48 8b b5 58 fc ff ff 	mov    -0x3a8(%rbp),%rsi
  68f901:	4c 8b 8d a0 fd ff ff 	mov    -0x260(%rbp),%r9
  68f908:	4c 8b 95 78 fd ff ff 	mov    -0x288(%rbp),%r10
  68f90f:	44 8b b5 b8 fd ff ff 	mov    -0x248(%rbp),%r14d
  68f916:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  68f91d:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  68f924:	45 3b fe             	cmp    %r14d,%r15d
  68f927:	7c 6e                	jl     68f997 <step3d_t_mod_mp_step3d_t_tile_+0x8d27>
  68f929:	48 83 ff 04          	cmp    $0x4,%rdi
  68f92d:	0f 8c 10 11 00 00    	jl     690a43 <step3d_t_mod_mp_step3d_t_tile_+0x9dd3>
  68f933:	49 89 d0             	mov    %rdx,%r8
  68f936:	33 c9                	xor    %ecx,%ecx
  68f938:	4c 89 e8             	mov    %r13,%rax
  68f93b:	c4 c1 7d 10 04 cb    	vmovupd (%r11,%rcx,8),%ymm0
  68f941:	48 83 c1 04          	add    $0x4,%rcx
  68f945:	c5 fd 11 40 08       	vmovupd %ymm0,0x8(%rax)
  68f94a:	48 83 c0 20          	add    $0x20,%rax
  68f94e:	48 3b ca             	cmp    %rdx,%rcx
  68f951:	72 e8                	jb     68f93b <step3d_t_mod_mp_step3d_t_tile_+0x8ccb>
  68f953:	4a 8d 0c c5 00 00 00 	lea    0x0(,%r8,8),%rcx
  68f95a:	00 
  68f95b:	4c 3b c7             	cmp    %rdi,%r8
  68f95e:	73 24                	jae    68f984 <step3d_t_mod_mp_step3d_t_tile_+0x8d14>
  68f960:	4b 8d 44 c5 00       	lea    0x0(%r13,%r8,8),%rax
  68f965:	4e 8b 3c 19          	mov    (%rcx,%r11,1),%r15
  68f969:	49 ff c0             	inc    %r8
  68f96c:	4c 89 78 08          	mov    %r15,0x8(%rax)
  68f970:	48 83 c0 08          	add    $0x8,%rax
  68f974:	48 83 c1 08          	add    $0x8,%rcx
  68f978:	4c 3b c7             	cmp    %rdi,%r8
  68f97b:	72 e8                	jb     68f965 <step3d_t_mod_mp_step3d_t_tile_+0x8cf5>
  68f97d:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  68f984:	49 ff c4             	inc    %r12
  68f987:	4d 03 e9             	add    %r9,%r13
  68f98a:	4d 03 da             	add    %r10,%r11
  68f98d:	4c 3b e6             	cmp    %rsi,%r12
  68f990:	72 92                	jb     68f924 <step3d_t_mod_mp_step3d_t_tile_+0x8cb4>
  68f992:	e9 7e 10 00 00       	jmpq   690a15 <step3d_t_mod_mp_step3d_t_tile_+0x9da5>
  68f997:	49 ff c4             	inc    %r12
  68f99a:	4d 03 e9             	add    %r9,%r13
  68f99d:	4d 03 da             	add    %r10,%r11
  68f9a0:	4c 3b e6             	cmp    %rsi,%r12
  68f9a3:	0f 82 7b ff ff ff    	jb     68f924 <step3d_t_mod_mp_step3d_t_tile_+0x8cb4>
  68f9a9:	e9 9d 10 00 00       	jmpq   690a4b <step3d_t_mod_mp_step3d_t_tile_+0x9ddb>
  68f9ae:	45 33 db             	xor    %r11d,%r11d
  68f9b1:	4c 8b ad a8 fd ff ff 	mov    -0x258(%rbp),%r13
  68f9b8:	45 33 e4             	xor    %r12d,%r12d
  68f9bb:	4c 89 ad c0 fa ff ff 	mov    %r13,-0x540(%rbp)
  68f9c2:	48 83 bd 58 fc ff ff 	cmpq   $0x0,-0x3a8(%rbp)
  68f9c9:	00 
  68f9ca:	0f 8e 2e 08 00 00    	jle    6901fe <step3d_t_mod_mp_step3d_t_tile_+0x958e>
  68f9d0:	4d 63 f2             	movslq %r10d,%r14
  68f9d3:	4c 0f af f1          	imul   %rcx,%r14
  68f9d7:	4c 8b ad 90 fa ff ff 	mov    -0x570(%rbp),%r13
  68f9de:	4c 8b bd 98 fa ff ff 	mov    -0x568(%rbp),%r15
  68f9e5:	44 89 95 a0 fb ff ff 	mov    %r10d,-0x460(%rbp)
  68f9ec:	89 b5 d0 fb ff ff    	mov    %esi,-0x430(%rbp)
  68f9f2:	4d 03 ee             	add    %r14,%r13
  68f9f5:	4c 89 ad 28 fd ff ff 	mov    %r13,-0x2d8(%rbp)
  68f9fc:	4d 03 fe             	add    %r14,%r15
  68f9ff:	4c 03 b5 a0 fa ff ff 	add    -0x560(%rbp),%r14
  68fa06:	4c 89 b5 20 fd ff ff 	mov    %r14,-0x2e0(%rbp)
  68fa0d:	4c 89 bd 38 fd ff ff 	mov    %r15,-0x2c8(%rbp)
  68fa14:	44 89 8d d8 fb ff ff 	mov    %r9d,-0x428(%rbp)
  68fa1b:	4d 89 e0             	mov    %r12,%r8
  68fa1e:	4c 8b 95 c0 fa ff ff 	mov    -0x540(%rbp),%r10
  68fa25:	4c 8b ad a0 fd ff ff 	mov    -0x260(%rbp),%r13
  68fa2c:	44 8b b5 30 fd ff ff 	mov    -0x2d0(%rbp),%r14d
  68fa33:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  68fa3a:	44 3b bd b8 fd ff ff 	cmp    -0x248(%rbp),%r15d
  68fa41:	0f 8c ae 00 00 00    	jl     68faf5 <step3d_t_mod_mp_step3d_t_tile_+0x8e85>
  68fa47:	be 01 00 00 00       	mov    $0x1,%esi
  68fa4c:	33 d2                	xor    %edx,%edx
  68fa4e:	33 c9                	xor    %ecx,%ecx
  68fa50:	45 85 f6             	test   %r14d,%r14d
  68fa53:	74 4f                	je     68faa4 <step3d_t_mod_mp_step3d_t_tile_+0x8e34>
  68fa55:	48 8b b5 28 fd ff ff 	mov    -0x2d8(%rbp),%rsi
  68fa5c:	4d 89 d1             	mov    %r10,%r9
  68fa5f:	48 8b bd 20 fd ff ff 	mov    -0x2e0(%rbp),%rdi
  68fa66:	4c 8b b5 f8 fc ff ff 	mov    -0x308(%rbp),%r14
  68fa6d:	49 03 f0             	add    %r8,%rsi
  68fa70:	49 03 f8             	add    %r8,%rdi
  68fa73:	4c 8b 3c 4f          	mov    (%rdi,%rcx,2),%r15
  68fa77:	48 ff c2             	inc    %rdx
  68fa7a:	4d 89 79 08          	mov    %r15,0x8(%r9)
  68fa7e:	4c 8b 3c 4e          	mov    (%rsi,%rcx,2),%r15
  68fa82:	48 03 c8             	add    %rax,%rcx
  68fa85:	4d 89 79 10          	mov    %r15,0x10(%r9)
  68fa89:	49 83 c1 10          	add    $0x10,%r9
  68fa8d:	49 3b d6             	cmp    %r14,%rdx
  68fa90:	72 e1                	jb     68fa73 <step3d_t_mod_mp_step3d_t_tile_+0x8e03>
  68fa92:	44 8b b5 30 fd ff ff 	mov    -0x2d0(%rbp),%r14d
  68fa99:	8d 74 12 01          	lea    0x1(%rdx,%rdx,1),%esi
  68fa9d:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  68faa4:	8d 56 ff             	lea    -0x1(%rsi),%edx
  68faa7:	3b 95 70 fd ff ff    	cmp    -0x290(%rbp),%edx
  68faad:	73 24                	jae    68fad3 <step3d_t_mod_mp_step3d_t_tile_+0x8e63>
  68faaf:	48 63 f6             	movslq %esi,%rsi
  68fab2:	48 89 c1             	mov    %rax,%rcx
  68fab5:	48 0f af ce          	imul   %rsi,%rcx
  68fab9:	48 03 8d 38 fd ff ff 	add    -0x2c8(%rbp),%rcx
  68fac0:	48 8b 95 a8 fd ff ff 	mov    -0x258(%rbp),%rdx
  68fac7:	4a 8b 3c 01          	mov    (%rcx,%r8,1),%rdi
  68facb:	4c 8d 0c f2          	lea    (%rdx,%rsi,8),%r9
  68facf:	4b 89 3c 21          	mov    %rdi,(%r9,%r12,1)
  68fad3:	49 ff c3             	inc    %r11
  68fad6:	4d 03 d5             	add    %r13,%r10
  68fad9:	4c 03 85 78 fd ff ff 	add    -0x288(%rbp),%r8
  68fae0:	4d 03 e5             	add    %r13,%r12
  68fae3:	4c 3b 9d 58 fc ff ff 	cmp    -0x3a8(%rbp),%r11
  68faea:	0f 82 4a ff ff ff    	jb     68fa3a <step3d_t_mod_mp_step3d_t_tile_+0x8dca>
  68faf0:	e9 be 0f 00 00       	jmpq   690ab3 <step3d_t_mod_mp_step3d_t_tile_+0x9e43>
  68faf5:	49 ff c3             	inc    %r11
  68faf8:	4d 03 d5             	add    %r13,%r10
  68fafb:	4c 03 85 78 fd ff ff 	add    -0x288(%rbp),%r8
  68fb02:	4d 03 e5             	add    %r13,%r12
  68fb05:	4c 3b 9d 58 fc ff ff 	cmp    -0x3a8(%rbp),%r11
  68fb0c:	0f 82 28 ff ff ff    	jb     68fa3a <step3d_t_mod_mp_step3d_t_tile_+0x8dca>
  68fb12:	e9 d1 0f 00 00       	jmpq   690ae8 <step3d_t_mod_mp_step3d_t_tile_+0x9e78>
  68fb17:	4c 8b ad 48 f7 ff ff 	mov    -0x8b8(%rbp),%r13
  68fb1e:	49 f7 dd             	neg    %r13
  68fb21:	4c 03 ad f8 fa ff ff 	add    -0x508(%rbp),%r13
  68fb28:	4c 8b 9d 50 f7 ff ff 	mov    -0x8b0(%rbp),%r11
  68fb2f:	48 83 bd e0 f9 ff ff 	cmpq   $0x8,-0x620(%rbp)
  68fb36:	08 
  68fb37:	c4 81 1b 59 04 eb    	vmulsd (%r11,%r13,8),%xmm12,%xmm0
  68fb3d:	c5 f9 57 0d 0b 6a 23 	vxorpd 0x236a0b(%rip),%xmm0,%xmm1        # 8c6550 <__STRLITPACK_219.115+0xa0>
  68fb44:	00 
  68fb45:	0f 85 68 01 00 00    	jne    68fcb3 <step3d_t_mod_mp_step3d_t_tile_+0x9043>
  68fb4b:	48 83 bd d8 f9 ff ff 	cmpq   $0x8,-0x628(%rbp)
  68fb52:	08 
  68fb53:	0f 85 5a 01 00 00    	jne    68fcb3 <step3d_t_mod_mp_step3d_t_tile_+0x9043>
  68fb59:	45 33 ed             	xor    %r13d,%r13d
  68fb5c:	4c 8b b5 d8 fd ff ff 	mov    -0x228(%rbp),%r14
  68fb63:	45 33 db             	xor    %r11d,%r11d
  68fb66:	48 83 bd e8 fa ff ff 	cmpq   $0x0,-0x518(%rbp)
  68fb6d:	00 
  68fb6e:	0f 8e 46 10 00 00    	jle    690bba <step3d_t_mod_mp_step3d_t_tile_+0x9f4a>
  68fb74:	4c 0f af a5 e8 f9 ff 	imul   -0x618(%rbp),%r12
  68fb7b:	ff 
  68fb7c:	c4 e2 7d 19 c1       	vbroadcastsd %xmm1,%ymm0
  68fb81:	44 89 8d d8 fb ff ff 	mov    %r9d,-0x428(%rbp)
  68fb88:	4c 03 a5 08 fa ff ff 	add    -0x5f8(%rbp),%r12
  68fb8f:	4c 8b 85 f8 f9 ff ff 	mov    -0x608(%rbp),%r8
  68fb96:	4c 8b 8d f0 f9 ff ff 	mov    -0x610(%rbp),%r9
  68fb9d:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  68fba4:	89 b5 d0 fb ff ff    	mov    %esi,-0x430(%rbp)
  68fbaa:	44 89 95 a0 fb ff ff 	mov    %r10d,-0x460(%rbp)
  68fbb1:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  68fbb8:	44 3b bd b8 fd ff ff 	cmp    -0x248(%rbp),%r15d
  68fbbf:	0f 8c c4 00 00 00    	jl     68fc89 <step3d_t_mod_mp_step3d_t_tile_+0x9019>
  68fbc5:	48 83 ff 04          	cmp    $0x4,%rdi
  68fbc9:	0f 8c e3 0f 00 00    	jl     690bb2 <step3d_t_mod_mp_step3d_t_tile_+0x9f42>
  68fbcf:	4c 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%r10
  68fbd6:	33 d2                	xor    %edx,%edx
  68fbd8:	4c 89 f1             	mov    %r14,%rcx
  68fbdb:	4b 8d 04 19          	lea    (%r9,%r11,1),%rax
  68fbdf:	4d 89 d7             	mov    %r10,%r15
  68fbe2:	4b 8d 34 18          	lea    (%r8,%r11,1),%rsi
  68fbe6:	c5 fd 10 14 d6       	vmovupd (%rsi,%rdx,8),%ymm2
  68fbeb:	c5 ed 5c 1c d0       	vsubpd (%rax,%rdx,8),%ymm2,%ymm3
  68fbf0:	c5 b5 5e e3          	vdivpd %ymm3,%ymm9,%ymm4
  68fbf4:	c5 dd 59 e8          	vmulpd %ymm0,%ymm4,%ymm5
  68fbf8:	c4 c1 55 59 34 d4    	vmulpd (%r12,%rdx,8),%ymm5,%ymm6
  68fbfe:	48 83 c2 04          	add    $0x4,%rdx
  68fc02:	c5 fd 11 71 08       	vmovupd %ymm6,0x8(%rcx)
  68fc07:	48 83 c1 20          	add    $0x20,%rcx
  68fc0b:	49 3b d7             	cmp    %r15,%rdx
  68fc0e:	72 d6                	jb     68fbe6 <step3d_t_mod_mp_step3d_t_tile_+0x8f76>
  68fc10:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  68fc17:	4a 8d 34 d5 00 00 00 	lea    0x0(,%r10,8),%rsi
  68fc1e:	00 
  68fc1f:	4c 3b d7             	cmp    %rdi,%r10
  68fc22:	73 3b                	jae    68fc5f <step3d_t_mod_mp_step3d_t_tile_+0x8fef>
  68fc24:	4b 8d 0c d6          	lea    (%r14,%r10,8),%rcx
  68fc28:	4b 8d 14 19          	lea    (%r9,%r11,1),%rdx
  68fc2c:	4b 8d 04 18          	lea    (%r8,%r11,1),%rax
  68fc30:	c4 a1 7b 10 14 d0    	vmovsd (%rax,%r10,8),%xmm2
  68fc36:	c4 a1 6b 5c 1c d2    	vsubsd (%rdx,%r10,8),%xmm2,%xmm3
  68fc3c:	49 ff c2             	inc    %r10
  68fc3f:	c5 a3 5e e3          	vdivsd %xmm3,%xmm11,%xmm4
  68fc43:	c5 f3 59 ec          	vmulsd %xmm4,%xmm1,%xmm5
  68fc47:	c4 a1 53 59 34 26    	vmulsd (%rsi,%r12,1),%xmm5,%xmm6
  68fc4d:	48 83 c6 08          	add    $0x8,%rsi
  68fc51:	c5 fb 11 71 08       	vmovsd %xmm6,0x8(%rcx)
  68fc56:	48 83 c1 08          	add    $0x8,%rcx
  68fc5a:	4c 3b d7             	cmp    %rdi,%r10
  68fc5d:	72 d1                	jb     68fc30 <step3d_t_mod_mp_step3d_t_tile_+0x8fc0>
  68fc5f:	49 ff c5             	inc    %r13
  68fc62:	4c 03 b5 a0 fd ff ff 	add    -0x260(%rbp),%r14
  68fc69:	4c 03 9d e0 fa ff ff 	add    -0x520(%rbp),%r11
  68fc70:	4c 03 a5 d8 fa ff ff 	add    -0x528(%rbp),%r12
  68fc77:	4c 3b ad e8 fa ff ff 	cmp    -0x518(%rbp),%r13
  68fc7e:	0f 82 34 ff ff ff    	jb     68fbb8 <step3d_t_mod_mp_step3d_t_tile_+0x8f48>
  68fc84:	e9 94 0e 00 00       	jmpq   690b1d <step3d_t_mod_mp_step3d_t_tile_+0x9ead>
  68fc89:	49 ff c5             	inc    %r13
  68fc8c:	4c 03 b5 a0 fd ff ff 	add    -0x260(%rbp),%r14
  68fc93:	4c 03 9d e0 fa ff ff 	add    -0x520(%rbp),%r11
  68fc9a:	4c 03 a5 d8 fa ff ff 	add    -0x528(%rbp),%r12
  68fca1:	4c 3b ad e8 fa ff ff 	cmp    -0x518(%rbp),%r13
  68fca8:	0f 82 0a ff ff ff    	jb     68fbb8 <step3d_t_mod_mp_step3d_t_tile_+0x8f48>
  68fcae:	e9 16 02 00 00       	jmpq   68fec9 <step3d_t_mod_mp_step3d_t_tile_+0x9259>
  68fcb3:	45 33 db             	xor    %r11d,%r11d
  68fcb6:	4c 8b ad d8 fd ff ff 	mov    -0x228(%rbp),%r13
  68fcbd:	45 33 f6             	xor    %r14d,%r14d
  68fcc0:	48 83 bd e8 fa ff ff 	cmpq   $0x0,-0x518(%rbp)
  68fcc7:	00 
  68fcc8:	0f 8e ec 0e 00 00    	jle    690bba <step3d_t_mod_mp_step3d_t_tile_+0x9f4a>
  68fcce:	4c 0f af a5 e8 f9 ff 	imul   -0x618(%rbp),%r12
  68fcd5:	ff 
  68fcd6:	c4 e2 7d 19 c1       	vbroadcastsd %xmm1,%ymm0
  68fcdb:	44 89 8d d8 fb ff ff 	mov    %r9d,-0x428(%rbp)
  68fce2:	44 89 95 a0 fb ff ff 	mov    %r10d,-0x460(%rbp)
  68fce9:	4c 03 a5 00 fa ff ff 	add    -0x600(%rbp),%r12
  68fcf0:	4c 8b 8d d8 f9 ff ff 	mov    -0x628(%rbp),%r9
  68fcf7:	4c 8b 95 e0 f9 ff ff 	mov    -0x620(%rbp),%r10
  68fcfe:	89 b5 d0 fb ff ff    	mov    %esi,-0x430(%rbp)
  68fd04:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  68fd0b:	8b 85 c0 fd ff ff    	mov    -0x240(%rbp),%eax
  68fd11:	3b 85 b8 fd ff ff    	cmp    -0x248(%rbp),%eax
  68fd17:	0f 8c 87 01 00 00    	jl     68fea4 <step3d_t_mod_mp_step3d_t_tile_+0x9234>
  68fd1d:	48 83 ff 04          	cmp    $0x4,%rdi
  68fd21:	0f 8c fb 0e 00 00    	jl     690c22 <step3d_t_mod_mp_step3d_t_tile_+0x9fb2>
  68fd27:	48 8b 85 18 fc ff ff 	mov    -0x3e8(%rbp),%rax
  68fd2e:	33 f6                	xor    %esi,%esi
  68fd30:	48 8b 8d 30 fc ff ff 	mov    -0x3d0(%rbp),%rcx
  68fd37:	4c 8b bd 30 fe ff ff 	mov    -0x1d0(%rbp),%r15
  68fd3e:	4a 8d 14 30          	lea    (%rax,%r14,1),%rdx
  68fd42:	33 c0                	xor    %eax,%eax
  68fd44:	49 03 ce             	add    %r14,%rcx
  68fd47:	4c 89 ef             	mov    %r13,%rdi
  68fd4a:	45 33 c0             	xor    %r8d,%r8d
  68fd4d:	4c 89 ad 38 fc ff ff 	mov    %r13,-0x3c8(%rbp)
  68fd54:	4c 89 9d 40 fc ff ff 	mov    %r11,-0x3c0(%rbp)
  68fd5b:	4d 89 fb             	mov    %r15,%r11
  68fd5e:	48 83 c6 04          	add    $0x4,%rsi
  68fd62:	4e 8d 2c 02          	lea    (%rdx,%r8,1),%r13
  68fd66:	c4 c1 7b 10 55 00    	vmovsd 0x0(%r13),%xmm2
  68fd6c:	c4 81 69 16 64 15 00 	vmovhpd 0x0(%r13,%r10,1),%xmm2,%xmm4
  68fd73:	4f 8d 6c 55 00       	lea    0x0(%r13,%r10,2),%r13
  68fd78:	c4 c1 7b 10 5d 00    	vmovsd 0x0(%r13),%xmm3
  68fd7e:	c4 81 61 16 6c 15 00 	vmovhpd 0x0(%r13,%r10,1),%xmm3,%xmm5
  68fd85:	4e 8d 2c 01          	lea    (%rcx,%r8,1),%r13
  68fd89:	c4 c1 7b 10 75 00    	vmovsd 0x0(%r13),%xmm6
  68fd8f:	4f 8d 04 90          	lea    (%r8,%r10,4),%r8
  68fd93:	c4 01 49 16 44 15 00 	vmovhpd 0x0(%r13,%r10,1),%xmm6,%xmm8
  68fd9a:	4f 8d 6c 55 00       	lea    0x0(%r13,%r10,2),%r13
  68fd9f:	c4 c1 7b 10 7d 00    	vmovsd 0x0(%r13),%xmm7
  68fda5:	c4 01 41 16 6c 15 00 	vmovhpd 0x0(%r13,%r10,1),%xmm7,%xmm13
  68fdac:	4d 8d 2c 04          	lea    (%r12,%rax,1),%r13
  68fdb0:	4a 8d 04 88          	lea    (%rax,%r9,4),%rax
  68fdb4:	c4 63 5d 18 f5 01    	vinsertf128 $0x1,%xmm5,%ymm4,%ymm14
  68fdba:	c4 43 3d 18 fd 01    	vinsertf128 $0x1,%xmm13,%ymm8,%ymm15
  68fdc0:	c4 c1 0d 5c d7       	vsubpd %ymm15,%ymm14,%ymm2
  68fdc5:	c4 c1 7b 10 65 00    	vmovsd 0x0(%r13),%xmm4
  68fdcb:	c4 81 59 16 74 0d 00 	vmovhpd 0x0(%r13,%r9,1),%xmm4,%xmm6
  68fdd2:	c5 b5 5e da          	vdivpd %ymm2,%ymm9,%ymm3
  68fdd6:	4f 8d 6c 4d 00       	lea    0x0(%r13,%r9,2),%r13
  68fddb:	c4 c1 7b 10 6d 00    	vmovsd 0x0(%r13),%xmm5
  68fde1:	c4 81 51 16 7c 0d 00 	vmovhpd 0x0(%r13,%r9,1),%xmm5,%xmm7
  68fde8:	c5 65 59 c0          	vmulpd %ymm0,%ymm3,%ymm8
  68fdec:	c4 63 4d 18 ef 01    	vinsertf128 $0x1,%xmm7,%ymm6,%ymm13
  68fdf2:	c4 41 3d 59 f5       	vmulpd %ymm13,%ymm8,%ymm14
  68fdf7:	c5 7d 11 77 08       	vmovupd %ymm14,0x8(%rdi)
  68fdfc:	48 83 c7 20          	add    $0x20,%rdi
  68fe00:	49 3b f3             	cmp    %r11,%rsi
  68fe03:	0f 82 55 ff ff ff    	jb     68fd5e <step3d_t_mod_mp_step3d_t_tile_+0x90ee>
  68fe09:	4c 8b ad 38 fc ff ff 	mov    -0x3c8(%rbp),%r13
  68fe10:	4c 8b 9d 40 fc ff ff 	mov    -0x3c0(%rbp),%r11
  68fe17:	48 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%rdi
  68fe1e:	4c 89 d1             	mov    %r10,%rcx
  68fe21:	4c 89 ce             	mov    %r9,%rsi
  68fe24:	49 0f af cf          	imul   %r15,%rcx
  68fe28:	49 0f af f7          	imul   %r15,%rsi
  68fe2c:	4c 3b ff             	cmp    %rdi,%r15
  68fe2f:	73 49                	jae    68fe7a <step3d_t_mod_mp_step3d_t_tile_+0x920a>
  68fe31:	48 8b 85 30 fc ff ff 	mov    -0x3d0(%rbp),%rax
  68fe38:	4b 8d 54 fd 00       	lea    0x0(%r13,%r15,8),%rdx
  68fe3d:	4c 8b 85 18 fc ff ff 	mov    -0x3e8(%rbp),%r8
  68fe44:	49 03 c6             	add    %r14,%rax
  68fe47:	4d 03 c6             	add    %r14,%r8
  68fe4a:	c4 a1 7b 10 14 01    	vmovsd (%rcx,%r8,1),%xmm2
  68fe50:	49 ff c7             	inc    %r15
  68fe53:	c5 eb 5c 1c 01       	vsubsd (%rcx,%rax,1),%xmm2,%xmm3
  68fe58:	49 03 ca             	add    %r10,%rcx
  68fe5b:	c5 a3 5e e3          	vdivsd %xmm3,%xmm11,%xmm4
  68fe5f:	c5 f3 59 ec          	vmulsd %xmm4,%xmm1,%xmm5
  68fe63:	c4 a1 53 59 34 26    	vmulsd (%rsi,%r12,1),%xmm5,%xmm6
  68fe69:	49 03 f1             	add    %r9,%rsi
  68fe6c:	c5 fb 11 72 08       	vmovsd %xmm6,0x8(%rdx)
  68fe71:	48 83 c2 08          	add    $0x8,%rdx
  68fe75:	4c 3b ff             	cmp    %rdi,%r15
  68fe78:	72 d0                	jb     68fe4a <step3d_t_mod_mp_step3d_t_tile_+0x91da>
  68fe7a:	49 ff c3             	inc    %r11
  68fe7d:	4c 03 ad a0 fd ff ff 	add    -0x260(%rbp),%r13
  68fe84:	4c 03 b5 e0 fa ff ff 	add    -0x520(%rbp),%r14
  68fe8b:	4c 03 a5 d8 fa ff ff 	add    -0x528(%rbp),%r12
  68fe92:	4c 3b 9d e8 fa ff ff 	cmp    -0x518(%rbp),%r11
  68fe99:	0f 82 6c fe ff ff    	jb     68fd0b <step3d_t_mod_mp_step3d_t_tile_+0x909b>
  68fe9f:	e9 79 0c 00 00       	jmpq   690b1d <step3d_t_mod_mp_step3d_t_tile_+0x9ead>
  68fea4:	49 ff c3             	inc    %r11
  68fea7:	4c 03 ad a0 fd ff ff 	add    -0x260(%rbp),%r13
  68feae:	4c 03 b5 e0 fa ff ff 	add    -0x520(%rbp),%r14
  68feb5:	4c 03 a5 d8 fa ff ff 	add    -0x528(%rbp),%r12
  68febc:	4c 3b 9d e8 fa ff ff 	cmp    -0x518(%rbp),%r11
  68fec3:	0f 82 42 fe ff ff    	jb     68fd0b <step3d_t_mod_mp_step3d_t_tile_+0x909b>
  68fec9:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  68fecf:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  68fed6:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  68fedd:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  68fee4:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  68feeb:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  68fef2:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  68fef9:	48 83 bd d0 f9 ff ff 	cmpq   $0x8,-0x630(%rbp)
  68ff00:	08 
  68ff01:	0f 85 51 01 00 00    	jne    690058 <step3d_t_mod_mp_step3d_t_tile_+0x93e8>
  68ff07:	45 33 db             	xor    %r11d,%r11d
  68ff0a:	48 83 bd 58 fc ff ff 	cmpq   $0x0,-0x3a8(%rbp)
  68ff11:	00 
  68ff12:	0f 8e e6 02 00 00    	jle    6901fe <step3d_t_mod_mp_step3d_t_tile_+0x958e>
  68ff18:	44 89 8d d8 fb ff ff 	mov    %r9d,-0x428(%rbp)
  68ff1f:	44 89 95 a0 fb ff ff 	mov    %r10d,-0x460(%rbp)
  68ff26:	89 b5 d0 fb ff ff    	mov    %esi,-0x430(%rbp)
  68ff2c:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  68ff33:	4c 8b 8d d8 fd ff ff 	mov    -0x228(%rbp),%r9
  68ff3a:	4c 8b 95 00 fb ff ff 	mov    -0x500(%rbp),%r10
  68ff41:	4c 8b a5 c8 fd ff ff 	mov    -0x238(%rbp),%r12
  68ff48:	4c 8b ad 10 fc ff ff 	mov    -0x3f0(%rbp),%r13
  68ff4f:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  68ff56:	44 3b bd b8 fd ff ff 	cmp    -0x248(%rbp),%r15d
  68ff5d:	0f 8c b0 00 00 00    	jl     690013 <step3d_t_mod_mp_step3d_t_tile_+0x93a3>
  68ff63:	48 83 ff 04          	cmp    $0x4,%rdi
  68ff67:	0f 8c 89 02 00 00    	jl     6901f6 <step3d_t_mod_mp_step3d_t_tile_+0x9586>
  68ff6d:	4c 89 da             	mov    %r11,%rdx
  68ff70:	4c 89 e8             	mov    %r13,%rax
  68ff73:	48 0f af 95 a0 fd ff 	imul   -0x260(%rbp),%rdx
  68ff7a:	ff 
  68ff7b:	49 0f af c3          	imul   %r11,%rax
  68ff7f:	4c 8b b5 30 fe ff ff 	mov    -0x1d0(%rbp),%r14
  68ff86:	45 33 c0             	xor    %r8d,%r8d
  68ff89:	48 03 85 20 fc ff ff 	add    -0x3e0(%rbp),%rax
  68ff90:	49 8d 34 14          	lea    (%r12,%rdx,1),%rsi
  68ff94:	4d 89 f7             	mov    %r14,%r15
  68ff97:	49 8d 0c 12          	lea    (%r10,%rdx,1),%rcx
  68ff9b:	49 03 d1             	add    %r9,%rdx
  68ff9e:	c4 a1 7d 10 04 c0    	vmovupd (%rax,%r8,8),%ymm0
  68ffa4:	c4 a1 7d 5c 4c c2 08 	vsubpd 0x8(%rdx,%r8,8),%ymm0,%ymm1
  68ffab:	c4 a1 75 5c 14 c6    	vsubpd (%rsi,%r8,8),%ymm1,%ymm2
  68ffb1:	c4 a1 7d 11 54 c1 08 	vmovupd %ymm2,0x8(%rcx,%r8,8)
  68ffb8:	49 83 c0 04          	add    $0x4,%r8
  68ffbc:	4d 3b c7             	cmp    %r15,%r8
  68ffbf:	72 dd                	jb     68ff9e <step3d_t_mod_mp_step3d_t_tile_+0x932e>
  68ffc1:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  68ffc8:	4c 3b f7             	cmp    %rdi,%r14
  68ffcb:	73 46                	jae    690013 <step3d_t_mod_mp_step3d_t_tile_+0x93a3>
  68ffcd:	4c 89 da             	mov    %r11,%rdx
  68ffd0:	4c 89 e8             	mov    %r13,%rax
  68ffd3:	48 0f af 95 a0 fd ff 	imul   -0x260(%rbp),%rdx
  68ffda:	ff 
  68ffdb:	49 0f af c3          	imul   %r11,%rax
  68ffdf:	48 03 85 20 fc ff ff 	add    -0x3e0(%rbp),%rax
  68ffe6:	49 8d 34 14          	lea    (%r12,%rdx,1),%rsi
  68ffea:	49 8d 0c 12          	lea    (%r10,%rdx,1),%rcx
  68ffee:	49 03 d1             	add    %r9,%rdx
  68fff1:	c4 a1 7b 10 04 f0    	vmovsd (%rax,%r14,8),%xmm0
  68fff7:	c4 a1 7b 5c 4c f2 08 	vsubsd 0x8(%rdx,%r14,8),%xmm0,%xmm1
  68fffe:	c4 a1 73 5c 14 f6    	vsubsd (%rsi,%r14,8),%xmm1,%xmm2
  690004:	c4 a1 7b 11 54 f1 08 	vmovsd %xmm2,0x8(%rcx,%r14,8)
  69000b:	49 ff c6             	inc    %r14
  69000e:	4c 3b f7             	cmp    %rdi,%r14
  690011:	72 de                	jb     68fff1 <step3d_t_mod_mp_step3d_t_tile_+0x9381>
  690013:	49 ff c3             	inc    %r11
  690016:	4c 3b 9d 58 fc ff ff 	cmp    -0x3a8(%rbp),%r11
  69001d:	0f 82 33 ff ff ff    	jb     68ff56 <step3d_t_mod_mp_step3d_t_tile_+0x92e6>
  690023:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  690029:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  690030:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  690037:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  69003e:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  690045:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  69004c:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  690053:	e9 5e f8 ff ff       	jmpq   68f8b6 <step3d_t_mod_mp_step3d_t_tile_+0x8c46>
  690058:	45 33 db             	xor    %r11d,%r11d
  69005b:	48 83 bd 58 fc ff ff 	cmpq   $0x0,-0x3a8(%rbp)
  690062:	00 
  690063:	0f 8e 95 01 00 00    	jle    6901fe <step3d_t_mod_mp_step3d_t_tile_+0x958e>
  690069:	44 89 95 a0 fb ff ff 	mov    %r10d,-0x460(%rbp)
  690070:	89 b5 d0 fb ff ff    	mov    %esi,-0x430(%rbp)
  690076:	44 89 8d d8 fb ff ff 	mov    %r9d,-0x428(%rbp)
  69007d:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  690084:	4c 8b a5 00 fb ff ff 	mov    -0x500(%rbp),%r12
  69008b:	4c 8b b5 c8 fd ff ff 	mov    -0x238(%rbp),%r14
  690092:	4c 8b 95 d0 f9 ff ff 	mov    -0x630(%rbp),%r10
  690099:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  6900a0:	44 3b bd b8 fd ff ff 	cmp    -0x248(%rbp),%r15d
  6900a7:	0f 8c 04 01 00 00    	jl     6901b1 <step3d_t_mod_mp_step3d_t_tile_+0x9541>
  6900ad:	48 83 ff 04          	cmp    $0x4,%rdi
  6900b1:	0f 8c 4e 09 00 00    	jl     690a05 <step3d_t_mod_mp_step3d_t_tile_+0x9d95>
  6900b7:	4c 89 da             	mov    %r11,%rdx
  6900ba:	4c 89 d8             	mov    %r11,%rax
  6900bd:	48 0f af 95 a0 fd ff 	imul   -0x260(%rbp),%rdx
  6900c4:	ff 
  6900c5:	48 0f af 85 10 fc ff 	imul   -0x3f0(%rbp),%rax
  6900cc:	ff 
  6900cd:	45 33 c0             	xor    %r8d,%r8d
  6900d0:	49 8d 34 16          	lea    (%r14,%rdx,1),%rsi
  6900d4:	4c 8b 8d 30 fe ff ff 	mov    -0x1d0(%rbp),%r9
  6900db:	49 8d 0c 14          	lea    (%r12,%rdx,1),%rcx
  6900df:	48 03 95 d8 fd ff ff 	add    -0x228(%rbp),%rdx
  6900e6:	45 33 ed             	xor    %r13d,%r13d
  6900e9:	48 03 85 28 fc ff ff 	add    -0x3d8(%rbp),%rax
  6900f0:	4d 89 ce             	mov    %r9,%r14
  6900f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  6900f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  6900ff:	00 
  690100:	4e 8d 3c 28          	lea    (%rax,%r13,1),%r15
  690104:	c4 c1 7b 10 07       	vmovsd (%r15),%xmm0
  690109:	4f 8d 6c 95 00       	lea    0x0(%r13,%r10,4),%r13
  69010e:	c4 81 79 16 14 17    	vmovhpd (%r15,%r10,1),%xmm0,%xmm2
  690114:	4f 8d 3c 57          	lea    (%r15,%r10,2),%r15
  690118:	c4 c1 7b 10 0f       	vmovsd (%r15),%xmm1
  69011d:	c4 81 71 16 1c 17    	vmovhpd (%r15,%r10,1),%xmm1,%xmm3
  690123:	c4 e3 6d 18 e3 01    	vinsertf128 $0x1,%xmm3,%ymm2,%ymm4
  690129:	c4 a1 5d 5c 6c c2 08 	vsubpd 0x8(%rdx,%r8,8),%ymm4,%ymm5
  690130:	c4 a1 55 5c 34 c6    	vsubpd (%rsi,%r8,8),%ymm5,%ymm6
  690136:	c4 a1 7d 11 74 c1 08 	vmovupd %ymm6,0x8(%rcx,%r8,8)
  69013d:	49 83 c0 04          	add    $0x4,%r8
  690141:	4d 3b c6             	cmp    %r14,%r8
  690144:	72 ba                	jb     690100 <step3d_t_mod_mp_step3d_t_tile_+0x9490>
  690146:	4c 8b b5 c8 fd ff ff 	mov    -0x238(%rbp),%r14
  69014d:	44 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%r15d
  690154:	4d 89 d0             	mov    %r10,%r8
  690157:	4d 0f af c1          	imul   %r9,%r8
  69015b:	4c 3b cf             	cmp    %rdi,%r9
  69015e:	73 51                	jae    6901b1 <step3d_t_mod_mp_step3d_t_tile_+0x9541>
  690160:	4c 89 da             	mov    %r11,%rdx
  690163:	4c 89 d8             	mov    %r11,%rax
  690166:	48 0f af 95 a0 fd ff 	imul   -0x260(%rbp),%rdx
  69016d:	ff 
  69016e:	48 0f af 85 10 fc ff 	imul   -0x3f0(%rbp),%rax
  690175:	ff 
  690176:	48 03 85 28 fc ff ff 	add    -0x3d8(%rbp),%rax
  69017d:	49 8d 34 16          	lea    (%r14,%rdx,1),%rsi
  690181:	49 8d 0c 14          	lea    (%r12,%rdx,1),%rcx
  690185:	48 03 95 d8 fd ff ff 	add    -0x228(%rbp),%rdx
  69018c:	c4 c1 7b 10 04 00    	vmovsd (%r8,%rax,1),%xmm0
  690192:	4d 03 c2             	add    %r10,%r8
  690195:	c4 a1 7b 5c 4c ca 08 	vsubsd 0x8(%rdx,%r9,8),%xmm0,%xmm1
  69019c:	c4 a1 73 5c 14 ce    	vsubsd (%rsi,%r9,8),%xmm1,%xmm2
  6901a2:	c4 a1 7b 11 54 c9 08 	vmovsd %xmm2,0x8(%rcx,%r9,8)
  6901a9:	49 ff c1             	inc    %r9
  6901ac:	4c 3b cf             	cmp    %rdi,%r9
  6901af:	72 db                	jb     69018c <step3d_t_mod_mp_step3d_t_tile_+0x951c>
  6901b1:	49 ff c3             	inc    %r11
  6901b4:	4c 3b 9d 58 fc ff ff 	cmp    -0x3a8(%rbp),%r11
  6901bb:	0f 82 df fe ff ff    	jb     6900a0 <step3d_t_mod_mp_step3d_t_tile_+0x9430>
  6901c1:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  6901c7:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  6901ce:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  6901d5:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  6901dc:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  6901e3:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  6901ea:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  6901f1:	e9 c0 f6 ff ff       	jmpq   68f8b6 <step3d_t_mod_mp_step3d_t_tile_+0x8c46>
  6901f6:	45 33 f6             	xor    %r14d,%r14d
  6901f9:	e9 ca fd ff ff       	jmpq   68ffc8 <step3d_t_mod_mp_step3d_t_tile_+0x9358>
  6901fe:	44 8b 9d c0 fd ff ff 	mov    -0x240(%rbp),%r11d
  690205:	44 3b 9d b8 fd ff ff 	cmp    -0x248(%rbp),%r11d
  69020c:	0f 8c b4 00 00 00    	jl     6902c6 <step3d_t_mod_mp_step3d_t_tile_+0x9656>
  690212:	48 83 ff 04          	cmp    $0x4,%rdi
  690216:	0f 8c e1 07 00 00    	jl     6909fd <step3d_t_mod_mp_step3d_t_tile_+0x9d8d>
  69021c:	4c 8b 85 d8 fd ff ff 	mov    -0x228(%rbp),%r8
  690223:	49 89 d4             	mov    %rdx,%r12
  690226:	4c 8b ad 00 fb ff ff 	mov    -0x500(%rbp),%r13
  69022d:	45 33 db             	xor    %r11d,%r11d
  690230:	4c 8b b5 a8 fd ff ff 	mov    -0x258(%rbp),%r14
  690237:	4c 8b bd b0 fd ff ff 	mov    -0x250(%rbp),%r15
  69023e:	c4 81 35 5e 4c dd 08 	vdivpd 0x8(%r13,%r11,8),%ymm9,%ymm1
  690245:	c4 81 75 59 44 d8 08 	vmulpd 0x8(%r8,%r11,8),%ymm1,%ymm0
  69024c:	c4 81 75 59 54 de 08 	vmulpd 0x8(%r14,%r11,8),%ymm1,%ymm2
  690253:	c4 81 7d 11 44 df 08 	vmovupd %ymm0,0x8(%r15,%r11,8)
  69025a:	c4 81 7d 11 54 de 08 	vmovupd %ymm2,0x8(%r14,%r11,8)
  690261:	49 83 c3 04          	add    $0x4,%r11
  690265:	4c 3b da             	cmp    %rdx,%r11
  690268:	72 d4                	jb     69023e <step3d_t_mod_mp_step3d_t_tile_+0x95ce>
  69026a:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  690271:	4c 3b e7             	cmp    %rdi,%r12
  690274:	0f 83 fa 07 00 00    	jae    690a74 <step3d_t_mod_mp_step3d_t_tile_+0x9e04>
  69027a:	4c 8b 9d d8 fd ff ff 	mov    -0x228(%rbp),%r11
  690281:	4c 8b ad 00 fb ff ff 	mov    -0x500(%rbp),%r13
  690288:	4c 8b b5 a8 fd ff ff 	mov    -0x258(%rbp),%r14
  69028f:	4c 8b bd b0 fd ff ff 	mov    -0x250(%rbp),%r15
  690296:	c4 81 23 5e 4c e5 08 	vdivsd 0x8(%r13,%r12,8),%xmm11,%xmm1
  69029d:	c4 81 73 59 44 e3 08 	vmulsd 0x8(%r11,%r12,8),%xmm1,%xmm0
  6902a4:	c4 81 73 59 54 e6 08 	vmulsd 0x8(%r14,%r12,8),%xmm1,%xmm2
  6902ab:	c4 81 7b 11 44 e7 08 	vmovsd %xmm0,0x8(%r15,%r12,8)
  6902b2:	c4 81 7b 11 54 e6 08 	vmovsd %xmm2,0x8(%r14,%r12,8)
  6902b9:	49 ff c4             	inc    %r12
  6902bc:	4c 3b e7             	cmp    %rdi,%r12
  6902bf:	72 d5                	jb     690296 <step3d_t_mod_mp_step3d_t_tile_+0x9626>
  6902c1:	e9 ae 07 00 00       	jmpq   690a74 <step3d_t_mod_mp_step3d_t_tile_+0x9e04>
  6902c6:	48 83 bd 28 fe ff ff 	cmpq   $0x2,-0x1d8(%rbp)
  6902cd:	02 
  6902ce:	0f 8c 90 03 00 00    	jl     690664 <step3d_t_mod_mp_step3d_t_tile_+0x99f4>
  6902d4:	41 bb 01 00 00 00    	mov    $0x1,%r11d
  6902da:	48 83 bd 68 fd ff ff 	cmpq   $0x1,-0x298(%rbp)
  6902e1:	01 
  6902e2:	0f 86 7c 03 00 00    	jbe    690664 <step3d_t_mod_mp_step3d_t_tile_+0x99f4>
  6902e8:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  6902ef:	89 b5 d0 fb ff ff    	mov    %esi,-0x430(%rbp)
  6902f5:	44 89 8d d8 fb ff ff 	mov    %r9d,-0x428(%rbp)
  6902fc:	44 89 95 a0 fb ff ff 	mov    %r10d,-0x460(%rbp)
  690303:	48 8b 85 f0 fa ff ff 	mov    -0x510(%rbp),%rax
  69030a:	48 8b 8d 88 fd ff ff 	mov    -0x278(%rbp),%rcx
  690311:	49 ff c3             	inc    %r11
  690314:	4c 3b 9d 68 fd ff ff 	cmp    -0x298(%rbp),%r11
  69031b:	0f 83 0c 03 00 00    	jae    69062d <step3d_t_mod_mp_step3d_t_tile_+0x99bd>
  690321:	8b 95 c0 fd ff ff    	mov    -0x240(%rbp),%edx
  690327:	3b 95 b8 fd ff ff    	cmp    -0x248(%rbp),%edx
  69032d:	7c e2                	jl     690311 <step3d_t_mod_mp_step3d_t_tile_+0x96a1>
  69032f:	48 83 ff 04          	cmp    $0x4,%rdi
  690333:	0f 8c ae 06 00 00    	jl     6909e7 <step3d_t_mod_mp_step3d_t_tile_+0x9d77>
  690339:	4d 89 de             	mov    %r11,%r14
  69033c:	45 33 ff             	xor    %r15d,%r15d
  69033f:	4c 0f af b5 a0 fd ff 	imul   -0x260(%rbp),%r14
  690346:	ff 
  690347:	4c 8b 95 90 fd ff ff 	mov    -0x270(%rbp),%r10
  69034e:	4e 8d 2c 30          	lea    (%rax,%r14,1),%r13
  690352:	4c 8b 8d 98 fd ff ff 	mov    -0x268(%rbp),%r9
  690359:	4c 8b 85 b0 fd ff ff 	mov    -0x250(%rbp),%r8
  690360:	48 8b b5 a8 fd ff ff 	mov    -0x258(%rbp),%rsi
  690367:	4f 8d 24 32          	lea    (%r10,%r14,1),%r12
  69036b:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  690372:	4e 8d 14 31          	lea    (%rcx,%r14,1),%r10
  690376:	48 89 d1             	mov    %rdx,%rcx
  690379:	4d 03 ce             	add    %r14,%r9
  69037c:	4d 03 c6             	add    %r14,%r8
  69037f:	49 03 f6             	add    %r14,%rsi
  690382:	4c 03 b5 d8 fd ff ff 	add    -0x228(%rbp),%r14
  690389:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  690390:	c4 81 7d 10 64 fe 08 	vmovupd 0x8(%r14,%r15,8),%ymm4
  690397:	c4 81 7d 10 44 f8 08 	vmovupd 0x8(%r8,%r15,8),%ymm0
  69039e:	c4 a1 7d 10 54 fe 08 	vmovupd 0x8(%rsi,%r15,8),%ymm2
  6903a5:	c4 82 dd ac 44 f9 10 	vfnmadd213pd 0x10(%r9,%r15,8),%ymm4,%ymm0
  6903ac:	c4 82 ed ac 64 fc 10 	vfnmadd213pd 0x10(%r12,%r15,8),%ymm2,%ymm4
  6903b3:	c5 b5 5e d8          	vdivpd %ymm0,%ymm9,%ymm3
  6903b7:	c4 81 65 59 4c fd 10 	vmulpd 0x10(%r13,%r15,8),%ymm3,%ymm1
  6903be:	c5 e5 59 ec          	vmulpd %ymm4,%ymm3,%ymm5
  6903c2:	c4 81 7d 11 4c fa 10 	vmovupd %ymm1,0x10(%r10,%r15,8)
  6903c9:	c4 81 7d 11 6c fc 10 	vmovupd %ymm5,0x10(%r12,%r15,8)
  6903d0:	49 83 c7 04          	add    $0x4,%r15
  6903d4:	4c 3b f9             	cmp    %rcx,%r15
  6903d7:	72 b7                	jb     690390 <step3d_t_mod_mp_step3d_t_tile_+0x9720>
  6903d9:	48 8b 8d 88 fd ff ff 	mov    -0x278(%rbp),%rcx
  6903e0:	48 3b d7             	cmp    %rdi,%rdx
  6903e3:	0f 83 8f 00 00 00    	jae    690478 <step3d_t_mod_mp_step3d_t_tile_+0x9808>
  6903e9:	4d 89 dc             	mov    %r11,%r12
  6903ec:	4c 0f af a5 a0 fd ff 	imul   -0x260(%rbp),%r12
  6903f3:	ff 
  6903f4:	4c 8b 85 90 fd ff ff 	mov    -0x270(%rbp),%r8
  6903fb:	4e 8d 14 20          	lea    (%rax,%r12,1),%r10
  6903ff:	48 8b b5 98 fd ff ff 	mov    -0x268(%rbp),%rsi
  690406:	4c 8b b5 b0 fd ff ff 	mov    -0x250(%rbp),%r14
  69040d:	4c 8b ad a8 fd ff ff 	mov    -0x258(%rbp),%r13
  690414:	4f 8d 0c 20          	lea    (%r8,%r12,1),%r9
  690418:	4e 8d 04 21          	lea    (%rcx,%r12,1),%r8
  69041c:	49 03 f4             	add    %r12,%rsi
  69041f:	4d 03 f4             	add    %r12,%r14
  690422:	4d 03 ec             	add    %r12,%r13
  690425:	4c 03 a5 d8 fd ff ff 	add    -0x228(%rbp),%r12
  69042c:	0f 1f 40 00          	nopl   0x0(%rax)
  690430:	c4 c1 7b 10 64 d4 08 	vmovsd 0x8(%r12,%rdx,8),%xmm4
  690437:	c4 c1 7b 10 44 d6 08 	vmovsd 0x8(%r14,%rdx,8),%xmm0
  69043e:	c4 e2 d9 ad 44 d6 10 	vfnmadd213sd 0x10(%rsi,%rdx,8),%xmm4,%xmm0
  690445:	c4 c1 7b 10 54 d5 08 	vmovsd 0x8(%r13,%rdx,8),%xmm2
  69044c:	c4 c2 e9 ad 64 d1 10 	vfnmadd213sd 0x10(%r9,%rdx,8),%xmm2,%xmm4
  690453:	c5 a3 5e d8          	vdivsd %xmm0,%xmm11,%xmm3
  690457:	c4 c1 63 59 4c d2 10 	vmulsd 0x10(%r10,%rdx,8),%xmm3,%xmm1
  69045e:	c5 e3 59 ec          	vmulsd %xmm4,%xmm3,%xmm5
  690462:	c4 c1 7b 11 4c d0 10 	vmovsd %xmm1,0x10(%r8,%rdx,8)
  690469:	c4 c1 7b 11 6c d1 10 	vmovsd %xmm5,0x10(%r9,%rdx,8)
  690470:	48 ff c2             	inc    %rdx
  690473:	48 3b d7             	cmp    %rdi,%rdx
  690476:	72 b8                	jb     690430 <step3d_t_mod_mp_step3d_t_tile_+0x97c0>
  690478:	49 ff c3             	inc    %r11
  69047b:	4c 3b 9d 68 fd ff ff 	cmp    -0x298(%rbp),%r11
  690482:	0f 82 99 fe ff ff    	jb     690321 <step3d_t_mod_mp_step3d_t_tile_+0x96b1>
  690488:	48 89 85 f0 fa ff ff 	mov    %rax,-0x510(%rbp)
  69048f:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  690495:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  69049c:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  6904a3:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  6904aa:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  6904b1:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  6904b8:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  6904bf:	48 83 ff 04          	cmp    $0x4,%rdi
  6904c3:	0f 8c 16 05 00 00    	jl     6909df <step3d_t_mod_mp_step3d_t_tile_+0x9d6f>
  6904c9:	4d 63 fa             	movslq %r10d,%r15
  6904cc:	45 33 ed             	xor    %r13d,%r13d
  6904cf:	4c 0f af f9          	imul   %rcx,%r15
  6904d3:	89 b5 d0 fb ff ff    	mov    %esi,-0x430(%rbp)
  6904d9:	49 89 d3             	mov    %rdx,%r11
  6904dc:	44 89 8d d8 fb ff ff 	mov    %r9d,-0x428(%rbp)
  6904e3:	45 33 e4             	xor    %r12d,%r12d
  6904e6:	44 89 95 a0 fb ff ff 	mov    %r10d,-0x460(%rbp)
  6904ed:	4c 8d 34 40          	lea    (%rax,%rax,2),%r14
  6904f1:	4c 03 bd 88 fb ff ff 	add    -0x478(%rbp),%r15
  6904f8:	48 8b b5 68 fb ff ff 	mov    -0x498(%rbp),%rsi
  6904ff:	48 8b bd 10 fb ff ff 	mov    -0x4f0(%rbp),%rdi
  690506:	4c 8b 85 90 fb ff ff 	mov    -0x470(%rbp),%r8
  69050d:	4c 8b 8d 20 fb ff ff 	mov    -0x4e0(%rbp),%r9
  690514:	4c 8b 95 18 fb ff ff 	mov    -0x4e8(%rbp),%r10
  69051b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  690520:	c4 81 7d 10 14 e8    	vmovupd (%r8,%r13,8),%ymm2
  690526:	4b 8d 0c 3c          	lea    (%r12,%r15,1),%rcx
  69052a:	c4 81 7d 10 0c e9    	vmovupd (%r9,%r13,8),%ymm1
  690530:	c4 81 7d 10 04 ea    	vmovupd (%r10,%r13,8),%ymm0
  690536:	c4 a2 ed ac 0c ee    	vfnmadd213pd (%rsi,%r13,8),%ymm2,%ymm1
  69053c:	c4 a2 fd ac 14 ef    	vfnmadd213pd (%rdi,%r13,8),%ymm0,%ymm2
  690542:	c5 f5 5e da          	vdivpd %ymm2,%ymm1,%ymm3
  690546:	4d 8d 24 84          	lea    (%r12,%rax,4),%r12
  69054a:	c4 a1 7d 11 1c ee    	vmovupd %ymm3,(%rsi,%r13,8)
  690550:	49 83 c5 04          	add    $0x4,%r13
  690554:	4c 3b ea             	cmp    %rdx,%r13
  690557:	c4 e3 7d 19 dc 01    	vextractf128 $0x1,%ymm3,%xmm4
  69055d:	c5 fb 11 19          	vmovsd %xmm3,(%rcx)
  690561:	c5 f9 17 1c 08       	vmovhpd %xmm3,(%rax,%rcx,1)
  690566:	c5 fb 11 24 41       	vmovsd %xmm4,(%rcx,%rax,2)
  69056b:	c4 c1 79 17 24 0e    	vmovhpd %xmm4,(%r14,%rcx,1)
  690571:	72 ad                	jb     690520 <step3d_t_mod_mp_step3d_t_tile_+0x98b0>
  690573:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  690579:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  690580:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  690587:	48 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%rdi
  69058e:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  690595:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  69059c:	49 89 c4             	mov    %rax,%r12
  69059f:	4d 0f af e3          	imul   %r11,%r12
  6905a3:	4c 3b df             	cmp    %rdi,%r11
  6905a6:	0f 83 b8 00 00 00    	jae    690664 <step3d_t_mod_mp_step3d_t_tile_+0x99f4>
  6905ac:	4d 63 ea             	movslq %r10d,%r13
  6905af:	4c 0f af e9          	imul   %rcx,%r13
  6905b3:	4c 03 ad 88 fb ff ff 	add    -0x478(%rbp),%r13
  6905ba:	48 8b 95 68 fb ff ff 	mov    -0x498(%rbp),%rdx
  6905c1:	48 8b 8d 10 fb ff ff 	mov    -0x4f0(%rbp),%rcx
  6905c8:	4c 8b 85 90 fb ff ff 	mov    -0x470(%rbp),%r8
  6905cf:	4c 8b b5 20 fb ff ff 	mov    -0x4e0(%rbp),%r14
  6905d6:	4c 8b bd 18 fb ff ff 	mov    -0x4e8(%rbp),%r15
  6905dd:	c4 81 7b 10 14 d8    	vmovsd (%r8,%r11,8),%xmm2
  6905e3:	c4 81 7b 10 0c de    	vmovsd (%r14,%r11,8),%xmm1
  6905e9:	c4 81 7b 10 04 df    	vmovsd (%r15,%r11,8),%xmm0
  6905ef:	c4 a2 e9 ad 0c da    	vfnmadd213sd (%rdx,%r11,8),%xmm2,%xmm1
  6905f5:	c4 a2 f9 ad 14 d9    	vfnmadd213sd (%rcx,%r11,8),%xmm0,%xmm2
  6905fb:	c5 f3 5e da          	vdivsd %xmm2,%xmm1,%xmm3
  6905ff:	c4 a1 7b 11 1c da    	vmovsd %xmm3,(%rdx,%r11,8)
  690605:	49 ff c3             	inc    %r11
  690608:	c4 81 7b 11 1c 2c    	vmovsd %xmm3,(%r12,%r13,1)
  69060e:	4c 03 e0             	add    %rax,%r12
  690611:	4c 3b df             	cmp    %rdi,%r11
  690614:	72 c7                	jb     6905dd <step3d_t_mod_mp_step3d_t_tile_+0x996d>
  690616:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  69061d:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  690624:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  69062b:	eb 37                	jmp    690664 <step3d_t_mod_mp_step3d_t_tile_+0x99f4>
  69062d:	48 89 85 f0 fa ff ff 	mov    %rax,-0x510(%rbp)
  690634:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  69063a:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  690641:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  690648:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  69064f:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  690656:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  69065d:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  690664:	45 33 e4             	xor    %r12d,%r12d
  690667:	45 33 ed             	xor    %r13d,%r13d
  69066a:	45 33 db             	xor    %r11d,%r11d
  69066d:	45 85 c9             	test   %r9d,%r9d
  690670:	0f 8e 1e 03 00 00    	jle    690994 <step3d_t_mod_mp_step3d_t_tile_+0x9d24>
  690676:	4c 8b b5 a0 fd ff ff 	mov    -0x260(%rbp),%r14
  69067d:	4c 8b bd 28 fe ff ff 	mov    -0x1d8(%rbp),%r15
  690684:	4d 0f af f7          	imul   %r15,%r14
  690688:	4c 8d 85 48 fd ff ff 	lea    -0x2b8(%rbp),%r8
  69068f:	4d 89 18             	mov    %r11,(%r8)
  690692:	4c 8b 9d 00 fd ff ff 	mov    -0x300(%rbp),%r11
  690699:	4d 63 d2             	movslq %r10d,%r10
  69069c:	4c 0f af d1          	imul   %rcx,%r10
  6906a0:	89 b5 d0 fb ff ff    	mov    %esi,-0x430(%rbp)
  6906a6:	4d 03 de             	add    %r14,%r11
  6906a9:	48 8d b5 40 fd ff ff 	lea    -0x2c0(%rbp),%rsi
  6906b0:	4c 89 1e             	mov    %r11,(%rsi)
  6906b3:	4c 8b 9d e8 f8 ff ff 	mov    -0x718(%rbp),%r11
  6906ba:	48 8b 36             	mov    (%rsi),%rsi
  6906bd:	44 89 8d d8 fb ff ff 	mov    %r9d,-0x428(%rbp)
  6906c4:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  6906cb:	4d 03 de             	add    %r14,%r11
  6906ce:	4c 03 b5 a8 fd ff ff 	add    -0x258(%rbp),%r14
  6906d5:	48 8d 85 80 f4 ff ff 	lea    -0xb80(%rbp),%rax
  6906dc:	4c 89 30             	mov    %r14,(%rax)
  6906df:	4c 8b b5 78 fd ff ff 	mov    -0x288(%rbp),%r14
  6906e6:	4d 0f af f7          	imul   %r15,%r14
  6906ea:	4c 8d 8d 78 f4 ff ff 	lea    -0xb88(%rbp),%r9
  6906f1:	4d 89 19             	mov    %r11,(%r9)
  6906f4:	4c 8b bd d0 f7 ff ff 	mov    -0x830(%rbp),%r15
  6906fb:	4c 8b 9d b8 f9 ff ff 	mov    -0x648(%rbp),%r11
  690702:	48 8b 08             	mov    (%rax),%rcx
  690705:	49 8b 11             	mov    (%r9),%rdx
  690708:	4d 03 fb             	add    %r11,%r15
  69070b:	4d 03 fa             	add    %r10,%r15
  69070e:	4d 03 fe             	add    %r14,%r15
  690711:	4c 89 bd 18 fd ff ff 	mov    %r15,-0x2e8(%rbp)
  690718:	4c 8b bd f0 f7 ff ff 	mov    -0x810(%rbp),%r15
  69071f:	4d 03 df             	add    %r15,%r11
  690722:	4d 03 d3             	add    %r11,%r10
  690725:	4d 03 f2             	add    %r10,%r14
  690728:	4d 8b 18             	mov    (%r8),%r11
  69072b:	4c 89 b5 08 fd ff ff 	mov    %r14,-0x2f8(%rbp)
  690732:	48 83 bd e0 fd ff ff 	cmpq   $0x8,-0x220(%rbp)
  690739:	08 
  69073a:	0f 85 b9 00 00 00    	jne    6907f9 <step3d_t_mod_mp_step3d_t_tile_+0x9b89>
  690740:	8b 85 b8 fd ff ff    	mov    -0x248(%rbp),%eax
  690746:	3b 85 c0 fd ff ff    	cmp    -0x240(%rbp),%eax
  69074c:	0f 8f fb 01 00 00    	jg     69094d <step3d_t_mod_mp_step3d_t_tile_+0x9cdd>
  690752:	48 83 ff 04          	cmp    $0x4,%rdi
  690756:	0f 8c 92 02 00 00    	jl     6909ee <step3d_t_mod_mp_step3d_t_tile_+0x9d7e>
  69075c:	4c 8b b5 08 fd ff ff 	mov    -0x2f8(%rbp),%r14
  690763:	45 33 d2             	xor    %r10d,%r10d
  690766:	4c 8b bd 30 fe ff ff 	mov    -0x1d0(%rbp),%r15
  69076d:	4e 8d 0c 2e          	lea    (%rsi,%r13,1),%r9
  690771:	4c 89 ff             	mov    %r15,%rdi
  690774:	4e 8d 04 2a          	lea    (%rdx,%r13,1),%r8
  690778:	4a 8d 04 29          	lea    (%rcx,%r13,1),%rax
  69077c:	4d 03 f3             	add    %r11,%r14
  69077f:	c4 81 7d 10 0c d1    	vmovupd (%r9,%r10,8),%ymm1
  690785:	c4 a1 7d 10 44 d0 08 	vmovupd 0x8(%rax,%r10,8),%ymm0
  69078c:	c4 82 fd ac 0c d0    	vfnmadd213pd (%r8,%r10,8),%ymm0,%ymm1
  690792:	c4 81 7d 11 0c d0    	vmovupd %ymm1,(%r8,%r10,8)
  690798:	c4 81 7d 11 0c d6    	vmovupd %ymm1,(%r14,%r10,8)
  69079e:	49 83 c2 04          	add    $0x4,%r10
  6907a2:	4c 3b d7             	cmp    %rdi,%r10
  6907a5:	72 d8                	jb     69077f <step3d_t_mod_mp_step3d_t_tile_+0x9b0f>
  6907a7:	48 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%rdi
  6907ae:	4c 3b ff             	cmp    %rdi,%r15
  6907b1:	0f 83 96 01 00 00    	jae    69094d <step3d_t_mod_mp_step3d_t_tile_+0x9cdd>
  6907b7:	48 8b 85 08 fd ff ff 	mov    -0x2f8(%rbp),%rax
  6907be:	4e 8d 14 2e          	lea    (%rsi,%r13,1),%r10
  6907c2:	4e 8d 0c 2a          	lea    (%rdx,%r13,1),%r9
  6907c6:	4e 8d 04 29          	lea    (%rcx,%r13,1),%r8
  6907ca:	49 03 c3             	add    %r11,%rax
  6907cd:	c4 81 7b 10 0c fa    	vmovsd (%r10,%r15,8),%xmm1
  6907d3:	c4 81 7b 10 44 f8 08 	vmovsd 0x8(%r8,%r15,8),%xmm0
  6907da:	c4 82 f9 ad 0c f9    	vfnmadd213sd (%r9,%r15,8),%xmm0,%xmm1
  6907e0:	c4 81 7b 11 0c f9    	vmovsd %xmm1,(%r9,%r15,8)
  6907e6:	c4 a1 7b 11 0c f8    	vmovsd %xmm1,(%rax,%r15,8)
  6907ec:	49 ff c7             	inc    %r15
  6907ef:	4c 3b ff             	cmp    %rdi,%r15
  6907f2:	72 d9                	jb     6907cd <step3d_t_mod_mp_step3d_t_tile_+0x9b5d>
  6907f4:	e9 54 01 00 00       	jmpq   69094d <step3d_t_mod_mp_step3d_t_tile_+0x9cdd>
  6907f9:	8b 85 b8 fd ff ff    	mov    -0x248(%rbp),%eax
  6907ff:	3b 85 c0 fd ff ff    	cmp    -0x240(%rbp),%eax
  690805:	0f 8f 42 01 00 00    	jg     69094d <step3d_t_mod_mp_step3d_t_tile_+0x9cdd>
  69080b:	48 83 ff 04          	cmp    $0x4,%rdi
  69080f:	0f 8c e1 01 00 00    	jl     6909f6 <step3d_t_mod_mp_step3d_t_tile_+0x9d86>
  690815:	4c 8b bd 18 fd ff ff 	mov    -0x2e8(%rbp),%r15
  69081c:	45 33 f6             	xor    %r14d,%r14d
  69081f:	4e 8d 14 2e          	lea    (%rsi,%r13,1),%r10
  690823:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
  69082a:	4e 8d 0c 2a          	lea    (%rdx,%r13,1),%r9
  69082e:	4c 89 9d 48 fd ff ff 	mov    %r11,-0x2b8(%rbp)
  690835:	4d 03 fb             	add    %r11,%r15
  690838:	4c 89 bd 10 fd ff ff 	mov    %r15,-0x2f0(%rbp)
  69083f:	4e 8d 04 29          	lea    (%rcx,%r13,1),%r8
  690843:	4c 8b bd e0 fd ff ff 	mov    -0x220(%rbp),%r15
  69084a:	4c 89 a5 58 fd ff ff 	mov    %r12,-0x2a8(%rbp)
  690851:	4c 89 ad 50 fd ff ff 	mov    %r13,-0x2b0(%rbp)
  690858:	49 89 c5             	mov    %rax,%r13
  69085b:	4d 89 f3             	mov    %r14,%r11
  69085e:	4f 8d 3c 7f          	lea    (%r15,%r15,2),%r15
  690862:	4c 89 ff             	mov    %r15,%rdi
  690865:	4c 8b a5 10 fd ff ff 	mov    -0x2f0(%rbp),%r12
  69086c:	4c 8b bd e0 fd ff ff 	mov    -0x220(%rbp),%r15
  690873:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  690878:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  69087f:	00 
  690880:	c4 81 7d 10 0c f2    	vmovupd (%r10,%r14,8),%ymm1
  690886:	4b 8d 34 23          	lea    (%r11,%r12,1),%rsi
  69088a:	c4 81 7d 10 44 f0 08 	vmovupd 0x8(%r8,%r14,8),%ymm0
  690891:	c4 82 fd ac 0c f1    	vfnmadd213pd (%r9,%r14,8),%ymm0,%ymm1
  690897:	4f 8d 1c bb          	lea    (%r11,%r15,4),%r11
  69089b:	c4 81 7d 11 0c f1    	vmovupd %ymm1,(%r9,%r14,8)
  6908a1:	49 83 c6 04          	add    $0x4,%r14
  6908a5:	4d 3b f5             	cmp    %r13,%r14
  6908a8:	c4 e3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm2
  6908ae:	c5 fb 11 0e          	vmovsd %xmm1,(%rsi)
  6908b2:	c4 c1 79 17 0c 37    	vmovhpd %xmm1,(%r15,%rsi,1)
  6908b8:	c4 a1 7b 11 14 7e    	vmovsd %xmm2,(%rsi,%r15,2)
  6908be:	c5 f9 17 14 37       	vmovhpd %xmm2,(%rdi,%rsi,1)
  6908c3:	72 bb                	jb     690880 <step3d_t_mod_mp_step3d_t_tile_+0x9c10>
  6908c5:	48 8b b5 40 fd ff ff 	mov    -0x2c0(%rbp),%rsi
  6908cc:	4c 8b 9d 48 fd ff ff 	mov    -0x2b8(%rbp),%r11
  6908d3:	4c 8b ad 50 fd ff ff 	mov    -0x2b0(%rbp),%r13
  6908da:	4c 8b a5 58 fd ff ff 	mov    -0x2a8(%rbp),%r12
  6908e1:	48 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%rdi
  6908e8:	4c 8b 95 e0 fd ff ff 	mov    -0x220(%rbp),%r10
  6908ef:	4c 0f af d0          	imul   %rax,%r10
  6908f3:	48 3b c7             	cmp    %rdi,%rax
  6908f6:	73 55                	jae    69094d <step3d_t_mod_mp_step3d_t_tile_+0x9cdd>
  6908f8:	4c 8b bd 18 fd ff ff 	mov    -0x2e8(%rbp),%r15
  6908ff:	4e 8d 0c 2e          	lea    (%rsi,%r13,1),%r9
  690903:	4c 89 a5 58 fd ff ff 	mov    %r12,-0x2a8(%rbp)
  69090a:	4e 8d 04 2a          	lea    (%rdx,%r13,1),%r8
  69090e:	4c 8b a5 e0 fd ff ff 	mov    -0x220(%rbp),%r12
  690915:	4e 8d 34 29          	lea    (%rcx,%r13,1),%r14
  690919:	4d 03 fb             	add    %r11,%r15
  69091c:	c4 c1 7b 10 0c c1    	vmovsd (%r9,%rax,8),%xmm1
  690922:	c4 c1 7b 10 44 c6 08 	vmovsd 0x8(%r14,%rax,8),%xmm0
  690929:	c4 c2 f9 ad 0c c0    	vfnmadd213sd (%r8,%rax,8),%xmm0,%xmm1
  69092f:	c4 c1 7b 11 0c c0    	vmovsd %xmm1,(%r8,%rax,8)
  690935:	48 ff c0             	inc    %rax
  690938:	c4 81 7b 11 0c 3a    	vmovsd %xmm1,(%r10,%r15,1)
  69093e:	4d 03 d4             	add    %r12,%r10
  690941:	48 3b c7             	cmp    %rdi,%rax
  690944:	72 d6                	jb     69091c <step3d_t_mod_mp_step3d_t_tile_+0x9cac>
  690946:	4c 8b a5 58 fd ff ff 	mov    -0x2a8(%rbp),%r12
  69094d:	49 ff c4             	inc    %r12
  690950:	4c 03 ad 20 fe ff ff 	add    -0x1e0(%rbp),%r13
  690957:	4c 03 9d 18 fe ff ff 	add    -0x1e8(%rbp),%r11
  69095e:	4c 3b a5 28 fe ff ff 	cmp    -0x1d8(%rbp),%r12
  690965:	0f 82 c7 fd ff ff    	jb     690732 <step3d_t_mod_mp_step3d_t_tile_+0x9ac2>
  69096b:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  690971:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  690978:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  69097f:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  690986:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  69098d:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  690994:	41 89 f2             	mov    %esi,%r10d
  690997:	3b b5 00 fc ff ff    	cmp    -0x400(%rbp),%esi
  69099d:	0f 82 f9 ee ff ff    	jb     68f89c <step3d_t_mod_mp_step3d_t_tile_+0x8c2c>
  6909a3:	48 8b 8d b0 f9 ff ff 	mov    -0x650(%rbp),%rcx
  6909aa:	8b b5 e0 f8 ff ff    	mov    -0x720(%rbp),%esi
  6909b0:	ff c6                	inc    %esi
  6909b2:	48 ff c1             	inc    %rcx
  6909b5:	3b b5 c8 f9 ff ff    	cmp    -0x638(%rbp),%esi
  6909bb:	0f 82 35 8f ff ff    	jb     6898f6 <step3d_t_mod_mp_step3d_t_tile_+0x2c86>
  6909c1:	e9 39 87 ff ff       	jmpq   6890ff <step3d_t_mod_mp_step3d_t_tile_+0x248f>
  6909c6:	44 8b 9d c0 fd ff ff 	mov    -0x240(%rbp),%r11d
  6909cd:	44 3b 9d b8 fd ff ff 	cmp    -0x248(%rbp),%r11d
  6909d4:	0f 8d e5 fa ff ff    	jge    6904bf <step3d_t_mod_mp_step3d_t_tile_+0x984f>
  6909da:	e9 85 fc ff ff       	jmpq   690664 <step3d_t_mod_mp_step3d_t_tile_+0x99f4>
  6909df:	45 33 db             	xor    %r11d,%r11d
  6909e2:	e9 b5 fb ff ff       	jmpq   69059c <step3d_t_mod_mp_step3d_t_tile_+0x992c>
  6909e7:	33 d2                	xor    %edx,%edx
  6909e9:	e9 f2 f9 ff ff       	jmpq   6903e0 <step3d_t_mod_mp_step3d_t_tile_+0x9770>
  6909ee:	45 33 ff             	xor    %r15d,%r15d
  6909f1:	e9 b8 fd ff ff       	jmpq   6907ae <step3d_t_mod_mp_step3d_t_tile_+0x9b3e>
  6909f6:	33 c0                	xor    %eax,%eax
  6909f8:	e9 eb fe ff ff       	jmpq   6908e8 <step3d_t_mod_mp_step3d_t_tile_+0x9c78>
  6909fd:	45 33 e4             	xor    %r12d,%r12d
  690a00:	e9 6c f8 ff ff       	jmpq   690271 <step3d_t_mod_mp_step3d_t_tile_+0x9601>
  690a05:	45 33 c9             	xor    %r9d,%r9d
  690a08:	e9 47 f7 ff ff       	jmpq   690154 <step3d_t_mod_mp_step3d_t_tile_+0x94e4>
  690a0d:	45 33 ed             	xor    %r13d,%r13d
  690a10:	e9 86 ea ff ff       	jmpq   68f49b <step3d_t_mod_mp_step3d_t_tile_+0x882b>
  690a15:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  690a1b:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  690a22:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  690a29:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  690a30:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  690a37:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  690a3e:	e9 cf f7 ff ff       	jmpq   690212 <step3d_t_mod_mp_step3d_t_tile_+0x95a2>
  690a43:	45 33 c0             	xor    %r8d,%r8d
  690a46:	e9 08 ef ff ff       	jmpq   68f953 <step3d_t_mod_mp_step3d_t_tile_+0x8ce3>
  690a4b:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  690a51:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  690a58:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  690a5f:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  690a66:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  690a6d:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  690a74:	45 33 db             	xor    %r11d,%r11d
  690a77:	48 83 bd 28 fe ff ff 	cmpq   $0x2,-0x1d8(%rbp)
  690a7e:	02 
  690a7f:	0f 8c 41 ff ff ff    	jl     6909c6 <step3d_t_mod_mp_step3d_t_tile_+0x9d56>
  690a85:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  690a8c:	89 b5 d0 fb ff ff    	mov    %esi,-0x430(%rbp)
  690a92:	44 89 8d d8 fb ff ff 	mov    %r9d,-0x428(%rbp)
  690a99:	44 89 95 a0 fb ff ff 	mov    %r10d,-0x460(%rbp)
  690aa0:	48 8b 85 f0 fa ff ff 	mov    -0x510(%rbp),%rax
  690aa7:	48 8b 8d 88 fd ff ff 	mov    -0x278(%rbp),%rcx
  690aae:	e9 6e f8 ff ff       	jmpq   690321 <step3d_t_mod_mp_step3d_t_tile_+0x96b1>
  690ab3:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  690ab9:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  690ac0:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  690ac7:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  690ace:	48 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%rdi
  690ad5:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  690adc:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  690ae3:	e9 2a f7 ff ff       	jmpq   690212 <step3d_t_mod_mp_step3d_t_tile_+0x95a2>
  690ae8:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  690aee:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  690af5:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  690afc:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  690b03:	48 8b bd 60 fd ff ff 	mov    -0x2a0(%rbp),%rdi
  690b0a:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  690b11:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  690b18:	e9 57 ff ff ff       	jmpq   690a74 <step3d_t_mod_mp_step3d_t_tile_+0x9e04>
  690b1d:	8b b5 d0 fb ff ff    	mov    -0x430(%rbp),%esi
  690b23:	44 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9d
  690b2a:	44 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%r10d
  690b31:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
  690b38:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  690b3f:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  690b46:	44 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%r8d
  690b4d:	48 83 ff 04          	cmp    $0x4,%rdi
  690b51:	7c 5a                	jl     690bad <step3d_t_mod_mp_step3d_t_tile_+0x9f3d>
  690b53:	4c 8b ad 88 fa ff ff 	mov    -0x578(%rbp),%r13
  690b5a:	49 89 d3             	mov    %rdx,%r11
  690b5d:	4c 8b b5 c8 fd ff ff 	mov    -0x238(%rbp),%r14
  690b64:	45 33 e4             	xor    %r12d,%r12d
  690b67:	c4 01 7d 11 14 e6    	vmovupd %ymm10,(%r14,%r12,8)
  690b6d:	c4 01 7d 11 54 e5 00 	vmovupd %ymm10,0x0(%r13,%r12,8)
  690b74:	49 83 c4 04          	add    $0x4,%r12
  690b78:	4c 3b e2             	cmp    %rdx,%r12
  690b7b:	72 ea                	jb     690b67 <step3d_t_mod_mp_step3d_t_tile_+0x9ef7>
  690b7d:	4c 3b df             	cmp    %rdi,%r11
  690b80:	0f 83 73 f3 ff ff    	jae    68fef9 <step3d_t_mod_mp_step3d_t_tile_+0x9289>
  690b86:	4c 8b a5 88 fa ff ff 	mov    -0x578(%rbp),%r12
  690b8d:	45 33 f6             	xor    %r14d,%r14d
  690b90:	4c 8b ad c8 fd ff ff 	mov    -0x238(%rbp),%r13
  690b97:	4f 89 74 dd 00       	mov    %r14,0x0(%r13,%r11,8)
  690b9c:	4f 89 34 dc          	mov    %r14,(%r12,%r11,8)
  690ba0:	49 ff c3             	inc    %r11
  690ba3:	4c 3b df             	cmp    %rdi,%r11
  690ba6:	72 ef                	jb     690b97 <step3d_t_mod_mp_step3d_t_tile_+0x9f27>
  690ba8:	e9 4c f3 ff ff       	jmpq   68fef9 <step3d_t_mod_mp_step3d_t_tile_+0x9289>
  690bad:	45 33 db             	xor    %r11d,%r11d
  690bb0:	eb cb                	jmp    690b7d <step3d_t_mod_mp_step3d_t_tile_+0x9f0d>
  690bb2:	45 33 d2             	xor    %r10d,%r10d
  690bb5:	e9 5d f0 ff ff       	jmpq   68fc17 <step3d_t_mod_mp_step3d_t_tile_+0x8fa7>
  690bba:	44 8b 9d c0 fd ff ff 	mov    -0x240(%rbp),%r11d
  690bc1:	44 3b 9d b8 fd ff ff 	cmp    -0x248(%rbp),%r11d
  690bc8:	7d 83                	jge    690b4d <step3d_t_mod_mp_step3d_t_tile_+0x9edd>
  690bca:	48 83 bd d0 f9 ff ff 	cmpq   $0x8,-0x630(%rbp)
  690bd1:	08 
  690bd2:	75 27                	jne    690bfb <step3d_t_mod_mp_step3d_t_tile_+0x9f8b>
  690bd4:	48 83 bd 58 fc ff ff 	cmpq   $0x0,-0x3a8(%rbp)
  690bdb:	00 
  690bdc:	0f 8e 1c f6 ff ff    	jle    6901fe <step3d_t_mod_mp_step3d_t_tile_+0x958e>
  690be2:	41 bb 01 00 00 00    	mov    $0x1,%r11d
  690be8:	48 83 bd 58 fc ff ff 	cmpq   $0x1,-0x3a8(%rbp)
  690bef:	01 
  690bf0:	0f 87 22 f3 ff ff    	ja     68ff18 <step3d_t_mod_mp_step3d_t_tile_+0x92a8>
  690bf6:	e9 bb ec ff ff       	jmpq   68f8b6 <step3d_t_mod_mp_step3d_t_tile_+0x8c46>
  690bfb:	48 83 bd 58 fc ff ff 	cmpq   $0x0,-0x3a8(%rbp)
  690c02:	00 
  690c03:	0f 8e f5 f5 ff ff    	jle    6901fe <step3d_t_mod_mp_step3d_t_tile_+0x958e>
  690c09:	41 bb 01 00 00 00    	mov    $0x1,%r11d
  690c0f:	48 83 bd 58 fc ff ff 	cmpq   $0x1,-0x3a8(%rbp)
  690c16:	01 
  690c17:	0f 87 4c f4 ff ff    	ja     690069 <step3d_t_mod_mp_step3d_t_tile_+0x93f9>
  690c1d:	e9 94 ec ff ff       	jmpq   68f8b6 <step3d_t_mod_mp_step3d_t_tile_+0x8c46>
  690c22:	45 33 ff             	xor    %r15d,%r15d
  690c25:	e9 f4 f1 ff ff       	jmpq   68fe1e <step3d_t_mod_mp_step3d_t_tile_+0x91ae>
  690c2a:	45 33 e4             	xor    %r12d,%r12d
  690c2d:	e9 be e9 ff ff       	jmpq   68f5f0 <step3d_t_mod_mp_step3d_t_tile_+0x8980>
  690c32:	33 ff                	xor    %edi,%edi
  690c34:	e9 11 e2 ff ff       	jmpq   68ee4a <step3d_t_mod_mp_step3d_t_tile_+0x81da>
  690c39:	45 33 c0             	xor    %r8d,%r8d
  690c3c:	4d 85 db             	test   %r11,%r11
  690c3f:	0f 85 fd df ff ff    	jne    68ec42 <step3d_t_mod_mp_step3d_t_tile_+0x7fd2>
  690c45:	eb eb                	jmp    690c32 <step3d_t_mod_mp_step3d_t_tile_+0x9fc2>
  690c47:	33 c0                	xor    %eax,%eax
  690c49:	e9 0f 95 ff ff       	jmpq   68a15d <step3d_t_mod_mp_step3d_t_tile_+0x34ed>
  690c4e:	48 8b 95 b8 fb ff ff 	mov    -0x448(%rbp),%rdx
  690c55:	4c 8b a5 a8 fb ff ff 	mov    -0x458(%rbp),%r12
  690c5c:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  690c63:	e9 53 e2 ff ff       	jmpq   68eebb <step3d_t_mod_mp_step3d_t_tile_+0x824b>
  690c68:	8b 85 c0 fd ff ff    	mov    -0x240(%rbp),%eax
  690c6e:	3b 85 b8 fd ff ff    	cmp    -0x248(%rbp),%eax
  690c74:	0f 8d 23 de ff ff    	jge    68ea9d <step3d_t_mod_mp_step3d_t_tile_+0x7e2d>
  690c7a:	e9 3c e2 ff ff       	jmpq   68eebb <step3d_t_mod_mp_step3d_t_tile_+0x824b>
  690c7f:	48 8b 95 b8 fb ff ff 	mov    -0x448(%rbp),%rdx
  690c86:	4c 8b a5 a8 fb ff ff 	mov    -0x458(%rbp),%r12
  690c8d:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  690c94:	4c 8b 9d 60 fd ff ff 	mov    -0x2a0(%rbp),%r11
  690c9b:	e9 fd dd ff ff       	jmpq   68ea9d <step3d_t_mod_mp_step3d_t_tile_+0x7e2d>
  690ca0:	33 d2                	xor    %edx,%edx
  690ca2:	e9 35 98 ff ff       	jmpq   68a4dc <step3d_t_mod_mp_step3d_t_tile_+0x386c>
  690ca7:	48 8b 95 b8 fb ff ff 	mov    -0x448(%rbp),%rdx
  690cae:	4c 8b a5 a8 fb ff ff 	mov    -0x458(%rbp),%r12
  690cb5:	4c 8b ad b0 fb ff ff 	mov    -0x450(%rbp),%r13
  690cbc:	4c 8b 9d 60 fd ff ff 	mov    -0x2a0(%rbp),%r11
  690cc3:	e9 f3 e1 ff ff       	jmpq   68eebb <step3d_t_mod_mp_step3d_t_tile_+0x824b>
  690cc8:	45 33 d2             	xor    %r10d,%r10d
  690ccb:	e9 f2 a9 ff ff       	jmpq   68b6c2 <step3d_t_mod_mp_step3d_t_tile_+0x4a52>
  690cd0:	33 c9                	xor    %ecx,%ecx
  690cd2:	e9 7e b1 ff ff       	jmpq   68be55 <step3d_t_mod_mp_step3d_t_tile_+0x51e5>
  690cd7:	45 33 f6             	xor    %r14d,%r14d
  690cda:	e9 b4 b8 ff ff       	jmpq   68c593 <step3d_t_mod_mp_step3d_t_tile_+0x5923>
  690cdf:	48 83 bd 70 fd ff ff 	cmpq   $0x4,-0x290(%rbp)
  690ce6:	04 
  690ce7:	7c 6d                	jl     690d56 <step3d_t_mod_mp_step3d_t_tile_+0xa0e6>
  690ce9:	48 8b 8d 40 f8 ff ff 	mov    -0x7c0(%rbp),%rcx
  690cf0:	33 ff                	xor    %edi,%edi
  690cf2:	48 8b 95 38 f8 ff ff 	mov    -0x7c8(%rbp),%rdx
  690cf9:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  690d00:	49 89 c0             	mov    %rax,%r8
  690d03:	48 03 ce             	add    %rsi,%rcx
  690d06:	48 03 d6             	add    %rsi,%rdx
  690d09:	c5 fd 10 04 fa       	vmovupd (%rdx,%rdi,8),%ymm0
  690d0e:	c5 fd 11 04 f9       	vmovupd %ymm0,(%rcx,%rdi,8)
  690d13:	48 83 c7 04          	add    $0x4,%rdi
  690d17:	49 3b f8             	cmp    %r8,%rdi
  690d1a:	72 ed                	jb     690d09 <step3d_t_mod_mp_step3d_t_tile_+0xa099>
  690d1c:	48 3b 85 70 fd ff ff 	cmp    -0x290(%rbp),%rax
  690d23:	0f 83 55 bf ff ff    	jae    68cc7e <step3d_t_mod_mp_step3d_t_tile_+0x600e>
  690d29:	48 8b 95 40 f8 ff ff 	mov    -0x7c0(%rbp),%rdx
  690d30:	48 8b bd 70 fd ff ff 	mov    -0x290(%rbp),%rdi
  690d37:	48 03 d6             	add    %rsi,%rdx
  690d3a:	48 03 b5 38 f8 ff ff 	add    -0x7c8(%rbp),%rsi
  690d41:	48 8b 0c c6          	mov    (%rsi,%rax,8),%rcx
  690d45:	48 89 0c c2          	mov    %rcx,(%rdx,%rax,8)
  690d49:	48 ff c0             	inc    %rax
  690d4c:	48 3b c7             	cmp    %rdi,%rax
  690d4f:	72 f0                	jb     690d41 <step3d_t_mod_mp_step3d_t_tile_+0xa0d1>
  690d51:	e9 28 bf ff ff       	jmpq   68cc7e <step3d_t_mod_mp_step3d_t_tile_+0x600e>
  690d56:	33 c0                	xor    %eax,%eax
  690d58:	eb c2                	jmp    690d1c <step3d_t_mod_mp_step3d_t_tile_+0xa0ac>
  690d5a:	45 33 db             	xor    %r11d,%r11d
  690d5d:	e9 67 c0 ff ff       	jmpq   68cdc9 <step3d_t_mod_mp_step3d_t_tile_+0x6159>
  690d62:	33 c0                	xor    %eax,%eax
  690d64:	e9 eb c2 ff ff       	jmpq   68d054 <step3d_t_mod_mp_step3d_t_tile_+0x63e4>
  690d69:	4c 8b b5 28 f5 ff ff 	mov    -0xad8(%rbp),%r14
  690d70:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  690d74:	c4 81 7b 10 04 2e    	vmovsd (%r14,%r13,1),%xmm0
  690d7a:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
  690d7e:	0f 85 bc cc ff ff    	jne    68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  690d84:	0f 8a b6 cc ff ff    	jp     68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  690d8a:	4c 89 9d c0 f8 ff ff 	mov    %r11,-0x740(%rbp)
  690d91:	4c 8b 9d f0 f4 ff ff 	mov    -0xb10(%rbp),%r11
  690d98:	4c 8b bd 88 fe ff ff 	mov    -0x178(%rbp),%r15
  690d9f:	4c 8b b5 70 fe ff ff 	mov    -0x190(%rbp),%r14
  690da6:	4c 8b ad f8 f4 ff ff 	mov    -0xb08(%rbp),%r13
  690dad:	4d 0f af fb          	imul   %r11,%r15
  690db1:	4d 0f af f5          	imul   %r13,%r14
  690db5:	4d 03 fe             	add    %r14,%r15
  690db8:	4d 89 ee             	mov    %r13,%r14
  690dbb:	4c 0f af f6          	imul   %rsi,%r14
  690dbf:	4c 0f af ad 70 ff ff 	imul   -0x90(%rbp),%r13
  690dc6:	ff 
  690dc7:	c4 81 7b 10 04 27    	vmovsd (%r15,%r12,1),%xmm0
  690dcd:	4d 89 df             	mov    %r11,%r15
  690dd0:	4c 0f af bd a8 f8 ff 	imul   -0x758(%rbp),%r15
  690dd7:	ff 
  690dd8:	4c 03 f8             	add    %rax,%r15
  690ddb:	4f 8d 5c dd 00       	lea    0x0(%r13,%r11,8),%r11
  690de0:	4c 8b ad 80 f8 ff ff 	mov    -0x780(%rbp),%r13
  690de7:	c4 81 7b 59 0c 3e    	vmulsd (%r14,%r15,1),%xmm0,%xmm1
  690ded:	c4 81 7b 11 0c 2b    	vmovsd %xmm1,(%r11,%r13,1)
  690df3:	4c 8b 9d c0 f8 ff ff 	mov    -0x740(%rbp),%r11
  690dfa:	e9 41 cc ff ff       	jmpq   68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  690dff:	4c 8b b5 28 f5 ff ff 	mov    -0xad8(%rbp),%r14
  690e06:	c4 81 7b 10 04 2e    	vmovsd (%r14,%r13,1),%xmm0
  690e0c:	c5 f9 2e 05 ec 61 23 	vucomisd 0x2361ec(%rip),%xmm0        # 8c7000 <__STRLITPACK_199.115+0x70>
  690e13:	00 
  690e14:	0f 85 07 cc ff ff    	jne    68da21 <step3d_t_mod_mp_step3d_t_tile_+0x6db1>
  690e1a:	0f 8a 01 cc ff ff    	jp     68da21 <step3d_t_mod_mp_step3d_t_tile_+0x6db1>
  690e20:	48 89 85 e8 f4 ff ff 	mov    %rax,-0xb18(%rbp)
  690e27:	48 8b 85 f0 f4 ff ff 	mov    -0xb10(%rbp),%rax
  690e2e:	4c 8b bd 88 fe ff ff 	mov    -0x178(%rbp),%r15
  690e35:	4c 8b b5 70 fe ff ff 	mov    -0x190(%rbp),%r14
  690e3c:	4c 8b ad f8 f4 ff ff 	mov    -0xb08(%rbp),%r13
  690e43:	4c 0f af f8          	imul   %rax,%r15
  690e47:	4d 0f af f5          	imul   %r13,%r14
  690e4b:	4d 03 fe             	add    %r14,%r15
  690e4e:	4d 89 ee             	mov    %r13,%r14
  690e51:	4c 0f af f6          	imul   %rsi,%r14
  690e55:	4c 0f af ad 70 ff ff 	imul   -0x90(%rbp),%r13
  690e5c:	ff 
  690e5d:	c4 81 7b 10 04 27    	vmovsd (%r15,%r12,1),%xmm0
  690e63:	49 89 c7             	mov    %rax,%r15
  690e66:	4c 0f af bd a8 f8 ff 	imul   -0x758(%rbp),%r15
  690e6d:	ff 
  690e6e:	4c 03 bd b8 f8 ff ff 	add    -0x748(%rbp),%r15
  690e75:	49 8d 44 c5 00       	lea    0x0(%r13,%rax,8),%rax
  690e7a:	4c 8b ad 80 f8 ff ff 	mov    -0x780(%rbp),%r13
  690e81:	c4 81 7b 59 0c 3e    	vmulsd (%r14,%r15,1),%xmm0,%xmm1
  690e87:	c4 a1 7b 11 0c 28    	vmovsd %xmm1,(%rax,%r13,1)
  690e8d:	48 8b 85 e8 f4 ff ff 	mov    -0xb18(%rbp),%rax
  690e94:	e9 a7 cb ff ff       	jmpq   68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  690e99:	33 c0                	xor    %eax,%eax
  690e9b:	e9 72 d1 ff ff       	jmpq   68e012 <step3d_t_mod_mp_step3d_t_tile_+0x73a2>
  690ea0:	45 33 f6             	xor    %r14d,%r14d
  690ea3:	e9 f7 d4 ff ff       	jmpq   68e39f <step3d_t_mod_mp_step3d_t_tile_+0x772f>
  690ea8:	48 8b 85 80 fa ff ff 	mov    -0x580(%rbp),%rax
  690eaf:	48 89 85 60 fa ff ff 	mov    %rax,-0x5a0(%rbp)
  690eb6:	48 3b 85 78 fa ff ff 	cmp    -0x588(%rbp),%rax
  690ebd:	0f 83 f8 d5 ff ff    	jae    68e4bb <step3d_t_mod_mp_step3d_t_tile_+0x784b>
  690ec3:	48 8b 85 f0 f8 ff ff 	mov    -0x710(%rbp),%rax
  690eca:	4c 8b 38             	mov    (%rax),%r15
  690ecd:	48 8b 85 60 fa ff ff 	mov    -0x5a0(%rbp),%rax
  690ed4:	48 8d 50 01          	lea    0x1(%rax),%rdx
  690ed8:	48 89 95 80 fa ff ff 	mov    %rdx,-0x580(%rbp)
  690edf:	e9 ba a9 ff ff       	jmpq   68b89e <step3d_t_mod_mp_step3d_t_tile_+0x4c2e>
  690ee4:	c7 85 80 fb ff ff 01 	movl   $0x1,-0x480(%rbp)
  690eeb:	00 00 00 
  690eee:	e9 cd ce ff ff       	jmpq   68ddc0 <step3d_t_mod_mp_step3d_t_tile_+0x7150>
  690ef3:	44 3b b5 58 ff ff ff 	cmp    -0xa8(%rbp),%r14d
  690efa:	0f 8c 40 cb ff ff    	jl     68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  690f00:	44 3b b5 28 fe ff ff 	cmp    -0x1d8(%rbp),%r14d
  690f07:	0f 8f 33 cb ff ff    	jg     68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  690f0d:	44 3b ad 00 fb ff ff 	cmp    -0x500(%rbp),%r13d
  690f14:	0f 8c 26 cb ff ff    	jl     68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  690f1a:	44 3b ad 10 fb ff ff 	cmp    -0x4f0(%rbp),%r13d
  690f21:	0f 8f 19 cb ff ff    	jg     68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  690f27:	4c 8b bd 90 f8 ff ff 	mov    -0x770(%rbp),%r15
  690f2e:	4d 63 f6             	movslq %r14d,%r14
  690f31:	4d 63 ed             	movslq %r13d,%r13
  690f34:	4c 89 b5 d8 f4 ff ff 	mov    %r14,-0xb28(%rbp)
  690f3b:	4c 89 ad e0 f4 ff ff 	mov    %r13,-0xb20(%rbp)
  690f42:	43 f6 44 9f 04 01    	testb  $0x1,0x4(%r15,%r11,4)
  690f48:	0f 84 b7 00 00 00    	je     691005 <step3d_t_mod_mp_step3d_t_tile_+0xa395>
  690f4e:	4d 89 f5             	mov    %r14,%r13
  690f51:	4c 89 a5 d0 f4 ff ff 	mov    %r12,-0xb30(%rbp)
  690f58:	4c 8b bd 90 fe ff ff 	mov    -0x170(%rbp),%r15
  690f5f:	4c 8b a5 68 fe ff ff 	mov    -0x198(%rbp),%r12
  690f66:	4c 8b b5 e0 f4 ff ff 	mov    -0xb20(%rbp),%r14
  690f6d:	4d 0f af fd          	imul   %r13,%r15
  690f71:	4d 0f af e6          	imul   %r14,%r12
  690f75:	4c 0f af b5 70 ff ff 	imul   -0x90(%rbp),%r14
  690f7c:	ff 
  690f7d:	4d 03 fc             	add    %r12,%r15
  690f80:	4c 8b a5 88 f8 ff ff 	mov    -0x778(%rbp),%r12
  690f87:	c4 81 7b 10 04 27    	vmovsd (%r15,%r12,1),%xmm0
  690f8d:	4f 8d 24 ee          	lea    (%r14,%r13,8),%r12
  690f91:	4c 8b ac 11 80 02 00 	mov    0x280(%rcx,%rdx,1),%r13
  690f98:	00 
  690f99:	49 f7 dd             	neg    %r13
  690f9c:	4c 8b b5 80 fa ff ff 	mov    -0x580(%rbp),%r14
  690fa3:	4c 03 ad 70 f8 ff ff 	add    -0x790(%rbp),%r13
  690faa:	4c 2b b4 11 98 02 00 	sub    0x298(%rcx,%rdx,1),%r14
  690fb1:	00 
  690fb2:	4c 0f af ac 11 78 02 	imul   0x278(%rcx,%rdx,1),%r13
  690fb9:	00 00 
  690fbb:	4c 0f af b4 11 90 02 	imul   0x290(%rcx,%rdx,1),%r14
  690fc2:	00 00 
  690fc4:	4c 8b bc 11 68 02 00 	mov    0x268(%rcx,%rdx,1),%r15
  690fcb:	00 
  690fcc:	49 f7 df             	neg    %r15
  690fcf:	4d 03 fa             	add    %r10,%r15
  690fd2:	4c 0f af bc 11 60 02 	imul   0x260(%rcx,%rdx,1),%r15
  690fd9:	00 00 
  690fdb:	4c 03 ac 11 28 02 00 	add    0x228(%rcx,%rdx,1),%r13
  690fe2:	00 
  690fe3:	4d 03 f5             	add    %r13,%r14
  690fe6:	4c 8b ad 78 f8 ff ff 	mov    -0x788(%rbp),%r13
  690fed:	c4 81 7b 59 0c 3e    	vmulsd (%r14,%r15,1),%xmm0,%xmm1
  690ff3:	c4 81 7b 11 0c 2c    	vmovsd %xmm1,(%r12,%r13,1)
  690ff9:	4c 8b a5 d0 f4 ff ff 	mov    -0xb30(%rbp),%r12
  691000:	e9 3b ca ff ff       	jmpq   68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  691005:	4d 89 f5             	mov    %r14,%r13
  691008:	4c 8b b5 e0 f4 ff ff 	mov    -0xb20(%rbp),%r14
  69100f:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  691013:	4c 0f af ad 20 f5 ff 	imul   -0xae0(%rbp),%r13
  69101a:	ff 
  69101b:	4c 0f af b5 18 f5 ff 	imul   -0xae8(%rbp),%r14
  691022:	ff 
  691023:	4d 03 ee             	add    %r14,%r13
  691026:	4c 8b bd 00 f5 ff ff 	mov    -0xb00(%rbp),%r15
  69102d:	c4 81 7b 10 4c 3d 00 	vmovsd 0x0(%r13,%r15,1),%xmm1
  691034:	c5 f9 2e c8          	vucomisd %xmm0,%xmm1
  691038:	7a 06                	jp     691040 <step3d_t_mod_mp_step3d_t_tile_+0xa3d0>
  69103a:	0f 84 b4 00 00 00    	je     6910f4 <step3d_t_mod_mp_step3d_t_tile_+0xa484>
  691040:	c5 fb 10 05 b8 5f 23 	vmovsd 0x235fb8(%rip),%xmm0        # 8c7000 <__STRLITPACK_199.115+0x70>
  691047:	00 
  691048:	c5 f9 2e c8          	vucomisd %xmm0,%xmm1
  69104c:	0f 85 ee c9 ff ff    	jne    68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  691052:	0f 8a e8 c9 ff ff    	jp     68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  691058:	4c 8b b5 08 f5 ff ff 	mov    -0xaf8(%rbp),%r14
  69105f:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  691063:	c4 81 7b 10 04 2e    	vmovsd (%r14,%r13,1),%xmm0
  691069:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
  69106d:	0f 85 cd c9 ff ff    	jne    68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  691073:	0f 8a c7 c9 ff ff    	jp     68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  691079:	4c 8b ad d8 f4 ff ff 	mov    -0xb28(%rbp),%r13
  691080:	4c 89 a5 d0 f4 ff ff 	mov    %r12,-0xb30(%rbp)
  691087:	4c 8b b5 90 fe ff ff 	mov    -0x170(%rbp),%r14
  69108e:	4c 8b bd 68 fe ff ff 	mov    -0x198(%rbp),%r15
  691095:	4c 8b a5 e0 f4 ff ff 	mov    -0xb20(%rbp),%r12
  69109c:	4d 0f af f5          	imul   %r13,%r14
  6910a0:	4d 0f af fc          	imul   %r12,%r15
  6910a4:	4d 03 f7             	add    %r15,%r14
  6910a7:	4c 8b bd 88 f8 ff ff 	mov    -0x778(%rbp),%r15
  6910ae:	c4 81 7b 10 04 3e    	vmovsd (%r14,%r15,1),%xmm0
  6910b4:	4d 89 ef             	mov    %r13,%r15
  6910b7:	4c 0f af bd a8 f8 ff 	imul   -0x758(%rbp),%r15
  6910be:	ff 
  6910bf:	4d 89 e6             	mov    %r12,%r14
  6910c2:	4c 03 f8             	add    %rax,%r15
  6910c5:	4c 0f af f6          	imul   %rsi,%r14
  6910c9:	4c 0f af a5 70 ff ff 	imul   -0x90(%rbp),%r12
  6910d0:	ff 
  6910d1:	c4 81 7b 59 0c 3e    	vmulsd (%r14,%r15,1),%xmm0,%xmm1
  6910d7:	4f 8d 24 ec          	lea    (%r12,%r13,8),%r12
  6910db:	4c 8b ad 78 f8 ff ff 	mov    -0x788(%rbp),%r13
  6910e2:	c4 81 7b 11 0c 2c    	vmovsd %xmm1,(%r12,%r13,1)
  6910e8:	4c 8b a5 d0 f4 ff ff 	mov    -0xb30(%rbp),%r12
  6910ef:	e9 4c c9 ff ff       	jmpq   68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  6910f4:	4c 8b b5 08 f5 ff ff 	mov    -0xaf8(%rbp),%r14
  6910fb:	c4 81 7b 10 04 2e    	vmovsd (%r14,%r13,1),%xmm0
  691101:	c5 f9 2e 05 f7 5e 23 	vucomisd 0x235ef7(%rip),%xmm0        # 8c7000 <__STRLITPACK_199.115+0x70>
  691108:	00 
  691109:	0f 85 31 ff ff ff    	jne    691040 <step3d_t_mod_mp_step3d_t_tile_+0xa3d0>
  69110f:	0f 8a 2b ff ff ff    	jp     691040 <step3d_t_mod_mp_step3d_t_tile_+0xa3d0>
  691115:	4c 8b ad d8 f4 ff ff 	mov    -0xb28(%rbp),%r13
  69111c:	4c 89 a5 d0 f4 ff ff 	mov    %r12,-0xb30(%rbp)
  691123:	4c 8b b5 90 fe ff ff 	mov    -0x170(%rbp),%r14
  69112a:	4c 8b bd 68 fe ff ff 	mov    -0x198(%rbp),%r15
  691131:	4c 8b a5 e0 f4 ff ff 	mov    -0xb20(%rbp),%r12
  691138:	4d 0f af f5          	imul   %r13,%r14
  69113c:	4d 0f af fc          	imul   %r12,%r15
  691140:	4d 03 f7             	add    %r15,%r14
  691143:	4c 8b bd 88 f8 ff ff 	mov    -0x778(%rbp),%r15
  69114a:	c4 81 7b 10 04 3e    	vmovsd (%r14,%r15,1),%xmm0
  691150:	4d 89 ef             	mov    %r13,%r15
  691153:	4c 0f af bd a8 f8 ff 	imul   -0x758(%rbp),%r15
  69115a:	ff 
  69115b:	4d 89 e6             	mov    %r12,%r14
  69115e:	4c 0f af f6          	imul   %rsi,%r14
  691162:	4c 0f af a5 70 ff ff 	imul   -0x90(%rbp),%r12
  691169:	ff 
  69116a:	4c 03 bd b0 f8 ff ff 	add    -0x750(%rbp),%r15
  691171:	4f 8d 24 ec          	lea    (%r12,%r13,8),%r12
  691175:	4c 8b ad 78 f8 ff ff 	mov    -0x788(%rbp),%r13
  69117c:	c4 81 7b 59 0c 3e    	vmulsd (%r14,%r15,1),%xmm0,%xmm1
  691182:	c4 81 7b 11 0c 2c    	vmovsd %xmm1,(%r12,%r13,1)
  691188:	4c 8b a5 d0 f4 ff ff 	mov    -0xb30(%rbp),%r12
  69118f:	e9 ac c8 ff ff       	jmpq   68da40 <step3d_t_mod_mp_step3d_t_tile_+0x6dd0>
  691194:	48 c7 85 f8 fe ff ff 	movq   $0x0,-0x108(%rbp)
  69119b:	00 00 00 00 
  69119f:	e9 d7 c2 ff ff       	jmpq   68d47b <step3d_t_mod_mp_step3d_t_tile_+0x680b>
  6911a4:	48 83 bd 70 fd ff ff 	cmpq   $0x4,-0x290(%rbp)
  6911ab:	04 
  6911ac:	7c 6d                	jl     69121b <step3d_t_mod_mp_step3d_t_tile_+0xa5ab>
  6911ae:	48 8b 8d 48 f8 ff ff 	mov    -0x7b8(%rbp),%rcx
  6911b5:	33 ff                	xor    %edi,%edi
  6911b7:	48 8b 95 b0 fa ff ff 	mov    -0x550(%rbp),%rdx
  6911be:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  6911c5:	49 89 c0             	mov    %rax,%r8
  6911c8:	48 03 ce             	add    %rsi,%rcx
  6911cb:	48 03 d6             	add    %rsi,%rdx
  6911ce:	c5 fd 10 04 fa       	vmovupd (%rdx,%rdi,8),%ymm0
  6911d3:	c5 fd 11 04 f9       	vmovupd %ymm0,(%rcx,%rdi,8)
  6911d8:	48 83 c7 04          	add    $0x4,%rdi
  6911dc:	49 3b f8             	cmp    %r8,%rdi
  6911df:	72 ed                	jb     6911ce <step3d_t_mod_mp_step3d_t_tile_+0xa55e>
  6911e1:	48 3b 85 70 fd ff ff 	cmp    -0x290(%rbp),%rax
  6911e8:	0f 83 69 b9 ff ff    	jae    68cb57 <step3d_t_mod_mp_step3d_t_tile_+0x5ee7>
  6911ee:	48 8b 95 48 f8 ff ff 	mov    -0x7b8(%rbp),%rdx
  6911f5:	48 8b bd 70 fd ff ff 	mov    -0x290(%rbp),%rdi
  6911fc:	48 03 d6             	add    %rsi,%rdx
  6911ff:	48 03 b5 b0 fa ff ff 	add    -0x550(%rbp),%rsi
  691206:	48 8b 0c c6          	mov    (%rsi,%rax,8),%rcx
  69120a:	48 89 0c c2          	mov    %rcx,(%rdx,%rax,8)
  69120e:	48 ff c0             	inc    %rax
  691211:	48 3b c7             	cmp    %rdi,%rax
  691214:	72 f0                	jb     691206 <step3d_t_mod_mp_step3d_t_tile_+0xa596>
  691216:	e9 3c b9 ff ff       	jmpq   68cb57 <step3d_t_mod_mp_step3d_t_tile_+0x5ee7>
  69121b:	33 c0                	xor    %eax,%eax
  69121d:	eb c2                	jmp    6911e1 <step3d_t_mod_mp_step3d_t_tile_+0xa571>
  69121f:	45 33 db             	xor    %r11d,%r11d
  691222:	e9 72 b7 ff ff       	jmpq   68c999 <step3d_t_mod_mp_step3d_t_tile_+0x5d29>
  691227:	48 c7 85 d0 fe ff ff 	movq   $0x0,-0x130(%rbp)
  69122e:	00 00 00 00 
  691232:	e9 86 b0 ff ff       	jmpq   68c2bd <step3d_t_mod_mp_step3d_t_tile_+0x564d>
  691237:	45 33 e4             	xor    %r12d,%r12d
  69123a:	e9 dc a9 ff ff       	jmpq   68bc1b <step3d_t_mod_mp_step3d_t_tile_+0x4fab>
  69123f:	33 f6                	xor    %esi,%esi
  691241:	e9 10 a6 ff ff       	jmpq   68b856 <step3d_t_mod_mp_step3d_t_tile_+0x4be6>
  691246:	48 89 b5 60 fa ff ff 	mov    %rsi,-0x5a0(%rbp)
  69124d:	4c 89 8d 78 fa ff ff 	mov    %r9,-0x588(%rbp)
  691254:	4c 89 9d 38 f9 ff ff 	mov    %r11,-0x6c8(%rbp)
  69125b:	e9 6d fc ff ff       	jmpq   690ecd <step3d_t_mod_mp_step3d_t_tile_+0xa25d>
  691260:	45 33 db             	xor    %r11d,%r11d
  691263:	e9 6e d6 ff ff       	jmpq   68e8d6 <step3d_t_mod_mp_step3d_t_tile_+0x7c66>
  691268:	33 c0                	xor    %eax,%eax
  69126a:	e9 68 d7 ff ff       	jmpq   68e9d7 <step3d_t_mod_mp_step3d_t_tile_+0x7d67>
  69126f:	90                   	nop

