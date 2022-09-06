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
        puts @user.save!
        puts "user with email is"
        puts User.where(email: 'testuser@testuser.com')
        expect(User.find_by(email: 'testuser@testuser.com')).to eql(@user)
      end
    end
end
