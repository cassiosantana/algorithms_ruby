# frozen_string_literal: true

module AlgorithmsRuby
  class FindThree < Base
    def initialize(arr)
      @arr = arr
      @first = @second = @third = -Float::INFINITY
      super
    end

    def call
      return [] if @arr.empty?

      @arr.uniq.each do |element|
        find_first(element)
        find_second(element)
        find_third(element)
      end

      result
    end

    private

    def find_first(element)
      return unless element > @first

      @third = @second
      @second = @first
      @first = element
    end

    def find_second(element)
      return unless element > @second && element != @first

      @third = @second
      @second = element
    end

    def find_third(element)
      return unless element > @third && element != @first && element != @second

      @third = element
    end

    def result
      [@first, @second, @third]
    end
  end
end
