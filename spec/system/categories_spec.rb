require 'rails_helper'

RSpec.describe "Categories", type: :system do

  pending "add some scenarios (or delete) #{__FILE__}"
    describe "test description" do
      before(:each) do
        visit new_user_session_path
        @user=User.first
        @categories=@user.categories
      within('#new_user') do
        fill_in 'user[email]', with: @user.email
        fill_in 'user[password]', with: @user.password
      end
      click_button('commit')
        visit user_categories_path(:user_id => @user)
      end
      it "User can see a list of all categories" do
         @categories.each do |category|
            expect(page).to have_content(category.name)
         end
      end
    end

end
