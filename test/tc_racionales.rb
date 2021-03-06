#fichero que contiene las pruebas unitarias para las operaciones con los numeros racionales

require "./racionales.rb"
require "test/unit"

class Test_Fraciones < Test::Unit::TestCase

	def setup #metodo que trae la clase Test::Unit el cual debe realizarse 
		  #despues o antes de cada prueba es como un constructor de objetos
	   @racional1 = Fracciones.new(8,30) 
	   @racional2 = Fracciones.new(6,12)
	end

	def teardown #trabaja de manera paracida al setup
           #nothing
	end

	def test_simple #para realizar las pruebas simples
	   assert_equal("8/30", @racional1.to_s) #Comprobamos si las fraciones introducidas
           assert_equal("-6/12", @racional2.to_s) #son iguales a las que tenemos creadas
 	   assert_not_equal("14/45", @racional1.to_s) #Comprobamos que la fraccion introducida
           assert_not_equal("14/45", @racional2.to_s) #no es igual a las que tenemos
	end

	def test_suma #para realizar solo las pruebas con la operacion suma
           #rac1 = @racional1
 	   #rac2 = @racional2
           #rac3 = rac1 + rac2
           #puts "El resultado de la operacion es: #{rac1} + #{rac2} = #{rac3}"
	   assert_equal("7/30",(@racional1 + @racional2).to_s)
	end

	def test_resta #para realizar solo las pruebas con la operacion resta
	   #rac1 = @racional1
 	   #rac2 = @racional2
           #rac3 = rac1 - rac2
           #puts "El resultado de la operacion es: #{rac1} - #{rac2} = #{rac3}"
	   assert_equal("23/30",(@racional1 - @racional2).to_s)
	end

	def test_multiplicacion #para realizar solo las pruebas con la operacion de multiplicacion
           #rac1 = @racional1
 	   #rac2 = @racional2
           #rac3 = rac1 * rac2
           #puts "El resultado de la operacion es: #{rac1} * #{rac2} = #{rac3}"ç
	   assert_equal("1/10",(@racional1 * @racional2).to_s)
        end

	def test_division #para realizar solo las pruebas con la operacion de division
	   #rac1 = @racional1
 	   #rac2 = @racional2
           #rac3 = rac1 / rac2
           #puts "El resultado de la operacion es: #{rac1} / #{rac2} = #{rac3}"
	   assert_equal("8/15",(@racional1 / @racional2).to_s)
	end

	#def test_type_check
         #  assert_raise(RuntimeError) {Fracciones.new('6','12')} #RutimeError cuando se intenta realizar una operacion no valida
        #end

	def test_failure
	   assert_equal("8/30",Fracciones.new(8,30).to_s)
        end
end
