# Determina si una palabra o frase es un isograma.
# Un isograma es una palabra o frase que no contiene ninguna letra repetida.
# Se debe retornar `true` cuando es un isograma, de lo contrario retornar `false`
# Ejemplos:
# - "ya te digo" => true.
# - "coleto" => false

def isograma(frase)
  frase = frase.downcase.gsub(" ", "")
  
  letras = {}
  
  frase.each_char do |letra|
    if letras[letra]
      return false
    else
      letras[letra] = true
    end
  end
  
  return true
end
