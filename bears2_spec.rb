# frozen_string_literal: true

require_relative 'bears2'
# :nodoc
RSpec.describe BearsTwo do
  describe '#michael_bubble_sort' do
    let(:array) do
      [
        30_288, 36_994, 34_450, 20_909, 23_224, 42_644, 52_812, 61_530, 25_129,
        39_320, 50_860, 54_355, 77_143, 27_226, 71_847, 68_017, 43_371, 18_456,
        50_348, 26_763, 34_227, 77_968
      ]
    end
    let(:sorted) { subject.michael_bubble_sort(array) }
    it 'should sort an array in ascending order' do
      expect(sorted).to eq array.sort
    end
  end

  describe '#binary_search' do
    let(:array) { [1, 2, 4, 5, 585_42, 12, 21, 585_52].sort }
    let(:val) { 585_42 }
    let(:non_val) { -1 }
    it 'should return the index of the value if it is in the array' do
      aggregate_failures do
        expect(subject.binary_search(array, val, 0, array.size - 1)).to eq array.index(val)
        expect(subject.binary_search(array, non_val, 0, array.size - 1)).to eq array.index(non_val)
      end
    end
  end
end
