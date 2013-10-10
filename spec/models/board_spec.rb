require 'spec_helper'

describe Board do

  before do
    @board = Board.new(:name => "man shit",
                       :description => "clearly, a board for manly men.",
                       :user_id => 1)
  end

  subject { @board }

  describe "when a name is not present" do
    before { @board.name = " "}
    it { should_not be_valid }
  end

  describe "board name is already taken" do
    before do
      board_with_same_name = @board.dup
      board_with_same_name.name = @board.name.upcase
      board_with_same_name.save
    end
    it {should_not be_valid}
  end

  describe 'when description is not present' do
    before {@board.description = ' '}
    it {should_not be_valid}
  end

  describe 'when user_id is nil' do
    before {@board.user_id = nil}
    it {should_not be_valid}
  end
end
