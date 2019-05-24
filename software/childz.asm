;====================
; ChildZ definitions
;====================

; low memory workspace 
KEYPRESS   EQU 0098h
TEMPO      EQU 00B2h
FLARIG     EQU 0124h
RAMSIZE    EQU 0131h

; EPROM routines
SCROLL     EQU $EC40
PROMPT     EQU $EC4B
RDTAST     EQU $EC98
WAIT       EQU $E2F5
PRICAR     EQU $EA58

; memory configuration
FREERAM    EQU $025F
ENDRAM     EQU $7FFF
ROMSTART   EQU $D000
VIDEORAM   EQU $A800
SCREENCOLS EQU 64
SCREENROWS EQU 16

; I/O ports
KEYBOARD   EQU 0CDh


