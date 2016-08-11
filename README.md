### WDI_21_PROJECT2
---
My Second Project at General Assembly 

For this project we had to make a website using Rails, with authentications, a database and models.

---
Introduction 
---
* __Functionality__

* Users can register and login
* Once they have logged in they can upload their own pictures and view all posts made by other users.
* User is able to edit own posts and own profile
* Users can comment on other people's art 


---
* __Planning__

I used Trello and Balsamiq to help create the schedule and plan for this project. 

Balsamiq was used to create an ERD(Entity-Relationship-Diagram) and wireframes. 

Pictures to follow when I work out how to write markdown files....

---
* __Aim of the Project__

My aim when starting this project was to consolidate everything we had learned in the last few weeks of the course into a website. I chose to do game art because I had a misspent child hood... or a very well spent one...

---

###Gems Used:

gem 'rails', '~> 5.0.0'

gem 'pg', '~> 0.18'

gem 'puma', '~> 3.0'

gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'

gem 'devise'

gem 'jquery-rails'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'

gem 'carrierwave', '0.10.0'

gem 'fog', require: 'fog/aws'

gem 'rmagick'

gem 'bootstrap', '~> 4.0.0.alpha3.1'

source 'https://rails-assets.org'

gem 'rails-assets-tether', '>= 1.1.0'

---
Issues
---
* I had some issues with comments and seed files that were throwing a lot of bus when trying to deploy to Heroku
* Had an issue with the update edit profile path that was leading to root path intead of user show path. To fix this I had to create a register controller that inherited from devise and then put change the routes.rb file. 
* Bootstrap is a source of great joy and misery, like a great mistress...

