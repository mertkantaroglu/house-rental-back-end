class Reservation < ApplicationRecord
  belongs_to :user, class_name: 'User'

  has_many :house_reservations, dependent: :destroy
  has_many :houses, through: :house_reservations, dependent: :destroy

  validates :name, :start_date, :end_date, :city, presence: true
end
