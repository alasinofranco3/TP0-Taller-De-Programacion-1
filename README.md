# TP0
TP0 de taller de programacion 1

Alumno:Alasino Franco

Padron:102165

URL:https://github.com/alasinofranco3/TP0.git

1. Paso 0
    1. ![Captura de pantalla del paso 0](https://user-images.githubusercontent.com/50004705/79463028-af581f80-7fce-11ea-9506-c177c84c679b.png)
    1.  Valgrind nos permite detectar problemas con el uso de memoria de nuestro programa.Nos permite saber en que lineas ocurren estos problemas,cuantos errores tenemos,de que tipo son estos,para poder facilitar la correccion de estos y asi evitar perdidas de memoria y asegurar la liberacion de los recursos utilizados.
    1. La funcion sizeof() devuelve el tamanio en bytes del tipo de dato pasado o variable por parametro.El valor de salida de dicha funcion depende de la arquitectura de nuestra computadora. En mi caso al tener una de 64 bits,sizeof(char) devolveria un 1 mientras que sizeof(int) devolveria 4.
    1. No necesariamente,el sizeof() de un struct en c no siempre es igual a la suma de los sizeof() de cada elemento.Por ejemplo,si yo tuviese un struct declarado de la siguiente manera:
    
    ```
    struct S{
	   short a;
	   char b;
	   int c;
    }

    ```
    La suma de los sizeof() de cada elemento seria igual a 7, sabiendo que el sizeof(short) es de 2 bytes en arquitectura de 64 bits.Sin embargo, al hacer sizeof() de uno de nuestros struct nos da 8.
      1. Los archivos STDIN, STDOUT y STDERR corresponden al archivo de entrada estandar,salida estandar y standard error.Estos archivos se abren automaticamente y permanecen abiertos siempre.Podemos mandar mensajes a estos archivos como por ejemplo si queremos mostrar algo por pantalla(salida estandar) le podemos mandar un mensaje al STDOUT o si queremos enviar algun mensaje al teclado (entrada estandar) podemos usar STDIN. Para redigir el STDIN debemos utilizar <, esto nos permitiria tomar la entrada de un archivo cualquiera en vez del teclado por ejemplo.En el caso de la salida se utiliza >  y nos permite hacer lo mismo,redirigir la salida a un archivo distinto al STDOUT(pantalla).Para redirigir el STDERR se usa tambien el >.Para conectar la salida de un proceso a la entrada de otro se puede usar un pipe ('|').Haciendo A | B eviariamos la salida del proceso A a la entrada del proceso B.

1. Paso 1 
    1. ![Problemas de estilo detectados](/home/franco/Imágenes/paso1_problemas_estilo.png)
        1. Indica que debemos colocar un espacio entre el while y el () donde van los parametros.ej:while (parametros).
        1. Indica que los espacios a continuacion de '(' y anteriores a ')' no coinciden,cuando deberian hacerlo.ej: if ( parametro )
        1. Indica que se permite dejar como maximo un espacio despues de '(' y antes de ')'.ej: if (parametro) o if ( parametro ).
        1. Indica que un else debe estar en la misma linea que el anterior '}'.
        1. Indica que si decidimos colocar alguna llave al lado de un else,debemos agregarlas a ambos lados.ej: }else{.
        1. Idem 1.Indica que debemos colocar un espacio entre el if y el () donde van los parametros.
        1. Indica que hay un espacio de mas antes del ';'. Deberiamos poner return x;.
        1. Nos advierte que en la mayoria de los casos es mejor usar snprintf que strcpy.Por ejemplo al usar strcpy se pueden producir desbordes de buffer.
        1. Idem 4.
        1. Idem 5.
        1. Indica que las lineas pueden tener como maximo 80 caracteres.
    1. ![Error ejecutable](/home/franco/Imágenes/paso1_error_ejecutable.png)
        1. Indica que no se reconoce el tipo de dato 'wordscounter_t', es decir,el compilador no encontro la declaracion de dicho tipo de dato.
        1. Indica que estamos declarando una funcion implicitamente,es decir,el compilador no encontro la declaracion de la dicha funcion.
        1. Idem 2
        1. Idem 2
        1. Idem 2
        * Todos estos son errores del compilador.
    1. No ,no se reporto ningun warning.Esto ocurrio porque se compilo usando el archivo MAKEFILE,en este se especifica usar el comando -Werror para compilar que hace que todos los warnings sean reportados como errores.

1. Paso 2
    1. Diferencias:
        * main.c: En el paso 2 se agrega el .h del wordscounter.Ademas, se cambio el strcpy() por un memcpy() para evitar asi posibles poblemas.Finalmente se resolvio el problema de incumplimiento de normas del else colocando dicha estructura al lado de la llave '}' anterior.
        * wordscounter.c: En este archivo podemos ver que se arreglan varios de los incumplimientos de normas de programacion que teniamos en el paso1.
        Por ejemplo:dejar un espacio entre el nombre de la estructura de control y el parentesis de los argumentos,dejar los mismos espacios despues de '(' y antes de ')' en la condicion de un if,entr otros.
        * wordscounter.h: se modifico un comentario que describe la funcion de el tipo wordscounter_t.
    1. ![Cumplimiento de normas](/home/franco/Imágenes/paso2_cumplimiento_normas.png)
    1. ![Errores generacion exe](/home/franco/Imágenes/paso2_errores_ejecutable.png)  
        1. Indica que el compilador no reconoce el tipo de dato llamado "size_t" 
        1. Idem 1.
        1. Idem 1,pero en este caso con el tipo de dato llamada "FILE"  
        1. Indica que hay un conflicto con los tipos,es decir,el compilador encuentra que los tipos en la declaracion de la funcion en el .h no coinciden con los tipos de dicha funcion en el .c .
        1. Nos indica cual fue la declaracion de la funcion y asi facilitarnos la resolucion del error anterior.
        1. Indica que el compilador no encontro la declaracion de la funcion malloc().
        1. Este error sirve como ayuda para arreglar el error anterior,nos dice que incluyamos la libreria stdlib.h o que le demos alguna otra declaracion de la funcion malloc().

        * Todos estos son errores del compilador

1. Paso 3
