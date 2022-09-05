require 'rails_helper'

RSpec.describe CategorySpend, type: :model do
    describe "test description" do
      before :all do
        @category=Category.first
        @spend=Spend.first
        @category_spend=CategorySpend.new(spend: @spend, category: @category)
      end
      it "expect category spend to be saved" do
        expect(@category_spend.save).to be_truthy
      end
    end
end
