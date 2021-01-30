class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.string :password_digest
      t.text :dog_name
      t.string :dog_breed
      t.boolean :vaccinated
      t.text :vet
      t.text :vaccination_certificate
      t.text :username

      t.timestamps
    end
  end
end
