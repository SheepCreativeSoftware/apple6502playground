********************************
*      08-Sound-Routine 2      *
********************************
*
*
        ORG $300
PITCH   EQU $06
DURATION EQU $07
SPKR    EQU $C030   ; Speaker
*
ENTRY   LDX DURATION ; 
LOOP    LDY PITCH   ;
        LDA SPKR    ;
DELAY   DEY         ;
        BNE DELAY   ;
DRTN    DEX         ;
        BNE LOOP    ;
EXIT    RTS
        CHK
* Infinite loop
