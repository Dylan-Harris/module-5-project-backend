class Game < ApplicationRecord
    has_many :users, through: :wishlist
    has_many :reviews
end
