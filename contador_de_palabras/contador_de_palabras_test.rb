require "minitest/autorun"
require_relative "contador_de_palabras"

class ContadorDePalabrasTest < Minitest::Test
  def test_no_words
    input = ""
    expected_output = 0
    assert_equal expected_output, contador_de_palabras(input)
  end

  def test_one_word
    input = "works"
    expected_output = 1
    assert_equal expected_output, contador_de_palabras(input)
  end

  def test_multiple_words
    input = "this test rocks"
    expected_output = 3
    assert_equal expected_output, contador_de_palabras(input)
  end

  def test_multiple_repeated_words
    input = "this test rocks rocks"
    expected_output = 4
    assert_equal expected_output, contador_de_palabras(input)
  end

  def test_multiple_words_regardless_of_special_chars
    input = "this test rocks, right?"
    expected_output = 4
    assert_equal expected_output, contador_de_palabras(input)
  end

  def test_more_than_ten_words
    input = "Lorem ipsum dolor sit amet, consectetur adipiscing elit sed arcu eu"
    expected_output = 11
    assert_equal expected_output, contador_de_palabras(input)
  end
end
