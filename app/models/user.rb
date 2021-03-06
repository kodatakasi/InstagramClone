class User < ApplicationRecord
  mount_uploader :profile_image, ImageUploader
  validates :name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 225 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: true
  before_validation { email.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  validates :profile, presence: true
  validates :profile_image, presence: true
  has_many :pictures
  has_many :favorites, dependent: :destroy
end
