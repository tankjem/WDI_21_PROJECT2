# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["genres", "platforms", "users", "posts", "comments"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

genre1 = Genre.create!(name:"Action")
genre2 = Genre.create!(name:"Adventure")
genre3 = Genre.create!(name:"Fantasy")
genre4 = Genre.create!(name:"RPG")
genre5 = Genre.create!(name:"Futuristic")
genre6 = Genre.create!(name:"Simulation")
genre7 = Genre.create!(name:"FPS")
genre8 = Genre.create!(name:"Sports")
genre9 = Genre.create!(name:"Racing")
genre10 = Genre.create!(name:"Puzzle")
genre11 = Genre.create!(name:"stealth")
genre12 = Genre.create!(name:"JRPG")
genre13 = Genre.create!(name:"MMO")
genre14 = Genre.create!(name:"Strategy")
genre15 = Genre.create!(name:"Fighting")
genre16 = Genre.create!(name:"Horror")
genre17 = Genre.create!(name:"Platformer")
genre18 = Genre.create!(name:"Other")

platform1 = Platform.create!(name:"PC")
platform2 = Platform.create!(name:"Xbox")
platform3 = Platform.create!(name:"Wii U")
platform4 = Platform.create!(name:"Xbox 360")
platform5 = Platform.create!(name:"Xbox One")
platform6 = Platform.create!(name:"PS3")
platform7 = Platform.create!(name:"PS4")
platform8 = Platform.create!(name:"Mobile Games")
platform9 = Platform.create!(name:"Other")

user1 = User.create!(username:"tanquo",
email:"t@t.com",
password:"password", 
password_confirmation:"password",
profile_picture: File.open(File.join(Rails.root, '/db/images/user/profile_picture/1/akamegakill.png')))

user2 = User.create!(username:"OmaoTzu",
  email:"o@o.com",
  password:"password",
  password_confirmation:"password",
  profile_picture: File.open(File.join(Rails.root, '/db/images/user/profile_picture/2/Ang_s_moving_castle.jpg')))

post1 = Post.create!(game:"Super Mario",
  description:"arty Mario",
  user_id: user1.id,
  image:File.open(File.join(Rails.root,'/db/images/post/image/1/vzRN4in.jpg')),
  genre_ids: [genre17.id],
  platform_ids: [platform3.id]
)

post2 = Post.create!(game:"Bioshock",
  description:"Big Daddy and Little Siter",
  user_id: user2.id,
  image:File.open(File.join(Rails.root,'/db/images/post/image/2/bioshock.jpg')),
  genre_ids: [genre1.id, genre2.id, genre4.id, genre5.id, genre7.id],
  platform_ids:[platform1.id, platform2.id, platform4.id, platform5.id, platform6.id, platform7.id])

post3 = Post.create!(game:"Shadow of The Colossus",
  description:"The bigger they are...",
  user_id: user1.id,
  image:File.open(File.join(Rails.root,'/db/images/post/image/2/294578-fantasy_art-creature-horse-warrior-Shadow_of_the_Colossus-736x459.jpg')),
  genre_ids:[genre1.id, genre2.id, genre3.id],
  platform_ids:[platform6.id, platform7.id])

post4 = Post.create!(game:"Pokemon",
  description:"Scary Pokemon",
  user_id: user2.id,
  image:File.open(File.join(Rails.root,'/db/images/post/image/3/ghastly.jpg')),
  genre_ids:[genre2.id],
  platform_ids:[platform3.id, platform8.id, platform9.id])

post5 = Post.create!(game:"No Mans Sky",
  description:"Space",
  user_id: user1.id,
  image:File.open(File.join(Rails.root,'/db/images/post/image/5/90503.jpg')),
  genre_ids:[genre5.id, genre6.id, genre7.id],
  platform_ids:[platform1.id, platform7.id])

post6 = Post.create!(game:"Various",
  description:"A collection of heroes",
  user_id: user2.id,
  image:File.open(File.join(Rails.root,'/db/images/post/image/6/339908.jpg')),
  genre_ids:[genre18.id],
  platform_ids:[platform9.id])

post7 = Post.create!(game:"Mass Effect 3",
  description:"Mass Effect wallpaper",
  user_id: user1.id,
  image:File.open(File.join(Rails.root,'/db/images/post/image/7/144374.jpg')),
  genre_ids:[genre1.id, genre2.id, genre4.id, genre5.id],
  platform_ids:[platform1.id, platform2.id, platform4.id, platform5.id, platform6.id, platform7.id])

post8 = Post.create!(game:"Super Mario",
  description:"Apocalypse Mario",
  user_id: user2.id,
  image:File.open(File.join(Rails.root,'/db/images/post/image/8/mario.jpg')),
  genre_ids:[genre2.id, genre17.id],
  platform_ids:[platform3.id, platform8.id, platform9.id])

post9 = Post.create!(game:"Valkyria Chronicles",
  description:"Squad 7",
  user_id: user1.id,
  image:File.open(File.join(Rails.root,'/db/images/post/image/9/valkyriasquad7.jpg')),
  genre_ids:[genre1.id, genre2.id, genre12.id, genre14.id],
  platform_ids:[platform6.id, platform7.id])

post10 = Post.create!(game:"Shadow of the Colossus",
  description:"More Giants",
  user_id: user2.id,
  image:File.open(File.join(Rails.root,'/db/images/post/image/10/393129.jpg')),
  genre_ids:[genre1.id, genre2.id, genre3.id],
  platform_ids:[platform6.id, platform7.id])

post11 = Post.create!(game:"Gravity Rush",
  description:"Kat Just chilling",
  user_id: user1.id,
  image:File.open(File.join(Rails.root,'/db/images/post/image/11/gravityrush.jpg')),
  genre_ids:[genre2.id, genre3.id, genre12.id],
  platform_ids:[platform6.id, platform7.id])

post12 = Post.create!(game:"Bioshock",
  description: "Welcome to Rapture",
  user_id: user2.id,
  image:File.open(File.join(Rails.root,'/db/images/post/image/12/biocity.jpg')),
  genre_ids:[genre4.id, genre5.id, genre7.id],
  platform_ids:[platform1.id, platform4.id, platform5.id, platform6.id, platform7.id])

post13 = Post.create!(game:"Pokemon",
  description:"PokePoker",
  user_id: user1.id,
  image:File.open(File.join(Rails.root,'/db/images/post/image/13/pokepoker.jpg')),
  genre_ids:[genre2.id, genre12.id],
  platform_ids:[platform3.id, platform8.id, platform9.id])

post14 = Post.create!(game:"No Mans Sky",
  description:"No Mans Sky Concept Art",
  user_id: user2.id,
  image:File.open(File.join(Rails.root,'/db/images/post/image/14/No-Man-s-Sky-Wallpaper-1920x1080-09.jpg')),
  genre_ids:[genre1.id, genre2.id, genre5.id, genre6.id],
  platform_ids:[platform1.id, platform7.id])

post15 = Post.create!(game:"Persona 4 Golden",
  description:"The persona 4 team",
  user_id: user1.id,
  image:File.open(File.join(Rails.root,'/db/images/post/image/15/persona4.jpg')),
  genre_ids:[genre12.id],
  platform_ids:[platform6.id, platform9.id])

post16 = Post.create!(game:"Uncharted 2 Drake's Deception",
  description:"Uncharted 2 concept Art",
  user_id: user2.id,
  image:File.open(File.join(Rails.root,'/db/images/post/image/16/uncharted-2-concept-art-wallpaper-mountain-railroad.jpg')),
  genre_ids:[genre1.id, genre2.id, genre17.id],
  platform_ids:[platform6.id, platform7.id])

post17 = Post.create!(game:"Pokemon",
  description:"Bulby",
  user_id: user1.id,
  image:File.open(File.join(Rails.root,'/db/images/post/image/17/bulbasaur.jpg')),
  genre_ids:[genre2.id, genre12.id],
  platform_ids:[platform3.id, platform8.id, platform9.id])

post18 = Post.create!(game:"Jet Set Radio Future",
  description:"JSRF Grafitti Art",
  user_id: user2.id,
  image:File.open(File.join(Rails.root,'/db/images/post/image/18/XM8UE4o.jpg')),
  genre_ids:[genre2.id, genre5.id, genre8.id, genre9.id],
  platform_ids:[platform1.id, platform2.id, platform4.id, platform5.id, platform6.id, platform7.id])

comment1 = Comment.create!(title:"Testing Testing", content:"You're simply the best!", user_id: user1.id, post_id: post1.id)
comment2 = Comment.create!(title:"Testing Testing", content:"You're simply the best!", user_id: user2.id, post_id: post2.id)
comment3 = Comment.create!(title:"Testing Testing", content:"You're simply the best!", user_id: user1.id, post_id: post3.id)
comment4 = Comment.create!(title:"Testing Testing", content:"You're simply the best!", user_id: user2.id, post_id: post4.id)
comment5 = Comment.create!(title:"Testing Testing", content:"You're simply the best!", user_id: user1.id, post_id: post5.id)
comment6 = Comment.create!(title:"Testing Testing", content:"You're simply the best!", user_id: user2.id, post_id: post6.id)
comment7 = Comment.create!(title:"Testing Testing", content:"You're simply the best!", user_id: user1.id, post_id: post7.id)
comment8 = Comment.create!(title:"Testing Testing", content:"You're simply the best!", user_id: user2.id, post_id: post8.id)
comment9 = Comment.create!(title:"Testing Testing", content:"You're simply the best!", user_id: user1.id, post_id: post9.id)
comment10 = Comment.create!(title:"Testing Testing", content:"No your're the best!", user_id: user2.id, post_id: post10.id)
comment11 = Comment.create!(title:"Testing Testing", content:"No your're the best!", user_id: user1.id, post_id: post11.id)
comment12 = Comment.create!(title:"Testing Testing", content:"No your're the best!", user_id: user2.id, post_id: post12.id)
comment13 = Comment.create!(title:"Testing Testing", content:"No your're the best!", user_id: user1.id, post_id: post13.id)
comment14 = Comment.create!(title:"Testing Testing", content:"No your're the best!", user_id: user2.id, post_id: post14.id)
comment15 = Comment.create!(title:"Testing Testing", content:"No your're the best!", user_id: user1.id, post_id: post15.id)
comment16 = Comment.create!(title:"Testing Testing", content:"No your're the best!", user_id: user2.id, post_id: post16.id)
comment17 = Comment.create!(title:"Testing Testing", content:"No your're the best!", user_id: user1.id, post_id: post17.id)
comment18 = Comment.create!(title:"Testing Testing", content:"No your're the best!", user_id: user2.id, post_id: post18.id)
comment19 = Comment.create!(title:"Testing Testing", content:"No your're the best!", user_id: user1.id, post_id: post18.id)
comment20 = Comment.create!(title:"Testing Testing", content:"No your're the best!", user_id: user2.id, post_id: post18.id)

