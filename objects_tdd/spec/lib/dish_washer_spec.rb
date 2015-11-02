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
      allow(STDIN).to receive(:gets) { 20 }
      expect(subject.load_dishes).to eq 20
    end
  end

  describe 'unload_dishes' do
    before { subject.total_dishes = 20 }
    it 'should remove dishes from total_dishes' do
      allow(STDIN).to receive(:gets) { 10 }
      # rubocop:disable Metrics/LineLength
      expect(subject.unload_dishes).to eq('You have 10 dishes left in the dishwasher')
      # rubocop:enable Metrics/LineLength
    end
    it 'total equal zero if to many dishes are unloaded' do
      allow(STDIN).to receive(:gets) { 22 }
      # rubocop:disable Metrics/LineLength
      expect(subject.unload_dishes).to eq('You have 0 dishes left in the dishwasher')
      # rubocop:enable Metrics/LineLength
    end
  end

  context 'When I run the dish washer' do
    describe '#run_dishes' do
      it 'won\'t work without soap' do
        allow(STDIN).to receive(:gets) { 20 }
        subject.load_dishes
        expect(subject.run_dishwasher).to eq('You need to load the soap')
      end
      it 'won\'t run if there\'s to many dishes' do
        subject.load_soap
        allow(STDIN).to receive(:gets) { 50 }
        subject.load_dishes
        # rubocop:disable Metrics/LineLength
        expect(subject.run_dishwasher).to eq('50 is to many dishes, please unload some before continuing')
        # rubocop:enable Metrics/LineLength
      end
      it 'tell the owner to unload dishes after running it' do
        subject.load_soap
        allow(STDIN).to receive(:gets) { 30 }
        subject.load_dishes
        # rubocop:disable Metrics/LineLength
        expect(subject.run_dishwasher).to eq('Dishwasher successfully ran, please unload it now!')
        # rubocop:enable Metrics/LineLength
      end
    end
  end
end
