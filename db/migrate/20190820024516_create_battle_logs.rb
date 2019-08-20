class CreateBattleLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :battle_logs do |t|
      t.string :user_answer
      t.references :user, foreign_key: true
      t.references :character, foreign_key: true

      t.timestamps
    end
  end
end
