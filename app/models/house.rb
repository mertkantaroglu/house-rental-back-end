class House < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'

  has_many :house_reservations, dependent: :destroy
  has_many :reservations, through: :house_reservations, dependent: :destroy

  validates :name, :location, :bedrooms, :bathrooms, :price, :image, presence: true
end
