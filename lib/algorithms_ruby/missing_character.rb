# frozen_string_literal: true

module AlgorithmsRuby
  # missing character
  class MissingCharacter
    ALPHABET = 'a'..'z'
    def missing_characters(to_check)
      result = +''
      ALPHABET.each do |letter|
        result << letter unless to_check.downcase.include? letter
      end
      result
    end
  end
end
