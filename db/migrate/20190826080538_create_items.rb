class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :effect
      t.integer :price
      t.string :img
      t.string :description

      t.timestamps
    end
  end
end
