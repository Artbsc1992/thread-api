class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :daily

  validates :user_id, presence: true
  validates :daily_id, presence: true
  validates :message, presence: true, length: { maximum: 31 }
  validates :viewed, inclusion: { in: [true, false] }, default: false
end
