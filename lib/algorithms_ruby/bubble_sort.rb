# frozen_string_literal: true

module AlgorithmsRuby
  class BubbleSort
    def self.run(arr)
      new(arr).sort
    end

    def initialize(arr)
      @arr = arr
      @size = arr.length
    end

    def sort
      loop do
        swapped = false
        (@size - 1).times do |i|
          next if @arr[i] < @arr[i + 1]

          swap(i, i + 1)
          swapped = true
        end
        break unless swapped
      end
      @arr
    end

    private

    def swap(current_element, next_element)
      @arr[current_element], @arr[next_element] = @arr[next_element], @arr[current_element]
    end
  end
end

