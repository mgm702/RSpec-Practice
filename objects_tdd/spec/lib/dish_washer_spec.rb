require 'rspec'
require './lib/dish_washer'

describe DishWasher do
  context 'When a new dish washer is created' do
    it 'Be a dish washer' do
      expect(subject).to be_a(DishWasher)
    end
    it 'have no soap inside' do
      expect(subject.soap).to eq(false)
    end
    it 'have no dishes inside' do
      expect(subject.total_dishes).to eq(0)
    end
  end

  describe '#load_soap' do
    it 'change soap to true' do
      expect(subject.load_soap).to eq(true)
    end
  end

  describe '#load_dishes' do
    it 'ask how many dishes to load' do
      allow(subject.total_dishes).to receive(:gets).and_return(20)
      expect(subject.total_dishes).to eq(20)
    end
  end
end
