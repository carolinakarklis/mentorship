require 'rails_helper'

RSpec.describe "Mentees", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/mentees/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/mentees/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/mentees/index"
      expect(response).to have_http_status(:success)
    end
  end

end
