# frozen_string_literal: true

RSpec.describe Arrays::FindTree do
  describe ".find" do
    subject { described_class.find(arr) }

    context "when array elements are distinct" do
      let(:arr) { [10, 4, 3, 50, 23, 90] }
      it { expect(subject).to eq(arr.max(3)) }
    end

    context "when array elements are not distinct" do
      let(:arr) { [10, 4, 90, 50, 23, 90] }
      it { expect(subject).to_not eq(arr.max(3)) }
    end
  end
end
