********************************
*       09-Byte-Display-2      *
********************************
*
*
        ORG $300
*
PRBYTE  EQU $FDDA   ;
COUT    EQU $FDED   ;
PREAD   EQU $FB1E   ;
HOME    EQU $FC58   ;
*
START   JSR HOME    ; CLear Screen
GETCHAR LDX #$00     ;
        JSR PREAD   ; Read Analog input
        TYA         ; Transfer to Accu
        PHA         ; Store in Stack
        JSR PRBYTE  ; Print Accu
        LDA #$A0    ; Space
        JSR COUT    ;
        PLA         ; Load from Stack 
        JSR COUT    ;
        LDA #$8D    ; Return
        JSR COUT    ;
        JMP GETCHAR ;
        CHK
* Infinite loop
