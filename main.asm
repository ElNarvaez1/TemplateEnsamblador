TITLE Alexis Narvaez
.286

COMMENT }
 un comentario nuevo
}

include basico/mouse.lib
include basico/impre.lib
include basico/aritm.lib
include basico/lect.lib
include basico/caden.lib

;========================================================================
; DECLARACION DEL SEGMENTO DE PILA
;========================================================================
pila SEGMENT STACK ; Inicio del segmento de pila
;------------------------------------------------------------------
    DB 64 DUP('PILA') ; Inicialización de la pila
;------------------------------------------------------------------
pila ENDS ; Fin del segmento de pila
 
;========================================================================
; DECLARACION DEL SEGMENTO DE DATOS
datos SEGMENT ; Inicio del segmento de datos
        DATO1 DB 'texto comprobacion','$'
        cadena1 DB 'alexis','$'
        cadena2 DB 'ale','$'
        num2 DB 5
        result DB ? 
datos ENDS ; Fin del segmento de datos
 
;========================================================================
; DECLARACION DEL SEGMENTO DE CODIGO
;========================================================================
CODIGO SEGMENT ; Inicio del segmento de código
 
;------------------------------------------------------------------
    main PROC FAR ; Inicio procedimiento main
;------------------------------------------------------------
        ASSUME CS:CODIGO,DS:datos,SS:pila ; Asignar segmentos
;------------------------------------------------------------
        push DS
        push 0
 
        MOV AX,datos
        MOV DS,AX
;----Codigo



        ;INT 21H ; Llamar a la interrupción del DOS
;------------------------------------------------------------
        MOV AH,4CH ; Función para terminar el programa
        INT 21H ; y volver al DOS
;------------------------------------------------------------
    main ENDP ; Fin del procedimiento p1_hola
;------------------------------------------------------------------
 
CODIGO ENDS ; Fin del segmento código
;========================================================================
END main ; Empezar a ejecutar el procedimiento main
;========================================================================