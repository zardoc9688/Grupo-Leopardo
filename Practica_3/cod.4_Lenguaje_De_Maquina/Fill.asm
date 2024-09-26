// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Este programa escucha continuamente la entrada del teclado
// y cambia el estado de la pantalla según si se ha presionado una tecla o no.
// Si se presiona una tecla, el programa pinta toda la pantalla de negro.
// Si no hay ninguna tecla presionada, el programa pinta toda la pantalla de blanco.
// 
// El programa principal comienza en (BEGIN), donde verifica si hay alguna
// entrada en el teclado revisando la memoria mapeada a @KBD.
// Si el valor de @KBD es diferente de 0 (es decir, una tecla está presionada), 
// salta a la sección (BLACK) para pintar la pantalla de negro.
// Si el valor de @KBD es 0 (ninguna tecla está presionada), salta a la sección
// (WHITE) para pintar la pantalla de blanco.
// 
// En la sección (BLACK), un contador recorre cada posición de la memoria mapeada
// a la pantalla (@SCREEN), escribiendo -1 (negro) en cada celda de la memoria 
// hasta que toda la pantalla está pintada. Luego regresa al inicio del programa.
// 
// En la sección (WHITE), el contador hace lo mismo, pero escribe 0 (blanco)
// en cada celda de la memoria de la pantalla, y al terminar, también regresa al
// inicio del programa, para verificar nuevamente la entrada del teclado.
// 
// El proceso es continuo y forma un ciclo infinito, alternando entre pintar la pantalla
// de negro cuando una tecla está presionada y de blanco cuando no hay teclas presionadas.


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
