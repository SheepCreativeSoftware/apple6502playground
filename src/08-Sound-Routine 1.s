********************************
*       08-Sound-Routine       *
********************************
*
*
        ORG $300
PITCH   EQU $06
SPKR    EQU $C030   ; Speaker
*
ENTRY   LDY PITCH   ;
        LDA SPKR    ;
LOOP    DEY         ;
        BNE LOOP    ;
        JMP ENTRY   ;
        CHK
* Infinite loop
