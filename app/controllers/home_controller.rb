class HomeController < ApplicationController
  def index
    @user = User.all.reverse
  end
end
