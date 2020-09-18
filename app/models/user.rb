class User < ApplicationRecord
    has_many :reviews
    has_many :reactions
    has_many :reviews, through: :reactions

    has_secure_password
    
    validates :username, presence: true
    validates :email, presence: true
    validates :username, uniqueness: true
    validates :email, uniqueness: true
end
