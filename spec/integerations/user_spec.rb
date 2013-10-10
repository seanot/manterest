require 'spec_helper'

describe UsersController, :type => :controller do
  it "should have the content this is your feed" do
    get :new
    response.should render_template("new")
  end

  # it "should have a form" do
  #   get :new
  #   response.should
  # end
end



