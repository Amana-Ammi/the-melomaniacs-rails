class Reaction < ApplicationRecord
  
  belongs_to :user
  belongs_to :review

  validates :comment, presence: true
  validates :review, uniqueness: {scope: :user, message: "-- can only be reacted to once."}
  
end
