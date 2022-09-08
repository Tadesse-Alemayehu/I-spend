require 'rails_helper'

RSpec.describe 'Categories', type: :system do
  describe 'test description' do
    before(:each) do
      visit new_user_session_path
      @user = @user = User.create(name: 'tadesse alemayehu', email: 'testuser@testuser.com', password: '123456')
      puts @user.email
      @categories = @user.categories
      within('#new_user') do
        fill_in 'user[email]', with: @user.email
        fill_in 'user[password]', with: @user.password
      end
      click_button('commit')
      visit user_categories_path(user_id: @user)
    end

    it 'User can see a list of all categories' do
      @categories.each do |category|
        expect(page).to have_content(category.name)
      end
    end
  end
end
