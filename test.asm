COMMMENT &
    Modelo pequeño de ensamblador,
    este archivo sirve para hacer las pequeñas pruebas
    a nuevas macros que se vayan agregando al poryecto. 
&

.model small
.stack
.data
    ;Datos
    texto DB 'Hola mundo pequeño','$'
.code
        Main:
        ;Codigo
        MOV AX,@data
        MOV DS,AX
.exit
END