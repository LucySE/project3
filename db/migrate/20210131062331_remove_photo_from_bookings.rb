class RemovePhotoFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :photo, :text
  end
end
