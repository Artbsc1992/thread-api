class Daily < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :notifications, dependent: :destroy

  validates :content, presence: true, length: { maximum: 255 }
  validates :user_id, presence: true
  # para mostrar dailies por su relevancia
  # scope :show_relevant, ->(current_user) { where(user_id: User.where(role: 'admin') + current_user.friends.pluck(:id) << current_user.id) }
end
