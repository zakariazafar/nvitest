require 'rails_helper'

RSpec.describe BooksController, type: :controller do

  describe "#index" do
  	context "as an authenticated user" do
      before do
        @user = FactoryGirl.create(:user)
      end

      it "responds successfully" do
        sign_in @user
        get :index
        expect(response).to be_success
      end

      it "returns a 200 response" do
        sign_in @user
        get :index
        expect(response).to have_http_status "200"
      end
    end

    context "as a guest" do
      it "returns a 200 response" do
        get :index
        expect(response).to have_http_status "200"
      end
    end
  end

end
