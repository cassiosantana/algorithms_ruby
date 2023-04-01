require 'search/linear'

RSpec.describe Linear do
  context 'searching for element in an array' do
    it 'element found' do
      arr = [5, 7, 10, 15, 18, 27]
      target_element = 18
      result = Linear.new.search(arr, target_element)
      expect(result).to be >= 0
    end

    it 'element found at index 4' do
      arr = [5, 7, 10, 15, 18, 27]
      target_element = 18
      result = Linear.new.search(arr, target_element)
      expect(result).to eq(4)
    end

    it 'element not found' do
      arr = [5, 7, 10, 15, 18, 27]
      target_element = 200
      result = Linear.new.search(arr, target_element)
      expect(result).to eq(-1)
    end

    it 'empty list' do
      arr = []
      target_element = 5
      result = Linear.new.search(arr, target_element)
      expect(result).to eq(-1)
    end
  end
end
