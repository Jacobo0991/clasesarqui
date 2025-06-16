ORG 100H

SECTION .text
    ; LIMPIAR LOS REGISTROS
    XOR AX, AX
    XOR BX, BX
    XOR CX, CX
    XOR DX, DX

inmediato:
    MOV AH, 21d
    MOV AL, 0FFh
    MOV BH, 10010b
    MOV BL, "A" ;NO SE ENVÍA A, SINO EL ASCII


por_registro:
    MOV CX, AX
    MOV DX, BX

reset:
    XOR AX, AX
    XOR BX, BX


absoluto:
    ; DIRECCIONAMIENTO POR REGISTROS DE 8 BITS
    MOV [200h], CH
    MOV AH, [200h]
    ; DIRECCIONAMIENTO CON REGISTROS DE 16 BITS
    MOV [210h], DX
    MOV BX, [210h]

indirecto:
    MOV BP, 200h
    MOV AL, [BP]

    INT 20H