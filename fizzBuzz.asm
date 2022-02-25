section .text
    global _start
  _start:
        mov ecx, 1        ;set loop counter

        loop_main:
        push ecx          ;save loop counter

        xor dx, dx        ;reset dx
        mov ax, cx
        mov bx, 15
        div bx
        cmp dx, 0
        jz div_by_3_5     ;is divisibe by 3&5
        
        xor dx, dx        ;reset dx
        mov ax, cx
        mov bx, 3
        div bx
        cmp dx, 0
        jz div_by_3       ;is divisible by 3

        xor dx, dx        ; reset dx
        mov ax, cx        
        mov bx, 5
        div bx
        cmp dx, 0
        jz div_by_5       ;is divisible by 5

        ; print number
        mov eax, ecx      ;set print_num arg
