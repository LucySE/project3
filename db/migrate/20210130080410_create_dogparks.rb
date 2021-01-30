class CreateDogparks < ActiveRecord::Migration[5.2]
  def change
    create_table :dogparks do |t|
      t.integer :capacity
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
