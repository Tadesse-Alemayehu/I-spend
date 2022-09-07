require 'rails_helper'

RSpec.describe "Spends", type: :system do
      before(:each) do
        visit new_user_session_path
        @user=@user=User.create(name: "tadesse alemayehu", email: 'testuser@testuser.com', password: '123456')
        puts @user.email
        @categories=@user.categories
      within('#new_user') do
        fill_in 'user[email]', with: @user.email
        fill_in 'user[password]', with: @user.password
      end
      click_button('commit')
        visit user_categories_path(:user_id => @user)
      end

  describe "test a list of transaction are displayed for a category" do 
    it "Assert all transaction for a category are displayed" do

    end
  end
end
