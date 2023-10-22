********************************
*      04-Counting-Loop2       *
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
        BNE LOOP    ; If Status not Zero, do loop
********************************
* Do the same with Y Register
********************************
        LDY #$FF    ; Count from 255
LOOP2   STY $701    ; Put ASCII Value from Y on Line 7
        DEY         ; Decrement Y
        BNE LOOP2   ; If Status not Zero, do loop
********************************
* Do the same with a Memory Address
********************************
MEM     EQU $6000   ; Memory Address to be manipulated
        LDA #$FF    ; Count from 255
        STA MEM     ; Store start value in Memory
LOOP3   LDA MEM     ; Load each time for printing
        STA $702    ; Put ASCII Value from Memory Address on Line 7
        DEC MEM     ; Decrement Memory Address
        BNE LOOP3   ; If Status not Zero, do loop
END     RTS         ;
        CHK
********************************
