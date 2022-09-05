require 'rails_helper'

RSpec.describe User, type: :model do
  describe "test description" do
      before :all do
        @user=User.new(name: "tadesse alemayehu", email: 'testuser@testuser.com', password: '123456')
      end
      it "expect spend to be saved" do
        expect(@user.save).to be_truthy
      end
    end
end
