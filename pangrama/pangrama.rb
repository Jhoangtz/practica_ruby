# Determina si una palabra o frase es un pangrama.
# Un pangrama es una palabra o frase que contiene todas las letras del alfabeto.
# Se debe retornar `true` cuando es un pangrama, de lo contrario retornar `false`
# Ejemplos:
# - "Ay, cómo te vas a regalar así mi rey" => false
# - "Cada vez que trabajo, Félix me paga con whisky añejo" => true.

def pangrama(frase)
  frase.downcase!

  letras = Hash.new(0)

  frase.each_char do |caracteres| 
    if ('a'..'z').include?(caracteres) || caracteres == 'ñ'
      letras[caracteres] += 1
    end
  end

  letras.keys.length == 27
end

