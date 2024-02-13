# Dada una cadena de texto, retornar el número de palabras
# que hay en ésta (ignorando espacios y signos).
# Ejemplos:
# - "Firmeza es lo que hay" debe retornar 5.
# - "Sisa, cole!" debe retornar 2.

def contador_de_palabras(cadena)
  cadena.split(" ").length
end