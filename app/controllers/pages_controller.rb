class PagesController < ApplicationController
  def home
    @dish = current_user.dishes.build if logged_in?
    @event = current_user.events.build if logged_in?
  end

  def help
  end

  def about
  end
end
