********************************
*     06-Paddle-Input-CMP      *
********************************
*
*
        ORG $300
HOME    EQU $FC58   ; Clears the screen
KYBD    EQU $C000   ; Keyboard buffer
STROBE  EQU $C010   ; Reset Keyboard Strobe
COUT    EQU $FDED   ; Prints character from Accu
*
START   JSR HOME
LOOP    LDA KYBD    ; Read Keyboard
        CMP #$80    ; Less than $80 means a key is pressed
        BCC LOOP    ; LOOP again if less than 
        STA STROBE  ; Clear Charakter from Keyboard buffer
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