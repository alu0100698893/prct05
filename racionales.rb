
#En este fichero implementaremos un clase para trabajar con operaciones sobre numeros racionales que seran nuestros objetos

require "./gcd.rb" #le decimos a nuestro programa que use el fichero gcd que contiene el maximo comun divisor para la simplificacion
require "./mcm.rb" #le decimos a nuestro programa que use el fichero mcm que contiene el minimo comun multiplo para la suma y resta


class Fracciones     #clase que contrendra las funciones para trabajar con los objetos

	attr_reader :num , :dem #con attr_reader podemos acceder a los atributos del objeto sin definir los metodos geters

	def initialize (num,dem) #metodo para inicializar los objetos
	   if dem != 0
	      @dem=dem
	   else
              puts "No puede poner un denominardor igual a cero(0)"
	   end
             @num = num #@varaibles de instancia
           
	end
     
        def to_s  #metodo para convertir nuestros numeros en cadenas string para sacarlos por pantalla de la forma a/b
             "#{num}/#{dem}"
        end

        def *(nuevo) #metodo para realizar la multiplicacion de dos fraciones pasamos un objeto como parametro
           resultado = Fracciones.new(@num*nuevo.num , @dem*nuevo.dem) #El resultado es un nuevo objeto de tipo fracciones que se guarda en 
                                                                       #en un variable local denominada resultado
           simplificacion(resultado)
        end

        def /(nuevo) #metodo para realizar la division de dos fracciones pasamos un objeto como parametro
           resultado = Fracciones.new(@num*nuevo.dem , @dem*nuevo.num) #El resultado es un nuevo objeto de tipo fracciones que se guarda en 
                                                                       #en un variable local denominada resultado
	   simplificacion(resultado)
        end

	def +(nuevo) #metodo para realizar la suma de dos fracciones pasando un objeto como parametro
	   aux = mcm(@dem , nuevo.dem) #mcm de los denominadores de nuestras fracciones
           resultado = Fracciones.new(((aux/@dem)*@num)+((aux/nuevo.dem)*nuevo.num),aux)#operacion de suma
           simplificacion(resultado)

	end

        def -(nuevo) #metodo para realizar la resta de dos fracciones pasando un objeto como parametro
           aux = mcm(@dem , nuevo.dem) #mcm de los denominadores de nuestras fraciones
	   resultado = Fracciones.new(((aux/@dem)*@num)-((aux/nuevo.dem)*nuevo.num),aux)#operacion de resta
           simplificacion(resultado)
           
	end

	def -@	#metodo para poner al numerador el signo negativo
	    return -@num #simplemente indicamos que a la variable instancia num si le ponemos un menos delante es valido 
	end
       
	def simplificacion(nuevo) #metodo para realizar la simplificacion del resultado de las operaciones
	   aux = gcd(nuevo.num , nuevo.dem) #hallamos el mcd del numerados y el denominador
           Fracciones.new(nuevo.num/aux , nuevo.dem/aux) #divide los valores anteriores entre el mcd obtenido
        end
end 


#Aqui vamos a realizar algunas pruebas con las funciones que vamos creando y los objetos que vamos a crear

#rac1 = Fracciones.new(-8,9) #rac1 y rac2 son con las fracciones
#rac2 = Fracciones.new(96,4) #que vamos a trabajar durante estas pruebas rac2 seria el objeto nuevo de nuestras funciones

#puts "Las fracciones son : #{rac1} y #{rac2}" #solo por ahora para ver si la funcion to_s funciona rac1 y rac2 debera mostrarse como a/b

#########################################################

#rac3= rac1 * rac2
#puts "Producto"
#puts "#{rac1} * #{rac2} = #{rac3} "

#########################################################

#rac4= rac1 / rac2
#puts "Division"
#puts "#{rac1} / #{rac2} = #{rac4}"

#########################################################

#rac5 = Fracciones.new(9,3)
#rac6 = Fracciones.new(10,10)

#puts "Las fracciones son : #{rac5} y #{rac6}"

#########################################################

#rac7= rac5 + rac6
#puts "Suma"
#puts "#{rac5} + #{rac6} = #{rac7}"

#########################################################

#rac8= rac5 - rac6
#puts "Resta"
#puts "#{rac5} - #{rac6} = #{rac8}"


