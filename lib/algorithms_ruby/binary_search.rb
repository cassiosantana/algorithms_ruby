# frozen_string_literal: true

module AlgorithmsRuby
  # binary search
  class BinarySearch

    def self.run(array, element)
      new(array, element).search
    end

    def initialize(array, element)
      @array = array
      @element = element
      @first = 0
      @last = @array.length - 1
      @mid = nil
    end

    def search
      return -1 unless valid_range?

      @mid = calculate_mid
      return @mid if element_found?

      recursive_search
    end

    private

    def valid_range?
      @first <= @last
    end

    def calculate_mid
      (@first + @last) / 2
    end

    def element_found?
      @element == @array[@mid]
    end

    def recursive_search
      @element < @array[@mid] ? @last = @mid - 1 : @first = @mid + 1
      search
    end
  end
end
