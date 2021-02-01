class AddDogparkNameToDogparks < ActiveRecord::Migration[5.2]
  def change
    add_column :dogparks, :dogpark_name, :text
  end
end
