# frozen_string_literal: true

RSpec.describe AlgorithmsRuby do
  describe "Bubble Sort" do
    it "Array was sorted" do
      arr = [5, 1, 4, 2, 8]
      result = AlgorithmsRuby::BubbleSort.new.sorter(arr)
      expect(result).to eq(arr.sort)
    end
  end
end
