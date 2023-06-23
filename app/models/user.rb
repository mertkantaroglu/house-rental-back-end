class User < ApplicationRecord
  has_many :houses, foreign_key: 'user_id'

  validates :name, presence: true
end
