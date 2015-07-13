class PagesController < ApplicationController
  def home
    if logged_in?
      @user = current_user
      @dish = current_user.dishes.build
      @event = current_user.events.build
      @dishes = current_user.dishes.paginate(page: params[:page])
      @events = current_user.owned_events.paginate(page: params[:page])
      @invitations = current_user.invitations.paginate(page: params[:page])
      @sent_invitations = current_user.sent_invitations.paginate(page: params[:page])
      # @users = User.all
    end
  end

  def help
  end

  def about
  end
end
