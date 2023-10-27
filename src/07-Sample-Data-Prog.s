********************************
*     07-Sample-Data-Prog      *
********************************
*
*
        ORG $300
HOME    EQU $FC58   ; Clears the screen
COUT    EQU $FDED   ; Prints character from Accu
*
START   JSR HOME
        LDX #$00    ; Start at 0
LOOP    LDA DATA,X  ; Load char after each other
        JSR COUT    ;
        INX         ;
        CPX #$05    ;
        BCC LOOP    ;
        LDA #$8D    ;
        JSR COUT    ;
EXIT    RTS
        CHK
*
DATA    HEX C1D0D0CCC5
*
* DATA = 'APPLE'
* Works as well:
* DATA   ASCII "APPLE"
