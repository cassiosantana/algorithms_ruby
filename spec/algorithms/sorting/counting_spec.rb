# frozen_string_literal: true

require 'algorithms/sorting/counting'

RSpec.describe Algorithms do
  describe 'Counting Sort' do
    it 'order positive numbers' do
      arr = [1, 4, 1, 2, 7, 5, 2]
      result = Algorithms::CountingSort.order_positive_numbers(arr)
      expect(result).to eq(arr.sort)
    end
  end
end
