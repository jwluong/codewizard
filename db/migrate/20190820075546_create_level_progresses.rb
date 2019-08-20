class CreateLevelProgresses < ActiveRecord::Migration[5.2]
  def change
    create_table :level_progresses do |t|
      t.references :character, foreign_key: true
      t.references :level, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
