class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :daily
  has_many :notifications, dependent: :destroy

  validates :content, presence: true, length: { maximum: 127 }
  validates :user_id, presence: true
  validates :daily_id, presence: true
end
