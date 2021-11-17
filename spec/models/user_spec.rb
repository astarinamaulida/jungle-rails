require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    user = User.new(first_name: "Astarina", last_name: "Maulida", email: "astarina.maulida@gmail.com", password: "password", password_confirmation: "password_confirmation")

    it 'should valid' do
      expect(user).to be_valid
    end

    it "should have password confirmation" do
      user.password_confirmation = "password"
      expect(user).to be_valid
    end

    it "should have unique email regardless the case" do
      user.email = "ASTARINA.MAULIDA@GMAIL.COM"
      expect(user).to_not be_valid
    end

    it "should have first name" do
      user.first_name = "Astarina"
      expect(user).to be_valid
    end
  end
end
