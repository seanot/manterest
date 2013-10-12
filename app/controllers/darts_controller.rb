class DartsController < ApplicationController

  def create
    @board = Board.find(session[:board_id])
    session[:board_id] = nil
    @dart = Dart.new(dart_params)
    @dart.user_id = current_user.id
    if @dart.save
      @board.darts << @dart
      redirect_to board_path(@board) #this should go to a dartboard!
    else
      flash[:error] = "Invalid board!"
      render :new
    end
  end

  def destroy
    dart = Dart.find(params[:id])
    dart.destroy
  end


  def edit
    @dart = Dart.find(params[:id])
  end

  def index
  end

  def new
    if current_user
      @dart = Dart.new
    else
      flash[:notice] = "You must be logged in to create a dart"
      redirect_to root_path
    end
  end

  def show
    @darts = current_user.darts.all
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


  private
    def dart_params
      params.require(:dart).permit(:caption, :image_url, :link_url)
    end

end
