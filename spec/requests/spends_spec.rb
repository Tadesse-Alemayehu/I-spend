require 'rails_helper'

# signed in user are going to be validated with system test. this controller tests
# only test if a route is working fine

RSpec.describe "Spends", type: :request do
  describe "GET /index" do
    it "redirect to login page" do
      get user_categories_path(:user_id => 1)
      expect(response).to have_http_status(:redirect)
    end
  end

end
