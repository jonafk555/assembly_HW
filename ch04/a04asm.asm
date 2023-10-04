TITLE    A04ASM2  (EXE)  Move and add operations
;---------------------------------------------------------------------------
             .MODEL   SMALL
             .STACK    64                 ;define stack
             .DATA                            ;define data
FLDD  DW  215
FLDE  DW  125
FLDF  DW   ?
;----------------------------------------------------------------------------
             .CODE                          ;define code segment
MAIN    PROC   FAR
             MOV      AX, @data      ;set address of data
             MOV      DS, AX            ;    segment in DS
             mov      al,40h
             shl      al,1
             mov      bl,1ah
             mul      bl 
             MOV      AX, 4C00H      ;end processing
             INT         21H
MAIN    ENDP                             ;end of procedure
             END   MAIN                    ;end of program
