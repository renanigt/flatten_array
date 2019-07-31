require 'minitest/autorun'
require_relative 'flatten_array'

class TestFlattenArray < Minitest::Test
  def test_that_simple_array_will_return_the_same_array
    array = [1, 2, 6, 7, 10, 30]
    assert_equal FlattenArray.new(array).call, [1, 2, 6, 7, 10, 30]
  end

  def test_array_within_array_will_return_flatten_array
    array = [1, 2, 6, 7, [10, 30, [40, 13]]]
    assert_equal FlattenArray.new(array).call, [1, 2, 6, 7, 10, 30, 40, 13]
  end
end
