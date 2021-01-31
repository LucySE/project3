class AddPhotoToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :photo, :text
  end
end
