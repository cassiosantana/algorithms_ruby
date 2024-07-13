# frozen_string_literal: true

RSpec.describe AlgorithmsRuby::FindThree do
  describe ".call" do
    let(:result) { described_class.call(arr) }

    context "when array elements are distinct" do
      let(:arr) { [10, 4, 3, 50, 23, 90] }
      it { expect(result).to eq(arr.max(3)) }
    end

    context "when array elements are negative" do
      let(:arr) { [-10, -4, -3, -50, -23, -90] }
      it { expect(result).to eq(arr.max(3)) }
    end

    context "when array elements are negative and positive" do
      let(:arr) { [10, -4, 3, -50, 23, -90] }
      it { expect(result).to eq(arr.max(3)) }
    end
  end
end
