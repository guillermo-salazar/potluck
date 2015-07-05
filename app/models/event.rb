class Event < ActiveRecord::Base
  belongs_to :owner, class_name: 'User', foreign_key: :owner_id
  belongs_to :dish
  has_many :guests
  has_many :users, through: :guests
end
