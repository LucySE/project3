class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :park_id
      t.datetime :booking_start_date
      t.datetime :booking_end_date
      t.text :report_card
      t.text :photo

      t.timestamps
    end
  end
end
