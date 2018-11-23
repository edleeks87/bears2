# frozen_string_literal: true

require_relative 'bears2'
# :nodoc
RSpec.describe BearsTwo do
  describe '#michael_bubble_sort' do
    let(:array) do
      [30_288, 36_994, 34_450, 20_909, 23_224, 42_644, 52_812, 61_530, 25_129,
       39_320, 50_860, 54_355, 77_143, 27_226, 71_847, 68_017, 43_371, 18_456,
       50_348, 26_763, 34_227, 77_968]
    end
    let(:sorted) { subject.michael_bubble_sort(array) }
    it 'should sort an array in ascending order' do
      expect(sorted).to eq array.sort
    end
  end
end
