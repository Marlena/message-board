class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def email_and_sign_in_count
    if self.sign_in_count < 2
      "Hi #{self.email}. Howdy newcomer!"
    else
    "#{self.email} has signed in #{self.sign_in_count} times!  Woohoo!"
    end
  end
end
