class CreateAccomodations < ActiveRecord::Migration[5.2]
  def change
    create_table :accomodations do |t|
    t.integer :available_beds 
    t.integer :price  #nombre d'euros par nuit.
    t.text :description #au mpisn 140 caractères et obligatoire.
    t.boolean :has_wifi 
    t.text :welcome_message 
      t.timestamps
    end
  end
end
