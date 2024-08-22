# Desarrollo de la primera práctica (Prática #1).

## ¿Qué es Nand2Tetris?

Nand2Tetris es más que un simple curso de arquitectura de computadores; es un recorrido práctico y conceptual por todas las capas de abstracción que conforman un sistema computacional completo. A través de una serie de proyectos prácticos, los estudiantes aprenden cómo:

1. **Diseñar compuertas lógicas básicas**: A partir de la compuerta NAND, los estudiantes construyen otras compuertas lógicas como AND, OR, NOT, y más.
2. **Construir componentes de hardware**: Utilizando las compuertas básicas, se diseñan componentes más complejos como multiplexores, registros, unidades aritmético-lógicas (ALU), y la memoria.
3. **Diseñar una CPU y una máquina completa**: Los componentes anteriores se combinan para formar una CPU funcional, capaz de ejecutar programas escritos en lenguaje ensamblador.

## Introducción al proyecto #1 de Nand2Tetris

El Proyecto #1 de Nand2Tetris representa el verdadero punto de partida en la creación de una computadora, comenzando desde lo fundamental. La tarea principal de dicho proyecto se realizará durante la primera etapa que consiste en adquirir el conocimiento de los bloques de construcción de compuertas lógicas primitivas esenciales de cualquier sistema digital. Durante el prototipado y simulación de puertas tales como **NOT, AND, OR y XOR**, los cimientos de construcción y elementos constituyentes de circuitos más sofisticados, que en la etapa final constituyen una computadora completamente operacional. Implementandose en un simulador de hardware, facilitado por las herramientas del curso, los estudiantes no solo implementarán jerárquicamente tales compuertas sino que probarán la funcionalidad adecuada de las mismas. En suma, este proyecto es esencial para garantizar un conocimiento adecuado de la forma en que la lógica binaria informa las operaciones coloquialmente dominantes entre los equipos, por lo que une la brecha entre la teoría y la práctica en lo que respecta a la ingeniería de sistemas.

## Consideraciones Importantes para Trabajar con Nand2Tetris

Para abordar el Proyecto #1 de Nand2Tetris, es crucial comprender el funcionamiento de las compuertas lógicas fundamentales **(NOT, AND, OR, XOR)**. Aparte de necesitar un conocimiento comprensivo de estos elementos, desarrollar circuitos más avanzados como multiplexores **(MUX)** y demultiplexores **(DMUX)** requiere experiencia con el simulador de hardware y su estructura para diseñar, implementar y probar cada compuerta lógica para garantizar un comportamiento conforme a los valores teóricos esperados. Se necesitarán recursos tales como el libro **“The Elements of Computing Systems”** para garantizar que el trabajo del proyecto se entiende y ejecuta de una manera que proporciona un sólido marco teórico y de instrucciones sobre cómo desarrollar y verificar los circuitos en el simulador.
## Tipos de Compuertas a Desarrollar

A lo largo del curso, desarrollarás una variedad de compuertas lógicas que sirven como bloques fundamentales para construir sistemas más complejos. Entre ellas se incluyen:

### Compuertas Básicas:
- **NAND**: La compuerta NAND es el bloque de construcción más elemental y se utiliza para crear todas las demás compuertas.
- **NOT**: Invierte la entrada (si la entrada es 1, la salida es 0, y viceversa).
- **AND**: Produce una salida de 1 solo si ambas entradas son 1.
- **OR**: Produce una salida de 1 si al menos una de las entradas es 1.
- **XOR**: Produce una salida de 1 si exactamente una de las entradas es 1.

### Compuertas Compuestas:
- **Multiplexor (MUX)**: Selecciona entre múltiples entradas y transmite una de ellas como salida, basado en señales de selección.
- **Demultiplexor (DMUX)**: Toma una única entrada y la dirige a una de varias salidas, basado en señales de selección.

## Tipos de Archivos en Nand2Tetris

Durante el curso y los proyectos de Nand2Tetris, trabajarás con varios tipos de archivos, cada uno con un propósito específico:

- **.hdl** (Hardware Description Language): Archivos que describen la estructura de los circuitos de hardware. Aquí es donde se definen las compuertas lógicas y otros componentes.
- **.tst** (Test Script): Archivos que contienen scripts para probar los circuitos descritos en los archivos `.hdl`. Estos scripts automatizan las pruebas de funcionamiento.
- **.out** (Expected Output): Archivos que definen la salida esperada de los circuitos cuando se ejecutan los test scripts. Se utilizan para verificar que la implementación funciona correctamente.
- **.cmp** (Comparison): Archivos que comparan la salida real de un circuito con la salida esperada definida en los archivos `.out`.

## Herramientas Similares a Nand2Tetris

Si estás interesado en explorar otras herramientas educativas que ofrecen experiencias similares a Nand2Tetris, aquí tienes algunas opciones:

1. **Logisim**:
   - **Descripción**: Logisim es una herramienta de simulación de circuitos digitales de código abierto que permite diseñar y simular circuitos lógicos de manera visual. Es ideal para principiantes y ofrece una interfaz gráfica para la creación de circuitos desde puertas lógicas hasta CPUs simples.
   - **Características**:
     - Interfaz visual para diseñar circuitos.
     - Simulación en tiempo real de circuitos digitales.
     - Permite construir desde puertas lógicas básicas hasta CPUs completas.
   - **Sitio web**: [Logisim](http://www.cburch.com/logisim/)

2. **Circuit Verse**
   - **Descripción**: CircuitVerse es una plataforma educativa en línea diseñada para enseñar y simular circuitos digitales de manera interactiva. La plataforma está dirigida tanto a principiantes como a usuarios avanzados, proporcionando una forma accesible y práctica de aprender sobre la lógica digital y el diseño de circuitos.
   - **Caracteristicas**:
     - Interfaz gráfica intuitiva.
     - Amplia biblioteca de componentes.
     - Colaboración y compartición.
   - **Sitio web**: [Circuit Verse](https://circuitverse.org)


## Proyecto 1 .hdl

A continuacion explicaremos brevemente cada uno de los .hdl.

## Nand

La compuerta Nand está creada de manera nativa en las herramientas de Nand2Tetris. Sirve como la base para construir todas las demás compuertas lógicas.

![image](https://github.com/user-attachments/assets/40439d16-d060-40a4-aa3d-7324c08c993f)

## Not

La compuerta Not invierte su entrada. Se puede construir utilizando una única compuerta Nand.

![image](https://github.com/user-attachments/assets/6172ce31-bcfe-4b79-a78e-8e421ca03371)

## And

La compuerta And devuelve 1 solo si ambas entradas son 1. Para implementarla usando la compuerta Nand, se utilizan la compuerta Nand y su salida se le niega con la compuerta not anteriormente creada.

![image](https://github.com/user-attachments/assets/f95f4f8d-39ea-46e5-8622-6b18b1268342)

## Or

La compuerta Or devuelve 1 si al menos una de las entradas es 1, y devuelve 0 solo cuando ambas entradas son 0. Se puede construir utilizando compuertas Not y una compuerta Nand. Primero, las entradas se invierten usando las compuertas Not, y luego esas salidas invertidas se combinan utilizando la compuerta Nand. Este diseño se basa en la ley de De Morgan, que permite simular el comportamiento de Or utilizando una compuerta Nand y compuertas Not.

![image](https://github.com/user-attachments/assets/f8b2e48c-477d-448b-a9b9-f94fd141d03d)

## Xor

La compuerta Xor (o exclusión lógica) devuelve 1 cuando las entradas son diferentes y 0 cuando son iguales. Se puede construir utilizando las compuertas Not, And y Or. En esta implementación:

Xor = A(¬B) + (¬A)B

![image](https://github.com/user-attachments/assets/e1a01434-e6d2-4a66-b78d-34868d431892)


## Mux

La tabla de verdad de la compuerta Mux se puede reducir (en términos de And, Or y Not) de forma que esta sólo depende de la entrada sel. cuando

Mux = (¬sel) a + sel b

![image](https://github.com/user-attachments/assets/a2b6722f-26cc-40e3-81a4-644cb8d9a538)


## DMux

La tabla de verdad de la compuerta DMux se reduce utilizando las compuertas Not y And, de manera que la salida depende únicamente del bit de selección sel. Cuando sel es 0, la señal de entrada in se envía a la salida a. Cuando sel es 1, la señal de entrada se envía a la salida b.

## And16

La compuerta And16 realiza una operación And en dos buses de 16 bits, comparando bit a bit. Cada par de bits correspondientes de las entradas a y b se pasa a una compuerta And, produciendo una salida de 16 bits en total.

## OR16

La compuerta OR16 realiza una operación Or en dos buses de 16 bits, comparando bit a bit. Cada par de bits correspondientes de las entradas a y b se pasa a una compuerta Or, produciendo una salida de 16 bits en total.

## Mux16

Un multiplexor de 16 bits es casi similar al Chip Multiplexor descrito anteriormente, excepto que ambas entradas son cada una de 16 bits de ancho, mientras que el selector es de un solo bit.

## Or8Way

La compuerta Or8Way realiza una operación Or en un bus de 8 bits, devolviendo 1 si al menos uno de los bits de entrada es 1. La implementación se realiza en tres niveles de compuertas Or.

## Mux4Way16

El Mux4Way16 selecciona entre cuatro buses de 16 bits (a, b, c, d) utilizando dos bits de selección (sel[0] y sel[1]). La salida es un bus de 16 bits (out) que corresponde al bus seleccionado. La implementación se realiza en dos etapas utilizando compuertas Mux16.

## Mux8Way16

El Mux8Way16 selecciona entre ocho buses de 16 bits (a, b, c, d, e, f, g, h) utilizando tres bits de selección (sel[0], sel[1], sel[2]). La salida es un bus de 16 bits (out) que corresponde al bus seleccionado. La implementación se realiza en dos etapas utilizando compuertas Mux4Way16 y Mux16

## DMux4Way

El DMux4Way distribuye una señal de entrada (in) a una de cuatro salidas (a, b, c, d), basándose en dos bits de selección (sel[0] y sel[1]). La implementación se realiza en dos etapas utilizando compuertas DMux:

## DMux8Way

El DMux8Way distribuye una señal de entrada (in) a una de ocho salidas (a, b, c, d, e, f, g, h), utilizando tres bits de selección (sel[0], sel[1], sel[2]). La implementación se realiza en dos etapas utilizando compuertas DMux y DMux4Way:

## Recursos Usados

- [Sitio oficial de Nand2Tetris](https://www.nand2tetris.org/)
- [Libro "The Elements of Computing Systems"](https://www.nand2tetris.org/_files/ugd/44046b_f2c9e41f0b204a34ab78be0ae4953128.pdf)
- [Descarga del Simulador de Hardware](https://drive.google.com/file/d/1xZzcMIUETv3u3sdpM_oTJSTetpVee3KZ/view)
