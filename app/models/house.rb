class House < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  validates :bedrooms, presence: true
  validates :bathrooms, presence: true
  validates :price, presence: true
  validates :image, presence: true
end
