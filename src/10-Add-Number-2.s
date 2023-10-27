********************************
*        10-Add-Number-2       *
********************************
*
*
        ORG $300
*
N1      EQU $06
RSLT    EQU $0A
*
START   LDA N1
        CLC
        ADC #$80
        STA RSLT
END     RTS
        CHK
