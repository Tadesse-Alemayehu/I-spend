require 'rails_helper'

RSpec.describe "Users", type: :system do
     describe "Test sign up" do
      before(:all){visit new_user_registration_path}
      it "Assert user access the page with appropriate text" do
        expect(page).to have_content("Sign up")
      end
      # it "Assert user access login link on sign up page" do
      #   expect(page).to have_xpath("//a[@href='/users/sign_in']")
      # end
      # it "Assert user access sign up button" do
      #   expect(page).to have_xpath("//input[@name='commit' and @value='Sign up']")
      #   puts page
      # end
      # it "Assert user is able to register with Name, Email, Password" do
      # end
    end

end
