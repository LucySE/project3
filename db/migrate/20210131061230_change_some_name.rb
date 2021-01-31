class ChangeSomeName < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :park_id, :dogpark_id
  end
end
