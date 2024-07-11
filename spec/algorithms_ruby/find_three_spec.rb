# frozen_string_literal: true

RSpec.describe AlgorithmsRuby::FindThree do
  describe ".call" do
    let(:result) { described_class.call(arr) }

    context "when array elements are distinct" do
      let(:arr) { [10, 4, 3, 50, 23, 90] }
      it { expect(result).to eq(arr.max(3)) }
    end

    context "when the array contains duplicate elements" do
      let(:arr) { [10, -4, 23, -50, 23, -90] }
      it { expect(result).to eq(arr.uniq.max(3)) }
    end

    context "when array elements are negative" do
      let(:arr) { [-10, -4, -3, -50, -23, -90] }
      it { expect(result).to eq(arr.max(3)) }
    end

    context "when array elements are negative and positive" do
      let(:arr) { [10, -4, 3, -50, 23, -90] }
      it { expect(result).to eq(arr.max(3)) }
    end

    context "when array has exactly three distinct elements" do
      let(:arr) { [30, 10, 20] }
      it { expect(result).to eq([30, 20, 10]) }
    end

    context "when array is empty" do
      let(:arr) { [] }
      it { expect(result).to eq([]) }
    end
  end
end
