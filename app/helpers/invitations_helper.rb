module InvitationsHelper
  def invited?(invitation)
    current_user == invitation.recipient
  end
end
