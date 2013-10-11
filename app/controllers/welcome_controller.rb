class WelcomeController < ApplicationController
  def feed
    @darts = Dart.all
  end

end
