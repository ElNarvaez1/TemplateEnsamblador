COMMENT &
    Modelo pequeño de ensamblador,
    este archivo sirve para hacer las pequeñas pruebas
    a nuevas macros que se vayan agregando al poryecto. 
&
include basico/mouse.lib
include basico/impre.lib
include basico/aritm.lib
include basico/lect.lib
include basico/caden.lib
.model small
.stack
.data
    ;Datos
    cadena DB 'alexis','$'
    cara DB 'q','$'
    number DB ?
.code
        Main:
        ;Codigo
        MOV AX,@data
        MOV DS,AX

        compararCar cadena, cara, number
        impr 3,number
.exit
END