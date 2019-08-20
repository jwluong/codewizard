class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.string :name
      t.integer :rarity
      t.string :effect
      t.text :description
      t.integer :price
      t.string :img
      t.references :character, foreign_key: true

      t.timestamps
    end
  end
end
