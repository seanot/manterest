class DartsController < ApplicationController

  def new
    if current_user
      @dart = Dart.new
    else
      flash[:error] = "You must be logged in to create a dart"
      redirect_to root_path
    end
  end

  def create
    @dart = current_user.darts.create(dart_params)
    # dart.user_id = current_user
    # if @dart.save #this should go to a dartboard!
    redirect_to dart_path(@dart)
    # else
    #   flash[:error] = "Invalid board!"
    #   render :new
    # end
  end

  def index
  end

  def edit
    @dart = Dart.find(params[:id])
  end

  def update
    @dart = Dart.find(params[:id])
    @dart.update_parameters(dart_params)
    if @dart.save
      redirect_to root_path
    else
      flash[:error] = "Invalid params!"
      render :edit
    end
  end

  def destroy
    dart = Dart.find(params[:id])
    dart.destroy
  end

  def show
    @darts = current_user.darts.all
  end


  private
    def dart_params
      params.require(:dart).permit(:image_url, :link_url)
    end
end
