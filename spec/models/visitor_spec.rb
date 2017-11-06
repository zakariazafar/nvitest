require 'rails_helper'

RSpec.describe Visitor, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:visitor)).to be_valid 
  end

  it "is valid with ip" do
  	visitor = FactoryGirl.build(:visitor)
  	expect(visitor).to be_valid
  end

end
