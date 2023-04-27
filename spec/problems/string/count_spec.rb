# frozen_string_literal: true

require 'problems/string/count'

RSpec.describe Problems do

  describe 'character count' do
    let(:count) { Problems::Count.new('#GeeKs01fOr@gEEks07') }

    it 'Upper case letters' do
      expect(count.upper).to eq(5)
    end
  end
end
