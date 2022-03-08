
cudaSaxpy:     file format elf64-x86-64

Contents of the .eh_frame section:

00000000 0000000000000014 00000000 CIE
  Version:               1
  Augmentation:          "zR"
  Code alignment factor: 1
  Data alignment factor: -8
  Return address column: 16
  Augmentation data:     1b

  DW_CFA_def_cfa: r7 (rsp) ofs 8
  DW_CFA_offset: r16 (rip) at cfa-8
  DW_CFA_undefined: r16 (rip)

00000018 0000000000000014 0000001c FDE cie=00000000 pc=00000000004012f0..000000000040131a
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000030 0000000000000014 00000000 CIE
  Version:               1
  Augmentation:          "zR"
  Code alignment factor: 1
  Data alignment factor: -8
  Return address column: 16
  Augmentation data:     1b

  DW_CFA_def_cfa: r7 (rsp) ofs 8
  DW_CFA_offset: r16 (rip) at cfa-8
  DW_CFA_nop
  DW_CFA_nop

00000048 0000000000000024 0000001c FDE cie=00000030 pc=0000000000400c80..0000000000400e70
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 6 to 0000000000400c86
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 10 to 0000000000400c90
  DW_CFA_def_cfa_expression (DW_OP_breg7 (rsp): 8; DW_OP_breg16 (rip): 0; DW_OP_lit15; DW_OP_and; DW_OP_lit11; DW_OP_ge; DW_OP_lit3; DW_OP_shl; DW_OP_plus)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000070 0000000000000014 00000044 FDE cie=00000030 pc=00000000004013f0..000000000040142a
  DW_CFA_advance_loc: 4 to 00000000004013f4
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 49 to 0000000000401425
  DW_CFA_def_cfa_offset: 8
  DW_CFA_nop

00000088 0000000000000044 0000005c FDE cie=00000030 pc=0000000000400e80..0000000000401293
  DW_CFA_advance_loc: 2 to 0000000000400e82
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r14 (r14) at cfa-16
  DW_CFA_advance_loc: 2 to 0000000000400e84
  DW_CFA_def_cfa_offset: 24
  DW_CFA_offset: r13 (r13) at cfa-24
  DW_CFA_advance_loc: 2 to 0000000000400e86
  DW_CFA_def_cfa_offset: 32
  DW_CFA_offset: r12 (r12) at cfa-32
  DW_CFA_advance_loc: 1 to 0000000000400e87
  DW_CFA_def_cfa_offset: 40
  DW_CFA_offset: r6 (rbp) at cfa-40
  DW_CFA_advance_loc: 4 to 0000000000400e8b
  DW_CFA_def_cfa_offset: 48
  DW_CFA_offset: r3 (rbx) at cfa-48
  DW_CFA_advance_loc: 12 to 0000000000400e97
  DW_CFA_def_cfa_offset: 64
  DW_CFA_advance_loc2: 871 to 00000000004011fe
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 48
  DW_CFA_advance_loc: 1 to 00000000004011ff
  DW_CFA_def_cfa_offset: 40
  DW_CFA_advance_loc: 1 to 0000000000401200
  DW_CFA_def_cfa_offset: 32
  DW_CFA_advance_loc: 2 to 0000000000401202
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 2 to 0000000000401204
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 2 to 0000000000401206
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 1 to 0000000000401207
  DW_CFA_restore_state
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

000000d0 0000000000000014 000000a4 FDE cie=00000030 pc=0000000000401430..000000000040143c
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

000000e8 000000000000001c 000000bc FDE cie=00000030 pc=0000000000401440..0000000000401514
  DW_CFA_advance_loc: 4 to 0000000000401444
  DW_CFA_def_cfa_offset: 64
  DW_CFA_advance_loc1: 82 to 0000000000401496
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 10 to 00000000004014a0
  DW_CFA_restore_state
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000108 0000000000000034 000000dc FDE cie=00000030 pc=0000000000401a00..0000000000401c1a
  DW_CFA_advance_loc: 2 to 0000000000401a02
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r12 (r12) at cfa-16
  DW_CFA_advance_loc: 1 to 0000000000401a03
  DW_CFA_def_cfa_offset: 24
  DW_CFA_offset: r6 (rbp) at cfa-24
  DW_CFA_advance_loc: 1 to 0000000000401a04
  DW_CFA_def_cfa_offset: 32
  DW_CFA_offset: r3 (rbx) at cfa-32
  DW_CFA_advance_loc: 7 to 0000000000401a0b
  DW_CFA_def_cfa_offset: 1088
  DW_CFA_advance_loc1: 66 to 0000000000401a4d
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 32
  DW_CFA_advance_loc: 1 to 0000000000401a4e
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 1 to 0000000000401a4f
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 2 to 0000000000401a51
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 7 to 0000000000401a58
  DW_CFA_restore_state
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000140 0000000000000014 00000114 FDE cie=00000030 pc=0000000000401520..000000000040154c
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000158 000000000000003c 0000012c FDE cie=00000030 pc=0000000000401550..00000000004017f4
  DW_CFA_advance_loc: 2 to 0000000000401552
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r13 (r13) at cfa-16
  DW_CFA_advance_loc: 2 to 0000000000401554
  DW_CFA_def_cfa_offset: 24
  DW_CFA_offset: r12 (r12) at cfa-24
  DW_CFA_advance_loc: 4 to 0000000000401558
  DW_CFA_def_cfa_offset: 32
  DW_CFA_offset: r6 (rbp) at cfa-32
  DW_CFA_advance_loc: 1 to 0000000000401559
  DW_CFA_def_cfa_offset: 40
  DW_CFA_offset: r3 (rbx) at cfa-40
  DW_CFA_advance_loc: 7 to 0000000000401560
  DW_CFA_def_cfa_offset: 144
  DW_CFA_advance_loc2: 447 to 000000000040171f
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 40
  DW_CFA_advance_loc: 1 to 0000000000401720
  DW_CFA_def_cfa_offset: 32
  DW_CFA_advance_loc: 1 to 0000000000401721
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 2 to 0000000000401723
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 2 to 0000000000401725
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 11 to 0000000000401730
  DW_CFA_restore_state
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000198 0000000000000024 0000016c FDE cie=00000030 pc=0000000000401800..000000000040194b
  DW_CFA_advance_loc: 1 to 0000000000401801
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r3 (rbx) at cfa-16
  DW_CFA_advance_loc: 9 to 000000000040180a
  DW_CFA_def_cfa_offset: 720
  DW_CFA_advance_loc2: 314 to 0000000000401944
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 1 to 0000000000401945
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 1 to 0000000000401946
  DW_CFA_restore_state
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

000001c0 000000000000001c 00000194 FDE cie=00000030 pc=0000000000401950..00000000004019fa
  DW_CFA_advance_loc: 4 to 0000000000401954
  DW_CFA_def_cfa_offset: 48
  DW_CFA_advance_loc: 49 to 0000000000401985
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 11 to 0000000000401990
  DW_CFA_restore_state
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

000001e0 0000000000000024 000001b4 FDE cie=00000030 pc=00000000004012a0..00000000004012e9
  DW_CFA_advance_loc: 4 to 00000000004012a4
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 12 to 00000000004012b0
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 7 to 00000000004012b7
  DW_CFA_def_cfa_offset: 32
  DW_CFA_advance_loc: 2 to 00000000004012b9
  DW_CFA_def_cfa_offset: 40
  DW_CFA_advance_loc: 2 to 00000000004012bb
  DW_CFA_def_cfa_offset: 48
  DW_CFA_advance_loc: 41 to 00000000004012e4
  DW_CFA_def_cfa_offset: 8
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000208 0000000000000044 000001dc FDE cie=00000030 pc=0000000000401c20..0000000000401c85
  DW_CFA_advance_loc: 2 to 0000000000401c22
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r15 (r15) at cfa-16
  DW_CFA_advance_loc: 2 to 0000000000401c24
  DW_CFA_def_cfa_offset: 24
  DW_CFA_offset: r14 (r14) at cfa-24
  DW_CFA_advance_loc: 5 to 0000000000401c29
  DW_CFA_def_cfa_offset: 32
  DW_CFA_offset: r13 (r13) at cfa-32
  DW_CFA_advance_loc: 2 to 0000000000401c2b
  DW_CFA_def_cfa_offset: 40
  DW_CFA_offset: r12 (r12) at cfa-40
  DW_CFA_advance_loc: 8 to 0000000000401c33
  DW_CFA_def_cfa_offset: 48
  DW_CFA_offset: r6 (rbp) at cfa-48
  DW_CFA_advance_loc: 8 to 0000000000401c3b
  DW_CFA_def_cfa_offset: 56
  DW_CFA_offset: r3 (rbx) at cfa-56
  DW_CFA_advance_loc: 13 to 0000000000401c48
  DW_CFA_def_cfa_offset: 64
  DW_CFA_advance_loc: 50 to 0000000000401c7a
  DW_CFA_def_cfa_offset: 56
  DW_CFA_advance_loc: 1 to 0000000000401c7b
  DW_CFA_def_cfa_offset: 48
  DW_CFA_advance_loc: 1 to 0000000000401c7c
  DW_CFA_def_cfa_offset: 40
  DW_CFA_advance_loc: 2 to 0000000000401c7e
  DW_CFA_def_cfa_offset: 32
  DW_CFA_advance_loc: 2 to 0000000000401c80
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 2 to 0000000000401c82
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 2 to 0000000000401c84
  DW_CFA_def_cfa_offset: 8
  DW_CFA_nop

00000250 0000000000000014 00000224 FDE cie=00000030 pc=0000000000401c90..0000000000401c92
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000268 0000000000000014 0000023c FDE cie=00000030 pc=0000000000401ca0..0000000000401cc9
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000280 ZERO terminator



Disassembly of section .init:

0000000000400c58 <_init>:
  400c58:	48 83 ec 08          	sub    $0x8,%rsp
  400c5c:	48 8b 05 95 23 20 00 	mov    0x202395(%rip),%rax        # 602ff8 <_DYNAMIC+0x1f0>
  400c63:	48 85 c0             	test   %rax,%rax
  400c66:	74 05                	je     400c6d <_init+0x15>
  400c68:	e8 03 02 00 00       	callq  400e70 <fwrite@plt+0x10>
  400c6d:	48 83 c4 08          	add    $0x8,%rsp
  400c71:	c3                   	retq   

Disassembly of section .plt:

0000000000400c80 <__printf_chk@plt-0x10>:
  400c80:	ff 35 82 23 20 00    	pushq  0x202382(%rip)        # 603008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c86:	ff 25 84 23 20 00    	jmpq   *0x202384(%rip)        # 603010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c90 <__printf_chk@plt>:
  400c90:	ff 25 82 23 20 00    	jmpq   *0x202382(%rip)        # 603018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400c96:	68 00 00 00 00       	pushq  $0x0
  400c9b:	e9 e0 ff ff ff       	jmpq   400c80 <_init+0x28>

0000000000400ca0 <operator new[](unsigned long)@plt>:
  400ca0:	ff 25 7a 23 20 00    	jmpq   *0x20237a(%rip)        # 603020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400ca6:	68 01 00 00 00       	pushq  $0x1
  400cab:	e9 d0 ff ff ff       	jmpq   400c80 <_init+0x28>

0000000000400cb0 <__cudaUnregisterFatBinary@plt>:
  400cb0:	ff 25 72 23 20 00    	jmpq   *0x202372(%rip)        # 603028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400cb6:	68 02 00 00 00       	pushq  $0x2
  400cbb:	e9 c0 ff ff ff       	jmpq   400c80 <_init+0x28>

0000000000400cc0 <cudaLaunch@plt>:
  400cc0:	ff 25 6a 23 20 00    	jmpq   *0x20236a(%rip)        # 603030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400cc6:	68 03 00 00 00       	pushq  $0x3
  400ccb:	e9 b0 ff ff ff       	jmpq   400c80 <_init+0x28>

0000000000400cd0 <strstr@plt>:
  400cd0:	ff 25 62 23 20 00    	jmpq   *0x202362(%rip)        # 603038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400cd6:	68 04 00 00 00       	pushq  $0x4
  400cdb:	e9 a0 ff ff ff       	jmpq   400c80 <_init+0x28>

0000000000400ce0 <cudaSetupArgument@plt>:
  400ce0:	ff 25 5a 23 20 00    	jmpq   *0x20235a(%rip)        # 603040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400ce6:	68 05 00 00 00       	pushq  $0x5
  400ceb:	e9 90 ff ff ff       	jmpq   400c80 <_init+0x28>

0000000000400cf0 <strchr@plt>:
  400cf0:	ff 25 52 23 20 00    	jmpq   *0x202352(%rip)        # 603048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400cf6:	68 06 00 00 00       	pushq  $0x6
  400cfb:	e9 80 ff ff ff       	jmpq   400c80 <_init+0x28>

0000000000400d00 <cudaGetErrorString@plt>:
  400d00:	ff 25 4a 23 20 00    	jmpq   *0x20234a(%rip)        # 603050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400d06:	68 07 00 00 00       	pushq  $0x7
  400d0b:	e9 70 ff ff ff       	jmpq   400c80 <_init+0x28>

0000000000400d10 <cudaGetDeviceCount@plt>:
  400d10:	ff 25 42 23 20 00    	jmpq   *0x202342(%rip)        # 603058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400d16:	68 08 00 00 00       	pushq  $0x8
  400d1b:	e9 60 ff ff ff       	jmpq   400c80 <_init+0x28>

0000000000400d20 <memset@plt>:
  400d20:	ff 25 3a 23 20 00    	jmpq   *0x20233a(%rip)        # 603060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400d26:	68 09 00 00 00       	pushq  $0x9
  400d2b:	e9 50 ff ff ff       	jmpq   400c80 <_init+0x28>

0000000000400d30 <sscanf@plt>:
  400d30:	ff 25 32 23 20 00    	jmpq   *0x202332(%rip)        # 603068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400d36:	68 0a 00 00 00       	pushq  $0xa
  400d3b:	e9 40 ff ff ff       	jmpq   400c80 <_init+0x28>

0000000000400d40 <__cudaRegisterFatBinary@plt>:
  400d40:	ff 25 2a 23 20 00    	jmpq   *0x20232a(%rip)        # 603070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400d46:	68 0b 00 00 00       	pushq  $0xb
  400d4b:	e9 30 ff ff ff       	jmpq   400c80 <_init+0x28>

0000000000400d50 <__cxa_atexit@plt>:
  400d50:	ff 25 22 23 20 00    	jmpq   *0x202322(%rip)        # 603078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400d56:	68 0c 00 00 00       	pushq  $0xc
  400d5b:	e9 20 ff ff ff       	jmpq   400c80 <_init+0x28>

0000000000400d60 <cudaPeekAtLastError@plt>:
  400d60:	ff 25 1a 23 20 00    	jmpq   *0x20231a(%rip)        # 603080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400d66:	68 0d 00 00 00       	pushq  $0xd
  400d6b:	e9 10 ff ff ff       	jmpq   400c80 <_init+0x28>

0000000000400d70 <fclose@plt>:
  400d70:	ff 25 12 23 20 00    	jmpq   *0x202312(%rip)        # 603088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400d76:	68 0e 00 00 00       	pushq  $0xe
  400d7b:	e9 00 ff ff ff       	jmpq   400c80 <_init+0x28>

0000000000400d80 <__stack_chk_fail@plt>:
  400d80:	ff 25 0a 23 20 00    	jmpq   *0x20230a(%rip)        # 603090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400d86:	68 0f 00 00 00       	pushq  $0xf
  400d8b:	e9 f0 fe ff ff       	jmpq   400c80 <_init+0x28>

0000000000400d90 <fopen@plt>:
  400d90:	ff 25 02 23 20 00    	jmpq   *0x202302(%rip)        # 603098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400d96:	68 10 00 00 00       	pushq  $0x10
  400d9b:	e9 e0 fe ff ff       	jmpq   400c80 <_init+0x28>

0000000000400da0 <exit@plt>:
  400da0:	ff 25 fa 22 20 00    	jmpq   *0x2022fa(%rip)        # 6030a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400da6:	68 11 00 00 00       	pushq  $0x11
  400dab:	e9 d0 fe ff ff       	jmpq   400c80 <_init+0x28>

0000000000400db0 <operator delete[](void*)@plt>:
  400db0:	ff 25 f2 22 20 00    	jmpq   *0x2022f2(%rip)        # 6030a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400db6:	68 12 00 00 00       	pushq  $0x12
  400dbb:	e9 c0 fe ff ff       	jmpq   400c80 <_init+0x28>

0000000000400dc0 <cudaConfigureCall@plt>:
  400dc0:	ff 25 ea 22 20 00    	jmpq   *0x2022ea(%rip)        # 6030b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400dc6:	68 13 00 00 00       	pushq  $0x13
  400dcb:	e9 b0 fe ff ff       	jmpq   400c80 <_init+0x28>

0000000000400dd0 <cudaGetDeviceProperties@plt>:
  400dd0:	ff 25 e2 22 20 00    	jmpq   *0x2022e2(%rip)        # 6030b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400dd6:	68 14 00 00 00       	pushq  $0x14
  400ddb:	e9 a0 fe ff ff       	jmpq   400c80 <_init+0x28>

0000000000400de0 <strtol@plt>:
  400de0:	ff 25 da 22 20 00    	jmpq   *0x2022da(%rip)        # 6030c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400de6:	68 15 00 00 00       	pushq  $0x15
  400deb:	e9 90 fe ff ff       	jmpq   400c80 <_init+0x28>

0000000000400df0 <__cudaRegisterFunction@plt>:
  400df0:	ff 25 d2 22 20 00    	jmpq   *0x2022d2(%rip)        # 6030c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400df6:	68 16 00 00 00       	pushq  $0x16
  400dfb:	e9 80 fe ff ff       	jmpq   400c80 <_init+0x28>

0000000000400e00 <__fgets_chk@plt>:
  400e00:	ff 25 ca 22 20 00    	jmpq   *0x2022ca(%rip)        # 6030d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400e06:	68 17 00 00 00       	pushq  $0x17
  400e0b:	e9 70 fe ff ff       	jmpq   400c80 <_init+0x28>

0000000000400e10 <puts@plt>:
  400e10:	ff 25 c2 22 20 00    	jmpq   *0x2022c2(%rip)        # 6030d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400e16:	68 18 00 00 00       	pushq  $0x18
  400e1b:	e9 60 fe ff ff       	jmpq   400c80 <_init+0x28>

0000000000400e20 <feof@plt>:
  400e20:	ff 25 ba 22 20 00    	jmpq   *0x2022ba(%rip)        # 6030e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400e26:	68 19 00 00 00       	pushq  $0x19
  400e2b:	e9 50 fe ff ff       	jmpq   400c80 <_init+0x28>

0000000000400e30 <__fprintf_chk@plt>:
  400e30:	ff 25 b2 22 20 00    	jmpq   *0x2022b2(%rip)        # 6030e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400e36:	68 1a 00 00 00       	pushq  $0x1a
  400e3b:	e9 40 fe ff ff       	jmpq   400c80 <_init+0x28>

0000000000400e40 <getopt_long@plt>:
  400e40:	ff 25 aa 22 20 00    	jmpq   *0x2022aa(%rip)        # 6030f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400e46:	68 1b 00 00 00       	pushq  $0x1b
  400e4b:	e9 30 fe ff ff       	jmpq   400c80 <_init+0x28>

0000000000400e50 <__libc_start_main@plt>:
  400e50:	ff 25 a2 22 20 00    	jmpq   *0x2022a2(%rip)        # 6030f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400e56:	68 1c 00 00 00       	pushq  $0x1c
  400e5b:	e9 20 fe ff ff       	jmpq   400c80 <_init+0x28>

0000000000400e60 <fwrite@plt>:
  400e60:	ff 25 9a 22 20 00    	jmpq   *0x20229a(%rip)        # 603100 <_GLOBAL_OFFSET_TABLE_+0x100>
  400e66:	68 1d 00 00 00       	pushq  $0x1d
  400e6b:	e9 10 fe ff ff       	jmpq   400c80 <_init+0x28>

Disassembly of section .plt.got:

0000000000400e70 <.plt.got>:
  400e70:	ff 25 82 21 20 00    	jmpq   *0x202182(%rip)        # 602ff8 <_DYNAMIC+0x1f0>
  400e76:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400e80 <main>:
  400e80:	41 56                	push   %r14
  400e82:	41 55                	push   %r13
  400e84:	41 54                	push   %r12
  400e86:	55                   	push   %rbp
  400e87:	41 89 fc             	mov    %edi,%r12d
  400e8a:	53                   	push   %rbx
  400e8b:	48 89 f5             	mov    %rsi,%rbp
  400e8e:	bb 00 e1 f5 05       	mov    $0x5f5e100,%ebx
  400e93:	48 83 ec 10          	sub    $0x10,%rsp
  400e97:	eb 25                	jmp    400ebe <main+0x3e>
  400e99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400ea0:	83 f8 6e             	cmp    $0x6e,%eax
  400ea3:	0f 85 7d 03 00 00    	jne    401226 <main+0x3a6>
  400ea9:	48 8b 3d f0 22 20 00 	mov    0x2022f0(%rip),%rdi        # 6031a0 <__TMC_END__>
  400eb0:	ba 0a 00 00 00       	mov    $0xa,%edx
  400eb5:	31 f6                	xor    %esi,%esi
  400eb7:	e8 24 ff ff ff       	callq  400de0 <strtol@plt>
  400ebc:	89 c3                	mov    %eax,%ebx
  400ebe:	45 31 c0             	xor    %r8d,%r8d
  400ec1:	b9 40 31 60 00       	mov    $0x603140,%ecx
  400ec6:	ba 0a 1d 40 00       	mov    $0x401d0a,%edx
  400ecb:	48 89 ee             	mov    %rbp,%rsi
  400ece:	44 89 e7             	mov    %r12d,%edi
  400ed1:	e8 6a ff ff ff       	callq  400e40 <getopt_long@plt>
  400ed6:	83 f8 ff             	cmp    $0xffffffff,%eax
  400ed9:	75 c5                	jne    400ea0 <main+0x20>
  400edb:	4c 63 eb             	movslq %ebx,%r13
  400ede:	48 b8 00 00 00 00 00 	movabs $0x1fc0000000000000,%rax
  400ee5:	00 c0 1f 
  400ee8:	49 39 c5             	cmp    %rax,%r13
  400eeb:	0f 86 16 03 00 00    	jbe    401207 <main+0x387>
  400ef1:	48 83 cf ff          	or     $0xffffffffffffffff,%rdi
  400ef5:	49 83 cd ff          	or     $0xffffffffffffffff,%r13
  400ef9:	e8 a2 fd ff ff       	callq  400ca0 <operator new[](unsigned long)@plt>
  400efe:	48 83 cf ff          	or     $0xffffffffffffffff,%rdi
  400f02:	49 89 c4             	mov    %rax,%r12
  400f05:	e8 96 fd ff ff       	callq  400ca0 <operator new[](unsigned long)@plt>
  400f0a:	48 89 c5             	mov    %rax,%rbp
  400f0d:	4c 89 ef             	mov    %r13,%rdi
  400f10:	e8 8b fd ff ff       	callq  400ca0 <operator new[](unsigned long)@plt>
  400f15:	85 db                	test   %ebx,%ebx
  400f17:	49 89 c5             	mov    %rax,%r13
  400f1a:	0f 8e 8d 02 00 00    	jle    4011ad <main+0x32d>
  400f20:	48 89 e8             	mov    %rbp,%rax
  400f23:	83 e0 0f             	and    $0xf,%eax
  400f26:	48 c1 e8 02          	shr    $0x2,%rax
  400f2a:	48 f7 d8             	neg    %rax
  400f2d:	83 e0 03             	and    $0x3,%eax
  400f30:	39 d8                	cmp    %ebx,%eax
  400f32:	0f 47 c3             	cmova  %ebx,%eax
  400f35:	83 fb 08             	cmp    $0x8,%ebx
  400f38:	0f 8f f8 02 00 00    	jg     401236 <main+0x3b6>
  400f3e:	89 d8                	mov    %ebx,%eax
  400f40:	83 f8 01             	cmp    $0x1,%eax
  400f43:	c7 45 00 00 00 00 00 	movl   $0x0,0x0(%rbp)
  400f4a:	41 c7 04 24 00 00 00 	movl   $0x0,(%r12)
  400f51:	00 
  400f52:	0f 84 ff 02 00 00    	je     401257 <main+0x3d7>
  400f58:	83 f8 02             	cmp    $0x2,%eax
  400f5b:	c7 45 04 00 00 80 3f 	movl   $0x3f800000,0x4(%rbp)
  400f62:	41 c7 44 24 04 00 00 	movl   $0x3f800000,0x4(%r12)
  400f69:	80 3f 
  400f6b:	0f 84 f0 02 00 00    	je     401261 <main+0x3e1>
  400f71:	83 f8 03             	cmp    $0x3,%eax
  400f74:	c7 45 08 00 00 00 40 	movl   $0x40000000,0x8(%rbp)
  400f7b:	41 c7 44 24 08 00 00 	movl   $0x40000000,0x8(%r12)
  400f82:	00 40 
  400f84:	0f 84 e1 02 00 00    	je     40126b <main+0x3eb>
  400f8a:	83 f8 04             	cmp    $0x4,%eax
  400f8d:	c7 45 0c 00 00 40 40 	movl   $0x40400000,0xc(%rbp)
  400f94:	41 c7 44 24 0c 00 00 	movl   $0x40400000,0xc(%r12)
  400f9b:	40 40 
  400f9d:	0f 84 d2 02 00 00    	je     401275 <main+0x3f5>
  400fa3:	83 f8 05             	cmp    $0x5,%eax
  400fa6:	c7 45 10 00 00 80 40 	movl   $0x40800000,0x10(%rbp)
  400fad:	41 c7 44 24 10 00 00 	movl   $0x40800000,0x10(%r12)
  400fb4:	80 40 
  400fb6:	0f 84 c3 02 00 00    	je     40127f <main+0x3ff>
  400fbc:	83 f8 06             	cmp    $0x6,%eax
  400fbf:	c7 45 14 00 00 a0 40 	movl   $0x40a00000,0x14(%rbp)
  400fc6:	41 c7 44 24 14 00 00 	movl   $0x40a00000,0x14(%r12)
  400fcd:	a0 40 
  400fcf:	0f 84 b4 02 00 00    	je     401289 <main+0x409>
  400fd5:	83 f8 07             	cmp    $0x7,%eax
  400fd8:	c7 45 18 00 00 c0 40 	movl   $0x40c00000,0x18(%rbp)
  400fdf:	41 c7 44 24 18 00 00 	movl   $0x40c00000,0x18(%r12)
  400fe6:	c0 40 
  400fe8:	0f 84 5f 02 00 00    	je     40124d <main+0x3cd>
  400fee:	c7 45 1c 00 00 e0 40 	movl   $0x40e00000,0x1c(%rbp)
  400ff5:	41 c7 44 24 1c 00 00 	movl   $0x40e00000,0x1c(%r12)
  400ffc:	e0 40 
  400ffe:	b9 08 00 00 00       	mov    $0x8,%ecx
  401003:	39 c3                	cmp    %eax,%ebx
  401005:	0f 84 3a 02 00 00    	je     401245 <main+0x3c5>
  40100b:	41 89 d9             	mov    %ebx,%r9d
  40100e:	8d 73 ff             	lea    -0x1(%rbx),%esi
  401011:	89 c7                	mov    %eax,%edi
  401013:	41 29 c1             	sub    %eax,%r9d
  401016:	41 8d 51 fc          	lea    -0x4(%r9),%edx
  40101a:	41 89 f3             	mov    %esi,%r11d
  40101d:	41 29 c3             	sub    %eax,%r11d
  401020:	c1 ea 02             	shr    $0x2,%edx
  401023:	83 c2 01             	add    $0x1,%edx
  401026:	41 83 fb 02          	cmp    $0x2,%r11d
  40102a:	44 8d 14 95 00 00 00 	lea    0x0(,%rdx,4),%r10d
  401031:	00 
  401032:	0f 86 fe 00 00 00    	jbe    401136 <main+0x2b6>
  401038:	66 0f ef ed          	pxor   %xmm5,%xmm5
  40103c:	89 4c 24 0c          	mov    %ecx,0xc(%rsp)
  401040:	48 c1 e7 02          	shl    $0x2,%rdi
  401044:	66 0f 6e 7c 24 0c    	movd   0xc(%rsp),%xmm7
  40104a:	4c 8d 5c 3d 00       	lea    0x0(%rbp,%rdi,1),%r11
  40104f:	31 c0                	xor    %eax,%eax
  401051:	66 0f 6f 25 67 0d 00 	movdqa 0xd67(%rip),%xmm4        # 401dc0 <_IO_stdin_used+0xe0>
  401058:	00 
  401059:	4c 01 e7             	add    %r12,%rdi
  40105c:	66 0f 6f f5          	movdqa %xmm5,%xmm6
  401060:	66 0f 70 d7 00       	pshufd $0x0,%xmm7,%xmm2
  401065:	66 0f 6f 3d 43 0d 00 	movdqa 0xd43(%rip),%xmm7        # 401db0 <_IO_stdin_used+0xd0>
  40106c:	00 
  40106d:	66 0f 66 f4          	pcmpgtd %xmm4,%xmm6
  401071:	66 0f fe 15 27 0d 00 	paddd  0xd27(%rip),%xmm2        # 401da0 <_IO_stdin_used+0xc0>
  401078:	00 
  401079:	66 0f 6f da          	movdqa %xmm2,%xmm3
  40107d:	49 89 c0             	mov    %rax,%r8
  401080:	66 0f 6f cd          	movdqa %xmm5,%xmm1
  401084:	48 83 c0 01          	add    $0x1,%rax
  401088:	66 0f 62 da          	punpckldq %xmm2,%xmm3
  40108c:	49 c1 e0 04          	shl    $0x4,%r8
  401090:	66 44 0f 6f c6       	movdqa %xmm6,%xmm8
  401095:	39 c2                	cmp    %eax,%edx
  401097:	66 0f 66 cb          	pcmpgtd %xmm3,%xmm1
  40109b:	66 0f 6f c1          	movdqa %xmm1,%xmm0
  40109f:	66 0f 6f ce          	movdqa %xmm6,%xmm1
  4010a3:	66 0f f4 c4          	pmuludq %xmm4,%xmm0
  4010a7:	66 0f f4 cb          	pmuludq %xmm3,%xmm1
  4010ab:	66 0f f4 dc          	pmuludq %xmm4,%xmm3
  4010af:	66 0f d4 c1          	paddq  %xmm1,%xmm0
  4010b3:	66 0f 73 f0 20       	psllq  $0x20,%xmm0
  4010b8:	66 0f d4 c3          	paddq  %xmm3,%xmm0
  4010bc:	66 0f 6f da          	movdqa %xmm2,%xmm3
  4010c0:	66 0f 6f cd          	movdqa %xmm5,%xmm1
  4010c4:	66 0f 6a da          	punpckhdq %xmm2,%xmm3
  4010c8:	66 0f 66 cb          	pcmpgtd %xmm3,%xmm1
  4010cc:	66 44 0f f4 c3       	pmuludq %xmm3,%xmm8
  4010d1:	66 0f f4 dc          	pmuludq %xmm4,%xmm3
  4010d5:	66 0f f4 cc          	pmuludq %xmm4,%xmm1
  4010d9:	66 41 0f d4 c8       	paddq  %xmm8,%xmm1
  4010de:	66 0f 73 f1 20       	psllq  $0x20,%xmm1
  4010e3:	66 0f d4 cb          	paddq  %xmm3,%xmm1
  4010e7:	0f c6 c1 dd          	shufps $0xdd,%xmm1,%xmm0
  4010eb:	66 0f 6f ca          	movdqa %xmm2,%xmm1
  4010ef:	66 0f 6f da          	movdqa %xmm2,%xmm3
  4010f3:	66 0f fe d7          	paddd  %xmm7,%xmm2
  4010f7:	66 0f 72 e1 1f       	psrad  $0x1f,%xmm1
  4010fc:	66 0f 72 e0 02       	psrad  $0x2,%xmm0
  401101:	66 0f fa c1          	psubd  %xmm1,%xmm0
  401105:	66 0f 72 f0 01       	pslld  $0x1,%xmm0
  40110a:	66 0f 6f c8          	movdqa %xmm0,%xmm1
  40110e:	66 0f 72 f1 02       	pslld  $0x2,%xmm1
  401113:	66 0f fe c1          	paddd  %xmm1,%xmm0
  401117:	66 0f fa d8          	psubd  %xmm0,%xmm3
  40111b:	0f 5b c3             	cvtdq2ps %xmm3,%xmm0
  40111e:	43 0f 29 04 03       	movaps %xmm0,(%r11,%r8,1)
  401123:	42 0f 11 04 07       	movups %xmm0,(%rdi,%r8,1)
  401128:	0f 87 4b ff ff ff    	ja     401079 <main+0x1f9>
  40112e:	44 01 d1             	add    %r10d,%ecx
  401131:	45 39 d1             	cmp    %r10d,%r9d
  401134:	74 65                	je     40119b <main+0x31b>
  401136:	89 c8                	mov    %ecx,%eax
  401138:	bf 0a 00 00 00       	mov    $0xa,%edi
  40113d:	4c 63 c1             	movslq %ecx,%r8
  401140:	99                   	cltd   
  401141:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401145:	f7 ff                	idiv   %edi
  401147:	8d 41 01             	lea    0x1(%rcx),%eax
  40114a:	39 c3                	cmp    %eax,%ebx
  40114c:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
  401150:	f3 42 0f 11 44 85 00 	movss  %xmm0,0x0(%rbp,%r8,4)
  401157:	f3 43 0f 11 04 84    	movss  %xmm0,(%r12,%r8,4)
  40115d:	7e 3c                	jle    40119b <main+0x31b>
  40115f:	99                   	cltd   
  401160:	4c 63 c0             	movslq %eax,%r8
  401163:	f7 ff                	idiv   %edi
  401165:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401169:	8d 41 02             	lea    0x2(%rcx),%eax
  40116c:	39 c3                	cmp    %eax,%ebx
  40116e:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
  401172:	f3 42 0f 11 44 85 00 	movss  %xmm0,0x0(%rbp,%r8,4)
  401179:	f3 43 0f 11 04 84    	movss  %xmm0,(%r12,%r8,4)
  40117f:	7e 1a                	jle    40119b <main+0x31b>
  401181:	99                   	cltd   
  401182:	48 63 c8             	movslq %eax,%rcx
  401185:	f7 ff                	idiv   %edi
  401187:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40118b:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
  40118f:	f3 0f 11 44 8d 00    	movss  %xmm0,0x0(%rbp,%rcx,4)
  401195:	f3 41 0f 11 04 8c    	movss  %xmm0,(%r12,%rcx,4)
  40119b:	48 8d 14 b5 04 00 00 	lea    0x4(,%rsi,4),%rdx
  4011a2:	00 
  4011a3:	4c 89 ef             	mov    %r13,%rdi
  4011a6:	31 f6                	xor    %esi,%esi
  4011a8:	e8 73 fb ff ff       	callq  400d20 <memset@plt>
  4011ad:	e8 4e 06 00 00       	callq  401800 <printCudaInfo()>
  4011b2:	41 be 03 00 00 00    	mov    $0x3,%r14d
  4011b8:	bf 0e 1d 40 00       	mov    $0x401d0e,%edi
  4011bd:	e8 4e fc ff ff       	callq  400e10 <puts@plt>
  4011c2:	4c 89 e9             	mov    %r13,%rcx
  4011c5:	48 89 ea             	mov    %rbp,%rdx
  4011c8:	4c 89 e6             	mov    %r12,%rsi
  4011cb:	f3 0f 10 05 c5 0b 00 	movss  0xbc5(%rip),%xmm0        # 401d98 <_IO_stdin_used+0xb8>
  4011d2:	00 
  4011d3:	89 df                	mov    %ebx,%edi
  4011d5:	e8 76 03 00 00       	callq  401550 <saxpyCuda(int, float, float*, float*, float*)>
  4011da:	41 83 ee 01          	sub    $0x1,%r14d
  4011de:	75 e2                	jne    4011c2 <main+0x342>
  4011e0:	4c 89 e7             	mov    %r12,%rdi
  4011e3:	e8 c8 fb ff ff       	callq  400db0 <operator delete[](void*)@plt>
  4011e8:	48 89 ef             	mov    %rbp,%rdi
  4011eb:	e8 c0 fb ff ff       	callq  400db0 <operator delete[](void*)@plt>
  4011f0:	4c 89 ef             	mov    %r13,%rdi
  4011f3:	e8 b8 fb ff ff       	callq  400db0 <operator delete[](void*)@plt>
  4011f8:	31 c0                	xor    %eax,%eax
  4011fa:	48 83 c4 10          	add    $0x10,%rsp
  4011fe:	5b                   	pop    %rbx
  4011ff:	5d                   	pop    %rbp
  401200:	41 5c                	pop    %r12
  401202:	41 5d                	pop    %r13
  401204:	41 5e                	pop    %r14
  401206:	c3                   	retq   
  401207:	49 c1 e5 02          	shl    $0x2,%r13
  40120b:	4c 89 ef             	mov    %r13,%rdi
  40120e:	e8 8d fa ff ff       	callq  400ca0 <operator new[](unsigned long)@plt>
  401213:	4c 89 ef             	mov    %r13,%rdi
  401216:	49 89 c4             	mov    %rax,%r12
  401219:	e8 82 fa ff ff       	callq  400ca0 <operator new[](unsigned long)@plt>
  40121e:	48 89 c5             	mov    %rax,%rbp
  401221:	e9 e7 fc ff ff       	jmpq   400f0d <main+0x8d>
  401226:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
  40122a:	e8 c1 01 00 00       	callq  4013f0 <usage(char const*)>
  40122f:	b8 01 00 00 00       	mov    $0x1,%eax
  401234:	eb c4                	jmp    4011fa <main+0x37a>
  401236:	31 c9                	xor    %ecx,%ecx
  401238:	85 c0                	test   %eax,%eax
  40123a:	0f 84 cb fd ff ff    	je     40100b <main+0x18b>
  401240:	e9 fb fc ff ff       	jmpq   400f40 <main+0xc0>
  401245:	8d 73 ff             	lea    -0x1(%rbx),%esi
  401248:	e9 4e ff ff ff       	jmpq   40119b <main+0x31b>
  40124d:	b9 07 00 00 00       	mov    $0x7,%ecx
  401252:	e9 ac fd ff ff       	jmpq   401003 <main+0x183>
  401257:	b9 01 00 00 00       	mov    $0x1,%ecx
  40125c:	e9 a2 fd ff ff       	jmpq   401003 <main+0x183>
  401261:	b9 02 00 00 00       	mov    $0x2,%ecx
  401266:	e9 98 fd ff ff       	jmpq   401003 <main+0x183>
  40126b:	b9 03 00 00 00       	mov    $0x3,%ecx
  401270:	e9 8e fd ff ff       	jmpq   401003 <main+0x183>
  401275:	b9 04 00 00 00       	mov    $0x4,%ecx
  40127a:	e9 84 fd ff ff       	jmpq   401003 <main+0x183>
  40127f:	b9 05 00 00 00       	mov    $0x5,%ecx
  401284:	e9 7a fd ff ff       	jmpq   401003 <main+0x183>
  401289:	b9 06 00 00 00       	mov    $0x6,%ecx
  40128e:	e9 70 fd ff ff       	jmpq   401003 <main+0x183>
  401293:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40129a:	00 00 00 
  40129d:	0f 1f 00             	nopl   (%rax)

00000000004012a0 <__sti____cudaRegisterAll()>:
  4012a0:	48 83 ec 08          	sub    $0x8,%rsp
  4012a4:	bf 08 22 40 00       	mov    $0x402208,%edi
  4012a9:	e8 92 fa ff ff       	callq  400d40 <__cudaRegisterFatBinary@plt>
  4012ae:	6a 00                	pushq  $0x0
  4012b0:	b9 67 1e 40 00       	mov    $0x401e67,%ecx
  4012b5:	6a 00                	pushq  $0x0
  4012b7:	6a 00                	pushq  $0x0
  4012b9:	6a 00                	pushq  $0x0
  4012bb:	48 89 c7             	mov    %rax,%rdi
  4012be:	45 31 c9             	xor    %r9d,%r9d
  4012c1:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  4012c7:	48 89 ca             	mov    %rcx,%rdx
  4012ca:	be 40 14 40 00       	mov    $0x401440,%esi
  4012cf:	48 89 05 fa 1e 20 00 	mov    %rax,0x201efa(%rip)        # 6031d0 <__cudaFatCubinHandle>
  4012d6:	e8 15 fb ff ff       	callq  400df0 <__cudaRegisterFunction@plt>
  4012db:	bf 30 14 40 00       	mov    $0x401430,%edi
  4012e0:	48 83 c4 28          	add    $0x28,%rsp
  4012e4:	e9 b7 09 00 00       	jmpq   401ca0 <atexit>
  4012e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004012f0 <_start>:
  4012f0:	31 ed                	xor    %ebp,%ebp
  4012f2:	49 89 d1             	mov    %rdx,%r9
  4012f5:	5e                   	pop    %rsi
  4012f6:	48 89 e2             	mov    %rsp,%rdx
  4012f9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4012fd:	50                   	push   %rax
  4012fe:	54                   	push   %rsp
  4012ff:	49 c7 c0 90 1c 40 00 	mov    $0x401c90,%r8
  401306:	48 c7 c1 20 1c 40 00 	mov    $0x401c20,%rcx
  40130d:	48 c7 c7 80 0e 40 00 	mov    $0x400e80,%rdi
  401314:	e8 37 fb ff ff       	callq  400e50 <__libc_start_main@plt>
  401319:	f4                   	hlt    
  40131a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401320 <deregister_tm_clones>:
  401320:	b8 a7 31 60 00       	mov    $0x6031a7,%eax
  401325:	55                   	push   %rbp
  401326:	48 2d a0 31 60 00    	sub    $0x6031a0,%rax
  40132c:	48 83 f8 0e          	cmp    $0xe,%rax
  401330:	48 89 e5             	mov    %rsp,%rbp
  401333:	76 1b                	jbe    401350 <deregister_tm_clones+0x30>
  401335:	b8 00 00 00 00       	mov    $0x0,%eax
  40133a:	48 85 c0             	test   %rax,%rax
  40133d:	74 11                	je     401350 <deregister_tm_clones+0x30>
  40133f:	5d                   	pop    %rbp
  401340:	bf a0 31 60 00       	mov    $0x6031a0,%edi
  401345:	ff e0                	jmpq   *%rax
  401347:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40134e:	00 00 
  401350:	5d                   	pop    %rbp
  401351:	c3                   	retq   
  401352:	0f 1f 40 00          	nopl   0x0(%rax)
  401356:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40135d:	00 00 00 

0000000000401360 <register_tm_clones>:
  401360:	be a0 31 60 00       	mov    $0x6031a0,%esi
  401365:	55                   	push   %rbp
  401366:	48 81 ee a0 31 60 00 	sub    $0x6031a0,%rsi
  40136d:	48 c1 fe 03          	sar    $0x3,%rsi
  401371:	48 89 e5             	mov    %rsp,%rbp
  401374:	48 89 f0             	mov    %rsi,%rax
  401377:	48 c1 e8 3f          	shr    $0x3f,%rax
  40137b:	48 01 c6             	add    %rax,%rsi
  40137e:	48 d1 fe             	sar    %rsi
  401381:	74 15                	je     401398 <register_tm_clones+0x38>
  401383:	b8 00 00 00 00       	mov    $0x0,%eax
  401388:	48 85 c0             	test   %rax,%rax
  40138b:	74 0b                	je     401398 <register_tm_clones+0x38>
  40138d:	5d                   	pop    %rbp
  40138e:	bf a0 31 60 00       	mov    $0x6031a0,%edi
  401393:	ff e0                	jmpq   *%rax
  401395:	0f 1f 00             	nopl   (%rax)
  401398:	5d                   	pop    %rbp
  401399:	c3                   	retq   
  40139a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004013a0 <__do_global_dtors_aux>:
  4013a0:	80 3d 21 1e 20 00 00 	cmpb   $0x0,0x201e21(%rip)        # 6031c8 <completed.7594>
  4013a7:	75 11                	jne    4013ba <__do_global_dtors_aux+0x1a>
  4013a9:	55                   	push   %rbp
  4013aa:	48 89 e5             	mov    %rsp,%rbp
  4013ad:	e8 6e ff ff ff       	callq  401320 <deregister_tm_clones>
  4013b2:	5d                   	pop    %rbp
  4013b3:	c6 05 0e 1e 20 00 01 	movb   $0x1,0x201e0e(%rip)        # 6031c8 <completed.7594>
  4013ba:	f3 c3                	repz retq 
  4013bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004013c0 <frame_dummy>:
  4013c0:	bf 00 2e 60 00       	mov    $0x602e00,%edi
  4013c5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  4013c9:	75 05                	jne    4013d0 <frame_dummy+0x10>
  4013cb:	eb 93                	jmp    401360 <register_tm_clones>
  4013cd:	0f 1f 00             	nopl   (%rax)
  4013d0:	b8 00 00 00 00       	mov    $0x0,%eax
  4013d5:	48 85 c0             	test   %rax,%rax
  4013d8:	74 f1                	je     4013cb <frame_dummy+0xb>
  4013da:	55                   	push   %rbp
  4013db:	48 89 e5             	mov    %rsp,%rbp
  4013de:	ff d0                	callq  *%rax
  4013e0:	5d                   	pop    %rbp
  4013e1:	e9 7a ff ff ff       	jmpq   401360 <register_tm_clones>
  4013e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4013ed:	00 00 00 

00000000004013f0 <usage(char const*)>:
  4013f0:	48 83 ec 08          	sub    $0x8,%rsp
  4013f4:	48 89 fa             	mov    %rdi,%rdx
  4013f7:	be e4 1c 40 00       	mov    $0x401ce4,%esi
  4013fc:	bf 01 00 00 00       	mov    $0x1,%edi
  401401:	31 c0                	xor    %eax,%eax
  401403:	e8 88 f8 ff ff       	callq  400c90 <__printf_chk@plt>
  401408:	bf f9 1c 40 00       	mov    $0x401cf9,%edi
  40140d:	e8 fe f9 ff ff       	callq  400e10 <puts@plt>
  401412:	bf 38 1d 40 00       	mov    $0x401d38,%edi
  401417:	e8 f4 f9 ff ff       	callq  400e10 <puts@plt>
  40141c:	bf 70 1d 40 00       	mov    $0x401d70,%edi
  401421:	48 83 c4 08          	add    $0x8,%rsp
  401425:	e9 e6 f9 ff ff       	jmpq   400e10 <puts@plt>
  40142a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401430 <__cudaUnregisterBinaryUtil()>:
  401430:	48 8b 3d 99 1d 20 00 	mov    0x201d99(%rip),%rdi        # 6031d0 <__cudaFatCubinHandle>
  401437:	e9 74 f8 ff ff       	jmpq   400cb0 <__cudaUnregisterFatBinary@plt>
  40143c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401440 <saxpy_kernel(int, float, float*, float*, float*)>:
  401440:	48 83 ec 38          	sub    $0x38,%rsp
  401444:	89 7c 24 08          	mov    %edi,0x8(%rsp)
  401448:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  40144d:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  401452:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
  401457:	be 04 00 00 00       	mov    $0x4,%esi
  40145c:	31 d2                	xor    %edx,%edx
  40145e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401465:	00 00 
  401467:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40146c:	31 c0                	xor    %eax,%eax
  40146e:	f3 0f 11 44 24 0c    	movss  %xmm0,0xc(%rsp)
  401474:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  401479:	e8 62 f8 ff ff       	callq  400ce0 <cudaSetupArgument@plt>
  40147e:	85 c0                	test   %eax,%eax
  401480:	74 1e                	je     4014a0 <saxpy_kernel(int, float, float*, float*, float*)+0x60>
  401482:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401487:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40148e:	00 00 
  401490:	75 7d                	jne    40150f <saxpy_kernel(int, float, float*, float*, float*)+0xcf>
  401492:	48 83 c4 38          	add    $0x38,%rsp
  401496:	c3                   	retq   
  401497:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40149e:	00 00 
  4014a0:	48 8d 7c 24 0c       	lea    0xc(%rsp),%rdi
  4014a5:	ba 04 00 00 00       	mov    $0x4,%edx
  4014aa:	be 04 00 00 00       	mov    $0x4,%esi
  4014af:	e8 2c f8 ff ff       	callq  400ce0 <cudaSetupArgument@plt>
  4014b4:	85 c0                	test   %eax,%eax
  4014b6:	75 ca                	jne    401482 <saxpy_kernel(int, float, float*, float*, float*)+0x42>
  4014b8:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4014bd:	ba 08 00 00 00       	mov    $0x8,%edx
  4014c2:	be 08 00 00 00       	mov    $0x8,%esi
  4014c7:	e8 14 f8 ff ff       	callq  400ce0 <cudaSetupArgument@plt>
  4014cc:	85 c0                	test   %eax,%eax
  4014ce:	75 b2                	jne    401482 <saxpy_kernel(int, float, float*, float*, float*)+0x42>
  4014d0:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
  4014d5:	ba 10 00 00 00       	mov    $0x10,%edx
  4014da:	be 08 00 00 00       	mov    $0x8,%esi
  4014df:	e8 fc f7 ff ff       	callq  400ce0 <cudaSetupArgument@plt>
  4014e4:	85 c0                	test   %eax,%eax
  4014e6:	75 9a                	jne    401482 <saxpy_kernel(int, float, float*, float*, float*)+0x42>
  4014e8:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  4014ed:	ba 18 00 00 00       	mov    $0x18,%edx
  4014f2:	be 08 00 00 00       	mov    $0x8,%esi
  4014f7:	e8 e4 f7 ff ff       	callq  400ce0 <cudaSetupArgument@plt>
  4014fc:	85 c0                	test   %eax,%eax
  4014fe:	75 82                	jne    401482 <saxpy_kernel(int, float, float*, float*, float*)+0x42>
  401500:	bf 40 14 40 00       	mov    $0x401440,%edi
  401505:	e8 b6 f7 ff ff       	callq  400cc0 <cudaLaunch@plt>
  40150a:	e9 73 ff ff ff       	jmpq   401482 <saxpy_kernel(int, float, float*, float*, float*)+0x42>
  40150f:	e8 6c f8 ff ff       	callq  400d80 <__stack_chk_fail@plt>
  401514:	66 90                	xchg   %ax,%ax
  401516:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40151d:	00 00 00 

0000000000401520 <GBPerSec(int, float)>:
  401520:	66 0f ef c9          	pxor   %xmm1,%xmm1
  401524:	0f 28 d0             	movaps %xmm0,%xmm2
  401527:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40152b:	f3 0f 2a cf          	cvtsi2ss %edi,%xmm1
  40152f:	f3 0f 5a c1          	cvtss2sd %xmm1,%xmm0
  401533:	66 0f ef c9          	pxor   %xmm1,%xmm1
  401537:	f2 0f 59 05 31 0a 00 	mulsd  0xa31(%rip),%xmm0        # 401f70 <_IO_stdin_used+0x290>
  40153e:	00 
  40153f:	f3 0f 5a ca          	cvtss2sd %xmm2,%xmm1
  401543:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
  401547:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
  40154b:	c3                   	retq   
  40154c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401550 <saxpyCuda(int, float, float*, float*, float*)>:
  401550:	41 55                	push   %r13
  401552:	41 54                	push   %r12
  401554:	41 89 fc             	mov    %edi,%r12d
  401557:	55                   	push   %rbp
  401558:	53                   	push   %rbx
  401559:	8d 1c 7f             	lea    (%rdi,%rdi,2),%ebx
  40155c:	48 83 ec 68          	sub    $0x68,%rsp
  401560:	c1 e3 02             	shl    $0x2,%ebx
  401563:	f3 0f 11 44 24 08    	movss  %xmm0,0x8(%rsp)
  401569:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401570:	00 00 
  401572:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  401577:	31 c0                	xor    %eax,%eax
  401579:	0f 31                	rdtsc  
  40157b:	41 89 d5             	mov    %edx,%r13d
  40157e:	89 c5                	mov    %eax,%ebp
  401580:	e8 7b 04 00 00       	callq  401a00 <CycleTimer::secondsPerTick()>
  401585:	4c 89 ea             	mov    %r13,%rdx
  401588:	89 e8                	mov    %ebp,%eax
  40158a:	48 c1 e2 20          	shl    $0x20,%rdx
  40158e:	48 09 d0             	or     %rdx,%rax
  401591:	0f 88 b9 01 00 00    	js     401750 <saxpyCuda(int, float, float*, float*, float*)+0x200>
  401597:	66 0f ef c9          	pxor   %xmm1,%xmm1
  40159b:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
  4015a0:	41 8d 84 24 fe 03 00 	lea    0x3fe(%r12),%eax
  4015a7:	00 
  4015a8:	44 89 e2             	mov    %r12d,%edx
  4015ab:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
  4015af:	81 c2 ff 01 00 00    	add    $0x1ff,%edx
  4015b5:	c7 44 24 40 00 02 00 	movl   $0x200,0x40(%rsp)
  4015bc:	00 
  4015bd:	c7 44 24 44 01 00 00 	movl   $0x1,0x44(%rsp)
  4015c4:	00 
  4015c5:	0f 49 c2             	cmovns %edx,%eax
  4015c8:	c7 44 24 34 01 00 00 	movl   $0x1,0x34(%rsp)
  4015cf:	00 
  4015d0:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
  4015d5:	c1 f8 09             	sar    $0x9,%eax
  4015d8:	45 31 c9             	xor    %r9d,%r9d
  4015db:	45 31 c0             	xor    %r8d,%r8d
  4015de:	89 44 24 30          	mov    %eax,0x30(%rsp)
  4015e2:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
  4015e7:	b9 01 00 00 00       	mov    $0x1,%ecx
  4015ec:	be 01 00 00 00       	mov    $0x1,%esi
  4015f1:	f2 0f 11 0c 24       	movsd  %xmm1,(%rsp)
  4015f6:	c7 44 24 48 01 00 00 	movl   $0x1,0x48(%rsp)
  4015fd:	00 
  4015fe:	c7 44 24 38 01 00 00 	movl   $0x1,0x38(%rsp)
  401605:	00 
  401606:	e8 b5 f7 ff ff       	callq  400dc0 <cudaConfigureCall@plt>
  40160b:	85 c0                	test   %eax,%eax
  40160d:	75 45                	jne    401654 <saxpyCuda(int, float, float*, float*, float*)+0x104>
  40160f:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  401614:	f3 0f 10 64 24 08    	movss  0x8(%rsp),%xmm4
  40161a:	31 d2                	xor    %edx,%edx
  40161c:	be 04 00 00 00       	mov    $0x4,%esi
  401621:	44 89 64 24 10       	mov    %r12d,0x10(%rsp)
  401626:	f3 0f 11 64 24 14    	movss  %xmm4,0x14(%rsp)
  40162c:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
  401633:	00 00 
  401635:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  40163c:	00 00 
  40163e:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  401645:	00 00 
  401647:	e8 94 f6 ff ff       	callq  400ce0 <cudaSetupArgument@plt>
  40164c:	85 c0                	test   %eax,%eax
  40164e:	0f 84 1c 01 00 00    	je     401770 <saxpyCuda(int, float, float*, float*, float*)+0x220>
  401654:	0f 31                	rdtsc  
  401656:	41 89 d4             	mov    %edx,%r12d
  401659:	89 c5                	mov    %eax,%ebp
  40165b:	e8 a0 03 00 00       	callq  401a00 <CycleTimer::secondsPerTick()>
  401660:	4c 89 e2             	mov    %r12,%rdx
  401663:	89 e8                	mov    %ebp,%eax
  401665:	48 c1 e2 20          	shl    $0x20,%rdx
  401669:	48 09 d0             	or     %rdx,%rax
  40166c:	0f 88 be 00 00 00    	js     401730 <saxpyCuda(int, float, float*, float*, float*)+0x1e0>
  401672:	66 0f ef c9          	pxor   %xmm1,%xmm1
  401676:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
  40167b:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
  40167f:	f2 0f 11 4c 24 08    	movsd  %xmm1,0x8(%rsp)
  401685:	e8 d6 f6 ff ff       	callq  400d60 <cudaPeekAtLastError@plt>
  40168a:	85 c0                	test   %eax,%eax
  40168c:	89 c5                	mov    %eax,%ebp
  40168e:	74 24                	je     4016b4 <saxpyCuda(int, float, float*, float*, float*)+0x164>
  401690:	89 c7                	mov    %eax,%edi
  401692:	e8 69 f6 ff ff       	callq  400d00 <cudaGetErrorString@plt>
  401697:	48 8b 3d 22 1b 20 00 	mov    0x201b22(%rip),%rdi        # 6031c0 <stderr@@GLIBC_2.2.5>
  40169e:	49 89 c0             	mov    %rax,%r8
  4016a1:	89 e9                	mov    %ebp,%ecx
  4016a3:	ba c0 1e 40 00       	mov    $0x401ec0,%edx
  4016a8:	be 01 00 00 00       	mov    $0x1,%esi
  4016ad:	31 c0                	xor    %eax,%eax
  4016af:	e8 7c f7 ff ff       	callq  400e30 <__fprintf_chk@plt>
  4016b4:	66 0f ef c9          	pxor   %xmm1,%xmm1
  4016b8:	be f0 1e 40 00       	mov    $0x401ef0,%esi
  4016bd:	f2 0f 10 44 24 08    	movsd  0x8(%rsp),%xmm0
  4016c3:	bf 01 00 00 00       	mov    $0x1,%edi
  4016c8:	66 0f ef d2          	pxor   %xmm2,%xmm2
  4016cc:	b8 02 00 00 00       	mov    $0x2,%eax
  4016d1:	f3 0f 2a cb          	cvtsi2ss %ebx,%xmm1
  4016d5:	f2 0f 5c 04 24       	subsd  (%rsp),%xmm0
  4016da:	f2 0f 5a d0          	cvtsd2ss %xmm0,%xmm2
  4016de:	f2 0f 59 05 92 08 00 	mulsd  0x892(%rip),%xmm0        # 401f78 <_IO_stdin_used+0x298>
  4016e5:	00 
  4016e6:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
  4016ea:	f2 0f 59 0d 7e 08 00 	mulsd  0x87e(%rip),%xmm1        # 401f70 <_IO_stdin_used+0x290>
  4016f1:	00 
  4016f2:	f3 0f 5a d2          	cvtss2sd %xmm2,%xmm2
  4016f6:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
  4016fa:	f2 0f 5a c9          	cvtsd2ss %xmm1,%xmm1
  4016fe:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
  401702:	e8 89 f5 ff ff       	callq  400c90 <__printf_chk@plt>
  401707:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40170c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401713:	00 00 
  401715:	0f 85 d4 00 00 00    	jne    4017ef <saxpyCuda(int, float, float*, float*, float*)+0x29f>
  40171b:	48 83 c4 68          	add    $0x68,%rsp
  40171f:	5b                   	pop    %rbx
  401720:	5d                   	pop    %rbp
  401721:	41 5c                	pop    %r12
  401723:	41 5d                	pop    %r13
  401725:	c3                   	retq   
  401726:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40172d:	00 00 00 
  401730:	48 89 c2             	mov    %rax,%rdx
  401733:	66 0f ef c9          	pxor   %xmm1,%xmm1
  401737:	48 d1 ea             	shr    %rdx
  40173a:	83 e0 01             	and    $0x1,%eax
  40173d:	48 09 c2             	or     %rax,%rdx
  401740:	f2 48 0f 2a ca       	cvtsi2sd %rdx,%xmm1
  401745:	f2 0f 58 c9          	addsd  %xmm1,%xmm1
  401749:	e9 2d ff ff ff       	jmpq   40167b <saxpyCuda(int, float, float*, float*, float*)+0x12b>
  40174e:	66 90                	xchg   %ax,%ax
  401750:	48 89 c2             	mov    %rax,%rdx
  401753:	66 0f ef c9          	pxor   %xmm1,%xmm1
  401757:	48 d1 ea             	shr    %rdx
  40175a:	83 e0 01             	and    $0x1,%eax
  40175d:	48 09 c2             	or     %rax,%rdx
  401760:	f2 48 0f 2a ca       	cvtsi2sd %rdx,%xmm1
  401765:	f2 0f 58 c9          	addsd  %xmm1,%xmm1
  401769:	e9 32 fe ff ff       	jmpq   4015a0 <saxpyCuda(int, float, float*, float*, float*)+0x50>
  40176e:	66 90                	xchg   %ax,%ax
  401770:	48 8d 7c 24 14       	lea    0x14(%rsp),%rdi
  401775:	ba 04 00 00 00       	mov    $0x4,%edx
  40177a:	be 04 00 00 00       	mov    $0x4,%esi
  40177f:	e8 5c f5 ff ff       	callq  400ce0 <cudaSetupArgument@plt>
  401784:	85 c0                	test   %eax,%eax
  401786:	0f 85 c8 fe ff ff    	jne    401654 <saxpyCuda(int, float, float*, float*, float*)+0x104>
  40178c:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
  401791:	ba 08 00 00 00       	mov    $0x8,%edx
  401796:	be 08 00 00 00       	mov    $0x8,%esi
  40179b:	e8 40 f5 ff ff       	callq  400ce0 <cudaSetupArgument@plt>
  4017a0:	85 c0                	test   %eax,%eax
  4017a2:	0f 85 ac fe ff ff    	jne    401654 <saxpyCuda(int, float, float*, float*, float*)+0x104>
  4017a8:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  4017ad:	ba 10 00 00 00       	mov    $0x10,%edx
  4017b2:	be 08 00 00 00       	mov    $0x8,%esi
  4017b7:	e8 24 f5 ff ff       	callq  400ce0 <cudaSetupArgument@plt>
  4017bc:	85 c0                	test   %eax,%eax
  4017be:	0f 85 90 fe ff ff    	jne    401654 <saxpyCuda(int, float, float*, float*, float*)+0x104>
  4017c4:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
  4017c9:	ba 18 00 00 00       	mov    $0x18,%edx
  4017ce:	be 08 00 00 00       	mov    $0x8,%esi
  4017d3:	e8 08 f5 ff ff       	callq  400ce0 <cudaSetupArgument@plt>
  4017d8:	85 c0                	test   %eax,%eax
  4017da:	0f 85 74 fe ff ff    	jne    401654 <saxpyCuda(int, float, float*, float*, float*)+0x104>
  4017e0:	bf 40 14 40 00       	mov    $0x401440,%edi
  4017e5:	e8 d6 f4 ff ff       	callq  400cc0 <cudaLaunch@plt>
  4017ea:	e9 65 fe ff ff       	jmpq   401654 <saxpyCuda(int, float, float*, float*, float*)+0x104>
  4017ef:	e8 8c f5 ff ff       	callq  400d80 <__stack_chk_fail@plt>
  4017f4:	66 90                	xchg   %ax,%ax
  4017f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4017fd:	00 00 00 

0000000000401800 <printCudaInfo()>:
  401800:	53                   	push   %rbx
  401801:	31 db                	xor    %ebx,%ebx
  401803:	48 81 ec c0 02 00 00 	sub    $0x2c0,%rsp
  40180a:	48 8d 7c 24 0c       	lea    0xc(%rsp),%rdi
  40180f:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
  401816:	00 
  401817:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40181e:	00 00 
  401820:	48 89 84 24 b8 02 00 	mov    %rax,0x2b8(%rsp)
  401827:	00 
  401828:	31 c0                	xor    %eax,%eax
  40182a:	e8 e1 f4 ff ff       	callq  400d10 <cudaGetDeviceCount@plt>
  40182f:	bf 28 1f 40 00       	mov    $0x401f28,%edi
  401834:	e8 d7 f5 ff ff       	callq  400e10 <puts@plt>
  401839:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  40183d:	31 c0                	xor    %eax,%eax
  40183f:	be 00 1e 40 00       	mov    $0x401e00,%esi
  401844:	bf 01 00 00 00       	mov    $0x1,%edi
  401849:	e8 42 f4 ff ff       	callq  400c90 <__printf_chk@plt>
  40184e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401852:	85 c0                	test   %eax,%eax
  401854:	7f 5b                	jg     4018b1 <printCudaInfo()+0xb1>
  401856:	e9 c5 00 00 00       	jmpq   401920 <printCudaInfo()+0x120>
  40185b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401860:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401864:	f3 48 0f 2a c0       	cvtsi2ss %rax,%xmm0
  401869:	be 39 1e 40 00       	mov    $0x401e39,%esi
  40186e:	bf 01 00 00 00       	mov    $0x1,%edi
  401873:	b8 01 00 00 00       	mov    $0x1,%eax
  401878:	f3 0f 59 05 08 07 00 	mulss  0x708(%rip),%xmm0        # 401f88 <_IO_stdin_used+0x2a8>
  40187f:	00 
  401880:	83 c3 01             	add    $0x1,%ebx
  401883:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  401887:	e8 04 f4 ff ff       	callq  400c90 <__printf_chk@plt>
  40188c:	8b 8c 24 5c 01 00 00 	mov    0x15c(%rsp),%ecx
  401893:	8b 94 24 58 01 00 00 	mov    0x158(%rsp),%edx
  40189a:	31 c0                	xor    %eax,%eax
  40189c:	be 51 1e 40 00       	mov    $0x401e51,%esi
  4018a1:	bf 01 00 00 00       	mov    $0x1,%edi
  4018a6:	e8 e5 f3 ff ff       	callq  400c90 <__printf_chk@plt>
  4018ab:	39 5c 24 0c          	cmp    %ebx,0xc(%rsp)
  4018af:	7e 6f                	jle    401920 <printCudaInfo()+0x120>
  4018b1:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4018b6:	89 de                	mov    %ebx,%esi
  4018b8:	e8 13 f5 ff ff       	callq  400dd0 <cudaGetDeviceProperties@plt>
  4018bd:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  4018c2:	89 da                	mov    %ebx,%edx
  4018c4:	be 17 1e 40 00       	mov    $0x401e17,%esi
  4018c9:	bf 01 00 00 00       	mov    $0x1,%edi
  4018ce:	31 c0                	xor    %eax,%eax
  4018d0:	e8 bb f3 ff ff       	callq  400c90 <__printf_chk@plt>
  4018d5:	8b 94 24 74 01 00 00 	mov    0x174(%rsp),%edx
  4018dc:	31 c0                	xor    %eax,%eax
  4018de:	be 26 1e 40 00       	mov    $0x401e26,%esi
  4018e3:	bf 01 00 00 00       	mov    $0x1,%edi
  4018e8:	e8 a3 f3 ff ff       	callq  400c90 <__printf_chk@plt>
  4018ed:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
  4018f4:	00 
  4018f5:	48 85 c0             	test   %rax,%rax
  4018f8:	0f 89 62 ff ff ff    	jns    401860 <printCudaInfo()+0x60>
  4018fe:	48 89 c2             	mov    %rax,%rdx
  401901:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401905:	48 d1 ea             	shr    %rdx
  401908:	83 e0 01             	and    $0x1,%eax
  40190b:	48 09 c2             	or     %rax,%rdx
  40190e:	f3 48 0f 2a c2       	cvtsi2ss %rdx,%xmm0
  401913:	f3 0f 58 c0          	addss  %xmm0,%xmm0
  401917:	e9 4d ff ff ff       	jmpq   401869 <printCudaInfo()+0x69>
  40191c:	0f 1f 40 00          	nopl   0x0(%rax)
  401920:	bf 28 1f 40 00       	mov    $0x401f28,%edi
  401925:	e8 e6 f4 ff ff       	callq  400e10 <puts@plt>
  40192a:	48 8b 84 24 b8 02 00 	mov    0x2b8(%rsp),%rax
  401931:	00 
  401932:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401939:	00 00 
  40193b:	75 09                	jne    401946 <printCudaInfo()+0x146>
  40193d:	48 81 c4 c0 02 00 00 	add    $0x2c0,%rsp
  401944:	5b                   	pop    %rbx
  401945:	c3                   	retq   
  401946:	e8 35 f4 ff ff       	callq  400d80 <__stack_chk_fail@plt>
  40194b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401950 <__device_stub__Z12saxpy_kernelifPfS_S_(int, float, float*, float*, float*)>:
  401950:	48 83 ec 28          	sub    $0x28,%rsp
  401954:	89 7c 24 1c          	mov    %edi,0x1c(%rsp)
  401958:	48 8d 7c 24 1c       	lea    0x1c(%rsp),%rdi
  40195d:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  401962:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  401967:	be 04 00 00 00       	mov    $0x4,%esi
  40196c:	31 d2                	xor    %edx,%edx
  40196e:	f3 0f 11 44 24 18    	movss  %xmm0,0x18(%rsp)
  401974:	48 89 0c 24          	mov    %rcx,(%rsp)
  401978:	e8 63 f3 ff ff       	callq  400ce0 <cudaSetupArgument@plt>
  40197d:	85 c0                	test   %eax,%eax
  40197f:	74 0f                	je     401990 <__device_stub__Z12saxpy_kernelifPfS_S_(int, float, float*, float*, float*)+0x40>
  401981:	48 83 c4 28          	add    $0x28,%rsp
  401985:	c3                   	retq   
  401986:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40198d:	00 00 00 
  401990:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
  401995:	ba 04 00 00 00       	mov    $0x4,%edx
  40199a:	be 04 00 00 00       	mov    $0x4,%esi
  40199f:	e8 3c f3 ff ff       	callq  400ce0 <cudaSetupArgument@plt>
  4019a4:	85 c0                	test   %eax,%eax
  4019a6:	75 d9                	jne    401981 <__device_stub__Z12saxpy_kernelifPfS_S_(int, float, float*, float*, float*)+0x31>
  4019a8:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4019ad:	ba 08 00 00 00       	mov    $0x8,%edx
  4019b2:	be 08 00 00 00       	mov    $0x8,%esi
  4019b7:	e8 24 f3 ff ff       	callq  400ce0 <cudaSetupArgument@plt>
  4019bc:	85 c0                	test   %eax,%eax
  4019be:	75 c1                	jne    401981 <__device_stub__Z12saxpy_kernelifPfS_S_(int, float, float*, float*, float*)+0x31>
  4019c0:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  4019c5:	ba 10 00 00 00       	mov    $0x10,%edx
  4019ca:	be 08 00 00 00       	mov    $0x8,%esi
  4019cf:	e8 0c f3 ff ff       	callq  400ce0 <cudaSetupArgument@plt>
  4019d4:	85 c0                	test   %eax,%eax
  4019d6:	75 a9                	jne    401981 <__device_stub__Z12saxpy_kernelifPfS_S_(int, float, float*, float*, float*)+0x31>
  4019d8:	ba 18 00 00 00       	mov    $0x18,%edx
  4019dd:	be 08 00 00 00       	mov    $0x8,%esi
  4019e2:	48 89 e7             	mov    %rsp,%rdi
  4019e5:	e8 f6 f2 ff ff       	callq  400ce0 <cudaSetupArgument@plt>
  4019ea:	85 c0                	test   %eax,%eax
  4019ec:	75 93                	jne    401981 <__device_stub__Z12saxpy_kernelifPfS_S_(int, float, float*, float*, float*)+0x31>
  4019ee:	bf 40 14 40 00       	mov    $0x401440,%edi
  4019f3:	e8 c8 f2 ff ff       	callq  400cc0 <cudaLaunch@plt>
  4019f8:	eb 87                	jmp    401981 <__device_stub__Z12saxpy_kernelifPfS_S_(int, float, float*, float*, float*)+0x31>
  4019fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401a00 <CycleTimer::secondsPerTick()>:
  401a00:	41 54                	push   %r12
  401a02:	55                   	push   %rbp
  401a03:	53                   	push   %rbx
  401a04:	48 81 ec 20 04 00 00 	sub    $0x420,%rsp
  401a0b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a12:	00 00 
  401a14:	48 89 84 24 18 04 00 	mov    %rax,0x418(%rsp)
  401a1b:	00 
  401a1c:	31 c0                	xor    %eax,%eax
  401a1e:	80 3d bb 17 20 00 00 	cmpb   $0x0,0x2017bb(%rip)        # 6031e0 <CycleTimer::secondsPerTick()::initialized>
  401a25:	74 31                	je     401a58 <CycleTimer::secondsPerTick()+0x58>
  401a27:	48 8b 84 24 18 04 00 	mov    0x418(%rsp),%rax
  401a2e:	00 
  401a2f:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401a36:	00 00 
  401a38:	f2 0f 10 05 98 17 20 	movsd  0x201798(%rip),%xmm0        # 6031d8 <CycleTimer::secondsPerTick()::secondsPerTick_val>
  401a3f:	00 
  401a40:	0f 85 ac 01 00 00    	jne    401bf2 <CycleTimer::secondsPerTick()+0x1f2>
  401a46:	48 81 c4 20 04 00 00 	add    $0x420,%rsp
  401a4d:	5b                   	pop    %rbx
  401a4e:	5d                   	pop    %rbp
  401a4f:	41 5c                	pop    %r12
  401a51:	c3                   	retq   
  401a52:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401a58:	be d0 1d 40 00       	mov    $0x401dd0,%esi
  401a5d:	bf d2 1d 40 00       	mov    $0x401dd2,%edi
  401a62:	e8 29 f3 ff ff       	callq  400d90 <fopen@plt>
  401a67:	48 85 c0             	test   %rax,%rax
  401a6a:	49 89 c4             	mov    %rax,%r12
  401a6d:	0f 84 84 01 00 00    	je     401bf7 <CycleTimer::secondsPerTick()+0x1f7>
  401a73:	f2 0f 10 0d ed 04 00 	movsd  0x4ed(%rip),%xmm1        # 401f68 <_IO_stdin_used+0x288>
  401a7a:	00 
  401a7b:	f2 0f 11 0d 55 17 20 	movsd  %xmm1,0x201755(%rip)        # 6031d8 <CycleTimer::secondsPerTick()::secondsPerTick_val>
  401a82:	00 
  401a83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401a88:	4c 89 e7             	mov    %r12,%rdi
  401a8b:	e8 90 f3 ff ff       	callq  400e20 <feof@plt>
  401a90:	85 c0                	test   %eax,%eax
  401a92:	74 14                	je     401aa8 <CycleTimer::secondsPerTick()+0xa8>
  401a94:	4c 89 e7             	mov    %r12,%rdi
  401a97:	e8 d4 f2 ff ff       	callq  400d70 <fclose@plt>
  401a9c:	c6 05 3d 17 20 00 01 	movb   $0x1,0x20173d(%rip)        # 6031e0 <CycleTimer::secondsPerTick()::initialized>
  401aa3:	eb 82                	jmp    401a27 <CycleTimer::secondsPerTick()+0x27>
  401aa5:	0f 1f 00             	nopl   (%rax)
  401aa8:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  401aad:	4c 89 e1             	mov    %r12,%rcx
  401ab0:	ba 00 04 00 00       	mov    $0x400,%edx
  401ab5:	be 00 04 00 00       	mov    $0x400,%esi
  401aba:	e8 41 f3 ff ff       	callq  400e00 <__fgets_chk@plt>
  401abf:	48 85 c0             	test   %rax,%rax
  401ac2:	74 d0                	je     401a94 <CycleTimer::secondsPerTick()+0x94>
  401ac4:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  401ac9:	be f5 1d 40 00       	mov    $0x401df5,%esi
  401ace:	e8 fd f1 ff ff       	callq  400cd0 <strstr@plt>
  401ad3:	48 85 c0             	test   %rax,%rax
  401ad6:	0f 84 d4 00 00 00    	je     401bb0 <CycleTimer::secondsPerTick()+0x1b0>
  401adc:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  401ae1:	be 40 00 00 00       	mov    $0x40,%esi
  401ae6:	e8 05 f2 ff ff       	callq  400cf0 <strchr@plt>
  401aeb:	48 85 c0             	test   %rax,%rax
  401aee:	74 98                	je     401a88 <CycleTimer::secondsPerTick()+0x88>
  401af0:	48 8d 58 01          	lea    0x1(%rax),%rbx
  401af4:	be e0 1d 40 00       	mov    $0x401de0,%esi
  401af9:	48 89 df             	mov    %rbx,%rdi
  401afc:	e8 cf f1 ff ff       	callq  400cd0 <strstr@plt>
  401b01:	be e4 1d 40 00       	mov    $0x401de4,%esi
  401b06:	48 89 c5             	mov    %rax,%rbp
  401b09:	48 89 df             	mov    %rbx,%rdi
  401b0c:	e8 bf f1 ff ff       	callq  400cd0 <strstr@plt>
  401b11:	48 85 ed             	test   %rbp,%rbp
  401b14:	74 4a                	je     401b60 <CycleTimer::secondsPerTick()+0x160>
  401b16:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  401b1b:	31 c0                	xor    %eax,%eax
  401b1d:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  401b21:	be f2 1d 40 00       	mov    $0x401df2,%esi
  401b26:	48 89 df             	mov    %rbx,%rdi
  401b29:	e8 02 f2 ff ff       	callq  400d30 <sscanf@plt>
  401b2e:	83 f8 01             	cmp    $0x1,%eax
  401b31:	0f 85 51 ff ff ff    	jne    401a88 <CycleTimer::secondsPerTick()+0x88>
  401b37:	f3 0f 10 05 41 04 00 	movss  0x441(%rip),%xmm0        # 401f80 <_IO_stdin_used+0x2a0>
  401b3e:	00 
  401b3f:	f3 0f 5e 44 24 08    	divss  0x8(%rsp),%xmm0
  401b45:	66 0f ef d2          	pxor   %xmm2,%xmm2
  401b49:	f3 0f 5a d0          	cvtss2sd %xmm0,%xmm2
  401b4d:	f2 0f 11 15 83 16 20 	movsd  %xmm2,0x201683(%rip)        # 6031d8 <CycleTimer::secondsPerTick()::secondsPerTick_val>
  401b54:	00 
  401b55:	e9 3a ff ff ff       	jmpq   401a94 <CycleTimer::secondsPerTick()+0x94>
  401b5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401b60:	48 85 c0             	test   %rax,%rax
  401b63:	0f 84 1f ff ff ff    	je     401a88 <CycleTimer::secondsPerTick()+0x88>
  401b69:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  401b6e:	c6 00 00             	movb   $0x0,(%rax)
  401b71:	be f2 1d 40 00       	mov    $0x401df2,%esi
  401b76:	31 c0                	xor    %eax,%eax
  401b78:	48 89 df             	mov    %rbx,%rdi
  401b7b:	e8 b0 f1 ff ff       	callq  400d30 <sscanf@plt>
  401b80:	83 f8 01             	cmp    $0x1,%eax
  401b83:	0f 85 ff fe ff ff    	jne    401a88 <CycleTimer::secondsPerTick()+0x88>
  401b89:	f3 0f 10 05 f3 03 00 	movss  0x3f3(%rip),%xmm0        # 401f84 <_IO_stdin_used+0x2a4>
  401b90:	00 
  401b91:	f3 0f 5e 44 24 08    	divss  0x8(%rsp),%xmm0
  401b97:	66 0f ef db          	pxor   %xmm3,%xmm3
  401b9b:	f3 0f 5a d8          	cvtss2sd %xmm0,%xmm3
  401b9f:	f2 0f 11 1d 31 16 20 	movsd  %xmm3,0x201631(%rip)        # 6031d8 <CycleTimer::secondsPerTick()::secondsPerTick_val>
  401ba6:	00 
  401ba7:	e9 e8 fe ff ff       	jmpq   401a94 <CycleTimer::secondsPerTick()+0x94>
  401bac:	0f 1f 40 00          	nopl   0x0(%rax)
  401bb0:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  401bb5:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  401bba:	31 c0                	xor    %eax,%eax
  401bbc:	be e8 1d 40 00       	mov    $0x401de8,%esi
  401bc1:	e8 6a f1 ff ff       	callq  400d30 <sscanf@plt>
  401bc6:	83 f8 01             	cmp    $0x1,%eax
  401bc9:	0f 85 b9 fe ff ff    	jne    401a88 <CycleTimer::secondsPerTick()+0x88>
  401bcf:	f3 0f 10 05 ad 03 00 	movss  0x3ad(%rip),%xmm0        # 401f84 <_IO_stdin_used+0x2a4>
  401bd6:	00 
  401bd7:	f3 0f 5e 44 24 0c    	divss  0xc(%rsp),%xmm0
  401bdd:	66 0f ef e4          	pxor   %xmm4,%xmm4
  401be1:	f3 0f 5a e0          	cvtss2sd %xmm0,%xmm4
  401be5:	f2 0f 11 25 eb 15 20 	movsd  %xmm4,0x2015eb(%rip)        # 6031d8 <CycleTimer::secondsPerTick()::secondsPerTick_val>
  401bec:	00 
  401bed:	e9 a2 fe ff ff       	jmpq   401a94 <CycleTimer::secondsPerTick()+0x94>
  401bf2:	e8 89 f1 ff ff       	callq  400d80 <__stack_chk_fail@plt>
  401bf7:	48 8b 0d c2 15 20 00 	mov    0x2015c2(%rip),%rcx        # 6031c0 <stderr@@GLIBC_2.2.5>
  401bfe:	bf 80 1e 40 00       	mov    $0x401e80,%edi
  401c03:	ba 3b 00 00 00       	mov    $0x3b,%edx
  401c08:	be 01 00 00 00       	mov    $0x1,%esi
  401c0d:	e8 4e f2 ff ff       	callq  400e60 <fwrite@plt>
  401c12:	83 cf ff             	or     $0xffffffff,%edi
  401c15:	e8 86 f1 ff ff       	callq  400da0 <exit@plt>
  401c1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401c20 <__libc_csu_init>:
  401c20:	41 57                	push   %r15
  401c22:	41 56                	push   %r14
  401c24:	41 89 ff             	mov    %edi,%r15d
  401c27:	41 55                	push   %r13
  401c29:	41 54                	push   %r12
  401c2b:	4c 8d 25 b6 11 20 00 	lea    0x2011b6(%rip),%r12        # 602de8 <__frame_dummy_init_array_entry>
  401c32:	55                   	push   %rbp
  401c33:	48 8d 2d be 11 20 00 	lea    0x2011be(%rip),%rbp        # 602df8 <__init_array_end>
  401c3a:	53                   	push   %rbx
  401c3b:	49 89 f6             	mov    %rsi,%r14
  401c3e:	49 89 d5             	mov    %rdx,%r13
  401c41:	4c 29 e5             	sub    %r12,%rbp
  401c44:	48 83 ec 08          	sub    $0x8,%rsp
  401c48:	48 c1 fd 03          	sar    $0x3,%rbp
  401c4c:	e8 07 f0 ff ff       	callq  400c58 <_init>
  401c51:	48 85 ed             	test   %rbp,%rbp
  401c54:	74 20                	je     401c76 <__libc_csu_init+0x56>
  401c56:	31 db                	xor    %ebx,%ebx
  401c58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401c5f:	00 
  401c60:	4c 89 ea             	mov    %r13,%rdx
  401c63:	4c 89 f6             	mov    %r14,%rsi
  401c66:	44 89 ff             	mov    %r15d,%edi
  401c69:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  401c6d:	48 83 c3 01          	add    $0x1,%rbx
  401c71:	48 39 eb             	cmp    %rbp,%rbx
  401c74:	75 ea                	jne    401c60 <__libc_csu_init+0x40>
  401c76:	48 83 c4 08          	add    $0x8,%rsp
  401c7a:	5b                   	pop    %rbx
  401c7b:	5d                   	pop    %rbp
  401c7c:	41 5c                	pop    %r12
  401c7e:	41 5d                	pop    %r13
  401c80:	41 5e                	pop    %r14
  401c82:	41 5f                	pop    %r15
  401c84:	c3                   	retq   
  401c85:	90                   	nop
  401c86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401c8d:	00 00 00 

0000000000401c90 <__libc_csu_fini>:
  401c90:	f3 c3                	repz retq 
  401c92:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401c99:	00 00 00 
  401c9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401ca0 <atexit>:
  401ca0:	48 8d 05 81 14 20 00 	lea    0x201481(%rip),%rax        # 603128 <__dso_handle>
  401ca7:	48 85 c0             	test   %rax,%rax
  401caa:	74 14                	je     401cc0 <atexit+0x20>
  401cac:	48 8b 10             	mov    (%rax),%rdx
  401caf:	31 f6                	xor    %esi,%esi
  401cb1:	e9 9a f0 ff ff       	jmpq   400d50 <__cxa_atexit@plt>
  401cb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401cbd:	00 00 00 
  401cc0:	31 d2                	xor    %edx,%edx
  401cc2:	31 f6                	xor    %esi,%esi
  401cc4:	e9 87 f0 ff ff       	jmpq   400d50 <__cxa_atexit@plt>

Disassembly of section .fini:

0000000000401ccc <_fini>:
  401ccc:	48 83 ec 08          	sub    $0x8,%rsp
  401cd0:	48 83 c4 08          	add    $0x8,%rsp
  401cd4:	c3                   	retq   
