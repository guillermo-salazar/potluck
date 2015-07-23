module EventsHelper

  def owner?(event)
    current_user ==  event.owner
  end

  def guest?(event)
    event.users.include? current_user
  end
end
