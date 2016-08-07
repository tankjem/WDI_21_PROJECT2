class Post < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :genres 
  has_and_belongs_to_many :platforms
  mount_uploader :image, ArtUploader
end
