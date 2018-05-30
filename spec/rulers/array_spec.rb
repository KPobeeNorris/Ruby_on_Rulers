require "./lib/rulers/array.rb"

RSpec.describe Array do

  describe '#sum' do
    it "adds up the contents of an array" do
      expect( [1, 4, 9].sum ).to eq 14
    end
  end

  describe '#add' do
    it 'adds things together' do
      expect(subject.add(4, 9)).to eq 13
    end
  end

  describe '#subtract' do
    it 'subtracts a number from another number' do
      expect(subject.subtract(98, 67)).to eq 31
    end
  end
end
