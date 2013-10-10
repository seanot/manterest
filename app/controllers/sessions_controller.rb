class SessionsController < ApplicationController

  def login
    user = User.find_by(email: params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      reset_session
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now.alert = "Don't get it twisted, man!"
    end
  end

  def new
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
