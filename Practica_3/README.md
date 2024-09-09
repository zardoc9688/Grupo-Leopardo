# Desarrollo de la tercera practica (Practica#3).

## Proyecto 3 (Introduccion)
Para esta tercera practica titulada ***Logica Secuencial***, se ha dejado atras el problema de como se estructura la logica aritmetica para las operaciones en una computadora y se aborda ahora la inquietud de ¿Que mecanismos emplear para el almacenamiento de la informacion o estados en la maquina? o un poco mas traducido ¿Como construir una memoria?. Para que los estudiantes puedan realizar la practica, es necesario comprender ciertas caracteristicas fundamentales para que una memoria pueda funcionar: sincronizacion, un reloj y bucles de retroalimentacion. Posteriormente, el proyecto inicia con las construccion de multiples "chips" basados en logica digital que modelan los comportamientos por los cuales atraviesa la memoria de una computadora, desde lo secuencial hasta el acceso y almacenamiento; algunas de estas piezas son los *Flip-Flops*, *Registro*, *Contadores*, etc. Esta actividad permite finalmente simular y entender como se realizan las operaciones dentro de la Memoria de Acceso Aleatorio (RAM), a traves de interfaces que implementan el lenguaje de descripcion de hardware (HDL) propio de *Nand2tetris*.

1. **¿Cual es el objetivo de este proyecto y que se debe hacer para desarrollarlo?**

El objetivo de este proyecto radica en mostrar al estudiante desde el mas basico, todos los componentes que conforman un elemento tan fundamental de una computadora como lo es la memoria RAM, por lo que explica en un primer momento de manera teorica y grafica el funcionamiento de cada uno de de estos elementos y como se ven involucrados con los siquientes de la lista, para que el aprendiz con esta informacion asimilada sea capaz de generar un codigo .hdl que simule el comportamiento de estos mismos y por ultimo el comportamiento de una memoria RAM. Para esto, los componentes que deben ser desarrollados y que hacen parte de una Memoria de Acceso Aleatorio son:

2. **¿Cuales son las principales Diferencias entre logica Aritmetica y Logica Secuencial?**

### 1. Función Principal

**Lógica Aritmética**:
- Se encarga de realizar operaciones matemáticas básicas, como la suma, resta, multiplicación y división. Estas operaciones son fundamentales para los cálculos numéricos que realiza la Unidad Aritmético-Lógica (ALU) de una CPU.
- Ejemplo: Cálculo de una suma entre dos números enteros.

**Lógica Secuencial**:
- Se ocupa del control del flujo de información a lo largo del tiempo, utilizando circuitos que pueden almacenar y manejar estados, como registros, flip-flops o contadores. Esta lógica es esencial para implementar procesos que dependen de secuencias temporales y decisiones basadas en el estado actual del sistema.
- Ejemplo: Un contador binario que incrementa su valor en cada ciclo de reloj.

### 2. Comportamiento

**Lógica Aritmética**:
- Su funcionamiento es combinacional, lo que significa que la salida en un momento dado depende únicamente de las entradas actuales. No conserva memoria ni depende de estados anteriores.
- Ejemplo: Al ingresar dos números, se obtiene directamente la suma.

**Lógica Secuencial**:
- Funciona de manera secuencial, lo que significa que las salidas dependen no solo de las entradas actuales, sino también de un estado previo. Utiliza elementos de memoria para recordar el estado pasado y así afectar los resultados futuros.
- Ejemplo: Un flip-flop D, cuya salida en el próximo ciclo de reloj depende de la entrada y del estado actual.

### 3. Componentes Típicos

**Lógica Aritmética**:
- Sus componentes principales son puertas lógicas combinacionales como sumadores, restadores, multiplexores, etc.
- Ejemplo: Un sumador de 4 bits, que realiza la suma de dos números de 4 bits sin necesidad de mantener estados.

**Lógica Secuencial**:
- Emplea componentes que almacenan información, como flip-flops, registros, contadores, y memoria RAM. Estos circuitos necesitan un reloj para sincronizar el cambio de estados.
- Ejemplo: Un registro de desplazamiento, que almacena datos y los desplaza con cada ciclo de reloj.

### 4. Dependencia del Reloj

**Lógica Aritmética**:
- No depende de un ciclo de reloj. El resultado de la operación es instantáneo una vez que las entradas están presentes.
- Ejemplo: Un comparador que indica si un número es mayor que otro, sin esperar ningún ciclo de reloj.

**Lógica Secuencial**:
- Depende de un ciclo de reloj para sincronizar las transiciones de estado. El comportamiento está gobernado por este reloj, que dicta cuándo se capturan nuevas entradas y cuándo se actualizan los estados.
- Ejemplo: Un flip-flop tipo D que captura su entrada cuando ocurre un flanco de subida en el reloj.

### 5. Aplicaciones

**Lógica Aritmética**:
- Se utiliza en las operaciones matemáticas y cálculos dentro de un procesador, como en la ALU, que realiza operaciones sobre los datos almacenados.
- Ejemplo: Operaciones aritméticas en los registros de un CPU durante la ejecución de un programa.

**Lógica Secuencial**:
- Se usa para implementar máquinas de estado, controladores, y sistemas que requieren seguimiento de estados anteriores para tomar decisiones futuras.
- Ejemplo: Controladores de semáforos o el manejo de la memoria en un computador.
