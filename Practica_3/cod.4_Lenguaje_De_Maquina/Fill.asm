// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.

(BEGIN)  // Inicio del programa principal

@KBD      // Se verifica la entrada del teclado
D=M
@BLACK
D;JNE       // Si una tecla está presionada, salta a @BLACK
@WHITE
D;JEQ         // Si no hay teclas presionadas, salta a @WHITE

(BLACK)
@counter // Inicializa el contador de píxeles (con valor -1)
M=-1
(LOOP)  // Inicia el bucle para pintar de negro
@counter
M=M+1        // Incrementa el valor del contador
D=M
@SCREEN
A=A+D        // Selecciona el pixel actual
M=-1         // Establece el pixel a negro
@8191        // Constante que representa el tamaño de la pantalla
D=D-A        // Verifica si ha pintado toda la pantalla (resta a posición actual vs el tamaño de la pantalla)
@LOOP
D;JNE        // Si no se ha completado el pintado de pantalla, repite el bucle
@BEGIN
0;JMP        // Al pintar todo la pnatalla, Reinicia el programa

(WHITE)
@counterwhite // Inicializa el contador para pintar de blanco
M=-1
(LOOPWHITE)  // Inicia el bucle para pintar de blanco
@counterwhite
M=M+1         // Incrementa el contador
D=M
@SCREEN
A=A+D         // Selecciona el pixel actual
M=0           // Establece el pixel a blanco
@8191
D=D-A         // Verifica si ha pintado toda la pantalla
@LOOPWHITE
D;JNE         // Si no ha completado, repite el bucle
@BEGIN
0;JMP         // Reinicia el programa