class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :gender
      t.integer :exp, default: 0
      t.integer :coin, default: 0
      t.integer :lv, default: 1
      t.integer :hp, default: 10
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
