class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    t.string :email #obligatoire, unique et répondre au regex d'un email
    t.string :phone_number
    t.text :description
      t.timestamps
    end
  end
end
