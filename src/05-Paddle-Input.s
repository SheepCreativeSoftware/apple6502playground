********************************
*        05-Paddle-Input       *
********************************
*
*
        ORG $300
HOME    EQU $FC58   ; Clears the screen
COUT    EQU $FDED   ; Prints character from Accu
PREAD   EQU $FB1E   ; Printing a Game paddle (Analog Input)
TEMP    EQU $06     ; Counter Register
*
START   JSR HOME
        LDX #$00    ; Start at 0
LOOP    JSR PREAD   ; Get paddle input on Y
        TYA         ; Transfer to accu
        JSR COUT    ; Print accu
        JMP LOOP
        CHK
* Infinite loop!
