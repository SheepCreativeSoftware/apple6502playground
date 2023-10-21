********************************
*    02-Print-Apple-Simple     *
********************************
*
*
        ORG $300
HOME    EQU $FC58
*
START   JSR HOME    ; Clear the screen
        LDA	#$C1    ; Load ASCII char 'A'
        STA $700    ;
        LDX	#$D0    ; Load ASCII char 'P'
        STX $701    ;
        STX $702    ;
        LDY	#$CC    ; Load ASCII char 'L'
        STY $703    ;
        LDA	#$C5    ; Load ASCII char 'E'
        STA $704    ;
        RTS         ;
END     CHK
********************************
