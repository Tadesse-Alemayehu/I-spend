require 'rails_helper'

# signed in user are going to be validated with system test. this controller tests
# only test if a route is working fine

RSpec.describe 'Categories', type: :request do
  describe 'GET /index' do
    it 'redirect to login page' do
      get user_categories_path(user_id: 1)
      expect(response).to have_http_status(:redirect)
    end
  end
  describe 'GET /users/:user_id/categories/new' do
    it 'redirect to login page' do
      get new_user_category_path(user_id: 1)
      expect(response).to have_http_status(:redirect)
    end
  end
end
