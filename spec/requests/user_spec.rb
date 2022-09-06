require 'rails_helper'

# signed in user are going to be validated with system test. this controller tests
# only test if a route is working fine

RSpec.describe "Users", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get users_path
      expect(response).to have_http_status(:success)
    end
  end
end
