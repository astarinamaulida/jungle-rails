require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    user = User.new(first_name: "Astarina", last_name: "Maulida", email: "astarina.maulida@gmail.com", password: "password", password_confirmation: "password")
    
    it 'should valid with valid attributes' do
      expect(user).to be_valid
    end

    # password
    it "should have password" do
      user.password = "password"
      expect(user).to be_valid
    end
    it "should have password confirmation" do
      user.password_confirmation = "password"
      expect(user).to be_valid
    end
    it "should not valid when password and password confirmation don't match" do
      user.password_confirmation = "PASSWORD"
      expect(user).to_not be_valid
    end
    it "should not valid when password has less than 5 caracters" do
      user.password_confirmation.length <= 5
      expect(user).to_not be_valid
    end

    # name and email
    it "should not valid without first name" do
      user.first_name = nil
      expect(user).to_not be_valid
    end
    it "should not valid without last name" do
      user.first_name = nil
      expect(user).to_not be_valid
    end
    it "should not valid without email" do
      user.email = nil
      expect(user).to_not be_valid
    end

  end

  describe '.authenticate_with_credentials' do
    user = User.new(first_name: "Astarina", last_name: "Maulida", email: "astarina.maulida@gmail.com", password: "password", password_confirmation: "password")
    user.save

    it "should returns user if user exist " do
      valid_user = user.authenticate_with_credentials("astarina.maulida@gmail.com", "password")
      expect(valid_user).to_not be_nil
    end
    it "should returns nil is user doesn't exist" do
      valid_user = user.authenticate_with_credentials("wrong", "password")
      expect(valid_user).to be_nil 
    end
    it "should return nil if the password is incorrect" do
      valid_user = user.authenticate_with_credentials("astarina.maulida@gmail.com", "wrong")
      expect(valid_user).to be_nil 
    end
  end
end
