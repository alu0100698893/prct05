#fichero apra implementar el minimo comun multiplo para realizar la suma y resta de dos fracciones

def mcm(u,v) #metodo del minimo comun multiplo(u y v son los denominadores de las fracciones)
  (u/gcd(u,v))*v #nos ayudamos del maxmimo comun divisor para hallarlo
end
