# frozen_string_literal: true

RSpec.describe AlgorithmsRuby do
  describe "Counting Sort" do
    context "ordering positive numbers" do
      let(:unordered_array) { Array.new(10) { rand(0..9) } }
      let(:sorted_array) { AlgorithmsRuby::CountingSort.call(unordered_array) }

      it "sorted array" do
        expect(sorted_array).to eq(unordered_array.sort)
      end

      it "unordered array" do
        expect(unordered_array).to_not eq(unordered_array.sort)
      end
    end
  end
end
