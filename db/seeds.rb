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

game_api11 = RestClient.get 'https://rawg.io/api/games?page=11'
game_array_11 = JSON.parse(game_api11)["results"]
game_array_11.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: game["genres"][0]["name"],
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api12 = RestClient.get 'https://rawg.io/api/games?page=12'
game_array_12 = JSON.parse(game_api12)["results"]

def genres(game)
    return game['genres'] && game["genres"][0] && game["genres"][0]["name"] && "nothin "
 end
game_array_12.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: genres(game),
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api13 = RestClient.get 'https://rawg.io/api/games?page=13'
game_array_13 = JSON.parse(game_api13)["results"]
game_array_13.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: genres(game),
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api14 = RestClient.get 'https://rawg.io/api/games?page=14'
game_array_14 = JSON.parse(game_api14)["results"]
game_array_14.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: genres(game),
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api15 = RestClient.get 'https://rawg.io/api/games?page=15'
game_array_15 = JSON.parse(game_api15)["results"]
game_array_15.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: genres(game),
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api16 = RestClient.get 'https://rawg.io/api/games?page=16'
game_array_16 = JSON.parse(game_api16)["results"]
game_array_16.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: genres(game),
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api17 = RestClient.get 'https://rawg.io/api/games?page=17'
game_array_17 = JSON.parse(game_api17)["results"]
game_array_17.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: genres(game),
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api18 = RestClient.get 'https://rawg.io/api/games?page=18'
game_array_18 = JSON.parse(game_api18)["results"]
game_array_18.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: genres(game),
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api19 = RestClient.get 'https://rawg.io/api/games?page=19'
game_array_19 = JSON.parse(game_api19)["results"]
game_array_19.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: genres(game),
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api20 = RestClient.get 'https://rawg.io/api/games?page=20'
game_array_20 = JSON.parse(game_api20)["results"]
game_array_20.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: genres(game),
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api21 = RestClient.get 'https://rawg.io/api/games?page=21'
game_array_21 = JSON.parse(game_api21)["results"]
game_array_21.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: genres(game),
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api22 = RestClient.get 'https://rawg.io/api/games?page=22'
game_array_22 = JSON.parse(game_api22)["results"]
game_array_22.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: genres(game),
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api23 = RestClient.get 'https://rawg.io/api/games?page=23'
game_array_23 = JSON.parse(game_api23)["results"]
game_array_23.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: genres(game),
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api24 = RestClient.get 'https://rawg.io/api/games?page=24'
game_array_24 = JSON.parse(game_api24)["results"]
game_array_24.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: genres(game),
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api25 = RestClient.get 'https://rawg.io/api/games?page=25'
game_array_25 = JSON.parse(game_api25)["results"]
game_array_25.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: genres(game),
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api26 = RestClient.get 'https://rawg.io/api/games?page=26'
game_array_26 = JSON.parse(game_api26)["results"]
game_array_26.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: genres(game),
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api27 = RestClient.get 'https://rawg.io/api/games?page=27'
game_array_27 = JSON.parse(game_api27)["results"]
game_array_27.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: genres(game),
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api28 = RestClient.get 'https://rawg.io/api/games?page=28'
game_array_28 = JSON.parse(game_api28)["results"]
game_array_28.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: genres(game),
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end

game_api29 = RestClient.get 'https://rawg.io/api/games?page=29'
game_array_29 = JSON.parse(game_api29)["results"]
game_array_29.each do |game|
    Game.create(
        title: game["name"],
        description: game["description"],
        background_image: game["background_image"],
        genre: genres(game),
        trailer: trailer(game),
        parent_platform: game["parent_platforms"][0]["platform"]["name"] 
    )
end










dylan = User.create(
    username: "WestCaliLvin",
    password: "Nunubunny5",
    avatar: "https://avatars3.githubusercontent.com/u/46968785?s=460&v=4",
    bio: "Hey just call me West"

)

rinda = User.create(
    username: "Rinda",
    password: "bunny5",
    avatar: "https://tr4.cbsistatic.com/hub/i/r/2015/08/07/287cfe55-f9c9-4a58-8d5a-fb66d2b8c0be/resize/1200x/3c0c3e2bcbf289000f6b457e059d2922/1featuredcortana.jpg      ",
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

guilty = Forum.create(
    title: "Is Guilty Gear a good game?",
    user_id: dylan.id
)

Comment.create(
    content: "I think the game is fun.",
    forum_id: guilty.id,
    user_id: dylan.id
)

mw2 = Forum.create(
    title: "Take me back to MW2",
    user_id: dylan.id
)

Comment.create(
    content: "TACTICAL NUKE INBOUND!",
    forum_id: mw2.id,
    user_id: rinda.id
)

fav = Forum.create(
    title: "Favorite Game of All Time?",
    user_id: dylan.id
)

Comment.create(
    content: "Definitely Donkey Kong Country 2",
    forum_id: fav.id,
    user_id: dylan.id
)

systems = Forum.create(
    title: "What systems do you own?",
    user_id: dylan.id
)

Comment.create(
    content: "SNES, Xbox, Xbox 360, PC, and Wii U",
    forum_id: systems.id,
    user_id: dylan.id
)

Comment.create(
    content: "SNES, Xbox, Xbox 360, PC, and Wii U",
    forum_id: systems.id,
    user_id: rinda.id
)

music = Forum.create(
    title: "What game has the best soundtrack ever?",
    user_id: dylan.id
)

Comment.create(
    content: "Definitely Killer Instinct.",
    forum_id: music.id,
    user_id: rinda.id
)

Comment.create(
    content: "I'd have to say the Halo series.",
    forum_id: music.id,
    user_id: dylan.id
)

excited = Forum.create(
    title: "What unreleased game are you the most excited about?",
    user_id: dylan.id
)

Comment.create(
    content: "Gears 5!",
    forum_id: excited.id,
    user_id: dylan.id
)
