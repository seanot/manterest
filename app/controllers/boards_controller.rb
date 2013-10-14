class BoardsController < ApplicationController
  def new
    render :new, layout: false
  end

  def create
    board = Board.new(board_params)
    if current_user.boards << board
      board = current_user.boards.last
      redirect_to board_path(board)
    else
      flash.now.alert = "Invalid board!"
      render :new
    end
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    board = Board.find(params[:id])
    board.update_attributes(board_params)
    redirect_to board_path(board)
  end

  def show
    @board = Board.find(params[:id])
    @dart = Dart.new
    session[:board_id] = @board.id
  end

  def destroy
    Board.find(params[:id]).destroy
    redirect_to user_path(current_user)
  end


  private
    def board_params
      params.require(:board).permit(:name, :description)
    end
end
