;====================
; ChildZ definitions
;====================

; low memory workspace 
KEYPRESS   EQU 0098h   ; stores last key pressed. bit 7: 1=key not yet processed
TEMPO      EQU 00B2h   ; (word) wait time for the WAIT routine
CURPOS     EQU 011Eh   ; (word) address in video ram where the characters are being printed with PRICAR
FLARIG     EQU 0124h   ; bit 7: 1 output to printer, 0 to video
RAMSIZE    EQU 0131h   ; (word) size of the ram calculated at boot

; EPROM routines
SCROLL     EQU $EC40
PROMPT     EQU $EC4B
RDTAST     EQU $EC98
WAIT       EQU $E2F5
PRICAR     EQU $EA58
PRLA36     EQU $EADD        

; memory configuration
FREERAM    EQU $025F  ; start of free RAM address (end of low memory workspace) 
ENDRAM     EQU $7FFF  ; end of RAM address
ROMSTART   EQU $D000  ; ROM start address
VIDEORAM   EQU $A800  ; address of video memory
SCREENCOLS EQU 64     ; number of video columns
SCREENROWS EQU 16     ; number of video rows

; I/O ports
KEYBOARD   EQU 0CDh   ; keyboard port


