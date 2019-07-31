require_relative 'flatten_array'

array_test = [4, 6, 9, [1, 2, [10, 20, 30]], [40, [50]]]
flatten_array = FlattenArray.new(array_test).call
puts "#{flatten_array}"
