class User < ApplicationRecord
  
  validates :username, presence: true, uniqueness: true
  validates :username, length: { in: 3..20}
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :profile_picture, PictureUploader

  has_many :posts
  has_many :comments
end
