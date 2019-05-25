; low memory workspace 
KEYPRESS   EQU 0098h
TEMPO      EQU 00B2h
TEMPO_SCRV EQU 00CBh
FLARIG     EQU 0124h
RAMSIZE    EQU 0131h
CURPOS     EQU 011Eh

ESCAPE     EQU 1Bh

; I/O ports
KEYBOARD  EQU $CD
CASSETTE  EQU $D9

        ORG     0D000h

        ; Entry Point
        ; --- START PROC LD000 ---
LD000:  JP      LD164

LD003:  DB      14h
        DB      "TOP FILE     B"
        DB      0D3h
        DB      07h
        DB      "GENERATE FILE"
        DB      0E6h
        DB      0D1h
        DB      05h
        DB      "EXTEND FILE  ("
        DB      0D2h
        DB      0Eh
        DB      "NEXT RECORDS r"
        DB      0D2h
        DB      10h
        DB      "PREVIOUS REC.!"
        DB      0D3h
        DB      04h
        DB      "DELETE RECORDT"
        DB      0D4h
        DB      09h
        DB      "INSERT REC.  "
        DB      0DFh
        DB      0D3h
        DB      06h
        DB      "FIND RECORD  "
        DB      85h
        DB      0D3h
        DB      12h
        DB      "REPLACE REC. "
        DB      0F5h
        DB      0D4h
        DB      03h
        DB      "CHANGE STRING"
        DB      8Fh
        DB      0D4h
        DB      01h
        DB      "APPEND STRING"
        DB      0Bh
        DB      0D4h
        DB      18h
        DB      "EDITOR EXIT  $"
        DB      0D7h
        DB      02h
        DB      "BOTTOM FILE  "
        DB      17h
        DB      0D3h
        DB      11h
        DB      "QUERY FILE   "
        DB      92h
        DB      0D5h
        DB      15h
        DB      "UNLOAD FILE  c"
        DB      0D7h
        DB      0Ch
        DB      "LOAD FILE    "
        DB      0E0h
        DB      0D7h
        DB      13h
        DB      "FILE SIZE IS M"
        DB      0D8h
        DB      "DELETE OLD FILE ? (Y/N)NO RECORD POINTEDEND OF FILENO MORE SPACECERCANDO "
        DB      80h
        DB      "DAMMI "
        DB      80h


        ; Referenced from D000
LD164:  LD      HL,0206h        
        LD      BC,005Bh        
        LD      DE,0207h        
        LD      (HL),00h
        LDIR
        LD      A,44h           ; 'D'
        LD      (0258h),A
        LD      A,0C2h
        LD      (025Eh),A
        LD      HL,0262h        
        LD      (0200h),HL
        LD      (0202h),HL
        LD      HL,(RAMSIZE)
        LD      BC,0100h        
        SBC     HL,BC
        LD      (0204h),HL
        CALL    LEC8A

        ; Referenced from D208, D22D, D26F, D3E7, D871, D1C5, D2F5, D2ED
        ; --- START PROC LD192 ---
LD192:  CALL    SCROLL
        LD      DE,0ABC5h       
        CALL    LE35B
        LD      A,(00B6h)
        CP      00h
        JR      Z,LD1D7

        ; Referenced from D7DD, D4F2, D67E
        ; --- START PROC LD1A2 ---
LD1A2:  LD      HL,020Ah        
        LD      (HL),00h
        LD      DE,0010h        
        LD      HL,0D003h       
        LD      B,11h

        ; Referenced from D1B5
LD1AF:  CP      (HL)
        JR      Z,LD1C7
        AND     A
        ADC     HL,DE
        DJNZ    LD1AF

        ; Referenced from D58F, D59C, D5AC, D5CE, D1E4
        ; --- START PROC LD1B7 ---
LD1B7:  CALL    LEC4B
        LD      HL,0E0D9h       
        LD      BC,0006h        
        LD      DE,0ABC5h       
        LDIR
        JR      LD192

        ; Referenced from D1B0
        ; --- START PROC LD1C7 ---
LD1C7:  INC     HL
        LD      DE,0ABC5h       
        LD      BC,000Dh        
        LDIR
        EX      DE,HL
        LD      A,(DE)
        LD      L,A
        INC     DE
        LD      A,(DE)
        LD      H,A
        JP      (HL)

        ; Referenced from D1A0
        ; --- START PROC LD1D7 ---
LD1D7:  LD      A,(020Ah)
        CP      05h
        JP      Z,LD230
        CP      09h
        JP      Z,LD39D
        JR      LD1B7

        ; Entry Point
        ; --- START PROC LD1E6 ---
LD1E6:  LD      HL,(0200h)
        LD      DE,(0202h)
        AND     A
        SBC     HL,DE
        JR      Z,LD228
        LD      DE,0ABC5h       
        LD      HL,0D113h       
        LD      BC,0017h        
        LDIR
        LD      DE,0ABDDh       
        CALL    LE35B
        LD      A,(0ABDDh)
        CP      59h             ; 'Y'
        JP      NZ,LD192
        LD      HL,(0202h)
        LD      (0200h),HL
        LD      HL,0000h        
        LD      (0208h),HL
        LD      (0206h),HL
        CALL    SCROLL
        LD      HL,0D014h       
        LD      DE,0ABC5h       
        LD      BC,000Dh        
        LDIR

        ; Referenced from D1F0
LD228:  LD      A,05h
        LD      (020Ah),A
        JP      LD192

        ; Referenced from D1DC
        ; --- START PROC LD230 ---
LD230:  LD      B,H
        LD      C,L
        LD      HL,0000h        
        LD      (0206h),HL
        CALL    LD3EA
        LD      HL,0ABC5h       
        SET     7,(HL)
        LDIR
        LD      HL,0ABC5h       
        RES     7,(HL)
        LD      H,D
        LD      L,E
        SET     7,(HL)
        LD      (0200h),HL

        ; Referenced from D3B9
        ; --- START PROC LD24E ---
LD24E:  LD      HL,(0208h)
        INC     HL
        LD      (0208h),HL
        JR      LD26F

        ; Referenced from D272, D321, D385, D3DF, D40B, D454, D48F, D4F5
        ; Entry Point
        ; --- START PROC LD257 ---
LD257:  LD      A,(0206h)
        CP      00h
        RET     NZ
        LD      A,(0207h)
        CP      00h
        RET     NZ
        LD      HL,0D12Ah       
        LD      DE,0ABC5h       
        LD      BC,0011h        
        LDIR
        POP     HL

        ; Referenced from D255
        ; --- START PROC LD26F ---
LD26F:  JP      LD192

        ; Entry Point
        ; --- START PROC LD272 ---
LD272:  CALL    LD257
        LD      DE,0ABD2h       
        CALL    LE35B
        LD      A,(0ABD2h)
        CP      41h             ; 'A'
        JR      NZ,LD287
        LD      HL,0214h        
        SET     7,(HL)

        ; Referenced from D280
LD287:  LD      HL,0ECA7h       
        LD      BC,0008h        
        CPIR
        JR      Z,LD293

        ; Referenced from D434
        ; --- START PROC LD291 ---
LD291:  LD      A,01h

        ; Referenced from D28F
LD293:  AND     0Fh
        LD      (020Bh),A

        ; Referenced from D34E, D2EA
        ; --- START PROC LD298 ---
LD298:  CALL    SCROLL

        ; Referenced from D2C9
LD29B:  CALL    LD351
        LD      D,H
        LD      E,L
        LD      HL,(0200h)
        AND     A
        SBC     HL,DE
        JR      NZ,LD2BB
        LD      HL,0D13Bh       
        LD      DE,0ABC5h       
        LD      BC,000Bh        
        LDIR
        LD      HL,0000h        
        LD      (0206h),HL
        JR      LD2F0

        ; Referenced from D2A6
LD2BB:  LD      (0206h),DE
        LD      A,(020Ah)
        CP      06h
        JR      NZ,LD2CB
        CALL    LD35A
        JR      LD29B

        ; Referenced from D2C4
LD2CB:  LD      HL,(0206h)
        LD      DE,0ABC5h       

        ; Referenced from D2D5
LD2D1:  LDI
        BIT     7,(HL)
        JR      Z,LD2D1
        LD      HL,0ABC5h       
        RES     7,(HL)
        LD      A,(0214h)
        BIT     7,A
        JR      NZ,LD2F0
        LD      A,(020Bh)
        DEC     A
        LD      (020Bh),A
        JP      NZ,LD298
        JP      LD192

        ; Referenced from D2B9, D2E1
LD2F0:  RES     7,A
        LD      (0214h),A
        JP      LD192

        ; Referenced from D33D, D431
        ; Entry Point
        ; --- START PROC LD2F8 ---
LD2F8:  LD      DE,(0206h)

        ; Referenced from D313
LD2FC:  LD      HL,(0202h)
        AND     A
        SBC     HL,DE
        JR      NZ,LD30A
        DEC     DE

        ; Referenced from D315
LD305:  LD      (0206h),DE
        RET

        ; Referenced from D302
LD30A:  LD      H,D
        LD      L,E

        ; Referenced from D30F
LD30C:  DEC     HL
        BIT     7,(HL)
        JR      Z,LD30C
        LD      D,H
        LD      E,L
        DJNZ    LD2FC
        JR      LD305

        ; Entry Point
        ; --- START PROC LD317 ---
LD317:  LD      HL,(0200h)
        LD      (0206h),HL
        LD      B,02h
        JR      LD33D

        ; Entry Point
        ; --- START PROC LD321 ---
LD321:  CALL    LD257
        LD      DE,0ABD3h       
        CALL    LE35B
        LD      A,(0ABD3h)
        LD      HL,0ECA7h       
        LD      BC,0008h        
        CPIR
        JR      Z,LD339
        LD      A,01h

        ; Referenced from D335
LD339:  AND     0Fh
        LD      B,A
        INC     B

        ; Referenced from D31F
        ; --- START PROC LD33D ---
LD33D:  CALL    LD2F8
        JR      LD349

        ; Entry Point
        ; --- START PROC LD342 ---
LD342:  LD      HL,(0202h)
        DEC     HL
        LD      (0206h),HL

        ; Referenced from D340
        ; --- START PROC LD349 ---
LD349:  LD      A,01h
        LD      (020Bh),A

        ; Referenced from D39B
        ; --- START PROC LD34E ---
LD34E:  JP      LD298

        ; Referenced from D29B, D419, D3A2
        ; --- START PROC LD351 ---
LD351:  LD      HL,(0206h)

        ; Referenced from D357
LD354:  INC     HL
        BIT     7,(HL)
        JR      Z,LD354
        RET

        ; Referenced from D2C6
        ; --- START PROC LD35A ---
LD35A:  LD      DE,0AB91h       

        ; Referenced from D4A4
        ; --- START PROC LD35D ---
LD35D:  LD      A,(020Ch)
        LD      B,A
        LD      HL,(0206h)
        RES     7,(HL)

        ; Referenced from D37A
LD366:  PUSH    HL
        PUSH    DE
        PUSH    BC
        CALL    LE349
        POP     BC
        POP     DE
        POP     HL
        JR      NZ,LD377
        POP     DE
        INC     DE
        INC     DE
        PUSH    DE
        JR      LD37C

        ; Referenced from D36F
LD377:  INC     HL
        BIT     7,(HL)
        JR      Z,LD366

        ; Referenced from D375
LD37C:  LD      IY,(0206h)
        SET     7,(IY+00h)
        RET

        ; Entry Point
        ; --- START PROC LD385 ---
LD385:  CALL    LD257
        LD      DE,0ABD1h       
        CALL    LE35B
        LD      (020Ch),HL
        LD      A,01h
        LD      (020Bh),A
        LD      A,06h
        LD      (020Ah),A
        JR      LD34E

        ; Referenced from D1E1
        ; --- START PROC LD39D ---
LD39D:  LD      B,H
        LD      C,L
        CALL    LD3EA
        CALL    LD351
        LD      (0206h),HL
        CALL    LD3C0
        LD      HL,0ABC5h       
        LD      DE,(0206h)
        LDIR
        LD      HL,(0206h)
        SET     7,(HL)
        JP      LD24E

        ; Referenced from D423, D487
        ; Entry Point
        ; --- START PROC LD3BC ---
LD3BC:  LD      DE,(0200h)

        ; Referenced from D3A8
        ; --- START PROC LD3C0 ---
LD3C0:  LD      H,D
        LD      L,E
        AND     A
        ADC     HL,BC
        PUSH    BC
        LD      (0200h),HL
        LD      H,D
        LD      L,E
        LD      BC,(0206h)
        AND     A
        SBC     HL,BC
        INC     HL
        LD      B,H
        LD      C,L
        LD      H,D
        LD      L,E
        LD      DE,(0200h)
        LDDR
        POP     BC
        RET

        ; Entry Point
        ; --- START PROC LD3DF ---
LD3DF:  CALL    LD257
        LD      A,09h
        LD      (020Ah),A
        JP      LD192

        ; Referenced from D40E, D47F, D808, D238, D39F
        ; --- START PROC LD3EA ---
LD3EA:  LD      HL,(0204h)
        LD      DE,(0200h)
        AND     A
        SBC     HL,DE
        JP      P,LD40A
        CALL    LEC4B
        LD      HL,0D146h       
        LD      DE,0ABC5h       
        LD      BC,000Dh        
        LDIR
        POP     HL
        LD      HL,0D192h       
        PUSH    HL

        ; Referenced from D3F4
        ; --- START PROC LD40A ---
LD40A:  RET

        ; Entry Point
        ; --- START PROC LD40B ---
LD40B:  CALL    LD257
        CALL    LD3EA
        LD      DE,0ABD3h       
        CALL    LE35B
        LD      B,H
        LD      C,L
        CALL    LD351
        LD      (0206h),HL
        LD      DE,(0200h)
        CALL    LD3BC
        LD      DE,(0206h)
        LD      HL,0ABD3h       
        LDIR
        LD      B,02h

        ; Referenced from D46F
        ; --- START PROC LD431 ---
LD431:  CALL    LD2F8
        JP      LD291

        ; Referenced from D463
        ; Entry Point
        ; --- START PROC LD437 ---
LD437:  LD      HL,(0206h)

        ; Referenced from D4D0
        ; --- START PROC LD43A ---
LD43A:  LD      D,H
        LD      E,L
        AND     A
        ADC     HL,BC
        PUSH    HL
        LD      B,H
        LD      C,L
        LD      HL,(0200h)
        AND     A
        SBC     HL,BC
        INC     HL
        LD      B,H
        LD      C,L
        POP     HL
        LDIR
        DEC     DE
        LD      (0200h),DE
        RET

        ; Entry Point
        ; --- START PROC LD454 ---
LD454:  CALL    LD257
        LD      BC,0000h        
        LD      HL,(0206h)

        ; Referenced from D461
LD45D:  INC     HL
        INC     BC
        BIT     7,(HL)
        JR      Z,LD45D
        CALL    LD437
        LD      HL,(0208h)
        DEC     HL
        LD      (0208h),HL

        ; Referenced from D4ED
        ; --- START PROC LD46D ---
LD46D:  LD      B,01h
        JR      LD431

        ; Referenced from D483, D48A
        ; Entry Point
        ; --- START PROC LD471 ---
LD471:  LD      HL,0206h        
        LD      DE,0212h        
        LD      B,02h
        CALL    LEC80
        RET

        ; Referenced from D4BF
        ; Entry Point
        ; --- START PROC LD47D ---
LD47D:  LD      B,H
        LD      C,L
        CALL    LD3EA
        PUSH    BC
        CALL    LD471
        POP     BC
        CALL    LD3BC
        CALL    LD471
        JR      LD4D3

        ; Entry Point
        ; --- START PROC LD48F ---
LD48F:  CALL    LD257
        LD      DE,0ABD3h       
        CALL    LE35B
        LD      (020Ch),HL
        LD      DE,0ABD3h       
        SCF
        ADC     HL,DE
        LD      (020Eh),HL
        CALL    LD35D
        JR      LD4F0

        ; Entry Point
        ; --- START PROC LD4A9 ---
LD4A9:  LD      (0212h),HL
        LD      DE,(020Eh)
        CALL    LE35B
        LD      (0210h),HL

        ; Referenced from D51D
        ; --- START PROC LD4B6 ---
LD4B6:  LD      DE,(020Ch)
        AND     A
        SBC     HL,DE
        JR      Z,LD4D3
        JP      P,LD47D
        LD      H,D
        LD      L,E
        LD      DE,(0210h)
        AND     A
        SBC     HL,DE
        LD      B,H
        LD      C,L
        LD      HL,(0212h)
        CALL    LD43A

        ; Referenced from D48D, D4BD
        ; --- START PROC LD4D3 ---
LD4D3:  LD      BC,(0210h)
        LD      HL,0000h        
        AND     A
        ADC     HL,BC
        JR      Z,LD4E8
        LD      HL,(020Eh)
        LD      DE,(0212h)
        LDIR

        ; Referenced from D4DD
LD4E8:  LD      HL,(0206h)
        SET     7,(HL)
        JP      LD46D

        ; Referenced from D4A7
        ; --- START PROC LD4F0 ---
LD4F0:  LD      A,03h
        JP      LD1A2

        ; Entry Point
        ; --- START PROC LD4F5 ---
LD4F5:  CALL    LD257
        LD      DE,0ABD2h       
        LD      (020Eh),DE
        CALL    LE35B
        LD      (0210h),HL
        LD      HL,(0206h)
        LD      (0212h),HL
        RES     7,(HL)
        LD      BC,0000h        

        ; Referenced from D514
LD510:  INC     HL
        INC     BC
        BIT     7,(HL)
        JR      Z,LD510
        LD      (020Ch),BC
        LD      HL,(0210h)
        JR      LD4B6

        ; Referenced from D538, D73F
        ; Entry Point
        ; --- START PROC LD51F ---
LD51F:  LD      A,0FFh
        LD      (0ABFFh),A
        PUSH    HL
        LD      HL,(0235h)

        ; Referenced from D532
LD528:  CP      (HL)
        JR      NZ,LD52F
        LD      (HL),20h        ; ' '
        POP     HL
        RET

        ; Referenced from D529
LD52F:  LD      (HL),20h        ; ' '
        INC     HL
        JR      LD528

        ; Referenced from D618, D64E
        ; Entry Point
        ; --- START PROC LD534 ---
LD534:  LD      DE,(0235h)
        CALL    LD51F
        CALL    LD727
        PUSH    HL
        LD      HL,0ABFEh       
        CALL    LE35E
        POP     HL
        LD      A,(0239h)
        INC     A
        LD      (0239h),A
        LD      A,(DE)
        RET

        ; Referenced from D5B7, D704, D692, D6B7
        ; Entry Point
        ; --- START PROC LD54F ---
LD54F:  LD      HL,(0206h)
        INC     B
        DEC     B
        JR      NZ,LD55B

        ; Referenced from D572, D587
LD556:  POP     BC
        INC     BC
        INC     BC
        PUSH    BC
        RET

        ; Referenced from D554
LD55B:  JP      M,LD575

        ; Referenced from D561, D56D
LD55E:  INC     HL
        BIT     7,(HL)
        JR      Z,LD55E
        PUSH    HL
        LD      DE,(0200h)
        AND     A
        SBC     HL,DE
        POP     HL
        RET     Z
        DJNZ    LD55E

        ; Referenced from D58C
LD56F:  LD      (0206h),HL
        JP      LD556

        ; Referenced from D55B
LD575:  LD      A,B
        CPL
        INC     A
        LD      B,A

        ; Referenced from D57C, D58A
LD579:  DEC     HL
        BIT     7,(HL)
        JR      Z,LD579
        PUSH    HL
        AND     A
        LD      DE,(0237h)
        SBC     HL,DE
        POP     HL
        JP      M,LD556
        DJNZ    LD579
        JR      LD56F

        ; Referenced from D5BA
        ; Entry Point
        ; --- START PROC LD58E ---
LD58E:  POP     BC
        JP      LD1B7

        ; Entry Point
        ; --- START PROC LD592 ---
LD592:  LD      HL,(0202h)
        LD      BC,(0200h)
        AND     A
        SBC     HL,BC
        JP      Z,LD1B7
        XOR     A
        LD      (0216h),A
        LD      (0215h),A
        LD      HL,(0202h)
        LD      A,(HL)
        CP      0A4h
        JP      NZ,LD1B7
        LD      (0206h),HL
        LD      B,29h           ; ')'

        ; Referenced from D5CC
        ; --- START PROC LD5B4 ---
LD5B4:  PUSH    BC
        LD      B,01h
        CALL    LD54F
        JR      LD58E

        ; Entry Point
        ; --- START PROC LD5BC ---
LD5BC:  LD      HL,(0206h)
        LD      A,(HL)
        CP      0A4h
        JR      Z,LD5F2
        LD      A,(0215h)
        INC     A
        LD      (0215h),A
        POP     BC
        DJNZ    LD5B4
        JP      LD1B7

        ; Referenced from D5E8
LD5D1:  LD      A,2Eh           ; '.'
        LD      (DE),A
        JR      LD62B

        ; Referenced from D61D
LD5D6:  LD      A,(0239h)
        LD      (IY+00h),A
        INC     IY
        PUSH    HL
        PUSH    IY
        POP     HL
        LD      A,L
        LD      HL,022Bh        
        CP      L
        POP     HL
        JR      Z,LD5D1
        INC     DE
        INC     DE
        LD      (0235h),DE
        JR      LD613

        ; Referenced from D5C2
LD5F2:  INC     HL
        LD      (0237h),HL
        CALL    SCROLL
        LD      DE,0ABC4h       
        LD      HL,0D15Dh       
        CALL    LD727
        LD      (0235h),DE
        LD      IY,0217h        

        ; Referenced from D616
LD60A:  LD      A,0FFh
        LD      (0239h),A
        LD      HL,(0202h)
        INC     HL

        ; Referenced from D621, D5F0
LD613:  LD      A,(HL)
        CP      0A4h
        JR      Z,LD60A
        CALL    LD534
        CP      2Ch             ; ','
        JR      Z,LD5D6
        CP      2Eh             ; '.'
        JR      NZ,LD613
        LD      A,(0239h)
        LD      (IY+00h),A
        INC     IY

        ; Referenced from D5D4
LD62B:  LD      A,80h
        LD      (IY+00h),A
        CALL    SCROLL
        LD      DE,0ABC4h       
        LD      HL,0D153h       
        CALL    LD727
        LD      (0235h),DE

        ; Referenced from D64C
LD640:  LD      A,0FFh
        LD      (0239h),A
        LD      HL,(0202h)
        INC     HL

        ; Referenced from D655
LD649:  LD      A,(HL)
        CP      0A4h
        JR      Z,LD640
        CALL    LD534
        CP      2Eh             ; '.'
        JR      Z,LD657
        JR      LD649

        ; Referenced from D721, D653
        ; --- START PROC LD657 ---
LD657:  CALL    SCROLL

        ; Referenced from D695, D6BA
        ; --- START PROC LD65A ---
LD65A:  CALL    LEC4B
        LD      HL,0ABC4h       
        LD      (0235h),HL
        LD      HL,(0237h)
        LD      (0206h),HL
        LD      A,3Fh           ; '?'
        LD      (0ABC4h),A
        LD      DE,0ABC6h       
        CALL    LE35B
        LD      A,20h           ; ' '
        LD      (0ABC4h),A
        LD      A,(00B6h)
        CP      00h
        JP      NZ,LD1A2
        LD      A,(0ABC6h)
        CP      20h             ; ' '
        JR      NZ,LD6AA
        LD      HL,(022Fh)
        LD      (0206h),HL
        LD      A,(0215h)
        LD      B,A
        CALL    LD54F
        JR      LD65A

        ; Entry Point
        ; --- START PROC LD697 ---
LD697:  LD      HL,023Ah        
        LD      DE,0ABC6h       
        LD      BC,001Eh        
        LDIR
        LD      A,(0239h)
        LD      (0216h),A
        JR      LD6BC

        ; Referenced from D686
        ; --- START PROC LD6AA ---
LD6AA:  LD      B,L
        LD      C,B
        LD      (0233h),BC
        LD      A,(0239h)
        LD      (0216h),A

        ; Referenced from D6DB
        ; --- START PROC LD6B6 ---
LD6B6:  LD      B,A
        CALL    LD54F
        JR      LD65A

        ; Referenced from D6A8
        ; --- START PROC LD6BC ---
LD6BC:  LD      BC,(0233h)
        LD      DE,0ABC6h       
        LD      HL,(0206h)
        RES     7,(HL)
        CALL    LE349
        LD      (0231h),HL
        LD      HL,(0206h)
        LD      (022Fh),HL
        SET     7,(HL)
        JR      Z,LD6DD

        ; Referenced from D6E2
LD6D8:  LD      A,(0215h)
        JR      LD6B6

        ; Referenced from D6D6
LD6DD:  LD      HL,(0231h)
        BIT     7,(HL)
        JR      Z,LD6D8
        LD      HL,0ABC6h       
        LD      DE,023Ah        
        LD      BC,001Eh        
        LDIR
        CALL    LEC4B
        LD      IY,0217h        

        ; Referenced from D71F
        ; --- START PROC LD6F6 ---
LD6F6:  LD      A,(IY+00h)
        LD      HL,0216h        
        SUB     (HL)
        LD      B,A
        LD      A,(IY+00h)
        LD      (0216h),A
        CALL    LD54F

        ; Referenced from D707
LD707:  JR      LD707

        ; Entry Point
        ; --- START PROC LD709 ---
LD709:  LD      HL,(0206h)
        LD      DE,(0235h)
        CALL    LD727
        INC     DE
        LD      (0235h),DE
        INC     IY
        LD      A,(IY+00h)
        CP      80h
        JR      NZ,LD6F6
        JP      LD657

        ; Entry Point
        ; --- START PROC LD724 ---
LD724:  JP      WARMBOOT

        ; Referenced from D53B, D710, D5FF, D639, D74D
        ; --- START PROC LD727 ---
LD727:  PUSH    HL
        PUSH    DE

        ; Referenced from D739
LD729:  LD      BC,0ABFCh       
        LD      A,E
        CP      C
        JP      P,LD73E
        LD      A,(HL)
        RES     7,A
        LD      (DE),A
        INC     DE
        INC     HL
        BIT     7,(HL)
        JR      Z,LD729
        POP     BC
        POP     BC
        RET

        ; Referenced from D72E
LD73E:  POP     DE
        CALL    LD51F
        CALL    SCROLL
        POP     HL
        LD      DE,0ABC4h       
        LD      (0235h),DE
        JR      LD727

        ; Referenced from D830, D83C
        ; Entry Point
        ; --- START PROC LD74F ---
LD74F:  LD      HL,(0208h)
        LD      BC,(0112h)
        ADD     HL,BC
        LD      (0208h),HL

        ; Referenced from D763, D7B7, D7E0
        ; --- START PROC LD75A ---
LD75A:  LD      BC,03BFh        
        LD      HL,0A800h       
        JP      LE7F8

        ; Entry Point
        ; --- START PROC LD763 ---
LD763:  CALL    LD75A
        LD      HL,0340h        
        LD      (00FCh),HL
        LD      HL,0A800h       
        LD      (00FAh),HL
        LD      (0100h),HL
        XOR     A
        LD      (0102h),A
        LD      HL,0000h        
        LD      (0105h),HL
        LD      HL,(0202h)
        LD      (0103h),HL

        ; Referenced from D7AC, D7B2
LD785:  LD      HL,(0103h)
        LD      BC,0000h        

        ; Referenced from D78F
LD78B:  INC     HL
        INC     BC
        BIT     7,(HL)
        JR      Z,LD78B
        LD      (0206h),HL
        LD      (00FEh),BC
        CALL    LE702
        LD      HL,(0103h)
        LD      DE,(0206h)
        LD      (0103h),DE
        LD      (0206h),HL
        LD      A,(HL)
        CP      0AFh
        JR      NZ,LD785
        INC     HL
        LD      A,(HL)
        CP      2Ah             ; '*'
        JR      NZ,LD785
        CALL    LE6D4
        CALL    LD75A
        CALL    SCROLL
        LD      HL,0E2DDh       

        ; Referenced from D839
        ; --- START PROC LD7C0 ---
LD7C0:  LD      BC,0009h        
        LD      DE,0ABC5h       
        LDIR
        CALL    SCROLL
        LD      HL,(0206h)
        INC     HL
        CALL    LE0BD

        ; Referenced from D84A
        ; --- START PROC LD7D2 ---
LD7D2:  LD      HL,0000h        
        LD      (0206h),HL
        CALL    SCROLL
        LD      A,13h
        JP      LD1A2

        ; Entry Point
        ; --- START PROC LD7E0 ---
LD7E0:  CALL    LD75A
        LD      HL,0D83Ch       
        LD      (0114h),HL
        LD      HL,0A800h       
        LD      (0107h),HL
        LD      HL,0340h        
        LD      (0109h),HL
        XOR     A
        LD      (010Fh),A
        LD      HL,0000h        
        LD      (010Dh),HL
        LD      (0112h),HL
        LD      HL,(0200h)
        LD      (0110h),HL

        ; Referenced from D828, D82E
LD808:  CALL    LD3EA
        CALL    LE778
        LD      HL,(0110h)
        SET     7,(HL)
        PUSH    HL
        LD      (0206h),HL
        LD      BC,(010Bh)
        ADD     HL,BC
        SET     7,(HL)
        LD      (0110h),HL
        LD      (0200h),HL
        POP     HL
        LD      A,(HL)
        CP      0AFh
        JR      NZ,LD808
        INC     HL
        LD      A,(HL)
        CP      2Ah             ; '*'
        JR      NZ,LD808
        CALL    LD74F
        CALL    SCROLL
        LD      HL,0E0F5h       
        JP      LD7C0

        ; Entry Point
        ; --- START PROC LD83C ---
LD83C:  CALL    LD74F
        LD      HL,0E0D5h       
        LD      DE,0ABC5h       
        LD      BC,000Ah        
        LDIR
        JP      LD7D2

        ; Entry Point
        ; --- START PROC LD84D ---
LD84D:  LD      HL,0208h        
        LD      DE,025Eh        
        PUSH    DE
        CALL    LE6A3
        POP     HL
        LD      DE,0258h        
        PUSH    DE
        CALL    LE4AC
        POP     HL
        LD      DE,0ABD2h       
        CALL    LE5F2
        LD      DE,0ABD8h       
        LD      HL,0D039h       
        LD      BC,0007h        
        LDIR
        JP      LD192

        ; Entry Point
        ; --- START PROC LD874 ---
LD874:  JP      LD968

LD877:  DB      "0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F"
        DB      80h
        DB      "D U M P  P R O G R A MINIZIO:FINE:OK ? (Y/N):YDUMP DI ALTRO1234567890ABCDEF"
        DB      00h
        DB      16h
        DB      95h
        DB      0A8h
        DB      0A6h
        DB      0D8h
        DB      00h
        DB      07h
        DB      0Ah
        DB      0AAh
        DB      0BCh
        DB      0D8h
        DB      00h
        DB      05h
        DB      20h             ; ' '
        DB      0AAh
        DB      0C3h
        DB      0D8h
        DB      11h
        DB      04h
        DB      12h
        DB      0AAh
        DB      16h
        DB      01h
        DB      22h             ; '"'
        DB      0D9h
        DB      11h
        DB      04h
        DB      26h             ; '&'
        DB      0AAh
        DB      16h
        DB      01h
        DB      22h             ; '"'
        DB      0D9h
        DB      00h
        DB      0Bh
        DB      0CAh
        DB      0AAh
        DB      0C8h
        DB      0D8h
        DB      09h
        DB      01h
        DB      0D6h
        DB      0AAh
        DB      0F4h
        DB      00h
        DB      0D3h
        DB      0D8h
        DB      0FFh

        ; Entry Point
        ; --- START PROC LD922 ---
LD922:  LD      HL,0D8E1h       
        LD      C,10h
        LD      DE,0116h        
        LD      B,04h
        DEC     DE

        ; Referenced from D939
LD92D:  INC     DE
        LD      A,(DE)
        PUSH    HL
        PUSH    BC
        LD      B,00h
        CPIR
        POP     BC
        POP     HL
        JR      NZ,LD93C
        DJNZ    LD92D
        CP      A

        ; Referenced from D937
LD93C:  SCF
        RET     NZ
        LD      HL,(00F2h)
        LD      (00F0h),HL
        LD      HL,0116h        
        LD      DE,00F2h        
        LD      B,02h
        CALL    LFFF4
        LD      HL,(00F2h)
        LD      A,H
        LD      H,L
        LD      L,A
        LD      (00F2h),HL

        ; Referenced from D960, D964
        ; --- START PROC LD958 ---
LD958:  SCF
        CCF
        RET

        ; Entry Point
        ; --- START PROC LD95B ---
LD95B:  LD      A,(00F4h)
        CP      59h             ; 'Y'
        JR      Z,LD958
        CP      4Eh             ; 'N'
        JR      Z,LD958
        SCF
        RET

        ; Referenced from D874
        ; --- START PROC LD968 ---
LD968:  LD      HL,(RAMSIZE)
        LD      BC,0100h        
        SBC     HL,BC
        LD      (011Ah),HL
        LD      (011Ch),HL
        LD      HL,0ABC4h       
        LD      (CURPOS),HL
        LD      A,64h           ; 'd'
        LD      (0120h),A
        XOR     A
        LD      (0123h),A
        LD      A,(FLARIG)
        SET     7,A
        LD      (FLARIG),A
        CALL    LFF85

        ; Referenced from D9B8, DA97
        ; --- START PROC LD990 ---
LD990:  CALL    LFFEE
        LD      DE,0A814h       
        LD      H,D
        LD      L,E
        LD      (HL),0A0h
        INC     DE
        LD      BC,0017h        
        LDIR
        LD      DE,0A8D4h       
        LD      H,D
        LD      L,E
        LD      (HL),0A0h
        INC     DE
        LD      BC,0017h        
        LDIR
        LD      HL,0D8F1h       
        CALL    LFF64
        LD      A,(00F4h)
        CP      59h             ; 'Y'
        JR      NZ,LD990
        LD      A,(00F0h)
        AND     0F0h
        LD      (00F0h),A
        CALL    LDA58

        ; Referenced from DA55
LD9C5:  LD      HL,(00F2h)
        AND     A
        LD      DE,(00F0h)
        SBC     HL,DE
        JP      M,LDA75
        LD      HL,(00F0h)
        LD      A,H
        LD      (00F7h),A
        LD      A,L
        LD      (00F8h),A
        LD      B,02h
        LD      DE,00F7h        
        LD      HL,(011Ah)
        INC     HL
        CALL    LFFF1
        LD      HL,(00F0h)
        LD      HL,(011Ah)
        LD      DE,003Dh        
        ADD     HL,DE
        EX      DE,HL
        LD      HL,(00F0h)
        LD      BC,0010h        
        LDIR
        LD      HL,(00F0h)
        LD      D,H
        LD      E,L
        LD      B,10h
        LD      HL,00D0h        
        CALL    LFFF1
        LD      HL,(011Ah)
        LD      DE,0007h        
        ADD     HL,DE
        EX      DE,HL
        LD      HL,00D0h        
        LD      BC,0020h        
        LD      A,20h           ; ' '

        ; Referenced from DA1F
LDA19:  LD      (DE),A
        INC     DE
        LDI
        LDI
        JP      PE,LDA19
        LD      HL,(011Ah)
        LD      BC,003Dh        
        ADD     HL,BC
        LD      B,10h

        ; Referenced from DA3E
LDA2B:  LD      A,(HL)
        BIT     7,A
        JR      NZ,LDA3B
        CP      7Fh             ; ''
        JR      Z,LDA3B
        CP      20h             ; ' '
        JR      Z,LDA3D
        JP      P,LDA3D

        ; Referenced from DA2E, DA32
LDA3B:  LD      (HL),2Eh        ; '.'

        ; Referenced from DA36, DA38
LDA3D:  INC     HL
        DJNZ    LDA2B
        LD      HL,(011Ah)
        LD      (HL),02h
        CALL    LFF88
        LD      HL,(00F0h)
        LD      BC,0010h        
        ADD     HL,BC
        LD      (00F0h),HL
        CALL    LDA58
        JP      LD9C5

        ; Referenced from D9C2, DA52
        ; --- START PROC LDA58 ---
LDA58:  LD      A,(0123h)
        CP      00h
        RET     NZ
        LD      HL,(011Ah)
        LD      (HL),03h
        LD      HL,(011Ah)
        LD      DE,0009h        
        ADD     HL,DE
        EX      DE,HL
        LD      HL,0D877h       
        CALL    LFFE2
        CALL    LFF88
        RET

        ; Referenced from D9CF, DA9A
        ; --- START PROC LDA75 ---
LDA75:  CALL    LFFEE
        LD      BC,000Dh        
        LD      HL,0D8D4h       
        LD      DE,0AB8Bh       
        LDIR
        LD      BC,0009h        
        LD      HL,0D8CAh       
        LDIR
        INC     DE
        CALL    LFFCD
        LD      A,(DE)
        CP      4Eh             ; 'N'
        JP      Z,LFF61
        CP      59h             ; 'Y'
        JP      Z,LD990
        JR      LDA75

LDA9C:  DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh

;$E000
EPROM_BOOT:
        JP      TEST_RAM

;$E003
WARMBOOT:        
        LD      SP,(RAMSIZE)
        CALL    LEF6C
        CALL    LED0F

        ; Referenced from E08A
        ; --- START PROC LE00D ---
LE00D:  NOP
        NOP
        CALL    LEC8A
        LD      HL,0AB40h       
        LD      (HL),2Dh        ; '-'
        LD      D,H
        LD      E,L
        LD      BC,003Fh        
        INC     DE
        JP      LF1DF

        ; Referenced from E04D, E07A
        ; Entry Point
        ; --- START PROC LE020 ---
LE020:  JP      LF1D9

LE023:  DB      0CDh
        DB      8Ah
        DB      0ECh
        DB      11h
        DB      0A7h
        DB      0A9h
        DB      21h             ; '!'
        DB      0C7h
        DB      0E0h
        DB      0CDh
        DB      0C0h
        DB      0E0h
        DB      0C3h
        DB      3Fh             ; '?'
        DB      0EDh

        ; Entry Point
        ; --- START PROC LE032 ---
LE032:  CALL    LEC8A
        CALL    LE18B
        LD      HL,00BBh        
        LD      BC,000Ch        
        CALL    LE172
        CALL    LE144
        LD      HL,00C7h        
        CP      (HL)
        JR      Z,LE04F

        ; Referenced from E06A
        ; Entry Point
        ; --- START PROC LE04A ---
LE04A:  CALL    LE0DF
        JR      LE020

        ; Referenced from E048
        ; Entry Point
        ; --- START PROC LE04F ---
LE04F:  LD      HL,(00C1h)
        LD      BC,(00BDh)
        CALL    LE172
        LD      HL,(00C3h)
        LD      BC,(00BFh)
        CALL    LE172
        CALL    LE144
        LD      HL,00C7h        
        CP      (HL)
        JR      NZ,LE04A
        LD      HL,0E0F5h       
        CALL    LE0E2
        LD      HL,(00C5h)
        XOR     A
        ADD     A,L
        JR      NZ,LE07C
        ADD     A,H
        JR      Z,LE020

        ; Referenced from E077
LE07C:  LD      HL,0E099h       
        CALL    LE0BD
        CALL    LE35B
        LD      A,(0ABD5h)
        CP      59h             ; 'Y'
        JR      NZ,LE00D
        CALL    LEC8A
        CALL    LEC6F
        CALL    LEC8A
        LD      HL,(00C5h)
        JP      (HL)

LE099:  DB      "EXECUTE ? (Y/N) "
        DB      0A0h
        DB      "TAPE OR MONITOR ? "
        DB      0A0h


        ; Referenced from D7CF, E07F, E2A2, FFE5
        ; --- START PROC LE0BD ---
LE0BD:  LD      DE,0ABC5h       

        ; Referenced from E0C5, FFE2
        ; --- START PROC LE0C0 ---
LE0C0:  BIT     7,(HL)
        RET     NZ
        LDI
        JR      LE0C0

LE0C7:  DB      "MONITOR READY"
        DB      0A0h
        DB      "READ ERROR"


        ; Referenced from E04A
        ; --- START PROC LE0DF ---
LE0DF:  LD      HL,0E0D5h       

        ; Referenced from E06F
        ; --- START PROC LE0E2 ---
LE0E2:  LD      BC,000Ah        
        LD      A,07h
        OUT     (0DBh),A
        LD      DE,0A9A7h       
        LDIR
        LD      HL,0A0A0h       
        CALL    LE1BE
        RET

LE0F5:  DB      "END READ  "

        ; Entry Point
        ; --- START PROC LE0FF ---
LE0FF:  PUSH    AF
        LD      A,(00CAh)
        INC     A
        LD      (00CAh),A
        POP     AF
        EI
        RETI

        ; Entry Point
        ; --- START PROC LE10B ---
LE10B:  PUSH    AF
        LD      A,01h
        LD      (00C9h),A
        POP     AF
        EI
        RETI

        ; Referenced from E1BA, E11A
        ; --- START PROC LE115 ---
LE115:  LD      A,(00CAh)
        CP      46h             ; 'F'
        JP      M,LE115
        LD      HL,0E10Bh       
        LD      (0072h),HL

        ; Referenced from E140
LE123:  XOR     A
        LD      (00CAh),A
        LD      (00C9h),A

        ; Referenced from E139
LE12A:  LD      A,(00CAh)
        INC     A
        LD      (00CAh),A
        CALL    WAIT
        LD      A,(00C9h)
        CP      00h
        JR      Z,LE12A
        LD      A,(00CAh)
        CP      40h             ; '@'
        JP      M,LE123
        RET

        ; Referenced from E041, E063, E17A, E765
        ; --- START PROC LE144 ---
LE144:  LD      B,08h
        LD      C,00h

        ; Referenced from E16E
LE148:  XOR     A
        LD      (00CAh),A
        LD      (00C9h),A
        RRC     C
        PUSH    BC

        ; Referenced from E161
LE152:  LD      A,(00CAh)
        INC     A
        LD      (00CAh),A
        CALL    WAIT
        LD      A,(00C9h)
        CP      00h
        JR      Z,LE152
        POP     BC
        LD      A,(00CAh)
        CP      08h
        JP      M,LE16E
        SET     7,C

        ; Referenced from E169
LE16E:  DJNZ    LE148
        LD      A,C
        RET

        ; Referenced from E03E, E056, E060, E189, E762
        ; --- START PROC LE172 ---
LE172:  XOR     A
        CP      B
        JR      NZ,LE178
        CP      C
        RET     Z

        ; Referenced from E174
LE178:  PUSH    BC
        PUSH    HL
        CALL    LE144
        POP     HL
        POP     BC
        LD      (HL),A
        LD      A,(00C7h)
        ADD     A,(HL)
        LD      (00C7h),A
        INC     HL
        DEC     BC
        JR      LE172

        ; Referenced from E035, E758
        ; --- START PROC LE18B ---
LE18B:  LD      A,0FFh
        OUT     (0DBh),A
        LD      A,55h           ; 'U'
        OUT     (0DBh),A
        LD      HL,0E0FFh       
        LD      (0072h),HL
        LD      A,72h           ; 'r'
        OUT     (0DBh),A
        LD      A,97h
        OUT     (0DBh),A
        LD      A,0FEh
        OUT     (0DBh),A
        LD      HL,0A0A0h       
        LD      A,20h           ; ' '
        CALL    LE1C8
        LD      HL,0101h        
        LD      (TEMPO),HL
        XOR     A
        LD      (00C7h),A
        LD      (00CAh),A
        CALL    LE115
        RET

        ; Referenced from E6FF, E2D7, E0F1
        ; --- START PROC LE1BE ---
LE1BE:  LD      (TEMPO),HL
        CALL    WAIT
        XOR     A
        OUT     (0D9h),A
        RET

        ; Referenced from E1E2, E1AA
        ; --- START PROC LE1C8 ---
LE1C8:  LD      (TEMPO),HL
        OUT     (CASSETTE),A
        CALL    WAIT
        RET

; inizializza il registratore e scrive i primi 80 bits di sincrconizzazione
; nel dettaglio:
; 1) scrive la sequenza $FF,$55,$07 sulla porta $DB (inizializza la PIO?)
; 2) alza il bit 4 sulla porta cassetta ($D9) attendendendo un tempo WAIT W=$B0B0 (motore?)
; 3) scrive 80 impulsi con tempo W=$5001 (segnale alto), W=$0101 (segnale basso)
; 4) scrive un impulso con tempo W=$a001 (segnale alto), W=$0101 (segnale basso)
; 5) azzera la locazione $c7
; il segnale tape è il bit 1 della porta $d9 che viene alzato e abbassato

;$E1D1
INIOUT: LD      A,0FFh      ; manda la sequenza $FF,$55,$07
        OUT     (0DBh),A    ; sulla porta $DB
        LD      A,55h       ;    
        OUT     (0DBh),A    ;
        LD      A,07h       ;
        OUT     (0DBh),A    ;

        LD      HL,$B0B0         ; (176+1) * 250us * 176 = ~7 secondi
        LD      A,&b00001000     ; alza il bit 3 sulla porta cassette (bit 3 = motore?)
        CALL    LE1C8            ; scrive su cassetta e attende

        LD      A,01h            ; imposta a 1 il moltiplicatore di WAIT
        LD      (TEMPO+1),A      ; adesso sono 44.25 msec

        LD      B,80             ; 80 bits di sincronismo
        LD      A,50h            ;
        LD      (TEMPO_SCRV),A   ; 
        CALL    SCRV             ;

        LD      A,0A0h           ;
        LD      (TEMPO_SCRV),A   ;
        LD      B,01h            ;
        CALL    SCRV             ;

        XOR     A                ; azzera $C7
        LD      (00C7h),A
        RET

        ; Referenced from E2C6
        ; Entry Point
        ; --- START PROC LE203 ---
LE203:  LD      HL,00BBh        
        LD      B,0Ch

        ; Referenced from E210
LE208:  PUSH    HL
        PUSH    BC
        CALL    LE270
        POP     BC
        POP     HL
        INC     HL
        DJNZ    LE208
        LD      HL,00C7h        
        CALL    LE277
        LD      BC,(00BDh)
        LD      HL,(00C1h)
        CALL    LE25F
        LD      BC,(00BFh)
        LD      HL,(00C3h)
        CALL    LE25F
        LD      HL,00C7h        
        CALL    LE277
        LD      B,50h           ; 'P'
        LD      A,50h           ; 'P'
        LD      (TEMPO_SCRV),A
        CALL    SCRV
        RET

; Scrive tanti bits di sincronismo su tape output quanti sono indicati in B.
;$E23D
SCRV:   PUSH    BC
        LD      A,(TEMPO_SCRV)  ; TEMPO = TEMPO_SCRV
        LD      (TEMPO),A       ; 
        CALL    WAIT            ; attende 81 * 250 = ~20ms

        IN      A,(CASSETTE)    ; setta il bit 1 della porta cassetta
        OR      &b00000010      ;
        OUT     (CASSETTE),A    ;

        LD      A,01h           ; attende 500us
        LD      (TEMPO),A       ;
        CALL    WAIT            ;

        IN      A,(CASSETTE)    ; resetta il bit 1 della porta cassetta
        AND     &b11111101      ;
        OUT     (CASSETTE),A    ;

        POP     BC
        DJNZ    SCRV            ; ripete per B bits
        RET

        ; Referenced from E6EA, E21F, E229, E26E
        ; --- START PROC LE25F ---
LE25F:  XOR     A
        CP      B
        JR      NZ,LE265
        CP      C
        RET     Z

        ; Referenced from E261
LE265:  PUSH    HL
        PUSH    BC
        CALL    LE270
        POP     BC
        POP     HL
        INC     HL
        DEC     BC
        JR      LE25F

        ; Referenced from E20A, E267
        ; --- START PROC LE270 ---
LE270:  LD      A,(00C7h)
        ADD     A,(HL)
        LD      (00C7h),A

        ; Referenced from E6F0, E215, E22F
        ; --- START PROC LE277 ---
LE277:  LD      A,(HL)
        LD      (00C8h),A
        LD      B,08h

        ; Referenced from E299
LE27D:  PUSH    BC
        LD      A,12h
        LD      (TEMPO_SCRV),A
        LD      A,(00C8h)
        RRCA
        LD      (00C8h),A
        BIT     7,A
        JR      NZ,LE293
        LD      A,06h
        LD      (TEMPO_SCRV),A

        ; Referenced from E28C
LE293:  LD      B,01h
        CALL    SCRV
        POP     BC
        DJNZ    LE27D
        RET

        ; Entry Point
        ; --- START PROC LE29C ---
WRITEA:        
LE29C:  CALL    LEC8A
        LD      HL,0E2E6h       
        CALL    LE0BD
        CALL    LE35B
        LD      A,(0ABD4h)
        CP      20h             ; ' '
        JR      Z,LE2C0
        LD      B,H
        LD      C,L
        LD      (00BFh),HL
        LD      DE,0A846h       
        LD      (00C3h),DE
        LD      HL,0ABD4h       
        LDIR

        ; Referenced from E2AD
LE2C0:  CALL    LEC4B
        CALL    INIOUT
        CALL    LE203
        LD      HL,0E2DDh       
        LD      BC,0009h        
        LD      DE,0A9A7h       
        LDIR
        LD      HL,0B0B0h       
        CALL    LE1BE
        JP      LF1D9

LE2DD:  DB      "END WRITEPROGRAM NAME ? "


        ; Referenced from FFDF, E244, E252, E1C1, E159, EAA4, EAAA, E1CD, E131, EAD7, EACB, F191, F1B0
        ; --- START PROC WAIT ---

; WAIT - Aspetta un certo tempo.
; In TEMPO+1 numero di tempi di 250 microsecondi da attendere. 
; In TEMPO un moltiplicatore, NAX = FEFE. 
; Al termine tutti i registri distrutti, anche i registri alternativi.

;$E2F5
WAIT:   EXX
        LD      DE,(TEMPO)
        INC     E
LE2FB:  DEC     E
        JR      NZ,LE300
        EXX
        RET

LE300:  LD      A,(TEMPO+1)
        LD      D,A
        INC     D
LE305:  DEC     D
        JR      Z,LE2FB
        CALL    LE30D
        JR      LE305

LE30D:  LD      B,04h
LE30F:  DJNZ    LE30F
        RET

        ; Referenced from FFDC, E5B2
        ; --- START PROC LE312 ---
LE312:  XOR     A

        ; Referenced from E322, E326
LE313:  LD      A,(DE)
        ADC     A,(HL)
        DAA
        LD      (DE),A
        DJNZ    LE31A
        RET

        ; Referenced from E317
LE31A:  DEC     C
        JR      NZ,LE324
        INC     C
        LD      HL,0E147h       
        DEC     DE
        JR      LE313

        ; Referenced from E31B
LE324:  DEC     DE
        DEC     HL
        JR      LE313

        ; Referenced from FFD9, E5C4, E5EA
        ; --- START PROC LE328 ---
LE328:  XOR     A

        ; Referenced from E338, E33C
LE329:  LD      A,(DE)
        SBC     A,(HL)
        DAA
        LD      (DE),A
        DJNZ    LE330
        RET

        ; Referenced from E32D
LE330:  DEC     C
        JR      NZ,LE33A
        INC     C
        LD      HL,0E147h       
        DEC     DE
        JR      LE329

        ; Referenced from E331
LE33A:  DEC     DE
        DEC     HL
        JR      LE329

        ; Referenced from E346, FFD6
        ; Entry Point
        ; --- START PROC LE33E ---
LE33E:  LD      A,(DE)
        AND     0Fh
        RET     NZ
        LD      A,20h           ; ' '
        LD      (DE),A
        INC     DE
        DJNZ    LE33E
        RET

        ; Referenced from FFD3, D369, D6C8, E34E
        ; --- START PROC LE349 ---
LE349:  LD      A,(DE)
        CP      (HL)
        RET     NZ
        INC     HL
        INC     DE
        DJNZ    LE349
        RET

        ; Referenced from E3CE
        ; --- START PROC LE351 ---
LE351:  SBC     HL,DE
        RET     NZ
        LD      HL,0001h        
        RET

        ; Referenced from FFD0
        ; Entry Point
        ; --- START PROC LE358 ---
LE358:  LD      DE,0ABC4h       

        ; Referenced from D200, D278, D327, D38B, D414, D495, D4B0, D4FF, E082, E2A5, D198, D671, FFCD
        ; --- START PROC LE35B ---
LE35B:  LD      HL,0ABFCh       

        ; Referenced from D542, FFCA
        ; --- START PROC LE35E ---
LE35E:  LD      (00B7h),DE
        AND     A
        SBC     HL,DE
        LD      A,L
        LD      (00B9h),A

        ; Referenced from FFC7, E39C
        ; --- START PROC LE369 ---
LE369:  LD      A,(00B9h)
        LD      B,A
        LD      HL,(00B7h)
        XOR     A
        LD      (00B6h),A

        ; Referenced from E3DF, E3BC, E3C2, E3B6
        ; --- START PROC LE374 ---
LE374:  SET     7,(HL)
        CALL    RDTAST
        PUSH    HL
        PUSH    BC
        LD      HL,0E3E8h       
        LD      BC,0018h        
        CPIR
        POP     BC
        POP     HL
        JR      NZ,LE38C
        LD      (00B6h),A
        JR      LE3C4

        ; Referenced from E385
LE38C:  CP      1Ah
        JR      NZ,LE39E
        RES     7,(HL)
        LD      HL,(00B7h)
        LD      A,(00B9h)
        LD      B,A
        CALL    LE3D3
        JR      LE369

        ; Referenced from E38E
LE39E:  CP      0Dh
        JR      Z,LE3C4
        CP      7Fh             ; ''
        JR      Z,LE3DB
        CP      3Ch             ; '<'
        JR      Z,LE3B8
        DJNZ    LE3AE
        JR      LE3C1

        ; Referenced from E3AA
LE3AE:  CP      3Eh             ; '>'
        JR      Z,LE3B3
        LD      (HL),A

        ; Referenced from E3B0
LE3B3:  RES     7,(HL)
        INC     HL
        JR      LE374

        ; Referenced from E3A8
LE3B8:  LD      A,(00B9h)
        CP      B
        JR      Z,LE374
        RES     7,(HL)
        DEC     HL

        ; Referenced from E3AC, E3E6
        ; --- START PROC LE3C1 ---
LE3C1:  INC     B
        JR      LE374

        ; Referenced from E38A, E3A0
        ; --- START PROC LE3C4 ---
LE3C4:  PUSH    HL
        CALL    LE3D1
        POP     HL
        LD      DE,(00B7h)
        AND     A
        JP      LE351

        ; Referenced from E3C5
        ; --- START PROC LE3D1 ---
LE3D1:  RES     7,(HL)

        ; Referenced from E399, E3D9
        ; --- START PROC LE3D3 ---
LE3D3:  DJNZ    LE3D6
        RET

        ; Referenced from E3D3
LE3D6:  LD      (HL),20h        ; ' '
        INC     HL
        JR      LE3D3

        ; Referenced from E3A4
        ; --- START PROC LE3DB ---
LE3DB:  LD      A,(00B9h)
        CP      B
        JR      Z,LE374
        RES     7,(HL)
        DEC     HL
        LD      (HL),0A0h
        JR      LE3C1

LE3E8:  DB      01h
        DB      02h
        DB      03h
        DB      04h
        DB      05h
        DB      06h
        DB      07h
        DB      08h
        DB      09h
        DB      0Ah
        DB      0Bh
        DB      0Ch
        DB      0Eh
        DB      0Fh
        DB      10h
        DB      11h
        DB      12h
        DB      13h
        DB      14h
        DB      15h
        DB      16h
        DB      17h
        DB      18h
        DB      19h


        ; Referenced from E4F5, E4F9, E4D0, E4D9, E4DE, E41A, E41D
        ; --- START PROC LE400 ---
LE400:  LD      A,(HL)
        AND     3Fh             ; '?'
        LD      C,A
        BIT     6,(HL)
        JR      Z,LE40A
        RES     5,C

        ; Referenced from E406
LE40A:  LD      B,00h
        INC     C
        ADD     HL,BC
        EX      DE,HL
        RET

        ; Referenced from E422, E44F, E42F
        ; --- START PROC LE410 ---
LE410:  RES     5,(HL)
        EX      DE,HL
        BIT     5,(HL)
        EX      DE,HL
        JR      Z,LE41A
        SET     5,(HL)

        ; Referenced from E416
LE41A:  CALL    LE400
        CALL    LE400
        LD      B,C
        RET

        ; Referenced from E4BE
        ; --- START PROC LE422 ---
LE422:  CALL    LE410

        ; Referenced from E42C
LE425:  LD      A,(DE)
        LD      (HL),A
        DEC     HL
        BIT     6,(HL)
        RET     NZ
        DEC     DE
        DJNZ    LE425
        RET

        ; Referenced from E4CB
        ; --- START PROC LE42F ---
LE42F:  CALL    LE410

        ; Referenced from E449
LE432:  LD      A,(DE)
        AND     0Fh
        DJNZ    LE439
        JR      LE44D

        ; Referenced from E435
LE439:  DEC     DE
        LD      C,A
        LD      A,(DE)
        AND     0Fh
        RLCA
        RLCA
        RLCA
        RLCA
        OR      C
        LD      (HL),A
        DEC     HL
        BIT     6,(HL)
        RET     NZ
        DEC     DE
        DJNZ    LE432
        JR      LE44E

        ; Referenced from E437
LE44D:  LD      (HL),A

        ; Referenced from E44B
        ; --- START PROC LE44E ---
LE44E:  RET

        ; Referenced from E4C7
        ; --- START PROC LE44F ---
LE44F:  CALL    LE410

        ; Referenced from E474
LE452:  LD      A,01h
        LD      (00CEh),A
        LD      A,(DE)
        LD      C,A

        ; Referenced from E471
LE459:  AND     0Fh
        OR      (HL)
        LD      (HL),A
        DEC     HL
        BIT     6,(HL)
        RET     NZ
        LD      A,(00CEh)
        CP      00h
        JR      Z,LE473
        XOR     A
        LD      (00CEh),A
        LD      A,C
        RRCA
        RRCA
        RRCA
        RRCA
        JR      LE459

        ; Referenced from E466
LE473:  DEC     DE
        DJNZ    LE452
        RET

        ; Referenced from E82D, E8E8, FFC4, E6A4, E4AD, E5C8
        ; --- START PROC LE477 ---
LE477:  PUSH    HL
        LD      A,(HL)
        AND     3Fh             ; '?'
        LD      B,A
        INC     B
        BIT     7,(HL)
        JR      NZ,LE495
        BIT     6,(HL)
        JR      NZ,LE489
        LD      A,20h           ; ' '
        JR      LE48F

        ; Referenced from E483
LE489:  LD      A,30h           ; '0'

        ; Referenced from E49A
LE48B:  RES     5,B
        RES     5,(HL)

        ; Referenced from E487, E498, E491
LE48F:  INC     HL
        LD      (HL),A
        DJNZ    LE48F
        POP     HL
        RET

        ; Referenced from E47F
LE495:  XOR     A
        BIT     6,(HL)
        JR      Z,LE48F
        JR      LE48B

        ; Referenced from E4BA
        ; --- START PROC LE49C ---
LE49C:  LD      A,(DE)
        CP      (HL)
        JP      M,LE4A2
        LD      A,(HL)

        ; Referenced from E49E
LE4A2:  LD      B,00h
        LD      C,A
        INC     BC
        INC     DE
        INC     HL
        EX      DE,HL
        LDIR
        RET

        ; Referenced from D85C, FFC1, F20D, F22B, E5EF, F0F6
        ; --- START PROC LE4AC ---
LE4AC:  EX      DE,HL
        CALL    LE477
        LD      A,(HL)
        AND     0C0h
        LD      C,A
        LD      A,(DE)
        AND     0C0h
        RRCA
        RRCA
        OR      C
        JR      Z,LE49C
        CP      50h             ; 'P'

        ; Referenced from E4C3
LE4BE:  JP      Z,LE422
        CP      0F0h
        JR      Z,LE4BE
        CP      70h             ; 'p'
        JR      Z,LE44F
        CP      0D0h
        JP      Z,LE42F
        RET

        ; Referenced from E66E, E827, FFBE, E5D0
        ; --- START PROC LE4CF ---
LE4CF:  PUSH    HL
        CALL    LE400
        EX      DE,HL
        POP     HL
        INC     BC
        LDIR
        RET

        ; Referenced from E5AF, E5C1, E5E7
        ; --- START PROC LE4D9 ---
LE4D9:  CALL    LE400
        PUSH    DE
        LD      D,C
        CALL    LE400
        LD      B,C
        LD      C,H
        POP     HL
        RET

        ; Referenced from E661, E687, FFBB
        ; Entry Point
        ; --- START PROC LE4E5 ---
LE4E5:  BIT     6,(HL)
        JR      NZ,LE51B
        LD      A,20h           ; ' '
        BIT     7,(HL)
        JR      Z,LE4F0
        XOR     A

        ; Referenced from E4ED
LE4F0:  LD      (00CDh),A
        PUSH    DE
        PUSH    HL
        CALL    LE400
        PUSH    BC
        CALL    LE400
        LD      B,C
        POP     HL
        LD      C,L
        POP     HL
        POP     DE

        ; Referenced from E509, E50F, E519
LE501:  INC     HL
        INC     DE
        LD      A,(DE)
        CP      (HL)
        RET     NZ
        DEC     C
        JR      Z,LE511
        DJNZ    LE501
        LD      DE,00CCh        
        INC     B
        JR      LE501

        ; Referenced from E507
LE511:  DJNZ    LE515
        CP      A
        RET

        ; Referenced from E511
LE515:  LD      HL,00CCh        
        INC     C
        JR      LE501

        ; Referenced from E4E7
LE51B:  LD      A,(DE)
        AND     20h             ; ' '
        LD      C,A
        LD      A,(HL)
        AND     20h             ; ' '
        CP      C
        RET     NZ
        BIT     5,(HL)
        JR      Z,LE529
        EX      DE,HL

        ; Referenced from FFB8, E526, E5B7
        ; --- START PROC LE529 ---
LE529:  XOR     A
        LD      (00F5h),A
        BIT     7,(HL)
        JR      NZ,LE533
        LD      A,30h           ; '0'

        ; Referenced from E52F
LE533:  LD      (00CDh),A
        LD      A,(DE)
        AND     1Fh
        INC     A
        LD      B,A
        LD      A,(HL)
        AND     1Fh
        INC     A
        LD      C,A

        ; Referenced from E587
LE540:  LD      A,C
        CP      B
        JR      Z,LE555
        JP      M,LE589
        EX      DE,HL
        LD      (00F3h),HL
        LD      HL,00F5h        
        SET     7,(HL)
        LD      HL,00CCh        
        EX      DE,HL
        INC     B

        ; Referenced from E542, E595
LE555:  INC     DE
        INC     HL
        LD      A,(00CDh)
        CP      00h
        LD      A,(DE)
        JR      Z,LE563
        SUB     (HL)
        JR      Z,LE56E
        RET

        ; Referenced from E55D
LE563:  SUB     (HL)
        DAA
        JR      Z,LE56E
        LD      A,00h
        INC     A
        RET     NC
        DEC     A
        DEC     A
        RET

        ; Referenced from E560, E565
LE56E:  DEC     B
        DEC     C
        RET     Z
        LD      A,(00F5h)
        BIT     7,A
        JR      Z,LE57C
        LD      DE,(00F3h)

        ; Referenced from E576
LE57C:  BIT     6,A
        JR      Z,LE583
        LD      HL,(00F1h)

        ; Referenced from E57E
LE583:  XOR     A
        LD      (00F5h),A
        JR      LE540

        ; Referenced from E544
LE589:  LD      (00F1h),HL
        LD      HL,00F5h        
        SET     6,(HL)
        LD      HL,00CCh        
        INC     C
        JR      LE555

        ; Referenced from E691, FFB2, E916
        ; Entry Point
        ; --- START PROC LE597 ---
LE597:  LD      A,01h
        LD      (00CFh),A
        LD      A,(HL)
        XOR     20h             ; ' '
        JR      LE5A6

        ; Referenced from E88F, FFB5, E6C2, E946, E639, E952
        ; --- START PROC LE5A1 ---
LE5A1:  XOR     A
        LD      (00CFh),A
        LD      A,(HL)

        ; Referenced from E59F
        ; --- START PROC LE5A6 ---
LE5A6:  AND     20h             ; ' '
        LD      B,A
        LD      A,(DE)
        AND     20h             ; ' '
        CP      B
        JR      NZ,LE5B5
        CALL    LE4D9
        JP      LE312

        ; Referenced from E5AD
LE5B5:  PUSH    HL
        PUSH    DE
        CALL    LE529
        POP     DE
        POP     HL
        JR      Z,LE5C7
        JP      M,LE5CB
        CALL    LE4D9
        JP      LE328

        ; Referenced from E5BC
LE5C7:  EX      DE,HL
        JP      LE477

        ; Referenced from E5BE
LE5CB:  PUSH    DE
        LD      DE,00D0h        
        PUSH    DE
        CALL    LE4CF
        POP     HL
        POP     DE
        LD      A,(00CFh)
        CP      00h
        JR      Z,LE5E4
        BIT     5,(HL)
        SET     5,(HL)
        JR      Z,LE5E4
        RES     5,(HL)

        ; Referenced from E5DA, E5E0
LE5E4:  EX      DE,HL
        PUSH    HL
        PUSH    DE
        CALL    LE4D9
        CALL    LE328
        POP     HL
        POP     DE
        JP      LE4AC

        ; Referenced from D863, FFA6, F1C3
        ; --- START PROC LE5F2 ---
LE5F2:  LD      A,(HL)
        LD      C,A
        RES     0,C
        AND     1Fh
        LD      B,A
        INC     B
        DEC     DE

        ; Referenced from E609
        ; --- START PROC LE5FB ---
LE5FB:  INC     HL
        INC     DE

        ; Referenced from FFA3, F219
        ; --- START PROC LE5FD ---
LE5FD:  LD      A,(HL)
        BIT     0,C
        JR      NZ,LE608
        CP      30h             ; '0'
        JR      NZ,LE613
        RES     4,A

        ; Referenced from E600, E615
        ; --- START PROC LE608 ---
LE608:  LD      (DE),A
        DJNZ    LE5FB

        ; Referenced from E630
        ; --- START PROC LE60B ---
LE60B:  BIT     5,C
        RET     Z
        LD      A,2Dh           ; '-'
        INC     DE
        LD      (DE),A
        RET

        ; Referenced from E604
        ; --- START PROC LE613 ---
LE613:  SET     0,C
        JR      LE608

        ; Referenced from FFA0
        ; Entry Point
        ; --- START PROC LE617 ---
LE617:  LD      A,(HL)
        LD      C,A
        RES     0,C
        AND     1Fh
        LD      B,A
        INC     B
        DEC     DE

        ; Referenced from E62E
        ; --- START PROC LE620 ---
LE620:  INC     HL
        INC     DE

        ; Referenced from FF9D
        ; --- START PROC LE622 ---
LE622:  LD      A,(HL)
        BIT     0,C
        JR      NZ,LE62D
        CP      30h             ; '0'
        JR      Z,LE632
        SET     0,C

        ; Referenced from E625
LE62D:  LD      (DE),A

        ; Referenced from E633
LE62E:  DJNZ    LE620
        JR      LE60B

        ; Referenced from E629
LE632:  DEC     DE
        JR      LE62E

        ; Referenced from E6CA, E63E
        ; --- START PROC LE635 ---
LE635:  PUSH    HL
        LD      D,H
        LD      E,L
        PUSH    BC
        CALL    LE5A1
        POP     BC
        POP     HL

        ; Referenced from E64F
        ; --- START PROC LE63E ---
LE63E:  DJNZ    LE635
        RET

        ; Referenced from E65B, E680, E6AA
        ; --- START PROC LE641 ---
LE641:  LD      HL,00F9h        
        LD      (HL),01h
        DEC     HL
        XOR     A
        LD      (HL),A
        DEC     HL
        LD      (HL),A
        DEC     HL
        LD      (HL),0C2h
        LD      B,C
        JR      LE63E

        ; Referenced from FFA9
        ; Entry Point
        ; --- START PROC LE651 ---
LE651:  LD      A,(HL)
        AND     0E0h
        CP      0C0h
        RET     NZ
        PUSH    DE
        PUSH    HL
        LD      C,11h
        CALL    LE641
        POP     DE
        PUSH    DE
        PUSH    BC
        CALL    LE4E5
        POP     BC
        POP     HL
        POP     DE
        RET     Z
        RET     P
        PUSH    DE
        PUSH    BC
        LD      DE,00D0h        
        CALL    LE4CF
        POP     BC
        POP     DE
        XOR     A
        LD      (DE),A
        INC     DE
        LD      (DE),A
        CALL    LE67B
        DEC     DE

        ; Referenced from E677
        ; --- START PROC LE67B ---
LE67B:  LD      B,08h

        ; Referenced from E69B
LE67D:  DEC     C
        PUSH    BC
        PUSH    DE
        CALL    LE641
        PUSH    HL
        LD      DE,00D0h        
        CALL    LE4E5
        POP     HL
        JP      M,LE69E
        LD      DE,00D0h        
        CALL    LE597
        POP     DE
        LD      A,(DE)
        RLCA
        SET     0,A

        ; Referenced from E6A1
LE699:  LD      (DE),A
        POP     BC
        DJNZ    LE67D
        RET

        ; Referenced from E68B
LE69E:  POP     DE
        LD      A,(DE)
        RLCA
        JR      LE699

        ; Referenced from D854, FFAF, F206, F223
        ; --- START PROC LE6A3 ---
LE6A3:  EX      DE,HL
        CALL    LE477
        PUSH    HL
        LD      C,01h
        CALL    LE641
        LD      A,(DE)
        LD      B,A
        INC     DE
        LD      A,(DE)
        LD      C,A
        LD      A,B
        POP     DE
        CALL    LE6B8
        LD      A,C

        ; Referenced from FFAC, E6B4
        ; --- START PROC LE6B8 ---
LE6B8:  LD      B,08h

        ; Referenced from E6D1
LE6BA:  PUSH    BC
        PUSH    AF
        BIT     0,A
        JR      Z,LE6C7
        PUSH    DE
        PUSH    HL
        CALL    LE5A1
        POP     HL
        POP     DE

        ; Referenced from E6BE
LE6C7:  LD      B,01h
        PUSH    DE
        CALL    LE635
        POP     DE
        POP     AF
        POP     BC
        RRCA
        DJNZ    LE6BA
        RET

        ; Referenced from D7B4, FF94
        ; Entry Point
        ; --- START PROC LE6D4 ---
LE6D4:  LD      A,(0102h)
        BIT     0,A
        JR      NZ,LE6E0
        LD      HL,(0100h)
        LD      (HL),0FFh

        ; Referenced from E6D9, E733
        ; --- START PROC LE6E0 ---
LE6E0:  CALL    INIOUT
        LD      HL,(00FAh)
        LD      BC,(00FCh)
        CALL    LE25F
        LD      HL,00C7h        
        CALL    LE277
        LD      B,50h           ; 'P'
        LD      A,B
        LD      (TEMPO_SCRV),A
        CALL    SCRV
        LD      HL,0B0B0h       

        ; Referenced from E776
        ; --- START PROC LE6FF ---
LE6FF:  JP      LE1BE

        ; Referenced from D798, FF9A
        ; --- START PROC LE702 ---
LE702:  LD      HL,(00FAh)
        LD      DE,(00FCh)
        ADD     HL,DE
        LD      A,(0102h)
        BIT     0,A
        JR      Z,LE73E
        LD      DE,(0100h)
        AND     A
        SBC     HL,DE
        JR      Z,LE733

        ; Referenced from E74C, E74E, E73C
LE71A:  LD      HL,(0103h)
        LD      DE,(0100h)
        LD      BC,(00FEh)
        LDIR
        LD      (0100h),DE
        LD      HL,(0105h)
        INC     HL
        LD      (0105h),HL
        RET

        ; Referenced from E718, E756
LE733:  CALL    LE6E0
        LD      HL,(00FAh)
        LD      (0100h),HL
        JR      LE71A

        ; Referenced from E70F
LE73E:  LD      BC,(00FEh)
        LD      DE,(0100h)
        AND     A
        SBC     HL,DE
        SCF
        SBC     HL,BC
        JR      Z,LE71A
        JP      P,LE71A
        LD      HL,(0100h)
        LD      (HL),0FFh
        JR      LE733

        ; Referenced from E783
        ; --- START PROC LE758 ---
LE758:  CALL    LE18B
        LD      HL,(0107h)
        LD      BC,(0109h)
        CALL    LE172
        CALL    LE144
        LD      HL,00C7h        
        CP      (HL)
        LD      HL,(0114h)
        JR      Z,LE773
        POP     DE
        PUSH    HL

        ; Referenced from E76F
LE773:  LD      HL,0A0A0h       
        JR      LE6FF

        ; Referenced from D80B, FF97
        ; --- START PROC LE778 ---
LE778:  LD      HL,(010Dh)
        LD      BC,0000h        
        AND     A
        SBC     HL,BC
        JR      NZ,LE78C
        CALL    LE758
        LD      HL,(0107h)
        LD      (010Dh),HL

        ; Referenced from E781
LE78C:  LD      HL,(010Dh)
        LD      DE,(0110h)
        LD      A,(010Fh)
        BIT     0,A
        JR      NZ,LE7C1
        RES     7,(HL)

        ; Referenced from E7A0
LE79C:  LDI
        BIT     7,(HL)
        JR      Z,LE79C
        EX      DE,HL
        LD      BC,(0110h)
        AND     A
        SBC     HL,BC
        LD      (010Bh),HL
        EX      DE,HL
        LD      A,(HL)
        CP      0FFh

        ; Referenced from E7D4
LE7B1:  JR      NZ,LE7B6
        LD      HL,0000h        

        ; Referenced from E7B1
LE7B6:  LD      (010Dh),HL
        LD      HL,(0112h)
        INC     HL
        LD      (0112h),HL
        RET

        ; Referenced from E798
LE7C1:  LD      BC,(010Bh)
        LDIR
        EX      DE,HL
        LD      HL,(0107h)
        LD      BC,(0109h)
        ADD     HL,BC
        AND     A
        SBC     HL,DE
        EX      DE,HL
        JR      LE7B1

        ; Referenced from E7F0
        ; Entry Point
        ; --- START PROC LE7D6 ---
LE7D6:  LD      HL,0116h        
        LD      BC,0600h        

        ; Referenced from E7EE
LE7DC:  LD      A,(HL)
        CP      20h             ; ' '
        JR      Z,LE7EC
        AND     0Fh
        LD      E,A
        LD      A,C
        RLCA
        RLCA
        RLCA
        RLCA
        OR      E
        OUT     (0DFh),A

        ; Referenced from E7DF
LE7EC:  INC     C
        INC     HL
        DJNZ    LE7DC
        JR      LE7D6

        ; Entry Point
        ; --- START PROC LE7F2 ---
LE7F2:  LD      HL,0116h        
        LD      BC,0005h        

        ; Referenced from D760
        ; --- START PROC LE7F8 ---
LE7F8:  LD      D,H
        LD      E,L
        INC     DE
        LD      (HL),20h        ; ' '
        LDIR
        RET

        ; Referenced from E843
        ; Entry Point
        ; --- START PROC LE800 ---
LE800:  RES     5,(HL)
        EX      DE,HL
        RES     5,(HL)
        JR      LE84A

        ; Referenced from FF91
        ; Entry Point
        ; --- START PROC LE807 ---
LE807:  LD      A,(HL)
        AND     0C0h
        CP      0C0h
        RET     NZ
        LD      A,(DE)
        AND     0C0h
        CP      0C0h
        RET     NZ
        LD      A,(HL)
        AND     1Fh
        INC     A
        SLA     A
        LD      (00B4h),A
        LD      (00F8h),DE
        LD      (00F6h),HL
        EX      DE,HL
        LD      DE,00D0h        
        CALL    LE4CF
        LD      HL,(00F8h)
        CALL    LE477
        LD      HL,(00F6h)
        LD      A,(HL)
        AND     20h             ; ' '
        LD      B,A
        LD      A,(00D0h)
        AND     20h             ; ' '
        CP      B
        LD      DE,00D0h        
        LD      HL,(00F8h)
        JR      Z,LE800
        SET     5,(HL)
        EX      DE,HL
        SET     5,(HL)

        ; Referenced from E805
        ; --- START PROC LE84A ---
LE84A:  LD      HL,(00F6h)
        LD      B,00h
        LD      A,(00B4h)
        SRL     A
        LD      C,A
        ADD     HL,BC
        LD      (00F6h),HL
        XOR     A
        LD      (00B5h),A

        ; Referenced from E8A9
LE85D:  LD      A,(00B4h)
        CP      00h
        RET     Z
        DEC     A
        LD      (00B4h),A
        LD      DE,(00F6h)
        LD      A,(DE)
        LD      HL,00B5h        
        BIT     7,(HL)
        JR      Z,LE8AB
        RES     7,(HL)
        SRL     A
        SRL     A
        SRL     A
        SRL     A
        DEC     DE
        LD      (00F6h),DE

        ; Referenced from E8AF
LE882:  CP      00h
        JR      Z,LE895
        LD      B,A

        ; Referenced from E893
LE887:  PUSH    BC
        LD      HL,00D0h        
        LD      DE,(00F8h)
        CALL    LE5A1
        POP     BC
        DJNZ    LE887

        ; Referenced from E884
LE895:  LD      A,(00D0h)
        AND     1Fh
        INC     A
        LD      C,A
        LD      B,00h
        LD      HL,00D2h        
        ADD     HL,BC
        LD      B,C
        XOR     A

        ; Referenced from E8A7
LE8A4:  DEC     HL
        RLD
        DJNZ    LE8A4
        JR      LE85D

        ; Referenced from E871
LE8AB:  SET     7,(HL)
        AND     0Fh
        JR      LE882

        ; Referenced from FF8E
        ; Entry Point
        ; --- START PROC LE8B1 ---
LE8B1:  LD      A,(BC)
        AND     0C0h
        CP      0C0h
        RET     NZ
        LD      A,(HL)
        AND     0C0h
        CP      0C0h
        RET     NZ
        LD      A,(DE)
        AND     0C0h
        CP      0C0h
        RET     NZ
        LD      (00F6h),HL
        LD      (00F8h),DE
        LD      (00B0h),BC
        LD      A,(DE)
        SLA     A
        AND     40h             ; '@'
        LD      E,A
        LD      A,(HL)
        SLA     A
        SLA     A
        AND     80h
        OR      E
        LD      (00B5h),A
        RES     5,(HL)
        LD      HL,(00F8h)
        RES     5,(HL)
        LD      H,B
        LD      L,C
        CALL    LE477
        XOR     A
        LD      E,A

        ; Referenced from E907
LE8ED:  LD      B,A
        LD      HL,(00F8h)
        LD      A,(HL)
        AND     1Fh
        LD      C,A
        XOR     A
        INC     C
        INC     HL
        RLD
        JR      NZ,LE909
        RRD
        ADD     HL,BC
        LD      B,C

        ; Referenced from E903
LE900:  DEC     HL
        RLD
        DJNZ    LE900
        INC     E
        XOR     A
        JR      LE8ED

        ; Referenced from E8FA
LE909:  RRD
        LD      A,E
        LD      (00B4h),A

        ; Referenced from E949, E96E
LE90F:  LD      DE,(00F6h)
        LD      HL,(00F8h)
        CALL    LE597
        LD      HL,(00F6h)
        BIT     5,(HL)
        JR      NZ,LE94B
        LD      A,(00B4h)
        LD      B,A
        LD      HL,00D1h        
        LD      A,01h
        BIT     0,B
        JR      Z,LE92F
        LD      A,10h

        ; Referenced from E92B
LE92F:  LD      (HL),A
        SRL     B
        LD      C,B
        INC     B

        ; Referenced from E937
LE934:  INC     HL
        LD      (HL),00h
        DJNZ    LE934
        LD      A,0C0h
        OR      C
        LD      (00D0h),A
        LD      HL,00D0h        
        LD      DE,(00B0h)
        CALL    LE5A1
        JR      LE90F

        ; Referenced from E91E
LE94B:  LD      HL,(00F8h)
        LD      DE,(00F6h)
        CALL    LE5A1
        LD      A,(00B4h)
        CP      00h
        JR      Z,LE970
        DEC     A
        LD      (00B4h),A
        LD      HL,(00F8h)
        LD      A,(HL)
        AND     1Fh
        INC     A
        LD      B,A
        XOR     A

        ; Referenced from E96C
LE969:  INC     HL
        RRD
        DJNZ    LE969
        JR      LE90F

        ; Referenced from E95A
LE970:  LD      A,(00B5h)
        LD      B,A
        BIT     7,B
        JR      Z,LE97D
        LD      HL,(00F6h)
        SET     5,(HL)

        ; Referenced from E976
LE97D:  BIT     6,B
        JR      Z,LE986
        LD      HL,(00F8h)
        SET     5,(HL)

        ; Referenced from E97F
LE986:  LD      A,B
        AND     0C0h
        RET     Z
        CP      0C0h
        RET     Z
        LD      HL,(00B0h)
        SET     5,(HL)
        RET

        ; Referenced from FF8B
        ; Entry Point
        ; --- START PROC LE993 ---
LE993:  LD      A,(DE)
        AND     1Fh
        INC     A
        LD      C,A
        LD      B,00h
        EX      DE,HL
        ADD     HL,BC
        EX      DE,HL
        LD      A,20h           ; ' '

        ; Referenced from E9A3
LE99F:  CP      (HL)
        JR      NZ,LE9A5
        DEC     HL
        JR      LE99F

        ; Referenced from E9A0, E9AB
LE9A5:  LDD
        JP      PO,LE9B8
        CP      (HL)
        JR      NZ,LE9A5
        LD      HL,0ECA5h       

        ; Referenced from E9B6
LE9B0:  LDD
        JP      PO,LE9B8
        INC     HL
        JR      LE9B0

        ; Referenced from E9A7, E9B2
LE9B8:  EX      DE,HL
        RET

        ; Referenced from FF88
        ; --- START PROC LE9BA ---
LE9BA:  LD      HL,(011Ch)
        SET     7,(HL)
        LD      A,0CEh
        CP      (HL)
        JR      NZ,LE9CE
        LD      (HL),31h        ; '1'
        LD      A,(0123h)
        CP      00h
        CALL    NZ,LEA3A

        ; Referenced from E9C2
LE9CE:  LD      HL,(011Ch)
        LD      B,00h
        LD      A,(0120h)
        LD      C,A
        LD      A,20h           ; ' '
        ADD     HL,BC

        ; Referenced from E9DD
LE9DA:  DEC     HL
        DEC     BC
        CP      (HL)
        JR      Z,LE9DA
        BIT     7,(HL)
        JR      Z,LE9E4
        INC     BC

        ; Referenced from E9E1
LE9E4:  LD      B,C
        LD      HL,(011Ch)

        ; Referenced from E9F1
LE9E8:  INC     HL
        LD      A,(HL)
        PUSH    BC
        PUSH    HL
        CALL    PRICAR
        POP     HL
        POP     BC
        DJNZ    LE9E8
        LD      A,0Dh
        CALL    PRICAR
        LD      HL,(011Ch)
        LD      A,(HL)
        AND     0Fh
        LD      B,A
        CALL    LEA21
        LD      HL,FLARIG        
        BIT     7,(HL)
        JR      Z,LEA1B

        ; Referenced from FF85
        ; --- START PROC LEA09 ---
LEA09:  LD      HL,(011Ch)
        INC     HL
        LD      (HL),20h        ; ' '
        LD      D,H
        LD      E,L
        INC     DE
        LD      A,(0120h)
        LD      C,A
        LD      B,00h
        DEC     BC
        LDIR

        ; Referenced from EA07
        ; --- START PROC LEA1B ---
LEA1B:  LD      HL,(011Ch)
        LD      (HL),31h        ; '1'
        RET

        ; Referenced from FF82, E9FF
        ; --- START PROC LEA21 ---
LEA21:  INC     B

        ; Referenced from EA38
LEA22:  DJNZ    LEA25
        RET

        ; Referenced from EA22
LEA25:  PUSH    BC
        LD      A,0Ah
        CALL    PRICAR
        LD      A,(0123h)
        INC     A
        LD      (0123h),A
        POP     BC
        LD      D,A
        LD      A,(0122h)
        CP      D
        JR      NZ,LEA22

        ; Referenced from FF7F, EA52, E9CB
        ; --- START PROC LEA3A ---
LEA3A:  LD      A,(0123h)
        LD      B,A
        LD      A,(0121h)
        PUSH    AF
        PUSH    BC
        LD      A,0Ah
        CALL    PRICAR
        LD      A,(0123h)
        INC     A
        LD      (0123h),A
        POP     BC
        POP     AF
        SUB     B
        JR      NZ,LEA3A
        LD      (0123h),A
        RET

        ; Referenced from FF7C, EB7B, EB84, EB89, EA45, EA28, E9EC, E9F5
        ; --- START PROC PRICAR ---

; Consente di stampare il carattere contenuto in A sulla LA36 o sul video
; a seconda se il bit ZERO di FLARIG è 1 o 0.
;$EA58
PRICAR:	
        LD      HL,FLARIG        
        BIT     0,(HL)
        JR      NZ,PRLA36
        CP      0Ah
        JP      Z,SCROLL
        CP      07h
        JR      Z,PRLA36
        CP      0Dh
        JR      NZ,LEA76
        CALL    LEA8D
        
RESETCURPOS:
        LD      HL,0ABC4h       
        LD      (CURPOS),HL
        RET

; prints character to video        
LEA76:  LD      HL,(CURPOS)
        LD      D,A
        LD      A,0FAh
        CP      L
        LD      A,D
        JR      NZ,LEA87
        LD      L,0C4h
        PUSH    HL
        CALL    SCROLL
        POP     HL
LEA87:  LD      (HL),A
        INC     HL
        LD      (CURPOS),HL
        RET

; prints character 0Dh to video
LEA8D:  LD      A,50h           ; 'P'

        ; Referenced from FF76
        ; --- START PROC LEA8F ---
LEA8F:  LD      (TEMPO),A

        ; Referenced from EAAD
LEA92:  LD      HL,KEYPRESS        
        BIT     7,(HL)
        JR      NZ,LEAAF
        LD      HL,0ABF9h       
        SET     7,(HL)
        PUSH    HL
        LD      A,30h           ; '0'
        LD      (TEMPO+1),A
        CALL    WAIT
        POP     HL
        RES     7,(HL)
        CALL    WAIT
        JR      LEA92

        ; Referenced from EA97
LEAAF:  LD      A,(HL)
        RES     7,A
        LD      (HL),A
        PUSH    HL
        LD      HL,0ECA6h       
        LD      BC,0009h        
        CPIR
        POP     HL
        RET     NZ
        SET     7,(HL)
        AND     0Fh
        SLA     A
        SLA     A
        SLA     A
        LD      (TEMPO+1),A
        CALL    WAIT
        RET

        ; Referenced from EAEA, EB00
        ; --- START PROC LEACF ---
LEACF:  PUSH    AF
        PUSH    BC
        LD      HL,0C06h        
        LD      (TEMPO),HL
        CALL    WAIT
        POP     BC
        POP     AF
        RET

; Outputs character in A to printer LA36
;$EADD        
PRLA36: SET     7,A
        LD      (00C8h),A
        LD      B,09h
        IN      A,(0D9h)
        SET     7,A
LEAE8:  OUT     (0D9h),A
        CALL    LEACF
        LD      HL,00C8h        
        BIT     0,(HL)
        SET     7,A
        JR      Z,LEAF8
        RES     7,A
LEAF8:  RRC     (HL)
        DJNZ    LEAE8
        RES     7,A
        OUT     (0D9h),A
        CALL    LEACF
        RET

        ; Referenced from FF70, F232, F1C6
        ; --- START PROC LEB04 ---
LEB04:  PUSH    HL
        DEC     DE
        PUSH    IX
        LD      IX,00C9h        
        RES     0,(IX+00h)
        LD      A,(HL)
        AND     1Fh
        INC     A
        LD      C,A
        LD      B,03h

        ; Referenced from EB1B
LEB17:  INC     C
        SUB     B
        JR      Z,LEB1E
        JP      P,LEB17

        ; Referenced from EB19
LEB1E:  ADD     A,B
        DEC     C
        LD      B,A

        ; Referenced from EB3E
LEB21:  INC     HL
        INC     DE
        LD      A,(HL)

        ; Referenced from EB45
LEB24:  BIT     0,(IX+00h)
        JR      NZ,LEB3A
        CP      30h             ; '0'
        JR      Z,LEB38
        CP      2Eh             ; '.'
        JR      Z,LEB38
        SET     0,(IX+00h)
        JR      LEB3A

        ; Referenced from EB2C, EB30
LEB38:  LD      A,20h           ; ' '

        ; Referenced from EB28, EB36
LEB3A:  LD      (DE),A
        DEC     C
        JR      Z,LEB47
        DJNZ    LEB21
        LD      A,2Eh           ; '.'
        LD      B,04h
        INC     DE
        JR      LEB24

        ; Referenced from EB3C
LEB47:  POP     IX
        POP     HL
        INC     DE
        BIT     5,(HL)
        RET     Z
        LD      A,2Dh           ; '-'
        LD      (DE),A
        RET

        ; Referenced from FF6D
        ; Entry Point
        ; --- START PROC LEB52 ---
LEB52:  LD      HL,0ABC4h       

        ; Referenced from FF6A
        ; --- START PROC LEB55 ---
LEB55:  LD      DE,0AC00h       

        ; Referenced from FF67
        ; --- START PROC LEB58 ---
LEB58:  SET     7,(HL)
        PUSH    HL
        EX      DE,HL
        LD      A,20h           ; ' '

        ; Referenced from EB60
LEB5E:  DEC     HL
        CP      (HL)
        JR      Z,LEB5E
        BIT     7,(HL)
        LD      B,01h
        JR      NZ,LEB6D
        AND     A
        INC     HL
        SBC     HL,DE
        LD      B,L

        ; Referenced from EB66
LEB6D:  POP     HL
        RES     7,(HL)
        CALL    LEB76
        JP      SCROLL

        ; Referenced from EB70
        ; --- START PROC LEB76 ---
LEB76:  DEC     HL

        ; Referenced from EB80
LEB77:  INC     HL
        LD      A,(HL)
        PUSH    HL
        PUSH    BC
        CALL    PRICAR
        POP     BC
        POP     HL
        DJNZ    LEB77
        LD      A,0Dh
        CALL    PRICAR
        LD      A,0Ah
        CALL    PRICAR
        RET

LEB8D:  DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh


        ; Referenced from FFF4, EFC5, EE4E, EDFD
        ; --- START PROC LEC00 ---
LEC00:  LD      A,B
        CP      00h
        RET     Z

        ; Referenced from EC14
LEC04:  CALL    LEC17
        RLA
        RLA
        RLA
        RLA
        AND     0F0h
        LD      C,A
        CALL    LEC17
        OR      C
        LD      (DE),A
        INC     DE
        DJNZ    LEC04
        RET

        ; Referenced from EC04, EC0E
        ; --- START PROC LEC17 ---
LEC17:  LD      A,(HL)
        SUB     30h             ; '0'
        CP      0Ah
        JR      C,LEC20
        SUB     07h

        ; Referenced from EC1C
LEC20:  INC     HL
        RET

        ; Referenced from EE6B, EE81, FFF1, EC31, EF2A
        ; --- START PROC LEC22 ---
LEC22:  LD      A,(DE)
        RRA
        RRA
        RRA
        RRA
        CALL    LEC34
        INC     HL
        LD      A,(DE)
        CALL    LEC34
        INC     HL
        INC     DE
        DJNZ    LEC22
        RET

        ; Referenced from EC27, EC2C
        ; --- START PROC LEC34 ---
LEC34:  AND     0Fh
        CP      0Ah
        JR      C,LEC3C
        ADD     A,07h

        ; Referenced from EC38
LEC3C:  ADD     A,30h           ; '0'
        LD      (HL),A
        RET

;
; SCROLL Scrolla il video il alto di una riga e ripulisce 
; la riga più in basso
;
;$EC40        
SCROLL: LD      HL,0A840h       
        LD      DE,0A800h       
        LD      BC,03C0h        
        LDIR
LEC4B:  LD      HL,0ABC0h       
        LD      B,3Fh           ; '?'
LEC50:  LD      (HL),20h        ; ' '
        INC     HL
        DJNZ    LEC50
        RET

        ; Referenced from EF06, EF18
        ; Entry Point
        ; --- START PROC LEC56 ---
LEC56:  LD      B,0Ch
        LD      IX,007Eh        

        ; Referenced from EC6C
        ; --- START PROC LEC5C ---
LEC5C:  INC     IX
        INC     IX

        ; Referenced from EE76, EE8A, EE06
        ; --- START PROC LEC60 ---
LEC60:  LD      A,(IX+00h)
        LD      C,(IX+01h)
        LD      (IX+01h),A
        LD      (IX+00h),C
        DJNZ    LEC5C
        RET

        ; Referenced from E08F, ED07, FFE8, EE9F, EF44
        ; --- START PROC LEC6F ---
LEC6F:  LD      HL,0A800h       
        LD      DE,0AC00h       
        LD      B,00h
        CALL    LEC80
        CALL    LEC80
        CALL    LEC80

        ; Referenced from D479, FFEB, EC87, EC77, EC7A, EC7D, EEF4
        ; --- START PROC LEC80 ---
LEC80:  LD      C,(HL)
        LD      A,(DE)
        LD      (HL),A
        LD      A,C
        LD      (DE),A
        INC     HL
        INC     DE
        DJNZ    LEC80
        RET

        ; Referenced from E032, E08C, E092, E29C, ED3C, F2AD, D18F, E00F, FFEE
        ; --- START PROC LEC8A ---
LEC8A:  LD      HL,0A800h       
        LD      DE,0A801h       
        LD      (HL),20h        ; ' '
        LD      BC,03FFh        
        LDIR
        RET

; RDTAST
; Legge la locazione KEYPRESS scritta dal gestore interrupt della tastiera
; Se il bit 7 è 1, allora il tasto è stato premuto, resetta il bit, riscrive
; nella locazione KEYPRESS e lascia il risultato nel registro A
;
;$EC98
RDTAST:  
        LD      A,(KEYPRESS)
        BIT     7,A
        JR      Z,RDTAST
        RES     7,A
        LD      (KEYPRESS),A
        RET

LECA5:  DB      "0123456789ABCDEF"

;
; Keyboard interrupt routine. Alla pressione di un tasto viene generato un 
; interrupt di tipo 2 (IM 2) sulla CPU che risponde saltando a questa routine.
; 

;ECB5
INT_KEYBOARD:  
        PUSH    AF
        LD      A,(KEYPRESS)
        CP      ESCAPE+128
        JR      Z,INT_EXIT         ; se c'è un tasto ESC premuto non ancora gestito esce senza fare niente
        IN      A,(KEYBOARD)
        SET     7,A                ; imposta il bit 7 per indicare "tasto premuto" ma non ancora gestito
        CP      ESCAPE+128
        JR      Z, HANDLE_ESC_KEY  ; Se premuto ESC tratta in maniera speciale        
LECC5:  LD      (KEYPRESS),A        
INT_EXIT:  
        POP     AF
        EI
        RETI
        
HANDLE_ESC_KEY:  
        LD      (008Ah),HL           ; salva HL, SP e le due word dello stack      
        POP     HL
        LD      (0084h),HL
        POP     HL
        LD      (0080h),HL
        LD      (0082h),SP        
        LD      HL, ESC_KEY_ROUTINE  ; imposta la routine di ESC al ritorno dall'interrupt
        PUSH    HL
        DEC     SP
        DEC     SP
        JR      LECC5                ; resume interrupt routine and exit

;
; Gestisce il tasto di ESC - chiamata dopo che è uscito dalla
; routine di interrupt della tastiera
;
;$ECE3
ESC_KEY_ROUTINE:
        LD      (0086h),BC
        LD      (0088h),DE
        EX      AF,AF'
        PUSH    AF
        POP     HL
        LD      (0090h),HL
        EX      AF,AF'
        EXX
        LD      (0092h),BC
        LD      (0094h),DE
        LD      (0096h),HL
        EXX
        LD      (008Ch),IX
        LD      (008Eh),IY
        CALL    LEC6F
        CALL    LEF6C
        JR      LED42

        ; Referenced from ED39, E00A
        ; --- START PROC LED0F ---
LED0F:  LD      HL,0ECB5h       
        LD      (0070h),HL
        LD      HL,KEYPRESS        
        LD      (HL),00h
        INC     HL
        LD      (HL),0C3h
        LD      B,14h
        INC     HL
        INC     HL

        ; Referenced from ED24
LED21:  INC     HL
        LD      (HL),76h        ; 'v'
        DJNZ    LED21
        EI
        IM      2
        LD      A,4Fh           ; 'O'
        OUT     (0CFh),A
        LD      A,87h
        OUT     (0CFh),A
        XOR     A
        LD      I,A
        LD      A,70h           ; 'p'
        OUT     (0CFh),A
        RET

        ; Entry Point
        ; --- START PROC LED39 ---
LED39:  CALL    LED0F
        CALL    LEC8A

        ; Referenced from EDC2, EFA4, EF1E, EE2C
        ; --- START PROC LED3F ---
LED3F:  CALL    LEC4B

        ; Referenced from ED0D, EE09
        ; --- START PROC LED42 ---
LED42:  LD      HL,0ABC4h       

        ; Referenced from EE62, EE0D
LED45:  LD      B,00h

        ; Referenced from EE24, EDE1
LED47:  SET     7,(HL)

        ; Referenced from ED85, ED99, EDA0, EDB3
LED49:  CALL    RDTAST
        CP      50h             ; 'P'
        JP      Z,LEE58
        CP      54h             ; 'T'
        JP      Z,LEEA5
        CP      4Dh             ; 'M'

        ; Referenced from ED5D
LED58:  JP      Z,LEE70
        CP      48h             ; 'H'
        JR      Z,LED58
        CP      4Bh             ; 'K'
        JP      Z,WARMBOOT
        CP      56h             ; 'V'
        JP      Z,LEF75
        CP      47h             ; 'G'
        JP      Z,LEE70
        CP      58h             ; 'X'
        JP      Z,LEF30
        CP      1Bh
        JP      Z,LEED6
        CP      0Dh
        JP      Z,LEE27
        CP      3Ch             ; '<'
        JP      Z,LEE0C
        LD      A,B
        CP      30h             ; '0'
        JR      Z,LED49
        LD      A,(KEYPRESS)
        CP      3Eh             ; '>'
        JP      Z,LEE15
        EXX
        LD      HL,0ECA5h       
        LD      BC,0010h        
        CPIR
        EXX
        JR      NZ,LED49
        LD      A,(0ABC4h)
        BIT     7,A
        JR      NZ,LED49
        CP      48h             ; 'H'
        LD      A,(KEYPRESS)
        JR      NZ,LEDD7
        EXX
        LD      HL,0ECAFh       
        LD      BC,0006h        
        CPIR
        EXX
        JR      Z,LED49
        LD      (HL),A
        AND     0Fh
        SLA     A
        LD      DE,009Ch        
        ADD     A,E
        LD      E,A
        LD      A,(DE)
        CP      76h             ; 'v'
        JP      NZ,LED3F
        LD      HL,(009Ah)
        LD      A,(HL)
        LD      (DE),A
        LD      (HL),76h        ; 'v'
        INC     DE
        INC     HL
        LD      A,(HL)
        LD      (DE),A
        LD      A,(0ABCBh)
        LD      (HL),A
        JP      LEF1B

        ; Referenced from EDA7
LEDD7:  LD      (HL),A
        INC     B
        LD      A,(0ABC4h)
        CP      50h             ; 'P'
        JR      Z,LEDE4

        ; Referenced from EE1D, EE21, EDE6
LEDE0:  INC     HL
        JP      LED47

        ; Referenced from EDDE
LEDE4:  BIT     2,B
        JR      Z,LEDE0
        LD      BC,0035h        
        LD      HL,0ABCAh       
        LD      DE,0ABCBh       
        LD      (HL),20h        ; ' '
        LDIR
        LD      DE,009Ah        
        LD      B,02h
        LD      HL,0ABC6h       
        CALL    LEC00
        LD      B,01h
        LD      IX,009Ah        
        CALL    LEC60
        JP      LED42

        ; Referenced from ED7F
LEE0C:  DEC     B
        JP      M,LED45
        RES     7,(HL)
        DEC     HL
        JR      LEE24

        ; Referenced from ED8C
LEE15:  RES     7,(HL)
        INC     B
        LD      A,(0ABC4h)
        CP      50h             ; 'P'
        JR      NZ,LEDE0
        BIT     2,B
        JR      NZ,LEDE0
        DEC     B

        ; Referenced from EE13
LEE24:  JP      LED47

        ; Referenced from ED7A
LEE27:  LD      A,(0ABC4h)
        CP      54h             ; 'T'
        JP      NZ,LED3F
        BIT     0,B
        JR      Z,LEE34
        DEC     HL

        ; Referenced from EE31
LEE34:  SRL     B
        LD      A,0FFh
        LD      (0ABFFh),A

        ; Referenced from EE43
LEE3B:  LD      A,(HL)
        CP      0FFh
        JR      Z,LEE45
        LD      (HL),20h        ; ' '
        INC     HL
        JR      LEE3B

        ; Referenced from EE3E
LEE45:  LD      (HL),20h        ; ' '
        LD      DE,(009Ah)
        LD      HL,0ABCBh       
        CALL    LEC00

        ; Referenced from EE6E
LEE51:  LD      (009Ah),DE
        JP      LEF1B

        ; Referenced from ED4E
LEE58:  RES     7,(HL)
        LD      HL,0ABC6h       

        ; Referenced from EE97
LEE5D:  LD      (0ABC4h),A
        CP      4Dh             ; 'M'
        JP      NZ,LED45
        LD      DE,(009Ah)
        LD      B,18h
        CALL    LEC22
        JR      LEE51

        ; Referenced from ED58, ED6B, EEAD, EEB7, EED3
LEE70:  LD      B,01h
        LD      IX,009Ah        
        CALL    LEC60
        LD      B,02h
        LD      HL,0ABC6h       
        LD      DE,009Ah        
        CALL    LEC22
        LD      B,01h
        LD      IX,009Ah        
        CALL    LEC60
        RES     7,(HL)
        LD      HL,0ABCBh       
        LD      A,(KEYPRESS)
        CP      47h             ; 'G'
        JR      NZ,LEE5D
        LD      (0ABC4h),A
        CALL    SCROLL
        CALL    LEC6F
        JP      0099h

        ; Referenced from ED53
LEEA5:  LD      A,(0ABC4h)
        CP      0D0h
        LD      A,(KEYPRESS)
        JR      Z,LEE70
        LD      A,(0AB84h)
        CP      4Dh             ; 'M'
        LD      A,(KEYPRESS)
        JR      NZ,LEE70
        PUSH    HL
        LD      DE,0018h        
        LD      HL,(009Ah)
        SBC     HL,DE
        LD      (009Ah),HL
        PUSH    BC
        LD      HL,0AB8Bh       
        LD      DE,0ABCBh       
        LD      BC,0036h        
        LDIR
        POP     BC
        POP     HL
        JP      LEE70

        ; Referenced from ED75
LEED6:  LD      HL,(0080h)
        DEC     HL
        LD      A,(HL)
        CP      76h             ; 'v'
        JR      NZ,LEF01
        LD      (0080h),HL
        PUSH    HL
        POP     DE
        INC     HL
        LD      A,(HL)
        LD      (0ABEAh),A
        AND     0Fh
        LD      HL,009Ch        
        SLA     A
        ADD     A,L
        LD      L,A
        LD      B,02h
        CALL    LEC80
        LD      A,3Dh           ; '='
        LD      (0ABE9h),A
        LD      A,48h           ; 'H'
        LD      (0ABE8h),A

        ; Referenced from EEDD
LEF01:  LD      A,49h           ; 'I'
        LD      (0ABC4h),A
        CALL    LEC56
        LD      DE,0080h        
        CALL    LEF21
        CALL    SCROLL
        LD      DE,008Ch        
        CALL    LEF21
        CALL    LEC56

        ; Referenced from EDD4, EE55
LEF1B:  CALL    SCROLL

        ; Referenced from EF83
        ; --- START PROC LEF1E ---
LEF1E:  JP      LED3F

        ; Referenced from EF0C, EF15
        ; --- START PROC LEF21 ---
LEF21:  LD      HL,0ABC6h       

        ; Referenced from EF2E
LEF24:  LD      A,L
        CP      0E4h
        RET     Z
        LD      B,02h
        CALL    LEC22
        INC     HL
        JR      LEF24

        ; Referenced from ED70
        ; --- START PROC LEF30 ---
LEF30:  EX      AF,AF'
        LD      HL,(0090h)
        PUSH    HL
        POP     AF
        EX      AF,AF'
        EXX
        LD      BC,(0092h)
        LD      DE,(0094h)
        LD      HL,(0096h)
        EXX
        CALL    LEC6F
        LD      IX,(008Ch)
        LD      IY,(008Eh)
        LD      HL,(0084h)
        PUSH    HL
        POP     AF
        LD      BC,(0086h)
        LD      DE,(0088h)
        LD      HL,(0080h)
        LD      (009Ah),HL
        LD      SP,(0082h)
        LD      HL,(008Ah)
        JP      0099h

        ; Referenced from ED0A, E007
        ; --- START PROC LEF6C ---
LEF6C:  LD      A,90h
        OUT     (0DFh),A
        LD      A,0F0h
        OUT     (0DFh),A
        RET

        ; Referenced from ED66
        ; --- START PROC LEF75 ---
LEF75:  LD      IX,007Eh        
        LD      HL,0EFDBh       

        ; Referenced from EFA9, EFD9
LEF7C:  LD      A,56h           ; 'V'
        INC     IX
        INC     IX
        CP      (HL)
        JR      Z,LEF1E
        PUSH    HL
        CALL    LEC4B
        POP     HL
        LD      (0ABC4h),A
        LD      DE,0ABC6h       
        LD      BC,0003h        
        LDIR
        LD      A,3Dh           ; '='
        LD      (DE),A
        LD      B,04h
        INC     DE

        ; Referenced from EFBA
LEF9B:  INC     DE
        LD      A,0A0h
        LD      (DE),A

        ; Referenced from EFB7
LEF9F:  CALL    RDTAST
        CP      0Dh
        JP      Z,LED3F
        CP      20h             ; ' '
        JR      Z,LEF7C
        PUSH    HL
        PUSH    BC
        LD      HL,0ECA5h       
        LD      BC,0010h        
        CPIR
        POP     BC
        POP     HL
        JR      NZ,LEF9F
        LD      (DE),A
        DJNZ    LEF9B
        PUSH    HL
        LD      HL,0ABCBh       
        PUSH    IX
        POP     DE
        LD      B,02h
        CALL    LEC00
        LD      A,(IX+00h)
        LD      B,(IX+01h)
        LD      (IX+01h),A
        LD      A,B
        LD      (IX+00h),A
        CALL    SCROLL
        POP     HL
        JR      LEF7C

LEFDB:  DB      "PC SP AF BC DE HL IX IY AF'BC'DE'HL'V0123456789-"
        DB      0FFh
        DB      0FFh
        DB      0FFh


        ; Referenced from F045, F036
        ; --- START PROC LF00E ---
LF00E:  LD      HL,(012Fh)
        LD      A,0FFh
        CP      (HL)
        RET     Z
        LD      DE,0125h        
        LD      BC,0006h        
        LDIR
        LD      A,(0125h)
        BIT     3,A
        CALL    LF162
        BIT     4,A
        CALL    LF162
        LD      (012Fh),HL
        LD      A,01h
        OR      A
        RET

        ; Referenced from F075, F1A0
        ; --- START PROC LF031 ---
LF031:  POP     HL
        PUSH    HL
        LD      (012Fh),HL

        ; Referenced from F03E
LF036:  CALL    LF00E
        JR      Z,LF040
        CALL    LF14D
        JR      LF036

        ; Referenced from F039
        ; --- START PROC LF040 ---
LF040:  POP     HL

        ; Referenced from F289, F238, F1E4, FF64
        ; --- START PROC LF041 ---
LF041:  PUSH    HL
        LD      (012Fh),HL

        ; Referenced from F14A
        ; --- START PROC LF045 ---
LF045:  CALL    LF00E
        JR      NZ,LF04C
        POP     HL
        RET

        ; Referenced from F048
LF04C:  LD      A,(0125h)
        BIT     0,A
        JP      Z,LF16C
        BIT     3,A
        JP      NZ,LF185

        ; Referenced from F147, F071, F1AA
        ; --- START PROC LF059 ---
LF059:  CALL    LF14D
        XOR     A
        LD      (00CFh),A
        LD      HL,(0127h)
        LD      D,A
        LD      A,(0126h)
        LD      E,A

        ; Referenced from F084, F092, F099, F09E, F0A7, F0B8
LF068:  LD      (HL),0A0h
        CALL    RDTAST
        RES     7,(HL)
        CP      1Ah
        JR      Z,LF059
        CP      01h
        JR      Z,LF031
        CP      7Fh             ; ''
        JR      Z,LF094
        CP      0Dh
        JP      Z,LF0BF
        LD      B,A
        LD      A,E
        CP      00h
        JR      Z,LF068
        LD      A,(0125h)
        BIT     1,A
        LD      A,B
        JR      NZ,LF0A0

        ; Referenced from F0BD
LF08E:  LD      (HL),A
        INC     HL
        INC     D
        DEC     E
        JR      LF068

        ; Referenced from F079
LF094:  XOR     A
        LD      (00CFh),A
        ADD     A,D
        JR      Z,LF068
        DEC     HL
        DEC     D
        INC     E
        JR      LF068

        ; Referenced from F08C
LF0A0:  LD      B,A
        LD      A,(00CFh)
        CP      2Dh             ; '-'
        LD      A,B
        JR      Z,LF068
        PUSH    HL
        LD      HL,0F000h       
        LD      BC,000Ah        
        INC     D
        DEC     D
        JR      Z,LF0B5
        INC     BC

        ; Referenced from F0B2
LF0B5:  CPIR
        POP     HL
        JR      NZ,LF068
        LD      (00CFh),A
        JR      LF08E

        ; Referenced from F07D, F1A5
        ; --- START PROC LF0BF ---
LF0BF:  LD      A,(0125h)
        BIT     1,A
        CALL    LF1CD
        LD      HL,(0127h)
        JR      NZ,LF0D4
        LD      DE,(0129h)
        LDIR
        JR      LF133

        ; Referenced from F0CA
LF0D4:  ADD     HL,BC
        LD      B,C

        ; Referenced from F0DC
LF0D6:  DEC     HL
        LD      A,(HL)
        CP      20h             ; ' '
        JR      NZ,LF0DE
        DJNZ    LF0D6

        ; Referenced from F0DA
LF0DE:  LD      DE,00D0h        
        CALL    LF4EB
        EX      DE,HL
        LD      DE,00DCh        
        CALL    LF57A
        LD      HL,(0129h)
        EX      DE,HL
        LD      A,(0125h)
        BIT     2,A
        JR      NZ,LF0FB
        CALL    LE4AC
        JR      LF103

        ; Referenced from F0F4
LF0FB:  LD      HL,00D0h        
        LD      BC,0006h        
        LDIR

        ; Referenced from F0F9
LF103:  LD      A,(0125h)
        BIT     5,A
        JR      Z,LF133
        CALL    LF14D
        LD      HL,00EBh        
        CALL    LF1C9
        DEC     BC
        OR      A
        SBC     HL,BC
        LD      B,C
        BIT     6,A
        JR      Z,LF128

        ; Referenced from F126
LF11C:  DEC     C
        DEC     C
        DEC     C
        JR      Z,LF128
        JP      M,LF128
        DEC     B
        INC     HL
        JR      LF11C

        ; Referenced from F11A, F11F, F121
LF128:  LD      A,(00DCh)
        AND     0E0h
        DEC     B
        OR      B
        LD      (HL),A
        CALL    LF1BE

        ; Referenced from F0D2, F108
LF133:  LD      A,(0125h)
        BIT     4,A
        JR      Z,LF14A
        LD      HL,0F142h       
        PUSH    HL
        LD      HL,(012Dh)
        JP      (HL)

        ; Entry Point
        ; --- START PROC LF142 ---
LF142:  PUSH    AF
        CALL    C,LF14D
        POP     AF
        JP      C,LF059

        ; Referenced from F138, F171, F17D
        ; --- START PROC LF14A ---
LF14A:  JP      LF045

        ; Referenced from F143, F059, F03B, F17A, F1AD, F10A
        ; --- START PROC LF14D ---
LF14D:  PUSH    AF
        LD      HL,(0127h)
        LD      (HL),20h        ; ' '
        LD      D,H
        LD      E,L
        CALL    LF1CD
        DEC     BC
        XOR     A
        CP      C
        JR      Z,LF160
        INC     DE
        LDIR

        ; Referenced from F15B
LF160:  POP     AF
        RET

        ; Referenced from F022, F027
        ; --- START PROC LF162 ---
LF162:  JR      Z,LF169
        LDI
        LDI
        RET

        ; Referenced from F162
LF169:  INC     DE
        INC     DE
        RET

        ; Referenced from F051
        ; --- START PROC LF16C ---
LF16C:  CALL    LF1B5
        BIT     1,A
        JR      Z,LF14A
        CALL    RDTAST
        CP      0Dh
        JR      Z,LF17F
        CALL    LF14D
        JR      LF14A

        ; Referenced from F178
LF17F:  LD      HL,(012Bh)
        POP     DE
        POP     DE
        JP      (HL)

        ; Referenced from F056, F1B3
        ; --- START PROC LF185 ---
LF185:  LD      HL,5050h        
        LD      (TEMPO),HL
        LD      HL,(012Bh)
        CALL    LF1B8
        CALL    WAIT
        LD      HL,KEYPRESS        
        BIT     7,(HL)
        JR      Z,LF1AD
        RES     7,(HL)
        LD      A,(HL)
        CP      01h
        JP      Z,LF031
        CP      0Dh
        JP      Z,LF0BF
        CP      1Ah
        JP      Z,LF059

        ; Referenced from F199
LF1AD:  CALL    LF14D
        CALL    WAIT
        JR      LF185

        ; Referenced from F16C
        ; --- START PROC LF1B5 ---
LF1B5:  LD      HL,(0129h)

        ; Referenced from F18E
        ; --- START PROC LF1B8 ---
LF1B8:  CALL    LF1C9
        LDIR
        RET

        ; Referenced from F130
        ; --- START PROC LF1BE ---
LF1BE:  LD      A,(0125h)
        BIT     6,A
        JP      Z,LE5F2
        JP      LEB04

        ; Referenced from F110, F1B8
        ; --- START PROC LF1C9 ---
LF1C9:  LD      DE,(0127h)

        ; Referenced from F155, F0C4
        ; --- START PROC LF1CD ---
LF1CD:  LD      BC,(0126h)
        LD      B,00h
        RET

LF1D4:  DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh


        ; Referenced from E020, E2DA, FF5E
        ; --- START PROC LF1D9 ---
LF1D9:  CALL    RDTAST
        JP      WARMBOOT

        ; Referenced from E01D
        ; --- START PROC LF1DF ---
LF1DF:  LDIR
        LD      HL,0F2F9h       
        CALL    LF041
        LD      A,(FLARIG)
        CALL    LF23D
        LD      HL,00D2h        
        LD      (HL),44h        ; 'D'
        LD      HL,00D8h        
        LD      (HL),0C2h
        LD      A,(0121h)
        INC     A
        LD      HL,00DDh        
        LD      (HL),00h
        DEC     HL
        LD      (HL),A
        LD      DE,00D8h        
        PUSH    DE
        CALL    LE6A3
        POP     HL
        LD      DE,00D2h        
        CALL    LE4AC
        LD      DE,0ABA0h       
        LD      BC,0300h        
        LD      HL,00D5h        
        CALL    LE5FD
        LD      DE,00D8h        
        LD      HL,RAMSIZE        
        PUSH    DE
        CALL    LE6A3
        POP     HL
        LD      DE,00D2h        
        PUSH    DE
        CALL    LE4AC
        POP     HL
        LD      DE,0ABB5h       
        CALL    LEB04

        ; Referenced from F23B
        ; --- START PROC LF235 ---
LF235:  LD      HL,0F354h       

        ; Referenced from F25E, F29B
        ; --- START PROC LF238 ---
LF238:  CALL    LF041
        JR      LF235

        ; Referenced from F258, F1EA
        ; --- START PROC LF23D ---
LF23D:  LD      DE,0AB8Fh       
        LD      BC,0003h        
        LD      HL,0F464h       
        BIT     0,A
        JR      NZ,LF24D
        LD      HL,0F467h       

        ; Referenced from F248
LF24D:  LDIR
        RET

        ; Entry Point
        ; --- START PROC LF250 ---
LF250:  LD      A,(FLARIG)
        XOR     01h
        LD      (FLARIG),A
        CALL    LF23D
        LD      HL,0F374h       
        JR      LF238

        ; Entry Point
        ; --- START PROC LF260 ---
LF260:  LD      A,(0121h)
        CP      2Fh             ; '/'
        JR      Z,LF272
        CP      41h             ; 'A'
        JR      Z,LF27F
        LD      A,2Fh           ; '/'
        LD      HL,3834h        
        JR      LF277

        ; Referenced from F265
LF272:  LD      A,41h           ; 'A'
        LD      HL,3636h        

        ; Referenced from F270, F284
LF277:  LD      (0ABA1h),HL
        LD      HL,0F37Ch       
        JR      LF293

        ; Referenced from F269
LF27F:  LD      A,47h           ; 'G'
        LD      HL,3237h        
        JR      LF277

        ; Entry Point
        ; --- START PROC LF286 ---
LF286:  LD      HL,0F479h       
        CALL    LF041
        LD      HL,0F384h       
        LD      A,(00F4h)
        DEC     A

        ; Referenced from F27D
        ; --- START PROC LF293 ---
LF293:  LD      (0121h),A
        SUB     05h
        LD      (0122h),A
        JR      LF238

        ; Entry Point
        ; --- START PROC LF29D ---
LF29D:  LD      A,(00F5h)
        CP      00h
        SCF
        RET     NZ
        LD      A,(00F4h)
        CP      00h
        SCF
        RET     Z
        CCF
        RET

        ; Entry Point
        ; --- START PROC LF2AD ---
LF2AD:  CALL    LEC8A
        LD      HL,(00C5h)
        XOR     A
        CP      H
        JR      NZ,LF2BD
        CP      L
        JR      NZ,LF2BD
        JP      WARMBOOT

        ; Referenced from F2B5, F2B8
        ; --- START PROC LF2BD ---
LF2BD:  JP      (HL)

        ; Referenced from E000        
;F2BE        
TEST_RAM:
        LD      HL,0000h              ; parte dall'indirizzo $0000     
        LD      DE,0AA55h             ; pattern di scrittura ram $AA e $55
       
LOOP_LF2C4:  
        LD      A,D
        LD      (HL),A                ; scrive $AA
        CP      (HL)
        JR      NZ,END_RAM            ; se rileggendo non è $AA allora fine della RAM
        LD      A,E
        LD      (HL),A                ; scrive $55
        CP      (HL)
        JR      NZ,END_RAM            ; se rileggendo non è $AA allora fine della RAM
        LD      (HL),0FFh
        INC     HL
        JR      LOOP_LF2C4        

END_RAM:  
        LD      (RAMSIZE),HL            ; salva fine RAM
        LD      A,01h                   
        LD      (FLARIG),A
        LD      A,2Fh          
        LD      (0121h),A
        SUB     05h
        LD      (0122h),A
        LD      HL,0038h                ; imposta il vettore RST 38 a "JP 0038"
        LD      (HL),0C3h               ;
        LD      (0039h),HL              ;
        LD      HL,0000h                ; imposta $00C5 = $0000       
        LD      (00C5h),HL              ; 
        JP      WARMBOOT                ; prosegue sequenza di boot

LF2F6:  DB      3Dh             ; '='
        DB      3Dh             ; '='
        DB      3Eh             ; '>'
        DB      00h
        DB      1Ah
        DB      12h
        DB      0A8h
        DB      0ADh
        DB      0F3h
        DB      00h
        DB      11h
        DB      8Ah
        DB      0A8h
        DB      0C7h
        DB      0F3h
        DB      00h
        DB      10h
        DB      0CAh
        DB      0A8h
        DB      0FFh
        DB      0F3h
        DB      00h
        DB      13h
        DB      0Ah
        DB      0A9h
        DB      0D8h
        DB      0F3h
        DB      00h
        DB      14h
        DB      4Ah             ; 'J'
        DB      0A9h
        DB      0EBh
        DB      0F3h
        DB      00h
        DB      0Eh
        DB      8Ah
        DB      0A9h
        DB      22h             ; '"'
        DB      0F4h
        DB      00h
        DB      11h
        DB      0CAh
        DB      0A9h
        DB      30h             ; '0'
        DB      0F4h
        DB      00h
        DB      0Fh
        DB      0Ah
        DB      0AAh
        DB      6Ah             ; 'j'
        DB      0F4h
        DB      00h
        DB      0Ch
        DB      4Ah             ; 'J'
        DB      0AAh
        DB      41h             ; 'A'
        DB      0F4h
        DB      00h
        DB      13h
        DB      8Ah
        DB      0AAh
        DB      0Fh
        DB      0F4h
        DB      00h
        DB      0Ch
        DB      0CAh
        DB      0AAh
        DB      82h
        DB      0F4h
        DB      00h
        DB      08h
        DB      86h
        DB      0ABh
        DB      4Dh             ; 'M'
        DB      0F4h
        DB      00h
        DB      07h
        DB      99h
        DB      0ABh
        DB      55h             ; 'U'
        DB      0F4h
        DB      00h
        DB      08h
        DB      0ACh
        DB      0ABh
        DB      5Ch             ; '\'
        DB      0F4h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0Ah
        DB      03h
        DB      86h
        DB      0A8h
        DB      0F6h
        DB      0F2h
        DB      32h             ; '2'
        DB      0E0h
        DB      0Ah
        DB      03h
        DB      0C6h
        DB      0A8h
        DB      0F6h
        DB      0F2h
        DB      23h             ; '#'
        DB      0E0h
        DB      0Ah
        DB      03h
        DB      06h
        DB      0A9h
        DB      0F6h
        DB      0F2h
        DB      9Ch
        DB      0E2h
        DB      0Ah
        DB      03h
        DB      46h             ; 'F'
        DB      0A9h
        DB      0F6h
        DB      0F2h
        DB      0ADh
        DB      0F2h
        DB      0Ah
        DB      03h
        DB      86h
        DB      0A9h
        DB      0F6h
        DB      0F2h
        DB      50h             ; 'P'
        DB      0F2h
        DB      0Ah
        DB      03h
        DB      0C6h
        DB      0A9h
        DB      0F6h
        DB      0F2h
        DB      60h             ; '`'
        DB      0F2h
        DB      0Ah
        DB      03h
        DB      06h
        DB      0AAh
        DB      0F6h
        DB      0F2h
        DB      86h
        DB      0F2h
        DB      0Ah
        DB      03h
        DB      46h             ; 'F'
        DB      0AAh
        DB      0F6h
        DB      0F2h
        DB      00h
        DB      0E0h
        DB      0Ah
        DB      03h
        DB      86h
        DB      0AAh
        DB      0F6h
        DB      0F2h
        DB      00h
        DB      0D0h
        DB      0Ah
        DB      03h
        DB      0C6h
        DB      0AAh
        DB      0F6h
        DB      0F2h
        DB      74h             ; 't'
        DB      0D8h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      "S U P E R    C H I L D / ZLETTURA PROGRAMMASCRITTURA PROGRAMMAESECUZIONE PROGRAMMAMONITOR-DEBUGGERTEXT EDITOR CON IQFPRINTER ON/O"
        DB      "FFDIMENSIONE MODULOSYSTEM RESETPRINTER:MODULO:MEMORIA:ON OFFMODULO SPECIALE"
        DB      17h
        DB      03h
        DB      0A1h
        DB      0ABh
        DB      0F4h
        DB      00h
        DB      9Dh
        DB      0F2h
        DB      0FFh
        DB      "DUMP PROGRAM"
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      01h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0Ah
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      64h             ; 'd'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0E8h
        DB      03h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      10h
        DB      27h             ; '''
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0A0h
        DB      86h
        DB      01h
        DB      00h
        DB      00h
        DB      00h
        DB      40h             ; '@'
        DB      42h             ; 'B'
        DB      0Fh
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      96h
        DB      98h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0E1h
        DB      0F5h
        DB      05h
        DB      00h
        DB      00h
        DB      00h
        DB      0CAh
        DB      9Ah
        DB      3Bh             ; ';'
        DB      00h
        DB      00h
        DB      00h
        DB      0E4h
        DB      0Bh
        DB      54h             ; 'T'
        DB      02h
        DB      00h
        DB      00h
        DB      0E8h
        DB      76h             ; 'v'
        DB      48h             ; 'H'
        DB      17h
        DB      00h
        DB      00h
        DB      10h
        DB      0A5h
        DB      0D4h
        DB      0E8h
        DB      00h
        DB      00h
        DB      0A0h
        DB      72h             ; 'r'
        DB      4Eh             ; 'N'
        DB      18h
        DB      09h
        DB      00h
        DB      40h             ; '@'
        DB      7Ah             ; 'z'
        DB      10h
        DB      0F3h
        DB      5Ah             ; 'Z'


        ; Referenced from FF5B, F0E1
        ; --- START PROC LF4EB ---
LF4EB:  PUSH    IX
        PUSH    DE
        PUSH    HL
        LD      A,(HL)
        LD      (00EFh),A
        PUSH    HL
        POP     IX
        INC     IX
        LD      A,10h
        LD      (00EEh),A
        LD      H,D
        LD      L,E
        XOR     A
        DEC     HL
        LD      B,06h

        ; Referenced from F505
LF503:  INC     HL
        LD      (HL),A
        DJNZ    LF503
        LD      HL,0F48Bh       

        ; Referenced from F539, F542
LF50A:  LD      A,(00EEh)
        DEC     A
        JR      NZ,LF51F
        POP     IX

        ; Referenced from F535
LF512:  LD      A,(00EFh)
        CP      2Dh             ; '-'
        CALL    Z,LF544
        POP     HL
        POP     DE
        POP     IX
        RET

        ; Referenced from F50E
LF51F:  LD      (00EEh),A
        LD      BC,0006h        
        ADD     HL,BC

        ; Referenced from F52D, F531
LF526:  DEC     IX
        LD      A,(IX+00h)
        CP      2Dh             ; '-'
        JR      Z,LF526
        CP      2Eh             ; '.'
        JR      Z,LF526
        CP      20h             ; ' '
        JR      Z,LF512
        AND     0Fh
        JR      Z,LF50A
        LD      C,A

        ; Referenced from F540
LF53C:  CALL    LF55C
        DEC     C
        JR      NZ,LF53C
        JR      LF50A

        ; Referenced from F700, F70B, F651, F65C, F690, F792, F7A3, F59E, F517
        ; --- START PROC LF544 ---
LF544:  LD      B,06h
        PUSH    DE

        ; Referenced from F54B
LF547:  LD      A,(DE)
        CPL
        LD      (DE),A
        INC     DE
        DJNZ    LF547
        POP     DE
        PUSH    DE
        LD      A,(DE)
        INC     A
        LD      (DE),A
        LD      B,05h

        ; Referenced from F558
LF554:  INC     DE
        LD      A,(DE)
        ADC     A,00h
        DJNZ    LF554
        POP     DE
        RET

        ; Referenced from F749, FF55, F671, F74E, F5BB, F53C
        ; --- START PROC LF55C ---
LF55C:  PUSH    DE
        PUSH    HL
        LD      B,06h
        OR      A

        ; Referenced from F566
LF561:  LD      A,(DE)
        ADC     A,(HL)
        LD      (DE),A
        INC     HL
        INC     DE
        DJNZ    LF561
        POP     HL
        POP     DE
        RET

        ; Referenced from F73E, F7E2, FF52, F5AD
        ; --- START PROC LF56B ---
LF56B:  PUSH    DE
        PUSH    HL
        LD      B,06h
        OR      A

        ; Referenced from F575
LF570:  LD      A,(DE)
        SBC     A,(HL)
        LD      (DE),A
        INC     HL
        INC     DE
        DJNZ    LF570
        POP     HL
        POP     DE
        RET

        ; Referenced from FF58, F0E8
        ; --- START PROC LF57A ---
LF57A:  PUSH    IX
        XOR     A
        LD      (00EEh),A
        PUSH    DE
        POP     IX
        PUSH    HL
        PUSH    DE
        LD      DE,00D6h        
        LD      BC,0006h        
        LDIR
        POP     DE
        PUSH    DE
        LD      HL,00DBh        
        BIT     7,(HL)
        LD      HL,00D6h        
        EX      DE,HL
        LD      (HL),4Eh        ; 'N'
        JR      Z,LF5A2
        SET     5,(HL)
        CALL    LF544
        XOR     A

        ; Referenced from F59A
LF5A2:  LD      B,0Fh

        ; Referenced from F5A6
LF5A4:  INC     HL
        LD      (HL),A
        DJNZ    LF5A4
        LD      HL,0F4E5h       

        ; Referenced from F5CD
LF5AB:  INC     IX

        ; Referenced from F5B9
LF5AD:  CALL    LF56B
        JR      C,LF5BB
        LD      A,(IX+00h)
        INC     A
        LD      (IX+00h),A
        JR      LF5AD

        ; Referenced from F5B0
LF5BB:  CALL    LF55C
        LD      BC,0006h        
        OR      A
        SBC     HL,BC
        LD      A,(00EEh)
        INC     A
        LD      (00EEh),A
        CP      0Fh
        JR      NZ,LF5AB
        LD      B,0Fh
        PUSH    IX
        POP     HL

        ; Referenced from F5D9
LF5D4:  LD      A,(HL)
        OR      30h             ; '0'
        LD      (HL),A
        DEC     HL
        DJNZ    LF5D4
        POP     DE
        POP     HL
        POP     IX
        RET

        ; Referenced from FF4F
        ; Entry Point
        ; --- START PROC LF5E0 ---
LF5E0:  LD      (00D4h),HL
        LD      (00D2h),DE
        LD      DE,00DCh        
        LD      BC,0006h        
        LDIR
        LD      HL,(00D2h)
        LD      DE,00D6h        
        LD      BC,0006h        
        LDIR
        XOR     A
        LD      (00EFh),A
        LD      HL,00E2h        
        CALL    LF6AB
        LD      A,30h           ; '0'
        LD      (00EEh),A
        LD      HL,00E1h        

        ; Referenced from F61A
LF60C:  LD      A,(HL)
        CP      00h
        JR      NZ,LF63A
        DEC     HL
        LD      A,(00EEh)
        SUB     08h
        LD      (00EEh),A
        JR      NZ,LF60C
        LD      HL,00D6h        
        CALL    LF6AB
        LD      DE,(00D2h)
        LD      HL,00D6h        
        LD      BC,0006h        
        LDIR
        RET

        ; Referenced from F643
LF62F:  BIT     7,A
        JR      Z,LF649

        ; Referenced from F647
LF633:  LD      A,2Dh           ; '-'
        LD      (00EFh),A
        JR      LF649

        ; Referenced from F60F
LF63A:  LD      HL,00DBh        
        LD      DE,00E1h        
        LD      A,(DE)
        BIT     7,(HL)
        JR      Z,LF62F
        BIT     7,A
        JR      Z,LF633

        ; Referenced from F631, F638
LF649:  LD      HL,00DBh        
        LD      DE,00D6h        
        BIT     7,(HL)
        CALL    NZ,LF544
        LD      DE,00DCh        
        LD      HL,00E1h        
        BIT     7,(HL)
        CALL    NZ,LF544

        ; Referenced from F686
LF65F:  LD      B,06h
        LD      HL,00E1h        

        ; Referenced from F667
LF664:  RR      (HL)
        DEC     HL
        DJNZ    LF664
        JR      NC,LF674
        LD      HL,00D6h        
        LD      DE,00E2h        
        CALL    LF55C

        ; Referenced from F669
LF674:  LD      HL,00D6h        
        LD      B,06h
        OR      A

        ; Referenced from F67D
LF67A:  RL      (HL)
        INC     HL
        DJNZ    LF67A
        LD      A,(00EEh)
        DEC     A
        LD      (00EEh),A
        JR      NZ,LF65F
        LD      A,(00EFh)
        CP      2Dh             ; '-'
        LD      HL,00E2h        
        CALL    Z,LF544
        LD      HL,00E7h        
        CALL    LF80B
        LD      HL,00E2h        
        LD      DE,(00D2h)
        PUSH    DE
        LD      BC,0006h        
        LDIR
        POP     DE
        LD      HL,(00D4h)
        RET

        ; Referenced from F601, F61F
        ; --- START PROC LF6AB ---
LF6AB:  LD      (HL),00h
        LD      D,H
        LD      E,L
        INC     DE
        LD      BC,0005h        
        LDIR
        RET

        ; Referenced from FF4C
        ; Entry Point
        ; --- START PROC LF6B6 ---
LF6B6:  LD      (00D2h),DE
        LD      (00D4h),HL
        XOR     A
        LD      (00EFh),A
        LD      HL,00DCh        
        LD      (HL),A
        LD      D,H
        LD      E,L
        INC     DE
        LD      BC,0017h        
        LDIR
        LD      HL,(00D2h)
        LD      BC,0006h        
        LD      DE,00D6h        
        LDIR
        EX      DE,HL
        SET     0,(HL)
        LD      HL,(00D4h)
        LD      BC,0006h        
        LD      DE,00E2h        
        LDIR
        LD      HL,00DBh        
        LD      A,(HL)
        LD      (00F0h),A
        BIT     7,(HL)
        LD      HL,00E7h        
        JR      Z,LF769
        BIT     7,(HL)
        JR      Z,LF76D

        ; Referenced from F76B, F772
LF6F8:  LD      HL,00DBh        
        LD      DE,00D6h        
        BIT     7,(HL)
        CALL    NZ,LF544
        LD      HL,00E7h        
        LD      DE,00E2h        
        BIT     7,(HL)
        CALL    NZ,LF544
        LD      HL,00DBh        
        CALL    LF774
        JR      Z,LF78A
        LD      D,C
        LD      HL,00E7h        
        CALL    LF774
        JR      Z,LF78A
        LD      A,C
        SUB     D
        JP      M,LF78A
        LD      (00EEh),A
        JR      Z,LF738
        LD      C,A

        ; Referenced from F736
LF72A:  OR      A
        LD      B,0Ch
        LD      HL,00DCh        

        ; Referenced from F733
LF730:  RL      (HL)
        INC     HL
        DJNZ    LF730
        DEC     C
        JR      NZ,LF72A

        ; Referenced from F727, F74C, F767
LF738:  LD      HL,00E2h        
        LD      DE,00D6h        
        CALL    LF56B
        JR      C,LF74E
        LD      HL,00DCh        
        LD      DE,00E8h        
        CALL    LF55C
        JR      LF738

        ; Referenced from F741
LF74E:  CALL    LF55C
        LD      A,(00EEh)
        CP      00h
        JR      Z,LF78A
        DEC     A
        LD      (00EEh),A
        OR      A
        LD      B,0Ch
        LD      HL,00E7h        

        ; Referenced from F765
LF762:  RR      (HL)
        DEC     HL
        DJNZ    LF762
        JR      LF738

        ; Referenced from F6F2
LF769:  BIT     7,(HL)
        JR      Z,LF6F8

        ; Referenced from F6F6
LF76D:  LD      A,2Dh           ; '-'
        LD      (00EFh),A
        JR      LF6F8

        ; Referenced from F711, F71A
        ; --- START PROC LF774 ---
LF774:  LD      C,00h

        ; Referenced from F783
LF776:  LD      A,(HL)
        CP      00h
        JR      NZ,LF785
        DEC     HL
        LD      A,C
        ADD     A,08h
        LD      C,A
        CP      30h             ; '0'
        RET     Z
        JR      LF776

        ; Referenced from F779, F788
LF785:  RLA
        RET     C
        INC     C
        JR      LF785

        ; Referenced from F714, F71D, F721, F756
        ; --- START PROC LF78A ---
LF78A:  LD      DE,00D6h        
        LD      HL,00F0h        
        BIT     7,(HL)
        CALL    NZ,LF544
        LD      HL,00DBh        
        CALL    LF80B
        LD      DE,00E8h        
        LD      A,(00EFh)
        CP      2Dh             ; '-'
        CALL    Z,LF544
        LD      HL,00EDh        
        CALL    LF80B
        LD      HL,00E8h        
        LD      DE,(00D2h)
        LD      BC,0006h        
        LDIR
        LD      DE,(00D4h)
        LD      HL,00D6h        
        LD      BC,0006h        
        LDIR
        LD      HL,(00D4h)
        LD      DE,(00D2h)
        RET

        ; Referenced from FF49
        ; Entry Point
        ; --- START PROC LF7CC ---
LF7CC:  LD      (00D4h),HL
        LD      (00D2h),DE
        EX      DE,HL
        LD      DE,00D6h        
        LD      BC,0006h        
        LDIR
        LD      DE,00D6h        
        LD      HL,(00D4h)
        CALL    LF56B
        LD      A,(00DBh)
        BIT     7,A
        JR      NZ,LF801
        LD      HL,00D6h        
        XOR     A
        LD      B,06h

        ; Referenced from F7F6
LF7F2:  CP      (HL)
        JR      NZ,LF7FD
        INC     HL
        DJNZ    LF7F2
        LD      A,02h
        DEC     A
        JR      LF802

        ; Referenced from F7F3
LF7FD:  LD      A,02h
        JR      LF802

        ; Referenced from F7EA
LF801:  XOR     A

        ; Referenced from F7FB, F7FF
LF802:  DEC     A
        LD      HL,(00D4h)
        LD      DE,(00D2h)
        RET

        ; Referenced from F696, F798, F7A9
        ; --- START PROC LF80B ---
LF80B:  LD      A,0FFh
        LD      B,05h

        ; Referenced from F812
LF80F:  CP      (HL)
        RET     NZ
        DEC     HL
        DJNZ    LF80F
        INC     A
        CP      (HL)
        RET     NZ
        LD      D,H
        LD      E,L
        INC     DE
        LD      (HL),A
        LD      BC,0005h        
        LDIR
        RET

LF821:  DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh

        ; Entry Point
        ; --- START PROC LFF49 ---
LFF49:  JP      LF7CC

        ; Entry Point
        ; --- START PROC LFF4C ---
LFF4C:  JP      LF6B6

        ; Entry Point
        ; --- START PROC LFF4F ---
LFF4F:  JP      LF5E0

        ; Entry Point
        ; --- START PROC LFF52 ---
LFF52:  JP      LF56B

        ; Entry Point
        ; --- START PROC LFF55 ---
LFF55:  JP      LF55C

        ; Entry Point
        ; --- START PROC LFF58 ---
LFF58:  JP      LF57A

        ; Entry Point
        ; --- START PROC LFF5B ---
LFF5B:  JP      LF4EB

        ; Entry Point
        ; --- START PROC LFF5E ---
LFF5E:  JP      LF1D9

        ; Referenced from DA92
        ; --- START PROC LFF61 ---
LFF61:  JP      WARMBOOT

        ; Referenced from D9B0
        ; --- START PROC LFF64 ---
LFF64:  JP      LF041

        ; Entry Point
        ; --- START PROC LFF67 ---
LFF67:  JP      LEB58

        ; Entry Point
        ; --- START PROC LFF6A ---
LFF6A:  JP      LEB55

        ; Entry Point
        ; --- START PROC LFF6D ---
LFF6D:  JP      LEB52

        ; Entry Point
        ; --- START PROC LFF70 ---
LFF70:  JP      LEB04

        ; Entry Point
        ; --- START PROC LFF73 ---
LFF73:  JP      PRLA36

        ; Entry Point
        ; --- START PROC LFF76 ---
LFF76:  JP      LEA8F

        ; Entry Point
        ; --- START PROC LFF79 ---
LFF79:  JP      LEA8D

        ; Entry Point
        ; --- START PROC LFF7C ---
LFF7C:  JP      PRICAR

        ; Entry Point
        ; --- START PROC LFF7F ---
LFF7F:  JP      LEA3A

        ; Entry Point
        ; --- START PROC LFF82 ---
LFF82:  JP      LEA21

        ; Referenced from D98D
        ; --- START PROC LFF85 ---
LFF85:  JP      LEA09

        ; Referenced from DA45, DA71
        ; --- START PROC LFF88 ---
LFF88:  JP      LE9BA

        ; Entry Point
        ; --- START PROC LFF8B ---
LFF8B:  JP      LE993

        ; Entry Point
        ; --- START PROC LFF8E ---
LFF8E:  JP      LE8B1

        ; Entry Point
        ; --- START PROC LFF91 ---
LFF91:  JP      LE807

        ; Entry Point
        ; --- START PROC LFF94 ---
LFF94:  JP      LE6D4

        ; Entry Point
        ; --- START PROC LFF97 ---
LFF97:  JP      LE778

        ; Entry Point
        ; --- START PROC LFF9A ---
LFF9A:  JP      LE702

        ; Entry Point
        ; --- START PROC LFF9D ---
LFF9D:  JP      LE622

        ; Entry Point
        ; --- START PROC LFFA0 ---
LFFA0:  JP      LE617

        ; Entry Point
        ; --- START PROC LFFA3 ---
LFFA3:  JP      LE5FD

        ; Entry Point
        ; --- START PROC LFFA6 ---
LFFA6:  JP      LE5F2

        ; Entry Point
        ; --- START PROC LFFA9 ---
LFFA9:  JP      LE651

        ; Entry Point
        ; --- START PROC LFFAC ---
LFFAC:  JP      LE6B8

        ; Entry Point
        ; --- START PROC LFFAF ---
LFFAF:  JP      LE6A3

        ; Entry Point
        ; --- START PROC LFFB2 ---
LFFB2:  JP      LE597

        ; Entry Point
        ; --- START PROC LFFB5 ---
LFFB5:  JP      LE5A1

        ; Entry Point
        ; --- START PROC LFFB8 ---
LFFB8:  JP      LE529

        ; Entry Point
        ; --- START PROC LFFBB ---
LFFBB:  JP      LE4E5

        ; Entry Point
        ; --- START PROC LFFBE ---
LFFBE:  JP      LE4CF

        ; Entry Point
        ; --- START PROC LFFC1 ---
LFFC1:  JP      LE4AC

        ; Entry Point
        ; --- START PROC LFFC4 ---
LFFC4:  JP      LE477

        ; Entry Point
        ; --- START PROC LFFC7 ---
LFFC7:  JP      LE369

        ; Entry Point
        ; --- START PROC LFFCA ---
LFFCA:  JP      LE35E

        ; Referenced from DA8C
        ; --- START PROC LFFCD ---
LFFCD:  JP      LE35B

        ; Entry Point
        ; --- START PROC LFFD0 ---
LFFD0:  JP      LE358

        ; Entry Point
        ; --- START PROC LFFD3 ---
LFFD3:  JP      LE349

        ; Entry Point
        ; --- START PROC LFFD6 ---
LFFD6:  JP      LE33E

        ; Entry Point
        ; --- START PROC LFFD9 ---
LFFD9:  JP      LE328

        ; Entry Point
        ; --- START PROC LFFDC ---
LFFDC:  JP      LE312

        ; Entry Point
        ; --- START PROC LFFDF ---
LFFDF:  JP      WAIT

        ; Referenced from DA6E
        ; --- START PROC LFFE2 ---
LFFE2:  JP      LE0C0

        ; Entry Point
        ; --- START PROC LFFE5 ---
LFFE5:  JP      LE0BD

        ; Entry Point
        ; --- START PROC LFFE8 ---
LFFE8:  JP      LEC6F

        ; Entry Point
        ; --- START PROC LFFEB ---
LFFEB:  JP      LEC80

        ; Referenced from D990, DA75
        ; --- START PROC LFFEE ---
LFFEE:  JP      LEC8A

        ; Referenced from D9E6, DA06
        ; --- START PROC LFFF1 ---
LFFF1:  JP      LEC22

        ; Referenced from D94C
        ; --- START PROC LFFF4 ---
LFFF4:  JP      LEC00

        ; Entry Point
        ; --- START PROC LFFF7 ---
LFFF7:  JP      RDTAST

        ; Entry Point
        ; --- START PROC LFFFA ---
LFFFA:  JP      SCROLL

        ; Entry Point
        ; --- START PROC LFFFD ---
LFFFD:  JP      LEC4B

