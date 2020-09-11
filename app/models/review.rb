class Review < ApplicationRecord
    has_many :users, through: :reactions
end
