require 'rails_helper'

describe "sign up page", :type => :request do
  it "should render the signup template" do
    get "/users/sign_up"
    expect(response).to render_template(:new)
    expect(response.body).to include("Sign up")
  end
end