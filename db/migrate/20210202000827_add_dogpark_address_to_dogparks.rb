class AddDogparkAddressToDogparks < ActiveRecord::Migration[5.2]
  def change
    add_column :dogparks, :dogpark_address, :string
  end
end
