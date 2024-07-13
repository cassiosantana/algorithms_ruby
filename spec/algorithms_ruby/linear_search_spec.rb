# frozen_string_literal: true

RSpec.describe AlgorithmsRuby::LinearSearch do
  context "Linear search" do
    subject { described_class.call(arr, key) }
    let(:arr) { [10, 50, 30, 70, 80, 20, 90, 40] }
    let(:key) { 30 }

    context "when the array contains the key" do
      it { expect(subject).to eq(2) }
    end

    context "when the array does not contains the key" do
      let(:key) { 100 }
      it { expect(subject).to eq(-1) }
    end

    context "when array is empty" do
      let(:arr) { [] }
      it { expect(subject).to eq(-1) }
    end
  end
end
