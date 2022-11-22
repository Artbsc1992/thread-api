class Daily < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :notifications, dependent: :destroy

  validates :content, presence: true, length: { maximum: 255 }
  validates :user_id, presence: true
end
