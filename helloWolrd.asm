section .text
        global _start
_start:                         ;entry point
        mov edx, len            ;length
        mov ecx, msg            ;message
        mov ebx, 1              ;file descriptor
        mov eax, 4              ;system call number (sys_write)
        int 0x80                
        mov eax, 1              ;system call number (sys_exit)
        int 0x80                

section .data

msg db 'Hell0, world',0xa       ;string
len equ $ - msg                 ;length of string asssigned to 'msg'

;mov                    -> move
;eax, ebx, edx, ecx     -> general purpose registers
;int 0x80               -> interupt & call kernel, see above for call number