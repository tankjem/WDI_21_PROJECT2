class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :genres 
  has_and_belongs_to_many :platforms
  mount_uploader :image, ArtUploader

  # scope :genres, -> (genres) { where genres: name }
  # scope :platformd, -> (platforms) { where platforms: name }
end
