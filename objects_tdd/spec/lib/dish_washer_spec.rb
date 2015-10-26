require 'rspec'
require '.lib/dish_washer'

describe DishWasher do
  it 'should be a dish washer' do
    expect(subject).to be_a(DishWasher)
  end
end
