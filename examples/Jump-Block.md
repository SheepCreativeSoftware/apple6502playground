A **J**u**MP** instruction needs 3 bytes in memory, which means that the next `jmp` is located right after that in memory.  
Example with ASM code how it look like in memory in comparsion to the ASM code itself (right):

```js
                1           org $400
0400: 4C 0C 04	2           jmp GR
0403: 4C 0E 04	3           jmp DRAWALL
0406: 4C 10 04	4           jmp CONTRL
0409: 4C 12 04	5           jmp VERSION
040C: EA        6   GR      NOP
040D: EA        7           NOP
040E: EA        8   DRAWALL NOP
040F: EA        9           NOP
0410: EA        10  CONTRL  NOP
0411: EA        11          NOP
0412: EA        12  VERSION	NOP
0413: EA        11          NOP
0414: EA        11          RTS

```

```js
    grafix = $400

    dum grafix          => Instructs the Assembler to start with label values at a given index of $400

    gr ds 3             => Therefore the label `gr` starts at $400 and reservse 3 bytes of memory
    drawall ds 3        => then `drawall` must be at $403 and reservse 3 bytes of memory
    controller ds 3     => $406 + 3 bytes
    ds 3                => $409 + 3 bytes
    saveblue ds 3       => $40C + 3 bytes
```