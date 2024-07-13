# frozen_string_literal: true

RSpec.describe AlgorithmsRuby::MissingCharacter do
  context "Missing characters" do
    subject { described_class.call(str) }

    context "When string contains mixed case letters" do
      let(:str) { "The Quick Brown Fox Jumps" }
      it { expect(subject).to eq("adglvyz") }
    end

    context "When all characters are present" do
      let(:str) { "The quick brown fox jumps adglvyz" }
      it { expect(subject).to eq("") }
    end

    context "When string is empty" do
      let(:str) { "" }
      it { expect(subject).to eq("abcdefghijklmnopqrstuvwxyz") }
    end

    context "When string contains non-alphabetic characters" do
      let(:str) { "1234567890 !@#$%^&*()_+-=[]{}|;:'\",.<>?/" }
      it { expect(subject).to eq("abcdefghijklmnopqrstuvwxyz") }
    end

    context "When string contains all alphabet letters in different orders" do
      let(:str) { "z y x w v u t s r q p o n m l k j i h g f e d c b a" }
      it { expect(subject).to eq("") }
    end

    context "When string contains repeated characters" do
      let(:str) { "aaaa bbbb cccc dddd eeee ffff gggg" }
      it { expect(subject).to eq("hijklmnopqrstuvwxyz") }
    end
  end
end
