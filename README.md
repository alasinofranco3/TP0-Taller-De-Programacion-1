# TP0
TP0 de taller de programacion 1

Alumno:Alasino Franco

Padron:102165

URL:https://github.com/alasinofranco3/TP0.git

1. Paso 0
    1. ![Captura de pantalla del paso 0](/home/franco/Imágenes/captura_paso0.jpg)
    1.  Valgrind nos permite detectar problemas con el uso de memoria de nuestro programa.Nos permite saber en que lineas ocurren estos problemas,cuantos errores tenemos,de que tipo son estos,para poder facilitar la correccion de estos y asi evitar perdidas de memoria y asegurar la liberacion de los recursos utilizados.
    1. La funcion sizeof() devuelve el tamanio en bytes del tipo de dato pasado o variable por parametro.El valor de salida de dicha funcion depende de la arquitectura de nuestra computadora. En mi caso al tener una de 64 bits,sizeof(char) devolveria un 1 mientras que sizeof(int) devolveria 4.
    1. No necesariamente,el sizeof() de un struct en c no siempre es igual a la suma de los sizeof() de cada elemento.Por ejemplo,si yo tuviese un struct declarado de la siguiente manera:
    < struct S{
    	short a;
    	char b;
    	int c;
    }>
    La suma de los sizeof() de cada elemento seria igual a 7, sabiendo que el sizeof(short) es de 2 bytes en arquitectura de 64 bits.Sin embargo, al hacer sizeof() de uno de nuestros struct nos da 8.
    1. Los archivos STDIN, STDOUT y STDERR corresponden al archivo de entrada estandar,salida estandar y standard error.Estos archivos se abren automaticamente y permanecen abiertos siempre.Podemos mandar mensajes a estos archivos como por ejemplo si queremos mostrar algo por pantalla(salida estandar) le podemos mandar un mensaje al STDOUT o si queremos enviar algun mensaje al teclado (entrada estandar) podemos usar STDIN.
        Para redigir el STDIN debemos utilizar <, esto nos permitiria tomar la entrada de un archivo cualquiera en vez del teclado por ejemplo.En el caso de la salida se utiliza >  y nos permite hacer lo mismo,redirigir la salida a un archivo distinto al STDOUT(pantalla).Para redirigir el STDERR se usa tambien el >.
        Para conectar la salida de un proceso a la entrada de otro se puede usar un pipe ('|').Haciendo A | B eviariamos la salida del proceso A a la entrada del proceso B.


