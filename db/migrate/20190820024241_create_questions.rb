class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :description
      t.text :options, array: true, default: []
      t.string :answer
      t.string :img
      t.string :level

      t.timestamps
    end
  end
end
