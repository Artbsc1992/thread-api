class User < ApplicationRecord
  has_many :friendships, 
      foreign_key: :user_id, 
      class_name: :Friendship
  has_many :friends, through: :friendships

  validates :name, presence: true, length: { maximum: 63 }
  validates :bio, length: { maximum: 127 }
  validates :email, presence: true, length: { maximum: 63 }, uniqueness: true, format { with: URI::MailTo::EMAIL_REGEXP }
  validates :photo, format { with: URI.regexp }, allow_blank: true
end
