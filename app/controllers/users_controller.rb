class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.create(username: params[:username], email: params[:email], password: params[:password])
      if user.save
        session[:user_id] = user.id
        redirect_to root_path
      else
        render :new
    end
  end

end
