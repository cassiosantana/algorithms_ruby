# frozen_string_literal: true

RSpec.describe AlgorithmsRuby do
  describe "Bubble Sort" do
    let(:bubble_sort) { AlgorithmsRuby::BubbleSort.new }

    context "when the array is unordered" do
      let(:arr) { [5, 1, 4, 2, 8] }

      it "sorts the array" do
        result = bubble_sort.sort(arr)
        expect(result).to eq(arr.sort)
      end
    end

    context "when the array is already sorted" do
      let(:arr) { [1, 2, 3, 4, 5] }

      it "returns the sorted array unchanged" do
        result = bubble_sort.sort(arr)
        expect(result).to eq(arr)
      end
    end

    context "when the array is in reverse order" do
      let(:arr) { [5, 4, 3, 2, 1] }

      it "sorts the array" do
        result = bubble_sort.sort(arr)
        expect(result).to eq(arr.sort)
      end
    end

    context "when the array is empty" do
      let(:arr) { [] }

      it "returns an empty array" do
        result = bubble_sort.sort(arr)
        expect(result).to eq(arr)
      end
    end

    context "when the array has a single element" do
      let(:arr) { [1] }

      it "returns the single-element array unchanged" do
        result = bubble_sort.sort(arr)
        expect(result).to eq(arr)
      end
    end
  end
end

