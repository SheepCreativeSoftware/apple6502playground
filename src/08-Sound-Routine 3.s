********************************
*      08-Sound-Routine 3      *
********************************
*
*
        ORG $300
KYBD    EQU $C000   ; Keyboad buffer
STROBE  EQU $C010   ; Clear Keyboard buffer
SPKR    EQU $C030   ; Speaker
*
ENTRY   LDA KYBD
        STA STROBE
        CMP #$80    ; Key pressed?
        BEQ EXIT
        TAY
LOOP    LDA SPKR    ;
DELAY   DEY         ;
        BNE DELAY   ;
        JMP ENTRY   ;
EXIT    RTS
        CHK
* Infinite loop
