class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :dish
  has_many :guests
  has_many :users, through: :guests
end
