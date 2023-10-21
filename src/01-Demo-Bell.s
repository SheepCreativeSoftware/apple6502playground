********************************
*        01-Demo-Bell          *
********************************
*
*
        ORG $300
BELL    EQU $FBDD
*
START   JSR $FBDD	; Ring the Bell
END     RTS         ; Return
        CHK
********************************
