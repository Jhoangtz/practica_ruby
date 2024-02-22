# Dado un string de combinación de vocales, se requiere
# retornar el puntaje total sumado.
# Cada vocal tendrá un valor del 1 al 5
# donde la A vale 1 y la U vale 5!
#
# Las vocales se deben poder recibir en mayúsculas o en minúsculas.
#
# Ejemplos:
# - "E" debe retornar 2.
# - "eeae" debe retornar 7.
# - "EIO" debe retornar 9.

def puntaje(input)
    valores = { "a" => 1, "e" => 2, "i" => 3, "o" => 4, "u" => 5 }

    input.downcase!

    valor_total = 0

    input.each_char do |vocal|
        valor_total += valores[vocal]
    end

    valor_total
end
