# frozen_string_literal: true

RSpec.describe AlgorithmsRuby::MinimumSum do
  context ".call" do
    let(:arr) { [2, 4, 1, 3] }
    subject { described_class.call(arr) }

    it { expect(subject).to eq(3) }
  end
end
