.section .data
    test:
        .string    "test.txt"
    test1:
        .string    "test1.txt"
.section .bss
.lcomm my_buff,500
.section .text
.global _start
_start:
    movl $5,%eax
    movl $test,%ebx
    movl $600,%ecx
    movl $384,%edx
    int  $0x80

    movl $5,%eax
    movl $test1,%ebx
    movl $00000102,%ecx
    movl $0x180,%edx
    int  $0x80

    movl $1,%eax
    movl $0,%ebx
    int  $0x80
    