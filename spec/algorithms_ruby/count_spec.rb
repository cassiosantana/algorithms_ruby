# frozen_string_literal: true

RSpec.describe AlgorithmsRuby do

  describe 'character count' do
    let(:count) { AlgorithmsRuby::Count.new('#GeeKs01fOr@gEEks07') }

    it 'Upper case letters' do
      expect(count.upper).to eq(5)
    end

    it 'Lower case letters' do
      expect(count.lower).to eq(8)
    end

    it 'Numbers' do
      expect(count.number).to eq(4)
    end

    it 'Special Characters' do
      expect(count.special).to eq(2)
    end
  end
end
