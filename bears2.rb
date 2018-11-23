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
end

p BearsTwo.new.heterogeogenoous_array
