# frozen_string_literal: true

RSpec.describe AlgorithmsRuby do
  context "Binary search" do
    let(:arr) { [10, 20, 30, 50, 60, 80, 110, 130, 140, 170] }
    let(:last) { arr.length - 1 }
    let(:binary_search) { AlgorithmsRuby::BinarySearch.new }

    shared_examples "binary search result" do |element, expected_result|
      it "returns #{expected_result} for element #{element}" do
        result = binary_search.search(arr, element, 0, last)
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
