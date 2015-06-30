class EventsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @event = current_user.events.build(event_params)
    @dishes = current_user.dishes.all
    if @event.save
      flash[:success] = "Event Created!"
      redirect_to root_url
    else
      render 'pages/home'
    end
  end

  def destroy
  end

  private
    def event_params
      params.require(:event).permit(:name, :location, :user_id, :dish_id, :description)
    end
end
