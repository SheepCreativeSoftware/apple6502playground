********************************
*      08-Sound-Routine 4      *
********************************
*
*
        ORG $300
PDL     EQU $FB1E   ; Analog input
SPKR    EQU $C030   ; Speaker
*
ENTRY   LDX #$00    ;
        JSR PDL     ; Read analog input
        LDA SPKR    ;
        LDX #$01
        JSR PDL     ; Read analog input
        LDA SPKR    ;
        JMP ENTRY   ;
        CHK
* Infinite loop
