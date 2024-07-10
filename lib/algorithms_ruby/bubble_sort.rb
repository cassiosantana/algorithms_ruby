# frozen_string_literal: true

module AlgorithmsRuby
  class BubbleSort < Base
    def initialize(arr)
      @arr = arr
      @size = arr.length
      super
    end

    def call
      sort
      sorted_array
    end

    def sort
      loop do
        swapped = false
        (@size - 1).times do |i|
          next unless need_to_swap?(@arr[i], @arr[i + 1])

          swap(i, i + 1)
          swapped = true
        end
        break unless swapped
      end
    end

    private

    def need_to_swap?(current_element, next_element)
      current_element > next_element
    end

    def swap(current_index, next_index)
      @arr[current_index], @arr[next_index] = @arr[next_index], @arr[current_index]
    end

    def sorted_array
      @arr.dup
    end
  end
end

