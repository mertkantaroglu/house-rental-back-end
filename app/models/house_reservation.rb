class HouseReservation < ApplicationRecord
  belongs_to :house, foreign_key: 'house_id'
  belongs_to :reservation, foreign_key: 'reservation_id'
end
