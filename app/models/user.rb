class User < ApplicationRecord
  has_many :bookings
  has_many :dogparks, through: :bookings
# #use bcrypt to encode passwords
# has_secure_password
end
