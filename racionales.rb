
#En este fichero implementaremos un clase para trabajar con operaciones sobre numeros racionales que seran nuestros objetos

#require "gcd.rb" #le decimos a nuestro programa que use el fichero gcd que contiene el maximo comun divisor para la simplificacion

class Fracciones     #clase que contrendra las funciones para trabajar con los objetos

	attr_reader :num , :dem #con attr_reader podemos acceder a los atributos del objeto sin definir los metodos geters

	def initialize (num,dem) #metodo para inicializar los objetos
             @num , @dem = num , dem #@varaibles de instancia
	end
     
        def to_s  #metodo para convertir nuestros numeros en cadenas string para sacarlos por pantalla de la forma a/b
             "#{num}/#{dem}"
        end

      
end 


#Aqui vamos a realizar algunas pruebas con las funciones que vamos creando y los objetos que vamos a crear
rac1 = Fracciones.new(6,3)
rac2 = Fracciones.new(5,4)

 puts "La fraccion es : #{rac1}/#{rac2}" #solo por ahora para ver si la funcion to_s funciona
