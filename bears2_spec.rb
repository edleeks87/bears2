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
    let(:sorted) { subject.bubble_sort(array) }
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

  describe '#merge_sort' do
    let(:num_array) do
      [
        30_288, 36_994, 34_450, 20_909, 23_224, 42_644, 52_812, 61_530, 25_129,
        39_320, 50_860, 54_355, 77_143, 27_226, 71_847, 68_017, 43_371, 18_456,
        50_348, 26_763, 34_227, 77_968
      ]
    end
    let(:str_array) { 'Beyonce had the best music video of all time' }
    it 'should produce a sorted array in ascending or alphabetical order' do
      aggregate_failures do
        expect(subject.merge_sort(num_array)).to eq(num_array.sort)
        expect(subject.merge_sort(subject.string_to_array(str_array))).to eq(str_array.split(' ').sort)
      end
    end
  end

  describe '#string_to_array' do
    let(:string) { '!!!test???,.-time ":;' }
    it 'should create an array delimited on all non alphabetic chars' do
      aggregate_failures do
        expect(subject.string_to_array(string).include?('test')).to eq(true)
        expect(subject.string_to_array(string).include?('time')).to eq(true)
        expect(subject.string_to_array(string).include?('test?')).not_to eq(true)
        expect(subject.string_to_array(string).include?('time ')).not_to eq(true)
      end
    end
  end

  describe '#word_search' do
    let(:str_array) { 'Beyonce, had, the best music video of all time!' }
    it 'should return true if the target word exists in a given array' do
      aggregate_failures do
        expect(subject.word_search(subject.string_to_array(str_array), 'had')).to eq(true)
        expect(subject.word_search(subject.string_to_array(str_array), 'mongoose')).not_to eq(true)
      end
    end
  end
end
