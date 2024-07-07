# frozen_string_literal: true

RSpec.describe AlgorithmsRuby::BinarySearch do
  context "Binary search" do
    let(:arr) { [10, 20, 30, 50, 60, 80, 110, 130, 140, 170] }

    shared_examples "binary search result" do |element, expected_result|
      it "returns #{expected_result} for element #{element}" do
        result = described_class.run(arr, element)
        expect(result).to eq(expected_result)
      end
    end

    context "when element is found" do
      include_examples "binary search result", 50, 3
    end

    context "when element is not found" do
      include_examples "binary search result", 22, -1
    end
  end
end
