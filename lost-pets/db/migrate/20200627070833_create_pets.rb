class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :location
      t.integer :reward, default: 0
      t.boolean :alive, default: true
      t.string :species
      t.date :lost_on

      t.timestamps
    end
  end
end
