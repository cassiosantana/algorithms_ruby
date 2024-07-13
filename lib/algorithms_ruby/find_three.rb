# frozen_string_literal: true

# Implementation of the algorithm found in:
# https://www.geeksforgeeks.org/find-the-largest-three-elements-in-an-array/

module AlgorithmsRuby
  class FindThree < Base
    def initialize(arr)
      @arr = arr
      @first = @second = @third = -Float::INFINITY
      super
    end

    def call
      @arr.each do |element|
        next if update_all(element)

        next if update_second_and_third(element)

        update_third(element)
      end

      result
    end

    private

    def update_all(element)
      return unless element > @first

      @third = @second
      @second = @first
      @first = element
      true
    end

    def update_second_and_third(element)
      return unless element > @second && element != @first

      @third = @second
      @second = element
      true
    end

    def update_third(element)
      return unless element > @third && element != @first && element != @second

      @third = element
      true
    end

    def result
      [@first, @second, @third]
    end
  end
end
