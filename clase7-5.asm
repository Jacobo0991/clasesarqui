ORG 100H

SECTION .text

    ; positivo
    ; MOV AL, 05d
    ; CMP AL, 03d
    ; ; negativo
    ; MOV BL, 03d
    ; CMP BL, 05d
    ; ; cero
    ; CMP AL, 05d

    ; ;cero
    ; MOV AL, 05d
    ; CMP AL, 05d
    ; JZ salto
    ; ;negativo
    ; MOV AL, 03d
    ; CMP AL, 05d 
    
    ;positivo
    MOV AL, 05d
    CMP AL, 03d
    JZ salto
    ;cero
    CMP AL, 05
    JZ salto
    MOV AL, 03d
    CMP AL, 05d 

salto:
    MOV BX, 200h
INT 20H