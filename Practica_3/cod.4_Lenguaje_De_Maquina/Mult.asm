// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.


@R2 //SE INICIA R2 EN 0
M=0

@R0 //SE CARGA R0
D=M
@END
D;JEQ //VERIFICAR Y PROBAR QUE NO SEA 0

@R1 //SE CARGA  R1
D=M
@END
D;JEQ //VERIFICAR Y PROBAR QUE NO SEA 0

@R0 //SE CARGAR R0
D=M 
@R3 //SE CARGA R3 
M=D //TOMA EL VALOR DE R0 QUE SON LOS CICLOS RESTANTES

(LOOP) //INICIAMOS EL CICLO, DONDE SE REALIZAN LAS SUMAS
@R1
D=M //CARGAMOS R1

@R2
M=D+M //R2 ES R2+R1 SUMA

@R3
M=M-1 //QUITAMOS UN CICLO

D=M //ALMACENAMOS EL CICLO ACTUALIZADO
@LOOP //LLAMAMOS NUEVAMENTE EL CICLO
D;JGT //VERIFICAR Y PROBAR QUE EL CICLO NO SEA 0