ORG 100h

SECTION .data
    msgMayor DB 'El digito es mayor que 5$'
    msgMenor DB 'El digito es menor que 5$'
    msgIgual DB 'El digito es igual a 5$'
    msgFin DB 'Fin del programa$'

SECTION .text
    ; LIMPIAR LOS REGISTROS
    XOR AX, AX
    XOR BX, BX
    XOR CX, CX
    XOR DX, DX

    main:
        CALL iniciarModoTexto
        MOV BH, 00h
        CALL centrarCursor
        CALL compararNumero
        CALL esperarTecla
        CALL cambiarPagina
        MOV BH, 01h
        CALL centrarCursor
        CALL imprimirFin
        CALL esperarTecla
        INT 20H

    imprimirFin:
        MOV AH, 09h
        MOV DX, msgFin
        INT 21h
        RET

    iniciarModoTexto:
        MOV AH, 00h
        MOV AL, 03h
        INT 10h
        RET

    centrarCursor:
        MOV AH, 02h
        MOV DH, 13d
        MOV DL, 30d
        INT 10h
        RET

    compararNumero:
        MOV AL, 07d
        CMP AL, 5d
        JA mayor
        JB menor
        JE igual

    mayor:
        MOV AH, 09h
        MOV DX, msgMayor
        INT 21h
        RET
    
    menor:
        MOV AH, 09h
        MOV DX, msgMenor
        INT 21h
    
    igual:
        MOV AH, 09h
        MOV DX, msgIgual
        INT 21h

    esperarTecla:
        MOV AH, 00h
        ;AH->BIOS SCAN CODE
        ;AL->ASCII
        INT 16h
        CMP AL, 'S'
        JNE esperarTecla
        RET

    cambiarPagina:
        MOV AH, 05h
        MOV AL, 01h
        INT 10h
        RET