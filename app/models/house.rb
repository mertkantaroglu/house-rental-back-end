class House < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'users_id'
  has_one :reservations, foreign_key: 'houses_id', dependent: :destroy

  validates :name, :location, :bedrooms, :bathrooms, :price, :image_url, presence: true
end
