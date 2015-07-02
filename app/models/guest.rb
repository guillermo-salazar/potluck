class Guest < ActiveRecord::Base
  belongs_to :user
  belongs_to :dish
  belongs_to :event
end
