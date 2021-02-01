class Booking < ApplicationRecord

  belongs_to :dogpark
  belongs_to :user

end
