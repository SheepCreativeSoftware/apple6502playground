********************************
*   04-Counting-Loop-Reverse   *
********************************
*
*
        ORG $300
HOME    EQU $FC58
*
START   JSR HOME    ; Clear the screen
        LDX #$00    ; Count from 255
LOOP    STX $700    ; Put ASCII Value from X on Line 7
        INX         ; Decrement X
        BNE LOOP    ; If Status not Zero, do loop
********************************
* Do the same with Y Register
********************************
        LDY #$00    ; Count from 255
LOOP2   STY $701    ; Put ASCII Value from Y on Line 7
        INY         ; Decrement Y
        BNE LOOP2   ; If Status not Zero, do loop
********************************
* Do the same with a Memory Address
********************************
MEM     EQU $6000   ; Memory Address to be manipulated
        LDA #$00    ; Count from 255
        STA MEM     ; Store start value in Memory
LOOP3   LDA MEM     ; Load each time for printing
        STA $702    ; Put ASCII Value from Memory Address on Line 7
        INC MEM     ; Decrement Memory Address
        BNE LOOP3   ; If Status not Zero, do loop
END     RTS         ;
        CHK
********************************
