# frozen_string_literal: true

module AlgorithmsRuby
  class BubbleSort
    def sort(arr)
      size = arr.length

      loop do
        swapped = false
        (size - 1).times do |i|
          next if arr[i] < arr[i + 1]

          arr[i], arr[i + 1] = arr[i + 1], arr[i]
          swapped = true
        end
        break unless swapped
      end
      arr
    end
  end
end
