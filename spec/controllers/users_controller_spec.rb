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
      before(:each) do
        post :create, user: FactoryGirl.attributes_for(:user, email: 'other@diff.com', username: 'cooluser!!')
      end

      it "redirects to homepage" do
        response.should redirect_to root_path
      end

      it "should set session to created user's id" do
        expect(session[:user_id]).to eq(User.last.id)
      end

      it "should create a user in the database" do
        expect(User.last.email).to eq('other@diff.com')
      end
    end

    context "Unsuccessfully creates a user" do
      it "renders the 'users#create form" do
        post :create, user: FactoryGirl.attributes_for(:user, email: 'other@diff', username: 'cooluser!!')
        expect(response).to render_template :new
      end
    end
  end
end
