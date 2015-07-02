class PagesController < ApplicationController
  def home
    if logged_in?
      @user = current_user
      @dish = current_user.dishes.build
      @event = current_user.events.build
      @dishes = current_user.dishes.paginate(page: params[:page])
      @events = current_user.events.paginate(page: params[:page])
      # @users = User.all
    end
  end

  def help
  end

  def about
  end
end
