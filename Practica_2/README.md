# Desarrollo de la segunda práctica (Práctica #2).
## Proyecto #2 (Introducción)

El Proyecto #2 de Nand2Tetris, titulado ***"Lógica Aritmética"***, es una etapa crucial en la construcción de una computadora desde cero. En este proyecto, los estudiantes se sumergen en el fascinante mundo de las operaciones aritméticas y lógicas a nivel de hardware. El enfoque principal es la creación de chips aritméticos fundamentales que servirán como base para la Unidad Aritmético-Lógica **(ALU)** de la computadora. Comenzando con componentes simples como el medio sumador **(Half Adder)** y el sumador completo **(Full Adder)**, a partir del entendimiento de estos componentes se podrá avanzar gradualmente hacia la implementación de chips más complejos como sumadores de 16 bits **(Add16)** e incrementadores **(Inc16)**. A medida que el proyecto progresa, se introducen operaciones lógicas y de comparación, culminando en la construcción de una ALU completamente funcional. Esta ALU será capaz de realizar una variedad de operaciones, incluyendo suma, resta, AND, OR y comparaciones, todas implementadas utilizando el lenguaje de descripción de hardware **(HDL)** específico de *Nand2Tetris.*

1. **¿Cuál es el objetivo de cada uno de esos proyectos con sus palabras y describa que debe hacer para desarrollarlo?**

El Objetivo del proyecto #2 tiene como fundamento el desarrollo de conocimiento de la lógica aritmética en base a la construcción de los componentes requeridos para la elaboración de la unidad central de procesamiento **(CPU)**. El proceso de producción se lleva a cabo a traves de una relación de circuitos eléctricos a partir de las compuertas lógicas para la creación de las unidades aritmético lógicas **(ALU)**. Estos componentes se fabrican a raiz de algunos componentes ya vistos en la práctica anterior junto con las compuertas básicas. Los componentes a desarrollar en este proyecto son los siguientes: 

-*Half Adder*: Es un componente fundamental en la construcción de un sumador binario, que toma dos bits de entrada y genera dos bits de salida: la suma **(sum)** y el acarreo **(carry)**. 'suma' representa el resultado de sumar los dos bits, mientras que 'carry' es un bit que indica si la suma produjo un "excedente", es decir, si la suma rebasa el valor de un bit. Para la construcción de este chip se ejecuta en fundamento de compuertas lógicas.

<!--  Insertar tabla de verdad junto con el diseño de compuertas   -->

![WhatsApp Image 2024-09-09 at 4 06 46 PM](https://github.com/user-attachments/assets/5045ebfd-f136-45a0-a680-b79f74889815)

-*Full Adder*: Se encarga de sumar no solo dos bits, sino también un tercer bit de acarreo (carry-in) que proviene de una suma anterior. Genera una suma (sum) y un acarreo de salida (carry-out). Cuando los bits de entrada a, b y c se suman, el Full Adder produce una salida de suma (sum) y determina si hubo un acarreo que debe transferirse a la siguiente etapa de suma. Para la elaboración de este chip se puede llevar a cabo de dos Half-Adder o compuertas lógicas.

<!--  Insertar tabla de verdad junto con el diseño de compuertas   -->

![WhatsApp Image 2024-09-09 at 4 06 46 PM (1)](https://github.com/user-attachments/assets/7847cdba-14b8-4f9e-8379-ecf1706668a2)

-*Add16*: Es un componente que realiza la suma de dos números binarios de 16 bits, generando un resultado de 16 bits junto con un bit de acarreo de salida. La suma de dos números de 16 bits implica sumar cada bit de ambos números y propagar el acarreo de los bits LSB hacia los bits MSB. Cada suma de un par de bits produce un resultado (sum) y un posible acarreo, que debe añadirse a la siguiente suma. Para desarrollar este chip, se producir en varios Full Adder conectados entre sí debido a que este chip suma tres bits (dos de entrada y el acarreo). Cada Full Adder suma los bits correspondientes de las posiciones de a y b, junto con el acarreo de la posición anterior, y genera una suma y un nuevo acarreo.

<!--  Insertar tabla de verdad junto con el diseño de compuertas   -->

-*Inc16*: Es un componente que incrementa un número binario de 16 bits en 1, toma una entrada de 16 bits y devuelve un número que es 1 unidad mayor. Para la creación de este componente se puede utilizar una cadena de Half-Adders o Full-Adders conectados en serie, como tambien a compuertas lógicas pero en este caso por cuestiones de optimización e implementación de la Add16 se construirá a partir de este componente.

<!--  Insertar tabla de verdad junto con el diseño de compuertas   -->

-*ALU*: Es uno de los componentes fundamentales de un procesador, encargada de realizar operaciones aritméticas y lógicas. Recibe dos entradas de 16 bits, x y y, y realiza una operación definida por un conjunto de bits de control. Los bits de control especifican qué operaciones se deben realizar sobre las entradas antes de combinarlas (por ejemplo, si deben ser negadas o establecidas a cero), así como la operación que debe ejecutarse **(suma, AND, OR)**. La ALU también genera indicadores como si el resultado es cero o negativo.

<!--  Insertar tabla de verdad junto con el diseño de compuertas   -->


## Proyecto #3 (Introducción)

Para este tercer proyecto titulado ***Logica Secuencial***, se ha dejado atras el problema de como se estructura la logica aritmetica para las operaciones en una computadora y se aborda ahora la inquietud de ¿Que mecanismos emplear para el almacenamiento de la informacion o estados en la maquina? o un poco mas traducido ¿Como construir una memoria?. Para que los estudiantes puedan realizar la practica, es necesario comprender ciertas caracteristicas fundamentales para que una memoria pueda funcionar: sincronizacion, un reloj y bucles de retroalimentacion. Posteriormente, el proyecto inicia con las construccion de multiples "chips" basados en logica digital que modelan los comportamientos por los cuales atraviesa la memoria de una computadora, desde lo secuencial hasta el acceso y almacenamiento; algunas de estas piezas son los *Flip-Flops*, *Registro*, *Contadores*, etc. Esta actividad permite finalmente simular y entender como se realizan las operaciones dentro de la Memoria de Acceso Aleatorio (RAM), a traves de interfaces que implementan el lenguaje de descripcion de hardware (HDL) propio de *Nand2tetris*.

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
- - Ejemplo: Operaciones aritméticas en los registros de un CPU durante la ejecución de un programa.

**Lógica Secuencial**:
- Se usa para implementar máquinas de estado, controladores, y sistemas que requieren seguimiento de estados anteriores para tomar decisiones futuras.
- Ejemplo: Controladores de semáforos o el manejo de la memoria en un computador.
