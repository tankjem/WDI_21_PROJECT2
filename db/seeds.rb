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

genre = Genre.destroy_all
platform = Platform.destroy_all
user = User.destroy_all
post = Post.destroy_all

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
profile_picture: File.open(File.join(Rails.root, '/public/uploads/user/profile_picture/1/akamegakill.png')))

user2 = User.create(username:"OmaoTzu",
  email:"o@o.com",
  password:"password",
  password_confirmation:"password",
  profile_picture: File.open(File.join(Rails.root, '/public/uploads/user/profile_picture/2/Ang_s_moving_castle.jpg')))


post1 = Post.create(game:"Super Mario",
  description:"arty Mario",
  image:File.open(File.join(Rails.root,'/public/uploads/post/image/1/vzRN4in.jpg')))

post2 = Post.create(game:"Bioshock",
  description:"Big Daddy and Little Siter",
  image:File.open(File.join(Rails.root,'/public/uploads/post/image/2/bioshock.jpg')))

post3 = Post.create(game:"Shadow of The Colossus",
  description:"The bigger they are...",
  image:File.open(File.join(Rails.root,'/public/uploads/post/image/2/294578-fantasy_art-creature-horse-warrior-Shadow_of_the_Colossus-736x459.jpg')))

post4 = Post.create(game:"Pokemon",
  description:"Scary Pokemon",
  image:File.open(File.join(Rails.root,'/public/uploads/post/image/3/ghastly.jpg')))

post5 = Post.create(game:"No Mans Sky",
  description:"Space",
  image:File.open(File.join(Rails.root,'/public/uploads/post/image/5/90503.jpg')))

post6 = Post.create(game:"Various",
  description:"A collection of heroes",
  image:File.open(File.join(Rails.root,'/public/uploads/post/image/6/339908.jpg')))

post 7 = Post.create(game:"Mass Effect 3",
  description:"Mass Effect wallpaper",
  image:File.open(File.join(Rails.root,'/public/uploads/post/image/7/144374.jpg')))

post 8 = Post.create(game:"Super Mario",
  description:"Apocalypse Mario",
  image:File.open(File.join(Rails.root,'/public/uploads/post/image/8/mario.jpg')))

post 9 = Post.create(game:"Valkyria Chronicles",
  description:"Squad 7",
  image:File.open(File.join(Rails.root,'/public/uploads/post/image/9/valkyriasquad7.jpg')))












post1.genres = [genre17]
post1.platforms = [platform3]
post2.genres = [genre1, genre2, genre4, genre5, genre7]
post2.platforms =[platform1, platform2, platform4, platform5, platform6, platform7]
post3.genres = [genre1, genre2, genre3]
post3.platforms = [platform6, platform7]
post4.genres = [genre2]
post4.platforms =[platform3, platform8, platform9]
post5.genres = [genre5, genre6, genre7]
post5.platforms = [platform1, platform7]
post6.genres = [genre18]
post6.platforms = [platform9]
post7.genres = [genre1, genre2, genre4, genre5]
post7.platforms = [platform1, platform2, platform4, platform5, platform6, platform7]
post8.genres = [genre2, genre17]
post8.platforms = [platform3, platform8, platform9]
post9.genres = [genre1, genre2, genre12, genre14]
post9.platforms = [platform6, platform7]

user1.posts= [post1, post3, post5, post7, post9]
user2.posts= [post2, post4, post6, post8]

