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

genre= Genre.destroy_all
platform= Platform.destroy_all
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

platform1 = Platform.create(name:"PC")
platform2 = Platform.create(name:"Xbox")
platform3 = Platform.create(name:"Wii U")
platform4 = Platform.create(name:"Xbox 360")
platform5 = Platform.create(name:"Xbox One")
platform6 = Platform.create(name:"PS3")
platform7 = Platform.create(name:"PS4")
platform8 = Platform.create(name:"Mobile Games")

user1 = User.Create(username:axel, email:"axel@axel.com", password:"password", password_confirmation:"password")





