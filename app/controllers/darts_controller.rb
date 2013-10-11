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

  def edit
    @dart = Dart.find_by(params[:id])
  end

  def update
    @dart = Dart.find_by(params[:id])
    @dart.update_parameters(dart_params)
    if @dart.save
      redirect_to root_path
    else
      flash[:error] = "Invalid params!"
      render :edit
    end
  end

  def destroy
    dart = Dart.find_by(params[:id])
    dart.destroy
  end


  private
    def dart_params
      params.require(:dart).permit(:image_url, :link_url)
    end
end
