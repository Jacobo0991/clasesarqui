ORG 100H

SECTION .text
    ; LIMPIAR LOS REGISTROS
    XOR AX, AX
    XOR BX, BX
    XOR CX, CX
    XOR DX, DX

inmediato:
    MOV AH, 08
    MOV AL, 05
    MOV BH, 02
    MOV CL, 00

por_registro:
    MOV CH, CL
    MOV DH, CH
    MOV DL, DH
    MOV BL, BH

indirecto:
    MOV BP, 207h
    MOV [BP], BH

    MOV BP, 200h
    MOV [BP], DH
    MOV [BP], DL    
    MOV [BP], CH
    MOV [BP], CL

absoluto:
    MOV [206h], BL
    MOV [204h], AX


    INT 20H