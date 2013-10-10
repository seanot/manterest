class DartsController < ApplicationController
  def new
    @dart = Dart.new
  end
  def create
    if current_user
      dart = Dart.new(dart_params)
      dart.user_id = current_user
      if dart.save #this should go to a dartboard!
        redirect_to root_path
      else
        flash[:error] = "Invalid board!"
        render :new
      end
    else
      flash[:error] = "You must be logged in to create a dart"
      redirect_to root_path
    end
  end

   private
    def dart_params
      params.require(:dart).permit(:image_url, :link_url)
    end
end
