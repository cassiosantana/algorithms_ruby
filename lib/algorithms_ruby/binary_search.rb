# frozen_string_literal: true

module AlgorithmsRuby
  # binary search
  class BinarySearch
    def search(arr, element, first, last)
      return -1 if last < first

      mid = (first + last) / 2
      return mid if element == arr[mid]

      element < arr[mid] ? search(arr, element, first, mid - 1) : search(arr, element, mid + 1, last)
    end
  end
end
