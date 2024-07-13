# frozen_string_literal: true

# Implementation of the algorithm found in:
# https://www.geeksforgeeks.org/counting-sort/

module AlgorithmsRuby
  class CountingSort < Base
    def initialize(arr)
      @arr = arr
      super
    end

    def call
      return @arr unless @arr.length > 1

      init_arrays
      store_the_count
      sort_output
      result
    end

    private

    def init_arrays
      size = @arr.max + 1
      @count = Array.new(size, 0)
      @output = []
    end

    def store_the_count
      @arr.each { |element| @count[element] += 1 }
    end

    def sort_output
      @count.each_with_index do |quantity, valor|
        quantity.times { @output << valor }
      end
    end

    def result
      @output
    end
  end
end
