require 'spec_helper'

describe DartsController do

  describe 'POST #create' do

    before(:each) do
      @ok_attr = {
      image_url: "img.gif",
      link_url: "ex.com"
      }
    end

    context 'When Logged In' do
      before(:each) do

      end
    end

    context 'Not Logged In' do

      before(:each) do
        controller.stub(:current_user).and_return false
        post :create, :dart => @ok_attr
      end

      it "should redirect to root" do
        response.should redirect_to root_path
      end

      it "should not create a dart" do
        flash.now[:error].should =~ /logged in/i
      end
    end
  end
end
