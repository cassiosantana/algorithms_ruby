# frozen_string_literal: true

# Implementation of the algorithm found in:
# https://www.geeksforgeeks.org/linear-search/

module AlgorithmsRuby
  class LinearSearch < Base
    def initialize(arr, key)
      @arr = arr
      @key = key
      super
    end

    def call
      @arr.each_with_index do |element, index|
        return index if element.eql? @key
      end

      -1
    end
  end
end
