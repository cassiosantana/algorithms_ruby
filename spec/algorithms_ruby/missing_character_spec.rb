# frozen_string_literal: true

RSpec.describe AlgorithmsRuby do
  context 'Missing characters' do
    it 'Elementos faltantes encontrados' do
      object = AlgorithmsRuby::MissingCharacter.new
      result = object.missing_characters 'The quick brown fox jumps'
      expect(result).to eq('adglvyz')
    end

    it "Elemento 'w' não encontrado" do
      object = AlgorithmsRuby::MissingCharacter.new
      result = object.missing_characters 'The quick bron fox jumps'
      expect(result).not_to eq('adglvyz')
    end
  end
end
