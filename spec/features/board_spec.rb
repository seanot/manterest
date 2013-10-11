require 'spec_helper'

describe "Board" do

  describe "when visiting the board's page" do
    before do
      test_user = User.create!(email: "foo@email.com", password: "password", password_confirmation: "password")
      @board = Board.create!(name: "A Board",
        description: "this is a board",
        user: test_user)
      @dart = Dart.create(image_url: "http://images5.fanpop.com/image/photos/25600000/Hello-Kitty-Sitting-hello-kitty-25604546-1210-1429.jpg", link_url: "http://www.aol.com", user_id: test_user.id)
    end

    context "initially coming to the page" do
      it "displays the boards name" do
        visit board_path(@board)
        expect(page).to have_content @board.name
      end

      it "displays the boards description" do
        visit board_path(@board)
        expect(page).to have_content @board.description
      end

        it "returns 'there are currently no darts to display' if no darts exist" do
          visit board_path(@board)
          expect(page).to have_content("You currently have no darts, please add some!")
        end

    end

    context "when there is a dart for the board" do 
      before do
        @board.dartboards.create(caption: "Hello, Kitty!", dart_id: @dart.id)        
        visit board_path(@board)
      end

      it "returns the dartboard caption to the view" do
        expect(page).to have_content("Hello, Kitty!")
      end

##
## THESE NEED TO BE WORKED ON! ALSO, it would be a good idea to check if the links actually work(with response)
##
      it "should have a photo for each dart" do

      end

      it "(each dart) should have a link to the photo" do
        expect(page).to have_link("http://images5.fanpop.com/image/photos/25600000/Hello-Kitty-Sitting-hello-kitty-25604546-1210-1429.jpg")
      end

    end

  end


end
