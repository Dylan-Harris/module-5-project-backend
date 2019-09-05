# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
User.destroy_all
Game.destroy_all
Forum.destroy_all
Review.destroy_all
Wishlist.destroy_all
Comment.destroy_all
Relationship.destroy_all

game_api = RestClient.get 'https://rawg.io/api/games'
game_array = JSON.parse(game_api)["results"]
game_array.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: game["genres"][0]["name"],
        trailer: game["clip"]["clip"],
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api2 = RestClient.get 'https://rawg.io/api/games?page=2'
game_array_2 = JSON.parse(game_api2)["results"]
game_array_2.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: game["genres"][0]["name"],
        trailer: game["clip"]["clip"],
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api3 = RestClient.get 'https://rawg.io/api/games?page=3'
game_array_3 = JSON.parse(game_api3)["results"]
def trailer(game)
    return game['clip'] && game['clip']['clip'] && "nothin "
 end
game_array_3.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: game["genres"][0]["name"],
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api4 = RestClient.get 'https://rawg.io/api/games?page=4'
game_array_4 = JSON.parse(game_api4)["results"]
def trailer(game)
   return game['clip'] && game['clip']['clip'] && "nothin "
end

game_array_4.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: game["genres"][0]["name"],
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end


game_api5 = RestClient.get 'https://rawg.io/api/games?page=5'
game_array_5 = JSON.parse(game_api5)["results"]
def trailer(game)
   return game['clip'] && game['clip']['clip'] && "nothin "
end

game_array_5.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: game["genres"][0]["name"],
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api6 = RestClient.get 'https://rawg.io/api/games?page=6'
game_array_6 = JSON.parse(game_api6)["results"]
def trailer(game)
   return game['clip'] && game['clip']['clip'] && "nothin "
end

game_array_6.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: game["genres"][0]["name"],
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api7 = RestClient.get 'https://rawg.io/api/games?page=7'
game_array_7 = JSON.parse(game_api7)["results"]
def trailer(game)
   return game['clip'] && game['clip']['clip'] && "nothin "
end

game_array_7.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: game["genres"][0]["name"],
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api8 = RestClient.get 'https://rawg.io/api/games?page=8'
game_array_8 = JSON.parse(game_api8)["results"]
def trailer(game)
   return game['clip'] && game['clip']['clip'] && "nothin "
end

game_array_8.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: game["genres"][0]["name"],
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api9 = RestClient.get 'https://rawg.io/api/games?page=9'
game_array_9 = JSON.parse(game_api9)["results"]
def trailer(game)
   return game['clip'] && game['clip']['clip'] && "nothin "
end

game_array_9.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: game["genres"][0]["name"],
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api10 = RestClient.get 'https://rawg.io/api/games?page=10'
game_array_10 = JSON.parse(game_api10)["results"]
def trailer(game)
   return game['clip'] && game['clip']['clip'] && "nothin "
end

game_array_10.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: game["genres"][0]["name"],
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end







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

# Review.create(
#     content: "This game was fun!",
#     user_id: dylan.id,
#     game_id: gears.id
# )

# Review.create(
#     content: "This is a classic",
#     user_id: rinda.id,
#     game_id: dkc.id
# )

# Wishlist.create(
#     user_id: dylan.id,
#     game_id: gears.id 
# )

guilty = Forum.new(
    title: "Is Guilty Gear a good game?",
    user_id: dylan.id
)

# Comment.new(
#     content: "I think the game is fun.",
#     forum_id: guilty.id,
#     user_id: dylan.id
# )

