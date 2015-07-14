class InvitationsController < ApplicationController
  before_action :logged_in_user, only: [:create, :accept]
  def create
    @invitation = current_user.sent_invitations.build(invitation_params)

    if @invitation.save
      flash[:success] = "Invitation Sent"
      redirect_to event_url(@invitation.event)
    else
      render 'pages/home'
    end
  end
  def accept
    @invitation = Invitation.find(params[:id])
    @invitation.accept = true
    if @invitation.save
      @guest = Guest.new(user: current_user, event: @invitation.event)
      @guest.save
      flash[:success] = "Accepted Invitation"
    end
    redirect_to root_url
  end
  def decline
    @invitation = Invitation.find(params[:id])
    @invitation.accept = false
    if @invitation.save
      flash[:success] = "Declined Invitation"
    end
    redirect_to root_url
  end
  def new
    @event = Event.find(params[:id])
    @invitation = Invitation.new
  end

  def show
    @invitation = Invitation.find(params[:id])
  end

  private
  def invitation_params
    params.require(:invitation).permit(:recipient_id,:event_id, sent_at: Time.zone.today)
  end
end
