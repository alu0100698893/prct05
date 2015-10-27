**Lenguajes y paradigmas de la programación.Practica 5**
=======

*Autor: Alberto Martínez Chincho *
-------
## ***Introducción*** ##
Un numero racional es un numero con un numerador y un denominador:  
**"A/B"**
===========
donde "A" es el numerador y "B" el denominador.

Nuestra practica consiste en la resolución de diferentes operaciones con dichos números, debemos tener en cuenta que un número racional no puede contener un cero en el denominador pero si en el numerador, mientras que un número racional está claro que puede ser negativo.


***Ficheros***
=======
En nuestra practicas podrás encontrar los ficheros necesarios para la resolución de dicha practica , los cuales se especifican a continuación:

    1. **.gitignore** --> Contiene todas las extensiones de los ficheros que queremos ignorar durante nuestro trabajo.

    2.**Readme.md** --> Contiene la explicación e informe de nuestra practica. 

	3. **racionales.rb** --> Contiene el código para la solución de operaciones con números racionales.

	4. **gcd.rb** --> Contiene el código del máximo común divisor sin errores necesario para poder simplificar los resultados de las operaciones.

	5. **mcm.rb** --> Contiene el código del mínimo común múltiplo necesario para poder realizar las operaciones de suma y resta.




***Resolución de la practica***
===========
 Implementamos una clase para representar los números racionales. En este caso la clase se llama Fracciones y los métodos que contiene son los siguientes:
			 
 - ***initialize***:  método para inicializar los objetos de la clase. Contendrá los parámeros 'numerador'(num) y 'denominador' (dem)
 - ***to_s***:devuelve una cadena con la representación del racional
 - ***+***:devuelve un nuevo racional que suma al objeto que invoca el que le pasan como parámetro
 - ***-***:devuelve un nuevo racional que resta al objeto que invoca el que le pasan como parámetro
 - ***/***:devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
 - *******:devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
 - ***simplificacion***:método para simplificar los racionales que obtenemos de resultado a su mínima expresión
 - ***-@***:método para poder poner el numerador o denominador negativo,en nuestro caso sera el numerador(-@num)
 
Creamos un fichero **mcm.rb** donde vamos a implementar el método que calculará el mínimo común múltiplo. Esto será necesario para realizar la suma y/o la resta de fracciones que tengan diferente denominador.

Creamos un fichero **gcd.rb** el cuál contiene el código del máximo común divisor para hallarlo en los denominadores y poder simplificarlas a su máxima expresión. 


Creamos un fichero **tc_racionales.rb**, en el que implementamos una serie de pruebas unitarias para probar el correcto funcionamiento de nuestra clase y de los métodos que hemos implementado. Tenemos implementados una serie de métodos los cuales son:

 - ***setup***:definimos algunos objetos como variables de instancia para usarlos en las pruebas
 - ***teardown***:para limpiar las variables de instancia
 - ***test_simple***:se hace una serie de pruebas simples de igualdad para probar el método initialize de la clase
 - ***test_failure***:en este método vamos a producir un error de manera premeditada
 - ***test_suma***:en este método pondremos todo lo necesario para comprobar que la operación de suma se hace de manera correcta
 - ***test_resta***:en este método pondremos todo lo necesario para comprobar que la operación de resta se hace de manera correcta
 - ***test_multiplicación***:en este método pondremos todo lo necesario para comprobar que la operación de multiplicación se hace de manera correcta
 - ***test_división***:en este método pondremos todo lo necesario para comprobar que la operación de división se hace  de  manera correct

Por último utilizamos un fichero **Rakefile** para poder ejecutar de manera automática las pruebas unitarias que creamos en el fichero anterior.
