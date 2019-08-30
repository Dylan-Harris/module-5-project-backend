# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Game.destroy_all
Forum.destroy_all
Review.destroy_all
Wishlist.destroy_all
Comment.destroy_all
Relationship.destroy_all

dylan = User.create(
    username: "WestCaliLvin",
    password: "Nunubunny5",
    avatar: "image",
    bio: "Hey just call me West"

)

rinda = User.create(
    username: "Rinda",
    password: "bunny5",
    avatar: "image",
    bio: "What's up?"

)

# gears = Game.create(
#     title: "Gears of War",
#     background_image: "Image",
#     genre: "Horror, action, shooter",
#     trailer: "Video",
#     parent_platform: "Xbox 360, PC"
# )

# dkc = Game.create(
#     title: "Doney Kong Country",
#     background_image: "Image",
#     genre: "Platformer",
#     trailer: "Video",
#     parent_platform: "Super Nintendo"
# )

Relationship.create(
    user_id: dylan.id, 
    friend_id: rinda.id
)

Relationship.create(
    user_id: rinda.id, 
    friend_id: dylan.id
)

Review.create(
    content: "This game was fun!",
    user_id: dylan.id,
    game_id: gears.id
)

Review.create(
    content: "This is a classic",
    user_id: rinda.id,
    game_id: dkc.id
)

Wishlist.create(
    user_id: dylan.id,
    game_id: gears.id 
)

guilty = Forum.new(
    title: "Is Guilty Gear a good game?",
    user_id: dylan.id
)

Comment.new(
    content: "I think the game is fun.",
    forum_id: guilty.id,
    user_id: dylan.id
)

