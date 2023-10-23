********************************
*     06-Paddle-Input-CMP      *
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
        CMP #$C1    ; Compare ASCII for "A"
        BCC LOOP    ; LOOP again if less than
        CMP #$DB    ; Compare ASCII "[" Char after "Z"
        BCS LOOP    ; LOOP again if equal or greater
        JSR COUT    ; Print accu (A-Z)
        JMP LOOP
        CHK
* Infinite loop!
********************************
*  CMP Compare with Accu
*  CPX Compare with X-Register
*  CPY Compare with Y-Register
*  BCC Branch if Accu < value
*  BEQ Branch if Accu = value
*  BNE Branch if Accu <> value
*  BCS Branch if Accu >= value
********************************