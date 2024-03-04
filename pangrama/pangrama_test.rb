require "minitest/autorun"
require_relative "pangrama"

class PangramaTest < Minitest::Test
  def test_long_phrase_but_not_pangram
    input = "Los honores los harán todos los compositores del sector."
    refute pangrama(input)
  end

  def test_pangram
    input = "El viejo Señor Gómez pedía queso, kiwi y habas, pero le ha tocado un saxofón."
    assert pangrama(input)
  end

  def test_another_pangram
    input = "Cabe en el xyz, Frank empeñado en ir a Washington: ¡qué gran viaje!"
    assert pangrama(input)
  end

  def test_27_diff_chars_but_not_pangram
    input = "abcdefghijklmnabcdefghijklmn"
    refute pangrama(input)
  end
end
