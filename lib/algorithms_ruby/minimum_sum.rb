# frozen_string_literal: true

# Implementation of the algorithm found in:
# https://www.geeksforgeeks.org/minimum-sum-choosing-minimum-pairs-array/

module AlgorithmsRuby
  class MinimumSum < Base
    def initialize(arr)
      @arr = arr
      super
    end

    def call
      minimum_value * repetitions
    end

    private

    def minimum_value
      @arr.min
    end

    def repetitions
      @arr.size - 1
    end
  end
end
