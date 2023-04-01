require 'search/linear'

RSpec.describe Linear do
  it 'element found' do
    arr = [5, 7, 10, 15, 18, 27]
    target_element = 18

    result = Linear.new.search(arr, target_element)
    expect(result).to be >= 0
  end
end

RSpec.describe Linear do
  it 'element found at index 4' do
    arr = [5, 7, 10, 15, 18, 27]
    target_element = 18

    result = Linear.new.search(arr, target_element)
    expect(result).to eql(4)
  end
end

RSpec.describe Linear do
  it 'element not found' do
    arr = [5, 7, 10, 15, 18, 27]
    target_element = 200

    result = Linear.new.search(arr, target_element)
    expect(result).to eql(-1)
  end
end

RSpec.describe Linear do
  it 'empty list' do
    arr = []
    target_element = 5

    result = Linear.new.search(arr, target_element)
    expect(result).to eql(-1)
  end
end
