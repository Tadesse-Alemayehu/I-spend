require 'rails_helper'

RSpec.describe Category, type: :model do
    describe "test description" do
      before :all do
        user=User.first
        @category=Category.new(user: user, name: 'MC donald')
      end
      it "expect category to be saved" do
        expect(@category.save).to be_truthy
      end
    end

end
