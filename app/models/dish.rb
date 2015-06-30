class Dish < ActiveRecord::Base
  belongs_to :user
  has_many :events
  validates :user_id, presence: true
  # validates :name, presence: true
end
