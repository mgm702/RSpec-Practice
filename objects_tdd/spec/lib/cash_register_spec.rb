require 'rspec'
require './lib/cash_register'

describe CashRegister do
  let(:cash_register) { CashRegister.new }

  it 'should be a cash register' do
    expect(cash_register).to be_a(CashRegister)
  end

  it 'should have a total of zero at the beginning' do
    expect(cash_register.total).to eq(0)
  end

  describe '#purchase(amount)' do
    it 'should increase the total by the amount' do
      expect(cash_register.purchase(2.30)).to eq(2.30)
    end
  end

  describe '#pay(amount)' do
    before(:each) do
      cash_register.purchase(10)
    end
    context 'when I pay for something' do
      it 'should decrease amount from the total' do
        cash_register.pay(5.25)
        expect(cash_register.total).to eq(4.75)
      end
      it 'should return my new total' do
        expect(cash_register.pay(5.25)).to eq('Your new total is $4.75')
      end
    end

    context 'When I pay more then the amount' do
      it 'should return how much change I should received'
      it 'should return total to zero after giving out change'
    end

    context 'When I pay the exact amount' do
      it "should tell me that I don't owe anything"
      it 'should return total to zero after payment is made'
    end
  end
end
