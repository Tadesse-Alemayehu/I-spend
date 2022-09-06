require 'rails_helper'

RSpec.describe Category, type: :model do
    describe "test description" do
      before :all do
        @user=User.first
        @category=Category.new(user: @user, name: 'MC donald')
      end
      it "expect category to be saved" do
        expect(@category.save).to be_truthy
      end
      it "expect category to be found" do
        category=Category.create(user: @user, name: 'MC donald')
        expect(Category.find(category.id)).to eql(category)
      end
      it "expect Category to fail saving without user" do
        category=Category.new(name: 'MC donald')
        expect(category.save).to be_falsey
      end
    end

end
