require 'rails_helper'

describe User, :type => :model do

  describe "email and sign in count" do
    it "will provide the correct user info" do
      andrew = User.create!(email: "andrew@example.com", sign_in_count: 590, password: 'password') #maybe password

      expect(andrew.email_and_sign_in_count).to eq("andrew@example.com has signed in 590 times!  Woohoo!")
    end

    it "will say howdy newcomer when a user has less than two logins" do
      marlena = User.create!(email: "marlena@example.com", password: 'password', sign_in_count: 1)

      expect(marlena.email_and_sign_in_count).to eq('Hi marlena@example.com. Howdy newcomer!')
    end
  end

end