require 'spec_helper'

describe SessionsController do

  describe "GET #new" do
    it "should render the view" do
      get :new
      expect(response).to render_template :new
    end
  end

  context "POST #login" do
    before(:each) do
      @user = FactoryGirl.create(:user)
    end

    describe "Correct Sign-in" do
      before(:each) do
        post :login,{user: {email: 'user@example.com', password: 'secret1234!'}}
      end

      it "should set session to created user's id" do
        expect(session[:user_id]).to eq(@user.id)
      end

      it "should redirect to root path" do
        expect(response).to redirect_to root_path
      end
    end

    describe "Incorrect Sign-in" do
      before(:each) do
        post :login,{user: {email: 'user@example.com', password: 'secret1233!'}}
      end
      it "should flash error" do
        flash.now[:error].should =~ /Invalid/i
      end

      it "should redirect to login" do
        response.should redirect_to login_path
      end
    end
  end

  describe "GET #destroy" do
    before(:each) do
      session[:user_id] = 1
      get :destroy
    end

    it "should clear the session" do
      expect(session[:user_id]).to eq nil
    end

    it "should redirect to root path" do
      expect(response).to redirect_to root_path
    end
  end
end
