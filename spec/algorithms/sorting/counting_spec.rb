# frozen_string_literal: true
require 'ffaker'
require 'algorithms/sorting/counting'

RSpec.describe Algorithms do
  describe 'Counting Sort' do
    context 'ordering positive numbers' do
      let(:unordered_array) { 10.times.map { FFaker::Random.rand(0..9) } }
      let(:sorted_array) { Algorithms::CountingSort.order_positive_numbers(unordered_array) }

      it 'sorted array' do
        expect(sorted_array).to eq(unordered_array.sort)
      end

      it 'unordered array' do
        expect(unordered_array).to_not eq(unordered_array.sort)
      end
    end
  end
end
