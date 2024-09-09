# Desarrollo de la segunda práctica (Práctica #2).
## Proyecto #2 (Introducción)

El Proyecto #2 de Nand2Tetris, titulado ***"Lógica Aritmética"***, es una etapa crucial en la construcción de una computadora desde cero. En este proyecto, los estudiantes se sumergen en el fascinante mundo de las operaciones aritméticas y lógicas a nivel de hardware. El enfoque principal es la creación de chips aritméticos fundamentales que servirán como base para la Unidad Aritmético-Lógica **(ALU)** de la computadora. Comenzando con componentes simples como el medio sumador **(Half Adder)** y el sumador completo **(Full Adder)**, a partir del entendimiento de estos componentes se podrá avanzar gradualmente hacia la implementación de chips más complejos como sumadores de 16 bits **(Add16)** e incrementadores **(Inc16)**. A medida que el proyecto progresa, se introducen operaciones lógicas y de comparación, culminando en la construcción de una ALU completamente funcional. Esta ALU será capaz de realizar una variedad de operaciones, incluyendo suma, resta, AND, OR y comparaciones, todas implementadas utilizando el lenguaje de descripción de hardware **(HDL)** específico de *Nand2Tetris.*

1. **¿Cuál es el objetivo de cada uno de esos proyectos con sus palabras y describa que debe hacer para desarrollarlo?**

El Objetivo del proyecto #2 tiene como fundamento el desarrollo de conocimiento de la lógica aritmética en base a la construcción de los componentes requeridos para la elaboración de la unidad central de procesamiento **(CPU)**. El proceso de producción se lleva a cabo a traves de una relación de circuitos eléctricos a partir de las compuertas lógicas para la creación de las unidades aritmético lógicas **(ALU)**. Estos componentes se fabrican a raiz de algunos componentes ya vistos en la práctica anterior junto con las compuertas básicas. Los componentes a desarrollar en este proyecto son los siguientes: 

-*Half Adder*: Es un componente fundamental en la construcción de un sumador binario, que toma dos bits de entrada y genera dos bits de salida: la suma **(sum)** y el acarreo **(carry)**. 'suma' representa el resultado de sumar los dos bits, mientras que 'carry' es un bit que indica si la suma produjo un "excedente", es decir, si la suma rebasa el valor de un bit. Para la construcción de este chip se ejecuta en fundamento de compuertas lógicas.

<!--  Insertar tabla de verdad junto con el diseño de compuertas   -->

-*Full Adder*: Se encarga de sumar no solo dos bits, sino también un tercer bit de acarreo (carry-in) que proviene de una suma anterior. Genera una suma (sum) y un acarreo de salida (carry-out). Cuando los bits de entrada a, b y c se suman, el Full Adder produce una salida de suma (sum) y determina si hubo un acarreo que debe transferirse a la siguiente etapa de suma. Para la elaboración de este chip se puede llevar a cabo de dos Half-Adder o compuertas lógicas.

<!--  Insertar tabla de verdad junto con el diseño de compuertas   -->

-*Add16*: Es un componente que realiza la suma de dos números binarios de 16 bits, generando un resultado de 16 bits junto con un bit de acarreo de salida. La suma de dos números de 16 bits implica sumar cada bit de ambos números y propagar el acarreo de los bits LSB hacia los bits MSB. Cada suma de un par de bits produce un resultado (sum) y un posible acarreo, que debe añadirse a la siguiente suma. Para desarrollar este chip, se producir en varios Full Adder conectados entre sí debido a que este chip suma tres bits (dos de entrada y el acarreo). Cada Full Adder suma los bits correspondientes de las posiciones de a y b, junto con el acarreo de la posición anterior, y genera una suma y un nuevo acarreo.

<!--  Insertar tabla de verdad junto con el diseño de compuertas   -->

-*Inc16*: Es un componente que incrementa un número binario de 16 bits en 1, toma una entrada de 16 bits y devuelve un número que es 1 unidad mayor. Para la creación de este componente se puede utilizar una cadena de Half-Adders o Full-Adders conectados en serie, como tambien a compuertas lógicas pero en este caso por cuestiones de optimización e implementación de la Add16 se construirá a partir de este componente.

<!--  Insertar tabla de verdad junto con el diseño de compuertas   -->

-*ALU*: Es uno de los componentes fundamentales de un procesador, encargada de realizar operaciones aritméticas y lógicas. Recibe dos entradas de 16 bits, x y y, y realiza una operación definida por un conjunto de bits de control. Los bits de control especifican qué operaciones se deben realizar sobre las entradas antes de combinarlas (por ejemplo, si deben ser negadas o establecidas a cero), así como la operación que debe ejecutarse **(suma, AND, OR)*. La ALU también genera indicadores como si el resultado es cero o negativo.
