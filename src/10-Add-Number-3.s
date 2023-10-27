********************************
*        10-Add-Number-3       *
********************************
*
*
        ORG $300
*
N1      EQU $06
INDX    EQU $08
RSLT    EQU $0A
TBL     EQU $300
*
START   LDA N1
        LDX INDX
        CLC
        ADC TBL,X
        STA RSLT
END     RTS
        CHK
