# frozen_string_literal: true

module AlgorithmsRuby
  class BubbleSort
    def sorter(arr)
      n = arr.length

      loop do
        swapped = false
        (n - 1).times do |i|
          next if arr[i] < arr[i + 1]

          temp = arr[i]
          arr[i] = arr[i + 1]
          arr[i + 1] = temp
          swapped = true
        end
        break unless swapped
      end
      arr
    end
  end
end
