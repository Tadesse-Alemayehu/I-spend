require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Test user model for creating upadting and deleting user" do
      before :all do
        @user=User.new(name: "tadesse alemayehu", email: 'testuser@testuser.com', password: '123456')
      end
      it "expect user to be saved" do
        expect(@user.save).to be_truthy
      end
      it "expect user to be found by email" do
        new_user=User.create(name: "tadesse alemayehu", email: 'testuser2@testuser.com', password: '123456')
        expect(User.find(new_user.id)).to eql(new_user)
      end
    end
end
