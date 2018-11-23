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

  def michael_bubble_sort(arr)
    arr.size.times do
      arr[0..-2].each_with_index do |a, i|
        next unless a > arr[i + 1]

        swap(arr, i, i + 1)
      end
    end
    arr
  end

  def swap(arr, first, sec)
    temp = arr[first]
    arr[first] = arr[sec]
    arr[sec] = temp
  end

  def binary_search(arr, val, low, high)
    arr = arr.sort
    return nil if low > high

    mid = (high + low) / 2
    return mid if arr[mid] == val
    return binary_search(arr, val, low, mid - 1) if arr[mid] > val

    binary_search(arr, val, mid + 1, high)
  end
end
