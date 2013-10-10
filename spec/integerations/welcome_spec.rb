require 'spec_helper'

  describe WelcomeController, :type => :controller do
    it "should have the content this is your feed" do
      get :feed
      response.should render_template("feed")
    end
  end

