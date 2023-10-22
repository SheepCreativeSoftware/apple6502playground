********************************
*    05-Counting-Loop-Equal    *
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
        BEQ END     ; If X equal Zero then end
        JMP LOOP    ; oterwise LOOP
END     RTS         ;
        CHK
********************************
