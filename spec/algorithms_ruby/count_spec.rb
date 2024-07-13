# frozen_string_literal: true

RSpec.describe AlgorithmsRuby::Count do
  describe "character count" do
    let(:str) { "#GeeKs01fOr@gEEks07" }
    let(:results) { described_class.call(str) }

    it "find results" do
      expect(results[:upper]).to eq(5)
      expect(results[:lower]).to eq(8)
      expect(results[:number]).to eq(4)
      expect(results[:special]).to eq(2)
    end
  end
end
