# frozen_string_literal: true

RSpec.describe AlgorithmsRuby do
  context "Binary search" do
    it "Element found" do
      arr = [10, 20, 30, 50, 60, 80, 110, 130, 140, 170]
      element = 50
      last = arr.length - 1

      result = AlgorithmsRuby::BinarySearch.new.search(arr, element, 0, last)

      expect(result).to eq(3)
    end

    it "Element not found" do
      arr = [10, 20, 30, 50, 60, 80, 110, 130, 140, 170]
      element = 22
      last = arr.length - 1

      result = AlgorithmsRuby::BinarySearch.new.search(arr, element, 0, last)

      expect(result).to eq(-1)
    end
  end
end
