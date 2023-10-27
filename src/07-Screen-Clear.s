********************************
*       07-Screen-Clear        *
********************************
*
*
        ORG $300
PTR     EQU $06     ; Pointer
*
ENTRY   LDA #$04    ; Addres of Screen is $400-$4FF
        STA PTR+1   ;
        LDY #$00    ;
        STY PTR     ;
* Sets PTR (6, 7) to $400
START   LDA #$A0    ; Space char
LOOP    STA (PTR),Y ; Store value to pointer address
        INY         ;
        BNE LOOP    ; LOOP until overflow
NXT     INC PTR+1   ;
        LDA PTR+1   ;
        CMP #$08    ;
        BCC START   ;
EXIT    RTS
        CHK
