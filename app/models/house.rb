class House < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'users_id'
  has_one :reservations, foreign_key: 'houses_id', dependent: :destroy

  validates :name, :location, :bedrooms, :bathrooms, :price, :image_url, presence: true

  after_create :increment_user_houses_count
  after_destroy :decrement_user_houses_count

  private

  def increment_user_houses_count
    user.increment!(:houses_count)
  end

  def decrement_user_houses_count
    user.decrement!(:houses_count)
  end
end
