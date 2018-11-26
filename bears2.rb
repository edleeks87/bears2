# frozen_string_literal: true

# :nodoc
class BearsTwo
  def heterogeogenoous_array
    [1, true, [1, 2, 3], { one: 'one' }, 'string']
  end

  def map_over_array(arr)
    arr.map(&:class)
  end

  def bubble_sort(arr)
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
    return nil if low > high

    mid = (high + low) / 2
    return mid if arr[mid] == val
    return binary_search(arr, val, low, mid - 1) if arr[mid] > val

    binary_search(arr, val, mid + 1, high)
  end

  def string_to_array(string)
    string.split(/[\s,;:().!?\-\"]/)
  end

  def merge_sort(arr)
    return arr unless arr.size > 1

    mid = arr.size / 2
    left = merge_sort(arr[0...mid])
    right = merge_sort(arr[mid..-1])
    sorted = []
    # removes and concats the lesser of the two values at the front of the split arrays
    # only does this when neither of the split arrays returns true for empty?
    sorted << ((left.first < right.first) ? left.shift : right.shift) while [left, right].none?(&:empty?)
    sorted + left + right
  end

  def word_search(arr, target)
    !binary_search(merge_sort(arr), target, 0, arr.size - 1).nil?
  end
end
