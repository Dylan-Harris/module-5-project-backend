class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    
    
    
    has_many :wishlist
    has_many :games, through: :wishlist
    has_many :forums
    has_many :comments
    has_many :relationships
    has_many :friends, through: :relationships, class_name: 'User'
    has_many :inverse_relationships, :class_name => "Relationship", :foreign_key => "friend_id"
    has_many :inverse_relationships, :class_name => "Relationship", :foreign_key => "friend_id"
    has_many :inverse_friends, :through => :inverse_relationships, :source => :user
    has_many :reviews
    # has_many :reviews, through: :games
    # def write_review
    #     @review = Review.create(user_id: self.id, game_id: game.id, content: '')
    # end
end
