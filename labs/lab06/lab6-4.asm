%include 'in_out.asm'

SECTION .data
 exp: DB '(11+x)*2-6',0
 msg: DB 'Введите значение x: ',0
 div: DB 'Результат: ',0
 
SECTION .bss
 x: RESB 80

SECTION .text
GLOBAL _start
  _start:
  
  mov eax,exp
  call sprintLF
  
  mov eax,msg
  call sprint
  
  mov ecx,x
  mov edx,80
  call sread
  
  mov eax,x
  call atoi
  
  add eax,11
  mov ebx,2
  mul ebx
  sub eax,6
  
  mov edi,eax
  
  mov eax,div
  call sprint
  mov eax,edi
  call iprintLF
  
  call quit
