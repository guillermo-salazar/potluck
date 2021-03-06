class EventsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @event = current_user.owned_events.build(event_params)
    # @dishes = current_user.dishes.all
    if @event.save
      flash[:success] = "Event Created!"
      redirect_to root_url
    else
      render 'pages/home'
    end
  end

  def new
    @event = Event.new
  end

  def destroy
  end

  def show
    @event = Event.find(params[:id])
    @invitation = Invitation.where(event: @event, recipient: current_user).first
  end

  private
    def event_params
      params.require(:event).permit(:name, :location, :user_id, :description, :event_date)
    end
end
