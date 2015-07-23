module InvitationsHelper
  def invited?(invitation)
    current_user == invitation.recipient
  end
  def going?(invitation)
    if invitation.accept
      "Yes"
    elsif invitation.accept.nil?
      "Not Decided Yet"
    else
      "No"
    end
  end
end
