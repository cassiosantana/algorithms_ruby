# frozen_string_literal: true

module AlgorithmsRuby
  class BubbleSort
    def sort(array)
      length = array.length

      loop do
        swapped = false
        (length - 1).times do |i|
          next if array[i] < array[i + 1]

          swap(array, i, i + 1)
          swapped = true
        end
        break unless swapped
      end
      array
    end

    private

    def swap(array, idx1, idx2)
      array[idx1], array[idx2] = array[idx2], array[idx1]
    end
  end
end
