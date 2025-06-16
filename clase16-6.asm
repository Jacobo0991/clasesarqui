SECTION .data
    colores DB 6Ch, 18h, 0Bh, 0xF0, 03h, 98h
    nombre DB "Jacobo$"

ORG 100H

SECTION .text
    ; LIMPIAR LOS REGISTROS
    XOR AX, AX
    XOR BX, BX
    XOR CX, CX
    XOR DX, DX

    main:
        CALL iniciarModoTexto
        MOV BH, 00h
        
        MOV DL, 30d
        MOV SI, 00h
        JMP bucle
        INT 20H
    
    bucle:
        CALL esperarTecla
        CMP AL, 08h
        JE borrar
        CALL posicionarCursor
        
        MOV BL, [colores + SI]
        MOV BH, 00h
        CALL imprimir
        INC DL
        INC SI
        AND SI, 05d
        JMP bucle

    posicionarCursor:
        MOV AH, 02h
        MOV DH, 13d
        INT 10h
        RET

    borrar:
        DEC DL
        CALL posicionarCursor
        MOV AL, 00h
        CALL imprimir
        JMP bucle

    imprimirArr:
        MOV AL, [nombre + SI]
        INC DL
        CALL posicionarCursor
        CALL imprimir

        INC SI
        CMP SI, 06h
        JB imprimirArr
        RET 

    imprimir:
        MOV AH, 09h
        MOV CX, 01h
        INT 10h
        RET

    iniciarModoTexto:
        MOV AH, 00h
        MOV AL, 03h
        INT 10h
        RET

    esperarTecla:
        MOV AH, 00h
        INT 16h
        RET