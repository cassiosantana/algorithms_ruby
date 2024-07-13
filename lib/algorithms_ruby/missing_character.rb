# frozen_string_literal: true

# Implementation of the algorithm found in:
# https://www.geeksforgeeks.org/missing-characters-make-string-pangram/

module AlgorithmsRuby
  class MissingCharacter < Base
    LOWERCASE_ALPHABET = "a".."z"

    def initialize(str)
      @str = str
      @missing_characters = +""
      super
    end

    def call
      find_missing_characters
      result
    end

    private

    def find_missing_characters
      LOWERCASE_ALPHABET.each do |letter|
        @missing_characters << letter unless @str.downcase.include? letter
      end
    end

    def result
      @missing_characters.dup
    end
  end
end
