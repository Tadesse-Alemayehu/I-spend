require 'rails_helper'

RSpec.describe "Users", type: :system do
     describe "Test sign up" do
      before(:each){visit new_user_registration_path}
      it "Assert user access the page with appropriate text" do
        expect(page).to have_content("Sign up")
      end
      it "Assert user access login link on sign up page" do
        expect(page).to have_xpath("//a[@href='/users/sign_in']")
      end
      it "Assert user access sign up button" do
        expect(page).to have_xpath("//input[@name='commit' and @value='Sign up']")
        puts page
      end
      it "Assert user is able to register with Name, Email, Password" do
      within('#new_user') do
        fill_in 'user[name]', with: 'testsignup@gmail.com'
        fill_in 'user[email]', with: 'testsignup@gmail.com'
        fill_in 'user[password]', with: '123456'
        fill_in 'user[password_confirmation]', with: '123456'
      end
      click_button('commit')
      expect(page).to have_content('Welcome! You have signed up successfully.')
      end
    end
      describe "Test Log In" do
        before(:each){visit new_user_session_path}
          it "Assert user access the page with appropriate text" do
            expect(page).to have_content("Log in")
      end
      it 'Assert user is able to Log In with Email, Password' do
        @user=User.create(name: "Tadesse Alemayehu", email: 'testuser@testuser.com', password: '123456')
      within('#new_user') do
        fill_in 'user[email]', with: @user.email
        fill_in 'user[password]', with: @user.password
      end
      click_button('commit')
      expect(page).to have_content('Add new category')
    end
      end

end
