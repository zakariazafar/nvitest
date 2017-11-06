require 'rails_helper'

RSpec.describe Book, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:book)).to be_valid 
  end

  it "is valid without any value" do
  	book = FactoryGirl.build(:book)
  	expect(book).to be_valid
  end

end
