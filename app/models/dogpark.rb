class Dogpark < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings

  geocoded_by :dogpark_address
  after_validation :geocode

  end
