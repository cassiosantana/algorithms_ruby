# frozen_string_literal: true

module Arrays
  class FindTree
    def self.find(arr)
      first = second = third = 0
      arr.size.times do |i|
        if arr[i] > first
          third = second
          second = first
          first = arr[i]
        elsif arr[i] > second and arr[i] != first
          third = second
          second = arr[i]
        elsif arr[i] > third and arr[i] != second and arr[i] != first
          third = arr[i]
        end
      end
      [first, second, third]
    end
  end
end
