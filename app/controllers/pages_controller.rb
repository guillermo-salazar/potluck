class PagesController < ApplicationController
  def home
    @dish = current_user.dishes.build if logged_in?
  end

  def help
  end

  def about
  end
end
