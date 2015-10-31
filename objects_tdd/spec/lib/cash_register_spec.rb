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
      it 'return how much change I should received' do
        # rubocop:disable Metrics/LineLength
        expect { cash_register.pay(11.25) }.to output("Your change is $1.25\n").to_stdout
        # rubocop:enable Metrics/LineLength
      end
      it 'make total zero' do
        # rubocop:disable Metrics/LineLength
        expect { cash_register.pay(11.25) }.to change(cash_register, :total).from(10).to(0)
        # rubocop:enable Metrics/LineLength
      end
    end

    context 'When I pay the exact amount' do
      it "should tell me that I don't owe anything" do
        # rubocop:disable Metrics/LineLength
        expect { cash_register.pay(10) }.to output("You paid the exact amount, there is no change to give.\n").to_stdout
        # rubocop:enable Metrics/LineLength
      end
      it 'make total zero' do
        # rubocop:disable Metrics/LineLength
        expect { cash_register.pay(10) }.to change(cash_register, :total).from(10).to(0)
        # rubocop:enable Metrics/LineLength
      end
    end
  end
end
