require 'problems/string/missing_character'

RSpec.describe Problems do
  context 'Missing characters' do
    it 'Elementos faltantes encontrados' do
      object = Problems::MissingCharacter.new
      result = object.missing_characters 'The quick brown fox jumps'
      expect(result).to eq('adglvyz')
    end

    it "Elemento 'w' não encontrado" do
      object = Problems::MissingCharacter.new
      result = object.missing_characters 'The quick bron fox jumps'
      expect(result).not_to eq('adglvyz')
    end
  end
end
