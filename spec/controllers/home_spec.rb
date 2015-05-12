require 'rails_helper'

describe HomeController do
  describe "index" do
    it "returns a 200" do
      @user = User.create(email: "sally@example.com", password: "password")
      sign_in @user
      get :index

      expect(response).to be_success
      #expect(response).to have_http_status(200)
      #expect(response.status).to be(200)
    end
  end
end