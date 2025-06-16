ORG 100H

; guardar la suma de 20 y 30 en la 200, sumarle 50 y guardar ese resultado en la 201
SECTION .text
    CLC
    MOV AL, 20d
    MOV AH, 30d
    ADD AL, AH
    MOV [200h], AL
    MOV BL, 50d
    ADD BL, AL
    MOV SI, 201h
    MOV [SI], BL

    ; DIVIDIR EL RESULTADO ENTRE 3, GUARDAR EL COCIENTE EN 207 EL RESIDUO EN 210
    ; MOV DL, [202h]
    ; XOR DL, DL
    ; MOV [202h], DL 
    MOV AX, [SI]
    MOV CL, 03d
    DIV CL ; 3
    MOV [207h], AL ; 21
    MOV [210h], AH ; 1

    ; SUMAR 255 + 1 Y GUARDARLO EN 212
    CLC
    MOV BL, 0xFF
    ADD BL, 01d ; GENERA ACARREO (CF)
    MOV BH, 00d
    ADC BH, 00d ; TERMINA EN 1 PORQUE GENERÓ ACARREO LA SUMA ANTERIOR
    
    INT 20H