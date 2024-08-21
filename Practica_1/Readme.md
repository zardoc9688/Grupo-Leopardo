# Desarrollo de la primera práctica (Prática #1).

## ¿Qué es Nand2Tetris?

Nand2Tetris es más que un simple curso de arquitectura de computadores; es un recorrido práctico y conceptual por todas las capas de abstracción que conforman un sistema computacional completo. A través de una serie de proyectos prácticos, los estudiantes aprenden cómo:

1. **Diseñar compuertas lógicas básicas**: A partir de la compuerta NAND, los estudiantes construyen otras compuertas lógicas como AND, OR, NOT, y más.
2. **Construir componentes de hardware**: Utilizando las compuertas básicas, se diseñan componentes más complejos como multiplexores, registros, unidades aritmético-lógicas (ALU), y la memoria.
3. **Diseñar una CPU y una máquina completa**: Los componentes anteriores se combinan para formar una CPU funcional, capaz de ejecutar programas escritos en lenguaje ensamblador.

## Tipos de Archivos en Nand2Tetris

Durante el curso y los proyectos de Nand2Tetris, trabajarás con varios tipos de archivos, cada uno con un propósito específico:

- **.hdl** (Hardware Description Language): Archivos que describen la estructura de los circuitos de hardware. Aquí es donde se definen las compuertas lógicas y otros componentes.
- **.tst** (Test Script): Archivos que contienen scripts para probar los circuitos descritos en los archivos `.hdl`. Estos scripts automatizan las pruebas de funcionamiento.
- **.out** (Expected Output): Archivos que definen la salida esperada de los circuitos cuando se ejecutan los test scripts. Se utilizan para verificar que la implementación funciona correctamente.
- **.cmp** (Comparison): Archivos que comparan la salida real de un circuito con la salida esperada definida en los archivos `.out`.

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

## Consideraciones Importantes para Trabajar con Nand2Tetris

Para abordar el Proyecto #1 de Nand2Tetris, es crucial comprender el funcionamiento de las compuertas lógicas fundamentales **(NOT, AND, OR, XOR)**. Aparte de necesitar un conocimiento comprensivo de estos elementos, desarrollar circuitos más avanzados como multiplexores **(MUX)** y demultiplexores **(DMUX)** requiere experiencia con el simulador de hardware y su estructura para diseñar, implementar y probar cada compuerta lógica para garantizar un comportamiento conforme a los valores teóricos esperados. Se necesitarán recursos tales como el libro **“The Elements of Computing Systems”** para garantizar que el trabajo del proyecto se entiende y ejecuta de una manera que proporciona un sólido marco teórico y de instrucciones sobre cómo desarrollar y verificar los circuitos en el simulador.

![image](https://github.com/user-attachments/assets/d929643a-c210-45a7-9d52-0133ad99b982)

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

## Recursos Usados

- [Sitio oficial de Nand2Tetris](https://www.nand2tetris.org/)
- [Libro "The Elements of Computing Systems"](https://www.nand2tetris.org/_files/ugd/44046b_f2c9e41f0b204a34ab78be0ae4953128.pdf)
- [Descarga del Simulador de Hardware](https://drive.google.com/file/d/1xZzcMIUETv3u3sdpM_oTJSTetpVee3KZ/view)
