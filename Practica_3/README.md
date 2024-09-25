# Desarrollo de la tercera practica (Practica#3).

## Proyecto #4 y 5 (Introducción)

La pratcica 3 involucra los proyectos 4 y 5 de Nand2Tetris, el objetivo general de ambos es diseñar y ensamblar los componentes principales que componen una computadora funcional, específicamente la memoria (Memory.hdl), la CPU (CPU.hdl) y el chip de computadora completo (Computer.hdl). A través de estos elementos, se lograra integrar los módulos de procesamiento y almacenamiento que permiten que la computadora Hack ejecute programas escritos en su lenguaje de máquina, y ademas, los dos programas clave en este proyecto son Mult.asm y Fill.asm, cada uno con un propósito específico que nos permitirá explorar cómo interactúa el código ensamblador con la memoria, la pantalla y el teclado de la computadora Hack.


1. **¿Por qué el lenguaje de máquina es importante para definir la arquitectura computacional?**

El lenguaje de máquina es esencial para definir la arquitectura computacional debido a que representa la conexion directa entre el hardware y el software. A través de este lenguaje, las instrucciones escribe un programador o desarrollador se traducen en operaciones determinadas que debe ejecutar el hardware de la computadora. Por ejemplo, el lenguaje de máquina permite un control total sobre los componentes físicos de la computadora, como la CPU, la memoria y los registros. Cada instrucción en este lenguaje está diseñada específicamente para ser entendida y ejecutada directamente por el hardware, garantizando que las tareas se realicen de manera precisa y rapida.
Algunas de las caracteristicas que permite realizar este lenguaje es simbolizar procedimientos muy simples, como sumar o almacenar datos, que son fundamentales para construir operaciones más complejas en lenguajes de alto nivel. Finalmente, se podria concluir que el entendimiento de este tipo de lenguaje proporciona una visión clara de cómo los programas se ejecutan realmente dentro del hardware, permitiendo la optimizacion de software para mejorar su interaccion con los componentes fisicos del computador, haciendo que las tareas se realizan de forma mas eficiente y veloz.



3. **¿Qué diferencia ven entre arquitectura computacional, arquitectura de software y arquitectura del sistema? Justifique su respuesta.**

La arquitectura computacional se centra en el nivel más bajo de la computadora, conteniendo la estructura física (CPU, memoria, etc). Al pasar a la arquitectura de software, se estudia la 
estructura lógica y cómo se relacionan los módulos, componentes y subsistemas. Finalmente, la arquitectura del sistemas cubre las dos anteriores, de manera que considera cómo los componentes 
físicos y lógicos interactúan entre sí.

- Arquitectura computacional: Se centra en el hardware y en cómo se ejecutan las instrucciones a nivel físico.
- Arquitectura de software: Se enfoca en la estructura lógica y en cómo se organizan y relacionan los componentes y módulos del software.
- Arquitectura de sistemas: Integra ambos niveles para garantizar que hardware y software trabajen de manera conjunta, eficiente y coherente.


## Pregunta bonus
Como informático o computista: ¿La arquitectura computacional o la arquitectura del sistema no tiene en cuenta igualmente la arquitectura de software?.

 La arquitectura computacional y del sistema tienen en cuenta la arquitectura de software, pero no directamente. Se centran más en el hardware y cómo funciona internamente, aunque esto afecta al software de manera indirecta. Esto es así porque:

 1) Lo que se decide en el hardware influye en cómo se hace el software. Por ejemplo, según el tipo de procesador, el código se optimiza de una forma u otra.
 2) El hardware pone límites de rendimiento que el software no puede ignorar.
 3) El sistema operativo, que es parte de la arquitectura del sistema, da una base y herramientas que el software usa.
 4) Cuando el hardware avanza, como con los procesadores de varios núcleos, cambia la forma en que se programa.
 5) En los sistemas complejos de hoy en día, se suele pensar en todo junto, desde el hardware hasta las aplicaciones.

Así que, aunque no sea lo principal en lo que se fijan, la arquitectura computacional y del sistema sí acaban afectando a cómo se diseña y evoluciona el software.
