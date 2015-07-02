class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :dish
  # has_and_belongs_to_many :users,class: "Guest", join_table: "Guest"
end
