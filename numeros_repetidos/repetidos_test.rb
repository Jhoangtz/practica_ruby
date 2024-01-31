require "minitest/autorun"
require_relative "repetidos"

class RepetidosTest < Minitest::Test
  def test_validate_several_repeated_numbers
    input = [1,2,3,4,5,8,2,4,6,5]
    output = [1,2,3,4,5,8,6]
    assert_equal output, numeros_sin_repetir(input)
  end

  def test_validate_one_repeated_number
    input = [1,2,2]
    output = [1,2]
    assert_equal output, numeros_sin_repetir(input)
  end

  def test_validate_no_repeated_numbers
    input = [1,2,3,4]
    output = [1,2,3,4]
    assert_equal output, numeros_sin_repetir(input)
  end

  def test_validate_all_repeated_numbers
    input = [1,1,2,2,3,3]
    output = [1,2,3]
    assert_equal output, numeros_sin_repetir(input)
  end

  def test_validate_same_repeated_number
    input = [1,1,1,1,1,1]
    output = [1]
    assert_equal output, numeros_sin_repetir(input)
  end
end
