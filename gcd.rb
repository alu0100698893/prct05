#fichero con la implentacion del maximo comun divisor para obtener la simplificacion de las fracciones.

def gcd(u, v)
  u, v = u.abs, v.abs
  while v != 0
    u, v = v, u % v
  end
   return u
end

