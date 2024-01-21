********************************
*          Hello World         *
********************************
*
        ORG $300
Home    EQU $FC58
Cout    EQU $FDF0
*
Start   JSR Home
        LDX #0
NextCh  LDA HelloStr,X
        BEQ Done
        JSR Cout
        INX
        JMP NextCh
Done    RTS
HelloStr ASC "Hello World!"
        DB 0