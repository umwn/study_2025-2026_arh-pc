%include 'in_out.asm'

SECTION .data
 msg_x: DB 'Введите значение переменной x: ',0
 msg_a: DB 'Введите значение переменной a: ',0
 res: DB 'Результат: ',0

SECTION .bss
 x: RESB 10
 a: RESB 10
 
SECTION .text
GLOBAL _start
  _start:
  
  mov eax,msg_x
  call sprint
  
  mov ecx,x
  mov edx,10
  call sread
  
  mov eax,x
  call atoi
  mov edi,eax
  
  mov eax,msg_a
  call sprint
  
  mov ecx,a
  mov edx,10
  call sread
  
  mov eax,a
  call atoi
  mov esi,eax
  
  cmp esi,3
  jl _mul
  jge _add
  
  _mul:
    mov eax,esi
    mov ebx,3
    mul ebx
    mov esi,eax
    mov eax,res
    call sprint
    mov eax,esi
    call iprintLF
    call quit
    
  _add:
    mov eax,edi
    inc eax
    mov edi,eax
    mov eax,res
    call sprint
    mov eax,edi
    call iprintLF
    call quit
  
  
  
    
  
  
 


