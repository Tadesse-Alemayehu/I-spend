require 'rails_helper'

RSpec.describe Spend, type: :model do
  describe "test description" do
      before :all do
        user=User.first
        @spend=Spend.new(name: 'spend by user one', user: user, amount: 200)
      end
      it "expect spend to be saved" do
        expect(@spend.save).to be_truthy
      end
    end
end
