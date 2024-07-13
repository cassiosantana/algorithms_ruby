# frozen_string_literal: true

RSpec.describe AlgorithmsRuby::CountingSort do
  describe ".call" do
    context "with positive numbers" do
      let(:unordered_array) { [4, 2, 7, 1, 5] }

      it "sorts the array" do
        expect(
          described_class.call(unordered_array)
        ).to eq(unordered_array.sort)
      end
    end

    context "with empty array" do
      let(:empty_array) { [] }

      it "returns an empty array" do
        expect(
          described_class.call(empty_array)
        ).to eq([])
      end
    end

    context "with single element array" do
      let(:single_element_array) { [5] }

      it "returns the same array" do
        expect(
          described_class.call(single_element_array)
        ).to eq(single_element_array)
      end
    end
  end
end
