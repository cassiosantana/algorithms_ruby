# frozen_string_literal: true

RSpec.describe AlgorithmsRuby do
  context "Linear search" do
    it "element found" do
      arr = [5, 7, 10, 15, 18, 27]
      target_element = 18
      result = AlgorithmsRuby::LinearSearch.new.search(arr, target_element)
      expect(result).to be >= 0
    end

    it "element found at index 4" do
      arr = [5, 7, 10, 15, 18, 27]
      target_element = 18
      result = AlgorithmsRuby::LinearSearch.new.search(arr, target_element)
      expect(result).to eq(4)
    end

    it "element not found" do
      arr = [5, 7, 10, 15, 18, 27]
      target_element = 200
      result = AlgorithmsRuby::LinearSearch.new.search(arr, target_element)
      expect(result).to eq(-1)
    end

    it "empty list" do
      arr = []
      target_element = 5
      result = AlgorithmsRuby::LinearSearch.new.search(arr, target_element)
      expect(result).to eq(-1)
    end
  end
end
