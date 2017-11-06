require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:user)).to be_valid 
  end

  it "is invalid without an email" do
  	user = FactoryGirl.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it "is invalid with a duplicate email address" do
  	FactoryGirl.create(:user, email: "zakaria@test.com")
    user = FactoryGirl.build(:user, email: "zakaria@test.com")
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end

end
