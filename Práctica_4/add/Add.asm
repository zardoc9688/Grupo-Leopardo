// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/6/add/Add.asm

// Computes R0 = 2 + 3  (R0 refers to RAM[0])

// Computa R0 = 2 + 3  (R0 refiere a RAM[0])

// Etiqueta: Inicialización del primer operando
@2         // Cargar el valor 2 en el registro A
D=A        // Almacenar el valor de A (2) en el registro D

// Etiqueta: Suma con el segundo operando
@3         // Cargar el valor 3 en el registro A
D=D+A      // Sumar el valor de D (2) con A (3) y almacenar el resultado (5) en D

// Etiqueta: Guardar el resultado en la memoria RAM[0]
@0         // Cargar la dirección de memoria RAM[0] en el registro A
M=D        // Almacenar el valor de D (5) en RAM[0]
