********************************
*         10-Add-Number        *
********************************
*
*
        ORG $300
*
N1      EQU $06
N2      EQU $08
RSLT    EQU $0A
*
START   LDA N1
        CLC
        ADC N2
        STA RSLT
END     RTS
        CHK
