# frozen_string_literal: true

module AlgorithmsRuby
  class Count
    attr_reader :upper, :lower, :number, :special

    def initialize(str)
      @upper = @lower = @number = @special = 0

      character_checker(str)
    end

    private

    def character_checker(str)
      str.each_char do |chr|
        case chr
        when 'A'..'Z'
          @upper += 1
        when 'a'..'z'
          @lower += 1
        when '0'..'9'
          @number += 1
        else
          @special += 1
        end
      end
    end
  end
end

