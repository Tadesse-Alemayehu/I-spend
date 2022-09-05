require 'rails_helper'

RSpec.describe "Spends", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/spends/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/spends/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/spends/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/spends/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
