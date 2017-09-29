require "binary_search"

POSITIVE_DATA = [
  { result: 0,  needle: 1, haystack: [1] },
  { result: 0,  needle: 1, haystack: [1, 3, 5] },
  { result: 1,  needle: 3, haystack: [1, 3, 5] },
  { result: 2,  needle: 5, haystack: [1, 3, 5] },
  { result: 0,  needle: 1, haystack: [1, 3, 5, 7] },
  { result: 1,  needle: 3, haystack: [1, 3, 5, 7] },
  { result: 2,  needle: 5, haystack: [1, 3, 5, 7] },
  { result: 3,  needle: 7, haystack: [1, 3, 5, 7] },
]

NEGATIVE_DATA = [
  { result: -1, needle: 3, haystack: [] },
  { result: -1, needle: 3, haystack: [1] },
  { result: -1, needle: 0, haystack: [1, 3, 5] },
  { result: -1, needle: 2, haystack: [1, 3, 5] },
  { result: -1, needle: 4, haystack: [1, 3, 5] },
  { result: -1, needle: 6, haystack: [1, 3, 5] },
  { result: -1, needle: 0, haystack: [1, 3, 5, 7] },
  { result: -1, needle: 2, haystack: [1, 3, 5, 7] },
  { result: -1, needle: 4, haystack: [1, 3, 5, 7] },
  { result: -1, needle: 6, haystack: [1, 3, 5, 7] },
  { result: -1, needle: 8, haystack: [1, 3, 5, 7] },
]

describe BinarySearch do
  describe 'functional chop' do
    it 'returns index of element when found' do
      POSITIVE_DATA.each do |test|
        expect(subject.functional_chop(test[:needle], test[:haystack])).to eq(test[:result])
      end
    end

    it 'returns -1 when element is not found' do
      NEGATIVE_DATA.each do |test|
        expect(subject.functional_chop(test[:needle], test[:haystack])).to eq(test[:result])
      end
    end
  end
end

