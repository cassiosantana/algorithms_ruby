# frozen_string_literal: true

RSpec.describe AlgorithmsRuby::MinimumSum do
  let(:array) { [2, 4, 1, 3] }
  subject { described_class.new(array) }

  describe ".call" do
    it "returns the correct minimum sum" do
      expect(subject.call).to eq(3)
    end
  end

  describe "#minimum_value" do
    it "returns the minimum value" do
      expect(subject.send(:minimum_value)).to eq(1)
    end
  end

  describe "#repetitions" do
    it "returns the correct number of repetitions" do
      expect(subject.send(:repetitions)).to eq(3)
    end
  end
end

