class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(create_params)
    if user.save
      reset_session
      session[:user_id] = user.id
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def create_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
