# frozen_string_literal: true

module AlgorithmsRuby
  # binary search
  class BinarySearch
    def search(arr, element, first, last)
      if last >= first
        mid = (first + last) / 2
        if element == arr[mid]
          mid
        elsif element < arr[mid]
          search(arr, element, first, mid - 1)
        else
          search(arr, element, mid + 1, last)
        end
      else
        -1
      end
    end
  end
end
