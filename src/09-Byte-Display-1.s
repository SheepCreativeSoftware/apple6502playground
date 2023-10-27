********************************
*        09-Byte-Display       *
********************************
*
*
        ORG $300
*
CHR     EQU $06
PRBYTE  EQU $FDDA   ;
COUT    EQU $FDED   ;
PREAD   EQU $FB1E   ;
HOME    EQU $FC58   ;
*
START   JSR HOME    ; CLear Screen
GETCHAR LDX #$00     ;
        JSR PREAD   ; Read Analog input
        STY CHR     ; Store char
        TYA         ; Transfer to Accu
        JSR PRBYTE  ; Print Accu
        LDA #$A0    ; Space
        JSR COUT    ;
        LDA CHR     ; 
        JSR COUT    ;
        LDA #$8D    ; Return
        JSR COUT    ;
        JMP GETCHAR ;
        CHK
* Infinite loop
