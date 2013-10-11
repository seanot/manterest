require 'spec_helper'

describe UsersController do

  describe "GET #new" do
    before(:each) do
      get :new
    end

    it "should render the view" do
      expect(response).to render_template :new
    end

    it "creates a new user instance" do
      expect(assigns(:user)).to be_kind_of(User)
    end
  end

  describe "POST #create" do
    context "successfully creates a user" do
      it "redirects to homepage" do
        post :create, user: (:user, email: 'other@diff.com', username: 'cooluser!!')
        # post :create, user: { email: 'other@diff.com', username: 'cooluser!!' }
        response.should redirect_to root_path
      end
    end
  end
end
