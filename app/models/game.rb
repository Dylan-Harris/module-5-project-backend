class Game < ApplicationRecord
    has_many :users, through: :game_wishlist
    has_many :reviews
end
