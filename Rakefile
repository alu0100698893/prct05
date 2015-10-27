task :default => :tu #por defecto si no ponemos nada en la consola se me ejecuta tu:

desc "Pruebas unitarias para la clase Fracciones"
    task :tu do
	sh "ruby -I. test/tc_racionales.rb"
    end

desc "Pruebas unitarias solo para las simples"
    task :simple do
	sh "ruby -I. test/tc_racionales.rb -n /simple/"
    end

desc "Pruebas unitarias solo para la operacion de suma"
    task :suma do
	sh "ruby -I. test/tc_racionales.rb -n /suma/"
    end

desc "Pruebas unitarias solo para la operacion de resta"
    task :resta do
    	sh "ruby -I. test/tc_racionales.rb -n /resta/"
    end
