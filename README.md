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
    1. ![Problemas de estilo detectados](https://user-images.githubusercontent.com/50004705/79699682-65d63180-8267-11ea-87a8-16179369f02d.png)
        1. Indica que debemos colocar un espacio entre el while y el () donde van los parametros.ej:while (parametros).
        1. Indica que los espacios a continuacion de '(' y anteriores a ')' no coinciden,cuando deberian hacerlo.ej: if ( parametro )
        1. Indica que se permite dejar como maximo un espacio despues de '(' y antes de ')'.ej: if (parametro) o if ( parametro ).
        1. Indica que un else debe estar en la misma linea que el anterior '}'.
        1. Indica que si decidimos colocar alguna llave al lado de un else,debemos agregarlas a ambos lados.ej: }else{.
        1. Idem 1.Indica que debemos colocar un espacio entre el if y el () donde van los parametros.
        1. Indica que hay un espacio de mas antes del ';'. Deberiamos poner return x;.
        1. Nos advierte que en la mayoria de los casos es mejor usar snprintf que strcpy.Por ejemplo al usar strcpy se pueden producir desbordes de buffer.
        1. Idem d.
        1. Idem e.
        1. Indica que las lineas pueden tener como maximo 80 caracteres.
    1. ![Error ejecutable](https://user-images.githubusercontent.com/50004705/79699680-61aa1400-8267-11ea-92d9-84bf6aaaa7f8.png)
        1. Indica que no se reconoce el tipo de dato 'wordscounter_t', es decir,el compilador no encontro la declaracion de dicho tipo de dato.
        1. Indica que estamos declarando una funcion implicitamente,es decir,el compilador no encontro la declaracion de la dicha funcion.
        1. Idem b
        1. Idem b
        1. Idem b
        * Todos estos son errores del compilador.
    1. No ,no se reporto ningun warning.Esto ocurrio porque se compilo usando el archivo MAKEFILE,en este se especifica usar el comando -Werror para compilar que hace que todos los warnings sean reportados como errores.

1. Paso 2
    1. Cambios:
        * main.c: En el paso 2 se agrega el .h del wordscounter.Ademas, se cambio el strcpy() por un memcpy() para evitar asi posibles poblemas.Finalmente se resolvio el problema de incumplimiento de normas del else colocando dicha estructura al lado de la llave '}' anterior.
        * wordscounter.c: En este archivo podemos ver que se arreglan varios de los incumplimientos de normas de programacion que teniamos en el paso1.
        Por ejemplo:dejar un espacio entre el nombre de la estructura de control y el parentesis de los argumentos,dejar los mismos espacios despues de '(' y antes de ')' en la condicion de un if,entr otros.
        * wordscounter.h: se modifico un comentario que describe la funcion de el tipo wordscounter_t.
    1. ![Cumplimiento de normas](https://user-images.githubusercontent.com/50004705/79699685-679ff500-8267-11ea-9817-332288d0595c.png)
    1. ![Errores generacion exe](https://user-images.githubusercontent.com/50004705/79699690-6ec70300-8267-11ea-993a-832beb719fd3.png)  
        1. Indica que el compilador no reconoce el tipo de dato llamado "size_t" 
        1. Idem 1.
        1. Idem 1,pero en este caso con el tipo de dato llamado "FILE"  
        1. Indica que hay un conflicto con los tipos,es decir,el compilador encuentra que los tipos en la declaracion de la funcion en el .h no coinciden con los tipos de dicha funcion en el .c .
        1. Nos indica cual fue la declaracion de la funcion y asi facilitarnos la resolucion del error anterior.
        1. Indica que el compilador no encontro la declaracion de la funcion malloc().
        1. Este error sirve como ayuda para arreglar el error anterior,nos dice que incluyamos la libreria stdlib.h o que le demos alguna otra declaracion de la funcion malloc().

        * Todos estos son errores del compilador

1. Paso 3
    1. Cambios:
        * wordscounter.h: En el paso 3 se agregaron las librerias stdio.h y string.h
        * wordscounter.c: En el paso 3 se agrego la libreria stdlib.h
        * main.c: No hubo cambios.
    1. ![Paso 3 error](https://user-images.githubusercontent.com/50004705/79699693-6ff83000-8267-11ea-9795-d2ca84c3cdf2.png)  
        1. Este error nos indica que la funcion wordscounter_destroy no esta definida.Este es un error propio del linker.

1. Paso 4 
    1. Cambios:
        * wordscounter.h: No hubo cambios.
        * wordscounter.c: En el paso 4 se agrego una definicion para la funcion wordscounter_destroy,esta no hace nada.
        * main.c: No hubo cambios.
    1. ![Paso 4 TDA error](https://user-images.githubusercontent.com/50004705/79699695-71295d00-8267-11ea-895c-39f2d4c2227e.png)  
        1. En el apartado de FILE DESCRIPTORS ,nos indican que a la salida del programa quedaron archivos abiertos.En este caso son :el stderr(file descriptor 2),el stdin(file descriptor 0) y el stdout(file descriptor 1). 
        1. El primer error del heap summary nos indica que hay memoria que se pierde que todavia puede ser recuperada.Esta perdida es producto de que no se cerro el archivo abierto en la linea 14 del main.c.Por lo tanto,no se liberaron los recursos asignados en su apertura.
        1. El segundo error del heap summary nos indica que hay memoria que se perdio definitivamente.Ademas nos indica que dicha memoria fue alocada en la linea 35 del wordscounter.c.

    1. ![Paso 4 Long filename error](https://user-images.githubusercontent.com/50004705/79699694-7090c680-8267-11ea-8e8d-60e9cc8efe8e.png) 
        1. El primer error reporta un buffer overflow (desborde de buffer) producido por el uso de la funcion memcpy().
        1. Luego se nos indica que a la salida del programa quedaron el stdin y el stdout abiertos.

    1. En mi opinion este error no se solucionaria usando strncpy(), ya que en caso de que nuestro buffer destino sea de un tamanio menor que n o que el string de destino estariamos en la misma situacion y esa informacion sobrante sobreescribiria la memoria adyacente al buffer.En ese caso,la prueba tendria el mismo resultado: un buffer overflow.

    1. Un buffer overflow se produce cuando nosotros asignamos un tamanio determinado a un buffer e intentamos guardar algo de un tamanio mayor en el.Lo que ocurre es que la informacion que no entra en el buffer,va a guardarse en la memoria que le sigue al fin del buffer,permitiendo asi que la informacion que alli se encuentra sea sobreescrita.
    Por otro lado,segmentation fault es un error que se produce al acceder a un area de memoria prohibida o de acceso restringido.

1. Paso 5
    1. Cambios:
        * wordscounter.h: No hubo cambios.
        * wordscounter.c: En el paso 5 se utiliza un vector de caracteres constante para guardar los delimitadores en vez de guardarlos en memoria como se hacia en el paso anterior.
        * main.c: En el paso 5 la apertura del archivo se hace directamentente pasandole por parametro al fopen() el argv[1].Ademas en este paso,se agrega el cierre del archivo "input" en caso de no ser el stdin.
    1. ![Paso 5 errores sercom](https://user-images.githubusercontent.com/50004705/79699698-725a8a00-8267-11ea-8f9a-2ee5cec10440.png) 
        * En la prueba invalid file: el sercom nos indica que se esperaba un codigo de retorno 1 pero,se obtuvo 255.Al usar un archivo invalido el main.c nos devuelve el codigo de error -1.Finalmente,supongo que en vez de interpretar ese -1 como decimal lo expresa como binario en complemento a 2,es por esto que el valor de retorno es 255.
        * En la prueba single word:el sercom nos indica que la salida estandar no coincide con lo esperado.En este caso deberia devolver un 1 ya que tenemos un archivo con una sola palabra.
    1. ![Paso 5 hexdump](https://user-images.githubusercontent.com/50004705/79699697-725a8a00-8267-11ea-821e-b64fc6854f58.png) 
        1. El ultimo caracter del archivo es la letra 'd'.Esto sale de saber que la representacion en hexa el ultimo caracter del archivo es 64,si lo pasamos a decimal da el numero 100, que en la tabla ASCII corresponde al caracter 'd'.
    1. ![Paso 5 gdb](https://user-images.githubusercontent.com/50004705/79699696-71c1f380-8267-11ea-83de-703a446b15d7.png) 
        1. Comandos:
            1. info functions: Nos indica todos los nombres de funcion.
            1. list: Nos lista una determinada linea o funcion.
            1. break: Agrega un breakpoint en la linea indicada,es decir, que el programa detendra su ejecucion al llegar a dicha linea.
            1. run: Corre el programa
            1. quit: sale del gbd.

        * El debugger no se detuvo en la linea del breakpoint porque el programa termino sin llegar a ejecutar esa linea,el flujo del programa en este caso no llego hasta alli.
1. Paso 6
    1. Cambios:
        * wordscounter.h: No hubo cambios.
        * wordscounter.c: En el paso 6 se realizaron varios cambios en este archivo:
            * Se agrego una constante DELIM_WORDS que vale " ,.;:\n".
            * Se cambio el bloque de codigo de las lineas 38 a 41 del paso5 por aquel de las lineas 37 a 41 del paso6.
            * Se agrego una '}' en la linea 43.
            * Se cambio la linea 4 del paso5 por el bloque de las lineas 45 a 48 del paso6.

        * main.c: En el paso 6 ,se cambia el valor ERROR ,que antes era -1, por 1.
    1. ![Paso 6 entregas](https://user-images.githubusercontent.com/50004705/79699702-738bb700-8267-11ea-8f09-14f7c5d4a0cb.png)
    1. ![Paso 6 ejecucion](https://user-images.githubusercontent.com/50004705/79699701-72f32080-8267-11ea-8196-37a19cde274a.png) 




