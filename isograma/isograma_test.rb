require "minitest/autorun"
require_relative "isograma"

class IsogramaTest < Minitest::Test
  def test_basic_isogram
    input = "yes"
    assert isograma(input)
  end

  def test_basic_not_isogram
    input = "noop"
    refute isograma(input)
  end

  def test_word_isograma
    input = "isograma"
    refute isograma(input)
  end

  def test_word_isogram
    input = "isogram"
    assert isograma(input)
  end

  def test_long_isogram_name
    input = "Emily Jung Schwartzkopf"
    assert isograma(input)
  end

  def test_long_not_isogram_name
    input = "Lionel Messi"
    refute isograma(input)
  end
end
