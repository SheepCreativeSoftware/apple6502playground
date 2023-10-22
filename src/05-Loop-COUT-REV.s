********************************
*       05--Loop-COUT-REV      *
********************************
*
*
        ORG $300
HOME    EQU $FC58   ; Clears the screen
COUT    EQU $FDED   ; Prints character from Accu
CTR     EQU $06     ; Counter Register
*
START   JSR HOME
        LDA #$00    ; Start at 255
        STA CTR     
LOOP    LDA CTR     ; Load Counter each time again
        JSR COUT    ; Print it
        INC CTR
        BEQ END     ; Branch to the end when zero is set
        JMP LOOP
END     RTS
        CHK
