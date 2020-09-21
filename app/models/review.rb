class Review < ApplicationRecord
    belongs_to :user
    has_many :reactions
    has_many :users, through: :reactions
    
    validates :title, presence: true
    validates :title, uniqueness: true
    validates :content, presence: true

    def self.order_by_time
        Review.order(created_at: :desc).limit(4)
    end

end
