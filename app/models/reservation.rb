class Reservation < ApplicationRecord
    belongs_to :houses, class_name: 'House'
  belongs_to :users, class_name: 'User'

  validates :date, :city, presence: true
end
