ORG 100H

SECTION .text
    ; LIMPIAR LOS REGISTROS
    XOR AX, AX
    XOR BX, BX

    ; DIRECCIONAMIENTO PARA DATOS INICIALES
    MOV AX, 5d
    MOV BX, 13d

    ; CODIGO PRINCIPAL
main:
    CALL addition

    CALL comp_subroutine

    INT 20H

addition:
    ADD AX, BX
    RET

comp_subroutine:
    CMP AX, 20d
    JA end ; if
    ; else
    CALL add_five

    JMP comp_subroutine

end:
    MOV byte[200h], "e"
    MOV byte[201h], "n"
    MOV byte[202h], "d"
    RET

add_five:
    ADD AX, 05d
    RET