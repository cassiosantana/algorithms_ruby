# frozen_string_literal: true

# Implementation of the algorithm found in:
# https://www.geeksforgeeks.org/minimum-sum-choosing-minimum-pairs-array/

module AlgorithmsRuby
  class MinimumSum < Base
    def initialize(arr)
      @arr = arr
      @minimum_repetitions = []
      super
    end

    def call
      verify_adjacent
      result
    end

    private

    def verify_adjacent
      @min = @arr.min
      @arr.delete_if do |element|
        @minimum_repetitions << @min if element > @min
      end
    end

    def result
      @minimum_repetitions.sum
    end
  end
end
