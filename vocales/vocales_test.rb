require "minitest/autorun"
require_relative "vocales"

class VocalesTest < Minitest::Test
  def test_lowercase_a
    input = "a"
    expected_output = 1
    assert_equal expected_output, puntaje(input)
  end

  def test_uppercase_a
    input = "A"
    expected_output = 1
    assert_equal expected_output, puntaje(input)
  end

  def test_any_u_must_equal_5
    input = %w[U u].sample
    expected_output = 5
    assert_equal expected_output, puntaje(input)
  end

  def test_random_combination
    input = "EIO"
    expected_output = 9
    assert_equal expected_output, puntaje(input)
  end

  def test_another_random_combination
    input = "eeae"
    expected_output = 7
    assert_equal expected_output, puntaje(input)
  end

  def test_long_combination
    input = "eeeeeooooaaii"
    expected_output = 34
    assert_equal expected_output, puntaje(input)
  end
end
