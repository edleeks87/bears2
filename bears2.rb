# frozen_string_literal: true

# :nodoc
class BearsTwo
  def heterogeogenoous_array
    arr = []
    arr << 1
    arr << true
    arr << [1, 2, 3]
    arr << { one: 'one' }
    arr << 'string'
    arr
  end

  def map_over_array(arr)
    arr.map(&:class)
  end
end

# bear = BearsTwo.new
# p bear.map_over_array(bear.heterogeogenoous_array)
