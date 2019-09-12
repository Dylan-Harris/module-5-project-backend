class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar, :bio, :wishlists
  has_many :wishlists
  has_many :comments
  # has_many :game, through: :wishlists
  # has_many :games, through: :wishlists
  # has_many :games, through: :wishlist
  
end
