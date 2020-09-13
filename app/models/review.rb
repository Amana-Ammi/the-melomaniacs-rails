class Review < ApplicationRecord
    belongs_to :user
    has_many :users, through: :reactions
    
    validates :title, presence: true
    validates :title, uniqueness: true
    validates :content, presence: true
end
