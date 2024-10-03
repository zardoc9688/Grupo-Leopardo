// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/6/max/Max.asm

// Computes R2 = max(R0, R1)  (R0,R1,R2 refer to RAM[0],RAM[1],RAM[2])
// Usage: Before executing, put two values in R0 and R1.

  // D = R0 - R1
  @R0         // Cargar el valor de R0 en D
  D=M         // D = M[R0] (D = R0)
  @R1         // Cargar el valor de R1
  D=D-M       // D = R0 - R1

  // If (D > 0) goto ITSR0
  @ITSR0      // Si R0 > R1, saltar a la etiqueta ITSR0
  D;JGT       // Si D (R0 - R1) es mayor que 0, significa que R0 > R1

  // Si R1 es mayor o igual a R0, cargar R1 en D
  @R1         // Cargar el valor de R1 en D
  D=M         // D = M[R1] (D = R1)
  @OUTPUT_D   // Saltar a la etiqueta OUTPUT_D
  0;JMP       // Saltar incondicionalmente a OUTPUT_D

(ITSR0)       // Si R0 es mayor que R1
  @R0         // Cargar el valor de R0 en D
  D=M         // D = M[R0] (D = R0)

(OUTPUT_D)    // Guardar el valor máximo en R2
  @R2         // Dirección de R2
  M=D         // M[R2] = D (guardar el valor máximo en R2)

(END)         // Bucle infinito para finalizar el programa
  @END
  0;JMP
