# frozen_string_literal: true

module Algorithms
  class CountingSort
    def self.order_positive_numbers(arr)
      count = Array.new(arr.max + 1, 0)
      output = Array.new(arr.length, 0)
      arr.each { |element| count[element] += 1 }

      output_index = 0
      count.size.times do |number|
        count[number].times do
          output[output_index] = number
          output_index += 1
        end
      end
      output
    end
  end
end
