class User < ApplicationRecord
    has_many :reviews
    has_many :reviews, through: :reactions

    has_secure_password
    validates :username, uniqueness: true
    validates :email, uniqueness: true
end
