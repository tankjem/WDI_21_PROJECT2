# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require_relative '../app/models/genre.rb'
require_relative '../app/models/post.rb'
require_relative '../app/models/platform.rb'
require_relative '../app/models/user.rb'
require_relative '../app/models/comment.rb'

genre = Genre.destroy_all
platform = Platform.destroy_all
user = User.destroy_all
post = Post.destroy_all
comment = Comment.destroy_all

genre1 = Genre.create(name:"Action")
genre2 = Genre.create(name:"Adventure")
genre3 = Genre.create(name:"Fantasy")
genre4 = Genre.create(name:"RPG")
genre5 = Genre.create(name:"Futuristic")
genre6 = Genre.create(name:"Simulation")
genre7 = Genre.create(name:"FPS")
genre8 = Genre.create(name:"Sports")
genre9 = Genre.create(name:"Racing")
genre10 = Genre.create(name:"Puzzle")
genre11 = Genre.create(name:"stealth")
genre12 = Genre.create(name:"JRPG")
genre13 = Genre.create(name:"MMO")
genre14 = Genre.create(name:"Strategy")
genre15 = Genre.create(name:"Fighting")
genre16 = Genre.create(name:"Horror")
genre17 = Genre.create(name:"Platformer")
genre18 = Genre.create(name:"Other")

platform1 = Platform.create(name:"PC")
platform2 = Platform.create(name:"Xbox")
platform3 = Platform.create(name:"Wii U")
platform4 = Platform.create(name:"Xbox 360")
platform5 = Platform.create(name:"Xbox One")
platform6 = Platform.create(name:"PS3")
platform7 = Platform.create(name:"PS4")
platform8 = Platform.create(name:"Mobile Games")
platform9 = Platform.create(name:"Other")

user1 = User.create(username:"tanquo",
email:"t@t.com",
password:"password", 
password_confirmation:"password",
profile_picture: File.open(File.join(Rails.root, '/db/images/user/profile_picture/1/akamegakill.png')))

user2 = User.create(username:"OmaoTzu",
  email:"o@o.com",
  password:"password",
  password_confirmation:"password",
  profile_picture: File.open(File.join(Rails.root, '/db/images/user/profile_picture/2/Ang_s_moving_castle.jpg')))


post1 = Post.create(game:"Super Mario",
  description:"arty Mario",
  image:File.open(File.join(Rails.root,'/db/images/post/image/1/vzRN4in.jpg')))

post2 = Post.create(game:"Bioshock",
  description:"Big Daddy and Little Siter",
  image:File.open(File.join(Rails.root,'/db/images/post/image/2/bioshock.jpg')))

post3 = Post.create(game:"Shadow of The Colossus",
  description:"The bigger they are...",
  image:File.open(File.join(Rails.root,'/db/images/post/image/2/294578-fantasy_art-creature-horse-warrior-Shadow_of_the_Colossus-736x459.jpg')))

post4 = Post.create(game:"Pokemon",
  description:"Scary Pokemon",
  image:File.open(File.join(Rails.root,'/db/images/post/image/3/ghastly.jpg')))

post5 = Post.create(game:"No Mans Sky",
  description:"Space",
  image:File.open(File.join(Rails.root,'/db/images/post/image/5/90503.jpg')))

post6 = Post.create(game:"Various",
  description:"A collection of heroes",
  image:File.open(File.join(Rails.root,'/db/images/post/image/6/339908.jpg')))

post7 = Post.create(game:"Mass Effect 3",
  description:"Mass Effect wallpaper",
  image:File.open(File.join(Rails.root,'/db/images/post/image/7/144374.jpg')))

post8 = Post.create(game:"Super Mario",
  description:"Apocalypse Mario",
  image:File.open(File.join(Rails.root,'/db/images/post/image/8/mario.jpg')))

post9 = Post.create(game:"Valkyria Chronicles",
  description:"Squad 7",
  image:File.open(File.join(Rails.root,'/db/images/post/image/9/valkyriasquad7.jpg')))

post10 = Post.create(game:"Shadow of the Colossus",
  description:"More Giants",
  image:File.open(File.join(Rails.root,'/db/images/post/image/10/393129.jpg')))

post11 = Post.create(game:"Gravity Rush",
  description:"Kat Just chilling",
  image:File.open(File.join(Rails.root,'/db/images/post/image/11/gravityrush.jpg')))

post12 = Post.create(game:"Bioshock",
  description: "Welcome to Rapture",
  image:File.open(File.join(Rails.root,'/db/images/post/image/12/biocity.jpg')))

post13 = Post.create(game:"Pokemon",
  description:"PokePoker",
  image:File.open(File.join(Rails.root,'/db/images/post/image/13/pokepoker.jpg')))

post14 = Post.create(game:"No Mans Sky",
  description:"No Mans Sky Concept Art",
  image:File.open(File.join(Rails.root,'/db/images/post/image/14/No-Man-s-Sky-Wallpaper-1920x1080-09.jpg')))

post15 = Post.create(game:"Persona 4 Golden",
  description:"The persona 4 team",
  image:File.open(File.join(Rails.root,'/db/images/post/image/15/persona4.jpg')))

post16 = Post.create(game:"Uncharted 2 Drake's Deception",
  description:"Uncharted 2 concept Art",
  image:File.open(File.join(Rails.root,'/db/images/post/image/16/uncharted-2-concept-art-wallpaper-mountain-railroad.jpg')))

post17 = Post.create(game:"Pokemon",
  description:"Bulby",
  image:File.open(File.join(Rails.root,'/db/images/post/image/17/bulbasaur.jpg')))

post18 = Post.create(game:"Jet Set Radio Future",
  description:"JSRF Grafitti Art",
  image:File.open(File.join(Rails.root,'/db/images/post/image/18/XM8UE4o.jpg')))

comment1 = Comment.create(title:"Testing Testing", content:" Your simply the best!")
comment2 = Comment.create(title:"Testing Testing", content:" Your simply the best!")
comment3 = Comment.create(title:"Testing Testing", content:" Your simply the best!")
comment4 = Comment.create(title:"Testing Testing", content:" Your simply the best!")
comment5 = Comment.create(title:"Testing Testing", content:" Your simply the best!")
comment6 = Comment.create(title:"Testing Testing", content:" Your simply the best!")
comment7 = Comment.create(title:"Testing Testing", content:" Your simply the best!")
comment8 = Comment.create(title:"Testing Testing", content:" Your simply the best!")
comment9 = Comment.create(title:"Testing Testing", content:" Your simply the best!")
comment10 = Comment.create(title:"Testing Testing", content:"No Your the best!")
comment11 = Comment.create(title:"Testing Testing", content:"No Your the best!")
comment12 = Comment.create(title:"Testing Testing", content:"No Your the best!")
comment13 = Comment.create(title:"Testing Testing", content:"No Your the best!")
comment14 = Comment.create(title:"Testing Testing", content:"No Your the best!")
comment15 = Comment.create(title:"Testing Testing", content:"No Your the best!")
comment16 = Comment.create(title:"Testing Testing", content:"No Your the best!")
comment17 = Comment.create(title:"Testing Testing", content:"No Your the best!")
comment18 = Comment.create(title:"Testing Testing", content:"No Your the best!")
comment19 = Comment.create(title:"Testing Testing", content:"No Your the best!")
comment20 = Comment.create(title:"Testing Testing", content:"No Your the best!")

post1.genres = [genre17]
post1.platforms = [platform3]
post1.comments = [comment1, comment11]
post2.genres = [genre1, genre2, genre4, genre5, genre7]
post2.platforms =[platform1, platform2, platform4, platform5, platform6, platform7]
post2.comments = [comment2, comment12]
post3.genres = [genre1, genre2, genre3]
post3.platforms = [platform6, platform7]
post3.comments = [comment3]
post4.genres = [genre2]
post4.platforms =[platform3, platform8, platform9]
post4.comments = [comment20]
post5.genres = [genre5, genre6, genre7]
post5.platforms = [platform1, platform7]
post5.comments = [comment4]
post6.genres = [genre18]
post6.platforms = [platform9]
post6.comments = [comment5]
post7.genres = [genre1, genre2, genre4, genre5]
post7.platforms = [platform1, platform2, platform4, platform5, platform6, platform7]
post7.comments = [comment6]
post8.genres = [genre2, genre17]
post8.platforms = [platform3, platform8, platform9]
post8.comments = [comment10]
post9.genres = [genre1, genre2, genre12, genre14]
post9.platforms = [platform6, platform7]
post9.comments = [comment7]
post10.genres = [genre1, genre2, genre3]
post10.platforms = [platform6, platform7]
post10.comments = [comment8]
post11.genres = [genre2, genre3, genre12]
post11.platforms = [platform6, platform7]
post11.comments = [comment9]
post12.genres = [genre4, genre5, genre7]
post12.platforms = [platform1, platform4, platform5, platform6, platform7]
post12.comments = [comment13]
post13.genres = [genre2, genre12]
post13.platforms = [platform3, platform8, platform9]
post13.comments = [comment14]
post14.genres = [genre1, genre2, genre5, genre6]
post14.platforms = [platform1, platform7]
post14.comments = [comment15]
post15.genres = [genre12]
post15.platforms = [platform6, platform9]
post15.comments = [comment16]
post16.genres = [genre1, genre2, genre17]
post16.platforms = [platform6, platform7]
post16.comments = [comment17]
post17.genres = [genre2, genre12]
post17.platforms = [platform3, platform8, platform9]
post17.comments = [comment18]
post18.genres = [genre2, genre5, genre8, genre9]
post18.platforms = [platform1, platform2, platform4, platform5, platform6, platform7]
post18.comments = [comment19]

user1.comments = [comment1, comment2, comment3, comment4, comment5, comment6, comment7, comment8, comment9, comment10]
user2.comments = [comment11, comment12, comment13, comment14, comment15, comment16, comment17, comment18, comment19, comment20]



user1.posts= [post1, post3, post5, post7, post9, post11, post12, post13, post17]
user2.posts= [post2, post4, post6, post8, post10, post14, post15, post16, post18]

