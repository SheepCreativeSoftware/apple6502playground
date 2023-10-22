********************************
*       04-Counting-Loop       *
********************************
*
*
        ORG $300
HOME    EQU $FC58
*
START   JSR HOME    ; Clear the screen
        LDX #$FF    ; Count from 255
LOOP    STX $700    ; Put ASCII Value from X on Line 7
        DEX         ; Decrement X
        BNE LOOP    ; If X not Zero, do loop
END     RTS         ;
        CHK
********************************
