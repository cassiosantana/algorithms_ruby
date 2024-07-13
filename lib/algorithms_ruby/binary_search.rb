# frozen_string_literal: true

# Implementation of the algorithm found in:
# https://www.geeksforgeeks.org/binary-search/

module AlgorithmsRuby
  class BinarySearch < Base
    def initialize(array, element)
      @array = array
      @element = element
      @first = 0
      @last = @array.length - 1
      @mid = nil
      super
    end

    def call
      return -1 unless valid_range?

      calculate_mid
      element_found? ? @mid : recursive_search
    end

    private

    def valid_range?
      @first <= @last
    end

    def calculate_mid
      @mid = (@first + @last) / 2
    end

    def element_found?
      @element == @array[@mid]
    end

    def recursive_search
      @element < @array[@mid] ? @last = @mid - 1 : @first = @mid + 1
      call
    end
  end
end
