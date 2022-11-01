class User < ApplicationRecord
  has_many :friendships_as_user, 
      foreign_key: :user_id, 
      class_name: :Friendship
  has_many :friends, through: :friendships_as_user
end
