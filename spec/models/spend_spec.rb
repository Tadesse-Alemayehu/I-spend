require 'rails_helper'

RSpec.describe Spend, type: :model do
  describe 'Test spend/transaction modal for save and retrive' do
    before :all do
      @user = User.first
    end
    it 'expect spend to be saved' do
      spend = Spend.new(name: 'spend by user one', user: @user, amount: 200)
      expect(spend.save).to be_truthy
    end
    it 'expect spend to be found' do
      spend = Spend.create(name: 'spend by user one', user: @user, amount: 200)
      expect(Spend.find(spend.id)).to eql(spend)
    end
    it 'expect spend to fail saving without name' do
      spend = Spend.create(user: @user, amount: 200)
      expect(spend.save).to be_falsey
    end
  end
end
