module EventsHelper

  def owner?(event)
    current_user ==  event.owner
  end
end
