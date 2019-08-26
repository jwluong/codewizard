class CreateCharactersItemsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :characters_items, id: false do |t|
      t.bigint :character_id
      t.bigint :item_id
  end

  add_index :characters_items, :character_id
  add_index :characters_items, :item_id
end
end
