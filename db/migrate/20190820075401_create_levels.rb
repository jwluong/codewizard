class CreateLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :levels do |t|
      t.string :name
      t.integer :number
      t.string :img
      t.string :track

      t.timestamps
    end
  end
end
