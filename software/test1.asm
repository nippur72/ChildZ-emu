PROMPT equ $ec4b
RDTAST equ $ec98

org $0400

main:
    ld   de, $a801
    call PROMPT
loopa:
    call RDTAST
    ld   (de), a
    inc  de
    jp   loopa 
