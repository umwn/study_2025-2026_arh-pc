%include 'in_out.asm'

SECTION .data
 msg DB 'Наименьшее число: ',0
 A: DD '52'
 B: DD '33'
 C: DD '40'

SECTION .bss
 min RESB 10

SECTION .text
GLOBAL _start
  _start:
  
  mov eax,A
  call atoi
  mov [A],eax
  
  mov eax,B
  call atoi
  mov [B],eax
  
  mov eax,C
  call atoi
  mov [C],eax
  
  mov ecx,[A]
  mov [min],ecx
  
  cmp ecx,[B]
  jl check_C
  mov ecx,[B]
  mov [min],ecx
  
  check_C:
    mov ecx,[min]
    cmp ecx,[C]
    jl fin
    mov ecx,[C]
    mov [min],ecx
  
  fin:
    mov eax,msg
    call sprint
    mov eax,[min]
    call iprintLF
    call quit  

    
