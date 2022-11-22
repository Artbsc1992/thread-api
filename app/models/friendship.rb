class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: :User

  validates :user_id, presence: true, uniqueness: { scope: :friend_id }
  validates :friend_id, presence: true
  validate :cannot_add_self

  private

  def cannot_add_self
    errors.add(:friend_id, 'You cannot add yourself as a friend.') if user_id == friend_id
  end

end
