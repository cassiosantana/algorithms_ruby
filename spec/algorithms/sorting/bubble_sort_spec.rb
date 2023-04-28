# frozen_string_literal: true

require 'algorithms/sorting/bubble_sort'

RSpec.describe Algorithms do
  describe 'Bubble Sort' do
    it 'Array was sorted' do
      arr = [5, 1, 4, 2, 8]
      result = Algorithms::BubbleSort.new.sorter(arr)
      expect(result).to eq(arr.sort)
    end
  end
end
