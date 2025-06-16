ORG 100H

SECTION .text
    ; LIMPIAR LOS REGISTROS
    XOR AX, AX
    XOR BX, BX
    XOR CX, CX
    XOR DX, DX

    ; DIRECCIONAMIENTO
    ; INMEDIATO PARA GUARDAR 6 EN DECIMAL
    MOV AL, 06d

    ; GUARDAR POR REGISTRO "A"
    MOV BL, "A"
    MOV CL, BL
    
    ; MULTIPLICACIÓN
    MOV BP, 210h
    MUL BL
    MOV [BP], AX

    ; FIN
    MOV DL, "F"
    MOV DH, "I"
    MOV BL, "N"
    MOV CX, 06d

comp:
    CMP AX, 70d
    JA fin
    INC CX
    MOV AX, CX
    JMP comp

fin:
    MOV [220h], DL
    MOV [221h], DH
    MOV [222h], BL

    INT 20H