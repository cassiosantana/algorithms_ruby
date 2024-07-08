# frozen_string_literal: true

module AlgorithmsRuby
  class Count < AlgorithmBase
    def initialize(str)
      @str = str
      @upper = @lower = @number = @special = 0
      super
    end

    def call
      calculate
      result
    end

    private

    def calculate
      @upper = @str.count("A-Z")
      @lower = @str.count("a-z")
      @number = @str.count("0-9")
      @special = @str.size - @upper - @lower - @number
    end

    def result
      {
        upper: @upper,
        lower: @lower,
        number: @number,
        special: @special
      }
    end
  end
end
