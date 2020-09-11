class User < ApplicationRecord
    has_many :reviews
    has_many :reviews, through: :reactions
end
