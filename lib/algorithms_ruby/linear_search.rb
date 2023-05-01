# frozen_string_literal: true

module AlgorithmsRuby
  # linear search
  class LinearSearch
    def search(arr, target_element)
      arr.each_with_index do |element, index|
        return index if element.eql? target_element
      end
      -1
    end
  end
end
