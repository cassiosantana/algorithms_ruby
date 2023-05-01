# frozen_string_literal: true

RSpec.describe AlgorithmsRuby do
  describe 'FindTree' do
    context 'random array' do
      let(:arr) { 5.times.map { FFaker::Random.rand(0..9) } }
      let(:result) { AlgorithmsRuby::FindTree.find(arr) }

      it 'the three largest non-repeating numbers' do
        expect(result).to eq(arr.uniq.max(3))
      end
    end
  end
end
